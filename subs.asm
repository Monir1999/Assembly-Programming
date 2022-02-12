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
      
      mov bl,al
      int 21h
      
      mov bh,al
      int 21h
      
      sub bl,bh
      add bl,030H
      
      mov ah,2
      int 21h
      
      mov dl,0dh
      int 21h
      
      mov dl,0ah
      int 21h
      
      mov dl,bl
      int 21h
            
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main 

