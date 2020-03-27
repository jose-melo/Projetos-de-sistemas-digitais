library IEEE;
use IEEE.std_logic_1164.all;

entity comparador_bcd is
  port (
    A, B: in std_logic_vector (15 downto 0);
    AmaiorB, AigualB, AmenorB: out std_logic
  );
end entity;

architecture estrutural of comparador_bcd is
  signal s_agtb, s_altb, s_aeqb: std_logic_vector (2 downto 0);
  
  component comparador_7485
    port (
      i_A    : in std_logic_vector(3 downto 0);
      i_B    : in std_logic_vector(3 downto 0);
      i_AGTB : in std_logic;
      i_ALTB : in std_logic;
      i_AEQB : in std_logic;
      o_AGTB : out std_logic;
      o_ALTB : out std_logic;
      o_AEQB : out std_logic
      );
  end component;

begin

  C1: comparador_7485 port map (i_A=> A(3 downto 0),
                                i_B=> B(3 downto 0),
                                i_AGTB=> '0',
                                i_ALTB=> '0',
                                i_AEQB=> '1',
                                o_AGTB=> s_agtb(0),
                                o_ALTB=> s_altb(0),
                                o_AEQB=> s_aeqb(0)
                               );

  C2: comparador_7485 port map (i_A=> A(7 downto 4),
                                i_B=> B(7 downto 4),
                                i_AGTB=> s_agtb(0),
                                i_ALTB=> s_altb(0),
                                i_AEQB=> s_aeqb(0),
                                o_AGTB=> s_agtb(1),
                                o_ALTB=> s_altb(1),
                                o_AEQB=> s_aeqb(1)
                               );

  C3: comparador_7485 port map (i_A=> A(11 downto 8),
                                i_B=> B(11 downto 8),
                                i_AGTB=> s_agtb(1),
                                i_ALTB=> s_altb(1),
                                i_AEQB=> s_aeqb(1),
                                o_AGTB=> s_agtb(2),
                                o_ALTB=> s_altb(2),
                                o_AEQB=> s_aeqb(2)
                               );

  C4: comparador_7485 port map (i_A=> A(15 downto 12),
                                i_B=> B(15 downto 12),
                                i_AGTB=> s_agtb(2),
                                i_ALTB=> s_altb(2),
                                i_AEQB=> s_aeqb(2),
                                o_AGTB=> AmaiorB,
                                o_ALTB=> AmenorB,
                                o_AEQB=> AigualB
                               );

end estrutural;
