.MODEL SMALL
.STACK 100H
.DATA   
msg db 'Entera  character in lowercase: $'     
msg2 db 'In uppercase: $'

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
   
    mov ah, 9
    lea dx, crlf
    int 21h
    lea dx, msg2
    int 21h
    
    
    
    sub bl, 20h
    mov ah, 2
    mov dl, bl
    int 21h
    
    
           
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

