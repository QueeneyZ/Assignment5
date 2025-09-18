// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    @R0
    M=0        //R0 = 0
    @R1
    D=M
    @x
    M=D
    @R2 
    D=M 
    @y
    M=D 
    @sign
    M=0
    @x
    D=M 
    @POSX
    D;JGE 
    @x
    M=-M
    @sign
    M=!M
    (POSX)
    @y
    D=M
    @POSY
    D;JGE 
    @y
    M=-M
    @sign 
    M=!M
    (POSY)
    @x
    D=M
    @y
    D=D-M 
    @SWAP
    D;JGT
    @x
    D=M
    @count
    M=D
    @y 
    D=M 
    @addend
    M=D 
    @MULTIPLY
    0;JMP
    (SWAP)
    @y 
    D=M
    @count
    M=D 
    @x
    D=M 
    @addend 
    M=D 
    (MULTIPLY)
    (LOOP)
    @count 
    D=M 
    @END 
    D;JEQ 
    @R0 
    D=M 
    @addend 
    D=D+M 
    @R0 
    M=D
    @count
    M=M-1
    @LOOP 
    0;JMP 
    (END)
    @sign 
    D=M
    @DONE
    D;JEQ 
    @R0
    M=-M 
    (DONE)
    @DONE 
    0;JMP