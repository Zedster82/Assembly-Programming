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
	mov esi, 0;starting at value 0

forloop:
		mov eax, esi;Store i into eax
		mov ecx, 2;Store the value 2
		mul ecx; i * 2 stored in eax

		add eax, 1; add 1 to eax

		mov ecx, 3;store 3 into ecx
		div ecx;divide eax by ecx(3)

		add eax, esi;add i to eax

		mov ecx, 3;Store 3 in ecx
		mul ecx;Multiply eax by 3
		
		add eax, [ebx + TYPE numbers * esi]

		mov [ebx + TYPE numbers * esi], eax;Store the result back into array

		inc esi;Add 1 to counter
		cmp esi, 10;Compare to 10
		jne forloop;Jump if not equal


	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling