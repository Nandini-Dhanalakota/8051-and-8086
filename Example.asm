;Write an 8086 assembly language program to find the total number of iterations in the series 1+5+9+13+-------+50
DATA SEGMENT
    COUNTER DW 0
ENDS

CODE SEGMENT
    START:
    MOV AX, @DATA
    MOV DS, AX
    MOV AX, 1   ;AX = 1
    REPEAT:
    INC [COUNTER]   ;Counter = 1
    ADD AX, 4   ;AX = 5
    CMP AX, 49
    JNE REPEAT
    INC [COUNTER]
ENDS
END START
