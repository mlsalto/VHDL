
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edgedtctr is
    port ( 
         CLK : in std_logic;
         SYNC_IN : in std_logic;
         EDGE : out std_logic
         );
end edgedtctr;

architecture BEHAVIORAL of edgedtctr is
     signal sreg : std_logic_vector(2 downto 0);
begin
    process (CLK)
     begin
        if rising_edge(CLK) then
         sreg <= sreg(1 downto 0) & SYNC_IN;
         end if; 
     end process;
     
    with sreg select
        EDGE <= '1' when "100",
        '0' when others;
    
end BEHAVIORAL;
