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
-- Description: Top para conectar el modelo matemático con la
--              máquina de estados finitos.                           
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



entity generator is
    port(sw: in STD_LOGIC_VECTOR(1 downto 0);
         clk: in STD_LOGIC;
         reset : in STD_LOGIC;
         bt : in STD_LOGIC;
         out_received_data: out STD_LOGIC_VECTOR(15 downto 0);
         addr : out STD_LOGIC_VECTOR (31 DOWNTO 0);
         data : in STD_LOGIC_VECTOR (31 DOWNTO 0);
         enb : out STD_LOGIC;
         yn : out STD_LOGIC_VECTOR (13 DOWNTO 0));
end generator;

architecture Behavioral of generator is

signal xn : std_logic_vector(17 downto 0) := (others => '0');
signal baseline : std_logic_vector(13 downto 0) := (others => '0');

component fsm

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
         
end component;

component modelo
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC; 
          xn : in STD_LOGIC_VECTOR(17 downto 0);
          baseline: in STD_LOGIC_VECTOR(13 downto 0);
          yn : out STD_LOGIC_VECTOR(13 downto 0));
end component;

begin

c_fsm : fsm
    port map(
         sw=>sw,
         clk => clk,
         reset => reset,
         bt => bt,
         out_received_data=>out_received_data,
         addr => addr,
         data => data,
         enb => enb,
         xn => xn,
         baseline => baseline
    );

c_modelo : modelo
    port map(
          clk => clk,
          reset => reset,
          xn  => xn,
          baseline => baseline,
          yn => yn
    );
    
end Behavioral;