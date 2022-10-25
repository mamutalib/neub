.model small
.stack 100h
.data
    msg1 db 'Enter first number: $'
    msg2 db 'Enter second number: $'
    msg3 db 'The sum is: $'
    
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
   ; add bl, 30h
    
    mov ah, 9
    lea dx, newLine
    int 21h  
    lea dx, msg2
    int 21h
    
    mov ah, 1
    int 21h
    
    mov bh, al
   ; add bh, 30h  
  
    
    mov ah, 9 
    lea dx, newLine
    int 21h
    lea dx, msg3
    int 21h
    
    add bl, bh   
    sub bl, 48
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    
    mov ah, 4ch
    int 21h
    
    
endp main
end main