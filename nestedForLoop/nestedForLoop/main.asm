; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	y SWORD 0

.code ; code segment

main PROC ; main procedure
	//Single
	loop:
		inc i // increment i
		cmp i, 100 // compare i
		jne loop

	COMMENT!
	Double indented loop
	!
	outer:
		mov y, 0
		inner:
			inc value
			inc y
			cmp y, 3
			jne inner
		inc x
		cmp x, 2
		jne outer




	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling