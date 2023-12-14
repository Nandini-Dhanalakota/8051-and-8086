;;SMALLEST NUMBER IN THE ARRAY IN 8086
MOV [1400H], 06H 
MOV [1401H], 01H
MOV [1402H], 45H
MOV [1403H], 04H
MOV [1404H], 64H 
MOV [1405H], 02H
MOV [1406H], 60H

MOV SI, 1400H
MOV AL, [SI]
MOV CL, 05H    ; "05H" or "0Eh" command is used to "change the data output location" and by default it is stored in AL. 
BACK:INC SI
CMP AL, [SI]
JBE GO        ;; "JAE GO" for greatest number
MOV AL, [SI]
GO: LOOP BACK
HLT 
