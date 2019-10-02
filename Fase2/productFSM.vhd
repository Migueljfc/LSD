library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity productFSM is 
	port(clk     : in  std_logic;
		  reset   : in std_logic;
		  CafeC   : in  std_logic;
		  CafeL   : in  std_logic;
		  ChocoQ  : in  std_logic;
		  Cappu   : in  std_logic;
		  En_CafeC  : out std_logic;
		  En_CafeL  : out std_logic;
		  En_ChocoQ : out std_logic;
		  En_Cappu  : out std_logic;
		  EnableBin : out std_logic;
		  S0  : out std_logic;
		  S1 : out std_logic;
		  S2 : out std_logic;
		  S3 : out std_logic;
		  S4 : out std_logic;
		  S5 : out std_logic);
end productFSM;

architecture Behavioral of productFSM is 
	type TState is (E0,TR,CC,CL,CQ,CP);
	signal PS,NS : TState;
begin 
	sync_proc:process(clk,CafeC,CafeL,ChocoQ)
	begin
		if rising_edge(clk) then 
			if(reset = '1') then 
				PS <= E0;
				
			elsif (CafeC = '1' and CafeL = '1' and ChocoQ = '1' and Cappu = '1') then 
				PS <= TR;
	
			elsif(((CafeC = '1') and (CafeL = '1')) or ((CafeC = '1') and (ChocoQ = '1') )or ((CafeC = '1') and (Cappu = '1')) or ((CafeL = '1') and (ChocoQ = '1')) or ((CafeL = '1') and (Cappu = '1')) or ((ChocoQ = '1') and ( Cappu = '1'))) then
				PS <= TR;
				
			elsif((CafeC = '1' and CafeL = '1' and ChocoQ = '1') or (CafeC = '1' and CafeL = '1' and Cappu = '1') or (CafeC = '1' and ChocoQ = '1' and Cappu = '1') or (CafeL = '1' and ChocoQ = '1' and Cappu = '1')) then
				PS <= TR;

			
			else 
				PS <= NS;
			end if ;
		end if;
	end process;
	comb_proc:process(PS,CafeC,CafeL,ChocoQ,Cappu)
	begin
		S0 <= '0';
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		S4 <= '0';
		S5 <= '0';
		
		En_CafeC <= '0';
		En_CafeL <= '0';
		En_ChocoQ <= '0';
		En_Cappu <= '0';
		case PS is 
			when E0 =>
			enableBin <= '1';
			S0<= '1';
				
				if (CafeC = '1') then 
						NS <= CC;
				elsif (CafeL = '1') then 
					NS <= CL;
				elsif(ChocoQ = '1') then 
					NS <= CQ;
				elsif(Cappu = '1') then 
					NS <= CP;
				else 
					NS <= E0;
				end if ;
			when TR => 
			enableBin <= '0';
			S5 <= '1';
				NS <= E0;
			when CC =>
			S1 <= '1';
				En_CafeC <= '1';
				if (CafeC = '0') then 
					NS <= E0;
				else
					NS <= CC;
					
				end if;
					
			when CL =>
			enableBin <= '1';
			S2 <= '1';
				En_CafeL <= '1';
				if (CafeL = '0') then 
					NS <= E0;
				else
					NS <= CL;
				end if;
			when CQ =>
			enableBin <= '1';
			S3 <= '1';
				En_ChocoQ <= '1';
			
				if (ChocoQ = '0') then 
					NS <= E0;
				else
					NS<=CQ;
				end if;
			when CP => 
			enableBin <= '1';
			S4 <= '1';
				En_Cappu <= '1';
				if (Cappu = '0') then 
					NS <= E0;
				else 
					NS <= CP;
				end if;
		end case;
	end process;

end Behavioral;