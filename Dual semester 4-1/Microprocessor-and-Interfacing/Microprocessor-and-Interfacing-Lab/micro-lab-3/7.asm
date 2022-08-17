.MODEL SMALL
.STACK 100H
.DATA   
    o db 'Number is odd', 0dh, 0ah, '$'   
    e db 'Number is even', 0dh, 0ah, '$'

    
.CODE
MAIN PROC
         
    mov ax, @data
    mov ds, ax 
    
    mov cx, 0
    mov ah, 1

a:
    int 21h
    cmp al, 0dh
    je exit
    inc cx
    jmp a

   
 exit:   
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN     


;work succesfully

; example 6.6