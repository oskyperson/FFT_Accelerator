onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/clk}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/n_rst}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/sample}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/sample_valid}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/out}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/out_valid}
add wave -noupdate -radix decimal {/tb_fft_core/dut/butterfly_units[0]/stage/twiddle_addr}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/delay_sample}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/count_out}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/twiddle}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/feedback_sample}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/rotation}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/shift_en}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/rollover_flag}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/control}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/sample_d}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/sample_valid_d}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/control_d}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/math_sum}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/math_valid}
add wave -noupdate -radix unsigned {/tb_fft_core/dut/butterfly_units[0]/stage/count/count}
add wave -noupdate -divider {Shift Reg}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/delays/clk}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/delays/n_rst}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/delays/sample}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/delays/shift_en}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/delays/out}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/delays/shift}
add wave -noupdate -divider Math
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/sample}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/sample_valid}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/feedback}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/twiddle}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/sum}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/next_valid}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/rotation}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/sample_reg}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/feedback_reg}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/diff}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/sum_im}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/sum_re}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/re_product}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/im_product}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/ri_product}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/ir_product}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/temp_im}
add wave -noupdate {/tb_fft_core/dut/butterfly_units[0]/stage/stage/temp_re}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {42981 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {12251 ps} {248619 ps}
