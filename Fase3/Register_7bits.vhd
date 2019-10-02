library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register_7bits is
	port(clk    : in std_logic;
		  input  : in std_logic_vector(6 downto 0);
		  output : out std_logic_vector(6 downto 0));
end Register_7bits;

architecture Behavioral of Register_7bits is
begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			output <= input;
		end if;
	end process;

end Behavioral;