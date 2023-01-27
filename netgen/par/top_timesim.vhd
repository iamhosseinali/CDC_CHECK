--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 18 18:56:34 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf top.pcf -rpw 100 -tpw 0 -ar Structure -tm top -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim top.ncd top_timesim.vhd 
-- Device	: 6slx45fgg484-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: top.ncd
-- Output file	: F:\Edu\FPGA\CDC\netgen\par\top_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity top is
  port (
    Clock : in STD_LOGIC := 'X'; 
    num_out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal dcm_module_clkfb : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_ML_NEW_O : STD_LOGIC; 
  signal dcm_module_clk2x : STD_LOGIC; 
  signal CLK_100 : STD_LOGIC; 
  signal dcm_module_clkfx : STD_LOGIC; 
  signal CLK_125 : STD_LOGIC; 
  signal dcm_module_clkin1_0 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_ML_NEW_DIVCLK : STD_LOGIC; 
  signal num_int_4_0 : STD_LOGIC; 
  signal num_int_5_0 : STD_LOGIC; 
  signal num_int_6_0 : STD_LOGIC; 
  signal num_int_7_0 : STD_LOGIC; 
  signal Mshreg_num_int_4_129 : STD_LOGIC; 
  signal Mshreg_num_int_0_119 : STD_LOGIC; 
  signal Mshreg_num_int_5_116 : STD_LOGIC; 
  signal Mshreg_num_int_1_114 : STD_LOGIC; 
  signal Mshreg_num_int_6_113 : STD_LOGIC; 
  signal Mshreg_num_int_2_105 : STD_LOGIC; 
  signal Mshreg_num_int_7_102 : STD_LOGIC; 
  signal Mshreg_num_int_3_101 : STD_LOGIC; 
  signal dcm_module_clkin1 : STD_LOGIC; 
  signal counter_module_counter_2_rt_32 : STD_LOGIC; 
  signal counter_module_counter_1_rt_26 : STD_LOGIC; 
  signal ProtoComp5_CYINITGND_0 : STD_LOGIC; 
  signal counter_module_counter_3_rt_18 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_STATUS0 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_STATUS1 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_STATUS2 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_STATUS3 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_STATUS4 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_STATUS5 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_STATUS6 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_STATUS7 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_LOCKED : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLK90 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_PSDONE : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLKDV : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLKFX180 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLK0 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLK270 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLK180 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLK2X180 : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_PSEN_INT : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLKFB_INT : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_CLKIN_INT : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_PSINCDEC_INT : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_RST_INT : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_PSCLK_INT : STD_LOGIC; 
  signal dcm_module_dcm_sp_inst_DSSEN : STD_LOGIC; 
  signal counter_module_counter_5_rt_61 : STD_LOGIC; 
  signal counter_module_counter_4_rt_60 : STD_LOGIC; 
  signal counter_module_counter_6_rt_50 : STD_LOGIC; 
  signal counter_module_counter_7_rt_49 : STD_LOGIC; 
  signal NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : STD_LOGIC; 
  signal NlwBufferSignal_dcm_module_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_dcm_module_clkout2_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_num_int_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_3_D : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_7_D : STD_LOGIC; 
  signal NlwBufferSignal_num_int_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_num_int_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_2_D : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_6_D : STD_LOGIC; 
  signal NlwBufferSignal_num_int_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_num_int_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_1_D : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_5_D : STD_LOGIC; 
  signal NlwBufferSignal_num_int_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_num_int_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_0_D : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mshreg_num_int_4_D : STD_LOGIC; 
  signal NlwBufferSignal_num_int_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_num_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_num_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_num_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_num_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_num_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_num_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_num_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_num_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_dcm_module_clkf_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_module_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_module_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_module_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_module_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_module_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_module_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_module_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_module_counter_4_CLK : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Mshreg_num_int_3_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_7_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_2_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_6_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_1_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_5_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_0_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mshreg_num_int_4_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_module_Mcount_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_module_Mcount_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_module_Mcount_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_module_Mcount_counter_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_module_Mcount_counter_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_module_Mcount_counter_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_module_Mcount_counter_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_counter_module_Mcount_counter_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal counter_module_counter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal num_int : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal counter_module_Mcount_counter_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal counter_module_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  SP6_BUFIO_INSERT_ML_BUFIO2_0 : X_BUFIO2
    generic map(
      DIVIDE => 1,
      DIVIDE_BYPASS => TRUE,
      I_INVERT => FALSE,
      USE_DOUBLER => FALSE,
      LOC => "BUFIO2_X3Y7"
    )
    port map (
      DIVCLK => dcm_module_dcm_sp_inst_ML_NEW_DIVCLK,
      I => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I,
      IOCLK => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_IOCLK_UNCONNECTED,
      SERDESSTROBE => NLW_SP6_BUFIO_INSERT_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED
    );
  SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1 : X_BUFIO2FB
    generic map(
      DIVIDE_BYPASS => TRUE,
      LOC => "BUFIO2FB_X3Y7"
    )
    port map (
      I => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I,
      O => dcm_module_dcm_sp_inst_ML_NEW_O
    );
  dcm_module_clkout1_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y2",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_dcm_module_clkout1_buf_IN,
      O => CLK_100
    );
  dcm_module_clkout2_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_dcm_module_clkout2_buf_IN,
      O => CLK_125
    );
  num_int_3_num_int_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int(7),
      O => num_int_7_0
    );
  num_int_3_num_int_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int(6),
      O => num_int_6_0
    );
  num_int_3_num_int_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int(5),
      O => num_int_5_0
    );
  num_int_3_num_int_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int(4),
      O => num_int_4_0
    );
  num_int_3 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_num_int_3_CLK,
      I => Mshreg_num_int_3_101,
      O => num_int(3),
      RST => GND,
      SET => GND
    );
  Mshreg_num_int_3 : X_SRLC16E
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_Mshreg_num_int_3_CLK,
      D => NlwBufferSignal_Mshreg_num_int_3_D,
      Q15 => NLW_Mshreg_num_int_3_Q15_UNCONNECTED,
      Q => Mshreg_num_int_3_101,
      CE => '1'
    );
  Mshreg_num_int_7 : X_SRLC16E
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_Mshreg_num_int_7_CLK,
      D => NlwBufferSignal_Mshreg_num_int_7_D,
      Q => Mshreg_num_int_7_102,
      CE => '1',
      Q15 => NLW_Mshreg_num_int_7_Q15_UNCONNECTED
    );
  num_int_7 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_num_int_7_CLK,
      I => Mshreg_num_int_7_102,
      O => num_int(7),
      RST => GND,
      SET => GND
    );
  num_int_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_num_int_2_CLK,
      I => Mshreg_num_int_2_105,
      O => num_int(2),
      RST => GND,
      SET => GND
    );
  Mshreg_num_int_2 : X_SRLC16E
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_Mshreg_num_int_2_CLK,
      D => NlwBufferSignal_Mshreg_num_int_2_D,
      Q15 => NLW_Mshreg_num_int_2_Q15_UNCONNECTED,
      Q => Mshreg_num_int_2_105,
      CE => '1'
    );
  Mshreg_num_int_6 : X_SRLC16E
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_Mshreg_num_int_6_CLK,
      D => NlwBufferSignal_Mshreg_num_int_6_D,
      Q => Mshreg_num_int_6_113,
      CE => '1',
      Q15 => NLW_Mshreg_num_int_6_Q15_UNCONNECTED
    );
  num_int_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_num_int_6_CLK,
      I => Mshreg_num_int_6_113,
      O => num_int(6),
      RST => GND,
      SET => GND
    );
  num_int_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_num_int_1_CLK,
      I => Mshreg_num_int_1_114,
      O => num_int(1),
      RST => GND,
      SET => GND
    );
  Mshreg_num_int_1 : X_SRLC16E
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_Mshreg_num_int_1_CLK,
      D => NlwBufferSignal_Mshreg_num_int_1_D,
      Q15 => NLW_Mshreg_num_int_1_Q15_UNCONNECTED,
      Q => Mshreg_num_int_1_114,
      CE => '1'
    );
  Mshreg_num_int_5 : X_SRLC16E
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_Mshreg_num_int_5_CLK,
      D => NlwBufferSignal_Mshreg_num_int_5_D,
      Q => Mshreg_num_int_5_116,
      CE => '1',
      Q15 => NLW_Mshreg_num_int_5_Q15_UNCONNECTED
    );
  num_int_5 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_num_int_5_CLK,
      I => Mshreg_num_int_5_116,
      O => num_int(5),
      RST => GND,
      SET => GND
    );
  num_int_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_num_int_0_CLK,
      I => Mshreg_num_int_0_119,
      O => num_int(0),
      RST => GND,
      SET => GND
    );
  Mshreg_num_int_0 : X_SRLC16E
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_Mshreg_num_int_0_CLK,
      D => NlwBufferSignal_Mshreg_num_int_0_D,
      Q15 => NLW_Mshreg_num_int_0_Q15_UNCONNECTED,
      Q => Mshreg_num_int_0_119,
      CE => '1'
    );
  Mshreg_num_int_4 : X_SRLC16E
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_Mshreg_num_int_4_CLK,
      D => NlwBufferSignal_Mshreg_num_int_4_D,
      Q => Mshreg_num_int_4_129,
      CE => '1',
      Q15 => NLW_Mshreg_num_int_4_Q15_UNCONNECTED
    );
  num_int_4 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_num_int_4_CLK,
      I => Mshreg_num_int_4_129,
      O => num_int(4),
      RST => GND,
      SET => GND
    );
  num_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD207"
    )
    port map (
      I => NlwBufferSignal_num_out_2_OBUF_I,
      O => num_out(2)
    );
  num_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD205"
    )
    port map (
      I => NlwBufferSignal_num_out_0_OBUF_I,
      O => num_out(0)
    );
  num_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD206"
    )
    port map (
      I => NlwBufferSignal_num_out_1_OBUF_I,
      O => num_out(1)
    );
  num_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => NlwBufferSignal_num_out_4_OBUF_I,
      O => num_out(4)
    );
  num_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD212"
    )
    port map (
      I => NlwBufferSignal_num_out_6_OBUF_I,
      O => num_out(6)
    );
  num_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD211"
    )
    port map (
      I => NlwBufferSignal_num_out_5_OBUF_I,
      O => num_out(5)
    );
  num_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => NlwBufferSignal_num_out_7_OBUF_I,
      O => num_out(7)
    );
  dcm_module_clkin1_buf : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 115 ps
    )
    port map (
      O => dcm_module_clkin1,
      I => Clock
    );
  ProtoComp8_IMUX : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 115 ps
    )
    port map (
      I => dcm_module_clkin1,
      O => dcm_module_clkin1_0
    );
  num_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD209"
    )
    port map (
      I => NlwBufferSignal_num_out_3_OBUF_I,
      O => num_out(3)
    );
  dcm_module_clkf_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_dcm_module_clkf_buf_IN,
      O => dcm_module_clkfb
    );
  counter_module_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_module_counter_3_CLK,
      I => Result(3),
      O => counter_module_counter(3),
      RST => GND,
      SET => GND
    );
  counter_module_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => counter_module_counter(3),
      ADR3 => '1',
      ADR5 => '1',
      O => counter_module_counter_3_rt_18
    );
  N1_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp5_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X22Y13"
    )
    port map (
      O => ProtoComp5_CYINITGND_0
    );
  counter_module_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_module_counter_2_CLK,
      I => Result(2),
      O => counter_module_counter(2),
      RST => GND,
      SET => GND
    );
  counter_module_Mcount_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y13"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp5_CYINITGND_0,
      CO(3) => counter_module_Mcount_counter_cy(3),
      CO(2) => NLW_counter_module_Mcount_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_module_Mcount_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_module_Mcount_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => counter_module_counter_3_rt_18,
      S(2) => counter_module_counter_2_rt_32,
      S(1) => counter_module_counter_1_rt_26,
      S(0) => counter_module_Mcount_counter_lut(0)
    );
  counter_module_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => counter_module_counter(2),
      ADR3 => '1',
      ADR5 => '1',
      O => counter_module_counter_2_rt_32
    );
  N1_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_C5LUT_O_UNCONNECTED
    );
  counter_module_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_module_counter_1_CLK,
      I => Result(1),
      O => counter_module_counter(1),
      RST => GND,
      SET => GND
    );
  counter_module_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => counter_module_counter(1),
      ADR3 => '1',
      ADR5 => '1',
      O => counter_module_counter_1_rt_26
    );
  N1_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_3_B5LUT_O_UNCONNECTED
    );
  counter_module_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_module_counter_0_CLK,
      I => Result(0),
      O => counter_module_counter(0),
      RST => GND,
      SET => GND
    );
  counter_module_Mcount_counter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => counter_module_counter(0),
      ADR3 => '1',
      ADR5 => '1',
      O => counter_module_Mcount_counter_lut(0)
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_A5LUT_O_UNCONNECTED
    );
  dcm_module_dcm_sp_inst_PSENINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => dcm_module_dcm_sp_inst_PSEN_INT
    );
  dcm_module_dcm_sp_inst_CLKFB : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => dcm_module_dcm_sp_inst_ML_NEW_O,
      O => dcm_module_dcm_sp_inst_CLKFB_INT
    );
  dcm_module_dcm_sp_inst_CLKIN : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => dcm_module_dcm_sp_inst_ML_NEW_DIVCLK,
      O => dcm_module_dcm_sp_inst_CLKIN_INT
    );
  dcm_module_dcm_sp_inst_PSINCDECINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => dcm_module_dcm_sp_inst_PSINCDEC_INT
    );
  dcm_module_dcm_sp_inst_RSTINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => dcm_module_dcm_sp_inst_RST_INT
    );
  dcm_module_dcm_sp_inst_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X0Y1",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => dcm_module_dcm_sp_inst_PSCLK_INT
    );
  dcm_module_dcm_sp_inst : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      DLL_FREQUENCY_MODE => "LOW",
      DFS_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "2X",
      STARTUP_WAIT => FALSE,
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      DESKEW_ADJUST => "5",
      CLKFX_MULTIPLY => 5,
      CLKFX_DIVIDE => 2,
      PHASE_SHIFT => 0,
      CLKIN_PERIOD => 20.000000,
      LOC => "DCM_X0Y1"
    )
    port map (
      PSCLK => dcm_module_dcm_sp_inst_PSCLK_INT,
      RST => dcm_module_dcm_sp_inst_RST_INT,
      PSINCDEC => dcm_module_dcm_sp_inst_PSINCDEC_INT,
      CLKIN => dcm_module_dcm_sp_inst_CLKIN_INT,
      CLKFB => dcm_module_dcm_sp_inst_CLKFB_INT,
      PSEN => dcm_module_dcm_sp_inst_PSEN_INT,
      DSSEN => dcm_module_dcm_sp_inst_DSSEN,
      CLK2X180 => dcm_module_dcm_sp_inst_CLK2X180,
      CLK2X => dcm_module_clk2x,
      CLKFX => dcm_module_clkfx,
      CLK180 => dcm_module_dcm_sp_inst_CLK180,
      CLK270 => dcm_module_dcm_sp_inst_CLK270,
      CLK0 => dcm_module_dcm_sp_inst_CLK0,
      CLKFX180 => dcm_module_dcm_sp_inst_CLKFX180,
      CLKDV => dcm_module_dcm_sp_inst_CLKDV,
      PSDONE => dcm_module_dcm_sp_inst_PSDONE,
      CLK90 => dcm_module_dcm_sp_inst_CLK90,
      LOCKED => dcm_module_dcm_sp_inst_LOCKED,
      STATUS(7) => dcm_module_dcm_sp_inst_STATUS7,
      STATUS(6) => dcm_module_dcm_sp_inst_STATUS6,
      STATUS(5) => dcm_module_dcm_sp_inst_STATUS5,
      STATUS(4) => dcm_module_dcm_sp_inst_STATUS4,
      STATUS(3) => dcm_module_dcm_sp_inst_STATUS3,
      STATUS(2) => dcm_module_dcm_sp_inst_STATUS2,
      STATUS(1) => dcm_module_dcm_sp_inst_STATUS1,
      STATUS(0) => dcm_module_dcm_sp_inst_STATUS0
    );
  counter_module_counter_7 : X_FF
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_module_counter_7_CLK,
      I => Result(7),
      O => counter_module_counter(7),
      RST => GND,
      SET => GND
    );
  counter_module_counter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => counter_module_counter(7),
      ADR4 => '1',
      ADR3 => '1',
      O => counter_module_counter_7_rt_49
    );
  counter_module_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_module_counter_6_CLK,
      I => Result(6),
      O => counter_module_counter(6),
      RST => GND,
      SET => GND
    );
  counter_module_Mcount_counter_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y14"
    )
    port map (
      CI => counter_module_Mcount_counter_cy(3),
      CYINIT => '0',
      CO(3) => NLW_counter_module_Mcount_counter_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_counter_module_Mcount_counter_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_counter_module_Mcount_counter_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_counter_module_Mcount_counter_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_counter_module_Mcount_counter_xor_7_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => counter_module_counter_7_rt_49,
      S(2) => counter_module_counter_6_rt_50,
      S(1) => counter_module_counter_5_rt_61,
      S(0) => counter_module_counter_4_rt_60
    );
  counter_module_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => counter_module_counter(6),
      ADR3 => '1',
      ADR5 => '1',
      O => counter_module_counter_6_rt_50
    );
  N1_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_8_C5LUT_O_UNCONNECTED
    );
  counter_module_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_module_counter_5_CLK,
      I => Result(5),
      O => counter_module_counter(5),
      RST => GND,
      SET => GND
    );
  counter_module_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => counter_module_counter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => counter_module_counter_5_rt_61
    );
  N1_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_7_B5LUT_O_UNCONNECTED
    );
  counter_module_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_module_counter_4_CLK,
      I => Result(4),
      O => counter_module_counter(4),
      RST => GND,
      SET => GND
    );
  counter_module_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => counter_module_counter(4),
      ADR3 => '1',
      ADR5 => '1',
      O => counter_module_counter_4_rt_60
    );
  N1_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_6_A5LUT_O_UNCONNECTED
    );
  NlwBufferBlock_SP6_BUFIO_INSERT_ML_BUFIO2_0_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => dcm_module_clkin1_0,
      O => NlwBufferSignal_SP6_BUFIO_INSERT_ML_BUFIO2_0_I
    );
  NlwBufferBlock_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => dcm_module_clkfb,
      O => NlwBufferSignal_SP6_INS_BUFIO2FB_DCM_ML_BUFIO2FB_1_I
    );
  NlwBufferBlock_dcm_module_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => dcm_module_clk2x,
      O => NlwBufferSignal_dcm_module_clkout1_buf_IN
    );
  NlwBufferBlock_dcm_module_clkout2_buf_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => dcm_module_clkfx,
      O => NlwBufferSignal_dcm_module_clkout2_buf_IN
    );
  NlwBufferBlock_num_int_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_num_int_3_CLK
    );
  NlwBufferBlock_Mshreg_num_int_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_Mshreg_num_int_3_CLK
    );
  NlwBufferBlock_Mshreg_num_int_3_D : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => counter_module_counter(3),
      O => NlwBufferSignal_Mshreg_num_int_3_D
    );
  NlwBufferBlock_Mshreg_num_int_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_Mshreg_num_int_7_CLK
    );
  NlwBufferBlock_Mshreg_num_int_7_D : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => counter_module_counter(7),
      O => NlwBufferSignal_Mshreg_num_int_7_D
    );
  NlwBufferBlock_num_int_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_num_int_7_CLK
    );
  NlwBufferBlock_num_int_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_num_int_2_CLK
    );
  NlwBufferBlock_Mshreg_num_int_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_Mshreg_num_int_2_CLK
    );
  NlwBufferBlock_Mshreg_num_int_2_D : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => counter_module_counter(2),
      O => NlwBufferSignal_Mshreg_num_int_2_D
    );
  NlwBufferBlock_Mshreg_num_int_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_Mshreg_num_int_6_CLK
    );
  NlwBufferBlock_Mshreg_num_int_6_D : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => counter_module_counter(6),
      O => NlwBufferSignal_Mshreg_num_int_6_D
    );
  NlwBufferBlock_num_int_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_num_int_6_CLK
    );
  NlwBufferBlock_num_int_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_num_int_1_CLK
    );
  NlwBufferBlock_Mshreg_num_int_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_Mshreg_num_int_1_CLK
    );
  NlwBufferBlock_Mshreg_num_int_1_D : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => counter_module_counter(1),
      O => NlwBufferSignal_Mshreg_num_int_1_D
    );
  NlwBufferBlock_Mshreg_num_int_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_Mshreg_num_int_5_CLK
    );
  NlwBufferBlock_Mshreg_num_int_5_D : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => counter_module_counter(5),
      O => NlwBufferSignal_Mshreg_num_int_5_D
    );
  NlwBufferBlock_num_int_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_num_int_5_CLK
    );
  NlwBufferBlock_num_int_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_num_int_0_CLK
    );
  NlwBufferBlock_Mshreg_num_int_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_Mshreg_num_int_0_CLK
    );
  NlwBufferBlock_Mshreg_num_int_0_D : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => counter_module_counter(0),
      O => NlwBufferSignal_Mshreg_num_int_0_D
    );
  NlwBufferBlock_Mshreg_num_int_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_Mshreg_num_int_4_CLK
    );
  NlwBufferBlock_Mshreg_num_int_4_D : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => counter_module_counter(4),
      O => NlwBufferSignal_Mshreg_num_int_4_D
    );
  NlwBufferBlock_num_int_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_100,
      O => NlwBufferSignal_num_int_4_CLK
    );
  NlwBufferBlock_num_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int(2),
      O => NlwBufferSignal_num_out_2_OBUF_I
    );
  NlwBufferBlock_num_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int(0),
      O => NlwBufferSignal_num_out_0_OBUF_I
    );
  NlwBufferBlock_num_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int(1),
      O => NlwBufferSignal_num_out_1_OBUF_I
    );
  NlwBufferBlock_num_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int_4_0,
      O => NlwBufferSignal_num_out_4_OBUF_I
    );
  NlwBufferBlock_num_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int_6_0,
      O => NlwBufferSignal_num_out_6_OBUF_I
    );
  NlwBufferBlock_num_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int_5_0,
      O => NlwBufferSignal_num_out_5_OBUF_I
    );
  NlwBufferBlock_num_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int_7_0,
      O => NlwBufferSignal_num_out_7_OBUF_I
    );
  NlwBufferBlock_num_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => num_int(3),
      O => NlwBufferSignal_num_out_3_OBUF_I
    );
  NlwBufferBlock_dcm_module_clkf_buf_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => dcm_module_clk2x,
      O => NlwBufferSignal_dcm_module_clkf_buf_IN
    );
  NlwBufferBlock_counter_module_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_125,
      O => NlwBufferSignal_counter_module_counter_3_CLK
    );
  NlwBufferBlock_counter_module_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_125,
      O => NlwBufferSignal_counter_module_counter_2_CLK
    );
  NlwBufferBlock_counter_module_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_125,
      O => NlwBufferSignal_counter_module_counter_1_CLK
    );
  NlwBufferBlock_counter_module_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_125,
      O => NlwBufferSignal_counter_module_counter_0_CLK
    );
  NlwBufferBlock_counter_module_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_125,
      O => NlwBufferSignal_counter_module_counter_7_CLK
    );
  NlwBufferBlock_counter_module_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_125,
      O => NlwBufferSignal_counter_module_counter_6_CLK
    );
  NlwBufferBlock_counter_module_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_125,
      O => NlwBufferSignal_counter_module_counter_5_CLK
    );
  NlwBufferBlock_counter_module_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => CLK_125,
      O => NlwBufferSignal_counter_module_counter_4_CLK
    );
  NlwBlock_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

