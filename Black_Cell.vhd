library ieee;
use ieee.std_logic_1164.all;

entity Black_Cell is
  port (
    Pin, Gin  : in  std_logic;
    c  : in  std_logic;  --G signal from the previous stage
    d  : in  std_logic;  --P signal from the previous stage
    P : out std_logic;
    G : out std_logic
    );
end entity Black_Cell;

architecture Bcell of Black_Cell is
  
begin
  P <= Pin and d;
  G <= (Pin and c) or Gin;

end Bcell;