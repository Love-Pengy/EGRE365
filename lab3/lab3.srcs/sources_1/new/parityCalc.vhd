----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 09/12/2024 12:34:06 PM
-- Design Name: 
-- Module Name: parityCalc - Behavioral
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


entity calc is
    generic(inputSize : integer := 8);
    port(input : in bit_vector(0 to inputSize-1);
         output : out bit_vector(0 to 2));
end calc;

architecture calculator of calc is
begin
    process(input)
    variable count : bit;
    variable zCheck : bit;
    variable oCheck : bit; 
    begin
    
    -- PARITY
    count := '0';
    for i in 0 to inputSize-1 LOOP
        if(input(i) = '1')then
            count := count XOR '1';
        end if;
    end LOOP;
    output(0) <= count;
     
    -- Zero 
     zCheck := '1';
     for i in 0 to inputSize - 1 LOOP
        if(input(i) = '1')then 
            zCheck := '0';
        end if;
     end LOOP;
     output(1) <= zCheck;
        
        
    -- One 
     oCheck := '1';
     for i in 0 to inputSize - 1 LOOP
        if(input(i) = '0')then 
            oCheck := '0';
        end if;
     end LOOP;
     output(2) <= oCheck;
        
    end process; 



end calculator;
