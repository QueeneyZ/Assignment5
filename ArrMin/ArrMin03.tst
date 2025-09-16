// Test case 3
load ArrMin.asm,
output-file ArrMin03.out,
compare-to ArrMin03.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[40]D2.6.2 RAM[41]D2.6.2;

set PC 0,
set RAM[0] 0,
set RAM[1] 40, 
set RAM[2] 2, 
set RAM[40] -3,
set RAM[41] 6,

repeat 300 {
    ticktock;
}
set RAM[1] 40,
set RAM[2] 2,
output;