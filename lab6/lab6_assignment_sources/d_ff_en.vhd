library IEEE;
use IEEE.std_logic_1164.all;

ENTITY d_ff_en is
  PORT(d   : IN  std_logic;
       clk : IN  std_logic;
       rst : IN std_logic;
       en  : IN std_logic;
       q   : OUT std_logic := '0';
       qn  : OUT std_logic := '1');
END d_ff_en;

ARCHITECTURE Behavioral OF d_ff_en IS

  BEGIN
    
    process(clk, rst, d, en)
    begin 
        
    -- 0 reset 1 set 
        if(rising_edge(clk)) then
           if(en = '1') then 
              if(rst = '1') then 
                  q <= '0';
                  qn <= '1';
              else 
                q <= d;
                qn <= NOT d;
              end if;  
          end if;
        end if;
    
    end process;
    
    
    
  -- write process to implement an edger-triggered
  -- D flip flop with Enable (and active-high reset) here
  
END Behavioral;
