; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	
	array1 DWORD 2,4,6,8,10,12,14,16,18,20

.code ; code segment

main PROC ; main procedure
	; write your assembly code here

	mov ebx,0
	Mov eax, OFFSET array1 
	Mov ebx, [eax + TYPE array1 * 1]

	mov edx, 10000
	mov [eax + TYPE array1 * 2], edx

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling