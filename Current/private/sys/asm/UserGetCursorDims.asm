; Hc/NtUserGetCursorDims
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetCursorDims:DWORD

.DATA
.CODE

HcUserGetCursorDims PROC
	mov r10, rcx
	mov eax, sciUserGetCursorDims
	syscall
	ret
HcUserGetCursorDims ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetCursorDims:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetCursorDims PROC
	mov eax, sciUserGetCursorDims
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserGetCursorDims ENDP

ENDIF

END