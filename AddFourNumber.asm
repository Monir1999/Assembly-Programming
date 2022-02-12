;add three digit 
.model small
.stack 100h
.data
a db ?
b db ?
.code
main proc
   mov ax,@data
   mov ds,dx
   
   mov ah,1
   int 21h
   mov bl,al
   
   mov ah,1
   int 21h
   mov bh,al
   
   mov ah,1
   int 21h
   mov cl,al
   
   mov ah,1
   int 21h
   mov ch,al
   
   add bl,bh
   sub bl,30h
   mov a,bl
   
   add a,cl
   sub a,30h
   mov bl,a
   
   add bl,ch
   sub bl,30h
   mov b,bl
   
   mov ah,2
   add b,30h
   mov dl,b
   int 21h
    
   exit:
   mov ah,4ch
   int 21h
   main endp
end main