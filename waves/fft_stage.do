onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fft_stage/DUT/clk
add wave -noupdate /tb_fft_stage/DUT/n_rst
add wave -noupdate /tb_fft_stage/DUT/sample
add wave -noupdate /tb_fft_stage/DUT/sample_valid
add wave -noupdate /tb_fft_stage/DUT/out
add wave -noupdate /tb_fft_stage/DUT/out_valid
add wave -noupdate -radix unsigned /tb_fft_stage/DUT/count_out
add wave -noupdate /tb_fft_stage/DUT/control_delay
add wave -noupdate /tb_fft_stage/DUT/control_reg
add wave -noupdate /tb_fft_stage/DUT/feedback_sample
add wave -noupdate /tb_fft_stage/DUT/rotation
add wave -noupdate /tb_fft_stage/DUT/shift_en
add wave -noupdate /tb_fft_stage/DUT/math_sum
add wave -noupdate /tb_fft_stage/DUT/delays/shift
add wave -noupdate /tb_fft_stage/DUT/stage/sample
add wave -noupdate /tb_fft_stage/DUT/stage/feedback
add wave -noupdate /tb_fft_stage/DUT/stage/sum
add wave -noupdate /tb_fft_stage/DUT/stage/rotation
add wave -noupdate -color Gold -radix unsigned /tb_fft_stage/DUT/count_out
add wave -noupdate -divider {stage 2}
add wave -noupdate /tb_fft_stage/DUT1/clk
add wave -noupdate /tb_fft_stage/DUT1/sample
add wave -noupdate /tb_fft_stage/DUT1/sample_valid
add wave -noupdate /tb_fft_stage/DUT1/out
add wave -noupdate /tb_fft_stage/DUT1/out_valid
add wave -noupdate /tb_fft_stage/DUT1/twiddle_addr
add wave -noupdate /tb_fft_stage/DUT1/math_sum_reg
add wave -noupdate /tb_fft_stage/DUT1/delay_sample
add wave -noupdate /tb_fft_stage/DUT1/sample_reg
add wave -noupdate /tb_fft_stage/DUT1/feedback_reg
add wave -noupdate /tb_fft_stage/DUT1/rotation_reg
add wave -noupdate -color Gold -radix unsigned /tb_fft_stage/DUT1/count_out
add wave -noupdate /tb_fft_stage/DUT1/next_valid
add wave -noupdate /tb_fft_stage/DUT1/valid_reg
add wave -noupdate /tb_fft_stage/DUT1/control_delay
add wave -noupdate /tb_fft_stage/DUT1/out_valid_delay
add wave -noupdate /tb_fft_stage/DUT1/control_reg
add wave -noupdate /tb_fft_stage/DUT1/twiddle
add wave -noupdate /tb_fft_stage/DUT1/feedback_sample
add wave -noupdate /tb_fft_stage/DUT1/rotation
add wave -noupdate /tb_fft_stage/DUT1/delay_sample_d
add wave -noupdate /tb_fft_stage/DUT1/shift_en
add wave -noupdate /tb_fft_stage/DUT1/primed
add wave -noupdate /tb_fft_stage/DUT1/rollover_flag
add wave -noupdate /tb_fft_stage/DUT1/control
add wave -noupdate /tb_fft_stage/DUT1/math_sum
add wave -noupdate /tb_fft_stage/DUT1/stage/clk
add wave -noupdate /tb_fft_stage/DUT1/stage/n_rst
add wave -noupdate /tb_fft_stage/DUT1/stage/sample
add wave -noupdate /tb_fft_stage/DUT1/stage/feedback
add wave -noupdate /tb_fft_stage/DUT1/stage/twiddle
add wave -noupdate /tb_fft_stage/DUT1/stage/sum
add wave -noupdate /tb_fft_stage/DUT1/stage/rotation
add wave -noupdate /tb_fft_stage/DUT1/stage/diff
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2606293 ps} 0}
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
WaveRestoreZoom {2542154 ps} {2681044 ps}
