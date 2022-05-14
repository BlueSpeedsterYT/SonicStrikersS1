; ---------------------------------------------------------------------------
; Sprite mappings - points that	appear when you	destroy	something
; ---------------------------------------------------------------------------
Map_Poi_internal:
	dc.w	word_2CF5E-Map_Poi_internal
	dc.w	word_2CF66-Map_Poi_internal
	dc.w	word_2CF6E-Map_Poi_internal
	dc.w	word_2CF76-Map_Poi_internal
	dc.w	word_2CF84-Map_Poi_internal
	dc.w	word_2CF8C-Map_Poi_internal
	dc.w	word_2CF9A-Map_Poi_internal

word_2CF5E:		dc.b 1
		dc.b $FC, 4, 0, 0, $FA

word_2CF66:		dc.b 1
		dc.b $FC, 4, 0, 2, $F8

word_2CF6E:		dc.b 1
		dc.b $FC, 4, 0, 4, $F8

word_2CF76:		dc.b 2
		dc.b $FC, 0, 0, 0, $F8
		dc.b $FC, 4, 0, 6, 0

word_2CF84:		dc.b 1
		dc.b $FC, 0, 0, 0, $FC

word_2CF8C:		dc.b 2
		dc.b $FC, 4, 0, 0, $F8
		dc.b $FC, 4, 0, 6, 5

word_2CF9A:		dc.b 2
		dc.b $FC, 4, 0, 4, $F8
		dc.b $FC, 4, 0, 6, 7

	even
