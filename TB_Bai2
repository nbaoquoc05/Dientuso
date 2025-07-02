library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_nor_logic is

end tb_nor_logic;

architecture behavior of tb_nor_logic is

    component nor_logic
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               C : in  STD_LOGIC;
               F : out STD_LOGIC);
    end component;

    signal A, B, C, F : STD_LOGIC;

begin

    uut: nor_logic Port map (
        A => A,
        B => B,
        C => C,
        F => F
    );

    stim_proc: process
    begin

        A <= '0'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1'; wait for 10 ns;

        wait;
    end process;

end behavior;
