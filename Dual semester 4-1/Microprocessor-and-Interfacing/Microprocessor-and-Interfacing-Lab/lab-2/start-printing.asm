
.MODEL SMALL
.STACK 100H
.DATA  
    msg db '**********', 0dh, 0ah, '$'
.CODE
MAIN PROC                             
    
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h

    mov ah, 4ch
    int 21h
    MAIN ENDP
END MAIN
;.MODEL SMALL
;.STACK 100H
;.DATA   
;    msg db '**********', 0dh, 0ah, '$'  
;
;.CODE
;
;MAIN PROC   
;    mov ax,@data
;    mov ds, ax
;    
;    mov ah, 9         
;    lea dx, msg       
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;    int 21h
;      
;
;    MOV AH, 4CH
;    INT 21H
;
;MAIN ENDP
;END MAIN
;
;