----------------------------------------------------------------
-- Arquivo   : registrador_nbits.vhd
-- Projeto   : Jogo do Tempo de Reacao
-- Data      : 04/01/2020
----------------------------------------------------------------
-- Descricao : registrador de N bits 
--             com enable e clear sincronos e ativos em alto
----------------------------------------------------------------
-- Uso : instanciacao de um registrador de 16 bits 
--       REG16: registrador_nbits generic map ( N=>16 )
--                                port map ( ...
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     15/01/2020  1.0     Edson Midorikawa  criacao
--     21/02/2020  1.1     Edson Midorikawa  generic N
----------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity registrador_nbits is
  generic ( constant N: integer := 4   -- numero de bits
          );
  port ( clock:         in  std_logic;
         clear, enable: in  std_logic;
         D:             in  std_logic_vector (N-1 downto 0);
         Q:             out std_logic_vector (N-1 downto 0) 
       );
end registrador_nbits;

architecture comportamental of registrador_nbits is 
  signal IQ: std_logic_vector (N-1 downto 0);
begin

  process(clock)
  begin
      if clock'event and clock='1' then
        if clear = '1' then 
          IQ <= (others => '0');
        elsif enable ='1' then 
          IQ <= D;
        else
          IQ <= IQ; 
        end if;
      end if;
  end process;
  
  Q <= IQ;
  
end comportamental;

