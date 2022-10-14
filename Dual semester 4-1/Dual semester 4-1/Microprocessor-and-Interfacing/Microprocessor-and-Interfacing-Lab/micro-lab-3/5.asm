.MODEL SMALL
.STACK 100H
.DATA   
    o db 'Number is odd', 0dh, 0ah, '$'   
    e db 'Number is even', 0dh, 0ah, '$'

    
.CODE
MAIN PROC
         
    mov ax, @data
    mov ds, ax 
    
    
    mov ah, 1 ;input
    int 21h
    
    mov bl, al
    sub bl, '0'
    
    
    mov ah, 2 ;output
    mov dl, 0dh    ; new line started
    int 21h
    mov dl, 0ah
    int 21h   ; end of new line
    
    cmp bl, 0
    je even 
    cmp bl, 1
    je odd
    cmp bl, 2
    je even
    cmp bl, 3
    je odd
    cmp bl, 4
    je even
    cmp bl, 5
    je odd
    cmp bl, 6
    je even
    cmp bl, 7
    je odd
    cmp bl, 8
    je even
    cmp bl, 9
    je odd
    
     
   
    
odd: 
    mov ah, 9
    lea dx, o
    int 21h
    jmp exit
    
even:
    mov ah, 9
    lea dx, o
    int 21h
    
    
   
 exit:   
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN     


;work succesfully