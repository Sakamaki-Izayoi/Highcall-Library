; Hc/NtDCompositionReleaseAllResources
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionReleaseAllResources:DWORD

.DATA
.CODE

HcDCompositionReleaseAllResources PROC
	mov r10, rcx
	mov eax, sciDCompositionReleaseAllResources
	syscall
	ret
HcDCompositionReleaseAllResources ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionReleaseAllResources:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionReleaseAllResources PROC
	mov eax, sciDCompositionReleaseAllResources
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
HcDCompositionReleaseAllResources ENDP

ENDIF

END