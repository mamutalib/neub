.STACK
.DATA
    ev db 0dh, 0ah,'The number is even $', 0dh, 0ah, '$'
    od db 0dh, 0ah,'The number is odd $', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax    
    
    
    mov ah,2 
    mov dl, '?'
    int 21h
    mov ah, 1
    mov cx, 0
    
 lab1:
    int 21h
    
    cmp al, 0dh
    je lab2  
    
    push ax
    inc cx
    jmp lab1
    
lab2:
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h   
lab3:
    pop dx
    int 21h
    loop lab3
     

exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP
END MAIN