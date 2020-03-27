library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity controladorJogo is
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
end entity;

architecture controladorJogo_arch of controladorJogo is

	type tipo_estado is (INICIAL, LIGA1, LIGA, ERRO, JOGOPRONTO);
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

    process (jogar, erroInterface, prontoInterface, prontoMedidor, fimContador, Eatual)
    begin
        case Eatual is
            when INICIAL => if jogar = '0' then   Eprox <= INICIAL;
                            else                    Eprox <= LIGA1;
                            end if;

				when LIGA1 => Eprox <= LIGA;
									 
            when LIGA => if erroInterface = '1' then Eprox <= ERRO;
								 elsif fimContador = '1' then Eprox <= ERRO;
								elsif prontoInterface = '0' then  Eprox <= LIGA;
                        else  Eprox <= JOGOPRONTO;
                         	 end if;

            when JOGOPRONTO => Eprox <= INICIAL;
                           
            when ERRO => Eprox <= ERRO;
            				
            when others =>  Eprox <= INICIAL;
        end case;
    end process;

    with Eatual select
        ligaMedidor  <= '1' when LIGA1,
                     '0' when others;
	with Eatual select
        ligaInterface  <= '1' when LIGA,
                     '0' when others;
    with Eatual select
        ligado <= '1' when LIGA,
                        '0' when others;
	 with Eatual select
        pronto <= '1' when JOGOPRONTO,
                   '0' when others;
    
    with Eatual select
        saidaErro <= '1' when ERRO,
                  '0' when others;

    with Eatual select
        ligaEspera <= '1' when JOGOPRONTO,
                  '0' when others;
						
	  with Eatual select
        reset_out <= '1' when JOGOPRONTO,
                  '0' when others;

	with Eatual select
        estado  <=  "0000" when INICIAL,
                    "0001" when LIGA,
                    "0011" when LIGA1,
                    "1000" when ERRO,
                    "1111" when JOGOPRONTO,
                    "1100" when others;

end architecture;