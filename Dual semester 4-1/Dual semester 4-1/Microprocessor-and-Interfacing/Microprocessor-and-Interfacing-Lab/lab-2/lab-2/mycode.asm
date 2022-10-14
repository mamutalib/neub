.MODEL SMALL
.STACK 100H
.DATA   
    msg db '**********', 0dh, 0ah, '$'  

.CODE

MAIN PROC   
    mov ax,@data
    mov ds, ax
    
    mov ah, 9         ; string print
    lea dx, msg        ; starting point
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
      
    
 
   

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

