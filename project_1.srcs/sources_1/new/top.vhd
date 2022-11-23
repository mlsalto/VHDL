library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    port(
        button : in std_logic;
        clk : in std_logic;
        reset : in std_logic;
        digsel : in std_logic_vector(3 downto 0);
        led_rgb: out std_logic;
        digctrl : OUT std_logic_vector(3 DOWNTO 0)
    );
end top;

architecture Behavioral of top is

    signal SYNC_IN_OUT : std_logic;
    signal EDGE_CE : std_logic;
    signal CODE : std_logic_vector(7 downto 0);
    
    component synchrnzr
    port ( 
          CLK : in std_logic;
          ASYNC_IN : in std_logic;
          SYNC_OUT : out std_logic
    );
    end component;
    
    component edgedtctr
     port ( 
         CLK : in std_logic;
         SYNC_IN : in std_logic;
         EDGE : out std_logic
     );
    end component;
    
    component pwm 
        port(
             clk: in std_logic; -- 100MHz clock input 
             NUM: in std_logic_vector(7 downto 0); -- numero que le entra
             PWM_OUT: out std_logic -- PWM signal out with frequency of 10MHz
        );
    end component;
    
    component counter
     port (
         clk : in std_logic; --Clock
         CE : in std_logic; --Chip Enable
         code : out std_logic_vector(7 downto 0); --Valor de 0 a 9
         reset : in std_logic
     );
    end component;
    
    
 begin
    
    i0 : synchrnzr   -- sincronizador
    port map(
         CLK  => clk,
         ASYNC_IN => button,
         SYNC_OUT => SYNC_IN_OUT
    );
    
    i1 : edgedtctr    -- detector de flanco
    port map(
         CLK  => clk,
         SYNC_IN => SYNC_IN_OUT,
         EDGE => EDGE_CE
    );
    
    i2 : counter  -- contador de 0 a 255
    port map(
         clk  => clk,
         CE => EDGE_CE,
         code => CODE,
         reset => reset
    );
    
    i3: pwm -- codigo para un led
       port map(
        clk => CLK ,
        NUM => CODE,
        PWM_OUT => led_rgb
    );
    
    
    digctrl <= not(digsel);

end Behavioral;