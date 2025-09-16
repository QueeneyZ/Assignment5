// Test case 1 for Mult.asm
load Mult.asm,
output-file Mult01.out,
compare-to Mult01.com,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 0,  // Clear R0
set RAM[1] 3,  // R1 = 3
set RAM[2] 4,  // R2 = 4

repeat 200 {
    ticktock;    // Run for 200 clock cycles
}

set RAM[1] 3,
set RAM[2] 4,
output;