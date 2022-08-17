.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
         
    mov ax, @data
    mov ds, ax 
    
    
    mov al, 2  
    
    cmp al, 1
    je odd 
    
    cmp al, 3
    je odd   
    
    cmp al, 2
    je even 
    
    cmp al, 4
    je even   
    
odd:
    mov ah, 2
    mov dl, 'o'
    int 21h
    jmp exit
    
even:
    mov ah,2
    mov dl,'e'
    int 21h
    
    
   
 exit:   
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN     


;work succesfully