;NAME: DURJOY ACHARYA
;ID: 1925102002
;BATCH: 51
include "emu8086.inc"
.model small
.stack
.code 
main proc
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    sub bl,030h
    sub al,030h
    mul bl
    aam
    mov bx,ax
    add bh,030h
    add bl,030h
    mov ah,2
    int 21h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    mov dl,bh
    int 21h
    mov dl,bl       
    int 21h 
    
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    print "THANK YOU"
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    
    
    
    
    
    
    
    
    
    