library IEEE;					-- medidor alterado para suportar os contadores
use IEEE.std_logic_1164.all;	-- BCD de 10 algarismos e 16 bits

entity medidor_largura is
	port(
		clock, reset : in  std_logic;
		liga, sinal  : in  std_logic;
		display0     : out std_logic_vector(3 downto 0);	--digito 0
		display1     : out std_logic_vector(3 downto 0);	--digito 1
		display2     : out std_logic_vector(3 downto 0);	--digito 2
		display3     : out std_logic_vector(3 downto 0);	--digito 3
		display5     : out std_logic_vector(6 downto 0);	--estado
		fim          : out std_logic;
		pronto       : out std_logic;
		db_largura   : out std_logic_vector(15 downto 0);	-- sinais
		db_clock     : out std_logic;						-- de
		db_zeraCont  : out std_logic;						-- depuração
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
          	estado				: out STD_LOGIC_VECTOR(3 downto 0);
			carregaReg          : out STD_LOGIC;
			zeraReg             : out STD_LOGIC
        );
	end component;

	component contador16bits_mod10 is
   		port (
        	clock : in  std_logic;
        	zera  : in  std_logic;
       		conta : in  std_logic;
        	Q     : out std_logic_vector (15 downto 0);
       		rco   : out std_logic
  		 );
	end component;

	component hexa7seg is
   		port (
        	hexa : in std_logic_vector(3 downto 0);
        	sseg : out std_logic_vector(6 downto 0)
    	);
	end component;

	component registrador16bits is
	  port ( clock:         in  std_logic;
				clear, enable: in  std_logic;
				D:             in  std_logic_vector (15 downto 0);
				Q:             out std_logic_vector (15 downto 0)
			 );
	end component;

	signal zera_interno, conta_interno : std_logic;								-- Conexão entre os sinais de reset da contagem
	signal zera_inv : std_logic;												-- Reset invertido, já que o reset do contador8bits é ativo baixo
	signal display5_interno : std_logic_vector(3 downto 0);						-- Conexões entre as saídas e os displays de 7 segmentos
	signal display0_interno, display1_interno, display2_interno, display3_interno : std_logic_vector(3 downto 0);
	signal display_interno, displayInt: std_logic_vector(15 downto 0);						-- Saída completa do contador
	signal carregaInt, zeraInt : std_logic;

begin

	UC: controlador port map(clock, reset, liga, sinal, zera_interno, conta_interno, pronto, display5_interno, carregaInt, zeraInt);	-- Unidade de controle
	DIS_EST: hexa7seg port map(display5_interno, display5); 														-- Display do estado

	zera_inv <= not zera_interno;		-- Inversão do sinal de clear

	CONT: contador16bits_mod10 port map(clock, zera_inv, conta_interno, displayInt, fim);							-- Fluxo de dados

	display0 <= display_interno(3 downto 0);	-- Separação da saída em quatro displays
	display1 <= display_interno(7 downto 4);
	display2 <= display_interno(11 downto 8);
	display3 <= display_interno(15 downto 12);

	--DIS3: hexa7seg port map(display3_interno, display3);
	--DIS2: hexa7seg port map(display2_interno, display2);
	--DIS1: hexa7seg port map(display1_interno, display1);	-- Conexão da saída aos displays de 7 segmentos
	--DIS0: hexa7seg port map(display0_interno, display0);

	REG: registrador16bits port map(clock, zeraInt, carregaInt, displayInt, display_interno);

	--depuração

	db_largura <= display_interno;
	db_clock <= clock;
	db_zeraCont <= zera_interno;
	db_contacont <= conta_interno;

end architecture medidor_largura_arch;
