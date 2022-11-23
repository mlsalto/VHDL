library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity debouncer is 
port (	reset: in std_logic;
	CLK : in std_logic;
  	pushbutton : in std_logic;
  	pulse: out std_logic);
end debouncer;

architecture behavioral of Debouncer is

constant MAX : integer :=10; --the higher this is, the more longer time the user has to press the button.
constant BTN_ACTIVE: std_logic :='1';

signal count : integer := 0;
type state_type is (idle,wait_time); --state machine
signal state : state_type := idle; --default state

begin

process(reset, clk)
    begin
--    if(Reset = '0') then
--          state <= idle; 
--          pulse_out <= '0';
--    elsif(rising_edge(Clock)) then
--         case (state) is
--            when idle =>
--                if(button_in = BTN_ACTIVE) then  
--                    state <= wait_time;
--                else
--                    state <= idle; --wait until button is pressed.
--                end if;
--                pulse_out <= '0';
--            when wait_time =>
--                if(count = COUNT_MAX) then
--                    count <= 0;
--                    if(button_in = BTN_ACTIVE) then
--                        pulse_out <= '1';
--                    end if;
--                    state <= idle;  
--                else
--                    count <= count + 1;
--                end if; 
--        end case;       
--     end if;        
   end process;                  
                                                                                
end architecture behavioral;
