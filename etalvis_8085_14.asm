; char c = ~a

JMP START

START:  NOP

;moving a and b to memory
mvi a, 10
sta 1000h
mvi a, 20
sta 1001h


lda 1000h

cma ;compliments accumulator, so a is loaded into the acc

sta 1003h


hlt


