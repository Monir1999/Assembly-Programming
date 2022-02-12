;compare two number weather they are equal or not 
;Name: Durjoy Acharjya
;Id: 1925102002 
ORG 100H         
MAIN PROC
    MOV AH,1h
    INT 21h
    MOV BL,AL
    INT 21h
    MOV CL,AL
    INT 21h
    SUB BL,CL 
    JZ EQUALS
    JNZ NOTEQUALS
    EQUALS:
    MOV CL,'Y'
    JMP PRINT
    NOTEQUALS:
    MOV CL,'N'
    PRINT:
    MOV AH,2h
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    MOV DL,CL
    INT 21H
    RET




