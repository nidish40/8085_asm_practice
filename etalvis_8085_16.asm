; short c = a * b

JMP START

START:  NOP

;moving a and b to memory
mvi a, 10
sta 1000h
mvi a, 30
sta 1001h

;initializing multiplicand and multiplier
lda 1000h
mov c, a
lda 1001h 
mov d, a

;computation
mvi a,0
mvi b,0

here:
add c ; repititive additon of a
jnc here1
inr b

here1:
dcr d
jnz here

;storing results in memory
sta 1003h
mov a, b
sta 1002h

hlt


