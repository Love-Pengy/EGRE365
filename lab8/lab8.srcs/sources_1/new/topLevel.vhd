----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 11/04/2024 10:58:37 AM
-- Design Name: 
-- Module Name: topLevel - Behavioral
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

entity topLevel is
  Port (LED : out std_logic_vector(15 downto 0);
        C   : out std_logic_vector(6 downto 0);
        DP  : out std_logic;
        AN  : out std_logic_vector(7 downto 0);
        CLK100MHZ  : in  STD_LOGIC;
		CPU_RESETN : in STD_LOGIC;
	    SW : in std_logic_vector(15 downto 0));
end topLevel;

architecture Structural of topLevel is
COMPONENT sevenSegment
    Port (clk: in std_logic;
        input: in std_logic_vector(15 downto 0);
        anOutput: out std_logic_vector(7 downto 0);
        dpOutput: out std_logic;
        cOutput: out std_logic_vector(6 downto 0));
end COMPONENT;

COMPONENT clockDivider 
    PORT(mclk : IN  std_logic;
         sclk : OUT std_logic);
end COMPONENT;

FOR ALL: sevenSegment USE ENTITY work.sevenSegmentDriver(Behavioral);
FOR ALL: clockDivider USE ENTITY work.clock_divider(Behavioral);

begin



end Structural;
