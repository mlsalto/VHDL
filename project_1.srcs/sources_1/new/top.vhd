library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    port(
        button : in std_logic_vector(1 downto 0); --Usaremos 2 botones para controlar los 3 colores en un led
        clk : in std_logic;
        reset : in std_logic;
        switches: in std_logic_vector(2 downto 0);
        led_rgb: out std_logic_vector(2 downto 0) --Salida de los 3 colores
        
    );
end top;

architecture behavioral of top is
    
   --Declaracion del color
   component Color is
   port(
        reset : in std_logic;
        clk : in std_logic;
        button : in std_logic_vector(1 downto 0); --2 botones por color
        enable: in std_logic;
        color: out std_logic
        );
   end component;
   
   
begin

--Instanciacion de los colores
 
        
        Red: Color port map(reset, clk, button, switches(2), led_rgb(2));

        Blue: Color port map(reset, clk, button, switches(1), led_rgb(1));
  
        Green: Color port map(reset, clk, button, switches(0), led_rgb(0));
    

 
         

end behavioral;