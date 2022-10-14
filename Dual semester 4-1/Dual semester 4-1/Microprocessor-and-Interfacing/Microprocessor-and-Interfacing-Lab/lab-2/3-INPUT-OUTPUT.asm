.MODEL
.STACK 100H
.DATA  
    msg db 'Enter three character: $'
    crlf db 0dh, 0ah, '$'
.CODE
MAIN PROC 
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h
    
    mov ah, 1
    
    int 21h
    mov bl, al 
    int 21h
    mov bh, al
    int 21h
    mov cl, al

    mov ah,2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
     
    mov dl, bl
    int 21h  
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
     
    
    
    mov dl, bh
    int 21h   
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
     
    
    mov dl, cl
    int 21h  
    
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
     
    
    MOV AH, 4CH  
    INT 21H
    MAIN ENDP
END MAIN

