----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 10/23/2024 10:18:00 AM
-- Design Name: 
-- Module Name: ica1TB - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;

entity ica1TB is
end ica1TB;

architecture behavior of ica1TB is

  signal clk_sig : std_logic := '0';
  signal rst_sig : std_logic := '0';
  signal x_sig,z_sig : std_logic;
  constant Tperiod : time := 10 ns;
  
  begin
  
    process(clk_sig)
      begin
        clk_sig <= not clk_sig after Tperiod/2;
    end process;
  
  rst_sig <= '0', '1' after 2 ns, '0' after 4 ns;
  
  x_sig <= '0', '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, 
  '0' after 90 ns, '0' after 110 ns, '1' after 120 ns, 
  '0' after 140 ns, '1' after 150 ns, '0' after 170 ns, 
  '1' after 180 ns, '0' after 190 ns; 
  
 
                    
      
    -- this is the component instantiation for the
    -- DUT - the device we are testing
    DUT : entity work.ica1SM(Behavioral)
      port map(clk => clk_sig, rst => rst_sig,
               x => x_sig, z => z_sig);

    
end behavior;