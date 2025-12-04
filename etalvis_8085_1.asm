;c=a+b

JMP START

;data

;code
START: NOP

;Start writing your code here
mvi A,10 ;this is char a
sta 1000h ;char a memory address
mvi a, 20 ;this is char b
sta 1001h ;char b memory address
lda 1000h 
mov b,a
lda 1001h
add b
sta 1002h ;char c memory address

HLT
