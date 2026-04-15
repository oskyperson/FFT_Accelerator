import numpy as np

def float_to_q115_hex(val):
    int_val = int(np.round(val * 32768))
    
    if int_val > 32767:
        int_val = 32767
    elif int_val < -32768:
        int_val = -32768
        
    hex_val = int_val & 0xFFFF
    return f"16'h{hex_val:04X}"

def generate_test_vectors():
    N = 512
    frequency = 30  
    fs = 512

    t = np.arange(N)

    signal = 0.5 * np.exp(1j * 2 * np.pi * frequency * t / fs)

    with open('input.txt', 'w') as f_txt:
        for val in signal:
            f_txt.write(f"{val.real:.8f} {val.imag:.8f}\n")
    with open('input_hex.txt', 'w') as f_hex:
        for val in signal:
            re_hex = float_to_q115_hex(val.real)
            im_hex = float_to_q115_hex(val.imag)
            f_hex.write(f"stream_frame({re_hex}, {im_hex});\n")

    print("Generated")

if __name__ == "__main__":
    generate_test_vectors()