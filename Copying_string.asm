;;COPYING A STRING FROM SOURCE TO DESTINATION
MOV [13FFH], 00H    ;;we have added this segment in order to get the 1400h value in output.
MOV [1400H], 05H
MOV [1401H], 01H
MOV [1402H], 04H
MOV [1403H], 02H
MOV [1404H], 10H
MOV [1405H], 15H
MOV [1406H], 25H
;CLD
MOV SI, 13FFH   ;; 1400h-1 = 13FFh, we have done this to get first number in output.
MOV DI, 1500H 
MOV CL, 07H
MOV DL, [SI]
INC SI
REP MOVSB 
MOV AL, [1500H]
MOV BL, [1501H]
MOV CL, [1502H]
HLT 
