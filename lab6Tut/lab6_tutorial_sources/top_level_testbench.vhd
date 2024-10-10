library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_testbench is
end top_level_testbench;

architecture behavior of top_level_testbench is

  -- define the maximum delay for the DUT
  constant MAX_DELAY : time := 5 ns;

  -- define signals that connect to DUT
  signal LED_sig, SW_sig : STD_LOGIC_VECTOR(15 downto 0);
  
  begin
  
    -- this is the process that will generate the inputs
    stimulus : process
		begin
		SW_sig <= b"1010_0101_0100_0000";
		wait for MAX_DELAY;
		SW_sig <= b"1010_0101_0100_1001";
		wait for MAX_DELAY;
		SW_sig <= b"1010_0101_0101_0010";
		wait for MAX_DELAY;
		SW_sig <= b"1010_0101_0101_1011";
		wait for MAX_DELAY;
		SW_sig <= b"1010_0101_0100_0000";
		wait for MAX_DELAY;
		wait; -- stop the process to avoid an infinite loop
    end process stimulus;

    -- this is the component instantiation for the
    -- DUT - the device we are testing
    DUT : entity work.top_level(Behavior)
      port map(LED => LED_sig,SW => SW_sig);

end behavior;