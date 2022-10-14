.STACK
.DATA
    ev db 0dh, 0ah,'The number is even $', 0dh, 0ah, '$'
    od db 0dh, 0ah,'The number is odd $', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax    
    
lev1:  
    mov ah, 1
    int 21h   
    
    mov bl, al
    and bl, 11011111b
    
    mov ah, 2
    mov dl, '-'
    int 21h
    mov dl, bl
    int 21h 
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    jmp lev1
     

exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP
END MAIN