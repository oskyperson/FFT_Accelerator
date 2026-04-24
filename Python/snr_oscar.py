import numpy as np
import sys

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
    ref_file = "./connor.txt" #MODIFY AS NEEDED
    hw_file = "./Python/input_output_norm.txt"

    ref = load_fft_file(ref_file)
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
    
    