// Test case 2 for AddSub.asm
load AddSub.asm,
output-file AddSub02.out,
compare-to AddSub02.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2;

set PC 0,
set RAM[0] 0,  //Clear R0
set RAM[1] 10,  // R1 = 10
set RAM[2] 7,  // R2 = 7
set RAM[3] 4,  // R3 = 4

repeat 100 {
    ticktock;   // Run program for 100 cycles
}

set RAM[1] 10,
set RAM[2] 7,
set RAM[3] 4,
output;