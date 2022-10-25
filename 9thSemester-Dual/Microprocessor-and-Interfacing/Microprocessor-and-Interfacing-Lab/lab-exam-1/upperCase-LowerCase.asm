.MODEL small
.STACK 100H
.DATA 
    msg1 db 'Enter a uppercase character; $'
    msg2 db 'In lowercase charcter is: $'
    crlf db 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    
    mov ah, 1  
    int 21h
    mov bl, al
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    
    mov ah, 9
    lea dx, msg2
    int 21h
      
      
    add bl, 20h  
    
    mov ah, 2
    mov dl, bl
    int 21h 
    
    mov ah, 4ch
    int 21h
    
    
ENDP MAIN
END MAIN