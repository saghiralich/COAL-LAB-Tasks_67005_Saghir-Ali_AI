.model small
.stack 100h

.data
    msg0 db 'Saghir Ali$'
    msg1 db 10,13,10,13,'1:Addition$'    
    msg2 db 10,13,'2:Subtraction$'
    msg3 db 10,13,'3:Multiplication$'
    msg4 db 10,13,'4:Division$'
    msg5 db 10,13,'Choose Any One:$'
    msg6 db 10,13,10,13,'Enter 1st Number:$'
    msg7 db 10,13,'Enter 2nd Number:$'
    msg8 db 10,13,10,13,'The Result is:$'
    
    num1 db ?
    num2 db ?
    result db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    lea dx, msg0
    mov ah, 9
    int 21h
  
    lea dx, msg1
    mov ah, 9
    int 21h
    
    lea dx, msg2
    mov ah, 9
    int 21h
    
    lea dx, msg3
    mov ah, 9
    int 21h
    
    lea dx, msg4
    mov ah, 9
    int 21h
    
    lea dx, msg5
    mov ah, 9
    int 21h
    
    ; get user choice
    mov ah, 1
    int 21h
    mov bh, al
    sub bh, 48
    
    ; get first number
    lea dx, msg6
    mov ah, 9
    int 21h
    mov ah, 1
    int 21h
    sub al, 48
    mov num1, al
    
    lea dx, msg7
    mov ah, 9
    int 21h
    mov ah, 1
    int 21h
    sub al, 48
    mov num2, al
    
    cmp bh, 1
    je addition
    
    cmp bh, 2
    je subtraction
    
    cmp bh, 3
    je multiplication
    
    cmp bh, 4
    je division
    
    jmp exit_program

addition:
    mov al, num1
    add al, num2
    mov result, al
    jmp display_result

subtraction:
    mov al, num1
    sub al, num2
    mov result, al
    jmp display_result

multiplication:
    mov al, num1
    mul num2
    mov result, al
    jmp display_result

division:
    mov al, num1
    mov ah, 0
    div num2
    mov result, al
    jmp display_result

display_result:
    lea dx, msg8
    mov ah, 9
    int 21h
    
    mov dl, result
    add dl, 48
    mov ah, 2
    int 21h

exit_program:
    mov ah, 4ch
    int 21h

main endp
end main