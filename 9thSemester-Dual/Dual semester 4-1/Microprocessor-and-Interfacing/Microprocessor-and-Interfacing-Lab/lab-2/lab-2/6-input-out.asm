.MODEL SMALL
.STACK 100H
.DATA   
    msg db 'Enter 6  character: $'  
    a db ?,'$'  
     b db ?,'$'  
      c db ?,'$'  
       d db ?,'$'  
        e db ?,'$'  
         f db ?,'$'  

    crlf db 0dh, 0ah, '$'
.CODE

MAIN PROC   
    mov ax,@data
    mov ds, ax
    
    mov ah, 9         ; string print
    lea dx, msg        ; starting point
    int 21h 
    
    mov ah, 1         ;Input taking started
    int 21h
    mov a, al
    int 21h
    mov b, al
    int 21h 
    mov c, al
    int 21h 
    mov d, al
    int 21h 
    mov e, al
    int 21h  
    mov f,al
  
    
    
    mov ah, 2
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, a
    int 21h 
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, b
    int 21h   
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, c
    int 21h   
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, d
    int 21h
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, e
    int 21h
    
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov dl, f
    int 21h                 
           
   

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

