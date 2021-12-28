DATA SEGMENT
A db "I LOVE ASSEMBLY $"
B db 10,13,"I LOVE BANGLA $"

ENDS
CODE SEGMENT
;ASSUME DS:DATA CS:CODE
START:
   mov ax,data
   mov ds,ax
   lea dx,a
   mov ah,9
   int 21h
   lea dx,b
   mov ah,9
   int 21h 
ends
end start
   
