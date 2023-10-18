;; 8086 PROGRAM FOR CHARACTER INPUT WITH ECHO
DATA SEGMENT
    STR1 DB "ENTER A CHARACTER:  $"
ENDS

CODE SEGMENT
    START:
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, STR1   ;LEA --> Load Effective Address
    MOV AH, 09H    ;String display sub-routine (09h)
    INT 21H        ;DOS interrupt
    
    MOV AH, 01H    ;Character input with echo
    ;MOV AH, 08H   ;Character input without echo
    INT 21H
    
ENDS
END START
