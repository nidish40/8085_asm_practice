; char c = a / b

JMP START

START:  NOP

;moving a and b to memory
mvi a, 10
sta 1000h
mvi a, 20
sta 1001h

;initializing dividend and divisor
lda 1000h
mov c, a
lda 1001h
mov b, a

;computation
mvi d, 0
mov a, c

here:
sub b
jc exit

mov c, a ;moves temp result
inr d ;quotient++
jmp here ;repeat steps

;storing results in memory
exit:
mov a, c
sta 1003h ; store reminder in this address
mov a, d
sta 1002h ; store quotient to this address


hlt


