library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity coder is
	port(clk : in std_logic;
		  S0  : in std_logic;
		  S1 : in std_logic;
		  S2 : in std_logic;
		  S3 : in std_logic;
		  S4 : in std_logic;
		  S5 : in std_logic;
		  sel: out std_logic_vector(2 downto 0));
end coder;

architecture Behavioral of coder is
	signal s_s : std_logic_vector(5 downto 0);
	begin
	process(clk)
	begin
	s_s(5) <= s5;
	s_s(4) <= s4;
	s_s(3) <= s3;
	s_s(2) <= s2;
	s_s(1) <= s1;
	s_s(0) <= s0;
	if (rising_edge(clk)) then
	
		if(s_s = "000001") then
			sel<="000";
		elsif(s_s = "000010") then
			sel<="001";
		elsif(s_s = "000100") then
			sel<="010";
		elsif(s_s = "001000") then
			sel<="011";
		elsif(s_s = "010000") then
			sel <="100";
		elsif(s_s = "100000") then
			sel <= "111";
	end if;
	end if;
	end process;
end Behavioral;