entity ci7404_vector is
	port(A : in  bit_vector(5 downto 0);
		  Y : out bit_vector(5 downto 0));
end ci7404_vector;

architecture blablabla of ci7404_vector is
begin
	
	Y <= not A;
	
end blablabla;