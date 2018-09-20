.MODEL small
.DATA
cadena DB 'Hola Mundo$'
.code
programa:
;Iniciar programa
    MOV AX, @DATA ;se obtiene la direcci?n de inicio de segmento de datos
    MOV DS, AX ;asignamos al registro data segment la direcci?n de inicio de segmento
;Imprimir cadena
    MOV DX, offset cadena
    MOV AH, 09h
    INT 21h
;Finalizar el programa
    MOV AH, 4Ch
    INT 21h
.STACK
END programa