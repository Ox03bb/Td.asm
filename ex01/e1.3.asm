;assambly 8086

;g= f div h
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
    idiv bl
    
    mov f,al ;if operants of idiv is 32 bit, the result is in AX

    mov ah,4ch
    int 21h
end