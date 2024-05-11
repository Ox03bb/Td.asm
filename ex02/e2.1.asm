;assambly 8086

;if (i==j):
;   f=g+h
;else: 
;   f=g-h

.model small
.stack 100h
.data
    i db ?
    j db ?
    f db ?
    g db ?
    h db ?
.code
    MOV ax,@data
    MOV ds,ax

    MOV al,i
    MOV bl,j

    CMP al,bl
    JNE els

    MOV al,g
    MOV bl,h
    add al,bl
    
    JMP fin

    els:
    MOV al,g
    MOV bl,h
    sub al,bl

    fin:
    MOV ah,4ch
    int 21h

