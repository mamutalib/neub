.STACK
.DATA
    ev db 0dh, 0ah,'The number is even $', 0dh, 0ah, '$'
    od db 0dh, 0ah,'The number is odd $', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax    
    
  mov ax, 3
  mov bx, 3
  call multiply

exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP  

multiply proc 
    push ax
    push bx
    
    xor dx, dx ; resets dx register
 
lab1:
    test bx, 1
    jz endif
    
    add dx, ax
endif:
    shl ax, 1
    shr bx, 1
    
    
    jnz lab1
    
    
    pop bx
    pop ax
    ret

END MAIN