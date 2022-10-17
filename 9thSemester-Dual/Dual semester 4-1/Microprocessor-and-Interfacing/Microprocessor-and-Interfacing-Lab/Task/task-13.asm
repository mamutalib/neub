.MODEL SMALL
.STACK 100H
.DATA     
.CODE
MAIN PROC
          
          
    mov cx, 10 

label1:
    mov dl, '*'
    mov ah, 2 
    
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
    
    
    mov dl, 0dh ;new line
    int 21h
    mov dl, 0ah
    int 21h      ; end of new line
    
    loop label1    
    
    
    
    MOV AH, 4CH
    INT 21H

    MAIN ENDP
END MAIN   