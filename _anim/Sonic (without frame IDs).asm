; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
Ani_Sonic:

ptr_Walk:	dc.w AniSonic00-Ani_Sonic
ptr_Run:	dc.w AniSonic01-Ani_Sonic
ptr_Roll:	dc.w AniSonic02-Ani_Sonic
ptr_Roll2:	dc.w AniSonic03-Ani_Sonic
ptr_Push:	dc.w AniSonic04-Ani_Sonic
ptr_Wait:	dc.w AniSonic05-Ani_Sonic
ptr_Balance:	dc.w AniSonic06-Ani_Sonic
ptr_LookUp:	dc.w AniSonic07-Ani_Sonic
ptr_Duck:	dc.w AniSonic08-Ani_Sonic
ptr_SpinDash:	dc.w AniSonic09-Ani_Sonic
ptr_Warp1:	dc.w AniSonic0A-Ani_Sonic
ptr_Warp2:	dc.w AniSonic0B-Ani_Sonic
ptr_Warp3:	dc.w AniSonic0C-Ani_Sonic
ptr_Stop:	dc.w AniSonic0D-Ani_Sonic
ptr_Float1:	dc.w AniSonic0E-Ani_Sonic
ptr_Float2:	dc.w AniSonic0F-Ani_Sonic
ptr_Spring:	dc.w AniSonic10-Ani_Sonic
ptr_Hang:	dc.w AniSonic11-Ani_Sonic
ptr_Leap1:	dc.w AniSonic12-Ani_Sonic
ptr_Leap2:	dc.w AniSonic13-Ani_Sonic
ptr_Surf:	dc.w AniSonic14-Ani_Sonic
ptr_GetAir:	dc.w AniSonic15-Ani_Sonic
ptr_Burnt:	dc.w AniSonic16-Ani_Sonic
ptr_Drown:	dc.w AniSonic17-Ani_Sonic
ptr_Death:	dc.w AniSonic18-Ani_Sonic
ptr_Shrink:	dc.w AniSonic19-Ani_Sonic
ptr_Hurt:	dc.w AniSonic1A-Ani_Sonic
ptr_WaterSlide:	dc.w AniSonic1B-Ani_Sonic
ptr_Null:	dc.w AniSonic1C-Ani_Sonic
ptr_Float3:	dc.w AniSonic1D-Ani_Sonic
ptr_Float4:	dc.w AniSonic1E-Ani_Sonic
;ptr_Float5:	dc.w AniSonic1F-Ani_Sonic
;ptr_Float6:	dc.w AniSonic20-AniSonic
;ptr_Float7:	dc.w AniSonic21-AniSonic
;ptr_Float8:	dc.w AniSonic22-AniSonic
;ptr_Float9:	dc.w AniSonic23-AniSonic

AniSonic00:	dc.b  $FF,   7,   8,   1,   2,   3,   4,   5,   6, afEnd
		even
AniSonic01:	dc.b  $FF, $21, $22, $23, $24, afEnd, afEnd, afEnd, afEnd, afEnd
		even
AniSonic02:	dc.b  $FE, $96, $97, $96, $98, $96, $99, $96, $9A, afEnd
		even
AniSonic03:	dc.b  $FE, $96, $97, $96, $98, $96, $99, $96, $9A, afEnd
		even
AniSonic04:	dc.b  $FD, $B6, $B7, $B8, $B9, $FF, $FF, $FF, $FF, afEnd
		even
AniSonic05:	dc.b    5, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BB, $BC, $BC, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE, $BD, $BD, $BE, $BE, $AD, $AD, $AD, $AD, $AD, $AD, $AE, $AE, $AE, $AE
		dc.b  $AE, $AE, $AF, $D9, $D9, $D9, $D9, $D9, $D9, $AF, $AF, afBack, $35
		even
AniSonic06:	dc.b    7, $A4, $A5, $A6, afEnd
		even
AniSonic07:	dc.b    5, $C3, $C4, afBack,   1
		even
AniSonic08:	dc.b    5, $9B, $9C, afBack,   1
		even
AniSonic09:	dc.b    0, $86, $87, $86, $88, $86, $89, $86, $8A, $86, $8B, afEnd
		even
AniSonic0A:	dc.b    9, $BA, $C5, $C6, $C6, $C6, $C6, $C6, $C6, $C7, $C7, $C7, $C7, $C7, $C7, $C7
		dc.b  $C7, $C7, $C7, $C7, $C7, afChange,   0
		even
AniSonic0B:	dc.b   $F, $8F, afEnd
		even
AniSonic0C:	dc.b    5, $A1, $A2, $A3, afEnd
		even
AniSonic0D:	dc.b    3, $9D, $9E, $9F, $A0, afChange,   0
		even
AniSonic0E:	dc.b    7, $C8, afEnd
		even
AniSonic0F:	dc.b    7, $C8, $C9, $CA, $CB, $CC, $CD, $CE, $CF, afEnd
		even
