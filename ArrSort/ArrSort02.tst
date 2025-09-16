// Test case 2
load ArrSort.asm,
output-file ArrSort02.out,
compare-to ArrSort02.out,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[30]%D2.6.2 RAM[31]%D2.6.2 RAM[32]%D2.6.2;

set PC 0,
set RAM[0] 0,
set RAM[1] 30,
set RAM[2] 3,
set RAM[30] 5,
set RAM[31] 2,
set RAM[32] 8,

repeat 1000 {
    ticktock;
}
set RAM[1] 30,
set RAM[2] 3,
output;