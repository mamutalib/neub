.MODEL SMALL
.STACK 100H
.DATA   
    msg db 'Enter three  character: $'     

    crlf db 0dh, 0ah, '$'
.CODE

MAIN PROC   
    mov ax,@data
    mov ds, ax
    
    mov ah, 9         ; string print
    lea dx, msg        ; starting point
    int 21h                         
           
    mov ah, 1
    int 21h
    mov bl, al
    int 21h
    
    mov bh,al
    int 21h
    
    mov cl, al
     
     
    mov ah,2     ;print 1ST CHARACTER
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah ;PRINT NEW LINE
    int 21h
    mov dl, bl
    int 21h    
    
    mov ah,2     ;print 2ND CHARACTER
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h

    mov dl, bh
    int 21h   
    
    mov ah,2     ;print 3RD CHARACTER
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h

    mov dl, cl
    int 21h
    
    
    
    

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

