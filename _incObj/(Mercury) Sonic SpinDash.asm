Sonic_SpinDash:
		btst	#0,$39(a0)
		bne.s	loc_1AC8E
		cmpi.b	#id_Duck,obAnim(a0)
		bne.s	locret_1AC8C
		move.b	(v_jpadpress2).w,d0
		andi.b	#btnABC,d0
		beq.w	locret_1AC8C
		move.b	#id_SpinDash,obAnim(a0)
		
	;if SpinDashDustActive=1	;Mercury Spin Dash Dust
	;	move.b	#1,(v_objspace+$1C0+obAnim).w
	;	move.b	#0,(v_objspace+$1C0+obTimeFrame).w
	;endc	;end Spin Dash Dust
	
		move.w	#0,(revspeed)(a0)
	
		move.w	#sfx_SpinDash,d0
		jsr	(PlaySound_Special).l
		addq.l	#4,sp
		bset	#0,$39(a0)
 
loc_1AC84:
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos
 
locret_1AC8C:
		rts	
; ---------------------------------------------------------------------------
 
loc_1AC8E:
		move.b	#id_SpinDash,obAnim(a0)
		move.b	(v_jpadhold2).w,d0
		btst	#bitDn,d0
		bne.w	loc_1AD30
		move.b	#$E,obHeight(a0)
		move.b	#7,obWidth(a0)
		move.b	#id_Roll,obAnim(a0)
		addq.w	#5,obY(a0)
		bclr	#0,$39(a0)
		moveq	#0,d0
		move.b	(revspeed)(a0),d0
		add.w	d0,d0
		move.w	#1,obVelX(a0)	; force X speed to nonzero for camera lag's benefit
		move.w	SpinDashSpeeds(pc,d0.w),obInertia(a0)
		
	;if SpinDashCameraLag=1	;Mercury Spin Dash Camera Lag
		;move.b	obInertia(a0),d0
		;subi.b	#$8,d0
		;add.b	d0,d0
		;andi.b	#$1F,d0
		;neg.b	d0
		;addi.b	#$20,d0
		;move.b	d0,(v_cameralag).w
	;endc	;end Spin Dash Camera Lag
		
		btst	#0,obStatus(a0)	;Mercury Constants
		beq.s	@dontflip
		neg.w	obInertia(a0)
 
@dontflip:
		bset	#2,obStatus(a0)	;Mercury Constants
		bclr	#7,obStatus(a0)
		move.w	#sfx_Teleport,d0
		jsr	(PlaySound_Special).l
		bra.w	loc_1AD78
; ---------------------------------------------------------------------------
SpinDashSpeeds:	dc.w  $800		; 0
		dc.w  $880		; 1
		dc.w  $900		; 2
		dc.w  $980		; 3
		dc.w  $A00		; 4
		dc.w  $A80		; 5
		dc.w  $B00		; 6
		dc.w  $B80		; 7
		dc.w  $C00		; 8
; ---------------------------------------------------------------------------
 
loc_1AD30:				; If still charging the dash...
		tst.w	(revspeed)(a0)
		beq.s	loc_1AD48
		
	;Mercury Spin Dash No Rev Down
		move.b	(v_jpadhold2).w,d0
		andi.b	#btnABC,d0
		bne.s	loc_1AD48	
		move.w	(revspeed)(a0),d0
		lsr.w	#5,d0
		sub.w	d0,(revspeed)(a0)
		bcc.s	loc_1AD48
		move.w	#0,(revspeed)(a0)
 
loc_1AD48:
		move.b	(v_jpadpress2).w,d0
		andi.b	#btnABC,d0
		beq.w	loc_1AD78
		move.w	#(id_SpinDash<<8),obAnim(a0)
		addi.w	#$200,(revspeed)(a0)
		cmpi.w	#$800,(revspeed)(a0)
		bcs.s	@sound
		move.w	#$800,(revspeed)(a0)
	@sound:
		move.w	#sfx_SpinDash,d0
		jsr	(PlaySound_Special).l
 
loc_1AD78:
		addq.l	#4,sp			; increase stack ptr
		cmpi.w	#$60,(v_lookshift).w
		beq.s	loc_1AD8C
		bcc.s	loc_1AD88
		addq.w	#4,(v_lookshift).w
 
loc_1AD88:
		subq.w	#2,(v_lookshift).w
 
loc_1AD8C:
		bsr.w	Sonic_LevelBound
		bsr.w	Sonic_AnglePos
		rts
		