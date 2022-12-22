----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2022 12:47:30
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
generic (max_width : natural := 9);
	port(
	   reset     : in std_logic;
		clk      : in std_logic;
		enable   : in std_logic;
		MAX      : in std_logic_vector(max_width - 1 downto 0);
		C_INC    : in std_logic;
		C_DEC    : in std_logic;
		Color_level     : out std_logic_vector(max_width - 1 downto 0)
	);
end counter;

architecture BEHAVIORAL of counter is
	signal COUNT    : unsigned(max_width - 1 downto 0);
	
	begin

		
Color_counting: process(reset, clk , enable)
	    begin
			if reset='0' then
			     count <= (others => '0');
				elsif rising_edge(clk) then
					if enable ='1' then
						if C_INC = '1' and C_DEC = '0' then
							if COUNT < unsigned(MAX) then
								COUNT <= COUNT + 1;
							else
								COUNT <= unsigned(MAX);
							end if;						
						elsif C_DEC = '1' and C_INC = '0' then
							if COUNT > 0 then
								COUNT <= COUNT - 1;
							else
								COUNT <= (others => '0');
							end if;
						end if;
					end if;
				end if;
		end process;
	Color_level <= std_logic_vector(COUNT);
	end behavioral;