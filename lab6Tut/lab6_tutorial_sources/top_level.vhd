----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2016 07:59:16 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level is
    Port (SW : in   STD_LOGIC_VECTOR(15 downto 0);
          LED : out  STD_LOGIC_VECTOR(15 downto 0));
end top_level;

architecture Behavior of top_level is

signal a, b, c : STD_LOGIC;
signal x, y, z : STD_LOGIC;


begin

    -- tie upper LEDs diretly to upper SWs
    LED(15 downto 6) <= SW(15 downto 6);

    -- tie a and b inputs to SW(0) and SW(1)
    a <= SW(0);
    b <= SW(1);
 
    -- tie x and y inputs to SW(3) and SW(4)
    x <= SW(3);
    y <= SW(4);
 
    -- tie a, b, and c to LEDs for dsplay  
    LED(0) <= a;
    LED(1) <= b;
    LED(2) <= c;

    -- tie x, y, and z to LEDs for dsplay  
    LED(3) <= x;
    LED(4) <= y;
    LED(5) <= z;

    process(a, b)
        begin
        c <= a and b;
    end process;
    
    process(x, y)
        begin
        z <= x or y;
    end process;
    
end Behavior;
