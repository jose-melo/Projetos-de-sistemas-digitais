-- File : comparador_7485.vhd
-- 4-bit magnitude comparator
-- 
-- Original Author : Edson S. Gomi
-- Date : November 2017

library IEEE;
use IEEE.std_logic_1164.all;

entity comparador_7485 is
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
end entity comparador_7485;

architecture arch of comparador_7485 is
  signal agtb : std_logic;
  signal aeqb : std_logic;
  signal altb : std_logic;
begin
  agtb <= (i_A(3) and not(i_B(3))) or
          (not(i_A(3) xor i_B(3)) and i_A(2) and not(i_B(2))) or
          (not(i_A(3) xor i_B(3)) and not(i_A(2) xor i_B(2)) and i_A(1) and not(i_B(1))) or
          (not(i_A(3) xor i_B(3)) and not(i_A(2) xor i_B(2)) and not(i_A(1) xor i_B(1)) and i_A(0) and not(i_B(0)));
  aeqb <= not((i_A(3) xor i_B(3)) or (i_A(2) xor i_B(2)) or (i_A(1) xor i_B(1)) or (i_A(0) xor i_B(0)));
  altb <= not(agtb or aeqb);
  o_AGTB <= agtb or (aeqb and (not(i_AEQB) and not(i_ALTB)));
  o_ALTB <= altb or (aeqb and (not(i_AEQB) and not(i_AGTB)));
  o_AEQB <= aeqb and i_AEQB;
  
end arch;
    
