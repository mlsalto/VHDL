library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Debouncer is
    Port ( CLK          : in STD_LOGIC;
           pushbutton	: in std_logic;
	       button_out 	: out std_logic);
end Debouncer;

architecture  behavioral of Debouncer is
constant MAX : integer :=21; --the higher this is, the more longer time the user has to press the button.
signal count : std_logic_vector(MAX downto 0) := (others => '0'); -- Contador que cuenta hasta 10 ms
signal button_prev : std_logic :='0'; --Almacena el estado en el ciclo anterior de reloj

begin

process(clk)
begin
    if rising_edge(clk) then
        if (button_prev xor pushbutton) = '1' then
            count <= (others => '0');
            button_prev <= pushbutton;
        elsif count(MAX) = '0' then
            count <= count + 1;
        else 
            button_out <= button_prev; --Si no ha cambiado el estado y el contador ha llegado a su fin, 
        end if;                         -- se da por hecho que la pulsacion es estable
    end if;
end process;                  
                                                                                
end architecture behavioral;
