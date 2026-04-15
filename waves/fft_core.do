onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fft_core/clk
add wave -noupdate /tb_fft_core/n_rst
add wave -noupdate /tb_fft_core/sample
add wave -noupdate /tb_fft_core/out
add wave -noupdate /tb_fft_core/start
add wave -noupdate /tb_fft_core/valid
add wave -noupdate /tb_fft_core/out_valid
add wave -noupdate /tb_fft_core/out_file
add wave -noupdate /tb_fft_core/out_re
add wave -noupdate /tb_fft_core/out_im
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {1 ns}
