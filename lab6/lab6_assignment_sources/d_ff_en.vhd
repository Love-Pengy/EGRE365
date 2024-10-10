library IEEE;
use IEEE.std_logic_1164.all;

ENTITY d_ff_en is
  PORT(d   : IN  std_logic;
       clk : IN  std_logic;
       rst : IN std_logic;
       en  : IN std_logic;
       q   : OUT std_logic;
       qn  : OUT std_logic);
END d_ff_en;

ARCHITECTURE Behavioral OF d_ff_en IS

  BEGIN

  -- write process to implement an edger-triggered
  -- D flip flop with Enable (and active-high reset) here
  
END behavior;
