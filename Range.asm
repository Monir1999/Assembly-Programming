;Name:Durjoy Acharya
;Id: 1925102002
name 'Assignment'
org 100h
.data
msg:  db  "Enter first number: ", 0Dh,0Ah, 24h
msg2: db  13,10,"In range ",0Dh,0Ah,24h
msg3: db  13,10,"Out of range ",0Dh,0Ah,24h
.code
   main proc
     mov dx,@data
     mov ds,dx
     
     lea dx,msg
     mov ah,09h
     int 21h
     
     mov ah,01h
     int 21h
     mov bl,al
     sub bl,48
     
     cmp bl,4
     jge level
     
     level2:
      lea dx,msg3
      mov ah,09h
      int 21h
      
      jmp exit
      
      level:
       cmp bl,7
       jge level2
       jmp level3
              
       level3:
        lea dx,msg2
        mov ah,09h
        int 21h
 exit:
    ret       



