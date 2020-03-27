----------------------------------------------------------------
-- Arquivo   : contador8bits.vhd
-- Projeto   : Jogo do Tempo de Reacao
-- Data      : 04/01/2020
----------------------------------------------------------------
-- Descricao : contador binario de 8 bits 
--             descricao VHDL estrutural 
--             similar ao cascateamento de 2 CIs 74163
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     04/01/2020  1.0     Edson Midorikawa  criacao
----------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contador8bits is
   port (
        clock : in  std_logic;
        zera  : in  std_logic;
        conta : in  std_logic;
        Q     : out std_logic_vector (7 downto 0);
        rco   : out std_logic 
   );
end contador8bits;

architecture estrutural of contador8bits is

  component contador_163			-- contador 163 instanciado como componente
    port (
          clock    : in  std_logic;
          clr, ld  : in  std_logic;
          ent, enp : in  std_logic;
          D        : in  std_logic_vector (3 downto 0);
          Q        : out std_logic_vector (3 downto 0);
          rco      : out std_logic 
    );
  end component;

  signal s_rco : std_logic;								-- sinal que conecta o RCO do
														-- menos significativo ao ENT
														-- do mais significativo
  signal s_Q   : std_logic_vector  (7 downto 0);		-- saída
  
begin
  
  CONT1: contador_163 port map ( clock=>clock, 			-- contador menos significativo
                                 clr=>zera, 
                                 ld=>'1', 
                                 ent=>'1',				-- ENT sempre 1 
                                 enp=>conta, 
                                 D=>"1111", 
                                 Q=>s_Q(3 downto 0), 	-- sinal de saída
                                 rco=>s_rco				-- sinal de término de contagem
                               );
  
  CONT2: contador_163 port map ( clock=>clock,			-- contador mais significativo
                                 clr=>zera, 
                                 ld=>'1', 
                                 ent=>s_rco, 			-- ENT apenas ativo quando o
														-- outro termina a contagem
                                 enp=>conta, 
                                 D=>"1111", 
                                 Q=>s_Q(7 downto 4), 	-- sinal de saida
                                 rco=>rco				-- término da contagem completa
                               );

  Q <= s_Q;

end estrutural;
