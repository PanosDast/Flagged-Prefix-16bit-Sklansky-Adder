vsim -gui work.init

add wave sim:/init/*
force -freeze sim:/init/A 1 0
force -freeze sim:/init/B 1 0
run