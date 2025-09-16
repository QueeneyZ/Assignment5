// Test case 4
load ArrSort.asm,
output-file ArrSort04.out,
compare-to ArrSort04.out,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[50]%D2.6.2;

set PC 0,
set RAM[0] 0,
set RAM[1] 50,
set RAM[2] 1,
set RAM[50] 42,

repeat 1000 {
    ticktock;
}
set RAM[1] 50,
set RAM[2] 1,
output;