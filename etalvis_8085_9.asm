;short c=a|b

JMP START

;data

;code
START: NOP

;loading a
mvi a, 10 ;loading 10 in a (lower byte)
sta 1000h ;lower byte of a
mvi a, 20 ; loading 20 in a (higher byte)
sta 1001h ;higher byte of b

;loading b
mvi a, 0fh
sta 1002h; lower byte of b
mvi a, 1eh
sta 1003h; higher byte of b

;or of lower byte
lda 1000h ;lower byte of a
mov b,a
lda 1002h ;lower byte of b
ora b
sta 1004h ;lower byte of c (result)


;or of higher byte
lda 1001h ;higher byte of a
mov b,a
lda 1003h ;higher byte of b
ora b
sta 1005h ;higher byte of c (result)


HLT
