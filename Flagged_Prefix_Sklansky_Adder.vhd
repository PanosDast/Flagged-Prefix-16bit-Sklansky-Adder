library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity Flagged_Prefix_Sklansky_Adder is
  generic(
    n:integer := 16;
    k:integer := 4);
  port (
    In1, In2 : in  std_logic_vector(n-1 downto 0);
    inc  : in  std_logic;                         --control signal for late carry incremenent
    Sum  : out std_logic_vector(n-1 downto 0);
    Cout : out std_logic
  );
end Flagged_Prefix_Sklansky_Adder;

architecture rtl of Flagged_Prefix_Sklansky_Adder is

  -- Declare components
  component Init  
    port (
      A, B : in std_logic;
      G, P: out std_logic
    );
  end component;

  component Gray_Cell
    port (
      Pin, Gin : in  std_logic;
      c  : in  std_logic;  --G signal from the previous stage
      G   : out std_logic
    );
  end component;

  component Black_Cell
    port (
      Pin, Gin  : in  std_logic;
      c  : in  std_logic;  --G signal from the previous stage
      d  : in  std_logic;  --P signal from the previous stage
      P : out std_logic;
      G : out std_logic
      );
  end component;


  --Declare Signals
  type signal_array is array (k downto 0) of std_logic_vector(n-1 downto 0);

  signal P: signal_array;
  signal G: signal_array;
  signal Gbar: std_logic_vector(n downto 1);


begin
  
  --generate the initial P and G signals
  row0: for i in 0 to n-1 generate
    uinit: Init port map (
      A => In1(i),
      B => In2(i),
      G => G(0)(i),
      P => P(0)(i));
  end generate row0;


  --stage 1 to 4
  --intermediate rows
  row: for i in 1 to k generate
    column: for j in 1 to n-1 generate
      
      --checks whether a component is needed, else propagates the signals to the next stage
      --operators every other column in stage 0, every 2 in stage 1, every 4 in stage 2, every 8 in stage 3
      --in conclusion operators for every 2**
      c1: if ((INTEGER(FLOOR(REAL(j)/REAL(2**(i-1))))) mod 2) = 1 generate
 
      -- Black cells only, replacing all Gray cells in the original Sklansky Adder
        Bcells: Black_Cell port map(
          Pin=>P(i-1)(j),
          Gin=>G(i-1)(j),
          c=>G(i-1)(j-j MOD 2**(i-1)-1), --G signal from the previous stage
          d=>P(i-1)(j-j MOD 2**(i-1)-1), --P signal from the previous stage        
          P=>P(i)(j),
          G=>G(i)(j));     
      end generate c1;
 
      --No operator, propagate the P and G signals to the next stage
      --("else" can not be used in this context, so we use the inverted condition)
      c4: if ((INTEGER(FLOOR(REAL(j)/REAL(2**(i-1))))) mod 2) /= 1 generate
        P(i)(j) <= P(i-1)(j);
        G(i)(j) <= G(i-1)(j);
      end generate c4;
    end generate column;
  end generate row;
  
  
  --calculate the sum
  --We calculate G' and then xor it with P(0) in place of G(k) in the original Sklansky Adder

  Sum(0) <= P(0)(0) xor inc;

  --new row incrementing with inc control signal
  Gbar(1) <= G(0)(0) or (P(0)(0) and inc);

  row_f: for i in 2 to n generate
    -- Gbar(i) <= G(k)(i-1) or (P(k)(i-1) and inc);
    Gcells: Gray_Cell port map (
      Pin=>P(k)(i-1),
      Gin=>G(k)(i-1),
      c=>inc,
      G=>Gbar(i));
  end generate row_f;

  calc_sum: for i in 1 to n-1 generate    
    Sum(i) <= P(0)(i) xor Gbar(i);
  end generate calc_sum;
  
  -- Stage 5 - Assign the final carry-out
  Cout <= Gbar(n);

  
end architecture rtl;