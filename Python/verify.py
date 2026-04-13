import numpy as np

def calculate_fft(input_file):
    output_file = input_file[:-4] + "_output.txt"
    
    data = np.loadtxt(input_file, dtype=float).astype(complex)
    fft_result = np.fft.fft(data) / 512

    with open(output_file, 'w') as f:
        f.write("Real ----- Imaginary\n")
        for val in fft_result:
            f.write(f"{val.real:.8f} {val.imag:.8f}\n")

    print(f"did stuff");
   

if __name__ == "__main__":
    calculate_fft("input.txt")