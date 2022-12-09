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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Color is
port(
        reset : in std_logic;
        clk : in std_logic;
        button : in std_logic_vector(1 downto 0); --2 botones por color, 1 lo sube y 0 lo baja
        enable: in std_logic;
        color: out std_logic --Salida de la intensidad del color
        
        );
end Color;

architecture structural of Color is

    signal debounced_input: std_logic_vector( 1 downto 0);
    signal SYNC_IN_OUT : std_logic_vector(1 downto 0);
    signal pulse : std_logic_vector(1 downto 0);
    signal Level_input : std_logic_vector(7 downto 0);
  
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
    
    component Buttondtctr
    port(  
         CLK : in std_logic;
         SYNC_IN : in std_logic;
         EDGE : out std_logic);
    end component;
    
    component counter 
    port(  
        reset    : in std_logic;
		clk      : in std_logic;
		enable   : in std_logic;
		C_INC    : in std_logic;
		C_DEC    : in std_logic;
		duty_cycle     : out std_logic_vector(7 downto 0));
    end component;
		
    component PWM 
        port(
             clk: in std_logic; -- 100MHz clock input 
             NUM: in std_logic_vector(7 downto 0); -- numero que le entra
             PWM_OUT: out std_logic -- PWM signal out with frequency of 10MHz
        );
    end component;
    
begin
 
    --Instancias de los debouncer de cada boton.
    boton0_debouncer: Debouncer port map (clk, button(0), debounced_input(0));
    boton1_debouncer: Debouncer port map (clk, button(1), debounced_input(1));
    
    --Instancias de los sincronizadores de cada boton.
    boton0_synchrnzr: Synchrnzr port map(clk, debounced_input(0), sync_in_out(0)); 
    boton1_synchrnzr: Synchrnzr port map(clk, debounced_input(1), sync_in_out(1));
    
    --Instancia del detector de boton
   boton0_dtctr: Buttondtctr port map(clk, sync_in_out(0),pulse(0));
   boton1_dtctr: Buttondtctr port map(clk, sync_in_out(1),pulse(1));
 
 --Instancia del contador
    ctr: counter port map (reset, clk, enable, pulse(1), pulse(0), level_input);
    
    --Instancia del PWM
    pwminstance: PWM port map(clk, level_input, color);


end structural;
