; Hc/NtGdiAbortPath
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiAbortPath:DWORD

.DATA
.CODE

HcGdiAbortPath PROC
	mov r10, rcx
	mov eax, sciGdiAbortPath
	syscall
	ret
HcGdiAbortPath ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiAbortPath:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiAbortPath PROC
	mov eax, sciGdiAbortPath
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
HcGdiAbortPath ENDP

ENDIF

END