; Hc/NtUserGetGlobalIMEStatus
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetGlobalIMEStatus:DWORD

.DATA
.CODE

HcUserGetGlobalIMEStatus PROC
	mov r10, rcx
	mov eax, sciUserGetGlobalIMEStatus
	syscall
	ret
HcUserGetGlobalIMEStatus ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetGlobalIMEStatus:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetGlobalIMEStatus PROC
	mov eax, sciUserGetGlobalIMEStatus
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
HcUserGetGlobalIMEStatus ENDP

ENDIF

END