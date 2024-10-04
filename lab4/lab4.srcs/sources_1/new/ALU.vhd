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
    C <= "ZZZZZZZZZZZZZZZZ";
    process(OE)
        begin
            if(OE = '0') then
                C <= "ZZZZZZZZZZZZZZZZ";
            end if;
    end process;
    
    process(A, B, Mode)
        variable sumAns: signed(N downto 0) := (others => '0');
        variable sumCalc1,sumCalc2 : signed(N downto 0);
        variable ans : signed(N-1 downto 0);
        
        begin
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
                       Cout <= ans(N-1) XOR A(N-1);
                       if(ans = B"0000_0000_0000_0000") then 
                         Zero <= '1';
                       else 
                        Zero <= '0';
                       end if;
                       C  <= std_logic_vector(ans(N-1 downto 0));

                    -- &
                     when "100" =>
                       ans := signed(A) AND signed(B);
                       if(ans = 0) then 
                         Zero <= '1';
                       else 
                        Zero <= '0';
                       end if;
                       Cout <= ans(0);
                       C <= std_logic_vector(ans);

                    -- | 
                     when "101" =>
                       ans := signed(A) OR signed(B);
                       if(ans = 0) then 
                         Zero <= '1';
                       else 
                        Zero <= '0';
                       end if;
                       Cout <= ans(0);
                       C <= std_logic_vector(ans);

                    -- XOR 
                     when "110" =>
                       ans := signed(A) XOR signed(B);
                       if(ans = 0) then 
                         Zero <= '1';
                       else
                        Zero <= '0';
                       end if;
                       Cout <= ans(0);
                       C <= std_logic_vector(ans);
                       
                    
                    -- NOT(A)
                    when "111" =>
                      ans := NOT signed(A);
                      if(ans = 0) then
                        Zero <= '1';
                      else 
                        Zero <= '0';
                      end if;
                      Cout <= ans(0);
                      C <= std_logic_vector(ans);
                    when others =>
                    
                end case;
                end if;
        end process;

end behavioral;
