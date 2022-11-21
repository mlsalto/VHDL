----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2022 12:49:11
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    PORT (
        clk : in std_logic; --Clock
        CE : in std_logic; --Chip Enable
        code : out std_logic_vector(3 downto 0); --Valor de 0 a 9
        reset : in std_logic
    );
end counter;

architecture Behavioral of counter is

signal count : unsigned(3 downto 0) := "0000";
 
begin
    process (CLK)
    begin
    if rising_edge(CLK) then
        if reset = '1' then
            if CE = '1' then
                if count < 9 then
                    count <= count + 1;
                else
                    count <= "0000";
                end if;
            else
                count <= count;
            end if;
        else
            count <= "0000";
        end if;
    end if;
    end process;
    code <= std_logic_vector(count);

end Behavioral;