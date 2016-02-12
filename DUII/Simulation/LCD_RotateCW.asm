﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\LCD_RotateCW.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_LCD_APIListCW
_DATA	SEGMENT
_LCD_APIListCW DD FLAT:__DrawBitmapCW
	DD	FLAT:__Rect2TextRect
_DATA	ENDS
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\core\lcd_rotatecw.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT __Rect2TextRect
_TEXT	SEGMENT
_y1$ = -20						; size = 4
_x1$ = -8						; size = 4
_pRect$ = 8						; size = 4
__Rect2TextRect PROC					; COMDAT
; Line 197
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 199
	mov	eax, DWORD PTR _pRect$[ebp]
	movsx	ecx, WORD PTR [eax+4]
	mov	DWORD PTR _x1$[ebp], ecx
; Line 200
	mov	eax, DWORD PTR _pRect$[ebp]
	movsx	ecx, WORD PTR [eax+6]
	mov	DWORD PTR _y1$[ebp], ecx
; Line 201
	mov	eax, DWORD PTR _pRect$[ebp]
	movsx	ecx, WORD PTR [eax]
	mov	edx, DWORD PTR _pRect$[ebp]
	movsx	eax, WORD PTR [edx+2]
	mov	edx, DWORD PTR _y1$[ebp]
	sub	edx, eax
	add	ecx, edx
	mov	eax, DWORD PTR _pRect$[ebp]
	mov	WORD PTR [eax+4], cx
; Line 202
	mov	eax, DWORD PTR _pRect$[ebp]
	movsx	ecx, WORD PTR [eax+2]
	mov	edx, DWORD PTR _pRect$[ebp]
	movsx	eax, WORD PTR [edx]
	mov	edx, DWORD PTR _x1$[ebp]
	sub	edx, eax
	add	ecx, edx
	mov	eax, DWORD PTR _pRect$[ebp]
	mov	WORD PTR [eax+6], cx
; Line 203
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__Rect2TextRect ENDP
_TEXT	ENDS
EXTRN	_LCD_FillRect:PROC
EXTRN	_LCD_pColorIndex:DWORD
EXTRN	_GUI_Context:BYTE
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __DrawBitmapCW
_TEXT	SEGMENT
tv130 = -364						; size = 4
_OldColor$9317 = -164					; size = 4
_Index$9313 = -149					; size = 1
_pDataLine$9309 = -140					; size = 4
_BitsLeft$9308 = -128					; size = 4
_xMax$9306 = -116					; size = 4
_Shift$9302 = -104					; size = 4
_yi$9301 = -92						; size = 4
_xi$9300 = -80						; size = 4
_y$9299 = -68						; size = 4
_x$9298 = -56						; size = 4
_Diff$ = -44						; size = 4
_y1$ = -32						; size = 4
_x1$ = -20						; size = 4
_Data$ = -5						; size = 1
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_xsize$ = 16						; size = 4
_ysize$ = 20						; size = 4
_xMul$ = 24						; size = 4
_yMul$ = 28						; size = 4
_BitsPerPixel$ = 32					; size = 4
_BytesPerLine$ = 36					; size = 4
_pPixel$ = 40						; size = 4
_pTrans$ = 44						; size = 4
__DrawBitmapCW PROC					; COMDAT
; Line 249
	push	ebp
	mov	ebp, esp
	sub	esp, 364				; 0000016cH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-364]
	mov	ecx, 91					; 0000005bH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 250
	mov	BYTE PTR _Data$[ebp], 0
; Line 253
	mov	eax, DWORD PTR _ysize$[ebp]
	mov	ecx, DWORD PTR _y0$[ebp]
	lea	edx, DWORD PTR [ecx+eax-1]
	mov	DWORD PTR _y1$[ebp], edx
; Line 254
	mov	eax, DWORD PTR _xsize$[ebp]
	mov	ecx, DWORD PTR _x0$[ebp]
	lea	edx, DWORD PTR [ecx+eax-1]
	mov	DWORD PTR _x1$[ebp], edx
; Line 256
	lea	eax, DWORD PTR _y0$[ebp]
	push	eax
	lea	ecx, DWORD PTR _x0$[ebp]
	push	ecx
	call	__TransformPointCW
	add	esp, 8
; Line 257
	lea	eax, DWORD PTR _y1$[ebp]
	push	eax
	lea	ecx, DWORD PTR _x1$[ebp]
	push	ecx
	call	__TransformPointCW
	add	esp, 8
; Line 259
	cmp	DWORD PTR _xMul$[ebp], 1
	jne	$LN23@DrawBitmap
	cmp	DWORD PTR _yMul$[ebp], 1
	jne	$LN23@DrawBitmap
; Line 261
	movsx	eax, WORD PTR _GUI_Context+12
	cmp	DWORD PTR _x0$[ebp], eax
	jle	SHORT $LN22@DrawBitmap
; Line 262
	movsx	eax, WORD PTR _GUI_Context+12
	mov	ecx, DWORD PTR _x0$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _Diff$[ebp], ecx
