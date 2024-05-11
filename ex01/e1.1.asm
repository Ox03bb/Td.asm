;assambly 8086

;1- f = g+h
.model small
.data
    f dw ?
    g db ?
    h db ?
.code
    mov ax, @data
    mov ds, ax

    mov al, g
    cbw
    mov bx, ax

    mov al, h
    cbw
    add bx, ax

    mov f, bx

    mov ax, 4c00h
    int 21h
end