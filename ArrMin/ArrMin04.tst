// Test case 4
load ArrMin.asm,
output-file ArrMin04.out,
compare-to ArrMin04.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[50]D2.6.2;

set PC 0,
set RAM[0] 0,
set RAM[1] 50, 
set RAM[2] 1, 
set RAM[50] 15,

repeat 300 {
    ticktock;
}
set RAM[1] 50,
set RAM[2] 1,
output;