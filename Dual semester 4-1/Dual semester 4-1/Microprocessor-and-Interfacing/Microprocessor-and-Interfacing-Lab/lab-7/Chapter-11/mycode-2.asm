.MODEL SMALL
.STACK 100H
.DATA
    string1 db 'Hello'
    string2 db 5 dub('?')  
    crlf db 0dh, 0ah, '$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
      
    lea si, string1
    lea di, string2
    
    cld
 
    mov cx, 5
    rep movsb  

EXIT:
    MOV AH, 4CH
    INT 21H
    
ENDP MAIN
END MAIN