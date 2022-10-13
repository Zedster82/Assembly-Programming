; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	test1score DWORD 35
	test2score DWORD 45
	test1max DWORD 60
	test2max DWORD 45


.code ; code segment

main PROC ; main procedure
	; write your assembly code here
	mov eax test1score
	mul test2score

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling