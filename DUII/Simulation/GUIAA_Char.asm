﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Antialias\GUIAA_Char.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
_Bit2Mask0 DB	080H
	DB	020H
	DB	08H
	DB	02H
_Bit2Mask1 DB	040H
	DB	010H
	DB	04H
	DB	01H
CONST	ENDS
PUBLIC	_GUIPROPAA_DispChar
EXTRN	_LCD_SetDrawMode:PROC
EXTRN	_GUIPROP__FindChar:PROC
EXTRN	_GUI_Context:BYTE
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\antialias\guiaa_char.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUIPROPAA_DispChar
_TEXT	SEGMENT
_pCharInfo$ = -56					; size = 4
_pProp$ = -44						; size = 4
_OldDrawMode$ = -32					; size = 4
_DrawMode$ = -20					; size = 4
_BytesPerLine$ = -8					; size = 4
_c$ = 8							; size = 2
_GUIPROPAA_DispChar PROC				; COMDAT
; Line 110
	push	ebp
	mov	ebp, esp
	sub	esp, 252				; 000000fcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-252]
	mov	ecx, 63					; 0000003fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 116
	movsx	eax, WORD PTR _GUI_Context+42
	mov	DWORD PTR _DrawMode$[ebp], eax
; Line 117
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GUI_Context+28
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP__FindChar
	add	esp, 8
	mov	DWORD PTR _pProp$[ebp], eax
; Line 118
	cmp	DWORD PTR _pProp$[ebp], 0
	je	$LN2@GUIPROPAA_
; Line 119
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pProp$[ebp]
	movzx	edx, WORD PTR [ecx]
	sub	eax, edx
	mov	ecx, DWORD PTR _pProp$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	lea	eax, DWORD PTR [edx+eax*8]
	mov	DWORD PTR _pCharInfo$[ebp], eax
; Line 120
	mov	eax, DWORD PTR _pCharInfo$[ebp]
	movzx	ecx, BYTE PTR [eax+2]
	mov	DWORD PTR _BytesPerLine$[ebp], ecx
; Line 121
	mov	eax, DWORD PTR _DrawMode$[ebp]
	push	eax
	call	_LCD_SetDrawMode
	add	esp, 4
	mov	DWORD PTR _OldDrawMode$[ebp], eax
; Line 126
	mov	eax, DWORD PTR _pCharInfo$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR _BytesPerLine$[ebp]
	push	edx
	mov	eax, DWORD PTR _GUI_Context+28
	movzx	ecx, BYTE PTR [eax+24]
	push	ecx
	mov	edx, DWORD PTR _pCharInfo$[ebp]
	movzx	eax, BYTE PTR [edx]
	add	eax, 1
	cdq
	sub	eax, edx
	sar	eax, 1
	push	eax
	movsx	eax, WORD PTR _GUI_Context+36
	push	eax
	movsx	ecx, WORD PTR _GUI_Context+34
	push	ecx
	call	_Draw
	add	esp, 24					; 00000018H
; Line 127
	mov	eax, DWORD PTR _OldDrawMode$[ebp]
	push	eax
	call	_LCD_SetDrawMode
	add	esp, 4
; Line 128
	mov	eax, DWORD PTR _pCharInfo$[ebp]
	movzx	eax, BYTE PTR [eax+1]
	add	eax, 1
	cdq
	sub	eax, edx
	sar	eax, 1
	movsx	ecx, WORD PTR _GUI_Context+34
	add	ecx, eax
	mov	WORD PTR _GUI_Context+34, cx
$LN2@GUIPROPAA_:
; Line 130
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 252				; 000000fcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROPAA_DispChar ENDP
_TEXT	ENDS
EXTRN	_LCD_SetPixelAA_NoTrans:PROC
EXTRN	_LCD_SetPixelAA:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _Draw
_TEXT	SEGMENT
tv131 = -292						; size = 4
tv67 = -292						; size = 4
_pfSetPixelAA$ = -92					; size = 4
_Mask1$ = -80						; size = 4
_Mask0$ = -68						; size = 4
_PixelCnt$ = -56					; size = 4
_y$ = -44						; size = 4
_x$ = -32						; size = 4
_pData1$ = -20						; size = 4
_pData0$ = -8						; size = 4
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_XSize$ = 16						; size = 4
_YSize$ = 20						; size = 4
_BytesPerLine$ = 24					; size = 4
_pData$ = 28						; size = 4
_Draw	PROC						; COMDAT
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 292				; 00000124H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-292]
	mov	ecx, 73					; 00000049H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 65
	movsx	eax, WORD PTR _GUI_Context+42
	and	eax, 2
	je	SHORT $LN20@Draw
	mov	DWORD PTR tv67[ebp], OFFSET _LCD_SetPixelAA
	jmp	SHORT $LN21@Draw
$LN20@Draw:
	mov	DWORD PTR tv67[ebp], OFFSET _LCD_SetPixelAA_NoTrans
