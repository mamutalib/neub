.MODEL SMALL
.STACK
.DATA
.CODE

MAIN PROC 
    
    mov ax, @data
    mov ds,ax

    
    call indec  
    mov bx, ax
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov ax, bx
    
    call outdec
    
   exit:
     mov ah, 4ch
     int 21h
     
ENDP main
           
outdec proc
    push ax
    push bx
    push cx
    push dx
    
    or ax, ax
    jge endif1  
    push ax
    mov ah, 2
    mov dl, '-'
    int 21h  
    
    pop ax
    neg ax
          
 endif1:
    ; applicable for both positive and negative numbers
    xor cx, cx; clear cx
    mov bx, 10    
    
 repeat1:   
    xor dx, dx; clear dx
    div bx
    push dx
    inc cx  
    cmp ax, 0
    jne repeat1
    
    
    mov ah, 2
 printloop1:
    pop dx
    add dl, '0'
    int 21h
    loop printloop1  
  
    
    pop dx
    pop cx
    pop bx
    pop ax
    ret  
    
    
 outdec endp

        
   indec proc   
    
    push bx 
    push cx                                          
    push dx
       
  begin2:
    mov ah, 2
    mov dl, '?'
    int 21h
    
    mov bx, 0
    mov cx, 0
    
    mov ah, 1
    int 21h
    
    cmp al, '-'
    je minus
    cmp al, '+'
    je plus  
    jmp repeat2
    
 minus:
    mov cx, 1
    
 plus:
    int 21h 
    
 repeat2:   
    cmp al,'0'
    jl notdigit
    cmp al, '9'
    jg notdigit  
        
    mov ah, 0
    sub al, '0' ; Also and ax,000Fh 
    push ax
    
    mov ax, 10
    mul bx
    pop bx
    add bx, ax
    
    mov ah, 1
    int 21h
    cmp al, 0dh
    jne repeat2  
    
    mov ax, bx
    ; check if the input was negative
    cmp cx, 0
                                     
    je exitproc
    neg ax
    jmp exitproc 
                                        
 notdigit:   
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov al, 0ah
    int 21h
    
    jmp begin2
    
    
 exitproc:    
    pop dx
    pop cx
    pop bx
    ret
   indec endp 
END MAIN