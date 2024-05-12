;if (i>j):
;   f=i-j
;else
;   if(j>=h):
;       f=j-i
;   else: 
;       f=h

;if(i==0||i>=j):
;   i--
;else: 
;   j++;

.data
    i db ?
    j db ?
    f db ?
.code

    mov al,i
    mov bl,j
    mov dl,f

    cmp bl,al
    jb els 

    .
    .
    .

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
