----------------------------------------------------------------
-- Arquivo   : gera_vaium.vhd
-- Projeto   : Jogo do Tempo de Reacao
----------------------------------------------------------------
-- Descricao : no somador decimal (BCD)
--             gera sinal de vai-um com base nas saidas
--             soma e vai-um do somador binario
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     21/02/2020  1.0     Edson Midorikawa  criacao
----------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity gera_vaium is
  port (soma : in std_logic_vector(3 downto 0);
        cout : in std_logic;
        vaium: out std_logic
  );
end gera_vaium;

architecture arch of gera_vaium is
begin

    vaium <= '1' when (soma(3)= '1' and (soma(2)='1' or soma(1)='1')) or cout='1' 
             else '0';

end arch;

