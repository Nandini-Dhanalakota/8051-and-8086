//Write an 8051 assembly language program to generate a pulse of 5ms with duty cycle 40% from p1.6 using timer 1 mode 0.
CLR P1.6
MOV TMOD, #00H ; Use timer 1 in mode 0 to generate delay
HERE: 
MOV TL0, #0F2H ; TL0=F2, the low byte
MOV TH0, #0FFH ; TH0=FF, the high byte
SETB P1.6 ; SET high P1.6
CPL P1.6 ; toggle P1.6
SJMP HERE ; load TH, TL again
SETB TR1; start timer 1
AGAIN: JNB TF0, AGAIN ;monitor timer 0 flag until it rolls over
CLR TR0
CLR TF0
END
