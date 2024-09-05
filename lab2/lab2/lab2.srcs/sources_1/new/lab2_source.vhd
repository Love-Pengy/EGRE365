entity mappee is
    port(inVal: IN bit_vector(0 to 7);
         outVal: OUT bit_vector(0 to 3));
end mappee;


architecture mapper of mappee is
begin 
-- -------------------------
-- PART ONE                - 
----------------------------

--    process(inVal)
--        variable test : bit;
--        begin
--            test := '1';
--            for i in 0 to 7 LOOP
--                test := inVal(i) AND test;
--            end LOOP;
--        outVal(0) <= test;
--    end process;
    process(inVal)
    variable test : bit;
    variable count : bit;
        begin
            if(inVal = "11111111")then 
                outVal(0) <= '1';
            else
                outVal(0) <= '0';
            end if;
-- -------------------------
-- PART TWO                - 
----------------------------
--            test := '0';
--            for i in 0 to 7 LOOP
--                test := inVal(i) OR test;
--            end LOOP;
--            outVal(1) <= test;
            if(inVal = "00000000")then 
                outVal(1) <= '0';
            else
                outVal(1) <= '1';
            end if;
-- -------------------------
-- PART THREE                - 
----------------------------
            count := '0';
            for i in 0 to 7 LOOP
                if(inVal(i) = '1')then
                    count := count XOR '1';
                end if;
            end LOOP;
            outVal(2) <= count;
        end process;
-- -------------------------
-- PART THREE              - 
----------------------------
        outVal(3) <= inVal(7) AND '1';
end mapper;






