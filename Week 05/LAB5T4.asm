include 'emu8086.inc'
.model small
.stack 100h
.data 
.code
main proc
mov ax,1h
mov bx,3h
cmp ax,bx 
jg move 
print '5'
mov cx,ax

mov ah,04h
int 21h
move:
mov ax,cx
mov ah,04h
int 21h
main endp
end main
    