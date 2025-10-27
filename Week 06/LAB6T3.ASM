dosseg
.model small
.stack 100h
.data
.code
main proc
  mov cx,26
  mov dl, 'A';
  L1:
  mov ah,2
  int 21h
  inc dl
  Loop L1
  mov ah,2
  mov dl,0AH
  int 21h
  mov cx,26
  mov dl,'a'
  L2:
  mov ah,2
  int 21h
  inc dl
  Loop L2

  ;
  mov ah,4ch
  int 21h
main endp
end main
