----------------------------------------------------------------------------------
-- Company: Universidad EIA
-- Engineer: Ricardo Sánchez Gómez, Daniel Ávila Gómez
-- 
-- Create Date: 11/30/2024 05:43:57 PM
-- Design Name: Modelo matemático PhElPS
-- Module Name: generator - Behavioral
-- Project Name: Photo Electron Physical Simulator.
-- Target Devices: Basys3
-- Tool Versions: 
-- Description: Máquina de estados finitos para entregar 
--                  las entradas del modelo matemático
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

entity fsm is
    port(sw: in STD_LOGIC_VECTOR(1 downto 0);
         clk: in STD_LOGIC;
         reset : in STD_LOGIC;
         bt : in STD_LOGIC;
         out_received_data: out STD_LOGIC_VECTOR(15 downto 0);
         addr : out STD_LOGIC_VECTOR (31 DOWNTO 0);
         data : in STD_LOGIC_VECTOR (31 DOWNTO 0);
         enb : out STD_LOGIC;
         xn : out STD_LOGIC_VECTOR (17 DOWNTO 0);
         baseline : out STD_LOGIC_VECTOR(13 DOWNTO 0));
end fsm;

architecture Behavioral of fsm is

type states is (INICIO, SAMPLING, DATA_SAMPLING, DELAY);
signal state, next_state  : states := INICIO;

signal counter : integer range 0 to 3 := 0;
signal count_wait : integer := 0;

signal internal_address : integer := 0;

signal enable : STD_LOGIC := '0';

signal send_enable : STD_LOGIC := '0';
signal delay_enable : STD_LOGIC := '0';

type ricardo is array (3 downto 0) of STD_LOGIC_VECTOR(17 downto 0);
signal datos : ricardo;

begin
next_state_proc : process(clk, reset, next_state)
begin

    if rising_edge(clk) then
    
        if reset = '1' then
        state <= INICIO;
        else
        state <= next_state;
        end if;
    
    end if;
    
end process next_state_proc;


update_state_proc : process(state, next_state, bt,counter, internal_address,count_wait)

begin
next_state <= state;
    case state is
    when INICIO =>
        if bt = '1' then
        next_state <= SAMPLING;
        end if;
    
    when SAMPLING =>
    if counter = 3 then
    next_state <= DATA_SAMPLING;
    end if;

    when DATA_SAMPLING =>
        if internal_address = 2 then
        next_state <= INICIO;
        else
        next_state <= DELAY;
        end if;
    
    when DELAY =>
        if count_wait = 50000 then
        next_state <= DATA_SAMPLING;
        end if;
    
    when others =>
    null;
    
    end case;

end process update_state_proc;


outputs_state_proc : process(state, counter, count_wait)
begin

case state is
  when SAMPLING =>
  enable <= '1';
  send_enable <= '0';
  delay_enable <= '0';
  
  when DATA_SAMPLING =>
  enable <= '0';
  send_enable <= '1';
  delay_enable <= '0';
  
  when DELAY =>
  enable <= '0';
  send_enable <= '0';
  delay_enable <= '1';
  
  when others =>
  enable <= '0';
  send_enable <= '0';
  delay_enable <= '0';
  
   

end case;

end process outputs_state_proc;




reading_counter_proc: process(clk, reset)
begin
   if rising_edge(clk) then   
        if reset = '1' then
            counter <= 0;
            datos <= (others => (others => '0'));
 
        else
            if enable = '1' then
            
                datos(counter) <= "00" & data(15 downto 0);
                
                if counter = 3 then
                
                    counter <= 0;
                    
                else
                
                    counter <= counter + 1;
                    
                end if;
            
            end if;

        end if;
   end if;


end process reading_counter_proc;


internal_proc : process(clk, send_enable, reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            internal_address <= 0;
        else
            if send_enable = '1' then
                if internal_address = 2 then
                    internal_address <= 0;
                else
                    internal_address <= internal_address+1;
                end if;
            end if;
        end if;
    
    
    end if;
    
end process internal_proc;


delay_proc : process(clk, delay_enable, reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            count_wait <= 0;
        else
            if delay_enable = '1' then
                if count_wait = 50000 then
                    count_wait <= 0;
                else
                    count_wait <= count_wait+1;
                end if;
            end if;
        end if;
    
    
    end if;
    
end process delay_proc;





address_proc: process(counter)
begin
    case counter is
        when 0 =>
            addr <= X"00000000";
        when 1 =>
            addr <= X"00000004";
        when 2 =>
            addr <= X"00000008";
        when 3 =>
            addr <= X"0000000C";
        when others =>
            addr <= X"00000000";
    end case;
end process address_proc;

enb <= enable;
xn <=  datos(internal_address) when (send_enable = '1') else (others => '0'); -- datos(internal_address)("01" & X"ffff")
baseline <= datos(3)(13 downto 0);
         
mux_out: process(sw, datos)
begin
    case sw is
        when "00" =>
            out_received_data <= datos(0)(15 downto 0);  -- Input 1
        when "01" =>
            out_received_data <= datos(1)(15 downto 0);  -- Input 2
        when "10" =>
            out_received_data <= datos(2)(15 downto 0);  -- Input 3
        when "11" =>
            out_received_data <= datos(3)(15 downto 0);  -- Baseline
    end case;
end process mux_out;

         
end Behavioral;


