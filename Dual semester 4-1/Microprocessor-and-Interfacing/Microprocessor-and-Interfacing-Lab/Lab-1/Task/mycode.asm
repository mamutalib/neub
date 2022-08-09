.MODEL SMALL
.STACK 100H
.DATA   
.CODE

MAIN PROC   
    mov ah, 1
    int 21h
    
    mov bl, al
    
    mov al, 1  
    int 21h
    
    add bl,al
    
    mov dl,al 
    
    mov ah,2
    int 21h

MAIN ENDP
END MAIN

