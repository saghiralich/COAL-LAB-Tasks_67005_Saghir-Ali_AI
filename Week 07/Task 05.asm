mov ax, 9
mov bx, ax
mov cx, 0
dec bx
jmp check
process:
dec ax
add cx, ax
check:
cmp ax, 0
jg process
mov dx, cx