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
    Zero <= '0';
    Cout <= '0';
    
    process(A, B, Mode, OE)
        variable sumAns: signed(0 to 16) := (others => '0');
        variable sumCalc1,sumCalc2 : signed(0 to 16);
        variable AHold : signed(0 to 15);
        variable shiftHold : signed(0 to 15);
        variable andHold : signed(0 to 15);
        variable orHold : signed(0 to 15);
        variable xorHold : signed(0 to 15);
        variable notHold : signed(0 to 15);
        
        begin
            C <= "ZZZZZZZZZZZZZZZZ";
            if(OE = '1') then
                case Mode is
                    -- addition
                    -- TODO FIGURE OUT WHY 1111_0000_1111_0000 + 0000_1111_0000_1111 returns 1111_1111_1111_1111
                    when "000" =>   
                      sumCalc1 := resize(signed(A), 17);
                      sumCalc2 := resize(signed(B), 17);
                      sumAns := sumCalc1 + sumCalc2;

                      if(sumAns = 0) then
                          Zero <= '1';
                      end if;

                      C <= std_logic_vector(sumAns(0 to 15));
                      Cout <= sumAns(0);
                      
                    -- Subtraction
                     when "001" =>  
                       sumCalc1 := resize(signed(A), 17);
                       sumCalc2 := resize(signed(A), 17);
                       sumCalc2(0) := sumCalc2(0) XOR '1';
                       sumAns := sumCalc1 + sumCalc2;
                    
                       if(sumAns = 0) then
                         Zero <= '1';
                       end if;
                    
                       C <= std_logic_vector(sumAns(0 to 15));
                       Cout <= sumAns(0);

                    -- -A
                     when "010" =>
                       AHold := NOT signed(A);
                       AHold := AHold + 1;
                       if(AHold = 0) then
                         Zero <= '1';
                       end if;
                       Cout <= '0';
                       C <= std_logic_vector(AHold);
                       
                    -- sll
                     when "011" =>
                       shiftHold := signed(A) SLL 1; 
                       if((shiftHold(0) XOR A(0)) = '1') then 
                         Cout <= '1';
                       end if;
                       if(shiftHold = 0) then 
                         Zero <= '1';
                       end if;
                       C  <= std_logic_vector(shiftHold);

                    -- &
                     when "100" => 
                       for i in 0 to 15 LOOP 
                         andHold(i) := A(i) AND B(i); 
                       end LOOP; 
                       -- TODO: CHECK THIS 
                       -- or the answer with 0's 
                       if(andHold = 0) then 
                         Zero <= '1';
                       end if;
                       if(andHold(15) = '1') then
                         Cout <= '1';
                       end if;

                    -- | 
                     when "101" => 
                       for i in 0 to 15 LOOP 
                         orHold(i) := A(i) OR B(i); 
                       end LOOP; 
                       -- TODO: CHECK THIS 
                       -- or the answer with 0's 
                       if(orHold = 0) then 
                         Zero <= '1';
                       end if;
                       if(orHold(15) = '1') then
                         Cout <= '1';
                       end if;

                    -- XOR 
                     when "110" => 
                       for i in 0 to 15 LOOP 
                         xorHold(i) := A(i) XOR B(i); 
                       end LOOP; 
                       if(xorHold = 0) then 
                         Zero <= '1';
                       end if;
                       -- TODO
                       Cout <= xorHold(15);
                       
                    
                    -- NOT(A)
                    when "111" =>
                      notHold := NOT signed(A);
                      if(notHold = "0") then
                        Zero <= '1';
                      end if;
                      if(notHold(15) = '1') then
                        Cout <= '1';
                      end if;
                    when others =>
                        C <= B"0111_1111_1111_1111";
                end case;
             else
                C <= "ZZZZZZZZZZZZZZZZ";
            end if;
                
        end process;

end behavioral;
