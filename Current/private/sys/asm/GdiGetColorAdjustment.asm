; Hc/NtGdiGetColorAdjustment
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiGetColorAdjustment:DWORD

.DATA
.CODE

HcGdiGetColorAdjustment PROC
	mov r10, rcx
	mov eax, sciGdiGetColorAdjustment
	syscall
	ret
HcGdiGetColorAdjustment ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiGetColorAdjustment:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiGetColorAdjustment PROC
	mov eax, sciGdiGetColorAdjustment
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
HcGdiGetColorAdjustment ENDP

ENDIF

END