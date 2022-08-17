.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
         
    mov ax, @data
    mov ds, ax
    
    mov ah,1
    int 21h
    mov bl, al
    int 21h
    mov bh, al ; 2 ascii are stored in bh and bl

             
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h    
     
     cmp bl, bh
     jg print2
     jl print1
    
 print1:
    mov dl, bl
    int 21h
    
 print2:
    mov dl, bh
    int 21h
        
        
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN