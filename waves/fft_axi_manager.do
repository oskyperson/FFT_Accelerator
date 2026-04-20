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
add wave -noupdate -divider {input config}
add wave -noupdate -radix unsigned -childformat {{{/tb_fft_axi_manager/config_reg[7]} -radix unsigned -childformat {{{[31]} -radix unsigned} {{[30]} -radix unsigned} {{[29]} -radix unsigned} {{[28]} -radix unsigned} {{[27]} -radix unsigned} {{[26]} -radix unsigned} {{[25]} -radix unsigned} {{[24]} -radix unsigned} {{[23]} -radix unsigned} {{[22]} -radix unsigned} {{[21]} -radix unsigned} {{[20]} -radix unsigned} {{[19]} -radix unsigned} {{[18]} -radix unsigned} {{[17]} -radix unsigned} {{[16]} -radix unsigned} {{[15]} -radix unsigned} {{[14]} -radix unsigned} {{[13]} -radix unsigned} {{[12]} -radix unsigned} {{[11]} -radix unsigned} {{[10]} -radix unsigned} {{[9]} -radix unsigned} {{[8]} -radix unsigned} {{[7]} -radix unsigned} {{[6]} -radix unsigned} {{[5]} -radix unsigned} {{[4]} -radix unsigned} {{[3]} -radix unsigned} {{[2]} -radix unsigned} {{[1]} -radix unsigned} {{[0]} -radix unsigned}}} {{/tb_fft_axi_manager/config_reg[6]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[5]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[4]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[3]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[2]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[1]} -radix unsigned} {{/tb_fft_axi_manager/config_reg[0]} -radix unsigned}} -expand -subitemconfig {{/tb_fft_axi_manager/config_reg[7]} {-height 16 -radix unsigned -childformat {{{[31]} -radix unsigned} {{[30]} -radix unsigned} {{[29]} -radix unsigned} {{[28]} -radix unsigned} {{[27]} -radix unsigned} {{[26]} -radix unsigned} {{[25]} -radix unsigned} {{[24]} -radix unsigned} {{[23]} -radix unsigned} {{[22]} -radix unsigned} {{[21]} -radix unsigned} {{[20]} -radix unsigned} {{[19]} -radix unsigned} {{[18]} -radix unsigned} {{[17]} -radix unsigned} {{[16]} -radix unsigned} {{[15]} -radix unsigned} {{[14]} -radix unsigned} {{[13]} -radix unsigned} {{[12]} -radix unsigned} {{[11]} -radix unsigned} {{[10]} -radix unsigned} {{[9]} -radix unsigned} {{[8]} -radix unsigned} {{[7]} -radix unsigned} {{[6]} -radix unsigned} {{[5]} -radix unsigned} {{[4]} -radix unsigned} {{[3]} -radix unsigned} {{[2]} -radix unsigned} {{[1]} -radix unsigned} {{[0]} -radix unsigned}}} {/tb_fft_axi_manager/config_reg[7][31]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][30]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][29]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][28]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][27]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][26]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][25]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][24]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][23]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][22]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][21]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][20]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][19]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][18]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][17]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][16]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][15]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][14]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][13]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][12]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][11]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][10]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][9]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][8]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][7]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][6]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][5]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][4]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][3]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][2]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][1]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[7][0]} {-radix unsigned} {/tb_fft_axi_manager/config_reg[6]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[5]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[4]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[3]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[2]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[1]} {-height 16 -radix unsigned} {/tb_fft_axi_manager/config_reg[0]} {-height 16 -radix unsigned}} /tb_fft_axi_manager/config_reg
add wave -noupdate -divider {signals to/from fft}
add wave -noupdate -radix decimal /tb_fft_axi_manager/data_out
add wave -noupdate /tb_fft_axi_manager/out_valid
add wave -noupdate -radix unsigned /tb_fft_axi_manager/data_in
add wave -noupdate /tb_fft_axi_manager/in_valid
add wave -noupdate -radix unsigned /tb_fft_axi_manager/DUT/load_size
add wave -noupdate -radix unsigned /tb_fft_axi_manager/DUT/frame_size
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {45340378 ps} 0}
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
WaveRestoreZoom {0 ps} {196066500 ps}