; Line 263
	mov	eax, DWORD PTR _ysize$[ebp]
	sub	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _ysize$[ebp], eax
; Line 264
	mov	eax, DWORD PTR _x0$[ebp]
	sub	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _x0$[ebp], eax
; Line 265
	mov	eax, DWORD PTR _Diff$[ebp]
	imul	eax, DWORD PTR _BytesPerLine$[ebp]
	add	eax, DWORD PTR _pPixel$[ebp]
	mov	DWORD PTR _pPixel$[ebp], eax
$LN22@DrawBitmap:
; Line 268
	movsx	eax, WORD PTR _GUI_Context+8
	cmp	DWORD PTR _x1$[ebp], eax
	jge	SHORT $LN21@DrawBitmap
; Line 269
	movsx	eax, WORD PTR _GUI_Context+8
	sub	eax, DWORD PTR _x1$[ebp]
	mov	DWORD PTR _Diff$[ebp], eax
; Line 270
	mov	eax, DWORD PTR _x1$[ebp]
	add	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _x1$[ebp], eax
; Line 271
	mov	eax, DWORD PTR _ysize$[ebp]
	sub	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _ysize$[ebp], eax
$LN21@DrawBitmap:
; Line 273
	mov	DWORD PTR _Diff$[ebp], 0
; Line 275
	movsx	eax, WORD PTR _GUI_Context+14
	cmp	DWORD PTR _y1$[ebp], eax
	jle	SHORT $LN20@DrawBitmap
; Line 276
	movsx	eax, WORD PTR _GUI_Context+14
	mov	ecx, DWORD PTR _y1$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _Diff$[ebp], ecx
; Line 277
	mov	eax, DWORD PTR _xsize$[ebp]
	sub	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _xsize$[ebp], eax
$LN20@DrawBitmap:
; Line 280
	movsx	eax, WORD PTR _GUI_Context+10
	cmp	DWORD PTR _y0$[ebp], eax
	jge	SHORT $LN19@DrawBitmap
; Line 281
	movsx	eax, WORD PTR _GUI_Context+10
	sub	eax, DWORD PTR _y0$[ebp]
	mov	DWORD PTR _Diff$[ebp], eax
; Line 282
	mov	eax, DWORD PTR _xsize$[ebp]
	sub	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _xsize$[ebp], eax
; Line 283
	mov	eax, DWORD PTR _BitsPerPixel$[ebp]
	mov	DWORD PTR tv130[ebp], eax
	cmp	DWORD PTR tv130[ebp], 1
	je	SHORT $LN16@DrawBitmap
	jmp	SHORT $LN19@DrawBitmap
$LN16@DrawBitmap:
; Line 285
	mov	eax, DWORD PTR _Diff$[ebp]
	sar	eax, 3
	add	eax, DWORD PTR _pPixel$[ebp]
	mov	DWORD PTR _pPixel$[ebp], eax
	mov	eax, DWORD PTR _Diff$[ebp]
	sar	eax, 3
	shl	eax, 3
	mov	ecx, DWORD PTR _y0$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _y0$[ebp], ecx
	mov	eax, DWORD PTR _Diff$[ebp]
	and	eax, 7
	mov	DWORD PTR _Diff$[ebp], eax
$LN19@DrawBitmap:
; Line 289
	cmp	DWORD PTR _xsize$[ebp], 0
	jg	SHORT $LN15@DrawBitmap
; Line 290
	jmp	$LN24@DrawBitmap
$LN15@DrawBitmap:
; Line 292
	cmp	DWORD PTR _ysize$[ebp], 0
	jg	SHORT $LN14@DrawBitmap
; Line 293
	jmp	$LN24@DrawBitmap
$LN14@DrawBitmap:
; Line 295
	mov	eax, DWORD PTR _pTrans$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Diff$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pPixel$[ebp]
	push	edx
	mov	eax, DWORD PTR _BytesPerLine$[ebp]
	push	eax
	mov	ecx, DWORD PTR _BitsPerPixel$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ysize$[ebp]
	push	edx
	mov	eax, DWORD PTR _xsize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x0$[ebp]
	push	edx
	call	__DrawBitmap
	add	esp, 36					; 00000024H
; Line 296
	jmp	$LN24@DrawBitmap
$LN23@DrawBitmap:
; Line 299
	mov	eax, 8
	sub	eax, DWORD PTR _BitsPerPixel$[ebp]
	mov	DWORD PTR _Shift$9302[ebp], eax
; Line 300
	mov	eax, DWORD PTR _x0$[ebp]
	mov	DWORD PTR _x$9298[ebp], eax
	mov	DWORD PTR _xi$9300[ebp], 0
	jmp	SHORT $LN12@DrawBitmap
$LN11@DrawBitmap:
	mov	eax, DWORD PTR _xi$9300[ebp]
	add	eax, 1
	mov	DWORD PTR _xi$9300[ebp], eax
	mov	ecx, DWORD PTR _x$9298[ebp]
	sub	ecx, DWORD PTR _yMul$[ebp]
	mov	DWORD PTR _x$9298[ebp], ecx
	mov	edx, DWORD PTR _pPixel$[ebp]
	add	edx, DWORD PTR _BytesPerLine$[ebp]
	mov	DWORD PTR _pPixel$[ebp], edx
