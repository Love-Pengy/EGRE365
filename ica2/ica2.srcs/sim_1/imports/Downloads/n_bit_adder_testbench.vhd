library ieee;
use std.textio.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;

entity adder_8_bit_testbench is
end adder_8_bit_testbench;

architecture behavior of adder_8_bit_testbench is

  -- define the maximum delay for the DUT
  constant MAX_DELAY : time := 20 ns;
  constant BIT_WIDTH : integer := 8;
  constant NO_VECTORS : integer := 6;

  -- declare a constant to hold an array of input values
  type input_value_array is array (1 to NO_VECTORS) of std_logic_vector(0 to BIT_WIDTH-1);
  type output_value_array is array (1 to NO_VECTORS) of std_logic_vector(0 to BIT_WIDTH-1);
  constant x_sig_values : input_value_array := ("00000000",
                                                "01101011",
                                                "11101110",
                                                "00101001",
                                                "11111111",
                                                "11111111");
  constant y_sig_values : input_value_array := ("00000000",
                                                "10010100",
                                                "00001000",
                                                "00100101",
                                                "00000001",
                                                "11111111");
  constant c_in_sig_values : std_logic_vector(1 to NO_VECTORS) := ('0','1','0','1','1','1');
  constant s_sig_values : output_value_array := ("00000000",
                                                 "00000000",
                                                 "11110110",
                                                 "01001111",
                                                 "00000001",
                                                 "11111111");
  constant c_out_sig_values : std_logic_vector(1 to NO_VECTORS) := ('0','1','0','0','1', '1');

  -- define signals that connect to DUT
  signal x_sig, y_sig, s_sig  : std_logic_vector(0 to BIT_WIDTH-1);
  signal c_in_sig, c_out_sig : std_logic;
  
  begin
  
    -- this is the process that will generate the inputs
    stimulus : process
      file stimulus_file : text open read_mode is "tbInput"; 
      variable ln : line; 
      variable x_value, y_value : std_logic_vector(BIT_WIDTH - 1 downto 0); 
      variable c_in_value : std_logic;
      variable next_event_time, wait_time : time;
      begin
        readline(stimulus_file, ln);
        
        while(not endfile(stimulus_file)) LOOP
            readline(stimulus_file, ln); 
            read(ln, next_event_time);
            read(ln, x_value);
            read(ln, y_value);
            read(ln, c_in_value);
            wait_time := next_event_time - now;
            wait for wait_time;
            x_sig <= x_value;
            y_sig <= y_value; 
            c_in_sig <= c_in_value; 
        end LOOP;
        
        wait;
    end process stimulus;

    -- this is the component instantiation for the
    -- DUT - the device we are testing
    DUT : entity work.n_bit_adder(simple)
      generic map(N => BIT_WIDTH)
      port map(x => x_sig, y => y_sig, c_in => c_in_sig,
               c_out => c_out_sig, s => s_sig);

    recorder : process(x_sig, y_sig, c_in_sig, c_out_sig, s_sig)
                variable first : boolean := true; 
                file result_file : text open write_mode is "tbOutput";
                variable ln : line;
                begin 
                    if(first) then 
                        write(ln, string'("time")); 
                        write(ln, HT); 
                        write(ln, string'("x"));
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, string'("y"));
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, string'("cin"));
                        write(ln, HT);
                        write(ln, string'("s "));
                        write(ln, HT);
                        write(ln, HT);
                        write(ln, HT);
                        write(ln, HT);
                        write(ln, string'("cout"));
                        write(ln, HT);
                        writeline(result_file, ln);
                        first := false; 
                    else 
                        write(ln, now); 
                        write(ln, HT);
                        write(ln, x_sig); 
                        write(ln, HT);
                        write(ln, y_sig);
                        write(ln, HT); 
                        write(ln, c_in_sig);
                        write(ln, HT); 
                        write(ln, HT); 
                        write(ln, s_sig); 
                        write(ln, HT); 
                        write(ln, c_out_sig); 
                        write(ln, HT); 
                        writeline(result_file, ln);
                    end if;
               end process recorder; 
                        
    
end behavior;