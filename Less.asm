;Find out is a number is less than another number  
;Name: Durjoy Acharjya
;Id: 1925102002 
INCLUDE 'emu8086.inc'  
ORG 100H         
MAIN PROC
    MOV AH,1h
    INT 21h
    MOV BL,AL
    INT 21h
    MOV CL,AL
    INT 21h
    CMP BL,Cl
   JL  label1
   MOV AH,2
   MOV DL,CL
   INT 21h
   PRINT ' is less than '
   MOV AH,2
   MOV DL,BL
   INT 21h
   JMP exit
label1:
   MOV AH,2
   MOV DL,CL
   INT 21h
   PRINT ' is not less than '
   MOV AH,2
   MOV DL,BL
   INT 21h
exit:
   RET