$LN12@DrawBitmap:
	mov	eax, DWORD PTR _xi$9300[ebp]
	cmp	eax, DWORD PTR _ysize$[ebp]
	jge	$LN24@DrawBitmap
; Line 301
	mov	eax, DWORD PTR _x$9298[ebp]
	sub	eax, DWORD PTR _yMul$[ebp]
	add	eax, 1
	mov	DWORD PTR _xMax$9306[ebp], eax
; Line 302
	movsx	eax, WORD PTR _GUI_Context+8
	cmp	DWORD PTR _xMax$9306[ebp], eax
	jl	$LN9@DrawBitmap
	movsx	eax, WORD PTR _GUI_Context+12
	cmp	DWORD PTR _x$9298[ebp], eax
	jg	$LN9@DrawBitmap
; Line 303
	mov	DWORD PTR _BitsLeft$9308[ebp], 0
; Line 304
	mov	eax, DWORD PTR _pPixel$[ebp]
	mov	DWORD PTR _pDataLine$9309[ebp], eax
; Line 305
	mov	eax, DWORD PTR _y0$[ebp]
	mov	DWORD PTR _y$9299[ebp], eax
	mov	DWORD PTR _yi$9301[ebp], 0
	jmp	SHORT $LN8@DrawBitmap
$LN7@DrawBitmap:
	mov	eax, DWORD PTR _yi$9301[ebp]
	add	eax, 1
	mov	DWORD PTR _yi$9301[ebp], eax
	mov	ecx, DWORD PTR _y$9299[ebp]
	add	ecx, DWORD PTR _xMul$[ebp]
	mov	DWORD PTR _y$9299[ebp], ecx
$LN8@DrawBitmap:
	mov	eax, DWORD PTR _yi$9301[ebp]
	cmp	eax, DWORD PTR _xsize$[ebp]
	jge	$LN9@DrawBitmap
; Line 307
	cmp	DWORD PTR _BitsLeft$9308[ebp], 0
	jne	SHORT $LN5@DrawBitmap
