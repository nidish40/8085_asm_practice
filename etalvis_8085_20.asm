; short c = ~(a&b)

JMP START

START:  NOP

;moving a =32000 (7d00h)
mvi a, 00h 
sta 1000h ;lower byte of a
mvi a, 7dh
sta 1001h ;higher byte of a

;moving b = 34816 (8800h)
mvi a, 00h
sta 1002h ;lower byte of b
mvi a, 88h
sta 1003h ;higher byte of b

;(a&b)
lda 1000h
mov b, a
lda 1002h
ana b
sta 1004h

lda 1001h
mov b, a
lda 1003h
ana b
sta 1005h

;~(a&b)
lda 1004h
cma 
sta 1004h

lda 1005h
cma 
sta 1005h

hlt


