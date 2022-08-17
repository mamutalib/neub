.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
         
    mov ax, @data
    mov ds, ax
    
    ;example 6.4
    
    ;ax = +ve, bx = 1
    ; ax = -ve.bx =-1
    ;ax =0, bx = 0
    
    
    mov ax,50
    
    cmp ax, 0
    jg greater 
    jl less  
    je equal
    
    
  greater:
     mov bx, 1  
     jmp  exit
     
  less:
    mov bx, -1 
    jmp exit
    
  equal:
     mov bx, 0
        
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN