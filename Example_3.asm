//The following 8051 program generates a square wave on pin P1.5 continuously using timer 1 for a time delay. 
//Find the frequency of the square wave if XTAL = 11.0592MHz. 
MOV TMOD, #10H   ;Timer 1, mode 1(16-bit)
AGAIN: 
MOV TL1, #34H   ;TL1 = 34H, Low byte
MOV TH1, #76H   ;TH1 = 76H, High byte
                ;(7634H = Timer value)
SETB TR1   ;Start timer 1
BACK:
JNB TF1, BACK   ;stay until timer rolls over
CLR TR1   ;stay timer 1
CPL P1.5   ;Complement P1.5 to get high, low
CLR TF1   ;clear timer 1 flag
SJMP AGAIN    ;reload timer since mode 1 is not auto-reload
END
