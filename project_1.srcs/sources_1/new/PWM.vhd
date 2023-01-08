----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2022 18:08:15
-- Design Name: 
-- Module Name: PWM - Behavioral
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



--PWM with variable duty cycle:

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM is
port (
   clk: in std_logic;  
   NUM: in std_logic_vector(8 downto 0); -- Numero que te entra del counter (0 a 255)
   PWM_OUT: out std_logic -- Led que se enciende o se apaga en funcion del ciclo de trabajo
   
  );
end PWM;

architecture Behavioral of PWM is

signal counter_PWM: std_logic_vector(7 downto 0):=(others => '0');-- Contador
signal DUTY_CYCLE: std_logic_vector(8 downto 0):= '0' & NUM(7 downto 0) ; --Ciclo de trabajo

begin


 process(clk)
 begin
  if(rising_edge(clk)) then
   counter_PWM <= counter_PWM + 1;
   if(counter_PWM>=255) then
    counter_PWM <= "00000000";
   end if;
  end if;
 end process;
 PWM_OUT <= '1' when counter_PWM < DUTY_CYCLE else '0'; --Si el ciclo de trabajo es mayor al contador en ese momento, se enciende el led
end Behavioral;


