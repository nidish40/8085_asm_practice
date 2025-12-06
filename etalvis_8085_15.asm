; char c = ~(a&b)

JMP START

START:  NOP

;moving a and b to memory
mvi a, 12
sta 1000h
mvi a, 20
sta 1001h

;loading a and b back into register
lda 1000h
mov b, a
lda 1001h

;(a&b)
ana b

;~(a&b)
cma 

sta 1002h


hlt


