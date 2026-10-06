----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/17/2024 08:54:43 AM
-- Design Name: 
-- Module Name: clk_div - Behavioral
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

entity clk_div is
    Port ( 
    clk: in std_logic;
    clk_o: out std_logic);
end clk_div;

architecture Behavioral of clk_div is
signal count: integer := 0;
signal clk_aux: std_logic := '0';
begin

process(clk)
begin
 if rising_edge(clk) then
     if count = 63 then --antes estaba en 4
        count <= 0;
        clk_aux <= not clk_aux;
     else
         count <= count +1;
     end if;
 end if;
end process;

clk_o <= clk_aux;
end Behavioral;
