; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	numbers DWORD 3, 2, 3, 1, 7, 5, 7, 8, 9, 2
	;
.code ; code segment

main PROC ; main procedure
	lea	ebx, numbers
	mov edi, 0;starting at value 0
forloop:
		mov eax, edi
		mov ecx, 2
		mul ecx

		add eax, 1

		mov esi, 3
		div esi

		add eax, edi

		mul esi

		mov [ebx + TYPE numbers * edi], eax
		inc edi
		cmp edi, 10
		jne forloop


	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling