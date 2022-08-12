.MODEL SMALL
.STACK 100H
.DATA    
    msg db '*********', 0dh, 0ah, '$'  
   msg2 db '*       *', 0dh, 0ah, '$'


.CODE

MAIN PROC    
    mov ax, @data
    mov ds, ax
    
    MOV AX, 45H
    MOV BX, 41H
    
    CMP AX, BX     
    JGE L1
    JL L2
 L1:           
               
    MOV CX, AX  
    JMP EXIT
 L2:
    MOV CX, BX 
 EXIT:

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN  

    
    
;    mov ah, 1
;    int 21h
;    mov dl, al
;    sub dl, 20h
;    mov ah, 2
;    int 21h
;    mov dl, 0dh
;    int 21h
;    mov dl, 0ah
;    int 21h

