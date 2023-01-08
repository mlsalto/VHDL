----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2023 19:02:43
-- Design Name: 
-- Module Name: top_tb - Behavioral
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

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is

component top
    Port (
	button           : in std_logic_vector(1 downto 0); --Usaremos 2 botones para controlar los 3 colores en un led
        clk              : in std_logic;
        reset            : in std_logic;
        switches_colors  : in std_logic_vector(2 downto 0);
        switches_mode    : in std_logic_vector(3 downto 0);
        led_rgb          : out std_logic_vector(2 downto 0); --Salida de los 3 colores
        led_rgb_comp     : out std_logic_vector (2 downto 0) --Salida de los colores complementarios
);
end component;

signal clk, reset : std_logic;
signal button : std_logic_vector(1 downto 0);
signal switches_colors, led_rgb, led_rgb_comp : std_logic_vector(2 downto 0);
signal switches_mode: std_logic_vector(3 downto 0);

constant CLK_sig: time:=10 ns; -- tiempo del puslo del reloj
constant k: time:=40 ms; -- tiempo arbitrario empleado para comprobar los cambios que se producen en la entidad top

begin
    uut: top port map(
        clk => clk,
        reset => reset,
        button => button,
        switches_colors => switches_colors,
        switches_mode => switches_mode,
        led_rgb => led_rgb,
        led_rgb_comp => led_rgb_comp
        );

reset <= '0', '1' after k/4; -- asignar a reset el valor de 0 y pasado un tiempo k, que permanezca en 1 indefinidamente

    clock_signal: process -- pulsos del reloj
    begin
        CLK <= '0';
        wait for CLK_sig/2;    
        CLK <= '1';
        wait for CLK_sig/2;
    end process;
    
    buttons: process
    begin
    button(0) <= '0'; -- button(0) -> decrementar
	button(1) <= '1'; -- button(1) -> incrementar
	wait for 2*k;
	button(0) <= '1';
	button(1) <= '0';
	wait for 3*k;
    end process;
    
    switches_colors_changes: process
    begin
	switches_colors(0) <= '0';  
	switches_colors(1) <= '0';
	switches_colors(2) <= '1'; --Rojo/Hue encendido
	wait for 5*k;
	switches_colors(0) <= '0';
	switches_colors(1) <= '1'; --Verde/Saturation encendido
	switches_colors(2) <= '0';
	wait for 5*k;
	switches_colors(0) <= '0';
	switches_colors(1) <= '1'; --Verde/Saturation encendido
	switches_colors(2) <= '1'; --Rojo/Hue encendido
	wait for 5*k;
	switches_colors(0) <= '1'; --Azul/Value encendido
	switches_colors(1) <= '0';
	switches_colors(2) <= '0';
	wait for 5*k;
	switches_colors(0) <= '1'; --Azul/Value encendido
	switches_colors(1) <= '0';
	switches_colors(2) <= '1'; --Rojo/Hue encedido
	wait for 5*k;
	switches_colors(0) <= '1'; --Azul/Value encendido
	switches_colors(1) <= '1'; --Verde/Saturation encendido
	switches_colors(2) <= '0';
	wait for 5*k;
	switches_colors(0) <= '1'; --Todos encendidos
	switches_colors(1) <= '1';
	switches_colors(2) <= '1';
	wait for 5*k;
	
    end process;
    
    switches_mode_changes: process
    begin
    switches_mode(2) <= '1'; -- Modo rgb activo
	switches_mode(1) <= '0';
	switches_mode(0) <= '0';
	wait for 35*k;
	switches_mode(2) <= '0';
	switches_mode(1) <= '0';
	switches_mode(0) <= '1'; -- Modo HSV activo
	wait for 35*k;
	switches_mode(0) <= '0';
	switches_mode(1) <= '1'; -- Modo fiesta activo
	switches_mode(2) <= '0';
	wait for 35*k;
	end process;
	
    complementario : process
    begin
    switches_mode(3) <= '0'; --  color complementario activo
    wait for 10*k;
	switches_mode(3) <= '1'; --  color complementario activo
	wait for 25*k;
	end process;
end Behavioral;
