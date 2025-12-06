;short c=a&b

JMP START

;data

;code
START: NOP

;Start writing your code here
mvi a, 10 ;loading 10 in a
sta 1000h ;memory address of a
mvi a, 20 ;assigning 20 to b
sta 1001h ;memory address of b
lda 1000h
mov b, a
lda 1001h
ana b
sta 1002h

HLT
