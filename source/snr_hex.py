import numpy as np
import sys

def load_fft_file(filename):
    data = np.genfromtxt(filename, delimiter=',', skip_header=1)
    return data[:, 0] + 1j * data[:, 1]

def load_output(filename):
    data = np.fromrile(filename, dtype=np.uint32)
    real = (data >> 16) & 0XFFFF
    imag_bits = data & 0xFFFF
    real_signed = real_bits.astype(np.int16)
    imag_signed = imag_bits.astype(np.int16)
    real_float = real_signed / 32768.0
    imag_float = imag_signed / 32768.0
    ref_signal = real_float + 1j * imag_float

    return ref_signal


def calculate_snr(ref_signal, test_signal):
    sig_power = np.mean(np.abs(ref_signal)**2)
    noise = ref_signal - test_signal
    noise_power = np.mean(np.abs(noise)**2)

    if noise_power == 0:
        return float('inf') 
    
    snr_db = 10 * np.log10(sig_power / noise_power)
    return snr_db

if __name__ == "__main__":
    ref_file = "./Python/input_.txt"
    hw_file = "./Python/input_output.txt"

    
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
    
    