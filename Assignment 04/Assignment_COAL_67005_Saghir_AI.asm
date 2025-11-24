.model small
.stack 100h
.data
.code
main proc
mov ax,@data
mov ds,ax

mov al,13h
mov ah,0
int 10h

mov al,15

mov cx,100
mov dx,20
mov bl,120
call draw_horizontal

mov cx,100
mov dx,190
mov bl,120
call draw_horizontal

mov cx,100
mov dx,20
mov bl,170
call draw_vertical

mov cx,220
mov dx,20
mov bl,170
call draw_vertical

mov cx,105
mov dx,25
mov bl,110
call draw_horizontal

mov cx,105
mov dx,185
mov bl,110
call draw_horizontal

mov cx,105
mov dx,25
mov bl,160
call draw_vertical

mov cx,215
mov dx,25
mov bl,160
call draw_vertical

mov cx,115
mov dx,35
mov bl,40
call draw_horizontal

mov cx,115
mov dx,125
mov bl,40
call draw_horizontal

mov cx,115
mov dx,35
mov bl,90
call draw_vertical

mov cx,155
mov dx,35
mov bl,90
call draw_vertical

mov cx,165
mov dx,35
mov bl,40
call draw_horizontal

mov cx,165
mov dx,125
mov bl,40
call draw_horizontal

mov cx,165
mov dx,35
mov bl,90
call draw_vertical

mov cx,205
mov dx,35
mov bl,90
call draw_vertical

mov cx,115
mov dx,135
mov bl,40
call draw_horizontal

mov cx,115
mov dx,175
mov bl,40
call draw_horizontal

mov cx,115
mov dx,135
mov bl,40
call draw_vertical

mov cx,155
mov dx,135
mov bl,40
call draw_vertical

mov cx,165
mov dx,135
mov bl,40
call draw_horizontal

mov cx,165
mov dx,175
mov bl,40
call draw_horizontal

mov cx,165
mov dx,135
mov bl,40
call draw_vertical

mov cx,205
mov dx,135
mov bl,40
call draw_vertical

mov cx,102
mov dx,120
mov bl,10
call draw_vertical

mov cx,102
mov dx,120
mov bl,4
call draw_horizontal

mov cx,102
mov dx,130
mov bl,4
call draw_horizontal

mov ah,0
int 16h

mov ax,3
int 10h

mov ah,4ch
int 21h
main endp

draw_horizontal proc
h_loop:
mov ah,0ch
int 10h
inc cx
dec bl
jnz h_loop
ret
draw_horizontal endp

draw_vertical proc
v_loop:
mov ah,0ch
int 10h
inc dx
dec bl
jnz v_loop
ret
draw_vertical endp

end main