----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2022 16:54:06
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is

component counter is
generic (max_width : natural := 9);
port(  reset     : in std_logic;
		clk      : in std_logic;
		enable   : in std_logic;
		MAX      : in std_logic_vector(max_width - 1 downto 0);
		C_INC    : in std_logic;
		C_DEC    : in std_logic;
		Color_level     : out std_logic_vector(max_width - 1 downto 0)
		);
end component;


signal reset     : std_logic;
signal clk       : std_logic;
signal enable    : std_logic;
signal MAX       : std_logic_vector(8 downto 0);
signal C_INC     : std_logic;
signal C_DEC     : std_logic;
signal Color_level  : std_logic_vector(8 downto 0);



constant period: time := 20 ms;
begin

contador: counter port map (reset, clk, enable, MAX, C_inc, c_dec, color_level);

max <= "011111111";
enable <= '1';

clock_signal : process
begin
clk <= '0';
wait for period/2;
clk <= '1';
wait for period/2;
end process;

reset <= '0' after 0.25 * period, '1' after 0.75 * period;


counts : process
begin
c_dec <= '0';
c_inc <= '1';
wait for 200 ms;
c_inc <= '0';
wait for 10 ms;
c_dec<= '1';
wait for 200 ms;
c_dec <= '0';

end process;

end Behavioral;
