.MODEL SMALL
.STACK 100H
.DATA
    encodekey db 65 dub(' '), 'XQPOGHZBCADEIJUVFMNKLRSTWY',
              db 37 dub(' ') 
    decodekey db 65 dub(' '), '', 
              db 37 dub(' ') 
    encodeMessage db 80 dub(' ')
    decodeMessage db 80 dub(' ') 
    message db 'Enter a message to be encoded: $'
    crlf db 0dh, 0ah, '$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    lea dx,message
    mov ah, 9
    int 21h
    
    mov ah, 1 
    lea bx, encodekey
    lea di, encodeMessage
   
    
 while_:   
    int 21h  
    cmp al, 0dh    
    je endwhile
    xlat ; afer xlat al contains encoded character 
    mov [di], al
    inc di
    jmp while_
 endwhile:    
    mov ah, 9
    lea dx, arlf
    int 21h
    
    lea dx, encodeMessage
    int 21h
    
    lea di, decodeMessage
    lea si, encodeMessage
    lea bx, decodekey 
while2:
    mov al, [si]
    cmp al, '$'
    je endwhile2
    xlat 
    
    mov [di], al
    inc di
    inc si
    jmp while2
 
 endwhile2:
    mov ah, 9
    lea dx, crlf
    int 21h
    
    lea dx, decodeMessage
       

EXIT:
    MOV AH, 4CH
    INT 21H
    
ENDP MAIN
END MAIN