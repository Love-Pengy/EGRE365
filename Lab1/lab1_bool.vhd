entity bool_partB1 is
    port( A, B, C, D: in bit;
          F: out bit);
end bool_partB1;

architecture simple of bool_partB1 is

begin

F <= ((A AND NOT B) OR C) AND D;

end simple;
