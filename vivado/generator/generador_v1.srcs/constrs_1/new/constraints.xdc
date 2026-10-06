# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk_in1_0]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk_in1_0]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_in1_0]

##Buttons
set_property PACKAGE_PIN T18 [get_ports reset_0]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset_0]
#set_property PACKAGE_PIN U18 [get_ports reset]						
	#set_property IOSTANDARD LVCMOS33 [get_ports reset]
	
##Pmod Header JA
##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {clk_o_0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {clk_o_0}]
	
	
set_property PACKAGE_PIN B16 [get_ports {yn_0[13]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[13]}]
set_property PACKAGE_PIN B15 [get_ports {yn_0[12]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[12]}]
set_property PACKAGE_PIN A16 [get_ports {yn_0[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[11]}]
set_property PACKAGE_PIN A14 [get_ports {yn_0[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[10]}]		
set_property PACKAGE_PIN A15 [get_ports {yn_0[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[9]}]
set_property PACKAGE_PIN A17 [get_ports {yn_0[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[8]}]
set_property PACKAGE_PIN P18 [get_ports {yn_0[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[7]}]
set_property PACKAGE_PIN N17 [get_ports {yn_0[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[6]}]	
set_property PACKAGE_PIN M18 [get_ports {yn_0[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[5]}]
set_property PACKAGE_PIN K17 [get_ports {yn_0[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[4]}]
set_property PACKAGE_PIN L17 [get_ports {yn_0[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[3]}]
set_property PACKAGE_PIN M19 [get_ports {yn_0[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[2]}]
set_property PACKAGE_PIN P17 [get_ports {yn_0[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[1]}]
set_property PACKAGE_PIN R18 [get_ports {yn_0[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {yn_0[0]}]
	
	
## Switches
	
set_property PACKAGE_PIN V17 [get_ports {xin[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[0]}]
set_property PACKAGE_PIN V16 [get_ports {xin[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[1]}]
set_property PACKAGE_PIN W16 [get_ports {xin[2]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {xin[2]}]
set_property PACKAGE_PIN W17 [get_ports {xin[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[3]}]
set_property PACKAGE_PIN W15 [get_ports {xin[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[4]}]
set_property PACKAGE_PIN V15 [get_ports {xin[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[5]}]
set_property PACKAGE_PIN W14 [get_ports {xin[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[6]}]
set_property PACKAGE_PIN W13 [get_ports {xin[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[7]}]
set_property PACKAGE_PIN V2 [get_ports {xin[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[8]}]
set_property PACKAGE_PIN T3 [get_ports {xin[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[9]}]
set_property PACKAGE_PIN T2 [get_ports {xin[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[10]}]
set_property PACKAGE_PIN R3 [get_ports {xin[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[11]}]
set_property PACKAGE_PIN W2 [get_ports {xin[12]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[12]}]
set_property PACKAGE_PIN U1 [get_ports {xin[13]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {xin[13]}]

	
	
	## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
