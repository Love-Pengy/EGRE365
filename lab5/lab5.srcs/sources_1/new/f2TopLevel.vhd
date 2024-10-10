----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2024 07:21:49 PM
-- Design Name: 
-- Module Name: F2TopLevel - Behavioral
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

entity F2TopLevel is
  Port (A, B, C, D: in std_logic;
        F2: out std_logic);
end F2TopLevel;

architecture Behavioral of F2TopLevel is
    signal invertedA, invertedB, invertedC, invertedD, or1, or2, or3, or4, or5,AC,  notCNotDNotA, aNotC, notCNotD, notBC, notACD,notAC, ANotCD, aNotB, aCNotD: std_logic;
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
invertA: inverter_with_rf
    PORT MAP(in1 => A, out1 => invertedA);
    
invertB: inverter_with_rf
        PORT MAP(in1 => B, out1 => invertedB);
        
invertC: inverter_with_rf
    PORT MAP(in1 => C, out1 => invertedC);
    
invertD: inverter_with_rf
    PORT MAP(in1 => D, out1 => invertedD);
   
notCNotDCalc: and2_with_rf
    PORT MAP(in1 => invertedC, in2 => invertedD, out1 => notCNotD);
    
notCNotDNotACalc2: and2_with_rf
    PORT MAP(in1 => notCNotD, in2 => invertedA, out1 => notCNotDNotA);
    
notBCCalc: and2_with_rf
    PORT MAP(in1 => invertedB, in2 => C, out1 => notBC);
    
notACCalc: and2_with_rf
    PORT MAP(in1 => invertedA, in2 => C, out1 => notAC);

notACDCalc: and2_with_rf
    PORT MAP(in1 => notAC, in2 => D, out1 => notACD);

aNotCCalc: and2_with_rf
    PORT MAP(in1 => A, in2 => invertedC, out1 => aNotC);
    
aNotCDCalc: and2_with_rf
    PORT MAP(in1 => aNotC, in2 => D, out1 => aNotCD);
  
aNotBCalc: and2_with_rf
    PORT MAP(in1 => A, in2 => invertedB, out1 => aNotB);
    
aCCalc: and2_with_rf
    PORT MAP(in1 => A, in2 => C, out1 => AC);
    
aCNotDCalc: and2_with_rf
    PORT MAP(in1 => AC, in2 => invertedD, out1 => aCNotD);
     
or1Calc: or2_with_rf
    PORT MAP(in1 => notCNotDNotA, in2 => notBC, out1 => or1);
    
or2Calc: or2_with_rf
    PORT MAP(in1 => or1, in2 => notACD, out1 => or2);
   
or3Calc: or2_with_rf
    PORT MAP(in1 => or2, in2 => aNotCD, out1 => or3); 

or4Calc: or2_with_rf
    PORT MAP(in1 => or3, in2 => aNotB, out1 => or4); 
    
or5Calc: or2_with_rf
    PORT MAP(in1 => or4, in2 => aCNotD, out1 => F2);
    
end Behavioral;
