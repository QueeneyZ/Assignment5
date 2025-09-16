// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    @R0
    M=0       // Initialisation R0 = 0

    @R2
    D=M
    @N
    M=D       // N = array length

    @R1
    D=M
    @BASE 
    M=D       // BASE = first address of an array

    @i
    M=0       // outer circulation i = 0

(OUTER_LOOP)
    @i
    D=M 
    @N 
    D=D-M 
    @DONE
    D;JGE         // IF i >= N, end of sorting

    @j
    M=0           // inner circulation j = 0

(INNER_LOOP)
    @j
    D=M 
    @N
    D=D-M 
    @NEXT_OUTER
    D;JGE

    // A = BASE + j
    @BASE
    D=M
    @j 
    D=D+M 
    @ADDR 
    M=D 

    // TAKE arr[j]
    @ADDR 
    A=M 
    D=M
    @VAL1
    M=D 

    // TAKE ARR[J+1]
    @ADDR 
    D=M+1
    @ADDR2
    M=D 
    A=D
    D=M 
    @VAL2
    M=D 

    // if arr[j] <= arr[j+1], jump exchange
    @VAL1 
    D=M
    @ADDR2 
    A=M 
    M=D 

    @VAL2 
    D=M 
    @ADDR 
    A=M 
    M=D 

(SKIP_SWAP)
    @j 
    M=M+1
    @INNER_LOOP
    0;JMP

(NEXT_OUTER)
    @i 
    M=M+1
    @OUTER_LOOP
    0;JMP

(DONE)
    @R0
    M=-1
    @DONE
    0;JMP