library ieee;
use ieee.std_logic_1164.all;

entity InterfaceMedidor is
	port (
		clock    : in  std_logic;
		reset    : in  std_logic;
		resposta : in  std_logic;
		iniciar  : in  std_logic;
		estimulo : out std_logic;
		fim      : out std_logic;
		erro     : out std_logic;
		pronto   : out std_logic;
		ligado   : out std_logic;
		db_clock : out std_logic;
		estado_interface	: out STD_LOGIC_VECTOR(6 downto 0);
		display0 			: out std_logic_vector(6 downto 0); --digito 0
		display1 			: out std_logic_vector(6 downto 0); --digito 1
		display2 			: out std_logic_vector(6 downto 0); --digito 2
		display3 			: out std_logic_vector(6 downto 0); --digito 3
		estado_medidor		: out std_logic_vector(6 downto 0)
	);
end entity;

architecture a of InterfaceMedidor is
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
			estado   : out STD_LOGIC_VECTOR(6 downto 0);
			db_clock    : out STD_LOGIC;    -- sinais
			db_erro     : out STD_LOGIC;    -- de
			db_estimulo : out STD_LOGIC     -- depuração
		);
	end component interface_leds_botoes_v2;
	component medidor_largura is
		port(
			clock, reset : in  std_logic;
			liga, sinal  : in  std_logic;
			display0     : out std_logic_vector(6 downto 0);	--digito 0
			display1     : out std_logic_vector(6 downto 0);	--digito 1
			display2     : out std_logic_vector(6 downto 0);	--digito 2
			display3     : out std_logic_vector(6 downto 0);	--digito 3
			display5     : out std_logic_vector(6 downto 0);	--estado
			fim          : out std_logic;
			pronto       : out std_logic;
			db_largura   : out std_logic_vector(15 downto 0);	-- sinais
			db_clock     : out std_logic;						-- de
			db_zeraCont  : out std_logic;						-- depuração
			db_contacont : out std_logic
		);
	end component medidor_largura;

	signal pulso_int, erro_int : std_logic;
	signal display0_interno, display1_interno, display2_interno, display3_interno : std_logic_vector(6 downto 0);

begin

	INTERFACE: interface_leds_botoes_v2 port map (clock, reset, iniciar, resposta, ligado, estimulo, pulso_int, erro_int, open, estado_interface, open, open, open);
	MEDIDOR: medidor_largura port map (clock, reset, iniciar, pulso_int, display0_interno, display1_interno, display2_interno, display3_interno, estado_medidor, fim, pronto, open, db_clock, open, open);

	display0 <=
		display0_interno when erro_int = '0' else
		"1001";
	display1 <=
		display1_interno when erro_int = '0' else
		"1001";
	display2 <=
		display2_interno when erro_int = '0' else
		"1001";
	display3 <=
		display3_interno when erro_int = '0' else
		"1001";
	erro <= erro_int;
end architecture;
