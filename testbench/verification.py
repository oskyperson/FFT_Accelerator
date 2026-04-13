import numpy as np

def calculate_fft_from_file(filename):
    print(f"Reading data from {filename}...\n")

    data = np.loadtxt(filename, dtype=complex)

    fft_result = np.fft.fft(data)
    
    fft_result = fft_result / 512 

    print(f"{'Bin':<5} | {'Real':<12} | {'Imaginary':<12} | {'Magnitude'}")
    print("-" * 55)
    
    for val in fft_out:
        print(f"{val.real:.8f} {val.imag:.8f}")

if __name__ == "__main__":
    calculate_fft_from_file("input.txt")