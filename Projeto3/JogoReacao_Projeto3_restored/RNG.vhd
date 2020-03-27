library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity RNG is
    port (
        pseudoclock : in  std_logic;
        pseudoout   : out std_logic_vector(1 downto 0)
    );
end entity;

architecture ThreeRNG of RNG is
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

begin
    CONTA: contador_modm
        generic map (3)
        port map (pseudoclock, '0', '1', pseudoout, open);

end architecture;
