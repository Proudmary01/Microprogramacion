.model small
.data
N DB ?
RESULT DB ?
NUM DB 10, 13, "Ingrese una letra: $"
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
jle guardar
jg AgainEntrada

AgainEntrada:
lea DX, ERROR
mov AH, 09
int 21H
jmp entrada

entrada:
;IMPRIMIR MENSAJE.
lea DX, NUM
mov AH, 09
int 21H
;LEER ENTRADA.
mov AH, 01
int 21H
jmp validarP1

guardar:
sub AL, 30H
mov N, AL
mov RESULT, AL
jmp factorial_proc



fin:
;FIN PROGRAMA.
mov ah, 4CH
int 21H
.stack
end programa