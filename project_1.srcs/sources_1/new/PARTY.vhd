----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2022 22:59:06
-- Design Name: 
-- Module Name: PARTY - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PARTY is
    Port ( 
        clk: in std_logic;
        
        Red: out std_logic_vector( 8 downto 0);
        Blue: out std_logic_vector( 8 downto 0);
        Green: out std_logic_vector( 8 downto 0)
     );
end PARTY;


architecture Behavioral of PARTY is


constant count_max : std_logic_vector(19 downto 0):= (others => '1');
signal count : std_logic_vector(19 downto 0):= (others => '0');

constant color_max : std_logic_vector(7 downto 0) := (others => '1');
signal color_count : std_logic_vector(8 downto 0);

signal inc : std_logic_vector(8 downto 0);
signal dec: std_logic_vector(8 downto 0);

begin

Slower_clock:process(CLK)
begin
    if(rising_edge(CLK) ) then
		if(count < count_max) then
			count <= count + 1;
		else
			count <= (others => '0');
		end if;
	end if;
end process;

color_intensity: process(clk)
begin
	if(rising_edge(CLK)) then
	if(count = 0) then
		if(color_count < color_max) then
			color_count <= color_count + 1;
		else
			color_count <= (others => '0');
		end if;
    end if;
	end if;
end process;

inc <= "00" & color_count(6 downto 0);

dec(8) <= '0';
dec(7) <= '0';
dec(6) <= not(color_count(6));
dec(5) <= not(color_count(5));
dec(4) <= not(color_count(4));
dec(3) <= not(color_count(3));
dec(2) <= not(color_count(2));
dec(1) <= not(color_count(1));
dec(0) <= not(color_count(0)); 

Red <= inc when (color_count(8 downto 7) = "00") else
          dec when (color_count(8 downto 7) = "01") else
          (others => '0');       
Green <= dec when (color_count(8 downto 7) = "00") else
          (others => '0') when (color_count(8 downto 7) = "01") else
          inc;
Blue <= (others => '0') when (color_count(8 downto 7) = "00") else
           inc when (color_count(8 downto 7) = "01") else
           dec;


end Behavioral;
