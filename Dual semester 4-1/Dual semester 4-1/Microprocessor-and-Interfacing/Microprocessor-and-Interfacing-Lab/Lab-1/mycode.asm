.MODEL small
.STACK 
.DATA
.CODE
MAIN PROC
    
    MOV AH, 2
    MOV DL, 41H   ;A
    INT 21H
    
    ;PRINT A  NEW LINE
    MOV DL, 0Ah
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV DL, 43H
    INT 21H    
    
    
    MOV DL, 'A'
    INT 21H  
    
    
    MOV AH, 4CH
    INT 21H
ENDP MAIN
END MAIN