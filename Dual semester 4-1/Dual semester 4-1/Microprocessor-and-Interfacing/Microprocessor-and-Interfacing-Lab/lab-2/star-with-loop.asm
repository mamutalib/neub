.MODEL SMALL
.STACK 100H
.DATA    
msg db '*********', 0dh, 0ah, '$'

.CODE

MAIN PROC    
    mov ax, @data
    mov ds, ax
    
    mov cx, 10
    mov ah,9 
    lea dx, msg
 label1:
    int 21h   
    loop label1
    

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

