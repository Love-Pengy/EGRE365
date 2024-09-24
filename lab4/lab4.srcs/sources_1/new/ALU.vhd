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
        variable sumAns: signed(0 to 16) := (others => '0');
        variable sumCalc1,sumCalc2 : signed(0 to 16);
        variable AHold : signed(0 to 15);
        variable shiftHold : signed(0 to 15);
        variable andHold : signed(0 to 15);
        begin
            Cout <= '0';
            Zero <= '0';
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
                    -- when "001" =>  
                    --   sumCalc1 := resize(signed(A), 17);
                    --   sumCalc2 := resize(signed(A), 17);
                    --   sumCalc2(0) = sumCalc2(0) XOR 1;
                    --   sumAns := sumCalc1 + sumCalc2;
                    --
                    --   if(sumAns = 0) 0then
                    --     Zero <= '1';
                    --   end if;
                    --
                    --   C <= std_logic_vector(sumAns(0 to 15));
                    --   Cout <= sumAns(0);

                    -- -A
                    -- when "010" =>
                    --   AHold := A;
                    --   AHold(0) := AHold(0) XOR 1;
                    --   C <= AHold;
                    --   if(AHold = 0) then
                    --     Zero <= '1';
                    --   end if;
                    --   Cout <= '0';
                      
                    -- sll
                    -- when "011" =>
                    --   shiftHold => signed(A) SLL 1; 
                    --   if((shiftHold(0) XOR A(0)) = '1') then 
                    --     Cout <= '1';
                    --   end if
                    --   if(shiftHold = '0') then 
                    --     Zero <= '1';
                    --   end if
                    --   C  <= shiftHold;

                    -- &
                    when "100" => 
                      for i in 0 to 15 LOOP 
                        andHold(i) <= A(i) AND B(i); 
                      end LOOP; 
                      -- TODO: CHECK THIS 
                      -- or the answer with 0's 
                      if(andHold = '0') then 
                        Zero <= '1';
                      end if;
                      if(andHold(15) = '1') then
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
