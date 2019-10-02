library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CoffeeMachine is 
	port(SW       : in std_logic_vector(17 downto 0);
		  CLOCK_50 : in std_logic;
		  KEY      : in std_logic_vector(3 downto 0);
		  HEX0     : out std_logic_vector(6 downto 0);
		  HEX1     : out std_logic_vector(6 downto 0 );
		  HEX2     : out std_logic_vector(6 downto 0 );
		  HEX3     : out std_logic_vector(6 downto 0 );
		  LEDR     : out std_logic_vector(17 downto 0);
		  LEDG     : out std_logic_vector(8 downto 0));
	
end CoffeeMachine;

architecture Shell of CoffeeMachine is 
------money---------
signal s_money0 : std_logic_vector(6 downto 0);
signal s_money1 : std_logic_vector(6 downto 0);
signal s_money2 : std_logic_vector(6 downto 0);
signal s_money3 : std_logic_vector(6 downto 0);
signal s_moneyF : std_logic_vector(6 downto 0);
---------FSM'S------------------
signal s_En_CC : std_logic;
signal s_En_Bin : std_logic;
signal s_En_CL : std_logic;
signal s_En_CQ : std_logic;
signal s_En_CP : std_logic;
---- encode -------------
signal s_S0,s_S1,s_S2,s_S3,s_S4,s_S5 : std_logic;
signal s_Sel : std_logic_vector(2 downto 0);

-----------------led--------------------------------
signal s_led0,s_led1,s_led2,s_led3,s_en1,s_en2 : std_logic;
------------------------7 seg----------------------
signal s_dataout1 : std_logic_vector(3 downto 0);
signal s_dataout2 : std_logic_vector(3 downto 0);
---------------------------------------------
signal s_start : std_logic;
signal s_reset : std_logic;
-------------------------KEYS----------------------	
signal s_KEY0 : std_logic;
signal s_KEY1 : std_logic;
signal s_KEY2 : std_logic;
signal s_KEY3 : std_logic;
---------------------piscar------------------------
signal s_tr : std_logic;
signal en_cronV2 : std_logic;
signal en_pi : std_logic;
signal s_moneyPi : std_logic_vector(6 downto 0);
signal s_piscar00 : std_logic_vector(6 downto 0);
signal s_dataOut3 : std_logic_vector(3 downto 0);
signal s_dataOut4 : std_logic_vector(3 downto 0);
-------------------ROM------------------------
signal s_change : std_logic_vector(9 downto 0);
signal s_sinal, s_sinal2 : std_logic_vector(6 downto 0);
signal s_cancel : std_logic;


	
begin 

		debaunce_KEY0: entity work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq => 50000,
							mSecMinInWidth => 100,
							inPolarity		 => '0',
							outPolarity	 => '1')
			port map(refClk		 => CLOCK_50,
						dirtyIn		 => KEY(0),
						pulsedOut	 => s_KEY0);
						
		debaunce_KEY1: entity work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq => 50000,
							mSecMinInWidth => 100,
							inPolarity		 => '0',
							outPolarity	 => '1')
			port map(refClk		 => CLOCK_50,
						dirtyIn		 => KEY(1),
						pulsedOut	 => s_KEY1);
						
		debaunce_KEY2: entity work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq => 50000,
							mSecMinInWidth => 100,
							inPolarity		 => '0',
							outPolarity	 => '1')
			port map(refClk		 => CLOCK_50,
						dirtyIn		 => KEY(2),
						pulsedOut	 => s_KEY2);
		
		debaunce_KEY3: entity work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq => 50000,
							mSecMinInWidth => 100,
							inPolarity		 => '0',
							outPolarity	 => '1')
			port map(refClk		 => CLOCK_50,
						dirtyIn		 => KEY(3),
						pulsedOut	 => s_KEY3);
-------------- Main FSM -----------------
		product_select: entity work.productFSM(Behavioral)
					port map(clk   =>CLOCK_50,
								reset => SW(4),
								CafeC  => SW(0),
								CafeL  => SW(1),
								ChocoQ => SW(2),
								Cappu  => SW(3),
								En_CafeC => s_En_CC,
								En_CafeL => s_En_CL,
						      En_ChocoQ => s_En_CQ,
						      EN_Cappu  => s_En_CP,
								EnableBin => s_En_Bin,
								S0 => s_s0,
								S1 => s_S1,
								S2 => s_S2,
								S3 => s_s3,
								S4 => s_S4,
								S5 => s_S5);

