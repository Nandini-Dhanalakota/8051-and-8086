;; HEXADECIMAL TO DECIMAL CONVERSION
ORG 0000H
SJMP 30H
ORG 30H
MOV DPTR, #9000H
MOVX A, @DPTR
MOV B, #10
DIV AB
INC DPTR
XCH A, B
MOVX @DPTR, A
XCH A, B
MOV B, #10
DIV AB
INC DPTR
XCH A, B
MOVX @DPTR, A
XCH A, B
INC DPTR
MOVX @DPTR, A
HERE: SJMP HERE
END