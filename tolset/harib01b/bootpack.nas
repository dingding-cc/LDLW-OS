[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[OPTIMIZE 1]
[OPTION 1]
[BITS 32]
	EXTERN	_io_hlt
[FILE "bootpack.c"]
[SECTION .text]
	GLOBAL	_HariMain
_HariMain:
	PUSH	EBP
	MOV	ECX,655360
	MOV	EBP,ESP
	PUSH	EBX
	PUSH	EAX
L6:
	MOV	EAX,ECX
	MOV	EDX,16
	MOV	EBX,EDX
	CDQ
	IDIV	EBX
	MOV	BYTE [ECX],DL
	INC	ECX
	CMP	ECX,720895
	JLE	L6
L7:
	CALL	_io_hlt
	JMP	L7
