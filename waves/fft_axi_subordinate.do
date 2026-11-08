onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fft_axi_subordinate/CLK
add wave -noupdate /tb_fft_axi_subordinate/nRST
add wave -noupdate -divider {address write}
add wave -noupdate /tb_fft_axi_subordinate/awready
add wave -noupdate /tb_fft_axi_subordinate/awaddr
add wave -noupdate /tb_fft_axi_subordinate/awlen
add wave -noupdate /tb_fft_axi_subordinate/awvalid
add wave -noupdate -divider {data write}
add wave -noupdate /tb_fft_axi_subordinate/wready
add wave -noupdate -radix unsigned /tb_fft_axi_subordinate/wdata
add wave -noupdate /tb_fft_axi_subordinate/wstrb
add wave -noupdate /tb_fft_axi_subordinate/wlast
add wave -noupdate /tb_fft_axi_subordinate/wvalid
add wave -noupdate -divider {write response}
add wave -noupdate /tb_fft_axi_subordinate/bresp
add wave -noupdate /tb_fft_axi_subordinate/bvalid
add wave -noupdate /tb_fft_axi_subordinate/bready
add wave -noupdate -divider {read address}
add wave -noupdate /tb_fft_axi_subordinate/arready
add wave -noupdate /tb_fft_axi_subordinate/araddr
add wave -noupdate /tb_fft_axi_subordinate/arlen
add wave -noupdate /tb_fft_axi_subordinate/arvalid
add wave -noupdate -divider {read data}
add wave -noupdate /tb_fft_axi_subordinate/rlast
add wave -noupdate /tb_fft_axi_subordinate/rvalid
add wave -noupdate -radix unsigned /tb_fft_axi_subordinate/rdata
add wave -noupdate /tb_fft_axi_subordinate/rready
add wave -noupdate /tb_fft_axi_subordinate/rresp
add wave -noupdate -divider {to manager}
add wave -noupdate -radix unsigned -childformat {{{/tb_fft_axi_subordinate/config_reg[7]} -radix unsigned} {{/tb_fft_axi_subordinate/config_reg[6]} -radix unsigned} {{/tb_fft_axi_subordinate/config_reg[5]} -radix unsigned} {{/tb_fft_axi_subordinate/config_reg[4]} -radix unsigned} {{/tb_fft_axi_subordinate/config_reg[3]} -radix unsigned} {{/tb_fft_axi_subordinate/config_reg[2]} -radix unsigned} {{/tb_fft_axi_subordinate/config_reg[1]} -radix unsigned} {{/tb_fft_axi_subordinate/config_reg[0]} -radix unsigned}} -expand -subitemconfig {{/tb_fft_axi_subordinate/config_reg[7]} {-height 16 -radix unsigned} {/tb_fft_axi_subordinate/config_reg[6]} {-height 16 -radix unsigned} {/tb_fft_axi_subordinate/config_reg[5]} {-height 16 -radix unsigned} {/tb_fft_axi_subordinate/config_reg[4]} {-height 16 -radix unsigned} {/tb_fft_axi_subordinate/config_reg[3]} {-height 16 -radix unsigned} {/tb_fft_axi_subordinate/config_reg[2]} {-height 16 -radix unsigned} {/tb_fft_axi_subordinate/config_reg[1]} {-height 16 -radix unsigned} {/tb_fft_axi_subordinate/config_reg[0]} {-height 16 -radix unsigned}} /tb_fft_axi_subordinate/config_reg
add wave -noupdate -divider name
add wave -noupdate /tb_fft_axi_subordinate/test
add wave -noupdate -divider {write counter}
add wave -noupdate /tb_fft_axi_subordinate/sub0/write_counter/last
add wave -noupdate /tb_fft_axi_subordinate/sub0/write_counter/i
add wave -noupdate -divider {read counter}
add wave -noupdate /tb_fft_axi_subordinate/sub0/read_counter/last
add wave -noupdate /tb_fft_axi_subordinate/sub0/read_counter/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {352205 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 77
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
WaveRestoreZoom {32563 ps} {368039 ps}
