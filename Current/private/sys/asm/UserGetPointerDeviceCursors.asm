; Hc/NtUserGetPointerDeviceCursors
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetPointerDeviceCursors:DWORD

.DATA
.CODE

HcUserGetPointerDeviceCursors PROC
	mov r10, rcx
	mov eax, sciUserGetPointerDeviceCursors
	syscall
	ret
HcUserGetPointerDeviceCursors ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetPointerDeviceCursors:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetPointerDeviceCursors PROC
	mov eax, sciUserGetPointerDeviceCursors
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
HcUserGetPointerDeviceCursors ENDP

ENDIF

END