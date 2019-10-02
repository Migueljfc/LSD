library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

	entity LED is
		port(	clk     : in std_logic;
				enSW0	  : in std_logic;
				enSW1   : in std_logic;
				enSW2   : in std_logic;
				enSW3   : in std_logic;
				en		  : in std_logic;
				en2 	  : in std_logic;
				en_cron : out std_logic;
				led     : out std_logic);
end LED;

architecture Behavioral of LED is
	
	type TState is (E0, E1, E2);
	signal PS, NS : TState;
	
begin
	sync_proc:process(clk)
	begin
		if (rising_edge(clk)) then
			if (enSW0 = '0' and enSW1 = '0' and enSW2 = '0' and enSW3 = '0') then
				PS <= E0;
			else
				PS <= NS;
		end if;
	end if;
	end process;
	
com_proc: process(PS, en, en2)
begin
	case PS is
	----------------------------
	when E0 =>
	led <= '0';
	en_cron <= '0';
	if en = '1' then
		NS <= E1;
	else
		NS <= E0;
		led <= '0';
		en_cron <= '0';
	end if;
	------------------------
	when E1=>
		if en2= '0' then
			led <= '1';
			en_cron <= '1';
			NS <= E1;
		else
			Ns <= E2;

		end if;
		-----------------------
	when E2=>
		if en = '1' then
			led <= '0';
			en_cron <= '0';
			NS <= E2;
		else
		NS <= E0;
		end if;
	end case;
end process;
end Behavioral;