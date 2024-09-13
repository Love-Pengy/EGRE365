entity testbench is 
end testbench;

architecture behavior of testbench is 

    signal in1Sig : bit_vector(0 to 7);
    signal out1Sig : bit_vector (0 to 3);
    
    begin
    
        stimulus : process
            begin
                in1Sig <= "00000000" after 10 ns, 
                          "00100101" after 20 ns,
                          "11010111" after 30 ns, 
                          "11011100" after 40 ns,
                          "11111111" after 50 ns, 
                          "00000001" after 60 ns,
                          "00000010" after 70 ns, 
                          "00000011" after 80 ns, 
                          "00000100" after 90 ns, 
                          "00000101" after 100 ns, 
                          "00000110" after 110 ns, 
                          "00000111" after 120 ns, 
                          "00001000" after 130 ns, 
                          "00001001" after 140 ns, 
                          "00001010" after 150 ns, 
                          "00001011" after 160 ns, 
                          "00001100" after 170 ns, 
                          "00001101" after 180 ns, 
                          "00001110" after 190 ns, 
                          "00001111" after 200 ns, 
                          "00010000" after 210 ns, 
                          "00010001" after 220 ns, 
                          "00010010" after 230 ns;                              
              wait;
        end process stimulus;
        
        
        DUT : entity work.mappee(mapper)
            port map(inVal => in1Sig, outVal => out1Sig);
            
        monitor : process
            begin
                wait;
        end process monitor;
end behavior;
