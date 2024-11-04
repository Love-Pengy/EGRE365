----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/04/2024 11:35:50 AM
-- Design Name: 
-- Module Name: sevenSegmentDriver - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenSegmentDriver is
  Port (clk: in std_logic;
        input: in std_logic_vector(15 downto 0);
        anOutput: out std_logic_vector(7 downto 0);
        dpOutput: out std_logic;
        cOutput: out std_logic_vector(6 downto 0));
end sevenSegmentDriver;

architecture Behavioral of sevenSegmentDriver is
signal currVal : unsigned;
signal count : unsigned; 
begin
    process(clk, input)
    begin   
        if(rising_edge(clk)) then
            count <= (count + 1) MOD 4;
            if(to_integer(count) = 2) then
                dpOutput <= '0';
            else 
                dpOutput <= '1';
            end if;
            anOutput(7 downto 4) <= "ZZZZ";
            anOutput(4 downto 0) <= std_logic_vector(count);
            currVal <= unsigned(input);
        end if;
    end process;

    process(currVal)
    begin
        for i in 0 to 3 LOOP
            currVal <= unsigned(input((4*i+4) downto (4*i))); 
            case to_integer(currVal) is
                when 0 =>
                    cOutput <= "0000001";
                when 1 => 
                    cOutput <= "1001111"; 
                when 2 => 
                    cOutput <= "0010010";
                when 3 => 
                    cOutput <= "0000110";
                when 4 => 
                    cOutput <= "1001110";
                when 5 => 
                    cOutput <= "0100100";
                when 6 =>
                    cOutput <= "0100000";
                when 7 => 
                    cOutput <= "0001111";
                when 8 =>
                    cOutput <= "0000000";
                when 9 => 
                    cOutput <= "0000100";
                when others => 
                    cOutput <= "ZZZZZZZ";      
            end case;
    end process;
end Behavioral;
