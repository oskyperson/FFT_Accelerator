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

    if signal_type == 'singleTone':
        frequency = max(1, n_per_frame // 16)
        one_frame = 0.5 * np.exp(1j * 2 * np.pi * frequency * t / fs)

    elif signal_type == 'twoTone':
        f1, f2 = 30, 100
        one_frame = 0.25 * np.exp(1j * 2 * np.pi * f1 * t / fs) + 0.25 * np.exp(1j * 2 * np.pi * f2 * t / fs)

    elif signal_type == 'impulse':
        one_frame = np.zeros(n_per_frame, dtype=complex)
        one_frame[0] = 0.5 + 0.0j 

    elif signal_type == 'dc':
        one_frame = np.full(n_per_frame, 0.5 + 0.0j, dtype=complex)

    elif signal_type == 'sine':
        k = max(1, n_per_frame // 16)
        one_frame = 0.5 * np.exp(1j * 2 * np.pi * k * t / n_per_frame)

    elif signal_type == 'lowTone':
        frequency = 45
        one_frame = 0.025 * np.exp(1j * 2 * np.pi * frequency * t / fs)

    elif signal_type == 'squareWave':
        frequency = 20
        one_frame = 0.8 * np.sign(np.cos(2 * np.pi * frequency * t / fs)) + 0j

    elif signal_type == 'chirp':
        f_start = 10
        f_end = n_per_frame // 4
        phase = 2 * np.pi * (f_start * t + (f_end - f_start) * (t**2) / (2 * n_per_frame)) / fs
        one_frame = 0.8 * np.exp(1j * phase)

    elif signal_type == 'multiTone':
        f1, f2, f3 = 25/2, 75/2, 150/2
        one_frame = 0.5 * np.exp(1j * 2 * np.pi * f1 * t / fs) + \
                    0.2 * np.exp(1j * 2 * np.pi * f2 * t / fs) + \
                    0.05 * np.exp(1j * 2 * np.pi * f3 * t / fs)

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
    if len(sys.argv) < 2 or sys.argv[1] not in ["src", "syn"]:
        print("Usage: python3 ./Python/run.py <src or syn>")
        sys.exit(1)

    simulation_type = sys.argv[1]
    base_path = "/home/ecegridfs/a/337mg041/FFT_Accelerator"
    os.makedirs(f"{base_path}/snr_results", exist_ok=True)

    # List of test cases matching tb_axi_top.sv
    # List of test cases matching tb_axi_top.sv
    # List of test cases matching tb_axi_top.sv
    test_cases = [
        ("sine", 8, 2),
        ("sine", 16, 4),
        ("sine", 32, 8),
        ("sine", 64, 16),
        ("sine", 128, 32),
        ("sine", 256, 64),
        ("sine", 512, 128),
        ("sine", 1024, 256),
        ("sine", 2048, 512),
        ("impulse", 8, 2),
        ("impulse", 16, 4),
        ("impulse", 32, 8),
        ("impulse", 64, 16),
        ("impulse", 128, 32),
        ("impulse", 256, 64),
        ("impulse", 512, 128),
        ("impulse", 1024, 256),
        ("impulse", 2048, 512),
        ("squareWave", 8, 2),
        ("squareWave", 16, 4),
        ("squareWave", 32, 8),
        ("squareWave", 64, 16),
        ("squareWave", 128, 32),
        ("squareWave", 256, 64),
        ("squareWave", 512, 128),
        ("squareWave", 1024, 256),
        ("squareWave", 2048, 512),
        ("dc", 8, 2),
        ("dc", 16, 4),
        ("dc", 32, 8),
        ("dc", 64, 16),
        ("dc", 128, 32),
        ("dc", 256, 64),
        ("dc", 512, 128),
        ("dc", 1024, 256),
        ("dc", 2048, 512),
        ("singleTone", 8, 2),
        ("singleTone", 16, 4),
        ("singleTone", 32, 8),
        ("singleTone", 64, 16),
        ("singleTone", 128, 32),
        ("singleTone", 256, 64),
        ("singleTone", 512, 128),
        ("singleTone", 1024, 256),
        ("singleTone", 2048, 512),
        ("twoTone", 8, 2),
        ("twoTone", 16, 4),
        ("twoTone", 32, 8),
        ("twoTone", 64, 16),
        ("twoTone", 128, 32),
        ("twoTone", 256, 64),
        ("twoTone", 512, 128),
        ("twoTone", 1024, 256),
        ("twoTone", 2048, 512),
        ("noise1", 8, 2),
        ("noise1", 16, 4),
        ("noise1", 32, 8),
        ("noise1", 64, 16),
        ("noise1", 128, 32),
        ("noise1", 256, 64),
        ("noise1", 512, 128),
        ("noise1", 1024, 256),
        ("noise1", 2048, 512),
        ("noise2", 8, 2),
        ("noise2", 16, 4),
        ("noise2", 32, 8),
        ("noise2", 64, 16),
        ("noise2", 128, 32),
        ("noise2", 256, 64),
        ("noise2", 512, 128),
        ("noise2", 1024, 256),
        ("noise2", 2048, 512),
        ("lowTone", 8, 2),
        ("lowTone", 16, 4),
        ("lowTone", 32, 8),
        ("lowTone", 64, 16),
        ("lowTone", 128, 32),
        ("lowTone", 256, 64),
        ("lowTone", 512, 128),
        ("lowTone", 1024, 256),
        ("lowTone", 2048, 512),
        ("chirp", 8, 2),
        ("chirp", 16, 4),
        ("chirp", 32, 8),
        ("chirp", 64, 16),
        ("chirp", 128, 32),
        ("chirp", 256, 64),
        ("chirp", 512, 128),
        ("chirp", 1024, 256),
        ("chirp", 2048, 512),
        ("multiTone", 8, 2),
        ("multiTone", 16, 4),
        ("multiTone", 32, 8),
        ("multiTone", 64, 16),
        ("multiTone", 128, 32),
        ("multiTone", 256, 64),
        ("multiTone", 512, 128),
        ("multiTone", 1024, 256),
        ("multiTone", 2048, 512)
    ]

    # 1. Pre-generate all input files
    print("Step 1: Generating input text files...")
    for sig_type, total_s, n_frame in test_cases:
        generate(sig_type, total_s, n_frame, base_path)

    # 2. Run the simulation
    print(f"Step 2: Running {simulation_type} simulation via make...")
    if simulation_type == "syn":
        try:
            subprocess.run(["make", "syn_axi_top"], check=True)
            subprocess.run(["make", "qsim_axi_top_syn"], check=True)
        except subprocess.CalledProcessError:
            print("Synthesis simulation failed.")
            sys.exit(1)
    else:
        try:
            subprocess.run(["make", "qsim_axi_top_src"], check=True)
        except subprocess.CalledProcessError:
            print("Source simulation failed.")
            sys.exit(1)

    # 3. Post-process all output files
    print("Step 3: Calculating SNR and Errors (DIF - Bit-Reversed Order)...")
    for sig_type, total_s, n_frame in test_cases:
        sram_filename = f"{base_path}/sram_results/{sig_type}_{total_s}_sram"
        output_filename = f"{base_path}/snr_results/{sig_type}_{total_s}_snr"
        
        one_frame_sig, _ = generate(sig_type, total_s, n_frame, base_path)
        expected_one_fft_natural = np.fft.fft(one_frame_sig) / n_frame
        expected_one_fft_reversed = bit_reverse_order(expected_one_fft_natural)
        
        verify_frames = 3
        verify_samples = verify_frames * n_frame
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
                        actual_fft.append(complex(float(parts[0]), float(parts[1])))
            
            actual_fft_full = np.array(actual_fft)
            actual_fft_sliced = actual_fft_full[:verify_samples]

            if len(actual_fft_sliced) < verify_samples:
                print(f"[{sig_type} {total_s}] Error: Found {len(actual_fft_sliced)} samples, need {verify_samples}")
                continue
            
            snr_val, pct_err = calculate_errors(expected_limited_fft, actual_fft_sliced)
            
            with open(output_filename, 'w') as f_out:
                f_out.write(f"SNR: {snr_val:.3f} dB\n")
                f_out.write(f"Percent Error: {pct_err:.3f}%\n")
                f_out.write(f"Verification Scope: First {verify_frames} frames\n")
                f_out.write("Output Order: Bit-Reversed (DIF No Bit-Reversal)\n\n")
                
                f_out.write("Expected:\n")
                for val in expected_limited_fft:
                    f_out.write(f"{val.real:.6f} {val.imag:.6f}\n")
            
            print(f"[{sig_type} {total_s}] Verified 3 frames. Results in {output_filename}")

        except Exception as e:
            print(f"[{sig_type} {total_s}] Unexpected error: {e}")