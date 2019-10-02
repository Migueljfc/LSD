library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LED_3Seconds is
	port(	clk	:	in	std_logic;
			ene	:	in	std_logic;
			led	:	out	std_logic);
end LED_3Seconds;

architecture Behavioral of LED_3Seconds is
signal N : integer := 0;

begin
process(clk, ene)
begin
if(rising_edge(clk)) then
	if (ene = '1') then 
	 N <= N + 1;
		if (N < 150000000) then
			led <= '1';
		else
			led <= '0';
		end if;

	end if;
	
end if;
end process;
end Behavioral;