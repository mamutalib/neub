     
.model small
.stack 100h
.data 
    msg db '**********', 0dh, 0ah, '$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 10  
    mov ah, 9
    lea dx, msg
    
label1:    
    int 21h
    loop label1
    
    
    mov ah, 4ch
    int 21h
endp main
end main