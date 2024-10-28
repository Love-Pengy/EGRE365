----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 10/24/2024 04:05:19 PM
-- Design Name: 
-- Module Name: roomControllerTB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity roomControllerTB is
end entity;

architecture behavior of roomControllerTB is
  constant TPeriod : time := 10 ns;
  constant NUM_VALS : integer := 27;

  
  type X1_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type X2_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type reset_array is array(0 to (NUM_VALS - 1)) of std_logic;
  
  constant X1_vals : X1_array := ('0', '0', '0', '0', '0', '1', '1', '0', '0', '1', '1', '0', '0', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
                                                                                          
  constant X2_vals : X2_array := ('0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '1', '1', '0', '1', '1', '1', '0');

  constant reset_vals : reset_array := ('0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
  
  signal clk_sig : std_logic := '0';
  signal X1_sig : std_logic;
  signal X2_sig : std_logic;
  signal reset_sig : std_logic;
  signal Zg_sig, Zr_sig, Z1_sig : std_logic;
  
begin

  process(clk_sig) 
  begin
    clk_sig <= not clk_sig after TPeriod/2;
  end process;
  
  DUT : entity work.roomController(Behavioral)
    port map(
             clk => clk_sig, 
             reset => reset_sig, 
             X1 => X1_sig,
             X2 => X2_sig,
             Zg => Zg_sig, 
             Zr => Zr_sig, 
             Z1 => Z1_sig);    

  stimulus : process
  begin
    for i in 0 to (NUM_VALS - 1) loop
      X1_sig <= X1_vals(i);
      X2_sig <= X2_vals(i);
      reset_sig <= reset_vals(i);
      wait for TPeriod;
    end loop;
    wait;
  end process stimulus;

--  monitor : process
--    variable i : integer := 0;
--  begin
--    wait for TIME_DELAY/4;
--    while (i < NUM_VALS) loop
--      assert F1_sig = F1_vals(i)
--        report "C value is incorrect."
--        severity error;
        
--      wait for TIME_DELAY/2;
--      i := i + 1;
--      wait for TIME_DELAY/2;
--    end loop;
--    wait;
--  end process monitor;

end behavior;