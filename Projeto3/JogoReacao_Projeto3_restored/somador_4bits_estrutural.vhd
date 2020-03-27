----------------------------------------------------------------
-- Arquivo   : somador_4bits_estrutural.vhd
-- Projeto   : Jogo do Tempo de Reacao
----------------------------------------------------------------
-- Descricao : somador de 4 bits 
--             descricao VHDL estrutural 
--             cascateamento de 4 somadores completos
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     21/02/2020  1.0     Edson Midorikawa  criacao
----------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity somador_4bits_estrutural is
  port(a, b: in  std_logic_vector(3 downto 0);
       c0  : in  std_logic;
       s   : out std_logic_vector(3 downto 0);
       c4  : out std_logic
  );
end somador_4bits_estrutural;


architecture estrutural of somador_4bits_estrutural is
    signal vai_um : std_logic_vector(0 to 2); -- vetor de 3 bits
    
    component somador_completo
        port (a, b: in  std_logic;
              cin : in  std_logic;
              s   : out std_logic;
              cout: out std_logic);
    end component;
    
begin
    S1: somador_completo port map(a=> a(0), b=> b(0), cin=> c0       , s=> s(0), cout=> vai_um(0));
    S2: somador_completo port map(a=> a(1), b=> b(1), cin=> vai_um(0), s=> s(1), cout=> vai_um(1));
    S3: somador_completo port map(a=> a(2), b=> b(2), cin=> vai_um(1), s=> s(2), cout=> vai_um(2));
    S4: somador_completo port map(a=> a(3), b=> b(3), cin=> vai_um(2), s=> s(3), cout=> c4);    
end estrutural;

