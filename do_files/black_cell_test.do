vsim -gui work.black_cell
add wave sim:/black_cell/*
force -freeze sim:/black_cell/Pin 1 0
force -freeze sim:/black_cell/Gin 0 0
force -freeze sim:/black_cell/c 1 0
force -freeze sim:/black_cell/d 1 0
run