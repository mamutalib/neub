.STACK
.DATA
    ev db 0dh, 0ah,'The number is even $', 0dh, 0ah, '$'
    od db 0dh, 0ah,'The number is odd $', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax    
    
    
    mov bx, 3 
    call a
    call b
    

exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP  
a proc
    add ax, bx
    ret
endp a

b proc
    sub ax, bx
    ret
endp b

END MAIN