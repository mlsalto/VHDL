library ieee;
use ieee.std_logic_1164.all;

use work.STROBE_GENERATION.all;

entity STROBE_GENERATOR is
  generic (
    MODULI  : positive_vector
  );
  port ( 
    RST_N   : in   std_logic;
    CLK     : in   std_logic;
    STROBES : out  std_logic_vector
  );
end STROBE_GENERATOR;

architecture STRUCTURAL of STROBE_GENERATOR is
  component TIMER is
    generic (
      MODULO  : positive
    );
    port ( 
      RST_N  : in  std_logic;
      CLK    : in  std_logic;
      STROBE : out std_logic
    );
  end component;
begin
  strobers: for i in MODULI'range generate
    timer_i: TIMER
      generic map (
        MODULO => MODULI(i)
      )
      port map ( 
        RST_N  => RST_N,
        CLK    => CLK,
        STROBE => STROBES(i)
      );
  end generate;
end STRUCTURAL;