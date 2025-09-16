// Test case 3
load ArrSort.asm,
output-file ArrSort03.out,
compare-to ArrSort03.out,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[40]%D2.6.2 RAM[41]%D2.6.2;

set PC 0,
set RAM[0] 0,
set RAM[1] 40,
set RAM[2] 2,
set RAM[40] 9,
set RAM[41] 1,

repeat 1000 {
    ticktock;
}
set RAM[1] 40,
set RAM[2] 2,
output;