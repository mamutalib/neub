.STACK
.DATA
   
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax     
    
    mov ax, 01010101b
    mov bx, 10101010b
    
    mov cx, ax
    and cx, bx 
    
    mov cx, ax
    or cx, bx   
    
    mov cx, ax
    and cx, bx  
    
    mov cx, ax
    not cx 
    
    mov cx, ax
    test cx, bx ;;  same ass logical And operator. but does not changethe vlaue destination registers. But changes the flags. 

    
    mov ax, 00001111b
    and ax, 11110111b   ; ANDing a bit with 0 clear the bit
    or ax, 001100000b ; ORing a bit with 1 sets the bit 
    xor ax, 00001010b ; XORing a bit with 1 flips the bit
    
    
  
exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP
END MAIN