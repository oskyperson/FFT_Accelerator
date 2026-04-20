onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fft_axi_counter/clk
add wave -noupdate /tb_fft_axi_counter/n_rst
add wave -noupdate -divider inputs
add wave -noupdate -radix decimal /tb_fft_axi_counter/len
add wave -noupdate /tb_fft_axi_counter/ready
add wave -noupdate /tb_fft_axi_counter/valid
add wave -noupdate /tb_fft_axi_counter/resp
add wave -noupdate -divider outputs
add wave -noupdate -color Magenta /tb_fft_axi_counter/last
add wave -noupdate -color Magenta -radix decimal /tb_fft_axi_counter/i
add wave -noupdate -divider {test name}
add wave -noupdate /tb_fft_axi_counter/test
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5182399 ps} 0}
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
WaveRestoreZoom {5097356 ps} {5307486 ps}
