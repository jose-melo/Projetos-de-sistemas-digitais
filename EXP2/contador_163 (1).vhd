----------------------------------------------------------------
-- Arquivo   : contador_163.vhd
-- Projeto   : Jogo do Tempo de Reacao
-- Data      : 04/01/2020
----------------------------------------------------------------
-- Descricao : contador binario hexadecimal (modulo 16) 
--             similar ao CI 74163
----------------------------------------------------------------
-- Revisoes  :
--     Data        Versao  Autor             Descricao
--     04/01/2020  1.0     Edson Midorikawa  criacao
----------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contador_163 is
   port (
        clock    : in  std_logic;
        clr, ld  : in  std_logic;
        ent, enp : in  std_logic;
        D        : in  std_logic_vector (3 downto 0);
        Q        : out std_logic_vector (3 downto 0);
        rco      : out std_logic 
   );
end contador_163;

architecture comportamental of contador_163 is
  signal IQ: integer range 0 to 15;						-- o código trabalha com um inteiro IQ como sinal, que depois será convertido e enviado à saida Q
begin
  
  process (clock,clr,ld,ent,enp,IQ)
  begin

    if clock'event and clock='1' then
      if clr='0' then   IQ <= 0;						-- IQ é sempre zerado com clr = 0
      elsif ld='0' then IQ <= to_integer(unsigned(D));	-- IQ recebe o valor especificado em D
      elsif ent='1' and enp='1' then					-- condição para o circuito contar
        if IQ=15 then   IQ <= 0; 						-- se IQ terminou de contar, o próximo valor é 0
        else            IQ <= IQ + 1; 					-- se não, acrescentar 1 normalmente
        end if;
      else              IQ <= IQ;						-- para ENP ou ENT em 0, nada acontece
      end if;
    end if;
    
    if IQ=15 and ENT='1' then rco <= '1'; 				-- RCO ativo indica o final da contagem
    else                      rco <= '0'; 
    end if;

    Q <= std_logic_vector(to_unsigned(IQ, Q'length));	-- Q finalmente recebe o valor convertido do inteiro IQ

  end process;
end comportamental;
