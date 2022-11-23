library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    port(
        button_R : in std_logic;
        button_G : in std_logic;
        button_B : in std_logic;
        clk : in std_logic;
        reset : in std_logic;
        digsel : in std_logic_vector(3 downto 0);
        led_r: out std_logic;
        led_g: out std_logic;
        led_b: out std_logic;
        led_r_c: out std_logic;
        led_g_c: out std_logic;
        led_b_c: out std_logic;
        digctrl : OUT std_logic_vector(3 DOWNTO 0)
    );
end top;

architecture Behavioral of top is

    signal SYNC_IN_OUT_R : std_logic;
    signal SYNC_IN_OUT_G : std_logic;
    signal SYNC_IN_OUT_B : std_logic;
    signal EDGE_CE_R : std_logic;
    signal EDGE_CE_G : std_logic;
    signal EDGE_CE_B : std_logic;
    signal CODE_R : std_logic_vector(7 downto 0);
    signal CODE_G : std_logic_vector(7 downto 0);
    signal CODE_B : std_logic_vector(7 downto 0);
    signal CODE_R_C : std_logic_vector(7 downto 0);
    signal CODE_G_C : std_logic_vector(7 downto 0);
    signal CODE_B_C : std_logic_vector(7 downto 0);
    
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
         code_c : out std_logic_vector(7 downto 0); --Valor de 0 a 9
         reset : in std_logic
     );
    end component;
    
    component complementario is
    PORT (
       clk : in std_logic; --Clock
       led_in_r : in std_logic_vector(7 downto 0);
	   led_in_g: in std_logic_vector(7 downto 0);
	   led_in_b: in std_logic_vector(7 downto 0);
	   led_out_r: out std_logic_vector(7 downto 0);
	   led_out_g: out std_logic_vector(7 downto 0);
	   led_out_b: out std_logic_vector(7 downto 0)
    );
    end component;
    
 begin
    
    synch_r : synchrnzr   -- sincronizador
    port map(
         CLK  => clk,
         ASYNC_IN => button_R,
         SYNC_OUT => SYNC_IN_OUT_R
    );
    
    synch_g : synchrnzr   -- sincronizador
    port map(
         CLK  => clk,
         ASYNC_IN => button_G,
         SYNC_OUT => SYNC_IN_OUT_G
    );
    
    synch_b : synchrnzr   -- sincronizador
    port map(
         CLK  => clk,
         ASYNC_IN => button_B,
         SYNC_OUT => SYNC_IN_OUT_B
    );
    
    edge_r : edgedtctr    -- detector de flanco
    port map(
         CLK  => clk,
         SYNC_IN => SYNC_IN_OUT_R,
         EDGE => EDGE_CE_R
    );
    
    edge_g : edgedtctr    -- detector de flanco
    port map(
         CLK  => clk,
         SYNC_IN => SYNC_IN_OUT_G,
         EDGE => EDGE_CE_G
    );
    
    edge_b : edgedtctr    -- detector de flanco
    port map(
         CLK  => clk,
         SYNC_IN => SYNC_IN_OUT_B,
         EDGE => EDGE_CE_B
    );
    
    counter_r : counter  -- contador de 0 a 255
    port map(
         clk  => clk,
         CE => EDGE_CE_R,
         code => CODE_R,
         code_c => CODE_R_c,
         reset => reset
    );
    
    counter_g : counter  -- contador de 0 a 255
    port map(
         clk  => clk,
         CE => EDGE_CE_G,
         code => CODE_G,
         code_c => CODE_G_c,
         reset => reset
    );
    
    counter_b : counter  -- contador de 0 a 255
    port map(
         clk  => clk,
         CE => EDGE_CE_B,
         code => CODE_B,
         code_c => CODE_B_C,
         reset => reset
    );
    
    
    pwm_r: pwm -- codigo para un led
       port map(
        clk => CLK ,
        NUM => CODE_R,
        PWM_OUT => led_r
    );
    
    pwm_g: pwm -- codigo para un led
       port map(
        clk => CLK ,
        NUM => CODE_G,
        PWM_OUT => led_g
    );
    
    pwm_b: pwm -- codigo para un led
       port map(
        clk => CLK ,
        NUM => CODE_B,
        PWM_OUT => led_b
    );
    
     pwm_r_c: pwm -- codigo para un led
       port map(
        clk => CLK ,
        NUM => CODE_R_c,
        PWM_OUT => led_r_c
    );
    
    pwm_g_c: pwm -- codigo para un led
       port map(
        clk => CLK ,
        NUM => CODE_G_c,
        PWM_OUT => led_g_c
    );
    
    pwm_b_c: pwm -- codigo para un led
       port map(
        clk => CLK ,
        NUM => CODE_B_c,
        PWM_OUT => led_b_c
    );
    
    digctrl <= not(digsel);

end Behavioral;