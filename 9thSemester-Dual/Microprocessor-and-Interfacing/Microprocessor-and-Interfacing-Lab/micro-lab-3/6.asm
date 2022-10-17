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
    int 21h  
    mov bl, al
    
    cmp bl, 'y'
    je print
    
    cmp bl,'Y'
    je print
    
    jmp exit

print:
    mov ah, 2
    mov dl, bl
    int 21h

   
 exit:   
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN     


;work succesfully

; example 6.6