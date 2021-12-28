.MODEL SMALL
.STACK 100H
.DATA
A DB "INPUT FIRST DIGIT: $"
B DB "INPUT SECOND DIGIT: $"
C DB "RESULT= $"
.CODE 
MAIN PROC    
    MOV AX,@DATA ;
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,1
    MOV BH,AL
    INT 21H 
    
    MOV AH,9
    LEA DX,B
    INT 21H 
    
    MOV AH,1
    MOV BL,AL
    INT 21H 
    
    MOV AH,9
    LEA DX,C
    INT 21H 
    
    
    ADD BH,BL;BL=BL+BH
    SUB BL,48
    
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN