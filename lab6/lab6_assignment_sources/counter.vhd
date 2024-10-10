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
  
    process(clk)
    variable hold : std_logic_vector(3 downto 0) := (others => '0');
    begin 
        if(rising_edge(clk)) then 
          if(rst = '1') then 
            hold := B"0000";
            count <= hold;
          else
            hold := std_logic_vector((unsigned(hold) + 1) MOD 4);
            count <= hold;
          end if;
        end if;
      -- write process for an edge-triggered, 4-bit up
      -- counter (with active high reset) here
    end process;
    
end Behavioral;