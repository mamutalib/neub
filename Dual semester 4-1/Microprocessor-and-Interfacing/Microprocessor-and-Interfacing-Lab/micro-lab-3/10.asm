.MODEL SMALL
.STACK 100H
.DATA   
    o db 'Number is odd', 0dh, 0ah, '$'   
    e db 'Number is even', 0dh, 0ah, '$'

    
.CODE
MAIN PROC
         
    mov ax, @data
    mov ds, ax 
    
    
exit:
    mov ah, 4ch
    int 21h              
    MAIN ENDP
END MAIN     


;work succesfully

; example 6.6