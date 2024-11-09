library IEEE;
use IEEE.std_logic_1164.all;

entity topLevelTB is
end topLevelTB;

architecture behavior of topLevelTB is

  -- define the maximum delay for the DUT
  constant MAX_DELAY : time := 20 ns;
  constant Tperiod : time := 1 ns;
  -- define signals that connect to DUT
  signal cathodes : std_logic_vector(6 downto 0);
  signal anodes : std_logic_vector(7 downto 0);
  signal reset : std_logic;
  signal switches : std_logic_vector(15 downto 0);
  signal decimalPoint : std_logic;
  signal clk_sig : std_logic := '0';
  
  begin
    process(clk_sig)
      begin
        clk_sig <= not clk_sig after Tperiod/2;
    end process;
    
    -- this is the process that will generate the inputs
	-- this is the process that will generate the inputs
    stimulus : process
      begin
        switches <=  X"0000" after 0 ns,    
                   X"0000" after 10 ns,
                   X"1111" after 20 ns,
                   X"2222" after 30 ns,
                   X"3333" after 40 ns,
                   X"4444" after 50 ns,
                   X"5555" after 60 ns,
                   X"6666" after 70 ns,
                   X"7777" after 80 ns,
                   X"8888" after 90 ns,
                   X"9999" after 100 ns,
                   X"AAAA" after 110 ns,
                   X"BBBB" after 120 ns,
                   X"CCCC" after 130 ns,
                   X"DDDD" after 140 ns,
                   X"EEEE" after 150 ns,
                   X"FFFF" after 160 ns;
                   
          reset <= '0' after 0 ns,
                   '1' after 10 ns, 
                   '1' after 20 ns,
                   '1' after 30 ns,
                   '1' after 40 ns,
                   '1' after 50 ns,
                   '1' after 60 ns,
                   '1' after 70 ns,
                   '1' after 80 ns,
                   '1' after 90 ns,
                   '1' after 100 ns,
                   '1' after 110 ns,
                   '1' after 120 ns,
                   '1' after 130 ns,
                   '1' after 140 ns,
                   '1' after 150 ns,
                   '1' after 160 ns;         
           
        wait; -- stop the process to avoid an infinite loop
    end process stimulus;
     
    -- this is the component instantiation for the
    -- DUT - the device we are testing
    DUT : entity work.topLevel(structural)
      port map(C => cathodes, DP => decimalPoint, AN => anodes, CLK100MHZ => clk_sig, CPU_RESETN => reset, SW => switches);
    
end behavior;