; Line 308
	mov	eax, DWORD PTR _pDataLine$9309[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR _Data$[ebp], cl
	mov	edx, DWORD PTR _pDataLine$9309[ebp]
	add	edx, 1
	mov	DWORD PTR _pDataLine$9309[ebp], edx
; Line 309
	mov	DWORD PTR _BitsLeft$9308[ebp], 8
$LN5@DrawBitmap:
; Line 311
	movzx	eax, BYTE PTR _Data$[ebp]
	mov	ecx, DWORD PTR _Shift$9302[ebp]
	sar	eax, cl
	mov	BYTE PTR _Index$9313[ebp], al
; Line 312
	mov	al, BYTE PTR _Data$[ebp]
	mov	cl, BYTE PTR _BitsPerPixel$[ebp]
	shl	al, cl
	mov	BYTE PTR _Data$[ebp], al
; Line 313
	mov	eax, DWORD PTR _BitsLeft$9308[ebp]
	sub	eax, DWORD PTR _BitsPerPixel$[ebp]
	mov	DWORD PTR _BitsLeft$9308[ebp], eax
; Line 314
	movzx	eax, BYTE PTR _Index$9313[ebp]
	test	eax, eax
	jne	SHORT $LN3@DrawBitmap
	movzx	eax, BYTE PTR _GUI_Context+16
	and	eax, 2
	jne	SHORT $LN4@DrawBitmap
$LN3@DrawBitmap:
; Line 315
	mov	eax, DWORD PTR _LCD_pColorIndex
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _OldColor$9317[ebp], ecx
; Line 316
	cmp	DWORD PTR _pTrans$[ebp], 0
	je	SHORT $LN2@DrawBitmap
; Line 317
	movzx	eax, BYTE PTR _Index$9313[ebp]
	mov	ecx, DWORD PTR _LCD_pColorIndex
	mov	edx, DWORD PTR _pTrans$[ebp]
	mov	eax, DWORD PTR [edx+eax*4]
	mov	DWORD PTR [ecx], eax
; Line 318
	jmp	SHORT $LN1@DrawBitmap
$LN2@DrawBitmap:
; Line 319
	movzx	eax, BYTE PTR _Index$9313[ebp]
	mov	ecx, DWORD PTR _LCD_pColorIndex
	mov	DWORD PTR [ecx], eax
$LN1@DrawBitmap:
; Line 321
	mov	eax, DWORD PTR _xMul$[ebp]
	mov	ecx, DWORD PTR _y$9299[ebp]
	lea	edx, DWORD PTR [ecx+eax-1]
	push	edx
	mov	eax, DWORD PTR _x$9298[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$9299[ebp]
	push	ecx
	mov	edx, DWORD PTR _xMax$9306[ebp]
	push	edx
	call	_LCD_FillRect
	add	esp, 16					; 00000010H
; Line 322
	mov	eax, DWORD PTR _LCD_pColorIndex
	mov	ecx, DWORD PTR _OldColor$9317[ebp]
	mov	DWORD PTR [eax], ecx
$LN4@DrawBitmap:
; Line 324
	jmp	$LN7@DrawBitmap
$LN9@DrawBitmap:
; Line 326
	jmp	$LN11@DrawBitmap
$LN24@DrawBitmap:
; Line 328
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN29@DrawBitmap
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 364				; 0000016cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN29@DrawBitmap:
	DD	2
	DD	$LN28@DrawBitmap
$LN28@DrawBitmap:
	DD	-20					; ffffffecH
	DD	4
	DD	$LN26@DrawBitmap
	DD	-32					; ffffffe0H
	DD	4
	DD	$LN27@DrawBitmap
$LN27@DrawBitmap:
	DB	121					; 00000079H
	DB	49					; 00000031H
	DB	0
$LN26@DrawBitmap:
	DB	120					; 00000078H
	DB	49					; 00000031H
	DB	0
__DrawBitmapCW ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __DrawBitmap
_TEXT	SEGMENT
tv66 = -208						; size = 4
_i$ = -8						; size = 4
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_xsize$ = 16						; size = 4
_ysize$ = 20						; size = 4
_BitsPerPixel$ = 24					; size = 4
_BytesPerLine$ = 28					; size = 4
_pData$ = 32						; size = 4
_Diff$ = 36						; size = 4
_pTrans$ = 40						; size = 4
__DrawBitmap PROC					; COMDAT
; Line 170
	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 173
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN8@DrawBitmap@2
$LN7@DrawBitmap@2:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN8@DrawBitmap@2:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _ysize$[ebp]
	jge	$LN9@DrawBitmap@2
; Line 174
	mov	eax, DWORD PTR _BitsPerPixel$[ebp]
	mov	DWORD PTR tv66[ebp], eax
	cmp	DWORD PTR tv66[ebp], 1
	je	SHORT $LN3@DrawBitmap@2
	cmp	DWORD PTR tv66[ebp], 2
	je	SHORT $LN2@DrawBitmap@2
	cmp	DWORD PTR tv66[ebp], 4
	je	SHORT $LN1@DrawBitmap@2
	jmp	SHORT $LN4@DrawBitmap@2
$LN3@DrawBitmap@2:
; Line 176
	mov	eax, DWORD PTR _pTrans$[ebp]
	push	eax
	mov	ecx, DWORD PTR _xsize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _Diff$[ebp]
	push	edx
	mov	eax, DWORD PTR _pData$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x0$[ebp]
	sub	edx, DWORD PTR _i$[ebp]
	push	edx
	call	__DrawBitLine1BPP
	add	esp, 24					; 00000018H
; Line 177
	jmp	SHORT $LN4@DrawBitmap@2
$LN2@DrawBitmap@2:
; Line 179
	mov	eax, DWORD PTR _xsize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Diff$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pData$[ebp]
	push	edx
	mov	eax, DWORD PTR _y0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	sub	ecx, DWORD PTR _i$[ebp]
	push	ecx
	call	__DrawBitLine2BPP
	add	esp, 20					; 00000014H
; Line 180
	jmp	SHORT $LN4@DrawBitmap@2
$LN1@DrawBitmap@2:
; Line 182
	mov	eax, DWORD PTR _xsize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Diff$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pData$[ebp]
	push	edx
	mov	eax, DWORD PTR _y0$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	sub	ecx, DWORD PTR _i$[ebp]
	push	ecx
	call	__DrawBitLine4BPP
	add	esp, 20					; 00000014H
$LN4@DrawBitmap@2:
; Line 185
	mov	eax, DWORD PTR _pData$[ebp]
	add	eax, DWORD PTR _BytesPerLine$[ebp]
	mov	DWORD PTR _pData$[ebp], eax
; Line 186
	jmp	$LN7@DrawBitmap@2
$LN9@DrawBitmap@2:
; Line 187
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 208				; 000000d0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__DrawBitmap ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __DrawBitLine1BPP
_TEXT	SEGMENT
tv78 = -244						; size = 4
tv68 = -244						; size = 4
_Pixel$ = -44						; size = 4
_IndexMask$ = -32					; size = 4
_Index1$ = -20						; size = 4
_Index0$ = -8						; size = 4
_x$ = 8							; size = 4
_y$ = 12						; size = 4
_p$ = 16						; size = 4
_Diff$ = 20						; size = 4
_xsize$ = 24						; size = 4
_pTrans$ = 28						; size = 4
__DrawBitLine1BPP PROC					; COMDAT
; Line 58
	push	ebp
	mov	ebp, esp
	sub	esp, 244				; 000000f4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-244]
	mov	ecx, 61					; 0000003dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 62
	mov	eax, DWORD PTR _pTrans$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Index0$[ebp], ecx
; Line 63
	mov	eax, DWORD PTR _pTrans$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _Index1$[ebp], ecx
; Line 64
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _y$[ebp], eax
; Line 65
	movzx	eax, BYTE PTR _GUI_Context+16
	and	eax, 3
	mov	DWORD PTR tv68[ebp], eax
	je	SHORT $LN16@DrawBitLin
	cmp	DWORD PTR tv68[ebp], 1
	je	$LN6@DrawBitLin
	cmp	DWORD PTR tv68[ebp], 2
	je	$LN11@DrawBitLin
	jmp	$LN20@DrawBitLin
$LN16@DrawBitLin:
; Line 68
	mov	eax, DWORD PTR _p$[ebp]
	movzx	edx, BYTE PTR [eax]
	mov	eax, 128				; 00000080H
	mov	ecx, DWORD PTR _Diff$[ebp]
	sar	eax, cl
	and	edx, eax
	je	SHORT $LN22@DrawBitLin
	mov	ecx, DWORD PTR _Index1$[ebp]
	mov	DWORD PTR tv78[ebp], ecx
	jmp	SHORT $LN23@DrawBitLin
$LN22@DrawBitLin:
	mov	edx, DWORD PTR _Index0$[ebp]
	mov	DWORD PTR tv78[ebp], edx
$LN23@DrawBitLin:
	mov	esi, esp
	mov	eax, DWORD PTR tv78[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	movzx	eax, BYTE PTR _GUI_Context+17
	mov	ecx, DWORD PTR _GUI_Context[eax*4+72]
	push	ecx
	movzx	edx, BYTE PTR _GUI_Context+17
	mov	eax, DWORD PTR _GUI_Context[edx*4+72]
	mov	ecx, DWORD PTR [eax+12]
	mov	edx, DWORD PTR [ecx+24]
	call	edx
	add	esp, 16					; 00000010H
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 69
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, 1
	mov	DWORD PTR _y$[ebp], eax
; Line 70
	mov	eax, DWORD PTR _Diff$[ebp]
	add	eax, 1
	mov	DWORD PTR _Diff$[ebp], eax
	cmp	DWORD PTR _Diff$[ebp], 8
	jne	SHORT $LN15@DrawBitLin
; Line 71
	mov	DWORD PTR _Diff$[ebp], 0
; Line 72
	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax
$LN15@DrawBitLin:
; Line 74
	mov	eax, DWORD PTR _xsize$[ebp]
	sub	eax, 1
	mov	DWORD PTR _xsize$[ebp], eax
	jne	$LN16@DrawBitLin
; Line 75
	jmp	$LN20@DrawBitLin
$LN11@DrawBitLin:
; Line 78
	mov	eax, DWORD PTR _p$[ebp]
	movzx	edx, BYTE PTR [eax]
	mov	eax, 128				; 00000080H
	mov	ecx, DWORD PTR _Diff$[ebp]
	sar	eax, cl
	and	edx, eax
	je	SHORT $LN8@DrawBitLin
; Line 79
	mov	esi, esp
	mov	eax, DWORD PTR _Index1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	movzx	eax, BYTE PTR _GUI_Context+17
	mov	ecx, DWORD PTR _GUI_Context[eax*4+72]
	push	ecx
	movzx	edx, BYTE PTR _GUI_Context+17
	mov	eax, DWORD PTR _GUI_Context[edx*4+72]
	mov	ecx, DWORD PTR [eax+12]
	mov	edx, DWORD PTR [ecx+24]
	call	edx
	add	esp, 16					; 00000010H
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN8@DrawBitLin:
; Line 81
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, 1
	mov	DWORD PTR _y$[ebp], eax
; Line 82
	mov	eax, DWORD PTR _Diff$[ebp]
	add	eax, 1
	mov	DWORD PTR _Diff$[ebp], eax
	cmp	DWORD PTR _Diff$[ebp], 8
	jne	SHORT $LN10@DrawBitLin
; Line 83
	mov	DWORD PTR _Diff$[ebp], 0
; Line 84
	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax
$LN10@DrawBitLin:
; Line 86
	mov	eax, DWORD PTR _xsize$[ebp]
	sub	eax, 1
	mov	DWORD PTR _xsize$[ebp], eax
	jne	$LN11@DrawBitLin
; Line 87
	jmp	$LN20@DrawBitLin
$LN6@DrawBitLin:
; Line 89
	movzx	eax, BYTE PTR _GUI_Context+17
	mov	ecx, DWORD PTR _GUI_Context[eax*4+72]
	mov	edx, DWORD PTR [ecx+16]
	mov	esi, esp
	mov	eax, DWORD PTR [edx+8]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _IndexMask$[ebp], eax
$LN5@DrawBitLin:
; Line 91
	mov	eax, DWORD PTR _p$[ebp]
	movzx	edx, BYTE PTR [eax]
	mov	eax, 128				; 00000080H
	mov	ecx, DWORD PTR _Diff$[ebp]
	sar	eax, cl
	and	edx, eax
	je	SHORT $LN2@DrawBitLin
; Line 92
	mov	esi, esp
	mov	eax, DWORD PTR _y$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x$[ebp]
	push	ecx
	movzx	edx, BYTE PTR _GUI_Context+17
	mov	eax, DWORD PTR _GUI_Context[edx*4+72]
	push	eax
	movzx	ecx, BYTE PTR _GUI_Context+17
	mov	edx, DWORD PTR _GUI_Context[ecx*4+72]
	mov	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [eax+20]
	call	ecx
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _Pixel$[ebp], eax
; Line 93
	mov	eax, DWORD PTR _Pixel$[ebp]
	xor	eax, DWORD PTR _IndexMask$[ebp]
	mov	esi, esp
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	movzx	eax, BYTE PTR _GUI_Context+17
	mov	ecx, DWORD PTR _GUI_Context[eax*4+72]
	push	ecx
	movzx	edx, BYTE PTR _GUI_Context+17
	mov	eax, DWORD PTR _GUI_Context[edx*4+72]
	mov	ecx, DWORD PTR [eax+12]
	mov	edx, DWORD PTR [ecx+24]
	call	edx
	add	esp, 16					; 00000010H
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@DrawBitLin:
; Line 95
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, 1
	mov	DWORD PTR _y$[ebp], eax
; Line 96
	mov	eax, DWORD PTR _Diff$[ebp]
	add	eax, 1
	mov	DWORD PTR _Diff$[ebp], eax
	cmp	DWORD PTR _Diff$[ebp], 8
	jne	SHORT $LN4@DrawBitLin
; Line 97
	mov	DWORD PTR _Diff$[ebp], 0
; Line 98
	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax
$LN4@DrawBitLin:
; Line 100
	mov	eax, DWORD PTR _xsize$[ebp]
	sub	eax, 1
	mov	DWORD PTR _xsize$[ebp], eax
	jne	$LN5@DrawBitLin
$LN20@DrawBitLin:
; Line 103
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 244				; 000000f4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__DrawBitLine1BPP ENDP
_TEXT	ENDS
PUBLIC	__$ArrayPad$
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __DrawBitLine2BPP
_TEXT	SEGMENT
_aConvTable$ = -96					; size = 16
_pfSetPixelAA$ = -72					; size = 4
_Index$ = -60						; size = 4
_Shift$ = -48						; size = 4
_CurrentPixel$ = -36					; size = 4
_PixelIndex$ = -24					; size = 4
_Pixels$ = -12						; size = 4
__$ArrayPad$ = -4					; size = 4
_x$ = 8							; size = 4
_y$ = 12						; size = 4
_p$ = 16						; size = 4
_Diff$ = 20						; size = 4
_xsize$ = 24						; size = 4
__DrawBitLine2BPP PROC					; COMDAT
; Line 109
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
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 113
	mov	DWORD PTR _aConvTable$[ebp], 0
	mov	DWORD PTR _aConvTable$[ebp+4], 5
	mov	DWORD PTR _aConvTable$[ebp+8], 10	; 0000000aH
	mov	DWORD PTR _aConvTable$[ebp+12], 15	; 0000000fH
; Line 115
	mov	eax, DWORD PTR _p$[ebp]
	movzx	ecx, BYTE PTR [eax]
	mov	DWORD PTR _Pixels$[ebp], ecx
; Line 116
	mov	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _CurrentPixel$[ebp], eax
; Line 117
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _y$[ebp], eax
; Line 118
	call	__GetpfSetPixel
	mov	DWORD PTR _pfSetPixelAA$[ebp], eax
$LN4@DrawBitLin@2:
; Line 120
	mov	eax, 3
	sub	eax, DWORD PTR _CurrentPixel$[ebp]
	shl	eax, 1
	mov	DWORD PTR _Shift$[ebp], eax
; Line 121
	mov	ecx, 6
	sub	ecx, DWORD PTR _Shift$[ebp]
	mov	eax, 192				; 000000c0H
	sar	eax, cl
	and	eax, DWORD PTR _Pixels$[ebp]
	mov	ecx, DWORD PTR _Shift$[ebp]
	shr	eax, cl
	mov	DWORD PTR _Index$[ebp], eax
; Line 122
	mov	eax, DWORD PTR _Index$[ebp]
	mov	ecx, DWORD PTR _aConvTable$[ebp+eax*4]
	mov	DWORD PTR _PixelIndex$[ebp], ecx
; Line 123
	mov	esi, esp
	movzx	eax, BYTE PTR _PixelIndex$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	call	DWORD PTR _pfSetPixelAA$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 124
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, 1
	mov	DWORD PTR _y$[ebp], eax
; Line 125
	mov	eax, DWORD PTR _CurrentPixel$[ebp]
	add	eax, 1
	mov	DWORD PTR _CurrentPixel$[ebp], eax
	cmp	DWORD PTR _CurrentPixel$[ebp], 4
	jne	SHORT $LN3@DrawBitLin@2
; Line 126
	mov	DWORD PTR _CurrentPixel$[ebp], 0
; Line 127
	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax
	mov	ecx, DWORD PTR _p$[ebp]
	movzx	edx, BYTE PTR [ecx]
	mov	DWORD PTR _Pixels$[ebp], edx
$LN3@DrawBitLin@2:
; Line 129
	mov	eax, DWORD PTR _xsize$[ebp]
	sub	eax, 1
	mov	DWORD PTR _xsize$[ebp], eax
	jne	$LN4@DrawBitLin@2
; Line 130
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN9@DrawBitLin@2
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 292				; 00000124H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN9@DrawBitLin@2:
	DD	1
	DD	$LN8@DrawBitLin@2
$LN8@DrawBitLin@2:
	DD	-96					; ffffffa0H
	DD	16					; 00000010H
	DD	$LN7@DrawBitLin@2
$LN7@DrawBitLin@2:
	DB	97					; 00000061H
	DB	67					; 00000043H
	DB	111					; 0000006fH
	DB	110					; 0000006eH
	DB	118					; 00000076H
	DB	84					; 00000054H
	DB	97					; 00000061H
	DB	98					; 00000062H
	DB	108					; 0000006cH
	DB	101					; 00000065H
	DB	0
__DrawBitLine2BPP ENDP
_TEXT	ENDS
EXTRN	_LCD_SetPixelAA_Xor:PROC
EXTRN	_LCD_SetPixelAA:PROC
EXTRN	_LCD_SetPixelAA_NoTrans:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __GetpfSetPixel
_TEXT	SEGMENT
tv66 = -196						; size = 4
__GetpfSetPixel PROC					; COMDAT
; Line 41
	push	ebp
	mov	ebp, esp
	sub	esp, 196				; 000000c4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-196]
	mov	ecx, 49					; 00000031H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 42
	movzx	eax, BYTE PTR _GUI_Context+16
	and	eax, 3
	mov	DWORD PTR tv66[ebp], eax
	cmp	DWORD PTR tv66[ebp], 3
	ja	SHORT $LN4@GetpfSetPi
	mov	ecx, DWORD PTR tv66[ebp]
	jmp	DWORD PTR $LN8@GetpfSetPi[ecx*4]
$LN3@GetpfSetPi:
; Line 44
	mov	eax, OFFSET _LCD_SetPixelAA_NoTrans
	jmp	SHORT $LN6@GetpfSetPi
$LN2@GetpfSetPi:
; Line 46
	mov	eax, OFFSET _LCD_SetPixelAA
	jmp	SHORT $LN6@GetpfSetPi
$LN1@GetpfSetPi:
; Line 49
	mov	eax, OFFSET _LCD_SetPixelAA_Xor
	jmp	SHORT $LN6@GetpfSetPi
$LN4@GetpfSetPi:
; Line 51
	xor	eax, eax
$LN6@GetpfSetPi:
; Line 52
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN8@GetpfSetPi:
	DD	$LN3@GetpfSetPi
	DD	$LN1@GetpfSetPi
	DD	$LN2@GetpfSetPi
	DD	$LN1@GetpfSetPi
__GetpfSetPixel ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __DrawBitLine4BPP
_TEXT	SEGMENT
_pfSetPixelAA$ = -56					; size = 4
_Index$ = -44						; size = 4
_Shift$ = -32						; size = 4
_CurrentPixel$ = -20					; size = 4
_Pixels$ = -8						; size = 4
_x$ = 8							; size = 4
_y$ = 12						; size = 4
_p$ = 16						; size = 4
_Diff$ = 20						; size = 4
_xsize$ = 24						; size = 4
__DrawBitLine4BPP PROC					; COMDAT
; Line 136
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
; Line 141
	mov	eax, DWORD PTR _p$[ebp]
	movzx	ecx, BYTE PTR [eax]
	mov	DWORD PTR _Pixels$[ebp], ecx
; Line 142
	mov	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _CurrentPixel$[ebp], eax
; Line 143
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, DWORD PTR _Diff$[ebp]
	mov	DWORD PTR _y$[ebp], eax
; Line 144
	call	__GetpfSetPixel
	mov	DWORD PTR _pfSetPixelAA$[ebp], eax
$LN4@DrawBitLin@3:
; Line 146
	mov	eax, 1
	sub	eax, DWORD PTR _CurrentPixel$[ebp]
	shl	eax, 2
	mov	DWORD PTR _Shift$[ebp], eax
; Line 147
	mov	ecx, 4
	sub	ecx, DWORD PTR _Shift$[ebp]
	mov	eax, 240				; 000000f0H
	sar	eax, cl
	and	eax, DWORD PTR _Pixels$[ebp]
	mov	ecx, DWORD PTR _Shift$[ebp]
	shr	eax, cl
	mov	DWORD PTR _Index$[ebp], eax
; Line 148
	mov	esi, esp
	movzx	eax, BYTE PTR _Index$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	call	DWORD PTR _pfSetPixelAA$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 149
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, 1
	mov	DWORD PTR _y$[ebp], eax
; Line 150
	mov	eax, DWORD PTR _CurrentPixel$[ebp]
	add	eax, 1
	mov	DWORD PTR _CurrentPixel$[ebp], eax
	cmp	DWORD PTR _CurrentPixel$[ebp], 2
	jne	SHORT $LN3@DrawBitLin@3
; Line 151
	mov	DWORD PTR _CurrentPixel$[ebp], 0
; Line 152
	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax
	mov	ecx, DWORD PTR _p$[ebp]
	movzx	edx, BYTE PTR [ecx]
	mov	DWORD PTR _Pixels$[ebp], edx
$LN3@DrawBitLin@3:
; Line 154
	mov	eax, DWORD PTR _xsize$[ebp]
	sub	eax, 1
	mov	DWORD PTR _xsize$[ebp], eax
	jne	SHORT $LN4@DrawBitLin@3
; Line 155
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 252				; 000000fcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__DrawBitLine4BPP ENDP
_TEXT	ENDS
EXTRN	_GUI_RectDispString:QWORD
EXTRN	_LCD_GetYSize:PROC
EXTRN	_LCD_GetXSize:PROC
EXTRN	_WM_GetWindowRect:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __TransformPointCW
_TEXT	SEGMENT
_yNumPixel$ = -60					; size = 4
_xNumPixel$ = -48					; size = 4
_yPos$ = -36						; size = 4
_xPos$ = -24						; size = 4
_ClientRect$ = -12					; size = 8
_pXPos$ = 8						; size = 4
_pYPos$ = 12						; size = 4
__TransformPointCW PROC					; COMDAT
; Line 214
	push	ebp
	mov	ebp, esp
	sub	esp, 256				; 00000100H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-256]
	mov	ecx, 64					; 00000040H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 215
	xor	eax, eax
	mov	WORD PTR _ClientRect$[ebp], ax
	xor	eax, eax
	mov	DWORD PTR _ClientRect$[ebp+2], eax
	mov	WORD PTR _ClientRect$[ebp+6], ax
