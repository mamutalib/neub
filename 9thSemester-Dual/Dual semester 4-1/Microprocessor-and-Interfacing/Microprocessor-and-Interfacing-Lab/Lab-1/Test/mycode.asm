.model small
.stack 100h
.data

; Here all the varible will be declared

   ; bh bl 8 bit register == 1 byte
   ;bx 16 bits register == 1 word
   
   num db 'd'
   num2 db ? ;db = define byte
   char db 'H'
   str db "my name is emu8086"
   char2 db ?

.code
    ; Here code segment
    
    ;instraction desntination
    ; mov add sub mul div
    
    mov ax, @data
    mov ds, ax
    
    mov ah,  4ch
    int 21h
    
   
    main endp
   
end main