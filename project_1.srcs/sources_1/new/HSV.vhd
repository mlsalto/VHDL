----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2022 22:59:06
-- Design Name: 
-- Module Name: HSV - Structural
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

entity HSV is
  Port (
        button : in std_logic_vector(1 downto 0);
        reset : in std_logic; --Usaremos 2 botones para controlar los 3 colores en un led
        clk : in std_logic;
        enable: in std_logic_vector( 2 downto 0);
        H : out std_logic_vector( 8 downto 0);
        S : out std_logic_vector( 8 downto 0);
        V : out std_logic_vector( 8 downto 0)
   );
end HSV;

architecture Structural of HSV is

component Color is
   port(
        reset : in std_logic;
        clk : in std_logic;
        button : in std_logic_vector(1 downto 0); --2 botones por color
        enable: in std_logic;
        Max_level: in std_logic_vector(8 downto 0);
        color: out std_logic_vector
        );
   end component;

begin

Hue: Color port map (reset, clk, button, enable(2),"101101000" , H); -- 101101000 es 360, el valor maximo que puede tomar.
Saturation : Color port map (reset, clk, button, enable(1),"001100100" , S); -- 001100100 es 100, el valor maximo que puede tomar.
Value : Color port map (reset, clk, button, enable(0),"001100100" , V);  

end Structural;
