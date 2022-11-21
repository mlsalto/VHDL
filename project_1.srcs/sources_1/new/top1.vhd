----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2022 11:57:42
-- Design Name: 
-- Module Name: top1 - Behavioral
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

-- PARTE 1
--ENTITY top1 IS
--     PORT ( code : IN std_logic_vector(3 DOWNTO 0);
--           digsel : IN std_logic_vector(3 DOWNTO 0);
--           digctrl : OUT std_logic_vector(3 DOWNTO 0);
--           segment : OUT std_logic_vector(6 DOWNTO 0)
--     );
--END top1;

--architecture Behavioral of top1 is
--    COMPONENT decoder
--     PORT (
--        code : IN std_logic_vector(3 DOWNTO 0);
--        led : OUT std_logic_vector(6 DOWNTO 0)
--        );
--    END COMPONENT;

--begin
--    Inst_decoder: decoder PORT MAP (
--    code =>code ,
--    led => segment
--    );
--digctrl <= not(digsel); 

--end Behavioral;

-- PARTE 2
entity top1 is
    port(
        button : in std_logic;
        clk : in std_logic;
        reset : in std_logic;
        digsel : in std_logic_vector(3 downto 0);
        DUTY_IN: in std_logic;
        DUTY_DEC: in std_logic;
        led_rgb: out std_logic;
        light: out std_logic_vector(3 downto 0);
        digctrl : OUT std_logic_vector(3 DOWNTO 0);
        segment : OUT std_logic_vector(6 DOWNTO 0)
    );
end top1;

architecture Behavioral of top1 is

    signal SYNC_IN_OUT : std_logic;
    signal EDGE_CE : std_logic;
    signal CODE : std_logic_vector(3 downto 0);
    
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
             DUTY_INCREASE: in std_logic; -- button to increase duty cycle by 10%
             DUTY_DECREASE: in std_logic; -- button to decrease duty cycle by 10%
             PWM_OUT: out std_logic -- PWM signal out with frequency of 10MHz
        );
    end component;
    
    component counter
     port (
         clk : in std_logic; --Clock
         CE : in std_logic; --Chip Enable
         code : out std_logic_vector(3 downto 0); --Valor de 0 a 9
         reset : in std_logic
     );
    end component;
    
    
 begin
    
    i0 : synchrnzr
    port map(
         CLK  => clk,
         ASYNC_IN => button,
         SYNC_OUT => SYNC_IN_OUT
    );
    
    i1 : edgedtctr
    port map(
         CLK  => clk,
         SYNC_IN => SYNC_IN_OUT,
         EDGE => EDGE_CE
    );
    
    i2 : counter
    port map(
         clk  => clk,
         CE => EDGE_CE,
         code => CODE,
         reset => reset
    );
    
     i3: pwm
       port map(
        clk => CLK ,
        DUTY_INCREASE => EDGE_CE ,
        DUTY_DECREASE => DUTY_DEC,
        PWM_OUT => led_rgb
    );
    
    
    digctrl <= not(digsel);

end Behavioral;