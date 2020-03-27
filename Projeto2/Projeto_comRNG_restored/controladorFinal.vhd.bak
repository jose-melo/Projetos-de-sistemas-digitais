library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;


entity controladorFinal is
	port(
		jogar			: in std_logic;
		resposta		: in std_logic;
		reset			: in std_logic;
		clock			: in std_logic;
		rand			: in std_logic_vector(1 downto 0);
		sel_mux		: in std_logic_vector(1 downto 0);
		error     	: in std_logic;
		gameover		: in std_logic;
		pronto			: out std_logic;
		db_estado 		: out std_logic_vector(3 downto 0);
		jogarJOGO   	: out std_logic;
		respostaJOGO  	: out std_logic;
		resetJOGO	  	: out std_logic
	);
end entity;


architecture FSM of controladorFinal is

	type tipo_estado is (INICIAL, RESETADOR, ATIVADOR, JOGADOR, FIM, INTERMED1, INTERMED, ERRO);
	signal Eatual, Eprox: tipo_estado;
begin

	process (clock, reset)
    begin
        if reset = '1' then
            Eatual <= INICIAL;
        elsif clock'event and clock = '1' then
            Eatual <= Eprox;
        end if;
    end process;

    process (jogar, resposta, error, Eatual)
    begin
		case Eatual is
			when INICIAL => if jogar = '0' then	Eprox <= INICIAL;
                         else 					Eprox <= RESETADOR;
                         end if;
			when RESETADOR =>	Eprox <= ATIVADOR;
			
			when ATIVADOR =>	Eprox <= JOGADOR;
			
			when JOGADOR =>	if gameover = '1' then		Eprox <= FIM;
									elsif resposta = '1' then	Eprox <= INTERMED1;
									elsif error = '1' then		Eprox <= ERRO;
									else								Eprox <= JOGADOR;
									end if;
									
			when FIM => 		Eprox <= FIM;
			
			when INTERMED1 => Eprox <= INTERMED;
									
			when INTERMED =>	if resposta = '0' then	Eprox <= RESETADOR;
									else							Eprox <= INTERMED;
									end if;
                           
         when ERRO =>		Eprox <= ERRO;
            				
         when others => 	Eprox <= INICIAL;
        end case;
    end process;

	with Eatual select
		resetJOGO	<=	'1' when RESETADOR | INICIAL,
							'0' when others;

	with Eatual select		
		jogarJOGO	<=	'1' when ATIVADOR,
							'0' when others;
						
	with Eatual select
		pronto <=	'1' when INTERMED1,
						'0' when others;

	respostaJOGO <= resposta;
	
	with Eatual select
	db_estado  <=  "0000" when INICIAL,
						"0010" when RESETADOR,
						"0011" when ATIVADOR,
						"0100" when JOGADOR,
						"1000" when INTERMED1,
						"1001" when INTERMED,
						"1110" when ERRO,
						"1111" when FIM,
						"1100" when others;

	
end architecture;