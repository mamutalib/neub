.MODEL SMALL
.STACK 100H
.DATA
    string1 db 'HELLO'
    string2 db 5 dup ('?')  
    crlf db 0dh, 0ah, '$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX   
    mov es, ax
      
    lea si, string1+4
    lea di, string2
    
    std   
    mov cx, 5
le1:
    movsb
    add di, 2
    loop le1

EXIT:
    MOV AH, 4CH
    INT 21H
    
ENDP MAIN
END MAIN