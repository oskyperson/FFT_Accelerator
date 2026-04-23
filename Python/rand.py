import numpy as np
import sys

def float_to_hex(val):
    int_val = int(np.round(val * 32768))
    
    if int_val > 32767:
        int_val = 32767
    elif int_val < -32768:
        int_val = -32768
        
    hex_val = int_val & 0xFFFF
    return f"16'h{hex_val:04X}"

def generate(signal_type='singleTone', N=512):
    fs = N
    #N = 512
    #fs = 512
    t = np.arange(N)

    if signal_type == 'singleTone':
        k = max(1, N // 16)
        signal = 0.5 * np.exp(1j * 2 * np.pi * frequency * t / fs)
        
    elif signal_type == 'twoTone':
        f1, f2 = 30, 100
        signal = 0.25 * np.exp(1j * 2 * np.pi * f1 * t / fs) + 0.25 * np.exp(1j * 2 * np.pi * f2 * t / fs)
                 
    elif signal_type == 'impulse':
        signal = np.zeros(N, dtype=complex)
        signal[0] = 0.5 + 0.0j 
        
    elif signal_type == 'dc':
        signal = np.full(N, 0.5 + 0.0j, dtype=complex)
        
    elif signal_type == 'sine':
        k = max(1, N // 16)
        #signal = 0.5 * np.cos(2 * np.pi * frequency * t / fs) + 0j
        signal = 0.5 * np.exp(1j * 2 * np.pi * k * t / N)

    elif signal_type == 'noise1':
        signal = np.random.uniform(-0.99, 0.99, N) + 1j * np.random.uniform(-0.99, 0.99, N)

    elif signal_type == 'noise2':
        frequency = 60
        clean_signal = 0.6 * np.exp(1j * 2 * np.pi * frequency * t / fs)
        noise = np.random.uniform(-0.3, 0.3, N) + 1j * np.random.uniform(-0.3, 0.3, N)
        signal = clean_signal + noise

    elif signal_type == 'lowTone':
        frequency = 45
        signal = 0.025 * np.exp(1j * 2 * np.pi * frequency * t / fs)

    elif signal_type == 'squareWave':
        frequency = 20
        signal = 0.8 * np.sign(np.cos(2 * np.pi * frequency * t / fs)) + 0j

    elif signal_type == 'chirp':
        f_start = 10
        f_end = N // 4
        phase = 2 * np.pi * (f_start * t + (f_end - f_start) * (t**2) / (2 * N)) / fs
        signal = 0.8 * np.exp(1j * phase)
        
    elif signal_type == 'multiTone':
        f1, f2, f3 = 25/2, 75/2, 150/2
        signal = 0.5 * np.exp(1j * 2 * np.pi * f1 * t / fs) + \
                 0.2 * np.exp(1j * 2 * np.pi * f2 * t / fs) + \
                 0.05 * np.exp(1j * 2 * np.pi * f3 * t / fs)
        
    else:
        raise ValueError(f"Unknown signal type: {signal_type}")

    with open('./Python/input.txt', 'w') as f_txt:
        for val in signal:
            f_txt.write(f"{val.real:.8f} {val.imag:.8f}\n")
            
    with open('./Python/input_hex.txt', 'w') as f_hex:
        for val in signal:
            re_hex = float_to_hex(val.real)
            im_hex = float_to_hex(val.imag)
            f_hex.write(f"stream_frame({re_hex}, {im_hex});\n")

    with open('./Python/input_dc256.txt', 'w') as f_hex:
        for val in signal:
            re_hex = float_to_hex(val.real).replace("16'h", "")
            im_hex = float_to_hex(val.imag).replace("16'h", "")
            f_hex.write(f"{re_hex}{im_hex}\n")

    print(f"Generated '{signal_type}' test vectors.")

if __name__ == "__main__":
   generate(sys.argv[1], int(sys.argv[2]))
