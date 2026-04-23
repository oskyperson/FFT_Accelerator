onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {cpu write address}
add wave -noupdate /tb_axi_top/DUT/cpu_awaddr
add wave -noupdate /tb_axi_top/DUT/cpu_awlen
add wave -noupdate /tb_axi_top/DUT/cpu_awvalid
add wave -noupdate /tb_axi_top/DUT/cpu_awready
add wave -noupdate -divider {cpu write data}
add wave -noupdate /tb_axi_top/DUT/cpu_wdata
add wave -noupdate /tb_axi_top/DUT/cpu_wlast
add wave -noupdate /tb_axi_top/DUT/cpu_wvalid
add wave -noupdate /tb_axi_top/DUT/cpu_wready
add wave -noupdate /tb_axi_top/DUT/cpu_wstrb
add wave -noupdate -divider {cpu read address}
add wave -noupdate /tb_axi_top/DUT/cpu_araddr
add wave -noupdate /tb_axi_top/DUT/cpu_arlen
add wave -noupdate /tb_axi_top/DUT/cpu_arvalid
add wave -noupdate /tb_axi_top/DUT/cpu_arready
add wave -noupdate -divider {cpu read data}
add wave -noupdate /tb_axi_top/DUT/cpu_rdata
add wave -noupdate /tb_axi_top/DUT/cpu_rlast
add wave -noupdate /tb_axi_top/DUT/cpu_rready
add wave -noupdate /tb_axi_top/DUT/cpu_rvalid
add wave -noupdate -divider {fft sub read address}
add wave -noupdate /tb_axi_top/DUT/fft_sub_araddr
add wave -noupdate /tb_axi_top/DUT/fft_sub_arlen
add wave -noupdate /tb_axi_top/DUT/fft_sub_arready
add wave -noupdate /tb_axi_top/DUT/fft_sub_arvalid
add wave -noupdate -divider {fft sub read data}
add wave -noupdate /tb_axi_top/DUT/fft_sub_rdata
add wave -noupdate /tb_axi_top/DUT/fft_sub_rlast
add wave -noupdate /tb_axi_top/DUT/fft_sub_rready
add wave -noupdate /tb_axi_top/DUT/fft_sub_rvalid
add wave -noupdate -divider {fft sub write address}
add wave -noupdate /tb_axi_top/DUT/fft_sub_awaddr
add wave -noupdate /tb_axi_top/DUT/fft_sub_awlen
add wave -noupdate /tb_axi_top/DUT/fft_sub_awready
add wave -noupdate /tb_axi_top/DUT/fft_sub_awvalid
add wave -noupdate -divider {fft sub write data}
add wave -noupdate /tb_axi_top/DUT/fft_sub_wdata
add wave -noupdate /tb_axi_top/DUT/fft_sub_wlast
add wave -noupdate /tb_axi_top/DUT/fft_sub_wvalid
add wave -noupdate /tb_axi_top/DUT/fft_sub_wready
add wave -noupdate /tb_axi_top/DUT/fft_sub_wstrb
add wave -noupdate -divider {fft sub internals}
add wave -noupdate -expand -group {write counter} /tb_axi_top/DUT/fft_sub/write_counter/last
add wave -noupdate -expand -group {write counter} /tb_axi_top/DUT/fft_sub/write_counter/i
add wave -noupdate -expand -group {read counter} /tb_axi_top/DUT/fft_sub/read_counter/last
add wave -noupdate -expand -group {read counter} /tb_axi_top/DUT/fft_sub/read_counter/i
add wave -noupdate -divider {fft read address}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_araddr
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_arready
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_arvalid
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_arlen
add wave -noupdate -divider {fft read data}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_rdata
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_rlast
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_rready
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_rvalid
add wave -noupdate -divider {fft write address}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_awaddr
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_awlen
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_awvalid
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_awready
add wave -noupdate -divider {fft write data}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_wdata
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_wlast
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_wvalid
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_wready
add wave -noupdate -radix unsigned /tb_axi_top/DUT/fft_man_wstrb
add wave -noupdate -divider {to/from fft}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/frame_size
add wave -noupdate /tb_axi_top/DUT/load_size
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sample
add wave -noupdate -radix unsigned /tb_axi_top/DUT/valid
add wave -noupdate -radix unsigned /tb_axi_top/DUT/data_out
add wave -noupdate -radix unsigned /tb_axi_top/DUT/out_valid
add wave -noupdate -divider {fft states}
add wave -noupdate /tb_axi_top/DUT/fft_man/rstate
add wave -noupdate /tb_axi_top/DUT/fft_man/wstate
add wave -noupdate -expand -group {Write Counter} -radix unsigned /tb_axi_top/DUT/fft_man/write_counter/last
add wave -noupdate -expand -group {Write Counter} -radix unsigned /tb_axi_top/DUT/fft_man/write_counter/i
add wave -noupdate -expand -group {Read Counter} -radix unsigned /tb_axi_top/DUT/fft_man/read_counter/last
add wave -noupdate -expand -group {Read Counter} -radix unsigned /tb_axi_top/DUT/fft_man/read_counter/i
add wave -noupdate -radix unsigned -childformat {{{/tb_axi_top/DUT/fft_man/configs[7]} -radix unsigned} {{/tb_axi_top/DUT/fft_man/configs[6]} -radix unsigned} {{/tb_axi_top/DUT/fft_man/configs[5]} -radix unsigned} {{/tb_axi_top/DUT/fft_man/configs[4]} -radix unsigned} {{/tb_axi_top/DUT/fft_man/configs[3]} -radix unsigned} {{/tb_axi_top/DUT/fft_man/configs[2]} -radix unsigned} {{/tb_axi_top/DUT/fft_man/configs[1]} -radix unsigned} {{/tb_axi_top/DUT/fft_man/configs[0]} -radix unsigned}} -subitemconfig {{/tb_axi_top/DUT/fft_man/configs[7]} {-height 16 -radix unsigned} {/tb_axi_top/DUT/fft_man/configs[6]} {-height 16 -radix unsigned} {/tb_axi_top/DUT/fft_man/configs[5]} {-height 16 -radix unsigned} {/tb_axi_top/DUT/fft_man/configs[4]} {-height 16 -radix unsigned} {/tb_axi_top/DUT/fft_man/configs[3]} {-height 16 -radix unsigned} {/tb_axi_top/DUT/fft_man/configs[2]} {-height 16 -radix unsigned} {/tb_axi_top/DUT/fft_man/configs[1]} {-height 16 -radix unsigned} {/tb_axi_top/DUT/fft_man/configs[0]} {-height 16 -radix unsigned}} /tb_axi_top/DUT/fft_man/configs
add wave -noupdate -divider clk
add wave -noupdate -expand -group clk /tb_axi_top/DUT/clk
add wave -noupdate -expand -group clk /tb_axi_top/DUT/n_rst
add wave -noupdate -expand -group clk /tb_axi_top/test_name
add wave -noupdate -divider {sram axi}
add wave -noupdate -divider {write address}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_awaddr
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_awlen
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_awvalid
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_awready
add wave -noupdate -divider {write data}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_wdata
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_wlast
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_wready
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_wvalid
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_wstrb
add wave -noupdate -divider {read address}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_araddr
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_arlen
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_arvalid
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_arready
add wave -noupdate -divider {read data}
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_rdata
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_rlast
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_rvalid
add wave -noupdate -radix unsigned /tb_axi_top/DUT/sram_rready
add wave -noupdate -divider sram
add wave -noupdate /tb_axi_top/DUT/wen
add wave -noupdate /tb_axi_top/DUT/write_addr
add wave -noupdate /tb_axi_top/DUT/write_data
add wave -noupdate /tb_axi_top/DUT/write_valid
add wave -noupdate /tb_axi_top/DUT/ren
add wave -noupdate /tb_axi_top/DUT/read_addr
add wave -noupdate /tb_axi_top/DUT/read_data
add wave -noupdate /tb_axi_top/DUT/read_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {77218849 ps} 0}
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
WaveRestoreZoom {0 ps} {647167500 ps}
