------------------------------------------------------------------
-- Arquivo   : somador_4bits_estrutural.vhd
-- Projeto   : Jogo do Tempo de Reacao
------------------------------------------------------------------
-- Descricao : somador decimal de 4 digitos BCD 
--             descricao VHDL estrutural 
--             cascateamento de 4 somadores decimais
--             entradas: a e b (16 bits = 4 digitos BCD) e vem_um
--             saidas: soma (16 bits = 4 digitos BCD) e vai_um
------------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     21/02/2020  1.0     Edson Midorikawa  criacao
------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity somador_decimal_4digitos is
  port(a, b  : in  std_logic_vector(15 downto 0);
       vem_um: in  std_logic;
       soma  : out std_logic_vector(15 downto 0);
       vai_um: out std_logic
  );
end somador_decimal_4digitos;


architecture estrutural of somador_decimal_4digitos is
    signal s_vai_um : std_logic_vector(0 to 2); 
    
    component somador_decimal is
        port(a, b  : in  std_logic_vector(3 downto 0); -- digitos BCD
             vem_um: in  std_logic;
             soma  : out std_logic_vector(3 downto 0);
             vai_um: out std_logic
      );
    end component;
    
begin
    S1: somador_decimal port map(a=> a(3 downto 0), 
                                 b=> b(3 downto 0), 
                                 vem_um=> vem_um, 
                                 soma=> soma(3 downto 0), 
                                 vai_um=> s_vai_um(0));

    S2: somador_decimal port map(a=> a(7 downto 4), 
                                 b=> b(7 downto 4), 
                                 vem_um=> s_vai_um(0), 
                                 soma=> soma(7 downto 4), 
                                 vai_um=> s_vai_um(1));

    S3: somador_decimal port map(a=> a(11 downto 8), 
                                 b=> b(11 downto 8), 
                                 vem_um=> s_vai_um(1), 
                                 soma=> soma(11 downto 8), 
                                 vai_um=> s_vai_um(2));

    S4: somador_decimal port map(a=> a(15 downto 12), 
                                 b=> b(15 downto 12), 
                                 vem_um=> s_vai_um(2), 
                                 soma=> soma(15 downto 12), 
                                 vai_um=> vai_um);    
end estrutural;

