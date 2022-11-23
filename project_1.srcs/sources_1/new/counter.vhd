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
        code : out std_logic_vector(7 downto 0); --Valor de 0 a 9
        code_c : out std_logic_vector(7 downto 0); --Valor de 0 a 9
        reset : in std_logic
    );
end counter;

architecture Behavioral of counter is

signal count : unsigned(7 downto 0) := "00000000";
signal count_c : unsigned(7 downto 0) := "11111111";

begin
    process (CLK)
    begin
    if rising_edge(CLK) then
        if reset = '1' then
            if CE = '1' then
                if count < 255 then
                    count <= count + 1;
                    count_c <= 255 - count;
                else
                    count <= "00000000";
                    count_c <= "11111111";
                end if;
            else
                count <= count;
                count_c <= count_c;           
            end if;
        else
            count <= "00000000";
            count <= "11111111";
        end if;
    end if;
    end process;
    code <= std_logic_vector(count);
    code_c <= std_logic_vector(count_c);
end Behavioral;