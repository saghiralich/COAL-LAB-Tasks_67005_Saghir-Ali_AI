[org 0x100]         ; set origin at 0x100
mov ax,3           ;load into AX Register
mov bx,2            ; load into bx register
add ax,bx           ; AX = AX + BX now holds 10
mov bx,6            ; load in to bx register
mov ax,0x4c00       ;terminate program
int 0x21            ; interrupt to exit programS
                    
