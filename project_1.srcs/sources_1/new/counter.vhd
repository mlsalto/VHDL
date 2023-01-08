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
	   reset     : in std_logic; --Señal asincrona que pone el contador a 0
		clk      : in std_logic;
		enable   : in std_logic; --Señal que activa el contador
		MAX      : in std_logic_vector(max_width - 1 downto 0); --Limite de la cuenta
		C_INC    : in std_logic; --Señal para incrementar en una unidad
		C_DEC    : in std_logic; --Señal para decrementar en una unidad
		Color_level     : out std_logic_vector(max_width - 1 downto 0) --Cuenta
	);
end counter;

architecture BEHAVIORAL of counter is
	signal COUNT    : unsigned(max_width - 1 downto 0);	
begin		
Color_counting: process(reset, clk , enable)
	    begin
			if reset='0' then
			     count <= (others => '0'); --Se reinicia la cuenta si se presiona el reset
				elsif rising_edge(clk) then
					if enable ='1' then --Si el contador está activo:
						if C_INC = '1' and C_DEC = '0' then -- Si esta presionado el boton de incrementar y el de decrementar no:
							if COUNT < unsigned(MAX) then -- Si la cuenta no ha llegado a su limite:
								COUNT <= COUNT + 1; --Se incrementa
							else
								COUNT <= unsigned(MAX); --Si ya esta en su limite, se queda en el limite.
							end if;						
						elsif C_DEC = '1' and C_INC = '0' then -- Si esta presionado el boton de decrementar y el de incrementar no:
							if COUNT > 0 then --Si la cuenta es mayor que 0
								COUNT <= COUNT - 1; -- Se decrementa
							else
								COUNT <= (others => '0'); --Si la cuenta vale 0, se queda en 0
							end if;
						end if;
					end if;
				end if;
		end process;
	Color_level <= std_logic_vector(COUNT); --Asignamos a la salida el valor del contador.
	end behavioral;