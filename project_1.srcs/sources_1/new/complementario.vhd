library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity complementario is
    PORT (
       clk : in std_logic; --Clock
       led_in_r : in std_logic_vector(7 downto 0);
	   led_in_g: in std_logic_vector(7 downto 0);
	   led_in_b: in std_logic_vector(7 downto 0);
	   led_out_r: out std_logic_vector(7 downto 0);
	   led_out_g: out std_logic_vector(7 downto 0);
	   led_out_b: out std_logic_vector(7 downto 0)
    );
end complementario;

architecture Behavioral of complementario is
	signal count_r: std_logic_vector(7 downto 0) := "00000000";
	signal count_g: std_logic_vector(7 downto 0) := "00000000";
	signal count_b: std_logic_vector(7 downto 0) := "00000000";
	
 begin
	process (CLK)
	begin
	if rising_edge(CLK) then
		count_r <= 255 - led_in_r;
		count_g <= 255 - led_in_g;
		count_b <= 255 - led_in_b;
	end if;
	end process;
 	led_out_r <= std_logic_vector(count_r);
	led_out_g <= std_logic_vector(count_g);
	led_out_b <= std_logic_vector(count_b);

end Behavioral;
