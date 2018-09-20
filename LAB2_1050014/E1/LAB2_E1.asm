.model small
.data
v1 DB ' Josue Solis$'
v2 DB ' 1050014$'
.code
programa:
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,09
    LEA DX, v1
    INT 21h

    ;INICIO SALTO DE LINEA.
    MOV dl,10
    MOV ah,02 ;\r
    Int 21h ;Interrupcion
    MOV dl,13
    MOV ah,02 ;\n
    Int 21h ;Interrupcion
    ;FIN SALTO DE LINEA.

    MOV AH,09
    LEA DX, v2
    INT 21h

    ;INICIO SALTO DE LINEA.
    MOV dl,10
    MOV ah,02 ;\r
    Int 21h ;Interrupcion
    MOV dl,13
    MOV ah,02 ;\n
    Int 21h ;Interrupcion
    ;FIN SALTO DE LINEA.

    MOV cl, offset v1
    ;MOV BH, offset v2
    MOV v1, offset v2
    MOV v2, cl

    MOV AH,09
    MOV DL, v1
    INT 21h

    ;INICIO SALTO DE LINEA.
    MOV dl,10
    MOV ah,02 ;\r
    Int 21h ;Interrupcion
    MOV dl,13
    MOV ah,02 ;\n
    Int 21h ;Interrupcion
    ;FIN SALTO DE LINEA.

    MOV AH,09
    MOV DL, v2
    INT 21h

    Mov AH,4CH
    int 21h
.stack
End programa
