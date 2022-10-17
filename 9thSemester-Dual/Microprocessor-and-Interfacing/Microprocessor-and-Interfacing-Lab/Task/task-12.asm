.MODEL SMALL
.STACK 100H
.DATA 
   
    msg1 db '? $'
    msg2 db '*********', 0dh, 0ah, '$'        
    
    crlf db 0dh, 0ah, '$'

.CODE

MAIN PROC    
    mov ax, @data
    mov ds, ax  
    
    mov ah, 9         
    lea dx, msg1      
    int 21h 
    
    mov ah, 1
    int 21h
    mov bl, al
    int 21h
    mov bh,al
    int 21h
    mov cl, al 

    
    mov cx, 4
    mov ah,9   
    lea dx, msg2  
 label1:
    int 21h   
    loop label1  
    
    mov cx, 4
    mov ah, 9
    lea dx, msg2 
 label2:
    int 21h
    loop label2

    

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

