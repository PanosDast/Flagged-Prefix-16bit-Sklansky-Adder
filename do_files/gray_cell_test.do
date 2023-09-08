vsim -gui work.gray_cell
add wave sim:/gray_cell/*
force -freeze sim:/gray_cell/Pin 1 0
force -freeze sim:/gray_cell/Gin 0 0
force -freeze sim:/gray_cell/c 1 0
run