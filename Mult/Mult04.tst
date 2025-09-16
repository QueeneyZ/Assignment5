// Test case 4 for Mult.asm
load Mult.asm,
output-file Mult04.out,
compare-to Mult04.com,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 0,  //Clear R0
set RAM[1] -4,  // R1 = -4
set RAM[2] -2,  // R2 = -2

repeat 200 {
    ticktock;    // Run for 200 clock cycles
}

set RAM[1] -4,
set RAM[2] -2,
output;