-------------FSM's-----------					
								
		cafe_curto: entity work.FSMCafeC(Behavioral)
			port map(clk => CLOCK_50,
						en => s_En_CC,
						M5 => s_KEY0,
						M10 => s_KEY1,
						M20 => s_KEY2,
						M50 => s_KEY3,
						tr  => s_en2,
						led => s_led0,
						money => s_money0);
						
			
		cafe_longo: entity work.FSMCafeL(Behavioral)
			port map(clk => CLOCK_50,
						en => s_En_CL,
						M5 => s_KEY0,
						M10 => s_KEY1,
						M20 => s_KEY2,
						M50 => s_KEY3,
						tr  => s_en2,
						led => s_led1,
						money => s_money1);
						
						
		chocolate_quente: entity work.FSMChocoQ(Behavioral)
			port map(clk => CLOCK_50,
						en => s_En_CQ,
						M5 => s_KEY0,
						M10 => s_KEY1,
						M20 => s_KEY2,
						M50 => s_KEY3,
						tr  => s_en2,
						led => s_led2,
						money => s_money2);
						
		Cappuccino: entity work.FSMCapp(Behavioral)
			port map(clk => CLOCK_50,
						en => s_En_CP,
						M5 => s_KEY0,
						M10 => s_KEY1,
						M20 => s_KEY2,
						M50 => s_KEY3,
						tr  => s_en2,
						money => s_money3,
						led => s_led3);
-------------------------------------------------
	encoder: entity work.coder(Behavioral)
		port map(clk => CLOCK_50,
					S0  => s_S0,
					S1  => s_S1,
					S2  => s_S2,
					S3  => s_S3,
					S4  => s_S4,
					S5  => s_S5,
					sel => s_Sel);
	
						
	multiplexer: entity work.mostrate(Behavioral)
			port map(clk => CLOCK_50,
						 money0 => s_money0,
						 money1 => s_money1,
						 money2 => s_money2,
						 money3 => s_money3,
						 sel    => s_Sel,
						 mo     => s_moneyF);
----------------led---------------------------
	LedSelect: entity work.led_select(Behavioral)
		port map(clk => CLOCK_50,
					led0 => s_led0,
					led1 => s_led1,
					led2 => s_led2,
					led3 => s_led3,
					ledOut => s_en1);
	cronometro : entity work.cronometrp(Behavioral)
		port map(clk => CLOCK_50,
					en  => s_en1,
					led => s_en2);
					
					
	LED_3seconds: entity work.LED(Behavioral)
		port map (clk => CLOCK_50,
					 enSW0 => SW(0),
					 enSW1 => SW(1),
					 enSW2 => SW(2),
					 enSW3 => SW(3),
					 en  => s_en1,
					 en2 => s_en2,
					 en_cron => en_cronV2,
					 led => LEDG(8));

-----------------piscar---------------------
cronometro_piscar: entity work.cronometroV2(Behavioral)
	port map(clk => CLOCK_50,
				en  => en_cronV2,
				led => en_pi);
piscar10HZ : entity work.pi(Behavioral)
	port map(clk => CLOCK_50,
				en  => en_pi,
				mi  => s_moneyF,
				mo  => s_moneyPi);
---------------------ROM-----------------------------------
Rom  : entity work.ROM(Behavioral)
	port map(clk    => CLOCK_50,
				enable => s_en2,
				enable2 => SW(5),
				reset  => SW(17),
				money  => s_moneyF,
				dataOut => LEDR(9 downto 0),
				moneyOut => s_sinal ,
				money2  => s_sinal2);

 register_7bits: entity work.Register_7bits(Behavioral)
				port map(clk => CLOCK_50,
							input => s_sinal,
							output => s_sinal2);
------------------7 seg --------------------		

		BinarytoBCD1: entity work.to7SegDecoder(Behavioral)
			port map(dataIn => s_moneyPi,
						dataOut1 => s_dataout1,
						dataOut2 => s_dataout2);
		bin7seg_money1hex0 : entity work.Bin7SegDecoder(Behavioral)
			port map(enable => s_En_Bin ,
						binInput => s_dataOut2,
						decOut_n => HEX0);
		bin7seg_money1hex1 : entity work.Bin7SegDecoder(Behavioral)
			port map(enable => s_En_Bin ,
						binInput => s_dataOut1,
						decOut_n => HEX1);
-------------------- piscar 00 -----------------------------
		piscar_00 : entity work.pi(Behavioral)
			port map(clk => CLOCK_50,
						en => en_pi,
						mi => "0000000",
						mo => s_piscar00);
		BinarytoBCD00 : entity work.to7SegDecoder(Behavioral)
			port map(dataIn => s_piscar00,
						dataOut1 => s_dataOut3,
						dataOut2 => s_dataOut4);
		bin7seg_money1hex2 : entity work.Bin7SegDecoder(Behavioral)
			port map(enable => s_En_Bin ,
						binInput => s_dataOut3,
						decOut_n => HEX2);
		bin7seg_money1hex3 :  entity work.Bin7SegDecoder(Behavioral)
			port map(enable => s_En_Bin  ,
						binInput => s_dataOut4,
						decOut_n => HEX3);
	
end Shell;
		
						
						
		