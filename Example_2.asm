//Write an 8051 assembly language program to transfer ‘YES YES YES’ at a baud rate of 2400 with 8-bit data.
MOV TMOD, #20H ; Timer 1, mode 2
MOV TH1, #-12 ; 1200 baud
MOV SCON, #50H; 8-bit, 1 stop bit, REN enabled
SETB TR1
MOV R3, #03H
AGAIN:
MOV A, #"Y" ; transfer "Y"
ACALL TRANS
MOV A, #"E" ; transfer "E"
ACALL TRANS
MOV A, #"S" ; transfer "S"
ACALL TRANS
MOV A, #" " ; transfer " "
ACALL TRANS
DJNZ R3, AGAIN
TRANS: MOV SBUF, A ;load SBUF
HERE: JNB T1, HERE ;wait for last bit to transfer
CLR TI ;get ready for next byte
END
