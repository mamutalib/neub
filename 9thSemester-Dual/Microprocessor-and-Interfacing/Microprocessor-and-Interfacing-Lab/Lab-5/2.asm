.STACK
.DATA
    ev db 0dh, 0ah,'The number is even $', 0dh, 0ah, '$'
    od db 0dh, 0ah,'The number is odd $', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax     
l1:
    mov ah, 1
    int 21h
    test al, 1 ;last bit 1 check
    jz even
    
    mov ah, 9
    lea dx, od
    int 21h   
    jmp l2
even:
    mov ah, 9
    lea dx, ev
    int 21h   
l2:
    jmp l1
exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP
END MAIN