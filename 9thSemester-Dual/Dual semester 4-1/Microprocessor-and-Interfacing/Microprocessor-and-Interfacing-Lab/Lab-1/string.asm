.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC   
    mov ah, 2
    mov dl, 'H'
    int 21h
    mov dl, 'E'
    int 21h
    mov dl, 'L'
    int 21h
    mov dl, 'L'
    int 21h
    mov dl, 'O'
    int 21h  

    mov dl, ' '
    int 21h
    mov dl, 'T'
    int 21h
    mov dl, 'H'
    int 21h
    mov dl, 'E'
    int 21h
    mov dl, 'R'
    int 21h      
    mov dl, 'E' 
    int 21h
    
   
    MOV DL, 0Ah
    INT 21H
    MOV DL, 0DH
    INT 21H   
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
