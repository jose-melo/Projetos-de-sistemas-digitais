library IEEE;
use IEEE.std_logic_1164.all;

entity geraPulse is
	port(
	
		estimulo   : in std_logic;
		ligado     : in std_logic;
		resp_latch : in std_logic;
		pulso      : out std_logic
	
	);
end entity geraPulse;

architecture geraPulso_arch of geraPulse is
begin

	pulso <= '0' when resp_latch = '1' else 
				'1' when resp_latch = '0' and estimulo = '1' and ligado = '1' else
				'0';
end architecture;
	
	
	
	