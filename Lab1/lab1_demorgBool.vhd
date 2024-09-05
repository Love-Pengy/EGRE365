entity demorg is
    port( A, B, C, D: in bit;
          G: out bit);
end demorg;

architecture simple of demorg is

begin

G <= ((NOT A OR B) AND NOT C) OR NOT D;

end simple;
