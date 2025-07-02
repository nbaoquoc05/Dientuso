library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_logic is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           F : out STD_LOGIC);
end nand_logic;

architecture Behavioral of nand_logic is
    signal A_not, A_not_B, A_not_C, B_C : STD_LOGIC;
    signal term1, term2, term3, F_temp1, F_temp2 : STD_LOGIC;

begin
    A_not <= not (A and A);

    A_not_B <= not (A_not and B);

    A_not_C <= not (A_not and C);

    B_C <= not (B and C);

    term3 <= not (B_C and B_C);

    F_temp1 <= not (A_not_B and A_not_C);
    F_temp2 <= not (A_not_B and term3);
    F <= not (F_temp1 and F_temp2);
end Behavioral;