; Line 219
	lea	eax, DWORD PTR _ClientRect$[ebp]
	push	eax
	call	_WM_GetWindowRect
	add	esp, 4
; Line 223
	call	_LCD_GetXSize
	sub	eax, 1
	mov	DWORD PTR _xNumPixel$[ebp], eax
; Line 224
	call	_LCD_GetYSize
	sub	eax, 1
	mov	DWORD PTR _yNumPixel$[ebp], eax
; Line 225
	movsx	eax, WORD PTR _ClientRect$[ebp+4]
	cmp	eax, DWORD PTR _xNumPixel$[ebp]
	jle	SHORT $LN2@TransformP
; Line 226
	mov	ax, WORD PTR _xNumPixel$[ebp]
	mov	WORD PTR _ClientRect$[ebp+4], ax
$LN2@TransformP:
; Line 228
	movsx	eax, WORD PTR _ClientRect$[ebp+6]
	cmp	eax, DWORD PTR _yNumPixel$[ebp]
	jle	SHORT $LN1@TransformP
; Line 229
	mov	ax, WORD PTR _yNumPixel$[ebp]
	mov	WORD PTR _ClientRect$[ebp+6], ax
$LN1@TransformP:
; Line 232
	mov	eax, DWORD PTR _pXPos$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _xPos$[ebp], ecx
