import numpy as np
import sys

def load_hex_fft_file(filename):
    with open(filename, 'r') as f:
        lines = f.readlines()

    real_parts = []
    imag_parts = []

    for line in lines:
        line = line.strip()
        if not line: continue

        try:
            val = int(line, 16)
        except: 
            continue

        
        raw_real = (val >> 16) & 0xFFFF
        raw_imag = val & 0xFFFF
        
        real = raw_real if raw_real < 0x8000 else raw_real - 0x10000
        imag = raw_imag if raw_imag < 0x8000 else raw_imag - 0x10000
        
        real_parts.append(real / 32768.0)
        imag_parts.append(imag / 32768.0)

    return np.array(real_parts) + 1j * np.array(imag_parts)

def load_fft_file(filename):
    data = np.genfromtxt(filename, delimiter=',', skip_header=1)
    return data[:, 0] + 1j * data[:, 1]

def calculate_snr(ref_signal, test_signal):
    sig_power = np.mean(np.abs(ref_signal)**2)
    noise = ref_signal - test_signal
    noise_power = np.mean(np.abs(noise)**2)

    if noise_power == 0:
        return float('inf') 
    
    snr_db = 10 * np.log10(sig_power / noise_power)
    return snr_db

if __name__ == "__main__":
    ref_file = "./result/impulse3x256.txt" #MODIFY AS NEEDED
    hw_file = "./Python/expected/input_impulse256_output_norm.txt"

    ref = load_hex_fft_file(ref_file)
    hw = load_fft_file(hw_file)

    snr = calculate_snr(ref, hw)
    print(f"--- SNR Analysis ---")
    print(f"Reference: {ref_file}")
    print(f"Hardware:  {hw_file}")
    if snr == float('inf'):
        print("Perfection!")
    else:
        print(f"Calculated SNR: {snr:.2f} dB")
        percent = (100 * 10**(-1 * snr/20));
        print(f"Percent Error: {percent:.3f}%")
    
    