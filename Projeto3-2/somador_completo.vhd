----------------------------------------------------------------
-- Arquivo   : somador_completo.vhd
-- Projeto   : Jogo do Tempo de Reacao
----------------------------------------------------------------
-- Descricao : somador completo
--             descricao comportamental (dataflow)
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     21/02/2020  1.0     Edson Midorikawa  criacao
----------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity somador_completo is
    port (a, b: in  std_logic;
          cin : in  std_logic;
          s   : out std_logic;
          cout: out std_logic
    );
end somador_completo;

architecture dataflow of somador_completo is
begin

  s <= a xor b xor cin;
  cout <= (a and b) or (a and cin) or (b and cin);
  
end dataflow;

