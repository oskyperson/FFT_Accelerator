import numpy as np
from scipy.signal import windows

def to_q15_hex(val):
    scaled = int(np.clip(round(val * 32767), -32768, 32767))
    if scaled < 0:
        scaled = (1 << 16) + scaled
    return f"16'h{scaled:04X}"

def generate_sv_logic(max_pow=9):
    # Mapping: 0=Rect, 1=Hamming, 2=Hann, 3=Blackman, 4=Bartlett
    window_map = {
        0: ("Rectangular", None), # Bypass
        1: ("Hamming", windows.hamming),
        2: ("Hann", windows.hann),
        3: ("Blackman", windows.blackman),
        4: ("Bartlett", windows.bartlett)
    }
    
    n_values = [2**i for i in range(1, max_pow + 1)] 
    
    lines = ["case(window_type)"]
    
    for win_id, (name, func) in window_map.items():
        if win_id == 0:
            lines.append(f"  3'd0: next_sample = sample; // {name} Bypass")
            continue
            
        lines.append(f"  3'd{win_id}: begin // {name}")
        lines.append("    case(frame_size)")
        for n in n_values:
            lines.append(f"      10'd{n}: begin")
            lines.append("        case(index)")
            
            coeffs = func(n, sym=True)
            max_val = np.max(np.abs(coeffs))
            if max_val > 0:
                coeffs = coeffs / max_val
            
            for i, c in enumerate(coeffs):
                lines.append(f"          9'd{i}: coeff = {to_q15_hex(c)};")
            
            lines.append("          default: coeff = 16'h0000;")
            lines.append("        endcase")
            lines.append("      end")
        lines.append("      default: coeff = 16'h0000;")
        lines.append("    endcase")
        lines.append("  end")
        
    lines.append("  default: next_sample = sample;")
    lines.append("endcase")
    return "\n".join(lines)

with open("window_logic.txt", "w") as f:
    f.write(generate_sv_logic(9))

print("Success")