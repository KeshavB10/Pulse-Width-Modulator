# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.18-s082_1 on Tue Mar 04 16:12:12 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design PWM


create_clock -name "clkin" -period 15.0 -waveform {0.0 7.0} [get_ports clkin_pad]
create_clock -name "vir_clk" -period 15.0 -waveform {0.0 7.5} 
set_load -pin_load 5.0 [get_ports out_pad]
group_path -weight 1.000000 -name I2R -from [list \
  [get_ports clkin_pad]  \
  [get_ports reset_pad]  \
  [get_ports {duty_cycle_pad[7]}]  \
  [get_ports {duty_cycle_pad[6]}]  \
  [get_ports {duty_cycle_pad[5]}]  \
  [get_ports {duty_cycle_pad[4]}]  \
  [get_ports {duty_cycle_pad[3]}]  \
  [get_ports {duty_cycle_pad[2]}]  \
  [get_ports {duty_cycle_pad[1]}]  \
  [get_ports {duty_cycle_pad[0]}] ] -to [list \
  [get_cells {counter_reg[6]}]  \
  [get_cells out_reg]  \
  [get_cells {counter_reg[1]}]  \
  [get_cells {counter_reg[5]}]  \
  [get_cells {counter_reg[0]}]  \
  [get_cells {counter_reg[2]}]  \
  [get_cells {counter_reg[7]}]  \
  [get_cells {counter_reg[4]}]  \
  [get_cells {counter_reg[3]}] ]
group_path -weight 1.000000 -name R2O -from [list \
  [get_cells {counter_reg[6]}]  \
  [get_cells out_reg]  \
  [get_cells {counter_reg[1]}]  \
  [get_cells {counter_reg[5]}]  \
  [get_cells {counter_reg[0]}]  \
  [get_cells {counter_reg[2]}]  \
  [get_cells {counter_reg[7]}]  \
  [get_cells {counter_reg[4]}]  \
  [get_cells {counter_reg[3]}] ] -to [get_ports out_pad]
group_path -weight 1.000000 -name R2R -from [list \
  [get_cells {counter_reg[6]}]  \
  [get_cells out_reg]  \
  [get_cells {counter_reg[1]}]  \
  [get_cells {counter_reg[5]}]  \
  [get_cells {counter_reg[0]}]  \
  [get_cells {counter_reg[2]}]  \
  [get_cells {counter_reg[7]}]  \
  [get_cells {counter_reg[4]}]  \
  [get_cells {counter_reg[3]}] ] -to [list \
  [get_cells {counter_reg[6]}]  \
  [get_cells out_reg]  \
  [get_cells {counter_reg[1]}]  \
  [get_cells {counter_reg[5]}]  \
  [get_cells {counter_reg[0]}]  \
  [get_cells {counter_reg[2]}]  \
  [get_cells {counter_reg[7]}]  \
  [get_cells {counter_reg[4]}]  \
  [get_cells {counter_reg[3]}] ]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports clkin_pad]  \
  [get_ports reset_pad]  \
  [get_ports {duty_cycle_pad[7]}]  \
  [get_ports {duty_cycle_pad[6]}]  \
  [get_ports {duty_cycle_pad[5]}]  \
  [get_ports {duty_cycle_pad[4]}]  \
  [get_ports {duty_cycle_pad[3]}]  \
  [get_ports {duty_cycle_pad[2]}]  \
  [get_ports {duty_cycle_pad[1]}]  \
  [get_ports {duty_cycle_pad[0]}] ] -to [get_ports out_pad]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports reset_pad]
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports {duty_cycle_pad[7]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports {duty_cycle_pad[6]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports {duty_cycle_pad[5]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports {duty_cycle_pad[4]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports {duty_cycle_pad[3]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports {duty_cycle_pad[2]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports {duty_cycle_pad[1]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -max 7.75 [get_ports {duty_cycle_pad[0]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports reset_pad]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports {duty_cycle_pad[7]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports {duty_cycle_pad[6]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports {duty_cycle_pad[5]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports {duty_cycle_pad[4]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports {duty_cycle_pad[3]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports {duty_cycle_pad[2]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports {duty_cycle_pad[1]}]
set_input_delay -clock [get_clocks vir_clk] -add_delay -min 2.25 [get_ports {duty_cycle_pad[0]}]
set_output_delay -clock [get_clocks vir_clk] -add_delay -max 3.931 [get_ports out_pad]
set_output_delay -clock [get_clocks vir_clk] -add_delay -min 2.628 [get_ports out_pad]
set_input_transition -min 1.0 [get_ports reset_pad]
set_input_transition -max 2.5 [get_ports reset_pad]
set_input_transition -min 1.0 [get_ports {duty_cycle_pad[7]}]
set_input_transition -max 2.5 [get_ports {duty_cycle_pad[7]}]
set_input_transition -min 1.0 [get_ports {duty_cycle_pad[6]}]
set_input_transition -max 2.5 [get_ports {duty_cycle_pad[6]}]
set_input_transition -min 1.0 [get_ports {duty_cycle_pad[5]}]
set_input_transition -max 2.5 [get_ports {duty_cycle_pad[5]}]
set_input_transition -min 1.0 [get_ports {duty_cycle_pad[4]}]
set_input_transition -max 2.5 [get_ports {duty_cycle_pad[4]}]
set_input_transition -min 1.0 [get_ports {duty_cycle_pad[3]}]
set_input_transition -max 2.5 [get_ports {duty_cycle_pad[3]}]
set_input_transition -min 1.0 [get_ports {duty_cycle_pad[2]}]
set_input_transition -max 2.5 [get_ports {duty_cycle_pad[2]}]
set_input_transition -min 1.0 [get_ports {duty_cycle_pad[1]}]
set_input_transition -max 2.5 [get_ports {duty_cycle_pad[1]}]
set_input_transition -min 1.0 [get_ports {duty_cycle_pad[0]}]
set_input_transition -max 2.5 [get_ports {duty_cycle_pad[0]}]
set_wire_load_mode "enclosed"
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb2]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb1]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb4]
set_clock_latency -source -max -late 1.25 [get_clocks clkin]
set_clock_latency -source -max -early 1.0 [get_clocks clkin]
set_clock_latency -source -min -early 1.25 [get_clocks clkin]
set_clock_latency -source -min -late 0.75 [get_clocks clkin]
set_clock_uncertainty -setup 0.375 [get_clocks clkin]
set_clock_uncertainty -hold 0.375 [get_clocks clkin]
