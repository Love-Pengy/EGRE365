-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Oct 17 15:45:40 2024
-- Host        : EGR-W447-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               H:/EGRE365/lab6/lab6.sim/sim_1/synth/func/xsim/top_level_testbench_func_synth.vhd
-- Design      : top_level
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_divider is
  port (
    LED_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end clock_divider;

architecture STRUCTURE of clock_divider is
  signal \^led_obuf\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \div_clk.count[4]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sclki_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \div_clk.count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \div_clk.count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \div_clk.count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \div_clk.count[4]_i_2\ : label is "soft_lutpair0";
begin
  LED_OBUF(0) <= \^led_obuf\(0);
\div_clk.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => p_1_in(0)
    );
\div_clk.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      O => p_1_in(1)
    );
\div_clk.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      I2 => count(2),
      O => p_1_in(2)
    );
\div_clk.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(2),
      I3 => count(3),
      O => p_1_in(3)
    );
\div_clk.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      I3 => count(4),
      I4 => count(3),
      O => \div_clk.count[4]_i_1_n_0\
    );
\div_clk.count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      I3 => count(3),
      I4 => count(4),
      O => p_1_in(4)
    );
\div_clk.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(0),
      Q => count(0),
      R => \div_clk.count[4]_i_1_n_0\
    );
\div_clk.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(1),
      Q => count(1),
      R => \div_clk.count[4]_i_1_n_0\
    );
\div_clk.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(2),
      Q => count(2),
      R => \div_clk.count[4]_i_1_n_0\
    );
\div_clk.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(3),
      Q => count(3),
      R => \div_clk.count[4]_i_1_n_0\
    );
\div_clk.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_in(4),
      Q => count(4),
      R => \div_clk.count[4]_i_1_n_0\
    );
sclki_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000008"
    )
        port map (
      I0 => count(3),
      I1 => count(4),
      I2 => count(0),
      I3 => count(1),
      I4 => count(2),
      I5 => \^led_obuf\(0),
      O => sclki_i_1_n_0
    );
sclki_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sclki_i_1_n_0,
      Q => \^led_obuf\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    LED_OBUF : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CPU_RESETN_IBUF : in STD_LOGIC;
    \hold_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end counter;

architecture STRUCTURE of counter is
  signal \^led_obuf\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \hold[0]_i_1_n_0\ : STD_LOGIC;
  signal \hold[1]_i_1_n_0\ : STD_LOGIC;
  signal \hold[2]_i_1_n_0\ : STD_LOGIC;
  signal \hold[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hold[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hold[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hold[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hold[3]_i_1\ : label is "soft_lutpair2";
begin
  LED_OBUF(4 downto 0) <= \^led_obuf\(4 downto 0);
\LED_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      O => \^led_obuf\(4)
    );
\hold[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^led_obuf\(0),
      O => \hold[0]_i_1_n_0\
    );
\hold[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^led_obuf\(1),
      I1 => \^led_obuf\(0),
      O => \hold[1]_i_1_n_0\
    );
\hold[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^led_obuf\(1),
      I1 => \^led_obuf\(0),
      I2 => \^led_obuf\(2),
      O => \hold[2]_i_1_n_0\
    );
\hold[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^led_obuf\(1),
      I1 => \^led_obuf\(0),
      I2 => \^led_obuf\(2),
      I3 => \^led_obuf\(3),
      O => \hold[3]_i_1_n_0\
    );
\hold_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \hold_reg[3]_0\(0),
      CE => '1',
      CLR => \^led_obuf\(4),
      D => \hold[0]_i_1_n_0\,
      Q => \^led_obuf\(0)
    );
\hold_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \hold_reg[3]_0\(0),
      CE => '1',
      CLR => \^led_obuf\(4),
      D => \hold[1]_i_1_n_0\,
      Q => \^led_obuf\(1)
    );
\hold_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \hold_reg[3]_0\(0),
      CE => '1',
      CLR => \^led_obuf\(4),
      D => \hold[2]_i_1_n_0\,
      Q => \^led_obuf\(2)
    );
\hold_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \hold_reg[3]_0\(0),
      CE => '1',
      CLR => \^led_obuf\(4),
      D => \hold[3]_i_1_n_0\,
      Q => \^led_obuf\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity d_ff_en is
  port (
    LED_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SW_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qn_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CPU_RESETN_IBUF : in STD_LOGIC
  );
end d_ff_en;

architecture STRUCTURE of d_ff_en is
  signal q_i_1_n_0 : STD_LOGIC;
  signal qn_i_1_n_0 : STD_LOGIC;
begin
q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SW_IBUF(1),
      I1 => CPU_RESETN_IBUF,
      O => q_i_1_n_0
    );
q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => qn_reg_0(0),
      CE => SW_IBUF(1),
      D => SW_IBUF(0),
      Q => LED_OBUF(0),
      R => q_i_1_n_0
    );
qn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => CPU_RESETN_IBUF,
      I1 => SW_IBUF(0),
      O => qn_i_1_n_0
    );
qn_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => qn_reg_0(0),
      CE => SW_IBUF(1),
      D => qn_i_1_n_0,
      Q => LED_OBUF(1),
      S => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_level is
  port (
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK100MHZ : in STD_LOGIC;
    CPU_RESETN : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_level : entity is true;
end top_level;

architecture STRUCTURE of top_level is
  signal CLK100MHZ_IBUF : STD_LOGIC;
  signal CLK100MHZ_IBUF_BUFG : STD_LOGIC;
  signal CPU_RESETN_IBUF : STD_LOGIC;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SW_IBUF : STD_LOGIC_VECTOR ( 5 downto 4 );
begin
CLK100MHZ_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK100MHZ_IBUF,
      O => CLK100MHZ_IBUF_BUFG
    );
CLK100MHZ_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK100MHZ,
      O => CLK100MHZ_IBUF
    );
CLK_DIV: entity work.clock_divider
     port map (
      CLK => CLK100MHZ_IBUF_BUFG,
      LED_OBUF(0) => LED_OBUF(6)
    );
CPU_RESETN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CPU_RESETN,
      O => CPU_RESETN_IBUF
    );
D_FF: entity work.d_ff_en
     port map (
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      LED_OBUF(1 downto 0) => LED_OBUF(5 downto 4),
      SW_IBUF(1 downto 0) => SW_IBUF(5 downto 4),
      qn_reg_0(0) => LED_OBUF(6)
    );
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
\SW_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(4),
      O => SW_IBUF(4)
    );
\SW_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(5),
      O => SW_IBUF(5)
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
UP_CTR: entity work.counter
     port map (
      CPU_RESETN_IBUF => CPU_RESETN_IBUF,
      LED_OBUF(4) => LED_OBUF(7),
      LED_OBUF(3 downto 0) => LED_OBUF(3 downto 0),
      \hold_reg[3]_0\(0) => LED_OBUF(6)
    );
end STRUCTURE;
