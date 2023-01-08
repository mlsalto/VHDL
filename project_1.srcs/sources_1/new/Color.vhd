----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2022 21:39:14
-- Design Name: 
-- Module Name: Color - structural
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
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Color is
generic (max_width : natural := 9);
port(
        reset : in std_logic;
        clk : in std_logic;
        button : in std_logic_vector(1 downto 0); --2 botones por color, button[1] lo sube y button[0] lo baja
        enable: in std_logic; -- Si esta a '1' se podrá modificar el valor del color.
        Max_level: in std_logic_vector(max_width - 1 downto 0); -- Nivel maximo del contador, varia en funcion del espacio de colores.
        color: out std_logic_vector (max_width - 1 downto 0) --Salida de la intensidad del color 
       
        );
end Color;

architecture structural of Color is

    --SEÑALES INTERMEDIAS

    signal debounced_input: std_logic_vector( 1 downto 0);
    signal SYNC_IN_OUT : std_logic_vector(1 downto 0);
    signal pulse : std_logic;
   
  
    --DECLARACION DE LOS COMPONENTES
    
    component  debouncer 
     Port ( CLK          : in STD_LOGIC;
           pushbutton	: in std_logic;
	       button_out 	: out std_logic);
	 end component;
    
    component Synchrnzr
    port ( 
         CLK : in std_logic;
         ASYNC_IN : in std_logic;
         SYNC_OUT : out std_logic
    );
    end component;
    
    
    component pulse_generator is
    port(
          clk : in std_logic;
          clk_out : buffer std_logic   
    );
    end component; 
    
    component counter 
    port(  
        reset    : in std_logic;
		clk      : in std_logic;
		enable   : in std_logic;
		MAX      : in std_logic_vector(max_width - 1 downto 0);
		C_INC    : in std_logic;
		C_DEC    : in std_logic;
		Color_level     : out std_logic_vector(max_width - 1 downto 0)
		);
    end component;
		   
    
 
begin
 
    --Instancias de los debouncer de cada boton.
    boton0_debouncer: Debouncer port map (clk, button(0), debounced_input(0));
    boton1_debouncer: Debouncer port map (clk, button(1), debounced_input(1));
    
    --Instancias de los sincronizadores de cada boton.
    boton0_synchrnzr: Synchrnzr port map(clk, debounced_input(0), sync_in_out(0)); 
    boton1_synchrnzr: Synchrnzr port map(clk, debounced_input(1), sync_in_out(1));
    
    --Instancia del generador de pulso
    pulses: Pulse_generator port map(clk, pulse);
  
    --Instancia del contador
    ctr: counter port map (reset, pulse, enable, Max_level, sync_in_out(1), sync_in_out(0), color);

end structural;
