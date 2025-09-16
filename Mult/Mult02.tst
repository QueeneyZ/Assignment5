// Test case 2 for Mult.asm
load Mult.asm,
output-file Mult02.out,
compare-to Mult02.com,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 0,  // Clear R0
set RAM[1] 5,  // R1 = 5
set RAM[2] 0,  // R2 = 0

repeat 200 {
    ticktock;    // Run for 200 clock cycles
}

set RAM[1] 5,
set RAM[2] 0,
output;