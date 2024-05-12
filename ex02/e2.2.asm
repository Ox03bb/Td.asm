;if(i==0||i>=j):
;   i--
;else: 
;   j++;

.data
    i db ?
    j db ?
.code

    mov al,i
    mov bl,j

    cmp al,0
    jne els

    cmp i,j
    ja els

    dec i 

    jmp fin

    els:
        MOV al,j
        inc bl

    fin:
        MOV ah,4ch
        int 21h
