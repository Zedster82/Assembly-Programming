; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	val SWORD, 1

.code ; code segment

main PROC ; main procedure
	
	cmp val, 1
	JAE	setVal4
	mov val,3
	jmp done

	setVal4:
		mov val,4

	done:
		INVOKE ExitProcess, 0

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling