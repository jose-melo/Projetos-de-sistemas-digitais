library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contador16bits_mod10 is
   port (
        clock : in  std_logic;
        zera  : in  std_logic;
        conta : in  std_logic;
        Q     : out std_logic_vector (15 downto 0);
        rco   : out std_logic
   );
end contador16bits_mod10;

architecture estrutural of contador8bits is

    component contador_162			-- contador 162 instanciado como componente
        port (
            clock    : in  std_logic;
            clr, ld  : in  std_logic;
            ent, enp : in  std_logic;
            D        : in  std_logic_vector (3 downto 0);
            Q        : out std_logic_vector (3 downto 0);
            rco      : out std_logic
        );
    end component;

    signal s_rco1, s_rco2, s_rco3 : std_logic;			-- sinal que conecta os RCOs dos
														-- menos significativos aos ENTs
														-- dos mais significativos
    signal s_Q   : std_logic_vector  (7 downto 0);		-- saída

begin

    CONT1: contador_163 port map ( clock=>clock, 			-- contador menos significativo
                                clr=>zera,
                                ld=>'1',
                                ent=>'1',				-- ENT sempre 1
                                enp=>conta,
                                D=>"1111",
                                Q=>s_Q(3 downto 0), 	-- sinal de saída
                                rco=>s_rco1			-- sinal de término de contagem
                               );

    CONT2: contador_163 port map ( clock=>clock,
                                clr=>zera,
                                ld=>'1',
                                ent=>s_rco1,
                                enp=>conta,
                                D=>"1111",
                                Q=>s_Q(7 downto 4), 	-- sinal de saida
                                rco=>s_rco2
                               );

    CONT2: contador_163 port map (
                                clock=>clock,
                                clr=>zera,
                                ld=>'1',
                                ent=>s_rco2,
                                enp=>conta,
                                D=>"1111",
                                Q=>s_Q(11 downto 8), 	-- sinal de saida
                                rco=>s_rco3				-- término da contagem completa
                                );

    CONT2: contador_163 port map (
                                clock=>clock,			-- contador mais significativo
                                clr=>zera,
                                ld=>'1',
                                ent=>s_rco3, 			-- ENT apenas ativo quando o outro termina a contagem
                                enp=>conta,
                                D=>"1111",
                                Q=>s_Q(15 downto 12), 	-- sinal de saida
                                rco=>rco				-- término da contagem completa
                                );
    Q <= s_Q;

end estrutural;
