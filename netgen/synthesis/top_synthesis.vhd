--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_synthesis.vhd
-- /___/   /\     Timestamp: Wed Jan 18 18:55:33 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top -w -dir netgen/synthesis -ofmt vhdl -sim top.ngc top_synthesis.vhd 
-- Device	: xc6slx45-2-fgg484
-- Input file	: top.ngc
-- Output file	: F:\Edu\FPGA\CDC\netgen\synthesis\top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top is
  port (
    Clock : in STD_LOGIC := 'X'; 
    num_out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal CLK_100 : STD_LOGIC; 
  signal CLK_125 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal dcm_module_clkfb : STD_LOGIC; 
  signal dcm_module_clkfx : STD_LOGIC; 
  signal dcm_module_clk2x : STD_LOGIC; 
  signal dcm_module_clkin1 : STD_LOGIC; 
  signal counter_module_Mcount_counter_cy_1_rt_49 : STD_LOGIC; 
  signal counter_module_Mcount_counter_cy_2_rt_50 : STD_LOGIC; 
  signal counter_module_Mcount_counter_cy_3_rt_51 : STD_LOGIC; 
  signal counter_module_Mcount_counter_cy_4_rt_52 : STD_LOGIC; 
  signal counter_module_Mcount_counter_cy_5_rt_53 : STD_LOGIC; 
  signal counter_module_Mcount_counter_cy_6_rt_54 : STD_LOGIC; 
  signal counter_module_Mcount_counter_xor_7_rt_55 : STD_LOGIC; 
  signal Mshreg_num_int_0_56 : STD_LOGIC; 
  signal Mshreg_num_int_1_57 : STD_LOGIC; 
  signal Mshreg_num_int_2_58 : STD_LOGIC; 
  signal Mshreg_num_int_3_59 : STD_LOGIC; 
  signal Mshreg_num_int_4_60 : STD_LOGIC; 
  signal Mshreg_num_int_5_61 : STD_LOGIC; 
  signal Mshreg_num_int_6_62 : STD_LOGIC; 
  signal Mshreg_num_int_7_63 : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_CLK0_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_dcm_module_dcm_sp_inst_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_0_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_1_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_2_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_3_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_4_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_5_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_6_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_7_Q15_UNCONNECTED : STD_LOGIC; 
  signal num_int : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal counter_module_counter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal counter_module_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal counter_module_Mcount_counter_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  counter_module_counter_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_125,
      D => Result(0),
      Q => counter_module_counter(0)
    );
  counter_module_counter_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_125,
      D => Result(1),
      Q => counter_module_counter(1)
    );
  counter_module_counter_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_125,
      D => Result(2),
      Q => counter_module_counter(2)
    );
  counter_module_counter_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_125,
      D => Result(3),
      Q => counter_module_counter(3)
    );
  counter_module_counter_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_125,
      D => Result(4),
      Q => counter_module_counter(4)
    );
  counter_module_counter_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_125,
      D => Result(5),
      Q => counter_module_counter(5)
    );
  counter_module_counter_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_125,
      D => Result(6),
      Q => counter_module_counter(6)
    );
  counter_module_counter_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_125,
      D => Result(7),
      Q => counter_module_counter(7)
    );
  counter_module_Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => counter_module_Mcount_counter_lut(0),
      O => counter_module_Mcount_counter_cy(0)
    );
  counter_module_Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => counter_module_Mcount_counter_lut(0),
      O => Result(0)
    );
  counter_module_Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => counter_module_Mcount_counter_cy(0),
      DI => N1,
      S => counter_module_Mcount_counter_cy_1_rt_49,
      O => counter_module_Mcount_counter_cy(1)
    );
  counter_module_Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => counter_module_Mcount_counter_cy(0),
      LI => counter_module_Mcount_counter_cy_1_rt_49,
      O => Result(1)
    );
  counter_module_Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => counter_module_Mcount_counter_cy(1),
      DI => N1,
      S => counter_module_Mcount_counter_cy_2_rt_50,
      O => counter_module_Mcount_counter_cy(2)
    );
  counter_module_Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => counter_module_Mcount_counter_cy(1),
      LI => counter_module_Mcount_counter_cy_2_rt_50,
      O => Result(2)
    );
  counter_module_Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => counter_module_Mcount_counter_cy(2),
      DI => N1,
      S => counter_module_Mcount_counter_cy_3_rt_51,
      O => counter_module_Mcount_counter_cy(3)
    );
  counter_module_Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => counter_module_Mcount_counter_cy(2),
      LI => counter_module_Mcount_counter_cy_3_rt_51,
      O => Result(3)
    );
  counter_module_Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => counter_module_Mcount_counter_cy(3),
      DI => N1,
      S => counter_module_Mcount_counter_cy_4_rt_52,
      O => counter_module_Mcount_counter_cy(4)
    );
  counter_module_Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => counter_module_Mcount_counter_cy(3),
      LI => counter_module_Mcount_counter_cy_4_rt_52,
      O => Result(4)
    );
  counter_module_Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => counter_module_Mcount_counter_cy(4),
      DI => N1,
      S => counter_module_Mcount_counter_cy_5_rt_53,
      O => counter_module_Mcount_counter_cy(5)
    );
  counter_module_Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => counter_module_Mcount_counter_cy(4),
      LI => counter_module_Mcount_counter_cy_5_rt_53,
      O => Result(5)
    );
  counter_module_Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => counter_module_Mcount_counter_cy(5),
      DI => N1,
      S => counter_module_Mcount_counter_cy_6_rt_54,
      O => counter_module_Mcount_counter_cy(6)
    );
  counter_module_Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => counter_module_Mcount_counter_cy(5),
      LI => counter_module_Mcount_counter_cy_6_rt_54,
      O => Result(6)
    );
  counter_module_Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => counter_module_Mcount_counter_cy(6),
      LI => counter_module_Mcount_counter_xor_7_rt_55,
      O => Result(7)
    );
  dcm_module_clkout2_buf : BUFG
    port map (
      O => CLK_125,
      I => dcm_module_clkfx
    );
  dcm_module_clkout1_buf : BUFG
    port map (
      O => CLK_100,
      I => dcm_module_clk2x
    );
  dcm_module_clkf_buf : BUFG
    port map (
      O => dcm_module_clkfb,
      I => dcm_module_clk2x
    );
  dcm_module_dcm_sp_inst : DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 2,
      CLKFX_MULTIPLY => 5,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 20.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "2X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"0000",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLK2X180 => NLW_dcm_module_dcm_sp_inst_CLK2X180_UNCONNECTED,
      PSCLK => N1,
      CLK2X => dcm_module_clk2x,
      CLKFX => dcm_module_clkfx,
      CLK180 => NLW_dcm_module_dcm_sp_inst_CLK180_UNCONNECTED,
      CLK270 => NLW_dcm_module_dcm_sp_inst_CLK270_UNCONNECTED,
      RST => N1,
      PSINCDEC => N1,
      CLKIN => dcm_module_clkin1,
      CLKFB => dcm_module_clkfb,
      PSEN => N1,
      CLK0 => NLW_dcm_module_dcm_sp_inst_CLK0_UNCONNECTED,
      CLKFX180 => NLW_dcm_module_dcm_sp_inst_CLKFX180_UNCONNECTED,
      CLKDV => NLW_dcm_module_dcm_sp_inst_CLKDV_UNCONNECTED,
      PSDONE => NLW_dcm_module_dcm_sp_inst_PSDONE_UNCONNECTED,
      CLK90 => NLW_dcm_module_dcm_sp_inst_CLK90_UNCONNECTED,
      LOCKED => NLW_dcm_module_dcm_sp_inst_LOCKED_UNCONNECTED,
      DSSEN => N1,
      STATUS(7) => NLW_dcm_module_dcm_sp_inst_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_dcm_module_dcm_sp_inst_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_dcm_module_dcm_sp_inst_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_dcm_module_dcm_sp_inst_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_dcm_module_dcm_sp_inst_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_dcm_module_dcm_sp_inst_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_dcm_module_dcm_sp_inst_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_dcm_module_dcm_sp_inst_STATUS_0_UNCONNECTED
    );
  dcm_module_clkin1_buf : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => Clock,
      O => dcm_module_clkin1
    );
  num_out_7_OBUF : OBUF
    port map (
      I => num_int(7),
      O => num_out(7)
    );
  num_out_6_OBUF : OBUF
    port map (
      I => num_int(6),
      O => num_out(6)
    );
  num_out_5_OBUF : OBUF
    port map (
      I => num_int(5),
      O => num_out(5)
    );
  num_out_4_OBUF : OBUF
    port map (
      I => num_int(4),
      O => num_out(4)
    );
  num_out_3_OBUF : OBUF
    port map (
      I => num_int(3),
      O => num_out(3)
    );
  num_out_2_OBUF : OBUF
    port map (
      I => num_int(2),
      O => num_out(2)
    );
  num_out_1_OBUF : OBUF
    port map (
      I => num_int(1),
      O => num_out(1)
    );
  num_out_0_OBUF : OBUF
    port map (
      I => num_int(0),
      O => num_out(0)
    );
  counter_module_Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_module_counter(1),
      O => counter_module_Mcount_counter_cy_1_rt_49
    );
  counter_module_Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_module_counter(2),
      O => counter_module_Mcount_counter_cy_2_rt_50
    );
  counter_module_Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_module_counter(3),
      O => counter_module_Mcount_counter_cy_3_rt_51
    );
  counter_module_Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_module_counter(4),
      O => counter_module_Mcount_counter_cy_4_rt_52
    );
  counter_module_Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_module_counter(5),
      O => counter_module_Mcount_counter_cy_5_rt_53
    );
  counter_module_Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_module_counter(6),
      O => counter_module_Mcount_counter_cy_6_rt_54
    );
  counter_module_Mcount_counter_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_module_counter(7),
      O => counter_module_Mcount_counter_xor_7_rt_55
    );
  counter_module_Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => counter_module_counter(0),
      O => counter_module_Mcount_counter_lut(0)
    );
  Mshreg_num_int_0 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => CLK_100,
      D => counter_module_counter(0),
      Q => Mshreg_num_int_0_56,
      Q15 => NLW_Mshreg_num_int_0_Q15_UNCONNECTED
    );
  num_int_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_100,
      CE => N0,
      D => Mshreg_num_int_0_56,
      Q => num_int(0)
    );
  Mshreg_num_int_1 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => CLK_100,
      D => counter_module_counter(1),
      Q => Mshreg_num_int_1_57,
      Q15 => NLW_Mshreg_num_int_1_Q15_UNCONNECTED
    );
  num_int_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_100,
      CE => N0,
      D => Mshreg_num_int_1_57,
      Q => num_int(1)
    );
  Mshreg_num_int_2 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => CLK_100,
      D => counter_module_counter(2),
      Q => Mshreg_num_int_2_58,
      Q15 => NLW_Mshreg_num_int_2_Q15_UNCONNECTED
    );
  num_int_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_100,
      CE => N0,
      D => Mshreg_num_int_2_58,
      Q => num_int(2)
    );
  Mshreg_num_int_3 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => CLK_100,
      D => counter_module_counter(3),
      Q => Mshreg_num_int_3_59,
      Q15 => NLW_Mshreg_num_int_3_Q15_UNCONNECTED
    );
  num_int_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_100,
      CE => N0,
      D => Mshreg_num_int_3_59,
      Q => num_int(3)
    );
  Mshreg_num_int_4 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => CLK_100,
      D => counter_module_counter(4),
      Q => Mshreg_num_int_4_60,
      Q15 => NLW_Mshreg_num_int_4_Q15_UNCONNECTED
    );
  num_int_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_100,
      CE => N0,
      D => Mshreg_num_int_4_60,
      Q => num_int(4)
    );
  Mshreg_num_int_5 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => CLK_100,
      D => counter_module_counter(5),
      Q => Mshreg_num_int_5_61,
      Q15 => NLW_Mshreg_num_int_5_Q15_UNCONNECTED
    );
  num_int_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_100,
      CE => N0,
      D => Mshreg_num_int_5_61,
      Q => num_int(5)
    );
  Mshreg_num_int_6 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => CLK_100,
      D => counter_module_counter(6),
      Q => Mshreg_num_int_6_62,
      Q15 => NLW_Mshreg_num_int_6_Q15_UNCONNECTED
    );
  num_int_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_100,
      CE => N0,
      D => Mshreg_num_int_6_62,
      Q => num_int(6)
    );
  Mshreg_num_int_7 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => CLK_100,
      D => counter_module_counter(7),
      Q => Mshreg_num_int_7_63,
      Q15 => NLW_Mshreg_num_int_7_Q15_UNCONNECTED
    );
  num_int_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_100,
      CE => N0,
      D => Mshreg_num_int_7_63,
      Q => num_int(7)
    );

end Structure;

