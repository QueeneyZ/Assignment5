// Test case 5 for Mult.asm
load Mult.asm,
output-file Mult05.out,
compare-to Mult05.com,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set PC 0,
set RAM[0] 0,  //Clear R0
set RAM[1] 7,  // R1 = 7
set RAM[2] 6,  // R2 = 6

repeat 200 {
    ticktock;    // Run for 200 clock cycles
}

set RAM[1] 7,
set RAM[2] 6,
output;