-------------------------------------------------------------------
-- Arquivo   : comparador_nbits.vhd
-- Projeto   : Jogo do Tempo de Reacao
-- Data      : 31/01/2020
-------------------------------------------------------------------
-- Descricao : comparador binario de n bits 
--             descricao comportamental
--             compara entrada A com B
--             saidas: EQ = A igual a B
--                     NE = A diferente de B
--                     GT = A maior que B
--                     GE = A maior ou igual que B
--                     LT = A menor que B
--                     LE = A menor ou igual que B
-------------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     31/01/2020  1.0     Edson Midorikawa  criacao
-------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity comparador_nbits is
    generic (
        constant N: integer := 4
    );
    port (
        A, B:                   in  std_logic_vector (N-1 downto 0);
        EQ, NE, GT, GE, LT, LE: out std_logic
    );
end comparador_nbits;

architecture comportamental of comparador_nbits is
begin
  process (A, B)
  begin
      EQ <= '0'; NE <= '0'; GT <= '0'; GE <= '0'; LT <= '0'; LE <= '0'; 
      if A = B then EQ <= '1'; end if;
      if A /= B then NE <= '1'; end if;
      if A > B then GT <= '1'; end if;
      if A >= B then GE <= '1'; end if;
      if A < B then LT <= '1'; end if;
      if A <= B then LE <= '1'; end if;
  end process;
  
end comportamental;
