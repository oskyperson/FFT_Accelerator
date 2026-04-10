import math
import cmath

N = 512  
bits = 16  
frac_bits = 15  

def float_to_fixed(val, frac_bits):
    fixed_val = int(round(val * (1 << frac_bits)))
    if fixed_val < 0:
        fixed_val = (1 << (frac_bits + 1)) + fixed_val 
    return fixed_val

twiddle_factors = []

for k in range(N // 2):
    angle = -2 * math.pi * k / N
    c = math.cos(angle)
    s = math.sin(angle)
    c_fixed = float_to_fixed(c, frac_bits)
    s_fixed = float_to_fixed(s, frac_bits)
    twiddle_factors.append((c_fixed, s_fixed))

for i, (c, s) in enumerate(twiddle_factors):
    print(f"8'h{i}: twiddle = {{16'h{c:04X}, 16'h{s:04X}}};")