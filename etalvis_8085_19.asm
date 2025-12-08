; short c = ~a

JMP START

START:  NOP

;moving a =32000 (7d00h)
mvi a, 00h 
sta 1000h ;lower byte of a
mvi a, 7dh
sta 1001h ;higher byte of a

lda 1000h
cma 
sta 1004h

lda 1001h
cma 
sta 1005h

hlt


