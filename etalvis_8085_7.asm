;short c=a-b

JMP START

;data

;code
START: NOP

;Start writing your code here
mvi a, 10 ;loading 10 in a
sta 1000h ;memory address of a
mvi a, 20 ;assigning 20 to b
sta 1001h ;memory address of b
lda 1001h
mov b, a
lda 1000h
sub b ; sub operation
sta 1002h ; moving c lower byte to memory

mvi a, 0 ; assume no borrow has occured 
jnc store_borrow ; if borrow bit is 0
mvi a,01h

store_borrow: sta 1003h ;stores c upper byte to memory

HLT
