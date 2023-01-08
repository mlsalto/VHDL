----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2022 22:24:10
-- Design Name: 
-- Module Name: RGB - Behavioral
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
--use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RGB is

   port(
        button : in std_logic_vector(1 downto 0); -- Los botones que incrementan el color
        reset : in std_logic; --Usaremos 2 botones para controlar los 3 colores en un led
        clk : in std_logic;
        enable: in std_logic_vector( 2 downto 0); --Los enable de cada color
        R : out std_logic_vector( 8 downto 0); -- Intensidad del rojo
        G : out std_logic_vector( 8 downto 0); -- Intensidad del verde
        B : out std_logic_vector( 8 downto 0) --Intensidad del azul
        );
        
end RGB;

architecture Structural of RGB is

component Color is
   port(
        reset : in std_logic;
        clk : in std_logic;
        button : in std_logic_vector(1 downto 0); --2 botones por color
        enable: in std_logic;
        Max_level: in std_logic_vector(8 downto 0);
        color: out std_logic_vector(8 downto 0)
        );
   end component;
   
constant max_rgb : std_logic_vector(8 downto 0) := "011111111"; -- 255

begin

--Instancias de los 3 colores del espacio RGB

Red: Color port map(reset, clk, button, enable(2), max_rgb, R); 
Blue: Color port map(reset, clk, button, enable(1), max_rgb, B);
Green: Color port map(reset, clk, button, enable(0), max_rgb, G);


end Structural;
