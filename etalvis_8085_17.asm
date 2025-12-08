; short c = a / b

JMP START

START:  NOP

;moving a =32000 (7d00h)
mvi a, 00h 
sta 1000h ;lower byte of a
mvi a, 7dh
sta 1001h ;higher byte of a

;moving b = 1000 (0064h)
mvi a, 64h
sta 1002h ;lower byte of b
mvi a, 00h
sta 1003 ;higher byte of b

;loading dividend HL = a
lda 1000h
mov l, a
lda 1001h
mov h, a

;loading divisor DE = b
lda 1002h
mov e, a
lda 1003h
mov d, a

;initializing quotient 
mvi b, 00h
mvi c, 00h


;div loop
here:
mov a, l
sub e
mov a, h
sbb d
jc exit_loop ;if HL<DE 

mov a, l
sub e
mov l, a

mov a, h
sbb d
mov h, a 

;quotient++
inx b ;bc++
jmp here

exit_loop:
mov a, c
sta 1004h ;lower byte
mov a, b
sta 1005h ;higher byte stored

hlt


