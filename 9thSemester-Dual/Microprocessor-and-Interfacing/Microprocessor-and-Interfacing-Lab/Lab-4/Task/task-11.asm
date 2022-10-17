.STACK 100H
.DATA
    prompt db 'Enter a Hex digit: $'
    getDecimal db 'The equivalent Decimal digit is: $'
    startAgain db 'Do you want continue: $'
    illegalChar db 'Illegal character - Enter 0...9 or A...F: $'
    closeProgramme db 'Failed to enter a Hex Digit, press any key to exit $'
    nexLine db 0dh, 0ah, "$"
.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax
start1:
    mov ah, 9
    lea dx, prompt
    int 21h
start2:
    mov ah, 1
    int 21h

    mov bl, al
    cmp bl, "A"
    jb singalDigit
    
    cmp bl, "F"
    ja illegalCharacter
    jmp Greater_than_nine
singalDigit:
    cmp bl, "0"
    jb illegalCharacter
    cmp bl, "9"
    ja illegalCharacter
    jmp less_than_ten
illegalCharacter:
    inc cl
    cmp cl, 3
    je terminate
    
    mov ah, 9
    lea dx, nexLine
    int 21h
    lea dx, illegalChar
    int 21h
    jmp start2
less_than_ten:
    mov cl, 0
    mov ah, 9
    lea dx, nexLine
    int 21h

    lea dx, getDecimal
    int 21h

    mov ah, 2
    mov dl, bl
    int 21h
    jmp continue
Greater_than_nine:
    mov cl, 0
    mov ah, 9
    lea dx, nexLine
    int 21h
    lea dx, getDecimal
    int 21h

    mov ah, 2
    mov dl, 31h ;for displaying digit-1
    int 21h

    sub bl, 11h ;subtract 11h from bl to find 2nd digit
    mov dl, bl
    int 21h
continue:
    mov ah, 9
    
    lea dx, nexLine
    int 21h
    int 21h

    lea dx, startAgain
    int 21h

    mov ah, 1
    int 21h
    
    cmp al, "y"
    je jump
    cmp al, "Y"
    je jump 
    jmp exit:
jump:
    lea dx, nexLine
    mov ah, 9
    int 21h
    int 21h
    
    lea dx, terminate
    int 21h
    mov ah, 1
    int 21h
terminate:
    mov ah, 9
    lea dx, nexLine
    int 21h
    int 21h

    lea dx, closeProgramme
    int 21h
    
    mov ah, 1
    int 21h    
    
    
exit:
    mov ah, 4ch
    int 21h
    ENDP MAIN
END MAIN