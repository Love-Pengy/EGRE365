----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 10/09/2024 08:00:29 PM
-- Design Name: 
-- Module Name: f1TB - Behavioral
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

entity f1TB is
end entity;

architecture behavior of f1TB is
  constant TIME_DELAY : time := 20 ns;
  constant NUM_VALS : integer := 8;


  type A_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type B_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type C_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type F1_array is array(0 to (NUM_VALS - 1)) of std_logic;  
  
  
  constant A_vals : A_array := ('0', '0', '0', '0', '1', '1', '1', '1');
                                                                                          
  constant B_vals : B_array := ('0', '0', '1', '1', '0', '0', '1', '1');
  
  constant C_vals : C_array := ('0', '1', '0', '1', '0', '1', '0', '1');
  
  constant F1_vals : F1_array := ('0', '1', '1', '0', '0', '1', '1', '1');

  
  signal A_sig : std_logic;
  signal B_sig : std_logic;
  signal C_sig : std_logic;
  signal F1_sig : std_logic;
  
begin

  DUT : entity work.F1TopLevel(Behavioral)
    port map(A => A_sig,
             B => B_sig,
             C => C_sig,
             F1 => F1_sig);    

  stimulus : process
  begin
    for i in 0 to (NUM_VALS - 1) loop
      A_sig <= A_vals(i);
      B_sig <= B_vals(i);
      C_sig <= C_vals(i);
      wait for TIME_DELAY;
    end loop;
    wait;
  end process stimulus;

  monitor : process
    variable i : integer := 0;
  begin
    wait for TIME_DELAY/4;
    while (i < NUM_VALS) loop
      assert F1_sig = F1_vals(i)
        report "C value is incorrect."
        severity error;
        
      wait for TIME_DELAY/2;
      i := i + 1;
      wait for TIME_DELAY/2;
    end loop;
    wait;
  end process monitor;

end behavior;