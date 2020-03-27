----------------------------------------------------------------
-- Arquivo   : mux4x1_nbits.vhd
-- Projeto   : Jogo do Tempo de Reacao
-- Data      : 27/01/2020
----------------------------------------------------------------
-- Descricao : multiplexador 4x1 com dados de N bits 
--             descricao comportamental
----------------------------------------------------------------
-- Uso : instanciacao de um multiplexador de 8 bits 
--       MUX8: mux4x1_nbits generic map ( N=>8 )
--                          port map ( ...
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     27/01/2020  1.0     Edson Midorikawa  criacao
----------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mux4x1_nbits is
    generic (
        N: integer := 4
    );
    port (
        A,B,C,D: in  std_logic_vector (N-1 downto 0);
        S:       in  std_logic_vector (1 downto 0);
        Y:       out std_logic_vector (N-1 downto 0)
    );
end mux4x1_nbits;

architecture comportamental of mux4x1_nbits is
begin
    with S select 
       Y <= A when "00",
            B when "01",
            C when "10",
            D when "11",
            (others => '0') when others;
end comportamental;
