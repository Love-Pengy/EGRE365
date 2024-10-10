----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 10/09/2024 07:36:29 PM
-- Design Name: 
-- Module Name: f2TB - Behavioral
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

entity f2TB is
end entity;

architecture behavior of f2TB is
  constant TIME_DELAY : time := 20 ns;
  constant NUM_VALS : integer := 16;


  type A_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type B_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type C_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type D_array is array(0 to (NUM_VALS - 1)) of std_logic;
  type F2_array is array(0 to (NUM_VALS - 1)) of std_logic;  
  
  
  constant A_vals : A_array := ('0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1');
                                                                                          
  constant B_vals : B_array := ('0', '0', '0', '0', '1', '1', '1', '1', '0', '0', '0', '0', '1', '1', '1', '1');
  
  constant C_vals : C_array := ('0', '0', '1', '1', '0', '0', '1', '1', '0', '0', '1', '1', '0', '0', '1', '1');
  
  constant D_vals : D_array := ('0', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', '1', '0', '1');
  
  constant F2_vals : F2_array := ('1', '0', '1', '1', '1', '0', '0', '1', '1', '1', '1', '1', '0', '1', '1', '0');

  
  signal A_sig : std_logic;
  signal B_sig : std_logic;
  signal C_sig : std_logic;
  signal D_sig : std_logic;
  signal F2_sig : std_logic;
  
begin

  DUT : entity work.F2TopLevel(Behavioral)
    port map(A => A_sig,
             B => B_sig,
             C => C_sig,
             D => D_sig, 
             F2 => F2_sig);    

  stimulus : process
  begin
    for i in 0 to (NUM_VALS - 1) loop
      A_sig <= A_vals(i);
      B_sig <= B_vals(i);
      C_sig <= C_vals(i);
      D_sig <= D_vals(i);
      wait for TIME_DELAY;
    end loop;
    wait;
  end process stimulus;

  monitor : process
    variable i : integer := 0;
  begin
    wait for TIME_DELAY/4;
    while (i < NUM_VALS) loop
      assert F2_sig = F2_vals(i)
        report "C value is incorrect."
        severity error;
        
      wait for TIME_DELAY/2;
      i := i + 1;
      wait for TIME_DELAY/2;
    end loop;
    wait;
  end process monitor;

end behavior;