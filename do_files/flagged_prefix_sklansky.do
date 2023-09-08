vsim -gui work.flagged_prefix_sklansky_adder
add wave sim:/flagged_prefix_sklansky_adder/*

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0000000000000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 0 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0000000000000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111001010100001 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 1010101001010101 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1010100000110011 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0111011111001010 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1010100000110011 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0111011111001010 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 0 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1011111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 1000000000000001 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 1010001110000111 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 0 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 1010001110000111 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1000000000000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0000000000000001 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 1111111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 1111111111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 0 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 0000000000000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0000000000000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 0000000000000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0000000000000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 0 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111111100000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0000000111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 1 0
run

force -freeze sim:/flagged_prefix_sklansky_adder/In1 1111111100000000 0
force -freeze sim:/flagged_prefix_sklansky_adder/In2 0000000111111111 0
force -freeze sim:/flagged_prefix_sklansky_adder/inc 0 0
run