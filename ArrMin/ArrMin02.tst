// Test case 2
load ArrMin.asm,
output-file ArrMin02.out,
compare-to ArrMin02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[30]D2.6.2 RAM[31]D2.6.2 RAM[32]%D2.6.2 RAM[33]%D2.6.2;

set PC 0,
set RAM[0] 0,
set RAM[1] 30, 
set RAM[2] 4, 
set RAM[30] 12,
set RAM[31] 5,
set RAM[32] 8,
set RAM[33] 10,

repeat 300 {
    ticktock;
}
set RAM[1] 30,
set RAM[2] 4,
output;