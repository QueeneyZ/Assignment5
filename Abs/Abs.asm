// Calculates the absolute value of R1 and stores the result in R0.
// (R0, R1 refer to RAM[0], and RAM[1], respectively.)

// Put your code here.
    @R1
    D=M   // D = R1

    @POSITIVE
    D;JGE   // if R1 >= 0, jump to POSITIVE

// Otherwise R1 < 0, calculate -R1
    @R1
    D=M   // D = R1
    D=-D  // D = -R1
    @R0
    M=D   // R0 = -R1
    @END
    0;JMP  // JUMP TO END

(POSITIVE)   // R1 >= 0
    @R1
    D=M    // D = R1
    @R0
    M=D    // R0 = R1

(END)
    @END
    0;JMP   // Inifinite loop, end of programme



    