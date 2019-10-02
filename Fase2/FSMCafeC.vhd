library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

	entity FSMCafeC is
		port(	clk : in std_logic;
				M5	: in std_logic;
				M10	: in std_logic;
				M20	: in std_logic;
				M50	: in std_logic;
				en		: in std_logic;
				tr		: in std_logic;
				led   : out std_logic;
				money : out std_logic_vector(6 downto 0));
end FSMCafeC;

architecture Behavioral	of FSMCafeC is
	
	type TState is (E0, E1, E2, E3, E4, E5, E6,E7,E8,E9,E10,E11,E12,E13,E14,E15);
	signal PS, NS : TState;
begin
sync_proc:process(clk)
	begin
		if (rising_edge(clk)) then
			if (en = '1') then
				PS <= NS;
			else
				PS <= E0;
			end if;
		end if;
end process;

com_proc: process(PS, M5, M10, M20, M50)
begin
	led <= '0';
	money <= "0000000";
	
	case PS is
		when E0=>
			money <= "0011110";
			
			if(M5 = '1') then
			NS <= E1;
							
			elsif(M10 = '1') then 
				NS <= E2;
						
			elsif(M20 = '1') then 
				NS <= E4;
						
			elsif(M50 = '1') then
				NS <= E10;
			else 
				NS <= E0;
			end if;
						
		when E1 =>
			money <= "0011001";			
			if(M5 = '1') then 
				NS <= E2;
						
			elsif(M10 = '1') then 
				NS <= E3;
						
			elsif(M20 = '1') then 
				NS <= E5;
						
			elsif(M50 = '1') then
				NS <= E11;
			else 
				NS <= E1;
			end if;
						
		when E2 =>
			money <= "0010100";
			if(M5 = '1') then 
				NS <= E3;
							
			elsif(M10 = '1') then 
				NS <= E4;
					
			elsif(M20 = '1') then 
				NS <= E6;
						
						
			elsif(M50 = '1') then 
					NS <= E12;
			else 
				NS <= E2;
						end if;
					
				
		when E3 => 
			money <= "0001111";
			if(M5 = '1') then 
				NS <= E4;
			
			elsif(M10 = '1') then 
				NS <= E5;
									
			elsif(M20 = '1') then 
				NS <= E6;
				
			elsif(M50 = '1') then
				NS <= E13;
						
			else 
				NS <= E3;
			end if;
			
		when E4 =>
			money <= "0001010";
			if(M5 = '1') then 
				NS <= E5;
										
			elsif(M10 = '1') then 
				NS <= E6;
				
							
			elsif(M20 = '1') then 
				NS <= E8;
			
			elsif(M50 = '1') then 
				NS <= E14;
				
			else 
				NS <= E4;
			end if;
						
		when E5 => 
			money <= "0000101";
			if(M5 = '1') then 
				NS <= E6;
						
			elsif(M10 = '1') then 
				NS <= E7;						
						
			elsif(M20 = '1') then 
				NS <= E9;				
						
			elsif(M50 = '1') then 
				NS <= E15;
					
			else 
				NS <= E5;
			end if;
						
						
		when E6 =>
		money <= "0000000";
		if tr = '0' then
			NS <= E6;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
		
		when E7 => 
		money <= "0000101";
		if tr = '0' then
			NS <= E7;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
		
		when E8 => 
		money <= "0001010";
		if tr = '0' then
			NS <= E8;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
		
		when E9 => 
		money <= "0001111";
		if tr = '0' then
			NS <= E9;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
		
		when E10 => 
		money <= "0010100";
		if tr = '0' then
			NS <= E10;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
			
		when E11 => 
		money <= "0011001";
		if tr = '0' then
			NS <= E11;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
		
		when E12 => 
		money <= "0011110";
		if tr = '0' then
			NS <= E12;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
		
		when E13 => 
		money <= "0100011";
		if tr = '0' then
			NS <= E13;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
		
		when E14 =>
		money <= "0101000";
		if tr = '0' then
			NS <= E14;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;
		
		when E15 => 
		money <= "0101101";
		if tr = '0' then
			NS <= E15;
			led <= '1';
		else
			NS <= E0;
			led <= '0';
		end if;

	end case;
end process;
end Behavioral;