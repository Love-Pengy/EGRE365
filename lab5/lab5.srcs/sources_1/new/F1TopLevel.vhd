----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2024 06:40:49 PM
-- Design Name: 
-- Module Name: F1TopLevel - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

entity F1TopLevel is
  Port (A, B, C: in std_logic;
        F1: out std_logic);
end F1TopLevel;

architecture Behavioral of F1TopLevel is
    signal bNotC, notBC, AC, invertedB, invertedC, or1, or2: std_logic;
    COMPONENT and2_with_rf 
        PORT (
            in1, in2: in std_logic;
            out1: out std_logic);
    END COMPONENT;
    
    COMPONENT inverter_with_rf 
        PORT (
            in1: in std_logic;
            out1: out std_logic);
    END COMPONENT;
   
   COMPONENT or2_with_rf 
        PORT (
            in1, in2: in std_logic;
            out1: out std_logic);
    END COMPONENT;
    
begin

    invertB: inverter_with_rf
        PORT MAP(in1 => B, out1 => invertedB);
        
    invertC: inverter_with_rf
        PORT MAP(in1 => C, out1 => invertedC);
        
    bNotCCalc: and2_with_rf
        PORT MAP(in1 => B, in2 => invertedC, out1 => bNotC);
        
    notBCCalc: and2_with_rf
        PORT MAP(in1 => invertedB, in2 => C, out1 => notBC);
        
    acCalc: and2_with_rf
       PORT MAP(in1 => A, in2 => C, out1 => AC);
       
    or1Calc: or2_with_rf
        PORT MAP(in1 => bNotC, in2 => notBC, out1 => or1);
        
    or2Calc: or2_with_rf
        PORT MAP(in1 => or1, in2 => AC, out1 => F1);
    
    
end Behavioral;
