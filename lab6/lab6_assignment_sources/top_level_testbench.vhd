library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_testbench is
end top_level_testbench;

architecture behavior of top_level_testbench is

  -- define the maximum delay for the DUT
  constant CLK_DELAY : time := 5 ns;
  constant MAX_DELAY : time := 20 ns;

  -- define signals that connect to DUT
  signal LED_sig        : STD_LOGIC_VECTOR(15 downto 0);
  signal SW_sig         : STD_LOGIC_VECTOR(15 downto 0);
  signal CLK_sig        : STD_LOGIC := '0';
  signal CPU_RESETN_sig : STD_LOGIC;
  --signal BTND_sig       : STD_LOGIC;  
  
  begin
  
    -- this process generates the system clock signal for the synchronous parts of the DUT
    CLK_process : process(CLK_sig)
	  begin
	    CLK_sig <= not CLK_sig after CLK_DELAY;
	end process CLK_process;
 
    -- this waveform generates the active low CPU_RESETN reset signal
 	CPU_RESETN_sig <= '1', '0' after 23 ns, '1' after 68 ns;
 
    -- this is the process that will generate the inputs on the switches
    stimulus : process
		begin
		SW_sig <= b"0000_0000_0000_0000";
		wait for 1100 ns;
		
		SW_sig(4) <= '1';
		wait for 500 ns;

		SW_sig(4) <= '0';
		wait for 500 ns;

		SW_sig(4) <= '1';
		SW_sig(5) <= '1';
		wait for 500 ns;

		SW_sig(4) <= '0';
		wait for 500 ns;
		
		SW_sig(4) <= '1';
		wait for 500 ns;
		
		SW_sig(5) <= '0';
		wait for 500 ns;

		SW_sig(4) <= '0';
		wait for 1000 ns;

		SW_sig(4) <= '1';
		wait for 1000 ns;

		SW_sig(4) <= '0';

		wait; -- stop the process to avoid an infinite loop
    end process stimulus;
	

    -- this is the component instantiation for the
    -- DUT - the device we are testing
    DUT : entity work.top_level(Behavior)
      port map(SW => SW_sig, CLK100MHZ => CLK_sig, 
	           CPU_RESETN => CPU_RESETN_sig, LED => LED_sig);

end behavior;