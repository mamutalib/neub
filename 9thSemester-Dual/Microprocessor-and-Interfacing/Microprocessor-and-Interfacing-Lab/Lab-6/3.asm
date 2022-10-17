.MODEL SMALL
.STACK
.DATA     
    w dw 10, 20, 30, 40, 50, 60, 70, 80, '$'   
    
    x dw 100 dup(10)
.CODE

MAIN PROC 
    
    mov ax, @data
    mov ds,ax
  ; chapter 10 started;     
    
    lea si, w   
    mov bx, 8
    call reverse
    
    
  
 
   exit:
     mov ah, 4ch
     int 21h
ENDP main   

reverse proc
    ; si contains start of array
    ; bx contains length of array
    
    push ax
    push bx
    push cx
    push dx
    push si
    push di
      
      
    mov di, si
    mov cx, bx
    
    
    dec bx
    shl bx, 1
    add di, bx   
    shr cx, 1
    
 exchangeloop:
    
    mov ax, [si]
    xchg ax, [di]
    
    mov [si], ax
    add si, 2
    sub di, 2
    
    
    loop exchangeloop
    
      
    
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    ret
    
    
    
reverse endp

END MAIN