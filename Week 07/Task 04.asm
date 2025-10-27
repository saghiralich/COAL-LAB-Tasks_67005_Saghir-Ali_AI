mov ax, 0FFFFh
mov bx, 1
mov cx, 5
jmp shift_loop
exit:
mov dx, ax
jmp end
shift_loop:
add ax, bx
dec cx
jnz shift_loop
jmp exit
end: