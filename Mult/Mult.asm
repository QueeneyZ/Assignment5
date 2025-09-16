// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
    @R0  //Initialisation result R0 = 0
    M=0

    @Sign  // Save Symbol Sign
    M=0    // Sign = 0

    // if R1 < 0
    @R1
    D=M
    @R1_POS
    D;JGE    // if R1 >= 0 jump
    D=-D     // D = -R1
    @R1
    M=D      // R1 = abs(R1)
    @Sign
    M=M+1     // Sign++

(R1_POS)
    // if R2 < 0
    @R2
    D=M
    @R2_POS
    D;JGE
    D=-D
    @R2
    M=D
    @Sign
    M=M+1    // Sign++

(R2_POS)

    // set counter R2 -> counter
    @R2
    D=M
    @Counter
    M=D

(LOOP)
    @Counter
    D=M
    @END_LOOP
    D;JEQ   // If Counter == 0, jump out

    // R0 = R0 + R1
    @R1
    D=M
    @R0
    M=M+D

    // Counter--
    @Counter
    M=M-1

    @LOOP
    0;JMP

(END_LOOP)
    // If Sign % 2 == 1, take the negative.
    @Sign
    D=M
    @NO_NEG
    D=D%2       // Hack assembly can't do remainder directly, you need to make sure Sign <= 2 yourself.
    @NO_NEG
    D;JEQ

    // R0 = -R0
    @R0
    M=-M

(NO_NEG)
(END)
    @END
    0;JMP   // infinite loop