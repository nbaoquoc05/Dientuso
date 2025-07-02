library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_even_tff is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           Q   : out STD_LOGIC_VECTOR (3 downto 0));
end counter_even_tff;

architecture Behavioral of counter_even_tff is
    signal Q_int : STD_LOGIC_VECTOR (3 downto 0);
begin

    process(clk, clr)
    begin
        if clr = '1' then
            Q_int <= "0000";
        elsif rising_edge(clk) then
            -- T0 luôn 0 -> giữ nguyên
            -- T1 luôn toggle
            Q_int(1) <= not Q_int(1);

            -- T2 toggle khi Q1 = 1
            if (Q_int(1) = '1') then
                Q_int(2) <= not Q_int(2);
            end if;

            -- T3 toggle khi Q2 and Q1 = 1
            if (Q_int(2) = '1' and Q_int(1) = '1') then
                Q_int(3) <= not Q_int(3);
            end if;
        end if;
    end process;

    Q <= Q_int;

end Behavioral;

