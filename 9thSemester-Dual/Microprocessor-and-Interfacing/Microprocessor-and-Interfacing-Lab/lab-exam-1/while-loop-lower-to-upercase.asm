.model small
.stack 100h
.data
.code

main proc
    mov ax, @data
    mov ds,  ax
    
    
label1:
    mov ah, 1
    int 21h
    mov dl,  al
    sub dl, 20h
    
    mov ah, 2
    int 21h  
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h   
    
    jmp label1    
    
    mov ah, 4ch
    int 21h
    
endp main
end main