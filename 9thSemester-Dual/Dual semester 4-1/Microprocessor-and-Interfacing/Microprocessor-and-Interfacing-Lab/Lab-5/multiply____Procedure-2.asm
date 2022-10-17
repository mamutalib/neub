.STACK
.DATA
    ev db 0dh, 0ah,'The number is even $', 0dh, 0ah, '$'
    od db 0dh, 0ah,'The number is odd $', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax    
    
  mov ax, 3
  mov bx, 5
  call multiply

exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP  

multiply proc 
    push ax
    push bx
    push cx 
    mov cx, bx
    xor dx, dx
 lab1:
    add dx, ax
    loop lab1
    

    
    pop cx
    pop bx
    pop ax
    ret

END MAIN