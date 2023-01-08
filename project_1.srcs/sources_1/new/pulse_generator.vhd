----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2022 18:11:15
-- Design Name: 
-- Module Name: pulse_generator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pulse_generator is
  Port (
            clk :in std_logic;
            clk_out: buffer std_logic:='0'
   );
end pulse_generator;

architecture Behavioral of pulse_generator is

begin

process(clk)
variable temp:integer range 0 to 2000000:=0; --Para que la frecuencia de la señal sea de 25 Hz
begin
if rising_edge(clk) then
    temp:=temp+1;
    if(temp>=2000000)then
        clk_out <=not clk_out; -- Se cambia el estado de la salida en un semiperiodo
        temp:=0;
    end if;
end if;
end process;

end Behavioral;
