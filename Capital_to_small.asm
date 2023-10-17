;; 8086 PROGRAM FOR CAPITAL TO SMALL LETTER CONVERSION
DATA SEGMENT
    STR1 DB "ENTER A CAPITAL LETTER:  $" 
    STR2 DB 13, 10, "SMALL LETTER:  $"
    CHAR DB ? 
ENDS

CODE SEGMENT
    START:
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, STR1
    MOV AH, 09H    
    INT 21H 
    
    MOV AH, 01H
    INT 21H  
    MOV [CHAR], AL   ;input gets stored in AL, by default
    ADD [CHAR], 20H  ;command for conversion from capital to small letter
    
    LEA DX, STR2
    MOV AH, 09H
    INT 21H
    
    MOV DL, [CHAR]
    MOV AH, 02H      ;display single character
    INT 21H
    
ENDS
END START
