# Auto-generated project tcl file to read all sources

set search_path [concat [list .] $search_path]
source  src/team42_ece337_synfiles_0/detect-reset-logic.tcl
analyze -format sverilog -define { } -work work src/team42_ece337_adder_1.0.0/source/adder.sv
source  src/team42_ece337_adder_1.0.0/scripts/syn_adder.tcl
