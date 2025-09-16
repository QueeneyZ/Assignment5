// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    @R1
    A=M      // A = R1 (FIRST ADDRESS OF AN ARRAY)
    D=M      // D = RAM[R1]
    @R0
    M=D      // R0 = FIRST Element

    @R1
    D=M
    @i
    M=D+1    // i = R1 + 1 (next element address)

    @R2
    D=M
    D=D-1    // THE first element has been taken, so the remaining quantity = R2-1
    @count
    M=D

(LOOP)
    @count 
    D=M
    @END 
    D;JEQ     // if count == 0, end

    @i
    A=M 
    D=M      // D = current array element
    @R0
    D=D-M    // D = current element - current minimum
    @SKIP
    D;JGE    // IF >=0, SKIP update

    @i
    A=M 
    D=M 
    @R0 
    M=D       // R0 = current element (smaller)

(SKIP)
    @i 
    M=M+1     // i++
    @count 
    M=M-1     // count--
    @LOOP
    0;JMP

(END)
    @END
    0;JMP