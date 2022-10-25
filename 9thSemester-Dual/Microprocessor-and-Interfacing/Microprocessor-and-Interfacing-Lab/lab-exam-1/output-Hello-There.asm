
.MODEL
.STACK 100H
.CODE
MAIN PROC
    MOV AH, 2
    MOV DL, 'H'
    INT 21H
    MOV DL, 'E'
    INT 21H
    MOV DL, 'L'
    INT 21H
    MOV DL, 'L'
    INT 21H
    MOV DL, '0'
    INT 21H  
    MOV DL, ' '
    INT 21H
    MOV DL, 'T'
    INT 21H
    MOV DL, 'H'
    INT 21H
    MOV DL, 'E'
    INT 21H
    MOV DL, 'R'
    INT 21H
    MOV DL, 'E'
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
ENDP MAIN
END MAIN