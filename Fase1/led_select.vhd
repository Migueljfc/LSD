library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity led_select is
		port(	clk : in std_logic;
				led0		: in std_logic;
				led1		: in std_logic;
				led2		: in std_logic;
				led3		: in std_logic;
				ledOut	: out std_logic);
end led_select;

architecture Behavioral of led_select is
begin
process(clk)
begin
	if(rising_edge(clk)) then
		if (led0 = '1' or led1 = '1' or led2 = '1' or led3 = '1') then
			ledOut <= '1';
		else
			ledOut <= '0';
		end if;
	end if;
end process;
end Behavioral;