$LN21@Draw:
	mov	ecx, DWORD PTR tv67[ebp]
	mov	DWORD PTR _pfSetPixelAA$[ebp], ecx
; Line 66
	mov	DWORD PTR _y$[ebp], 0
	jmp	SHORT $LN17@Draw
$LN16@Draw:
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, 1
	mov	DWORD PTR _y$[ebp], eax
$LN17@Draw:
	mov	eax, DWORD PTR _y$[ebp]
	cmp	eax, DWORD PTR _YSize$[ebp]
	jge	$LN18@Draw
; Line 67
	mov	eax, DWORD PTR _pData$[ebp]
	mov	DWORD PTR _pData0$[ebp], eax
; Line 68
	mov	eax, DWORD PTR _pData$[ebp]
	add	eax, DWORD PTR _BytesPerLine$[ebp]
	mov	DWORD PTR _pData1$[ebp], eax
; Line 69
	mov	DWORD PTR _x$[ebp], 0
	jmp	SHORT $LN14@Draw
$LN13@Draw:
	mov	eax, DWORD PTR _x$[ebp]
	add	eax, 1
	mov	DWORD PTR _x$[ebp], eax
$LN14@Draw:
	mov	eax, DWORD PTR _x$[ebp]
	cmp	eax, DWORD PTR _XSize$[ebp]
	jge	$LN12@Draw
; Line 70
	mov	DWORD PTR _PixelCnt$[ebp], 0
; Line 71
	mov	eax, DWORD PTR _x$[ebp]
	and	eax, 3
	movzx	ecx, BYTE PTR _Bit2Mask0[eax]
	mov	DWORD PTR _Mask0$[ebp], ecx
; Line 72
	mov	eax, DWORD PTR _x$[ebp]
	and	eax, 3
	movzx	ecx, BYTE PTR _Bit2Mask1[eax]
	mov	DWORD PTR _Mask1$[ebp], ecx
; Line 73
	mov	eax, DWORD PTR _pData0$[ebp]
	movzx	ecx, BYTE PTR [eax]
	and	ecx, DWORD PTR _Mask0$[ebp]
	je	SHORT $LN11@Draw
; Line 74
	mov	eax, DWORD PTR _PixelCnt$[ebp]
	add	eax, 1
	mov	DWORD PTR _PixelCnt$[ebp], eax
$LN11@Draw:
; Line 76
	mov	eax, DWORD PTR _pData0$[ebp]
	movzx	ecx, BYTE PTR [eax]
	and	ecx, DWORD PTR _Mask1$[ebp]
	je	SHORT $LN10@Draw
; Line 77
	mov	eax, DWORD PTR _PixelCnt$[ebp]
	add	eax, 1
	mov	DWORD PTR _PixelCnt$[ebp], eax
$LN10@Draw:
; Line 79
	mov	eax, DWORD PTR _pData1$[ebp]
	movzx	ecx, BYTE PTR [eax]
	and	ecx, DWORD PTR _Mask0$[ebp]
	je	SHORT $LN9@Draw
; Line 80
	mov	eax, DWORD PTR _PixelCnt$[ebp]
	add	eax, 1
	mov	DWORD PTR _PixelCnt$[ebp], eax
$LN9@Draw:
; Line 82
	mov	eax, DWORD PTR _pData1$[ebp]
	movzx	ecx, BYTE PTR [eax]
	and	ecx, DWORD PTR _Mask1$[ebp]
	je	SHORT $LN8@Draw
; Line 83
	mov	eax, DWORD PTR _PixelCnt$[ebp]
	add	eax, 1
	mov	DWORD PTR _PixelCnt$[ebp], eax
$LN8@Draw:
; Line 85
	mov	eax, DWORD PTR _x$[ebp]
	and	eax, 3
	cmp	eax, 3
	jne	SHORT $LN7@Draw
; Line 86
	mov	eax, DWORD PTR _pData0$[ebp]
	add	eax, 1
	mov	DWORD PTR _pData0$[ebp], eax
; Line 87
	mov	eax, DWORD PTR _pData1$[ebp]
	add	eax, 1
	mov	DWORD PTR _pData1$[ebp], eax
$LN7@Draw:
; Line 89
	mov	eax, DWORD PTR _PixelCnt$[ebp]
	mov	DWORD PTR tv131[ebp], eax
	mov	ecx, DWORD PTR tv131[ebp]
	sub	ecx, 1
	mov	DWORD PTR tv131[ebp], ecx
	cmp	DWORD PTR tv131[ebp], 3
	ja	$LN5@Draw
	mov	edx, DWORD PTR tv131[ebp]
	jmp	DWORD PTR $LN22@Draw[edx*4]
