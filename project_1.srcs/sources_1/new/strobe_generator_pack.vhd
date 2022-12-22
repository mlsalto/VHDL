library ieee;
use ieee.std_logic_1164.all;

package STROBE_GENERATION is
  type positive_vector is array (natural range <>) of positive;

  component STROBE_GENERATOR is
    generic (
      MODULI  : positive_vector
    );
    port ( 
      RST_N   : in   std_logic;
      CLK     : in   std_logic;
      STROBES : out  std_logic_vector
    );
  end component;
end package STROBE_GENERATION;