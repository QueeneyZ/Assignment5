// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    @R0
    M=0        // R0 = 0

    @Sign
    M=0        // Sign = 0 (0 = positive, 1 = negative)

// Check R1 sign
    @R1
    D=M
    @R1_POS
    D;JGE      // if R1 >= 0, skip
    D=-D       // else: make it positive
    @R1
    M=D
    @Sign
    M=M+1      // flip sign

(R1_POS)
// Check R2 sign
    @R2
    D=M
    @R2_POS
    D;JGE
    D=-D
    @R2
    M=D
    @Sign
    M=M+1      // flip sign

(R2_POS)
// Counter = R2
    @R2
    D=M
    @Counter
    M=D

// Loop: R0 += R1
(LOOP)
    @Counter
    D=M
    @END_LOOP
    D;JEQ      // if counter == 0, end

    @R1
    D=M
    @R0
    M=M+D      // R0 += R1

    @Counter
    M=M-1      // counter--

    @LOOP
    0;JMP

// Negate result if needed
(END_LOOP)
    @Sign
    D=M
    @NO_NEG
    D;JEQ      // if Sign==0, result is positive → skip

    @R0
    M=-M       // else negate result

(NO_NEG)
(END)
    @END
    0;JMP      // infinite loop
