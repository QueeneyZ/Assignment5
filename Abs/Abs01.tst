// Test case 1 for Abs.asm
load Abs.asm,
output-file Abs01.out,
compare-to Abs01.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2;

set PC 0,
set RAM[0] 0,  //Clear R0
set RAM[1] 5,  // R1 = 5

repeat 100 {
    ticktock;  // Run for 100 clock cycles
}

set RAM[1] 5,  // Restore R1
output;        // Output to file