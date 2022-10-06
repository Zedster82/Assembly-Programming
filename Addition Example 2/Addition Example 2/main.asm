; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	; define your variables here

.code ; code segment

main PROC ; main procedure
	; write your assembly code here
	mov eax, 25
	mov ebx, 63
	mov ecx, 69
	mov edx, 130

	add eax, ebx
	add ecx, edx

	sub eax, ecx
	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling