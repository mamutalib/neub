.MODEL SMALL
.STACK 100H
.DATA    
    msg db '*********', 0dh, 0ah, '$'  
   msg2 db '*       *', 0dh, 0ah, '$'


.CODE

MAIN PROC    
    mov ax, @data
    mov ds, ax
    mov ah, 9
    lea dx, msg
    int 21h
    
    lea dx, msg  
    mov cx, 10
    mov ah,9 
    lea dx, msg2
 label1:
    int 21h   
    loop label1
    
    lea dx, msg
    int 21h

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

