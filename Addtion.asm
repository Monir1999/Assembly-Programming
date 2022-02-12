;NAME: DURJOY ACHARYA
;ID: 1925102002
;BATCH: 51
include "emu8086.inc"
.model small
.stack 100h
.data
a db 0
b db 0
c db 0
.code 
main proc
         mov ah,1
         int 21h
         sub al,48
         mov a,al      
         mov ah,1
         int 21h
         sub al,48
         mov b,al
         add al,a
         mov ah,0
         aaa 
         add ah,48
         add al,48
         mov bx,ax
         mov ah,2
         mov dl,0dh
         int 21h
         mov dl,0ah
         int 21h
         mov ah,2
         mov dl,bh
         int 21h
         mov dl,bl
         int 21h
          mov ah,2
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
    
    
    
    
    
    
    
    
    
    
    
    
    