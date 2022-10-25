.model small
.stack 100h
.data   
    msg db 'Enter 6 letter: $' 
    a db ?, '$' 
    b db ?, '$'
    c db ?, '$'
    d db ?, '$'
    e db ?, '$'
    f db ?, '$'
    
    newLine db 0dh, 0ah, '$'
    
.code
main proc  
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h
    
    mov ah, 1
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
    mov f, al
  
    
    mov ah, 9
    lea dx, newLine
    int 21h
    
    mov ah, 2
    mov dl, a
    int 21h
    
    mov ah, 9
    lea dx, newLine
    int 21h
    
    mov ah, 2
    mov dl, b
    int 21h 
    
    mov ah, 9
    lea dx, newLine
    int 21h
    
    mov ah, 2
    mov dl, c
    int 21h    
     
        mov ah, 9
    lea dx, newLine
    int 21h
    
    mov ah, 2
    mov dl, d
    int 21h 
    
        mov ah, 9
    lea dx, newLine
    int 21h
    
    mov ah, 2
    mov dl, e
    int 21h 
             
             
    mov ah, 9
    lea dx, newLine
    int 21h
    
    mov ah, 2
    mov dl, f
    int 21h 
    
     
    mov ah, 4ch
    int 21h
         
endp main
end main