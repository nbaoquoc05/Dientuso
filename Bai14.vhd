library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_0_1_3_5_7_tff is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           Q   : out STD_LOGIC_VECTOR (2 downto 0));
end counter_0_1_3_5_7_tff;

architecture Behavioral of counter_0_1_3_5_7_tff is
    signal Q_int : STD_LOGIC_VECTOR (2 downto 0);
begin

    process(clk, clr)
    begin
        if clr = '1' then
            Q_int <= "000";
        elsif rising_edge(clk) then
            -- T0 toggle khi Q1 xor Q2'
            if (Q_int(1) xor (not Q_int(2))) = '1' then
                Q_int(0) <= not Q_int(0);
            end if;

            -- T1 toggle khi Q0 = 1
            if (Q_int(0) = '1') then
                Q_int(1) <= not Q_int(1);
            end if;

            -- T2 toggle khi Q1 and Q0 = 1
            if (Q_int(1) = '1' and Q_int(0) = '1') then
                Q_int(2) <= not Q_int(2);
            end if;
        end if;
    end process;

    Q <= Q_int;

end Behavioral;
