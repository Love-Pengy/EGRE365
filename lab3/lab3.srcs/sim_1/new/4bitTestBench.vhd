----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Brandon Frazier
-- 
-- Create Date: 09/12/2024 12:50:06 PM
-- Design Name: 
-- Module Name: 8bitTestBench - Behavioral
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

entity calc_testbench is
end calc_testbench;

architecture behavior of calc_testbench is

  -- define the maximum delay for the DUT
  constant MAX_DELAY : time := 20 ns;
  constant BIT_WIDTH : integer := 4;
  constant NO_VECTORS : integer := 10;

  -- declare a constant to hold an array of input values
  type input_value_array is array (1 to NO_VECTORS) of bit_vector(0 to BIT_WIDTH-1);
  type output_value_array is array (1 to NO_VECTORS) of bit_vector(0 to 2);
  constant x_sig_values : input_value_array := (B"0000",B"0001",B"0010",B"0100",B"1000", B"1001", B"1010", B"1011", B"1100", B"1111");
  constant s_sig_values : output_value_array := (B"010",B"100",B"100",B"100",B"100", B"000", B"000", B"100", B"000", B"001");

  -- define signals that connect to DUT
  signal x_sig: bit_vector(0 to BIT_WIDTH-1);
  signal s_sig: bit_vector(0 to 2);
  
  begin
  -- this is the process that will generate the inputs
    stimulus : process
      begin
        for i in 1 to NO_VECTORS loop
          x_sig <= x_sig_values(i);
          wait for MAX_DELAY;
        end loop;
        wait; -- stop the process to avoid an infinite loop
  end process stimulus;
  
-- this is the component instantiation for the
-- DUT - the device we are testing
DUT : entity work.calc(calculator)
  generic map(inputSize => BIT_WIDTH)
  port map(input => x_sig, output => s_sig);

    
-- this is the (optional) process that will monitor 
-- the outputs
monitor : process
  variable i : integer;
  begin
    wait on x_sig; -- wait for event on x_sig
    wait for MAX_DELAY/2; -- wait half of the "cycle time"
    i := 1;
    while (i <= NO_VECTORS) loop -- look through input values
      exit when (x_sig = x_sig_values(i));
      i := i + 1;
    end loop;
    
    assert i <= NO_VECTORS -- check to see that i is in bounds
      report "ERROR - no valid input values found"
      severity failure;
    
    assert s_sig = s_sig_values(i)
      report "ERROR - incorrect value on s_sig"
      severity error;
    wait;
end process monitor;
    
    
end behavior;
  
