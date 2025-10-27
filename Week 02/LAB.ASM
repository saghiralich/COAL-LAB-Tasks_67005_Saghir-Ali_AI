dosseg                ;Tells assembler to order segemnts in standard way
.model small          ; Define memory model
.stack 100h           ; reserve 256 bytes for stack
.data                 ; data segments
.code                 ;code segment starts
main proc             ; main procedure
mov dl, 's'           ;put ASCII of 's' in DL Register
mov ah, 2             ; function 2 of INT 21H
int 21h               ; CALL DOS INTRUPT TO PRINT 'S'
mov dl, 'a'           ; LOAD 'A'
mov ah,2                                    
int 21h
mov dl,'g'            ; LOAD G
mov ah, 2
int 21h
mov dl, 'h'           ; LOAD H
mov ah, 2
int 21h
mov dl, 'i'           ; LOAD I
mov ah, 2
int 21h
mov dl, 'r'           ; LOAD R
mov ah, 2
int 21h
  
