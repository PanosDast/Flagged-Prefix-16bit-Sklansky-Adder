library ieee;
use ieee.std_logic_1164.all;

entity Gray_Cell is
  port (
        Pin, Gin : in  std_logic;
        c  : in  std_logic;  --G signal from the previous stage
        G   : out std_logic
  );
end entity Gray_Cell;

architecture Gcell of Gray_Cell is
  
begin
  G <= (Pin and c) or Gin;

end Gcell;