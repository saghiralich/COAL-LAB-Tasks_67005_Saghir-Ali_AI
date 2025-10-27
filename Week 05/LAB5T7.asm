org 100h

mov ax,4
mov bx,5
cmp ax,bx
jg g

mov dl,'0'
mov ah,2
int 21h
jmp e

g:
mov dl,'1'
mov ah,2
int 21h

e:
mov ah,4ch
int 21h
