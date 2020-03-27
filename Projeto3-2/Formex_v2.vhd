library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
      
      
entity Formex_v2 is
	port(
	   jogar     	: in  std_logic;
		resposta1  	: in  std_logic;
		resposta2  	: in  std_logic;
		resposta3  	: in  std_logic;
		reset	  		: in  std_logic;
		clock 	  	: in  std_logic;
		pseudoclock	: in  std_logic;
		sel_mux     : in  std_logic_vector(1 downto 0);
		ligado	  	: out std_logic;
		pulso 	  	: out std_logic;
		estimulo  	: out std_logic;
		erro		  	: out std_logic;
		pronto		: out std_logic;
		tempo 	 	: out std_logic_vector(15 downto 0);
		tempoFinal_db 	 	: out std_logic_vector(15 downto 0);
		db_estado_7 : out std_logic_vector(6 downto 0);
		saida7seg   : out std_logic_vector(27 downto 0);
		leds        : out std_logic_vector(9 downto 0);
		jogadasFeitas_db       : out std_logic_vector(1 downto 0);
		gameover_db       : out std_logic;
		randContador_db, estadoAtual_db   : out std_logic_vector(1 downto 0);
		respostaJOGO_db       : out std_logic;
		ledsPecas   : out std_logic_vector(2 downto 0);
		dis4        : out std_logic_vector(6 downto 0);
		saidaReg1_db, saidaReg2_db : out std_logic_vector(15 downto 0)
	);
end entity;

architecture Formex_v2_arch of Formex_v2 is

	component Formex is
		port(
			jogar     	: in  std_logic;
			resposta1  	: in  std_logic;
			resposta2  	: in  std_logic;
			resposta3  	: in  std_logic;
			reset	  		: in  std_logic;
			clock 	  	: in  std_logic;
			pseudoclock	: in  std_logic;
			sel_mux     : in  std_logic_vector(1 downto 0);
			ligado	  	: out std_logic;
			pulso 	  	: out std_logic;
			estimulo  	: out std_logic;
			erro		  	: out std_logic;
			pronto		: out std_logic;
			tempo 	 	: out std_logic_vector(15 downto 0);
			tempoFinal_db 	 	: out std_logic_vector(15 downto 0);
			db_estado_7 : out std_logic_vector(6 downto 0);
			saida7seg   : out std_logic_vector(27 downto 0);
			leds        : out std_logic_vector(9 downto 0);
			jogadasFeitas_db       : out std_logic_vector(1 downto 0);
			gameover_db       : out std_logic;
			randContador_db, estadoAtual_db   : out std_logic_vector(1 downto 0);
			respostaJOGO_db       : out std_logic;
			ledsPecas   : out std_logic_vector(2 downto 0);
			dis4        : out std_logic_vector(6 downto 0)
		);
	end component;
      
	component registrador16bits is
	  port ( clock:         in  std_logic;
				clear, enable: in  std_logic;
				D:             in  std_logic_vector (15 downto 0);
				Q:             out std_logic_vector (15 downto 0)
			 );
	end component;
	   
	component comparador_nbits is
		 generic (
			  constant N: integer := 4
		 );
		 port (
			  A, B:                   in  std_logic_vector (N-1 downto 0);
			  EQ, NE, GT, GE, LT, LE: out std_logic
		 );
	end component;
	   
	component contador_modm is
		 generic (
			  constant M: integer := 50 -- valor default do modulo do contador
		 );
		port (
			  clock, zera, conta: in std_logic;
			  Q: out std_logic_vector (natural(ceil(log2(real(M))))-1 downto 0);
			  fim: out std_logic 
		);
	end component;
	     
	signal pronto_in : std_logic;
	signal tempo_in, saidaReg1, saidaReg2 : std_logic_vector(15 downto 0);
	signal jogadaVector : std_logic_vector (0 downto 0);
begin 
		
		JOGO: formex port map(jogar, resposta1, resposta2, resposta3, reset, clock, pseudoclock, sel_mux, ligado, pulso, estimulo, erro, pronto_in, tempo_in, tempoFinal_db, db_estado_7, saida7seg, leds, jogadasFeitas_db, gameover_db, randContador_db, estadoAtual_db, respostaJOGO_db, ledsPecas, dis4);
		
		REG1: registrador16bits port map(clock, reset, enable1, tempo_in, saidaReg1); 
		REG2: registrador16bits port map(clock, reset, enable2, tempo_in, saidaReg2); 
		
		CONT: contador_modm generic map (2) port map(clock, reset, pronto, jogadaVector, open);
		
		pronto <= pronto_in;
		tempo <= tempo_in;
		
		enable1 <= '1' when gameover_db = '1' and jogadaVector(0) = '0'
						else '0';
		
		enable2 <= '1' when gameover_db = '1' and jogadaVector(0) = '1'
						else '0';
		
		saidaReg1_db <= saidaReg1;
		saidaReg2_db <= saidaReg2;
		
																						
end architecture;