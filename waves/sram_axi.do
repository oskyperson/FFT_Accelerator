onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_sram_axi/DUT/awaddr
add wave -noupdate /tb_sram_axi/DUT/awlen
add wave -noupdate /tb_sram_axi/DUT/wdata
add wave -noupdate /tb_sram_axi/DUT/wstrb
add wave -noupdate /tb_sram_axi/DUT/bresp
add wave -noupdate /tb_sram_axi/DUT/araddr
add wave -noupdate /tb_sram_axi/DUT/arlen
add wave -noupdate /tb_sram_axi/DUT/rdata
add wave -noupdate /tb_sram_axi/DUT/rresp
add wave -noupdate /tb_sram_axi/DUT/wen
add wave -noupdate /tb_sram_axi/DUT/read_data
add wave -noupdate /tb_sram_axi/DUT/write_data
add wave -noupdate /tb_sram_axi/DUT/read_addr
add wave -noupdate /tb_sram_axi/DUT/write_addr
add wave -noupdate /tb_sram_axi/DUT/CLK
add wave -noupdate /tb_sram_axi/DUT/nRST
add wave -noupdate /tb_sram_axi/DUT/awvalid
add wave -noupdate /tb_sram_axi/DUT/wlast
add wave -noupdate /tb_sram_axi/DUT/wvalid
add wave -noupdate /tb_sram_axi/DUT/bready
add wave -noupdate /tb_sram_axi/DUT/arvalid
add wave -noupdate /tb_sram_axi/DUT/rready
add wave -noupdate /tb_sram_axi/DUT/read_valid
add wave -noupdate /tb_sram_axi/DUT/write_valid
add wave -noupdate /tb_sram_axi/DUT/awready
add wave -noupdate /tb_sram_axi/DUT/wready
add wave -noupdate /tb_sram_axi/DUT/bvalid
add wave -noupdate /tb_sram_axi/DUT/arready
add wave -noupdate /tb_sram_axi/DUT/rlast
add wave -noupdate /tb_sram_axi/DUT/rvalid
add wave -noupdate /tb_sram_axi/DUT/ren
add wave -noupdate /tb_sram_axi/DUT/read_state
add wave -noupdate /tb_sram_axi/DUT/write_state
add wave -noupdate /tb_sram_axi/DUT/wstrb_reg
add wave -noupdate /tb_sram_axi/DUT/waddr_reg
add wave -noupdate /tb_sram_axi/DUT/wlen_reg
add wave -noupdate /tb_sram_axi/DUT/rlen_reg
add wave -noupdate /tb_sram_axi/DUT/raddr_reg
add wave -noupdate -expand /tb_sram_axi/SRAM/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {134164 ps} 0}
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
WaveRestoreZoom {0 ps} {777 ns}
