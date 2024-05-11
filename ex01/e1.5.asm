;assambly 8086

;f = (g - h) + (i - j)
.data
    f dw ?
    g db ?
    h db ?
    j db ?
    i db ?
    
.code
    MOV AX, @data
    MOV DS, AX
    
    ;g+h
    MOV AL, g
    CBW
    MOV BX, AX
    MOV AL, h
    CBW
    SUB BX, AX
    
    ;i-j
    MOV AL, i
    CBW
    ADD BX, AX
    MOV AL, j
    CBW
    SUB BX, AX
    
    MOV f, BX
