.model small
.data
N DB ?
RESULT DB ?
CHA DB 10, 13, "Solo se acepta -ENTER-: $"
ERROR DB 10, 13, "X$"
RESUL DB 10, 13, "FIN$"
PD DB ?
SD DB ?
.code
programa:
;INICIO PROGRAMA.
mov ax,@DATA
mov ds,ax
jmp entrada

validarP1:
mov bh, 13d
cmp al,bh
jge validarP2
jl AgainEntrada

validarP2:
mov bh, 13d
cmp al,bh
jle fin
jg AgainEntrada

AgainEntrada:
lea DX, ERROR
mov AH, 09
int 21H
jmp entrada

entrada:
;IMPRIMIR MENSAJE.
lea DX, CHA
mov AH, 09
int 21H
;LEER ENTRADA.
mov AH, 01
int 21H
jmp validarP1

fin:
;IMPRIMIR MENSAJE.
lea DX, RESUL
mov AH, 09
int 21H

;FIN PROGRAMA.
mov ah, 4CH
int 21H
.stack
end programa