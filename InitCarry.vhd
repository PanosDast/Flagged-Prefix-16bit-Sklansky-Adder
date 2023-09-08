library ieee;
use ieee.std_logic_1164.all;

entity InitCarry is
  port (
      A, B, C : in  std_logic;
      P, G : out std_logic
  );
end entity InitCarry;

architecture InitializeCarry of InitCarry is
  
begin
  P <= (A xor B) and C;
  G <= (A and B) or ((A xor B) and C);

end architecture InitializeCarry;