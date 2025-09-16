// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
    @R0  
    M=0   //result = 0

    // check if R1 < 0
    @R1
    D=M
    @CHECK_R2
    D;JNE
    @END 
    0;JMP

(CHECK_R2)
    // check if R2 == 0
    @R2
    D=M
    @SETZERO
    D;JEQ
    @CONT 
    0;JMP

(SETZERO)
    @R0
    M=0
    @END
    0;JMP

(CONT)
    // initialise sign = 0
    @Sign
    M=0

    // if R1 < 0
    @R1
    D=M 
    @R1_POS
    D;JGE
    D=-D
    @R1 
    M=D 
    @Sign
    M=M+1
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
    M=M+1
(R2_POS)

    // Counter = R2
    @R2
    D=M 
    @Counter
    M=D

(LOOP)
    @Counter
    D=M
    @END_LOOP
    D;JEQ

    @R1
    D=M
    @R0 
    M=M+D 

    @Counter
    M=M-1

    @LOOP
    0;JMP

(END_LOOP)
    // If Sign == 1 -> negative
    @Sign
    D=M 
    @CHECK_TWO
    D;JEQ
    @R0
    M=-M
    @END
    0;JMP 

(CHECK_TWO)
    // if sign==2 (two negatives) -> positive, do nothing
    @END
    0;JMP

(END)
    @END
    0;JMP

// --------- Variables ----------
(Sign)
    @0
(Counter)
    @0
    