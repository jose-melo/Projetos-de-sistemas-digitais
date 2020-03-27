	----------------------------------------------------------------
-- Arquivo   : medidor_largura.vhd
-- Projeto   : Jogo do Tempo de Reacao
-- Data      : 22/01/2020
----------------------------------------------------------------
-- Descricao : sistema digital que conta a largura
--					de um pulso
--
-----------------------------------------------------------------
-- Autores:
-- 	Jose Lucas de Melo Costa
--    Lucas de Menezes Cavalcante


library IEEE;
use IEEE.std_logic_1164.all;

entity medidor_largura is
	port(
		clock, reset : in std_logic;
		liga, sinal : in std_logic;
		display0 : out std_logic_vector(6 downto 0); --digito 0
		display1 : out std_logic_vector(6 downto 0); --digito 1
		display5 : out std_logic_vector(6 downto 0); --estado
		fim : out std_logic;
		pronto : out std_logic;
		db_largura : out std_logic_vector(7 downto 0);	-- sinais
		db_clock : out std_logic;						-- de
		db_zeraCont : out std_logic;					-- depuração
		db_contacont : out std_logic
	);
end medidor_largura;


architecture medidor_largura_arch of medidor_largura is	
	
	component controlador is
   		port ( 
			clock, reset		: in  STD_LOGIC;
        	liga, sinal			: in  STD_LOGIC;
          	zeraCont, contaCont	: out STD_LOGIC;
         	pronto				: out STD_LOGIC;
          	estado				: out STD_LOGIC_VECTOR(3 downto 0)
        );
	end component controlador;

	component contador8bits is
   		port (
        	clock : in  std_logic;
        	zera  : in  std_logic;
       		conta : in  std_logic;
        	Q     : out std_logic_vector (7 downto 0);
       		rco   : out std_logic 
  		 );
	end component contador8bits;	

	component hexa7seg is
   		port (
        	hexa : in std_logic_vector(3 downto 0);
        	sseg : out std_logic_vector(6 downto 0)
    	);
	end component hexa7seg;

	signal zera_interno, conta_interno : std_logic;								-- Conexão entre os sinais de reset da contagem
	signal zera_inv : std_logic;												-- Reset invertido, já que o reset do contador8bits é ativo baixo
	signal display5_interno : std_logic_vector(3 downto 0);						-- Conexões entre as saídas e os displays de 7 segmentos
	signal display0_interno, display1_interno: std_logic_vector(3 downto 0);
	signal display_interno: std_logic_vector(7 downto 0);						-- Saída completa do contador

begin
	
	UC: component controlador port map(clock, reset, liga, sinal, zera_interno, conta_interno, pronto, display5_interno);	-- Unidade de controle
	DIS_EST: component hexa7seg port map(display5_interno, display5); 														-- Display do estado

	zera_inv <= not zera_interno;		-- Inversão do sinal de clear (ver linha 51)

	CONT: component contador8bits port map(clock, zera_inv, conta_interno, display_interno, fim);							-- Fluxo de dados

	display0_interno <= display_interno(3 downto 0);	-- Separação da saída em dois displays
	display1_interno <= display_interno(7 downto 4);

	DIS1: component hexa7seg port map(display1_interno, display1);	-- Conexão da saída aos displays de 7 segmentos
	DIS0: component hexa7seg port map(display0_interno, display0);

end architecture medidor_largura_arch;
