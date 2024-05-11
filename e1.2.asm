;assambly 8086

;f= g*h
.model small
.data
    f dw ?
    g db ?
    h db ?
.code
    mov ax,@data
    mov ds,ax
    
    mov al,g
    mov bl,h
    imul bl
    
    mov f,ax

    mov ah,4ch
    int 21h
end