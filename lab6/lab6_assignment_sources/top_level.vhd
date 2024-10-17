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
    Port (SW         : in  STD_LOGIC_VECTOR(15 downto 0);
          CLK100MHZ  : in  STD_LOGIC;
		  CPU_RESETN : in  STD_LOGIC;
          LED        : out STD_LOGIC_VECTOR(15 downto 0));
end top_level;

architecture Behavior of top_level is

-- this is the clock frequency constant for scaling the slow clock (the clock for the counter)
-- and the button debouncer. When mapping to the FPGA hardware, the CLOCK_FREQ should be set to
-- the hardware clock frequency of 10 MHz. However, this results in a *long* simulation time for
-- varifying the functionality, so for simulation (both behavioral and post-synthesis and layout)
-- we cut the clock frequency down

constant CLOCK_FREQ : positive := 100_000_000;  -- clock frequency this is the value for hardware mapping with the 100 MHz clock
--constant CLOCK_FREQ : positive := 100;            -- clock frequency this is the value for simulation

signal reset_sig : std_logic;
signal slow_clk  : std_logic;

begin

    reset_sig <= not(CPU_RESETN);

    -- tie upper LEDs diretly to upper SWs
    LED(15 downto 8) <= SW(15 downto 8);
	
	LED(7) <= reset_sig;
	LED(6) <= slow_clk;

    CLK_DIV : ENTITY work.clock_divider(behavior)
                 GENERIC MAP(CLK_FREQ => CLOCK_FREQ)
                 PORT MAP(mclk => CLK100MHZ, sclk => slow_clk);


    UP_CTR : ENTITY work.counter(Behavioral)
                 PORT MAP(rst => reset_sig, clk => slow_clk,
				          count => LED(3 downto 0));

    D_FF : ENTITY work.d_ff_en(Behavioral)
                 PORT MAP(d => SW(4), clk => slow_clk, rst => reset_sig, 
				          en => SW(5), q => LED(4), qn => LED(5));
    
end Behavior;
