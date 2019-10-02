library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mostrate is
	port( clk	 : in std_logic;
			money0 : in std_logic_vector (6 downto 0);
			money1 : in std_logic_vector (6 downto 0);
			money2 : in std_logic_vector (6 downto 0);
			money3 : in std_logic_vector (6 downto 0);
			sel	 : in std_logic_vector(2 downto 0);
			mo : out std_logic_vector(6 downto 0));
end mostrate;

architecture Behavioral of mostrate is

begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(sel ="000") then
				mo <= "0000000";
			elsif(sel ="001") then
				mo <=money0;
			elsif(sel = "010") then
				mo <=money1;
			elsif(sel = "011") then
				mo <=money2;
			elsif(sel ="100") then
				mo <=money3;
			else
			mo <= "1111111";--cut to credits
			end if;
		end if;
	end process;
end Behavioral;