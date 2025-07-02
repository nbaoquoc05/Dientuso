library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter_0_1_3_5_7_tff is
end tb_counter_0_1_3_5_7_tff;

architecture behavior of tb_counter_0_1_3_5_7_tff is

    component counter_0_1_3_5_7_tff
        Port ( clk : in STD_LOGIC;
               clr : in STD_LOGIC;
               Q   : out STD_LOGIC_VECTOR (2 downto 0));
    end component;

    signal clk, clr : STD_LOGIC := '0';
    signal Q : STD_LOGIC_VECTOR(2 downto 0);

begin

    uut: counter_0_1_3_5_7_tff port map (
        clk => clk,
        clr => clr,
        Q   => Q
    );

    clk_process: process
    begin
        while now < 400 ns loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;

    stim_proc: process
    begin
        clr <= '1';
        wait for 10 ns;
        clr <= '0';
        wait;
    end process;

end behavior;
