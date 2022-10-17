.STACK
.DATA
    msg1 db 'Enter the first Capital letter: $'
    msg2 db 'Enter the second Capital letter: $'
    msg3 db 'The alphabetical order is: $'
    nexLine db 0dh, 0ah, "$"

.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax

    mov ah, 2
    mov dl, "?"
    int 21h

    mov ah, 9
    lea dx, nexLine
    int 21h

    lea dx, msg1
    int 21h

    mov ah, 1 
    int 21h
    mov bl, al

    mov ah, 9
 
    lea dx, nexLine
    int 21h

    lea dx, msg2
    int 21h

    mov ah, 1
    int 21h
    mov bh, al
    mov ah, 9

    lea dx, nexLine
    int 21h
    lea dx, msg3
    int 21h

    mov ah, 2
    cmp bl, bh
    jae greater
    mov dl, bl
    int 21h
    
    mov dl, bh
    int 21h
    jmp exit
greater:
    mov dl, bh
    int 21h
    
    mov dl, bh
    int 21h

exit:
    mov ah, 4ch
    int 21h
    MAIN ENDP
END MAIN
