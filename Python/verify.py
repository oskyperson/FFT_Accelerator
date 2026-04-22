import numpy as np
import sys

def to_hex(val):
    def to_fixed(x):
        return int(np.clip(round(x * 32768), -32768, 32767)) & 0xFFFF

    real_hex = to_fixed(val.real)
    imag_hex = to_fixed(val.imag)

    combined = (real_hex << 16) | imag_hex
    return f"{combined:08x}"


def calculate_fft(input_file, N = 512):
    output_file = input_file[:-4] + "_output_norm.txt"
    output_file2 = input_file[:-4] + "_output.txt"
    hex_output_file = input_file[:-4] + "_output_hex.txt"
    
    raw_data = np.loadtxt(input_file, dtype=float)
    data = raw_data[:N, 0] + 1j * raw_data[:N, 1]
    
    fft_result = np.fft.fft(data) / N

    with open(output_file, 'w') as f:
        f.write("Real ----- Imaginary\n")
        for val in fft_result:
            re = val.real
            im = val.imag

            re_final = 0.0 if abs(re) < 1e-7 else re
            im_final = 0.0 if abs(im) < 1e-7 else im

            f.write(f"{re_final + 0.0:.6f}, {im_final + 0.0:.6f}\n")


    with open(hex_output_file, 'w') as f:
        for val in fft_result:
            f.write(f"{to_hex(val)}\n")


    print("did stuff")

if __name__ == "__main__":
    n = int(sys.argv[1])
    calculate_fft("./Python/input.txt", n)