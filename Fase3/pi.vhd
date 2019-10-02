library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pi is
		port(	clk   : in  std_logic;
				en		: in  std_logic;
				mi		: in  std_logic_vector(6 downto 0);
				mo    : out std_logic_vector(6 downto 0));
end pi;

architecture Behavioral of pi is
	
begin
process(clk)
	begin
		if (rising_edge(clk)) then
			if en = '1' then
				mo <= "1111111";
			else
				mo <= mi;
			end if;
		end if;
	end process;
end Behavioral;