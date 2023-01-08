----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2022 18:04:16
-- Design Name: 
-- Module Name: Convertidor_HSV_RGB - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Convertidor_HSV_RGB is
 Port ( 
        H : in std_logic_vector( 8 downto 0); 
        S : in std_logic_vector( 8 downto 0);
        V : in std_logic_vector( 8 downto 0);
        R : out std_logic_vector( 8 downto 0);
        G : out std_logic_vector( 8 downto 0);
        B : out std_logic_vector( 8 downto 0)
  );
end Convertidor_HSV_RGB;

architecture Behavioral of Convertidor_HSV_RGB is

--Valores función de las entradas

signal CapitalM : integer; 
signal m : integer;
signal z : integer;

--Señales auxiliares

signal R_U : unsigned(8 downto 0);
signal G_U : unsigned(8 downto 0);
signal B_U : unsigned(8 downto 0);

begin

process(H,S,V)
begin

-- Se hacen enteros para facilitar los calculos

CapitalM <= to_integer(255*unsigned(V)/100);
m <= to_integer(CapitalM*(1- (unsigned(S)/100)));
z <= to_integer((CapitalM - m)*unsigned((1- abs(((signed(H)/60) mod 2) - 1))));

--Dependiendo de H, R, G Y B tendrán diferentes funciones

        if (H >= 0 and H < 60) then
                R_U <= to_unsigned(CapitalM, 9);
                G_U <= to_unsigned(z+m,9);
                B_U <= to_unsigned(m,9);
                
        elsif (H >= 60 and H < 120) then
                R_U <= to_unsigned(z+m, 9);
                G_U <= to_unsigned(CapitalM,9);
                B_U <= to_unsigned(m, 9);
        
        elsif (H >= 120 and H < 180) then
                R_U <= to_unsigned(m, 9);
                G_U <= to_unsigned(CapitalM,9);
                B_U <= to_unsigned(m+z, 9);
        
        elsif (H >= 180 and H < 240) then
                R_U <= to_unsigned(m, 9);
                G_U <= to_unsigned(m+z,9);
                B_U <= to_unsigned(CapitalM, 9);
                
        elsif (H >= 240 and H < 300) then
                R_U <= to_unsigned(m+z, 9);
                G_U <= to_unsigned(m,9);
                B_U <= to_unsigned(CapitalM, 9);
        
        elsif (H >= 300 and H < 360) then
                R_U <= to_unsigned(CapitalM, 9);
                G_U <= to_unsigned(m,9);
                B_U <= to_unsigned(m+z, 9);    
       
       end if;         
       
end process;

R <= std_logic_vector(R_U);
G <= std_logic_vector(G_U);
B <= std_logic_vector(B_U);

end Behavioral;
