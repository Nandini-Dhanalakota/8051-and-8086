;DESCENDING ORDER OF NUMBERS IN 8086
MOV 1400H, 38H
MOV 1401H, 47H
MOV 1402H, 02H
MOV 1403H, 11H 
MOV 1404H, 29H
MOV 1405H, 34H

MOV CX, 06H
DEC CX
AGAIN:
MOV DX, CX
MOV SI, 1400H
UP:
MOV AL, [SI]
INC SI
MOV BL, [SI]
CMP AL, BL
JGE NEXT
;XCHG AL, BL
MOV [SI], AL 
DEC SI
MOV [SI], BL
INC SI
NEXT:
DEC DX 
JNZ UP
DEC CX
JNZ AGAIN
MOV AL, [1400H]
MOV AH, [1401H]
MOV BL, [1402H]
MOV BH, [1403H]
MOV CL, [1404H] 
HLT
