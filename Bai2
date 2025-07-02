library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_logic is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           F : out STD_LOGIC);
end nor_logic;

architecture Behavioral of nor_logic is

    signal A_not, B_not, C_not : STD_LOGIC;
    signal A_not_B, A_not_C, B_C : STD_LOGIC;
    signal term1, term2, term3, temp_or1, temp_or2, F_temp : STD_LOGIC;

begin

    A_not <= not (A or A);

    B_not <= not (B or B);

    C_not <= not (C or C);

    A_not_B <= not (A_not or B_not);

    A_not_C <= not (A_not or C_not);

    B_C <= not (B_not or C_not);


    temp_or1 <= not (A_not_B or A_not_C);
    temp_or2 <= not (temp_or1 or B_C);
    F <= not (temp_or2 or temp_or2);

end Behavioral;
