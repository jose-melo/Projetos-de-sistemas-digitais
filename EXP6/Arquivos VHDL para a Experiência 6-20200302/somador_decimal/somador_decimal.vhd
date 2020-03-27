----------------------------------------------------------------
-- Arquivo   : somador_decimal.vhd
-- Projeto   : Jogo do Tempo de Reacao
----------------------------------------------------------------
-- Descricao : somador decimal (BCD)
--             descricao estrutural
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     21/02/2020  1.0     Edson Midorikawa  criacao
----------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity somador_decimal is
  port(a, b      : in  std_logic_vector(3 downto 0); -- digitos BCD
       vem_um    : in  std_logic;
       soma      : out std_logic_vector(3 downto 0);
       vai_um    : out std_logic
      );
end somador_decimal;

architecture estrutural of somador_decimal is

  component somador_4bits_estrutural
  port(a, b : in  std_logic_vector(3 downto 0);
       c0   : in  std_logic;
       s    : out std_logic_vector(3 downto 0);
       c4   : out std_logic);
  end component;

  component gera_vaium is
  port (soma  : in std_logic_vector(3 downto 0);
        cout  : in std_logic;
        vaium : out std_logic);
  end component;
  
  signal s_soma : std_logic_vector (3 downto 0);
  signal s_cout, s_vai_um : std_logic;

begin

  s1  : somador_4bits_estrutural port map (a=> a, 
                                           b=> b, 
                                           c0=> vem_um, 
                                           s=> s_soma, 
                                           c4=> s_cout);

  s2  : somador_4bits_estrutural port map (a=> s_soma, 
                                           b=> '0'&s_vai_um&s_vai_um&'0', 
                                           c0=> '0', 
                                           s=> soma, 
                                           c4=> open);

  g1  : gera_vaium port map (soma=> s_soma, cout=> s_cout, vaium=> s_vai_um);

  vai_um <= s_vai_um;
    
end estrutural;
