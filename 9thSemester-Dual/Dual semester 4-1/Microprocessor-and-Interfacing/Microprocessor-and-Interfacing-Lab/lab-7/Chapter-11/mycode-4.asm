.MODEL SMALL
.STACK 100H
.DATA
    string1 db 100 dup ('?')  
    string2 db 100 dup ('?')  
    crlf db 0dh, 0ah, '$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX   
    mov es, ax  
    
    
    lea di, string1
    call read_str   
    
    
    mov ah, 9
    lea dx, crlf  
    int 21h
    lea dx, string1
    int 21h
    
    lea dx, string1
    int 21h
    
    lea dx, crlf
    int 21h
    
   

EXIT:
    MOV AH, 4CH
    INT 21H
    
ENDP MAIN    

read_str proc
    
    push ax
    push di
    
    cld ; df = 0
        ;std df = 1   
                      
    xor bx, bx
    mov ah, 1
    int 21h
    
while1:
    cmp al, 0dh
    je endwhile1
    cmp al, 08h
    je else1  
    stosb 
    
    inc bx  
    jmp if1
    
else1: 
    dec di
    dec bx    
if1:
    
    int 21h
    jmp while1
endwhile1:                      
           
    pop di
    pop ax
    ret
read_str endp   

print_str proc   
    push ax
    push bx
    push cx
    push dx
    push si
    
    mov cx, bx
    cmp cx, 0
    je p_exit     
    cld 
    mov ah, 2
 le1:
    lodsb 
    mov dl, al
    int 21h
    loop le1
p_exit:
    pop si
    pop dx 
    pop cx
    pop bx
    pop ax
print_str endp
END MAIN