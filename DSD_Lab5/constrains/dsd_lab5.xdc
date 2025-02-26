set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {select[2]}]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { select[1] }];
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { select[0] }];
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { input_bits[3] }];
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {input_bits[2]}]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {input_bits[1]}]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { input_bits[0] }];

set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { A }];
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { B }];
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports C]
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { D }];
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { E }];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { F }];
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports G]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { Dp }];

set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { S1 }];
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports S2]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { S3 }];
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports S4]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { S5 }];
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { S6 }];
set_property PACKAGE_PIN K2 [get_ports S7]
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { S7 }];
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { S8 }];

set_property IOSTANDARD LVCMOS33 [get_ports {select[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {input_bits[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {input_bits[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports B]
set_property IOSTANDARD LVCMOS33 [get_ports A]
set_property IOSTANDARD LVCMOS33 [get_ports D]
set_property IOSTANDARD LVCMOS33 [get_ports Dp]
set_property IOSTANDARD LVCMOS33 [get_ports S8]
set_property IOSTANDARD LVCMOS33 [get_ports S7]
set_property IOSTANDARD LVCMOS33 [get_ports S6]
set_property IOSTANDARD LVCMOS33 [get_ports S5]
set_property IOSTANDARD LVCMOS33 [get_ports S3]
set_property IOSTANDARD LVCMOS33 [get_ports F]
set_property IOSTANDARD LVCMOS33 [get_ports S1]
set_property IOSTANDARD LVCMOS33 [get_ports E]

create_interface interface_1
set_property INTERFACE interface_1 [get_ports { A B C D Dp E F G S1 S2 S3 S4 S5 S6 S7 S8 }]
