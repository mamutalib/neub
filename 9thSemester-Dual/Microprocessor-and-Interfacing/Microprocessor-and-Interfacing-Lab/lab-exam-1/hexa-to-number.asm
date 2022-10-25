.MODEL small
.STACK 100H
.DATA     
.CODE
MAIN PROC
    mov ax, @data  
    mov ds, ax
label1:    
    mov ah, 1
    int 21h
    mov bl, al
    mov ah, 2
    mov dl, '-'
    int 21h
    mov dl, '1'
    int 21h
    
    mov dl, bl
    sub dl, 'A'
    add dl, '0'
    int 21h
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    jmp label1
    
    
    mov ah, 4ch
    int 21h

ENDP MAIN
END MAIN