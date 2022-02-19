;recursion concept in assembly language 
org 100h
jmp end
end:
mov ah,0eh
mov al,'D'
int 10h
mov al,'U'
int 10h
mov al,'R'
int 10h
mov al,'J'
int 10h
mov al,'O'
int 10h
mov al,'Y'
int 10h

start:
MOV    AH, 0Eh 
mov al,'A'
int 10h
mov al,'P'
int 10h
mov al,'O'
int 10h
jmp start
ret