AniSonic10:	dc.b  $2F, $8E, afChange,   0
		even
AniSonic11:	dc.b    1, $AA, $AB, afEnd
		even
AniSonic12:	dc.b   $F, $43, $43, $43, afBack,   1
		even
AniSonic13:	dc.b    7, $B0, $B2, $B2, $B2, $B2, $B2, $B2, $B1, $B2, $B3, $B2, afBack,   4
		even
AniSonic14:	dc.b  $13, $91, afEnd
		even
AniSonic15:	dc.b   $B, $AC, $AC,   3,   4, afChange,   0
		even
AniSonic16:	dc.b  $20, $A8, afEnd
		even
AniSonic17:	dc.b  $20, $A9, afEnd
		even
AniSonic18:	dc.b  $20, $A7, afEnd
		even
AniSonic19:	dc.b    9, $D7, $D8, afEnd
		even
AniSonic1A:	dc.b  $40, $8D, afEnd
		even
AniSonic1B:	dc.b    9, $8C, $8D, afEnd
		even
AniSonic1C:	dc.b  $77,   0, afEnd
		even
AniSonic1D:	dc.b  $13, $D0, $D1, afEnd
		even
AniSonic1E:	dc.b    3, $CF, $C8, $C9, $CA, $CB, afBack,   4
		even
;AniSonic1F:	dc.b    2, $D2, $D2, $D3, $D3, $D4, $D5, $D6, $D5, $D6, $D5, $D6, $D5, $D6, afChange,   0
		;even
;AniSonic20:	dc.b    9,   8,   9, afEnd
		;even
;AniSonic21:	dc.b    3,   7, afChange,   0
		;even
;AniSonic22:	dc.b   $B, $90, $91, $92, $91, afEnd
		;even
;AniSonic23:	dc.b   $B, $90, $91, $92, $91, afChange,   0
		;even

id_Walk:	equ (ptr_Walk-Ani_Sonic)/2	; 0
id_Run:		equ (ptr_Run-Ani_Sonic)/2	; 1
id_Roll:	equ (ptr_Roll-Ani_Sonic)/2	; 2
id_Roll2:	equ (ptr_Roll2-Ani_Sonic)/2	; 3
id_Push:	equ (ptr_Push-Ani_Sonic)/2	; 4
id_Wait:	equ (ptr_Wait-Ani_Sonic)/2	; 5
id_Balance:	equ (ptr_Balance-Ani_Sonic)/2	; 6
id_LookUp:	equ (ptr_LookUp-Ani_Sonic)/2	; 7
id_Duck:	equ (ptr_Duck-Ani_Sonic)/2	; 8
id_SpinDash:	equ (ptr_SpinDash-Ani_Sonic)/2	; 9
id_Warp1:	equ (ptr_Warp1-Ani_Sonic)/2	; $A
id_Warp2:	equ (ptr_Warp2-Ani_Sonic)/2	; $B
id_Warp3:	equ (ptr_Warp3-Ani_Sonic)/2	; $C
id_Stop:	equ (ptr_Stop-Ani_Sonic)/2	; $D
id_Float1:	equ (ptr_Float1-Ani_Sonic)/2	; $E
id_Float2:	equ (ptr_Float2-Ani_Sonic)/2	; $F
id_Spring:	equ (ptr_Spring-Ani_Sonic)/2	; $10
id_Hang:	equ (ptr_Hang-Ani_Sonic)/2	; $11
id_Leap1:	equ (ptr_Leap1-Ani_Sonic)/2	; $12
id_Leap2:	equ (ptr_Leap2-Ani_Sonic)/2	; $13
id_Surf:	equ (ptr_Surf-Ani_Sonic)/2	; $14
id_GetAir:	equ (ptr_GetAir-Ani_Sonic)/2	; $15
id_Burnt:	equ (ptr_Burnt-Ani_Sonic)/2	; $16
id_Drown:	equ (ptr_Drown-Ani_Sonic)/2	; $17
id_Death:	equ (ptr_Death-Ani_Sonic)/2	; $18
id_Shrink:	equ (ptr_Shrink-Ani_Sonic)/2	; $19
id_Hurt:	equ (ptr_Hurt-Ani_Sonic)/2	; $1A
id_WaterSlide:	equ (ptr_WaterSlide-Ani_Sonic)/2 ; $1B
id_Null:	equ (ptr_Null-Ani_Sonic)/2	; $1C
id_Float3:	equ (ptr_Float3-Ani_Sonic)/2	; $1D
id_Float4:	equ (ptr_Float4-Ani_Sonic)/2	; $1E
;id_Float5:	equ (ptr_Float5-Ani_Sonic)/2	; $1F
;id_Float6:	equ (ptr_Float6-Ani_Sonic)/2	; $20
;id_Float7:	equ (ptr_Float7-Ani_Sonic)/2	; $21
;id_Float8:	equ (ptr_Float8-Ani_Sonic)/2	; $22
;id_Float9:	equ (ptr_Float9-Ani_Sonic)/2	; $23