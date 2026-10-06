# Clock signal
set_property PACKAGE_PIN W5 [get_ports sys_clock]							
	set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]

##Buttons
set_property PACKAGE_PIN T18 [get_ports bt_0]						
	set_property IOSTANDARD LVCMOS33 [get_ports bt_0]
#set_property PACKAGE_PIN U18 [get_ports reset]						
	#set_property IOSTANDARD LVCMOS33 [get_ports reset]
	
##Pmod Header JA
##Sch name = JA1
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
	
# Switches

set_property PACKAGE_PIN V17 [get_ports {sw_0[0]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[0]}]

set_property PACKAGE_PIN V16 [get_ports {sw_0[1]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[1]}]
 
# LEDs

set_property PACKAGE_PIN U16 [get_ports {out_received_data_0[0]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[0]}]

set_property PACKAGE_PIN E19 [get_ports {out_received_data_0[1]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[1]}]

set_property PACKAGE_PIN U19 [get_ports {out_received_data_0[2]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[2]}]

set_property PACKAGE_PIN V19 [get_ports {out_received_data_0[3]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[3]}]

set_property PACKAGE_PIN W18 [get_ports {out_received_data_0[4]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[4]}]

set_property PACKAGE_PIN U15 [get_ports {out_received_data_0[5]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[5]}]

set_property PACKAGE_PIN U14 [get_ports {out_received_data_0[6]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[6]}]

set_property PACKAGE_PIN V14 [get_ports {out_received_data_0[7]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[7]}]

set_property PACKAGE_PIN V13 [get_ports {out_received_data_0[8]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[8]}]

set_property PACKAGE_PIN V3 [get_ports {out_received_data_0[9]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[9]}]

set_property PACKAGE_PIN W3 [get_ports {out_received_data_0[10]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[10]}]

set_property PACKAGE_PIN U3 [get_ports {out_received_data_0[11]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[11]}]

set_property PACKAGE_PIN P3 [get_ports {out_received_data_0[12]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[12]}]

set_property PACKAGE_PIN N3 [get_ports {out_received_data_0[13]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[13]}]

set_property PACKAGE_PIN P1 [get_ports {out_received_data_0[14]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[14]}]

set_property PACKAGE_PIN L1 [get_ports {out_received_data_0[15]}]					

	set_property IOSTANDARD LVCMOS33 [get_ports {out_received_data_0[15]}]
 

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


