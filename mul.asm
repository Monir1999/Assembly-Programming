.MODEL SMALL
.STACK 100H
.CODE 

MAIN PROC
    MOV AH,1
    INT 21H
    
    MOV BH,AL
    INT 21H
    
    SUB BH,48
    SUB AL,48
    
    MUL BH
    
    AAM
    
    MOV BX,AX
    ADD BH,48
    ADD BL,48
    
    MOV AH,2
    INT 21H
    
    MOV DL,0DH
    INT 21H
    
    MOV DL,0AH
    INT 21H
    
    MOV DL,BH
    INT 21H
    
    MOV DL,BL
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN