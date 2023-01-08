library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity synchrnzr is
     port ( 
         CLK : in std_logic;
         ASYNC_IN : in std_logic; --Entrada asincrona
         SYNC_OUT : out std_logic --Salida sincrona
     );
end synchrnzr;

architecture BEHAVIORAL of synchrnzr is
    signal sreg : std_logic_vector(1 downto 0); -- Señal que sincroniza el evento con la señal de reloj
begin
    process (CLK)
    begin
        if rising_edge(CLK) then 
        sync_out <= sreg(1); 
        sreg <= sreg(0) & async_in; --Sync_out valdrá '1' despues de 2 ciclos de reloj
        end if; 
    end process;
end BEHAVIORAL;
