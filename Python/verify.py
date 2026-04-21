import numpy as np
import sys

def bit_reverse_order(data):
    N = len(data)
    idx = np.arange(N)
    br_idx = np.array([int(format(i, '09b')[::-1], 2) for i in idx])
    return data[br_idx]


def calculate_fft(input_file):
    output_file = input_file[:-4] + "_output_norm.txt"
    output_file2 = input_file[:-4] + "_output.txt"
    
    raw_data = np.loadtxt(input_file, dtype=float)
    data = raw_data[:, 0] + 1j * raw_data[:, 1]
    
    fft_result = np.fft.fft(data) / 512

    with open(output_file, 'w') as f:
        f.write("Real ----- Imaginary\n")
        for val in fft_result:
            re = val.real
            im = val.imag

            re_final = 0.0 if abs(re) < 1e-7 else re
            im_final = 0.0 if abs(im) < 1e-7 else im

            f.write(f"{re_final + 0.0:.6f}, {im_final + 0.0:.6f}\n")

    
    
    fft_result = bit_reverse_order(fft_result) 
        
    with open(output_file2, 'w') as f:
        f.write("Real ----- Imaginary\n")
        for val in fft_result:
            re = val.real
            im = val.imag

            re_final = 0.0 if abs(re) < 1e-7 else re
            im_final = 0.0 if abs(im) < 1e-7 else im

            f.write(f"{re_final + 0.0:.6f}, {im_final + 0.0:.6f}\n")



    print("did stuff")

if __name__ == "__main__":
    calculate_fft("./Python/input.txt")