.STACK
.DATA
    ev db 0dh, 0ah,'The number is even $', 0dh, 0ah, '$'
    od db 0dh, 0ah,'The number is odd $', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax    
  
  
    mov ax, 8
    mov bx, 3
    
    mul bx; multiply bx with ax and store the result in bx
    mov bx 3
    imul bx ; singed multiplication

exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP  


END MAIN