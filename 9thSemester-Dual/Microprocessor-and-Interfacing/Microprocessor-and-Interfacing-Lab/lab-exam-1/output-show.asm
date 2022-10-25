.MODEL
.STACK 100H
.DATA
.CODE  

MAIN PROC 
    
    MOV AH, 2  ;for output
    
    MOV DL, 41H    ;for input A
    INT 21H
    
    MOV DL, 0Ah    ; for new line
    int 21h
    MOV DL, 0dh
    int 21h 
    
    mov dl, 42H          ; for input B
    int 21h
    mov dl, 0Ah
    int 21h
    mov dl, 0dh
    int 21h
    
    mov dl, 43H    ;for input C
    int 21h  
    
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    mov AH, 4ch      
    int 21h
    
    mov ah, 4ch
    int 21h
    
    
    
    
ENDP MAIN 
END MAIN