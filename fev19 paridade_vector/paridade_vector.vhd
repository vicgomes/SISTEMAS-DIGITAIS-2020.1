entity paridade_vector is
	generic(size: integer := 24);
	port(input : in  bit_vector(size-1 downto 0);
			  bp : out bit);
end paridade_vector;

architecture trambolho of paridade_vector is

signal s: bit_vector(size downto 0);

begin

s(0) <= '0';
laco: for i in 0 to size-1 generate
	s(i+1) <= s(i) xor input(i);
end generate;

bp <= s(size);

end trambolho;