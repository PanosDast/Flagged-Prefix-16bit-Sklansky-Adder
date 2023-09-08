library ieee;
use ieee.std_logic_1164.all;

entity Init is
  port (
    A, B : in std_logic;
    G, P: out std_logic
  );
end entity Init;

architecture Initialize of Init is
  
begin
  P <= A xor B;
  G <= A and B;

end architecture Initialize;