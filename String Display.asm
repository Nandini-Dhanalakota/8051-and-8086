;;8086 PROGRAM TO DISPLAY A STRING
DATA SEGMENT
    STR1 DB "HAPPY PONGAL!" ,13,10,'$'   ;13 --> move cursor to the beginning, 10 --> move cursor to next row
    STR2 DB "HAPPY DIWALI!" ,24H         ;24H --> hex value of $
ENDS

CODE SEGMENT
    START:
    MOV AX, @DATA
    MOV DS, AX
    
    MOV DL, OFFSET STR1
    MOV AH, 09H    ;string display
    INT 21H        ;DOS interrupt
    
    MOV DL, OFFSET STR2
    MOV AH, 09H
    INT 21H
    
ENDS
END START
