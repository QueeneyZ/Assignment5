// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


    @R0
    M=0         // R0 -> 0 (not finished)

    @R2
    D=M
    @N
    M=D         // N = length

    @R1
    D=M
    @BASE
    M=D         // BASE = array start

    @i
    M=0         // i -> 0

(OUTER_LOOP)
    @i
    D=M
    @N
    D=M-D
    @DONE
    D;JLE       // if i >= N -> done

    @j
    M=0         // j -> 0

(INNER_LOOP)
    @j
    D=M
    @N
    D=M-D
    @NEXT_OUTER
    D;JLE       // if j >= N-1 -> go next outer

    // --- compute addr j ---
    @BASE
    D=M
    @j
    D=D+M
    @ADDR
    M=D

    // --- arr[j] -> VAL1 ---
    @ADDR
    A=M
    D=M
    @VAL1
    M=D

    // --- arr[j+1] -> VAL2 ---
    @ADDR
    D=M+1
    @ADDR2
    M=D
    A=D
    D=M
    @VAL2
    M=D

    // compare arr[j] - arr[j+1]
    @VAL1
    D=M
    @VAL2
    D=D-M
    @SKIP_SWAP
    D;JLE       // if arr[j] <= arr[j+1] -> skip swap

    // --- swap ---
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
    M=-1        // done
    @DONE
    0;JMP

// -------- variables --------
(N)
(BASE)
(i)
(j)
(ADDR)
(ADDR2)
(VAL1)
(VAL2)
