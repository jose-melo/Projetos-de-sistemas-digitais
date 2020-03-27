library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity JogoReacao_v1 is
	port(
		jogar     : in std_logic;
		resposta  : in std_logic;
		reset	  : in std_logic;
		clock 	  : in std_logic;
		sel_mux     : in std_logic_vector(1 downto 0);
		ligado	  : out std_logic;
		pulso 	  : out std_logic;
		estimulo  : out std_logic;
		erro	  : out std_logic;
		pronto	  : out std_logic;
		tempo 	  : out std_logic_vector(15 downto 0);
		db_PInter, db_PMed : out std_logic;
		db_estado_7 : out std_logic_vector(6 downto 0);
		saida7seg   : out std_logic_vector(27 downto 0);
		leds        : out std_logic_vector(9 downto 0);
		dis4        : out std_logic_vector(6 downto 0)
	);
end entity;

architecture JogoReacao_arch of JogoReacao_v1 is

	component interface_leds_botoes_v2 is
		port (
			clock    : in  std_logic;
			reset    : in  std_logic;
			iniciar  : in  std_logic;
			resposta : in  std_logic;
			ligado   : out std_logic;
			estimulo : out std_logic;
			pulso    : out std_logic;
			erro     : out std_logic;
			pronto   : out std_logic;
			estado   : out STD_LOGIC_VECTOR(3 downto 0);
			db_clock    : out STD_LOGIC;    -- sinais
			db_erro     : out STD_LOGIC;    -- de
			db_estimulo : out STD_LOGIC     -- depuração
		);
	end component interface_leds_botoes_v2;

	component medidor_largura is
		port(
			clock, reset : in  std_logic;
			liga, sinal  : in  std_logic;
			display0     : out std_logic_vector(3 downto 0);	--digito 0
			display1     : out std_logic_vector(3 downto 0);	--digito 1
			display2     : out std_logic_vector(3 downto 0);	--digito 2
			display3     : out std_logic_vector(3 downto 0);	--digito 3
			display5     : out std_logic_vector(3 downto 0);	--estado
			fim          : out std_logic;
			pronto       : out std_logic;
			db_largura   : out std_logic_vector(15 downto 0);	-- sinais
			db_clock     : out std_logic;						-- de
			db_zeraCont  : out std_logic;						-- depuração
			db_contacont : out std_logic
		);
	end component medidor_largura;

	component controladorJogo is
	port(

		jogar 	 : in std_logic;
		clock 	 : in std_logic;
		reset 	 : in std_logic;
		erroInterface : in std_logic;
		prontoInterface : in std_logic;
		prontoMedidor : in std_logic;
		fimEspera	  : in std_logic;
		fimContador	  : in std_logic;
		estado		  : out std_logic_vector(3 downto 0);
		ligaEspera	  : out std_logic;
		ligaInterface : out std_logic;
		ligaMedidor	  : out std_logic;
		reset_out : out std_logic;
		ligado : out std_logic;
		pronto : out std_logic;
		saidaErro : out std_logic
	);
	end component;

	component mux2x1_nbits is
	    generic (
	        N: integer := 4
	    );
	    port (
	        A, B: in  std_logic_vector (N-1 downto 0);
	        S:    in  std_logic;
	        Y:    out std_logic_vector (N-1 downto 0)
	    );
	end component;

	component mux4x1_nbits is
	    generic (
	        N: integer := 4
	    );
	    port (
	        A,B,C,D: in  std_logic_vector (N-1 downto 0);
	        S:       in  std_logic_vector (1 downto 0);
	        Y:       out std_logic_vector (N-1 downto 0)
	    );
	end component;

	component hexa7seg is
		 port (
			  hexa : in std_logic_vector(3 downto 0);
			  sseg : out std_logic_vector(6 downto 0)
		 );
	end component;

	signal display0_in  : std_logic_vector(3 downto 0);
	signal display1_in  : std_logic_vector(3 downto 0);
	signal display2_in  : std_logic_vector(3 downto 0);
	signal display3_in  : std_logic_vector(3 downto 0);
	signal fim_in, erroInterface_in, prontoInterface_in, prontoMedidor_in, fimEspera_in, fimContador_in: std_logic;
	signal ligaEspera_in, ligaInterface_in, ligaMedidor_in, pulso_in, saidaErro_in: std_logic;
	signal tempo_in, tempo_in_final: std_logic_vector(15 downto 0);
	signal reset_in, reset_in2, db_zeraCont, db_contaCont, fim, db_clock, ligado_inter, ligadoCtr, estimulo_in, pronto_in: std_logic;
	signal ligadov, db_clockv, db_zeraContv, zero, db_contaContv, fim_inv, estimulov, prontov, ligado_interv, prontoMedidor_inv, prontoInterface_inv,erroInterface_inv, pulso_inv : std_logic_vector(0 downto 0);
	signal led0, led1, led2, led3, led4, led5, led6, led7, led8, led9 : std_logic_vector(0 downto 0);
	signal db_estado, estado_medidor, estado_leds_botoes : std_logic_vector(3 downto 0);
	signal mux_hex0, mux_hex1, mux_hex2, mux_hex3, mux_hex4, mux_hex5 : std_logic_vector(3 downto 0);
