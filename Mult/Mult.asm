// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// ---------------- INIT ----------------
    @R0
    M=0            // R0 = 0 (result)

    @Sign
    M=0            // Sign = 0 (0 = positive, 1 = negative, 2 = double negative)

// ---------------- Check R1 ----------------
    @R1
    D=M
    @R1_POS
    D;JGE          // if R1 >= 0, skip
    D=-D
    @R1
    M=D            // R1 = abs(R1)
    @Sign
    M=M+1          // Sign++

(R1_POS)

// ---------------- Check R2 ----------------
    @R2
    D=M
    @R2_POS
    D;JGE          // if R2 >= 0, skip
    D=-D
    @R2
    M=D            // R2 = abs(R2)
    @Sign
    M=M+1          // Sign++

(R2_POS)

// ---------------- Counter = R2 ----------------
    @R2
    D=M
    @Counter
    M=D

// ---------------- Loop: R0 += R1 ----------------
(LOOP)
    @Counter
    D=M
    @END_LOOP
    D;JEQ          // if Counter == 0 -> end

    @R1
    D=M
    @R0
    M=M+D          // R0 += R1

    @Counter
    M=M-1          // Counter--

    @LOOP
    0;JMP

// ---------------- End Loop ----------------
(END_LOOP)
    @Sign
    D=M
    @NO_NEG
    D;JEQ          // if Sign == 0 -> result is positive -> done

    @Sign
    D=M
    D=D-2
    @NO_NEG
    D;JEQ          // if Sign == 2 -> double negative -> result positive

    // else -> Sign == 1 -> make result negative
    @R0
    M=-M

(NO_NEG)
(END)
    @END
    0;JMP          // infinite loop

// ---------------- Variables ----------------
(Sign)
   0
(Counter)
   0
