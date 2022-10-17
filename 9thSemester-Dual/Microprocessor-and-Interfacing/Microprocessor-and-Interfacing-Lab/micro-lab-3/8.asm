.MODEL SMALL
.STACK 100H
.DATA   
    o db 'Number is odd', 0dh, 0ah, '$'   
    e db 'Number is even', 0dh, 0ah, '$'

    
.CODE
MAIN PROC
         
    mov ax, @data
    mov ds, ax 
    
    mov ah, 1
a:
    int 21h
    cmp al, ' '
    jne a
   
 exit:   
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN     


;work succesfully

; example 6.6