begin


	INTERFACE: interface_leds_botoes_v2 port map(clock, reset_in2, ligaInterface_in, resposta, ligado_inter, estimulo_in, pulso_in,
	erroInterface_in, prontoInterface_in, estado_leds_botoes, open, open, open);

	pronto <= pronto_in;
	pulso <= pulso_in;
	estimulo <= estimulo_in;
	reset_in2 <= reset or reset_in;

	MEDIDOR: medidor_largura port map(clock, reset_in2, ligaMedidor_in, pulso_in, display0_in, display1_in,
		display2_in, display3_in, estado_medidor, fim_in, prontoMedidor_in, open, db_clock, db_zeraCont, db_contaCont);


	CONTROLADOR: controladorJogo port map(jogar, clock, reset, erroInterface_in, prontoInterface_in,
		prontoMedidor_in, '0', fim_in, db_estado, open, ligaInterface_in, ligaMedidor_in,
		reset_in, ligadoCtr, pronto_in, saidaErro_in);

	ligado <= ligadoCtr;
	tempo_in(3 downto 0) <= display0_in;
	tempo_in(7 downto 4) <= display1_in;
	tempo_in(11 downto 8) <= display2_in;
	tempo_in(15 downto 12) <= display3_in;

	tempo <= tempo_in_final;

	MUX: mux2x1_nbits generic map(16) port map(tempo_in, "1001100110011001", saidaErro_in, tempo_in_final);

	erro <= saidaErro_in;

	db_PInter <= prontoInterface_in;
	db_PMed <= prontoMedidor_in;

	DIS3: hexa7seg port map(mux_hex3, saida7seg(27 downto 21));
	DIS2: hexa7seg port map(mux_hex2, saida7seg(20 downto 14));
	DIS1: hexa7seg port map(mux_hex1, saida7seg(13 downto 7));	-- Conexão da saída aos displays de 7 segmentos
	DIS0: hexa7seg port map(mux_hex0, saida7seg(6 downto 0));

	DIS_ESTADO : hexa7seg port map (mux_hex5, db_estado_7);
	DIS_VAZIO  : hexa7seg port map (mux_hex4, dis4);

	-- multiplexadores dos displays
	MUX_DISP0: mux4x1_nbits
		generic map (N=>4)
		port map (tempo_in_final(3 downto 0), display0_in, "0000", "0000", sel_mux, mux_hex0);

	MUX_DISP1: mux4x1_nbits
		generic map (N=>4)
		port map (tempo_in_final(7 downto 4), display1_in, "0000", "0000", sel_mux, mux_hex1);

	MUX_DISP2: mux4x1_nbits
		generic map (N=>4)
		port map (tempo_in_final(11 downto 8), display2_in, "0000", "0000", sel_mux, mux_hex2);

	MUX_DISP3: mux4x1_nbits
		generic map (N=>4)
		port map (tempo_in_final(15 downto 12), display3_in, "0000", "0000", sel_mux, mux_hex3);

	MUX_DISP4: mux4x1_nbits
		generic map (N=>4)
		port map ("0000", "0000", "0000", "0000", sel_mux, mux_hex4);

	MUX_DISP5: mux4x1_nbits
		generic map (N=>4)
		port map (db_estado, estado_medidor, estado_leds_botoes, "0000", sel_mux, mux_hex5);

	ligadov(0) <= ligadoCtr;
	zero(0) <= '0';
	MUX_LED0: mux4x1_nbits
		generic map (N=>1)
		port map(ligadov, zero, zero, zero, sel_mux, led0);
		
	db_clockv(0) <= db_clock;
	MUX_LED1: mux4x1_nbits
		generic map (N=>1)
		port map("0", db_clockv, "0", "0", sel_mux, led1);
		
	db_zeraContv(0) <= db_zeraCont;
	MUX_LED2: mux4x1_nbits
		generic map (N=>1)
		port map("0", db_zeraContv, "0", "0", sel_mux, led2);
		
	db_contaContv(0) <= db_contaCont;
	MUX_LED3: mux4x1_nbits
		generic map (N=>1)
		port map("0", db_contaContv, "0", "0", sel_mux, led3);
	
	fim_inv(0) <= fim_in;
	MUX_LED4: mux4x1_nbits
		generic map (N=>1)
		port map("0", fim_inv, "0", "0", sel_mux, led4);
		
	ligado_interv(0) <= ligado_inter;
	MUX_LED5: mux4x1_nbits
		generic map (N=>1)
		port map("0", "0", ligado_interv, "0", sel_mux, led5);
		
	estimulov(0) <= estimulo_in;
	MUX_LED6: mux4x1_nbits
		generic map (N=>1)
		port map("0", "0", estimulov, "0", sel_mux, led6);
		
	pulso_inv(0) <= pulso_in;
	MUX_LED7: mux4x1_nbits
		generic map (N=>1)
		port map("0", "0", pulso_inv, "0", sel_mux, led7);
		
	erroInterface_inv(0) <= erroInterface_in;
	MUX_LED8: mux4x1_nbits
		generic map (N=>1)
		port map("0", "0", erroInterface_inv, "0", sel_mux, led8);
	
	prontov(0) <= pronto_in;
	prontoMedidor_inv(0) <= prontoMedidor_in;
	prontoInterface_inv(0) <= prontoInterface_in;
	MUX_LED9: mux4x1_nbits
		generic map (N=>1)
		port map(prontov, prontoMedidor_inv, prontoInterface_inv, "0", sel_mux, led9);
	leds(0) <= led0(0);
	leds(1) <= led1(0);
	leds(2) <= led2(0);
	leds(3) <= led3(0);
	leds(4) <= led4(0);
	leds(5) <= led5(0);
	leds(6) <= led6(0);
	leds(7) <= led7(0);
	leds(8) <= led8(0);
	leds(9) <= led9(0);
	
	
end architecture;
