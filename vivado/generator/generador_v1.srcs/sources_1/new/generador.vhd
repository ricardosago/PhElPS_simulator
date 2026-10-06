library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity generador is
    Port (
        clk      : in std_logic;
        reset    : in std_logic;
        xn       : out std_logic_vector(17 downto 0);
        baseline : out std_logic_vector(13 downto 0);
        xin: in std_logic_vector(13 downto 0)
    );
end generador;

architecture Behavioral of generador is
    signal counter : integer := 0;
    signal salida  : std_logic_vector(17 downto 0) := (others => '0');
begin

    entradas: process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                counter <= 0;
                salida  <= (others => '0'); -- Asegurar salida en reset
            else
                if counter = 6250-1 then 
                    salida <= xin & "1111";
                    counter <= 0;
                else
                    salida <= (others => '0');
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process entradas;

    xn <= salida;
    baseline <= "00111111111111";
end Behavioral;