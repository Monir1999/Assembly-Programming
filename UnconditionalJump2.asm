include 'emu8086.inc'
org 100h
    main proc      
        print "Welcome to assembly programming"
        mov ah,2
        mov dl,0dh
        int 21h
        
        mov dl,0ah
        int 21h
        
        jmp level_y
        print "Name: Durjoy Acharya"
        
         
        level_y:
        mov ah,2
        mov dl,007
        int 21h
        mov dl,007
        int 21h
        mov dl,007
        int 21h 
        mov dl,007
        int 21h
        jmp level_x
        print "ID: 1925102002"
        
        level_x:
        print "Joy Sri Ram"
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        print "Done"
        
        mov ah,0
        int 16h                
ret




