     

.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov cx, 80
    mov ah, 2
    mov dl, '*'
label1:
    int 21h
    loop label1
    
    
    mov ah, 4ch
    int 21h
endp main
end main