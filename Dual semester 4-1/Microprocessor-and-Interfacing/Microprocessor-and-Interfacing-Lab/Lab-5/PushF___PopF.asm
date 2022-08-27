.STACK
.DATA
    ev db 0dh, 0ah,'The number is even $', 0dh, 0ah, '$'
    od db 0dh, 0ah,'The number is odd $', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax    
    
    
;    SHL
;    SAL
;    SHR
;    SAR
;    
;    ROL
;    RCL
;    ROR
;    RCR 
    
    
 ;Stack Learning
 
 
    mov ax, 1234h
    mov dx, 5678h
    
    push ax
    inc ax
    push ax
    push bx
    
    inc bx
    push bx       
    
    pop cx
    pop cx
    pop cx
    pop cx
    
    pushf sub ax, ax
    popf
     

exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP
END MAIN