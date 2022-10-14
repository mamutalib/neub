.MODEL SMALL
.STACK 100H
.DATA   

.CODE

MAIN PROC   
    mov ah, 1
    int 21h  
    
    mov bl, al
    
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    mov ah, 1
    int 21h
    
    
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
       
    mov ah, 4ch
    int 21h

MAIN ENDP
END MAIN

