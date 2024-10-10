-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Oct 10 16:37:43 2024
-- Host        : EGR-W447-10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               H:/EGRE365/lab6Tut/lab6Tut.sim/sim_1/synth/func/xsim/top_level_testbench_func_synth.vhd
-- Design      : top_level
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_level is
  port (
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_level : entity is true;
end top_level;

architecture STRUCTURE of top_level is
  signal LED_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(10),
      O => LED(10)
    );
\LED_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(11),
      O => LED(11)
    );
\LED_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(12),
      O => LED(12)
    );
\LED_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(13),
      O => LED(13)
    );
\LED_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(14),
      O => LED(14)
    );
\LED_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(15),
      O => LED(15)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(2),
      O => LED(2)
    );
\LED_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LED_OBUF(0),
      I1 => LED_OBUF(1),
      O => LED_OBUF(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(3),
      O => LED(3)
    );
\LED_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(4),
      O => LED(4)
    );
\LED_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(5),
      O => LED(5)
    );
\LED_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => LED_OBUF(3),
      I1 => LED_OBUF(4),
      O => LED_OBUF(5)
    );
\LED_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(6),
      O => LED(6)
    );
\LED_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(7),
      O => LED(7)
    );
\LED_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(8),
      O => LED(8)
    );
\LED_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(9),
      O => LED(9)
    );
\SW_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(0),
      O => LED_OBUF(0)
    );
\SW_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(10),
      O => LED_OBUF(10)
    );
\SW_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(11),
      O => LED_OBUF(11)
    );
\SW_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(12),
      O => LED_OBUF(12)
    );
\SW_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(13),
      O => LED_OBUF(13)
    );
\SW_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(14),
      O => LED_OBUF(14)
    );
\SW_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(15),
      O => LED_OBUF(15)
    );
\SW_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(1),
      O => LED_OBUF(1)
    );
\SW_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(3),
      O => LED_OBUF(3)
    );
\SW_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(4),
      O => LED_OBUF(4)
    );
\SW_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(6),
      O => LED_OBUF(6)
    );
\SW_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(7),
      O => LED_OBUF(7)
    );
\SW_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(8),
      O => LED_OBUF(8)
    );
\SW_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(9),
      O => LED_OBUF(9)
    );
end STRUCTURE;