; Line 233
	mov	eax, DWORD PTR _pYPos$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _yPos$[ebp], ecx
; Line 235
	movsx	eax, WORD PTR _ClientRect$[ebp]
	sub	eax, DWORD PTR _yPos$[ebp]
	mov	ecx, DWORD PTR _pXPos$[ebp]
	mov	DWORD PTR [ecx], eax
; Line 236
	movsx	eax, WORD PTR _ClientRect$[ebp+2]
	add	eax, DWORD PTR _xPos$[ebp]
	mov	ecx, DWORD PTR _pYPos$[ebp]
	mov	DWORD PTR [ecx], eax
; Line 238
	movsx	eax, WORD PTR _GUI_RectDispString+4
	mov	ecx, DWORD PTR _pXPos$[ebp]
	mov	edx, DWORD PTR [ecx]
	add	edx, eax
	movsx	eax, WORD PTR _GUI_RectDispString+2
	add	edx, eax
	mov	ecx, DWORD PTR _pXPos$[ebp]
	mov	DWORD PTR [ecx], edx
; Line 239
	movsx	eax, WORD PTR _GUI_RectDispString+2
	mov	ecx, DWORD PTR _pYPos$[ebp]
	mov	edx, DWORD PTR [ecx]
	add	edx, eax
	movsx	eax, WORD PTR _GUI_RectDispString
	sub	edx, eax
	mov	ecx, DWORD PTR _pYPos$[ebp]
	mov	DWORD PTR [ecx], edx
; Line 240
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN7@TransformP
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 256				; 00000100H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN7@TransformP:
	DD	1
	DD	$LN6@TransformP
$LN6@TransformP:
	DD	-12					; fffffff4H
	DD	8
	DD	$LN5@TransformP
$LN5@TransformP:
	DB	67					; 00000043H
	DB	108					; 0000006cH
	DB	105					; 00000069H
	DB	101					; 00000065H
	DB	110					; 0000006eH
	DB	116					; 00000074H
	DB	82					; 00000052H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	0
__TransformPointCW ENDP
_TEXT	ENDS
END