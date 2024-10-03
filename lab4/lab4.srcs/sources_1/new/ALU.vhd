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
    generic(N : integer := 16);
    Port ( A: in std_logic_vector(N-1 downto 0);
           B: in std_logic_vector(N-1 downto 0);
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
           C: out std_logic_vector(N-1 downto 0)
);
end ALU;

architecture behavioral of ALU is

begin
    
    process(A, B, Mode, OE)
        variable sumAns: signed(N downto 0) := (others => '0');
        variable sumCalc1,sumCalc2 : signed(N downto 0);
        variable ans : signed(N-1 downto 0);
        
        begin
            C <= "ZZZZZZZZZZZZZZZZ";
            if(OE = '1') then
                case Mode is
                    -- addition
                    when "000" =>
                    
                      sumCalc1 := resize(signed(A),N+1);                         -- resize to N+1 long
                      sumCalc2 := resize(signed(B),N+1);                         -- resize to N+1 long
                      sumAns := sumCalc1 + sumCalc2;
                      
                      C <= std_logic_vector(sumAns(N-1 downto 0));
                      Cout <= sumAns(N);
                      if(sumAns = B"0000_0000_0000_0000") then
                          Zero <= '1';
                      else
                        Zero <= '0';
                      end if;                
                      
                    -- Subtraction
                     when "001" =>  
                       sumCalc1 := resize(signed(A),N+1);                         -- resize to N+1 long
                      sumCalc2 := resize(signed(B),N+1);                         -- resize to N+1 long
                      sumAns := sumCalc1 - sumCalc2;
                      C <= std_logic_vector(sumAns(N-1 downto 0));
                       if(sumAns = B"0000_0000_0000_0000") then
                         Zero <= '1';
                       else
                        Zero <= '0';
                       end if;
                       
                       Cout <= sumAns(N);

                    -- -A
                     when "010" =>
                       ans := NOT signed(A);
                       ans := ans + 1;
                       if(ans = B"0000_0000_0000_0000") then
                         Zero <= '1';
                       else 
                        Zero <= '0';
                       end if;
                       
                       Cout <= '0';
                       C <= std_logic_vector(ans(N-1 downto 0));
                       
                    -- sll
                     when "011" =>
                       ans := signed(A) SLL 1; 
                       if((ans(N-1) XOR A(N-1)) = '1') then 
                         Cout <= '1';
                       else
                         Cout <= '0';
                       end if;
                       if(ans = B"0000_0000_0000_0000") then 
                         Zero <= '1';
                       else 
                        Zero <= '0';
                       end if;
                       C  <= std_logic_vector(ans(N-1 downto 0));

--                    -- &
--                     when "100" => 
--                       for i in 0 to 15 LOOP 
--                         andHold(i) := A(i) AND B(i); 
--                       end LOOP; 
--                       -- TODO: CHECK THIS 
--                       -- or the answer with 0's 
--                       if(andHold = 0) then 
--                         Zero <= '1';
--                       else 
--                        Zero <= '0';
--                       end if;
--                       if(andHold(15) = '1') then
--                         Cout <= '1';
--                       end if;

--                    -- | 
--                     when "101" => 
--                       for i in 0 to 15 LOOP 
--                         orHold(i) := A(i) OR B(i); 
--                       end LOOP; 
--                       -- TODO: CHECK THIS 
--                       -- or the answer with 0's 
--                       if(orHold = 0) then 
--                         Zero <= '1';
--                       else 
--                        Zero <= '0';
--                       end if;
--                       if(orHold(15) = '1') then
--                         Cout <= '1';
--                       end if;

--                    -- XOR 
--                     when "110" => 
--                       for i in 0 to 15 LOOP 
--                         xorHold(i) := A(i) XOR B(i); 
--                       end LOOP; 
--                       if(xorHold = 0) then 
--                         Zero <= '1';
--                       else
--                        Zero <= '0';
--                       end if;
--                       -- TODO
--                       Cout <= xorHold(15);
                       
                    
--                    -- NOT(A)
--                    when "111" =>
--                      notHold := NOT signed(A);
--                      if(notHold = "0") then
--                        Zero <= '1';
--                      else 
--                        Zero <= '0';
--                      end if;
--                      if(notHold(15) = '1') then
--                        Cout <= '1';
--                      else 
--                      end if;
                    when others =>
                        C <= B"0111_1111_1111_1111";
                end case;
             else
                C <= "ZZZZZZZZZZZZZZZZ";
            end if;
                
        end process;

end behavioral;
