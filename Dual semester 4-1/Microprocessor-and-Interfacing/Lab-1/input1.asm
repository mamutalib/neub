;.model small     
;.STACK 100h
;.data
;msg db 'HELLO THERE!', 0dh, 0ah, '$'
;.code
;
;main proc
;    mov ax, @data
;    mov dx, ax
;    
;    mov ah, 9
;    lea dx, msg
;    int 21h
;    
;    mov ah, 4ch
;    int 21h
;    
;    
;endp main
;end main        \
.MODEL SMALL
.STACK 100H
.DATA   
msg db 'Hello There', 0dh, 0ah, '$'
.CODE

MAIN PROC   
    mov ax,@data
    mov ds, ax
    
    mov ah, 9         ; string print
    lea dx, msg        ; starting point
    int 21h                         
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

