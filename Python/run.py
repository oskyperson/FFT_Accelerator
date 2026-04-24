import numpy as np
import sys
import os
import subprocess

def bit_reverse_order(data):
    n = len(data)
    num_bits = int(np.log2(n))
    # Create bit-reversed indices
    indices = np.arange(n)
    rev_indices = np.array([int('{:0{b}b}'.format(i, b=num_bits)[::-1], 2) for i in indices])
    return data[rev_indices]

def float_to_hex(f):
    # Standard 16-bit fixed point representation (Q1.14)
    val = int(max(min(f, 0.999), -1.0) * (2**14))
    if val < 0:
        val = (1 << 16) + val
    return f"{val:04x}"

def generate(signal_type, total_samples, n_per_frame, base_path):
    num_frames = total_samples // n_per_frame
    fs = n_per_frame
    t = np.arange(n_per_frame)
    
    if signal_type == 'sine':
        k = max(1, n_per_frame // 16)
        one_frame = 0.5 * np.exp(1j * 2 * np.pi * k * t / n_per_frame)
    elif signal_type == 'impulse':
        one_frame = np.zeros(n_per_frame, dtype=complex)
        one_frame[0] = 0.5 + 0.0j 
    elif signal_type == 'squareWave':
        freq = 20
        one_frame = 0.8 * np.sign(np.cos(2 * np.pi * freq * t / fs)) + 0j
    elif signal_type == 'dc':
        one_frame = np.full(n_per_frame, 0.5 + 0.0j, dtype=complex)
    else:
        one_frame = 0.5 * np.exp(1j * 2 * np.pi * (n_per_frame // 16) * t / fs)

    full_signal = np.tile(one_frame, num_frames)
    os.makedirs(f"{base_path}/sram_inputs", exist_ok=True)
    filename = f"{base_path}/sram_inputs/{signal_type}_{total_samples}_{n_per_frame}.txt"

    with open(filename, 'w') as f_hex:
        for val in full_signal:
            re_hex = float_to_hex(val.real)
            im_hex = float_to_hex(val.imag)
            f_hex.write(f"{re_hex}{im_hex}\n")

    return one_frame, num_frames

def calculate_errors(expected, actual):
    noise = expected - actual
    p_signal = np.sum(np.abs(expected)**2)
    p_noise = np.sum(np.abs(noise)**2)
    
    snr = 10 * np.log10(p_signal / p_noise) if p_noise > 1e-20 else float('inf')
    error_norm = np.linalg.norm(noise)
    signal_norm = np.linalg.norm(expected)
    pct_err = (error_norm / signal_norm) * 100 if signal_norm > 1e-20 else 0
    
    return snr, pct_err

if __name__ == "__main__":
    base_path = "/home/ecegridfs/a/337mg227/FFT_Accelerator"
    os.makedirs(f"{base_path}/snr_results", exist_ok=True)

    # List of test cases matching tb_axi_top.sv
    test_cases = [
        ("sine", 1024, 256),
        ("sine", 2048, 512),
        ("impulse", 1024, 256),
        ("impulse", 2048, 512),
        ("squareWave", 1024, 256),
        ("squareWave", 2048, 512),
        ("dc", 1024, 256),
        ("dc", 2048, 512)
    ]

    # 1. Pre-generate all input files
    print("Step 1: Generating input text files...")
    for sig_type, total_s, n_frame in test_cases:
        generate(sig_type, total_s, n_frame, base_path)

    # 2. Run the simulation ONCE (it will execute all cases in the initial block)
    print("Step 2: Running simulation via make...")
    try:
        subprocess.run(["make", "qsim_axi_top_src"], check=True)
    except subprocess.CalledProcessError:
        print("Simulation failed.")
        sys.exit(1)

    # 3. Post-process all output files
    print("Step 3: Calculating SNR and Errors (DIF - Bit-Reversed Order)...")
    for sig_type, total_s, n_frame in test_cases:
        sram_filename = f"{base_path}/sram_results/{sig_type}_{total_s}_sram"
        output_filename = f"{base_path}/snr_results/{sig_type}_{total_s}_snr"
        
        # 1. Regenerate expected values
        # generate() returns (one_frame_samples, total_num_frames)
        one_frame_sig, _ = generate(sig_type, total_s, n_frame, base_path)
        
        # Compute Natural Order FFT
        expected_one_fft_natural = np.fft.fft(one_frame_sig) / n_frame
        
        # Permute to Bit-Reversed Order to match DIF hardware output
        expected_one_fft_reversed = bit_reverse_order(expected_one_fft_natural)
        
        # 2. Limit verification to the first 3 frames
        verify_frames = 3
        verify_samples = verify_frames * n_frame
        
        # Tile the bit-reversed frame 3 times
        expected_limited_fft = np.tile(expected_one_fft_reversed, verify_frames)

        try:
            actual_fft = []
            if not os.path.exists(sram_filename):
                print(f"[{sig_type} {total_s}] Error: Result file {sram_filename} not found.")
                continue

            with open(sram_filename, 'r') as f:
                for line in f:
                    parts = line.strip().split()
                    if len(parts) >= 2:
                        # Expecting "Real Imag" format from SystemVerilog dump_mem
                        actual_fft.append(complex(float(parts[0]), float(parts[1])))
            
            # Convert to numpy array and slice to the first 3 frames
            actual_fft_full = np.array(actual_fft)
            actual_fft_sliced = actual_fft_full[:verify_samples]

            if len(actual_fft_sliced) < verify_samples:
                print(f"[{sig_type} {total_s}] Error: Found {len(actual_fft_sliced)} samples, need {verify_samples}")
                continue
            
            # 3. Calculate SNR and Percent Error
            snr_val, pct_err = calculate_errors(expected_limited_fft, actual_fft_sliced)
            
            # 4. Write formatted results to SNR file
            with open(output_filename, 'w') as f_out:
                f_out.write(f"SNR: {snr_val:.3f} dB\n")
                f_out.write(f"Percent Error: {pct_err:.3f}%\n")
                f_out.write(f"Verification Scope: First {verify_frames} frames\n")
                f_out.write("Output Order: Bit-Reversed (DIF No Bit-Reversal)\n\n")
                
                f_out.write("Expected:\n")
                for val in expected_limited_fft:
                    # Format match for SRAM dump style
                    f_out.write(f"{val.real:.6f} {val.imag:.6f}\n")
            
            print(f"[{sig_type} {total_s}] Verified 3 frames. Results in {output_filename}")

        except Exception as e:
            print(f"[{sig_type} {total_s}] Unexpected error: {e}")