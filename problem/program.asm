// COLOCA AQUÍ TU NOMBRE COMPLETO - Sebastián Franco Cataño
// COLOCA AQUÍ TU ID - 000450587
// COLOCA AQUÍ TU CORREO ELECTRÓNICO - sebastian.francoc@upb.edu.co

(STR)
        @KBD
        D=M
        @84
        D=D-A
        @DLINE
        D;JEQ

        @STR
        0;JMP

(DLINE)
        @16400 //16384 (pantalla completa) + fila * 32 + columna/16
        D=A
	@coord 
	M=D 
	@256 //Las filas que se pintaran
	D=A
	@cont
	M=D
	@32
	D=A 
	@salto
	M=D
        @256
        D=A
	@color
	M=D
	@DRAW
	0;JMP

(DRAW)
        @coord
        D=M
        @pscreen
        M=D

(DRAWL)
        @cont
        D=M
        @END
        D;JEQ
        
        @color
        D=M
        @pscreen
        A=M
        M=D

        @cont
        M=M-1

        @salto
        D=M

        @pscreen
        M=M+D

        @DRAWL
        0;JMP

(END)
        0;JMP