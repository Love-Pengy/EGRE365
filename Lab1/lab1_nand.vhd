entity nand_example is
    port( in1: in bit;
          in2: in bit;
          out1: out bit);
end nand_example;

architecture simple of nand_example is

begin
out1 <= in1 NAND in2;

end simple;
