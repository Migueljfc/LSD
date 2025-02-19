library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity cronometroV2 is 
port( clk : in std_logic;
		en : in std_logic;
		led: out std_logic);
end cronometroV2;



architecture Behavioral of cronometroV2 is 
	signal cont : integer := 0;
	signal cnt : integer :=0;
	signal var_seg : unsigned (6 downto 0) := "1111111";
	signal var_milseg : unsigned (6 downto 0) := "1100011";
	signal s_led : std_logic := '0';

	
	begin 
	process(clk)
	begin
	
	if en = '1' then
	if(rising_edge(clk)) then
			cont <= cont + 1;
			if cont = 5000 then
				cont <= 0;
				var_milseg <= var_milseg - "0000001";
				if var_milseg(6 downto 0) = "0000000" then
					var_seg <= var_seg -"0000001";
					cnt <= cnt+1;
					var_milseg <= "1100011";
					if cnt = 1 then
						s_led <= not s_led;
						cnt <= 0;
					end if;
				end if;
				if var_seg(6 downto 0) = "0000000" then
					var_seg <= "1111111";
					if var_milseg(6 downto 0) = "0000000" then
						var_seg <= var_seg;
						var_milseg <= var_seg;
		end if;
end if;
end if;
end if;
	else 
	cnt <= 0;
	s_led <= '0';
	var_seg <= "1111111";
end if;
end process;
led <= s_led;
end Behavioral;