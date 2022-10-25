.model small
.stack 100h
.data   
    msg1 db 'Enter lowercase letter: $'
    msg2 db 'In uppercase letter is: $'
    newLine db 0dh, 0ah, '$'
.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg1
    int 21h 
    
    mov ah, 1 
    int 21h
    mov bl, al
       
    mov ah, 9   
    lea dx, newLine
    int 21h
    
    lea dx, msg2
    int 21h 
    
    sub bl, 20h 
    mov ah, 2
    mov dl, bl
    int 21h
    
    
    mov ah, 4ch
    int 21h                      
                                    
endp main
end main