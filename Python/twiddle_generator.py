import math

N = 512  
bits = 16  
frac_bits = 15  

def float_to_fixed(val, frac_bits):
    val_int = int(round(val * (1 << frac_bits)))
    
    max_val = (1 << frac_bits) - 1
    min_val = -(1 << frac_bits)
    
    if val_int > max_val:
        val_int = max_val
    elif val_int < min_val:
        val_int = min_val
    
    if val_int < 0:
        val_int = (1 << bits) + val_int
        
    return val_int

twiddle_factors = []

for k in range(N // 2):
    angle = -2 * math.pi * k / N
    c = math.cos(angle)
    s = math.sin(angle)
    
    c_fixed = float_to_fixed(c, frac_bits)
    s_fixed = float_to_fixed(s, frac_bits)
    twiddle_factors.append((c_fixed, s_fixed))

for i, (c, s) in enumerate(twiddle_factors):
    print(f"            8'h{i:02X}: twiddle_raw = {{16'h{c:04X}, 16'h{s:04X}}};")