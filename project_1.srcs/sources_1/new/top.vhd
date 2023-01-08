library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity top is
    port(
        button : in std_logic_vector(1 downto 0); --Usaremos 2 botones para controlar los 3 colores en un led
        clk : in std_logic;
        reset : in std_logic;
        switches_colors: in std_logic_vector(2 downto 0); --Enabler de los colores
        switches_mode: in std_logic_vector(3 downto 0); --Activadores de los modos de funcionamiento
        led_rgb: out std_logic_vector(2 downto 0); --Salida de los 3 colores
        led_rgb_comp : out std_logic_vector (2 downto 0) --Salida de los colores complementarios
    );
end top;



architecture behavioral of top is
    
   component RGB 
        port(
            button : in std_logic_vector(1 downto 0);
            reset : in std_logic;
            clk : in std_logic;
            enable: in std_logic_vector( 2 downto 0);
            R : out std_logic_vector( 8 downto 0);
            G : out std_logic_vector( 8 downto 0);
            B : out std_logic_vector( 8 downto 0));
   end component;
   
   component PWM 
        port(
             clk: in std_logic; 
             NUM: in std_logic_vector(8 downto 0); 
             PWM_OUT: out std_logic 
        );
    end component;
    
    component PARTY 
        port(     
            clk: in std_logic;
            Red: out std_logic_vector( 8 downto 0);
            Blue: out std_logic_vector( 8 downto 0);
            Green: out std_logic_vector( 8 downto 0)
        );
    end component;
    
    component HSV 
        port(
            button : in std_logic_vector(1 downto 0);
            reset : in std_logic; 
            clk : in std_logic;
            enable: in std_logic_vector( 2 downto 0);
            H : out std_logic_vector( 8 downto 0);
            S : out std_logic_vector( 8 downto 0);
            V : out std_logic_vector( 8 downto 0)
            );
    end component;
    
    component Convertidor_HSV_RGB
        port(
            H : in std_logic_vector( 8 downto 0);
            S : in std_logic_vector( 8 downto 0);
            V : in std_logic_vector( 8 downto 0);
            R : out std_logic_vector( 8 downto 0);
            G : out std_logic_vector( 8 downto 0);
            B : out std_logic_vector( 8 downto 0)
        );
    end component;
    
    type MAT is array(2 downto 0) of std_logic_vector(8 downto 0); --Matriz que representa el color en un espacio
    
    signal RGB_COLOR_ENABLERS : std_logic_vector(2 downto 0):= (others => '0' );
    signal HSV_COLOR_ENABLERS : std_logic_vector(2 downto 0):= (others => '0' );
    
    signal RGB_MODE_MAT : MAT; --Matriz que representa el color en el espacio RGB
    signal PARTY_MODE_MAT : MAT; -- Matriz que representa el color en el modo fiesta
    
    signal HSV_MODE_MAT : MAT; -- Matriz que representa el color en el espacio HSV
   
    signal HSV_TO_RGB_MAT : MAT; --Matriz que representa el color del espacio HSV en el espaaic RGB
    
    signal PWM_IN_MAT : MAT :=(others  => (others => '0' )); -- Matriz de entrada a la entidad PWM para ver el color en el led
    signal PWM_IN_COMP_MAT : MAT :=(others  => (others => '0' )); --Matriz de entrada a la entidad PWM para ver el color complementario
    
begin

--INSTANCIACION DE LO MODOS DE FUNCIONAMIENTO

RGB_MODE: RGB port map (button , reset, clk, RGB_COLOR_ENABLERS, RGB_MODE_MAT(2), RGB_MODE_MAT(1), RGB_MODE_MAT(0));
PARTY_MODE: PARTY port map (clk, PARTY_MODE_MAT(2), PARTY_MODE_MAT(1), PARTY_MODE_MAT(0)); 
HSV_MODE: HSV port map (button, reset, clk, HSV_COLOR_ENABLERS, HSV_MODE_MAT(2), HSV_MODE_MAT(1), HSV_MODE_MAT(0)); 
HSV_TO_RGB: Convertidor_HSV_RGB port map(HSV_MODE_MAT(2), HSV_MODE_MAT(1), HSV_MODE_MAT(0), HSV_TO_RGB_MAT(2), HSV_TO_RGB_MAT(1),HSV_TO_RGB_MAT(0));

--INSTANCIACION DE LOS PWM 

PWM_R: PWM port map (clk, PWM_IN_MAT(2), led_rgb(2));
PWM_B: PWM port map (clk, PWM_IN_MAT(1), led_rgb(1));
PWM_G: PWM port map (clk, PWM_IN_MAT(0), led_rgb(0));

--Seleccion de los enabler de color para cada espacio

RGB_COLOR_ENABLERS <= Switches_colors WHEN (switches_mode(2) = '1' and switches_mode(1) = '0' and switches_mode(0)= '0') ELSE
                        (others => '0' );
                        
HSV_COLOR_ENABLERS <= Switches_colors WHEN (switches_mode(2) = '0' and switches_mode(1) = '0' and switches_mode(0)= '1') ELSE
                        (others => '0' );                       

--Seleccion del modo de funcionamiento

PWM_IN_MAT <= RGB_MODE_MAT WHEN (switches_mode(2) = '1' and switches_mode(1) = '0' and switches_mode(0)= '0') ELSE
              PARTY_MODE_MAT WHEN (switches_mode(2) = '0' and switches_mode(1) = '1' and switches_mode(0)= '0') ELSE
              HSV_TO_RGB_MAT WHEN (switches_mode(2) = '0' and switches_mode(1) = '0' and switches_mode(0)= '1') ELSE
              (others  => (others => '0' ));


--Activacion del led del color complementario cuando su switch correspondiente este arriba

PWM_IN_COMP_MAT(2) <= std_logic_vector(255 - unsigned(PWM_IN_MAT(2))) WHEN switches_mode(3)='1' else 
    (others => '0' );
PWM_IN_COMP_MAT(1) <= std_logic_vector(255 - unsigned(PWM_IN_MAT(1))) WHEN switches_mode(3)='1' else 
    (others => '0' );
PWM_IN_COMP_MAT(0) <= std_logic_vector(255 - unsigned(PWM_IN_MAT(0))) WHEN switches_mode(3)='1' else 
    (others => '0' ); 

--Instanciacion de los PWM del color complementario

PWM_R_COMPLEMENTARY: PWM port map (clk, PWM_IN_COMP_MAT(2), led_rgb_comp(2));
PWM_B_COMPLEMENTARY: PWM port map (clk, PWM_IN_COMP_MAT(1), led_rgb_comp(1));
PWM_G_COMPLEMENTARY: PWM port map (clk, PWM_IN_COMP_MAT(0), led_rgb_comp(0));              
 

end behavioral;