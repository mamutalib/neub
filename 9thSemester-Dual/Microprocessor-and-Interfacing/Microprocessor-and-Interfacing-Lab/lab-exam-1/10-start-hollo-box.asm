.MODEL small
.STACK 100H
.DATA   
    msg db '**********', 0dh, 0ah, '$'   
    msg2 db '*        *', 0dh, 0ah, '$'
.CODE
MAIN PROC
    mov ax, @data  
    mov ds, ax  

    mov ah, 9 
    lea dx, msg
    int 21h
    
    lea dx, msg2
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    lea dx, msg
    int 21h


    MOV AH, 4CH
    INT 21H

ENDP MAIN
END MAIN