onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_fft_axi_manager/clk
add wave -noupdate /tb_fft_axi_manager/n_rst
add wave -noupdate -divider {write address}
add wave -noupdate /tb_fft_axi_manager/awready
add wave -noupdate -radix unsigned /tb_fft_axi_manager/awaddr
add wave -noupdate -radix unsigned /tb_fft_axi_manager/awlen
add wave -noupdate /tb_fft_axi_manager/awvalid
add wave -noupdate -divider {write data}
add wave -noupdate /tb_fft_axi_manager/wready
add wave -noupdate -radix decimal /tb_fft_axi_manager/wdata
add wave -noupdate /tb_fft_axi_manager/wstrb
add wave -noupdate /tb_fft_axi_manager/wlast
add wave -noupdate /tb_fft_axi_manager/wvalid
add wave -noupdate -divider {write response}
add wave -noupdate /tb_fft_axi_manager/bresp
add wave -noupdate /tb_fft_axi_manager/bvalid
add wave -noupdate /tb_fft_axi_manager/bready
add wave -noupdate -divider {read address}
add wave -noupdate /tb_fft_axi_manager/arready
add wave -noupdate -radix unsigned /tb_fft_axi_manager/araddr
add wave -noupdate -radix unsigned /tb_fft_axi_manager/arlen
add wave -noupdate /tb_fft_axi_manager/arvalid
add wave -noupdate -divider {read data}
add wave -noupdate /tb_fft_axi_manager/rlast
add wave -noupdate /tb_fft_axi_manager/rvalid
add wave -noupdate -radix unsigned /tb_fft_axi_manager/rdata
add wave -noupdate /tb_fft_axi_manager/rready
add wave -noupdate /tb_fft_axi_manager/rresp
add wave -noupdate -divider states
add wave -noupdate /tb_fft_axi_manager/DUT/rstate
add wave -noupdate /tb_fft_axi_manager/DUT/wstate
add wave -noupdate -divider {signals to/from fft}
add wave -noupdate -radix unsigned -childformat {{{/tb_fft_axi_manager/config_reg[7]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[6]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[5]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[4]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[3]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[2]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[1]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[0]} -radix unsigned}} -expand -subitemconfig {{/tb_fft_axi_manager/config_reg[7]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[6]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[5]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[4]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[3]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[2]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[1]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[0]} {-height 16 -radix unsigned}} /tb_fft_axi_manager/config_reg
add wave -noupdate /tb_fft_axi_manager/fft_done
add wave -noupdate -radix decimal /tb_fft_axi_manager/data_out
add wave -noupdate /tb_fft_axi_manager/out_valid
add wave -noupdate -radix unsigned /tb_fft_axi_manager/data_in
add wave -noupdate /tb_fft_axi_manager/in_valid
add wave -noupdate -divider {test name}
add wave -noupdate /tb_fft_axi_manager/test
add wave -noupdate -divider {read counter}
add wave -noupdate /tb_fft_axi_manager/DUT/read_counter/last
add wave -noupdate -radix unsigned /tb_fft_axi_manager/DUT/read_counter/i
add wave -noupdate -divider {write counter}
add wave -noupdate /tb_fft_axi_manager/DUT/write_counter/last
add wave -noupdate -radix unsigned /tb_fft_axi_manager/DUT/write_counter/i
add wave -noupdate -divider {interal signals}
add wave -noupdate -radix unsigned /tb_fft_axi_manager/DUT/j
add wave -noupdate -radix unsigned -childformat {{{/tb_fft_axi_manager/DUT/k[10]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[9]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[8]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[7]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[6]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[5]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[4]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[3]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[2]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[1]} -radix unsigned} {{/tb_fft_axi_manager/DUT/k[0]} -radix unsigned}} -subitemconfig {{/tb_fft_axi_manager/DUT/k[10]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[9]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[8]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[7]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[6]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[5]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[4]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[3]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[2]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[1]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/k[0]} {-height 16 -radix unsigned}} /tb_fft_axi_manager/DUT/k
add wave -noupdate -radix unsigned /tb_fft_axi_manager/DUT/processing
add wave -noupdate -radix unsigned -childformat {{{/tb_fft_axi_manager/DUT/configs[7]} -radix unsigned} {{/tb_fft_axi_manager/DUT/configs[6]} -radix unsigned} {{/tb_fft_axi_manager/DUT/configs[5]} -radix unsigned} {{/tb_fft_axi_manager/DUT/configs[4]} -radix unsigned} {{/tb_fft_axi_manager/DUT/configs[3]} -radix unsigned} {{/tb_fft_axi_manager/DUT/configs[2]} -radix unsigned} {{/tb_fft_axi_manager/DUT/configs[1]} -radix unsigned} {{/tb_fft_axi_manager/DUT/configs[0]} -radix unsigned}} -subitemconfig {{/tb_fft_axi_manager/DUT/configs[7]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/configs[6]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/configs[5]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/configs[4]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/configs[3]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/configs[2]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/configs[1]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/DUT/configs[0]} {-height 16 -radix unsigned}} /tb_fft_axi_manager/DUT/configs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {32575261 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 321
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
WaveRestoreZoom {20638506 ps} {50122087 ps}