$LN4@Draw:
; Line 90
	mov	eax, DWORD PTR _y0$[ebp]
	add	eax, DWORD PTR _y$[ebp]
	mov	esi, esp
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	add	ecx, DWORD PTR _x$[ebp]
	push	ecx
	mov	edx, DWORD PTR _GUI_Context+88
	mov	eax, DWORD PTR [edx+4]
	call	eax
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	jmp	SHORT $LN5@Draw
$LN3@Draw:
; Line 91
	mov	esi, esp
	push	12					; 0000000cH
	mov	eax, DWORD PTR _y0$[ebp]
	add	eax, DWORD PTR _y$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	add	ecx, DWORD PTR _x$[ebp]
	push	ecx
	call	DWORD PTR _pfSetPixelAA$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
	jmp	SHORT $LN5@Draw
$LN2@Draw:
; Line 92
	mov	esi, esp
	push	8
	mov	eax, DWORD PTR _y0$[ebp]
	add	eax, DWORD PTR _y$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	add	ecx, DWORD PTR _x$[ebp]
	push	ecx
	call	DWORD PTR _pfSetPixelAA$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
	jmp	SHORT $LN5@Draw
$LN1@Draw:
; Line 93
	mov	esi, esp
	push	4
	mov	eax, DWORD PTR _y0$[ebp]
	add	eax, DWORD PTR _y$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	add	ecx, DWORD PTR _x$[ebp]
	push	ecx
	call	DWORD PTR _pfSetPixelAA$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN5@Draw:
; Line 95
	jmp	$LN13@Draw
$LN12@Draw:
; Line 96
	mov	eax, DWORD PTR _BytesPerLine$[ebp]
	mov	ecx, DWORD PTR _pData$[ebp]
	lea	edx, DWORD PTR [ecx+eax*2]
	mov	DWORD PTR _pData$[ebp], edx
; Line 97
	jmp	$LN16@Draw
$LN18@Draw:
; Line 98
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 292				; 00000124H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN22@Draw:
	DD	$LN1@Draw
	DD	$LN2@Draw
	DD	$LN3@Draw
	DD	$LN4@Draw
_Draw	ENDP
_TEXT	ENDS
PUBLIC	_GUIPROPAA_GetCharDistX
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROPAA_GetCharDistX
_TEXT	SEGMENT
tv76 = -220						; size = 4
_pProp$ = -20						; size = 4
_r$ = -8						; size = 4
_c$ = 8							; size = 2
_GUIPROPAA_GetCharDistX PROC				; COMDAT
; Line 136
	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 140
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GUI_Context+28
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP__FindChar
	add	esp, 8
	mov	DWORD PTR _pProp$[ebp], eax
; Line 141
	cmp	DWORD PTR _pProp$[ebp], 0
	je	SHORT $LN3@GUIPROPAA_@2
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pProp$[ebp]
	movzx	edx, WORD PTR [ecx]
	sub	eax, edx
	mov	ecx, DWORD PTR _pProp$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	movzx	eax, BYTE PTR [edx+eax*8]
	mov	DWORD PTR tv76[ebp], eax
	jmp	SHORT $LN4@GUIPROPAA_@2
$LN3@GUIPROPAA_@2:
	mov	DWORD PTR tv76[ebp], 0
$LN4@GUIPROPAA_@2:
	mov	ecx, DWORD PTR tv76[ebp]
	mov	DWORD PTR _r$[ebp], ecx
; Line 142
	mov	eax, DWORD PTR _r$[ebp]
	add	eax, 1
	cdq
	sub	eax, edx
	sar	eax, 1
; Line 143
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 220				; 000000dcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROPAA_GetCharDistX ENDP
_TEXT	ENDS
PUBLIC	_GUIPROPAA_GetFontInfo
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROPAA_GetFontInfo
_TEXT	SEGMENT
_pFont$ = 8						; size = 4
_pfi$ = 12						; size = 4
_GUIPROPAA_GetFontInfo PROC				; COMDAT
; Line 149
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 150
	mov	eax, DWORD PTR _pFont$[ebp]
	mov	DWORD PTR _pFont$[ebp], eax
; Line 151
	mov	eax, 5
	mov	ecx, DWORD PTR _pfi$[ebp]
	mov	WORD PTR [ecx], ax
; Line 152
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROPAA_GetFontInfo ENDP
_TEXT	ENDS
PUBLIC	_GUIPROPAA_IsInFont
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROPAA_IsInFont
_TEXT	SEGMENT
_pProp$ = -8						; size = 4
_pFont$ = 8						; size = 4
_c$ = 12						; size = 2
_GUIPROPAA_IsInFont PROC				; COMDAT
; Line 158
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 161
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pFont$[ebp]
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP__FindChar
	add	esp, 8
	mov	DWORD PTR _pProp$[ebp], eax
; Line 162
	xor	eax, eax
	cmp	DWORD PTR _pProp$[ebp], 0
	setne	al
; Line 163
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROPAA_IsInFont ENDP
_TEXT	ENDS
END
