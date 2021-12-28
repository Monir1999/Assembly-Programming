include 'emu8086.inc'
.model small
.stack 100h
.code
main proc
    print 'Enter Number 1: '
    mov ah,1
    int 21h
    sub al,48
    mov bl,al 
    
    ;mov dl,bl
    ;mov ah,02h
    ;int 21h
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h
    
    print 'Enter Number 2: '
    
    mov ah,1
    int 21h
    sub al,48
    
    add bl,al
    ;int 21h
    add bl,48
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h
    
    print 'Resut: '
    
    mov dl,bl
    mov ah,02h
    int 21h   
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main





