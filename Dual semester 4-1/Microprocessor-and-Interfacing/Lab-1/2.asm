.MODEL small
.STACK 
.DATA
.CODE
MAIN PROC
     MOV AH,  1
     INT 21H ;THE EQUIVALENT ASCII OF THE INPUT
     
     mov bl, al,; move the value of al to Bl
     
      
     mov ah, 2
     mov dl, 0dh
     
     int 21h
     mov dl, 0ah
     int 21h
     
     mov dl, bl
     int 21h
     
     mov ah, 4ch
     int 21h
    
ENDP MAIN
END MAIN