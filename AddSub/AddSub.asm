// Calculates R1 + R2 - R3 and stores the result in R0.
// (R0, R1, R2, R3 refer to RAM[0], RAM[1], RAM[2], and RAM[3], respectively.)

// Put your code here.
    @R1     // A = addressR1
    D=M     // D = R1

    @R2
    D=D+M     // D = R1 + R2

    @R0
    M=D     // R0 = R1 + R2

    @R3
    D=M      // D = R3

    @R0
    M=M-D     // R0 = (R1 + R2) - R3

(END)
    @END
    0;JMP   // Inifinite loop, end of programme

