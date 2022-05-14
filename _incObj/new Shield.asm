; ---------------------------------------------------------------------------
; Object 38 - shield
; ---------------------------------------------------------------------------

ShieldItem: ; XREF: Obj_Index
		move.l #Art_Shield,d1 ; Call for Regular Shield Art
		move.w #$A820,d2 ; Load Art from this location (VRAM location*20)
		; In this case, VRAM = $541*20
		move.w #$200,d3
		jsr (QueueDMATransfer).l
; ---------------------------------------------------------------------------
ShieldItem_Main:
		moveq #0,d0
		move.b obRoutine(a0),d0
		move.w Shi_Index(pc,d0.w),d1
		jmp Shi_Index(pc,d1.w)
; ===========================================================================
Shi_Index:
		dc.w Shi_Init-Shi_Index
		dc.w ShieldChecks-Shi_Index
; ===========================================================================

Shi_Init:
		addq.b #2,obRoutine(a0)
		move.l #Map_Shield, obMap(a0) ; Load Shield Map into place
		move.b #4,obRender(a0)
		move.b #1,obPriority(a0)
		move.b #$18,obActWid(a0)
		move.w #$541,obGfx(a0) ; Set VRAM location
		btst #7,($FFFFD002).w
		beq.s ShieldChecks
		bset #7,2(a0)
; ---------------------------------------------------------------------------
ShieldChecks:
		tst.b (v_invinc).w ; Test if Sonic has a shield
		bne.s @remove ; If so, branch to do nothing
		tst.b (v_shield).w ; Test if Sonic got invisibility
		beq.s @delete ; If so, delete object temporarily
		
Shi_Shield:
		move.w (v_player+obX).w,obX(a0) ; Load Main Character X-position
		move.w (v_player+obY).w,obY(a0) ; Load Main Character Y-position
		move.b (v_player+obStatus).w,obStatus(a0) ; Something about Character status
		lea	(Ani_Shield).l,a1
		jsr	(AnimateSprite).l
		jmp	(DisplaySprite).l
		
		@remove:
				rts
		@delete: ; loc_12648:
				jmp DeleteObject