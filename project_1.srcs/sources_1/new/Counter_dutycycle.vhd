----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2022 21:48:40
-- Design Name: 
-- Module Name: Counter_dutycycle - Behavioral
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

entity counter_dutyclycle is
	port(
		clk      : in std_logic;
		C_INC    : in std_logic;
		C_DEC    : in std_logic;
		code     : out std_logic_vector(7 downto 0)
	);
end counter_dutycycle;

architecture BEHAVIORAL of counter is
	signal COUNT    : unsigned (7 downto 0) := "00000000";
	begin
		process(CLK);
			begin
				if rising_edge(CLK) then
					if RESET ='1' then
						if C_INC = '1' then
							if COUNT < 255 then
								COUNT <= COUNT + 1
							else
								COUNT <= "11111111";
							end if;
						else
							COUNT <= COUNT;
						end if;
						if C_DEC = '1' then
							if COUNT > 0 then
								COUNT = COUNT - 1;
							else
								COUNT <= "00000000";
							end if;
						else
							COUNT <= COUNT;
						end if;
					end if;
				end if;
		end process;
	code <= std_logic_vector(COUNT);