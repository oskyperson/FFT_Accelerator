import numpy as np

N = 512
frequency = 30  
fs = 512

t = np.arange(N)
signal = 0.5 * np.sin(2 * np.pi * frequency * t / fs)

np.savetxt('input.txt', signal, fmt='%.8f')

print("Generated input_data.txt with 512 samples.")