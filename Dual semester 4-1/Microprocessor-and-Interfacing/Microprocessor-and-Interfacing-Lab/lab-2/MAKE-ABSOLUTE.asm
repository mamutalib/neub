.MODEL SMALL
.STACK 100H
.DATA    
    msg db '*********', 0dh, 0ah, '$'  
   msg2 db '*       *', 0dh, 0ah, '$'


.CODE

MAIN PROC    
    mov ax, @data
    mov ds, ax
    
    
    MOV AX, -10
    CMP AX, 0
    JG EXIT      ; iF POSITIVE DO NOTHING
    
    ;ELSE NAGATE THE NUMBER
    
    NEG AX
    
 
 EXIT:   
    MOV BX, AX
    
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN  

