; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
  lower_sum DWORD 0  ; define a variable sum (32-bit) with initial value 0
  higher_sum DWORD 0  ; define a variable sum (32-bit) with initial value 0
  a DWORD 1001 ; multiplier 
  b DWORD 999 ; multiplicand 
  myvar dword	?
  prompt byte "please enter a value",0

.code ; code segment

main PROC ; main procedure
	; write your assembly code here
	mov eax, 25
	mov ebx, 30
	add eax, ebx
	mov edx, offset prompt

	call writestring

	call	readint
	

	mov myvar, eax


INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling