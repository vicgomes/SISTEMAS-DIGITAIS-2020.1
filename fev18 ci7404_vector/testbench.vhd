entity testbench is
end testbench;

architecture prupru of testbench is

component ci7404_vector is
port(A : in  bit_vector(5 downto 0);
	  Y : out bit_vector(5 downto 0));
end component;

signal input:  bit_vector(5 downto 0);
signal output: bit_vector(5 downto 0);

begin

dut: ci7404_vector port map(input, output);

	input <= "000000",
				"001010" after 10 ns,
				"110100" after 20 ns,
				"111001" after 30 ns,
				"000000" after 40 ns;

end prupru;