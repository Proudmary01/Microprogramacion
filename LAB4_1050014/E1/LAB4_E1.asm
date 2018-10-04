.model small

.data
num1 DB ?
num2 DB ?
msgigual DB 10,13,"Los numeros son iguales$"
msgmenor DB 10,13,"El primer numero es mayor al segundo$"
msgmayor DB 10,13,"El segundo numero es mayor al primero$"
NUMERO1 DB 10,13,"INGRESE EL NUMERO 1: $"
NUMERO2 db 10,13,"INGRESE EL NUMERO 2: $"

.code
programa:
MOV AX,@DATA
MOV Ds,AX

LEA Dx, NUMERO1
MOV Ah, 09
INT 21H

MOV AH, 01
INT 21H

MOV NUM1, aL

LEA Dx, NUMERO2
MOV Ah, 09
INT 21H

MOV AH, 01
INT 21H

MOV NUM2, aL

mov dl, num2

CMP dl, NUM1

Jg mayor

Jl menor

Jz igual

igual:

LEA Dx, msgigual
jmp final

mayor:

LEA Dx, msgmayor
jmp final

menor:

LEA Dx, msgmenor
jmp final

final:
MOV Ah, 09
INT 21H
MOV AH, 4CH
INT 21H

.stack
End programa