.MODEL SMALL
.STACK 100H
.DATA   
    o db 'Number is odd', 0dh, 0ah, '$'   
    e db 'Number is even', 0dh, 0ah, '$'

    
.CODE
MAIN PROC
         
    mov ax, @data
    mov ds, ax 
    
   mov bl, 80h
   
   mov ah, 2
 a:
   
   mov cx,10
 b:            
    mov dl, bl
    int 21h    
    cmp bl,0ffh
    je exit
    inc bl
    
    mov dl,' '
    int 21h   
    loop b
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h  
    jmp a  
   
    
exit:
    mov ah, 4ch
    int 21h              
    MAIN ENDP
END MAIN     


;work succesfully

; example 6.6