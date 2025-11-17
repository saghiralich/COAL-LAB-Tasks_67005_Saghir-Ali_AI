mov al,13h
mov ah,0
int 10h

mov al,10b 
mov cx,10
mov dx,20
mov bl,100
firstline:
mov ah,0ch
int 10h
inc cx
dec bl
jnz firstline

mov al,100b
mov cx,110
mov dx,20
mov bl,100
secondline:
mov ah,0ch
int 10h
inc dx
dec bl
jnz secondline

mov al,1b
mov cx,110
mov dx,120
mov bl,100
thirdline:
mov ah,0ch
int 10h
dec cx
dec bl
jnz thirdline

mov al,10b
mov cx,10
mov dx,120
mov bl,100
fourthline:
mov ah,0ch
int 10h
dec dx
dec bl
jnz fourthline

mov al,10b 
mov cx,50
mov dx,60
mov bl,100
fifthline:
mov ah,0ch
int 10h
inc cx
dec bl
jnz fifthline

mov al,100b
mov cx,150
mov dx,60
mov bl,100
sixthline:
mov ah,0ch
int 10h
inc dx
dec bl
jnz sixthline

mov al,1b
mov cx,150
mov dx,160
mov bl,100
seventhline:
mov ah,0ch
int 10h
dec cx
dec bl
jnz seventhline

mov al,10b
mov cx,50
mov dx,160
mov bl,100
eightline:
mov ah,0ch
int 10h
dec dx
dec bl
jnz eightline
                 

mov al,11b
mov cx,10
mov dx,20
mov bl,40
ninthline:
mov ah,0ch
int 10h
inc cx
inc dx
dec bl
jnz ninthline


mov cx,110
mov dx,20
mov bl,40
tenthline:
mov ah,0ch
int 10h
inc cx
inc dx
dec bl
jnz tenthline


mov cx,110
mov dx,120
mov bl,40
eleventhline:
mov ah,0ch
int 10h
inc cx
inc dx
dec bl
jnz eleventhline


mov cx,10
mov dx,120
mov bl,40
twelthline:
mov ah,0ch
int 10h
inc cx
inc dx
dec bl
jnz twelthline
              