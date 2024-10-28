----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 10/15/2024 04:15:16 PM
-- Design Name: Top_level
-- Module Name: top_level - structural
-- Project Name: EGRE365 Lab #7
-- Target Devices: Artix7 xc7a100tcsg324-1
-- Tool Versions: Vivado
-- Description: Top-level structural description for the Digilent Nexys A7
-- FPGA board using the following board inputs:
--      100MHz system clock (CLK100MHZ)
--      Active low CPU reset button (CPU_RESETN)
--      Center momentary push button (BTNC)
--      Upper momentary push button (BTNU)
--      Left momentary push button (BTNL)
--      Right momentary push button (BTNR)
--      Down (i.e., lower) momentary push button (BTND)
--      16 LEDS (LED(15) - LED(0))
-- 
-- Dependencies: Must include the correct xdc (pin deffinition) file 
-- (Nexys4DDR_Master.xdc)
-- 
-- Revision: 1.0 
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top_level is
    Port (CLK100MHZ  : in  STD_LOGIC;
		  CPU_RESETN : in STD_LOGIC;
--		  BTNC       : in  STD_LOGIC;
--		  BTNU       : in  STD_LOGIC;
		  BTNL       : in  STD_LOGIC;
		  BTNR       : in  STD_LOGIC;
--		  BTND       : in  STD_LOGIC;
          LED        : out STD_LOGIC_VECTOR(15 downto 0);
          LED16_G    : out std_logic;
          LED17_R    : out std_logic);
end top_level;

architecture structural of top_level is
COMPONENT roomController is
    PORT(clk: in std_logic;
        reset: in std_logic;
        X1: in std_logic;
        X2: in std_logic;
        ZG, ZR, Z1: out std_logic );
end COMPONENT;

COMPONENT switchDebouncer is 
    PORT(clk, reset, switchIn : in std_logic; 
         switchOut: out std_logic);
end COMPONENT;

COMPONENT clock_divider is
    PORT(mclk: in std_logic; 
         sclk: out std_logic);
end COMPONENT; 

FOR ALL: clock_divider use entity work.clock_divider(behavior);
FOR ALL: switchDebouncer use entity work.SwitchDebouncer(Behavioral);
FOR ALL: roomController use entity work.roomController(Behavioral);

signal slowClock, lSwitch, rSwitch, resetSig: std_logic := 'Z';
begin
 
resetSig <= not(CPU_RESETN);

clockCalc: clock_divider
    PORT MAP(mclk => CLK100MHZ, sclk => slowClock);
    
leftSwitchCalc: switchDebouncer
    PORT MAP(clk => CLK100MHZ, reset => resetSig, switchIn => BTNL, switchOut => lSwitch);
    
rightSwitchCalc: switchDebouncer
    PORT MAP(clk => CLK100MHZ, reset => resetSig, switchIn => BTNR, switchOut => rSwitch);
    
    
roomControllerCalc: roomController
    PORT MAP(clk => slowClock, reset => resetSig, X1 => lSwitch, X2 => rSwitch, Zg => LED16_G, ZR => LED17_R, Z1 => LED(0));
    
end structural;
