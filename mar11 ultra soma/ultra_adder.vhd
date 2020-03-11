entity ultra_adder is
	port( a,b: in  bit_vector(3 downto 0);
		 	  s: out bit_vector(3 downto 0);
		   cin: in  bit;
		  cout: out bit);
end ultra_adder;

architecture help of ultra_adder is

component CLA_4b is
	port( a,b: in  bit_vector(3 downto 0);
			  s: out bit_vector(3 downto 0);
	  	   cin: in  bit;
		  cout: out bit);
end component;

signal s0,s1: bit_vector(3 downto 0);
signal cout0,cout1: bit;

begin

cla0: CLA_4b port map(a,b,s0,'0',cout0);
cla1: CLA_4b port map(a,b,s1,'1',cout1);

s <= s0 when cin='0' else s1;
cout <= cout0 when cin='0' else cout1;

end help;