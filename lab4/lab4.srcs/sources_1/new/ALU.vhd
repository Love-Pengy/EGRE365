----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 09/19/2024 02:33:08 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.numeric_std.all;

entity ALU is
    Port ( A: in std_logic_vector(0 to 15);
           B: in std_logic_vector(0 to 15);
           -- 000: +
           -- 001: -
           -- 010: negate (-A)
           -- 011: SLL
           -- 100: AND
           -- 101: |
           -- 110: XOR
           -- 111: not A
           Mode: in std_logic_vector(0 to 2); 
           OE: in std_logic := '0'; 
           Zero: out std_logic := '0';
           Cout: out std_logic := '0';
           C: out std_logic_vector(0 to 15)
);
end ALU;

architecture behavioral of ALU is

begin
    
    process(A, B, Mode, OE)
        variable tmpHold : signed(0 to 16);
        variable xCalc, yCalc : signed(0 to 16);
        begin
            Cout <= '0';
            Zero <= '0';
            C <= "ZZZZZZZZZZZZZZZZ";
            if(OE = '1') then
                case Mode is
                    -- addition
                    when "000" =>   
                        xCalc := resize(signed(A), 17);
                        yCalc := resize(signed(B), 17);
                        tmpHold := xCalc + yCalc;
                        
                        if(tmpHold = 0) then
                            Zero <= '1';
                        end if;
                        
                        C <= std_logic_vector(tmpHold(0 to 15));
                        Cout <= tmpHold(16);
                     when others =>
                        C <= B"1111_1111_1111_1111";
                end case;
             else
                C <= "ZZZZZZZZZZZZZZZZ";
            end if;
            
        end process;

end behavioral;
