;copying data 8051-program
MOV 40H, #10H
MOV 41H, #11H
MOV 42H, #12H
MOV 43H, #13H
MOV 44H, #14H
MOV 45H, #15H
MOV 46H, #16H
MOV R0, #40H
MOV R1, #50H
MOV R7, #07H
AGAIN: MOV B, @R0
MOV @R1, B
INC R1
INC R0
DJNZ R7, AGAIN
END