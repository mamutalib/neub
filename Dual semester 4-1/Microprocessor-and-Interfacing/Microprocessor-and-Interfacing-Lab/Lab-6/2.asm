.MODEL SMALL
.STACK
.DATA     
    w dw 10, 20, 30, 40, 50, 60, 70, 80, 90, 100    
    
    x dw 100 dup(10)
.CODE

MAIN PROC 
    
    mov ax, @data
    mov ds,ax
  ; chapter 10 started;   
  
    mov ax, 0
    lea si, w
    
    mov cx, 10
  label1:
    
    add ax, [si]
    add si, 2
    loop label1
    
   exit:
     mov ah, 4ch
     int 21h
ENDP main  

END MAIN