
.model small
.stack 100h
.data   
    message db 'Hello There!', 0dh, 0ah, '$'

.code
main proc
     mov ax, @data ; load string
     mov ds, ax    ; data initialized
     
     mov ah, 9
     lea dx, message
     int 21h
     
     mov ah, 4ch
     int 21h     
          
endp main
end main