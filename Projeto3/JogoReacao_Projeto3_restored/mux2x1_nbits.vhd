----------------------------------------------------------------
-- Arquivo   : mux2x1_nbits.vhd
-- Projeto   : Jogo do Tempo de Reacao
-- Data      : 27/01/2020
----------------------------------------------------------------
-- Descricao : multiplexador 2x1 com dados de N bits 
--             descricao comportamental
----------------------------------------------------------------
-- Uso : instanciacao de um multiplexador de 8 bits 
--       MUX8: mux2x1_nbits generic map ( N=>8 )
--                          port map ( ...
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     27/01/2020  1.0     Edson Midorikawa  criacao
----------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mux2x1_nbits is
    generic (
        N: integer := 4
    );
    port (
        A, B: in  std_logic_vector (N-1 downto 0);
        S:    in  std_logic;
        Y:    out std_logic_vector (N-1 downto 0)
    );
end mux2x1_nbits;

architecture mux2x1_arch of mux2x1_nbits is
begin
    with S select 
       Y <= A when '0',
            B when '1',
            (others => '0') when others;
end mux2x1_arch;