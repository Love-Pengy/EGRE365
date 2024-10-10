library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity counter is
   port( rst   : in std_logic;
         clk   : in  std_logic;
		 count : out std_logic_vector(3 downto 0)
   );
end counter ;

architecture Behavioral of counter is
   
  begin

  -- write process for an edge-triggered, 4-bit up
  -- counter (with active high reset) here

end Behavioral;