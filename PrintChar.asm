include "emu8086.inc"
.model small
.stack 100h
.data
msg db "Your number is:$"
.code 
main proc
    mov dx,@data
    mov ds,dx
    
    print "Enter a number: "
    mov ah,2
    int 21h
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    
    ;print "The Given Number is: "
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2 
    int 21h
    
    mov dl,bl
    int 21h   
    exit:
    mov ah,4ch
    main endp
end main