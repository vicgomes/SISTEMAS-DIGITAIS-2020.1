entity CSA is
	port( a,b: in  bit_vector(3 downto 0);
			  s: out bit_vector(4 downto 0);
		   cin: in  bit;
		  cout: out bit);
end CSA;

architecture carry_save_adder of CSA is

component soma1b is
	port(a,b,cin : in  bit;
			s,cout : out bit);
end component;

component CLA_4b is
	port( a,b: in  bit_vector(3 downto 0);
			  s: out bit_vector(3 downto 0);
	  	   cin: in  bit;
		  cout: out bit);
end component;

signal c: bit_vector(3 downto 0);
signal sum: bit_vector(3 downto 0);

begin

	s1b0: soma1b port map(a(0),b(0),'0',s(0),c(0));
	s1b1: soma1b port map(a(1),b(1),'0',sum(0),c(1));
	s1b2: soma1b port map(a(2),b(2),'0',sum(1),c(2));
	s1b3: soma1b port map(a(3),b(3),'0',sum(2),c(3));

	sum(3) <= '0';

	CLA: CLA_4b port map(c,sum,s(4 downto 1),'0',cout);

end carry_save_adder;