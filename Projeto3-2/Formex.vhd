library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;


entity Formex is
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
end entity;

architecture Formex_arch of Formex is

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

	component controladorFinal is
		port(
			jogar        : in std_logic;
			resposta     : in std_logic;
			reset	       : in std_logic;
			clock 	    : in std_logic;
			rand		    : in std_logic_vector(1 downto 0);
			sel_mux      : in std_logic_vector(1 downto 0);
			error        : in std_logic;
			gameover	    : in std_logic;
			pronto	    : out std_logic;
			db_estado    : out std_logic_vector(3 downto 0);
			jogarJOGO    : out std_logic;
			respostaJOGO : out std_logic;
			resetJOGO	 : out std_logic
		);
	end component;
	
	component JogoReacao_v1 is
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
	end component;
	
	component hexa7seg is
		 port (
			  hexa : in std_logic_vector(3 downto 0);
			  sseg : out std_logic_vector(6 downto 0)
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
	 
	 component RNG is
		 port (
			  pseudoclock : in  std_logic;
			  pseudoout   : out std_logic_vector(1 downto 0)
		 );
	end component;

	component somador_decimal_4digitos is
	  port(a, b  : in  std_logic_vector(15 downto 0);
			 vem_um: in  std_logic;
			 soma  : out std_logic_vector(15 downto 0);
			 vai_um: out std_logic
	  );
	end component;
	
	component registrador16bits is
	  port ( clock:         in  std_logic;
				clear, enable: in  std_logic;
				D:             in  std_logic_vector (15 downto 0);
				Q:             out std_logic_vector (15 downto 0)
			 );
	end component;
	
	
	
	signal db_estado_final : std_logic_vector (3 downto 0);
	signal jogarJOGO, respostaJOGO, resetJOGO, resposta, gameover: std_logic;
	signal tempo_sig : std_logic_vector(15 downto 0);
	signal erro_sig : std_logic;
	signal randContador, jogadasFeitas, estadoAtual : std_logic_vector(1 downto 0);
	signal fimDaJogada : std_logic;
	signal saidaSomador, tempoFinal : std_logic_vector(15 downto 0);

begin

	FINAL: controladorFinal port map (jogar, resposta, reset, clock, randContador, sel_mux, erro_sig, gameover, fimDaJogada, db_estado_final, jogarJOGO, respostaJOGO, resetJOGO);

	JOGO_REAC: JogoReacao_v1 port map (jogarJOGO, respostaJOGO, resetJOGO, clock, sel_mux, ligado, pulso, estimulo, erro_sig, pronto, tempo_sig, open, open, open, open, leds, open);
	 
	DB_ESTADO_7SEG: hexa7seg port map (db_estado_final, dis4);
	tempo <= saidaSomador;
	tempoFinal_db <= tempoFinal;
	erro <= erro_sig;
	
	with estadoAtual select
		resposta		<=	resposta1 when "00",
							resposta2 when "01",
							resposta3 when "10",
							'0' when others;
	
	jogadasFeitas_db <= jogadasFeitas;
	gameover_db <= fimDaJogada;
	estadoAtual_db <= estadoAtual;
	respostaJOGO_db <= respostaJOGO;
	randContador_db <= randContador;
	
	gameover <= 
		'1' when jogadasFeitas = "10" else
		'0';
	
	--geração de um número aleatório
	RANDOM: RNG port map (pseudoclock, randContador);
	RANDOM_DISP: hexa7seg port map ("00"&randContador, db_estado_7);
	
	--contador de estados
	STATE_COUNT: contador_modm
		generic map (3)
		port map (clock, reset, fimDaJogada, jogadasFeitas, open);
	
	ledsPecas <=
		"001" when estadoAtual = "00" else
		"010" when estadoAtual = "01" else
		"100" when estadoAtual = "10" else
		"000";
	
	SOMADOR: somador_decimal_4digitos port map(tempoFinal, tempo_sig, '0', saidaSomador, open);
	REG: registrador16bits port map(clock, reset, jogarJOGO, saidaSomador, tempoFinal);
	
	DIS3: hexa7seg port map(tempoFinal(15 downto 12), saida7seg(27 downto 21));
	DIS2: hexa7seg port map(tempoFinal(11 downto 8), saida7seg(20 downto 14));
	DIS1: hexa7seg port map(tempoFinal(7 downto 4), saida7seg(13 downto 7));	-- Conexão da saída aos displays de 7 segmentos
	DIS0: hexa7seg port map(tempoFinal(3 downto 0), saida7seg(6 downto 0));
	
	process (clock, reset, estadoAtual)
    begin
        if clock'event and clock = '1' then
				if jogar = '1' then
					estadoAtual <= randContador;
				elsif fimDaJogada = '1' then
					case estadoAtual is
						when "00" => estadoAtual <= "01";
						when "01" => estadoAtual <= "10";
						when "10" => estadoAtual <= "00";
						when "11" => estadoAtual <= "00";
						when others => estadoAtual <= "00";
						end case;
				else
					estadoAtual <= estadoAtual;
				end if;
        end if;
    end process;
	 
end architecture;
