library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM is
	port(clk     : in std_logic;
		  enable  : in std_logic;
		  reset   : in std_logic;
		  enable2 : in std_logic;
		  money   : in std_logic_vector(6 downto 0);
		  money2  : in std_logic_vector(6 downto 0);
		  dataOut : out std_logic_vector(9 downto 0);
		  moneyOut: out std_logic_vector(6 downto 0));
		  --EnBin   : out std_logic);
end ROM;

architecture Behavioral of ROM is

	subtype TDataWord is std_logic_vector(9 downto 0);
	type TROM is array (0 to 10) of TDataWord;
	constant c_memory: TROM := ("1111111111", "0111111111", "0011111111", "0001111111",
	"0000111111", "0000011111", "0000001111", "0000000111", "0000000011", "0000000001", "0000000000");
	
	signal s_address : unsigned(6 downto 0);
	signal en2 : std_logic;
begin 
process(clk)
begin
	
	if(rising_edge(clk)) then
	--EnBin <= '1';
			if (reset = '1') then 
				dataOut <= c_memory(0);
				
				
			else
		
			if (enable = '1') then
				if(enable2 = '1') then 
						s_address <= unsigned(money) / "101";
				--if(s_address = 0 and money > "0000000") then 
					--EnBin <= '0';
				--else
						dataOut <= c_memory(to_integer(unsigned(s_address))); 
						
				else
					s_address <= unsigned(money)/ "101";
					dataOut <= c_memory(to_integer(unsigned(s_address)));
				end if;
				end if;
			end if;
		end if;
	
end process;
moneyOut<= std_logic_vector(s_address);
end Behavioral;
	