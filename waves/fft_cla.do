onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fft_cla/clk
add wave -noupdate /tb_fft_cla/n_rst
add wave -noupdate -divider inputs
add wave -noupdate -radix unsigned /tb_fft_cla/a
add wave -noupdate -radix unsigned /tb_fft_cla/b
add wave -noupdate -radix unsigned /tb_fft_cla/cin
add wave -noupdate -divider outputs
add wave -noupdate -radix unsigned /tb_fft_cla/sum
add wave -noupdate -radix unsigned /tb_fft_cla/cout
add wave -noupdate -divider {test name}
add wave -noupdate /tb_fft_cla/test
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11764759119 ps} 0}
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
WaveRestoreZoom {0 ps} {32659184250 ps}
