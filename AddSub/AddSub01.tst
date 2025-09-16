// Test case 1 for AddSub.asm
load AddSub.asm,
output-file AddSub01.out,
compare-to AddSub01.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2;

set PC 0,
set RAM[0] 0,  // Clear R0
set RAM[1] 5,  // R1 = 5
set RAM[2] 3,  // R2 = 3
set RAM[3] 2,  // R3 = 2

repeat 100 {
    ticktock;   // Run program for 100 cycles
}

set RAM[1] 5,
set RAM[2] 3,
set RAM[3] 2,
output;