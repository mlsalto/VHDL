library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity top is
    port(
        button : in std_logic_vector(1 downto 0); --Usaremos 2 botones para controlar los 3 colores en un led
        clk : in std_logic;
        reset : in std_logic;
        switches_colors: in std_logic_vector(2 downto 0);
        switches_mode: in std_logic_vector(3 downto 0);
        led_rgb: out std_logic_vector(2 downto 0); --Salida de los 3 colores
        led_rgb_comp : out std_logic_vector (2 downto 0) --Salida de los colores complementarios
    );
end top;



architecture behavioral of top is
    
   component RGB 
        port(
            button : in std_logic_vector(1 downto 0);
            reset : in std_logic; --Usaremos 2 botones para controlar los 3 colores en un led
            clk : in std_logic;
            enable: in std_logic_vector( 2 downto 0);
            R : out std_logic_vector( 8 downto 0);
            G : out std_logic_vector( 8 downto 0);
            B : out std_logic_vector( 8 downto 0));
   end component;
   
   component PWM 
        port(
             clk: in std_logic; -- 100MHz clock input 
             NUM: in std_logic_vector(8 downto 0); -- numero que le entra
             PWM_OUT: out std_logic -- PWM signal out with frequency of 10MHz
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
            reset : in std_logic; --Usaremos 2 botones para controlar los 3 colores en un led
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
    
    type MAT is array(2 downto 0) of std_logic_vector(8 downto 0);
    
    signal RGB_COLOR_ENABLERS : std_logic_vector(2 downto 0):= (others => '0' );
    signal HSV_COLOR_ENABLERS : std_logic_vector(2 downto 0):= (others => '0' );
    
    signal RGB_MODE_MAT : MAT;
    signal PARTY_MODE_MAT : MAT;
    
    signal HSV_MODE_MAT : MAT;
   
    signal HSV_TO_RGB_MAT : MAT;
    
    signal PWM_IN_MAT : MAT :=(others  => (others => '0' ));
    signal PWM_IN_COMP_MAT : MAT :=(others  => (others => '0' ));
    
begin

RGB_MODE: RGB port map (button , reset, clk, RGB_COLOR_ENABLERS, RGB_MODE_MAT(2), RGB_MODE_MAT(1), RGB_MODE_MAT(0));
PARTY_MODE: PARTY port map (clk, PARTY_MODE_MAT(2), PARTY_MODE_MAT(1), PARTY_MODE_MAT(0)); 

HSV_MODE: HSV port map (button, reset, clk, HSV_COLOR_ENABLERS, HSV_MODE_MAT(2), HSV_MODE_MAT(1), HSV_MODE_MAT(0)); 
HSV_TO_RGB: Convertidor_HSV_RGB port map(HSV_MODE_MAT(2), HSV_MODE_MAT(1), HSV_MODE_MAT(0), HSV_TO_RGB_MAT(2), HSV_TO_RGB_MAT(1),HSV_TO_RGB_MAT(0));


PWM_R: PWM port map (clk, PWM_IN_MAT(2), led_rgb(2));
PWM_B: PWM port map (clk, PWM_IN_MAT(1), led_rgb(1));
PWM_G: PWM port map (clk, PWM_IN_MAT(0), led_rgb(0));


RGB_COLOR_ENABLERS <= Switches_colors WHEN (switches_mode(2) = '1' and switches_mode(1) = '0' and switches_mode(0)= '0') ELSE
                        (others => '0' );
                        
HSV_COLOR_ENABLERS <= Switches_colors WHEN (switches_mode(2) = '0' and switches_mode(1) = '0' and switches_mode(0)= '1') ELSE
                        (others => '0' );                       

PWM_IN_MAT <= RGB_MODE_MAT WHEN (switches_mode(2) = '1' and switches_mode(1) = '0' and switches_mode(0)= '0') ELSE
              PARTY_MODE_MAT WHEN (switches_mode(2) = '0' and switches_mode(1) = '1' and switches_mode(0)= '0') ELSE
              HSV_TO_RGB_MAT WHEN (switches_mode(2) = '0' and switches_mode(1) = '0' and switches_mode(0)= '1') ELSE
              (others  => (others => '0' ));



PWM_IN_COMP_MAT(2) <= std_logic_vector(64 - unsigned(PWM_IN_MAT(2))) WHEN switches_mode(3)='1' else 
    (others => '0' );
PWM_IN_COMP_MAT(1) <= std_logic_vector(64 - unsigned(PWM_IN_MAT(1))) WHEN switches_mode(3)='1' else 
    (others => '0' );
PWM_IN_COMP_MAT(0) <= std_logic_vector(64 - unsigned(PWM_IN_MAT(0))) WHEN switches_mode(3)='1' else 
    (others => '0' ); 

PWM_R_COMPLEMENTARY: PWM port map (clk, PWM_IN_COMP_MAT(2), led_rgb_comp(2));
PWM_B_COMPLEMENTARY: PWM port map (clk, PWM_IN_COMP_MAT(1), led_rgb_comp(1));
PWM_G_COMPLEMENTARY: PWM port map (clk, PWM_IN_COMP_MAT(0), led_rgb_comp(0));              
 

end behavioral;