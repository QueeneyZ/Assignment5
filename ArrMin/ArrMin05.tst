// Test case 5
load ArrMin.asm,
output-file ArrMin05.out,
compare-to ArrMin05.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[60]%D2.6.2 RAM[61]%D2.6.2 RAM[62]%D2.6.2 RAM[63]%D2.6.2 RAM[64]%D2.6.2;


set PC 0,
set RAM[0] 0,
set RAM[1] 60, 
set RAM[2] 5, 
set RAM[60] 3,
set RAM[61] 2,
set RAM[62] 7,
set RAM[63] 1,
set RAM[64] 4,

repeat 300 {
    ticktock;
}
set RAM[1] 60,
set RAM[2] 5,
output;