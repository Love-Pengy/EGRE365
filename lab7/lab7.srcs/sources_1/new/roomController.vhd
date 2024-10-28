----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 10/22/2024 12:33:18 PM
-- Design Name: 
-- Module Name: roomController - Behavioral
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

entity roomController is
  Port (clk: in std_logic;
        reset: in std_logic;
        X1: in std_logic;
        X2: in std_logic;
        ZG, ZR, Z1: out std_logic );
end roomController;

architecture Behavioral of roomController is
    TYPE state_type IS (zeroInRoom, firstEntering, oneInRoom, firstExiting, secondEntering, twoInRoom, secondLeaving, thirdEntering, threeInRoom, thirdLeavingRoom);
    signal presentState, nextState : state_type;
    
begin
    clockProc: process(clk, reset)
    begin
            if(reset = '1') then 
                presentState <= zeroInRoom; 
            elsif(rising_edge(clk)) then
                presentState <= nextState;
            end if;
   end process;
   
   nextStateProc: process(presentState, X1, X2)
   begin
    case presentState is 
        when zeroInRoom => 
            if((X1 = '0')) then
                nextState <= presentState;
            elsif((X1 = '1') AND (X2 = '0')) then 
                nextState <= firstEntering;
            else 
                nextState <= presentState; 
            end if;
        when firstEntering => 
            if((X1 = '1') AND (X2 = '0')) then
                nextState <= presentState;
            elsif((X1 = '0') AND (X2 = '0')) then
                nextState <= oneInRoom;
            else 
               nextState <= presentState; 
            end if;
        when oneInRoom => 
            if((X1 = '0') AND (X2 = '0')) then
                nextState <= presentState; 
            elsif((X1 = '0') AND (X2 = '1')) then
                nextState <= firstExiting;
            elsif((X1 = '1') AND (X2 = '0')) then
                nextState <= secondEntering;
            else 
                nextState <= presentState; 
            end if;
        when firstExiting => 
            if((X1 = '0') AND (X2 = '1')) then
                nextState <= presentState;
            elsif((X1 = '0') AND (X2 = '0')) then
                nextState <= zeroInRoom; 
            else 
                nextState <= presentState; 
            end if;
        when secondEntering => 
            if((X1 = '1') AND (X2 = '0')) then 
                nextState <= presentState;
            elsif((X1 = '0') AND (X2 = '0')) then 
                nextState <= twoInRoom;
            else 
                nextState <= presentState; 
            end if;
        when twoInRoom => 
            if((X1 = '0') AND (X2 = '0')) then
                nextState <= presentState;
            elsif((X1 = '1') AND (X2 = '0')) then
                nextState <= thirdEntering;
            elsif((X1 = '0') AND (X2 = '1')) then
                nextState <= secondLeaving;
            else 
                nextState <= presentState; 
            end if;
        when secondLeaving => 
            if ((X1 = '0') AND (X2 = '1')) then 
                nextState <= secondLeaving;
            elsif((X1 = '0') AND (X2 = '0')) then 
                nextState <= oneInRoom;
            else 
                nextState <= presentState; 
            end if;
        when thirdEntering => 
            if ((X1 = '1') AND (X2 = '0')) then
                nextState <= presentState; 
            elsif ((X1 = '0') AND (X2 = '0')) then
                nextState <= threeInRoom;
            else 
                nextState <= presentState; 
            end if;
        when threeInRoom => 
            if ((X1 = '1') AND (X2 = '0')) then
                nextState <= presentState;
            elsif ((X1 = '0') AND (X2 = '1')) then
                nextState <= thirdLeavingRoom; 
            else 
                nextState <= presentState; 
           end if;
       when thirdLeavingRoom => 
           if ((X1 = '0') AND (X2 = '1')) then
                nextState <= presentState; 
           elsif ((X1 = '0') AND (X2 = '0')) then
                nextState <= twoInRoom;
           else 
                nextState <= presentState; 
           end if;
   end case;
   end process;
   
   
   output: process(presentState) 
   begin
        -- Z1 on when someone in room
        -- Zg on when number of people is not max
        -- zr on when number of people is max
        case presentState is 
            when zeroInRoom => 
                Z1 <= '0';
                Zg <= '1';
                Zr <= '0';
            when firstEntering => 
                Z1 <= '0';
                Zg <= '1';
                Zr <= '0';
            when threeInRoom => 
                Z1 <= '1';
                Zg <= '0';
                Zr <= '1';
            when thirdLeavingRoom => 
                Z1 <= '1';
                Zg <= '0';
                Zr <= '1';
            when others => 
                Z1 <= '1';
                Zg <= '1'; 
                Zr <= '0';
            end case;
  
   end process;
   
                

end Behavioral;
