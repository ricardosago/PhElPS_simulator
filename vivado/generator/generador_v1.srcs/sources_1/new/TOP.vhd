library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP is
    Port (
        clk      : in STD_LOGIC;
        reset    : in STD_LOGIC;
        xin : in std_logic_vector(13 downto 0);
        yn       : out STD_LOGIC_VECTOR(13 downto 0)
    );
end top;

architecture Behavioral of TOP is

    -- Señales internas para interconectar los módulos
    signal xn_signal       : STD_LOGIC_VECTOR(17 downto 0);
    signal baseline_signal : STD_LOGIC_VECTOR(13 downto 0);


component modelo
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC; 
          xn : in STD_LOGIC_VECTOR(17 downto 0);
          baseline: in STD_LOGIC_VECTOR(13 downto 0);
          yn : out STD_LOGIC_VECTOR(13 downto 0));
end component;

component generador
    Port (
        clk : in std_logic;
        reset: in std_logic;
        xn  : out std_logic_vector(17 downto 0);
        baseline : out std_logic_vector(13 downto 0);
        xin : in std_logic_vector(13 downto 0)
    );
end component;
begin

    -- Instancia del generador
    u_generador : generador
        Port map (
            clk      => clk,
            reset    => reset,
            xn       => xn_signal,
            baseline => baseline_signal,
            xin => xin
            
        );

    -- Instancia del modelo
    u_modelo : modelo
        Port map (
            clk      => clk,
            reset    => reset,
            xn       => xn_signal,
            baseline => baseline_signal,
            yn       => yn
        );

end Behavioral;