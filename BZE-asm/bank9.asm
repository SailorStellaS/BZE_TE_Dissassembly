.BANK 9 SLOT 0
.ORG $0000

.SECTION "Bank9" FORCE

	ora ($00.b),Y		; 11 00
	tsb $EA.b		; 04 EA
	ora #$00.b		; 09 00
	ldy #$00.b		; A0 00
	plp		; 28
	ora ($06.b)		; 12 06
	ora ($07.b,S),Y		; 13 07
	brk $0A.b		; 00 0A
	bra   2.b		; 80 02
	ora ($07.b,S),Y		; 13 07
	ora ($07.b,S),Y		; 13 07
	ldy #$00.b		; A0 00
	jsr $1200.w		; 20 00 12
	asl $14.b		; 06 14
	ldy #$A0.b		; A0 A0
	rol A		; 2A
	bra  18.b		; 80 12
	ora ($01.b,X)		; 01 01
	ora ($12.b)		; 12 12
	ora ($07.b,X)		; 01 07
	ora [$02.b]		; 07 02
	brk $02.b		; 00 02
	bra  20.b		; 80 14
	trb $0A.b		; 14 0A
	cop $A0.b		; 02 A0
	cop $28.b		; 02 28
	trb $0A.b		; 14 0A
	asl A		; 0A
	trb $0A.b		; 14 0A
	asl A		; 0A
	cop $0A.b		; 02 0A
	.db $82, $82, $14		; 82 82 14
	asl A		; 0A
	asl A		; 0A
	trb $09.b		; 14 09
	ora #$0A.b		; 09 0A
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($2A.b)		; 12 2A
	brk $AA.b		; 00 AA
	brk $1E.b		; 00 1E
	trb $12.b		; 14 12
	trb $14.b		; 14 14
	trb $13.b		; 14 13
	jsl $28AA0A.l		; 22 0A AA 28
	trb $0A.b		; 14 0A
	ora $1413.w		; 0D 13 14
	asl A		; 0A
	ora $03.b,S		; 03 03
	tsb $0A12.w		; 0C 12 0A
	plp		; 28
	cop $A2.b		; 02 A2
	asl $0903.w,X		; 1E 03 09
	trb $1D.b		; 14 1D
	ora #$07.b		; 09 07
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	bra  18.b		; 80 12
	brk $28.b		; 00 28
	brk $0A.b		; 00 0A
	ora ($06.b)		; 12 06
	ora ($07.b,S),Y		; 13 07
	bra   2.b		; 80 02
	ldy #$00.b		; A0 00
	ora ($07.b,S),Y		; 13 07
	ora ($06.b)		; 12 06
	jsr $2800.w		; 20 00 28
	brk $14.b		; 00 14
	ora ($07.b,S),Y		; 13 07
	plp		; 28
	plp		; 28
	asl A		; 0A
	ldy #$12.b		; A0 12
	ora ($01.b,X)		; 01 01
	ora ($13.b)		; 12 13
	ora [$07.b]		; 07 07
	ora ($02.b,X)		; 01 02
	php		; 08
	cop $A2.b		; 02 A2
	trb $0A.b		; 14 0A
	trb $0A.b		; 14 0A
	ora $03.b,S		; 03 03
	.db $82, $A8, $A2		; 82 A8 A2
	brk $14.b		; 00 14
	asl A		; 0A
	ora $03.b,S		; 03 03
	ora $14.b,S		; 03 14
	asl A		; 0A
	ora $2A.b,S		; 03 2A
	asl A		; 0A
	txa		; 8A
	tax		; AA
	trb $0A.b		; 14 0A
	ora $01.b,S		; 03 01
	ora ($1E.b,X)		; 01 1E
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	asl A		; 0A
	brk $2A.b		; 00 2A
	brk $1E.b		; 00 1E
	ora ($1D.b)		; 12 1D
	asl $AA13.w,X		; 1E 13 AA
	brk $AA.b		; 00 AA
	cop $1E.b		; 02 1E
	ora $131E.w,X		; 1D 1E 13
	ora $141E.w,X		; 1D 1E 14
	trb $13.b		; 14 13
	asl A		; 0A
	plp		; 28
	cop $20.b		; 02 20
	asl $060A.w,X		; 1E 0A 06
	ora ($14.b)		; 12 14
	trb $00.b		; 14 00
	ldy #$00.b		; A0 00
	plp		; 28
	ora ($06.b)		; 12 06
	ora ($07.b,S),Y		; 13 07
	brk $0A.b		; 00 0A
	bra   2.b		; 80 02
	ora ($07.b,S),Y		; 13 07
	ora ($07.b,S),Y		; 13 07
	ldy #$00.b		; A0 00
	jsr $1200.w		; 20 00 12
	asl $14.b		; 06 14
	ldy #$A0.b		; A0 A0
	rol A		; 2A
	bra  18.b		; 80 12
	ora ($01.b,X)		; 01 01
	ora ($12.b)		; 12 12
	ora ($07.b,X)		; 01 07
	ora [$02.b]		; 07 02
	brk $02.b		; 00 02
	bra  20.b		; 80 14
	trb $0A.b		; 14 0A
	cop $A0.b		; 02 A0
	cop $28.b		; 02 28
	trb $0A.b		; 14 0A
	asl A		; 0A
	trb $0A.b		; 14 0A
	asl A		; 0A
	cop $0A.b		; 02 0A
	.db $82, $82, $14		; 82 82 14
	asl A		; 0A
	asl A		; 0A
	trb $09.b		; 14 09
	ora #$0A.b		; 09 0A
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($2A.b)		; 12 2A
	brk $AA.b		; 00 AA
	brk $1E.b		; 00 1E
	trb $12.b		; 14 12
	trb $14.b		; 14 14
	trb $13.b		; 14 13
	jsl $28AA0A.l		; 22 0A AA 28
	trb $0A.b		; 14 0A
	ora $1413.w		; 0D 13 14
	asl A		; 0A
	ora $03.b,S		; 03 03
	tsb $0A12.w		; 0C 12 0A
	plp		; 28
	cop $A2.b		; 02 A2
	asl $0903.w,X		; 1E 03 09
	trb $1D.b		; 14 1D
	ora #$07.b		; 09 07
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	bra  18.b		; 80 12
	brk $28.b		; 00 28
	brk $0A.b		; 00 0A
	ora ($06.b)		; 12 06
	ora ($07.b,S),Y		; 13 07
	bra   2.b		; 80 02
	ldy #$00.b		; A0 00
	ora ($07.b,S),Y		; 13 07
	ora ($06.b)		; 12 06
	jsr $2800.w		; 20 00 28
	brk $14.b		; 00 14
	ora ($07.b,S),Y		; 13 07
	plp		; 28
	plp		; 28
	asl A		; 0A
	ldy #$12.b		; A0 12
	ora ($01.b,X)		; 01 01
	ora ($13.b)		; 12 13
	ora [$07.b]		; 07 07
	ora ($02.b,X)		; 01 02
	php		; 08
	cop $A2.b		; 02 A2
	trb $0A.b		; 14 0A
	trb $0A.b		; 14 0A
	ora $03.b,S		; 03 03
	.db $82, $A8, $A2		; 82 A8 A2
	brk $14.b		; 00 14
	asl A		; 0A
	ora $03.b,S		; 03 03
	ora $14.b,S		; 03 14
	asl A		; 0A
	ora $2A.b,S		; 03 2A
	asl A		; 0A
	txa		; 8A
	tax		; AA
	trb $0A.b		; 14 0A
	ora $01.b,S		; 03 01
	ora ($1E.b,X)		; 01 1E
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	asl A		; 0A
	brk $2A.b		; 00 2A
	brk $1E.b		; 00 1E
	ora ($1D.b)		; 12 1D
	asl $AA13.w,X		; 1E 13 AA
	brk $AA.b		; 00 AA
	cop $1E.b		; 02 1E
	ora $131E.w,X		; 1D 1E 13
	ora $141E.w,X		; 1D 1E 14
	trb $13.b		; 14 13
	asl A		; 0A
	plp		; 28
	cop $20.b		; 02 20
	asl $060A.w,X		; 1E 0A 06
	ora ($14.b)		; 12 14
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	mvn $09,$08		; 54 08 09
	asl A		; 0A
	ora $00.b,X		; 15 00
	brk $00.b		; 00 00
	phd		; 0B
	tsb $280D.w		; 0C 0D 28
	brk $28.b		; 00 28
	mvn $06,$12		; 54 12 06
	ora ($07.b,S),Y		; 13 07
	clc		; 18
	ora ($03.b,X)		; 01 03
	adc $0A00.w,X		; 7D 00 0A
	bra  27.b		; 80 1B
	ora [$13.b]		; 07 13
	ora ($07.b,X)		; 01 07
	ora $0612.w,X		; 1D 12 06
	ora #$0A.b		; 09 0A
	ldy #$0A.b		; A0 0A
	plp		; 28
	ora ($07.b,S),Y		; 13 07
	ora #$09.b		; 09 09
	ora ($07.b,S),Y		; 13 07
	ora #$09.b		; 09 09
	asl A		; 0A
	asl A		; 0A
	txa		; 8A
	.db $82, $13, $07		; 82 13 07
	php		; 08
	php		; 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	php		; 08
	ldx #$20.b		; A2 20
	rol A		; 2A
	tay		; A8
	trb $09.b		; 14 09
	ora #$09.b		; 09 09
	trb $09.b		; 14 09
	ora #$09.b		; 09 09
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	tax		; AA
	.db $82, $2A, $1D		; 82 2A 1D
	ora #$09.b		; 09 09
	ora ($01.b,X)		; 01 01
	ora ($14.b,X)		; 01 14
	ora #$01.b		; 09 01
	ora ($01.b,X)		; 01 01
	ldx #$80.b		; A2 80
	rol A		; 2A
	jsr $0914.w		; 20 14 09
	ora ($08.b,X)		; 01 08
	trb $09.b		; 14 09
	ora ($08.b,X)		; 01 08
	asl A		; 0A
	php		; 08
	cop $02.b		; 02 02
	ora $0801.w,X		; 1D 01 08
	trb $8208.w		; 1C 08 82
	bra  42.b		; 80 2A
	pei ($1D.b)		; D4 1D
	ora #$06.b		; 09 06
	trb $0901.w		; 1C 01 09
	plp		; 28
	ora ($03.b,X)		; 01 03
	ora [$5F.b]		; 07 5F
	brk $02.b		; 00 02
	brk $2B.b		; 00 2B
	ora $0907.w,X		; 1D 07 09
	ora ($2D.b,X)		; 01 2D
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	bra  20.b		; 80 14
	trb $14.b		; 14 14
	cop $80.b		; 02 80
	cop $80.b		; 02 80
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	asl A		; 0A
	bra  10.b		; 80 0A
	jsr $0612.w		; 20 12 06
	ora #$13.b		; 09 13
	ora [$09.b]		; 07 09
	cop $88.b		; 02 88
	cop $22.b		; 02 22
	trb $09.b		; 14 09
	ora ($14.b,X)		; 01 14
	ora #$01.b		; 09 01
	.db $82, $02, $A8		; 82 02 A8
	brk $14.b		; 00 14
	ora #$01.b		; 09 01
	trb $09.b		; 14 09
	ora ($28.b,X)		; 01 28
	brk $08.b		; 00 08
	brk $1D.b		; 00 1D
	ora ($1C.b,X)		; 01 1C
	jsl $7C0AA0.l		; 22 A0 0A 7C
	ora $0101.w,X		; 1D 01 01
	ora #$1D.b		; 09 1D
	ora ($38.b,X)		; 01 38
	ora ($01.b,X)		; 01 01
	ora #$03.b		; 09 03
	eor [$0A.b],Y		; 57 0A
	.db $82, $02, $3B		; 82 02 3B
	trb $0107.w		; 1C 07 01
	and $0901.w,X		; 3D 01 09
	trb $0901.w		; 1C 01 09
	.db $82, $00, $22		; 82 00 22
	brk $1C.b		; 00 1C
	php		; 08
	trb $0A08.w		; 1C 08 0A
	bra   2.b		; 80 02
	jsr $081C.w		; 20 1C 08
	asl A		; 0A
	trb $09.b		; 14 09
	cop $A8.b		; 02 A8
	cop $AA.b		; 02 AA
	trb $0A.b		; 14 0A
	tsb $1412.w		; 0C 12 14
	asl A		; 0A
	ora $0E.b,S		; 03 0E
	ora ($82.b,S),Y		; 13 82
	ldx #$A2.b		; A2 A2
	bra  20.b		; 80 14
	asl A		; 0A
	ora $09.b,S		; 03 09
	trb $14.b		; 14 14
	asl A		; 0A
	ora $0F.b,S		; 03 0F
	rol A		; 2A
	bra  10.b		; 80 0A
	bra  20.b		; 80 14
	asl A		; 0A
	ora $0E.b,S		; 03 0E
	asl $0E03.w,X		; 1E 03 0E
	cop $A0.b		; 02 A0
	cop $88.b		; 02 88
	ora $0709.w,X		; 1D 09 07
	ora $0709.w,X		; 1D 09 07
	plp		; 28
	brk $28.b		; 00 28
	mvn $06,$12		; 54 12 06
	ora ($07.b,S),Y		; 13 07
	pha		; 48
	ora ($03.b,X)		; 01 03
	adc $0A00.w,X		; 7D 00 0A
	bra  75.b		; 80 4B
	ora [$13.b]		; 07 13
	ora ($07.b,X)		; 01 07
	eor $0612.w		; 4D 12 06
	ora #$0A.b		; 09 0A
	ldy #$0A.b		; A0 0A
	plp		; 28
	ora ($07.b,S),Y		; 13 07
	ora #$09.b		; 09 09
	ora ($07.b,S),Y		; 13 07
	ora #$09.b		; 09 09
	asl A		; 0A
	asl A		; 0A
	txa		; 8A
	.db $82, $13, $07		; 82 13 07
	php		; 08
	php		; 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	php		; 08
	ldx #$20.b		; A2 20
	rol A		; 2A
	tay		; A8
	trb $09.b		; 14 09
	ora #$09.b		; 09 09
	trb $09.b		; 14 09
	ora #$09.b		; 09 09
	ora ($01.b,X)		; 01 01
	asl A		; 0A
	tax		; AA
	.db $82, $2A, $1D		; 82 2A 1D
	ora #$09.b		; 09 09
	ora ($01.b,X)		; 01 01
	ora ($14.b,X)		; 01 14
	ora #$01.b		; 09 01
	ora ($01.b,X)		; 01 01
	ldx #$80.b		; A2 80
	rol A		; 2A
	jsr $0914.w		; 20 14 09
	ora ($08.b,X)		; 01 08
	trb $09.b		; 14 09
	ora ($08.b,X)		; 01 08
	asl A		; 0A
	php		; 08
	cop $02.b		; 02 02
	ora $0801.w,X		; 1D 01 08
	trb $8208.w		; 1C 08 82
	bra  42.b		; 80 2A
	pei ($1D.b)		; D4 1D
	ora #$06.b		; 09 06
	trb $0901.w		; 1C 01 09
	cli		; 58
	ora ($03.b,X)		; 01 03
	ora [$5F.b]		; 07 5F
	brk $02.b		; 00 02
	brk $5B.b		; 00 5B
	ora $0907.w,X		; 1D 07 09
	ora ($5D.b,X)		; 01 5D
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	bra  20.b		; 80 14
	trb $01.b		; 14 01
	cop $80.b		; 02 80
	cop $80.b		; 02 80
	trb $03.b		; 14 03
	trb $03.b		; 14 03
	asl A		; 0A
	bra  10.b		; 80 0A
	jsr $0612.w		; 20 12 06
	ora #$13.b		; 09 13
	ora [$09.b]		; 07 09
	cop $88.b		; 02 88
	cop $22.b		; 02 22
	trb $09.b		; 14 09
	ora ($14.b,X)		; 01 14
	ora #$01.b		; 09 01
	.db $82, $02, $AA		; 82 02 AA
	brk $14.b		; 00 14
	ora #$01.b		; 09 01
	ora $01.b,X		; 15 01
	ora #$01.b		; 09 01
	rol A		; 2A
	brk $0A.b		; 00 0A
	brk $17.b		; 00 17
	asl A		; 0A
	ora ($18.b,X)		; 01 18
	tsb $22.b		; 04 22
	ldy #$0A.b		; A0 0A
	plp		; 28
	ora $0101.w,X		; 1D 01 01
	ora #$1D.b		; 09 1D
	ora ($01.b,X)		; 01 01
	ora #$02.b		; 09 02
	asl A		; 0A
	.db $82, $02, $1C		; 82 02 1C
	ora ($09.b,X)		; 01 09
	trb $0901.w		; 1C 01 09
	.db $82, $00, $22		; 82 00 22
	brk $1C.b		; 00 1C
	php		; 08
	trb $0A08.w		; 1C 08 0A
	bra   2.b		; 80 02
	jsr $081C.w		; 20 1C 08
	asl A		; 0A
	trb $09.b		; 14 09
	cop $A8.b		; 02 A8
	cop $AA.b		; 02 AA
	trb $0A.b		; 14 0A
	tsb $1412.w		; 0C 12 14
	asl A		; 0A
	ora $0E.b,S		; 03 0E
	ora ($82.b,S),Y		; 13 82
	ldx #$A2.b		; A2 A2
	bra  20.b		; 80 14
	asl A		; 0A
	ora $09.b,S		; 03 09
	trb $14.b		; 14 14
	asl A		; 0A
	ora $0F.b,S		; 03 0F
	rol A		; 2A
	bra  10.b		; 80 0A
	bra  20.b		; 80 14
	asl A		; 0A
	ora $0E.b,S		; 03 0E
	asl $0E03.w,X		; 1E 03 0E
	cop $A0.b		; 02 A0
	cop $88.b		; 02 88
	ora $0709.w,X		; 1D 09 07
	ora $0709.w,X		; 1D 09 07
	tax		; AA
	jsr $082A.w		; 20 2A 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	php		; 08
	ora ($0F.b,S),Y		; 13 0F
	php		; 08
	php		; 08
	asl A		; 0A
	cop $8A.b		; 02 8A
	brk $13.b		; 00 13
	ora [$08.b]		; 07 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	rol A		; 2A
	bra   8.b		; 80 08
	jsr $0612.w		; 20 12 06
	php		; 08
	php		; 08
	trb $2808.w		; 1C 08 28
	php		; 08
	plp		; 28
	cop $13.b		; 02 13
	ora $0F1308.l		; 0F 08 13 0F
	php		; 08
	.db $82, $02, $22		; 82 02 22
	cop $1C.b		; 02 1C
	php		; 08
	trb $1C.b		; 14 1C
	php		; 08
	trb $0A.b		; 14 0A
	php		; 08
	cop $80.b		; 02 80
	trb $1408.w		; 1C 08 14
	trb $14.b		; 14 14
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	trb $14.b		; 14 14
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	trb $14.b		; 14 14
	cop $20.b		; 02 20
	brk $22.b		; 00 22
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	cop $00.b		; 02 00
	rol A		; 2A
	brk $14.b		; 00 14
	trb $14.b		; 14 14
	trb $080A.w		; 1C 0A 08
	cop $08.b		; 02 08
	trb $08.b		; 14 08
	trb $1C1C.w		; 1C 1C 1C
	jsr $2080.w		; 20 80 20
	cop $1C.b		; 02 1C
	php		; 08
	trb $001C.w		; 1C 1C 00
	bra   0.b		; 80 00
	php		; 08
	trb $14.b		; 14 14
	bra -128.b		; 80 80
	bra -96.b		; 80 A0
	trb $09.b		; 14 09
	trb $09.b		; 14 09
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	brk $AA.b		; 00 AA
	trb $09.b		; 14 09
	ora $0101.w,X		; 1D 01 01
	ora ($80.b,X)		; 01 80
	tax		; AA
	tay		; A8
	asl A		; 0A
	ora $0101.w,X		; 1D 01 01
	ora ($01.b,X)		; 01 01
	trb $09.b		; 14 09
	ora ($01.b,X)		; 01 01
	ora ($AA.b,X)		; 01 AA
	cop $0A.b		; 02 0A
	bra  20.b		; 80 14
	ora #$01.b		; 09 01
	ora ($01.b,X)		; 01 01
	ora $0801.w,X		; 1D 01 08
	cop $20.b		; 02 20
	cop $08.b		; 02 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	cop $82.b		; 02 82
	.db $82, $80, $1D		; 82 80 1D
	ora #$07.b		; 09 07
	ora $0709.w,X		; 1D 09 07
	rol A		; 2A
	ldy #$0A.b		; A0 0A
	tay		; A8
	trb $0901.w		; 1C 01 09
	asl A		; 0A
	ora $081C.w		; 0D 1C 08
	asl A		; 0A
	asl A		; 0A
	ora [$02.b]		; 07 02
	txa		; 8A
	.db $82, $82, $14		; 82 82 14
	asl A		; 0A
	asl A		; 0A
	asl $14.b		; 06 14
	asl A		; 0A
	asl A		; 0A
	trb $A2.b		; 14 A2
	ldy #$2A.b		; A0 2A
	ldy #$14.b		; A0 14
	asl A		; 0A
	asl A		; 0A
	ora [$13.b]		; 07 13
	trb $0A.b		; 14 0A
	asl A		; 0A
	ora [$13.b]		; 07 13
	tax		; AA
	jsr $082A.w		; 20 2A 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	php		; 08
	ora ($0F.b,S),Y		; 13 0F
	php		; 08
	php		; 08
	asl A		; 0A
	cop $8A.b		; 02 8A
	brk $13.b		; 00 13
	ora [$08.b]		; 07 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	rol A		; 2A
	bra   8.b		; 80 08
	jsr $0612.w		; 20 12 06
	php		; 08
	php		; 08
	trb $2808.w		; 1C 08 28
	php		; 08
	plp		; 28
	cop $13.b		; 02 13
	ora $0F1308.l		; 0F 08 13 0F
	php		; 08
	.db $82, $02, $22		; 82 02 22
	asl A		; 0A
	trb $0108.w		; 1C 08 01
	trb $0108.w		; 1C 08 01
	cop $0A.b		; 02 0A
	plp		; 28
	cop $80.b		; 02 80
	trb $0108.w		; 1C 08 01
	cop $14.b		; 02 14
	ora $02.b,S		; 03 02
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	trb $02.b		; 14 02
	ldy #$22.b		; A0 22
	jsl $0D0114.l		; 22 14 01 0D
	ora [$02.b],Y		; 17 02
	ora ($0C.b,X)		; 01 0C
	cop $08.b		; 02 08
	cop $02.b		; 02 02
	ora [$0F.b],Y		; 17 0F
	ora [$0F.b],Y		; 17 0F
	txa		; 8A
	brk $A2.b		; 00 A2
	brk $14.b		; 00 14
	ora $0F.b,S		; 03 0F
	trb $08.b		; 14 08
	tsb $0A.b		; 04 0A
	php		; 08
	cop $08.b		; 02 08
	trb $08.b		; 14 08
	tsb $1C.b		; 04 1C
	tsb $2A.b		; 04 2A
	bra  34.b		; 80 22
	jsl $0A0E18.l		; 22 18 0E 0A
	php		; 08
	clc		; 18
	tsb $0A.b		; 04 0A
	ora ($02.b,X)		; 01 02
	php		; 08
	cop $02.b		; 02 02
	clc		; 18
	ora $820F18.l		; 0F 18 0F 82
	bra  34.b		; 80 22
	php		; 08
	clc		; 18
	ora $0F1803.l		; 0F 03 18 0F
	ora $8A.b,S		; 03 8A
	bra -126.b		; 80 82
	ldy #$18.b		; A0 18
	ora $170903.l		; 0F 03 09 17
	ora $09.b,S		; 03 09
	ora ($02.b,X)		; 01 02
	asl A		; 0A
	.db $82, $AA, $15		; 82 AA 15
	ora ($09.b,X)		; 01 09
	ora [$02.b],Y		; 17 02
	php		; 08
	ora ($01.b,X)		; 01 01
	ora ($A2.b,X)		; 01 A2
	tax		; AA
	tax		; AA
	asl A		; 0A
	ora [$02.b],Y		; 17 02
	php		; 08
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora [$03.b],Y		; 17 03
	ora #$01.b		; 09 01
	ora ($01.b,X)		; 01 01
	tax		; AA
	cop $0A.b		; 02 0A
	bra  20.b		; 80 14
	ora #$01.b		; 09 01
	ora ($01.b,X)		; 01 01
	ora $0801.w,X		; 1D 01 08
	cop $20.b		; 02 20
	cop $08.b		; 02 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	cop $82.b		; 02 82
	.db $82, $80, $1D		; 82 80 1D
	ora #$07.b		; 09 07
	ora $0709.w,X		; 1D 09 07
	rol A		; 2A
	ldy #$0A.b		; A0 0A
	tay		; A8
	trb $0901.w		; 1C 01 09
	asl A		; 0A
	ora $081C.w		; 0D 1C 08
	asl A		; 0A
	asl A		; 0A
	ora [$02.b]		; 07 02
	txa		; 8A
	.db $82, $82, $14		; 82 82 14
	asl A		; 0A
	asl A		; 0A
	asl $14.b		; 06 14
	asl A		; 0A
	asl A		; 0A
	trb $A2.b		; 14 A2
	ldy #$2A.b		; A0 2A
	ldy #$14.b		; A0 14
	asl A		; 0A
	asl A		; 0A
	ora [$13.b]		; 07 13
	trb $0A.b		; 14 0A
	asl A		; 0A
	ora [$13.b]		; 07 13
	tay		; A8
	brk $20.b		; 00 20
	brk $12.b		; 00 12
	asl $1408.w		; 0E 08 14
	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	ora ($07.b,S),Y		; 13 07
	ora ($06.b)		; 12 06
	bra   0.b		; 80 00
	bra   2.b		; 80 02
	trb $12.b		; 14 12
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	asl A		; 0A
	trb $12.b		; 14 12
	asl $02.b		; 06 02
	bra   2.b		; 80 02
	jsr $0814.w		; 20 14 08
	trb $08.b		; 14 08
	cop $08.b		; 02 08
	cop $02.b		; 02 02
	trb $08.b		; 14 08
	trb $08.b		; 14 08
	.db $82, $00, $22		; 82 00 22
	brk $14.b		; 00 14
	php		; 08
	trb $08.b		; 14 08
	asl A		; 0A
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	php		; 08
	trb $0802.w		; 1C 02 08
	cop $02.b		; 02 02
	trb $1C1C.w		; 1C 1C 1C
	trb $0202.w		; 1C 02 02
	cop $82.b		; 02 82
	trb $1C1C.w		; 1C 1C 1C
	trb $8214.w		; 1C 14 82
	.db $82, $22, $82		; 82 22 82
	trb $1408.w		; 1C 08 14
	trb $1C.b		; 14 1C
	php		; 08
	trb $14.b		; 14 14
	asl A		; 0A
	.db $82, $82, $20		; 82 82 20
	trb $1408.w		; 1C 08 14
	trb $1414.w		; 1C 14 14
	trb $2880.w		; 1C 80 28
	brk $02.b		; 00 02
	trb $09.b		; 14 09
	ora ($1C.b,X)		; 01 1C
	brk $02.b		; 00 02
	asl A		; 0A
	cop $1C.b		; 02 1C
	trb $14.b		; 14 14
	trb $020A.w		; 1C 0A 02
	asl A		; 0A
	.db $82, $14, $14		; 82 14 14
	trb $1C1C.w		; 1C 1C 1C
	trb $0A08.w		; 1C 08 0A
	jsl $1C082A.l		; 22 2A 08 1C
	trb $081C.w		; 1C 1C 08
	trb $1408.w		; 1C 08 14
	trb $02.b		; 14 02
	cop $82.b		; 02 82
	bra  28.b		; 80 1C
	php		; 08
	trb $0A08.w		; 1C 08 0A
	jsl $280AA0.l		; 22 A0 0A 28
	trb $0908.w		; 1C 08 09
	ora #$1C.b		; 09 1C
	php		; 08
	ora #$09.b		; 09 09
	cop $0A.b		; 02 0A
	.db $82, $02, $14		; 82 02 14
	ora #$09.b		; 09 09
	trb $09.b		; 14 09
	ora #$A2.b		; 09 A2
	brk $2A.b		; 00 2A
	brk $14.b		; 00 14
	ora #$09.b		; 09 09
	trb $09.b		; 14 09
	ora #$0A.b		; 09 0A
	ldy #$02.b		; A0 02
	jsr $0A1E.w		; 20 1E 0A
	asl $12.b		; 06 12
	trb $14.b		; 14 14
	cop $28.b		; 02 28
	cop $28.b		; 02 28
	trb $07.b		; 14 07
	ora ($14.b,S),Y		; 13 14
	asl $12.b		; 06 12
	cop $08.b		; 02 08
	cop $0A.b		; 02 0A
	trb $14.b		; 14 14
	trb $06.b		; 14 06
	ora ($02.b)		; 12 02
	cop $82.b		; 02 82
	cop $14.b		; 02 14
	trb $14.b		; 14 14
	asl $12.b		; 06 12
	tay		; A8
	brk $20.b		; 00 20
	brk $12.b		; 00 12
	asl $1408.w		; 0E 08 14
	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	ora ($07.b,S),Y		; 13 07
	ora ($06.b)		; 12 06
	bra   0.b		; 80 00
	bra   2.b		; 80 02
	trb $12.b		; 14 12
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	asl A		; 0A
	trb $12.b		; 14 12
	asl $02.b		; 06 02
	bra   2.b		; 80 02
	jsr $0814.w		; 20 14 08
	trb $08.b		; 14 08
	cop $08.b		; 02 08
	cop $02.b		; 02 02
	trb $08.b		; 14 08
	trb $08.b		; 14 08
	.db $82, $00, $22		; 82 00 22
	brk $14.b		; 00 14
	php		; 08
	trb $08.b		; 14 08
	asl A		; 0A
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	php		; 08
	trb $8802.w		; 1C 02 88
	cop $2A.b		; 02 2A
	trb $0F04.w		; 1C 04 0F
	trb $0E0A.w		; 1C 0A 0E
	ora $028A02.l		; 0F 02 8A 02
	txa		; 8A
	trb $010A.w		; 1C 0A 01
	cop $1C.b		; 02 1C
	ora #$02.b		; 09 02
	ora $82.b,S		; 03 82
	.db $82, $22, $A2		; 82 22 A2
	trb $0308.w		; 1C 08 03
	ora $1C.b,S		; 03 1C
	php		; 08
	ora $02.b,S		; 03 02
	ora ($0A.b,X)		; 01 0A
	ldx #$82.b		; A2 82
	jsl $03081C.l		; 22 1C 08 03
	cop $09.b		; 02 09
	trb $01.b		; 14 01
	cop $0B.b		; 02 0B
	.db $82, $28, $82		; 82 28 82
	cop $17.b		; 02 17
	ora $09.b,S		; 03 09
	ora ($17.b,X)		; 01 17
	cop $09.b		; 02 09
	txa		; 8A
	cop $AA.b		; 02 AA
	cop $15.b		; 02 15
	cop $01.b		; 02 01
	asl A		; 0A
	trb $03.b		; 14 03
	ora $0A0A0E.l		; 0F 0E 0A 0A
	cop $2A.b		; 02 2A
	.db $82, $14, $0C		; 82 14 0C
	tsb $1C.b		; 04 1C
	asl A		; 0A
	asl $0804.w		; 0E 04 08
	rol A		; 2A
	jsl $1C0A2A.l		; 22 2A 0A 1C
	asl A		; 0A
	asl $0804.w		; 0E 04 08
	trb $0C08.w		; 1C 08 0C
	asl $0202.w		; 0E 02 02
	cop $82.b		; 02 82
	bra  28.b		; 80 1C
	php		; 08
	trb $0A08.w		; 1C 08 0A
	jsl $280AA0.l		; 22 A0 0A 28
	trb $0908.w		; 1C 08 09
	ora #$1C.b		; 09 1C
	php		; 08
	ora #$09.b		; 09 09
	cop $0A.b		; 02 0A
	.db $82, $02, $14		; 82 02 14
	ora #$09.b		; 09 09
	trb $09.b		; 14 09
	ora #$A2.b		; 09 A2
	brk $2A.b		; 00 2A
	brk $14.b		; 00 14
	ora #$09.b		; 09 09
	trb $09.b		; 14 09
	ora #$0A.b		; 09 0A
	ldy #$02.b		; A0 02
	jsr $0A1E.w		; 20 1E 0A
	asl $12.b		; 06 12
	trb $14.b		; 14 14
	cop $28.b		; 02 28
	cop $28.b		; 02 28
	trb $07.b		; 14 07
	ora ($14.b,S),Y		; 13 14
	asl $12.b		; 06 12
	cop $08.b		; 02 08
	cop $0A.b		; 02 0A
	trb $14.b		; 14 14
	trb $06.b		; 14 06
	ora ($02.b)		; 12 02
	cop $82.b		; 02 82
	cop $14.b		; 02 14
	trb $14.b		; 14 14
	asl $12.b		; 06 12
	brk $A8.b		; 00 A8
	brk $20.b		; 00 20
	ora ($07.b,S),Y		; 13 07
	php		; 08
	trb $A000.w		; 1C 00 A0
	brk $80.b		; 00 80
	ora ($1C.b)		; 12 1C
	ora ($02.b,S),Y		; 13 02
	bra   2.b		; 80 02
	jsr $081C.w		; 20 1C 08
	trb $0208.w		; 1C 08 02
	php		; 08
	cop $02.b		; 02 02
	trb $1C08.w		; 1C 08 1C
	php		; 08
	.db $82, $00, $2A		; 82 00 2A
	brk $1C.b		; 00 1C
	php		; 08
	ora ($0E.b)		; 12 0E
	php		; 08
	plp		; 28
	bra -96.b		; 80 A0
	ldy #$13.b		; A0 13
	ora [$08.b]		; 07 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	.db $82, $A0, $82		; 82 A0 82
	ldy #$14.b		; A0 14
	trb $14.b		; 14 14
	php		; 08
	trb $14.b		; 14 14
	trb $8208.w		; 1C 08 82
	ldy #$A2.b		; A0 A2
	ldy #$14.b		; A0 14
	trb $14.b		; 14 14
	php		; 08
	trb $08.b		; 14 08
	trb $081C.w		; 1C 1C 08
	rol A		; 2A
	tay		; A8
	rol A		; 2A
	tay		; A8
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1C14.w		; 1C 14 1C
	trb $1C.b		; 14 1C
	trb $AA.b		; 14 AA
	plp		; 28
	cop $0A.b		; 02 0A
	trb $08.b		; 14 08
	php		; 08
	trb $1C.b		; 14 1C
	php		; 08
	trb $08.b		; 14 08
	php		; 08
	rol A		; 2A
	php		; 08
	rol A		; 2A
	dey		; 88
	trb $08.b		; 14 08
	trb $1C14.w		; 1C 14 1C
	php		; 08
	trb $14.b		; 14 14
	php		; 08
	asl A		; 0A
	tay		; A8
	asl A		; 0A
	tay		; A8
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $1C.b		; 14 1C
	trb $14.b		; 14 14
	.db $82, $08, $82		; 82 08 82
	php		; 08
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	ldx #$08.b		; A2 08
	rol A		; 2A
	brk $14.b		; 00 14
	php		; 08
	trb $1414.w		; 1C 14 14
	php		; 08
	php		; 08
	asl A		; 0A
	brk $02.b		; 00 02
	brk $1C.b		; 00 1C
	php		; 08
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	bra  20.b		; 80 14
	trb $06.b		; 14 06
	cop $A0.b		; 02 A0
	cop $28.b		; 02 28
	trb $07.b		; 14 07
	ora ($14.b,S),Y		; 13 14
	ora [$13.b]		; 07 13
	rol A		; 2A
	brk $0A.b		; 00 0A
	brk $14.b		; 00 14
	trb $13.b		; 14 13
	trb $14.b		; 14 14
	asl A		; 0A
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	ora ($13.b)		; 12 13
	brk $A8.b		; 00 A8
	brk $20.b		; 00 20
	ora ($07.b,S),Y		; 13 07
	php		; 08
	trb $A000.w		; 1C 00 A0
	brk $80.b		; 00 80
	ora ($1C.b)		; 12 1C
	ora ($02.b,S),Y		; 13 02
	bra   2.b		; 80 02
	jsr $081C.w		; 20 1C 08
	trb $0208.w		; 1C 08 02
	php		; 08
	cop $02.b		; 02 02
	trb $1C08.w		; 1C 08 1C
	php		; 08
	.db $82, $00, $2A		; 82 00 2A
	brk $1C.b		; 00 1C
	php		; 08
	ora ($0E.b)		; 12 0E
	php		; 08
	plp		; 28
	bra -96.b		; 80 A0
	ldy #$13.b		; A0 13
	ora [$08.b]		; 07 08
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	.db $82, $AA, $82		; 82 AA 82
	tax		; AA
	trb $01.b		; 14 01
	cop $0F.b		; 02 0F
	tsb $1408.w		; 0C 08 14
	ora ($0D.b,X)		; 01 0D
	ora $82080B.l		; 0F 0B 08 82
	tax		; AA
	ldx #$AA.b		; A2 AA
	trb $0C.b		; 14 0C
	ora $080201.l		; 0F 01 02 08
	trb $08.b		; 14 08
	phd		; 0B
	ora $08090D.l		; 0F 0D 09 08
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	trb $1C.b		; 14 1C
	trb $18.b		; 14 18
	ora [$1C.b],Y		; 17 1C
	trb $1C.b		; 14 1C
	trb $1C14.w		; 1C 14 1C
	ora [$15.b],Y		; 17 15
	trb $1C.b		; 14 1C
	trb $AA.b		; 14 AA
	plp		; 28
	cop $0A.b		; 02 0A
	trb $08.b		; 14 08
	php		; 08
	ora ($09.b,X)		; 01 09
	php		; 08
	trb $08.b		; 14 08
	php		; 08
	tax		; AA
	asl A		; 0A
	tax		; AA
	txa		; 8A
	trb $08.b		; 14 08
	phd		; 0B
	ora $1C010D.l		; 0F 0D 01 1C
	php		; 08
	tsb $020F.w		; 0C 0F 02
	ora ($08.b,X)		; 01 08
	tax		; AA
	tay		; A8
	tax		; AA
	plp		; 28
	trb $08.b		; 14 08
	ora #$02.b		; 09 02
	ora $08.b,S		; 03 08
	php		; 08
	trb $0108.w		; 1C 08 01
	cop $0B.b		; 02 0B
	php		; 08
	.db $82, $0A, $82		; 82 0A 82
	asl A		; 0A
	trb $03.b		; 14 03
	ora $02140C.l		; 0F 0C 14 02
	ora ($03.b,X)		; 01 03
	ldx #$08.b		; A2 08
	rol A		; 2A
	brk $14.b		; 00 14
	php		; 08
	ora #$01.b		; 09 01
	trb $08.b		; 14 08
	php		; 08
	asl A		; 0A
	brk $02.b		; 00 02
	brk $1C.b		; 00 1C
	php		; 08
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	bra  20.b		; 80 14
	trb $06.b		; 14 06
	cop $A0.b		; 02 A0
	cop $28.b		; 02 28
	trb $07.b		; 14 07
	ora ($14.b,S),Y		; 13 14
	ora [$13.b]		; 07 13
	rol A		; 2A
	brk $0A.b		; 00 0A
	brk $14.b		; 00 14
	trb $13.b		; 14 13
	trb $14.b		; 14 14
	asl A		; 0A
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	ora ($13.b)		; 12 13
	bra  42.b		; 80 2A
	brk $0A.b		; 00 0A
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	ora ($06.b)		; 12 06
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	ora ($14.b,S),Y		; 13 14
	ora ($02.b)		; 12 02
	brk $02.b		; 00 02
	bra  20.b		; 80 14
	trb $08.b		; 14 08
	cop $A0.b		; 02 A0
	cop $28.b		; 02 28
	trb $08.b		; 14 08
	php		; 08
	trb $08.b		; 14 08
	php		; 08
	plp		; 28
	asl A		; 0A
	ldy #$02.b		; A0 02
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	ora ($01.b)		; 12 01
	ora [$00.b]		; 07 00
	rol A		; 2A
	brk $80.b		; 00 80
	ora ($01.b)		; 12 01
	ora [$13.b]		; 07 13
	asl A		; 0A
	brk $02.b		; 00 02
	brk $1C.b		; 00 1C
	php		; 08
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	trb $02.b		; 14 02
	ldy #$02.b		; A0 02
	rol A		; 2A
	trb $07.b		; 14 07
	ora ($14.b,S),Y		; 13 14
	ora [$01.b]		; 07 01
	ora ($AA.b)		; 12 AA
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	trb $13.b		; 14 13
	ora ($13.b)		; 12 13
	cop $0A.b		; 02 0A
	.db $82, $02, $14		; 82 02 14
	ora [$13.b]		; 07 13
	trb $06.b		; 14 06
	ora ($0A.b)		; 12 0A
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	ora ($12.b,S),Y		; 13 12
	bra  42.b		; 80 2A
	brk $0A.b		; 00 0A
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	ora ($06.b)		; 12 06
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	ora ($14.b,S),Y		; 13 14
	ora ($02.b)		; 12 02
	brk $02.b		; 00 02
	bra  20.b		; 80 14
	trb $08.b		; 14 08
	cop $A0.b		; 02 A0
	cop $28.b		; 02 28
	trb $08.b		; 14 08
	php		; 08
	trb $08.b		; 14 08
	php		; 08
	plp		; 28
	asl A		; 0A
	ldy #$02.b		; A0 02
	ora ($07.b,S),Y		; 13 07
	php		; 08
	php		; 08
	ora ($01.b)		; 12 01
	ora [$00.b]		; 07 00
	rol A		; 2A
	brk $80.b		; 00 80
	ora ($01.b)		; 12 01
	ora [$13.b]		; 07 13
	asl A		; 0A
	brk $02.b		; 00 02
	brk $1C.b		; 00 1C
	php		; 08
	trb $02.b		; 14 02
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	trb $02.b		; 14 02
	ldy #$02.b		; A0 02
	rol A		; 2A
	trb $07.b		; 14 07
	ora ($14.b,S),Y		; 13 14
	ora [$01.b]		; 07 01
	ora ($AA.b)		; 12 AA
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	trb $13.b		; 14 13
	ora ($13.b)		; 12 13
	cop $0A.b		; 02 0A
	.db $82, $02, $14		; 82 02 14
	ora [$13.b]		; 07 13
	trb $06.b		; 14 06
	ora ($0A.b)		; 12 0A
	brk $02.b		; 00 02
	brk $14.b		; 00 14
	ora ($12.b,S),Y		; 13 12
	brk $00.b		; 00 00
	tay		; A8
	tax		; AA
	lda $A9.b		; A5 A9
	tax		; AA
	sty $A8.b,X		; 94 A8
	tax		; AA
	lda $A9.b		; A5 A9
	tax		; AA
	sty $00.b,X		; 94 00
	brk $05.b		; 00 05
	brk $AA.b		; 00 AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tax		; AA
	tax		; AA
	sta ($A2.b)		; 92 A2
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $AA.b		; 06 AA
	txs		; 9A
	ldx $AA.b		; A6 AA
	ora $06.b		; 05 06
	tax		; AA
	txs		; 9A
	tax		; AA
	tax		; AA
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $AA.b		; 06 AA
	ror A		; 6A
	asl $00.b		; 06 00
	brk $06.b		; 00 06
	tax		; AA
	ror A		; 6A
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	tda		; 7B
	trb $28DB.w		; 1C DB 28
	jmp $45BC39.l		; 5C 39 BC 45
	and $BF56.w,X		; 3D 56 BF
	.db $62, $3F, $73		; 62 3F 73
	inc $DD72.w,X		; FE 72 DD
	ror $9C.b,X		; 76 9C
	ror $7B.b,X		; 76 7B
	ply		; 7A
	tad		; 5B
	ror $03E0.w,X		; 7E E0 03
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	sta $48D730.l		; 8F 30 D7 48
	ora $611F61.l,X		; 1F 61 1F 61
	adc $611F61.l,X		; 7F 61 1F 61
	adc $03E061.l,X		; 7F 61 E0 03
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	adc $61DF61.l,X		; 7F 61 DF 61
	and $7FFF62.l,X		; 3F 62 FF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -112.b		; 10 90
	brk $3D.b		; 00 3D
	ora $00.b		; 05 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	jsr ($01FF.w,X)		; FC FF 01
	ora $02.b,S		; 03 02
	asl $61.b		; 06 61
	tsb $DB.b		; 04 DB
	and [$B4.b]		; 27 B4
	tas		; 1B
	cpx $EB9B.w		; EC 9B EB
	eor [$F4.b],Y		; 57 F4
	sbc $010503.l		; EF 03 05 01
	cop $02.b		; 02 02
	ora $23.b,S		; 03 23
	eor [$78.b]		; 47 78
	bra -57.b		; 80 C7
	php		; 08
	sbc $5865FF.l,X		; FF FF 65 58
	ora [$28.b],Y		; 17 28
	adc $F05C60.l,X		; 7F 60 5C F0
	dey		; 88
	cpx $8C.b		; E4 8C
	dec $0C.b,X		; D6 0C
	cmp $A887.w,Y		; D9 87 A8
	adc $9A42FF.l,X		; 7F FF 42 9A
	jsr $60C8.w		; 20 C8 60
	bra -16.b		; 80 F0
	cpx $18.b		; E4 18
	dec $08.b,X		; D6 08
	sta $C846.w,Y		; 99 46 C8
	rts		; 60

	brk $E0.b		; 00 E0
	bra -128.b		; 80 80
	cpx #$00.b		; E0 00
	bvc -128.b		; 50 80
	cpx #$FF.b		; E0 FF
	eor $3C0F.w,X		; 5D 0F 3C
	ora $20.b,X		; 15 20
	ora [$18.b]		; 07 18
	ora $0F0D04.l		; 0F 04 0D 0F
	cop $0B.b		; 02 0B
	ora $3CE5FD.l		; 0F FD E5 3C
	asl $381A.w,X		; 1E 1A 38
	clc		; 18
	clc		; 18
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	sbc $C438FF.l,X		; FF FF 38 C4
	cmp [$EC.b],Y		; D7 EC
	adc ($E8.b)		; 72 E8
	ldy $E748.w,X		; BC 48 E7
	ora [$ED.b],Y		; 17 ED
	ora $DC.b,X		; 15 DC
	and ($8C.b),Y		; 31 8C
	and ($FF.b,X)		; 21 FF
	eor $0CCB0C.l,X		; 5F 0C CB 0C
	sbc $08.b,S		; E3 08
	sbc [$14.b]		; E7 14
	eor ($0F.b,S),Y		; 53 0F
	tsb $2F.b		; 04 2F
	bit $0F.b		; 24 0F
	asl $3308.w,X		; 1E 08 33
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	bpl   1.b		; 10 01
	sbc $9060BB.l,X		; FF BB 60 90
	cpy #$D0.b		; C0 D0
	rts		; 60

	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	rti		; 40

	bra -64.b		; 80 C0
	bra  57.b		; 80 39
	ora ($60.b),Y		; 11 60
	rti		; 40

	ldy #$40.b		; A0 40
	rti		; 40

	bra  -9.b		; 80 F7
	sbc ($B3.b,S),Y		; F3 B3
	dey		; 88
	sta $68.b,S		; 83 68
	mvp $80,$40		; 44 40 80
	bmi  32.b		; 30 20
	bit $0C5A.w,X		; 3C 5A 0C
	tsb $11.b		; 04 11
	eor ($70.b),Y		; 51 70
	rti		; 40

	jsr $0418.w		; 20 18 04
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sed		; F8
	ora ($01.b,X)		; 01 01
	ora [$02.b]		; 07 02
	asl $4000.w,X		; 1E 00 40
	ora $FFFD.w,Y		; 19 FD FF
	ora [$02.b]		; 07 02
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl $390F.w		; 0E 0F 39
	pld		; 2B
	sbc $18.b,S		; E3 18
	ora $40F880.l,X		; 1F 80 F8 40
	ora $01.b,X		; 15 01
	asl $1C.b		; 06 1C
	cpx #$20.b		; E0 20
	phd		; 0B
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	brk $04.b		; 00 04
	ora ($FF.b,X)		; 01 FF
	tyx		; BB
	rts		; 60

	iny		; C8
	jsr $C090.w		; 20 90 C0
	bcc -128.b		; 90 80
	jsr $60C0.w		; 20 C0 60
	rti		; 40

	bra -64.b		; 80 C0
	bra  69.b		; 80 45
	ora ($30.b),Y		; 11 30
	bvc -96.b		; 50 A0
	rti		; 40

	bra -33.b		; 80 DF
	sbc $25C9.w,X		; FD C9 25
	and #$FA.b		; 29 FA
	cpy $54.b		; C4 54
	mvn $CC,$02		; 54 02 CC
	iny		; C8
	ora $01.b,S		; 03 01
	lsr $47.b		; 46 47
	cmp $1826FC.l		; CF FC 26 18
	and $14D8.w,Y		; 39 D8 14
	mvp $C0,$08		; 44 08 C0
	ora ($01.b,X)		; 01 01
	ora [$47.b]		; 07 47
	cmp $9020F5.l,X		; DF F5 20 90
	rti		; 40

	rti		; 40

	jsr $B0E0.w		; 20 E0 B0
	jsr $930C.w		; 20 0C 93
	bra  98.b		; 80 62
	jsr $D0CF.w		; 20 CF D0
	bcc  96.b		; 90 60
	rti		; 40

	rti		; 40

	bcs  32.b		; B0 20
	bra  98.b		; 80 62
	cop $41.b		; 02 41
	cpx #$01.b		; E0 01
	ora ($03.b,X)		; 01 03
	ora $0D.b,S		; 03 0D
	brk $50.b		; 00 50
	ora $0E.b,S		; 03 0E
	sbc $344CFF.l,X		; FF FF 4C 34
	bne  40.b		; D0 28
	jsr ($740D.w,X)		; FC 0D 74
	asl $4E22.w,X		; 1E 22 4E
	adc $D7.b,S		; 63 D7
	adc ($37.b,X)		; 61 37
	cmp $2B.b,S		; C3 2B
	sbc $B384FF.l,X		; FF FF 84 B3
	php		; 08
	and [$0D.b]		; 27 0D
	cop $1E.b		; 02 1E
	ora ($4E.b,X)		; 01 4E
	and ($D7.b),Y		; 31 D7
	jsr $C433.w		; 20 33 C4
	and [$0C.b]		; 27 0C
	sbc $4639FF.l,X		; FF FF 39 46
	cmp [$6E.b],Y		; D7 6E
	sta $7B2E.w,X		; 9D 2E 7B
	bit $CF.b		; 24 CF
	bne 111.b		; D0 6F
	bvc 119.b		; 50 77
	clc		; 18
	adc $08.b,S		; 63 08
	sbc $A6605F.l,X		; FF 5F 60 A6
	rts		; 60

	stx $CE20.w		; 8E 20 CE
	bvc -108.b		; 50 94
	cpx #$40.b		; E0 40
	inx		; E8
	pha		; 48
	cpx #$F0.b		; E0 F0
	sbc $78E05D.l,X		; FF 5D E0 78
	bvc   8.b		; 50 08
	cpy #$30.b		; C0 30
	cpx #$40.b		; E0 40
	rts		; 60

	cpx #$80.b		; E0 80
	ldy #$E0.b		; A0 E0
	sbc $78E5.w,X		; FD E5 78
	beq -80.b		; F0 B0
	sec		; 38
	bmi  48.b		; 30 30
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $FF.b		; 00 FF
	sbc ($9A.b,S),Y		; F3 9A
	and $82.b,S		; 23 82
	ora ($2C.b,X)		; 01 2C
	mvp $02,$04		; 44 04 02
	clc		; 18
	php		; 08
	sei		; 78
	ldy $60.b,X		; B4 60
	rti		; 40

	ora ($51.b),Y		; 11 51
	trb $0804.w		; 1C 04 08
	bmi  64.b		; 30 40
	xba		; EB
	tyx		; BB
	cop $06.b		; 02 06
	ora [$05.b]		; 07 05
	tsb $0D.b		; 04 0D
	cop $0B.b		; 02 0B
	asl A		; 0A
	tsb $0E.b		; 04 0E
	tsb $7775.w		; 0C 75 77
	ora ($02.b,X)		; 01 02
	asl $02.b		; 06 02
	php		; 08
	asl $06.b		; 06 06
	ora ($04.b,X)		; 01 04
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	lda $06120C.l,X		; BF 0C 12 06
	ora [$0C.b],Y		; 17 0C
	ora $0902.w,Y		; 19 02 09
	ora [$0D.b]		; 07 0D
	ora ($05.b,X)		; 01 05
	cop $06.b		; 02 06
	cop $39.b		; 02 39
	ora ($0C.b),Y		; 11 0C
	tsb $0A.b		; 04 0A
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	ldx $6700.w		; AE 00 67
	bvs  -4.b		; 70 FC
	beq  96.b		; F0 60
	eor [$00.b],Y		; 57 00
	rts		; 60

	clc		; 18
	jsr ($60F0.w,X)		; FC F0 60
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	brk $AA.b		; 00 AA
	pld		; 2B
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	cmp $15.b,X		; D5 15
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	cop $7E.b		; 02 7E
	bra -64.b		; 80 C0
	rti		; 40

	jsr $9020.w		; 20 20 90
	rts		; 60

	rti		; 40

	and [$80.b],Y		; 37 80
	cpy #$80.b		; C0 80
	jsr $8090.w		; 20 90 80
	sbc $CD332B.l,X		; FF 2B 33 CD
	.db $82, $BF, $11		; 82 BF 11
	tas		; 1B
	adc ($73.b,X)		; 61 73
	bra -31.b		; 80 E1
	sta ($01.b,X)		; 81 01
	eor [$00.b],Y		; 57 00
	ora ($02.b,X)		; 01 02
	rti		; 40

	cpx #$80.b		; E0 80
	sbc [$FF.b],Y		; F7 FF
	lda $6FFBC4.l,X		; BF C4 FB 6F
	sta ($EF.b)		; 92 EF
	bcc  -6.b		; 90 FA
	bne -66.b		; D0 BE
	bra  -4.b		; 80 FC
	beq  64.b		; F0 40
	iny		; C8
	lda $06025C.l,X		; BF 5C 02 06
	sty $80.b		; 84 80
	.db $82, $90, $02		; 82 90 02
	mvp $40,$14		; 44 14 40
	bmi -126.b		; 30 82
	inc $0301.w,X		; FE 01 03
	ora [$06.b]		; 07 06
	asl $19CE.w		; 0E CE 19
	plp		; 28
	asl $C1.b		; 06 C1
	sbc $010301.l,X		; FF 01 03 01
	ora [$03.b]		; 07 03
	asl $1906.w		; 0E 06 19
	php		; 08
	asl $04.b		; 06 04
	tsx		; BA
	brk $80.b		; 00 80
	rti		; 40

	bra -64.b		; 80 C0
	bra  93.b		; 80 5D
	brk $80.b		; 00 80
	rti		; 40

	bra -64.b		; 80 C0
	bra  -4.b		; 80 FC
	brk $04.b		; 00 04
	ora [$08.b]		; 07 08
	php		; 08
	bpl  16.b		; 10 10
	bvc   1.b		; 50 01
	ora [$08.b]		; 07 08
	bpl  -1.b		; 10 FF
	stp		; DB
	tsb $3DFC.w		; 0C FC 3D
	adc ($01.b,X)		; 61 01
	stx $3C3C.w		; 8E 3C 3C
	ora $30.b,S		; 03 30
	clc		; 18
	asl $0302.w		; 0E 02 03
	eor $44.b,X		; 55 44
	ora $61.b,S		; 03 61
	stx $081C.w		; 8E 1C 08
	ora $FF.b,S		; 03 FF
	sbc $E08080.l,X		; FF 80 80 E0
	cpx #$18.b		; E0 18
	sed		; F8
	asl $C8FE.w,X		; 1E FE C8
	cpx #$E3.b		; E0 E3
	jsr ($85E1.w,X)		; FC E1 85
	ldy #$03.b		; A0 03
	brk $51.b		; 00 51
	ora $008061.l,X		; 1F 61 80 00
	sbc $D0C0C0.l,X		; FF C0 C0 D0
	bpl -80.b		; 10 B0
	bra   6.b		; 80 06
	inc $1400.w,X		; FE 00 14
	cpx #$7C.b		; E0 7C
	eor $0113.w		; 4D 13 01
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	ora $01.b		; 05 01
	sbc $FF0101.l,X		; FF 01 01 FF
	adc $38F848.l,X		; 7F 48 F8 38
	sed		; F8
	tsb $FC.b		; 04 FC
	lda ($FE.b)		; B2 FE
	rts		; 60

	sed		; F8
	stz $BAFC.w		; 9C FC BA
	sec		; 38
	stz $5500.w		; 9C 00 55
	asl $02.b		; 06 02
	cmp [$FF.b]		; C7 FF
	jsr ($01CD.w,X)		; FC CD 01
	ora ($21.b,X)		; 01 21
	jsr $2021.w		; 20 21 20
	ora ($40.b,X)		; 01 40
	rti		; 40

	bra -128.b		; 80 80
	trb $11.b		; 14 11
	cop $1D.b		; 02 1D
	jsr $5F40.w		; 20 40 5F
	sbc $E27C64.l,X		; FF 64 7C E2
	.db $82, $86, $FA		; 82 86 FA
	ora $7801.w		; 0D 01 78
	bra -48.b		; 80 D0
	rti		; 40

	ora $03.b,S		; 03 03
	rti		; 40

	mvn $80,$01		; 54 01 80
	cpy #$C3.b		; C0 C3
	sbc $1E1E07.l,X		; FF 07 1E 1E
	clc		; 18
	ora $020709.l		; 0F 09 07 02
	ora [$07.b]		; 07 07
	ora [$01.b]		; 07 01
	ora $04.b,X		; 15 04
	jsr $8850.w		; 20 50 88
	sta [$FC.b]		; 87 FC
	sbc $C08080.l,X		; FF 80 80 C0
	cpy #$60.b		; C0 60
	cpx #$08.b		; E0 08
	sed		; F8
	dec $F6.b,X		; D6 F6
	clv		; B8
	ror $066A.w		; 6E 6A 06
	brk $54.b		; 00 54
	php		; 08
	bcc  -8.b		; 90 F8
	sed		; F8
	sbc $C08080.l,X		; FF 80 80 C0
	tsb $B640.w		; 0C 40 B6
	iny		; C8
	phy		; 5A
	bcs 111.b		; B0 6F
	lda ($AF.b)		; B2 AF
	pei ($D4.b)		; D4 D4
	sbc $804080.l		; EF 80 40 80
	bra -128.b		; 80 80
	dey		; 88
	cpy $3C.b		; C4 3C
	cop $C6.b		; 02 C6
	jsr $080A.w		; 20 0A 08
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	tsb $01.b		; 04 01
	ora ($EB.b,X)		; 01 EB
	tyx		; BB
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	rti		; 40

	rts		; 60

	bra -96.b		; 80 A0
	ldy #$40.b		; A0 40
	cpx #$60.b		; E0 60
	stz $73.b,X		; 74 73
	bra -64.b		; 80 C0
	bra  32.b		; 80 20
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	sbc $28D4E0.l,X		; FF E0 D4 28
	jmp.w [$9F68]		; DC 68 9F
	rts		; 60

	stz $3FDD.w,X		; 9E DD 3F
	and #$E5.b		; 29 E5
	tyx		; BB
	jmp ($6432.w)		; 6C 32 64
	sbc $C814FD.l,X		; FF FD 14 C8
	trb $1FC0.w		; 1C C0 1F
	bra  30.b		; 80 1E
	sta ($3F.b,X)		; 81 3F
	ror $98.b		; 66 98
	adc $186710.l		; 6F 10 67 18
	bra -97.b		; 80 9F
	bra -128.b		; 80 80
	rti		; 40

	bra  96.b		; 80 60
	rti		; 40

	bmi  64.b		; 30 40
	cmp $4080.w		; CD 80 40
	rts		; 60

	rti		; 40

	bmi  32.b		; 30 20
	bit $4000.w,X		; 3C 00 40
	rti		; 40

	bra -128.b		; 80 80
	eor ($00.b),Y		; 51 00
	and $008040.l,X		; 3F 40 80 00
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	ora $010300.l,X		; 1F 00 03 01
	ora $01.b,S		; 03 01
	ora ($11.b,X)		; 01 11
	brk $FE.b		; 00 FE
	ora ($DF.b,X)		; 01 DF
	sbc $8EFE02.l,X		; FF 02 FE 8E
	cop $70.b		; 02 70
	asl $86.b		; 06 86
	.db $82, $42, $3C		; 82 42 3C
	bit $3830.w,X		; 3C 30 38
	jmp.w [$4404]		; DC 04 44
	ora $02.b,X		; 15 02
	stx $40.b		; 86 40
	bit $D438.w,X		; 3C 38 D4
	xce		; FB
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	ora [$21.b]		; 07 21
	and $41FEFE.l,X		; 3F FE FE 41
	eor $FF.b,X		; 55 FF
	ora ($02.b,X)		; 01 02
	tsb $38.b		; 04 38
	cpy #$FF.b		; C0 FF
	and $D10FA9.l,X		; 3F A9 0F D1
	ora $087E86.l,X		; 1F 86 7E 08
	sed		; F8
	bmi -16.b		; 30 F0
	rti		; 40

	cpy #$80.b		; C0 80
	bra  21.b		; 80 15
	brk $F0.b		; 00 F0
	cpx #$80.b		; E0 80
	cpy $80FF.w		; CC FF 80
	bra  64.b		; 80 40
	rti		; 40

	ora $07.b		; 05 07
	lda $AA.b		; A5 AA
	eor ($5C.b,X)		; 41 5C
	jsr $4510.w		; 20 10 45
	eor $FF.b,X		; 55 FF
	bra  64.b		; 80 40
	ora [$2A.b]		; 07 2A
	trb $FF10.w		; 1C 10 FF
	ora $38.b,S		; 03 38
	ora #$28.b		; 09 28
	and [$44.b]		; 27 44
	eor $47.b,S		; 43 47
	eor $43.b,S		; 43 43
	cpy #$15.b		; C0 15
	ora $F6.b		; 05 F6
	rol $8364.w		; 2E 64 83
	cpy #$00.b		; C0 00
	brk $11.b		; 00 11
	mvn $40,$3F		; 54 3F 40
	rti		; 40

	and $1C.b,S		; 23 1C
	ora $048C00.l		; 0F 00 8C 04
	tsb $0104.w		; 0C 04 01
	ora $F8.b		; 05 F8
	sec		; 38
	cpy #$37.b		; C0 37
	jmp ($0102.w,X)		; 7C 02 01
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	jsl $020128.l		; 22 28 01 02
	cop $01.b		; 02 01
	tsb $54.b		; 04 54
	ora ($01.b,X)		; 01 01
	ora $04.b,S		; 03 04
	brk $00.b		; 00 00
	and ($00.b,S),Y		; 33 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ora ($54.b),Y		; 11 54
	adc $1E2040.l,X		; 7F 40 20 1E
	ora ($00.b,X)		; 01 00
	jsr ($2020.w,X)		; FC 20 20
	bpl  16.b		; 10 10
	ora ($01.b,X)		; 01 01
	ora ($55.b),Y		; 11 55
	sbc $204080.l,X		; FF 80 40 20
	bpl   9.b		; 10 09
	brk $FC.b		; 00 FC
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $00E0.w		; 20 E0 00
	ora $80.b,X		; 15 80
	rti		; 40

	bra  -1.b		; 80 FF
	and $F010.w,X		; 3D 10 F0
	pla		; 68
	php		; 08
	sta [$04.b]		; 87 04
	asl A		; 0A
	asl $691D.w		; 0E 1D 69
	sta $5080.w,X		; 9D 80 50
	eor $15.b,X		; 55 15
	php		; 08
	tsb $0E07.w		; 0C 07 0E
	bpl -19.b		; 10 ED
	bpl  -1.b		; 10 FF
	ora $202020.l		; 0F 20 20 20
	jsr $1010.w		; 20 10 10
	ora $03030F.l		; 0F 0F 03 03
	ora ($01.b,X)		; 01 01
	ora $00.b,X		; 15 00
	ora $030F1F.l,X		; 1F 1F 0F 03
	ora $80C0C0.l		; 0F C0 C0 80
	bra -64.b		; 80 C0
	cpy #$05.b		; C0 05
	eor $3F.b,X		; 55 3F
	cpy #$80.b		; C0 80
	rti		; 40

	jsr $FF1E.w		; 20 1E FF
	brk $31.b		; 00 31
	ora $121F31.l,X		; 1F 31 1F 12
	asl $0C1C.w		; 0E 1C 0C
	ora ($55.b),Y		; 11 55
	cpx #$10.b		; E0 10
	php		; 08
	php		; 08
	bpl  32.b		; 10 20
	jsr ($3FFC.w,X)		; FC FC 3F
	and $080B13.l		; 2F 13 0B 08
	mvp $10,$13		; 44 13 10
	ora $03.b,S		; 03 03
	jsr $5440.w		; 20 40 54
	trb $10.b		; 14 10
	phd		; 0B
	tsb $10.b		; 04 10
	ora $3C.b,S		; 03 3C
	adc [$80.b],Y		; 77 80
	bra  64.b		; 80 40
	rti		; 40

	cpx #$E0.b		; E0 E0
	bra -96.b		; 80 A0
	cpx #$C0.b		; E0 C0
	brk $05.b		; 00 05
	cpy #$C0.b		; C0 C0
	sbc $CF4F0F.l,X		; FF 0F 4F CF
	.db $42, $DE		; 42 DE
	lsr $5E.b		; 46 5E
	lsr $585E.w,X		; 5E 5E 58
	lsr $1E1E.w,X		; 5E 1E 1E
	ora $10.b		; 05 10
	bmi  16.b		; 30 10
	jsr $4DF6.w		; 20 F6 4D
	jsr ($7E04.w,X)		; FC 04 7E
	cmp ($F9.b,S),Y		; D3 F9
	adc ($1C.b,S),Y		; 73 1C
	cmp $D1D9.w		; CD D9 D1
	eor ($D1.b,S),Y		; 53 D1
	mvn $73,$58		; 54 58 73
	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1800.w		; 0C 00 18
	ora $3A1F.w,Y		; 19 1F 3A
	ora $20C063.l,X		; 1F 63 C0 20
	sty $39.b		; 84 39
	lsr A		; 4A
	eor ($52.b)		; 52 52
	adc ($C6.b,S),Y		; 73 C6
	jsr $398C.w		; 20 8C 39
	eor ($52.b)		; 52 52
	clc		; 18
	rtl		; 6B

	ora $7FFF7E.l,X		; 1F 7E FF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $48D730.l		; 8F 30 D7 48
	ora $6E7F61.l,X		; 1F 61 7F 6E
	sbc $03E07F.l,X		; FF 7F E0 03
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	cpx #$03.b		; E0 03
	brk $02.b		; 00 02
	brk $44.b		; 00 44
	brk $48.b		; 00 48
	brk $4C.b		; 00 4C
	brk $50.b		; 00 50
	brk $54.b		; 00 54
	brk $58.b		; 00 58
	brk $5C.b		; 00 5C
	brk $60.b		; 00 60
	brk $64.b		; 00 64
	brk $68.b		; 00 68
	brk $6C.b		; 00 6C
	brk $70.b		; 00 70
	brk $74.b		; 00 74
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	bpl   2.b		; 10 02
	and ($02.b),Y		; 31 02
	eor ($02.b)		; 52 02
	adc ($02.b,S),Y		; 73 02
	sty $02.b,X		; 94 02
	lda $02.b,X		; B5 02
	dec $02.b,X		; D6 02
	sbc [$02.b],Y		; F7 02
	clc		; 18
	ora $39.b,S		; 03 39
	ora $5A.b,S		; 03 5A
	ora $7B.b,S		; 03 7B
	ora $9C.b,S		; 03 9C
	ora $BD.b,S		; 03 BD
	ora $DE.b,S		; 03 DE
	ora $FF.b,S		; 03 FF
	ora $00.b,S		; 03 00
	.db $42, $20		; 42 20
	lsr $40.b		; 46 40
	lsr A		; 4A
	rts		; 60

	lsr $5280.w		; 4E 80 52
	ldy #$56.b		; A0 56
	cpy #$5A.b		; C0 5A
	cpx #$5E.b		; E0 5E
	brk $63.b		; 00 63
	jsr $4067.w		; 20 67 40
	rtl		; 6B

	rts		; 60

	adc $A07380.l		; 6F 80 73 A0
	adc [$C0.b],Y		; 77 C0
	tda		; 7B
	cpx #$7F.b		; E0 7F
	bpl  64.b		; 10 40
	ora ($44.b),Y		; 11 44
	ora ($48.b)		; 12 48
	ora ($4C.b,S),Y		; 13 4C
	trb $50.b		; 14 50
	ora $54.b,X		; 15 54
	asl $58.b,X		; 16 58
	ora [$5C.b],Y		; 17 5C
	clc		; 18
	rts		; 60

	ora $1A64.w,Y		; 19 64 1A
	pla		; 68
	tas		; 1B
	jmp ($701C.w)		; 6C 1C 70
	ora $1E74.w,X		; 1D 74 1E
	sei		; 78
	ora $21107C.l,X		; 1F 7C 10 21
	ora ($21.b),Y		; 11 21
	and ($25.b)		; 32 25
	and ($25.b,S),Y		; 33 25
	mvn $55,$29		; 54 29 55
	and #$76.b		; 29 76
	and $2D77.w		; 2D 77 2D
	tya		; 98
	and ($99.b),Y		; 31 99
	and ($BA.b),Y		; 31 BA
	and $BB.b,X		; 35 BB
	and $DC.b,X		; 35 DC
	and $39DD.w,Y		; 39 DD 39
	inc $1F3D.w,X		; FE 3D 1F
	.db $42, $08		; 42 08
	jsl $492228.l		; 22 28 22 49
	rol $69.b		; 26 69
	rol $8A.b		; 26 8A
	rol A		; 2A
	tax		; AA
	rol A		; 2A
	wai		; CB
	rol $2EEB.w		; 2E EB 2E
	tsb $2C33.w		; 0C 33 2C
	and ($4D.b,S),Y		; 33 4D
	and [$6D.b],Y		; 37 6D
	and [$8E.b],Y		; 37 8E
	tsa		; 3B
	ldx $CF3B.w		; AE 3B CF
	and $1143F0.l,X		; 3F F0 43 11
	brk $01.b		; 00 01
	sty $03.b		; 84 03
	brk $7D.b		; 00 7D
	brk $40.b		; 00 40
	ora $1F071F.l		; 0F 1F 07 1F
	ora $000F10.l		; 0F 10 0F 00
	cmp #$00.b		; C9 00
	rti		; 40

	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $007D00.l,X		; FF 00 7D 00
	rti		; 40

	sed		; F8
	jsr ($FCF0.w,X)		; FC F0 FC
	sed		; F8
	tsb $F8.b		; 04 F8
	brk $74.b		; 00 74
	brk $40.b		; 00 40
	adc $803FFF.l,X		; 7F FF 3F 80
	adc $003400.l,X		; 7F 00 34 00
	rti		; 40

	sbc $FFFFFF.l,X		; FF FF FF FF
	bne -25.b		; D0 E7
	brk $40.b		; 00 40
	ora [$0B.b]		; 07 0B
	ora $04.b,S		; 03 04
	tsb $F7.b		; 04 F7
	cpx #$F7.b		; E0 F7
	sbc [$F7.b]		; E7 F7
	bne -57.b		; D0 C7
	brk $40.b		; 00 40
	ldy $185A.w,X		; BC 5A 18
	ldy $A4.b		; A4 A4
	ldy $BCBC.w,X		; BC BC BC
	ldy $7D00.w,X		; BC 00 7D
	brk $40.b		; 00 40
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	adc $4000.w,X		; 7D 00 40
	cpy #$E0.b		; C0 E0
	bra -32.b		; 80 E0
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	adc $4000.w,X		; 7D 00 40
	rol $1C7F.w,X		; 3E 7F 1C
	adc $3E413E.l,X		; 7F 3E 41 3E
	ora $7D.b,X		; 15 7D
	ora $94.b		; 05 94
	bpl  31.b		; 10 1F
	ora $1F7F3F.l		; 0F 3F 7F 1F
	adc $0F403F.l,X		; 7F 3F 40 0F
	ora [$1F.b]		; 07 1F
	and $C9443F.l,X		; 3F 3F 44 C9
	ora ($C4.b),Y		; 11 C4
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $15FFFF.l,X		; FF FF FF 15
	adc $9405.w,X		; 7D 05 94
	tsb $FC.b		; 04 FC
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	inc $02FC.w,X		; FE FC 02
	sed		; F8
	beq  -8.b		; F0 F8
	jsr ($55FC.w,X)		; FC FC 55
	brk $15.b		; 00 15
	brk $80.b		; 00 80
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	adc $C5C43F.l,X		; 7F 3F C4 C5
	eor ($C0.b,X)		; 41 C0
	sbc $FC0101.l,X		; FF 01 01 FC
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	inc $0101.w,X		; FE 01 01
	cmp $C4.b		; C5 C4
	ora $C0.b,X		; 15 C0
	php		; 08
	sbc [$F7.b],Y		; F7 F7
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	sbc [$04.b],Y		; F7 04
	ora $F0.b,S		; 03 F0
	beq  21.b		; F0 15
	brk $05.b		; 00 05
	brk $42.b		; 00 42
	inc $BCBC.w,X		; FE BC BC
	clc		; 18
	cmp $7C.b		; C5 7C
	ora ($14.b,X)		; 01 14
	php		; 08
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	tsb $08.b		; 04 08
	ora $07.b,S		; 03 07
	ora [$04.b]		; 07 04
	ora $C5.b,S		; 03 C5
	jmp ($1401.w,X)		; 7C 01 14
	jsr $C0C0.w		; 20 C0 C0
	cpy #$C0.b		; C0 C0
	rti		; 40

	jsr $C080.w		; 20 80 C0
	cpy #$40.b		; C0 40
	bra -59.b		; 80 C5
	cpy $01.b		; C4 01
	cpy #$41.b		; C0 41
	rol $3E3E.w,X		; 3E 3E 3E
	rol $3E3E.w,X		; 3E 3E 3E
	rol $3E3E.w,X		; 3E 3E 3E
	ora $50.b,X		; 15 50
	asl A		; 0A
	brk $40.b		; 00 40
	adc $01013F.l,X		; 7F 3F 01 01
	and $3D141F.l,X		; 3F 1F 14 3D
	asl A		; 0A
	inx		; E8
	sbc $FF01FF.l,X		; FF FF 01 FF
	ora ($FF.b,X)		; 01 FF
	adc $01FFFF.l,X		; 7F FF FF 01
	adc $C5FFFF.l,X		; 7F FF FF C5
	cmp $02CA22.l		; CF 22 CA 02
	jsr ($7C7C.w,X)		; FC 7C 7C
	bra -128.b		; 80 80
	inc $F404.w,X		; FE 04 F4
	sed		; F8
	jsr ($8080.w,X)		; FC 80 80
	tsb $F0.b		; 04 F0
	php		; 08
	brk $74.b		; 00 74
	brk $E0.b		; 00 E0
	ora $10071F.l		; 0F 1F 07 10
	ora [$0F.b]		; 07 0F
	ora $8AEFC5.l		; 0F C5 EF 8A
	ror A		; 6A
	cop $05.b		; 02 05
	ora $083807.l		; 0F 07 38 08
	cmp $FFC030.l		; CF 30 C0 FF
	sbc $040201.l,X		; FF 01 02 04
	php		; 08
	bmi -64.b		; 30 C0
	sbc $82CCC5.l,X		; FF C5 CC 82
	dey		; 88
	bpl -32.b		; 10 E0
	bne -64.b		; D0 C0
	cpx #$40.b		; E0 40
	rti		; 40

	bra -32.b		; 80 E0
	jsr $8040.w		; 20 40 80
	rti		; 40

	sbc $036A00.l		; EF 00 6A 03
	and $1C4303.l,X		; 3F 03 43 1C
	jsr $3F3F.w		; 20 3F 3F
	ora $1C.b,S		; 03 1C
	jsr $C53F.w		; 20 3F C5
	cpy $C88A.w		; CC 8A C8
	eor ($BE.b,X)		; 41 BE
	sbc $FEFC.w,X		; FD FC FE
	tsb $F4.b		; 04 F4
	sed		; F8
	rol $8240.w,X		; 3E 40 82
	tsb $F0.b		; 04 F0
	php		; 08
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	mvn $3F,$00		; 54 00 3F
	brk $FF.b		; 00 FF
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $7C7CFF.l,X		; FF FF 7C 7C
	ora $00.b,X		; 15 00
	ora $E01000.l		; 0F 00 10 E0
	bra -32.b		; 80 E0
	cpx #$80.b		; E0 80
	bra  85.b		; 80 55
	brk $3F.b		; 00 3F
	brk $10.b		; 00 10
	ora $0F0F1F.l,X		; 1F 1F 0F 0F
	ora $070F0F.l		; 0F 0F 0F 07
	ora [$55.b]		; 07 55
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	inc $C0F8.w,X		; FE F8 C0
	inc $F8FE.w,X		; FE FE F8
	sed		; F8
	cpy #$C0.b		; C0 C0
	ora $00.b,X		; 15 00
	ora $7F4000.l		; 0F 00 40 7F
	and $1F3F3F.l,X		; 3F 3F 3F 1F
	ora $030005.l,X		; 1F 05 00 03
	brk $30.b		; 00 30
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	stz $00.b,X		; 74 00
	bcc   1.b		; 90 01
	ora $01.b,S		; 03 01
	tsb $01.b		; 04 01
	ora $D0.b,S		; 03 D0
	and $079540.l,X		; 3F 40 95 07
	sec		; 38
	ora [$C0.b]		; 07 C0
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FF3F07.l,X		; FF 07 3F FF
	sbc $3FD0FF.l,X		; FF FF D0 3F
	rti		; 40

	sta $E0.b,X		; 95 E0
	trb $03E0.w		; 1C E0 03
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FCE0FF.l,X		; FF FF E0 FC
	sbc $00FFFF.l,X		; FF FF FF 00
	stz $00.b,X		; 74 00
	bcc -128.b		; 90 80
	cpy #$80.b		; C0 80
	bmi -128.b		; 30 80
	cpy #$00.b		; C0 00
	stz $00.b,X		; 74 00
	bcc   1.b		; 90 01
	ora $01.b,S		; 03 01
	tsb $0301.w		; 0C 01 03
	bne  63.b		; D0 3F
	rti		; 40

	sta $07.b,X		; 95 07
	sec		; 38
	ora [$C0.b]		; 07 C0
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FF3F07.l,X		; FF 07 3F FF
	sbc $3FD0FF.l,X		; FF FF D0 3F
	rti		; 40

	sta $E0.b,X		; 95 E0
	trb $03E0.w		; 1C E0 03
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FCE0FF.l,X		; FF FF E0 FC
	sbc $00FFFF.l,X		; FF FF FF 00
	stz $00.b,X		; 74 00
	bcc -128.b		; 90 80
	cpy #$80.b		; C0 80
	bmi -128.b		; 30 80
	cpy #$00.b		; C0 00
	stz $00.b,X		; 74 00
	bcc   1.b		; 90 01
	ora $01.b,S		; 03 01
	tsb $0301.w		; 0C 01 03
	bne  63.b		; D0 3F
	rti		; 40

	sta $07.b,X		; 95 07
	sec		; 38
	ora [$C0.b]		; 07 C0
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FF3F07.l,X		; FF 07 3F FF
	sbc $3FD0FF.l,X		; FF FF D0 3F
	rti		; 40

	sta $E0.b,X		; 95 E0
	trb $03E0.w		; 1C E0 03
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FCE0FF.l,X		; FF FF E0 FC
	sbc $00FFFF.l,X		; FF FF FF 00
	stz $00.b,X		; 74 00
	bcc -128.b		; 90 80
	cpy #$80.b		; C0 80
	bmi -128.b		; 30 80
	cpy #$00.b		; C0 00
	stz $00.b,X		; 74 00
	bcc   1.b		; 90 01
	ora $01.b,S		; 03 01
	tsb $0301.w		; 0C 01 03
	brk $74.b		; 00 74
	brk $90.b		; 00 90
	cpy #$E0.b		; C0 E0
	cpy #$10.b		; C0 10
	cpy #$E0.b		; C0 E0
	cmp $1F.b		; C5 1F
	cop $0A.b		; 02 0A
	php		; 08
	ora [$07.b]		; 07 07
	ora [$0C.b]		; 07 0C
	tsb $07.b		; 04 07
	ora $03.b,S		; 03 03
	ora [$04.b]		; 07 04
	ora $D4.b,S		; 03 D4
	ora [$AA.b]		; 07 AA
	cop $FF.b		; 02 FF
	sed		; F8
	jsr $40C0.w		; 20 C0 40
	bra -128.b		; 80 80
	sbc $C0E0F8.l,X		; FF F8 E0 C0
	bra -44.b		; 80 D4
	ora [$AA.b]		; 07 AA
	cop $FF.b		; 02 FF
	ora $020304.l,X		; 1F 04 03 02
	ora ($01.b,X)		; 01 01
	sbc $03071F.l,X		; FF 1F 07 03
	ora ($C5.b,X)		; 01 C5
	jsr ($A80A.w,X)		; FC 0A A8
	ora $FFFFF0.l		; 0F F0 FF FF
	sbc $708080.l,X		; FF 80 80 70
	bvs  15.b		; 70 0F
	beq  15.b		; F0 0F
	bra 112.b		; 80 70
	ora $0AFCC5.l		; 0F C5 FC 0A
	tay		; A8
	beq  15.b		; F0 0F
	sbc $01FFFF.l,X		; FF FF FF 01
	ora ($0E.b,X)		; 01 0E
	asl $0FF0.w		; 0E F0 0F
	beq   1.b		; F0 01
	asl $D4F0.w		; 0E F0 D4
	ora [$AA.b]		; 07 AA
	cop $FF.b		; 02 FF
	sed		; F8
	jsr $40C0.w		; 20 C0 40
	bra -128.b		; 80 80
	sbc $C0E0F8.l,X		; FF F8 E0 C0
	bra -44.b		; 80 D4
	ora [$AA.b]		; 07 AA
	cop $FF.b		; 02 FF
	ora $020304.l,X		; 1F 04 03 02
	ora ($01.b,X)		; 01 01
	sbc $03071F.l,X		; FF 1F 07 03
	ora ($C5.b,X)		; 01 C5
	jsr ($A80A.w,X)		; FC 0A A8
	ora $FFFFF0.l		; 0F F0 FF FF
	sbc $708080.l,X		; FF 80 80 70
	bvs  15.b		; 70 0F
	beq  15.b		; F0 0F
	bra 112.b		; 80 70
	ora $0AFCC5.l		; 0F C5 FC 0A
	tay		; A8
	beq  15.b		; F0 0F
	sbc $01FFFF.l,X		; FF FF FF 01
	ora ($0E.b,X)		; 01 0E
	asl $0FF0.w		; 0E F0 0F
	beq   1.b		; F0 01
	asl $D4F0.w		; 0E F0 D4
	ora [$AA.b]		; 07 AA
	cop $FF.b		; 02 FF
	sed		; F8
	jsr $40C0.w		; 20 C0 40
	bra -128.b		; 80 80
	sbc $C0E0F8.l,X		; FF F8 E0 C0
	bra -44.b		; 80 D4
	ora [$AA.b]		; 07 AA
	cop $FF.b		; 02 FF
	ora $020304.l,X		; 1F 04 03 02
	ora ($01.b,X)		; 01 01
	sbc $03071F.l,X		; FF 1F 07 03
	ora ($C5.b,X)		; 01 C5
	jsr ($A80A.w,X)		; FC 0A A8
	ora $FFFFF0.l		; 0F F0 FF FF
	sbc $708080.l,X		; FF 80 80 70
	bvs  15.b		; 70 0F
	beq  15.b		; F0 0F
	bra 112.b		; 80 70
	ora $0AFCC5.l		; 0F C5 FC 0A
	tay		; A8
	beq  15.b		; F0 0F
	sbc $01FFFF.l,X		; FF FF FF 01
	ora ($0E.b,X)		; 01 0E
	asl $0FF0.w		; 0E F0 0F
	beq   1.b		; F0 01
	asl $D5F0.w		; 0E F0 D5
	ora [$AA.b]		; 07 AA
	cop $10.b		; 02 10
	beq -16.b		; F0 F0
	jsr $40C0.w		; 20 C0 40
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	cpx #$C0.b		; E0 C0
	bra -112.b		; 80 90
	eor ($5A.b),Y		; 51 5A
	ora ($90.b,X)		; 01 90
	sta ($A6.b),Y		; 91 A6
	cop $50.b		; 02 50
	sta ($82.b)		; 92 82
	cop $60.b		; 02 60
	eor ($40.b),Y		; 51 40
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $55.b		; 00 55
	eor $55.b,X		; 55 55
	ora $96.b		; 05 96
	stx $96.b,Y		; 96 96
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b),Y		; 11 40
	brk $8E.b		; 00 8E
	brk $40.b		; 00 40
	eor $55.b,X		; 55 55
	eor $02.b,X		; 55 02
	ora $04.b,S		; 03 04
	ora $06.b		; 05 06
	ora [$08.b]		; 07 08
	ora #$0A.b		; 09 0A
	phd		; 0B
	tsb $4005.w		; 0C 05 40
	eor $55.b,X		; 55 55
	eor $51.b,X		; 55 51
	eor ($42.b,X)		; 41 42
	eor $44.b,S		; 43 44
	eor $46.b		; 45 46
	eor [$48.b]		; 47 48
	eor #$4A.b		; 49 4A
	phk		; 4B
	jmp $474D.w		; 4C 4D 47
	pha		; 48
	rti		; 40

	eor $55.b,X		; 55 55
	eor $12.b,X		; 55 12
	ora ($14.b,S),Y		; 13 14
	ora $16.b,X		; 15 16
	ora [$18.b],Y		; 17 18
	ora $1B1A.w,Y		; 19 1A 1B
	trb $5015.w		; 1C 15 50
	eor $55.b,X		; 55 55
	eor $01.b,X		; 55 01
	eor ($52.b),Y		; 51 52
	eor ($54.b,S),Y		; 53 54
	eor $56.b,X		; 55 56
	eor [$58.b],Y		; 57 58
	eor $5B5A.w,Y		; 59 5A 5B
	jmp $55405D.l		; 5C 5D 40 55
	eor $55.b,X		; 55 55
	jsl $252423.l		; 22 23 24 25
	rol $27.b		; 26 27
	plp		; 28
	and #$2A.b		; 29 2A
	pld		; 2B
	bit $6025.w		; 2C 25 60
	eor $55.b,X		; 55 55
	eor $01.b,X		; 55 01
	adc ($62.b,X)		; 61 62
	adc $64.b,S		; 63 64
	adc $66.b		; 65 66
	adc [$68.b]		; 67 68
	adc #$6A.b		; 69 6A
	rtl		; 6B

	jmp ($406D.w)		; 6C 6D 40
	eor $55.b,X		; 55 55
	eor $32.b,X		; 55 32
	and ($34.b,S),Y		; 33 34
	and $36.b,X		; 35 36
	and [$38.b],Y		; 37 38
	and $3B3A.w,Y		; 39 3A 3B
	bit $7035.w,X		; 3C 35 70
	eor $50.b,X		; 55 50
	eor $05.b,X		; 55 05
	adc ($72.b),Y		; 71 72
	adc ($74.b,S),Y		; 73 74
	bvs 113.b		; 70 71
	adc ($73.b)		; 72 73
	stz $75.b,X		; 74 75
	ror $77.b,X		; 76 77
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  85.b		; 50 55
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	adc ($00.b,X)		; 61 00
	cpy #$08.b		; C0 08
	dey		; 88
	sbc $01F3C0.l,X		; FF C0 F3 01
	ora $01.b,S		; 03 01
	asl $03.b		; 06 03
	ora ($01.b,X)		; 01 01
	ora $1805.w		; 0D 05 18
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	sbc $4555FF.l,X		; FF FF 55 45
	lsr A		; 4A
	sbc $79A5.w,X		; FD A5 79
	cmp $D24AEA.l		; CF EA 4A D2
	stz $3CE4.w,X		; 9E E4 3C
	cpy $585C.w		; CC 5C 58
	php		; 08
	inx		; E8
	cpy #$8C.b		; C0 8C
	tsb $18.b		; 04 18
	sec		; 38
	bvs -32.b		; 70 E0
	sbc $F555FF.l,X		; FF FF 55 F5
	cpx $1EAC.w		; EC AC 1E
	cpy $295A.w		; CC 5A 29
	sbc ($F0.b),Y		; F1 F0
	adc $01C4.w		; 6D C4 01
	lda $2171.w,Y		; B9 71 21
	phb		; 8B
	ora ($84.b),Y		; 11 84
	cmp ($73.b)		; D2 73
	ora ($29.b,X)		; 01 29
	sec		; 38
	bvc  64.b		; 50 40
	phx		; DA
	cpy #$12.b		; C0 12
	lsr A		; 4A
	ora $0F.b,S		; 03 0F
	ldy #$40.b		; A0 40
	bmi -128.b		; 30 80
	ldy #$40.b		; A0 40
	rti		; 40

	jsr $8020.w		; 20 20 80
	bra  -1.b		; 80 FF
	sbc $025441.l,X		; FF 41 54 02
	phd		; 0B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	ora $17070B.l		; 0F 0B 07 17
	trb $1115.w		; 1C 15 11
	ora ($17.b,S),Y		; 13 17
	ora ($15.b,S),Y		; 13 15
	tsb $08.b		; 04 08
	cop $04.b		; 02 04
	ora ($CF.b,S),Y		; 13 CF
	ora $03.b,S		; 03 03
	rti		; 40

	ldy #$40.b		; A0 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $8080.w		; 20 80 80
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	adc $5555D7.l,X		; 7F D7 55 55
	ldx $14.b,Y		; B6 14
	bit $3F61.w,X		; 3C 61 3F
	ora ($FE.b,X)		; 01 FE
	sbc $FFB728.l,X		; FF 28 B7 FF
	jsr ($C907.w,X)		; FC 07 C9
	stz $FFFE.w,X		; 9E FE FF
	cmp [$FF.b],Y		; D7 FF
	sbc $D7FFF8.l,X		; FF F8 FF D7
	eor [$55.b],Y		; 57 55
	ora $7E.b		; 05 7E
	sed		; F8
	ora $EE.b,S		; 03 EE
	ora ($CB.b,X)		; 01 CB
	inc A		; 1A
	sbc $FFFE11.l,X		; FF 11 FE FF
	lda $018184.l,X		; BF 84 81 01
	jsr ($E4F0.w,X)		; FC F0 E4
	inc $FFFF.w		; EE FF FF
	tda		; 7B
	adc [$E7.b],Y		; 77 E7
	ora ($C1.b),Y		; 11 C1
	asl $0141.w		; 0E 41 01
	ora ($01.b,X)		; 01 01
	ora ($20.b,X)		; 01 20
	jsr $8008.w		; 20 08 80
	jsr $3E40.w		; 20 40 3E
	ora ($20.b,X)		; 01 20
	rti		; 40

	rti		; 40

	sbc $557FFF.l,X		; FF FF 7F 55
	ora ($06.b),Y		; 11 06
	and [$AC.b]		; 27 AC
	ora $C8.b,S		; 03 C8
	ora $F8.b,S		; 03 F8
	and [$E8.b],Y		; 37 E8
	lda [$C8.b]		; A7 C8
	sta [$D8.b],Y		; 97 D8
	ora [$48.b]		; 07 48
	sbc $53F8.w,Y		; F9 F8 53
	bvc  55.b		; 50 37
	bmi   7.b		; 30 07
	ora [$37.b],Y		; 17 37
	and [$B7.b]		; 27 B7
	sbc $5D75FD.l,X		; FF FD 75 5D
	ora $B244.w,X		; 1D 44 B2
	bit $E7.b		; 24 E7
	eor ($88.b,S),Y		; 53 88
	ora $6009.w		; 0D 09 60
	jsr $1058.w		; 20 58 10
	asl $3B0E.w,X		; 1E 0E 3B
	bit $13.b		; 24 13
	bra  60.b		; 80 3C
	tsb $4032.w		; 0C 32 40
	asl $2F0E.w,X		; 1E 0E 2F
	mvn $A0,$05		; 54 05 A0
	cpx #$0C.b		; E0 0C
	rti		; 40

	bvs -64.b		; 70 C0
	bra  96.b		; 80 60
	clc		; 18
	beq -128.b		; F0 80
	bra -32.b		; 80 E0
	sbc $15FFFF.l,X		; FF FF FF 15
	stx $8F1E.w		; 8E 1E 8F
	eor $871E0E.l,X		; 5F 0E 1E 87
	sta $09.b,S		; 83 09
	ora $0F5C8E.l,X		; 1F 8E 5C 0F
	ora ($01.b,S),Y		; 13 01
	ora $41C1C0.l,X		; 1F C0 C1 41
	lsr $2007.w,X		; 5E 07 20
	stx $80.b		; 86 80
	ora ($07.b,X)		; 01 07
	asl $FF.b		; 06 FF
	sbc $DA402F.l,X		; FF 2F 40 DA
	iny		; C8
	eor $62.b,S		; 43 62
	ldx $C0.b		; A6 C0
	rts		; 60

	ldy #$C5.b		; A0 C5
	adc $AF.b		; 65 AF
	cpy #$6A.b		; C0 6A
	txa		; 8A
	cpy $8060.w		; CC 60 80
	cpx $0280.w		; EC 80 02
	ora ($80.b,X)		; 01 80
	ora [$12.b],Y		; 17 12
	dec A		; 3A
	cmp $06.b,S		; C3 06
	ora $080402.l		; 0F 02 04 08
	tsb $1F.b		; 04 1F
	ora $03.b,S		; 03 03
	tsb $02.b		; 04 02
	trb $01.b		; 14 01
	cop $57.b		; 02 57
	sbc $5415.w,X		; FD 15 54
	cli		; 58
	lda $0D1204.l,X		; BF 04 12 0D
	ora $07.b,S		; 03 07
	ora [$3E.b]		; 07 3E
	and $3D78FF.l,X		; 3F FF 78 3D
	sta $01.b,S		; 83 01
	ora [$3F.b]		; 07 3F
	sei		; 78
	sbc $5555FF.l,X		; FF FF 55 55
	trb $382D.w		; 1C 2D 38
	pld		; 2B
	bmi  95.b		; 30 5F
	adc #$B6.b		; 69 B6
	phx		; DA
	jmp ($DC21.w)		; 6C 21 DC
	cmp ($29.b),Y		; D1 29
	and ($D2.b),Y		; 31 D2
	cpy $2F13.w		; CC 13 2F
	eor $F8FDB6.l,X		; 5F B6 FD F8
.ACCU 8
.INDEX 8
	sep #$BB		; E2 BB
	asl A		; 0A
	sbc $70A000.l,X		; FF 00 A0 70
	ldy #$40.b		; A0 40
	rts		; 60

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sbc $157FFE.l,X		; FF FE 7F 15
	bra  34.b		; 80 22
	lsr A		; 4A
	jmp $32CA.w		; 4C CA 32
	and ($10.b,X)		; 21 10
	cld		; D8
	.db $62, $30, $40		; 62 30 40
	rts		; 60

	tsb $C8.b		; 04 C8
	cmp $4C1D.w,X		; DD 1D 4C
	tsb $1232.w		; 0C 32 12
	bpl -48.b		; 10 D0
	jsr $0F40.w		; 20 40 0F
	and ($03.b,S),Y		; 33 03
	bmi -32.b		; 30 E0
	bpl  64.b		; 10 40
	rti		; 40

	ldy #$80.b		; A0 80
	rti		; 40

	bvs -32.b		; 70 E0
	cpx #$20.b		; E0 20
	jsr $DFFE.w		; 20 FE DF
	lda $9612D7.l,X		; BF D7 12 96
	and ($12.b,X)		; 21 12
	ora ($80.b)		; 12 80
	bra -128.b		; 80 80
	adc ($16.b,X)		; 61 16
	bvs -96.b		; 70 A0
	ora ($D9.b),Y		; 11 D9
	ora $010D.w		; 0D 0D 01
	ora ($12.b,X)		; 01 12
	ora ($C0.b)		; 12 C0
	ora ($21.b),Y		; 11 21
	dey		; 88
	ldy #$05.b		; A0 05
	ora ($C7.b,X)		; 01 C7
	ora $C3.b,S		; 03 C3
	brk $80.b		; 00 80
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cmp ($F4.b,S),Y		; D3 F4
	eor ($54.b,X)		; 41 54
	sed		; F8
	ora [$0B.b]		; 07 0B
	php		; 08
	php		; 08
	ora ($88.b,X)		; 01 88
	php		; 08
	phk		; 4B
	bra  -5.b		; 80 FB
	php		; 08
	ora ($08.b,X)		; 01 08
	.db $82, $DF, $FD		; 82 DF FD
	eor $54.b,X		; 55 54
	tsa		; 3B
	cmp ($04.b,X)		; C1 04
	ora ($40.b,X)		; 01 40
	rti		; 40

	rti		; 40

	rti		; 40

	bra   1.b		; 80 01
	sta $80.b,S		; 83 80
	sty $03.b		; 84 03
	rol $8081.w,X		; 3E 81 80
	rti		; 40

	ora ($80.b,X)		; 01 80
	cop $9B.b		; 02 9B
	sbc [$CF.b],Y		; F7 CF
	adc ($07.b,S),Y		; 73 07
	ldy #$80.b		; A0 80
	tsb $40.b		; 04 40
	ora ($D0.b)		; 12 D0
	bpl -128.b		; 10 80
	bra   9.b		; 80 09
	php		; 08
	eor $808040.l,X		; 5F 40 80 80
	rti		; 40

	rti		; 40

	bne -64.b		; D0 C0
	bra -128.b		; 80 80
	php		; 08
	sbc $BF55FB.l,X		; FF FB 55 BF
	ora $68.b,S		; 03 68
	sta $58.b,S		; 83 58
	sta [$4C.b]		; 87 4C
	cmp ($64.b,X)		; C1 64
	cmp $46.b,S		; C3 46
	jsl $542138.l		; 22 38 21 54
	pla		; 68
	sta [$87.b],Y		; 97 87
	sta $83.b,S		; 83 83
	sta ($30.b,X)		; 81 30
	sta ($70.b,X)		; 81 70
	bra  96.b		; 80 60
	inx		; E8
	sbc $D55FFF.l,X		; FF FF 5F D5
	sbc $10F681.l		; EF 81 F6 10
	adc $98.b,S		; 63 98
	tsx		; BA
	cpy $C1B7.w		; CC B7 C1
	stp		; DB
	inx		; E8
	cmp $1DF4.w		; CD F4 1D
	cpx #$1E.b		; E0 1E
	cpy #$0F.b		; C0 0F
	rti		; 40

	sta [$C3.b]		; 87 C3
	dec $F2E6.w		; CE E6 F2
	cpx #$02.b		; E0 02
	cmp $8AFD.w,X		; DD FD 8A
	nop		; EA
	lda [$0B.b],Y		; B7 0B
	ora $03.b		; 05 03
	rti		; 40

	ora $1F8001.l		; 0F 01 80 1F
	cmp ($14.b,X)		; C1 14
	ror $783F.w,X		; 7E 3F 78
	ora [$01.b]		; 07 01
	ora ($82.b,X)		; 01 82
	bit $C11C.w,X		; 3C 1C C1
	sbc $050F00.l,X		; FF 00 0F 05
	ora $130F1F.l		; 0F 1F 0F 13
	ora ($0F.b,X)		; 01 0F
	asl $0C.b		; 06 0C
	ora $3F.b,S		; 03 3F
	ora $20.b,S		; 03 20
	ora ($02.b,X)		; 01 02
	cmp $D4D6D4.l,X		; DF D4 D6 D4
	ora $8F4F60.l,X		; 1F 60 4F 8F
	sta [$38.b]		; 87 38
	bmi  16.b		; 30 10
	eor [$60.b]		; 47 60
	rts		; 60

	cpx #$0F.b		; E0 0F
	rti		; 40

	bcc  32.b		; 90 20
	rti		; 40

	bra  32.b		; 80 20
	rti		; 40

	plx		; FA
	stx $4A.b,Y		; 96 4A
	eor ($05.b),Y		; 51 05
	asl $01.b		; 06 01
	rts		; 60

	cop $10.b		; 02 10
	php		; 08
	jsr $8010.w		; 20 10 80
	asl $2009.w		; 0E 09 20
	bpl   8.b		; 10 08
	rti		; 40

	sbc $7FFD3F.l,X		; FF 3F FD 7F
	eor $27FE.w,X		; 5D FE 27
	cop $4F.b		; 02 4F
	ora [$1E.b]		; 07 1E
	tsb $183C.w		; 0C 3C 18
	sed		; F8
	bvs  16.b		; 70 10
	rts		; 60

	inc $0182.w,X		; FE 82 01
	tsb $02.b		; 04 02
	ora #$04.b		; 09 04
	bvc -120.b		; 50 88
	jsl $608410.l		; 22 10 84 60
	pha		; 48
	sbc $FF1FFF.l,X		; FF FF 1F FF
	jsl $4573C9.l		; 22 C9 73 45
	rol A		; 2A
	php		; 08
	rol $04.b		; 26 04
	lda [$81.b],Y		; B7 81
	inc $E2.b,X		; F6 E2
	ror $76.b,X		; 76 76
	cmp $E3.b,S		; C3 E3
	sta $A314.w,X		; 9D 14 A3
	rol A		; 2A
	bra -94.b		; 80 A2
	jsl $661CFF.l		; 22 FF 1C 66
	bpl -125.b		; 10 83
	rts		; 60

	cmp [$74.b],Y		; D7 74
	eor ($15.b,X)		; 41 15
	trb $62FF.w		; 1C FF 62
	bvs  11.b		; 70 0B
	ora ($C8.b,X)		; 01 C8
	lda [$03.b],Y		; B7 03
	rti		; 40

	sbc $C260A1.l,X		; FF A1 60 C2
	ora ($B0.b,X)		; 01 B0
	cmp $5540.w,X		; DD 40 55
	ora ($02.b,X)		; 01 02
	trb $0104.w		; 1C 04 01
	ora ($04.b),Y		; 11 04
	tsb $0C.b		; 04 0C
	cop $0C.b		; 02 0C
	php		; 08
	ora ($04.b,X)		; 01 04
	and $F753FF.l,X		; 3F FF 53 F7
	tda		; 7B
	xce		; FB
	bcs -128.b		; B0 80
	txa		; 8A
	bra  97.b		; 80 61
	asl $83A0.w		; 0E A0 83
	stp		; DB
	cmp ($BC.b),Y		; D1 BC
	ldy $78.b		; A4 78
	ora [$80.b]		; 07 80
	clc		; 18
	bpl   8.b		; 10 08
	bra  80.b		; 80 50
	php		; 08
	and ($1C.b,X)		; 21 1C
	eor $55.b,X		; 55 55
	tax		; AA
	txa		; 8A
	ora [$2F.b],Y		; 17 2F
	asl $080C.w,X		; 1E 0C 08
	tsb $03.b		; 04 03
	cop $0F.b		; 02 0F
	ora $07070F.l,X		; 1F 0F 07 07
	ora $01.b,S		; 03 01
	cmp $28AAFF.l,X		; DF FF AA 28
	sty $9D03.w		; 8C 03 9D
	ora $38.b		; 05 38
	ply		; 7A
	asl A		; 0A
	bmi  16.b		; 30 10
	ldy $24.b		; A4 24
	cpy #$40.b		; C0 40
	bit #$08.b		; 89 08
	sbc [$18.b],Y		; F7 18
	bmi  96.b		; 30 60
	cpy #$80.b		; C0 80
	ora $B4.b,S		; 03 B4
	eor $44.b,S		; 43 44
	sbc $4080FF.l,X		; FF FF 80 40
	bra -64.b		; 80 C0
	sbc $4080FF.l,X		; FF FF 80 40
	jsr $6D03.w		; 20 03 6D
	eor $40.b,S		; 43 40
	sbc $0201FF.l,X		; FF FF 01 02
	ora ($03.b,X)		; 01 03
	ora $FC.b		; 05 FC
	sbc $FF0804.l,X		; FF 04 08 FF
	adc [$FF.b],Y		; 77 FF
	jsl $020DDC.l		; 22 DC 0D 02
	phd		; 0B
	adc ($05.b),Y		; 71 05
	clc		; 18
	asl A		; 0A
	sbc ($11.b)		; F2 11
	jsr $20E0.w		; 20 E0 20
	rti		; 40

	tsb $EF.b		; 04 EF
	asl $08.b		; 06 08
	ora $3C.b,S		; 03 3C
	ora ($06.b,X)		; 01 06
	adc $C0.b,S		; 63 C0
	sbc $22BFF3.l,X		; FF F3 BF 22
	lsr $61.b,X		; 56 61
	ldy $30A0.w,X		; BC A0 30
	rti		; 40

	ora $1098A1.l		; 0F A1 98 10
	ora $202408.l		; 0F 08 24 20
	rti		; 40

	sbc $8038C0.l		; EF C0 38 80
	rts		; 60

	cpy $0680.w		; CC 80 06
	sbc [$DD.b],Y		; F7 DD
	lda $034CA2.l		; AF A2 4C 03
	inx		; E8
	rep #$83		; C2 83
	stz $40.b,X		; 74 40
	dec A		; 3A
	bcs -96.b		; B0 A0
	tsb $505E.w		; 0C 5E 50
	ora ($BC.b,X)		; 01 BC
	ora ($60.b,X)		; 01 60
	ora $30.b,S		; 03 30
	clc		; 18
	tsb $FF06.w		; 0C 06 FF
	sta [$7F.b],Y		; 97 7F
	cop $32.b		; 02 32
	inc $0173.w,X		; FE 73 01
	eor ($C6.b),Y		; 51 C6
	pla		; 68
	cmp ($80.b,X)		; C1 80
	tsb $80.b		; 04 80
	tsb $80.b		; 04 80
	and $F901.w,Y		; 39 01 F9
	ora ($C0.b,X)		; 01 C0
	jsr ($0218.w,X)		; FC 18 02
	adc [$DE.b]		; 67 DE
	pld		; 2B
	sty $B0.b		; 84 B0
	cpy $30.b		; C4 30
	rti		; 40

	bra -128.b		; 80 80
	jsl $7080C2.l		; 22 C2 80 70
	rti		; 40

	ora $C0.b,S		; 03 C0
	jsr $0220.w		; 20 20 02
	rts		; 60

	and $61.b,S		; 23 61
	and ($30.b),Y		; 31 30
	bvs  12.b		; 70 0C
	asl $04.b		; 06 04
	ora $02.b,S		; 03 02
	beq   4.b		; F0 04
	tsb $02.b		; 04 02
	cop $FC.b		; 02 FC
	adc $10D77A.l,X		; 7F 7A D7 10
	bpl  56.b		; 10 38
	dec A		; 3A
	trb $3F.b		; 14 3F
	and ($0F.b,S),Y		; 33 0F
	inc A		; 1A
	ora $0A.b		; 05 0A
	bpl  25.b		; 10 19
	clc		; 18
	rol $20.b		; 26 20
	eor ($30.b,X)		; 41 30
	clc		; 18
	rti		; 40

	trb $0D1F.w		; 1C 1F 0D
	jsr $F600.w		; 20 00 F6
	bra -110.b		; 80 92
	bcc  48.b		; 90 30
	ldy #$20.b		; A0 20
	rts		; 60

	php		; 08
	tya		; 98
	rts		; 60

	bpl   4.b		; 10 04
	sbc $1CDF1F.l,X		; FF 1F DF 1C
	trb $1ADB.w		; 1C DB 1A
	inc $E4.b,X		; F6 E4
	cld		; D8
	tas		; 1B
	ora $0604.w		; 0D 04 06
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	sed		; F8
	cop $04.b		; 02 04
	cpx #$11.b		; E0 11
	cop $08.b		; 02 08
	ora ($04.b,X)		; 01 04
	sbc $C555DF.l,X		; FF DF 55 C5
	stz $D87B.w		; 9C 7B D8
	cpy #$6D.b		; C0 6D
	adc $30B0.w		; 6D B0 30
	stp		; DB
	inc A		; 1A
	ldy $86.b		; A4 86
	bvc  -2.b		; 50 FE
	dec $C07B.w		; CE 7B C0
	adc $1B30.w		; 6D 30 1B
	sty $4A.b		; 84 4A
	bra  85.b		; 80 55
	eor $A8.b,X		; 55 A8
	tay		; A8
	ora $662D7C.l		; 0F 7C 2D 66
	clc		; 18
	and ($0E.b,S),Y		; 33 0E
	asl $0F.b,X		; 16 0F
	bmi  32.b		; 30 20
	ora ($0F.b,S),Y		; 13 0F
	tsb $57.b		; 04 57
	cmp $AA.b,X		; D5 AA
	tax		; AA
	adc [$01.b],Y		; 77 01
	cmp #$35.b		; C9 35
	cli		; 58
	lda ($72.b),Y		; B1 72
	sbc $CA.b		; E5 CA
	ora ($F9.b,X)		; 01 F9
	inc $CE.b,X		; F6 CE
	lda $FBFD7E.l,X		; BF 7E FD FB
	sbc [$5D.b],Y		; F7 5D
	brk $2A.b		; 00 2A
	brk $05.b		; 00 05
	asl $01.b		; 06 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora ($CF.b,X)		; 01 CF
	sbc $0EAA0A.l,X		; FF 0A AA 0E
	beq  19.b		; F0 13
	bpl -124.b		; 10 84
	bra  99.b		; 80 63
	rts		; 60

	bit #$80.b		; 89 80
	ora [$41.b]		; 07 41
	cop $20.b		; 02 20
	sbc $408301.l,X		; FF 01 83 40
	rol $10.b		; 26 10
	sbc $F7D7FF.l,X		; FF FF D7 F7
	sta $6040BF.l,X		; 9F BF 40 60
	bcc  48.b		; 90 30
	tay		; A8
	bra -112.b		; 80 90
	cli		; 58
	ldy $0C.b		; A4 0C
	tax		; AA
	ldy #$80.b		; A0 80
	stx $9F.b,Y		; 96 9F
	sbc $60C810.l,X		; FF 10 C8 60
	bra   4.b		; 80 04
	cpy #$32.b		; C0 32
	clc		; 18
	rts		; 60

	ora ($30.b,X)		; 01 30
	sbc $FDF7FF.l,X		; FF FF F7 FD
	xce		; FB
	xce		; FB
	ora #$0C.b		; 09 0C
	ora $01.b,X		; 15 01
	ora #$1A.b		; 09 1A
	bit $30.b		; 24 30
	eor [$04.b],Y		; 57 04
	and $68.b,S		; 23 68
	sta $D2.b,S		; 83 D2
	sbc ($FF.b),Y		; F1 FF
	ora ($06.b,S),Y		; 13 06
	ora ($20.b,X)		; 01 20
	ora $4C.b,S		; 03 4C
	clc		; 18
	ora [$80.b]		; 07 80
	ora $1830.w		; 0D 30 18
	cmp $000A0C.l,X		; DF 0C 0A 00
	cmp $C030.w		; CD 30 C0
	rti		; 40

	bra -128.b		; 80 80
	bra  16.b		; 80 10
	bpl 126.b		; 10 7E
	bra -41.b		; 80 D7
	sbc ($8A.b,S),Y		; F3 8A
	brk $62.b		; 00 62
	trb $0203.w		; 1C 03 02
	ora $02.b,S		; 03 02
	ora ($10.b),Y		; 11 10
	ora ($01.b,X)		; 01 01
	php		; 08
	php		; 08
	sbc $0103.w,X		; FD 03 01
	cmp $2AAA7F.l,X		; DF 7F AA 2A
	lsr $38.b		; 46 38
	and [$24.b]		; 27 24
	ora $D7.b,S		; 03 D7
	trb $0F.b		; 14 0F
	php		; 08
	rol $D802.w		; 2E 02 D8
	tsb $80.b		; 04 80
	sbc $0103.w,X		; FD 03 01
	sta ($02.b,X)		; 81 02
	tsb $C8.b		; 04 C8
	cmp [$14.b],Y		; D7 14
	lda $40.b,S		; A3 40
	jmp ($407C.w,X)		; 7C 7C 40
	bra -128.b		; 80 80
	.db $42, $02		; 42 02
	jsr $FE0C.w		; 20 0C FE
	bra   1.b		; 80 01
	cop $D7.b		; 02 D7
	eor $EB.b,X		; 55 EB
	ply		; 7A
	dey		; 88
	cop $4C.b		; 02 4C
	cpx $F1.b		; E4 F1
	ora ($B8.b,X)		; 01 B8
	eor $248C.w,X		; 5D 8C 24
	ora ($70.b,X)		; 01 70
	pha		; 48
	cpx $01.b		; E4 01
	bmi  24.b		; 30 18
	tsb $8401.w		; 0C 01 84
	ora ($FF.b,X)		; 01 FF
	cmp $72575F.l,X		; DF 5F 57 72
	ora #$12.b		; 09 12
	ora $71.b,S		; 03 71
	bpl  80.b		; 10 50
	rts		; 60

	adc ($85.b),Y		; 71 85
	adc ($02.b)		; 72 02
	bvs 115.b		; 70 73
	ora ($F6.b,X)		; 01 F6
	asl $01.b		; 06 01
	ora ($10.b,X)		; 01 10
	rts		; 60

	ldy $F804.w,X		; BC 04 F8
	sed		; F8
	sed		; F8
	adc $02BF00.l,X		; 7F 00 BF 02
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $010701.l		; 0F 01 07 01
	ora $03.b,S		; 03 03
	ora ($67.b,X)		; 01 67
	adc $6537.w,Y		; 79 37 65
	clv		; B8
	sed		; F8
	rti		; 40

	tsb $14.b		; 04 14
	bcc -128.b		; 90 80
	rti		; 40

	.db $42, $20		; 42 20
	bcc  -4.b		; 90 FC
	pha		; 48
	bmi   2.b		; 30 02
	bra  84.b		; 80 54
	sta ($20.b,X)		; 81 20
	cmp $FD.b,S		; C3 FD
	ora $FF.b,S		; 03 FF
	ror $407E.w,X		; 7E 7E 40
	ora ($1E.b,X)		; 01 1E
	bit $3E40.w		; 2C 40 3E
	rti		; 40

	rol $0C80.w,X		; 3E 80 0C
	sbc $0C0C0C.l,X		; FF 0C 0C 0C
	and ($3E.b)		; 32 3E
	eor ($7F.b,X)		; 41 7F
	bra 106.b		; 80 6A
	sbc $01D7FC.l,X		; FF FC D7 01
	asl $0C.b		; 06 0C
	tsb $0E.b		; 04 0E
	trb $020B.w		; 1C 0B 02
	ora ($02.b,X)		; 01 02
	ora ($8B.b,X)		; 01 8B
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $82.b,S		; 03 82
	ora $03010C.l		; 0F 0C 01 03
	phd		; 0B
	phb		; 8B
	inc $D5FF.w,X		; FE FF D5
	ora [$E0.b],Y		; 17 E0
	cpy #$F8.b		; C0 F8
	iny		; C8
	pea $7F64.w		; F4 64 7F
	sed		; F8
	sbc [$D2.b]		; E7 D2
	ldx $FF4C.w,Y		; BE 4C FF
	and ($FF.b,S),Y		; 33 FF
	sbc ($E0.b,S),Y		; F3 E0
	sed		; F8
	sed		; F8
	rts		; 60

	ora $806080.l,X		; 1F 80 60 80
	bra  -2.b		; 80 FE
	ora ($55.b,X)		; 01 55
	cpx #$F8.b		; E0 F8
	cli		; 58
	and [$20.b]		; 27 20
	cmp $0CE175.l,X		; DF 75 E1 0C
	cpx #$78.b		; E0 78
	adc $E80014.l,X		; 7F 14 00 E8
	brk $F0.b		; 00 F0
	bra 103.b		; 80 67
	cmp $18.b,S		; C3 18
	bra -128.b		; 80 80
	sbc [$E7.b]		; E7 E7
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	bra -128.b		; 80 80
	sbc $5515FF.l,X		; FF FF 15 55
	bpl 116.b		; 10 74
	stz $14.b		; 64 14
	bpl  14.b		; 10 0E
	asl $6A7E.w		; 0E 7E 6A
	jmp $624E64.l		; 5C 64 4E 62
	and $0539.w,X		; 3D 39 05
	ora $0C10.w,X		; 1D 10 0C
	bit $1A24.w,X		; 3C 24 1A
	tsb $88.b		; 04 88
	sbc $FCC0.w,Y		; F9 C0 FC
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	ora $01.b,S		; 03 01
	cop $0F.b		; 02 0F
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	sbc $4455FF.l,X		; FF FF 55 44
	ora ($0D.b,X)		; 01 0D
	asl $1C1B.w		; 0E 1B 1C
	ora [$18.b],Y		; 17 18
	rol $3E3E.w		; 2E 3E 3E
	and $5C.b,X		; 35 5C
	adc $687D.w,Y		; 79 7D 68
	tsx		; BA
	tya		; 98
	tsb $08.b		; 04 08
	bpl  33.b		; 10 21
	.db $42, $FF		; 42 FF
	inc $5FFF.w,X		; FE FF 5F
	phx		; DA
	eor $5592.w,Y		; 59 92 55
	bcs  53.b		; B0 35
	jsr $46A5.w		; 20 A5 46
	bpl -122.b		; 10 86
	bcs   6.b		; B0 06
	sei		; 78
	stx $7E02.w		; 8E 02 7E
	ora ($7A.b)		; 12 7A
	ora ($7A.b)		; 12 7A
	asl A		; 0A
	sbc ($18.b)		; F2 18
	cpx #$38.b		; E0 38
	cpy #$78.b		; C0 78
	bcs  -1.b		; B0 FF
	ora ($55.b,X)		; 01 55
	brk $78.b		; 00 78
	stx $C280.w		; 8E 80 C2
	pha		; 48
	cpy #$80.b		; C0 80
	bra  64.b		; 80 40
	bcs -128.b		; B0 80
	rti		; 40

	bra -120.b		; 80 88
	sbc $FCC0.w,Y		; F9 C0 FC
	bra -64.b		; 80 C0
	bra  96.b		; 80 60
	cpy #$B0.b		; C0 B0
	rts		; 60

	cli		; 58
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl -17.b		; 10 EF
	ora [$55.b]		; 07 55
	ora ($90.b,X)		; 01 90
	inc $02.b,X		; F6 02
	adc $8C9F.w,X		; 7D 9F 8C
	adc ($79.b,S),Y		; 73 79
	ora $06F80F.l		; 0F 0F F8 06
	sta ($78.b,X)		; 81 78
	ora [$A0.b]		; 07 A0
	nop		; EA
	cpy #$FF.b		; C0 FF
	ora ($02.b,X)		; 01 02
	ora $1A.b		; 05 1A
	and $7210.w,X		; 3D 10 72
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	ora $FF0D.w		; 0D 0D FF
	sbc $415555.l,X		; FF 55 55 41
	sta $37CB.w		; 8D CB 37
	rol $DE.b		; 26 DE
	sty $7D.b		; 84 7D
	lda ($F6.b,X)		; A1 F6
	lsr $E8.b		; 46 E8
	pha		; 48
	bcs  48.b		; B0 30
	cpy #$F3.b		; C0 F3
	jsr ($C1F0.w,X)		; FC F0 C1
	asl $08.b		; 06 08
	bmi -64.b		; 30 C0
	plx		; FA
	asl A		; 0A
	jsr ($0103.w,X)		; FC 03 01
	asl $7007.w		; 0E 07 70
	rol $7F80.w,X		; 3E 80 7F
	bra   1.b		; 80 01
	ora ($0F.b,X)		; 01 0F
	ora $807F7F.l		; 0F 7F 7F 80
	bra -41.b		; 80 D7
	cmp $320555.l		; CF 55 05 32
	sbc $363E3E.l,X		; FF 3E 3E 36
	php		; 08
	plp		; 28
	stx $0A.b,Y		; 96 0A
	ora ($21.b,X)		; 01 21
	rti		; 40

	and ($7F.b)		; 32 7F
	adc $01577B.l,X		; 7F 7B 57 01
	sbc $5555FF.l,X		; FF FF 55 55
	asl $A7.b		; 06 A7
	lda $DECF.w		; AD CF DE
	sbc $DADAE8.l		; EF E8 DA DA
	sta ($AB.b,S),Y		; 93 AB
	phb		; 8B
	tyx		; BB
	phx		; DA
	cmp $9B95.w,Y		; D9 95 9B
	jsr $3030.w		; 20 30 30
	eor #$20.b		; 49 20
	adc ($4C.b,X)		; 61 4C
	sbc $F555FF.l,X		; FF FF 55 F5
	eor $1CFB.w,Y		; 59 FB 1C
	lda [$ED.b],Y		; B7 ED
	ror $B6.b,X		; 76 B6
	lda [$81.b],Y		; B7 81
	txy		; 9B
	ora ($77.b,X)		; 01 77
	ldx #$9C.b		; A2 9C
	lda $097FEE.l		; AF EE 7F 09
	txy		; 9B
	ora ($1A.b,X)		; 01 1A
	ror $3E.b,X		; 76 3E
	rol $7171.w,X		; 3E 71 71
	sbc $F7D5FF.l,X		; FF FF D5 F7
	asl $E7.b		; 06 E7
	cpx #$17.b		; E0 17
	asl $7D.b,X		; 16 7D
	eor ($A2.b),Y		; 51 A2
	stx $5B.b,Y		; 96 5B
	sta $FD.b,S		; 83 FD
	tas		; 1B
	cmp $646BF9.l		; CF F9 6B 64
	inc $6B.b,X		; F6 6B
	sbc ($70.b,S),Y		; F3 70
	lda $423C.w,X		; BD 3C 42
	pea $A220.w		; F4 20 A2
	bcs  -1.b		; B0 FF
	sbc $6057FD.l,X		; FF FD 57 60
	sbc $6FFF9F.l		; EF 9F FF 6F
	sbc [$5C.b],Y		; F7 5C
	jsr ($DE93.w,X)		; FC 93 DE
	dec A		; 3A
	sta $5E37.w,X		; 9D 37 5E
	ror $B6.b		; 66 B6
	stz $07.b,X		; 74 07
	ora [$0A.b]		; 07 0A
	cop $83.b		; 02 83
	ora $05.b,S		; 03 05
	ora ($A2.b,X)		; 01 A2
	adc ($C0.b,X)		; 61 C0
	inc $BDFF.w,X		; FE FF BD
	eor $F0D0D0.l,X		; 5F D0 D0 F0
	bmi  56.b		; 30 38
	sed		; F8
	sed		; F8
	plp		; 28
	sec		; 38
	iny		; C8
	pla		; 68
	php		; 08
	bne -112.b		; D0 90
	ldy #$C0.b		; A0 C0
	cpy #$80.b		; C0 80
	beq -128.b		; F0 80
	rti		; 40

	cpy #$C0.b		; C0 C0
	ldy #$80.b		; A0 80
	bvc  32.b		; 50 20
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$04.b]		; 07 04
	ora $15FFFF.l,X		; 1F FF FF 15
	eor $03.b,X		; 55 03
	and $B1CF32.l,X		; 3F 32 CF B1
	adc $24FECD.l,X		; 7F CD FE 24
	xce		; FB
	ora $EC.b,S		; 03 EC
	tsb $7070.w		; 0C 70 70
	bra -125.b		; 80 83
	bit $03C0.w,X		; 3C C0 03
	tsb $8070.w		; 0C 70 80
	tax		; AA
	ldx $3C0C.w,Y		; BE 0C 3C
	ora ($06.b,X)		; 01 06
	ora $607830.l,X		; 1F 30 78 60
	dey		; 88
	rti		; 40

	bcs -64.b		; B0 C0
	ora ($01.b,X)		; 01 01
	bvs 112.b		; 70 70
	cpy #$C0.b		; C0 C0
	sbc $5555FF.l,X		; FF FF 55 55
	ora ($0F.b,X)		; 01 0F
	ora [$3F.b]		; 07 3F
	rol $372F.w,X		; 3E 2F 37
	pha		; 48
	sei		; 78
	lsr $3A76.w,X		; 5E 76 3A
	jsl $BC4454.l		; 22 54 44 BC
	lda $170E.w,X		; BD 0E 17
	sec		; 38
	jsr $241C.w		; 20 1C 24
	sei		; 78
	tax		; AA
	asl A		; 0A
	brk $00.b		; 00 00
	cpy #$20.b		; C0 20
	bpl  16.b		; 10 10
	jsr $FF40.w		; 20 40 FF
	ora [$55.b]		; 07 55
	ora ($60.b,X)		; 01 60
	stz $C4.b		; 64 C4
	iny		; C8
	dey		; 88
	bcc  80.b		; 90 50
	jsr $C060.w		; 20 60 C0
	cpy #$F8.b		; C0 F8
	php		; 08
	bpl  96.b		; 10 60
	bra  67.b		; 80 43
	inc A		; 1A
	ora [$0B.b],Y		; 17 0B
	sei		; 78
	sei		; 78
	rti		; 40

	tsb $40.b		; 04 40
	tsb $70.b		; 04 70
	jsr ($0840.w,X)		; FC 40 08
	jsr $8002.w		; 20 02 80
	phk		; 4B
	jsr $241B.w		; 20 1B 24
	sei		; 78
	sei		; 78
	tsb $04.b		; 04 04
	cop $38.b		; 02 38
	jsr ($2002.w,X)		; FC 02 20
	tsb $01.b		; 04 01
	inc $55FF.w,X		; FE FF 55
	eor $03.b,X		; 55 03
	cop $0D.b		; 02 0D
	asl A		; 0A
	adc [$61.b],Y		; 77 61
	sta $90FE01.l,X		; 9F 01 FE 90
	sbc [$07.b]		; E7 07
	sei		; 78
	sei		; 78
	bra -128.b		; 80 80
	ora $0C.b,S		; 03 0C
	bvs -128.b		; 70 80
	ora [$78.b]		; 07 78
	bra -24.b		; 80 E8
	lda $803FF0.l		; AF F0 3F 80
	rts		; 60

	rti		; 40

	stz $0338.w		; 9C 38 03
	ora [$F0.b]		; 07 F0
	asl $8001.w		; 0E 01 80
	bra -32.b		; 80 E0
	cpx #$FC.b		; E0 FC
	jsr ($0F0F.w,X)		; FC 0F 0F
	ora ($01.b,X)		; 01 01
	brk $FE.b		; 00 FE
	ora ($54.b,X)		; 01 54
	bra -128.b		; 80 80
	rts		; 60

	ldy #$D0.b		; A0 D0
	bmi -88.b		; 30 A8
	dey		; 88
	bra  96.b		; 80 60
	bcc -66.b		; 90 BE
	tad		; 5B
	ror $AA.b		; 66 AA
	lda [$AA.b]		; A7 AA
	stx $AA.b,Y		; 96 AA
	tax		; AA
	lda #$AA.b		; A9 AA
	tax		; AA
	ror A		; 6A
	lda #$AA.b		; A9 AA
	txs		; 9A
	plx		; FA
	lda $A7.b,X		; B5 A7
	adc [$FE.b],Y		; 77 FE
	cmp $037ADD.l,X		; DF DD 7A 03
	ora ($00.b),Y		; 11 00
	cop $F8.b		; 02 F8
	ora $4000.w,X		; 1D 00 40
	brk $80.b		; 00 80
	ora $500008.l		; 0F 08 00 50
	brk $A0.b		; 00 A0
	sbc $7F80BF.l,X		; FF BF 80 7F
	brk $50.b		; 00 50
	brk $A0.b		; 00 A0
	cpy #$78.b		; C0 78
	rti		; 40

	dey		; 88
	bvc  -3.b		; 50 FD
	ldy #$AA.b		; A0 AA
	ora $06.b,S		; 03 06
	ora $011A.w		; 0D 1A 01
	bit $03.b,X		; 34 03
	and $0202.w		; 2D 02 02
	ora $0B.b		; 05 0B
	ora [$2F.b],Y		; 17 2F
	ora $AAFFFD.l,X		; 1F FD FF AA
	brk $3B.b		; 00 3B
	cmp ($06.b)		; D2 06
	pha		; 48
	clc		; 18
	jsr $8260.w		; 20 60 82
	.db $82, $32, $32		; 82 32 32
	cmp ($C1.b,X)		; C1 C1
	bpl  16.b		; 10 10
	and [$B8.b]		; 27 B8
	cpx #$80.b		; E0 80
	ora ($FF.b,X)		; 01 FF
	cop $00.b		; 02 00
	sbc $380707.l,X		; FF 07 07 38
	sec		; 38
	cpy #$C0.b		; C0 C0
	bvs 112.b		; 70 70
	sbc $AAFF55.l,X		; FF 55 FF AA
	brk $EE.b		; 00 EE
	ora $06.b,X		; 15 06
	ora $C1.b,S		; 03 C1
	cpy #$20.b		; C0 20
	jsr $5858.w		; 20 58 58
	ldy #$A0.b		; A0 A0
	sbc ($0F.b)		; F2 0F
	ora $01.b,S		; 03 01
	mvn $A8,$45		; 54 45 A8
	.db $82, $F0, $AE		; 82 F0 AE
	lda $05.b		; A5 05
	ora ($60.b,X)		; 01 60
	bpl -14.b		; 10 F2
	stz $1083.w,X		; 9E 83 10
	rti		; 40

	eor $80.b,X		; 55 80
	tax		; AA
	bra -64.b		; 80 C0
	rts		; 60

	bcs -40.b		; B0 D8
	bra  64.b		; 80 40
	ldy #$D0.b		; A0 D0
	inx		; E8
	rti		; 40

	sbc $010000.l,X		; FF 00 00 01
	ora $01.b,S		; 03 01
	ora $02.b		; 05 02
	asl A		; 0A
	ora $07.b		; 05 07
	ora $00FFC0.l		; 0F C0 FF 00
	cpy #$FF.b		; C0 FF
	ora ($FD.b,X)		; 01 FD
	inc $0FF7.w,X		; FE F7 0F
	phd		; 0B
	pea $8BF7.w		; F4 F7 8B
	ora $03.b,S		; 03 03
	brk $BF.b		; 00 BF
	brk $80.b		; 00 80
	cpy #$40.b		; C0 40
	jsr $10E0.w		; 20 E0 10
	beq 112.b		; F0 70
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	cop $00.b		; 02 00
	eor $00.b,X		; 55 00
	tax		; AA
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	eor ($55.b),Y		; 51 55
	tax		; AA
	php		; 08
	adc $404080.l,X		; 7F 80 40 40
	bra -128.b		; 80 80
	cpy #$5F.b		; C0 5F
	rts		; 60

	bra -64.b		; 80 C0
	bra  63.b		; 80 3F
	mvn $00,$02		; 54 02 00
	sbc #$16.b		; E9 16
	ora ($12.b)		; 12 12
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	ora ($FF.b),Y		; 11 FF
	sbc $380275.l,X		; FF 75 02 38
	sbc ($0C.b,S),Y		; F3 0C
	trb $14.b		; 14 14
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	ora ($83.b,X)		; 01 83
	.db $82, $01, $04		; 82 01 04
	sbc $820101.l,X		; FF 01 01 82
	eor $82826D.l		; 4F 6D 82 82
	cmp $303030.l		; CF 30 30 30
	rti		; 40

	rts		; 60

	jsr $8080.w		; 20 80 80
	eor $FF.b		; 45 FF
	jsr $40E0.w		; 20 E0 40
	eor $D5.b,X		; 55 D5
	txa		; 8A
	tay		; A8
	sbc $040818.l		; EF 18 08 04
	tsb $24.b		; 04 24
	ldy #$9E.b		; A0 9E
	rti		; 40

	sbc [$0C.b],Y		; F7 0C
	asl $10.b		; 06 10
	pla		; 68
	stz $5415.w,X		; 9E 15 54
	rol A		; 2A
	ldy #$EE.b		; A0 EE
	ora $04.b,X		; 15 04
	ora ($05.b,X)		; 01 05
	ora $F2.b		; 05 F2
	asl $0303.w		; 0E 03 03
	ora $FF.b,S		; 03 FF
	sbc $385515.l,X		; FF 15 55 38
	and [$D1.b]		; 27 D1
	and ($10.b),Y		; 31 10
	beq  40.b		; F0 28
	php		; 08
	rts		; 60

	jsr $E141.w		; 20 41 E1
	adc ($A1.b,X)		; 61 A1
	.db $62, $C2, $0F		; 62 C2 0F
	ora #$08.b		; 09 08
	bpl  17.b		; 10 11
	ora ($10.b,X)		; 01 10
	sbc $02AFFF.l,X		; FF FF AF 02
	jsr ($DF63.w,X)		; FC 63 DF
	rts		; 60

	jsr ($F003.w,X)		; FC 03 F0
	ora $BF3FCD.l		; 0F CD 3F BF
	adc $FFFF7F.l,X		; 7F 7F FF FF
	sbc $407760.l,X		; FF 60 77 40
	sed		; F8
	beq -64.b		; F0 C0
	bra 127.b		; 80 7F
	eor $0A.b,X		; 55 0A
	brk $F8.b		; 00 F8
	php		; 08
	ora [$08.b]		; 07 08
	sbc $9070FF.l,X		; FF FF 70 90
	and $C02010.l		; 2F 10 20 C0
	cpy #$F4.b		; C0 F4
	sbc $800001.l		; EF 01 00 80
	sei		; 78
	cpx #$07.b		; E0 07
	inc $FFE0.w,X		; FE E0 FF
	and $02033E.l,X		; 3F 3E 03 02
	ora ($FF.b,X)		; 01 FF
	xce		; FB
	sbc $070001.l		; EF 01 00 07
	cop $07.b		; 02 07
	ora $1F3307.l		; 0F 07 33 1F
	cmp #$F2.b		; C9 F2
	sep #$06		; E2 06
	ora [$60.b]		; 07 60
	sbc ($7F.b,X)		; E1 7F
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	eor $55.b,X		; 55 55
	tax		; AA
	txa		; 8A
	tsb $2914.w		; 0C 14 29
	ora ($4C.b)		; 12 4C
	jsr $8010.w		; 20 10 80
	phd		; 0B
	trb $3038.w		; 1C 38 30
	rti		; 40

	rts		; 60

	bra  21.b		; 80 15
	bvc   2.b		; 50 02
	bra  63.b		; 80 3F
	rti		; 40

	bra   2.b		; 80 02
	asl A		; 0A
	sbc $F55107.l,X		; FF 07 51 F5
	jsl $10EF77.l		; 22 77 EF 10
	plp		; 28
	sec		; 38
	trb $0148.w		; 1C 48 01
	ldy #$03.b		; A0 03
	inc $1010.w,X		; FE 10 10
	plp		; 28
	php		; 08
	tsb $06.b		; 04 06
	jsr $7FFF.w		; 20 FF 7F
	sbc $81BE55.l,X		; FF 55 BE 81
	adc [$02.b],Y		; 77 02
	eor $3C41.w,X		; 5D 41 3C
	cpy #$3D.b		; C0 3D
	and $56.b,S		; 23 56
	ldy $FD.b		; A4 FD
	sty $FE.b		; 84 FE
	ora ($78.b,X)		; 01 78
	bra  56.b		; 80 38
	.db $82, $30, $03		; 82 30 03
	bpl -64.b		; 10 C0
	tad		; 5B
	ora $01.b,S		; 03 01
	sbc $F7.b,X		; F5 F7
	nop		; EA
	ror $FFF7.w,X		; 7E F7 FF
	inc $FF01.w		; EE 01 FF
	ora ($7A.b,X)		; 01 7A
	ora ($BE.b,X)		; 01 BE
	cmp [$01.b],Y		; D7 01
	jsr ($7E01.w,X)		; FC 01 7E
	ror $7C.b,X		; 76 7C
	ora ($6C.b,X)		; 01 6C
	cpx $6901.w		; EC 01 69
	bra  41.b		; 80 29
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	eor [$FF.b],Y		; 57 FF
	adc [$BB.b],Y		; 77 BB
	ldy #$A8B6.w		; A0 B6 A8
	phd		; 0B
	tsb $8405.w		; 0C 05 84
	.db $82, $7E, $3E		; 82 7E 3E
	dec $4070.w		; CE 70 40
	ora [$B0.b]		; 07 B0
	tsb $08.b		; 04 08
	cop $84.b		; 02 84
	ora ($FC.b,X)		; 01 FC
	bra -66.b		; 80 BE
	rti		; 40

	bra 126.b		; 80 7E
	eor ($00.b),Y		; 51 00
	.db $82, $02, $FF		; 82 02 FF
	asl $06.b		; 06 06
	sbc $FF0101.l,X		; FF 01 01 FF
	sbc $675145.l,X		; FF 45 51 67
	tya		; 98
	cmp ($41.b,X)		; C1 41
	bvc  16.b		; 50 10
	pla		; 68
	tay		; A8
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	stz $24.b		; 64 24
	and ($11.b),Y		; 31 11
	and $1026.w,X		; 3D 26 10
	tsb $0808.w		; 0C 08 08
	ora $31.b,S		; 03 31
	brk $00.b		; 00 00
	sbc $0E04FF.l,X		; FF FF 04 0E
	tsb $13.b		; 04 13
	cmp ($00.b),Y		; D1 00
	brk $FF.b		; 00 FF
	sbc $211008.l,X		; FF 08 10 21
	clc		; 18
	bpl -41.b		; 10 D7
	sbc $5000.w,X		; FD 00 50
	sbc $4120FF.l,X		; FF FF 20 41
	and ($01.b,X)		; 21 01
	.db $82, $82, $83		; 82 82 83
	ora ($01.b,X)		; 01 01
	tsb $01.b		; 04 01
	ora ($01.b,X)		; 01 01
	sbc $9000FF.l,X		; FF FF 00 90
	eor $DEAFBF.l		; 4F BF AF DE
	lda $C73F4F.l,X		; BF 4F 3F C7
	lsr $FEA7.w,X		; 5E A7 FE
	eor [$0F.b]		; 47 0F
	adc [$5F.b],Y		; 77 5F
	sbc [$80.b],Y		; F7 80
	jsr $FDFF.w		; 20 FF FD
	brk $00.b		; 00 00
	rts		; 60

	ldy #$E0C0.w		; A0 C0 E0
	bne -48.b		; D0 D0
	ldy #$2070.w		; A0 70 20
	dey		; 88
	php		; 08
	bpl  24.b		; 10 18
	bne -128.b		; D0 80
	eor $55.b,X		; 55 55
	cop $AA.b		; 02 AA
	lda $540E.w,X		; BD 0E 54
	jsr $6068.w		; 20 68 60
	bvc  49.b		; 50 31
	adc $406020.l,X		; 7F 20 60 40
	jsr $3FFF.w		; 20 FF 3F
	sbc $08EA17.l,X		; FF 17 EA 08
	and $360C.w,Y		; 39 0C 36
	asl A		; 0A
	and $187805.l		; 2F 05 78 18
	tas		; 1B
	bpl -126.b		; 10 82
	ora [$07.b]		; 07 07
	beq  12.b		; F0 0C
	bpl  26.b		; 10 1A
	jsr $2005.w		; 20 05 20
	clc		; 18
	jsr $0710.w		; 20 10 07
	adc $DFDFAA.l,X		; 7F AA DF DF
	sbc $DF12.w,X		; FD 12 DF
	eor $4F0B92.l,X		; 5F 92 0B 4F
	eor ($02.b,X)		; 41 02
	ora ($06.b,X)		; 01 06
	and #$9A01.w		; 29 01 9A
	cop $08.b		; 02 08
	ora $05.b		; 05 05
	eor ($01.b,X)		; 41 01
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	ora $FF.b		; 05 FF
	sbc $7FFE5F.l,X		; FF 5F FE 7F
	lda ($A1.b,S),Y		; B3 A1
	tya		; 98
	and ($52.b,X)		; 21 52
	cop $03.b		; 02 03
	jsl $207058.l		; 22 58 70 20
	bne   2.b		; D0 02
	cpx #$8064.w		; E0 64 80
	lda ($F0.b)		; B2 F0
	iny		; C8
	cop $01.b		; 02 01
	php		; 08
	tsb $04.b		; 04 04
	beq -14.b		; F0 F2
	bvs 112.b		; 70 70
	eor $45.b,X		; 55 45
	ora $C4.b,X		; 15 C4
	sbc $040410.l		; EF 10 04 04
	ora ($03.b,X)		; 01 03
	ora $F3.b,S		; 03 F3
	php		; 08
	tsb $01.b		; 04 01
	ora $01.b,S		; 03 01
	adc $D5FF.w,X		; 7D FF D5
	plx		; FA
	xce		; FB
	wai		; CB
	sei		; 78
	cmp ($1C.b,S),Y		; D3 1C
	inc $FD.b		; E6 FD
	jsr $D0FF.w		; 20 FF D0
	tsa		; 3B
	jsr $D079.w		; 20 79 D0
	jsr ($E084.w,X)		; FC 84 E0
	sed		; F8
	ora ($03.b,X)		; 01 03
	cmp $C4.b,S		; C3 C4
	cpx #$F0E6.w		; E0 E6 F0
	eor $55.b,X		; 55 55
	txa		; 8A
	tay		; A8
	sbc $100111.l		; EF 11 01 10
	bvc -32.b		; 50 E0
	cpx #$FFC0.w		; E0 C0 FF
	bpl  48.b		; 10 30
	rts		; 60

	cpy #$FF80.w		; C0 80 FF
	sbc $FF5005.l,X		; FF 05 50 FF
	beq  10.b		; F0 0A
	asl A		; 0A
	pha		; 48
	bra  97.b		; 80 61
	cmp ($60.b,X)		; C1 60
	rts		; 60

	lsr A		; 4A
	ora ($08.b)		; 12 08
	php		; 08
	bpl  16.b		; 10 10
	ora [$04.b]		; 07 04
	trb $04.b		; 14 04
	cmp [$F5.b],Y		; D7 F5
	brk $00.b		; 00 00
	sbc $02F7.w,Y		; F9 F7 02
	bcc  89.b		; 90 59
	clc		; 18
	jsl $303080.l		; 22 80 30 30
	eor $03.b,S		; 43 03
	sbc ($FF.b,S),Y		; F3 FF
	brk $D4.b		; 00 D4
	sta $B4EE.w,X		; 9D EE B4
	bmi  10.b		; 30 0A
	ora $66.b,S		; 03 66
	ror $09.b		; 66 09
	asl $B7B2.w		; 0E B2 B7
	rti		; 40

	eor $02.b,S		; 43 02
	ora $65.b,S		; 03 65
	stz $FF.b		; 64 FF
	cmp $7D5568.l,X		; DF 68 55 7D
	tyx		; BB
	stz $BB.b,X		; 74 BB
	sei		; 78
	lda [$A9.b],Y		; B7 A9
	ror $D6.b,X		; 76 D6
	rtl		; 6B

	lda $DE47.w		; AD 47 DE
	adc $060304.l,X		; 7F 04 03 06
	ora ($04.b,X)		; 01 04
	clc		; 18
	and $FFFFF8.l,X		; 3F F8 FF FF
	phy		; 5A
	tsb $0F.b		; 04 0F
	sbc [$0F.b],Y		; F7 0F
	sbc [$5E.b],Y		; F7 5E
	sta [$DE.b],Y		; 97 DE
	ora [$34.b]		; 07 34
	cmp $D75E6D.l		; CF 6D 5E D7
	clv		; B8
	inc $F001.w,X		; FE 01 F0
	bra  96.b		; 80 60
	cpx #$0780.w		; E0 80 07
	cpx $0000.w		; EC 00 00
	clv		; B8
	bvs  32.b		; 70 20
	bra -128.b		; 80 80
	clc		; 18
	php		; 08
	php		; 08
	eor $54.b,X		; 55 54
	rol A		; 2A
	tax		; AA
	ldx $A052.w		; AE 52 A0
	tsb $40.b		; 04 40
	bpl   4.b		; 10 04
	eor $40A0F0.l,X		; 5F F0 A0 40
	cli		; 58
	bpl  12.b		; 10 0C
	sbc $AAFF5F.l,X		; FF 5F FF AA
	and $0812.w,Y		; 39 12 08
	asl $03.b,X		; 16 03
	ora $010B05.l,X		; 1F 05 0B 01
	ora [$02.b]		; 07 02
	ora ($01.b,X)		; 01 01
	tsb $0D.b		; 04 0D
	cpy #$E009.w		; C0 09 E0
	asl $E6.b		; 06 E6
	asl $F6.b		; 06 F6
	sed		; F8
	jsr ($FBFE.w,X)		; FC FE FB
	phd		; 0B
	sbc $5405.w,X		; FD 05 54
	sbc $800101.l,X		; FF 01 01 80
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$2020.w		; C0 20 20
	inc $8001.w,X		; FE 01 80
	rti		; 40

	jsr $003F.w		; 20 3F 00
	ora $047F00.l,X		; 1F 00 7F 04
	cld		; D8
	bit $58.b,X		; 34 58
	bmi -17.b		; 30 EF
	cpx $EC20.w		; EC 20 EC
	bmi  -9.b		; 30 F7
	sbc $7F33.w,X		; FD 33 7F
	inc $0402.w,X		; FE 02 04
	ora $04.b		; 05 04
	tsb $02.b		; 04 02
	tsb $10.b		; 04 10
	ora ($13.b,X)		; 01 13
	ora $53.b,X		; 15 53
	jsr $03FD.w		; 20 FD 03
	ora $05.b,S		; 03 05
	ora [$01.b]		; 07 01
	ora ($06.b,X)		; 01 06
	ora [$01.b],Y		; 17 01
	jsr $7F7F.w		; 20 7F 7F
	sbc $C0FDFF.l,X		; FF FF FD C0
	inc $E8.b,X		; F6 E8
	sbc $28.b,X		; F5 28
	xce		; FB
	tsx		; BA
	bpl 119.b		; 10 77
	trb $7D.b		; 14 7D
	inx		; E8
	sbc $C8EAE8.l		; EF E8 EA C8
	sbc #$EBC8.w		; E9 C8 EB
	trb $10.b		; 14 10
	jmp.w [$B8D1]		; DC D1 B8
	lda ($30.b,S),Y		; B3 30
	jsl $F701F0.l		; 22 F0 01 F7
	sbc $FD1500.l,X		; FF 00 15 FD
	sbc $225610.l,X		; FF 10 56 22
	eor $19E4.w		; 4D E4 19
	cmp #$3454.w		; C9 54 34
	eor $88DD.w,X		; 5D DD 88
	php		; 08
	tsb $08.b		; 04 08
	and [$FF.b],Y		; 37 FF
	cmp $2E1555.l		; CF 55 15 2E
	cmp ($49.b),Y		; D1 49
	eor #$2020.w		; 49 20 20
	dey		; 88
	dey		; 88
	rti		; 40

	rti		; 40

	bcc -112.b		; 90 90
	jsr $1B20.w		; 20 20 1B
	jsr $4006.w		; 20 06 40
	bra   3.b		; 80 03
	ora ($FF.b,X)		; 01 FF
	adc $E7575C.l,X		; 7F 5C 57 E7
	cld		; D8
	plp		; 28
	jmp ($37B7.w)		; 6C B7 37
	sty $C2.b,X		; 94 C2
	ora ($71.b,S),Y		; 13 71
	bit $20.b		; 24 20
	mvp $44,$04		; 44 04 44
	ora ($01.b,X)		; 01 01
	tsb $32.b		; 04 32
	bvs   1.b		; 70 01
	jsr $4004.w		; 20 04 40
	sbc $5FFF7F.l,X		; FF 7F FF 5F
	adc $FA1C99.l,X		; 7F 99 1C FA
	lsr $CE98.w,X		; 5E 98 CE
	txa		; 8A
	sbc $22C78A.l,X		; FF 8A C7 22
	cmp $DAFF20.l,X		; DF 20 FF DA
.ACCU 16
.INDEX 16
	rep #$FB		; C2 FB
	txs		; 9A
	txy		; 9B
	clv		; B8
	phb		; 8B
	lda ($8B.b)		; B2 8B
	.db $82, $A3, $1A		; 82 A3 1A
	sbc [$FF.b]		; E7 FF
	sbc $F7FF.w,X		; FD FF F7
	adc [$F7.b],Y		; 77 F7
	xce		; FB
	ora $FF07F3.l		; 0F F3 07 FF
	ora $FD.b,S		; 03 FD
	ora ($FF.b,X)		; 01 FF
	ora ($F8.b,X)		; 01 F8
	tsb $F5.b		; 04 F5
	cop $F9.b		; 02 F9
	ora ($F7.b,X)		; 01 F7
	sbc $03FB03.l,X		; FF 03 FB 03
	sbc $F902.w,Y		; F9 02 F9
	jsr ($FE03.w,X)		; FC 03 FE
	sbc $850FFF.l		; EF FF 0F 85
	adc $82.b,X		; 75 82
	cpy $10D4.w		; CC D4 10
	pld		; 2B
	pld		; 2B
	rti		; 40

	jsr $A7A7.w		; 20 A7 A7
	cop $03.b		; 02 03
	plb		; AB
	eor $8098.w		; 4D 98 80
	cld		; D8
	cpy #$A020.w		; C0 20 A0
	cpy #$0FFF.w		; C0 FF 0F
	brk $00.b		; 00 00
	bmi -48.b		; 30 D0
	rts		; 60

	bra  96.b		; 80 60
	ldy #$8040.w		; A0 40 80
	cpy #$8040.w		; C0 40 80
	bra  85.b		; 80 55
	ora ($8A.b,X)		; 01 8A
	cop $04.b		; 02 04
	asl $03.b		; 06 03
	ora $01.b,S		; 03 01
	ora $05.b,S		; 03 05
	cop $01.b		; 02 01
	eor ($55.b),Y		; 51 55
	ldx #$08AA.w		; A2 AA 08
	bpl   8.b		; 10 08
	ldy #$8540.w		; A0 40 85
	rti		; 40

	sbc [$10.b],Y		; F7 10
	php		; 08
	ldy #$C5C0.w		; A0 C0 C5
	rts		; 60

	cmp $5545FF.l,X		; DF FF 45 55
	eor $5050E0.l		; 4F E0 50 50
	sec		; 38
	bmi  40.b		; 30 28
	bmi  20.b		; 30 14
	lsr $08.b		; 46 08
	sta ($06.b),Y		; 91 06
	cop $01.b		; 02 01
	ora $142850.l,X		; 1F 50 28 14
	php		; 08
	asl $01.b		; 06 01
	adc $001540.l		; 6F 40 15 00
	sbc $0304.w,X		; FD 04 03
	asl $02.b		; 06 02
	ora ($80.b,X)		; 01 80
	xce		; FB
	asl $02.b		; 06 02
	sbc $F4.b,X		; F5 F4
	eor ($50.b),Y		; 51 50
	sta $C06060.l,X		; 9F 60 60 C0
	rts		; 60

	cpy #$0301.w		; C0 01 03
	ora ($07.b,X)		; 01 07
	cop $FF.b		; 02 FF
	cpy #$01C0.w		; C0 C0 01
	cop $FF.b		; 02 FF
	rol $0157.w		; 2E 57 01
	inx		; E8
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -128.b		; 30 80
	jsr $8040.w		; 20 40 80
	cpy #$E080.w		; C0 80 E0
	php		; 08
	cpx #$C0C0.w		; E0 C0 C0
	bra -49.b		; 80 CF
	sbc $550000.l,X		; FF 00 00 55
	tsa		; 3B
	trb $200C.w		; 1C 0C 20
	rts		; 60

	rti		; 40

	rti		; 40

	tsb $110C.w		; 0C 0C 11
	bmi  40.b		; 30 28
	sec		; 38
	sbc $000033.l,X		; FF 33 00 00
	cpy #$41FF.w		; C0 FF 41
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora ($84.b,X)		; 01 84
	asl $04.b		; 06 04
	asl $FF.b		; 06 FF
	ora $FB039F.l,X		; 1F 9F 03 FB
	tsb $0E.b		; 04 0E
	cpy $DADA.w		; CC DA DA
	and [$14.b],Y		; 37 14
	ora [$03.b],Y		; 17 03
	ora $0808.w,Y		; 19 08 08
	and $08.b,S		; 23 08
	jsr $0210.w		; 20 10 02
	bpl   1.b		; 10 01
	php		; 08
	ora $F4.b,X		; 15 F4
	ora ($50.b,X)		; 01 50
	sbc $802828.l,X		; FF 28 28 80
	rti		; 40

	bra -96.b		; 80 A0
	rti		; 40

	sbc $F74080.l,X		; FF 80 40 F7
	sbc $5451.w,X		; FD 51 54
	sbc $0B1B08.l,X		; FF 08 1B 0B
	php		; 08
	cpy #$40F0.w		; C0 F0 40
	sbc ($60.b),Y		; F1 60
	jsl $E32431.l		; 22 31 24 E3
	sbc [$08.b],Y		; F7 08
	beq  96.b		; F0 60
	and ($E2.b),Y		; 31 E2
	sbc $011127.l,X		; FF 27 11 01
	sed		; F8
	php		; 08
	cli		; 58
	php		; 08
	rti		; 40

	rti		; 40

	bcs  96.b		; B0 60
	ldy #$8080.w		; A0 80 80
	bra -64.b		; 80 C0
	rti		; 40

	bra   0.b		; 80 00
	sbc $7800.w		; ED 00 78
	ora $FC.b,S		; 03 FC
	ora $9C.b,S		; 03 9C
	bpl  -4.b		; 10 FC
	ora $60.b,S		; 03 60
	jsr ($D5FC.w,X)		; FC FC D5
	lda #$A8AA.w		; A9 AA A8
	ora $0A10.w,X		; 1D 10 0A
	tsb $01.b		; 04 01
	jsr ($0FF0.w,X)		; FC F0 0F
	ora ($12.b,X)		; 01 12
	clc		; 18
	asl $F005.w		; 0E 05 F0
	ora $F59F01.l		; 0F 01 9F F5
	cmp $FF.b,X		; D5 FF
	adc $0101.w,Y		; 79 01 01
	ora ($80.b,X)		; 01 80
	bra  64.b		; 80 40
	rol $4D.b,X		; 36 4D
.ACCU 16
.INDEX 16
	rep #$33		; C2 33
	cmp ($FE.b)		; D2 FE
	ora ($80.b,X)		; 01 80
	rti		; 40

	bra 112.b		; 80 70
	rti		; 40

	rol $4D30.w,X		; 3E 30 4D
	stx $E133.w		; 8E 33 E1
	sbc $D155D3.l,X		; FF D3 55 D1
	and $40A080.l,X		; 3F 80 A0 40
	dec $71B1.w		; CE B1 71
	lsr $2F20.w		; 4E 20 2F
	cpy #$50B0.w		; C0 B0 50
	adc $4EB140.l,X		; 7F 40 B1 4E
	jsr $A0C0.w		; 20 C0 A0
	cpy #$002F.w		; C0 2F 00
	ora $00.b		; 05 00
	inx		; E8
	asl $38A0.w		; 0E A0 38
	cpx #$C0F0.w		; E0 F0 C0
	tda		; 7B
	sbc $0C0000.l,X		; FF 00 00 0C
	ora $08.b,S		; 03 08
	php		; 08
	php		; 08
	bra  64.b		; 80 40
	rti		; 40

	plp		; 28
	pla		; 68
	mvn $7B,$6C		; 54 6C 7B
	xce		; FB
	sbc $0000FF.l,X		; FF FF 00 00
	cop $FC.b		; 02 FC
	asl $FA.b		; 06 FA
	tsb $F8.b		; 04 F8
	tsb $08F4.w		; 0C F4 08
	beq  24.b		; F0 18
	inx		; E8
	bvs -112.b		; 70 90
	cpy #$3340.w		; C0 40 33
	jsr ($4000.w,X)		; FC 00 40
	inc A		; 1A
	ora $0406.w		; 0D 06 04
	ora ($0D.b,S),Y		; 13 0D
	tsb $02.b		; 04 02
	jsr ($080C.w,X)		; FC 0C 08
	sbc $5555F7.l,X		; FF F7 55 55
	eor $382F60.l		; 4F 60 2F 38
	adc ($3E.b)		; 72 3E
	jmp $07671F.l		; 5C 1F 67 07
	bcs 112.b		; B0 70
	bra 111.b		; 80 6F
	beq -97.b		; F0 9F
	cmp [$C1.b]		; C7 C1
	cpx #$7FF8.w		; E0 F8 7F
	sta $FABFF0.l		; 8F F0 BF FA
	ora $00.b,X		; 15 00
	beq   4.b		; F0 04
	cpx #$A008.w		; E0 08 A0
	bmi -32.b		; 30 E0
	sta ($81.b,X)		; 81 81
	ora ($82.b,X)		; 01 82
	cpy #$F802.w		; C0 02 F8
	beq -64.b		; F0 C0
	sbc $000007.l,X		; FF 07 00 00
	bvs  32.b		; 70 20
	bvc -32.b		; 50 E0
	rts		; 60

	cpy #$C060.w		; C0 60 C0
	rti		; 40

	bra -128.b		; 80 80
	sbc $F7FCFF.l,X		; FF FF FC F7
	adc ($73.b,S),Y		; 73 73
	cpy $338C.w		; CC 8C 33
	sbc $68.b,S		; E3 68
	bmi  39.b		; 30 27
	trb $070C.w		; 1C 0C 07
	sty $82.b		; 84 82
	jsr $C021.w		; 20 21 C0
	rti		; 40

	beq  16.b		; F0 10
	sei		; 78
	php		; 08
	ora $020F03.l,X		; 1F 03 0F 02
	ora ($C0.b,X)		; 01 C0
	cpy #$FEBB.w		; C0 BB FE
	asl $FC.b,X		; 16 FC
	sbc $FFC0FF.l,X		; FF FF C0 FF
	ora $C0FFFC.l		; 0F FC FF C0
	adc $87C73B.l,X		; 7F 3B C7 87
	sta $3FC0FF.l,X		; 9F FF C0 3F
	cpy #$3880.w		; C0 80 38
	beq 100.b		; F0 64
	sei		; 78
	sbc $0BFF57.l,X		; FF 57 FF 0B
	jsr ($3338.w,X)		; FC 38 33
	asl $1A.b,X		; 16 1A
	phd		; 0B
	inc $0B06.w,X		; FE 06 0B
	ora ($C3.b,X)		; 01 C3
	sbc ($F8.b,X)		; E1 F8
	stp		; DB
	cpy $CF.b		; C4 CF
	sbc #$F6E7.w		; E9 E7 F6
	ora ($09.b,X)		; 01 09
	tsb $02.b		; 04 02
	ora ($7F.b,X)		; 01 7F
	sbc $78FF6F.l,X		; FF 6F FF 78
	bvs  56.b		; 70 38
	bmi  -8.b		; 30 F8
	bmi  -1.b		; 30 FF
	adc ($07.b,S),Y		; 73 07
	lda $07.b		; A5 07
	cmp $6B86.w,X		; DD 86 6B
	.db $42, $80		; 42 80
	beq -64.b		; F0 C0
	beq  48.b		; F0 30
	cpy #$03F8.w		; C0 F8 03
	sei		; 78
	ora ($38.b,X)		; 01 38
	bra -100.b		; 80 9C
	cpy #$FD00.w		; C0 00 FD
	brk $E8.b		; 00 E8
	bra -32.b		; 80 E0
	bra  -8.b		; 80 F8
	cpx #$F0FE.w		; E0 FE F0
	bra -32.b		; 80 E0
	php		; 08
	sed		; F8
	cmp ($F7.b,S),Y		; D3 F7
	cpy #$7EF1.w		; C0 F1 7E
	.db $42, $03		; 42 03
	tsb $1702.w		; 0C 02 17
	ora $181B1F.l		; 0F 1F 1B 18
	and $010227.l,X		; 3F 27 02 01
	ora $181F07.l		; 0F 07 1F 18
	and $F4FFFD.l,X		; 3F FD FF F4
	sbc $0FF30F.l,X		; FF 0F F3 0F
	adc [$F7.b]		; 67 F7
	bmi  -2.b		; 30 FE
	sta $6EBD.w		; 8D BD 6E
	inc $1DED.w		; EE ED 1D
	sbc $0F03.w,X		; FD 03 0F
	sbc [$18.b],Y		; F7 18
	inc $BDCF.w,X		; FE CF BD
	adc ($EE.b,S),Y		; 73 EE
	ora $E3031D.l,X		; 1F 1D 03 E3
	cpx #$FFC7.w		; E0 C7 FF
	ora ($FF.b,X)		; 01 FF
	and $C0FE.w,X		; 3D FE C0
	ora ($01.b,X)		; 01 01
	eor #$D741.w		; 49 41 D7
	cmp ($FD.b,S),Y		; D3 FD
	sbc ($F0.b)		; F2 F0
	beq  -4.b		; F0 FC
	pha		; 48
	cpy #$30DD.w		; C0 DD 30
	inc $08.b,X		; F6 08
	beq  14.b		; F0 0E
	sbc $5555FF.l,X		; FF FF 55 55
	stz $F67F.w,X		; 9E 7F F6
	sta $DF109F.l		; 8F 9F 10 DF
	rti		; 40

	sbc $D0B720.l		; EF 20 B7 D0
	cmp ($EE.b,S),Y		; D3 EE
	sbc $7FF1.w		; ED F1 7F
	ora $1F3F60.l		; 0F 60 3F 1F
	cmp $FFF2E1.l		; CF E1 F2 FF
	sbc $BE7575.l,X		; FF 75 75 BE
	rti		; 40

	adc $2078.w,Y		; 79 78 20
	rts		; 60

	cmp $45.b		; C5 45
	bcc  48.b		; 90 30
	and $22.b,S		; 23 22
	ora $6218.w		; 0D 18 62
	jsr $7840.w		; 20 40 78
	and ($01.b,X)		; 21 01
	cpy #$2410.w		; C0 10 24
	ora #$2201.w		; 09 01 22
	pea $D0FF.w		; F4 FF D0
	tad		; 5B
	bra -32.b		; 80 E0
	bra  60.b		; 80 3C
	bit $4E46.w		; 2C 46 4E
	eor #$280D.w		; 49 0D 28
	ora ($85.b,X)		; 01 85
	ora ($80.b,X)		; 01 80
	rts		; 60

	jmp $020C.w		; 4C 0C 02
	ora ($81.b,X)		; 01 81
	sty $00.b		; 84 00
	bmi   0.b		; 30 00
	jsr $8080.w		; 20 80 80
	bra  87.b		; 80 57
	sbc $AFFD57.l,X		; FF 57 FD AF
	sbc $1E3C78.l,X		; FF 78 3C 1E
	cmp $61F580.l		; CF 80 F5 61
	ldy #$5F5B.w		; A0 5B 5F
	adc $DF.b,S		; 63 DF
	sbc $0C1830.l,X		; FF 30 18 0C
	asl $C0.b		; 06 C0
	cpy #$20A3.w		; C0 A3 20
	bvc  16.b		; 50 10
	sbc $157FFF.l,X		; FF FF 7F 15
	lda $B89108.l,X		; BF 08 91 B8
	xce		; FB
	bit $5444.w,X		; 3C 44 54
	adc $11.b,X		; 75 11
	sty $05.b		; 84 05
	pla		; 68
	jsr $8081.w		; 20 81 80
	bcs  -8.b		; B0 F8
	pld		; 2B
	ora $42.b,S		; 03 42
	tsb $14.b		; 04 14
	jsr $0101.w		; 20 01 01
	sbc $FFFF.w,X		; FD FF FF
	and $C05FA4.l		; 2F A4 5F C0
	sta $D8CBA0.l		; 8F A0 CB D8
	bpl -10.b		; 10 F6
	cpx #$8401.w		; E0 01 84
	jsr ($FF79.w,X)		; FC 79 FF
	sta ($80.b,X)		; 81 80
	cpx #$F020.w		; E0 20 F0
	bpl  60.b		; 10 3C
	tsb $1F.b		; 04 1F
	ora ($F9.b,X)		; 01 F9
	inc $FF01.w,X		; FE 01 FF
	sbc $3BFDF7.l,X		; FF F7 FD 3B
	jsl $8E232E.l		; 22 2E 23 8E
	bcc -41.b		; 90 D7
	cmp $E8E8.w,Y		; D9 E8 E8
	adc ($74.b)		; 72 74
	lda $DAFE.w,X		; BD FE DA
	rol $E0CC.w		; 2E CC E0
	jsl $151008.l		; 22 08 10 15
	php		; 08
	php		; 08
	.db $82, $04, $45		; 82 04 45
	.db $42, $F2		; 42 F2
	bvs  -1.b		; 70 FF
	ldy $945F.w,X		; BC 5F 94
	sbc $8406F8.l,X		; FF F8 06 84
	eor ($41.b,X)		; 41 41
	and $4F38.w,X		; 3D 38 4F
	eor $010101.l		; 4F 01 01 01
	asl $FE.b		; 06 FE
	ora ($81.b,X)		; 01 81
	rti		; 40

	sec		; 38
	rti		; 40

	ora ($01.b,X)		; 01 01
	cmp $0C.b		; C5 0C
	jmp $8008.w		; 4C 08 80
	cpy #$8080.w		; C0 80 80
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  -1.b		; 80 FF
	and $4D2FD3.l,X		; 3F D3 2F 4D
	lsr $0132.w,X		; 5E 32 01
	cop $10.b		; 02 10
	cop $10.b		; 02 10
	asl $472E.w,X		; 1E 2E 47
	eor ($29.b,X)		; 41 29
	jsr $7F3F.w		; 20 3F 7F
	tsb $0C13.w		; 0C 13 0C
	rol $0113.w		; 2E 13 01
	rti		; 40

	jsr $F7FF.w		; 20 FF F7
	eor $F4CFFD.l,X		; 5F FD CF F4
	stz $0A.b		; 64 0A
	ror $BA01.w,X		; 7E 01 BA
	ora ($D9.b,X)		; 01 D9
	ora ($6B.b,X)		; 01 6B
	lda ($80.b)		; B2 80
	cmp $3840.w,Y		; D9 40 38
	jsr ($03E5.w,X)		; FC E5 03
	and ($19.b,S),Y		; 33 19
	sty $8040.w		; 8C 40 80
	ldx $40.b		; A6 40
	bvc  32.b		; 50 20
	sbc $1FFFFD.l,X		; FF FD FF 1F
	adc $C080FF.l,X		; 7F FF 80 C0
	eor ($70.b,X)		; 41 70
	eor ($AF.b),Y		; 51 AF
	cli		; 58
	phk		; 4B
	eor $10.b,S		; 43 10
	bne   4.b		; D0 04
	sty $FF.b		; 84 FF
	ora $1FC0.w,Y		; 19 C0 1F
	beq -57.b		; F0 C7
	sta $0B0831.l,X		; 9F 31 08 0B
	php		; 08
	tsb $FFC0.w		; 0C C0 FF
	sbc $FA5FFF.l,X		; FF FF 5F FA
	jsr ($0207.w,X)		; FC 07 02
	lda $01.b,S		; A3 01
	lda ($80.b),Y		; B1 80
	trb $60.b		; 14 60
	ora $20.b,X		; 15 20
	lda [$C1.b],Y		; B7 C1
	ldx $41.b		; A6 41
	sbc $0380.w,X		; FD 80 03
	cpy #$E001.w		; C0 01 E0
	sta [$B7.b]		; 87 B7
	adc $601888.l,X		; 7F 88 18 60
	jsr $DF40.w		; 20 40 DF
	sbc $EFF3F7.l,X		; FF F7 F3 EF
	phd		; 0B
	dey		; 88
	php		; 08
	bne  96.b		; D0 60
	cpy #$2060.w		; C0 60 20
	rep #$40		; C2 40
	inc A		; 1A
	cmp ($10.b,X)		; C1 10
.ACCU 16
.INDEX 16
	rep #$F3		; C2 F3
	ora ($08.b,X)		; 01 08
	bra   3.b		; 80 03
	rti		; 40

	cpy #$20E0.w		; C0 E0 20
	eor #$5202.w		; 49 02 52
	ora ($07.b,X)		; 01 07
	sbc $FC37.w,X		; FD 37 FC
	xce		; FB
	sbc $8A8204.l		; EF 04 82 8A
	bvs  42.b		; 70 2A
	tay		; A8
	cmp ($C8.b,S),Y		; D3 C8
	sbc $4F.b		; E5 4F
	ora $C002.w		; 0D 02 C0
	ror $90.b		; 66 90
	.db $82, $60, $09		; 82 60 09
	bra  -1.b		; 80 FF
	sbc $8057FA.l,X		; FF FA 57 80
	bra  96.b		; 80 60
	rts		; 60

	cli		; 58
	sec		; 38
	asl $2E.b		; 06 2E
	eor $280B.w		; 4D 0B 28
	cop $B5.b		; 02 B5
	php		; 08
	sta $18.b,X		; 95 18
	bra  96.b		; 80 60
	cpx #$1818.w		; E0 18 18
	asl $76.b		; 06 76
	ora ($32.b,X)		; 01 32
	ora [$8C.b]		; 07 8C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	bra -128.b		; 80 80
	bra  -1.b		; 80 FF
	and $19077F.l,X		; 3F 7F 07 19
	ora ($14.b)		; 12 14
	inc A		; 1A
	txa		; 8A
	tsb $0465.w		; 0C 65 04
	ora ($02.b),Y		; 11 02
	cop $02.b		; 02 02
	ora #$E701.w		; 09 01 E7
	ora [$14.b]		; 07 14
	tsb $0A.b		; 04 0A
	cop $04.b		; 02 04
	ora ($01.b,X)		; 01 01
	cop $FF.b		; 02 FF
	sbc $0CDED3.l,X		; FF D3 DE 0C
	adc #$4048.w		; 69 48 40
	cmp $1509.w		; CD 09 15
	tsb $28.b		; 04 28
	bit $0C.b		; 24 0C
	tsb $20.b		; 04 20
	bra  40.b		; 80 28
	tay		; A8
	adc $C0FF.w		; 6D FF C0
	tsb $10.b		; 04 10
	tsb $0F.b		; 04 0F
	tsb $6880.w		; 0C 80 68
	dey		; 88
	cop $30.b		; 02 30
	ora $00.b,S		; 03 00
	sbc $FF8080.l,X		; FF 80 80 FF
	sbc $55FFFF.l,X		; FF FF FF 55
	sbc $99EE6C.l,X		; FF 6C EE 99
	xce		; FB
	inc $83FE.w		; EE FE 83
	sbc $178F03.l,X		; FF 03 8F 17
	asl $23.b		; 06 23
	and ($7E.b)		; 32 7E
	ldx $0F33.w,Y		; BE 33 0F
	ora $01.b,S		; 03 01
	bvs 112.b		; 70 70
	stz $8499.w,X		; 9E 99 84
	bra  64.b		; 80 40
	rti		; 40

	sbc $FC7DFF.l,X		; FF FF 7D FC
	cmp ($CB.b,X)		; C1 CB
	beq 127.b		; F0 7F
	tas		; 1B
	stx $2E.b,Y		; 96 2E
	rol $6743.w,X		; 3E 43 67
	adc $64.b		; 65 64
	lsr $37.b,X		; 56 37
	and #$561D.w		; 29 1D 56
	tsa		; 3B
	bra -11.b		; 80 F5
	ora #$0384.w		; 09 84 03
	ora ($41.b,X)		; 01 41
	rti		; 40

	rts		; 60

	rts		; 60

	cmp ($FF.b),Y		; D1 FF
	sbc ($03.b,S),Y		; F3 03
	cpy #$A0C0.w		; C0 C0 A0
	rti		; 40

	tay		; A8
	bcs  12.b		; B0 0C
	php		; 08
	sty $84.b		; 84 84
	tsb $04.b		; 04 04
	bra -128.b		; 80 80
	bra 112.b		; 80 70
	beq  12.b		; F0 0C
	tsb $0702.w		; 0C 02 07
	and ($01.b,S),Y		; 33 01
	ora ($0F.b,X)		; 01 0F
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	bpl  15.b		; 10 0F
	php		; 08
	cmp $1CF72F.l,X		; DF 2F F7 1C
	cmp $10141F.l,X		; DF 1F 14 10
	rol $0B.b		; 26 0B
	php		; 08
	ora ($01.b,X)		; 01 01
	asl $05.b		; 06 05
	ora ($E6.b,X)		; 01 E6
	ora $080510.l		; 0F 10 05 08
	asl A		; 0A
	tsb $05.b		; 04 05
	cop $01.b		; 02 01
	sbc $04537B.l		; EF 7B 53 04
	eor #$80D6.w		; 49 D6 80
	bra -95.b		; 80 A1
	rti		; 40

	rti		; 40

	cop $42.b		; 02 42
	sta $95.b,S		; 83 95
	sta $01.b,X		; 95 01
	bcs  -9.b		; B0 F7
	bra  64.b		; 80 40
	sta ($A7.b,X)		; 81 A7
	cpy #$000F.w		; C0 0F 00
	lda $0143.w,X		; BD 43 01
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sbc $F76FFF.l,X		; FF FF 6F F7
	ldx $013D.w,Y		; BE 3D 01
	sbc $E2.b,S		; E3 E2
	rti		; 40

	tay		; A8
	pla		; 68
	bit $48.b		; 24 48
	ldx $8C40.w		; AE 40 8C
	ldy $EE0C.w		; AC 0C EE
	jmp.w [$32E1]		; DC E1 32
	ora ($0C.b),Y		; 11 0C
	php		; 08
	php		; 08
	tsb $0C40.w		; 0C 40 0C
	tsb $1DFE.w		; 0C FE 1D
	sbc $9AE3FF.l,X		; FF FF E3 9A
	ora $3034FF.l		; 0F FF 34 30
	ldy $B4.b,X		; B4 B4
	cpx #$A2EC.w		; E0 EC A2
	ldy #$3A3A.w		; A0 3A 3A
	ora $12.b,X		; 15 12
	cmp ($D1.b),Y		; D1 D1
	ora [$FF.b]		; 07 FF
	bvs   4.b		; 70 04
	cpx #$30A0.w		; E0 A0 30
	cop $C0.b		; 02 C0
	sbc $4157FF.l,X		; FF FF 57 41
	sbc [$7F.b],Y		; F7 7F
	ldy $A484.w		; AC 84 A4
	mvp $70,$60		; 44 60 70
	eor ($10.b),Y		; 51 10
	and ($01.b),Y		; 31 01
	and ($20.b,X)		; 21 20
	ora ($01.b,X)		; 01 01
	lda $6002FF.l		; AF FF 02 60
	rol $010C.w,X		; 3E 0C 01
	ora $C0.b,S		; 03 C0
	cop $80.b		; 02 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	jsr ($FE01.w,X)		; FC 01 FE
	sbc $C1FF57.l,X		; FF 57 FF C1
	plx		; FA
	jmp $30E010.l		; 5C 10 E0 30
	cpy #$8242.w		; C0 42 82
	and ($80.b,X)		; 21 80
	tsb $04.b		; 04 04
	php		; 08
	asl $115F.w		; 0E 5F 11
	cpx #$C020.w		; E0 20 C0
	rti		; 40

	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
.INDEX 16
	rep #$54		; C2 54
	ora [$F0.b]		; 07 F0
	adc $404040.l,X		; 7F 40 40 40
	bra -128.b		; 80 80
	sbc $4080FF.l,X		; FF FF 80 40
	bra -128.b		; 80 80
	bra  -1.b		; 80 FF
	sbc $1A453D.l,X		; FF 3D 45 1A
	plx		; FA
	dec $F6.b,X		; D6 F6
	and [$E7.b],Y		; 37 E7
	cmp ($FF.b,S),Y		; D3 FF
	rol $FBFE.w,X		; 3E FE FB
	sbc $EBFDF5.l,X		; FF F5 FD EB
	xce		; FB
	ora $080C.w,X		; 1D 0C 08
	ora [$10.b],Y		; 17 10
	ora ($01.b,X)		; 01 01
	cop $FF.b		; 02 FF
	sbc $7D57DF.l,X		; FF DF 57 7D
	ora #$81CD.w		; 09 CD 81
	xce		; FB
	cmp $67.b,S		; C3 67
	adc $8B.b,S		; 63 8B
	sta [$77.b]		; 87 77
	adc $AA5757.l,X		; 7F 57 57 AA
	plb		; AB
	phb		; 8B
	stz $38.b,X		; 74 38
	sec		; 38
	ora $04.b,S		; 03 04
	tsb $8E.b		; 04 8E
	php		; 08
	jsr ($9868.w,X)		; FC 68 98
	cmp $054FFF.l		; CF FF 4F 05
	bra  24.b		; 80 18
	rti		; 40

	bpl -128.b		; 10 80
	bvc -128.b		; 50 80
	rts		; 60

	and ($30.b)		; 32 30
	trb $10.b		; 14 10
	cpx $E4.b		; E4 E4
	trb $F47E.w		; 1C 7E F4
	.db $82, $70, $60		; 82 70 60
	tsb $03.b		; 04 03
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	php		; 08
	ora [$C7.b]		; 07 C7
	jmp $0C43.w		; 4C 43 0C
	sbc ($02.b,X)		; E1 02
	bpl   4.b		; 10 04
	tsb $04.b		; 04 04
	cop $01.b		; 02 01
	sbc $0401.w,X		; FD 01 04
	cop $02.b		; 02 02
	sbc $5FFFFF.l,X		; FF FF FF 5F
	sta $666063.l,X		; 9F 63 60 66
	ora ($12.b)		; 12 12
	and ($3C.b)		; 32 3C
	ldy #$C03C.w		; A0 3C C0
	sec		; 38
	.db $42, $70		; 42 70
	ora ($E0.b,X)		; 01 E0
	sbc ($F3.b),Y		; F1 F3
	and ($3C.b)		; 32 3C
	rti		; 40

	bvs -124.b		; 70 84
	cpy #$C088.w		; C0 88 C0
	bvc  64.b		; 50 40
	rts		; 60

	cpy #$FFFF.w		; C0 FF FF
	eor [$BF.b],Y		; 57 BF
	sbc $06FE.w,X		; FD FE 06
	ora $0C.b,S		; 03 0C
	ora [$98.b]		; 07 98
	asl $1C30.w		; 0E 30 1C
	rts		; 60

	sec		; 38
	bra -80.b		; 80 B0
	.db $42, $42		; 42 42
	sbc $0201FF.l,X		; FF FF 01 02
	tsb $08.b		; 04 08
	ora ($10.b,X)		; 01 10
	ora $20.b,S		; 03 20
	ora [$1C.b]		; 07 1C
	cmp $FBFAFF.l		; CF FF FA FB
	inc $02E1.w,X		; FE E1 02
.INDEX 8
	sep #$12		; E2 12
	ora ($29.b)		; 12 29
	and #$4444.w		; 29 44 44
	bvs  16.b		; 70 10
	tsb $FC.b		; 04 FC
	sbc $04.b,S		; E3 04
	bpl  48.b		; 10 30
	plp		; 28
	cpx $4644.w		; EC 44 46
	ora ($E0.b,X)		; 01 E0
	sta ($F2.b,X)		; 81 F2
	ora $8F.b,S		; 03 8F
	jsr ($A88A.w,X)		; FC 8A A8
	tad		; 5B
	lda $58.b		; A5 58
	cli		; 58
	ora ($80.b,X)		; 01 80
	sta ($44.b,X)		; 81 44
	mvp $20,$20		; 44 20 20
	cmp $020120.l,X		; DF 20 01 02
	bra -64.b		; 80 C0
	sbc [$0F.b],Y		; F7 0F
	eor $00.b,S		; 43 00
	sbc $E482FF.l,X		; FF FF 82 E4
	bra  26.b		; 80 1A
	.db $82, $44, $44		; 82 44 44
	lsr $46.b		; 46 46
	inc $80FF.w,X		; FE FF 80
	and ($03.b,S),Y		; 33 03
	ora ($F3.b),Y		; 11 F3
	jsr ($0201.w,X)		; FC 01 02
	cop $03.b		; 02 03
	ora ($FE.b,X)		; 01 FE
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	sbc $A25555.l,X		; FF 55 55 A2
	dec $DDD9.w,X		; DE D9 DD
	sbc ($FB.b,S),Y		; F3 FB
	sbc $86FD.w,X		; FD FD 86
	inc $7B.b,X		; F6 7B
	tda		; 7B
	lda $FFCFBF.l,X		; BF BF CF FF
	cmp $0C06.w		; CD 06 0C
	tsb $0A.b		; 04 0A
	adc $C780F9.l,X		; 7F F9 80 C7
	cmp [$13.b],Y		; D7 13
	sbc $201FA0.l,X		; FF A0 1F 20
	eor ($13.b,S),Y		; 53 13
	asl $8D0C.w,X		; 1E 0C 8D
	sbc ($60.b),Y		; F1 60
	asl $FFBF.w		; 0E BF FF
	rts		; 60

	ora ($01.b,X)		; 01 01
	and $809E01.l,X		; 3F 01 9E 80
	cpy #$C0.b		; C0 C0
	sbc $5555FF.l,X		; FF FF 55 55
	ora $F5.b,X		; 15 F5
	tyx		; BB
	stp		; DB
	and $A5.b		; 25 A5
	phy		; 5A
	eor $FABFB3.l,X		; 5F B3 BF FA
	xce		; FB
	lda $37FD.w		; AD FD 37
	sbc $381C6A.l,X		; FF 6A 1C 38
	adc $C0.b,S		; 63 C0
	bra   7.b		; 80 07
	ora ($FF.b,X)		; 01 FF
	sbc $F55455.l,X		; FF 55 54 F5
	sbc $5A.b,X		; F5 5A
	phx		; DA
	sbc $AFFD.w,X		; FD FD AF
	sbc $FBEFF7.l,X		; FF F7 EF FB
	sbc $7DBF7F.l,X		; FF 7F BF 7D
	adc [$BD.b],Y		; 77 BD
	asl $63.b		; 06 63
	ora ($30.b,X)		; 01 30
	bra -32.b		; 80 E0
	sbc $5551FF.l,X		; FF FF 51 55
	asl $FE.b		; 06 FE
	ply		; 7A
	plx		; FA
	jmp.w [$44BC]		; DC BC 44
	jmp $D8A4A4.l		; 5C A4 A4 D8
	cld		; D8
	iny		; C8
	inx		; E8
	bmi -16.b		; 30 F0
	trb $C084.w		; 1C 84 C0
	rts		; 60

	sec		; 38
	bpl  16.b		; 10 10
	ora [$FC.b]		; 07 FC
	ora ($54.b,X)		; 01 54
	ora [$08.b]		; 07 08
	tsb $06.b		; 04 06
	tsb $02.b		; 04 02
	tsb $0C.b		; 04 0C
	asl $0507.w		; 0E 07 05
	cop $06.b		; 02 06
	sbc $17FFFF.l,X		; FF FF FF 17
	sbc ($07.b,S),Y		; F3 07
	ora $02.b,X		; 15 02
	phd		; 0B
	asl $1C36.w		; 0E 36 1C
	ldy $9878.w		; AC 78 98
	bvc -112.b		; 50 90
	ldy #$A0.b		; A0 A0
	jsr $03F8.w		; 20 F8 03
	ora $04.b,S		; 03 04
	tsb $1808.w		; 0C 08 18
	bpl 112.b		; 10 70
	jsr $A080.w		; 20 80 A0
	sbc $5143FF.l,X		; FF FF 43 51
	jsr ($027F.w,X)		; FC 7F 02
	.db $82, $05, $01		; 82 05 01
	php		; 08
	ora ($10.b,X)		; 01 10
	ora $25.b,S		; 03 25
	ora $4B.b		; 05 4B
	tsb $0806.w		; 0C 06 08
	sbc $0301FF.l,X		; FF FF 01 03
	asl $0C.b		; 06 0C
	sbc $3F7F7F.l,X		; FF 7F 7F 3F
	xce		; FB
	mvp $C8,$08		; 44 08 C8
	bmi  48.b		; 30 30
	and $A5.b		; 25 A5
	tya		; 98
	tya		; 98
	adc $62.b,S		; 63 62
	asl $841C.w,X		; 1E 1C 84
	bra -34.b		; 80 DE
	bra  32.b		; 80 20
	ora ($43.b,X)		; 01 43
	bra  64.b		; 80 40
	bvs  50.b		; 70 32
	rol $0C0C.w,X		; 3E 0C 0C
	sbc $0037FD.l,X		; FF FD 37 00
	cmp $96B86C.l,X		; DF 6C B8 96
	sta ($02.b,X)		; 81 02
	ora $04.b		; 05 04
	bpl   2.b		; 10 02
	cop $01.b		; 02 01
	ora ($09.b,X)		; 01 09
	ora ($F2.b,X)		; 01 F2
	inc $030E.w,X		; FE 0E 03
	ora ($EF.b,X)		; 01 EF
	inc $DB6E.w,X		; FE 6E DB
	sbc $020203.l,X		; FF 03 02 02
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	bpl  80.b		; 10 50
	jsl $058502.l		; 22 02 85 05
	iny		; C8
	cop $39.b		; 02 39
	bra   4.b		; 80 04
	bra -48.b		; 80 D0
	rts		; 60

	cop $05.b		; 02 05
	cop $DF.b		; 02 DF
	tsb $0007.w		; 0C 07 00
	sta ($FF.b,X)		; 81 FF
	.db $82, $82, $80		; 82 82 80
	bra -128.b		; 80 80
	tsb $04.b		; 04 04
	ror $80FF.w,X		; 7E FF 80
	cmp $0C.b,S		; C3 0C
	eor $0C.b,S		; 43 0C
	sbc $0402.w,Y		; F9 02 04
	tsb $06.b		; 04 06
	cop $FD.b		; 02 FD
	ora ($04.b,X)		; 01 04
	cop $02.b		; 02 02
	sbc $000344.l,X		; FF 44 03 00
	cmp [$38.b]		; C7 38
	mvp $02,$44		; 44 44 02
	cop $81.b		; 02 81
	sta ($0F.b,X)		; 81 0F
	bmi  -1.b		; 30 FF
	sbc $457FFF.l,X		; FF FF 7F 45
	eor $E0.b,X		; 55 E0
	sbc $F3FFF7.l		; EF F7 FF F3
	sbc [$C9.b],Y		; F7 C9
	xce		; FB
	bit $FD.b,X		; 34 FD
	rol $033A.w,X		; 3E 3A 03
	ora ($01.b,X)		; 01 01
	jsr $1830.w		; 20 30 18
	tsb $0306.w		; 0C 06 03
	ora ($FF.b,X)		; 01 FF
	sbc $455105.l,X		; FF 05 51 45
	sbc [$FF.b],Y		; F7 FF
	sbc $EBFFAA.l,X		; FF AA FF EB
	xba		; EB
	stp		; DB
	sbc ($13.b,S),Y		; F3 13
	cmp ($33.b,S),Y		; D3 33
	and $E0.b,S		; 23 E0
	cpy #$C4.b		; C0 C4
	tsb $3018.w		; 0C 18 30
	cpx #$07.b		; E0 07
	eor $D83C03.l,X		; 5F 03 3C D8
	ora [$20.b]		; 07 20
	cpy #$C1.b		; C0 C1
	and ($06.b,X)		; 21 06
	adc $E7E786.l,X		; 7F 86 E7 E7
	ora ($01.b,X)		; 01 01
	rol $26.b		; 26 26
	sbc $014503.l,X		; FF 03 45 01
	bpl -48.b		; 10 D0
	cpx #$E0.b		; E0 E0
	cpx #$A0.b		; E0 A0
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	cpx #$20.b		; E0 20
	rti		; 40

	bra 127.b		; 80 7F
	jsr ($5C1D.w,X)		; FC 1D 5C
	ora [$0E.b],Y		; 17 0E
	asl $04.b		; 06 04
	phd		; 0B
	ora $01.b,S		; 03 01
	ora $0104.w		; 0D 04 01
	ora $1E.b,S		; 03 1E
	php		; 08
	asl $0404.w		; 0E 04 04
	ora $04.b,S		; 03 04
	tsb $03.b		; 04 03
	php		; 08
	sbc [$FF.b],Y		; F7 FF
	cmp $FC.b,S		; C3 FC
	adc $22213F.l,X		; 7F 3F 21 22
	jsr $404C.w		; 20 4C 40
	eor ($01.b),Y		; 51 01
	adc ($72.b,S),Y		; 73 72
	lda $CB8F.w		; AD 8F CB
	tad		; 5B
	and $2060BF.l,X		; 3F BF 60 20
	bvs  80.b		; 70 50
	phb		; 8B
	dey		; 88
	jmp $CFFF47.l		; 5C 47 FF CF
	ora [$05.b],Y		; 17 05
	ora $3028EF.l,X		; 1F EF 28 30
	pha		; 48
	bvs -48.b		; 70 D0
	bcc -64.b		; 90 C0
	rts		; 60

	bcs -32.b		; B0 E0
	rti		; 40

	rti		; 40

	sbc [$FF.b],Y		; F7 FF
	clc		; 18
	bmi  96.b		; 30 60
	cpy #$03.b		; C0 03
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	bmi -33.b		; 30 DF
	bit $03.b,X		; 34 03
	bpl  -6.b		; 10 FA
	sbc $0202.w,X		; FD 02 02
	tsb $01.b		; 04 01
	ora ($05.b,X)		; 01 05
	ora ($01.b,X)		; 01 01
	sbc $AF01FF.l,X		; FF FF 01 AF
	inc $65CF.w,X		; FE CF 65
	sta $060492.l		; 8F 92 04 06
	bpl   2.b		; 10 02
	ora ($04.b,X)		; 01 04
	tsb $8A.b		; 04 8A
	bra   3.b		; 80 03
	cop $01.b		; 02 01
	sta $04.b,S		; 83 04
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	tsb $80.b		; 04 80
	cop $CF.b		; 02 CF
	sbc $065FC3.l,X		; FF C3 5F 06
	sed		; F8
	php		; 08
	php		; 08
	sta ($90.b,S),Y		; 93 90
	adc [$61.b]		; 67 61
	tsb $82.b		; 04 82
	ora $7D.b,S		; 03 7D
	sta [$03.b]		; 87 03
	sbc $0101FF.l,X		; FF FF 01 01
	sta $82.b,S		; 83 82
	inc $7D7C.w,X		; FE 7C 7D
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	ora [$04.b]		; 07 04
	and $200420.l,X		; 3F 20 04 20
	brk $5F.b		; 00 5F
	brk $0A.b		; 00 0A
	ora [$06.b]		; 07 06
	adc $FFFF40.l,X		; 7F 40 FF FF
	asl $40.b		; 06 40
	brk $57.b		; 00 57
	brk $02.b		; 00 02
	inc $FF02.w,X		; FE 02 FF
	sbc $0002FF.l,X		; FF FF 02 00
	jsr ($A800.w,X)		; FC 00 A8
	cpy #$40.b		; C0 40
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	rti		; 40

	bpl   8.b		; 10 08
	jmp ($28DF.w,X)		; 7C DF 28
	sta $40.b		; 85 40
	rti		; 40

	bmi  16.b		; 30 10
	and $0C0E11.l,X		; 3F 11 0E 0C
	ora $07.b,S		; 03 07
	ora [$04.b]		; 07 04
	rti		; 40

	bpl  14.b		; 10 0E
	ora $04.b,S		; 03 04
	jsr ($78FF.w,X)		; FC FF 78
	eor $07.b,X		; 55 07
	tsb $3C.b		; 04 3C
	and $FB.b,S		; 23 FB
	ora [$F7.b]		; 07 F7
	ora $DE1FEF.l		; 0F EF 1F DE
	and $047FB4.l,X		; 3F B4 7F 04
	ora $20.b,S		; 03 20
	ora [$0F.b]		; 07 0F
	ora $FF7F3F.l,X		; 1F 3F 7F FF
	sbc $545F.w,X		; FD 5F 54
	sbc ($9E.b,X)		; E1 9E
	bne  96.b		; D0 60
	dec $06.b,X		; D6 06
	ora [$07.b]		; 07 07
	trb $018D.w		; 1C 8D 01
	asl $06.b,X		; 16 06
	inx		; E8
	php		; 08
	asl $E080.w,X		; 1E 80 E0
	bra   6.b		; 80 06
	ora [$01.b]		; 07 01
	asl $08.b		; 06 08
	cmp $75.b,X		; D5 75
	rti		; 40

	bpl  -1.b		; 10 FF
	sbc $E01FFF.l,X		; FF FF 1F E0
	sbc $07F8FF.l,X		; FF FF F8 07
	sbc $CF07E0.l,X		; FF E0 07 CF
	jmp ($1445.w,X)		; 7C 45 14
	inc $0101.w,X		; FE 01 01
	ora ($01.b,X)		; 01 01
	ora ($F9.b,X)		; 01 F9
	sbc $07E7.w,Y		; F9 E7 07
	jsr ($0101.w,X)		; FC 01 01
	ora ($F9.b,X)		; 01 F9
	ora [$FF.b]		; 07 FF
	eor $070555.l,X		; 5F 55 05 07
	sed		; F8
	asl $DD06.w,X		; 1E 06 DD
	cmp ($37.b,X)		; C1 37
	bmi -46.b		; 30 D2
	bne  34.b		; D0 22
	jsr $730A.w		; 20 0A 73
	sed		; F8
	asl $C1.b		; 06 C1
	bmi -48.b		; 30 D0
	jsr $FFFF.w		; 20 FF FF
	plx		; FA
	eor $E08080.l,X		; 5F 80 80 E0
	jsr $8878.w		; 20 78 88
	stz $CEE4.w		; 9C E4 CE
	sbc ($F7.b)		; F2 F7
	sbc $FCFB.w,Y		; F9 FB FC
	sbc $80FE.w,X		; FD FE 80
	jsr $0880.w		; 20 80 08
	cpx #$04.b		; E0 04
	beq   2.b		; F0 02
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	inc $7000.w,X		; FE 00 70
	brk $20.b		; 00 20
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $F4.b		; 00 F4
	brk $20.b		; 00 20
	ora $07.b,S		; 03 07
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	brk $F4.b		; 00 F4
	brk $E0.b		; 00 E0
	bra 112.b		; 80 70
	bra  12.b		; 80 0C
	bpl -128.b		; 10 80
	cpx #$10.b		; E0 10
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bne   0.b		; D0 00
	bra  63.b		; 80 3F
	cpy #$3F.b		; C0 3F
	and $DA7FFF.l,X		; 3F FF 7F DA
	and $0F.b,X		; 35 0F
	php		; 08
	ora $011E10.l,X		; 1F 10 1E 01
	rol $3E21.w,X		; 3E 21 3E
	ora ($3D.b,X)		; 01 3D
	cop $FD.b		; 02 FD
	.db $42, $FF		; 42 FF
	php		; 08
	bpl   1.b		; 10 01
	ora ($20.b,X)		; 01 20
	ora ($02.b,X)		; 01 02
	cop $40.b		; 02 40
	sbc $5555FF.l,X		; FF FF 55 55
	adc ($FF.b,X)		; 61 FF
	pha		; 48
	sbc [$B9.b],Y		; F7 B9
	dec $73.b		; C6 73
	sty $09F6.w		; 8C F6 09
	jsr ($9C03.w,X)		; FC 03 9C
	adc $39.b,S		; 63 39
	dec $FF.b		; C6 FF
	sbc [$C6.b],Y		; F7 C6
	sty $0309.w		; 8C 09 03
	adc $C6.b,S		; 63 C6
	cmp $15057F.l,X		; DF 7F 05 15
	and $807FC0.l,X		; 3F C0 7F 80
	sbc $EF10FF.l,X		; FF FF 10 EF
	jsr $20EF.w		; 20 EF 20
	cmp $C0FF50.l,X		; DF 50 FF C0
	bra  16.b		; 80 10
	bpl  32.b		; 10 20
	lda $10F7.w,Y		; B9 F7 10
	xce		; FB
	sbc $C80840.l,X		; FF 40 08 C8
	cpy #$44.b		; C0 44
	sty $80.b		; 84 80
	pha		; 48
	pha		; 48
.ACCU 16
	rep #$A2		; C2 A2
	php		; 08
	tsb $40.b		; 04 40
	bra   8.b		; 80 08
	rti		; 40

	.db $42, $80		; 42 80
	sbc $11553B.l,X		; FF 3B 55 11
	sta [$7F.b]		; 87 7F
	ror $70.b,X		; 76 70
	ora $020C.w		; 0D 0C 02
	cop $11.b		; 02 11
	ora ($80.b),Y		; 11 80
	php		; 08
	php		; 08
	adc $020C70.l,X		; 7F 70 0C 02
	ora ($08.b),Y		; 11 08
	sbc [$FF.b],Y		; F7 FF
	eor ($55.b),Y		; 51 55
	sbc $0DFF.w,X		; FD FF 0D
	trb $04.b		; 14 04
	cmp $03.b,S		; C3 03
	ldy $84.b,X		; B4 84
	eor ($42.b)		; 52 42
	and ($31.b),Y		; 31 31
	asl $FF0E.w		; 0E 0E FF
	tsb $03.b		; 04 03
	sty $42.b		; 84 42
	and ($0E.b),Y		; 31 0E
	cmp $5545FF.l,X		; DF FF 45 55
	sbc $F3FE.w,X		; FD FE F3
	ora ($0F.b,X)		; 01 0F
	ora $C9C90E.l		; 0F 0E C9 C9
	bit $34.b,X		; 34 34
	asl $820E.w		; 0E 0E 82
	.db $82, $FE, $01		; 82 FE 01
	asl $34C9.w		; 0E C9 34
	asl $F782.w		; 0E 82 F7
	sbc $C07772.l,X		; FF 72 77 C0
	rti		; 40

	cpy #$60.b		; C0 60
	ldy #$60.b		; A0 60
	bra  48.b		; 80 30
	bne -80.b		; D0 B0
	rti		; 40

	cld		; D8
	plp		; 28
	cld		; D8
	jsr $8040.w		; 20 40 80
	jsr $C080.w		; 20 80 C0
	bpl  64.b		; 10 40
	jsr $2008.w		; 20 08 20
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	tsb $06.b		; 04 06
	and [$FC.b],Y		; 37 FC
	ora $0204FA.l		; 0F FA 04 02
	ora ($01.b,X)		; 01 01
	ora ($05.b,X)		; 01 05
	tsb $04.b		; 04 04
	inc A		; 1A
	ora ($6A.b),Y		; 11 6A
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	asl $0A.b		; 06 0A
	and $BFAF7F.l,X		; 3F 7F AF BF
	tax		; AA
	mvp $B6,$A7		; 44 A7 B6
	ora $290D.w		; 0D 0D 29
	bpl 117.b		; 10 75
	bcc 109.b		; 90 6D
	bra -51.b		; 80 CD
	bpl -20.b		; 10 EC
	bpl  50.b		; 10 32
	and ($2F.b),Y		; 31 2F
	ora $8C70D0.l		; 0F D0 70 8C
	bra -84.b		; 80 AC
	cpy $5FFF.w		; CC FF 5F
	tax		; AA
	ora $0E0106.l		; 0F 06 01 0E
	asl $DB.b		; 06 DB
	phd		; 0B
	sbc ($D3.b,S),Y		; F3 D3
	ror A		; 6A
	ldy $AB.b,X		; B4 AB
	sty $61.b,X		; 94 61
	bra   1.b		; 80 01
	asl $08.b		; 06 08
	asl $9508.w		; 0E 08 95
	sbc [$94.b],Y		; F7 94
	lda $FFFFFE.l,X		; BF FE FF FF
	jsl $01C0C1.l		; 22 C1 C0 01
	bit $19.b		; 24 19
	sbc $03F9.w,X		; FD F9 03
	sei		; 78
	sta $BA.b		; 85 BA
	eor ($DE.b,X)		; 41 DE
	trb $3EE3.w		; 1C E3 3E
	cmp ($C2.b,X)		; C1 C2
	and $E502.w,X		; 3D 02 E5
	asl $59.b		; 06 59
	tsb $9A.b		; 04 9A
	bra  94.b		; 80 5E
	cpy #$2E.b		; C0 2E
	lda $93A6F3.l		; AF F3 A6 93
	sbc $010108.l,X		; FF 08 01 01
	bpl   8.b		; 10 08
	ora ($12.b)		; 12 12
	ora ($01.b,X)		; 01 01
	bcc  64.b		; 90 40
	php		; 08
	ora ($10.b,X)		; 01 10
	php		; 08
	cop $10.b		; 02 10
	ora ($C0.b,X)		; 01 C0
	cmp $04456C.l		; CF 6C 45 04
	and $4AC6.w,Y		; 39 C6 4A
	lsr A		; 4A
	bcc -112.b		; 90 90
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	dec $4A.b		; C6 4A
	bcc   4.b		; 90 04
	adc $57ADFD.l,X		; 7F FD AD 57
	sbc $14DB34.l,X		; FF 34 DB 14
	wai		; CB
	tsb $FF.b		; 04 FF
	xce		; FB
	tyx		; BB
	dey		; 88
	sbc $5E80.w,X		; FD 80 5E
	cpy #$30.b		; C0 30
	bpl  52.b		; 10 34
	bit $30.b,X		; 34 30
	tsb $30.b		; 04 30
	mvp $3F,$7E		; 44 7E 3F
	sbc $FFD5FF.l,X		; FF FF D5 FF
	ora $1F32.w		; 0D 32 1F
	sei		; 78
	sta $A439C0.l,X		; 9F C0 39 A4
	stz $4B.b,X		; 74 4B
	rol $7741.w,X		; 3E 41 77
	php		; 08
	rtl		; 6B

	trb $80C2.w		; 1C C2 80
	jsr $0347.w		; 20 47 03
	sta $018107.l		; 8F 07 81 01
	dey		; 88
	php		; 08
	stz $FF1C.w		; 9C 1C FF
	sbc $F75FD5.l,X		; FF D5 5F F7
	iny		; C8
	tsb $04.b		; 04 04
	php		; 08
	inx		; E8
	asl $26.b		; 06 26
	sta $8B.b,S		; 83 8B
	cmp #$DC4D.w		; C9 4D DC
	ora [$B4.b],Y		; 17 B4
	lda $08.b,S		; A3 08
	tsb $08.b		; 04 08
	stx $80.b		; 86 80
	eor $40.b,S		; 43 40
	and #$0420.w		; 29 20 04
	ora $01.b,S		; 03 01
	sed		; F8
	brk $50.b		; 00 50
	sbc $360120.l,X		; FF 20 01 36
	sty $5F.b		; 84 5F
	ora ($87.b,X)		; 01 87
	ora $5005B0.l		; 0F B0 05 50
	adc $808080.l,X		; 7F 80 80 80
	bra  64.b		; 80 40
	cpx #$80.b		; E0 80
	bra -128.b		; 80 80
	cpy #$2D.b		; C0 2D
	bcs  40.b		; B0 28
	ldy #$F8.b		; A0 F8
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	inc $6EEF.w		; EE EF 6E
	sbc $050105.l,X		; FF 05 01 05
	asl $03.b		; 06 03
	ora $203714.l,X		; 1F 14 37 20
	adc $BF245F.l		; 6F 5F 24 BF
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($07.b,X)		; 01 07
	php		; 08
	ora $201F10.l		; 0F 10 1F 20
	and $F55F40.l,X		; 3F 40 5F F5
	lda $BF23FA.l		; AF FA 23 BF
	trb $B140.w		; 1C 40 B1
	stx $09.b,Y		; 96 09
	and ($25.b)		; 32 25
	cop $08.b		; 02 08
	cop $3F.b		; 02 3F
	eor $C0.b,S		; 43 C0
	jmp ($1631.w,X)		; 7C 31 16
	php		; 08
	bmi   2.b		; 30 02
	jsl $D70206.l		; 22 06 02 D7
	sbc $E0FFEB.l,X		; FF EB FF E0
	sbc $188860.l,X		; FF 60 88 18
	php		; 08
	sec		; 38
	clc		; 18
	pla		; 68
	bmi  80.b		; 30 50
	rts		; 60

	bcs  80.b		; B0 50
	sbc $8060E0.l,X		; FF E0 60 80
	php		; 08
	php		; 08
	bpl  24.b		; 10 18
	jsr $4030.w		; 20 30 40
	rts		; 60

	bpl  64.b		; 10 40
	dec $EF.b		; C6 EF
	cmp ($EE.b,X)		; C1 EE
	sbc $040404.l,X		; FF 04 04 04
	asl $04.b		; 06 04
	asl $02.b		; 06 02
	asl $84.b		; 06 84
	tsb $FF.b		; 04 FF
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $06.b		; 02 06
	tsb $04.b		; 04 04
	lda $75DFEB.l,X		; BF EB DF 75
	and ($EE.b,X)		; 21 EE
	ora ($F6.b),Y		; 11 F6
	ora #$FBFE.w		; 09 FE FB
	tsb $FF.b		; 04 FF
	sbc $FF02FD.l,X		; FF FD 02 FF
	cpx #$16.b		; E0 16
	beq  10.b		; F0 0A
	sed		; F8
	sed		; F8
	ora $FC.b		; 05 FC
	jsr ($02FC.w,X)		; FC FC 02
	inc $44E3.w,X		; FE E3 44
	sbc $08.b,S		; E3 08
	and $2002.w		; 2D 02 20
	rol A		; 2A
	jsl $02020C.l		; 22 0C 02 02
	bne  32.b		; D0 20
	cop $08.b		; 02 08
	php		; 08
	and ($FF.b,S),Y		; 33 FF
	and ($CD.b),Y		; 31 CD
	sbc [$19.b]		; E7 19
	ora ($90.b),Y		; 11 90
	tsb $04.b		; 04 04
	dey		; 88
	iny		; C8
	ora ($01.b,X)		; 01 01
	lsr $46.b		; 46 46
	clc		; 18
	bpl -128.b		; 10 80
	tsb $08.b		; 04 08
	cpy #$06.b		; C0 06
	rti		; 40

	sbc $D5DF.w,X		; FD DF D5
	adc $C0DF7F.l,X		; 7F 7F DF C0
	sbc $40B710.l,X		; FF 10 B7 40
	adc [$20.b],Y		; 77 20
	sbc [$30.b],Y		; F7 30
	sbc $FF807F.l,X		; FF 7F 80 FF
	and $404F0F.l,X		; 3F 0F 4F 40
	lda $A0AFA0.l		; AF A0 AF A0
	sta $FF0F80.l		; 8F 80 0F FF
	adc $BE5FFF.l,X		; 7F FF 5F BE
	eor $6D9E.w,X		; 5D 9E 6D
	cpy $D773.w		; CC 73 D7
	adc #$10E3.w		; 69 E3 10
	cpx $F211.w		; EC 11 F2
	asl $DDFF.w		; 0E FF DD
	jmp $F34CED.l		; 5C ED 4C F3
	eor $FB.b,S		; 43 FB
	eor ($FF.b,S),Y		; 53 FF
	and $F10EFE.l		; 2F FE 0E F1
	sbc $8B3F9B.l,X		; FF 9B 3F 8B
	ora $606F.w,X		; 1D 6F 60
	jsr $C090.w		; 20 90 C0
	bra  64.b		; 80 40
	cpy #$40.b		; C0 40
	rti		; 40

	bra  -1.b		; 80 FF
	cpx #$20.b		; E0 20
	rti		; 40

	rti		; 40

	cpy #$80.b		; C0 80
	bra  -1.b		; 80 FF
	sbc [$55.b],Y		; F7 55
	eor ($EF.b),Y		; 51 EF
	phd		; 0B
	ora $040E09.l,X		; 1F 09 0E 04
	ora [$01.b]		; 07 01
	tsb $06.b		; 04 06
	cop $02.b		; 02 02
	cop $06.b		; 02 06
	ora ($F4.b,X)		; 01 F4
	ora #$0104.w		; 09 04 01
	asl $02.b		; 06 02
	ora ($7F.b,X)		; 01 7F
	jsr ($1415.w,X)		; FC 15 14
	sta $B1D1D0.l,X		; 9F D0 D1 B1
	eor ($41.b),Y		; 51 41
	rts		; 60

	bmi  32.b		; 30 20
	bcc  16.b		; 90 10
	rti		; 40

	bpl  32.b		; 10 20
	lda ($41.b),Y		; B1 41
	jsr $F110.w		; 20 10 F1
	and $FE1550.l,X		; 3F 50 15 FE
	bra -128.b		; 80 80
	php		; 08
	php		; 08
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	jsr $8020.w		; 20 20 80
	php		; 08
	rti		; 40

	bra  32.b		; 80 20
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
	sbc $587FFD.l,X		; FF FD 7F 58
	sbc $02AF31.l,X		; FF 31 AF 02
	cmp $56BD28.l,X		; DF 28 BD 56
	sbc $4F06.w,X		; FD 06 4F
	tay		; A8
	lda $7FFFA4.l,X		; BF A4 FF 7F
	ora $201F50.l		; 0F 50 1F 20
	and $7D42.w,X		; 3D 42 7D
	cop $4B.b		; 02 4B
	bcs -101.b		; B0 9B
	rti		; 40

	lda ($FE.b,S),Y		; B3 FE
	sbc $F77FF7.l,X		; FF F7 7F F7
	trb $FF.b		; 14 FF
	ora ($EB.b,X)		; 01 EB
	php		; 08
	inc $F780.w,X		; FE 80 F7
	php		; 08
	adc $C877C4.l,X		; 7F C4 77 C8
	sbc $F308F3.l,X		; FF F3 08 F3
	sbc $14.b,S		; E3 14
	inc $01.b		; E6 01
	inc $08.b		; E6 08
	ror $6680.w		; 6E 80 66
	dey		; 88
	rts		; 60

	sbc $F77BF7.l,X		; FF F7 7B F7
	trb $4F.b		; 14 4F
	rti		; 40

	bra 100.b		; 80 64
	mvp $50,$12		; 44 12 50
	tay		; A8
	bit $01.b		; 24 01
	plx		; FA
	cop $55.b		; 02 55
	eor ($37.b,S),Y		; 53 37
	bra -128.b		; 80 80
	mvp $50,$04		; 44 04 50
	tay		; A8
	tsb $20.b		; 04 20
	phx		; DA
	jsl $FF7351.l		; 22 51 73 FF
	sbc $FCBB.w,X		; FD BB FC
	ora $7F.b		; 05 7F
	sty $80.b		; 84 80
	eor ($01.b,X)		; 41 01
	bra   1.b		; 80 01
	jsr $4040.w		; 20 40 40
	bmi -32.b		; 30 E0
	clc		; 18
	ldy #$7D.b		; A0 7D
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	ora ($40.b,X)		; 01 40
	rti		; 40

	jsr $10E0.w		; 20 E0 10
	ldy #$FF.b		; A0 FF
	sbc $06F7FD.l,X		; FF FD F7 06
	sbc $07FD14.l,X		; FF 14 FD 07
	inc $FA97.w		; EE 97 FA
	sta $FFCEFE.l		; 8F FE CE FF
	lsr $77.b		; 46 77
	sbc $FEF5.w		; ED F5 FE
	jsr ($EC02.w,X)		; FC 02 EC
	ora ($EA.b),Y		; 11 EA
	ora $EE.b		; 05 EE
	ora ($EE.b,X)		; 01 EE
	ror $88.b		; 66 88
	stz $0A.b		; 64 0A
	cmp $D4.b,S		; C3 D4
	txa		; 8A
	dey		; 88
	bpl -32.b		; 10 E0
	bmi  32.b		; 30 20
	jsr $8080.w		; 20 80 80
	bra -32.b		; 80 E0
	bra  32.b		; 80 20
	rti		; 40

	bra  -1.b		; 80 FF
	brk $AA.b		; 00 AA
	brk $BF.b		; 00 BF
	jsr $101F.w		; 20 1F 10
	ora $03030C.l		; 0F 0C 03 03
	jsr $0C10.w		; 20 10 0C
	ora $7B.b,S		; 03 7B
	adc $BFAF15.l,X		; 7F 15 AF BF
	bvc  48.b		; 50 30
	jsr $3810.w		; 20 10 38
	and #$B0B0.w		; 29 B0 B0
	lda $37.b,S		; A3 37
	ora ($44.b,X)		; 01 44
	ora $301010.l		; 0F 10 10 30
	bra  35.b		; 80 23
	bra   1.b		; 80 01
	rti		; 40

	ora $3F.b,X		; 15 3F
	ora ($29.b,X)		; 01 29
	sbc $600101.l,X		; FF 01 01 60
	cpx #$C0.b		; E0 C0
	rti		; 40

	bra -128.b		; 80 80
	sbc $8040E0.l,X		; FF E0 40 80
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	lda $DDFF40.l,X		; BF 40 FF DD
	sbc $FFF655.l,X		; FF 55 F6 FF
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	ora ($41.b,X)		; 01 41
	cop $03.b		; 02 03
	cop $88.b		; 02 88
	ora $4B.b,S		; 03 4B
	ora ($FF.b,X)		; 01 FF
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	tsb $0C03.w		; 0C 03 0C
	asl A		; 0A
	ora $05DD5F.l		; 0F 5F DD 05
	rts		; 60

	and $407F20.l,X		; 3F 20 7F 40
	sbc $7FFFFF.l,X		; FF FF FF 7F
	bra -65.b		; 80 BF
	adc $80C080.l,X		; 7F 80 C0 80
	cpy #$80.b		; C0 80
	and $503DF0.l,X		; 3F F0 3D 50
	stx $68.b,Y		; 96 68
	eor ($41.b,X)		; 41 41
	trb $15.b		; 14 15
	jsr $0220.w		; 20 20 02
	cop $68.b		; 02 68
	rti		; 40

	ora ($14.b,X)		; 01 14
	ora ($20.b,X)		; 01 20
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cmp $2FCFFF.l,X		; DF FF CF 2F
	jsr $747B.w		; 20 7B 74
	ldy $22.b		; A4 22
	rts		; 60

	rts		; 60

	ora [$CA.b]		; 07 CA
	ora ($53.b),Y		; 11 53
	ora ($11.b)		; 12 11
	ora ($20.b),Y		; 11 20
	and ($84.b,S),Y		; 33 84
	stz $A4.b		; 64 A4
	mvp $02,$60		; 44 60 02
	lsr A		; 4A
	ora ($13.b),Y		; 11 13
	ora ($FF.b),Y		; 11 FF
	and $623FFF.l,X		; 3F FF 3F 62
	xce		; FB
	adc ($54.b,X)		; 61 54
	cop $64.b		; 02 64
	sta ($24.b,X)		; 81 24
	asl $5738.w		; 0E 38 57
	sec		; 38
	dec $11.b,X		; D6 11
	.db $62, $04, $61		; 62 04 61
	mvn $60,$07		; 54 07 60
	tsb $20.b		; 04 20
	tay		; A8
	asl $117E.w,X		; 1E 7E 11
	cpy #$01.b		; C0 01
	inc $557D.w,X		; FE 7D 55
	bit $73.b,X		; 34 73
	tsb $72D2.w		; 0C D2 72
	and ($01.b,X)		; 21 01
	ora ($C2.b,X)		; 01 C2
	cpy #$40.b		; C0 40
	eor $C1.b,S		; 43 C1
	eor ($AC.b,X)		; 41 AC
	sbc ($21.b)		; F2 21
	ora ($40.b,X)		; 01 40
	cmp ($80.b,X)		; C1 80
	sbc $FFDFFF.l,X		; FF FF DF FF
	cmp $EF.b		; C5 EF
	eor $0C6F.w		; 4D 6F 0C
	inc $ED60.w,X		; FE 60 ED
	tya		; 98
	sbc [$F1.b],Y		; F7 F1
	sbc [$F2.b]		; E7 F2
	inc $F7.b		; E6 F7
	stx $1040.w		; 8E 40 10
	jmp $0590.w		; 4C 90 05
	bpl 114.b		; 10 72
	pla		; 68
	sed		; F8
	jmp ($6DEC.w)		; 6C EC 6D
	cpx $9C1D.w		; EC 1D 9C
	sbc $5FFFFB.l,X		; FF FB FF 5F
	ror $EE.b		; 66 EE
	adc $FD.b,X		; 75 FD
	and ($BB.b,S),Y		; 33 BB
	lda ($FE.b)		; B2 FE
	ora ($77.b)		; 12 77
	ply		; 7A
	phb		; 8B
	eor $6437FB.l		; 4F FB 37 64
	ora ($71.b),Y		; 11 71
	cop $33.b		; 02 33
	mvp $01,$32		; 44 32 01
	sta ($08.b)		; 92 08
	bra   5.b		; 80 05
	lda ($C9.b),Y		; B1 C9
	inc $62BF.w		; EE BF 62
	cmp [$40.b],Y		; D7 40
	rti		; 40

	cpx #$A0.b		; E0 A0
	rti		; 40

	cpx #$40.b		; E0 40
	rts		; 60

	bra -32.b		; 80 E0
	jsr $D0F0.w		; 20 F0 D0
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	jsr $FFFF.w		; 20 FF FF
	cmp $1E65.w,X		; DD 65 1E
	and ($27.b),Y		; 31 27
	and ($0F.b),Y		; 31 0F
	clc		; 18
	ora ($18.b,S),Y		; 13 18
	ora #$0C04.w		; 09 04 0C
	cop $1E.b		; 02 1E
	ora ($1B.b),Y		; 11 1B
	tsb $0E.b		; 04 0E
	asl $0720.w		; 0E 20 07
	ora [$10.b]		; 07 10
	ora $01.b,S		; 03 01
	bpl   4.b		; 10 04
	cmp [$D3.b],Y		; D7 D3
	sbc ($41.b,S),Y		; F3 41
	cmp $802020.l,X		; DF 20 20 80
	ldy #$60.b		; A0 60
	jsr $8040.w		; 20 40 80
	rti		; 40

	bra  31.b		; 80 1F
	cpy #$80.b		; C0 80
	bra  32.b		; 80 20
	rti		; 40

	rti		; 40

	bra  -3.b		; 80 FD
	sbc $FE5555.l,X		; FF 55 55 FE
	sbc $FA01.w,X		; FD 01 FA
	cop $F4.b		; 02 F4
	tsb $EC.b		; 04 EC
	tsb $1CD4.w		; 0C D4 1C
	ldy $583C.w		; AC 3C 58
	pla		; 68
	sbc $FBFDFE.l,X		; FF FE FD FB
	sbc ($E3.b,S),Y		; F3 E3
	cmp $87.b,S		; C3 87
	sbc $F5.b,X		; F5 F5
	eor $FB7A95.l,X		; 5F 95 7A FB
	sbc $06.b		; E5 06
	xce		; FB
	cop $FD.b		; 02 FD
	sbc $08EF.w,X		; FD EF 08
	dey		; 88
	beq  -8.b		; F0 F8
	ora [$F0.b]		; 07 F0
	tsb $F8.b		; 04 F8
	jsr ($FEFE.w,X)		; FC FE FE
	beq   7.b		; F0 07
	ora $00.b		; 05 00
	rol A		; 2A
	brk $BF.b		; 00 BF
	rti		; 40

	cpy #$80.b		; C0 80
	rti		; 40

	ora $C0.b,S		; 03 C0
	ora ($40.b,X)		; 01 40
	sbc ($1E.b,X)		; E1 1E
	ora ($01.b,X)		; 01 01
	asl $7E01.w,X		; 1E 01 7E
	bne  62.b		; D0 3E
	brk $0A.b		; 00 0A
	ora ($0F.b,X)		; 01 0F
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	tsb $08.b		; 04 08
	ora $01.b		; 05 01
	ora [$02.b]		; 07 02
	cop $FF.b		; 02 FF
	adc [$BF.b],Y		; 77 BF
	and ($9F.b,S),Y		; 33 9F
	cld		; D8
	txa		; 8A
	sty $362D.w		; 8C 2D 36
	rts		; 60

	cop $D7.b		; 02 D7
	cpy #$05.b		; C0 05
	eor $50.b,X		; 55 50
	sec		; 38
	and ($19.b),Y		; 31 19
	asl A		; 0A
	stx $24.b		; 86 24
	bpl  13.b		; 10 0D
	bra -62.b		; 80 C2
	bvc  64.b		; 50 40
	sbc $63FD.w,X		; FD FD 63
	mvn $80,$FF		; 54 FF 80
	bra  32.b		; 80 20
	bra -96.b		; 80 A0
	jsr $1030.w		; 20 30 10
	bmi  32.b		; 30 20
	bpl  28.b		; 10 1C
	rol $80FF.w,X		; 3E FF 80
	bra  32.b		; 80 20
	bmi  16.b		; 30 10
	rol $F57F.w,X		; 3E 7F F5
	lda $647D50.l		; AF 50 7D 64
	inc $1444.w		; EE 44 14
	jsr $2878.w		; 20 78 28
	and #$0102.w		; 29 02 01
	ora $02.b		; 05 02
	sta $0460FC.l,X		; 9F FC 60 04
	iny		; C8
	bmi   1.b		; 30 01
	cop $FF.b		; 02 FF
	sbc $DADFDF.l,X		; FF DF DF DA
	lsr $A9.b,X		; 56 A9
	and $CB.b		; 25 CB
	ora $416B93.l		; 0F 93 6B 41
	xce		; FB
	and $B7.b		; 25 B7
	ora $99FF.w,Y		; 19 FF 99
	sta $D801A8.l,X		; 9F A8 01 D8
	cop $F2.b		; 02 F2
	sta ($04.b)		; 92 04
	.db $62, $04, $26		; 62 04 26
	pha		; 48
	asl $600E.w		; 0E 0E 60
	sbc $00E1D4.l,X		; FF D4 E1 00
	jsr $10F0.w		; 20 F0 10
	php		; 08
	bmi  16.b		; 30 10
	bpl  16.b		; 10 10
	bpl -128.b		; 10 80
	php		; 08
	tsb $E0.b		; 04 E0
	bpl  16.b		; 10 10
	bpl -49.b		; 10 CF
	and ($C5.b,S),Y		; 33 C5
	ora ($1B.b,S),Y		; 13 1B
	tsb $09.b		; 04 09
	ora #$2222.w		; 09 22 22
	bpl  48.b		; 10 30
	tsb $04.b		; 04 04
	tsb $09.b		; 04 09
	cop $20.b		; 02 20
	bpl  32.b		; 10 20
	tsb $FF.b		; 04 FF
	brk $15.b		; 00 15
	brk $AE.b		; 00 AE
	rts		; 60

	ror $59.b		; 66 59
	and $0E37.w,Y		; 39 37 0E
	asl $191F.w		; 0E 1F 19
	asl $7F.b		; 06 7F
	jsr ($F828.w,X)		; FC 28 F8
	ldy $CDDF.w,X		; BC DF CD
	eor ($B2.b,S),Y		; 53 B2
	ldy $0704.w		; AC 04 07
	ora $22.b,S		; 03 22
	and $2EF2.w,X		; 3D F2 2E
	ora $1C.b,S		; 03 1C
	ora $01.b,S		; 03 01
	trb $C00E.w		; 1C 0E C0
	cmp [$7F.b],Y		; D7 7F
	tax		; AA
	sbc [$3C.b],Y		; F7 3C
	bra  -4.b		; 80 FC
	jsr ($07F0.w,X)		; FC F0 07
	ora $7D.b		; 05 7D
	eor [$C4.b]		; 47 C4
	trb $3110.w		; 1C 10 31
	adc $F8FFFF.l,X		; 7F FF FF F8
	cop $80.b		; 02 80
	sec		; 38
	cpx #$03.b		; E0 03
	cpy #$0F.b		; C0 0F
	eor $D5.b		; 45 D5
	dey		; 88
	lsr A		; 4A
	sbc $C03F80.l,X		; FF 80 3F C0
	sta [$38.b]		; 87 38
	rep #$03		; C2 03
	bra  63.b		; 80 3F
	cpy #$80.b		; C0 80
	ora $43.b,S		; 03 43
	sbc $E0D781.l,X		; FF 81 D7 E0
	ora $106080.l,X		; 1F 80 60 10
	cld		; D8
	and ($A8.b),Y		; 31 A8
	dec $AB.b		; C6 AB
	clc		; 18
	ora $7F1080.l,X		; 1F 80 10 7F
	and ($C6.b),Y		; 31 C6
	clc		; 18
	ora $4E.b,S		; 03 4E
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	tsb $04.b		; 04 04
	ora $03.b		; 05 03
	tsb $04.b		; 04 04
	tsb $FF.b		; 04 FF
	cmp $EFCAF5.l,X		; DF F5 CA EF
	sed		; F8
	clc		; 18
	tsb $44.b		; 04 44
	asl A		; 0A
	asl $0709.w		; 0E 09 07
	tsb $03.b		; 04 03
	cop $40.b		; 02 40
	and $C706.w,Y		; 39 06 C7
	trb $02.b		; 14 02
	php		; 08
	ora #$0408.w		; 09 08 04
	cop $18.b		; 02 18
	asl $DF.b		; 06 DF
	sbc $E3D5E7.l,X		; FF E7 D5 E3
	rol $2222.w,X		; 3E 22 22
	rol $14.b,X		; 36 14
	trb $54.b		; 14 54
	dey		; 88
	sbc #$CE40.w		; E9 40 CE
	and ($F3.b,S),Y		; 33 F3
	tsb $0CC1.w		; 0C C1 0C
	jsl $081404.l		; 22 04 14 08
	dey		; 88
	rti		; 40

	and ($0C.b,S),Y		; 33 0C
	rts		; 60

	sbc $DFD9FF.l,X		; FF FF D9 DF
	sbc $0F07.w,X		; FD 07 0F
	ora ($10.b,X)		; 01 10
	php		; 08
	rol A		; 2A
	ora ($5A.b)		; 12 5A
	rol A		; 2A
	lda ($D1.b),Y		; B1 D1
	sbc $28.b,S		; E3 28
	lda $F8DC.w		; AD DC F8
	ora ($08.b,X)		; 01 08
	bpl   2.b		; 10 02
	plp		; 28
	cop $D0.b		; 02 D0
	ora ($28.b,X)		; 01 28
	bne  12.b		; D0 0C
	sbc $F0FBF1.l,X		; FF F1 FB F0
	and ($37.b),Y		; 31 37
	ora $0119.w,Y		; 19 19 01
	ora ($90.b,X)		; 01 90
	bcc   5.b		; 90 05
	ldx $F240.w,Y		; BE 40 F2
	beq  38.b		; F0 26
	iny		; C8
	ora $0101.w,Y		; 19 01 01
	bpl -112.b		; 10 90
	bit $40.b,X		; 34 40
	ora $FC.b,S		; 03 FC
	lsr $0FFC.w		; 4E FC 0F
	cpx #$74.b		; E0 74
	dey		; 88
	dey		; 88
	pha		; 48
	tsb $02.b		; 04 02
	tsb $04.b		; 04 04
	cpy $04.b		; C4 04
	bvs -120.b		; 70 88
	php		; 08
	dey		; 88
	tsb $74.b		; 04 74
	tsb $8F.b		; 04 8F
	adc $16C5.w,Y		; 79 C5 16
	bit $1B.b		; 24 1B
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($31.b,X)		; 01 31
	bpl   2.b		; 10 02
	tas		; 1B
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	ora ($10.b,X)		; 01 10
	sbc $FF.b,X		; F5 FF
	plx		; FA
	sbc [$F8.b],Y		; F7 F8
	ora $606B.w,Y		; 19 6B 60
	cmp $EBA3.w,X		; DD A3 EB
	ora [$51.b]		; 07 51
	rti		; 40

	ldy $0C.b,X		; B4 0C
	tax		; AA
	tya		; 98
	ora [$19.b]		; 07 19
	adc ($62.b,X)		; 61 62
	lda ($84.b,X)		; A1 84
	ora $08.b,S		; 03 08
	rti		; 40

	tsb $10.b		; 04 10
	phb		; 8B
	jsr $FDFF.w		; 20 FF FD
	sbc [$FF.b],Y		; F7 FF
	adc [$21.b]		; 67 21
	xba		; EB
	.db $62, $FE, $08		; 62 FE 08
	tda		; 7B
	bpl  -9.b		; 10 F7
	cmp $B703.w,X		; DD 03 B7
	ora $1E3C5B.l		; 0F 5B 3C 1E
	bra  28.b		; 80 1C
	beq   1.b		; F0 01
	cpx #$07.b		; E0 07
	cpy #$0F.b		; C0 0F
	sta $3F.b,S		; 83 3F
	ora $FC3C7F.l		; 0F 7F 3C FC
	sbc $FF.b,X		; F5 FF
	phy		; 5A
	cmp $CF.b,X		; D5 CF
	beq -63.b		; F0 C1
	ora ($09.b,X)		; 01 09
	asl $3028.w		; 0E 28 30
	plp		; 28
	cmp [$4B.b]		; C7 4B
	sec		; 38
	eor ($C0.b,S),Y		; 53 C0
	and $0E01C0.l,X		; 3F C0 01 0E
	bmi -57.b		; 30 C7
	sec		; 38
	cpy #$8F.b		; C0 8F
	sbc $FFD7FF.l,X		; FF FF D7 FF
	sbc [$0F.b],Y		; F7 0F
	rol A		; 2A
	and ($2B.b),Y		; 31 2B
	dec $2B.b		; C6 2B
	clc		; 18
	lda ($60.b)		; B2 60
	cmp ($85.b),Y		; D1 85
	eor $0E.b,S		; 43 0E
	ora [$14.b],Y		; 17 14
	ora $C631FF.l		; 0F FF 31 C6
	clc		; 18
	ora ($61.b,X)		; 01 61
	ora $1C3E8A.l		; 0F 8A 3E 1C
	bne  96.b		; D0 60
	rts		; 60

	sbc $55FFFF.l,X		; FF FF FF 55
	adc $87D480.l		; 6F 80 D4 87
	mvn $54,$18		; 54 18 54
	rts		; 60

	cmp $82.b,X		; D5 82
	cmp $0A.b,X		; D5 0A
	pei ($28.b)		; D4 28
	lda ($61.b)		; B2 61
	sta ($F1.b,X)		; 81 F1
	stx $303E.w		; 8E 3E 30
	beq -61.b		; F0 C3
	cpy #$0F.b		; C0 0F
	bit $C070.w,X		; 3C 70 C0
	inc $F8F7.w,X		; FE F7 F8
	cmp $0F.b,S		; C3 0F
	ora [$17.b],Y		; 17 17
	bit $24.b		; 24 24
	rts		; 60

	rti		; 40

	dec A		; 3A
	cop $34.b		; 02 34
	and $21.b		; 25 21
	mvn $17,$60		; 54 60 17
	php		; 08
	bit $4020.w		; 2C 20 40
	trb $2E06.w		; 1C 06 2E
	eor $FF.b,S		; 43 FF
	eor [$DE.b]		; 47 DE
	eor $F0E71F.l,X		; 5F 1F E7 F0
	tsb $1618.w		; 0C 18 16
	ora ($02.b),Y		; 11 02
	sta $A080.w,Y		; 99 80 A0
	ora ($3F.b,X)		; 01 3F
	sbc [$60.b]		; E7 60
	ora #$2031.w		; 09 31 20
	stx $6FC0.w		; 8E C0 6F
	rti		; 40

	ora $FFFF0C.l,X		; 1F 0C FF FF
	sbc $FCDD5F.l,X		; FF 5F DD FC
	lda ($49.b,S),Y		; B3 49
	cld		; D8
	rtl		; 6B

	eor #$41A1.w		; 49 A1 41
	sbc $7D8C.w		; ED 8C 7D
	sta $5111.w,Y		; 99 11 51
	jsr $F823.w		; 20 23 F8
	sbc $B204.w,Y		; F9 04 B2
	ora $C9.b,S		; 03 C9
	ora ($4D.b,X)		; 01 4D
	ora ($30.b,X)		; 01 30
	ora ($81.b,X)		; 01 81
	rts		; 60

	sbc $FEFBFF.l,X		; FF FF FB FE
	sta $0B63.w,X		; 9D 63 0B
	stx $65.b		; 86 65
	jmp ($B88B.w)		; 6C 8B B8
	rol $F0.b		; 26 F0
	cmp $2F61.w		; CD 61 2F
	adc [$6E.b]		; 67 6E
	dec $1C80.w		; CE 80 1C
	adc $9360.w,Y		; 79 60 93
	bra  71.b		; 80 47
	ora $871E81.l		; 0F 81 1E 87
	tas		; 1B
	asl $FF35.w		; 0E 35 FF
	sbc $F0FFFF.l,X		; FF FF FF F0
	tsb $E9.b		; 04 E9
	tsb $1CD7.w		; 0C D7 1C
	tsx		; BA
	and $F3F4.w,Y		; 39 F4 F3
	cmp $32C7.w,Y		; D9 C7 32
	ora $043FC3.l		; 0F C3 3F 04
	sbc $1CF70C.l,X		; FF 0C F7 1C
	xba		; EB
	sec		; 38
	dec $F1.b,X		; D6 F1
	adc $BBC3.w		; 6D C3 BB
	ora [$F7.b]		; 07 F7
	tsb $FFCF.w		; 0C CF FF
	adc $DC5FFF.l,X		; 7F FF 5F DC
	rol $4850.w,X		; 3E 50 48
	txs		; 9A
	sty $046C.w		; 8C 6C 04
	stx $02.b		; 86 02
	txs		; 9A
	asl $DC.b		; 06 DC
	tsb $C4.b		; 04 C4
	tsb $D8.b		; 04 D8
	trb $2404.w		; 1C 04 24
	sep #$C0		; E2 C0
	cpy #$1C.b		; C0 1C
	cop $7C.b		; 02 7C
	cop $E0.b		; 02 E0
	bra  -4.b		; 80 FC
	sbc $5454.w,Y		; F9 54 54
	ora [$08.b]		; 07 08
	tsb $1C1F.w		; 0C 1F 1C
	clc		; 18
	php		; 08
	jsr $3334.w		; 20 34 33
	ora [$07.b],Y		; 17 07
	php		; 08
	ora $332018.l,X		; 1F 18 20 33
	ora [$FF.b]		; 07 FF
	sbc $17FDD7.l,X		; FF D7 FD 17
	ora #$08C8.w		; 09 C8 08
	.db $62, $C0, $50		; 62 C0 50
	and ($12.b,S),Y		; 33 12
	cop $0A.b		; 02 0A
	bpl -99.b		; 10 9D
	plp		; 28
	ldy $D4.b,X		; B4 D4
	ora #$0803.w		; 09 03 08
	cpy #$33.b		; C0 33
	ora $02.b,S		; 03 02
	bpl  14.b		; 10 0E
	bit $D015.w		; 2C 15 D0
	bit $FF.b		; 24 FF
	sbc $B5D57F.l,X		; FF 7F D5 B5
	bpl -21.b		; 10 EB
	jsr $23FD.w		; 20 FD 23
	lda [$4F.b],Y		; B7 4F
	cmp $7EBD3F.l,X		; DF 3F BD 7E
	inc $7071.w		; EE 71 70
	ora $10C308.l		; 0F 08 C3 10
	sty $03.b		; 84 03
	bra  79.b		; 80 4F
	and $0F717E.l,X		; 3F 7E 71 0F
	bra  63.b		; 80 3F
	jsr ($541F.w,X)		; FC 1F 54
	sbc $4203.w,X		; FD 03 42
	jmp ($8040.w,X)		; 7C 40 80
	rti		; 40

	bra -32.b		; 80 E0
	cpy #$40.b		; C0 40
	rti		; 40

	ora $80.b,S		; 03 80
	jmp ($8080.w,X)		; 7C 80 80
	bra -64.b		; 80 C0
	rti		; 40

	adc $C03FC4.l,X		; 7F C4 3F C0
	adc $9E86.w,Y		; 79 86 9E
	ora $4040.w,Y		; 19 40 40
	tsb $04.b		; 04 04
	rti		; 40

	rti		; 40

	sta $30310F.l		; 8F 0F 31 30
	rts		; 60

	jsr $2060.w		; 20 60 20
	sbc $1057F7.l,X		; FF F7 57 10
	sta $4AF7.w,X		; 9D F7 4A
	bit #$91AD.w		; 89 AD 91
	ora $12.b,X		; 15 12
	cop $02.b		; 02 02
	inc A		; 1A
	php		; 08
	tsb $04.b		; 04 04
	tsb $6E.b		; 04 6E
	sbc $063083.l,X		; FF 83 30 06
	tsb $BFFF.w		; 0C FF BF
	sbc $7DBBDF.l,X		; FF DF BB 7D
	cmp $9B87.w		; CD 87 9B
	asl $1C36.w		; 0E 36 1C
	bit $4038.w		; 2C 38 40
	jsr $5058.w		; 20 58 50
	rti		; 40

	inc $03FF.w,X		; FE FF 03
	ora ($06.b,X)		; 01 06
	cop $0C.b		; 02 0C
	tsb $18.b		; 04 18
	php		; 08
	jsr $1010.w		; 20 10 10
	rti		; 40

	jsr $13FF.w		; 20 FF 13
	sbc $2D3E33.l,X		; FF 33 3E 2D
	plp		; 28
	ora ($1F.b)		; 12 1F
	ora ($0F.b),Y		; 11 0F
	asl A		; 0A
	php		; 08
	tsb $03.b		; 04 03
	inc A		; 1A
	rol $2016.w,X		; 3E 16 20
	inc A		; 1A
	bpl  15.b		; 10 0F
	phd		; 0B
	tsb $04.b		; 04 04
	asl $02.b		; 06 02
	sbc $CFF75B.l,X		; FF 5B F7 CF
	cmp $7F.b,X		; D5 7F
	tsx		; BA
	cmp $81.b		; C5 81
	lda $C0.b		; A5 C0
	tsb $D1.b		; 04 D1
	ora [$02.b],Y		; 17 02
	rts		; 60

	cop $2A.b		; 02 2A
	sbc $E00C3F.l,X		; FF 3F 0C E0
	cpy #$C4.b		; C0 C4
	tsb $06.b		; 04 06
	and ($33.b,S),Y		; 33 33
	ora ($01.b,X)		; 01 01
	sta $503FFF.l		; 8F FF 3F 50
	ldx $01C1.w,Y		; BE C1 01
	sta ($03.b,X)		; 81 03
	sta ($83.b,X)		; 81 83
	eor $C3.b,S		; 43 C3
	lda ($F1.b),Y		; B1 F1
	cmp ($E1.b,X)		; C1 E1
	sep #$02		; E2 02
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	bra  65.b		; 80 41
	sbc $FFFF55.l,X		; FF 55 FF FF
	sta $709C.w,X		; 9D 9C 70
	adc ($2F.b,S),Y		; 73 2F
	cpx #$B3.b		; E0 B3
	bra  65.b		; 80 41
	lda $BD7D.w,Y		; B9 7D BD
	trb $707B.w		; 1C 7B 70
	ldy $D1E1.w		; AC E1 D1
	sta $3E4D.w		; 8D 4D 3E
	ldx $7E7E.w,Y		; BE 7E 7E
	inc $7EFE.w,X		; FE FE 7E
	ror $FFFF.w,X		; 7E FF FF
	eor $EF35FF.l,X		; 5F FF 35 EF
	dec $3EB0.w,X		; DE B0 3E
	and ($3A.b,X)		; 21 3A
	cmp $1D11.w		; CD 11 1D
	ora $56.b		; 05 56
	bit $7808.w		; 2C 08 78
	bcc  27.b		; 90 1B
	and $18C0AC.l,X		; 3F AC C0 18
	sbc ($0D.b,S),Y		; F3 0D
	ora $56.b,S		; 03 56
	tsb $3008.w		; 0C 08 30
	bcc  64.b		; 90 40
	sbc $5F6FFA.l,X		; FF FA 6F 5F
	dec $7EEA.w,X		; DE EA 7E
	ldx $FCF0.w,Y		; BE F0 FC
	bcc -100.b		; 90 9C
	trb $14.b		; 14 14
	php		; 08
	trb $3C28.w		; 1C 28 3C
	pea $C0FE.w		; F4 FE C0
	inc $C0.b,X		; F6 C0
	rts		; 60

	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	inx		; E8
	iny		; C8
	sbc $5455FD.l		; EF FD 55 54
	and $03011C.l,X		; 3F 1C 01 03
	rti		; 40

	adc ($60.b,X)		; 61 60
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $03.b,S		; 03 03
	cop $1C.b		; 02 1C
	ora $40.b,S		; 03 40
	rts		; 60

	ora ($03.b,X)		; 01 03
	cop $FF.b		; 02 FF
	sbc $7C7FFF.l,X		; FF FF 7F 7C
	stz $08E8.w		; 9C E8 08
	adc ($80.b,X)		; 61 80
	sbc $D580.w,X		; FD 80 D5
	tsb $2E.b		; 04 2E
	cpy #$15.b		; C0 15
	cpx #$CF.b		; E0 CF
	beq -100.b		; F0 9C
	and $802F18.l,X		; 3F 18 2F 80
	and $0E3D82.l,X		; 3F 82 3D 0E
	and $C0.b,X		; 35 C0
	ora $F00EE0.l,X		; 1F E0 0E F0
	cmp [$BF.b],Y		; D7 BF
	eor $57.b,S		; 43 57
	cpy #$3F.b		; C0 3F
	ora $1C.b,S		; 03 1C
	tay		; A8
	bmi -102.b		; 30 9A
	jmp ($0C11.w,X)		; 7C 11 0C
	ora $81.b,S		; 03 81
	ora ($3F.b,X)		; 01 3F
	bra  48.b		; 80 30
	jmp ($0C80.w,X)		; 7C 80 0C
	sta ($01.b,X)		; 81 01
	eor ($03.b,S),Y		; 53 03
	ora ($01.b,X)		; 01 01
	sbc $0403FF.l,X		; FF FF 03 04
	ora $FF01.w,Y		; 19 01 FF
	ora ($7F.b,X)		; 01 7F
	tsb $030F.w		; 0C 0F 03
	eor [$BF.b]		; 47 BF
	bra -127.b		; 80 81
	eor #$0141.w		; 49 41 01
	bcc -128.b		; 90 80
	ldx $C13F.w,Y		; BE 3F C1
	rti		; 40

	bra -128.b		; 80 80
	sbc $5557FF.l,X		; FF FF 57 55
	tyx		; BB
	adc $418416.l,X		; 7F 16 84 41
	jmp $D010.w		; 4C 10 D0
	.db $82, $92, $80		; 82 92 80
	lsr $41.b		; 46 41
	adc #$2F70.w		; 69 70 2F
	cmp [$FF.b],Y		; D7 FF
	bra  12.b		; 80 0C
	cpy #$10.b		; C0 10
	lsr $28.b		; 46 28
	ora $43FDC3.l,X		; 1F C3 FD 43
	pei ($CF.b)		; D4 CF
	cpy #$28.b		; C0 28
	jsr $2080.w		; 20 80 20
	rti		; 40

	sty $90.b,X		; 94 90
	bmi -96.b		; 30 A0
	lda $4020C0.l,X		; BF C0 20 40
	bpl -96.b		; 10 A0
	jsr $CD53.w		; 20 53 CD
	cmp $C4.b,S		; C3 C4
	ora $0120.w		; 0D 20 01
	asl $04.b		; 06 04
	bpl  16.b		; 10 10
	ora $1B20.w,Y		; 19 20 1B
	ora $06.b,S		; 03 06
	cop $10.b		; 02 10
	ora $01.b,S		; 03 01
	sbc $5455FF.l,X		; FF FF 55 54
	txy		; 9B
	sta [$B1.b],Y		; 97 B1
	lda ($A5.b,S),Y		; B3 A5
	lda [$E5.b],Y		; B7 E5
	sbc [$47.b]		; E7 47
	adc [$C7.b]		; 67 C7
	cmp [$85.b]		; C7 85
	cmp [$87.b]		; C7 87
	sta [$93.b]		; 87 93
	bmi   1.b		; 30 01
	rts		; 60

	bra  64.b		; 80 40
	bra  -1.b		; 80 FF
	sbc $E655FB.l,X		; FF FB 55 E6
	lda $BCEC.w,Y		; B9 EC BC
	jsr ($5CFC.w,X)		; FC FC 5C
	trb $FE56.w		; 1C 56 FE
	ldx $AE4E.w		; AE 4E AE
	inc $FF5B.w		; EE 5B FF
	ldy $4040.w,X		; BC 40 40
	bvc -32.b		; 50 E0
	ldy #$E0.b		; A0 E0
	ldy #$B8.b		; A0 B8
	cpx #$B0.b		; E0 B0
	sbc $5555FF.l,X		; FF FF 55 55
	sta $CD8D.w		; 8D 8D CD
	cmp $F979.w		; CD 79 F9
	pld		; 2B
	rtl		; 6B

	and ($33.b,S),Y		; 33 33
	tas		; 1B
	tsa		; 3B
	ora $0F061F.l		; 0F 1F 06 0F
	sta [$C0.b]		; 87 C0
	rts		; 60

	ora $30.b,S		; 03 30
	clc		; 18
	tsb $0F05.w		; 0C 05 0F
	eor [$0F.b],Y		; 57 0F
	ora ($9F.b,X)		; 01 9F
	rti		; 40

	cpx #$80.b		; E0 80
	rti		; 40

	rti		; 40

	ora ($40.b,X)		; 01 40
	bra -65.b		; 80 BF
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	sbc [$F5.b],Y		; F7 F5
	sbc ($F0.b,X)		; E1 F0
	plp		; 28
	bit $1030.w,X		; 3C 30 10
	bpl  80.b		; 10 50
	bvc  16.b		; 50 10
	rts		; 60

	plp		; 28
	and #$A2A0.w		; 29 A0 A2
	iny		; C8
	bpl  80.b		; 10 50
	bpl   8.b		; 10 08
	plp		; 28
	ldy #$21.b		; A0 21
	sbc $D5.b,S		; E3 D5
	eor ($40.b),Y		; 51 40
	eor $E0803F.l,X		; 5F 3F 80 E0
	cpx #$03.b		; E0 03
	tsb $0310.w		; 0C 10 03
	ora $3F.b,S		; 03 3F
	bra -32.b		; 80 E0
	ora $FF.b,S		; 03 FF
	sbc $E355DD.l,X		; FF DD 55 E3
	jsr ($0404.w,X)		; FC 04 04
	rol A		; 2A
	asl A		; 0A
	bne  16.b		; D0 10
	and ($21.b,X)		; 21 21
	stz $74.b,X		; 74 74
	cpy #$C0.b		; C0 C0
	lda ($81.b,X)		; A1 81
	jsr ($0206.w,X)		; FC 06 02
	php		; 08
	ora $05.b,X		; 15 05
	jsr $C070.w		; 20 70 C0
	bra  -9.b		; 80 F7
	sbc $8FD551.l,X		; FF 51 D5 8F
	adc $C0C708.l,X		; 7F 08 C7 C0
	cpx #$E0.b		; E0 E0
	bmi  48.b		; 30 30
	jmp $0E2E1C.l		; 5C 1C 2E 0E
	ora ($43.b,S),Y		; 13 43
	adc $30E0C0.l,X		; 7F C0 E0 30
	trb $C30E.w		; 1C 0E C3
	bra  -9.b		; 80 F7
	ora $E305C3.l		; 0F C3 05 E3
	jsr ($8160.w,X)		; FC 60 81
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($06.b,X)		; 01 06
	asl $FD.b		; 06 FD
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	asl $D3.b		; 06 D3
	adc $1F3FC3.l,X		; 7F C3 3F 1F
	sbc $808810.l,X		; FF 10 88 80
	cpy $C0.b		; C4 C0
	bvs 112.b		; 70 70
	sec		; 38
	sec		; 38
	ora $FF.b,S		; 03 FF
	sbc $C08080.l,X		; FF 80 80 C0
	rti		; 40

	bvs  48.b		; 70 30
	sec		; 38
	php		; 08
	and $000751.l,X		; 3F 51 07 00
	sbc [$FB.b],Y		; F7 FB
	asl $05.b		; 06 05
	ora ($01.b),Y		; 11 01
	jsr $8040.w		; 20 40 80
	jsr ($03FF.w,X)		; FC FF 03
	sbc $0DDFFF.l,X		; FF FF DF 0D
	xba		; EB
	sed		; F8
	cli		; 58
	cpy #$D6.b		; C0 D6
	ldy $54.b,X		; B4 54
	pha		; 48
	phd		; 0B
	cop $27.b		; 02 27
	and $03.b		; 25 03
	cop $05.b		; 02 05
	ora ($07.b,X)		; 01 07
	cpx #$C0.b		; E0 C0
	bpl  52.b		; 10 34
	php		; 08
	php		; 08
	cop $05.b		; 02 05
	tsb $F7.b		; 04 F7
	sbc $07D333.l,X		; FF 33 D3 07
	ora ($02.b),Y		; 11 02
	cop $03.b		; 02 03
	ora $01.b		; 05 01
	ora $020E.w		; 0D 0E 02
	cop $0A.b		; 02 0A
	trb $06.b		; 14 06
	trb $010E.w		; 1C 0E 01
	ora $02.b,S		; 03 02
	asl $0404.w		; 0E 04 04
	tsb $0C.b		; 04 0C
	cmp [$7F.b],Y		; D7 7F
	sta $15.b,S		; 83 15
	ply		; 7A
	sbc $0880.w,X		; FD 80 08
	ora ($03.b,X)		; 01 03
	tsb $05.b		; 04 05
	bpl   1.b		; 10 01
	ora $05.b,S		; 03 05
	jsr $FDFD.w		; 20 FD FD
	cop $01.b		; 02 01
	ora ($06.b,X)		; 01 06
	sbc $35F5FF.l,X		; FF FF F5 35
	trb $EDFF.w		; 1C FF ED
	sbc $8A9B1B.l,X		; FF 1B 9B 8A
	rtl		; 6B

	ora #$6FF9.w		; 09 F9 6F
	sbc $FCFEF3.l,X		; FF F3 FE FC
	sbc $66101D.l,X		; FF 1D 10 66
	rts		; 60

	bcc -112.b		; 90 90
	ora $0E.b,S		; 03 0E
	asl $01.b		; 06 01
	sbc [$B1.b],Y		; F7 B1
	ora $FDFA40.l,X		; 1F 40 FA FD
	sta $02.b		; 85 02
	ora $03.b,S		; 03 03
	ora ($41.b,X)		; 01 41
	ldy #$80.b		; A0 80
	bra  -4.b		; 80 FC
	jsr ($0302.w,X)		; FC 02 03
	ora ($80.b,X)		; 01 80
	sbc ($BF.b),Y		; F1 BF
	adc ($AD.b),Y		; 71 AD
	jmp ($8084.w,X)		; 7C 84 80
	ora #$7001.w		; 09 01 70
	cpx #$83.b		; E0 83
	ldx $3402.w,Y		; BE 02 34
	asl $80FF.w		; 0E FF 80
	bra   1.b		; 80 01
	cpx #$1E.b		; E0 1E
	jsr $0E34.w		; 20 34 0E
	sbc $E0E3F5.l,X		; FF F5 E3 E0
	dey		; 88
	sbc $4004C8.l,X		; FF C8 04 40
	.db $42, $40		; 42 40
	.db $42, $10		; 42 10
	bra -128.b		; 80 80
	.db $82, $C0, $80		; 82 C0 80
	bmi   1.b		; 30 01
	eor ($40.b,X)		; 41 40
	eor ($81.b,X)		; 41 81
	bra -128.b		; 80 80
	sbc $F8FFF5.l,X		; FF F5 FF F8
	jmp ($9C13.w)		; 6C 13 9C
	trb $1050.w		; 1C 50 10
	bvc  16.b		; 50 10
	and ($E0.b,X)		; 21 E0
	nop		; EA
	php		; 08
	rol $04.b,X		; 36 04
	ora ($80.b,S),Y		; 13 80
	trb $1080.w		; 1C 80 10
	cpy #$10.b		; C0 10
	jsr $0820.w		; 20 20 08
	beq   4.b		; F0 04
	cpy #$FF.b		; C0 FF
	adc [$D7.b],Y		; 77 D7
	brk $3B.b		; 00 3B
	sbc $41.b		; E5 41
	ora [$A5.b]		; 07 A5
	asl $2F33.w		; 0E 33 2F
	trb $010C.w		; 1C 0C 01
	bpl  16.b		; 10 10
	.db $42, $EE		; 42 EE
	ora $3C0E03.l		; 0F 03 0E 3C
	bpl  -1.b		; 10 FF
	adc $0C37.w,Y		; 79 37 0C
	sed		; F8
	lda $828004.l,X		; BF 04 80 82
	ldy #$40.b		; A0 40
	rti		; 40

	ora ($10.b,X)		; 01 10
	jsr $8020.w		; 20 20 80
	and $608080.l,X		; 3F 80 80 60
	rti		; 40

	bmi  32.b		; 30 20
	sbc $33D5FF.l,X		; FF FF D5 33
	cpy $3B.b		; C4 3B
	jsr ($3BFC.w,X)		; FC FC 3B
	tsa		; 3B
	tsb $04.b		; 04 04
	phd		; 0B
	phd		; 0B
	sta $04.b		; 85 04
	adc ($10.b)		; 72 10
	php		; 08
	php		; 08
	tsa		; 3B
	jsr ($073B.w,X)		; FC 3B 07
	ora $0C.b,S		; 03 0C
	tsb $18.b		; 04 18
	php		; 08
	sbc $017F1F.l,X		; FF 1F 7F 01
	php		; 08
	sbc [$F8.b],Y		; F7 F8
	sed		; F8
	tya		; 98
	pla		; 68
	lda [$78.b],Y		; B7 78
	cmp $E2E3.w,X		; DD E3 E2
	ora $18.b,S		; 03 18
	sbc [$07.b],Y		; F7 07
	sed		; F8
	php		; 08
	bcc -16.b		; 90 F0
	adc $FFC21F.l,X		; 7F 1F C2 FF
	ora $55.b,S		; 03 55
	sbc $6F8080.l,X		; FF 80 80 6F
	sta $ADF834.l,X		; 9F 34 F8 AD
	stz $474B.w,X		; 9E 4B 47
	sbc $F8E0FF.l,X		; FF FF E0 F8
	asl $FF07.w,X		; 1E 07 FF
	sbc $1FD441.l,X		; FF 41 D4 1F
	sbc $B7FFDF.l,X		; FF DF FF B7
	sbc [$7F.b],Y		; F7 7F
	sbc $DFEFEF.l,X		; FF EF EF DF
	cmp $FFBFBF.l,X		; DF BF BF FF
	adc $100878.l,X		; 7F 78 08 10
	jsr $80C0.w		; 20 C0 80
	sbc $2BFFAB.l,X		; FF AB FF 2B
	asl A		; 0A
	ora $1A09.w,X		; 1D 09 1A
	tsb $15.b		; 04 15
	ora $1B.b,S		; 03 1B
	ora ($15.b,X)		; 01 15
	phd		; 0B
	asl $01.b		; 06 01
	phd		; 0B
	ora $09.b,S		; 03 09
	ora $04.b		; 05 04
	asl A		; 0A
	ora $04.b,S		; 03 04
	ora ($0A.b,X)		; 01 0A
	tsb $01.b		; 04 01
	sbc $FFFFFF.l		; EF FF FF FF
	sty $14F7.w		; 8C F7 14
	sbc $EDE2F7.l		; EF F7 E2 ED
.INDEX 16
	rep #$D5		; C2 D5
	asl $E9.b		; 06 E9
	tsb $0833.w		; 0C 33 08
	sbc [$FB.b],Y		; F7 FB
	sbc $03F7F3.l,X		; FF F3 F7 03
	phd		; 0B
	sbc $13.b,S		; E3 13
	cmp $2B.b,S		; C3 2B
	ora [$17.b]		; 07 17
	ora $2F2FCF.l		; 0F CF 2F 2F
	eor [$01.b],Y		; 57 01
	ora $00.b,S		; 03 00
	rts		; 60

	sbc $040810.l,X		; FF 10 08 04
	ora $FF.b,S		; 03 FF
	sbc $C7FFFF.l,X		; FF FF FF C7
	sbc $09BFCF.l		; EF CF BF 09
	cpy #$A1A7.w		; C0 A7 A1
	ora $63.b,S		; 03 63
	dec $57.b,X		; D6 57
	trb $36.b		; 14 36
	rts		; 60

	bit $20.b		; 24 20
	ora [$7F.b]		; 07 7F
	sbc $0161C0.l,X		; FF C0 61 01
	cop $03.b		; 02 03
	bit $041E.w,X		; 3C 1E 04
	clc		; 18
	ora $EFEDFF.l,X		; 1F FF ED EF
	inx		; E8
	bra  85.b		; 80 55
	sta ($C2.b,X)		; 81 C2
	ora ($31.b,X)		; 01 31
	ora ($81.b,X)		; 01 81
	cop $02.b		; 02 02
	.db $62, $CC, $02		; 62 CC 02
	ply		; 7A
	bra -86.b		; 80 AA
	bra -62.b		; 80 C2
	and ($01.b),Y		; 31 01
	sta ($62.b,X)		; 81 62
	cpy $7A02.w		; CC 02 7A
	adc $2C0BFC.l,X		; 7F FC 0B 2C
	bra -23.b		; 80 E9
	bpl  16.b		; 10 10
	bpl   9.b		; 10 09
	ldy #$2020.w		; A0 20 20
	rts		; 60

	jsr $1020.w		; 20 20 10
	cpx #$1010.w		; E0 10 10
	jsr $2020.w		; 20 20 20
	sbc $30BFF5.l,X		; FF F5 BF 30
	stz $AD01.w,X		; 9E 01 AD
	ora $12D2.w		; 0D D2 12
	sta $0241.w		; 8D 41 02
	jsr $6060.w		; 20 60 60
	bpl  16.b		; 10 10
	ora $13EC.w		; 0D EC 13
	and ($21.b)		; 32 21
	sbc ($40.b,X)		; E1 40
	jsr $F340.w		; 20 40 F3
	sbc $40D3.w,X		; FD D3 40
	adc [$9F.b]		; 67 9F
	dey		; 88
	bra  80.b		; 80 50
	jsr $9040.w		; 20 40 90
	bra  16.b		; 80 10
	bpl  32.b		; 10 20
	bmi -65.b		; 30 BF
	and $C0E080.l,X		; 3F 80 E0 C0
	bmi -17.b		; 30 EF
	eor [$F7.b],Y		; 57 F7
	ora $9F.b,S		; 03 9F
	sbc $0A0140.l		; EF 40 01 0A
	and ($15.b),Y		; 31 15
	asl $080E.w,X		; 1E 0E 08
	asl $01.b		; 06 01
	sbc $1B01E0.l		; EF E0 01 1B
	ora ($0E.b),Y		; 11 0E
	asl A		; 0A
	tsb $04.b		; 04 04
	adc $003F54.l,X		; 7F 54 3F 00
	sbc [$CF.b],Y		; F7 CF
	bpl -48.b		; 10 D0
	inx		; E8
	cpx #$2010.w		; E0 10 20
	rti		; 40

	bra -33.b		; 80 DF
	ora $C020E0.l,X		; 1F E0 20 C0
	cpy #$1403.w		; C0 03 14
	ora $00.b,S		; 03 00
	beq  -1.b		; F0 FF
	bpl  32.b		; 10 20
	sbc $7553FF.l,X		; FF FF 53 75
	and ($33.b,S),Y		; 33 33
	rol $01C0.w,X		; 3E C0 01
	cop $02.b		; 02 02
	tsb $44.b		; 04 44
	rti		; 40

	php		; 08
	sbc $0101FF.l,X		; FF FF 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $56A954.l,X		; FF 54 A9 56
	stx $AA.b,Y		; 96 AA
	txs		; 9A
	sta $9AAA5A.l,X		; 9F 5A AA 9A
	tax		; AA
	ldx $5A.b		; A6 5A
	txs		; 9A
	txs		; 9A
	phy		; 5A
	stx $6A.b,Y		; 96 6A
	tax		; AA
	tax		; AA
	txs		; 9A
	eor $55ED.w,Y		; 59 ED 55
	ldx $EA.b		; A6 EA
	tax		; AA
	tax		; AA
	tax		; AA
	plx		; FA
	tax		; AA
	plb		; AB
	tax		; AA
	lda $FEEAAA.l		; AF AA EA FE
	tax		; AA
	tax		; AA
	ldx $ABAB.w,Y		; BE AB AB
	lsr $95.b,X		; 56 95
	adc #$5559.w		; 69 59 55
	tax		; AA
	lda $A6.b		; A5 A6
	lda $9A.b		; A5 9A
	txs		; 9A
	stx $AA.b,Y		; 96 AA
	lda $99.b		; A5 99
	ror A		; 6A
	ldx $56.b		; A6 56
	eor $9AAA.w,Y		; 59 AA 9A
	ror A		; 6A
	tax		; AA
	tax		; AA
	txs		; 9A
	tax		; AA
	stx $9A.b,Y		; 96 9A
	tax		; AA
	stz $AA99.w,X		; 9E 99 AA
	inc $AAAA.w,X		; FE AA AA
	nop		; EA
	tax		; AA
	tax		; AA
	lsr $AAAA.w,X		; 5E AA AA
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	rti		; 40

	brk $5C.b		; 00 5C
	cop $00.b		; 02 00
	jsr $0002.w		; 20 02 00
	bpl  16.b		; 10 10
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	php		; 08
	php		; 08
	eor ($85.b)		; 52 85
	cop $00.b		; 02 00
	php		; 08
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	clc		; 18
	bpl   2.b		; 10 02
	asl A		; 0A
	eor ($15.b)		; 52 15
	php		; 08
	clc		; 18
	clc		; 18
	tsb $03A9.w		; 0C A9 03
	ora ($07.b,X)		; 01 07
	ldy $D556.w		; AC 56 D5
	eor [$21.b],Y		; 57 21
	php		; 08
	tsb $01.b		; 04 01
	ora $01.b,S		; 03 01
	ora $1C0301.l		; 0F 01 03 1C
	phd		; 0B
	trb $07.b		; 14 07
	tsb $0D0D.w		; 0C 0D 0D
	tsb $02.b		; 04 02
	plp		; 28
	eor [$55.b],Y		; 57 55
	php		; 08
	clc		; 18
	clc		; 18
	lda $030C.w		; AD 0C 03
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	eor [$D5.b],Y		; 57 D5
	eor [$25.b],Y		; 57 25
	asl $0108.w		; 0E 08 01
	ora $010301.l,X		; 1F 01 03 01
	ora [$01.b]		; 07 01
	trb $16.b		; 14 16
	trb $01.b		; 14 01
	ora $1A0301.l		; 0F 01 03 1A
	tsb $22.b		; 04 22
	eor $57.b,X		; 55 57
	eor $08.b,X		; 55 08
	clc		; 18
	lda $03.b,X		; B5 03
	ora ($0F.b,X)		; 01 0F
	lda $030C.w,Y		; B9 0C 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($7F.b,X)		; 01 7F
	eor [$D5.b],Y		; 57 D5
	cmp [$27.b],Y		; D7 27
	tas		; 1B
	php		; 08
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $140301.l,X		; 3F 01 03 14
	and $14.b,S		; 23 14
	ora [$01.b]		; 07 01
	ora $18.b,S		; 03 18
	ora ($18.b,X)		; 01 18
	and [$04.b]		; 27 04
	.db $62, $55, $57		; 62 55 57
	eor $08.b,X		; 55 08
	clc		; 18
	cmp ($03.b,X)		; C1 03
	ora ($07.b,X)		; 01 07
	ora ($C6.b,X)		; 01 C6
	tsb $0F01.w		; 0C 01 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($57.b,X)		; 01 57
	cmp $77.b,X		; D5 77
	and [$28.b]		; 27 28
	php		; 08
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($14.b,X)		; 01 14
	bmi  20.b		; 30 14
	ora ($03.b,X)		; 01 03
	clc		; 18
	ora ($07.b,X)		; 01 07
	clc		; 18
	bit $04.b,X		; 34 04
	.db $62, $55, $57		; 62 55 57
	eor $08.b,X		; 55 08
	clc		; 18
	dec $1F01.w		; CE 01 1F
	ora ($03.b,X)		; 01 03
	cmp ($0C.b,S),Y		; D3 0C
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	adc $57.b,X		; 75 57
	and $35.b		; 25 35
	php		; 08
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	trb $07.b		; 14 07
	and $0314.w,X		; 3D 14 03
	ora ($7F.b,X)		; 01 7F
	ora ($41.b,X)		; 01 41
	tsb $72.b		; 04 72
	eor $5F.b,X		; 55 5F
	eor $08.b,X		; 55 08
	stp		; DB
	clc		; 18
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $0310E1.l,X		; 3F E1 10 03
	trb $0701.w		; 1C 01 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	eor [$75.b],Y		; 57 75
	eor [$21.b],Y		; 57 21
	.db $42, $08		; 42 08
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	trb $4A01.w		; 1C 01 4A
	trb $01.b		; 14 01
	ora [$01.b]		; 07 01
	eor $7204.w		; 4D 04 72
	eor $5F.b,X		; 55 5F
	eor $08.b,X		; 55 08
	sbc #$0318.w		; E9 18 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	sbc $1CEF10.l		; EF 10 EF 1C
	beq   1.b		; F0 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	eor [$75.b],Y		; 57 75
	eor [$21.b],Y		; 57 21
	lsr $0108.w		; 4E 08 01
	ora $520301.l,X		; 1F 01 03 52
	eor ($1C.b,S),Y		; 53 1C
	ora [$55.b]		; 07 55
	trb $03.b		; 14 03
	ora ($0F.b,X)		; 01 0F
	cli		; 58
	tsb $62.b		; 04 62
	eor $5F.b,X		; 55 5F
	adc $08.b,X		; 75 08
	clc		; 18
	inc $01.b,X		; F6 01
	ora $FB0301.l		; 0F 01 03 FB
	bpl  -5.b		; 10 FB
	trb $01FC.w		; 1C FC 01
	ora $01.b,S		; 03 01
	sbc $570101.l,X		; FF 01 01 57
	adc $57.b,X		; 75 57
	and $59.b		; 25 59
	php		; 08
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	eor $1C5E.w,X		; 5D 5E 1C
	ora ($60.b,X)		; 01 60
	trb $01.b		; 14 01
	ora $01.b,S		; 03 01
	ora [$64.b]		; 07 64
	tsb $E2.b		; 04 E2
	eor $7F.b,X		; 55 7F
	eor $08.b,X		; 55 08
	clc		; 18
	cop $01.b		; 02 01
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora [$11.b]		; 07 11
	ora [$1D.b]		; 07 1D
	php		; 08
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	eor [$75.b],Y		; 57 75
	eor [$35.b],Y		; 57 35
	adc $08.b		; 65 08
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	trb $6D07.w		; 1C 07 6D
	trb $03.b		; 14 03
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	adc ($04.b)		; 72 04
.INDEX 8
	sep #$55		; E2 55
	eor $180855.l,X		; 5F 55 08 18
	asl $0101.w		; 0E 01 01
	ora $130301.l,X		; 1F 01 03 13
	ora ($07.b),Y		; 11 07
	trb $0301.w		; 1C 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	eor [$75.b],Y		; 57 75
	eor [$35.b],Y		; 57 35
	adc ($08.b,S),Y		; 73 08
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $031C01.l		; 0F 01 1C 03
	tda		; 7B
	trb $07.b		; 14 07
	ora ($03.b,X)		; 01 03
	ora ($FF.b,X)		; 01 FF
	bra   4.b		; 80 04
.INDEX 8
	sep #$55		; E2 55
	eor $180855.l,X		; 5F 55 08 18
	tas		; 1B
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($20.b,X)		; 01 20
	ora ($01.b),Y		; 11 01
	trb $0103.w		; 1C 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	eor [$75.b],Y		; 57 75
	eor [$25.b],Y		; 57 25
	sta ($08.b,X)		; 81 08
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	trb $890F.w		; 1C 0F 89
	trb $03.b		; 14 03
	ora ($07.b,X)		; 01 07
	ora ($8D.b,X)		; 01 8D
	tsb $E2.b		; 04 E2
	eor $5F.b,X		; 55 5F
	eor $08.b,X		; 55 08
	clc		; 18
	plp		; 28
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora [$2D.b]		; 07 2D
	ora ($03.b),Y		; 11 03
	trb $1F01.w		; 1C 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	eor [$75.b],Y		; 57 75
	eor [$25.b],Y		; 57 25
	stx $0108.w		; 8E 08 01
	ora $010301.l,X		; 1F 01 03 01
	ora [$1C.b]		; 07 1C
	ora ($96.b,X)		; 01 96
	trb $01.b		; 14 01
	ora $9A0301.l		; 0F 01 03 9A
	tsb $E2.b		; 04 E2
	eor $5F.b,X		; 55 5F
	eor $08.b,X		; 55 08
	clc		; 18
	and $01.b,X		; 35 01
	ora $01.b,S		; 03 01
	ora $113A01.l		; 0F 01 3A 11
	ora ($1C.b,X)		; 01 1C
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	adc $755701.l,X		; 7F 01 57 75
	eor [$35.b],Y		; 57 35
	txy		; 9B
	php		; 08
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $031C01.l,X		; 3F 01 1C 03
	lda $14.b,S		; A3 14
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $E204A8.l		; 0F A8 04 E2
	eor $5F.b,X		; 55 5F
	eor $08.b,X		; 55 08
	clc		; 18
	.db $42, $01		; 42 01
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$11.b]		; 47 11
	ora $03011C.l		; 0F 1C 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	rti		; 40

	brk $45.b		; 00 45
	ora $57.b,S		; 03 57
	eor $03.b,X		; 55 03
	brk $01.b		; 00 01
	inc A		; 1A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $031A09.l		; 0F 09 1A 03
	brk $57.b		; 00 57
	eor $09.b,X		; 55 09
	inc A		; 1A
	php		; 08
	phy		; 5A
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $57.b,S		; 03 57
	ora $03.b,X		; 15 03
	brk $0A.b		; 00 0A
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	ora #$031A.w		; 09 1A 03
	brk $73.b		; 00 73
	eor $09.b,X		; 55 09
	inc A		; 1A
	ora #$061A.w		; 09 1A 06
	rti		; 40

	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($57.b,X)		; 01 57
	ora ($03.b,X)		; 01 03
	brk $10.b		; 00 10
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($1A.b,X)		; 01 1A
	ora #$031A.w		; 09 1A 03
	brk $03.b		; 00 03
	eor [$09.b],Y		; 57 09
	inc A		; 1A
	ora #$1A1A.w		; 09 1A 1A
	rti		; 40

	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	ora ($03.b,X)		; 01 03
	brk $14.b		; 00 14
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($1E.b,X)		; 01 1E
	ora #$031A.w		; 09 1A 03
	brk $03.b		; 00 03
	eor [$09.b],Y		; 57 09
	inc A		; 1A
	ora #$1E1A.w		; 09 1A 1E
	rti		; 40

	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	ora $03.b		; 05 03
	brk $18.b		; 00 18
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $09.b,X		; 15 09
	inc A		; 1A
	ora $00.b,S		; 03 00
	cmp $55.b,S		; C3 55
	ora #$091A.w		; 09 1A 09
	inc A		; 1A
	ora $40.b,X		; 15 40
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	eor [$15.b],Y		; 57 15
	ora $00.b,S		; 03 00
	clc		; 18
	inc A		; 1A
	ora $03.b		; 05 03
	ora ($3F.b,X)		; 01 3F
	ora ($28.b,X)		; 01 28
	ora #$031A.w		; 09 1A 03
	brk $73.b		; 00 73
	eor $09.b,X		; 55 09
	inc A		; 1A
	ora #$281A.w		; 09 1A 28
	rti		; 40

	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	ora $57.b		; 05 57
	eor $03.b,X		; 55 03
	brk $22.b		; 00 22
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($09.b,X)		; 01 09
	inc A		; 1A
	ora $00.b,S		; 03 00
	eor [$55.b],Y		; 57 55
	ora #$291A.w		; 09 1A 29
	phy		; 5A
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	brk $2A.b		; 00 2A
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($1F.b,X)		; 01 1F
	ora ($32.b,X)		; 01 32
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	and $5C03.w,X		; 3D 03 5C
	eor [$55.b],Y		; 57 55
	ora #$3D1A.w		; 09 1A 3D
	rti		; 40

	ora [$01.b]		; 07 01
	and ($5A.b),Y		; 31 5A
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($F7.b,X)		; 01 F7
	ora $57.b,X		; 15 57
	ora ($35.b,X)		; 01 35
	inc A		; 1A
	ora $27.b,S		; 03 27
	bra  38.b		; 80 26
	bra  15.b		; 80 0F
	ora ($30.b,X)		; 01 30
	ora #$331A.w		; 09 1A 33
	ora ($07.b,X)		; 01 07
	and $03.b,X		; 35 03
	cmp [$73.b],Y		; D7 73
	adc $1A09.w,X		; 7D 09 1A
	and $40.b,X		; 35 40
	ora [$01.b]		; 07 01
	and ($40.b,S),Y		; 33 40
	ora #$301A.w		; 09 1A 30
	rti		; 40

	ora ($0F.b,X)		; 01 0F
	rol $80.b		; 26 80
	and [$80.b]		; 27 80
	ora $57.b,S		; 03 57
	eor $17.b,X		; 55 17
	brk $3D.b		; 00 3D
	inc A		; 1A
	ora $01.b,S		; 03 01
	adc $010301.l,X		; 7F 01 03 01
	ora [$45.b]		; 07 45
	inc A		; 1A
	ora $4F.b,S		; 03 4F
	ora $70.b,S		; 03 70
	eor [$55.b],Y		; 57 55
	ora #$4F1A.w		; 09 1A 4F
	rti		; 40

	ora $44.b,S		; 03 44
	phy		; 5A
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	adc $570301.l,X		; 7F 01 03 57
	eor $57.b,X		; 55 57
	ora ($47.b,X)		; 01 47
	inc A		; 1A
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $4F.b,S		; 03 4F
	inc A		; 1A
	ora $5B0301.l,X		; 1F 01 03 5B
	ora $57.b,S		; 03 57
	eor [$55.b],Y		; 57 55
	ora #$5B1A.w		; 09 1A 5B
	rti		; 40

	ora $01.b,S		; 03 01
	ora $035A4E.l,X		; 1F 4E 5A 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	eor [$55.b],Y		; 57 55
	ora [$00.b]		; 07 00
	eor ($1A.b,S),Y		; 53 1A
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $5B0301.l		; 0F 01 03 5B
	inc A		; 1A
	eor ($03.b)		; 52 03
	cpy #$57.b		; C0 57
	eor $09.b,X		; 55 09
	inc A		; 1A
	eor ($40.b)		; 52 40
	phy		; 5A
	phy		; 5A
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	ora $5C.b		; 05 5C
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	ora ($64.b,X)		; 01 64
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	adc ($C3.b,X)		; 61 C3
	eor $57.b,X		; 55 57
	sbc $09.b,X		; F5 09
	inc A		; 1A
	adc ($40.b,X)		; 61 40
	ora $010301.l		; 0F 01 03 01
	adc $5A.b,S		; 63 5A
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	rti		; 40

	ora ($40.b,X)		; 01 40
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc #$031A.w		; 69 1A 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($1F.b,X)		; 01 1F
	adc ($1A.b),Y		; 71 1A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ror $555F.w,X		; 7E 5F 55
	eor [$55.b],Y		; 57 55
	ora #$7E1A.w		; 09 1A 7E
	rti		; 40

	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	bvs  90.b		; 70 5A
	ora $010301.l,X		; 1F 01 03 01
	ora [$01.b]		; 07 01
	ora $57.b,S		; 03 57
	cmp $57.b,X		; D5 57
	ora $78.b,S		; 03 78
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ply		; 7A
	bra   5.b		; 80 05
	txs		; 9A
	ora $01.b,S		; 03 01
	ora $038001.l		; 0F 01 80 03
	eor [$5F.b],Y		; 57 5F
	eor $09.b,X		; 55 09
	inc A		; 1A
	ora ($C0.b,X)		; 01 C0
	ora $040301.l		; 0F 01 03 04
	phx		; DA
	ply		; 7A
	bra   3.b		; 80 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $D7.b,X		; 55 D7
	and [$7F.b],Y		; 37 7F
	inc A		; 1A
	sbc $DF0301.l,X		; FF 01 03 DF
	dec $0107.w,X		; DE 07 01
	asl A		; 0A
	txs		; 9A
	ora ($07.b,X)		; 01 07
	txa		; 8A
	bra -120.b		; 80 88
	bra   1.b		; 80 01
	asl $80.b		; 06 80
	adc ($5F.b,S),Y		; 73 5F
	cmp [$57.b],Y		; D7 57
	ora #$061A.w		; 09 1A 06
	cpy #$01.b		; C0 01
	dey		; 88
	bra -118.b		; 80 8A
	bra   7.b		; 80 07
	ora ($85.b,X)		; 01 85
	phy		; 5A
	ora ($07.b,X)		; 01 07
	dec $DF40.w,X		; DE 40 DF
	rti		; 40

	ora $01.b,S		; 03 01
	sbc $575557.l,X		; FF 57 55 57
	eor $87.b,X		; 55 87
	inc A		; 1A
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	txs		; 9A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $08.b,X		; 55 08
	phx		; DA
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $8E.b,S		; 03 8E
	phy		; 5A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $F75557.l		; 0F 57 55 F7
	eor $1A8F.w,X		; 5D 8F 1A
	ora $010301.l,X		; 1F 01 03 01
	ora [$01.b]		; 07 01
	ora $96.b		; 05 96
	inc A		; 1A
	ora ($9C.b,X)		; 01 9C
	bra -109.b		; 80 93
	bra   1.b		; 80 01
	sta ($80.b,S),Y		; 93 80
	ora ($01.b,X)		; 01 01
	cmp [$7D.b],Y		; D7 7D
	eor [$55.b],Y		; 57 55
	asl A		; 0A
	phx		; DA
	ora ($01.b,X)		; 01 01
	sta ($80.b,S),Y		; 93 80
	ora ($93.b,X)		; 01 93
	bra -100.b		; 80 9C
	bra   1.b		; 80 01
	bcc  90.b		; 90 5A
	ora $01.b		; 05 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l,X		; 1F 57 55 57
	eor $9A.b,X		; 55 9A
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	cmp ($C0.b,X)		; C1 C0
	ora $01.b,S		; 03 01
	tsb $9C.b		; 04 9C
	inc A		; 1A
	bit $0301.w,X		; 3C 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$5F.b],Y		; 57 5F
	ldx $5A.b		; A6 5A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	bit $5A9B.w,X		; 3C 9B 5A
	tsb $01.b		; 04 01
	ora $C0.b,S		; 03 C0
	rti		; 40

	cmp ($40.b,X)		; C1 40
	ora [$01.b]		; 07 01
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	lda [$1A.b]		; A7 1A
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $A9.b		; 05 A9
	inc A		; 1A
	ora $04.b,S		; 03 04
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $B3.b,X		; 55 B3
	phy		; 5A
	ora ($03.b,X)		; 01 03
	ora ($1F.b,X)		; 01 1F
	ora ($04.b,X)		; 01 04
	ora $A8.b,S		; 03 A8
	phy		; 5A
	ora $01.b		; 05 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	ora $B4.b,X		; 15 B4
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora $0D1AB6.l		; 0F B6 1A 0D
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
.ACCU 8
.INDEX 8
	sep #$73		; E2 73
	eor $57.b,X		; 55 57
	eor $5D.b,X		; 55 5D
	inc A		; 1A
	sep #$40		; E2 40
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $5AB5.w		; 0D B5 5A
	ora $0F0103.l		; 0F 03 01 0F
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	ora $C0.b,X		; 15 C0
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora [$C2.b]		; 07 C2
	inc A		; 1A
	ora ($04.b,X)		; 01 04
	ora $970301.l		; 0F 01 03 97
	adc ($55.b,S),Y		; 73 55
	eor [$55.b],Y		; 57 55
	eor $971A.w,X		; 5D 1A 97
	rti		; 40

	ora $01.b,S		; 03 01
	ora $C10104.l		; 0F 04 01 C1
	phy		; 5A
	ora [$03.b]		; 07 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	ldy #$AA.b		; A0 AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b)		; 12 20
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	cop $3F.b		; 02 3F
	tas		; 1B
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	and $3FDE40.l,X		; 3F 40 DE 3F
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra -35.b		; 80 DD
	sta [$40.b]		; 87 40
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora $07.b		; 05 07
	ora [$02.b]		; 07 02
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	sbc $731E55.l,X		; FF 55 1E 73
	sbc ($81.b,S),Y		; F3 81
	sta $7B3F3C.l		; 8F 3C 3F 7B
	jmp ($C0BD.w,X)		; 7C BD C0
	tda		; 7B
	sbc ($4E.b)		; F2 4E
	sbc $CD.b,X		; F5 CD
	sbc ($0C.b,S),Y		; F3 0C
	bvs -64.b		; 70 C0
	bra   2.b		; 80 02
	cop $06.b		; 02 06
	tsb $DF.b		; 04 DF
	sbc $4054C0.l,X		; FF C0 54 40
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	lda $1FE7A0.l,X		; BF A0 E7 1F
	ora ($F1.b),Y		; 11 F1
	sbc $E3.b,S		; E3 E3
	cpx #$E0.b		; E0 E0
	ldy #$60.b		; A0 60
	asl $1F1C.w		; 0E 1C 1F
	cpy #$FF.b		; C0 FF
	brk $10.b		; 00 10
	cpy #$20.b		; C0 20
	ldy $FBC2.w,X		; BC C2 FB
	jsr ($FE1E.w,X)		; FC 1E FE
	cmp [$FF.b]		; C7 FF
	ora ($50.b,X)		; 01 50
	sbc $105000.l,X		; FF 00 50 10
	clc		; 18
	plp		; 28
	bvc -40.b		; 50 D8
	bmi 120.b		; 30 78
	bvs -80.b		; 70 B0
	ldy #$80.b		; A0 80
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora $2F.b,S		; 03 2F
	pei ($00.b)		; D4 00
	cpy #$05.b		; C0 05
	cop $07.b		; 02 07
	ora [$04.b]		; 07 04
	tsb $F8.b		; 04 F8
	adc $85.b		; 65 85
	sty $64.b		; 84 64
	eor $00005F.l		; 4F 5F 00 00
	phb		; 8B
	sbc [$18.b],Y		; F7 18
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($33.b,X)		; 01 33
	and ($01.b,S),Y		; 33 01
	bra  79.b		; 80 4F
	cmp $EE0005.l,X		; DF 05 00 EE
	inc $1195.w		; EE 95 11
	sty $0819.w		; 8C 19 08
	sec		; 38
	clc		; 18
	lsr A		; 4A
	ldx $32.b,Y		; B6 32
	ora ($11.b),Y		; 11 11
	cmp $74057F.l,X		; DF 7F 05 74
	bmi  63.b		; 30 3F
	cmp $C0.b,S		; C3 C0
	tsb $16A8.w		; 0C A8 16
	plp		; 28
	tsa		; 3B
	sta [$05.b],Y		; 97 05
	bit $74.b,X		; 34 74
	php		; 08
	cpy #$C0.b		; C0 C0
	ora ($22.b,X)		; 01 22
	php		; 08
	ora ($3F.b,X)		; 01 3F
	adc $C80115.l,X		; 7F 15 01 C8
	bne  92.b		; D0 5C
	pha		; 48
	rol $5324.w		; 2E 24 53
	.db $42, $10		; 42 10
	dey		; 88
	eor ($01.b,X)		; 41 01
	bpl  32.b		; 10 20
	rti		; 40

	jsr $0040.w		; 20 40 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	bvc  63.b		; 50 3F
	bra  61.b		; 80 3D
	ora $10413E.l		; 0F 3E 41 10
	bpl  48.b		; 10 30
	ldy #$60.b		; A0 60
	ora $103010.l		; 0F 10 30 10
	rts		; 60

	jsr $FDF4.w		; 20 F4 FD
	sed		; F8
	inc $C37C.w,X		; FE 7C C3
	rti		; 40

	adc ($61.b,X)		; 61 61
	cmp ($36.b,X)		; C1 36
	asl $7B.b		; 06 7B
	ora $3D.b,S		; 03 3D
	ora ($02.b,X)		; 01 02
	rti		; 40

	bit $9E61.w,X		; 3C 61 9E
	sbc $03F906.l,X		; FF 06 F9 03
	jsr ($FE01.w,X)		; FC 01 FE
	rti		; 40

	cmp $E0EFA0.l,X		; DF A0 EF E0
	lda $6F20.w,Y		; B9 20 6F
	ora #$18.b		; 09 18
	cpx $E0.b		; E4 E0
	bra  16.b		; 80 10
	jsr $09C6.w		; 20 C6 09
	beq  -1.b		; F0 FF
	cpx #$1F.b		; E0 1F
	rti		; 40

	eor $00.b		; 45 00
	tay		; A8
	rti		; 40

	bra -128.b		; 80 80
	jsr $2080.w		; 20 80 20
	jsr $7DDF.w		; 20 DF 7D
	adc $071E.w		; 6D 1E 07
	ora $0C.b,S		; 03 0C
	tsb $0B.b		; 04 0B
	ora $060504.l		; 0F 04 05 06
	cop $03.b		; 02 03
	ora ($03.b,X)		; 01 03
	ora $04.b,S		; 03 04
	ora $07.b,S		; 03 07
	tsb $03.b		; 04 03
	cop $01.b		; 02 01
	ora ($FF.b,X)		; 01 FF
	sbc $ED7FFF.l,X		; FF FF 7F ED
	rol $7F.b		; 26 7F
	phy		; 5A
	ldx $DD2B.w,Y		; BE 2B DD
	ora ($7E.b,S),Y		; 13 7E
	eor #$DF.b		; 49 DF
	bpl 127.b		; 10 7F
	jmp $22EB.w		; 4C EB 22
	rol $16.b		; 26 16
	phy		; 5A
	.db $82, $2B, $C3		; 82 2B C3
	ora ($23.b,S),Y		; 13 23
	phk		; 4B
	sta $11.b,S		; 83 11
	sbc ($40.b,X)		; E1 40
	bra  28.b		; 80 1C
	sbc $DCF0FF.l,X		; FF FF F0 DC
	bit $DB.b		; 24 DB
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	sta $9A8D.w		; 8D 8D 9A
	phy		; 5A
	stx $05.b		; 86 05
	sbc $A1.b,S		; E3 A1
	eor $40.b,S		; 43 40
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsl $800120.l		; 22 20 01 80
	bra  -1.b		; 80 FF
	sbc $25F740.l,X		; FF 40 F7 25
	stp		; DB
	ply		; 7A
	tda		; 7B
	lda ($F1.b,X)		; A1 F1
	eor ($7D.b,X)		; 41 7D
	inc A		; 1A
	asl $213A.w,X		; 1E 3A 21
	adc ($4F.b,X)		; 61 4F
	inc A		; 1A
	phx		; DA
	jmp $1A1E.w		; 4C 1E 1A
	and ($4F.b,X)		; 21 4F
	ora $0A.b,S		; 03 0A
	ora ($FF.b)		; 12 FF
	cmp $9DCD55.l,X		; DF 55 CD 9D
	pld		; 2B
	asl $A9.b,X		; 16 A9
	stz $0A.b		; 64 0A
	stz $0C8D.w		; 9C 8D 0C
	ora $0B8A.w		; 0D 8A 0B
	asl A		; 0A
	ora $03.b,X		; 15 03
	pha		; 48
	bit $8904.w,X		; 3C 04 89
	ora #$0B.b		; 09 0B
	cop $03.b		; 02 03
	ora [$FF.b]		; 07 FF
	sbc $88ED00.l,X		; FF 00 ED 88
	adc [$10.b],Y		; 77 10
	sbc $E35EA1.l		; EF A1 5E E3
	jmp $7E91EF.l		; 5C EF 91 7E
	asl $9F.b		; 06 9F
	rts		; 60

	cld		; D8
	sed		; F8
	sta ($06.b,X)		; 81 06
	sta ($80.b,X)		; 81 80
	sta [$80.b]		; 87 80
	eor ($9F.b),Y		; 51 9F
	brk $6D.b		; 00 6D
	bra -128.b		; 80 80
	cpy #$20.b		; C0 20
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	tsb $30.b		; 04 30
	asl A		; 0A
	sec		; 38
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	cmp #$3B.b		; C9 3B
	dec $37.b		; C6 37
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	tsb $04.b		; 04 04
	tsb $20.b		; 04 20
	jsr $807F.w		; 20 7F 80
	bra -128.b		; 80 80
	tsb $04.b		; 04 04
	tsb $20.b		; 04 20
	jsr $FFEF.w		; 20 EF FF
	cmp $0121EF.l,X		; DF EF 21 01
	.db $62, $02, $01		; 62 02 01
	eor $06.b		; 45 06
	sta $86.b,S		; 83 86
	phd		; 0B
	phb		; 8B
	rti		; 40

	ora ($21.b,X)		; 01 21
	eor ($01.b,X)		; 41 01
	inc $0202.w,X		; FE 02 02
	ora ($07.b,X)		; 01 07
	tsb $87.b		; 04 87
	bra -117.b		; 80 8B
	ora #$40.b		; 09 40
	ora ($20.b,X)		; 01 20
	sbc $5DFFFF.l,X		; FF FF FF 5D
	cpy #$C0.b		; C0 C0
	ora ($01.b,X)		; 01 01
	and ($51.b),Y		; 31 51
	php		; 08
	tya		; 98
	rts		; 60

	pla		; 68
	bit $34.b,X		; 34 34
	rts		; 60

	jmp $C04808.l		; 5C 08 48 C0
	and $510101.l,X		; 3F 01 01 51
	and ($98.b),Y		; 31 98
	php		; 08
	pla		; 68
	bit $04.b		; 24 04
	stz $08.b,X		; 74 08
	sbc $EEFFDD.l,X		; FF DD FF EE
	jsr $D020.w		; 20 20 D0
	cpy #$F0.b		; C0 F0
	bra  56.b		; 80 38
	jsr $5018.w		; 20 18 50
	rti		; 40

	bmi -80.b		; 30 B0
	ldy #$20.b		; A0 20
	bne -64.b		; D0 C0
	jsr $0880.w		; 20 80 08
	jsr $E0C0.w		; 20 C0 E0
	rti		; 40

	tay		; A8
	cpy #$A0.b		; C0 A0
	rti		; 40

	cop $75.b		; 02 75
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	tsb $04.b		; 04 04
	cop $07.b		; 02 07
	sbc $1115FB.l,X		; FF FB 15 11
	tsb $0301.w		; 0C 01 03
	bra  65.b		; 80 41
	eor ($41.b,X)		; 41 41
	bra  40.b		; 80 28
	jsr $5060.w		; 20 60 50
	bpl -60.b		; 10 C4
	bvs  -2.b		; 70 FE
	bra  65.b		; 80 41
	jsr $FF10.w		; 20 10 FF
	sbc $F755FF.l,X		; FF FF 55 F7
	asl A		; 0A
	plx		; FA
	tsb $7F.b		; 04 7F
	sta ($BF.b,X)		; 81 BF
	cpy #$7F.b		; C0 7F
	cli		; 58
	ldy $CC20.w,X		; BC 20 CC
	bpl -13.b		; 10 F3
	clc		; 18
	and ($30.b),Y		; 31 30
	ora ($10.b),Y		; 11 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	bra -64.b		; 80 C0
	cpx #$E0.b		; E0 E0
	cmp $5145F7.l,X		; DF F7 45 51
	eor ($02.b,S),Y		; 53 02
	ldy $A022.w		; AC 22 A0
	bcs  96.b		; B0 60
	bpl  16.b		; 10 10
	clc		; 18
	trb $08.b		; 14 08
	php		; 08
	ror $BD.b,X		; 76 BD
	jsl $081080.l		; 22 80 10 08
	asl $DF.b		; 06 DF
	sbc $ED5557.l,X		; FF 57 55 ED
	asl $DE.b		; 06 DE
	ora ($FF.b)		; 12 FF
	sta $70DE70.l		; 8F 70 DE 70
	sta $DA21.w,X		; 9D 21 DA
	ora $F1.b,S		; 03 F1
	ora [$FA.b]		; 07 FA
	ora $ED.b,S		; 03 ED
	sbc $DE8F8F.l,X		; FF 8F 8F DE
	jsr ($5FF8.w,X)		; FC F8 5F
	cmp $D6450F.l,X		; DF 0F 45 D6
	bvs  88.b		; 70 58
	bpl  32.b		; 10 20
	bcc  96.b		; 90 60
	cpx #$03.b		; E0 03
	ora ($A1.b,X)		; 01 A1
	cop $C2.b		; 02 C2
	ora $809080.l		; 0F 80 90 80
	ldy #$01.b		; A0 01
	cop $C7.b		; 02 C7
	and $41.b,S		; 23 41
	brk $60.b		; 00 60
	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -63.b		; 80 C1
	bmi -30.b		; 30 E2
	bmi   2.b		; 30 02
	tsb $02.b		; 04 02
	ora ($01.b,X)		; 01 01
	ora ($04.b,X)		; 01 04
	cop $04.b		; 02 04
	ora ($01.b,X)		; 01 01
	sbc $EEFF.w,X		; FD FF EE
	sbc $7922.w,X		; FD 22 79
	pla		; 68
	and $095101.l,X		; 3F 01 51 09
	ldx $D3.b,Y		; B6 D3
	ldx $95DB.w,Y		; BE DB 95
	cmp ($FF.b),Y		; D1 FF
	cmp ($DD.b,X)		; C1 DD
	pla		; 68
	stx $C0.b		; 86 C0
	rol $80.b,X		; 36 80
	ldy $01A5.w		; AC A5 01
	lda $01CF01.l		; AF 01 CF 01
	sbc $B7FFFF.l,X		; FF FF FF B7
	lda [$52.b],Y		; B7 52
	eor $873A.w		; 4D 3A 87
	inx		; E8
	dex		; CA
	cpy #$F8.b		; C0 F8
	sed		; F8
	tay		; A8
	php		; 08
	cld		; D8
	rts		; 60

	eor ($A0.b,X)		; 41 A0
	bpl   8.b		; 10 08
	ora $0A0C.w,Y		; 19 0C 0A
	tsb $0C.b		; 04 0C
	rti		; 40

	plp		; 28
	beq   8.b		; F0 08
	ldy #$60.b		; A0 60
	jsr $FFFF.w		; 20 FF FF
	inc $FF.b,X		; F6 FF
	stz $F8.b		; 64 F8
	bvc -64.b		; 50 C0
	ora #$70.b		; 09 70
	sta ($99.b)		; 92 99
	beq -29.b		; F0 E3
	sed		; F8
	.db $42, $12		; 42 12
	rol $224A.w		; 2E 4A 22
	ora $C0.b,S		; 03 C0
	rti		; 40

	ora ($81.b,X)		; 01 81
	eor ($A3.b)		; 52 A3
	rts		; 60

	asl A		; 0A
	pha		; 48
	rts		; 60

	jsr $2040.w		; 20 40 20
	adc $9E01.w,X		; 7D 01 9E
	asl A		; 0A
	bcs -32.b		; B0 E0
	rti		; 40

	cpx #$C0.b		; E0 C0
	cpy #$80.b		; C0 80
	rti		; 40

	rti		; 40

	bpl -64.b		; 10 C0
	jsr $8040.w		; 20 40 80
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora ($FF.b,X)		; 01 FF
	sbc $FB0445.l,X		; FF 45 04 FB
	inx		; E8
	tsb $FC.b		; 04 FC
	nop		; EA
	trb $220A.w		; 1C 0A 22
	and $36.b,X		; 35 36
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	bmi  48.b		; 30 30
	ora [$04.b]		; 07 04
	cop $01.b		; 02 01
	and $54FFFF.l,X		; 3F FF FF 54
	sbc $1B0B.w		; ED 0B 1B
	asl $050F.w		; 0E 0F 05
	ora ($01.b),Y		; 11 01
	bra   8.b		; 80 08
	eor $04.b,X		; 55 04
	tay		; A8
	dey		; 88
	sbc ($02.b,S),Y		; F3 02
	asl A		; 0A
	ora $07.b,S		; 03 07
	ora $01.b,S		; 03 01
	ora ($08.b,X)		; 01 08
	tsb $88.b		; 04 88
	sbc $FFF5BF.l,X		; FF BF F5 FF
	pea $0BA7.w		; F4 A7 0B
	tsb $C4.b		; 04 C4
	pld		; 2B
	cmp [$D8.b]		; C7 D8
	phd		; 0B
	stz $8C.b,X		; 74 8C
	stx $1F04.w		; 8E 04 1F
	ora [$88.b]		; 07 88
	php		; 08
	php		; 08
	cpy $D8.b		; C4 D8
	sta [$D4.b]		; 87 D4
	wai		; CB
	asl $0F04.w		; 0E 04 0F
	asl A		; 0A
	ora [$05.b]		; 07 05
	sbc $FFC1FF.l,X		; FF FF C1 FF
	adc ($19.b,S),Y		; 73 19
	ora [$F2.b]		; 07 F2
	lda $BAFDC5.l,X		; BF C5 FD BA
	sbc $32.b,X		; F5 32
	and [$15.b],Y		; 37 15
	lda $01.b,S		; A3 01
	sbc $81.b,S		; E3 81
	cpx #$BA.b		; E0 BA
	cop $32.b		; 02 32
	asl A		; 0A
	cmp $09.b,X		; D5 09
	eor ($1D.b,X)		; 41 1D
	sta ($1D.b,X)		; 81 1D
	sbc $4555FF.l,X		; FF FF 55 45
	clv		; B8
	cop $04.b		; 02 04
	sty $8C.b		; 84 8C
	.db $82, $48, $08		; 82 48 08
	tya		; 98
	sty $30.b		; 84 30
	bcc  80.b		; 90 50
	php		; 08
	jsr $7C20.w		; 20 20 7C
	tsb $80.b		; 04 80
	php		; 08
	bra  16.b		; 80 10
	jsr $070F.w		; 20 0F 07
	and $072B.w		; 2D 2B 07
	ora $04.b,S		; 03 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	tsb $04.b		; 04 04
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	sbc $F55FFF.l,X		; FF FF 5F F5
	wai		; CB
	bcc -19.b		; 90 ED
	bit $FB.b		; 24 FB
	lsr $7EFC.w		; 4E FC 7E
	inc $FF6F.w,X		; FE 6F FF
	rol $0C7F.w		; 2E 7F 0C
	ora $30B704.l,X		; 1F 04 B7 30
	ora ($30.b,S),Y		; 13 30
	eor #$7D.b		; 49 7D
	ror $0C2E.w		; 6E 2E 0C
	bra   4.b		; 80 04
	jsr $FFDF.w		; 20 DF FF
	eor $55.b,X		; 55 55
	rol $FD20.w,X		; 3E 20 FD
	ora ($F7.b,X)		; 01 F7
	inc $05.b,X		; F6 05
	adc $803F02.l,X		; 7F 02 3F 80
	lda $7147E0.l,X		; BF E0 47 71
	cmp $FAFFFE.l,X		; DF FE FF FA
	sbc $1F7F.w,X		; FD 7F 1F
	stx $FFFF.w		; 8E FF FF
	eor [$B7.b],Y		; 57 B7
.ACCU 8
	sep #$24		; E2 24
	sbc ($04.b)		; F2 04
	inc $E608.w,X		; FE 08 E6
	php		; 08
	cpy $9C10.w		; CC 10 9C
	jsr $4038.w		; 20 38 40
	bvs -128.b		; 70 80
	cld		; D8
	ora ($F8.b,X)		; 01 F8
	beq -16.b		; F0 F0
	cpx #$02.b		; E0 02
	cpy #$80.b		; C0 80
	tsb $08.b		; 04 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	trb $08.b		; 14 08
	asl $FFFF.w		; 0E FF FF
	cmp $810133.l		; CF 33 01 81
	.db $42, $40		; 42 40
	.db $42, $82		; 42 82
	and $24.b,S		; 23 24
	rol $2961.w		; 2E 61 29
	asl $1926.w,X		; 1E 26 19
	php		; 08
	ora [$7F.b]		; 07 7F
	ora $40.b,S		; 03 40
	tsb $20.b		; 04 20
	php		; 08
	rts		; 60

	bvs  64.b		; 70 40
	rti		; 40

	sbc $03FFFF.l,X		; FF FF FF 03
	adc $9786B0.l,X		; 7F B0 86 97
	asl A		; 0A
	pla		; 68
	and ($50.b)		; 32 50
	sty $84.b		; 84 84
	cpx $04.b		; E4 04
	and ($A0.b,X)		; 21 A0
	ldy #$40.b		; A0 40
	sty $84.b		; 84 84
	tsb $900F.w		; 0C 0F 90
	bcc  32.b		; 90 20
	jsr $C6C4.w		; 20 C4 C6
	lda $FAFFF7.l,X		; BF F7 FF FA
	xce		; FB
	ora ($24.b,X)		; 01 24
	sbc ($28.b,X)		; E1 28
	tas		; 1B
	tsb $18.b		; 04 18
	php		; 08
	jsr $0F0B.w		; 20 0B 0F
	ora $02.b,S		; 03 02
	ora ($05.b,X)		; 01 05
	ora ($E5.b,X)		; 01 E5
	ora $18.b,S		; 03 18
	tsb $0B.b		; 04 0B
	bpl   3.b		; 10 03
	ora [$0B.b]		; 07 0B
	cop $12.b		; 02 12
	sbc $FBE9FF.l,X		; FF FF E9 FB
	bcs   8.b		; B0 08
	cpx #$5C.b		; E0 5C
	cld		; D8
	bit $BEC8.w,X		; 3C C8 BE
	sty $24BE.w		; 8C BE 24
	asl $7EC4.w,X		; 1E C4 7E
	pei ($BE.b)		; D4 BE
	rti		; 40

	clc		; 18
	sec		; 38
	bra  60.b		; 80 3C
	bra  92.b		; 80 5C
	cpy $9C40.w		; CC 40 9C
	bra  60.b		; 80 3C
	cpy #$FF.b		; C0 FF
	brk $56.b		; 00 56
	ora [$07.b]		; 07 07
	tsb $0E0F.w		; 0C 0F 0E
	asl $1C18.w		; 0E 18 1C
	clc		; 18
	ora $080403.l,X		; 1F 03 04 08
	ora [$D5.b]		; 07 D5
	sbc $07FF82.l,X		; FF 82 FF 07
	ora ($FF.b,X)		; 01 FF
	adc $21FFFE.l,X		; 7F FE FF 21
	jsr ($DF8B.w,X)		; FC 8B DF
	beq -86.b		; F0 AA
	eor $08.b,X		; 55 08
	inc $3F1E.w,X		; FE 1E 3F
	cmp [$CF.b]		; C7 CF
	cpx #$F0.b		; E0 F0
	and $75.b,X		; 35 75
	sbc $FFADFF.l,X		; FF FF AD FF
	bmi  63.b		; 30 3F
	sbc ($10.b)		; F2 10
	sta $3EDF70.l		; 8F 70 DF 3E
	inc $DF80.w,X		; FE 80 DF
	bcc -97.b		; 90 9F
	pea $0DE4.w		; F4 E4 0D
	cpy #$0C.b		; C0 0C
	ora ($70.b,X)		; 01 70
	rol $8001.w,X		; 3E 01 80
	sbc $F0.b,S		; E3 F0
	sei		; 78
	jsr ($1F1F.w,X)		; FC 1F 1F
	cmp ($FF.b),Y		; D1 FF
	.db $82, $BF, $C0		; 82 BF C0
	beq  14.b		; F0 0E
	beq -66.b		; F0 BE
	stz $F6.b,X		; 74 F6
	jmp ($3C7E.w,X)		; 7C 7E 3C
	inc $2021.w,X		; FE 21 20
	beq   8.b		; F0 08
	jmp ($7C08.w,X)		; 7C 08 7C
	dey		; 88
	bit $FC21.w,X		; 3C 21 FC
	lda $094441.l,X		; BF 41 44 09
	asl $0E0E.w		; 0E 0E 0E
	asl $06.b		; 06 06
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	ora ($03.b,X)		; 01 03
	ora ($1F.b,X)		; 01 1F
	bpl   8.b		; 10 08
	tsb $0F.b		; 04 0F
	jsr ($CEC3.w,X)		; FC C3 CE
	adc ($FD.b)		; 72 FD
	.db $82, $02, $04		; 82 02 04
	tsb $1C.b		; 04 1C
	php		; 08
	ldx $FE12.w,Y		; BE 12 FE
	inc $0706.w,X		; FE 06 07
	cop $04.b		; 02 04
	asl $02.b		; 06 02
	ora $7F.b,S		; 03 7F
	sbc $EEA7.w,X		; FD A7 EE
	sbc $FD.b,S		; E3 FD
	inc A		; 1A
	ora $89.b,S		; 03 89
	ora ($10.b,X)		; 01 10
	rts		; 60

	ora $03.b,S		; 03 03
	ora ($01.b),Y		; 11 01
	ror $05.b		; 66 05
	ora ($FC.b,X)		; 01 FC
	ora ($06.b,X)		; 01 06
	sty $031A.w		; 8C 1A 03
	adc [$E0.b],Y		; 77 E0
	tsb $0C.b		; 04 0C
	eor $EAA2FF.l,X		; 5F FF A2 EA
	ldy $807E.w,X		; BC 7E 80
	bra  36.b		; 80 24
	clc		; 18
	rts		; 60

	cop $18.b		; 02 18
	cop $48.b		; 02 48
	cop $B0.b		; 02 B0
	sty $7C.b		; 84 7C
	cpy #$74.b		; C0 74
	sec		; 38
	sty $8004.w		; 8C 04 80
	iny		; C8
	ora $04050D.l		; 0F 0D 05 04
	trb $0D04.w		; 1C 04 0D
	tsb $0410.w		; 0C 10 04
	tsb $03.b		; 04 03
	tsb $04.b		; 04 04
	sbc $F71FFD.l,X		; FF FD 1F F7
	adc $4A.b,X		; 75 4A
	dex		; CA
	rts		; 60

	ror A		; 6A
	jsr $1A1A.w		; 20 1A 1A
	and ($01.b,X)		; 21 01
	tsb $03.b		; 04 03
	ora $01.b		; 05 01
	asl A		; 0A
	txs		; 9A
	inc A		; 1A
	bvc  16.b		; 50 10
	jsr $0F0F.w		; 20 0F 0F
	tsb $02.b		; 04 02
	asl $04.b		; 06 04
	tsb $FFFD.w		; 0C FD FF
	sbc $DDDEC0.l,X		; FF C0 DE DD
	jsr ($0606.w,X)		; FC 06 06
	tsb $04.b		; 04 04
	.db $42, $4E		; 42 4E
	jsl $084020.l		; 22 20 40 08
	ora $C4.b,S		; 03 C4
	adc ($61.b,X)		; 61 61
	adc ($9D.b,X)		; 61 9D
	adc $0303.w,X		; 7D 03 03
	ora ($C1.b,X)		; 01 C1
	ora ($FF.b,X)		; 01 FF
	sbc $EF101F.l,X		; FF 1F 10 EF
	asl $E5D3.w,X		; 1E D3 E5
	ora [$16.b],Y		; 17 16
	eor ($03.b)		; 52 03
	bpl  16.b		; 10 10
	eor ($02.b)		; 52 02
	eor [$47.b]		; 47 47
	eor ($04.b,X)		; 41 04
	eor [$5F.b],Y		; 57 5F
	tsa		; 3B
	ldy #$17.b		; A0 17
	asl $B2.b		; 06 B2
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra  32.b		; 80 20
	jsr $8010.w		; 20 10 80
	bra  64.b		; 80 40
	bra -42.b		; 80 D6
	ora $033C8A.l		; 0F 8A 3C 03
	asl $0101.w		; 0E 01 01
	jsr $0101.w		; 20 01 01
	ora ($01.b,X)		; 01 01
	trb $1003.w		; 1C 03 10
	sbc $100337.l,X		; FF 37 03 10
	lda #$BD46.w		; A9 46 BD
	eor #$3058.w		; 49 58 30
	.db $42, $40		; 42 40
	eor ($40.b,X)		; 41 40
	php		; 08
	rti		; 40

	bra  -1.b		; 80 FF
	sbc $03FF80.l,X		; FF 80 FF 03
	eor $DF2100.l,X		; 5F 00 21 DF
	adc ($F0.b),Y		; 71 F0
	bmi -16.b		; 30 F0
	ldy #$C0E0.w		; A0 E0 C0
	cpy #$70F8.w		; C0 F8 70
	sed		; F8
	jsr $3060.w		; 20 60 30
	rol $0F30.w,X		; 3E 30 0F
	brk $30.b		; 00 30
	rti		; 40

	bcs -64.b		; B0 C0
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$20C0.w		; C0 C0 20
	jsr $30C2.w		; 20 C2 30
	eor ($00.b,X)		; 41 00
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	tsb $03.b		; 04 03
	cop $CF.b		; 02 CF
	sbc $4F.b,X		; F5 4F
	jsr ($17E3.w,X)		; FC E3 17
	bpl   8.b		; 10 08
	asl $14.b,X		; 16 14
	ora $04.b		; 05 04
	phb		; 8B
	phd		; 0B
	bvc  41.b		; 50 29
	sbc $08080F.l		; EF 0F 08 08
	bpl   7.b		; 10 07
	tsb $01.b		; 04 01
	cop $30.b		; 02 30
	php		; 08
	sbc $15537F.l,X		; FF 7F 53 15
	ldy $58.b		; A4 58
	sta $86.b		; 85 86
	ora $7E1D.w,X		; 1D 1D 7E
	ror $DAC9.w,X		; 7E C9 DA
	pei ($D8.b)		; D4 D8
	jsr $8140.w		; 20 40 81
	lda $7F03FF.l,X		; BF FF 03 7F
	jmp $FF80E0.l		; 5C E0 80 FF
	sbc $3D5FD7.l,X		; FF D7 5F 3D
	adc $CCC044.l,X		; 7F 44 C0 CC
	cpy $5E.b		; C4 5E
	stx $1E3E.w		; 8E 3E 1E
	adc $E43C.w,Y		; 79 3C E4
	bvs -46.b		; 70 D2
.ACCU 8
.INDEX 8
	sep #$BD		; E2 BD
	sbc $0480C0.l,X		; FF C0 80 04
	cop $0A.b		; 02 0A
	asl $10.b		; 06 10
	tsb $6030.w		; 0C 30 60
	sbc ($FF.b)		; F2 FF
	adc ($7F.b,S),Y		; 73 7F
	bne  80.b		; D0 50
	php		; 08
	bpl  16.b		; 10 10
	cld		; D8
	ldy $D4.b,X		; B4 D4
	cpy $5C1A.w		; CC 1A 5C
	jmp ($A018.w,X)		; 7C 18 A0
	cpy #$80.b		; C0 80
	rti		; 40

	bpl -80.b		; 10 B0
	rts		; 60

	rti		; 40

	bpl  48.b		; 10 30
	tsb $2008.w		; 0C 08 20
	jsr $2080.w		; 20 80 20
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	sbc $F9E2F7.l		; EF F7 E2 F9
	asl $021F.w		; 0E 1F 02
	rts		; 60

	bra -64.b		; 80 C0
	ora ($41.b,X)		; 01 41
	cop $84.b		; 02 84
	asl $1904.w		; 0E 04 19
	inc A		; 1A
	ora $800160.l		; 0F 60 01 80
	cop $30.b		; 02 30
	ora $07.b,S		; 03 07
	cop $19.b		; 02 19
	cmp $F043FF.l,X		; DF FF 43 F0
	ora $2020BF.l		; 0F BF 20 20
	php		; 08
	and $9E.b		; 25 9E
	rol $F9.b,X		; 36 F9
	dec A		; 3A
	ora [$F1.b]		; 07 F1
	jsr ($5B80.w,X)		; FC 80 5B
	adc $F880FF.l,X		; 7F FF 80 F8
	sed		; F8
	lsr $0186.w,X		; 5E 86 01
	sbc $FF0001.l,X		; FF 01 00 FF
	rti		; 40

	cpy #$50.b		; C0 50
	bmi -120.b		; 30 88
	cli		; 58
	ora $2D.b		; 05 2D
	clc		; 18
	eor $1C.b,S		; 43 1C
	ora $30.b,S		; 03 30
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	jsr $2B20.w		; 20 20 2B
	sec		; 38
	brk $0C.b		; 00 0C
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora $FF.b,S		; 03 FF
	sbc $6FFFF7.l,X		; FF F7 FF 6F
	ror A		; 6A
	sta ($96.b)		; 92 96
	nop		; EA
	rol A		; 2A
	txs		; 9A
	dex		; CA
	sbc [$DB.b]		; E7 DB
	sec		; 38
	sbc $FF96.w,X		; FD 96 FF
	cpx #$EF.b		; E0 EF
	sta $7C7C84.l,X		; 9F 84 7C 7C
	cpy #$F0.b		; C0 F0
	bcc -76.b		; 90 B4
	ldy $68AE.w		; AC AE 68
	xba		; EB
	ora ($70.b,X)		; 01 70
	asl $1FFF.w		; 0E FF 1F
	eor [$15.b],Y		; 57 15
	plx		; FA
	jsr ($070E.w,X)		; FC 0E 07
	trb $0C.b		; 14 0C
	rti		; 40

	plp		; 28
	lda $60.b,S		; A3 60
	tsb $0840.w		; 0C 40 08
	sbc $0703FF.l,X		; FF FF 03 07
	trb $E038.w		; 1C 38 E0
	cpy #$DF.b		; C0 DF
	lda ($4F.b)		; B2 4F
	.db $42, $74		; 42 74
	sta ($7F.b,X)		; 81 7F
	adc $61.b,X		; 75 61
	txs		; 9A
	ora #$01.b		; 09 01
	php		; 08
	php		; 08
	php		; 08
	tda		; 7B
	xce		; FB
	.db $82, $06, $01		; 82 06 01
	ora ($08.b,X)		; 01 08
	sbc $0BFF0B.l,X		; FF 0B FF 0B
	and ($FC.b,S),Y		; 33 FC
	ora $89FA.w,X		; 1D FA 89
	ror $3A44.w,X		; 7E 44 3A
	clc		; 18
	cpy $38.b		; C4 38
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFE.w,X)		; FC FE FC
	inc $FC38.w,X		; FE 38 FC
	sec		; 38
	sbc $FF.b,X		; F5 FF
	bvc -11.b		; 50 F5
	ora ($03.b,X)		; 01 03
	ora $1F3F03.l,X		; 1F 03 3F 1F
	adc $1D3F3E.l,X		; 7F 3E 3F 1D
	rol $1D1A.w,X		; 3E 1A 1D
	tsb $03.b		; 04 03
	ora $1A1D3E.l,X		; 1F 3E 1D 1A
	ora ($04.b,X)		; 01 04
	ora $FF.b,S		; 03 FF
	adc $FB3FFF.l,X		; 7F FF 3F FB
	php		; 08
	ora $1B18.w		; 0D 18 1B
	lda ($34.b),Y		; B1 34
	cpx #$6A.b		; E0 6A
.INDEX 16
	rep #$D0		; C2 D0
	bra -92.b		; 80 A4
	ora $40.b		; 05 40
	php		; 08
	ora [$18.b]		; 07 18
	php		; 08
	lda ($11.b),Y		; B1 11
	cpx #$C220.w		; E0 20 C2
	.db $42, $80		; 42 80
	bra   5.b		; 80 05
	tsb $EF.b		; 04 EF
	inc $FDDF.w,X		; FE DF FD
	rtl		; 6B

	.db $42, $97		; 42 97
	.db $82, $60, $20		; 82 60 20
	jsr $64C0.w		; 20 C0 64
	rti		; 40

	ora ($81.b,X)		; 01 81
	cpy #$4280.w		; C0 80 42
	stz $8382.w		; 9C 82 83
	rts		; 60

	jsr $C020.w		; 20 20 C0
	rti		; 40

	rti		; 40

	sta ($01.b,X)		; 81 01
	bra -128.b		; 80 80
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $32.b,X		; F5 32
	ora $341EAA.l,X		; 1F AA 1E 34
	rol $373A.w		; 2E 3A 37
	ora $0E1B.w,X		; 1D 1B 0E
	ora $07.b		; 05 07
	php		; 08
	cpy #$7F7F.w		; C0 7F 7F
	cpx #$3060.w		; E0 60 30
	bpl  56.b		; 10 38
	plp		; 28
	trb $0E14.w		; 1C 14 0E
	asl A		; 0A
	ora [$05.b]		; 07 05
	cpy #$FFFE.w		; C0 FE FF
	cmp ($FF.b),Y		; D1 FF
	rti		; 40

	cpy #$30C0.w		; C0 C0 30
	beq  -8.b		; F0 F8
	iny		; C8
	jmp $83CFC4.l		; 5C C4 CF 83
	sta $40.b		; 85 40
	cmp ($20.b),Y		; D1 20
	bcs  32.b		; B0 20
	bvs  48.b		; 70 30
	plp		; 28
	sec		; 38
	pea $B97C.w		; F4 7C B9
	lda $00DF4E.l,X		; BF 4E DF 00
	bcc   0.b		; 90 00
	rti		; 40

	cpy #$8080.w		; C0 80 80
	ror $1BFF.w,X		; 7E FF 1B
	tyx		; BB
	ora $01.b,S		; 03 01
	ora $0808.w,X		; 1D 08 08
	ora ($0C.b,X)		; 01 0C
	ora $070105.l,X		; 1F 05 01 07
	ora #$3F.b		; 09 3F
	ora [$01.b]		; 07 01
	ora $1C.b,S		; 03 1C
	tsb $100B.w		; 0C 0B 10
	ora ($06.b,X)		; 01 06
	ora $FFFF07.l		; 0F 07 FF FF
	cmp [$EF.b],Y		; D7 EF
	ror $89.b,X		; 76 89
	adc ($62.b,X)		; 61 62
	bmi  38.b		; 30 26
	sei		; 78
	eor $8C2C.w		; 4D 2C 8C
	cmp $F551.w,Y		; D9 51 F5
	inc $E9.b		; E6 E9
	cmp ($F6.b,X)		; C1 F6
	sbc $120401.l,X		; FF 01 04 12
	asl $6D61.w,X		; 1E 61 6D
	bra -47.b		; 80 D1
	inc $01.b		; E6 01
	cpy #$FFFF.w		; C0 FF FF
	eor [$FF.b],Y		; 57 FF
	eor [$BF.b]		; 47 BF
	pla		; 68
	rts		; 60

	clv		; B8
	bmi -36.b		; 30 DC
	clc		; 18
	ldx $97CC.w		; AE CC 97
	ldx $CB.b		; A6 CB
	eor ($25.b,S),Y		; 53 25
	and #$7F.b		; 29 7F
	sbc $3060C0.l,X		; FF C0 60 30
	tya		; 98
	bra  76.b		; 80 4C
	cpy #$6026.w		; C0 26 60
	ora ($30.b,S),Y		; 13 30
	eor $FE.b,S		; 43 FE
	ora $4E.b,S		; 03 4E
	beq  -8.b		; F0 F8
	bpl   4.b		; 10 04
	trb $16.b		; 14 16
	sty $04.b,X		; 94 04
	iny		; C8
	tya		; 98
	beq  -8.b		; F0 F8
	tsb $04.b		; 04 04
	cop $18.b		; 02 18
	adc $001F00.l,X		; 7F 00 1F 00
	tas		; 1B
	php		; 08
	asl $0706.w		; 0E 06 07
	ora ($01.b,X)		; 01 01
	php		; 08
	ora [$06.b]		; 07 06
	ora ($01.b,X)		; 01 01
	sbc $3FFFFF.l,X		; FF FF FF 3F
	ora $1C1E0D.l		; 0F 0D 1E 1C
	rol $FF3C.w,X		; 3E 3C FF
	plx		; FA
	sbc $3D38.w,X		; FD 38 3D
	mvn $64,$3C		; 54 3C 64
	and $F00D78.l,X		; 3F 78 0D F0
	trb $3CE1.w		; 1C E1 3C
	cmp ($FA.b,X)		; C1 FA
	ora ($38.b,X)		; 01 38
	ora $14.b,S		; 03 14
	ora $04.b,S		; 03 04
	ora $17.b,S		; 03 17
	sbc $03.b,S		; E3 03
	cmp ($79.b,S),Y		; D3 79
	ora ($80.b,X)		; 01 80
	php		; 08
	cop $02.b		; 02 02
	ora ($40.b,X)		; 01 40
	bra   1.b		; 80 01
	inc $0202.w,X		; FE 02 02
	ora ($80.b,X)		; 01 80
	bra 127.b		; 80 7F
	lda ($3F.b,X)		; A1 3F
	bvc  -5.b		; 50 FB
	.db $42, $40		; 42 40
	rti		; 40

	cop $02.b		; 02 02
	rti		; 40

	tsb $80.b		; 04 80
	ora ($42.b,X)		; 01 42
	bit $4040.w,X		; 3C 40 40
	cop $02.b		; 02 02
	bra   1.b		; 80 01
	sbc $FFFFFF.l,X		; FF FF FF FF
	sec		; 38
	clc		; 18
	jmp ($5E2C.w,X)		; 7C 2C 5E
	asl $AF.b,X		; 16 AF
	phb		; 8B
	sta [$85.b],Y		; 97 85
	txy		; 9B
	.db $82, $CD, $C1		; 82 CD C1
	dec $40.b		; C6 40
	clc		; 18
	cmp [$2C.b]		; C7 2C
	cmp $16.b,S		; C3 16
	sbc ($8B.b,X)		; E1 8B
	bvs -123.b		; 70 85
	sei		; 78
	.db $82, $7C, $C1		; 82 7C C1
	rol $3F40.w,X		; 3E 40 3F
	eor $06D1.w,X		; 5D D1 06
	rti		; 40

	rti		; 40

	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sbc $0AAA0F.l,X		; FF 0F AA 0A
	.db $42, $3D		; 42 3D
	ora [$06.b]		; 07 06
	asl $3C1C.w,X		; 1E 1C 3C
	sec		; 38
	sec		; 38
	jsr $40E0.w		; 20 E0 40
	and $1C06.w,X		; 3D 06 1C
	sec		; 38
	jsr $FF40.w		; 20 40 FF
	cmp $CCDF.w,X		; DD DF CC
	jmp ($9CF4.w)		; 6C F4 9C
	trb $0109.w		; 1C 09 01
	clc		; 18
	sec		; 38
	bvc 114.b		; 50 72
	adc ($A1.b)		; 72 A1
	cpx #$03E0.w		; E0 E0 03
	sbc [$04.b],Y		; F7 04
	clc		; 18
	ora ($08.b,X)		; 01 08
	bmi  18.b		; 30 12
	rts		; 60

	jsr $FFC0.w		; 20 C0 FF
	adc $9E26FF.l,X		; 7F FF 26 9E
	sbc $01.b,S		; E3 01
	asl A		; 0A
	sec		; 38
	and $0684.w,X		; 3D 84 06
	bpl   1.b		; 10 01
	ora ($12.b)		; 12 12
	rts		; 60

	rts		; 60

	jsr $E707.w		; 20 07 E7
	tsb $0C.b		; 04 0C
	asl A		; 0A
	rol $05.b,X		; 36 05
	ora $01.b,S		; 03 01
	ora ($60.b)		; 12 60
	sbc $6FDFFF.l,X		; FF FF DF 6F
	ror $B8.b		; 66 B8
	adc $42.b,S		; 63 42
	dey		; 88
	php		; 08
	eor ($81.b,X)		; 41 81
	ora ($50.b),Y		; 11 50
	tay		; A8
	tay		; A8
	ldy #$1930.w		; A0 30 19
	bpl 108.b		; 10 6C
	jsr ($06C4.w,X)		; FC C4 06
	bmi  72.b		; 30 48
	ora #$B0.b		; 09 B0
	bcc  96.b		; 90 60
	inx		; E8
	bmi  16.b		; 30 10
	rti		; 40

	adc [$00.b],Y		; 77 00
	jsl $80C080.l		; 22 80 C0 80
	bra  96.b		; 80 60
	rti		; 40

	rti		; 40

	bra  64.b		; 80 40
	and $101530.l,X		; 3F 30 15 10
	and ($73.b,S),Y		; 33 73
	ora ($13.b,S),Y		; 13 13
	jsr $2020.w		; 20 20 20
	jsr $130C.w		; 20 0C 13
	jsr $FF20.w		; 20 20 FF
	adc $E3157F.l,X		; 7F 7F 15 E3
	jsl $4C7090.l		; 22 90 70 4C
	jmp ($3C20.w,X)		; 7C 20 3C
	clc		; 18
	asl $04.b,X		; 16 04
	ora [$02.b]		; 07 02
	cop $60.b		; 02 60
	jsl $10B01C.l		; 22 1C B0 10
	jmp $1A2C0C.l		; 5C 0C 2C 1A
	tsb $02.b		; 04 02
	cmp [$FF.b],Y		; D7 FF
	xba		; EB
	eor ($7D.b,S),Y		; 53 7D
	ora ($7C.b,X)		; 01 7C
	jmp ($80BC.w,X)		; 7C BC 80
	sed		; F8
	clc		; 18
	adc $F878E0.l,X		; 7F E0 78 F8
	rts		; 60

	cpx #$FE01.w		; E0 01 FE
	sbc $7F80FF.l,X		; FF FF 80 7F
	clc		; 18
	ora [$07.b]		; 07 07
	ora $FFFFFF.l,X		; 1F FF FF FF
	eor ($C5.b),Y		; 51 C5
	eor ($E3.b,X)		; 41 E3
	.db $62, $E2, $60		; 62 E2 60
	inc $A4.b		; E6 A4
	jsr ($F8B0.w,X)		; FC B0 F8
	tsb $38.b		; 04 38
	bit $0C08.w,X		; 3C 08 0C
	eor ($3E.b,X)		; 41 3E
	.db $62, $1C, $60		; 62 1C 60
	trb $18A4.w		; 1C A4 18
	bcs -64.b		; B0 C0
	beq 127.b		; F0 7F
	sbc ($2A.b,S),Y		; F3 2A
	lda ($5E.b,S),Y		; B3 5E
	and $730103.l,X		; 3F 03 01 73
	and $05.b,S		; 23 05
	and $091917.l,X		; 3F 17 19 09
	asl $3F03.w		; 0E 03 3F
	ora ($23.b,X)		; 01 23
	ora ($16.b,X)		; 01 16
	ora ($08.b,X)		; 01 08
	ora $DF.b,S		; 03 DF
	pea $70CF.w		; F4 CF 70
	dec $47.b		; C6 47
	rep #$C0		; C2 C0
	bra -119.b		; 80 89
	bit #$04.b		; 89 04
	ora ($13.b,S),Y		; 13 13
	rti		; 40

	cpy #$7F38.w		; C0 38 7F
	rti		; 40

	bra -120.b		; 80 88
	ora ($10.b,X)		; 01 10
	ora $C0.b,S		; 03 C0
	cmp $10CB31.l,X		; DF 31 CB 10
	eor ($81.b,X)		; 41 81
	cpy #$40C0.w		; C0 C0 40
	cpy #$80C0.w		; C0 C0 80
	bra -128.b		; 80 80
	rol $C0BF.w,X		; 3E BF C0
	rti		; 40

	bra -128.b		; 80 80
	cmp $34C77D.l		; CF 7D C7 34
.ACCU 16
	rep #$A5		; C2 A5
	trb $10.b		; 14 10
	ora [$07.b]		; 07 07
	cop $18.b		; 02 18
	php		; 08
	ora $03.b,S		; 03 03
	ora ($18.b,X)		; 01 18
	lda $0410.w,X		; BD 10 04
	ora $08.b,S		; 03 08
	cop $01.b		; 02 01
	cmp $288A7D.l,X		; DF 7D 8A 28
	bne -32.b		; D0 E0
	sec		; 38
	bpl -128.b		; 10 80
	clc		; 18
	bpl  32.b		; 10 20
	bvs  32.b		; 70 20
	cpx #$40C0.w		; E0 C0 40
	cpx #$1010.w		; E0 10 10
	jsr $4FC0.w		; 20 C0 4F
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	rts		; 60

	and ($40.b,X)		; 21 40
	cop $1F.b		; 02 1F
	eor $00.b		; 45 00
	ora ($00.b,X)		; 01 00
	sed		; F8
	tsb $02.b		; 04 02
	sbc $111173.l,X		; FF 73 11 11
	brk $40.b		; 00 40
	cpy #$4043.w		; C0 43 40
	tsb $08.b		; 04 08
	bpl  63.b		; 10 3F
	rti		; 40

	and $0105C3.l,X		; 3F C3 05 01
	php		; 08
	tsb $08E8.w		; 0C E8 08
	trb $02.b		; 14 02
	tsb $0604.w		; 0C 04 06
	ora ($F0.b,X)		; 01 F0
	php		; 08
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sbc $016A17.l,X		; FF 17 6A 01
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	and ($F3.b,S),Y		; 33 F3
	asl $7F3E.w		; 0E 3E 7F
	bvs -128.b		; 70 80
	bra  24.b		; 80 18
	and [$3D.b]		; 27 3D
	and ($0E.b,S),Y		; 33 0E
	adc $FFFF80.l,X		; 7F 80 FF FF
	rtl		; 6B

	eor $01.b,X		; 55 01
	ora ($CF.b,X)		; 01 CF
	and $1BC3FC.l,X		; 3F FC C3 1B
	trb $0F0B.w		; 1C 0B 0F
	tsb $0C.b		; 04 0C
	bra   8.b		; 80 08
	sbc ($08.b,X)		; E1 08
	inc $3FFF.w,X		; FE FF 3F
	ora $E0.b,S		; 03 E0
	beq -13.b		; F0 F3
	sbc [$F7.b],Y		; F7 F7
	sbc $05EF1F.l,X		; FF 1F EF 05
	iny		; C8
	lda $1917.w,Y		; B9 17 19
	lda $3E.b,S		; A3 3E
	tya		; 98
	sed		; F8
	jsr $D4A0.w		; 20 A0 D4
.ACCU 16
	rep #$E0		; C2 E0
	asl $BF.b		; 06 BF
	asl $1F.b		; 06 1F
	jsr $8018.w		; 20 18 80
	jsr $C3C0.w		; 20 C0 C3
	bne   1.b		; D0 01
	rti		; 40

	ora ($30.b,S),Y		; 13 30
	bpl  32.b		; 10 20
	cop $08.b		; 02 08
	php		; 08
	ora $000108.l		; 0F 08 01 00
	ora ($00.b,X)		; 01 00
	inc $43FF.w,X		; FE FF 43
	and $0401.w,X		; 3D 01 04
	eor $1040C0.l,X		; 5F C0 40 10
	jsr $2020.w		; 20 20 20
	rti		; 40

	and $314F20.l,X		; 3F 20 4F 31
	ora $10.b		; 05 10
	inc $0203.w,X		; FE 03 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($FC.b,X)		; 01 FC
	cop $01.b		; 02 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	bne  -1.b		; D0 FF
	bra -17.b		; 80 EF
	jmp ($3C43.w,X)		; 7C 43 3C
	rti		; 40

	and $80.b,S		; 23 80
	eor $7F80.w,Y		; 59 80 7F
	php		; 08
	sbc $231C38.l		; EF 38 1C 23
	rol $19.b		; 26 19
	rts		; 60

	ora $EFD010.l		; 0F 10 D0 EF
	bra  -1.b		; 80 FF
	ora [$18.b]		; 07 18
	ora [$A0.b]		; 07 A0
	trb $B340.w		; 1C 40 B3
	inc $EF60.w,X		; FE 60 EF
	ora $03.b,S		; 03 03
	tsb $B30C.w		; 0C 0C B3
	ora ($0E.b,X)		; 01 0E
	cpx #$D017.w		; E0 17 D0
	tsx		; BA
	bra -49.b		; 80 CF
	cpx #$C0C0.w		; E0 C0 C0
	bra  64.b		; 80 40
	bmi  32.b		; 30 20
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -96.b		; 80 A0
	brk $F5.b		; 00 F5
	brk $50.b		; 00 50
	tsb $0C.b		; 04 0C
	phd		; 0B
	tsb $09.b		; 04 09
	asl $04.b		; 06 04
	asl $40.b		; 06 40
	sbc $03FD00.l,X		; FF 00 FD 03
	tsb $03.b		; 04 03
	clc		; 18
	ora [$E0.b]		; 07 E0
	ora $033EC1.l,X		; 1F C1 3E 03
	tsb $03.b		; 04 03
	ora ($0E.b),Y		; 11 0E
	rol $18.b		; 26 18
	bne  -1.b		; D0 FF
	rti		; 40

	eor $3FF3.w,X		; 5D F3 3F
	cpy #$E31C.w		; C0 1C E3
	sec		; 38
	cmp [$78.b]		; C7 78
	sta [$F0.b]		; 87 F0
	ora $C4E3C0.l		; 0F C0 E3 C4
	ora $87.b,S		; 03 87
	ora $00FF50.l		; 0F 50 FF 00
	sbc $F0C0.w,X		; FD C0 F0
	sec		; 38
	cpy #$F00C.w		; C0 0C F0
	tsb $F8.b		; 04 F8
	cop $FC.b		; 02 FC
	cpy #$8070.w		; C0 70 80
	clc		; 18
	cpx #$F00C.w		; E0 0C F0
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	ora ($03.b,X)		; 01 03
	ora ($FE.b,X)		; 01 FE
	sbc $C3FFFC.l,X		; FF FC FF C3
	ora ($BD.b,X)		; 01 BD
	eor ($FF.b,X)		; 41 FF
	ora ($5F.b,S),Y		; 13 5F
	jsr $60BF.w		; 20 BF 60
	adc $C2BFC1.l,X		; 7F C1 BF C2
	ror $4201.w,X		; 7E 01 42
	adc $231F01.l,X		; 7F 01 1F 23
	and $807F40.l,X		; 3F 40 7F 80
	lda $817E40.l,X		; BF 40 7E 81
	eor $FEAFFD.l,X		; 5F FD AF FE
	bvc 127.b		; 50 7F
	rol $9680.w		; 2E 80 96
	beq  24.b		; F0 18
	cpy #$C604.w		; C0 04 C6
	sty $9884.w		; 8C 84 98
	adc $EE8090.l,X		; 7F 90 80 EE
	stx $F0.b,Y		; 96 F0
	clc		; 18
	tsb $04.b		; 04 04
	dey		; 88
	sty $9890.w		; 8C 90 98
	adc $0ABF45.l,X		; 7F 45 BF 0A
	bpl  -9.b		; 10 F7
	asl $09.b,X		; 16 09
	inc A		; 1A
	ora ($1A.b,X)		; 01 1A
	ora $0B.b		; 05 0B
	jmp $08F0.w		; 4C F0 08
	asl $0109.w		; 0E 09 01
	ora $051A.w,X		; 1D 1A 05
	ora $F3.b,S		; 03 F3
	sbc $10BBFA.l,X		; FF FA BB 10
	cpx #$60A8.w		; E0 A8 60
	inc $6448.w		; EE 48 64
	bit $1E.b		; 24 1E
	tsb $183C.w		; 0C 3C 18
	rti		; 40

	tsb $C0E0.w		; 0C E0 C0
	bra  96.b		; 80 60
	rti		; 40

	pla		; 68
	jsr $1C24.w		; 20 24 1C
	bpl  16.b		; 10 10
	php		; 08
	sbc $7FF5FF.l,X		; FF FF F5 7F
	php		; 08
	ora [$0E.b]		; 07 0E
	ora ($18.b,X)		; 01 18
	ora [$10.b]		; 07 10
	ora $240D32.l		; 0F 32 0D 24
	tas		; 1B
	pla		; 68
	ora [$59.b],Y		; 17 59
	rol $07.b		; 26 07
	ora ($04.b,X)		; 01 04
	ora $0B.b,S		; 03 0B
	tsb $0C.b		; 04 0C
	ora ($1A.b,X)		; 01 1A
	ora ($15.b,X)		; 01 15
	cop $26.b		; 02 26
	xce		; FB
	sbc $01F7FF.l,X		; FF FF F7 01
	inc $03FF.w,X		; FE FF 03
	jsr ($F00F.w,X)		; FC 0F F0
	ora [$F9.b]		; 07 F9
	eor $758FB2.l		; 4F B2 8F 75
	lda $788654.l		; AF 54 86 78
	ora $FC.b,S		; 03 FC
	tsb $30F0.w		; 0C F0 30
	cpy #$8078.w		; C0 78 80
	lda ($75.b)		; B2 75
	ora ($54.b,X)		; 01 54
	ora ($3F.b,X)		; 01 3F
	adc $F0DFFD.l,X		; 7F FD DF F0
	ora $201010.l		; 0F 10 10 20
	jsr $20A0.w		; 20 A0 20
	php		; 08
	iny		; C8
	sta ($81.b,X)		; 81 81
	php		; 08
	ora $240313.l		; 0F 13 03 24
	tsb $08.b		; 04 08
	php		; 08
	lda #$CC09.w		; A9 09 CC
	tsb $01.b		; 04 01
	asl A		; 0A
	cop $0F.b		; 02 0F
	cmp $FF.b,S		; C3 FF
	sbc $03FC02.l,X		; FF 02 FC 03
	cop $01.b		; 02 01
	ora ($90.b,X)		; 01 90
	bcc  12.b		; 90 0C
	beq  10.b		; F0 0A
	php		; 08
	bit $34.b,X		; 34 34
	plp		; 28
	plp		; 28
	sta $72729E.l,X		; 9F 9E 72 72
	tsb $940C.w		; 0C 0C 94
	tsb $40.b		; 04 40
	bne   0.b		; D0 00
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra  35.b		; 80 23
	and $32.b,S		; 23 32
	and $01.b,S		; 23 01
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	sbc $85F7FF.l,X		; FF FF F7 85
	sbc $30E1.w		; ED E1 30
	bit $2046.w		; 2C 46 20
	rts		; 60

	sbc ($24.b)		; F2 24
	ora $02.b,S		; 03 02
	ora ($12.b,S),Y		; 13 12
	wai		; CB
	lda #$12EC.w		; A9 EC 12
	bmi  48.b		; 30 30
	mvp $20,$46		; 44 46 20
	rts		; 60

	jsr $0224.w		; 20 24 02
	ora ($10.b)		; 12 10
	iny		; C8
	tay		; A8
	sbc $D577FF.l,X		; FF FF 77 D5
	sta ($D3.b,X)		; 81 D3
	ora ($FF.b),Y		; 11 FF
	lsr $2AFF.w,X		; 5E FF 2A
	sbc $1BCE84.l,X		; FF 84 CE 1B
	sbc $EE.b,X		; F5 EE
	jsr $91FF.w		; 20 FF 91
	cmp $D120.w		; CD 20 D1
	sty $04.b,X		; 94 04
	sty $B5.b		; 84 B5
	asl A		; 0A
	ora $FF800E.l,X		; 1F 0E 80 FF
	sbc $04FFFF.l,X		; FF FF FF 04
	lda $46BB60.l,X		; BF 60 BB 46
	stp		; DB
	cpy $BD.b		; C4 BD
	ora ($BB.b),Y		; 11 BB
	php		; 08
	inc $9BE2.w		; EE E2 9B
	beq  54.b		; F0 36
	lda $44BB40.l,X		; BF 40 BB 44
	txy		; 9B
	bit $99.b		; 24 99
	.db $42, $19		; 42 19
	mvp $11,$0C		; 44 0C 11
	cop $04.b		; 02 04
	php		; 08
	and $FF9F.w,Y		; 39 9F FF
	sta $28FB.w		; 8D FB 28
	jsr ($2020.w,X)		; FC 20 20
	bvs  32.b		; 70 20
	bmi  16.b		; 30 10
	sty $36.b		; 84 36
	ldy $44A8.w		; AC A8 44
	cld		; D8
	sed		; F8
	jsr $2020.w		; 20 20 20
	bpl  16.b		; 10 10
	bit $A8.b,X		; 34 A8
	tay		; A8
	rti		; 40

	cld		; D8
	and $14157D.l,X		; 3F 7D 15 14
	rtl		; 6B

	tsb $38.b		; 04 38
	php		; 08
	ora $05.b		; 05 05
	rti		; 40

	php		; 08
	php		; 08
	ora ($01.b),Y		; 11 01
	asl A		; 0A
	tsb $08.b		; 04 08
	ora $08.b		; 05 08
	ora ($FF.b,X)		; 01 FF
	sbc $3AFFD7.l,X		; FF D7 FF 3A
	cpy $7F.b		; C4 7F
	ldx #$845D.w		; A2 5D 84
	pea $E722.w		; F4 22 E7
	eor #$64DA.w		; 49 DA 64
	sbc $9576.w,X		; FD 76 95
	phy		; 5A
	cpy #$8001.w		; C0 01 80
	lda $09.b,S		; A3 09
	php		; 08
	clc		; 18
	bpl  21.b		; 10 15
	trb $15.b		; 14 15
	asl $31.b,X		; 16 31
	inc A		; 1A
	sbc $FFD5FF.l,X		; FF FF D5 FF
	sta $CF4A.w,X		; 9D 4A CF
	trb $E7.b		; 14 E7
	php		; 08
	jmp.w [$CA12]		; DC 12 CA
	ora $E6.b,X		; 15 E6
	ora $0BF4.w		; 0D F4 0B
	beq  14.b		; F0 0E
	jsl $E1F0E0.l		; 22 E0 F0 E1
	ora $E4.b,S		; 03 E4
	ora $F5.b		; 05 F5
	ora $0BF0.w		; 0D F0 0B
	sbc ($0E.b),Y		; F1 0E
	sbc $D755FF.l,X		; FF FF 55 D7
	dey		; 88
	adc [$44.b],Y		; 77 44
	cpy $A8.b		; C4 A8
	inx		; E8
	tay		; A8
	php		; 08
	adc ($93.b,S),Y		; 73 93
	cli		; 58
	bpl  88.b		; 10 58
	cli		; 58
	mvp $77,$98		; 44 98 77
	mvp $A8,$A8		; 44 A8 A8
	sta ($80.b,S),Y		; 93 80
	tsb $0848.w		; 0C 48 08
	bra -57.b		; 80 C7
	cpy $41.b		; C4 41
	rti		; 40

	rti		; 40

	bra  32.b		; 80 20
	rti		; 40

	rti		; 40

	bpl  32.b		; 10 20
	jsr $4080.w		; 20 80 40
	jsr $D7BF.w		; 20 BF D7
	lda $950343.l,X		; BF 43 03 95
	ora $DB.b		; 05 DB
	ora [$75.b]		; 07 75
	and ($06.b,S),Y		; 33 06
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	rtl		; 6B

	ora ($58.b,X)		; 01 58
	tsb $30.b		; 04 30
	cop $04.b		; 02 04
	ora ($02.b,X)		; 01 02
	eor $55FF77.l,X		; 5F 77 FF 55
	ldx $DF60.w		; AE 60 DF
	cpy #$1F5F.w		; C0 5F 1F
	adc [$40.b],Y		; 77 40
	sbc [$FB.b],Y		; F7 FB
	php		; 08
	sbc $7F605F.l,X		; FF 5F 60 7F
	cpx #$A0BF.w		; E0 BF A0
	sbc $FFBFE0.l,X		; FF E0 BF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $55FFF7.l,X		; FF F7 FF 55
	cmp ($BF.b)		; D2 BF
	adc $3B6C.w		; 6D 6C 3B
	sta $0117.w,Y		; 99 17 01
	cmp $FCFC41.l,X		; DF 41 FC FC
	ora $FA.b,S		; 03 FA
	ora $28.b,S		; 03 28
	clv		; B8
	tyx		; BB
	sed		; F8
	dec $FED8.w,X		; DE D8 FE
	beq -66.b		; F0 BE
	sbc $FEFFFC.l,X		; FF FC FF FE
	tyx		; BB
	ror $E6DD.w,X		; 7E DD E6
	.db $82, $3B, $C4		; 82 3B C4
	lda $3F52.w		; AD 52 3F
	sta ($3F.b),Y		; 91 3F
	lsr $7F01.w,X		; 5E 01 7F
	lda $04C018.l,X		; BF 18 C0 04
	jmp $DE12.w		; 4C 12 DE
	dec $219E.w,X		; DE 9E 21
	lda $41403F.l,X		; BF 3F 40 41
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($3F.b,X)		; 01 3F
	sbc $541F.w,X		; FD 1F 54
	sta ($4E.b),Y		; 91 4E
	pha		; 48
	lsr $2026.w		; 4E 26 20
	bmi  56.b		; 30 38
	bmi  12.b		; 30 0C
	clc		; 18
	asl $0C.b		; 06 0C
	and ($0E.b),Y		; 31 0E
	asl $200E.w		; 0E 0E 20
	bpl   8.b		; 10 08
	tsb $D5.b		; 04 D5
	sbc $F15541.l,X		; FF 41 55 F1
	asl $C080.w		; 0E 80 C0
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	cpx #$A021.w		; E0 21 A0
	ldx #$FF41.w		; A2 41 FF
	bra -128.b		; 80 80
	cpx #$41A0.w		; E0 A0 41
	cmp $FD.b,X		; D5 FD
	sbc $4F.b,X		; F5 4F
	sbc $BBCFFF.l		; EF FF CF BB
	bpl -105.b		; 10 97
	ora [$40.b],Y		; 17 40
	and $403FC0.l,X		; 3F C0 3F 40
	sed		; F8
	sed		; F8
	cpx #$9010.w		; E0 10 90
	jmp ($38C0.w,X)		; 7C C0 38
	bra  40.b		; 80 28
	bra  -1.b		; 80 FF
	jsr ($5455.w,X)		; FC 55 54
	tya		; 98
	rts		; 60

	bcc -112.b		; 90 90
	bcc -112.b		; 90 90
	bpl  16.b		; 10 10
	mvp $20,$40		; 44 40 20
	jsr $0808.w		; 20 08 08
	rts		; 60

	bcc -112.b		; 90 90
	bpl  64.b		; 10 40
	jsr $7E08.w		; 20 08 7E
	sta ($7F.b,S),Y		; 93 7F
	sta $0A.b,S		; 83 0A
	ora $05.b		; 05 05
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	php		; 08
	tsb $30.b		; 04 30
	ora ($04.b,X)		; 01 04
	ora $04.b		; 05 04
	cop $08.b		; 02 08
	ora ($08.b,X)		; 01 08
	php		; 08
	bpl  -9.b		; 10 F7
	sbc $F17F51.l,X		; FF 51 7F F1
	asl $C28A.w		; 0E 8A C2
	txa		; 8A
	inc $44.b		; E6 44
	adc ($A0.b),Y		; 71 A0
	ldy $DB.b		; A4 DB
	pld		; 2B
	trb $05.b		; 14 05
	ora $F1.b,S		; 03 F1
	txa		; 8A
	mvp $80,$20		; 44 20 80
	txy		; 9B
	cpy #$1004.w		; C0 04 10
	ora $FF.b,S		; 03 FF
	sbc $F13EF7.l,X		; FF F7 3E F1
	ora $E8.b		; 05 E8
	ora $A41DD5.l		; 0F D5 1D A4
	bit $82.b,X		; 34 82
	sbc ($42.b)		; F2 42
	cmp ($C2.b)		; D2 C2
	ora ($01.b)		; 12 01
	sbc $F002F9.l,X		; FF F9 02 F0
	sbc ($02.b,X)		; E1 02
	cpy #$0D0B.w		; C0 0B 0D
	jsr $E00D.w		; 20 0D E0
	ora $F447.w		; 0D 47 F4
	ora $F0.b		; 05 F0
	pha		; 48
	sbc $01228C.l,X		; FF 8C 22 01
	bcc -128.b		; 90 80
	cop $02.b		; 02 02
	adc $808080.l,X		; 7F 80 80 80
	cop $02.b		; 02 02
	adc $20383C.l,X		; 7F 3C 38 20
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	adc $4015C0.l,X		; 7F C0 15 40
	jmp.w [$0222]		; DC 22 02
	ora $11.b,S		; 03 11
	ora ($80.b),Y		; 11 80
	asl $16.b,X		; 16 16
	and ($01.b,X)		; 21 01
	bpl  16.b		; 10 10
	sbc $EA55F5.l,X		; FF F5 55 EA
	sed		; F8
	cop $A3.b		; 02 A3
	stx $7C8D.w		; 8E 8D 7C
	cmp $24.b,S		; C3 24
	sed		; F8
	cmp $9740FF.l,X		; DF FF 40 97
	sta $FD.b,S		; 83 FD
	adc ($03.b),Y		; 71 03
	clc		; 18
	ora [$3C.b]		; 07 3C
	ora $63.b,S		; 03 63
	ora $45FCCF.l		; 0F CF FC 45
	jsr ($423D.w,X)		; FC 3D 42
	ora $03.b,S		; 03 03
	cpy #$E140.w		; C0 40 E1
	ora ($7F.b,X)		; 01 7F
	sei		; 78
	lda $0382F8.l		; AF F8 82 03
	bra   1.b		; 80 01
	cpx #$1F78.w		; E0 78 1F
	sed		; F8
	ora $41FFC7.l		; 0F C7 FF 41
	eor $E4.b,X		; 55 E4
	clc		; 18
	cop $84.b		; 02 84
	sty $10.b		; 84 10
	bpl -64.b		; 10 C0
	cpy #$4849.w		; C0 49 48
	tsb $04.b		; 04 04
	clc		; 18
	sty $10.b		; 84 10
	cpy #$0448.w		; C0 48 04
	sbc $AFFFDF.l,X		; FF DF FF AF
	ora #$182F.w		; 09 2F 18
	tsa		; 3B
	ora ($3C.b,S),Y		; 13 3C
	asl A		; 0A
	and ($02.b)		; 32 02
	eor ($07.b)		; 52 07
	eor [$7C.b],Y		; 57 7C
	sbc $100F70.l,X		; FF 70 0F 10
	clc		; 18
	tsb $10.b		; 04 10
	ora $02.b,S		; 03 02
	ora $2F02.w		; 0D 02 2F
	ora [$2A.b]		; 07 2A
	ora $70.b,S		; 03 70
	inc $EE7F.w,X		; FE 7F EE
	and $936B7F.l,X		; 3F 7F 6B 93
	bra 127.b		; 80 7F
	tay		; A8
	sei		; 78
	dey		; 88
	eor #$4218.w		; 49 18 42
	bit #$FFC4.w		; 89 C4 FF
	bra   3.b		; 80 03
	jmp ($0780.w)		; 6C 80 07
	bra  54.b		; 80 36
	bra  60.b		; 80 3C
	sta ($B8.b,X)		; 81 B8
	ora $FF.b,S		; 03 FF
	sbc $AEFFFE.l,X		; FF FE FF AE
	ora ($51.b),Y		; 11 51
	and ($27.b,X)		; 21 27
	cmp [$5E.b]		; C7 5E
	stz $797A.w,X		; 9E 7A 79
	sbc #$E1E7.w		; E9 E7 E1
	ora $E3F5.w,Y		; 19 F5 E3
	inc $DE01.w		; EE 01 DE
	ora [$3B.b]		; 07 3B
	asl $786D.w,X		; 1E 6D 78
	ldx $E0.b,Y		; B6 E0
	eor $0706.w,Y		; 59 06 07
	asl $FFEF.w		; 0E EF FF
	sbc $055FFF.l,X		; FF FF 5F 05
	sbc $31D5.w,X		; FD D5 31
	ror $115E.w,X		; 7E 5E 11
	sbc $9081.w		; ED 81 90
	cmp ($50.b),Y		; D1 50
	trb $E1.b		; 14 E1
	bit $23.b		; 24 23
	ora $02.b		; 05 02
	cmp $B1.b		; C5 B1
	jmp $80DC.w		; 4C DC 80
	bne  17.b		; D0 11
	bra  70.b		; 80 46
	cpy #$11EC.w		; C0 EC 11
	sbc ($3D.b,S),Y		; F3 3D
	cmp ($B3.b,X)		; C1 B3
	cpy #$20E0.w		; C0 E0 20
	bpl  32.b		; 10 20
	jsr $8080.w		; 20 80 80
	bra  32.b		; 80 20
	ldy #$80C0.w		; A0 C0 80
	ldy #$40C0.w		; A0 C0 40
	bra  32.b		; 80 20
	cpx #$C3F4.w		; E0 F4 C3
	beq 125.b		; F0 7D
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora ($07.b,X)		; 01 07
	ora $0C.b,S		; 03 0C
	tsb $01.b		; 04 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	tsb $7F.b		; 04 7F
	sbc $61FFFF.l,X		; FF FF FF 61
	inc A		; 1A
	rep #$43		; C2 43
	eor $1111.w		; 4D 11 11
	sta $CB.b,S		; 83 CB
	sec		; 38
	bpl  17.b		; 10 11
	ora ($8B.b,X)		; 01 8B
	sta ($08.b,S),Y		; 93 08
	tsb $4040.w		; 0C 40 40
	ora ($10.b,X)		; 01 10
	ora ($04.b,X)		; 01 04
	dex		; CA
	eor $3B13.w,Y		; 59 13 3B
	ora $02.b,S		; 03 02
	sta ($18.b,S),Y		; 93 18
	sbc $F37F73.l,X		; FF 73 7F F3
	rol $6104.w,X		; 3E 04 61
	bit $A0.b		; 24 A0
	jsr $F8F8.w		; 20 F8 F8
	ora $02.b,S		; 03 02
	dey		; 88
	dey		; 88
	ora ($C4.b,X)		; 01 C4
	ora $821F44.l,X		; 1F 44 1F 82
	cop $F8.b		; 02 F8
	sbc ($F1.b),Y		; F1 F1
	tsb $4084.w		; 0C 84 40
	rti		; 40

	sbc $FD55FF.l,X		; FF FF 55 FD
	sbc [$F8.b],Y		; F7 F8
	cpx $F7.b		; E4 F7
	eor ($FE.b),Y		; 51 FE
	mvp $E0,$F8		; 44 F8 E0
	sbc $5438AC.l,X		; FF AC 38 54
	rts		; 60

	trb $EF4C.w		; 1C 4C EF
	eor ($EF.b,S),Y		; 53 EF
	trb $5BB7.w		; 1C B7 5B
	sta $CF.b,S		; 83 CF
	sta $FF9F9F.l		; 8F 9F 9F FF
	sbc $DFFD55.l,X		; FF 55 FD DF
	and $DFFF3F.l,X		; 3F 3F FF DF
	adc $1F7F1F.l,X		; 7F 1F 7F 1F
	sbc $6E2F7F.l,X		; FF 7F 2F 6E
	and $A13F7F.l,X		; 3F 7F 3F A1
	bne -32.b		; D0 E0
	bmi -48.b		; 30 D0
	bcs -112.b		; B0 90
	cmp ($C1.b),Y		; D1 C1
	sta ($81.b,X)		; 81 81
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
	sbc $CFFFF7.l,X		; FF F7 FF CF
	sta $CB.b,S		; 83 CB
	sty $AC.b		; 84 AC
	php		; 08
	tya		; 98
	clc		; 18
	tas		; 1B
	pld		; 2B
	jmp ($0F08.w)		; 6C 08 0F
	tsb $E7.b		; 04 E7
	ora $AC.b,S		; 03 AC
	jmp $2B04.w		; 4C 04 2B
	ldy #$2030.w		; A0 30 20
	and [$14.b]		; 27 14
	eor ($77.b,S),Y		; 53 77
	stz $7B.b,X		; 74 7B
	txy		; 9B
	stz $FEFF.w		; 9C FF FE
	sbc $1CFCFF.l,X		; FF FF FC 1C
	ora $F83B7C.l,X		; 1F 7C 3B F8
	bit $14.b		; 24 14
	sec		; 38
	sta $8C.b		; 85 8C
	ldx $2478.w,Y		; BE 78 24
	ldy #$1F03.w		; A0 03 1F
	trb $3860.w		; 1C 60 38
	rti		; 40

	bit $30.b		; 24 30
	bra  56.b		; 80 38
	sty $88.b		; 84 88
	sec		; 38
	cpy #$8020.w		; C0 20 80
	cmp [$57.b],Y		; D7 57
	eor $03.b,S		; 43 03
	ora ($0F.b,S),Y		; 13 0F
	sty $40.b		; 84 40
	jsr $1121.w		; 20 21 11
	and ($11.b,X)		; 21 11
	rti		; 40

	bcc -18.b		; 90 EE
	sbc $301021.l		; EF 21 10 30
	sbc $577FFF.l,X		; FF FF 7F 57
	sbc [$7B.b],Y		; F7 7B
	lda #$B28D.w		; A9 8D B2
	txa		; 8A
	ora $94.b,X		; 15 94
	rol A		; 2A
	clc		; 18
	plp		; 28
	tay		; A8
	stx $E4.b		; 86 E4
	adc $6E.b,S		; 63 6E
	ldy $05FE.w		; AC FE 05
	cop $3A.b		; 02 3A
	tsb $84.b		; 04 84
	sec		; 38
	php		; 08
	dey		; 88
	stz $22.b		; 64 22
	sbc $5557FF.l,X		; FF FF 57 55
	bvs 112.b		; 70 70
	bmi  32.b		; 30 20
	bpl  24.b		; 10 18
	bra   8.b		; 80 08
	inx		; E8
	tsb $06F4.w		; 0C F4 06
	plx		; FA
	ora $FD.b,S		; 03 FD
	ora ($80.b,X)		; 01 80
	bmi -64.b		; 30 C0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	jsr ($03FE.w,X)		; FC FE 03
	sbc $08F7FE.l,X		; FF FE F7 08
	ora [$04.b]		; 07 04
	trb $0808.w		; 1C 08 08
	phd		; 0B
	phd		; 0B
	ora $0701.w,Y		; 19 01 07
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	ora [$03.b]		; 07 03
	php		; 08
	phd		; 0B
	php		; 08
	ora #$FF10.w		; 09 10 FF
	sbc $5CF57F.l,X		; FF 7F F5 5C
	sta $44.b,S		; 83 44
	sta $38.b,S		; 83 38
	cmp [$28.b]		; C7 28
	cmp [$54.b],Y		; D7 54
	plb		; AB
	txs		; 9A
	adc $19.b		; 65 19
	inc $25.b		; E6 25
	rep #$83		; C2 83
	jsr $3982.w		; 20 82 39
	eor [$80.b]		; 47 80
	cmp [$AB.b],Y		; D7 AB
	adc $C6.b		; 65 C6
	jsr $589A.w		; 20 9A 58
	sbc $FF3FFF.l,X		; FF FF 3F FF
	phd		; 0B
	inc $01.b,X		; F6 01
	ora ($14.b,X)		; 01 14
	bpl   8.b		; 10 08
	php		; 08
	ora [$01.b]		; 07 01
	rol $4C21.w		; 2E 21 4C
	eor $AE.b,S		; 43 AE
	lda ($C7.b)		; B2 C7
	and [$D0.b],Y		; 37 D0
	bne  24.b		; D0 18
	php		; 08
	ldy #$6FA0.w		; A0 A0 6F
	rti		; 40

	ror $C031.w,X		; 7E 31 C0
	rti		; 40

	sbc [$DC.b],Y		; F7 DC
	adc ($44.b,S),Y		; 73 44
	asl $A040.w,X		; 1E 40 A0
	cpy #$4080.w		; C0 80 40
	rti		; 40

	eor ($01.b,X)		; 41 01
	ora $03.b,S		; 03 03
	ora $BF.b,S		; 03 BF
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	ora ($02.b,X)		; 01 02
	adc $111133.l,X		; 7F 33 11 11
	rol $4041.w,X		; 3E 41 40
	rti		; 40

	dey		; 88
	dey		; 88
	bra -124.b		; 80 84
	sty $0A.b		; 84 0A
	asl A		; 0A
	sta ($88.b,X)		; 81 88
	tsb $0A.b		; 04 0A
	ora $0404.w		; 0D 04 04
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	jsr $4580.w		; 20 80 45
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($FB.b,X)		; 01 FB
	sbc $FFFFBA.l,X		; FF BA FF FF
	jsr ($010E.w,X)		; FC 0E 01
	stz $7001.w,X		; 9E 01 70
	phd		; 0B
	sbc $B83A.w		; ED 3A B8
	stx $5A.b,Y		; 96 5A
	bit $FC30.w		; 2C 30 FC
	asl $9F01.w		; 0E 01 9F
	bvs  10.b		; 70 0A
	inc $38.b		; E6 38
	bra  20.b		; 80 14
	jmp $1828.w		; 4C 28 18
	sbc $FFEFFF.l,X		; FF FF EF FF
	beq  48.b		; F0 30
	jsr ($FFCC.w,X)		; FC CC FF
	adc ($7F.b,S),Y		; 73 7F
	bit $17B7.w,X		; 3C B7 17
	bvc -128.b		; 50 80
	sec		; 38
	iny		; C8
	sta $0FE5.w		; 8D E5 0F
	and $73CF03.l,X		; 3F 03 CF 73
	bra -68.b		; 80 BC
	iny		; C8
	cmp $E7EFEF.l,X		; DF EF EF E7
	sbc $FFF7F2.l		; EF F2 F7 FF
	sbc $73FFFF.l,X		; FF FF FF 73
	eor [$FB.b]		; 47 FB
	cmp ($FD.b,S),Y		; D3 FD
	txy		; 9B
	cpx $986B.w		; EC 6B 98
	sta ($35.b,S),Y		; 93 35
	jsl $CF187A.l		; 22 7A 18 CF
	and [$8F.b],Y		; 37 8F
	cmp $03D707.l		; CF 07 D7 03
	txy		; 9B
	ora ($7B.b,S),Y		; 13 7B
	adc [$F7.b]		; 67 F7
	cmp $9F87EF.l		; CF EF 87 9F
	sei		; 78
	adc $FF57FF.l,X		; 7F FF 57 FF
	sbc $EAE23F.l,X		; FF 3F E2 EA
	sbc ($C1.b,X)		; E1 C1
	cpy $A4.b		; C4 A4
	cpy $18.b		; C4 18
	bra  80.b		; 80 50
	ldy #$7B40.w		; A0 40 7B
	bpl  16.b		; 10 10
	clc		; 18
	inc A		; 1A
	asl $2F3F.w,X		; 1E 3F 2F
	and [$3F.b]		; 27 3F
	adc $BFDF5F.l		; 6F 5F DF BF
	lda $FFFDFF.l,X		; BF FF FD FF
	eor $B5.b,X		; 55 B5
	jmp ($80C2.w,X)		; 7C C2 80
	rts		; 60

	cpy #$E031.w		; C0 31 E0
	clc		; 18
	bvs  27.b		; 70 1B
	bit $88.b		; 24 88
	sta [$05.b]		; 87 05
	ora ($FF.b,X)		; 01 FF
	bra  64.b		; 80 40
	jsr $4C90.w		; 20 90 4C
	lda $80.b,S		; A3 80
	ora ($FF.b,X)		; 01 FF
	inc $EF54.w,X		; FE 54 EF
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	jsr $1030.w		; 20 30 10
	clc		; 18
	bit $1C.b,X		; 34 1C
	phx		; DA
	rti		; 40

	ldx $599A.w,Y		; BE 9A 59
	bra -64.b		; 80 C0
	cpx #$08C0.w		; E0 C0 08
	clc		; 18
	bit $40.b		; 24 40
	clc		; 18
	ldx $FF.b		; A6 FF
	sbc $2DBFFF.l,X		; FF FF BF 2D
	rol $53.b,X		; 36 53
	eor $6410.w		; 4D 10 64
	cmp $1950.w,Y		; D9 50 19
	lsr A		; 4A
	adc ($0E.b,S),Y		; 73 0E
	ror $0C.b		; 66 0C
	jmp $1E08.w		; 4C 08 1E
	rol $4121.w,X		; 3E 21 41
	plp		; 28
	rts		; 60

	ora $580B10.l,X		; 1F 10 0B 58
	tsb $68.b		; 04 68
	php		; 08
	bvc  64.b		; 50 40
	sbc $7FFF.w,X		; FD FF 7F
	bvc  -1.b		; 50 FF
	cop $1B.b		; 02 1B
	asl A		; 0A
	pea $9048.w		; F4 48 90
	rti		; 40

	bra   2.b		; 80 02
	ora ($0E.b,X)		; 01 0E
	ora $74.b,S		; 03 74
	ora $19.b,S		; 03 19
	ora $A6BE.w,Y		; 19 BE A6
	clv		; B8
	rti		; 40

	cpx #$0701.w		; E0 01 07
	sbc [$FF.b],Y		; F7 FF
	cmp $FD7E3F.l		; CF 3F 7E FD
	sty $0D.b		; 84 0D
	ora $CA.b		; 05 CA
	sec		; 38
	phk		; 4B
	rts		; 60

	phb		; 8B
	rts		; 60

	adc [$A0.b]		; 67 A0
	lda ($A0.b,X)		; A1 A0
	inc $02FE.w,X		; FE FE 02
	cop $1C.b		; 02 1C
	ora $E00A20.l,X		; 1F 20 0A E0
	ora $C0.b,S		; 03 C0
	ora [$F7.b]		; 07 F7
	sbc $F9AF55.l,X		; FF 55 AF F9
	.db $82, $73, $67		; 82 73 67
	tsb $C5.b		; 04 C5
	cop $CC.b		; 02 CC
	asl A		; 0A
	pla		; 68
	tsb $F8.b		; 04 F8
	trb $90.b		; 14 90
	tsb $FC7C.w		; 0C 7C FC
	sed		; F8
	sei		; 78
	bmi -127.b		; 30 81
	bpl -61.b		; 10 C3
	eor $63.b,S		; 43 63
	and ($03.b,S),Y		; 33 03
	ora ($00.b),Y		; 11 00
	sed		; F8
	ora [$01.b]		; 07 01
	ora ($80.b,X)		; 01 80
	bra   7.b		; 80 07
	ora ($03.b,X)		; 01 03
	bmi   1.b		; 30 01
	bpl  96.b		; 10 60
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -33.b		; 80 DF
	adc ($CF.b),Y		; 71 CF
	brk $39.b		; 00 39
	ora [$08.b]		; 07 08
	plp		; 28
	inc A		; 1A
	stz $70.b,X		; 74 70
	plp		; 28
	plp		; 28
	plp		; 28
	php		; 08
	ora $30100F.l		; 0F 0F 10 30
	bmi  64.b		; 30 40
	sbc $001700.l,X		; FF 00 17 00
	cmp $3F253D.l,X		; DF 3D 25 3F
	clc		; 18
	ora $0F0C0C.l,X		; 1F 0C 0C 0F
	cop $0B.b		; 02 0B
	asl $BF.b		; 06 BF
	sbc $834447.l,X		; FF 47 44 83
	adc $8280.w,X		; 7D 80 82
	cmp $05.b		; C5 05
	asl $0A.b		; 06 0A
	php		; 08
	rti		; 40

	tsb $1010.w		; 0C 10 10
.INDEX 8
	sep #$54		; E2 54
	inc $02FF.w,X		; FE FF 02
	tsb $08.b		; 04 08
	bmi  -1.b		; 30 FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc $60FB03.l,X		; FF 03 FB 60
	stz $1010.w		; 9C 10 10
	pha		; 48
	pha		; 48
	jsr $6020.w		; 20 20 60
	adc ($05.b,X)		; 61 05
	ora $03.b,S		; 03 03
	tsb $60.b		; 04 60
	stz $1010.w		; 9C 10 10
	pha		; 48
	pha		; 48
	jsr $0120.w		; 20 20 01
	ora ($63.b,X)		; 01 63
	.db $62, $02, $04		; 62 02 04
	sbc $07DFFF.l,X		; FF FF DF 07
	ror $4265.w		; 6E 65 42
	lsr $1C97.w		; 4E 97 1C
	tsb $5898.w		; 0C 98 58
	bvs  81.b		; 70 51
	ldy #$C2.b		; A0 C2
	bra -123.b		; 80 85
	ora ($62.b,X)		; 01 62
	stx $45.b,Y		; 96 45
	eor #$3008.w		; 49 08 30
	ldy #$20.b		; A0 20
	bra -64.b		; 80 C0
	sbc $F2FEFF.l,X		; FF FF FE F2
	asl $ACB1.w		; 0E B1 AC
	jmp.w [$DEF6]		; DC F6 DE
	bvs  97.b		; 70 61
	bit $2E.b,X		; 34 2E
	jsr $502C.w		; 20 2C 50
	bvs -96.b		; 70 A0
	rts		; 60

	lsr $DCA0.w		; 4E A0 DC
	bvs  94.b		; 70 5E
	bmi  32.b		; 30 20
	trb $1020.w		; 1C 20 10
	cpy #$20.b		; C0 20
	sbc $00BF00.l,X		; FF 00 BF 00
	bvs  15.b		; 70 0F
	bvc  15.b		; 50 0F
	and $1F06.w,Y		; 39 06 1F
	ora $0F2F0F.l,X		; 1F 0F 2F 0F
	and $1F0F0F.l		; 2F 0F 0F 1F
	sbc $00D757.l,X		; FF 57 D7 00
	asl $63E9.w,X		; 1E E9 63
	eor ($92.b)		; 52 92
	jmp ($A9AE.w)		; 6C AE A9
	ora ($01.b),Y		; 11 01
	asl $2021.w		; 0E 21 20
	sbc [$FF.b],Y		; F7 FF
	bmi  -1.b		; 30 FF
	ora [$80.b]		; 07 80
	sbc [$FF.b],Y		; F7 FF
	sbc $7F.b,S		; E3 7F
	rtl		; 6B

	bne -120.b		; D0 88
	eor ($84.b,X)		; 41 84
	rti		; 40

	dey		; 88
	jmp.w [$3D1D]		; DC 1D 3D
	and $0BEC.w,X		; 3D EC 0B
	bne  47.b		; D0 2F
	cpy #$CD.b		; C0 CD
	tsb $C0.b		; 04 C0
	php		; 08
	cpx #$21.b		; E0 21
	asl $061E.w,X		; 1E 1E 06
	ora ($1F.b,X)		; 01 1F
	xba		; EB
	sbc $50E22A.l		; EF 2A E2 50
	dey		; 88
	ldy #$01.b		; A0 01
	bvs 112.b		; 70 70
	adc ($E1.b,X)		; 61 E1
	ldy #$A0.b		; A0 A0
	nop		; EA
	bpl -32.b		; 10 E0
	and [$A0.b]		; 27 A0
	ora ($80.b,X)		; 01 80
	nop		; EA
	cpx #$10.b		; E0 10
	cmp $CC.b,S		; C3 CC
	eor ($44.b,X)		; 41 44
	sbc $0206.w,Y		; F9 06 02
	cop $08.b		; 02 08
	php		; 08
	tsb $04.b		; 04 04
	asl $02.b		; 06 02
	php		; 08
	tsb $11.b		; 04 11
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $FDD7.w		; 20 D7 FD
	cmp $44.b,S		; C3 44
	eor $20046F.l,X		; 5F 6F 04 20
	cpy $C4.b		; C4 C4
	mvp $1C,$06		; 44 06 1C
	lsr A		; 4A
	lsr A		; 4A
	tsb $370A.w		; 0C 0A 37
	adc $1C8040.l,X		; 7F 40 80 1C
	asl $FF.b		; 06 FF
	sbc $FED557.l,X		; FF 57 D5 FE
	sbc $0C0205.l,X		; FF 05 02 0C
	ora [$18.b]		; 07 18
	ora $231E11.l		; 0F 11 1E 23
	ora $0D32.w,X		; 1D 32 0D
	tad		; 5B
	tsb $FF.b		; 04 FF
	sbc $060301.l,X		; FF 01 03 06
	tsb $3318.w		; 0C 18 33
	tsb $03.b		; 04 03
	sbc $FFF7FF.l,X		; FF FF F7 FF
	inc $5A.b		; E6 5A
	ora ($E0.b),Y		; 11 E0
	ora $574D.w,Y		; 19 4D 57
	plp		; 28
	jmp $F772A5.l		; 5C A5 72 F7
	sec		; 38
	lda #$131D.w		; A9 1D 13
	ldy $C0FF.w,X		; BC FF C0
	sty $01.b		; 84 01
	clc		; 18
	ora [$61.b]		; 07 61
	trb $1282.w		; 1C 82 12
	jsr $1228.w		; 20 28 12
	trb $FF.b		; 14 FF
	sbc $7DC45F.l,X		; FF 5F C4 7D
	tda		; 7B
	asl A		; 0A
	trb $A8.b		; 14 A8
	bne  99.b		; D0 63
	cpy #$C1.b		; C0 C1
	sta ($80.b,X)		; 81 80
	ora ($86.b,X)		; 01 86
	cop $85.b		; 02 85
	asl $67.b		; 06 67
	sta $606078.l,X		; 9F 78 60 60
	bra   1.b		; 80 01
	cop $01.b		; 02 01
	sbc $02FF03.l,X		; FF 03 FF 02
	sbc [$FB.b],Y		; F7 FB
	jmp.w [$30EC]		; DC EC 30
	bne  96.b		; D0 60
	ldy #$C0.b		; A0 C0
	cpy #$FC.b		; C0 FC
	sbc $E0FCF0.l,X		; FF F0 FC E0
	beq -64.b		; F0 C0
	cpx #$C0.b		; E0 C0
	brk $DD.b		; 00 DD
	brk $28.b		; 00 28
	ora $130108.l		; 0F 08 01 13
	trb $0B.b		; 14 0B
	asl $0C.b		; 06 0C
	sbc $FF5FFF.l,X		; FF FF 5F FF
	ror $C35F.w,X		; 7E 5F C3
	lda ($06.b,X)		; A1 06
	ora $05.b,S		; 03 05
	asl $0B.b		; 06 0B
	sta $6E.b,X		; 95 6E
	eor ($8D.b)		; 52 8D
	sta $1B.b		; 85 1B
	phb		; 8B
	and $80607F.l,X		; 3F 7F 60 80
	ora ($03.b,X)		; 01 03
	asl $80.b		; 06 80
	and $4A01.w,X		; 3D 01 4A
	.db $42, $14		; 42 14
	sta $FF.b		; 85 FF
	cmp $AAFF.w,X		; DD FF AA
	jsr ($DF6F.w,X)		; FC 6F DF
	clv		; B8
	adc $F5E2.w,X		; 7D E2 F5
	bra -51.b		; 80 CD
	lsr $4E81.w		; 4E 81 4E
	lsr $9F20.w		; 4E 20 9F
	sbc $F0FC7C.l,X		; FF 7C FC F0
	beq -64.b		; F0 C0
	dec $3E3E.w		; CE 3E 3E
	lda $FFF79F.l,X		; BF 9F F7 FF
	lda $AA.b,S		; A3 AA
	sbc $FF10.w,Y		; F9 10 FF
	tsb $02B3.w		; 0C B3 02
	sta $C219.w		; 8D 19 C2
	sty $8641.w		; 8C 41 86
	rts		; 60

	eor $A0.b,S		; 43 A0
	cpx #$F6.b		; E0 F6
	rti		; 40

	bvs  60.b		; 70 3C
	rol $1F1F.w,X		; 3E 1F 1F
	cmp [$FF.b],Y		; D7 FF
	sta ($AA.b,X)		; 81 AA
	sbc [$08.b],Y		; F7 08
	sbc $403FFF.l,X		; FF FF 3F 40
	asl $8290.w		; 0E 90 82
	mvp $A2,$41		; 44 41 A2
	jsr $0851.w		; 20 51 08
	bra  96.b		; 80 60
	sec		; 38
	trb $058E.w		; 1C 8E 05
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	jsr $0000.w		; 20 00 00
	ora ($DF.b,X)		; 01 DF
	adc $8A27FF.l,X		; 7F FF 27 8A
	sbc $0D1013.l,X		; FF 13 10 0D
	lda ($A0.b,X)		; A1 A0
	adc $C4.b,S		; 63 C4
	eor ($02.b,X)		; 41 02
	stx $81.b		; 86 81
	ldy #$65.b		; A0 65
	sbc $053023.l		; EF 23 30 05
	php		; 08
	rti		; 40

	cpx #$02.b		; E0 02
	rti		; 40

	ora ($80.b,X)		; 01 80
	sbc $B7F77F.l,X		; FF 7F F7 B7
	dec $A2F5.w,X		; DE F5 A2
	trb $19C5.w		; 1C C5 19
	lsr $0926.w		; 4E 26 09
	sei		; 78
	bpl -32.b		; 10 E0
	and ($D1.b),Y		; 31 D1
	bra -72.b		; 80 B8
	inc $D008.w,X		; FE 08 D0
	ora ($06.b,X)		; 01 06
	asl $A8.b		; 06 A8
	php		; 08
	rti		; 40

	sta ($11.b),Y		; 91 11
	bra  -1.b		; 80 FF
	jsr ($FCEF.w,X)		; FC EF FC
	sta $12.b,X		; 95 12
	jmp $8309.w		; 4C 09 83
	.db $82, $17, $15		; 82 17 15
	and $02.b,S		; 23 02
	iny		; C8
	iny		; C8
	ora ($01.b,X)		; 01 01
	ora ($ED.b),Y		; 11 ED
	ora #$8308.w		; 09 08 83
	trb $15.b		; 14 15
	cop $02.b		; 02 02
	php		; 08
	iny		; C8
	ora ($01.b,X)		; 01 01
	sbc $88FFDF.l,X		; FF DF FF 88
	ldx $FD.b,Y		; B6 FD
	tad		; 5B
	wai		; CB
	and ($93.b,S),Y		; 33 93
	lda $5D.b,S		; A3 5D
	ora $78.b		; 05 78
	cld		; D8
	cpy #$10.b		; C0 10
	inx		; E8
	rts		; 60

	plx		; FA
	inc $0302.w,X		; FE 02 03
	bra   3.b		; 80 03
	sei		; 78
	sta ($C0.b,X)		; 81 C0
	rts		; 60

	dec $880F.w		; CE 0F 88
	asl A		; 0A
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rts		; 60

	bra -128.b		; 80 80
	bra  64.b		; 80 40
	sbc $AAAAFF.l,X		; FF FF AA AA
	clc		; 18
	tsb $63.b		; 04 63
	clc		; 18
	lsr $5C20.w		; 4E 20 5C
	and ($51.b,X)		; 21 51
	jsl $240522.l		; 22 22 05 24
	asl A		; 0A
	and #$0314.w		; 29 14 03
	ora [$1F.b]		; 07 1F
	asl $181C.w,X		; 1E 1C 18
	ora ($03.b),Y		; 11 03
	adc $AAAB7F.l,X		; 7F 7F AB AA
	lda $5344.w,Y		; B9 44 53
	tay		; A8
	phb		; 8B
	rti		; 40

	plb		; AB
	adc $106F90.l		; 6F 90 6F 10
	cmp [$08.b],Y		; D7 08
	cmp [$10.b],Y		; D7 10
	sta ($07.b,S),Y		; 93 07
	and [$77.b],Y		; 37 77
	adc [$E7.b]		; 67 E7
	sbc [$EF.b]		; E7 EF
	and [$5A.b],Y		; 37 5A
	cop $0A.b		; 02 0A
	eor $608820.l		; 4F 20 88 60
	rts		; 60

	rti		; 40

	bpl  64.b		; 10 40
	tsb $9F.b		; 04 9F
	rti		; 40

	bpl  -1.b		; 10 FF
	tyx		; BB
	tax		; AA
	tax		; AA
	eor ($30.b,X)		; 41 30
	rts		; 60

	pla		; 68
	sta ($40.b,X)		; 81 40
	bmi  52.b		; 30 34
	rti		; 40

	jsr $3802.w		; 20 02 38
	ora $8F10.w,Y		; 19 10 8F
	php		; 08
	rti		; 40

	tsb $20.b		; 04 20
	cop $01.b		; 02 01
	bpl  -1.b		; 10 FF
	adc $910AAA.l,X		; 7F AA 0A 91
	rol A		; 2A
	cmp #$E616.w		; C9 16 E6
	php		; 08
	adc ($04.b)		; 72 04
	stz $08.b		; 64 08
	clc		; 18
	jsr $C020.w		; 20 20 C0
	cpy #$C4.b		; C0 C4
	cpx #$F0.b		; E0 F0
	sed		; F8
	beq -64.b		; F0 C0
	cmp $F88AFD.l		; CF FD 8A F8
	ora ($02.b,X)		; 01 02
	ora $06.b,S		; 03 06
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora ($05.b,X)		; 01 05
	ora [$01.b]		; 07 01
	cop $02.b		; 02 02
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	tsb $C7.b		; 04 C7
	and $ECC3.w,X		; 3D C3 EC
	rol $0816.w		; 2E 16 08
	sei		; 78
	sec		; 38
	bpl -110.b		; 10 92
	ora ($E1.b)		; 12 E1
	cpx #$06.b		; E0 06
	sbc #$3808.w		; E9 08 38
	ora ($12.b)		; 12 12
	cpx #$80.b		; E0 80
	bra  51.b		; 80 33
	cpy #$33.b		; C0 33
	cpy #$5F.b		; C0 5F
	sta $081010.l,X		; 9F 10 10 08
	php		; 08
	ora $101060.l,X		; 1F 60 10 10
	php		; 08
	php		; 08
	sbc $2CFB3C.l,X		; FF 3C FB 2C
	and ($43.b,S),Y		; 33 43
	rts		; 60

	rts		; 60

	dey		; 88
	bra 114.b		; 80 72
	and ($65.b)		; 32 65
	eor ($18.b,X)		; 41 18
	clc		; 18
	ora $BC.b,S		; 03 BC
	rts		; 60

	bra -128.b		; 80 80
	cop $32.b		; 02 32
	eor ($41.b,X)		; 41 41
	clc		; 18
	sbc $BFFEBF.l,X		; FF BF FE BF
	clc		; 18
	jsr $90AC.w		; 20 AC 90
	stx $88.b,Y		; 96 88
	cmp [$C8.b],Y		; D7 C8
	dex		; CA
	cmp $EA.b		; C5 EA
	sbc $80.b		; E5 80
	stx $DF78.w		; 8E 78 DF
	bra 111.b		; 80 6F
	bra 119.b		; 80 77
	cpy #$37.b		; C0 37
	cpy #$3A.b		; C0 3A
	cpx #$1A.b		; E0 1A
	bra 112.b		; 80 70
	bra -82.b		; 80 AE
	brk $0A.b		; 00 0A
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sbc $AAAAFD.l,X		; FF FD AA AA
	ora ($08.b,S),Y		; 13 08
	and [$10.b]		; 27 10
	eor $102F20.l		; 4F 20 2F 10
	ora [$13.b],Y		; 17 13
	php		; 08
	ora #$0404.w		; 09 04 04
	cop $07.b		; 02 07
	ora $0F0F1F.l		; 0F 1F 0F 0F
	ora [$03.b]		; 07 03
	ora ($B7.b,X)		; 01 B7
	inc $82.b,X		; F6 82
	.db $82, $D7, $20		; 82 D7 20
	php		; 08
	bvs  48.b		; 70 30
	bpl  64.b		; 10 40
	bra  96.b		; 80 60
	rts		; 60

	ora $81.b,S		; 03 81
	cmp $814010.l		; CF 10 40 81
	cmp $DA82FF.l,X		; DF FF 82 DA
	sbc $10.b,S		; E3 10
	bmi  48.b		; 30 30
	ora ($02.b,X)		; 01 02
	and #$0301.w		; 29 01 03
	cop $07.b		; 02 07
	ora $07.b		; 05 07
	rol A		; 2A
	asl $29CF.w		; 0E CF 29
	cop $04.b		; 02 04
	ora ($02.b,X)		; 01 02
	cpx #$FF.b		; E0 FF
	ora $4A.b,S		; 03 4A
	eor $CD.b,X		; 55 CD
	ora ($9F.b)		; 12 9F
	and #$9F7F.w		; 29 7F 9F
	sbc ($73.b,S),Y		; F3 73
	sta ($81.b,X)		; 81 81
	cpx #$C0.b		; E0 C0
	tsb $FF7E.w		; 0C 7E FF
	sbc $0C02FF.l,X		; FF FF 02 0C
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	sbc [$FF.b],Y		; F7 FF
	adc ($FB.b,S),Y		; 73 FB
	ora $030F.w		; 0D 0F 03
	clc		; 18
	bpl   9.b		; 10 09
	php		; 08
	ora ($18.b)		; 12 18
	asl A		; 0A
	asl A		; 0A
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	ora $0F.b,S		; 03 0F
	php		; 08
	bpl   1.b		; 10 01
	php		; 08
	bpl   8.b		; 10 08
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	sbc $D56FFB.l,X		; FF FB 6F D5
	and $FCDC.w,X		; 3D DC FC
	.db $62, $1F, $01		; 62 1F 01
	ora $034C.w		; 0D 4C 03
	cmp $80.b,S		; C3 80
	bpl -32.b		; 10 E0
	eor $A39CC8.l		; 4F C8 9C A3
	jmp.w [$0162]		; DC 62 01
	jmp $80C3.w		; 4C C3 80
	cpy #$88.b		; C0 88
	rti		; 40

	sbc $45EFCF.l,X		; FF CF EF 45
	eor [$87.b]		; 47 87
	ora [$07.b]		; 07 07
	bmi  15.b		; 30 0F
	plx		; FA
	adc ($B0.b),Y		; 71 B0
	cpy #$2F.b		; C0 2F
	jsl $070486.l		; 22 86 04 07
	sei		; 78
	ora [$07.b]		; 07 07
	ora $C07001.l		; 0F 01 70 C0
	jsl $05FF04.l		; 22 04 FF 05
	adc $C7C800.l,X		; 7F 00 C8 C7
	lsr $E6B9.w		; 4E B9 E6
	stz $E060.w,X		; 9E 60 E0
	jmp ($C083.w,X)		; 7C 83 C0
	sec		; 38
	cmp ($B8.b,X)		; C1 B8
	asl $E080.w,X		; 1E 80 E0
	and $00141C.l,X		; 3F 1C 14 00
	bvs  -8.b		; 70 F8
	rti		; 40

	cpy #$20.b		; C0 20
	jsr $0810.w		; 20 10 08
	bra -64.b		; 80 C0
	jsr $02A5.w		; 20 A5 02
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	trb $54.b		; 14 54
	brk $4F.b		; 00 4F
	bcs -74.b		; B0 B6
	lda $C939.w,Y		; B9 39 C9
	rti		; 40

	rti		; 40

	ldy $0603.w,X		; BC 03 06
	and $7340.w,Y		; 39 40 73
	eor [$11.b]		; 47 11
	ora ($D0.b,X)		; 01 D0
	beq -128.b		; F0 80
	bra   1.b		; 80 01
	lsr $40.b		; 46 40
	bmi -128.b		; 30 80
	ora $504080.l		; 0F 80 40 50
	ora ($01.b),Y		; 11 01
	brk $3C.b		; 00 3C
	cpy #$02.b		; C0 02
	ora ($FF.b,X)		; 01 FF
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	bra  -1.b		; 80 FF
	sbc $255550.l,X		; FF 50 55 25
	stp		; DB
	eor $4CF5A0.l,X		; 5F A0 F5 4C
	stx $30.b,Y		; 96 30
	plb		; AB
	.db $62, $A7, $10		; 62 A7 10
	dec $FF71.w		; CE 71 FF
	sta ($03.b),Y		; 91 03
	eor #$6E14.w		; 49 14 6E
	asl $FF2E.w		; 0E 2E FF
	cmp $5555.w,X		; DD 55 55
	sta $BB2B.w,X		; 9D 2B BB
	.db $82, $F7, $04		; 82 F7 04
	sbc $FB01.w,X		; FD 01 FB
	inc $FF02.w,X		; FE 02 FF
	xba		; EB
	tsb $48.b		; 04 48
	stz $F8.b,X		; 74 F8
	inc $F9FC.w,X		; FE FC F9
	xce		; FB
	xce		; FB
	sbc $5D00FF.l,X		; FF FF 00 5D
	dey		; 88
	adc [$10.b],Y		; 77 10
	sbc $E35EA1.l		; EF A1 5E E3
	jmp $BE116F.l		; 5C 6F 11 BE
	asl $9F.b		; 06 9F
	jsr $F818.w		; 20 18 F8
	sta ($46.b,X)		; 81 46
	ora ($40.b,X)		; 01 40
	ora [$FF.b]		; 07 FF
	sbc $C05DFF.l,X		; FF FF 5D C0
	cpy #$01.b		; C0 01
	ora ($31.b,X)		; 01 31
	eor ($08.b),Y		; 51 08
	tya		; 98
	rts		; 60

	pla		; 68
	trb $14.b		; 14 14
	bpl  44.b		; 10 2C
	pla		; 68
	clc		; 18
	cpy #$3F.b		; C0 3F
	ora ($01.b,X)		; 01 01
	eor ($31.b),Y		; 51 31
	tya		; 98
	php		; 08
	pla		; 68
	bit $04.b		; 24 04
	stz $18.b		; 64 18
	cmp $45F7.w,X		; DD F7 45
	eor ($5F.b),Y		; 51 5F
	ldy #$20.b		; A0 20
	ldy #$B0.b		; A0 B0
	adc ($11.b,X)		; 61 11
	bpl  24.b		; 10 18
	ora $09.b,X		; 15 09
	php		; 08
	ror $BF.b,X		; 76 BF
	jsr $1081.w		; 20 81 10
	ora #$DF06.w		; 09 06 DF
	sbc $EF5555.l,X		; FF 55 55 EF
	tsb $DF.b		; 04 DF
	bpl  -1.b		; 10 FF
	lda $C05680.l,X		; BF 80 56 C0
	sbc $1AF9.w		; ED F9 1A
	sbc ($F1.b,S),Y		; F3 F1
	ora [$FB.b]		; 07 FB
	sbc $3F7FFF.l		; EF FF 7F 3F
	asl $0C.b		; 06 0C
	sed		; F8
	eor $4505DF.l,X		; 5F DF 05 45
	stx $B0.b,Y		; 96 B0
	clc		; 18
	bne  32.b		; D0 20
	bcc  96.b		; 90 60
	cpx #$03.b		; E0 03
	ora ($A1.b,X)		; 01 A1
	cop $C2.b		; 02 C2
	eor $01A0D0.l		; 4F D0 A0 01
	cop $FD.b		; 02 FD
	sbc $2255EE.l,X		; FF EE 55 22
	adc $3E68.w,Y		; 79 68 3E
	ora ($51.b,X)		; 01 51
	phd		; 0B
	ldx $D0.b,Y		; B6 D0
	ldx $94D9.w,Y		; BE D9 94
	cmp ($FF.b,S),Y		; D3 FF
	cmp ($DD.b,X)		; C1 DD
	pla		; 68
	stx $C0.b		; 86 C0
	bit $80.b,X		; 34 80
	lda $CEACA6.l		; AF A6 AC CE
	adc $555FF7.l,X		; 7F F7 5F 55
	lda [$12.b],Y		; B7 12
	txs		; 9A
	pla		; 68
	and $6F80.w,X		; 3D 80 6F
	lda $EF7F20.l,X		; BF 20 7F EF
	bpl  -2.b		; 10 FE
	bpl  80.b		; 10 50
	php		; 08
	ora #$7304.w		; 09 04 73
	sta $EFEF4F.l,X		; 9F 4F EF EF
	sbc $7BFFFF.l		; EF FF FF 7B
	eor $54.b,X		; 55 54
	cpy #$8C.b		; C0 8C
	sed		; F8
	sbc $9C.b,X		; F5 9C
	tyx		; BB
	ora $22EF.w		; 0D EF 22
	sbc [$08.b],Y		; F7 08
	lda ($4A.b),Y		; B1 4A
	sbc $03384C.l,X		; FF 4C 38 03
	ora $64.b,S		; 03 64
	cop $C1.b		; 02 C1
	sta ($B0.b)		; 92 B0
	ldy $B0.b,X		; B4 B0
	cmp $55FF.w,X		; DD FF 55
	eor $FE.b,X		; 55 FE
	sbc $FF01.w,X		; FD 01 FF
	sbc ($0C.b),Y		; F1 0C
	adc [$0F.b],Y		; 77 0F
	bmi -121.b		; 30 87
	lda $7046E0.l,X		; BF E0 46 70
	sbc $F3FFFE.l,X		; FF FE FF F3
	beq 120.b		; F0 78
	ora $FF778F.l,X		; 1F 8F 77 FF
	tas		; 1B
	sbc $0804FA.l,X		; FF FA 04 08
	tsb $D80C.w		; 0C 0C D8
	ror A		; 6A
	tya		; 98
	bne  48.b		; D0 30
	ldy $E0.b		; A4 E0
	pha		; 48
	cpy #$F8.b		; C0 F8
	ora ($01.b,X)		; 01 01
	php		; 08
	bcc   2.b		; 90 02
	jsr $C002.w		; 20 02 C0
	tsb $80.b		; 04 80
	tsb $FFFF.w		; 0C FF FF
	sbc $ED85F7.l,X		; FF F7 85 ED
	sbc ($30.b,X)		; E1 30
	bit $2046.w		; 2C 46 20
	rts		; 60

	sbc ($24.b)		; F2 24
	cop $03.b		; 02 03
	ora ($10.b),Y		; 11 10
	iny		; C8
	lda #$12EC.w		; A9 EC 12
	bmi  48.b		; 30 30
	mvp $20,$46		; 44 46 20
	rts		; 60

	jsr $0324.w		; 20 24 03
	bpl  16.b		; 10 10
	cmp #$FFA8.w		; C9 A8 FF
	sbc $815577.l,X		; FF 77 55 81
	cmp ($11.b,S),Y		; D3 11
	sbc $2AFF5E.l,X		; FF 5E FF 2A
	sbc $7BCE84.l,X		; FF 84 CE 7B
	sta $BF.b,X		; 95 BF
	and ($1F.b),Y		; 31 1F
	cpy #$CD.b		; C0 CD
	jsr $94D1.w		; 20 D1 94
	tsb $84.b		; 04 84
	lda $6A.b,X		; B5 6A
	dec $FF3F.w		; CE 3F FF
	sbc $04FFFF.l,X		; FF FF FF 04
	lda $46BB60.l,X		; BF 60 BB 46
	stp		; DB
	cpy $BD.b		; C4 BD
	ora ($BB.b),Y		; 11 BB
	dey		; 88
	ror $9BA2.w		; 6E A2 9B
	bpl 118.b		; 10 76
	lda $44BB40.l,X		; BF 40 BB 44
	txy		; 9B
	bit $99.b		; 24 99
	.db $42, $19		; 42 19
	mvp $11,$8C		; 44 8C 11
	.db $62, $04, $88		; 62 04 88
	ora ($FF.b,X)		; 01 FF
	sbc $3A5557.l,X		; FF 57 55 3A
	cpy $79.b		; C4 79
	ldy #$5F.b		; A0 5F
	bra -53.b		; 80 CB
	cop $EF.b		; 02 EF
	stz $CF.b,X		; 74 CF
	rts		; 60

	xce		; FB
	adc $8D.b,S		; 63 8D
	eor ($C0.b)		; 52 C0
	ora ($86.b,X)		; 01 86
	lda [$35.b]		; A7 35
	ora $1F.b,S		; 03 1F
	trb $FF21.w		; 1C 21 FF
	sbc [$55.b],Y		; F7 55
	eor $9D.b,X		; 55 9D
	lsr A		; 4A
	adc $30FB0C.l,X		; 7F 0C FB 30
	cmp ($1C.b),Y		; D1 1C
	pea $FF07.w		; F4 07 FF
	inc $F718.w,X		; FE 18 F7
	php		; 08
	jsl $E2C4E0.l		; 22 E0 C4 E2
	sed		; F8
	sbc $FFF0E7.l,X		; FF E7 F0 FF
	sbc $885455.l,X		; FF 55 54 88
	adc [$CC.b],Y		; 77 CC
	lda ($64.b,S),Y		; B3 64
	tad		; 5B
	jmp $E07F43.l		; 5C 43 7F E0
	sbc [$10.b]		; E7 10
	lda $90FB88.l,X		; BF 88 FB 90
	adc [$33.b],Y		; 77 33
	txy		; 9B
	lda $EC.b,S		; A3 EC
	stz $6C.b		; 64 6C
	inc $7ED5.w,X		; FE D5 7E
	eor ($97.b,X)		; 41 97
	ora $DB.b		; 05 DB
	tsb $77.b		; 04 77
	tsb $37.b		; 04 37
	ora $05.b,S		; 03 05
	cop $02.b		; 02 02
	cop $68.b		; 02 68
	ora $58.b,S		; 03 58
	ora [$30.b]		; 07 30
	asl $01.b		; 06 01
	cop $77.b		; 02 77
	adc [$55.b],Y		; 77 55
	eor $BF.b,X		; 55 BF
	bra  -1.b		; 80 FF
	eor $B7DF71.l,X		; 5F 71 DF B7
	bra  -9.b		; 80 F7
	xce		; FB
	php		; 08
	sbc $8EFF7F.l,X		; FF 7F FF 8E
	and $F7FF7F.l,X		; 3F 7F FF F7
	sbc $55F7F7.l,X		; FF F7 F7 55
	eor $A2.b,X		; 55 A2
	and $D953F9.l,X		; 3F F9 53 D9
	adc [$01.b],Y		; 77 01
	lda $FCFC21.l		; AF 21 FC FC
	ora $FA.b,S		; 03 FA
	ora $C0.b,S		; 03 C0
	sbc $DE8E26.l,X		; FF 26 8E DE
	sbc $77FFFC.l,X		; FF FC FF 77
	sbc [$55.b],Y		; F7 55
	eor $9B.b,X		; 55 9B
	cli		; 58
	cmp $FF20FF.l,X		; DF FF 20 FF
	cmp $FBF720.l		; CF 20 F7 FB
	php		; 08
	sbc $2704.w,X		; FD 04 27
	and $1F1F1F.l,X		; 3F 1F 1F 1F
	ora $D70307.l		; 0F 07 03 D7
	sbc $55.b,X		; F5 55
	adc $03FB.w,X		; 7D FB 03
	sbc $80BF7F.l,X		; FF 7F BF 80
	sbc $10F6D7.l,X		; FF D7 F6 10
	bit $FC61.w		; 2C 61 FC
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $E00F10.l		; EF 10 0F E0
	stz $FDD5.w,X		; 9E D5 FD
	sbc $4F.b,X		; F5 4F
	adc $BBCFFF.l		; 6F FF CF BB
	bpl -105.b		; 10 97
	ora [$40.b],Y		; 17 40
	and $403FC0.l,X		; 3F C0 3F 40
	sed		; F8
	sed		; F8
	cpx #$10.b		; E0 10
	bcc 124.b		; 90 7C
	cpy #$38.b		; C0 38
	bra  40.b		; 80 28
	bra -11.b		; 80 F5
	sbc $FF7F51.l,X		; FF 51 7F FF
	bra -58.b		; 80 C6
	sty $4EE6.w		; 8C E6 4E
	adc ($A2.b),Y		; 71 A2
	ldy $DB.b		; A4 DB
	pld		; 2B
	trb $05.b		; 14 05
	ora $FF.b,S		; 03 FF
	sty $224E.w		; 8C 4E 22
	bra -101.b		; 80 9B
	cpy #$04.b		; C0 04
	bpl   3.b		; 10 03
	sty $55.b,X		; 94 55
	lda #$65AA.w		; A9 AA 65
	lda #$5AA9.w		; A9 A9 5A
	ror $6A.b		; 66 6A
	phy		; 5A
	ror A		; 6A
	phy		; 5A
	lda $76.b		; A5 76
	lda $AA.b,X		; B5 AA
	tax		; AA
	ldx $EAAA.w		; AE AA EA
	tsx		; BA
	stx $BA.b,Y		; 96 BA
	tax		; AA
	lda $A5.b		; A5 A5
	tax		; AA
	stx $AA.b,Y		; 96 AA
	tax		; AA
	txs		; 9A
	tax		; AA
	lsr $56.b,X		; 56 56
	sta $AA5A.w,Y		; 99 5A AA
	stx $96.b,Y		; 96 96
	phy		; 5A
	lda #$A9A9.w		; A9 A9 A9
	adc #$EAA5.w		; 69 A5 EA
	xba		; EB
	ror A		; 6A
	ldx $9A.b		; A6 9A
	lda $A9.b,X		; B5 A9
	lda #$A6AB.w		; A9 AB A6
	tax		; AA
	ror A		; 6A
	eor $AAA5.w,Y		; 59 A5 AA
	lda $A9.b		; A5 A9
	lsr $9A.b,X		; 56 9A
	tax		; AA
	ldx $5A.b		; A6 5A
	adc #$6956.w		; 69 56 69
	eor $56.b,X		; 55 56
	and $00.b		; 25 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b),Y		; 11 40
	brk $13.b		; 00 13
	cop $00.b		; 02 00
	jsr $0017.w		; 20 17 00
	bpl   1.b		; 10 01
	bpl   3.b		; 10 03
	cop $02.b		; 02 02
	brk $22.b		; 00 22
	brk $14.b		; 00 14
	trb $14.b		; 14 14
	brk $60.b		; 00 60
	eor [$01.b],Y		; 57 01
	bpl   3.b		; 10 03
	tsb $10.b		; 04 10
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	cop $00.b		; 02 00
	jsl $141400.l		; 22 00 14 14
	clc		; 18
	cop $70.b		; 02 70
	eor [$05.b],Y		; 57 05
	php		; 08
	php		; 08
	clc		; 18
	ora ($0A.b,X)		; 01 0A
	bpl   1.b		; 10 01
	ora [$01.b]		; 07 01
	ora $0E.b,S		; 03 0E
	cop $55.b		; 02 55
	adc ($15.b)		; 72 15
	trb $85.b		; 14 85
	ora $01.b,S		; 03 01
	ora $188914.l		; 0F 14 89 18
	ora $01.b,S		; 03 01
	ora [$8C.b]		; 07 8C
	eor ($75.b)		; 52 75
	eor [$05.b],Y		; 57 05
	php		; 08
	ora $03011F.l		; 0F 1F 01 03
	ora ($18.b,X)		; 01 18
	ora [$15.b]		; 07 15
	bpl   3.b		; 10 03
	ora ($0F.b,X)		; 01 0F
	ora ($19.b,X)		; 01 19
	.db $42, $55		; 42 55
	adc ($55.b)		; 72 55
	trb $8D.b		; 14 8D
	ora $01.b,S		; 03 01
	ora $921401.l,X		; 1F 01 14 92
	clc		; 18
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	stx $56.b,Y		; 96 56
	adc $57.b,X		; 75 57
	ora $08.b		; 05 08
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($18.b,X)		; 01 18
	and $031021.l,X		; 3F 21 10 03
	ora ($07.b,X)		; 01 07
	ora ($25.b,X)		; 01 25
	.db $42, $55		; 42 55
	adc ($55.b)		; 72 55
	trb $97.b		; 14 97
	ora $010301.l		; 0F 01 03 01
	trb $9C.b		; 14 9C
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	ldy #$56.b		; A0 56
	adc $57.b,X		; 75 57
	ora ($08.b,X)		; 01 08
	rol $01.b		; 26 01
	ora $010301.l		; 0F 01 03 01
	clc		; 18
	ora [$2D.b]		; 07 2D
	bpl   3.b		; 10 03
	ora ($1F.b,X)		; 01 1F
	bmi   2.b		; 30 02
	eor $77.b,X		; 55 77
	eor $14.b,X		; 55 14
	lda ($03.b,X)		; A1 03
	ora ($07.b,X)		; 01 07
	sty $14.b		; 84 14
	sty $A5.b		; 84 A5
	clc		; 18
	ora $01.b,S		; 03 01
	ora $56A901.l		; 0F 01 A9 56
	adc $57.b		; 65 57
	ora ($08.b,X)		; 01 08
	and ($03.b),Y		; 31 03
	ora ($07.b,X)		; 01 07
	bit $18.b,X		; 34 18
	and $36.b,X		; 35 36
	bpl   1.b		; 10 01
	ora $023901.l		; 0F 01 39 02
	eor $67.b,X		; 55 67
	eor $14.b,X		; 55 14
	tax		; AA
	ora ($07.b,X)		; 01 07
	ora ($AE.b,X)		; 01 AE
	trb $AE.b		; 14 AE
	clc		; 18
	lda $03011F.l		; AF 1F 01 03
	lda ($56.b)		; B2 56
	and $57.b		; 25 57
	ora ($08.b,X)		; 01 08
	dec A		; 3A
	ora ($07.b,X)		; 01 07
	ora ($3D.b,X)		; 01 3D
	clc		; 18
	rol $0110.w,X		; 3E 10 01
	adc $024101.l,X		; 7F 01 41 02
	eor $77.b,X		; 55 77
	eor $14.b,X		; 55 14
	lda ($07.b,S),Y		; B3 07
	ora ($03.b,X)		; 01 03
	lda [$14.b],Y		; B7 14
	lda [$B8.b],Y		; B7 B8
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($56.b,X)		; 01 56
	and $57.b,X		; 35 57
	ora ($08.b,X)		; 01 08
	.db $42, $01		; 42 01
	ora [$01.b]		; 07 01
	ora $46.b,S		; 03 46
	clc		; 18
	eor [$10.b]		; 47 10
	ora $4A0301.l		; 0F 01 03 4A
	.db $42, $55		; 42 55
	adc [$55.b],Y		; 77 55
	trb $BE.b		; 14 BE
	ora ($7F.b,X)		; 01 7F
	ora ($03.b,X)		; 01 03
	cmp $14.b,S		; C3 14
	lsr $41.b		; 46 41
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($56.b,X)		; 01 56
	adc $57.b,X		; 75 57
	ora ($08.b,X)		; 01 08
	phk		; 4B
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	eor $515018.l		; 4F 18 50 51
	bpl   3.b		; 10 03
	ora ($07.b,X)		; 01 07
	mvn $55,$42		; 54 42 55
	adc [$55.b],Y		; 77 55
	trb $CA.b		; 14 CA
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	cmp $011F14.l		; CF 14 1F 01
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $56.b,S		; 03 56
	adc $57.b,X		; 75 57
	ora $08.b		; 05 08
	eor $03.b,X		; 55 03
	ora ($0F.b,X)		; 01 0F
	ora ($59.b,X)		; 01 59
	clc		; 18
	phy		; 5A
	tad		; 5B
	bpl   7.b		; 10 07
	ora ($03.b,X)		; 01 03
	ora ($5F.b,X)		; 01 5F
	cop $55.b		; 02 55
	adc [$55.b],Y		; 77 55
	trb $D7.b		; 14 D7
	ora $DB0301.l		; 0F 01 03 DB
	trb $07.b		; 14 07
	ora ($18.b,X)		; 01 18
	ora $01.b,S		; 03 01
	and $560301.l,X		; 3F 01 03 56
	adc $57.b		; 65 57
	ora $08.b		; 05 08
	rts		; 60

	ora ($03.b,X)		; 01 03
	ora ($63.b,X)		; 01 63
	clc		; 18
	stz $65.b		; 64 65
	bpl   3.b		; 10 03
	ora ($0F.b,X)		; 01 0F
	ora ($69.b,X)		; 01 69
	cop $55.b		; 02 55
	adc [$55.b],Y		; 77 55
	trb $E3.b		; 14 E3
	ora [$01.b]		; 07 01
	ora $E7.b,S		; 03 E7
	trb $E7.b		; 14 E7
	inx		; E8
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($56.b,X)		; 01 56
	and $57.b,X		; 35 57
	ora $016A08.l		; 0F 08 6A 01
	ora [$01.b]		; 07 01
	ora $6E.b,S		; 03 6E
	clc		; 18
	adc $011F10.l		; 6F 10 1F 01
	ora $70.b,S		; 03 70
	bra   2.b		; 80 02
	bra  66.b		; 80 42
	eor $77.b,X		; 55 77
	eor $14.b,X		; 55 14
	inc $1F01.w		; EE 01 1F
	ora ($03.b,X)		; 01 03
	sbc ($14.b,S),Y		; F3 14
	sbc ($F4.b,S),Y		; F3 F4
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	sed		; F8
	lsr $35.b,X		; 56 35
	eor [$01.b],Y		; 57 01
	php		; 08
	adc ($07.b,S),Y		; 73 07
	ora ($03.b,X)		; 01 03
	ora ($77.b,X)		; 01 77
	clc		; 18
	sei		; 78
	bpl   1.b		; 10 01
	ora $01.b,S		; 03 01
	tda		; 7B
	.db $42, $55		; 42 55
	sbc [$D5.b],Y		; F7 D5
	trb $F9.b		; 14 F9
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	inc $FE14.w,X		; FE 14 FE
	sbc $01FF18.l,X		; FF 18 FF 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($56.b,X)		; 01 56
	and $0557.w,X		; 3D 57 05
	php		; 08
	jmp ($0301.w,X)		; 7C 01 03
	ora ($7D.b,X)		; 01 7D
	bra   2.b		; 80 02
	tya		; 98
	bra  16.b		; 80 10
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	sty $C2.b		; 84 C2
	eor $72.b,X		; 55 72
	cmp $14.b,X		; D5 14
	tsb $01.b		; 04 01
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	trb $09.b		; 14 09
	ora $0103.w,Y		; 19 03 01
	ora [$01.b]		; 07 01
	ora $0001.w		; 0D 01 00
	brk $AA.b		; 00 AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	rti		; 40

	brk $BD.b		; 00 BD
	cop $57.b		; 02 57
	ora $03.b,X		; 15 03
	brk $18.b		; 00 18
	inc A		; 1A
	ora $03.b		; 05 03
	ora ($3F.b,X)		; 01 3F
	ora ($28.b,X)		; 01 28
	ora #$031A.w		; 09 1A 03
	brk $73.b		; 00 73
	eor $09.b,X		; 55 09
	inc A		; 1A
	ora #$281A.w		; 09 1A 28
	rti		; 40

	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	ora $57.b		; 05 57
	eor $03.b,X		; 55 03
	brk $22.b		; 00 22
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($09.b,X)		; 01 09
	inc A		; 1A
	ora $00.b,S		; 03 00
	eor [$55.b],Y		; 57 55
	ora #$291A.w		; 09 1A 29
	phy		; 5A
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	brk $2A.b		; 00 2A
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($1F.b,X)		; 01 1F
	ora ($32.b,X)		; 01 32
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	and $5C03.w,X		; 3D 03 5C
	eor [$55.b],Y		; 57 55
	ora #$3D1A.w		; 09 1A 3D
	rti		; 40

	ora [$01.b]		; 07 01
	and ($5A.b),Y		; 31 5A
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($F7.b,X)		; 01 F7
	ora $57.b,X		; 15 57
	ora ($35.b,X)		; 01 35
	inc A		; 1A
	ora $27.b,S		; 03 27
	bra  38.b		; 80 26
	bra  15.b		; 80 0F
	ora ($30.b,X)		; 01 30
	ora #$331A.w		; 09 1A 33
	ora ($07.b,X)		; 01 07
	and $03.b,X		; 35 03
	cmp [$73.b],Y		; D7 73
	adc $1A09.w,X		; 7D 09 1A
	and $40.b,X		; 35 40
	ora [$01.b]		; 07 01
	and ($40.b,S),Y		; 33 40
	ora #$301A.w		; 09 1A 30
	rti		; 40

	ora ($0F.b,X)		; 01 0F
	rol $80.b		; 26 80
	and [$80.b]		; 27 80
	ora $57.b,S		; 03 57
	eor $17.b,X		; 55 17
	brk $3D.b		; 00 3D
	inc A		; 1A
	ora $01.b,S		; 03 01
	adc $010301.l,X		; 7F 01 03 01
	ora [$45.b]		; 07 45
	inc A		; 1A
	ora $4F.b,S		; 03 4F
	ora $70.b,S		; 03 70
	eor [$55.b],Y		; 57 55
	ora #$4F1A.w		; 09 1A 4F
	rti		; 40

	ora $44.b,S		; 03 44
	phy		; 5A
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	adc $570301.l,X		; 7F 01 03 57
	eor $57.b,X		; 55 57
	ora ($47.b,X)		; 01 47
	inc A		; 1A
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $4F.b,S		; 03 4F
	inc A		; 1A
	ora $5B0301.l,X		; 1F 01 03 5B
	ora $57.b,S		; 03 57
	eor [$55.b],Y		; 57 55
	ora #$5B1A.w		; 09 1A 5B
	rti		; 40

	ora $01.b,S		; 03 01
	ora $035A4E.l,X		; 1F 4E 5A 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	eor [$55.b],Y		; 57 55
	ora [$00.b]		; 07 00
	eor ($1A.b,S),Y		; 53 1A
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $5B0301.l		; 0F 01 03 5B
	inc A		; 1A
	eor ($03.b)		; 52 03
	cpy #$57.b		; C0 57
	eor $09.b,X		; 55 09
	inc A		; 1A
	eor ($40.b)		; 52 40
	phy		; 5A
	phy		; 5A
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	ora $5C.b		; 05 5C
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	ora ($64.b,X)		; 01 64
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	adc ($C3.b,X)		; 61 C3
	eor $57.b,X		; 55 57
	sbc $09.b,X		; F5 09
	inc A		; 1A
	adc ($40.b,X)		; 61 40
	ora $010301.l		; 0F 01 03 01
	adc $5A.b,S		; 63 5A
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	rti		; 40

	ora ($40.b,X)		; 01 40
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc #$031A.w		; 69 1A 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($1F.b,X)		; 01 1F
	adc ($1A.b),Y		; 71 1A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ror $555F.w,X		; 7E 5F 55
	eor [$55.b],Y		; 57 55
	ora #$7E1A.w		; 09 1A 7E
	rti		; 40

	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	bvs  90.b		; 70 5A
	ora $010301.l,X		; 1F 01 03 01
	ora [$01.b]		; 07 01
	ora $57.b,S		; 03 57
	cmp $57.b,X		; D5 57
	ora $78.b,S		; 03 78
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ply		; 7A
	bra   5.b		; 80 05
	txs		; 9A
	ora $01.b,S		; 03 01
	ora $038001.l		; 0F 01 80 03
	eor [$5F.b],Y		; 57 5F
	eor $09.b,X		; 55 09
	inc A		; 1A
	ora ($C0.b,X)		; 01 C0
	ora $040301.l		; 0F 01 03 04
	phx		; DA
	ply		; 7A
	bra   3.b		; 80 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $D7.b,X		; 55 D7
	and [$7F.b],Y		; 37 7F
	inc A		; 1A
	sbc $DF0301.l,X		; FF 01 03 DF
	dec $0107.w,X		; DE 07 01
	asl A		; 0A
	txs		; 9A
	ora ($07.b,X)		; 01 07
	txa		; 8A
	bra -120.b		; 80 88
	bra   1.b		; 80 01
	asl $80.b		; 06 80
	adc ($5F.b,S),Y		; 73 5F
	cmp [$57.b],Y		; D7 57
	ora #$061A.w		; 09 1A 06
	cpy #$01.b		; C0 01
	dey		; 88
	bra -118.b		; 80 8A
	bra   7.b		; 80 07
	ora ($85.b,X)		; 01 85
	phy		; 5A
	ora ($07.b,X)		; 01 07
	dec $DF40.w,X		; DE 40 DF
	rti		; 40

	ora $01.b,S		; 03 01
	sbc $575557.l,X		; FF 57 55 57
	eor $87.b,X		; 55 87
	inc A		; 1A
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	txs		; 9A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $08.b,X		; 55 08
	phx		; DA
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $8E.b,S		; 03 8E
	phy		; 5A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $F75557.l		; 0F 57 55 F7
	eor $1A8F.w,X		; 5D 8F 1A
	ora $010301.l,X		; 1F 01 03 01
	ora [$01.b]		; 07 01
	ora $96.b		; 05 96
	inc A		; 1A
	ora ($9C.b,X)		; 01 9C
	bra -109.b		; 80 93
	bra   1.b		; 80 01
	sta ($80.b,S),Y		; 93 80
	ora ($01.b,X)		; 01 01
	cmp [$7D.b],Y		; D7 7D
	eor [$55.b],Y		; 57 55
	asl A		; 0A
	phx		; DA
	ora ($01.b,X)		; 01 01
	sta ($80.b,S),Y		; 93 80
	ora ($93.b,X)		; 01 93
	bra -100.b		; 80 9C
	bra   1.b		; 80 01
	bcc  90.b		; 90 5A
	ora $01.b		; 05 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l,X		; 1F 57 55 57
	eor $9A.b,X		; 55 9A
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	cmp ($C0.b,X)		; C1 C0
	ora $01.b,S		; 03 01
	tsb $9C.b		; 04 9C
	inc A		; 1A
	bit $0301.w,X		; 3C 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$5F.b],Y		; 57 5F
	ldx $5A.b		; A6 5A
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	bit $5A9B.w,X		; 3C 9B 5A
	tsb $01.b		; 04 01
	ora $C0.b,S		; 03 C0
	rti		; 40

	cmp ($40.b,X)		; C1 40
	ora [$01.b]		; 07 01
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	lda [$1A.b]		; A7 1A
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $A9.b		; 05 A9
	inc A		; 1A
	ora $04.b,S		; 03 04
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	eor $B3.b,X		; 55 B3
	phy		; 5A
	ora ($03.b,X)		; 01 03
	ora ($1F.b,X)		; 01 1F
	ora ($04.b,X)		; 01 04
	ora $A8.b,S		; 03 A8
	phy		; 5A
	ora $01.b		; 05 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	ora $B4.b,X		; 15 B4
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora $0D1AB6.l		; 0F B6 1A 0D
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
.ACCU 8
.INDEX 8
	sep #$73		; E2 73
	eor $57.b,X		; 55 57
	eor $5D.b,X		; 55 5D
	inc A		; 1A
	sep #$40		; E2 40
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $5AB5.w		; 0D B5 5A
	ora $0F0103.l		; 0F 03 01 0F
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	ora $C0.b,X		; 15 C0
	inc A		; 1A
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora [$C2.b]		; 07 C2
	inc A		; 1A
	ora ($04.b,X)		; 01 04
	ora $970301.l		; 0F 01 03 97
	adc ($55.b,S),Y		; 73 55
	eor [$55.b],Y		; 57 55
	eor $971A.w,X		; 5D 1A 97
	rti		; 40

	ora $01.b,S		; 03 01
	ora $C10104.l		; 0F 04 01 C1
	phy		; 5A
	ora [$03.b]		; 07 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	rti		; 40

	brk $1E.b		; 00 1E
	cop $00.b		; 02 00
	jsr $0017.w		; 20 17 00
	bpl   1.b		; 10 01
	bpl   3.b		; 10 03
	cop $00.b		; 02 00
	rts		; 60

	eor [$01.b],Y		; 57 01
	bpl   3.b		; 10 03
	tsb $10.b		; 04 10
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	jsr $0C00.w		; 20 00 0C
	cop $70.b		; 02 70
	eor [$05.b],Y		; 57 05
	php		; 08
	php		; 08
	clc		; 18
	ora ($0A.b,X)		; 01 0A
	bpl   1.b		; 10 01
	ora [$01.b]		; 07 01
	ora $0E.b,S		; 03 0E
	cop $55.b		; 02 55
	adc ($15.b)		; 72 15
	trb $85.b		; 14 85
	ora $01.b,S		; 03 01
	ora $188914.l		; 0F 14 89 18
	ora $01.b,S		; 03 01
	ora [$8C.b]		; 07 8C
	eor ($75.b)		; 52 75
	eor $0F0807.l,X		; 5F 07 08 0F
	ora $010301.l,X		; 1F 01 03 01
	clc		; 18
	ora [$15.b]		; 07 15
	bpl  27.b		; 10 1B
	ora ($01.b,X)		; 01 01
	ora $190109.l,X		; 1F 09 01 19
	.db $42, $55		; 42 55
	adc ($55.b)		; 72 55
	trb $8D.b		; 14 8D
	ora $01.b,S		; 03 01
	ora $921401.l,X		; 1F 01 14 92
	clc		; 18
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	stx $56.b,Y		; 96 56
	adc $08075F.l,X		; 7F 5F 07 08
	inc A		; 1A
	ora ($07.b,X)		; 01 07
	ora $0F01.w		; 0D 01 0F
	ora ($01.b,X)		; 01 01
	clc		; 18
	and $331021.l,X		; 3F 21 10 33
	ora ($01.b,X)		; 01 01
	ora [$31.b]		; 07 31
	ora ($25.b,X)		; 01 25
	.db $42, $D7		; 42 D7
	sbc ($75.b)		; F2 75
	trb $97.b		; 14 97
	sta $0101.w		; 8D 01 01
	ora [$87.b]		; 07 87
	ora ($14.b,X)		; 01 14
	stz $8118.w		; 9C 18 81
	ora ($03.b,X)		; 01 03
	ora ($BF.b,X)		; 01 BF
	ora ($A0.b,X)		; 01 A0
	ror $7D.b,X		; 76 7D
	eor [$01.b],Y		; 57 01
	php		; 08
	rol $33.b		; 26 33
	ora ($03.b,X)		; 01 03
	ora ($3D.b,X)		; 01 3D
	ora ($01.b,X)		; 01 01
	clc		; 18
	ora [$2D.b]		; 07 2D
	bpl   3.b		; 10 03
	ora ($1F.b,X)		; 01 1F
	bmi   2.b		; 30 02
	cmp [$F7.b],Y		; D7 F7
	adc $14.b,X		; 75 14
	jsr $0101.w		; 20 01 01
	ora $86.b,S		; 03 86
	ora ($84.b,X)		; 01 84
	trb $84.b		; 14 84
	lda $18.b		; A5 18
	stx $01.b		; 86 01
	ora [$01.b]		; 07 01
	sty $A901.w		; 8C 01 A9
	dec $6D.b,X		; D6 6D
	eor [$01.b],Y		; 57 01
	php		; 08
	and ($03.b),Y		; 31 03
	rol A		; 2A
	ora ($01.b,X)		; 01 01
	ora $1801.w,Y		; 19 01 18
	and $36.b,X		; 35 36
	bpl   1.b		; 10 01
	ora $023901.l		; 0F 01 39 02
	adc $5567.w,X		; 7D 67 55
	trb $AA.b		; 14 AA
	sty $8A01.w		; 8C 01 8A
	ora ($01.b,X)		; 01 01
	ldx $AE14.w		; AE 14 AE
	clc		; 18
	lda $03011F.l		; AF 1F 01 03
	lda ($56.b)		; B2 56
	and $57.b		; 25 57
	ora ($08.b,X)		; 01 08
	dec A		; 3A
	ora ($07.b,X)		; 01 07
	ora ($3D.b,X)		; 01 3D
	clc		; 18
	rol $0110.w,X		; 3E 10 01
	adc $024101.l,X		; 7F 01 41 02
	eor $77.b,X		; 55 77
	eor $14.b,X		; 55 14
	lda ($07.b,S),Y		; B3 07
	ora ($03.b,X)		; 01 03
	lda [$14.b],Y		; B7 14
	lda [$B8.b],Y		; B7 B8
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($56.b,X)		; 01 56
	and $57.b,X		; 35 57
	ora ($08.b,X)		; 01 08
	.db $42, $01		; 42 01
	ora [$01.b]		; 07 01
	ora $46.b,S		; 03 46
	clc		; 18
	eor [$10.b]		; 47 10
	ora $4A0301.l		; 0F 01 03 4A
	.db $42, $55		; 42 55
	adc [$55.b],Y		; 77 55
	trb $BE.b		; 14 BE
	ora ($7F.b,X)		; 01 7F
	ora ($03.b,X)		; 01 03
	cmp $14.b,S		; C3 14
	lsr $41.b		; 46 41
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($56.b,X)		; 01 56
	adc $57.b,X		; 75 57
	ora ($08.b,X)		; 01 08
	phk		; 4B
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	eor $515018.l		; 4F 18 50 51
	bpl   3.b		; 10 03
	ora ($07.b,X)		; 01 07
	mvn $55,$42		; 54 42 55
	adc [$55.b],Y		; 77 55
	trb $CA.b		; 14 CA
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	cmp $011F14.l		; CF 14 1F 01
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $56.b,S		; 03 56
	adc $57.b,X		; 75 57
	ora $08.b		; 05 08
	eor $03.b,X		; 55 03
	ora ($0F.b,X)		; 01 0F
	ora ($59.b,X)		; 01 59
	clc		; 18
	phy		; 5A
	tad		; 5B
	bpl   7.b		; 10 07
	ora ($03.b,X)		; 01 03
	ora ($5F.b,X)		; 01 5F
	cop $55.b		; 02 55
	adc [$55.b],Y		; 77 55
	trb $D7.b		; 14 D7
	ora $DB0301.l		; 0F 01 03 DB
	trb $07.b		; 14 07
	ora ($18.b,X)		; 01 18
	ora $01.b,S		; 03 01
	and $560301.l,X		; 3F 01 03 56
	adc $57.b		; 65 57
	ora $08.b		; 05 08
	rts		; 60

	ora ($03.b,X)		; 01 03
	ora ($63.b,X)		; 01 63
	clc		; 18
	stz $65.b		; 64 65
	bpl   3.b		; 10 03
	ora ($0F.b,X)		; 01 0F
	ora ($69.b,X)		; 01 69
	cop $55.b		; 02 55
	adc [$55.b],Y		; 77 55
	trb $E3.b		; 14 E3
	ora [$01.b]		; 07 01
	ora $E7.b,S		; 03 E7
	trb $E7.b		; 14 E7
	inx		; E8
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($56.b,X)		; 01 56
	and $57.b,X		; 35 57
	ora $016A08.l		; 0F 08 6A 01
	ora [$01.b]		; 07 01
	ora $6E.b,S		; 03 6E
	clc		; 18
	adc $011F10.l		; 6F 10 1F 01
	ora $70.b,S		; 03 70
	bra   2.b		; 80 02
	bra  66.b		; 80 42
	eor $77.b,X		; 55 77
	eor $14.b,X		; 55 14
	inc $1F01.w		; EE 01 1F
	ora ($03.b,X)		; 01 03
	sbc ($14.b,S),Y		; F3 14
	sbc ($F4.b,S),Y		; F3 F4
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	sed		; F8
	lsr $35.b,X		; 56 35
	eor [$01.b],Y		; 57 01
	php		; 08
	adc ($07.b,S),Y		; 73 07
	ora ($03.b,X)		; 01 03
	ora ($77.b,X)		; 01 77
	clc		; 18
	sei		; 78
	bpl   1.b		; 10 01
	ora $01.b,S		; 03 01
	tda		; 7B
	.db $42, $55		; 42 55
	sbc [$D5.b],Y		; F7 D5
	trb $F9.b		; 14 F9
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	inc $FE14.w,X		; FE 14 FE
	sbc $01FF18.l,X		; FF 18 FF 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($56.b,X)		; 01 56
	and $0557.w,X		; 3D 57 05
	php		; 08
	jmp ($0301.w,X)		; 7C 01 03
	ora ($7D.b,X)		; 01 7D
	bra   2.b		; 80 02
	tya		; 98
	bra  16.b		; 80 10
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	sty $C2.b		; 84 C2
	eor $72.b,X		; 55 72
	cmp $14.b,X		; D5 14
	tsb $01.b		; 04 01
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	trb $09.b		; 14 09
	ora $0103.w,Y		; 19 03 01
	ora [$01.b]		; 07 01
	ora $0001.w		; 0D 01 00
	brk $A2.b		; 00 A2
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	ora $12.b,S		; 03 12
	sbc $00027F.l,X		; FF 7F 02 00
	adc $BC.b,S		; 63 BC
	lda $85.b,X		; B5 85
	.db $42, $42		; 42 42
	ldy $4C84.w,X		; BC 84 4C
	jsr $064A.w		; 20 4A 06
	sbc $18E1.w,Y		; F9 E1 18
	sbc $02FFFE.l,X		; FF FE FF 02
	brk $FF.b		; 00 FF
	eor $01.b,X		; 55 01
	and $043401.l,X		; 3F 01 34 04
	sbc ($2A.b),Y		; F1 2A
	pea $F875.w		; F4 75 F8
	cld		; D8
	jsr ($FF9C.w,X)		; FC 9C FF
	sbc $0002FF.l,X		; FF FF 02 00
	phb		; 8B
	jmp ($8484.w,X)		; 7C 84 84
	bit $0C.b		; 24 0C
	adc ($13.b,S),Y		; 73 13
	cmp $6F18.w,Y		; D9 18 6F
	bra -76.b		; 80 B4
	.db $82, $F4, $AC		; 82 F4 AC
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $F0.b		; 00 F0
	ora $F15052.l		; 0F 52 50 F1
	beq  94.b		; F0 5E
	mvn $07,$A6		; 54 A6 07
	cmp ($19.b),Y		; D1 19
	bit $04.b		; 24 04
	inc $16.b,X		; F6 16
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $C0.b		; 00 C0
	sbc $C30757.l,X		; FF 57 07 C3
	eor $AC.b,S		; 43 AC
	sty $5060.w		; 8C 60 50
	cmp $CBD8.w,Y		; D9 D8 CB
	cpy #$A7.b		; C0 A7
	bra  -1.b		; 80 FF
	sbc $A002FF.l,X		; FF FF 02 A0
	eor #$B6.b		; 49 B6
	adc ($72.b)		; 72 72
	and #$2B.b		; 29 2B
	ldy $10.b,X		; B4 10
	ora $01.b,S		; 03 01
	dec $EF60.w,X		; DE 60 EF
	sbc ($4A.b),Y		; F1 4A
	.db $42, $FF		; 42 FF
	rts		; 60

	rti		; 40

	sbc $22A233.l,X		; FF 33 A2 22
	asl $FF.b,X		; 16 FF
	adc $DD09.w,X		; 7D 09 DD
	lda $C07676.l,X		; BF 76 76 C0
	cpy #$80.b		; C0 80
	bra  -1.b		; 80 FF
	ora #$36.b		; 09 36
	cpy #$80.b		; C0 80
	and $002A00.l,X		; 3F 00 2A 00
	cpy $FC33.w		; CC 33 FC
	jsr ($3030.w,X)		; FC 30 30
	jsr ($30CC.w,X)		; FC CC 30
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $92.b		; 00 92
	adc $ECEC.w		; 6D EC EC
	eor #$49.b		; 49 49
	ora $522D.w		; 0D 2D 52
	ora ($C6.b)		; 12 C6
	rol $50D8.w		; 2E D8 50
	asl A		; 0A
	asl A		; 0A
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $CE.b		; 00 CE
	sbc ($AB.b),Y		; F1 AB
	rtl		; 6B

	rtl		; 6B

	rtl		; 6B

	stz $04.b		; 64 04
	tyx		; BB
	inc A		; 1A
	sty $04.b		; 84 04
	sbc $9A18.w,Y		; F9 18 9A
	asl A		; 0A
	sbc $027FFF.l,X		; FF FF 7F 02
	brk $78.b		; 00 78
	sta [$1C.b]		; 87 1C
	trb $2637.w		; 1C 37 26
	cmp #$C8.b		; C9 C8
	lda $1DBF8F.l,X		; BF 8F BF 1D
	cmp #$18.b		; C9 18
	and $FF.b,X		; 35 FF
	sbc $0002FF.l,X		; FF FF 02 00
	phy		; 5A
	sbc [$EF.b],Y		; F7 EF
	bit $5858.w,X		; 3C 58 58
	ora [$96.b],Y		; 17 96
	ora $85.b		; 05 85
	trb $EE1C.w		; 1C 1C EE
	.db $62, $10, $08		; 62 10 08
	sbc $023FFF.l,X		; FF FF 3F 02
	rol A		; 2A
	ror $FD.b,X		; 76 FD
	and $F801.w,X		; 3D 01 F8
	jsr $42DE.w		; 20 DE 42
	pea $9FF8.w		; F4 F8 9F
	sta $FF0606.l,X		; 9F 06 06 FF
	rts		; 60

	sta $3F06.w,Y		; 99 06 3F
	brk $2A.b		; 00 2A
	brk $4B.b		; 00 4B
	ldy $8B.b,X		; B4 8B
	phb		; 8B
	cpy #$C0.b		; C0 C0
	cmp $CFC00F.l		; CF 0F C0 CF
	sbc $FC0002.l,X		; FF 02 00 FC
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	ora $FF.b		; 05 FF
	sbc $0002FF.l,X		; FF FF 02 00
	phy		; 5A
	sbc $12.b,X		; F5 12
	cop $F0.b		; 02 F0
	bmi -56.b		; 30 C8
	pha		; 48
	dey		; 88
	dey		; 88
	ora #$08.b		; 09 08
	bmi  48.b		; 30 30
	and $20.b		; 25 20
	sbc $02FFDE.l,X		; FF DE FF 02
	rti		; 40

	sbc $041030.l,X		; FF 30 10 04
	cmp ($30.b)		; D2 30
	and $D4F4E8.l		; 2F E8 F4 D4
	cmp ($10.b)		; D2 10
	tad		; 5B
	sec		; 38
	sbc $3FFF08.l,X		; FF 08 FF 3F
	jsl $FB3422.l		; 22 22 34 FB
	tya		; 98
	plp		; 28
	jmp.w [$201C]		; DC 1C 20
	jsr $30F0.w		; 20 F0 30
	cpy #$40.b		; C0 40
	cpx #$E0.b		; E0 E0
	jsr ($100C.w,X)		; FC 0C 10
	rts		; 60

	sbc $02FC.w,X		; FD FC 02
	brk $FF.b		; 00 FF
	ora #$09.b		; 09 09
	tsb $04.b		; 04 04
	asl $100E.w		; 0E 0E 10
	bpl  12.b		; 10 0C
	tsb $6060.w		; 0C 60 60
	sbc $02FFFF.l,X		; FF FF FF 02
	bvc -37.b		; 50 DB
	and $EF607D.l,X		; 3F 7D 60 EF
	inx		; E8
	lda $47B8.w,Y		; B9 B8 47
.ACCU 16
	rep #$EC		; C2 EC
	and #$14B6.w		; 29 B6 14
	stx $10.b,Y		; 96 10
	sbc $FF0703.l,X		; FF 03 07 FF
	eor $631517.l,X		; 5F 17 15 63
	stz $030F.w		; 9C 0F 03
	txy		; 9B
	bcc  76.b		; 90 4C
	iny		; C8
	cld		; D8
	cli		; 58
	tsx		; BA
	ldy #$06.b		; A0 06
	bra  60.b		; 80 3C
	sbc $202003.l,X		; FF 03 20 20
	rti		; 40

	bra  -2.b		; 80 FE
	sbc $7F5541.l,X		; FF 41 55 7F
	adc $FFFF7F.l,X		; 7F 7F FF FF
	adc $5F7FBF.l,X		; 7F BF 7F 5F
	adc $0B3F2F.l,X		; 7F 2F 3F 0B
	ora $05.b,S		; 03 05
	adc $2040.w,X		; 7D 40 20
	bpl  12.b		; 10 0C
	cop $FF.b		; 02 FF
	sbc $990002.l,X		; FF 02 00 99
	adc [$2F.b]		; 67 2F
	rol $B6B0.w		; 2E B0 B6
	ora #$0501.w		; 09 01 05
	ora $09.b,S		; 03 09
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $FF.b,S		; 03 FF
	sbc $1102FF.l,X		; FF FF 02 11
	ldy $FB.b,X		; B4 FB
	sta $FB0C.w,X		; 9D 0C FB
	clc		; 18
	lda $02433D.l,X		; BF 3D 43 02
	bmi  52.b		; 30 34
	txy		; 9B
	txs		; 9A
	cmp $C1.b,S		; C3 C1
	sbc $370101.l,X		; FF 01 01 37
	eor $BF4043.l,X		; 5F 43 40 BF
	ora $185D18.l,X		; 1F 18 5D 18
	ora [$05.b]		; 07 05
	cop $02.b		; 02 02
	bra -96.b		; 80 A0
	adc $C080FF.l,X		; 7F FF 80 C0
	tad		; 5B
	and ($0F.b,S),Y		; 33 0F
	brk $FC.b		; 00 FC
	sbc $C00301.l,X		; FF 01 03 C0
	cpx #$C1.b		; E0 C1
	bmi  32.b		; 30 20
	inc $01FE.w,X		; FE FE 01
	ora ($F2.b,X)		; 01 F2
	cmp $FFC3F0.l		; CF F0 C3 FF
	bvs -16.b		; 70 F0
	clv		; B8
	sed		; F8
	bit $0C0C.w,X		; 3C 0C 0C
	tsb $0C.b		; 04 0C
	asl $F0.b		; 06 F0
	beq   8.b		; F0 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	sbc $1102FF.l,X		; FF FF 02 11
	bcs  -1.b		; B0 FF
	sta $FB08.w,Y		; 99 08 FB
	clc		; 18
	lda $02433D.l,X		; BF 3D 43 02
	bmi  52.b		; 30 34
	txy		; 9B
	txs		; 9A
	cmp $C1.b,S		; C3 C1
	sbc $FF0101.l,X		; FF 01 01 FF
	adc $4053.w,X		; 7D 53 40
	lda $0101C0.l		; AF C0 01 01
	adc ($C2.b,S),Y		; 73 C2
	ldx $04.b		; A6 04
	bra   7.b		; 80 07
	tsb $83.b		; 04 83
	ora $A0.b,S		; 03 A0
	ora $C020FF.l,X		; 1F FF 20 C0
	cpy #$FF.b		; C0 FF
	sbc $DF0001.l,X		; FF 01 00 DF
	cpx #$50.b		; E0 50
	beq  48.b		; F0 30
	bvs   8.b		; 70 08
	sec		; 38
	tsb $1C.b		; 04 1C
	ora $0F.b,S		; 03 0F
	dey		; 88
	sty $C040.w		; 8C 40 C0
	bra  -5.b		; 80 FB
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	asl $02.b		; 06 02
	ora $07.b		; 05 07
	cop $01.b		; 02 01
.INDEX 8
	sep #$DF		; E2 DF
	beq -49.b		; F0 CF
	sbc $BC2080.l,X		; FF 80 20 BC
	sty $3A.b,X		; 94 3A
	lsr $0405.w		; 4E 05 04
	asl $01.b		; 06 01
	bra -128.b		; 80 80
	jmp ($027C.w,X)		; 7C 7C 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($57.b,X)		; 01 57
	sbc $02.b,X		; F5 02
	brk $04.b		; 00 04
	sbc $0D080B.l,X		; FF 0B 08 0D
	php		; 08
	ora $19.b,S		; 03 19
	clc		; 18
	ldy $A4.b		; A4 A4
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $C1.b		; 00 C1
	and $DF7072.l,X		; 3F 72 70 DF
	cld		; D8
	and $61.b		; 25 61
	sta $0D6D1F.l,X		; 9F 1F 6D 0D
	.db $82, $02, $BD		; 82 02 BD
	sta $FFFF.w,X		; 9D FF FF
	sbc $6FBD17.l,X		; FF 17 BD 6F
	bra -62.b		; 80 C2
	cpy #$7E.b		; C0 7E
	bit $9089.w		; 2C 89 90
	sbc [$0C.b],Y		; F7 0C
	sta $781E.w,X		; 9D 1E 78
	ora $0C7C.w,Y		; 19 7C 0C
	ora $120CFF.l,X		; 1F FF 0C 12
	cop $02.b		; 02 02
	asl $0901.w		; 0E 01 09
	tsb $FF.b		; 04 FF
	beq   3.b		; F0 03
	beq -89.b		; F0 A7
	adc $37486E.l,X		; 7F 6E 48 37
	rol $01.b,X		; 36 01
	ora ($C0.b,X)		; 01 C0
	bra  32.b		; 80 20
	rti		; 40

	sbc $8080FF.l,X		; FF FF 80 80
	rti		; 40

	rti		; 40

	cmp ($0F.b,S),Y		; D3 0F
	ora $00.b,S		; 03 00
	sbc $F830FF.l,X		; FF FF 30 F8
	bmi -49.b		; 30 CF
	iny		; C8
	ora [$07.b]		; 07 07
	sbc $FFC3FF.l,X		; FF FF C3 FF
	ora ($00.b,X)		; 01 00
	inc $8001.w,X		; FE 01 80
	bra  88.b		; 80 58
	cld		; D8
	tax		; AA
	plx		; FA
	cmp $F2FF.w,X		; DD FF F2
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor ($01.b),Y		; 51 01
	bra -97.b		; 80 9F
	adc $D7AFFF.l,X		; 7F FF AF D7
	tas		; 1B
	ora $070A.w		; 0D 0A 07
	.db $82, $81, $70		; 82 81 70
	bvs -112.b		; 70 90
	beq 127.b		; F0 7F
	clc		; 18
	asl $01.b		; 06 01
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	sbc $708080.l,X		; FF 80 80 70
	bpl -24.b		; 10 E8
	stz $1F.b		; 64 1F
	bra -128.b		; 80 80
	bvs 112.b		; 70 70
	php		; 08
	php		; 08
	ora [$07.b]		; 07 07
	sbc $0002F5.l,X		; FF F5 02 00
	adc [$98.b]		; 67 98
	cmp $F1ED.w		; CD ED F1
	phb		; 8B
	cpx $BE01.w		; EC 01 BE
	ora $49.b,S		; 03 49
	rti		; 40

	and [$20.b]		; 27 20
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $A9.b		; 00 A9
	eor [$59.b],Y		; 57 59
	cli		; 58
	eor ($50.b)		; 52 50
	xba		; EB
	inx		; E8
	sbc $7A7C.w,X		; FD 7C 7A
	plx		; FA
	and $43.b,S		; 23 43
	adc ($82.b)		; 72 82
	sbc $2AFFFF.l,X		; FF FF FF 2A
	brk $78.b		; 00 78
	sbc [$94.b]		; E7 94
	trb $B7.b		; 14 B7
	ora [$EC.b],Y		; 17 EC
	and #$C247.w		; 29 47 C2
	lda $EFB8.w,Y		; B9 B8 EF
	inx		; E8
	adc $F860.w,X		; 7D 60 F8
	tsb $03.b		; 04 03
	xce		; FB
	sbc $01FEA3.l,X		; FF A3 FE 01
	sed		; F8
	sbc $407F80.l,X		; FF 80 7F 40
	lda $E0DFA0.l,X		; BF A0 DF E0
	ora $438340.l		; 0F 40 83 43
	bra   7.b		; 80 07
	ora [$80.b]		; 07 80
	cpy #$E0.b		; C0 E0
	bpl -16.b		; 10 F0
	bit $3CFC.w,X		; 3C FC 3C
	sbc $3F003D.l,X		; FF 3D 00 3F
	brk $FF.b		; 00 FF
	sbc [$82.b]		; E7 82
	clc		; 18
	adc $FFFF.w,X		; 7D FF FF
	.db $82, $82, $7D		; 82 82 7D
	adc $03D1.w,X		; 7D D1 03
	cmp $03.b,S		; C3 03
	sbc $FC3EC0.l,X		; FF C0 3E FC
	ora ($03.b,X)		; 01 03
	sbc $FCFCFF.l,X		; FF FF FC FC
	ora $03.b,S		; 03 03
	adc $0F030F.l,X		; 7F 0F 03 0F
	sbc ($0F.b),Y		; F1 0F
	ora $01010E.l		; 0F 0E 01 01
	rti		; 40

	ldy #$C0.b		; A0 C0
	ora $FFFF3F.l,X		; 1F 3F FF FF
	cpy #$C0.b		; C0 C0
	and $FFFF3F.l,X		; 3F 3F FF FF
	brk $14.b		; 00 14
	sbc $9103.w,X		; FD 03 91
	bcc  76.b		; 90 4C
	jsr ($FEB2.w,X)		; FC B2 FE
	trb $091F.w		; 1C 1F 09
	sbc #$FFE0.w		; E9 E0 FF
	sbc $1FE0FF.l,X		; FF FF E0 1F
	inc $55FF.w,X		; FE FF 55
	bvc 127.b		; 50 7F
	ora $3D53EF.l,X		; 1F EF 53 3D
	tas		; 1B
	asl $A0.b		; 06 A0
	lda $0C.b,S		; A3 0C
	jsr ($9F12.w,X)		; FC 12 9F
	sta $F1.b,S		; 83 F1
	bvs 112.b		; 70 70
	asl $8001.w		; 0E 01 80
	bvs -126.b		; 70 82
	sbc $FF0FC0.l,X		; FF C0 0F FF
	bra -80.b		; 80 B0
	sei		; 78
	asl $FF.b,X		; 16 FF
	inc $2707.w,X		; FE 07 27
	sbc $788080.l,X		; FF 80 80 78
	sei		; 78
	ora [$07.b]		; 07 07
	cop $F0.b		; 02 F0
	brk $F0.b		; 00 F0
	sbc $D4F0C0.l,X		; FF C0 F0 D4
	sbc $0FF0F0.l		; EF F0 F0 0F
	ora $02FFFF.l		; 0F FF FF 02
	beq -32.b		; F0 E0
	ora $032121.l,X		; 1F 21 21 03
	ora $21.b,S		; 03 21
	and ($1A.b,X)		; 21 1A
	inc A		; 1A
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	sbc $070101.l,X		; FF 01 01 07
	ora [$FF.b]		; 07 FF
	sbc $17F002.l,X		; FF 02 F0 17
	sed		; F8
	tya		; 98
	bra -102.b		; 80 9A
	stx $30.b		; 86 30
	bit $DA.b		; 24 DA
	phx		; DA
	cop $03.b		; 02 03
	sta [$94.b],Y		; 97 94
	lda [$A8.b]		; A7 A8
	sbc $808080.l,X		; FF 80 80 80
	bra  -1.b		; 80 FF
	cmp $B40007.l,X		; DF 07 00 B4
	cmp $5B.b,S		; C3 5B
	bmi -46.b		; 30 D2
	bpl -12.b		; 10 F4
	pei ($2F.b)		; D4 2F
	inx		; E8
	cmp ($30.b)		; D2 30
	tsb $30.b		; 04 30
	bpl   8.b		; 10 08
	sbc $FFFF08.l,X		; FF 08 FF FF
	sbc $3F8051.l,X		; FF 51 80 3F
	rts		; 60

	bmi -112.b		; 30 90
	phb		; 8B
	cmp ($5B.b,S),Y		; D3 5B
	jsr ($2830.w,X)		; FC 30 28
	jsr $18D8.w		; 20 D8 18
	txs		; 9A
	bit $C040.w		; 2C 40 C0
	bmi  48.b		; 30 30
	rtl		; 6B

	phd		; 0B
	tsb $04.b		; 04 04
	bpl   8.b		; 10 08
	tsb $E2.b		; 04 E2
	sbc [$F0.b],Y		; F7 F0
	beq  -1.b		; F0 FF
	bra -128.b		; 80 80
	rti		; 40

	bra -128.b		; 80 80
	cpy #$50.b		; C0 50
	cli		; 58
	jmp $801C.w		; 4C 1C 80
	bra  64.b		; 80 40
	rti		; 40

	sec		; 38
	sec		; 38
	tsb $04.b		; 04 04
	ora $000F00.l		; 0F 00 0F 00
	cop $F8.b		; 02 F8
	cop $07.b		; 02 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	and $003F00.l,X		; 3F 00 3F 00
	beq  15.b		; F0 0F
	sbc $1D8D.w		; ED 8D 1D
	adc $FFFF.w,X		; 7D FF FF
	bra -128.b		; 80 80
	adc $003F7F.l,X		; 7F 7F 3F 00
	and $8F4000.l,X		; 3F 00 40 8F
	cpy $8CFE.w		; CC FE 8C
	stx $F0F0.w		; 8E F0 F0
	asl $FE0E.w		; 0E 0E FE
	inc $FFFF.w,X		; FE FF FF
	sbc $06FD3F.l,X		; FF 3F FD 06
	ora ($19.b,S),Y		; 13 19
	eor $F867.w,Y		; 59 67 F8
	tay		; A8
	pei ($74.b)		; D4 74
	jsl $41C162.l		; 22 62 C1 41
	asl $06.b		; 06 06
	asl $F9.b		; 06 F9
	ora $6719.w,Y		; 19 19 67
	adc [$A8.b]		; 67 A8
	tay		; A8
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	sbc $003EFF.l,X		; FF FF 3E 00
	sed		; F8
	ora [$86.b]		; 07 86
	stx $87.b		; 86 87
	sta [$0A.b]		; 87 0A
	php		; 08
.ACCU 8
	sep #$E1		; E2 E1
	plp		; 28
	plp		; 28
	cmp $054F3C.l,X		; DF 3C 4F 05
	sbc $808080.l,X		; FF 80 80 80
	bra 127.b		; 80 7F
	sbc $2E0002.l,X		; FF 02 00 2E
	sbc ($3A.b),Y		; F1 3A
	asl A		; 0A
	ror $3406.w		; 6E 06 34
	tda		; 7B
	and ($6E.b,S),Y		; 33 6E
	ror A		; 6A
	sta $87.b		; 85 87
	lda ($D4.b,S),Y		; B3 D4
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $06.b		; 00 06
	sbc $1919.w,Y		; F9 19 19
	ora $15.b,X		; 15 15
	txa		; 8A
	txa		; 8A
	and $24.b		; 25 24
.ACCU 8
	sep #$E3		; E2 E3
	dec $46.b		; C6 46
	eor $01.b,S		; 43 01
	sbc $57FFFF.l,X		; FF FF FF 57
	trb $5C.b		; 14 5C
	lda $E2.b,S		; A3 E2
	sep #$41		; E2 41
	eor ($50.b,X)		; 41 50
	cld		; D8
	sed		; F8
	jsr $1888.w		; 20 88 18
	ply		; 7A
	tsx		; BA
	stz $64.b		; 64 64
	ora [$FF.b]		; 07 FF
	clc		; 18
	sec		; 38
	bit $06.b		; 24 06
	ora $DF.b		; 05 DF
	and $FD0003.l,X		; 3F 03 00 FD
	jsr ($0301.w,X)		; FC 01 03
.ACCU 16
	rep #$A1		; C2 A1
	bra 108.b		; 80 6C
	bvs  14.b		; 70 0E
	ora $0202.w		; 0D 02 02
	sbc $F7FAFF.l,X		; FF FF FA F7
	bit $FF00.w,X		; 3C 00 FF
	cmp [$A5.b]		; C7 A5
	xce		; FB
	eor ($38.b),Y		; 51 38
	ora #$8204.w		; 09 04 82
	ldy #$C0.b		; A0 C0
	bit $20.b,X		; 34 20
	cmp [$C7.b]		; C7 C7
	sec		; 38
	sec		; 38
	inc $55FF.w,X		; FE FF 55
	ora $FF.b,X		; 15 FF
	sbc $5FBF7F.l,X		; FF 7F BF 5F
	adc $0D2F2F.l,X		; 7F 2F 2F 0D
	ora $1811.w,X		; 1D 11 18
	ora [$02.b]		; 07 02
	ora $FF.b,S		; 03 FF
	bra  96.b		; 80 60
	bpl   2.b		; 10 02
	tsb $0201.w		; 0C 01 02
	jsr ($FC00.w,X)		; FC 00 FC
	sbc $E0E040.l,X		; FF 40 E0 E0
	eor $54.b,S		; 43 54
	lda $03E0E0.l,X		; BF E0 E0 03
	ora $1C.b,S		; 03 1C
	trb $E002.w		; 1C 02 E0
	brk $F0.b		; 00 F0
	sbc $106060.l,X		; FF 60 60 10
	rts		; 60

	rts		; 60

	bcc -112.b		; 90 90
	sbc $F002EF.l,X		; FF EF 02 F0
	sbc $1103.w,X		; FD 03 11
	bpl  30.b		; 10 1E
	asl $0F0F.w,X		; 1E 0F 0F
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	tsb $1D.b		; 04 1D
	ora [$FF.b],Y		; 17 FF
	tsb $04.b		; 04 04
	ora [$17.b],Y		; 17 17
	sbc [$FF.b],Y		; F7 FF
	cop $F0.b		; 02 F0
	bmi  -1.b		; 30 FF
	dec A		; 3A
	ora $4503.w		; 0D 03 45
	eor ($8C.b,X)		; 41 8C
	sty $E9E9.w		; 8C E9 E9
	stz $C89C.w		; 9C 9C C8
	iny		; C8
	sbc $880404.l,X		; FF 04 04 88
	dey		; 88
	cmp [$FF.b],Y		; D7 FF
	cop $00.b		; 02 00
	sta $ABFF.w,Y		; 99 FF AB
	bvs  83.b		; 70 53
	bpl  97.b		; 10 61
	rts		; 60

	trb $14.b		; 14 14
	lsr $CD5E.w,X		; 5E 5E CD
	cmp $57FF.w		; CD FF 57
	sbc $010002.l,X		; FF 02 00 01
	sbc $050702.l,X		; FF 02 07 05
	eor ($50.b,S),Y		; 53 50
	sed		; F8
	sed		; F8
	ror $74.b,X		; 76 74
	bpl  16.b		; 10 10
	sbc $13FDFF.l,X		; FF FF FD 13
	brk $AB.b		; 00 AB
	pei ($1C.b)		; D4 1C
	clc		; 18
	phx		; DA
	ora ($4E.b)		; 12 4E
	and ($E3.b,X)		; 21 E3
	cld		; D8
	clc		; 18
	and $25.b		; 25 25
	lsr A		; 4A
	lsr A		; 4A
	ora ($FF.b,X)		; 01 FF
	ora ($F1.b,X)		; 01 F1
	cmp $FF83D7.l,X		; DF D7 83 FF
	jmp ($B360.w)		; 6C 60 B3
	ldx $3DBC.w,Y		; BE BC 3D
	dey		; 88
	clc		; 18
	jsr $2C9C.w		; 20 9C 2C
	sbc $9060FF.l,X		; FF FF 60 90
	asl $011E.w		; 0E 1E 01
	ora $DF04.w,X		; 1D 04 DF
	ora $C3.b,S		; 03 C3
	ora $F0.b,S		; 03 F0
	ora $200F0F.l		; 0F 0F 0F 20
	dec $0170.w,X		; DE 70 01
	sta $70FFFF.l		; 8F FF FF 70
	bvs -113.b		; 70 8F
	sta $00FFFF.l		; 8F FF FF 00
	ora $7F.b,X		; 15 7F
	bra  66.b		; 80 42
	rep #$8F		; C2 8F
	sbc $17FFF0.l,X		; FF F0 FF 17
	sta [$80.b],Y		; 97 80
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $7C80FF.l,X		; FF FF 80 7C
	ora $F1.b,S		; 03 F1
	sbc $FF5000.l		; EF 00 50 FF
	lsr $47.b		; 46 47
	ora ($FF.b,X)		; 01 FF
	sbc $FAFAFF.l,X		; FF FF FA FA
	inc $FFFE.w,X		; FE FE FF
	inc $FF01.w,X		; FE 01 FF
	sbc $A45005.l		; EF 05 50 A4
	eor $0304.w,X		; 5D 04 03
	sta ($80.b,X)		; 81 80
	bpl -16.b		; 10 F0
	inc $FF.b		; E6 FF
	sbc ($E7.b,X)		; E1 E7
	bit $FF3C.w,X		; 3C 3C FF
	ora ($01.b,X)		; 01 01
	bit $FEC3.w,X		; 3C C3 FE
	sbc $FF5155.l,X		; FF 55 51 FF
	sbc $D72F7F.l,X		; FF 7F 2F D7
	and $868959.l		; 2F 59 89 86
	rts		; 60

	sta $E3E301.l,X		; 9F 01 E3 E3
	sbc $7880FF.l,X		; FF FF 80 78
	asl $01.b		; 06 01
	sbc $1C.b,S		; E3 1C
	cop $2A.b		; 02 2A
	brk $3F.b		; 00 3F
	sbc $60E080.l,X		; FF 80 E0 60
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	cpx #$E0.b		; E0 E0
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $6C.b,S		; A3 6C
	eor [$D8.b]		; 47 D8
	eor $E799F0.l		; 4F F0 99 E7
	rol $CE.b,X		; 36 CE
	eor ($B1.b,X)		; 41 B1
	and $D7EE.w		; 2D EE D7
	cld		; D8
	jmp ($D893.w)		; 6C 93 D8
	and [$F0.b]		; 27 F0
	ora $CE18E7.l		; 0F E7 18 CE
	and ($B1.b),Y		; 31 B1
	lsr $11EE.w		; 4E EE 11
	cld		; D8
	and [$FF.b]		; 27 FF
	eor $C7AFFF.l,X		; 5F FF AF C7
	sec		; 38
	sta $E15E70.l		; 8F 70 5E E1
	adc #$876E.w		; 69 6E 87
	tya		; 98
	adc $FFFF80.l,X		; 7F 80 FF FF
	sec		; 38
	cmp [$70.b]		; C7 70
	sta $6E1EE1.l		; 8F E1 1E 6E
	sta ($98.b),Y		; 91 98
	adc [$80.b]		; 67 80
	adc $FDFFFF.l,X		; 7F FF FF FD
	sbc $FF03F2.l,X		; FF F2 03 FF
	tsb $04.b		; 04 04
	jmp ($EE6A.w)		; 6C 6A EE
	sbc #$E8E8.w		; E9 E8 E8
	sta ($90.b,S),Y		; 93 90
	and $20.b,S		; 23 20
	sbc ($F0.b),Y		; F1 F0
	sbc $E06060.l,X		; FF 60 60 E0
	cpx #$80.b		; E0 80
	bra 127.b		; 80 7F
	sbc $160002.l,X		; FF 02 00 16
	sbc $0333.w,Y		; F9 33 03
	lda $A41F85.l,X		; BF 85 1F A4
	ldy #$69.b		; A0 69
	pla		; 68
	plx		; FA
	ply		; 7A
	pei ($14.b)		; D4 14
	sbc $42FFFF.l,X		; FF FF FF 42
	ora ($B4.b,X)		; 01 B4
	eor $6A707F.l		; 4F 7F 70 6A
	adc ($C2.b,X)		; 61 C2
.ACCU 16
	rep #$A8		; C2 A8
	tay		; A8
	mvn $BA,$54		; 54 54 BA
	tsx		; BA
	mvn $FF,$54		; 54 54 FF
	ora ($01.b,X)		; 01 01
	sbc $547EEF.l,X		; FF EF 7E 54
	bcs -49.b		; B0 CF
	dec $56.b,X		; D6 56
	cld		; D8
	inc $C1.b		; E6 C1
	bra -118.b		; 80 8A
	beq  10.b		; F0 0A
	asl $B401.w		; 0E 01 B4
	bcs -16.b		; B0 F0
	rol $410E.w,X		; 3E 0E 41
	ora ($80.b,X)		; 01 80
	bra 112.b		; 80 70
	php		; 08
	.db $42, $FF		; 42 FF
	beq  15.b		; F0 0F
	sbc $0121C0.l,X		; FF C0 21 01
	asl $500D.w		; 0E 0D 50
	sty $6050.w		; 8C 50 60
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	ora ($11.b),Y		; 11 11
	asl $020E.w		; 0E 0E 02
	sbc $FFFF00.l,X		; FF 00 FF FF
	beq -112.b		; F0 90
	tsb $0294.w		; 0C 94 02
	asl $01.b		; 06 01
	cop $F0.b		; 02 F0
	beq  12.b		; F0 0C
	tsb $0202.w		; 0C 02 02
	ora ($01.b,X)		; 01 01
	cop $F0.b		; 02 F0
	brk $F0.b		; 00 F0
	sbc $C0223E.l,X		; FF 3E 22 C0
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	rol $C0C0.w,X		; 3E C0 C0
	adc $F33FF7.l,X		; 7F F7 3F F3
	lda $D0F0B0.l		; AF B0 F0 D0
	cpy #$80.b		; C0 80
	cpy #$E0.b		; C0 E0
	jsr $4080.w		; 20 80 40
	rti		; 40

	bra -128.b		; 80 80
	bcs  79.b		; B0 4F
	bne -48.b		; D0 D0
	bra -128.b		; 80 80
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	sbc $00FFFF.l,X		; FF FF FF 00
	cop $00.b		; 02 00
	ldy $5B.b		; A4 5B
	eor [$57.b],Y		; 57 57
	inc A		; 1A
	inc A		; 1A
	asl $16.b,X		; 16 16
	sbc $02FFFF.l,X		; FF FF FF 02
	cmp $C46699.l		; CF 99 66 C4
	cpy $E9.b		; C4 E9
	sbc #$46.b		; E9 46
	lsr $1D.b		; 46 1D
	ora $3111.w,X		; 1D 11 31
	ora [$07.b]		; 07 07
	lda $C3.b,S		; A3 C3
	sbc $301010.l,X		; FF 10 10 30
	bmi -64.b		; 30 C0
	cpy #$FF.b		; C0 FF
	sbc $560002.l,X		; FF 02 00 56
	lda #$BB.b		; A9 BB
	tyx		; BB
	adc [$65.b]		; 67 65
	jmp $7248.w		; 4C 48 72
	rti		; 40

	adc $01.b		; 65 01
	txs		; 9A
	.db $82, $D2, $02		; 82 D2 02
	sbc $17DFFF.l,X		; FF FF DF 17
	brk $AC.b		; 00 AC
	bvs  23.b		; 70 17
	trb $D6.b		; 14 D6
	txs		; 9A
	inc $02.b		; E6 02
	adc $CD05.w		; 6D 05 CD
	asl $9A.b		; 06 9A
	tda		; 7B
	asl A		; 0A
	ora $FF.b,S		; 03 FF
	cop $01.b		; 02 01
	cmp $5103FF.l		; CF FF 03 51
	stp		; DB
	bit $3C24.w,X		; 3C 24 3C
	sta $03.b,S		; 83 03
	lda ($33.b,S),Y		; B3 33
	lsr $0E.b,X		; 56 0E
	inc $A1.b,X		; F6 A1
	pei ($58.b)		; D4 58
	sbc $4080FF.l,X		; FF FF 80 40
	jsr $FFCF.w		; 20 CF FF
	ora $00.b,S		; 03 00
	lda $40607F.l,X		; BF 7F 60 40
	and $C0.b,S		; 23 C0
	tsa		; 3B
	cmp [$38.b]		; C7 38
	sec		; 38
	bra -128.b		; 80 80
	cmp ($41.b,X)		; C1 41
	sbc $3FF7FF.l,X		; FF FF F7 3F
	brk $00.b		; 00 00
	sbc $800101.l,X		; FF 01 01 80
	bra  32.b		; 80 20
	cpx #$73.b		; E0 73
	lda $03C748.l,X		; BF 48 C7 03
	bra 126.b		; 80 7E
	inc $0055.w,X		; FE 55 00
	sbc $FFEF1F.l,X		; FF 1F EF FF
	ora [$09.b]		; 07 09
	ora ($80.b,X)		; 01 80
	bra  24.b		; 80 18
	clc		; 18
	rts		; 60

	adc $08F0E0.l,X		; 7F E0 F0 08
	ora [$C2.b]		; 07 C2
	eor $FF03C0.l		; 4F C0 03 FF
	clc		; 18
	bit $BDA4.w,X		; 3C A4 BD
	eor $81.b,S		; 43 81
	cpy #$3C.b		; C0 3C
	bit $C3C3.w,X		; 3C C3 C3
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	sbc $304040.l,X		; FF 40 40 30
	inc $76.b		; E6 76
	eor $4006.w,Y		; 59 06 40
	rti		; 40

	bcs -80.b		; B0 B0
	asl $010E.w		; 0E 0E 01
	ora ($02.b,X)		; 01 02
	cpy #$00.b		; C0 00
	cpy #$FF.b		; C0 FF
	rti		; 40

	rts		; 60

	cpx #$E0.b		; E0 E0
	ora ($C0.b,X)		; 01 C0
	cop $00.b		; 02 00
	sbc $FF3010.l,X		; FF 10 30 FF
	cmp $33CF73.l		; CF 73 CF 33
	inc $0301.w,X		; FE 01 03
	ora $06.b,S		; 03 06
	tsb $0C.b		; 04 0C
	asl A		; 0A
	ora $03.b,S		; 03 03
	cop $01.b		; 02 01
	inc $0303.w,X		; FE 03 03
	tsb $04.b		; 04 04
	asl A		; 0A
	asl A		; 0A
	ora $03.b,S		; 03 03
	sbc $FFFFFF.l,X		; FF FF FF FF
	plx		; FA
	asl $F8.b		; 06 F8
	ora #$E1.b		; 09 E1
	asl $D3.b,X		; 16 D3
	bit $87.b,X		; 34 87
	stz $11.b		; 64 11
	cmp $BE22.w,Y		; D9 22 BE
	sty $06B3.w		; 8C B3 06
	sbc $F609.w,Y		; F9 09 F6
	asl $E9.b,X		; 16 E9
	bit $CB.b,X		; 34 CB
	stz $9B.b		; 64 9B
	cmp $BE26.w,Y		; D9 26 BE
	eor ($B3.b,X)		; 41 B3
	jmp $7FFF.w		; 4C FF 7F
	lda $C0BFBE.l		; AF BE BF C0
	ror $89.b,X		; 76 89
	sbc #$17.b		; E9 17
	plx		; FA
	ora [$FE.b]		; 07 FE
	ora ($F1.b,X)		; 01 F1
	rol $E0DF.w,X		; 3E DF E0
	sbc $803FC0.l,X		; FF C0 3F 80
	adc $FFFFFF.l,X		; 7F FF FF FF
	rol $E0C1.w,X		; 3E C1 E0
	ora $7FFFFF.l,X		; 1F FF FF 7F
	cop $00.b		; 02 00
	lsr $94BF.w		; 4E BF 94
	tya		; 98
	ldx #$A0.b		; A2 A0
	dey		; 88
	inx		; E8
	eor $03.b,S		; 43 03
	inc $D2.b		; E6 D2
	eor $FF3B41.l,X		; 5F 41 3B FF
	sbc $0002FF.l,X		; FF FF 02 00
	asl $E9.b,X		; 16 E9
	tda		; 7B
	inc A		; 1A
	cmp [$04.b]		; C7 04
	clc		; 18
	sec		; 38
	wai		; CB
	pha		; 48
	iny		; C8
	iny		; C8
	phk		; 4B
	pha		; 48
	lda [$A4.b]		; A7 A4
	sbc $17FFF7.l,X		; FF F7 FF 17
	brk $E6.b		; 00 E6
	bra -75.b		; 80 B5
	lda $241793.l,X		; BF 93 17 24
	lda ($88.b)		; B2 88
	dey		; 88
	sta ($61.b,X)		; 81 61
	sbc ($8C.b,X)		; E1 8C
	tsb $FF1F.w		; 0C 1F FF
	and ($2C.b,S),Y		; 33 2C
	sbc $AFFF.w,X		; FD FF AF
	asl A		; 0A
	adc $7FF9.w,Y		; 79 F9 7F
	rti		; 40

	cpy #$05.b		; C0 05
	ora $1F.b		; 05 1F
	sta $98F6F7.l,X		; 9F F7 F6 98
	clc		; 18
	sbc $FFFF3C.l		; EF 3C FF FF
	sbc $05407F.l,X		; FF 7F 40 05
	inc A		; 1A
	jsr $FFEF.w		; 20 EF FF
	lda $0FF702.l,X		; BF 02 F7 0F
	sbc ($FE.b),Y		; F1 FE
	php		; 08
	sta $F8F49F.l,X		; 9F 9F F4 F8
	dec $F842.w,X		; DE 42 F8
	jsr $013D.w		; 20 3D 01
	sbc $F0F0FF.l,X		; FF FF F0 F0
	ora $609909.l		; 0F 09 99 60
	and $A033F0.l,X		; 3F F0 33 A0
	cmp $FC.b,S		; C3 FC
	lda $7C.b,S		; A3 7C
	rts		; 60

	adc $8BC0C0.l,X		; 7F C0 C0 8B
	phb		; 8B
	sbc $FFFFFF.l,X		; FF FF FF FF
	cpy #$0F.b		; C0 0F
	lda $00F300.l,X		; BF 00 F3 00
	cpx $D31F.w		; EC 1F D3
	ora $0FF03F.l,X		; 1F 3F F0 0F
	sbc $F0F0FF.l,X		; FF FF F0 F0
	ora $02F70F.l		; 0F 0F F7 02
	cmp $03.b,S		; C3 03
	sbc $34B0FF.l,X		; FF FF B0 34
	sed		; F8
	tda		; 7B
	inc $FF06.w,X		; FE 06 FF
	sbc $06F9F9.l,X		; FF F9 F9 06
	asl $FF.b		; 06 FF
	ora $C3.b,S		; 03 C3
	ora $F7.b,S		; 03 F7
	sed		; F8
	php		; 08
	ora [$58.b]		; 07 58
	jsr $B9AE.w		; 20 AE B9
	ora #$99.b		; 09 99
	sbc $6060FF.l,X		; FF FF 60 60
	sta $AAFE9F.l,X		; 9F 9F FE AA
	sbc $5C2F00.l,X		; FF 00 2F 5C
	lda ($F4.b,X)		; A1 F4
	sbc $FF1D80.l,X		; FF 80 1D FF
	sbc $D0FFFF.l,X		; FF FF FF D0
	bne  -2.b		; D0 FE
	inc $FFFF.w,X		; FE FF FF
.ACCU 8
	sep #$E2		; E2 E2
	plx		; FA
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	bra -96.b		; 80 A0
	bvs -96.b		; 70 A0
	beq -128.b		; F0 80
	bra 112.b		; 80 70
	bvs -16.b		; 70 F0
	beq  -1.b		; F0 FF
	sbc $DF0C02.l,X		; FF 02 0C DF
	bmi  52.b		; 30 34
	bit $06.b		; 24 06
	asl A		; 0A
	sei		; 78
	rts		; 60

	asl $5502.w,X		; 1E 02 55
	eor $14.b		; 45 14
	tsb $56.b		; 04 56
	phy		; 5A
	sbc $FF0101.l,X		; FF 01 01 FF
	sbc [$FF.b],Y		; F7 FF
	sbc ($EA.b,S),Y		; F3 EA
	inc A		; 1A
	asl $370E.w		; 0E 0E 37
	and [$56.b]		; 27 56
	eor $AE.b,X		; 55 AE
	txa		; 8A
	pha		; 48
	eor $15.b,X		; 55 15
	pld		; 2B
	cop $1A.b		; 02 1A
	sbc $0E.b		; E5 0E
	asl $2727.w		; 0E 27 27
	eor $55.b,X		; 55 55
	txa		; 8A
	txa		; 8A
	trb $14.b		; 14 14
	rti		; 40

	rti		; 40

	cmp $00CFFC.l,X		; DF FC CF 00
	and $C0C040.l,X		; 3F 40 C0 C0
	bra  64.b		; 80 40
	rti		; 40

	bcs -80.b		; B0 B0
	inx		; E8
	dey		; 88
	cli		; 58
	clc		; 18
	rti		; 40

	lda $80C0C0.l,X		; BF C0 C0 80
	bra  -1.b		; 80 FF
	ora $F60002.l		; 0F 02 00 F6
	ora #$73.b		; 09 73
	adc ($DF.b,S),Y		; 73 DF
	cmp $01A5A5.l,X		; DF A5 A5 01
	ora ($01.b,X)		; 01 01
	ora ($FF.b,X)		; 01 FF
	sbc $0002FF.l,X		; FF FF 02 00
	bne  63.b		; D0 3F
	phx		; DA
	cpy #$41.b		; C0 41
	rti		; 40

	cmp $CDDDC4.l,X		; DF C4 DD CD
	stx $86.b		; 86 86
	plp		; 28
	plp		; 28
	clc		; 18
	clc		; 18
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $FA.b		; 00 FA
	cmp $A5.b		; C5 A5
	and $C3.b		; 25 C3
	sta $40.b,S		; 83 40
	rti		; 40

	jsl $8A8A22.l		; 22 22 8A 8A
	stz $4B9E.w,X		; 9E 9E 4B
	lsr A		; 4A
	sbc $02D77F.l,X		; FF 7F D7 02
	brk $5A.b		; 00 5A
	lda $444C.w,X		; BD 4C 44
	adc $A70E.w,X		; 7D 0E A7
	lsr A		; 4A
	php		; 08
	cpx $42.b		; E4 42
	ldy $FF0C.w		; AC 0C FF
	sbc $F00F17.l,X		; FF 17 0F F0
	txs		; 9A
	adc [$0D.b]		; 67 0D
	tsb $141B.w		; 0C 1B 14
	pha		; 48
	rti		; 40

	and $0F20.w		; 2D 20 0F
	asl $01.b		; 06 01
	inc $0101.w,X		; FE 01 01
	tsb $120C.w		; 0C 0C 12
	ora ($FF.b)		; 12 FF
	sbc $1A0002.l,X		; FF 02 00 1A
	sbc [$A2.b]		; E7 A2
	jsr $0DCD.w		; 20 CD 0D
	ora ($32.b)		; 12 32
	ror A		; 6A
	cop $97.b		; 02 97
	ora [$1F.b]		; 07 1F
	cop $04.b		; 02 04
	bra  -1.b		; 80 FF
	sbc $0002FF.l,X		; FF FF 02 00
	eor $3030F0.l		; 4F F0 30 30
	eor ($21.b,X)		; 41 21
	inc $86.b		; E6 86
	inc $FF98.w		; EE 98 FF
	cpy #$B8.b		; C0 B8
	bcs -71.b		; B0 B9
	sec		; 38
	sbc $02FF31.l,X		; FF 31 FF 02
	brk $FF.b		; 00 FF
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	dey		; 88
	dey		; 88
	sec		; 38
	bmi -108.b		; 30 94
	mvp $DF,$FF		; 44 FF DF
	sbc $950002.l,X		; FF 02 00 95
	adc $0A707F.l		; 6F 7F 70 0A
	asl $16.b,X		; 16 16
	bit $223C.w,X		; 3C 3C 22
	jsl $0E1D1D.l		; 22 1D 1D 0E
	asl $FFFF.w		; 0E FF FF
	sbc $160002.l,X		; FF 02 00 16
	sbc #$1C.b		; E9 1C
	trb $6969.w		; 1C 69 69
	sta $14974F.l		; 8F 4F 97 14
	sta $58.b,X		; 95 58
	sta $8C11.w,X		; 9D 11 8C
	eor $FFFFFF.l		; 4F FF FF FF
	cop $00.b		; 02 00
	eor ($BE.b,X)		; 41 BE
	wai		; CB
	cmp #$DC.b		; C9 DC
	cld		; D8
	lda ($B0.b)		; B2 B0
	ldx $F9AA.w		; AE AA F9
	adc $A626.w,Y		; 79 26 A6
	cmp $FFCD.w		; CD CD FF
	sbc $00A2FF.l,X		; FF FF A2 00
	ora $10F6.w,X		; 1D F6 10
	php		; 08
	sbc $1D1D63.l		; EF 63 1D 1D
	ora $85.b		; 05 85
	ora [$96.b],Y		; 17 96
	cli		; 58
	cli		; 58
	sbc $01FF3C.l		; EF 3C FF 01
	ora ($FF.b,X)		; 01 FF
	sbc $D0FFFF.l,X		; FF FF FF D0
	and $9537D6.l,X		; 3F D6 37 95
	lsr $8D.b,X		; 56 8D
	lsr $7BB8.w		; 4E B8 7B
	sta ($11.b),Y		; 91 11
	eor ($F7.b,S),Y		; 53 F7
	ldx $EF.b		; A6 EF
	and $C837C0.l,X		; 3F C0 37 C8
	lsr $A9.b,X		; 56 A9
	lsr $7BB1.w		; 4E B1 7B
	sty $11.b		; 84 11
	inc $08F7.w		; EE F7 08
	sbc $7FFF10.l		; EF 10 FF 7F
	nop		; EA
	lda $9C37CA.l,X		; BF CA 37 9C
	adc $ED.b,S		; 63 ED
	ora ($C9.b)		; 12 C9
	rol $77.b,X		; 36 77
	sed		; F8
	cmp #$FE.b		; C9 FE
	ora [$EF.b],Y		; 17 EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	bmi -49.b		; 30 CF
	sed		; F8
	ora [$FE.b]		; 07 FE
	ora ($EF.b,X)		; 01 EF
	bpl  -1.b		; 10 FF
	sbc $F002FF.l,X		; FF FF 02 F0
	stz $EB.b,X		; 74 EB
	lsr A		; 4A
	asl A		; 0A
	.db $62, $52, $D2		; 62 52 D2
	dex		; CA
	.db $42, $42		; 42 42
	tad		; 5B
	eor ($E8.b,S),Y		; 53 E8
	inx		; E8
	bra -128.b		; 80 80
	sbc $808080.l,X		; FF 80 80 80
	bra -41.b		; 80 D7
	sbc $24C002.l,X		; FF 02 C0 24
	sbc $1B0C2A.l,X		; FF 2A 0C 1B
	clc		; 18
	adc $0768.w		; 6D 68 07
	ora $8D.b,S		; 03 8D
	sta $0D0D.w		; 8D 0D 0D
	sbc $F10C0C.l,X		; FF 0C 0C F1
	xce		; FB
	cop $30.b		; 02 30
	sbc $88E020.l,X		; FF 20 E0 88
	php		; 08
	jmp ($2014.w,X)		; 7C 14 20
	eor $5D.b,X		; 55 5D
	bra -128.b		; 80 80
	sbc $FF0101.l,X		; FF 01 01 FF
	sbc $EEFFFF.l,X		; FF FF FF EE
	ora ($D5.b),Y		; 11 D5
	dec A		; 3A
	sta [$78.b],Y		; 97 78
	lda $FE2570.l		; AF 70 25 FE
	tda		; 7B
	jsr ($F06F.w,X)		; FC 6F F0
	eor $EF10E0.l,X		; 5F E0 10 EF
	sec		; 38
	cmp [$78.b]		; C7 78
	sta [$70.b]		; 87 70
	sta $FC01FE.l		; 8F FE 01 FC
	ora $F0.b,S		; 03 F0
	ora $FF1FE0.l		; 0F E0 1F FF
	ora $02.b,S		; 03 02
	brk $DF.b		; 00 DF
	rts		; 60

	eor ($01.b,X)		; 41 01
	lda ($A1.b,X)		; A1 A1
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $BE.b		; 00 BE
	eor ($A7.b,X)		; 41 A7
	lda [$45.b]		; A7 45
	eor $B3.b		; 45 B3
	lda ($0D.b,S),Y		; B3 0D
	ora $1515.w		; 0D 15 15
	asl $06.b		; 06 06
	ora $FF0D.w		; 0D 0D FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $EE.b		; A5 EE
	tad		; 5B
	jmp.w [$D493]		; DC 93 D4
	and [$E8.b]		; 27 E8
	ora [$D8.b],Y		; 17 D8
	and [$E8.b]		; 27 E8
	and $EC.b,S		; 23 EC
	ora ($DC.b,S),Y		; 13 DC
	inc $DC11.w		; EE 11 DC
	and $D4.b,S		; 23 D4
	pld		; 2B
	inx		; E8
	ora [$D8.b],Y		; 17 D8
	and [$E8.b]		; 27 E8
	ora [$EC.b],Y		; 17 EC
	ora ($DC.b,S),Y		; 13 DC
	and $F7.b,S		; 23 F7
	sbc $39FFF3.l,X		; FF F3 FF 39
	cmp [$83.b]		; C7 83
	asl $04.b		; 06 04
	sbc ($20.b,X)		; E1 20
	asl $04.b		; 06 04
	sbc ($90.b)		; F2 90
	asl A		; 0A
	php		; 08
	sei		; 78
	rti		; 40

	cmp [$38.b]		; C7 38
	tsb $04.b		; 04 04
	jsr $0420.w		; 20 20 04
	tsb $90.b		; 04 90
	bcc   8.b		; 90 08
	php		; 08
	rti		; 40

	rti		; 40

	and $333F33.l,X		; 3F 33 3F 33
	adc ($8C.b,S),Y		; 73 8C
	cpy $44.b		; C4 44
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $8C20.w		; 20 20 8C
	adc ($44.b,S),Y		; 73 44
	mvp $18,$18		; 44 18 18
	bmi  48.b		; 30 30
	jsr $F320.w		; 20 20 F3
	sbc $EFFFF3.l,X		; FF F3 FF EF
	clc		; 18
	tsb $04.b		; 04 04
	trb $0310.w		; 1C 10 03
	ora $0F.b,S		; 03 0F
	php		; 08
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	clc		; 18
	sbc [$04.b]		; E7 04
	tsb $10.b		; 04 10
	bpl   3.b		; 10 03
	ora $08.b,S		; 03 08
	php		; 08
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	cmp $FFCFFF.l,X		; DF FF CF FF
	jsr ($0503.w,X)		; FC 03 05
	tsb $02.b		; 04 02
	ora #$09.b		; 09 09
	ora $03.b,S		; 03 03
	ora ($85.b,X)		; 01 85
	lda $65.b		; A5 65
	rol $06.b		; 26 06
	ora $FC.b,S		; 03 FC
	tsb $04.b		; 04 04
	ora #$09.b		; 09 09
	ora $03.b,S		; 03 03
	sta $85.b		; 85 85
	adc $65.b		; 65 65
	asl $06.b		; 06 06
	sbc $3CFF3C.l,X		; FF 3C FF 3C
	cmp $2161E0.l,X		; DF E0 61 21
	ora $03.b,S		; 03 03
	cpy #$40.b		; C0 40
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cpx #$1F.b		; E0 1F
	and ($21.b,X)		; 21 21
	ora $03.b,S		; 03 03
	rti		; 40

	rti		; 40

	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $0EF3.w		; 0D F3 0E
	sbc ($FF.b,S),Y		; F3 FF
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	bra -128.b		; 80 80
	sbc $080404.l,X		; FF 04 04 08
	php		; 08
	tsb $04.b		; 04 04
	bra -128.b		; 80 80
	sbc $F002FF.l,X		; FF FF 02 F0
	rol $F9.b,X		; 36 F9
	txs		; 9A
	txa		; 8A
	sbc $84D9.w,Y		; F9 D9 84
	sty $EB.b		; 84 EB
	xba		; EB
	sta $F2729F.l,X		; 9F 9F 72 F2
	adc #$69.b		; 69 69
	sbc $408080.l,X		; FF 80 80 40
	rti		; 40

	sbc $0002FF.l,X		; FF FF 02 00
	sei		; 78
	sta [$0A.b]		; 87 0A
	asl A		; 0A
	cpy $46CC.w		; CC CC 46
	lsr $62.b		; 46 62
	.db $62, $2D, $2D		; 62 2D 2D
	sbc #$E9.b		; E9 E9
	rts		; 60

	rts		; 60

	sbc $02FFFF.l,X		; FF FF FF 02
	bit $837C.w,X		; 3C 7C 83
	asl A		; 0A
	asl A		; 0A
	cld		; D8
	bvc -58.b		; 50 C6
	rol $1757.w		; 2E 57 17
	php		; 08
	plp		; 28
	lsr $E24E.w		; 4E 4E E2
	cpx #$FF.b		; E0 FF
	php		; 08
	php		; 08
	asl $FF0E.w		; 0E 0E FF
	sbc $360002.l,X		; FF 02 00 36
	sbc $8A9A.w,Y		; F9 9A 8A
	adc $2418.w,Y		; 79 18 24
	stz $1B.b		; 64 1B
	inc A		; 1A
	sty $94.b,X		; 94 94
	phb		; 8B
	phb		; 8B
	phd		; 0B
	phd		; 0B
	sbc $FF7CFF.l,X		; FF FF 7C FF
	bit $DC5B.w,X		; 3C 5B DC
	pla		; 68
	pla		; 68
	asl $F81A.w,X		; 1E 1A F8
	bvs 108.b		; 70 6C
	rts		; 60

	bmi  32.b		; 30 20
	tsb $DC.b		; 04 DC
	and $68.b,S		; 23 68
	pla		; 68
	inc A		; 1A
	inc A		; 1A
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	jsr $FF20.w		; 20 20 FF
	adc $E73FFF.l,X		; 7F FF 3F E7
	ora $04020A.l,X		; 1F 0A 02 04
	tsb $03.b		; 04 03
	cop $08.b		; 02 08
	php		; 08
	and ($22.b)		; 32 22
	inc A		; 1A
	asl A		; 0A
	bpl  31.b		; 10 1F
	cpx #$02.b		; E0 02
	cop $04.b		; 02 04
	tsb $02.b		; 04 02
	cop $08.b		; 02 08
	php		; 08
	jsl $0A0A22.l		; 22 22 0A 0A
	cmp $00.b,S		; C3 00
	cmp $00.b,S		; C3 00
	adc $808080.l,X		; 7F 80 80 80
	bra 127.b		; 80 7F
	bra -128.b		; 80 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	bpl -52.b		; 10 CC
	ora ($DD.b,X)		; 01 DD
	cmp $5F.b,S		; C3 5F
	ldx #$6E.b		; A2 6E
	sta ($76.b)		; 92 76
	cmp $C33D.w,Y		; D9 3D C3
	and $CC1EE2.l,X		; 3F E2 1E CC
	and ($DD.b,S),Y		; 33 DD
	jsl $6EA05F.l		; 22 5F A0 6E
	sta ($76.b),Y		; 91 76
	bit #$3D.b		; 89 3D
.ACCU 16
.INDEX 16
	rep #$3F		; C2 3F
	cpy #$E11E.w		; C0 1E E1
	adc ($F1.b,S),Y		; 73 F1
	and ($F0.b,S),Y		; 33 F0
	adc $40C080.l,X		; 7F 80 C0 40
	bra -128.b		; 80 80
	clc		; 18
	clc		; 18
	trb $14.b		; 14 14
	bra 127.b		; 80 7F
	rti		; 40

	rti		; 40

	clc		; 18
	clc		; 18
	trb $14.b		; 14 14
	sbc $0CFF0C.l,X		; FF 0C FF 0C
	and [$D8.b]		; 27 D8
	jsr $8820.w		; 20 20 88
	dey		; 88
	rti		; 40

	rti		; 40

	plp		; 28
	plp		; 28
	cld		; D8
	and [$20.b]		; 27 20
	jsr $8888.w		; 20 88 88
	rti		; 40

	rti		; 40

	plp		; 28
	plp		; 28
	sbc $C002FF.l,X		; FF FF 02 C0
	tyx		; BB
	mvp $73,$73		; 44 73 73
	rol $26.b		; 26 26
	and $283D.w,X		; 3D 3D 28
	plp		; 28
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora $07.b		; 05 07
	sbc $FF0707.l,X		; FF 07 07 FF
	and $3F0002.l,X		; 3F 02 00 3F
	cpy #$A6A6.w		; C0 A6 A6
	and $35.b,X		; 35 35
	lda $B5.b,X		; B5 B5
	cmp $D5.b,X		; D5 D5
	ora ($13.b,S),Y		; 13 13
	jsr $FF20.w		; 20 20 FF
	sbc $FCCFFF.l,X		; FF FF CF FC
	phx		; DA
	and [$B7.b]		; 27 B7
	ldy $C0.b,X		; B4 C0
	cpy #$7E7F.w		; C0 7F 7E
	bit $24.b		; 24 24
	tay		; A8
	tay		; A8
	bmi  48.b		; 30 30
	sta ($89.b,X)		; 81 89
	ora [$F8.b]		; 07 F8
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	jsr $3020.w		; 20 20 30
	bmi   9.b		; 30 09
	ora #$FFF1.w		; 09 F1 FF
	sbc ($FF.b)		; F2 FF
	sbc $928686.l,X		; FF 86 86 92
	inc A		; 1A
	bit $2C.b,X		; 34 2C
	rts		; 60

	bvc   1.b		; 50 01
	ora ($C3.b,X)		; 01 C3
	jsl $8686FF.l		; 22 FF 86 86
	inc A		; 1A
	inc A		; 1A
	bit $502C.w		; 2C 2C 50
	bvc   1.b		; 50 01
	ora ($22.b,X)		; 01 22
	jsl $02FFFF.l		; 22 FF FF 02
	brk $C8.b		; 00 C8
	and [$34.b],Y		; 37 34
	bit $36.b		; 24 36
	rol $E7E7.w		; 2E E7 E7
	phx		; DA
	lda ($AA.b)		; B2 AA
	phx		; DA
	sta $93.b,S		; 83 93
	and ($31.b),Y		; 31 31
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $3E.b		; 00 3E
	cmp ($CA.b,X)		; C1 CA
	dex		; CA
	sta $85.b		; 85 85
	lsr $884E.w		; 4E 4E 88
	stx $6165.w		; 8E 65 61
	adc $BDDF6D.l		; 6F 6D DF BD
	sbc $02FFFF.l,X		; FF FF FF 02
	brk $DB.b		; 00 DB
	bit $12.b		; 24 12
	cmp ($A4.b)		; D2 A4
	bit $11.b		; 24 11
	ora ($CB.b),Y		; 11 CB
	plb		; AB
	lsr A		; 4A
	ror A		; 6A
	adc $65.b		; 65 65
	cpx $FFEC.w		; EC EC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $DE.b		; C5 DE
	cpy $CF.b		; C4 CF
	dec $C7.b		; C6 C7
	stx $97.b,Y		; 96 97
	asl $1F.b,X		; 16 1F
	rol $37.b,X		; 36 37
	lda ($BF.b)		; B2 BF
	phx		; DA
	cmp $CF21DE.l,X		; DF DE 21 CF
	bmi -57.b		; 30 C7
	sec		; 38
	sta [$68.b],Y		; 97 68
	ora $C837E0.l,X		; 1F E0 37 C8
	lda $20DF40.l,X		; BF 40 DF 20
	cmp $FFCFFF.l		; CF FF CF FF
	iny		; C8
	and $0A1A.w,Y		; 39 1A 0A
	tas		; 1B
	inc A		; 1A
	cop $02.b		; 02 02
	ora $071D.w,X		; 1D 1D 07
	ora $390208.l		; 0F 08 02 39
	dec $0A.b		; C6 0A
	asl A		; 0A
	inc A		; 1A
	inc A		; 1A
	cop $02.b		; 02 02
	ora $0F1D.w,X		; 1D 1D 0F
	ora $010202.l		; 0F 02 02 01
	cpy #$C002.w		; C0 02 C0
	sbc $FF8080.l,X		; FF 80 80 FF
	bra -128.b		; 80 80
	sbc $03FF07.l,X		; FF 07 FF 03
	and $EAC6.w,X		; 3D C6 EA
	nop		; EA
	trb $1C10.w		; 1C 10 1C
	tsb $20.b		; 04 20
	jsr $C618.w		; 20 18 C6
	and $EAEA.w,Y		; 39 EA EA
	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	jsr $C320.w		; 20 20 C3
	cmp $C3.b,X		; D5 C3
	cpy #$0EF2.w		; C0 F2 0E
	ora #$0209.w		; 09 09 02
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	asl $09F1.w		; 0E F1 09
	ora #$0101.w		; 09 01 01
	sbc $3CFF3D.l,X		; FF 3D FF 3C
	sta $C5E6.w,Y		; 99 E6 C5
	sta $03.b		; 85 03
	ora $50.b,S		; 03 50
	bvc  32.b		; 50 20
	bra -128.b		; 80 80
	jsr $E620.w		; 20 20 E6
	ora $8585.w,Y		; 19 85 85
	ora $03.b,S		; 03 03
	bvc  80.b		; 50 50
	bra -128.b		; 80 80
	jsr $FF20.w		; 20 20 FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	clc		; 18
	adc $9C.b,S		; 63 9C
	and $DC.b,S		; 23 DC
	lda $5C.b,S		; A3 5C
	sta $7C.b,S		; 83 7C
	cmp ($3E.b,X)		; C1 3E
	sbc ($1E.b,X)		; E1 1E
	sbc ($0E.b),Y		; F1 0E
	clc		; 18
	sbc [$9C.b]		; E7 9C
	adc $DC.b,S		; 63 DC
	and $5C.b,S		; 23 5C
	lda $7C.b,S		; A3 7C
	sta $3E.b,S		; 83 3E
	cmp ($1E.b,X)		; C1 1E
	sbc ($0E.b,X)		; E1 0E
	sbc ($FD.b),Y		; F1 FD
	bmi  -2.b		; 30 FE
	bmi  -1.b		; 30 FF
	stx $87.b		; 86 87
	ora [$06.b]		; 07 06
	cmp ($C1.b,X)		; C1 C1
	rts		; 60

	rts		; 60

	sbc $068787.l,X		; FF 87 87 06
	asl $C1.b		; 06 C1
	cmp ($60.b,X)		; C1 60
	rts		; 60

	sbc $F3FFF3.l,X		; FF F3 FF F3
	sbc [$0C.b],Y		; F7 0C
	cop $02.b		; 02 02
	asl $8088.w		; 0E 88 80
	rti		; 40

	stx $85.b		; 86 85
	rti		; 40

	jsr $1507.w		; 20 07 15
	tsb $02F3.w		; 0C F3 02
	cop $88.b		; 02 88
	dey		; 88
	rti		; 40

	rti		; 40

	sta $85.b		; 85 85
	jsr $1520.w		; 20 20 15
	ora $FF.b,X		; 15 FF
	sbc $5BFFFF.l,X		; FF FF FF 5B
	inc $2D.b		; E6 2D
	inc $EC6B.w,X		; FE 6B EC
	eor $A09FD0.l,X		; 5F D0 9F A0
	rol $6341.w,X		; 3E 41 63
	ora $85FB.w,X		; 1D FB 85
	inc $19.b		; E6 19
	inc $EC01.w,X		; FE 01 EC
	ora ($D0.b,S),Y		; 13 D0
	and $415FA0.l		; 2F A0 5F 41
	ldx $E21D.w,Y		; BE 1D E2
	sta $7A.b		; 85 7A
	ora ($F7.b,X)		; 01 F7
	cop $F3.b		; 02 F3
	sbc $808080.l,X		; FF 80 80 80
	ora ($81.b,X)		; 01 81
	ora $03.b,S		; 03 03
	sbc $818080.l,X		; FF 80 80 81
	sta ($03.b,X)		; 81 03
	ora $FF.b,S		; 03 FF
	tsb $0002.w		; 0C 02 00
	adc [$BE.b]		; 67 BE
	sbc ($D1.b,S),Y		; F3 D1
	adc $0769.w		; 6D 69 07
	ora [$01.b]		; 07 01
	ora ($FF.b,X)		; 01 FF
	sbc $0002FF.l,X		; FF FF 02 00
	trb $DBEF.w		; 1C EF DB
	cmp ($65.b),Y		; D1 65
	adc ($58.b,X)		; 61 58
	phy		; 5A
	sty $94.b,X		; 94 94
	eor ($53.b,S),Y		; 53 53
	cmp ($C1.b,X)		; C1 C1
	cop $02.b		; 02 02
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EDCECD.l,X		; FF CD CE ED
	inc $AEAD.w		; EE AD AE
	lda $A6.b		; A5 A6
	and $26.b		; 25 26
	lda $A6.b		; A5 A6
	stz $67.b		; 64 67
	ldy $A7.b		; A4 A7
	dec $EE31.w		; CE 31 EE
	ora ($AE.b),Y		; 11 AE
	eor ($A6.b),Y		; 51 A6
	eor $D926.w,Y		; 59 26 D9
	ldx $59.b		; A6 59
	adc [$98.b]		; 67 98
	lda [$58.b]		; A7 58
	cmp $FFCFFF.l,X		; DF FF CF FF
	cmp ($31.b),Y		; D1 31
	trb $080C.w		; 1C 0C 08
	ora #$2B01.w		; 09 01 2B
	pld		; 2B
	ora $03.b,S		; 03 03
	ora ($0B.b,X)		; 01 0B
	ora [$01.b]		; 07 01
	and ($CE.b),Y		; 31 CE
	tsb $010C.w		; 0C 0C 01
	ora ($2B.b,X)		; 01 2B
	pld		; 2B
	ora $03.b,S		; 03 03
	phd		; 0B
	phd		; 0B
	ora ($01.b,X)		; 01 01
	and $F33FF7.l,X		; 3F F7 3F F3
	adc $40C080.l,X		; 7F 80 C0 40
	bra -128.b		; 80 80
	ldy #$40A0.w		; A0 A0 40
	bra -128.b		; 80 80
	cpy #$8080.w		; C0 80 80
	adc $804040.l,X		; 7F 40 40 80
	bra -96.b		; 80 A0
	ldy #$8080.w		; A0 80 80
	bra -128.b		; 80 80
	cmp $FFCFFF.l		; CF FF CF FF
	sbc [$18.b],Y		; F7 18
	bra -128.b		; 80 80
	trb $DE04.w		; 1C 04 DE
	cmp ($60.b)		; D2 60
	rts		; 60

	ora ($11.b),Y		; 11 11
	jsr $1820.w		; 20 20 18
	sbc [$80.b]		; E7 80
	bra   4.b		; 80 04
	tsb $D2.b		; 04 D2
	cmp ($60.b)		; D2 60
	rts		; 60

	ora ($11.b),Y		; 11 11
	jsr $FF20.w		; 20 20 FF
	sbc $F8FFFF.l,X		; FF FF FF F8
	ora [$E4.b]		; 07 E4
	tas		; 1B
	cpx $CC13.w		; EC 13 CC
	and ($DC.b,S),Y		; 33 DC
	and $1D.b,S		; 23 1D
	sbc $3D.b,S		; E3 3D
	cmp $7C.b,S		; C3 7C
	sta $07.b,S		; 83 07
	sed		; F8
	tas		; 1B
	cpx $13.b		; E4 13
	cpx $CC33.w		; EC 33 CC
	and $DC.b,S		; 23 DC
	sbc $1C.b,S		; E3 1C
	cmp $3C.b,S		; C3 3C
	sta $7C.b,S		; 83 7C
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda [$A8.b]		; A7 A8
	lda [$B8.b],Y		; B7 B8
	sbc [$F8.b]		; E7 F8
	adc [$E8.b]		; 67 E8
	eor [$D8.b],Y		; 57 D8
	lda $D8D7B0.l		; AF B0 D7 D8
	eor [$D0.b],Y		; 57 D0
	tay		; A8
	eor [$B8.b],Y		; 57 B8
	eor [$F8.b]		; 47 F8
	ora [$E8.b]		; 07 E8
	ora [$D8.b],Y		; 17 D8
	and [$B0.b]		; 27 B0
	eor $D027D8.l		; 4F D8 27 D0
	and $030303.l		; 2F 03 03 03
	ora $F0.b,S		; 03 F0
	ora $0F0808.l		; 0F 08 08 0F
	beq   8.b		; F0 08
	php		; 08
	cmp $C3.b,S		; C3 C3
	cmp $C3.b,S		; C3 C3
	sbc [$18.b],Y		; F7 18
	trb $1E04.w		; 1C 04 1E
	ora ($09.b)		; 12 09
	ora #$E718.w		; 09 18 E7
	tsb $04.b		; 04 04
	ora ($12.b)		; 12 12
	ora #$F309.w		; 09 09 F3
	sbc $FFFFF3.l,X		; FF F3 FF FF
	jsr $1020.w		; 20 20 10
	bmi  40.b		; 30 28
	clc		; 18
	trb $08.b		; 14 08
	php		; 08
	tsb $02.b		; 04 02
	ora $05.b		; 05 05
	jsr $10DF.w		; 20 DF 10
	bpl  40.b		; 10 28
	plp		; 28
	trb $14.b		; 14 14
	php		; 08
	php		; 08
	cop $02.b		; 02 02
	ora $05.b		; 05 05
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $E53E.w,X		; DE 3E E5
	ora $2ED2.w,X		; 1D D2 2E
	sta $BA65.w,Y		; 99 65 BA
	lsr $79.b		; 46 79
	sta [$7D.b]		; 87 7D
	sta $FC.b,S		; 83 FC
	cop $3E.b		; 02 3E
	cmp ($1D.b,X)		; C1 1D
.ACCU 8
	sep #$2E		; E2 2E
	cmp ($65.b),Y		; D1 65
	txs		; 9A
	lsr $B9.b		; 46 B9
	sta [$78.b]		; 87 78
	sta $7C.b,S		; 83 7C
	cop $FD.b		; 02 FD
	sbc $3FFF2F.l,X		; FF 2F FF 3F
	ror $3083.w,X		; 7E 83 30
	bmi  81.b		; 30 51
	eor ($A1.b)		; 52 A1
	jsr $4141.w		; 20 41 41
	bra -128.b		; 80 80
	rti		; 40

	sta $7C.b,S		; 83 7C
	bmi  48.b		; 30 30
	eor ($52.b)		; 52 52
	jsr $4120.w		; 20 20 41
	eor ($80.b,X)		; 41 80
	bra  64.b		; 80 40
	rti		; 40

	sbc [$7F.b],Y		; F7 7F
	sbc ($3F.b,S),Y		; F3 3F
	sbc $0202.w,X		; FD 02 02
	jmp $7ECC.w		; 4C CC 7E
	bmi  90.b		; 30 5A
	lsr $D8.b		; 46 D8
	pla		; 68
	bvs 112.b		; 70 70
	bra   2.b		; 80 02
	sbc $CCCC.w,X		; FD CC CC
	bmi  48.b		; 30 30
	lsr $46.b		; 46 46
	pla		; 68
	pla		; 68
	bvs 112.b		; 70 70
	eor $FFFF15.l,X		; 5F 15 FF FF
	txa		; 8A
	ora ($51.b,X)		; 01 51
	ora ($02.b,X)		; 01 02
	tsb $88E7.w		; 0C E7 88
	adc ($50.b,X)		; 61 50
	sbc $FDFFAF.l,X		; FF AF FF FD
	sbc $18FFF3.l,X		; FF F3 FF 18
	sbc $9EFF77.l,X		; FF 77 FF 9E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $67FFFF.l,X		; FF FF FF 67
	sta $768C70.l,X		; 9F 70 8C 76
	stx $8F75.w		; 8E 75 8F
	bvs -117.b		; 70 8B
	.db $62, $9B, $60		; 62 9B 60
	sta $DF23.w,X		; 9D 23 DF
	sta $738C60.l,X		; 9F 60 8C 73
	stx $8F71.w		; 8E 71 8F
	bvs -117.b		; 70 8B
	stz $9B.b,X		; 74 9B
	stz $9D.b		; 64 9D
	.db $62, $DF, $20		; 62 DF 20
	sbc $33FF73.l,X		; FF 73 FF 33
	ora $808020.l,X		; 1F 20 80 80
	rti		; 40

	rti		; 40

	bcs -112.b		; B0 90
	cpy #$60C0.w		; C0 C0 60
	rti		; 40

	rts		; 60

	jsr $80DF.w		; 20 DF 80
	bra  64.b		; 80 40
	rti		; 40

	bcc -112.b		; 90 90
	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	ora $1C.b,S		; 03 1C
	ora $0C.b,S		; 03 0C
	plx		; FA
	ora [$0C.b]		; 07 0C
	php		; 08
	cop $07.b		; 02 07
	sed		; F8
	php		; 08
	php		; 08
	ora $000F00.l		; 0F 00 0F 00
	jmp ($8083.w,X)		; 7C 83 80
	bra -125.b		; 80 83
	jmp ($8080.w,X)		; 7C 80 80
	sbc $3CFF7D.l,X		; FF 7D FF 3C
	cmp [$C0.b]		; C7 C0
	pla		; 68
	pla		; 68
	inx		; E8
	rts		; 60

	bcc  16.b		; 90 10
	bra -72.b		; 80 B8
	bmi 104.b		; 30 68
	plp		; 28
	rti		; 40

	cpy #$683F.w		; C0 3F 68
	pla		; 68
	rts		; 60

	rts		; 60

	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	plp		; 28
	plp		; 28
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	beq  15.b		; F0 0F
	ora $30D3F0.l		; 0F F0 D3 30
	cmp $30.b,S		; C3 30
	xce		; FB
	asl $06.b		; 06 06
	php		; 08
	php		; 08
	ora $01.b,S		; 03 01
	asl $F9.b		; 06 F9
	php		; 08
	php		; 08
	ora ($01.b,X)		; 01 01
	sbc [$FC.b],Y		; F7 FC
	sbc ($FC.b,S),Y		; F3 FC
	sed		; F8
	asl $02.b		; 06 02
	cop $02.b		; 02 02
	ora #$09.b		; 09 09
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $02.b		; 02 02
	asl $F9.b		; 06 F9
	cop $02.b		; 02 02
	ora #$09.b		; 09 09
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	sbc $8181C0.l,X		; FF C0 81 81
	cpy #$C380.w		; C0 80 C3
	.db $42, $80		; 42 80
	bra   1.b		; 80 01
	ora ($C0.b,X)		; 01 C0
	and $808181.l,X		; 3F 81 81 80
	bra  66.b		; 80 42
	.db $42, $80		; 42 80
	bra   1.b		; 80 01
	ora ($CF.b,X)		; 01 CF
	sbc $5FFFCF.l,X		; FF CF FF 5F
	rts		; 60

	cpy #$C0C0.w		; C0 C0 C0
	cpy #$80C0.w		; C0 C0 80
	jsr $4020.w		; 20 20 40
	rti		; 40

	cpy #$60C0.w		; C0 C0 60
	sta $C0C0C0.l,X		; 9F C0 C0 C0
	cpy #$8080.w		; C0 80 80
	jsr $4020.w		; 20 20 40
	rti		; 40

	cpy #$A8C0.w		; C0 C0 A8
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	nop		; EA
	tax		; AA
	nop		; EA
	plb		; AB
	nop		; EA
	plb		; AB
	ldx $BE.b		; A6 BE
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	plb		; AB
	tax		; AA
	plx		; FA
	adc $AAAAA9.l		; 6F A9 AA AA
	tax		; AA
	lda $AAA96A.l		; AF 6A A9 AA
	txs		; 9A
	tax		; AA
	tax		; AA
	tax		; AA
	ror A		; 6A
	lda #$69.b		; A9 69
	tax		; AA
	tax		; AA
	tax		; AA
	ldx $AA.b		; A6 AA
	ror A		; 6A
	tax		; AA
	ldx $A9.b		; A6 A9
	lda #$A5.b		; A9 A5
	ldx $A7.b		; A6 A7
	tax		; AA
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  66.b		; 10 42
	jsl $000C1C.l		; 22 1C 0C 00
	adc $3F1D.w,Y		; 79 1D 3F
	dec A		; 3A
	ora $0C1963.l,X		; 1F 63 19 0C
	eor $408631.l,X		; 5F 31 86 40
	iny		; C8
	rts		; 60

	sta $F875.w		; 8D 75 F8
	ror $0E5F.w,X		; 7E 5F 0E
	adc $4FFF17.l,X		; 7F 17 FF 4F
	sbc $00007F.l,X		; FF 7F 00 00
	ldy $20.b		; A4 20
	txa		; 8A
	adc ($6B.b)		; 72 6B
	adc $1F7FB4.l,X		; 7F B4 7F 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	sbc $42107F.l,X		; FF 7F 10 42
	plp		; 28
	php		; 08
	tsb $7900.w		; 0C 00 79
	ora $3A3F.w,X		; 1D 3F 3A
	ora $0E7F63.l,X		; 1F 63 7F 0E
	cmp $3C.b,S		; C3 3C
	lda #$61.b		; A9 61
	bcc 126.b		; 90 7E
	eor [$7F.b],Y		; 57 7F
	and $629F73.l,X		; 3F 73 9F 62
	adc $1C9E39.l,X		; 7F 39 9E 1C
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	tsb $3900.w		; 0C 00 39
	ora $4EDF.w,X		; 1D DF 4E
	adc $01BF6B.l,X		; 7F 6B BF 01
	eor $001A03.l,X		; 5F 03 1A 00
	stz $3F2C.w		; 9C 2C 3F
	eor $4400.w,Y		; 59 00 44
	sbc [$50.b]		; E7 50
	sbc $6EF761.l		; EF 61 F7 6E
	sbc $46317F.l,X		; FF 7F 31 46
	brk $00.b		; 00 00
	tsb $3900.w		; 0C 00 39
	ora $4EDF.w,X		; 1D DF 4E
	adc $035F6B.l,X		; 7F 6B 5F 03
	sbc [$01.b]		; E7 01
	sta $53372A.l		; 8F 2A 37 53
	and $6A9F59.l,X		; 3F 59 9F 6A
	sbc [$50.b]		; E7 50
	sbc $6EF761.l		; EF 61 F7 6E
	sbc $46317F.l,X		; FF 7F 31 46
	brk $00.b		; 00 00
	tsb $3900.w		; 0C 00 39
	ora $4EDF.w,X		; 1D DF 4E
	adc $2FBF6B.l,X		; 7F 6B BF 2F
	lda $0DBF1E.l,X		; BF 1E BF 0D
	inc A		; 1A
	brk $9C.b		; 00 9C
	bit $4400.w		; 2C 00 44
	sbc [$50.b]		; E7 50
	sbc $6EF761.l		; EF 61 F7 6E
	sbc $41107F.l,X		; FF 7F 10 41
	.db $42, $08		; 42 08
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	rts		; 60

	.db $62, $EA, $6A		; 62 EA 6A
	stz $73.b,X		; 74 73
	sbc $41107F.l,X		; FF 7F 10 41
	.db $42, $08		; 42 08
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7FFF7C.l,X		; 1F 7C FF 7F
	brk $00.b		; 00 00
	tsb $1C.b		; 04 1C
	bcs  77.b		; B0 4D
	jmp ($1F7F.w,X)		; 7C 7F 1F
	dec A		; 3A
	adc $11FD67.l,X		; 7F 67 FD 11
	eor $288403.l,X		; 5F 03 84 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $7E1F.w,X		; 7E 1F 7E
	inc A		; 1A
	brk $9F.b		; 00 9F
	rts		; 60

	sbc $00007F.l,X		; FF 7F 00 00
	.db $42, $08		; 42 08
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7FFF7C.l,X		; 1F 7C FF 7F
	brk $00.b		; 00 00
	.db $42, $14		; 42 14
	phb		; 8B
	php		; 08
	adc $5F1D.w,Y		; 79 1D 5F
	rol $6B7F.w,X		; 3E 7F 6B
	lda $035F01.l,X		; BF 01 5F 03
	brk $29.b		; 00 29
	sty $39.b		; 84 39
	lda $44E45A.l		; AF 5A E4 44
	nop		; EA
	eor $7A71.w,X		; 5D 71 7A
	and [$7F.b],Y		; 37 7F
	sbc $00007F.l,X		; FF 7F 00 00
	.db $42, $14		; 42 14
	phb		; 8B
	php		; 08
	adc $5F1D.w,Y		; 79 1D 5F
	rol $6B7F.w,X		; 3E 7F 6B
	txa		; 8A
	plp		; 28
	inc $1538.w		; EE 38 15
	brk $9C.b		; 00 9C
	bit $035F.w		; 2C 5F 03
	.db $82, $34, $C8		; 82 34 C8
	eor $6A4F.w,Y		; 59 4F 6A
	eor [$7F.b],Y		; 57 7F
	sbc $00007F.l,X		; FF 7F 00 00
	.db $42, $14		; 42 14
	phb		; 8B
	php		; 08
	adc $5F1D.w,Y		; 79 1D 5F
	rol $6B7F.w,X		; 3E 7F 6B
	lda $32DF4B.l,X		; BF 4B DF 32
	ora $0DBE1A.l,X		; 1F 1A BE 0D
	phy		; 5A
	bpl -126.b		; 10 82
	bit $E2.b,X		; 34 E2
	mvn $61,$EB		; 54 EB 61
	and $7F.b,X		; 35 7F
	sbc $14427F.l,X		; FF 7F 42 14
	.db $42, $14		; 42 14
	sta $7908.w		; 8D 08 79
	ora $3E5F.w,X		; 1D 5F 3E
	adc $01626B.l,X		; 7F 6B 62 01
	tsb $0A.b		; 04 0A
	lda [$16.b]		; A7 16
	and $6A9F59.l,X		; 3F 59 9F 6A
	.db $82, $34, $AA		; 82 34 AA
	eor $7671.w,Y		; 59 71 76
	asl $7F.b,X		; 16 7F
	sbc $00007F.l,X		; FF 7F 00 00
	php		; 08
	and ($8C.b,X)		; 21 8C
	adc $2533.w,X		; 7D 33 25
	mvn $54,$29		; 54 29 54
	and #$88.b		; 29 88
	and ($14.b,X)		; 21 14
	jsl $8042DC.l		; 22 DC 42 80
	ora ($00.b,X)		; 01 00
	ora $F0.b,S		; 03 F0
	eor $10.b,S		; 43 10
	ror $7EB5.w,X		; 7E B5 7E
	phy		; 5A
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $42.b		; 00 42
	trb $00.b		; 14 00
	and #$84.b		; 29 84
	and $5AAF.w,Y		; 39 AF 5A
	sta $7908.w		; 8D 08 79
	ora $63B8.w,X		; 1D B8 63
	lda $BA67.w,Y		; B9 67 BA
	rtl		; 6B

	tyx		; BB
	adc $DC6FDB.l		; 6F DB 6F DC
	adc ($DD.b,S),Y		; 73 DD
	adc [$DE.b],Y		; 77 DE
	tda		; 7B
	sbc $00007F.l,X		; FF 7F 00 00
	tsb $1C.b		; 04 1C
	bcs  77.b		; B0 4D
	jmp ($1F7F.w,X)		; 7C 7F 1F
	dec A		; 3A
	adc $11FD67.l,X		; 7F 67 FD 11
	eor $288403.l,X		; 5F 03 84 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $7E1F.w,X		; 7E 1F 7E
	inc A		; 1A
	brk $9F.b		; 00 9F
	rts		; 60

	sbc $00007F.l,X		; FF 7F 00 00
	.db $42, $08		; 42 08
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7FFF7C.l,X		; 1F 7C FF 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $5B08.w		; 4E 08 5B
	and $5F.b		; 25 5F
	lsr $5F.b		; 46 5F
	rtl		; 6B

	eor $290003.l,X		; 5F 03 00 29
	sty $39.b		; 84 39
	lda $30C25A.l		; AF 5A C2 30
	ldx $69.b		; A6 69
	php		; 08
	ply		; 7A
	beq 126.b		; F0 7E
	rol $7F.b,X		; 36 7F
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	lsr $5B08.w		; 4E 08 5B
	and $5F.b		; 25 5F
	lsr $5F.b		; 46 5F
	rtl		; 6B

	lsr A		; 4A
	bit $5F.b		; 24 5F
	ora $17.b,S		; 03 17
	brk $5D.b		; 00 5D
	bpl -82.b		; 10 AE
	bit $C3.b,X		; 34 C3
	mvp $69,$A8		; 44 A8 69
	bcs 126.b		; B0 7E
	rol $7F.b,X		; 36 7F
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	lsr $5B08.w		; 4E 08 5B
	and $5F.b		; 25 5F
	lsr $5F.b		; 46 5F
	rtl		; 6B

	eor $018003.l,X		; 5F 03 80 01
	bit $0A.b		; 24 0A
	bit #$12.b		; 89 12
	and $6A9F59.l,X		; 3F 59 9F 6A
	cmp $44.b,S		; C3 44
	adc $1576.w		; 6D 76 15
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $00.b		; 00 00
	brk $4E.b		; 00 4E
	php		; 08
	tad		; 5B
	and $5F.b		; 25 5F
	lsr $5F.b		; 46 5F
	rtl		; 6B

	cmp $1F3F37.l,X		; DF 37 3F 1F
	adc $09BF0E.l,X		; 7F 0E BF 09
	and $C310.w,X		; 3D 10 C3
	mvp $69,$A8		; 44 A8 69
	bcs 126.b		; B0 7E
	rol $7F.b,X		; 36 7F
	sbc $00007F.l,X		; FF 7F 00 00
	php		; 08
	and ($8C.b,X)		; 21 8C
	adc $2533.w,X		; 7D 33 25
	mvn $54,$29		; 54 29 54
	and #$88.b		; 29 88
	and ($14.b,X)		; 21 14
	jsl $8042DC.l		; 22 DC 42 80
	ora ($00.b,X)		; 01 00
	ora $F0.b,S		; 03 F0
	eor $10.b,S		; 43 10
	ror $7EB5.w,X		; 7E B5 7E
	phy		; 5A
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $42.b		; 00 42
	trb $00.b		; 14 00
	and #$84.b		; 29 84
	and $5AAF.w,Y		; 39 AF 5A
	sta $7908.w		; 8D 08 79
	ora $63B8.w,X		; 1D B8 63
	lda $BA67.w,Y		; B9 67 BA
	rtl		; 6B

	tyx		; BB
	adc $DC6FDB.l		; 6F DB 6F DC
	adc ($DD.b,S),Y		; 73 DD
	adc [$DE.b],Y		; 77 DE
	tda		; 7B
	sbc $00007F.l,X		; FF 7F 00 00
	tsb $1C.b		; 04 1C
	bcs  77.b		; B0 4D
	jmp ($B97F.w,X)		; 7C 7F B9
	eor $51F9.w		; 4D F9 51
	inc A		; 1A
	lsr $5A.b,X		; 56 5A
	phy		; 5A
	ply		; 7A
	lsr $62BB.w,X		; 5E BB 62
	stp		; DB
	ror $1C.b		; 66 1C
	rtl		; 6B

	bit $7D6F.w,X		; 3C 6F 7D
	adc ($9D.b,S),Y		; 73 9D
	adc [$DE.b],Y		; 77 DE
	tda		; 7B
	brk $00.b		; 00 00
	adc $0C.b,S		; 63 0C
	bvc   8.b		; 50 08
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	dey		; 88
	plp		; 28
	eor $001803.l,X		; 5F 03 18 00
	sta $28.b		; 85 28
	lsr $D661.w		; 4E 61 D6
	ror $1104.w,X		; 7E 04 11
	asl $1A.b		; 06 1A
	cpy $FF32.w		; CC 32 FF
	adc $630000.l,X		; 7F 00 00 63
	tsb $0850.w		; 0C 50 08
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $0B5F09.l,X		; BF 09 5F 0B
	lda $28.b		; A5 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $11AE.w,X		; 7E AE 11
	stz $2A.b,X		; 74 2A
	jmp $7FFF53.l		; 5C 53 FF 7F
	brk $00.b		; 00 00
	adc $0C.b,S		; 63 0C
	bvc   8.b		; 50 08
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $2904.w,X		; 7E 04 29
	lda $2D.b,S		; A3 2D
	sty $3A.b		; 84 3A
	eor ($6B.b),Y		; 51 6B
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	rti		; 40

	lsr A		; 4A
	rts		; 60

	lsr $5280.w		; 4E 80 52
	ldy #$C056.w		; A0 56 C0
	phy		; 5A
	cpx #$005E.w		; E0 5E 00
	adc $20.b,S		; 63 20
	adc [$40.b]		; 67 40
	rtl		; 6B

	rts		; 60

	adc $A07380.l		; 6F 80 73 A0
	adc [$C0.b],Y		; 77 C0
	tda		; 7B
	cpx #$007F.w		; E0 7F 00
	brk $11.b		; 00 11
	mvp $48,$12		; 44 12 48
	ora ($4C.b,S),Y		; 13 4C
	trb $50.b		; 14 50
	ora $54.b,X		; 15 54
	asl $58.b,X		; 16 58
	ora [$5C.b],Y		; 17 5C
	clc		; 18
	rts		; 60

	ora $1A64.w,Y		; 19 64 1A
	pla		; 68
	tas		; 1B
	jmp ($701C.w)		; 6C 1C 70
	ora $1E74.w,X		; 1D 74 1E
	sei		; 78
	ora $00107C.l,X		; 1F 7C 10 00
	mvp $E0,$20		; 44 20 E0
	adc $007F80.l,X		; 7F 80 7F 00
	adc $447FFF.l,X		; 7F FF 7F 44
	jsr $7FE0.w		; 20 E0 7F
	bra 127.b		; 80 7F
	brk $7F.b		; 00 7F
	beq 127.b		; F0 7F
	mvp $80,$20		; 44 20 80
	adc $807F00.l,X		; 7F 00 7F 80
	ror $7FE0.w,X		; 7E E0 7F
	brk $02.b		; 00 02
	mvp $80,$20		; 44 20 80
	adc $FF7F00.l,X		; 7F 00 7F FF
	adc $447FE0.l,X		; 7F E0 7F 44
	jsr $7F80.w		; 20 80 7F
	brk $7F.b		; 00 7F
	beq 127.b		; F0 7F
	cpx #$447F.w		; E0 7F 44
	jsr $7F00.w		; 20 00 7F
	bra 126.b		; 80 7E
	cpx #$807F.w		; E0 7F 80
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tyx		; BB
	stz $58.b		; 64 58
	sbc #$F2.b		; E9 F2
	tsb $4821.w		; 0C 21 48
	mvp $81,$43		; 44 43 81
	bra   2.b		; 80 02
	ldy #$0040.w		; A0 40 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4001.w		; 20 01 40
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $42.b		; 04 42
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	tsb $10.b		; 04 10
	jsr $0081.w		; 20 81 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	jmp $7FA8C1.l		; 5C C1 A8 7F
	lda ($F4.b)		; B2 F4
	sta $FC.b		; 85 FC
	plx		; FA
	txa		; 8A
	brk $04.b		; 00 04
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $84.b		; 00 84
	ora $00.b,X		; 15 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	ora $00.b,S		; 03 00
	sei		; 78
	tay		; A8
	bpl  16.b		; 10 10
	sta ($80.b,X)		; 81 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	.db $42, $20		; 42 20
	php		; 08
	bpl   2.b		; 10 02
	rti		; 40

	ora ($02.b,X)		; 01 02
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($68.b,X)		; 21 68
	dec $26.b		; C6 26
	brk $8C.b		; 00 8C
	.db $82, $34, $01		; 82 34 01
	bit $80.b		; 24 80
	sty $48.b,X		; 94 48
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	php		; 08
	jsr $2000.w		; 20 00 20
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	rti		; 40

	dey		; 88
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DA.b		; 00 DA
	bvc 120.b		; 50 78
	lda ($C8.b)		; B2 C8
	adc #$4F.b		; 69 4F
	stx $FB1E.w		; 8E 1E FB
	and $04.b		; 25 04
	nop		; EA
	iny		; C8
	pha		; 48
	php		; 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	jsr $0840.w		; 20 40 08
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $00.b		; 46 00
	.db $82, $00, $48		; 82 00 48
	ora ($00.b),Y		; 11 00
	jsr $4041.w		; 20 41 40
	jsr $0080.w		; 20 80 00
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	brk $1A.b		; 00 1A
	brk $20.b		; 00 20
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b)		; 12 04
	sty $1E.b		; 84 1E
	adc $2E.b,S		; 63 2E
	cop $CD.b		; 02 CD
	cpx #$9060.w		; E0 60 90
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -80.b		; 80 B0
	brk $08.b		; 00 08
	rti		; 40

	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra  32.b		; 80 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $01.b		; 00 01
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	pha		; 48
	.db $42, $E1		; 42 E1
	cmp $68.b		; C5 68
	sta [$7E.b]		; 87 7E
	tsa		; 3B
	ora ($C5.b,S),Y		; 13 C5
	jmp $2E02B4.l		; 5C B4 02 2E
	php		; 08
	bpl   4.b		; 10 04
	clc		; 18
	brk $20.b		; 00 20
	cop $44.b		; 02 44
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ldy #$0000.w		; A0 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	php		; 08
	eor ($20.b,X)		; 41 20
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	php		; 08
	bra  64.b		; 80 40
	brk $10.b		; 00 10
	bit $4104.w		; 2C 04 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0031.w		; 20 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D2.b		; 00 D2
	bra -127.b		; 80 81
	sta ($42.b,X)		; 81 42
	.db $82, $F7, $82		; 82 F7 82
	ldy #$2583.w		; A0 83 25
	sty $D4.b		; 84 D4
	sty $8F.b		; 84 8F
	sta $0E.b		; 85 0E
	stx $CF.b		; 86 CF
	stx $72.b		; 86 72
	sta [$45.b]		; 87 45
	dey		; 88
	jmp.w [$9188]		; DC 88 91
	bit #$1C.b		; 89 1C
	txa		; 8A
	cmp ($8A.b),Y		; D1 8A
	bvc -117.b		; 50 8B
	sbc ($8B.b,S),Y		; F3 8B
	ldx #$638C.w		; A2 8C 63
	sta $8E24.w		; 8D 24 8E
	cmp ($8E.b,X)		; C1 8E
	.db $82, $8F, $49		; 82 8F 49
	bcc  -2.b		; 90 FE
	bcc  43.b		; 90 2B
	sta ($34.b)		; 92 34
	sta ($E9.b,S),Y		; 93 E9
	sta ($B6.b,S),Y		; 93 B6
	sty $59.b,X		; 94 59
	sta $0E.b,X		; 95 0E
	stx $A5.b,Y		; 96 A5
	stx $48.b,Y		; 96 48
	sta [$DF.b],Y		; 97 DF
	sta [$76.b],Y		; 97 76
	tya		; 98
	eor #$99.b		; 49 99
	tsb $9A.b		; 04 9A
	lda $9B6E9A.l,X		; BF 9A 6E 9B
	and $9C.b,S		; 23 9C
	cpx $9C.b		; E4 9C
	lda [$9D.b],Y		; B7 9D
	adc ($9E.b)		; 72 9E
	tas		; 1B
	sta $2B9FAC.l,X		; 9F AC 9F 2B
	ldy #$A0CE.w		; A0 CE A0
	adc [$A1.b],Y		; 77 A1
	rol $A2.b		; 26 A2
	cmp $A372A2.l		; CF A2 72 A3
	xba		; EB
	lda $88.b,S		; A3 88
	ldy $19.b		; A4 19
	lda $DA.b		; A5 DA
	lda $A1.b		; A5 A1
	ldx $44.b		; A6 44
	lda [$D5.b]		; A7 D5
	lda [$8A.b]		; A7 8A
	tay		; A8
	phk		; 4B
	lda #$12.b		; A9 12
	tax		; AA
	cmp $82AA.w		; CD AA 82
	plb		; AB
	eor $ACC8AC.l		; 4F AC C8 AC
	sta $AD.b,X		; 95 AD
	.db $62, $AE, $05		; 62 AE 05
	lda $3FAFA8.l		; AF A8 AF 3F
	bcs  12.b		; B0 0C
	lda ($C7.b),Y		; B1 C7
	lda ($9A.b),Y		; B1 9A
	lda ($67.b)		; B2 67
	lda ($2E.b,S),Y		; B3 2E
	ldy $FB.b,X		; B4 FB
	ldy $C2.b,X		; B4 C2
	lda $95.b,X		; B5 95
	ldx $5C.b,Y		; B6 5C
	lda [$05.b],Y		; B7 05
	clv		; B8
	tay		; A8
	clv		; B8
	eor [$B9.b],Y		; 57 B9
	tsb $B5BA.w		; 0C BA B5
	tsx		; BA
	bvs -69.b		; 70 BB
	ora $BCD4BC.l,X		; 1F BC D4 BC
	adc $38BD.w,X		; 7D BD 38
	ldx $BEB7.w,Y		; BE B7 BE
	ror $BF.b		; 66 BF
	tas		; 1B
	cpy #$C0C4.w		; C0 C4 C0
	adc $C1FEC1.l,X		; 7F C1 FE C1
	lda $C36EC2.l,X		; BF C2 6E C3
	and $C4D2C4.l		; 2F C4 D2 C4
	tda		; 7B
	cmp $36.b		; C5 36
	dec $C1.b		; C6 C1
	dec $70.b		; C6 70
	cmp [$31.b]		; C7 31
	iny		; C8
	asl A		; 0A
	cmp #$1D.b		; C9 1D
	sbc #$07.b		; E9 07
	txy		; 9B
	php		; 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	asl $F3E2.w		; 0E E2 F3
	php		; 08
	tsb $48.b		; 04 48
	dec $1A.b,X		; D6 1A
	cmp $08.b,S		; C3 08
	asl $48.b		; 06 48
	inc $0A.b		; E6 0A
	plb		; AB
	php		; 08
	php		; 08
	pha		; 48
	inc $0A.b		; E6 0A
	tyx		; BB
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $FA.b,X		; F6 FA
	plb		; AB
	php		; 08
	tsb $F648.w		; 0C 48 F6
	plx		; FA
	tyx		; BB
	php		; 08
	asl $0648.w		; 0E 48 06
	nop		; EA
	tyx		; BB
	php		; 08
	jsr $FF48.w		; 20 48 FF
	sbc ($CB.b),Y		; F1 CB
	php		; 08
	jsl $01EF48.l		; 22 48 EF 01
	wai		; CB
	php		; 08
	bit $48.b		; 24 48
	sbc [$09.b]		; E7 09
	stp		; DB
	php		; 08
	rol $48.b		; 26 48
	sbc $A3FF.w,Y		; F9 FF A3
	brk $28.b		; 00 28
	rti		; 40

	plx		; FA
	inc $00DB.w,X		; FE DB 00
	and #$40.b		; 29 40
	asl A		; 0A
	inc $00EB.w		; EE EB 00
	rol A		; 2A
	rti		; 40

	ora ($E6.b)		; 12 E6
	xba		; EB
	brk $2B.b		; 00 2B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $00.b,S		; A3 00
	bit $E540.w		; 2C 40 E5
	ora ($EB.b,S),Y		; 13 EB
	brk $2D.b		; 00 2D
	rti		; 40

	asl $F2.b		; 06 F2
	plb		; AB
	brk $2E.b		; 00 2E
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b,S),Y		; B3 00
	and $EA0E40.l		; 2F 40 0E EA
	lda ($00.b,S),Y		; B3 00
	sec		; 38
	rti		; 40

	rol $D2.b		; 26 D2
	ldx $00.b		; A6 00
	and $2640.w,Y		; 39 40 26
	cmp ($AE.b)		; D2 AE
	brk $3A.b		; 00 3A
	rti		; 40

	asl $B0DA.w,X		; 1E DA B0
	brk $3B.b		; 00 3B
	rti		; 40

	cmp $00FB19.l,X		; DF 19 FB 00
	bit $2E40.w,X		; 3C 40 2E
	dex		; CA
	tax		; AA
	brk $3D.b		; 00 3D
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b)		; B2 00
	rol $E140.w,X		; 3E 40 E1
	ora [$F3.b],Y		; 17 F3
	brk $3F.b		; 00 3F
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp ($00.b,S),Y		; D3 00
	rti		; 40

	rti		; 40

	jsr $F6FA.w		; 20 FA F6
	cpy #$0008.w		; C0 08 00
	pha		; 48
	nop		; EA
	asl $C0.b		; 06 C0
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $E0.b,X		; F6 E0
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	nop		; EA
	asl $E0.b		; 06 E0
	php		; 08
	php		; 08
	pha		; 48
	inx		; E8
	php		; 08
	ldy #$0A08.w		; A0 08 0A
	pha		; 48
	sed		; F8
	sed		; F8
	ldy #$0C08.w		; A0 08 0C
	pha		; 48
	inx		; E8
	php		; 08
	bcs   8.b		; B0 08
	asl $F848.w		; 0E 48 F8
	sed		; F8
	bcs   8.b		; B0 08
	jsr $0948.w		; 20 48 09
	sbc $2200F0.l		; EF F0 00 22
	rti		; 40

	nop		; EA
	asl $00D0.w		; 0E D0 00
	and $40.b,S		; 23 40
.INDEX 8
	sep #$16		; E2 16
	cld		; D8
	brk $24.b		; 00 24
	rti		; 40

	nop		; EA
	asl $00D8.w		; 0E D8 00
	and $40.b		; 25 40
.INDEX 8
	sep #$16		; E2 16
	cpx #$00.b		; E0 00
	rol $40.b		; 26 40
.INDEX 8
	sep #$16		; E2 16
	inx		; E8
	brk $27.b		; 00 27
	rti		; 40

	tsb $F4.b		; 04 F4
	sed		; F8
	brk $28.b		; 00 28
	rti		; 40

	dec $22.b,X		; D6 22
	sed		; F8
	brk $29.b		; 00 29
	rti		; 40

	dec $F81A.w,X		; DE 1A F8
	brk $2A.b		; 00 2A
	rti		; 40

	ora [$F1.b]		; 07 F1
	inc $2B00.w,X		; FE 00 2B
	rti		; 40

	php		; 08
	beq -84.b		; F0 AC
	brk $2C.b		; 00 2C
	rti		; 40

	php		; 08
	beq -76.b		; F0 B4
	brk $2D.b		; 00 2D
	rti		; 40

	php		; 08
	beq -68.b		; F0 BC
	brk $2E.b		; 00 2E
	rti		; 40

	php		; 08
	beq -60.b		; F0 C4
	brk $2F.b		; 00 2F
	rti		; 40

	cpx #$18.b		; E0 18
	ldx $00.b		; A6 00
	and ($40.b)		; 32 40
	cld		; D8
	jsr $00AE.w		; 20 AE 00
	and ($40.b,S),Y		; 33 40
	cpx #$18.b		; E0 18
	ldx $3400.w		; AE 00 34
	rti		; 40

	brk $F8.b		; 00 F8
	tya		; 98
	brk $35.b		; 00 35
	rti		; 40

	bpl -24.b		; 10 E8
	clv		; B8
	brk $36.b		; 00 36
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	bcc   0.b		; 90 00
	and [$40.b],Y		; 37 40
	cmp $F01F.w,Y		; D9 1F F0
	brk $38.b		; 00 38
	rti		; 40

	sbc ($17.b,X)		; E1 17
	beq   0.b		; F0 00
	and $0140.w,Y		; 39 40 01
	sbc [$F0.b],Y		; F7 F0
	brk $3A.b		; 00 3A
	rti		; 40

	asl $07E9.w,X		; 1E E9 07
	ldx $0008.w		; AE 08 00
	pha		; 48
	sbc $AEF7.w,Y		; F9 F7 AE
	php		; 08
	cop $48.b		; 02 48
	sbc #$07.b		; E9 07
	ldx $0408.w,Y		; BE 08 04
	pha		; 48
	sbc $BEF7.w,Y		; F9 F7 BE
	php		; 08
	asl $48.b		; 06 48
	sbc #$07.b		; E9 07
	dec $0808.w		; CE 08 08
	pha		; 48
	sbc $CEF7.w,Y		; F9 F7 CE
	php		; 08
	asl A		; 0A
	pha		; 48
	ora #$E7.b		; 09 E7
	lda [$08.b],Y		; B7 08
	tsb $0948.w		; 0C 48 09
	sbc [$E7.b]		; E7 E7
	php		; 08
	asl $D948.w		; 0E 48 D9
	ora [$A8.b],Y		; 17 A8
	php		; 08
	jsr $E548.w		; 20 48 E5
	phd		; 0B
	dec $2208.w,X		; DE 08 22
	pha		; 48
	ora #$EF.b		; 09 EF
	cmp [$00.b],Y		; D7 00
	bit $40.b		; 24 40
	sbc ($17.b,X)		; E1 17
	inc $00.b,X		; F6 00
	and $40.b		; 25 40
	ora $B7DF.w,Y		; 19 DF B7
	brk $26.b		; 00 26
	rti		; 40

	sbc ($17.b,X)		; E1 17
	clv		; B8
	brk $27.b		; 00 27
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp [$00.b]		; C7 00
	plp		; 28
	rti		; 40

	jsl $00BBD6.l		; 22 D6 BB 00
	and #$40.b		; 29 40
	rol A		; 2A
	dec $00BB.w		; CE BB 00
	rol A		; 2A
	rti		; 40

	sbc ($06.b)		; F2 06
	ldx $00.b		; A6 00
	pld		; 2B
	rti		; 40

	plx		; FA
	inc $00A6.w,X		; FE A6 00
	bit $0240.w		; 2C 40 02
	inc $A6.b,X		; F6 A6
	brk $2D.b		; 00 2D
	rti		; 40

	and ($C6.b)		; 32 C6
	ldx $2E00.w,Y		; BE 00 2E
	rti		; 40

	plx		; FA
	inc $00DE.w,X		; FE DE 00
	and $F60240.l		; 2F 40 02 F6
	dec $3400.w,X		; DE 00 34
	rti		; 40

	asl A		; 0A
	inc $00DF.w		; EE DF 00
	and $40.b,X		; 35 40
	ora ($E6.b)		; 12 E6
	sbc [$00.b],Y		; F7 00
	rol $40.b,X		; 36 40
	cpx $14.b		; E4 14
	inc $3700.w		; EE 00 37
	rti		; 40

	ora $BADB.w,X		; 1D DB BA
	brk $38.b		; 00 38
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp $403900.l		; CF 00 39 40
	dec $F91A.w,X		; DE 1A F9
	brk $3A.b		; 00 3A
	rti		; 40

	clc		; 18
	cpx #$F8.b		; E0 F8
	brk $3B.b		; 00 3B
	rti		; 40

	trb $16DA.w		; 1C DA 16
	ldy $08.b		; A4 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	inc $08.b		; E6 08
	cop $48.b		; 02 48
	php		; 08
	inx		; E8
	dec $08.b,X		; D6 08
	tsb $48.b		; 04 48
	inx		; E8
	php		; 08
	ldx $0608.w		; AE 08 06
	pha		; 48
	sed		; F8
	sed		; F8
	ldx $0808.w		; AE 08 08
	pha		; 48
	inx		; E8
	php		; 08
	ldx $0A08.w,Y		; BE 08 0A
	pha		; 48
	inx		; E8
	php		; 08
	dec $0C08.w		; CE 08 0C
	pha		; 48
	sed		; F8
	sed		; F8
	dec $08.b,X		; D6 08
	asl $F848.w		; 0E 48 F8
	sed		; F8
	ldx $2008.w,Y		; BE 08 20
	pha		; 48
	bpl -24.b		; 10 E8
	inc $00.b,X		; F6 00
	jsl $15E340.l		; 22 40 E3 15
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	ora $E3.b,X		; 15 E3
	sed		; F8
	brk $24.b		; 00 24
	rti		; 40

	tas		; 1B
	cmp $00E5.w,X		; DD E5 00
	and $40.b		; 25 40
	sbc [$11.b]		; E7 11
	inc $2600.w		; EE 00 26
	rti		; 40

	sbc $00EE09.l		; EF 09 EE 00
	and [$40.b]		; 27 40
	inx		; E8
	bpl -26.b		; 10 E6
	brk $28.b		; 00 28
	rti		; 40

	beq   8.b		; F0 08
	inc $00.b		; E6 00
	and #$40.b		; 29 40
	php		; 08
	beq -82.b		; F0 AE
	brk $2A.b		; 00 2A
	rti		; 40

	php		; 08
	beq -74.b		; F0 B6
	brk $2B.b		; 00 2B
	rti		; 40

	php		; 08
	beq -66.b		; F0 BE
	brk $2C.b		; 00 2C
	rti		; 40

	php		; 08
	beq -58.b		; F0 C6
	brk $2D.b		; 00 2D
	rti		; 40

	sed		; F8
	brk $CE.b		; 00 CE
	brk $2E.b		; 00 2E
	rti		; 40

	brk $F8.b		; 00 F8
	dec $2F00.w		; CE 00 2F
	rti		; 40

	php		; 08
	beq -50.b		; F0 CE
	brk $32.b		; 00 32
	rti		; 40

	beq   8.b		; F0 08
	dec $3300.w,X		; DE 00 33
	rti		; 40

	bpl -24.b		; 10 E8
	clv		; B8
	brk $34.b		; 00 34
	rti		; 40

	clc		; 18
	cpx #$E0.b		; E0 E0
	brk $35.b		; 00 35
	rti		; 40

	cpx #$18.b		; E0 18
	sbc $3600.w,Y		; F9 00 36
	rti		; 40

	asl $F1.b,X		; 16 F1
	sbc $0008D1.l,X		; FF D1 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	ora ($DF.b),Y		; 11 DF
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	inc $E102.w		; EE 02 E1
	php		; 08
	asl $48.b		; 06 48
	inc $E1F2.w,X		; FE F2 E1
	php		; 08
	php		; 08
	pha		; 48
	asl $E1E2.w		; 0E E2 E1
	php		; 08
	asl A		; 0A
	pha		; 48
	asl $F1E2.w		; 0E E2 F1
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($F1.b)		; F2 F1
	php		; 08
	asl $F748.w		; 0E 48 F7
	sbc $08C1.w,Y		; F9 C1 08
	jsr $3648.w		; 20 48 36
.ACCU 16
.INDEX 16
	rep #$BF		; C2 BF
	brk $22.b		; 00 22
	rti		; 40

	rol A		; 2A
	dec $00C8.w		; CE C8 00
	and $40.b,S		; 23 40
	bit $D4.b		; 24 D4
	cmp #$2400.w		; C9 00 24
	rti		; 40

	asl $FADA.w,X		; 1E DA FA
	brk $25.b		; 00 25
	rti		; 40

	inc $12.b		; E6 12
	cpx $00.b		; E4 00
	rol $40.b		; 26 40
	inc $12.b		; E6 12
	cpx $2700.w		; EC 00 27
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $28.b		; 00 28
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b),Y		; F1 00
	and #$F640.w		; 29 40 F6
	cop $F9.b		; 02 F9
	brk $2A.b		; 00 2A
	rti		; 40

	and $00C3C9.l		; 2F C9 C3 00
	pld		; 2B
	rti		; 40

	asl $CDDA.w,X		; 1E DA CD
	brk $2C.b		; 00 2C
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	and $0740.w		; 2D 40 07
	sbc ($C9.b),Y		; F1 C9
	brk $2E.b		; 00 2E
	rti		; 40

	ora $1ED2.w,X		; 1D D2 1E
	ldx $0008.w		; AE 08 00
	pha		; 48
	ora $EB.b		; 05 EB
	sbc $08.b		; E5 08
	cop $48.b		; 02 48
	clc		; 18
	cld		; D8
	lda $0408.w,X		; BD 08 04
	pha		; 48
	bpl -32.b		; 10 E0
	cmp $0608.w		; CD 08 06
	pha		; 48
	sed		; F8
	sed		; F8
	lda $08.b		; A5 08
	php		; 08
	pha		; 48
	inx		; E8
	php		; 08
	lda $0A08.w		; AD 08 0A
	pha		; 48
	php		; 08
	inx		; E8
	lda $08.b,X		; B5 08
	tsb $F848.w		; 0C 48 F8
	sed		; F8
	lda $08.b,X		; B5 08
	asl $E848.w		; 0E 48 E8
	php		; 08
	lda $2008.w,X		; BD 08 20
	pha		; 48
	brk $F0.b		; 00 F0
	cmp $2208.w		; CD 08 22
	pha		; 48
	bpl -24.b		; 10 E8
	sbc $00.b,X		; F5 00
	bit $40.b		; 24 40
	cop $F6.b		; 02 F6
	cmp $2500.w,X		; DD 00 25
	rti		; 40

	jsl $00E1D6.l		; 22 D6 E1 00
	rol $40.b		; 26 40
	ora ($E5.b,S),Y		; 13 E5
	plx		; FA
	brk $27.b		; 00 27
	rti		; 40

	asl A		; 0A
	inc $00DD.w		; EE DD 00
	plp		; 28
	rti		; 40

	ora $00DDD9.l,X		; 1F D9 DD 00
	and #$2840.w		; 29 40 28
	bne -61.b		; D0 C3
	brk $2A.b		; 00 2A
	rti		; 40

	bmi -56.b		; 30 C8
	cpy $00.b		; C4 00
	pld		; 2B
	rti		; 40

	jsr $D5D8.w		; 20 D8 D5
	brk $2C.b		; 00 2C
	rti		; 40

	beq   8.b		; F0 08
	lda $00.b		; A5 00
	and $F840.w		; 2D 40 F8
	brk $C5.b		; 00 C5
	brk $2E.b		; 00 2E
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $00.b		; C5 00
	and $F00840.l		; 2F 40 08 F0
	cmp $00.b		; C5 00
	bit $40.b,X		; 34 40
	bpl -24.b		; 10 E8
	cmp $00.b		; C5 00
	and $40.b,X		; 35 40
	inx		; E8
	bpl -51.b		; 10 CD
	brk $36.b		; 00 36
	rti		; 40

	beq   8.b		; F0 08
	cmp $3700.w		; CD 00 37
	rti		; 40

	sed		; F8
	brk $CD.b		; 00 CD
	brk $38.b		; 00 38
	rti		; 40

	sed		; F8
	brk $D5.b		; 00 D5
	brk $39.b		; 00 39
	rti		; 40

	cpx #$B618.w		; E0 18 B6
	brk $3A.b		; 00 3A
	rti		; 40

	ora $D7E60A.l,X		; 1F 0A E6 D7
	php		; 08
	brk $48.b		; 00 48
	asl A		; 0A
	inc $E7.b		; E6 E7
	php		; 08
	cop $48.b		; 02 48
	inc A		; 1A
	dec $D0.b,X		; D6 D0
	php		; 08
	tsb $48.b		; 04 48
	inc A		; 1A
	dec $E0.b,X		; D6 E0
	php		; 08
	asl $48.b		; 06 48
	cmp ($1E.b)		; D2 1E
	sbc #$0808.w		; E9 08 08
	pha		; 48
	plx		; FA
	inc $F1.b,X		; F6 F1
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($FE.b)		; F2 FE
	sbc ($08.b,X)		; E1 08
	tsb $E248.w		; 0C 48 E2
	asl $08E9.w		; 0E E9 08
	asl $DA48.w		; 0E 48 DA
	asl $F9.b,X		; 16 F9
	php		; 08
	jsr $EA48.w		; 20 48 EA
	asl $F9.b		; 06 F9
	php		; 08
	jsl $EE0A48.l		; 22 48 0A EE
	sbc [$00.b],Y		; F7 00
	bit $40.b		; 24 40
	ora ($E6.b)		; 12 E6
	sbc [$00.b],Y		; F7 00
	and $40.b		; 25 40
	rol A		; 2A
	dec $00C8.w		; CE C8 00
	rol $40.b		; 26 40
	rol A		; 2A
	dec $00D0.w		; CE D0 00
	and [$40.b]		; 27 40
	inc A		; 1A
	dec $00F0.w,X		; DE F0 00
	plp		; 28
	rti		; 40

	dex		; CA
	rol $00F4.w		; 2E F4 00
	and #$2A40.w		; 29 40 2A
	dec $00E5.w		; CE E5 00
	rol A		; 2A
	rti		; 40

	plx		; FA
	inc $00D9.w,X		; FE D9 00
	pld		; 2B
	rti		; 40

	rol A		; 2A
	dec $00ED.w		; CE ED 00
	bit $3240.w		; 2C 40 32
	dec $ED.b		; C6 ED
	brk $2D.b		; 00 2D
	rti		; 40

	dec A		; 3A
	ldx $00ED.w,Y		; BE ED 00
	rol $3240.w		; 2E 40 32
	dec $F5.b		; C6 F5
	brk $2F.b		; 00 2F
	rti		; 40

	cop $F6.b		; 02 F6
	jmp.w [$3400]		; DC 00 34
	rti		; 40

	dex		; CA
	rol $00EC.w		; 2E EC 00
	and $40.b,X		; 35 40
	nop		; EA
	asl $00E1.w		; 0E E1 00
	rol $40.b,X		; 36 40
	cop $F6.b		; 02 F6
	sbc #$3700.w		; E9 00 37
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b),Y		; F1 00
	sec		; 38
	rti		; 40

	cmp ($26.b)		; D2 26
	sbc $3900.w,Y		; F9 00 39
	rti		; 40

	cmp ($25.b,S),Y		; D3 25
	sbc ($00.b,X)		; E1 00
	dec A		; 3A
	rti		; 40

	stp		; DB
	ora $00E1.w,X		; 1D E1 00
	tsa		; 3B
	rti		; 40

	cmp $23.b,X		; D5 23
	cmp $3C00.w,Y		; D9 00 3C
	rti		; 40

	ora $11.b,X		; 15 11
	cmp $0008E3.l,X		; DF E3 08 00
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	sbc ($08.b,S),Y		; F3 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	sbc ($08.b,S),Y		; F3 08
	tsb $48.b		; 04 48
	and ($CF.b,X)		; 21 CF
	inc $08.b,X		; F6 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	inc $0808.w		; EE 08 08
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	sbc [$08.b]		; E7 08
	asl A		; 0A
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	sbc [$08.b],Y		; F7 08
	tsb $D148.w		; 0C 48 D1
	ora $0E08F1.l,X		; 1F F1 08 0E
	pha		; 48
	and ($C7.b),Y		; 31 C7
	xce		; FB
	brk $20.b		; 00 20
	rti		; 40

	ora #$E3EF.w		; 09 EF E3
	brk $21.b		; 00 21
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inc $2200.w,X		; FE 00 22
	rti		; 40

	sbc $FEFF.w,Y		; F9 FF FE
	brk $23.b		; 00 23
	rti		; 40

	cmp #$F72F.w		; C9 2F F7
	brk $24.b		; 00 24
	rti		; 40

	cmp #$FF2F.w		; C9 2F FF
	brk $25.b		; 00 25
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	xba		; EB
	brk $26.b		; 00 26
	rti		; 40

	ora #$EBEF.w		; 09 EF EB
	brk $27.b		; 00 27
	rti		; 40

	cmp $E91F.w,Y		; D9 1F E9
	brk $28.b		; 00 28
	rti		; 40

	and $F9BF.w,Y		; 39 BF F9
	brk $29.b		; 00 29
	rti		; 40

	and ($D7.b,X)		; 21 D7
	inc $2A00.w		; EE 00 2A
	rti		; 40

	cmp ($27.b),Y		; D1 27
	ora ($00.b,X)		; 01 00
	pld		; 2B
	rti		; 40

	cmp $011F.w,Y		; D9 1F 01
	brk $2C.b		; 00 2C
	rti		; 40

	jsr $D719.w		; 20 19 D7
	xba		; EB
	php		; 08
	brk $48.b		; 00 48
	ora #$E3E7.w		; 09 E7 E3
	php		; 08
	cop $48.b		; 02 48
	sbc ($0F.b,X)		; E1 0F
	sbc ($08.b,X)		; E1 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b,X)		; E1 08
	asl $48.b		; 06 48
	sbc ($0F.b,X)		; E1 0F
	sbc ($08.b),Y		; F1 08
	php		; 08
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b),Y		; F1 08
	asl A		; 0A
	pha		; 48
	cpx $D104.w		; EC 04 D1
	php		; 08
	tsb $2148.w		; 0C 48 21
	cmp [$06.b],Y		; D7 06
	brk $0E.b		; 00 0E
	rti		; 40

	cmp $E71F.w,Y		; D9 1F E7
	brk $0F.b		; 00 0F
	rti		; 40

	cmp ($27.b),Y		; D1 27
	sbc $401E00.l,X		; FF 00 1E 40
	cmp $FF1F.w,Y		; D9 1F FF
	brk $1F.b		; 00 1F
	rti		; 40

	ora #$01EF.w		; 09 EF 01
	brk $20.b		; 00 20
	rti		; 40

	and #$F3CF.w		; 29 CF F3
	brk $21.b		; 00 21
	rti		; 40

	ora #$F3EF.w		; 09 EF F3
	brk $22.b		; 00 22
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,S),Y		; F3 00
	and $40.b,S		; 23 40
	ora ($E7.b),Y		; 11 E7
	asl $00.b		; 06 00
	bit $40.b		; 24 40
	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	and $40.b		; 25 40
	ora ($F7.b,X)		; 01 F7
	sbc #$2600.w		; E9 00 26
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b),Y		; F1 00
	and [$40.b]		; 27 40
	ora ($F7.b,X)		; 01 F7
	sbc $2800.w,Y		; F9 00 28
	rti		; 40

	sbc ($17.b,X)		; E1 17
	ora ($00.b,X)		; 01 00
	and #$E940.w		; 29 40 E9
	ora $2A0001.l		; 0F 01 00 2A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ora ($00.b,X)		; 01 00
	pld		; 2B
	rti		; 40

	sbc $01FF.w,Y		; F9 FF 01
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ora ($00.b,X)		; 01 00
	and $1B40.w		; 2D 40 1B
	cmp $00FB.w,X		; DD FB 00
	rol $2340.w		; 2E 40 23
	cmp $FB.b,X		; D5 FB
	brk $2F.b		; 00 2F
	rti		; 40

	pld		; 2B
	cmp $00FB.w		; CD FB 00
	bmi  64.b		; 30 40
	and ($C5.b,S),Y		; 33 C5
	xce		; FB
	brk $31.b		; 00 31
	rti		; 40

	ora $06DF.w,Y		; 19 DF 06
	brk $32.b		; 00 32
	rti		; 40

	jsr ($D1FC.w,X)		; FC FC D1
	brk $33.b		; 00 33
	rti		; 40

	jsr ($D9FC.w,X)		; FC FC D9
	brk $34.b		; 00 34
	rti		; 40

	tas		; 1B
	cmp $DB17.w,Y		; D9 17 DB
	php		; 08
	brk $48.b		; 00 48
	cmp $EB17.w,Y		; D9 17 EB
	php		; 08
	cop $48.b		; 02 48
	sbc $D3F7.w,Y		; F9 F7 D3
	php		; 08
	tsb $48.b		; 04 48
	ora #$D3E7.w		; 09 E7 D3
	php		; 08
	asl $48.b		; 06 48
	sbc $E3F7.w,Y		; F9 F7 E3
	php		; 08
	php		; 08
	pha		; 48
	ora #$E3E7.w		; 09 E7 E3
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $E3D7.w,Y		; 19 D7 E3
	php		; 08
	tsb $1148.w		; 0C 48 11
	cmp $0E08F3.l,X		; DF F3 08 0E
	pha		; 48
	sbc #$DC07.w		; E9 07 DC
	php		; 08
	jsr $E948.w		; 20 48 E9
	ora [$EC.b]		; 07 EC
	php		; 08
	jsl $2FC948.l		; 22 48 C9 2F
	cmp ($00.b,S),Y		; D3 00
	bit $40.b		; 24 40
	ora $DBDF.w,Y		; 19 DF DB
	brk $25.b		; 00 25
	rti		; 40

	sbc $F3FF.w,Y		; F9 FF F3
	brk $26.b		; 00 26
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,S),Y		; F3 00
	and [$40.b]		; 27 40
	ora #$F3EF.w		; 09 EF F3
	brk $28.b		; 00 28
	rti		; 40

	and ($D7.b,X)		; 21 D7
	sbc ($00.b,S),Y		; F3 00
	and #$F140.w		; 29 40 F1
	ora [$D4.b]		; 07 D4
	brk $2A.b		; 00 2A
	rti		; 40

	cmp $D31F.w,Y		; D9 1F D3
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $CBFF.w,Y		; F9 FF CB
	brk $2C.b		; 00 2C
	rti		; 40

	cmp ($27.b),Y		; D1 27
	dec $00.b,X		; D6 00
	and $D140.w		; 2D 40 D1
	and [$E7.b]		; 27 E7
	brk $2E.b		; 00 2E
	rti		; 40

	and #$F1CF.w		; 29 CF F1
	brk $2F.b		; 00 2F
	rti		; 40

	and $D5.b,S		; 23 D5
	sbc $3400.w,Y		; F9 00 34
	rti		; 40

	pld		; 2B
	cmp $00F9.w		; CD F9 00
	and $40.b,X		; 35 40
	sbc [$01.b],Y		; F7 01
	xce		; FB
	brk $36.b		; 00 36
	rti		; 40

	sbc $00FBF9.l,X		; FF F9 FB 00
	and [$40.b],Y		; 37 40
	sbc $00FC09.l		; EF 09 FC 00
	sec		; 38
	rti		; 40

	and $F9.b,S		; 23 F9
	sbc [$9A.b],Y		; F7 9A
	php		; 08
	brk $48.b		; 00 48
	ora #$9AE7.w		; 09 E7 9A
	php		; 08
	cop $48.b		; 02 48
	sbc #$E207.w		; E9 07 E2
	php		; 08
	tsb $48.b		; 04 48
	sbc $E2F7.w,Y		; F9 F7 E2
	php		; 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	sbc ($08.b)		; F2 08
	php		; 08
	pha		; 48
	sbc #$F207.w		; E9 07 F2
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $0D.b,S		; E3 0D
	tax		; AA
	php		; 08
	tsb $F348.w		; 0C 48 F3
	sbc $08AA.w,X		; FD AA 08
	asl $0348.w		; 0E 48 03
	sbc $08AA.w		; ED AA 08
	jsr $E348.w		; 20 48 E3
	ora $08BA.w		; 0D BA 08
	jsl $FDF348.l		; 22 48 F3 FD
	tsx		; BA
	php		; 08
	bit $48.b		; 24 48
	ora $ED.b,S		; 03 ED
	tsx		; BA
	php		; 08
	rol $48.b		; 26 48
	sbc $0D.b,S		; E3 0D
	dex		; CA
	php		; 08
	plp		; 28
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	dex		; CA
	php		; 08
	rol A		; 2A
	pha		; 48
	ora $ED.b,S		; 03 ED
	dex		; CA
	php		; 08
	bit $1348.w		; 2C 48 13
	sbc $B2.b		; E5 B2
	brk $2E.b		; 00 2E
	rti		; 40

	tas		; 1B
	cmp $00B2.w,X		; DD B2 00
	and $07F140.l		; 2F 40 F1 07
	ldx #$3E00.w		; A2 00 3E
	rti		; 40

	sbc $F2FF.w,Y		; F9 FF F2
	brk $3F.b		; 00 3F
	rti		; 40

	sbc $FAFF.w,Y		; F9 FF FA
	brk $40.b		; 00 40
	rti		; 40

	sbc #$020F.w		; E9 0F 02
	brk $41.b		; 00 41
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cop $00.b		; 02 00
	.db $42, $40		; 42 40
	sbc $02FF.w,Y		; F9 FF 02
	brk $43.b		; 00 43
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cop $00.b		; 02 00
	mvp $E1,$40		; 44 40 E1
	ora [$F5.b],Y		; 17 F5
	brk $45.b		; 00 45
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc $4600.w,X		; FD 00 46
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	rep #$00		; C2 00
	eor [$40.b]		; 47 40
	ora ($E5.b,S),Y		; 13 E5
	dex		; CA
	brk $48.b		; 00 48
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b)		; D2 00
	eor #$E340.w		; 49 40 E3
	ora $DA.b,X		; 15 DA
	brk $4A.b		; 00 4A
	rti		; 40

	xba		; EB
	ora $00DA.w		; 0D DA 00
	phk		; 4B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	phx		; DA
	brk $4C.b		; 00 4C
	rti		; 40

	xce		; FB
	sbc $00DA.w,X		; FD DA 00
	eor $0340.w		; 4D 40 03
	sbc $DA.b,X		; F5 DA
	brk $4E.b		; 00 4E
	rti		; 40

	phd		; 0B
	sbc $00DA.w		; ED DA 00
	eor $EF1940.l		; 4F 40 19 EF
	ora ($98.b,X)		; 01 98
	php		; 08
	brk $48.b		; 00 48
	sbc [$09.b]		; E7 09
	tay		; A8
	php		; 08
	cop $48.b		; 02 48
	ora $08A8E1.l		; 0F E1 A8 08
	tsb $48.b		; 04 48
	sbc $08A0F1.l,X		; FF F1 A0 08
	asl $48.b		; 06 48
	sbc [$09.b]		; E7 09
	clv		; B8
	php		; 08
	php		; 08
	pha		; 48
	ora [$D9.b],Y		; 17 D9
	cpy #$0A08.w		; C0 08 0A
	pha		; 48
	sbc [$09.b]		; E7 09
	iny		; C8
	php		; 08
	tsb $EF48.w		; 0C 48 EF
	ora ($D8.b,X)		; 01 D8
	php		; 08
	asl $FF48.w		; 0E 48 FF
	sbc ($D8.b),Y		; F1 D8
	php		; 08
	jsr $0F48.w		; 20 48 0F
	sbc ($D8.b,X)		; E1 D8
	php		; 08
	jsl $F9F748.l		; 22 48 F7 F9
	iny		; C8
	php		; 08
	bit $48.b		; 24 48
	ora [$E9.b]		; 07 E9
	iny		; C8
	php		; 08
	rol $48.b		; 26 48
	sbc [$F9.b],Y		; F7 F9
	clv		; B8
	php		; 08
	plp		; 28
	pha		; 48
	ora [$E9.b]		; 07 E9
	clv		; B8
	php		; 08
	rol A		; 2A
	pha		; 48
	cmp [$19.b],Y		; D7 19
	lda #$2C08.w		; A9 08 2C
	pha		; 48
	cmp [$19.b],Y		; D7 19
	lda $2E08.w,Y		; B9 08 2E
	pha		; 48
	sbc [$01.b],Y		; F7 01
	tay		; A8
	brk $40.b		; 00 40
	rti		; 40

	sbc [$01.b],Y		; F7 01
	bcs   0.b		; B0 00
	eor ($40.b,X)		; 41 40
	sbc $00B0F9.l,X		; FF F9 B0 00
	.db $42, $40		; 42 40
	ora [$F1.b]		; 07 F1
	bcs   0.b		; B0 00
	eor $40.b,S		; 43 40
	ora [$E1.b],Y		; 17 E1
	clv		; B8
	brk $44.b		; 00 44
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	bne   0.b		; D0 00
	eor $40.b		; 45 40
	sbc [$11.b]		; E7 11
	cld		; D8
	brk $46.b		; 00 46
	rti		; 40

	and [$D1.b]		; 27 D1
	rep #$00		; C2 00
	eor [$40.b]		; 47 40
	sbc $0098F9.l,X		; FF F9 98 00
	pha		; 48
	rti		; 40

	asl $D719.w,X		; 1E 19 D7
	rep #$08		; C2 08
	brk $48.b		; 00 48
	cmp $AA17.w,Y		; D9 17 AA
	php		; 08
	cop $48.b		; 02 48
	sbc #$AA07.w		; E9 07 AA
	php		; 08
	tsb $48.b		; 04 48
	sbc $AAF7.w,Y		; F9 F7 AA
	php		; 08
	asl $48.b		; 06 48
	ora #$AAE7.w		; 09 E7 AA
	php		; 08
	php		; 08
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	dex		; CA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	tsx		; BA
	php		; 08
	tsb $F148.w		; 0C 48 F1
	sbc $0E08BA.l,X		; FF BA 08 0E
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	jsr $0148.w		; 20 48 01
	sbc $2208BA.l		; EF BA 08 22
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	bit $48.b		; 24 48
	sbc $FB.b,X		; F5 FB
	txs		; 9A
	php		; 08
	rol $48.b		; 26 48
	ora $EB.b		; 05 EB
	txs		; 9A
	php		; 08
	plp		; 28
	pha		; 48
	sbc $DA03.w		; ED 03 DA
	php		; 08
	rol A		; 2A
	pha		; 48
	sbc $DAF3.w,X		; FD F3 DA
	php		; 08
	bit $0D48.w		; 2C 48 0D
	sbc $DA.b,S		; E3 DA
	php		; 08
	rol $1948.w		; 2E 48 19
	cmp $4000BA.l,X		; DF BA 00 40
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	eor ($40.b,X)		; 41 40
	ora ($E7.b),Y		; 11 E7
	dex		; CA
	brk $42.b		; 00 42
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp ($00.b)		; D2 00
	eor $40.b,S		; 43 40
	cmp $A21B.w,X		; DD 1B A2
	brk $44.b		; 00 44
	rti		; 40

	sbc $13.b		; E5 13
	ldx #$4500.w		; A2 00 45
	rti		; 40

	sbc $A20B.w		; ED 0B A2
	brk $46.b		; 00 46
	rti		; 40

	ora $E3.b,X		; 15 E3
	ldx #$4700.w		; A2 00 47
	rti		; 40

	sbc $13.b		; E5 13
	phx		; DA
	brk $48.b		; 00 48
	rti		; 40

	and #$C2CF.w		; 29 CF C2
	brk $49.b		; 00 49
	rti		; 40

	ora $AADF.w,Y		; 19 DF AA
	brk $4A.b		; 00 4A
	rti		; 40

	ora $B2DF.w,Y		; 19 DF B2
	brk $4B.b		; 00 4B
	rti		; 40

	cmp $BA1F.w,Y		; D9 1F BA
	brk $4C.b		; 00 4C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tsx		; BA
	brk $4D.b		; 00 4D
	rti		; 40

	ora [$29.b],Y		; 17 29
	cmp [$DA.b]		; C7 DA
	php		; 08
	brk $48.b		; 00 48
	sbc ($0F.b,X)		; E1 0F
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	sbc ($0F.b,X)		; E1 0F
	sep #$08		; E2 08
	tsb $48.b		; 04 48
	cmp $F217.w,Y		; D9 17 F2
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b,S),Y		; F3 08
	php		; 08
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,S),Y		; D3 08
	asl A		; 0A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b,S),Y		; D3 08
	tsb $F148.w		; 0C 48 F1
	sbc $0E08E3.l,X		; FF E3 08 0E
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	sbc $08.b,S		; E3 08
	jsr $1148.w		; 20 48 11
	cmp $2208D7.l,X		; DF D7 08 22
	pha		; 48
	cpx $C304.w		; EC 04 C3
	php		; 08
	bit $48.b		; 24 48
	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,S),Y		; F3 00
	rol $40.b		; 26 40
	ora ($E7.b),Y		; 11 E7
	cmp $402700.l		; CF 00 27 40
	ora $EFDF.w,Y		; 19 DF EF
	brk $28.b		; 00 28
	rti		; 40

	and $DBBF.w,Y		; 39 BF DB
	brk $29.b		; 00 29
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc [$00.b]		; E7 00
	rol A		; 2A
	rti		; 40

	ora $E7DF.w,Y		; 19 DF E7
	brk $2B.b		; 00 2B
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cld		; D8
	brk $2C.b		; 00 2C
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cpx #$2D00.w		; E0 00 2D
	rti		; 40

	and ($D7.b,X)		; 21 D7
	beq   0.b		; F0 00
	rol $E940.w		; 2E 40 E9
	ora $2F00F2.l		; 0F F2 00 2F
	rti		; 40

	jsr ($C3FC.w,X)		; FC FC C3
	brk $36.b		; 00 36
	rti		; 40

	jsr ($CBFC.w,X)		; FC FC CB
	brk $37.b		; 00 37
	rti		; 40

	asl $D719.w,X		; 1E 19 D7
	cmp ($08.b)		; D2 08
	brk $48.b		; 00 48
	ora ($DF.b),Y		; 11 DF
	sbc ($08.b)		; F2 08
	cop $48.b		; 02 48
	ora ($DF.b),Y		; 11 DF
	sep #$08		; E2 08
	tsb $48.b		; 04 48
	ora #$D2E7.w		; 09 E7 D2
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	sbc $EAF7.w,Y		; F9 F7 EA
	php		; 08
	asl A		; 0A
	pha		; 48
	cop $EE.b		; 02 EE
	tsx		; BA
	php		; 08
	tsb $E048.w		; 0C 48 E0
	bpl -60.b		; 10 C4
	php		; 08
	asl $0148.w		; 0E 48 01
	sbc [$FA.b],Y		; F7 FA
	brk $20.b		; 00 20
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	and ($40.b,X)		; 21 40
	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $22.b		; 00 22
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sep #$00		; E2 00
	and $40.b,S		; 23 40
	sbc $E2FF.w,Y		; F9 FF E2
	brk $24.b		; 00 24
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	and $40.b		; 25 40
	ora #$E2EF.w		; 09 EF E2
	brk $26.b		; 00 26
	rti		; 40

	ora #$EAEF.w		; 09 EF EA
	brk $27.b		; 00 27
	rti		; 40

	ora #$F2EF.w		; 09 EF F2
	brk $28.b		; 00 28
	rti		; 40

	and #$D8CF.w		; 29 CF D8
	brk $29.b		; 00 29
	rti		; 40

	and ($C7.b),Y		; 31 C7
	cmp $2A00.w,Y		; D9 00 2A
	rti		; 40

	and $D9BF.w,Y		; 39 BF D9
	brk $2B.b		; 00 2B
	rti		; 40

	plx		; FA
	inc $00C2.w,X		; FE C2 00
	bit $F140.w		; 2C 40 F1
	ora [$F2.b]		; 07 F2
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E6.b)		; 12 E6
	tsx		; BA
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E6.b)		; 12 E6
	rep #$00		; C2 00
	and $00F840.l		; 2F 40 F8 00
	dex		; CA
	brk $30.b		; 00 30
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $31.b		; 00 31
	rti		; 40

	php		; 08
	beq -54.b		; F0 CA
	brk $32.b		; 00 32
	rti		; 40

	bpl -24.b		; 10 E8
	dex		; CA
	brk $33.b		; 00 33
	rti		; 40

	beq   8.b		; F0 08
	cpy $3400.w		; CC 00 34
	rti		; 40

	sbc ($07.b),Y		; F1 07
	plx		; FA
	brk $35.b		; 00 35
	rti		; 40

	ora $0B.b,X		; 15 0B
	sbc $C2.b		; E5 C2
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	sep #$08		; E2 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	sbc ($08.b)		; F2 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	sep #$08		; E2 08
	asl $48.b		; 06 48
	asl $EA.b		; 06 EA
	sbc ($08.b)		; F2 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp ($08.b)		; D2 08
	asl A		; 0A
	pha		; 48
	ora [$E9.b]		; 07 E9
	cmp ($08.b)		; D2 08
	tsb $1748.w		; 0C 48 17
	cmp $08D4.w,Y		; D9 D4 08
	asl $DF48.w		; 0E 48 DF
	ora ($D0.b),Y		; 11 D0
	php		; 08
	jsr $1648.w		; 20 48 16
.ACCU 8
	sep #$EA		; E2 EA
	brk $22.b		; 00 22
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc ($00.b)		; F2 00
	and $40.b,S		; 23 40
	asl $E2.b,X		; 16 E2
	plx		; FA
	brk $24.b		; 00 24
	rti		; 40

	xce		; FB
	sbc $00CA.w,X		; FD CA 00
	and $40.b		; 25 40
	ora $FCDB.w,X		; 1D DB FC
	brk $26.b		; 00 26
	rti		; 40

	sbc $00D409.l		; EF 09 D4 00
	and [$40.b]		; 27 40
	ora $F5.b,S		; 03 F5
	dex		; CA
	brk $28.b		; 00 28
	rti		; 40

	and [$D1.b]		; 27 D1
	cld		; D8
	brk $29.b		; 00 29
	rti		; 40

	and $00D8C9.l		; 2F C9 D8 00
	rol A		; 2A
	rti		; 40

	and [$C1.b],Y		; 37 C1
	cld		; D8
	brk $2B.b		; 00 2B
	rti		; 40

	and $00D8B9.l,X		; 3F B9 D8 00
	bit $1640.w		; 2C 40 16
.ACCU 8
	sep #$E2		; E2 E2
	brk $2D.b		; 00 2D
	rti		; 40

	tas		; 1B
	ora #$E7.b		; 09 E7
	cmp ($08.b)		; D2 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	sbc #$07.b		; E9 07
	sep #$08		; E2 08
	tsb $48.b		; 04 48
	tas		; 1B
	cmp $BA.b,X		; D5 BA
	php		; 08
	asl $48.b		; 06 48
	xba		; EB
	ora $C2.b		; 05 C2
	php		; 08
	php		; 08
	pha		; 48
	xba		; EB
	ora $B2.b		; 05 B2
	php		; 08
	asl A		; 0A
	pha		; 48
	xce		; FB
	sbc $C2.b,X		; F5 C2
	php		; 08
	tsb $FB48.w		; 0C 48 FB
	sbc $B2.b,X		; F5 B2
	php		; 08
	asl $0B48.w		; 0E 48 0B
	sbc $BA.b		; E5 BA
	php		; 08
	jsr $0B48.w		; 20 48 0B
	sbc $AA.b		; E5 AA
	php		; 08
	jsl $EB0548.l		; 22 48 05 EB
	txs		; 9A
	php		; 08
	bit $48.b		; 24 48
	sbc $0B.b		; E5 0B
	sbc ($08.b)		; F2 08
	rol $48.b		; 26 48
	jsr $CAD0.w		; 20 D0 CA
	php		; 08
	plp		; 28
	pha		; 48
	plp		; 28
	iny		; C8
	phx		; DA
	php		; 08
	rol A		; 2A
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	bit $F340.w		; 2C 40 F3
	ora $AA.b		; 05 AA
	brk $2D.b		; 00 2D
	rti		; 40

	xce		; FB
	sbc $00AA.w,X		; FD AA 00
	rol $0340.w		; 2E 40 03
	sbc $AA.b,X		; F5 AA
	brk $2F.b		; 00 2F
	rti		; 40

	tas		; 1B
	cmp $00B2.w,X		; DD B2 00
	bit $0B40.w,X		; 3C 40 0B
	sbc $00CA.w		; ED CA 00
	and $1140.w,X		; 3D 40 11
	sbc [$F2.b]		; E7 F2
	brk $3E.b		; 00 3E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $3F.b		; 00 3F
	rti		; 40

	asl $E2EA.w		; 0E EA E2
	brk $40.b		; 00 40
	rti		; 40

	ora [$F1.b]		; 07 F1
	sta ($00.b)		; 92 00
	eor ($40.b,X)		; 41 40
	ora $00EAE9.l		; 0F E9 EA 00
	.db $42, $40		; 42 40
	sbc $E2FF.w,Y		; F9 FF E2
	brk $43.b		; 00 43
	rti		; 40

	ora $FADF.w,Y		; 19 DF FA
	brk $44.b		; 00 44
	rti		; 40

	ora $D61A.w,X		; 1D 1A D6
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	asl A		; 0A
	inc $C2.b		; E6 C2
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $D2.b,X		; F6 D2
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $D2.b		; E6 D2
	php		; 08
	asl $48.b		; 06 48
	sbc $FB.b,X		; F5 FB
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	ora $EB.b		; 05 EB
	sep #$08		; E2 08
	asl A		; 0A
	pha		; 48
	and #$CF.b		; 29 CF
	ldx #$0C00.w		; A2 00 0C
	rti		; 40

	and ($D7.b,X)		; 21 D7
	tax		; AA
	brk $0D.b		; 00 0D
	rti		; 40

	and #$CF.b		; 29 CF
	tax		; AA
	brk $0E.b		; 00 0E
	rti		; 40

	and ($D7.b,X)		; 21 D7
	tsx		; BA
	brk $0F.b		; 00 0F
	rti		; 40

	cop $F6.b		; 02 F6
	dex		; CA
	brk $1C.b		; 00 1C
	rti		; 40

	inc A		; 1A
	dec $00DA.w,X		; DE DA 00
	ora $2340.w,X		; 1D 40 23
	cmp $B2.b,X		; D5 B2
	brk $1E.b		; 00 1E
	rti		; 40

	ora $E2DB.w,X		; 1D DB E2
	brk $1F.b		; 00 1F
	rti		; 40

	rol A		; 2A
	dec $009A.w		; CE 9A 00
	jsr $F240.w		; 20 40 F2
	asl $DA.b		; 06 DA
	brk $21.b		; 00 21
	rti		; 40

	ora $E3.b,X		; 15 E3
	sep #$00		; E2 00
	jsl $E31540.l		; 22 40 15 E3
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc ($00.b)		; F2 00
	bit $40.b		; 24 40
	sbc $F2FB.w,X		; FD FB F2
	brk $25.b		; 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	rol $40.b		; 26 40
	ora $F2EB.w		; 0D EB F2
	brk $27.b		; 00 27
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc ($00.b)		; F2 00
	plp		; 28
	rti		; 40

	asl $C2DA.w,X		; 1E DA C2
	brk $29.b		; 00 29
	rti		; 40

	sbc [$01.b],Y		; F7 01
	plx		; FA
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $00FAF9.l,X		; FF F9 FA 00
	pld		; 2B
	rti		; 40

	ora [$F1.b]		; 07 F1
	plx		; FA
	brk $2C.b		; 00 2C
	rti		; 40

	ora $00FAE9.l		; 0F E9 FA 00
	and $1740.w		; 2D 40 17
	sbc ($FA.b,X)		; E1 FA
	brk $2E.b		; 00 2E
	rti		; 40

	jsr $F7F9.w		; 20 F9 F7
	lda ($08.b,S),Y		; B3 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	lda ($08.b,S),Y		; B3 08
	cop $48.b		; 02 48
	tas		; 1B
	cmp $CB.b,X		; D5 CB
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $08.b,S		; C3 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b,S),Y		; D3 08
	php		; 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp $08.b,S		; C3 08
	asl A		; 0A
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b,S),Y		; D3 08
	tsb $DB48.w		; 0C 48 DB
	ora $BE.b,X		; 15 BE
	php		; 08
	asl $0748.w		; 0E 48 07
	sbc #$A3.b		; E9 A3
	php		; 08
	jsr $F148.w		; 20 48 F1
	ora [$EB.b]		; 07 EB
	brk $22.b		; 00 22
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $00.b,S		; E3 00
	and $40.b,S		; 23 40
	plx		; FA
	inc $00E3.w,X		; FE E3 00
	bit $40.b		; 24 40
	cop $F6.b		; 02 F6
	sbc $00.b,S		; E3 00
	and $40.b		; 25 40
	and ($C5.b,S),Y		; 33 C5
	cmp ($00.b)		; D2 00
	rol $40.b		; 26 40
	tsa		; 3B
	lda $00D2.w,X		; BD D2 00
	and [$40.b]		; 27 40
	ora ($E5.b,S),Y		; 13 E5
	sbc $00.b,S		; E3 00
	plp		; 28
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	xba		; EB
	brk $29.b		; 00 29
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc ($00.b,S),Y		; F3 00
	rol A		; 2A
	rti		; 40

	sbc $EBFF.w,Y		; F9 FF EB
	brk $2B.b		; 00 2B
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc ($00.b,S),Y		; F3 00
	bit $F140.w		; 2C 40 F1
	ora [$F3.b]		; 07 F3
	brk $2D.b		; 00 2D
	rti		; 40

	sbc #$0F.b		; E9 0F
	xce		; FB
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	xce		; FB
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp $00.b,S		; C3 00
	and ($40.b)		; 32 40
	ora ($E5.b,S),Y		; 13 E5
	wai		; CB
	brk $33.b		; 00 33
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b,S),Y		; D3 00
	bit $40.b,X		; 34 40
	ora ($E5.b,S),Y		; 13 E5
	stp		; DB
	brk $35.b		; 00 35
	rti		; 40

	xba		; EB
	ora $00C4.w		; 0D C4 00
	rol $40.b,X		; 36 40
	ora $FBDF.w,Y		; 19 DF FB
	brk $37.b		; 00 37
	rti		; 40

	pld		; 2B
	cmp $00D1.w		; CD D1 00
	sec		; 38
	rti		; 40

	sbc $00ABF9.l,X		; FF F9 AB 00
	and $F140.w,Y		; 39 40 F1
	ora [$BB.b]		; 07 BB
	brk $3A.b		; 00 3A
	rti		; 40

	jsr $17D9.w		; 20 D9 17
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	ora ($DF.b),Y		; 11 DF
	phx		; DA
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	sep #$08		; E2 08
	tsb $48.b		; 04 48
	ora #$E7.b		; 09 E7
	ldx #$0608.w		; A2 08 06
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b)		; B2 08
	php		; 08
	pha		; 48
	ora #$E7.b		; 09 E7
	lda ($08.b)		; B2 08
	asl A		; 0A
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	rep #$08		; C2 08
	tsb $0948.w		; 0C 48 09
	sbc [$C2.b]		; E7 C2
	php		; 08
	asl $F948.w		; 0E 48 F9
	sbc [$D2.b],Y		; F7 D2
	php		; 08
	jsr $1948.w		; 20 48 19
	cmp $2200CA.l,X		; DF CA 00 22
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	nop		; EA
	brk $23.b		; 00 23
	rti		; 40

	sbc #$0F.b		; E9 0F
	sbc ($00.b)		; F2 00
	bit $40.b		; 24 40
	sbc ($07.b),Y		; F1 07
	sbc ($00.b)		; F2 00
	and $40.b		; 25 40
	sbc #$0F.b		; E9 0F
	plx		; FA
	brk $26.b		; 00 26
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $27.b		; 00 27
	rti		; 40

	ora $FADF.w,Y		; 19 DF FA
	brk $28.b		; 00 28
	rti		; 40

	sbc #$0F.b		; E9 0F
	rep #$00		; C2 00
	and #$40.b		; 29 40
	ora ($F7.b,X)		; 01 F7
	tax		; AA
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b)		; B2 00
	pld		; 2B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsx		; BA
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	rep #$00		; C2 00
	and $0140.w		; 2D 40 01
	sbc [$CA.b],Y		; F7 CA
	brk $2E.b		; 00 2E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp ($00.b)		; D2 00
	and $EF0940.l		; 2F 40 09 EF
	cmp ($00.b)		; D2 00
	and ($40.b)		; 32 40
	ora ($E7.b),Y		; 11 E7
	cmp ($00.b)		; D2 00
	and ($40.b,S),Y		; 33 40
	ora #$EF.b		; 09 EF
	phx		; DA
	brk $34.b		; 00 34
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	and $40.b,X		; 35 40
	and ($D7.b,X)		; 21 D7
	dec $3600.w		; CE 00 36
	rti		; 40

	and #$CF.b		; 29 CF
	dec $3700.w		; CE 00 37
	rti		; 40

	and ($C7.b),Y		; 31 C7
	cmp $403800.l		; CF 00 38 40
	and $CFBF.w,Y		; 39 BF CF
	brk $39.b		; 00 39
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc ($00.b)		; F2 00
	dec A		; 3A
	rti		; 40

	inc A		; 1A
	ora #$E7.b		; 09 E7
	sbc $08.b,S		; E3 08
	brk $48.b		; 00 48
	ora ($DF.b),Y		; 11 DF
	sbc ($08.b,S),Y		; F3 08
	cop $48.b		; 02 48
	nop		; EA
	asl $AB.b		; 06 AB
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $A3.b,X		; F6 A3
	php		; 08
	asl $48.b		; 06 48
	jmp.w [$A214]		; DC 14 A2
	php		; 08
	php		; 08
	pha		; 48
	ora [$E9.b]		; 07 E9
	tyx		; BB
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $08CBF1.l,X		; FF F1 CB 08
	tsb $F748.w		; 0C 48 F7
	sbc $08BB.w,Y		; F9 BB 08
	asl $E748.w		; 0E 48 E7
	ora #$BB.b		; 09 BB
	php		; 08
	jsr $EF48.w		; 20 48 EF
	ora ($CB.b,X)		; 01 CB
	php		; 08
	jsl $D91748.l		; 22 48 17 D9
	cmp ($08.b,X)		; C1 08
	bit $48.b		; 24 48
	sbc #$0F.b		; E9 0F
	sbc $00.b,S		; E3 00
	rol $40.b		; 26 40
	cpx $14.b		; E4 14
	xba		; EB
	brk $27.b		; 00 27
	rti		; 40

	cpx $EB0C.w		; EC 0C EB
	brk $28.b		; 00 28
	rti		; 40

	inc $DB0A.w		; EE 0A DB
	brk $29.b		; 00 29
	rti		; 40

	inc $02.b,X		; F6 02
	stp		; DB
	brk $2A.b		; 00 2A
	rti		; 40

	and [$D1.b]		; 27 D1
	wai		; CB
	brk $2B.b		; 00 2B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $00.b,S		; E3 00
	bit $FA40.w		; 2C 40 FA
	inc $00B3.w,X		; FE B3 00
	and $0240.w		; 2D 40 02
	inc $B3.b,X		; F6 B3
	brk $2E.b		; 00 2E
	rti		; 40

	ora $F5.b,S		; 03 F5
	stp		; DB
	brk $2F.b		; 00 2F
	rti		; 40

	phd		; 0B
	sbc $00DB.w		; ED DB 00
	rol $40.b,X		; 36 40
	sbc [$11.b]		; E7 11
	wai		; CB
	brk $37.b		; 00 37
	rti		; 40

	and $00CFC9.l		; 2F C9 CF 00
	sec		; 38
	rti		; 40

	sbc $15.b,S		; E3 15
	sbc ($00.b,S),Y		; F3 00
	and $E040.w,Y		; 39 40 E0
	clc		; 18
	sbc $3A00.w,Y		; F9 00 3A
	rti		; 40

	jsr $16DA.w		; 20 DA 16
	ldx #$0008.w		; A2 08 00
	pha		; 48
	nop		; EA
	asl $A9.b		; 06 A9
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $A1.b,X		; F6 A1
	php		; 08
	tsb $48.b		; 04 48
	asl $DA.b,X		; 16 DA
	cmp ($08.b,X)		; C1 08
	asl $48.b		; 06 48
	inc $0A.b		; E6 0A
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	lda $0A08.w,Y		; B9 08 0A
	pha		; 48
	asl $EA.b		; 06 EA
	lda $0C08.w,Y		; B9 08 0C
	pha		; 48
	sbc [$09.b]		; E7 09
	cmp #$08.b		; C9 08
	asl $F748.w		; 0E 48 F7
	sbc $08C9.w,Y		; F9 C9 08
	jsr $0248.w		; 20 48 02
	inc $B1.b,X		; F6 B1
	brk $22.b		; 00 22
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $2300.w,Y		; D9 00 23
	rti		; 40

	xce		; FB
	sbc $00D9.w,X		; FD D9 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	cmp $2500.w,Y		; D9 00 25
	rti		; 40

	phd		; 0B
	sbc $00D9.w		; ED D9 00
	rol $40.b		; 26 40
	cpx $E10C.w		; EC 0C E1
	brk $27.b		; 00 27
	rti		; 40

	pea $E104.w		; F4 04 E1
	brk $28.b		; 00 28
	rti		; 40

	ora $E1EB.w		; 0D EB E1
	brk $29.b		; 00 29
	rti		; 40

	ora $E9EB.w		; 0D EB E9
	brk $2A.b		; 00 2A
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc #$00.b		; E9 00
	pld		; 2B
	rti		; 40

	rol $D2.b		; 26 D2
	wai		; CB
	brk $2C.b		; 00 2C
	rti		; 40

	rol $CECA.w		; 2E CA CE
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $2E00.w,Y		; F9 00 2E
	rti		; 40

	ora $F9DF.w,Y		; 19 DF F9
	brk $2F.b		; 00 2F
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc ($00.b),Y		; F1 00
	and ($40.b)		; 32 40
	sbc #$0F.b		; E9 0F
	sbc ($00.b),Y		; F1 00
	and ($40.b,S),Y		; 33 40
	cmp $00F919.l,X		; DF 19 F9 00
	bit $40.b,X		; 34 40
	ora ($E7.b),Y		; 11 E7
	sbc ($00.b),Y		; F1 00
	and $40.b,X		; 35 40
	plx		; FA
	inc $00B1.w,X		; FE B1 00
	rol $40.b,X		; 36 40
	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	and [$40.b],Y		; 37 40
	ora [$F1.b]		; 07 F1
	cmp ($00.b),Y		; D1 00
	sec		; 38
	rti		; 40

	inx		; E8
	bpl -23.b		; 10 E9
	brk $39.b		; 00 39
	rti		; 40

	beq   8.b		; F0 08
	sbc #$00.b		; E9 00
	dec A		; 3A
	rti		; 40

	and ($F1.b,X)		; 21 F1
	sbc $0008D1.l,X		; FF D1 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	cop $48.b		; 02 48
	sbc ($FE.b)		; F2 FE
	lda #$08.b		; A9 08
	tsb $48.b		; 04 48
	cmp $A713.w,X		; DD 13 A7
	php		; 08
	asl $48.b		; 06 48
	ora $C1E3.w		; 0D E3 C1
	php		; 08
	php		; 08
	pha		; 48
	sbc $0B.b		; E5 0B
	lda $0A08.w,Y		; B9 08 0A
	pha		; 48
	sbc $FB.b,X		; F5 FB
	lda $0C08.w,Y		; B9 08 0C
	pha		; 48
	inc $E102.w		; EE 02 E1
	php		; 08
	asl $0248.w		; 0E 48 02
	inc $A9.b,X		; F6 A9
	brk $20.b		; 00 20
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b),Y		; B1 00
	and ($40.b,X)		; 21 40
	trb $E4.b		; 14 E4
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	ora $C4DB.w,X		; 1D DB C4
	brk $23.b		; 00 23
	rti		; 40

	ora $CCDB.w,X		; 1D DB CC
	brk $24.b		; 00 24
	rti		; 40

	and $D3.b		; 25 D3
	dec $2500.w		; CE 00 25
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $2600.w,Y		; D9 00 26
	rti		; 40

	and $D1CB.w		; 2D CB D1
	brk $27.b		; 00 27
	rti		; 40

	inc A		; 1A
	dec $00FD.w,X		; DE FD 00
	plp		; 28
	rti		; 40

	nop		; EA
	asl $00B1.w		; 0E B1 00
	and #$40.b		; 29 40
	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	rol A		; 2A
	rti		; 40

	ora $F3.b		; 05 F3
	lda $2B00.w,Y		; B9 00 2B
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b,X)		; C1 00
	bit $E540.w		; 2C 40 E5
	ora ($C9.b,S),Y		; 13 C9
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $C90B.w		; ED 0B C9
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp #$00.b		; C9 00
	and $FBFD40.l		; 2F 40 FD FB
	cmp #$00.b		; C9 00
	bmi  64.b		; 30 40
	ora $F3.b		; 05 F3
	cmp #$00.b		; C9 00
	and ($40.b),Y		; 31 40
	asl $E1EA.w		; 0E EA E1
	brk $32.b		; 00 32
	rti		; 40

	sbc #$0F.b		; E9 0F
	cmp ($00.b),Y		; D1 00
	and ($40.b,S),Y		; 33 40
	ora $00E9E9.l		; 0F E9 E9 00
	bit $40.b,X		; 34 40
	inx		; E8
	bpl -22.b		; 10 EA
	brk $35.b		; 00 35
	rti		; 40

	cpx #$F218.w		; E0 18 F2
	brk $36.b		; 00 36
	rti		; 40

	inx		; E8
	bpl -14.b		; 10 F2
	brk $37.b		; 00 37
	rti		; 40

	cpx #$FA18.w		; E0 18 FA
	brk $38.b		; 00 38
	rti		; 40

	asl $0FE1.w,X		; 1E E1 0F
	txa		; 8A
	php		; 08
	brk $48.b		; 00 48
	sbc #$07.b		; E9 07
	nop		; EA
	php		; 08
	cop $48.b		; 02 48
	jsr ($9AF4.w,X)		; FC F4 9A
	php		; 08
	tsb $48.b		; 04 48
	tsb $9AE4.w		; 0C E4 9A
	php		; 08
	asl $48.b		; 06 48
	sbc $FB.b,X		; F5 FB
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	ora $EB.b		; 05 EB
	tsx		; BA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $FB.b,X		; F5 FB
	dex		; CA
	php		; 08
	tsb $0548.w		; 0C 48 05
	xba		; EB
	dex		; CA
	php		; 08
	asl $F648.w		; 0E 48 F6
	plx		; FA
	tax		; AA
	php		; 08
	jsr $0648.w		; 20 48 06
	nop		; EA
	tax		; AA
	php		; 08
	jsl $01EF48.l		; 22 48 EF 01
	phx		; DA
	php		; 08
	bit $48.b		; 24 48
	sbc $94FF.w,Y		; F9 FF 94
	brk $26.b		; 00 26
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sty $00.b,X		; 94 00
	and [$40.b]		; 27 40
	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	plp		; 28
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sta ($00.b)		; 92 00
	and #$40.b		; 29 40
	sbc #$0F.b		; E9 0F
	plx		; FA
	brk $2A.b		; 00 2A
	rti		; 40

	trb $A3DC.w		; 1C DC A3
	brk $2B.b		; 00 2B
	rti		; 40

	asl $E2.b,X		; 16 E2
	tax		; AA
	brk $2C.b		; 00 2C
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b)		; B2 00
	and $3640.w		; 2D 40 36
.ACCU 16
	rep #$AD		; C2 AD
	brk $2E.b		; 00 2E
	rti		; 40

	rol $D2.b		; 26 D2
	lda #$2F00.w		; A9 00 2F
	rti		; 40

	rol $A9CA.w		; 2E CA A9
	brk $36.b		; 00 36
	rti		; 40

	sbc $00DAF9.l,X		; FF F9 DA 00
	and [$40.b],Y		; 37 40
	ora [$F1.b]		; 07 F1
	phx		; DA
	brk $38.b		; 00 38
	rti		; 40

	ora $00DAE9.l		; 0F E9 DA 00
	and $0F40.w,Y		; 39 40 0F
	sbc #$00E2.w		; E9 E2 00
	dec A		; 3A
	rti		; 40

	bit $D4.b		; 24 D4
	lda $00.b,S		; A3 00
	tsa		; 3B
	rti		; 40

	ora $00E9E9.l		; 0F E9 E9 00
	bit $1040.w,X		; 3C 40 10
	inx		; E8
	sbc $3D00.w,Y		; F9 00 3D
	rti		; 40

	clc		; 18
	cpx #$00F9.w		; E0 F9 00
	rol $3240.w,X		; 3E 40 32
	sbc $8AF7.w,Y		; F9 F7 8A
	php		; 08
	brk $48.b		; 00 48
	and ($CF.b,X)		; 21 CF
	txa		; 8A
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	sta $0808.w		; 8D 08 08
	pha		; 48
	cmp $8E17.w,Y		; D9 17 8E
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc #$8807.w		; E9 07 88
	php		; 08
	tsb $FA48.w		; 0C 48 FA
	inc $CA.b,X		; F6 CA
	php		; 08
	asl $F748.w		; 0E 48 F7
	sbc $089A.w,Y		; F9 9A 08
	jsr $F848.w		; 20 48 F8
	sed		; F8
	tax		; AA
	php		; 08
	jsl $D72148.l		; 22 48 21 D7
	txs		; 9A
	brk $24.b		; 00 24
	rti		; 40

	and #$9ACF.w		; 29 CF 9A
	brk $25.b		; 00 25
	rti		; 40

	and ($C7.b),Y		; 31 C7
	sty $00.b,X		; 94 00
	rol $40.b		; 26 40
	and $94BF.w,Y		; 39 BF 94
	brk $27.b		; 00 27
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	.db $82, $00, $28		; 82 00 28
	rti		; 40

	and ($C7.b),Y		; 31 C7
	txa		; 8A
	brk $29.b		; 00 29
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sta $402A00.l,X		; 9F 00 2A 40
	and $8ABF.w,Y		; 39 BF 8A
	brk $2B.b		; 00 2B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc #$2C00.w		; E9 00 2C
	rti		; 40

	sbc #$F90F.w		; E9 0F F9
	brk $2D.b		; 00 2D
	rti		; 40

	sbc ($06.b)		; F2 06
	dex		; CA
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b)		; D2 00
	and $E71140.l		; 2F 40 11 E7
	rep #$00		; C2 00
	bit $40.b,X		; 34 40
	asl A		; 0A
	inc $00CA.w		; EE CA 00
	and $40.b,X		; 35 40
	asl A		; 0A
	inc $00D2.w		; EE D2 00
	rol $40.b,X		; 36 40
.INDEX 8
	sep #$16		; E2 16
	sty $00.b		; 84 00
	and [$40.b],Y		; 37 40
	nop		; EA
	asl $0084.w		; 0E 84 00
	sec		; 38
	rti		; 40

	wai		; CB
	and $008A.w		; 2D 8A 00
	and $D340.w,Y		; 39 40 D3
	and $8A.b		; 25 8A
	brk $3A.b		; 00 3A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sep #$00		; E2 00
	tsa		; 3B
	rti		; 40

	tas		; 1B
	cmp $00FA.w,X		; DD FA 00
	bit $DB40.w,X		; 3C 40 DB
	ora $0086.w,X		; 1D 86 00
	and $1340.w,X		; 3D 40 13
	sbc $F0.b		; E5 F0
	brk $3E.b		; 00 3E
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sed		; F8
	brk $3F.b		; 00 3F
	rti		; 40

	tsb $82EC.w		; 0C EC 82
	brk $40.b		; 00 40
	rti		; 40

	trb $E4.b		; 14 E4
	.db $82, $00, $41		; 82 00 41
	rti		; 40

	ora $DAEB.w		; 0D EB DA
	brk $42.b		; 00 42
	rti		; 40

	sbc $03.b,X		; F5 03
	dec $4300.w,X		; DE 00 43
	rti		; 40

	asl $E2EA.w		; 0E EA E2
	brk $44.b		; 00 44
	rti		; 40

	inc $F10A.w		; EE 0A F1
	brk $45.b		; 00 45
	rti		; 40

	ora $00EAE9.l		; 0F E9 EA 00
	lsr $40.b		; 46 40
	ora #$8AEF.w		; 09 EF 8A
	brk $47.b		; 00 47
	rti		; 40

	ora [$F1.b]		; 07 F1
	txs		; 9A
	brk $48.b		; 00 48
	rti		; 40

	ora [$F1.b]		; 07 F1
	ldx #$00.b		; A2 00
	eor #$F040.w		; 49 40 F0
	php		; 08
	lda ($00.b)		; B2 00
	lsr A		; 4A
	rti		; 40

	sed		; F8
	brk $DA.b		; 00 DA
	brk $4B.b		; 00 4B
	rti		; 40

	brk $F8.b		; 00 F8
	phx		; DA
	brk $4C.b		; 00 4C
	rti		; 40

	ora #$92EF.w		; 09 EF 92
	brk $4D.b		; 00 4D
	rti		; 40

	php		; 08
	beq -86.b		; F0 AA
	brk $4E.b		; 00 4E
	rti		; 40

	php		; 08
	beq -78.b		; F0 B2
	brk $4F.b		; 00 4F
	rti		; 40

	bit $FFF1.w		; 2C F1 FF
	lda ($08.b)		; B2 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	rep #$08		; C2 08
	asl $48.b		; 06 48
	dec $1A.b,X		; D6 1A
	txa		; 8A
	php		; 08
	php		; 08
	pha		; 48
	asl $DA.b,X		; 16 DA
	sta ($08.b)		; 92 08
	asl A		; 0A
	pha		; 48
	inc $FA.b,X		; F6 FA
	.db $82, $08, $0C		; 82 08 0C
	pha		; 48
	asl $EA.b		; 06 EA
	.db $82, $08, $0E		; 82 08 0E
	pha		; 48
	inc $FA.b,X		; F6 FA
	sta ($08.b)		; 92 08
	jsr $0648.w		; 20 48 06
	nop		; EA
	sta ($08.b)		; 92 08
	jsl $CA2648.l		; 22 48 26 CA
	bcc   8.b		; 90 08
	bit $48.b		; 24 48
	sbc $08A2F1.l,X		; FF F1 A2 08
	rol $48.b		; 26 48
	ora $82DB.w,X		; 1D DB 82
	brk $28.b		; 00 28
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp ($00.b)		; D2 00
	and #$FD40.w		; 29 40 FD
	xce		; FB
	cmp ($00.b)		; D2 00
	rol A		; 2A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b)		; D2 00
	pld		; 2B
	rti		; 40

	ora $D2EB.w		; 0D EB D2
	brk $2C.b		; 00 2C
	rti		; 40

	ora $DAEB.w		; 0D EB DA
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $03.b,X		; F5 03
	dec $2E00.w,X		; DE 00 2E
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b)		; F2 00
	and $0DEB40.l		; 2F 40 EB 0D
	rep #$00		; C2 00
	sec		; 38
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sep #$00		; E2 00
	and $F140.w,Y		; 39 40 F1
	ora [$E9.b]		; 07 E9
	brk $3A.b		; 00 3A
	rti		; 40

	sbc #$F90F.w		; E9 0F F9
	brk $3B.b		; 00 3B
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	stx $3C00.w		; 8E 00 3C
	rti		; 40

	asl $E2.b,X		; 16 E2
	sta $00.b,S		; 83 00
	and $E640.w,X		; 3D 40 E6
	ora ($9B.b)		; 12 9B
	brk $3E.b		; 00 3E
	rti		; 40

	inc $12.b		; E6 12
	sta $3F00.w		; 8D 00 3F
	rti		; 40

	inc $880A.w		; EE 0A 88
	brk $40.b		; 00 40
	rti		; 40

	inc $900A.w		; EE 0A 90
	brk $41.b		; 00 41
	rti		; 40

	inc $980A.w		; EE 0A 98
	brk $42.b		; 00 42
	rti		; 40

	trb $E4.b		; 14 E4
	plx		; FA
	brk $43.b		; 00 43
	rti		; 40

	rol $D2.b		; 26 D2
	ldy #$00.b		; A0 00
	mvp $2E,$40		; 44 40 2E
	dex		; CA
	ldy #$00.b		; A0 00
	eor $40.b		; 45 40
	inc $F10A.w		; EE 0A F1
	brk $46.b		; 00 46
	rti		; 40

	cmp $008219.l,X		; DF 19 82 00
	eor [$40.b]		; 47 40
	sbc [$11.b]		; E7 11
	.db $82, $00, $48		; 82 00 48
	rti		; 40

	sbc [$01.b],Y		; F7 01
	tax		; AA
	brk $49.b		; 00 49
	rti		; 40

	ora $00E2E9.l		; 0F E9 E2 00
	lsr A		; 4A
	rti		; 40

	ora $00EAE9.l		; 0F E9 EA 00
	phk		; 4B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	nop		; EA
	brk $4C.b		; 00 4C
	rti		; 40

	trb $FADC.w		; 1C DC FA
	brk $4D.b		; 00 4D
	rti		; 40

	sed		; F8
	brk $DA.b		; 00 DA
	brk $4E.b		; 00 4E
	rti		; 40

	brk $F8.b		; 00 F8
	phx		; DA
	brk $4F.b		; 00 4F
	rti		; 40

	asl $FAF6.w,X		; 1E F6 FA
	cmp ($08.b)		; D2 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	sbc $088AF1.l,X		; FF F1 8A 08
	tsb $48.b		; 04 48
	sbc $089AF1.l,X		; FF F1 9A 08
	asl $48.b		; 06 48
	sbc $08C201.l		; EF 01 C2 08
	php		; 08
	pha		; 48
	sbc $08B201.l		; EF 01 B2 08
	asl A		; 0A
	pha		; 48
	sbc $08AAF1.l,X		; FF F1 AA 08
	tsb $FF48.w		; 0C 48 FF
	sbc ($BA.b),Y		; F1 BA
	php		; 08
	asl $0F48.w		; 0E 48 0F
	sbc ($93.b,X)		; E1 93
	php		; 08
	jsr $1F48.w		; 20 48 1F
	cmp ($9D.b),Y		; D1 9D
	php		; 08
	jsl $00F048.l		; 22 48 F0 00
	sep #$08		; E2 08
	bit $48.b		; 24 48
	ora $00E2E9.l		; 0F E9 E2 00
	rol $40.b		; 26 40
	ora $00EAE9.l		; 0F E9 EA 00
	and [$40.b]		; 27 40
	ora ($E6.b)		; 12 E6
	sed		; F8
	brk $28.b		; 00 28
	rti		; 40

	inc A		; 1A
	dec $00F8.w,X		; DE F8 00
	and #$ED40.w		; 29 40 ED
	phd		; 0B
	sbc ($00.b)		; F2 00
	rol A		; 2A
	rti		; 40

	sbc #$FA0F.w		; E9 0F FA
	brk $2B.b		; 00 2B
	rti		; 40

	ora ($E6.b)		; 12 E6
	beq   0.b		; F0 00
	bit $E740.w		; 2C 40 E7
	ora ($82.b),Y		; 11 82
	brk $2D.b		; 00 2D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	ldx #$00.b		; A2 00
	rol $F740.w		; 2E 40 F7
	ora ($AA.b,X)		; 01 AA
	brk $2F.b		; 00 2F
	rti		; 40

	ora $00B2E9.l		; 0F E9 B2 00
	rol $40.b,X		; 36 40
	ora $00BAE9.l		; 0F E9 BA 00
	and [$40.b],Y		; 37 40
	ora $00C2E9.l		; 0F E9 C2 00
	sec		; 38
	rti		; 40

	sbc $00CAF9.l,X		; FF F9 CA 00
	and $0740.w,Y		; 39 40 07
	sbc ($CA.b),Y		; F1 CA
	brk $3A.b		; 00 3A
	rti		; 40

	ora $00CAE9.l		; 0F E9 CA 00
	tsa		; 3B
	rti		; 40

	sbc $008209.l		; EF 09 82 00
	bit $F740.w,X		; 3C 40 F7
	ora ($82.b,X)		; 01 82
	brk $3D.b		; 00 3D
	rti		; 40

	sbc [$01.b],Y		; F7 01
	txa		; 8A
	brk $3E.b		; 00 3E
	rti		; 40

	jsl $E1FFF1.l		; 22 F1 FF E1
	php		; 08
	brk $48.b		; 00 48
	jsl $0899CE.l		; 22 CE 99 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	sta $0408.w,Y		; 99 08 04
	pha		; 48
	sbc ($FE.b)		; F2 FE
	lda ($08.b),Y		; B1 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	lda ($08.b,X)		; A1 08
	php		; 08
	pha		; 48
	cop $EE.b		; 02 EE
	lda ($08.b),Y		; B1 08
	asl A		; 0A
	pha		; 48
	ora ($DE.b)		; 12 DE
	lda ($08.b),Y		; B1 08
	tsb $F348.w		; 0C 48 F3
	sbc $08C1.w,X		; FD C1 08
	asl $0348.w		; 0E 48 03
	sbc $08C1.w		; ED C1 08
	jsr $0848.w		; 20 48 08
	inx		; E8
	cmp ($08.b),Y		; D1 08
	jsl $08E848.l		; 22 48 E8 08
	cmp ($08.b),Y		; D1 08
	bit $48.b		; 24 48
	plx		; FA
	inc $00A9.w,X		; FE A9 00
	rol $40.b		; 26 40
	ora ($E6.b)		; 12 E6
	lda #$2700.w		; A9 00 27
	rti		; 40

	inc A		; 1A
	dec $00A9.w,X		; DE A9 00
	plp		; 28
	rti		; 40

	jsl $00A9D6.l		; 22 D6 A9 00
	and #$EB40.w		; 29 40 EB
	ora $00C9.w		; 0D C9 00
	rol A		; 2A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc $2B00.w,Y		; F9 00 2B
	rti		; 40

	tas		; 1B
	cmp $00F9.w,X		; DD F9 00
	bit $1140.w		; 2C 40 11
	sbc [$8C.b]		; E7 8C
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	rol $1340.w		; 2E 40 13
	sbc $C1.b		; E5 C1
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp #$3600.w		; C9 00 36
	rti		; 40

	ora $E9EB.w		; 0D EB E9
	brk $37.b		; 00 37
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc #$3800.w		; E9 00 38
	rti		; 40

	sbc $F10B.w		; ED 0B F1
	brk $39.b		; 00 39
	rti		; 40

	asl $E1EA.w		; 0E EA E1
	brk $3A.b		; 00 3A
	rti		; 40

	and [$D1.b]		; 27 D1
	sta $3B00.w		; 8D 00 3B
	rti		; 40

	ora $0091E9.l		; 0F E9 91 00
	bit $2040.w,X		; 3C 40 20
	cld		; D8
	sta ($00.b),Y		; 91 00
	and $0040.w,X		; 3D 40 00
	sed		; F8
	cmp ($00.b),Y		; D1 00
	rol $3140.w,X		; 3E 40 31
	cmp [$98.b]		; C7 98
	brk $3F.b		; 00 3F
	rti		; 40

	sbc #$F90F.w		; E9 0F F9
	brk $40.b		; 00 40
	rti		; 40

	sed		; F8
	brk $D1.b		; 00 D1
	brk $41.b		; 00 41
	rti		; 40

	sed		; F8
	brk $D9.b		; 00 D9
	brk $42.b		; 00 42
	rti		; 40

	tas		; 1B
	ora #$E0E7.w		; 09 E7 E0
	php		; 08
	brk $48.b		; 00 48
	sbc $0D.b,S		; E3 0D
	lda $08.b		; A5 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $BD.b		; E5 BD
	php		; 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	lda $08.b		; A5 08
	asl $48.b		; 06 48
	xba		; EB
	ora $C5.b		; 05 C5
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $C5.b,X		; F5 C5
	php		; 08
	asl A		; 0A
	pha		; 48
	xba		; EB
	ora $B5.b		; 05 B5
	php		; 08
	tsb $FB48.w		; 0C 48 FB
	sbc $B5.b,X		; F5 B5
	php		; 08
	asl $EE48.w		; 0E 48 EE
	cop $D5.b		; 02 D5
	php		; 08
	jsr $FE48.w		; 20 48 FE
	sbc ($D5.b)		; F2 D5
	php		; 08
	jsl $16E248.l		; 22 48 E2 16
	sbc $2400.w		; ED 00 24
	rti		; 40

	nop		; EA
	asl $00ED.w		; 0E ED 00
	and $40.b		; 25 40
	phx		; DA
	asl $00F5.w,X		; 1E F5 00
	rol $40.b		; 26 40
.INDEX 8
	sep #$16		; E2 16
	sbc $00.b,X		; F5 00
	and [$40.b]		; 27 40
	phx		; DA
	asl $00FD.w,X		; 1E FD 00
	plp		; 28
	rti		; 40

	tas		; 1B
	cmp $00C5.w,X		; DD C5 00
	and #$2340.w		; 29 40 23
	cmp $C5.b,X		; D5 C5
	brk $2A.b		; 00 2A
	rti		; 40

	xce		; FB
	sbc $00A5.w,X		; FD A5 00
	pld		; 2B
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $2C00.w		; AD 00 2C
	rti		; 40

	xce		; FB
	sbc $00AD.w,X		; FD AD 00
	and $1340.w		; 2D 40 13
	sbc $F0.b		; E5 F0
	brk $2E.b		; 00 2E
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	cmp ($00.b),Y		; D1 00
	and $D52340.l		; 2F 40 23 D5
	cmp $3400.w		; CD 00 34
	rti		; 40

	pld		; 2B
	cmp $00CD.w		; CD CD 00
	and $40.b,X		; 35 40
	sbc [$11.b]		; E7 11
	sbc $00.b		; E5 00
	rol $40.b,X		; 36 40
	sbc $00E509.l		; EF 09 E5 00
	and [$40.b],Y		; 37 40
	ora [$E1.b],Y		; 17 E1
	sed		; F8
	brk $38.b		; 00 38
	rti		; 40

	asl $DF11.w,X		; 1E 11 DF
	nop		; EA
	php		; 08
	brk $48.b		; 00 48
	sbc ($0F.b,X)		; E1 0F
	ldx #$08.b		; A2 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	phx		; DA
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	ldx #$08.b		; A2 08
	asl $48.b		; 06 48
	ora #$BAE7.w		; 09 E7 BA
	php		; 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	tsb $F948.w		; 0C 48 F9
	sbc [$BA.b],Y		; F7 BA
	php		; 08
	asl $E948.w		; 0E 48 E9
	ora [$BA.b]		; 07 BA
	php		; 08
	jsr $F148.w		; 20 48 F1
	sbc $2208AA.l,X		; FF AA 08 22
	pha		; 48
	php		; 08
	inx		; E8
	phx		; DA
	php		; 08
	bit $48.b		; 24 48
	and ($D7.b,X)		; 21 D7
	dex		; CA
	brk $26.b		; 00 26
	rti		; 40

	and #$CACF.w		; 29 CF CA
	brk $27.b		; 00 27
	rti		; 40

	and ($C7.b),Y		; 31 C7
	dex		; CA
	brk $28.b		; 00 28
	rti		; 40

	and ($C7.b),Y		; 31 C7
	cmp ($00.b)		; D2 00
	and #$3940.w		; 29 40 39
	lda $2A00D2.l,X		; BF D2 00 2A
	rti		; 40

	sbc #$E20F.w		; E9 0F E2
	brk $2B.b		; 00 2B
	rti		; 40

	ora $FADF.w,Y		; 19 DF FA
	brk $2C.b		; 00 2C
	rti		; 40

	ora $C2DF.w,Y		; 19 DF C2
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $A2FF.w,Y		; F9 FF A2
	brk $2E.b		; 00 2E
	rti		; 40

	sbc #$B20F.w		; E9 0F B2
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b)		; B2 00
	rol $40.b,X		; 36 40
	ora #$B2EF.w		; 09 EF B2
	brk $37.b		; 00 37
	rti		; 40

	sbc #$CA0F.w		; E9 0F CA
	brk $38.b		; 00 38
	rti		; 40

	cpx $14.b		; E4 14
	beq   0.b		; F0 00
	and $E640.w,Y		; 39 40 E6
	ora ($EA.b)		; 12 EA
	brk $3A.b		; 00 3A
	rti		; 40

	inc $EA0A.w		; EE 0A EA
	brk $3B.b		; 00 3B
	rti		; 40

	dec $F21A.w,X		; DE 1A F2
	brk $3C.b		; 00 3C
	rti		; 40

	dec $FA1A.w,X		; DE 1A FA
	brk $3D.b		; 00 3D
	rti		; 40

	and ($D7.b,X)		; 21 D7
	rep #$00		; C2 00
	rol $1940.w,X		; 3E 40 19
	nop		; EA
	asl $E1.b		; 06 E1
	php		; 08
	brk $48.b		; 00 48
	pea $D3FC.w		; F4 FC D3
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	cmp ($08.b,S),Y		; D3 08
	tsb $48.b		; 04 48
	ora $E3E3.w		; 0D E3 E3
	php		; 08
	asl $48.b		; 06 48
	asl $BAE2.w		; 0E E2 BA
	php		; 08
	php		; 08
	pha		; 48
	inc $B302.w		; EE 02 B3
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $B3F2.w,X		; FE F2 B3
	php		; 08
	tsb $EE48.w		; 0C 48 EE
	cop $C3.b		; 02 C3
	php		; 08
	asl $FE48.w		; 0E 48 FE
	sbc ($C3.b)		; F2 C3
	php		; 08
	jsr $E048.w		; 20 48 E0
	bpl -93.b		; 10 A3
	php		; 08
	jsl $F8F848.l		; 22 48 F8 F8
	lda $08.b,S		; A3 08
	bit $48.b		; 24 48
	nop		; EA
	asl $00F0.w		; 0E F0 00
	rol $40.b		; 26 40
	sbc ($17.b,X)		; E1 17
	sed		; F8
	brk $27.b		; 00 27
	rti		; 40

	asl $C2DA.w,X		; 1E DA C2
	brk $28.b		; 00 28
	rti		; 40

	rol $D2.b		; 26 D2
	rep #$00		; C2 00
	and #$2340.w		; 29 40 23
	cmp $CA.b,X		; D5 CA
	brk $2A.b		; 00 2A
	rti		; 40

	pld		; 2B
	cmp $00CA.w		; CD CA 00
	pld		; 2B
	rti		; 40

	tas		; 1B
	cmp $00FA.w,X		; DD FA 00
	bit $1340.w		; 2C 40 13
	sbc $F3.b		; E5 F3
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	xce		; FB
	brk $2E.b		; 00 2E
	rti		; 40

	beq   8.b		; F0 08
	plb		; AB
	brk $2F.b		; 00 2F
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	dec $3600.w		; CE 00 36
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	beq   0.b		; F0 00
	and [$40.b],Y		; 37 40
	php		; 08
	beq -93.b		; F0 A3
	brk $38.b		; 00 38
	rti		; 40

	php		; 08
	beq -85.b		; F0 AB
	brk $39.b		; 00 39
	rti		; 40

	tas		; 1B
	ora ($DF.b),Y		; 11 DF
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	rep #$08		; C2 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	rep #$08		; C2 08
	php		; 08
	pha		; 48
	and ($CF.b,X)		; 21 CF
	cpy #$08.b		; C0 08
	asl A		; 0A
	pha		; 48
	cpx $0C.b		; E4 0C
	ldx #$08.b		; A2 08
	tsb $FC48.w		; 0C 48 FC
	pea $08A2.w		; F4 A2 08
	asl $F748.w		; 0E 48 F7
	sbc $08D2.w,Y		; F9 D2 08
	jsr $0748.w		; 20 48 07
	sbc #$08D2.w		; E9 D2 08
	jsl $E51348.l		; 22 48 13 E5
	plx		; FA
	brk $24.b		; 00 24
	rti		; 40

	tas		; 1B
	cmp $00FA.w,X		; DD FA 00
	and $40.b		; 25 40
	pea $AA04.w		; F4 04 AA
	brk $26.b		; 00 26
	rti		; 40

	and $CDBF.w,Y		; 39 BF CD
	brk $27.b		; 00 27
	rti		; 40

	and ($C7.b),Y		; 31 C7
	dex		; CA
	brk $28.b		; 00 28
	rti		; 40

	tsb $A2EC.w		; 0C EC A2
	brk $29.b		; 00 29
	rti		; 40

	tsb $AAEC.w		; 0C EC AA
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $13.b		; E5 13
	plx		; FA
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $13.b		; E5 13
	sbc $00.b,X		; F5 00
	bit $EE40.w		; 2C 40 EE
	asl A		; 0A
	nop		; EA
	brk $2D.b		; 00 2D
	rti		; 40

	inc $02.b,X		; F6 02
	nop		; EA
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $00E209.l		; EF 09 E2 00
	and $01F740.l		; 2F 40 F7 01
	sep #$00		; E2 00
	bit $40.b,X		; 34 40
	ora $00E2E9.l		; 0F E9 E2 00
	and $40.b,X		; 35 40
	xba		; EB
	ora $00F2.w		; 0D F2 00
	rol $40.b,X		; 36 40
	ora ($E5.b,S),Y		; 13 E5
	sbc ($00.b)		; F2 00
	and [$40.b],Y		; 37 40
	bpl -24.b		; 10 E8
	nop		; EA
	brk $38.b		; 00 38
	rti		; 40

	ora $FDF3.w,Y		; 19 F3 FD
	sbc $08.b,S		; E3 08
	brk $48.b		; 00 48
	xba		; EB
	ora $C3.b		; 05 C3
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $C3.b,X		; F5 C3
	php		; 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	cmp ($08.b,S),Y		; D3 08
	asl $48.b		; 06 48
	bne  32.b		; D0 20
	plb		; AB
	php		; 08
	php		; 08
	pha		; 48
	sed		; F8
	sed		; F8
	lda $08.b,S		; A3 08
	asl A		; 0A
	pha		; 48
	brk $F0.b		; 00 F0
	lda ($08.b,S),Y		; B3 08
	tsb $E848.w		; 0C 48 E8
	php		; 08
	lda ($08.b,S),Y		; B3 08
	asl $ED48.w		; 0E 48 ED
	phd		; 0B
	cmp ($00.b,S),Y		; D3 00
	jsr $0540.w		; 20 40 05
	sbc ($D3.b,S),Y		; F3 D3
	brk $21.b		; 00 21
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,S),Y		; F3 00
	jsl $18E040.l		; 22 40 E0 18
	lda ($00.b,S),Y		; B3 00
	and $40.b,S		; 23 40
	bmi -56.b		; 30 C8
	cmp $00.b,S		; C3 00
	bit $40.b		; 24 40
	sbc ($05.b,S),Y		; F3 05
	xce		; FB
	brk $25.b		; 00 25
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	ora $00.b,S		; 03 00
	rol $40.b		; 26 40
	phd		; 0B
	sbc $00C3.w		; ED C3 00
	and [$40.b]		; 27 40
	phd		; 0B
	sbc $00CB.w		; ED CB 00
	plp		; 28
	rti		; 40

	beq   8.b		; F0 08
	plb		; AB
	brk $29.b		; 00 29
	rti		; 40

	sed		; F8
	brk $B3.b		; 00 B3
	brk $2A.b		; 00 2A
	rti		; 40

	sed		; F8
	brk $BB.b		; 00 BB
	brk $2B.b		; 00 2B
	rti		; 40

	bpl -24.b		; 10 E8
	lda $2C00.w,X		; BD 00 2C
	rti		; 40

	php		; 08
	beq -90.b		; F0 A6
	brk $2D.b		; 00 2D
	rti		; 40

	clc		; 18
	cpx #$BE.b		; E0 BE
	brk $2E.b		; 00 2E
	rti		; 40

	jsr $BED8.w		; 20 D8 BE
	brk $2F.b		; 00 2F
	rti		; 40

	plp		; 28
	bne -65.b		; D0 BF
	brk $30.b		; 00 30
	rti		; 40

	ora $1CD4.w,Y		; 19 D4 1C
	ldy $0008.w		; AC 08 00
	pha		; 48
	pea $D4FC.w		; F4 FC D4
	php		; 08
	cop $48.b		; 02 48
	jsr ($A4F4.w,X)		; FC F4 A4
	php		; 08
	tsb $48.b		; 04 48
	cpx $0C.b		; E4 0C
	ldy $0608.w		; AC 08 06
	pha		; 48
	cpx $0C.b		; E4 0C
	ldy $0808.w,X		; BC 08 08
	pha		; 48
	tsb $EC.b		; 04 EC
	ldy $08.b,X		; B4 08
	asl A		; 0A
	pha		; 48
	pea $B4FC.w		; F4 FC B4
	php		; 08
	tsb $F448.w		; 0C 48 F4
	jsr ($08C4.w,X)		; FC C4 08
	asl $E748.w		; 0E 48 E7
	ora #$08EC.w		; 09 EC 08
	jsr $1448.w		; 20 48 14
	cpx $BC.b		; E4 BC
	brk $22.b		; 00 22
	rti		; 40

	trb $BCDC.w		; 1C DC BC
	brk $23.b		; 00 23
	rti		; 40

	pea $A404.w		; F4 04 A4
	brk $24.b		; 00 24
	rti		; 40

	pea $AC04.w		; F4 04 AC
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	cpy $00.b		; C4 00
	rol $40.b		; 26 40
	tsb $C4EC.w		; 0C EC C4
	brk $27.b		; 00 27
	rti		; 40

	cpx $CC0C.w		; EC 0C CC
	brk $28.b		; 00 28
	rti		; 40

	tsb $F4.b		; 04 F4
	cpy $2900.w		; CC 00 29
	rti		; 40

	tsb $F4.b		; 04 F4
	pei ($00.b)		; D4 00
	rol A		; 2A
	rti		; 40

	sbc $00E409.l		; EF 09 E4 00
	pld		; 2B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cpx $00.b		; E4 00
	bit $E740.w		; 2C 40 E7
	ora ($FC.b),Y		; 11 FC
	brk $2D.b		; 00 2D
	rti		; 40

	tsb $D4EC.w		; 0C EC D4
	brk $2E.b		; 00 2E
	rti		; 40

	jsr $C0D8.w		; 20 D8 C0
	brk $2F.b		; 00 2F
	rti		; 40

	plp		; 28
	bne -64.b		; D0 C0
	brk $32.b		; 00 32
	rti		; 40

	bmi -56.b		; 30 C8
	cpy #$00.b		; C0 00
	and ($40.b,S),Y		; 33 40
	and $11.b,S		; 23 11
	cmp $0008B6.l,X		; DF B6 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b,X)		; A1 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	lda #$0408.w		; A9 08 04
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b),Y		; B1 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b,X)		; C1 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b),Y		; D1 08
	asl A		; 0A
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b),Y		; D1 08
	tsb $F148.w		; 0C 48 F1
	sbc $0E08B9.l,X		; FF B9 08 0E
	pha		; 48
	and #$B1CF.w		; 29 CF B1
	brk $20.b		; 00 20
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $2100.w,Y		; D9 00 21
	rti		; 40

	sbc #$E90F.w		; E9 0F E9
	brk $22.b		; 00 22
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc #$2300.w		; E9 00 23
	rti		; 40

	ora #$E9EF.w		; 09 EF E9
	brk $24.b		; 00 24
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc #$2500.w		; E9 00 25
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc ($00.b),Y		; F1 00
	rol $40.b		; 26 40
	sbc #$F10F.w		; E9 0F F1
	brk $27.b		; 00 27
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc $2800.w,Y		; F9 00 28
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $2900.w,Y		; F9 00 29
	rti		; 40

	ora $AEDF.w,Y		; 19 DF AE
	brk $2A.b		; 00 2A
	rti		; 40

	and $AEBF.w,Y		; 39 BF AE
	brk $2B.b		; 00 2B
	rti		; 40

	sbc ($17.b,X)		; E1 17
	ldx $2C00.w,Y		; BE 00 2C
	rti		; 40

	sbc ($17.b,X)		; E1 17
	dec $00.b		; C6 00
	and $2140.w		; 2D 40 21
	cmp [$B3.b],Y		; D7 B3
	brk $2E.b		; 00 2E
	rti		; 40

	and ($C7.b),Y		; 31 C7
	bcs   0.b		; B0 00
	and $DF1940.l		; 2F 40 19 DF
	sed		; F8
	brk $30.b		; 00 30
	rti		; 40

	sbc #$B10F.w		; E9 0F B1
	brk $31.b		; 00 31
	rti		; 40

	sbc #$B90F.w		; E9 0F B9
	brk $32.b		; 00 32
	rti		; 40

	sbc #$C10F.w		; E9 0F C1
	brk $33.b		; 00 33
	rti		; 40

	sbc #$C90F.w		; E9 0F C9
	brk $34.b		; 00 34
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp #$3500.w		; C9 00 35
	rti		; 40

	sbc $C9FF.w,Y		; F9 FF C9
	brk $36.b		; 00 36
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	and [$40.b],Y		; 37 40
	ora $E1EB.w		; 0D EB E1
	brk $38.b		; 00 38
	rti		; 40

	inc $E10A.w		; EE 0A E1
	brk $39.b		; 00 39
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,X)		; E1 00
	dec A		; 3A
	rti		; 40

	ora $A3E709.l,X		; 1F 09 E7 A3
	php		; 08
	brk $48.b		; 00 48
	sbc #$B307.w		; E9 07 B3
	php		; 08
	cop $48.b		; 02 48
	sbc #$C307.w		; E9 07 C3
	php		; 08
	tsb $48.b		; 04 48
	sbc $ABF7.w,Y		; F9 F7 AB
	php		; 08
	asl $48.b		; 06 48
	ora #$B3E7.w		; 09 E7 B3
	php		; 08
	php		; 08
	pha		; 48
	sbc $BBF7.w,Y		; F9 F7 BB
	php		; 08
	asl A		; 0A
	pha		; 48
	asl A		; 0A
	inc $D3.b		; E6 D3
	php		; 08
	tsb $EA48.w		; 0C 48 EA
	asl $E3.b		; 06 E3
	php		; 08
	asl $FA48.w		; 0E 48 FA
	inc $E3.b,X		; F6 E3
	php		; 08
	jsr $F248.w		; 20 48 F2
	inc $08D3.w,X		; FE D3 08
	jsl $FFF948.l		; 22 48 F9 FF
	wai		; CB
	brk $24.b		; 00 24
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	wai		; CB
	brk $25.b		; 00 25
	rti		; 40

	ora #$CBEF.w		; 09 EF CB
	brk $26.b		; 00 26
	rti		; 40

	ora $95DF.w,Y		; 19 DF 95
	brk $27.b		; 00 27
	rti		; 40

	ora $9DDF.w,Y		; 19 DF 9D
	brk $28.b		; 00 28
	rti		; 40

	ora $A5DF.w,Y		; 19 DF A5
	brk $29.b		; 00 29
	rti		; 40

	ora $ADDF.w,Y		; 19 DF AD
	brk $2A.b		; 00 2A
	rti		; 40

	ora $B5DF.w,Y		; 19 DF B5
	brk $2B.b		; 00 2B
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc $00.b,S		; E3 00
	bit $1240.w		; 2C 40 12
	inc $EB.b		; E6 EB
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b,S),Y		; F3 00
	rol $1240.w		; 2E 40 12
	inc $FB.b		; E6 FB
	brk $2F.b		; 00 2F
	rti		; 40

	inc A		; 1A
	dec $00FB.w,X		; DE FB 00
	bit $40.b,X		; 34 40
	sbc ($17.b,X)		; E1 17
	sbc ($00.b,S),Y		; F3 00
	and $40.b,X		; 35 40
	ora ($F7.b,X)		; 01 F7
	lda $00.b,S		; A3 00
	rol $40.b,X		; 36 40
	ora #$C3EF.w		; 09 EF C3
	brk $37.b		; 00 37
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $00.b,S		; C3 00
	sec		; 38
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,S),Y		; D3 00
	and $0240.w,Y		; 39 40 02
	inc $DB.b,X		; F6 DB
	brk $3A.b		; 00 3A
	rti		; 40

	cmp $00FB19.l,X		; DF 19 FB 00
	tsa		; 3B
	rti		; 40

	sbc [$11.b]		; E7 11
	sbc $403C00.l		; EF 00 3C 40
	ora $E403ED.l,X		; 1F ED 03 E4
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	ldy $08.b		; A4 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	ldy $08.b,X		; B4 08
	tsb $48.b		; 04 48
	php		; 08
	inx		; E8
	jmp.w [$0608]		; DC 08 06
	pha		; 48
	brk $F0.b		; 00 F0
	cpy $08.b		; C4 08
	php		; 08
	pha		; 48
	cld		; D8
	clc		; 18
	lda $08.b,X		; B5 08
	asl A		; 0A
	pha		; 48
	beq   0.b		; F0 00
	ldx $0C08.w		; AE 08 0C
	pha		; 48
	beq   0.b		; F0 00
	ldx $0E08.w,Y		; BE 08 0E
	pha		; 48
	beq   0.b		; F0 00
	dec $2008.w		; CE 08 20
	pha		; 48
	sbc #$F10F.w		; E9 0F F1
	brk $22.b		; 00 22
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	pea $2300.w		; F4 00 23
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sed		; F8
	brk $24.b		; 00 24
	rti		; 40

	bpl -24.b		; 10 E8
	ldy $2500.w,X		; BC 00 25
	rti		; 40

	bpl -24.b		; 10 E8
	cpy $00.b		; C4 00
	rol $40.b		; 26 40
	bpl -24.b		; 10 E8
	cpy $2700.w		; CC 00 27
	rti		; 40

	brk $F8.b		; 00 F8
	pei ($00.b)		; D4 00
	plp		; 28
	rti		; 40

	php		; 08
	beq -44.b		; F0 D4
	brk $29.b		; 00 29
	rti		; 40

	bpl -24.b		; 10 E8
	pei ($00.b)		; D4 00
	rol A		; 2A
	rti		; 40

	brk $F8.b		; 00 F8
	jmp.w [$2B00]		; DC 00 2B
	rti		; 40

	sbc $13.b		; E5 13
	sbc $2C00.w,Y		; F9 00 2C
	rti		; 40

	sed		; F8
	brk $A6.b		; 00 A6
	brk $2D.b		; 00 2D
	rti		; 40

	jsr $BED8.w		; 20 D8 BE
	brk $2E.b		; 00 2E
	rti		; 40

	plp		; 28
	bne -66.b		; D0 BE
	brk $2F.b		; 00 2F
	rti		; 40

	bmi -56.b		; 30 C8
	ldx $3200.w,Y		; BE 00 32
	rti		; 40

	sec		; 38
	cpy #$BE.b		; C0 BE
	brk $33.b		; 00 33
	rti		; 40

	clc		; 18
	cpx #$BC.b		; E0 BC
	brk $34.b		; 00 34
	rti		; 40

	bpl -24.b		; 10 E8
	cpx $3500.w		; EC 00 35
	rti		; 40

	ora $F8DF.w,Y		; 19 DF F8
	brk $36.b		; 00 36
	rti		; 40

	beq   8.b		; F0 08
	dec $3700.w,X		; DE 00 37
	rti		; 40

	sed		; F8
	brk $DE.b		; 00 DE
	brk $38.b		; 00 38
	rti		; 40

	inx		; E8
	bpl -71.b		; 10 B9
	brk $39.b		; 00 39
	rti		; 40

	ora $FDF3.w,X		; 1D F3 FD
	ldy $08.b,X		; B4 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cpy $08.b		; C4 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	ldy $08.b,X		; B4 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	cpy $08.b		; C4 08
	asl $48.b		; 06 48
	sbc $0D.b,S		; E3 0D
	ldx $08.b,Y		; B6 08
	php		; 08
	pha		; 48
	brk $F0.b		; 00 F0
	ldy $08.b		; A4 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	sed		; F8
	pei ($08.b)		; D4 08
	tsb $0848.w		; 0C 48 08
	inx		; E8
	pei ($08.b)		; D4 08
	asl $F048.w		; 0E 48 F0
	brk $E1.b		; 00 E1
	php		; 08
	jsr $2348.w		; 20 48 23
	cmp $BF.b,X		; D5 BF
	brk $22.b		; 00 22
	rti		; 40

	pld		; 2B
	cmp $00BF.w		; CD BF 00
	and $40.b,S		; 23 40
	and ($C5.b,S),Y		; 33 C5
	lda $402400.l,X		; BF 00 24 40
	tsa		; 3B
	lda $00BF.w,X		; BD BF 00
	and $40.b		; 25 40
	eor $B5.b,S		; 43 B5
	lda $402600.l,X		; BF 00 26 40
	trb $E4.b		; 14 E4
	pea $2700.w		; F4 00 27
	rti		; 40

	cpx $ED0C.w		; EC 0C ED
	brk $28.b		; 00 28
	rti		; 40

	sbc $13.b		; E5 13
	sbc $2900.w,Y		; F9 00 29
	rti		; 40

	ora $00F8E9.l		; 0F E9 F8 00
	rol A		; 2A
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sed		; F8
	brk $2B.b		; 00 2B
	rti		; 40

	sed		; F8
	brk $AC.b		; 00 AC
	brk $2C.b		; 00 2C
	rti		; 40

	bpl -24.b		; 10 E8
	cpx $2D00.w		; EC 00 2D
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cpy $00.b		; C4 00
	rol $1340.w		; 2E 40 13
	sbc $CC.b		; E5 CC
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	ldy $3200.w,X		; BC 00 32
	rti		; 40

	php		; 08
	beq -28.b		; F0 E4
	brk $33.b		; 00 33
	rti		; 40

	bpl -24.b		; 10 E8
	cpx $00.b		; E4 00
	bit $40.b,X		; 34 40
	bpl -24.b		; 10 E8
	tay		; A8
	brk $35.b		; 00 35
	rti		; 40

	inx		; E8
	bpl -15.b		; 10 F1
	brk $36.b		; 00 36
	rti		; 40

	tas		; 1B
	cmp $00BF.w,X		; DD BF 00
	and [$40.b],Y		; 37 40
	asl $F7F9.w,X		; 1E F9 F7
	bit #$0008.w		; 89 08 00
	pha		; 48
	asl A		; 0A
	inc $E1.b		; E6 E1
	php		; 08
	cop $48.b		; 02 48
	inc $D102.w		; EE 02 D1
	php		; 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	lda ($08.b,X)		; A1 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	lda ($08.b,X)		; A1 08
	php		; 08
	pha		; 48
	asl $EA.b		; 06 EA
	lda ($08.b),Y		; B1 08
	asl A		; 0A
	pha		; 48
	inc $FA.b,X		; F6 FA
	lda ($08.b),Y		; B1 08
	tsb $E648.w		; 0C 48 E6
	asl A		; 0A
	lda ($08.b),Y		; B1 08
	asl $E648.w		; 0E 48 E6
	asl A		; 0A
	cmp ($08.b,X)		; C1 08
	jsr $F648.w		; 20 48 F6
	plx		; FA
	cmp ($08.b,X)		; C1 08
	jsl $EA0648.l		; 22 48 06 EA
	cmp ($08.b,X)		; C1 08
	bit $48.b		; 24 48
	asl $EA.b		; 06 EA
	cmp ($08.b),Y		; D1 08
	rol $48.b		; 26 48
	inc A		; 1A
	dec $00E1.w,X		; DE E1 00
	plp		; 28
	rti		; 40

	sbc #$E10F.w		; E9 0F E1
	brk $29.b		; 00 29
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,X)		; E1 00
	rol A		; 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sta $2B00.w,Y		; 99 00 2B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sed		; F8
	brk $2C.b		; 00 2C
	rti		; 40

	ora $F8DF.w,Y		; 19 DF F8
	brk $2D.b		; 00 2D
	rti		; 40

	inc $A90A.w		; EE 0A A9
	brk $2E.b		; 00 2E
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp ($00.b,X)		; C1 00
	and $E21640.l		; 2F 40 16 E2
	cmp #$3800.w		; C9 00 38
	rti		; 40

	inc $D1FA.w,X		; FE FA D1
	brk $39.b		; 00 39
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp ($00.b),Y		; D1 00
	dec A		; 3A
	rti		; 40

	sbc [$11.b]		; E7 11
	sbc #$3B00.w		; E9 00 3B
	rti		; 40

	sbc $00E909.l		; EF 09 E9 00
	bit $DF40.w,X		; 3C 40 DF
	ora $00F1.w,Y		; 19 F1 00
	and $E740.w,X		; 3D 40 E7
	ora ($F1.b),Y		; 11 F1
	brk $3E.b		; 00 3E
	rti		; 40

	clc		; 18
	cpx #$D9.b		; E0 D9
	brk $3F.b		; 00 3F
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($00.b),Y		; F1 00
	rti		; 40

	rti		; 40

	cpx #$18.b		; E0 18
	sbc $4100.w,Y		; F9 00 41
	rti		; 40

	jsr $DF11.w		; 20 11 DF
	sbc ($08.b)		; F2 08
	brk $48.b		; 00 48
	and ($CF.b,X)		; 21 CF
	sty $08.b,X		; 94 08
	cop $48.b		; 02 48
	ora [$D9.b],Y		; 17 D9
	ldx #$08.b		; A2 08
	tsb $48.b		; 04 48
	sbc [$09.b]		; E7 09
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	ora [$E9.b]		; 07 E9
	ldx #$08.b		; A2 08
	php		; 08
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	ldx #$08.b		; A2 08
	asl A		; 0A
	pha		; 48
	inx		; E8
	php		; 08
	tsx		; BA
	php		; 08
	tsb $0848.w		; 0C 48 08
	inx		; E8
	tsx		; BA
	php		; 08
	asl $F848.w		; 0E 48 F8
	sed		; F8
	tsx		; BA
	php		; 08
	jsr $0848.w		; 20 48 08
	inx		; E8
	phx		; DA
	php		; 08
	jsl $F8F848.l		; 22 48 F8 F8
	cmp ($08.b)		; D2 08
	bit $48.b		; 24 48
	sbc ($07.b),Y		; F1 07
	nop		; EA
	brk $26.b		; 00 26
	rti		; 40

	sbc #$F20F.w		; E9 0F F2
	brk $27.b		; 00 27
	rti		; 40

	sbc ($17.b,X)		; E1 17
	plx		; FA
	brk $28.b		; 00 28
	rti		; 40

	sbc $00A209.l		; EF 09 A2 00
	and #$F740.w		; 29 40 F7
	ora ($B2.b,X)		; 01 B2
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $00B2F9.l,X		; FF F9 B2 00
	pld		; 2B
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b)		; B2 00
	bit $0F40.w		; 2C 40 0F
	sbc #$00B2.w		; E9 B2 00
	and $1740.w		; 2D 40 17
	sbc ($B2.b,X)		; E1 B2
	brk $2E.b		; 00 2E
	rti		; 40

	cpx #$18.b		; E0 18
	rep #$00		; C2 00
	and $E81040.l		; 2F 40 10 E8
	nop		; EA
	brk $36.b		; 00 36
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sep #$00		; E2 00
	and [$40.b],Y		; 37 40
	sbc $E2FF.w,Y		; F9 FF E2
	brk $38.b		; 00 38
	rti		; 40

	sbc $13.b		; E5 13
	sed		; F8
	brk $39.b		; 00 39
	rti		; 40

	sbc [$11.b]		; E7 11
	dex		; CA
	brk $3A.b		; 00 3A
	rti		; 40

	sbc #$EA0F.w		; E9 0F EA
	brk $3B.b		; 00 3B
	rti		; 40

	sed		; F8
	brk $CA.b		; 00 CA
	brk $3C.b		; 00 3C
	rti		; 40

	brk $F8.b		; 00 F8
	dex		; CA
	brk $3D.b		; 00 3D
	rti		; 40

	php		; 08
	beq -54.b		; F0 CA
	brk $3E.b		; 00 3E
	rti		; 40

	php		; 08
	beq -46.b		; F0 D2
	brk $3F.b		; 00 3F
	rti		; 40

	bpl -24.b		; 10 E8
	cmp ($00.b)		; D2 00
	rti		; 40

	rti		; 40

	and $E9.b,S		; 23 E9
	ora [$B2.b]		; 07 B2
	php		; 08
	brk $48.b		; 00 48
	sbc $B2F7.w,Y		; F9 F7 B2
	php		; 08
	cop $48.b		; 02 48
	ora #$B2E7.w		; 09 E7 B2
	php		; 08
	tsb $48.b		; 04 48
	cop $EE.b		; 02 EE
	ldx #$08.b		; A2 08
	asl $48.b		; 06 48
	ora ($DE.b)		; 12 DE
	ldx #$08.b		; A2 08
	php		; 08
	pha		; 48
	nop		; EA
	asl $C2.b		; 06 C2
	php		; 08
	asl A		; 0A
	pha		; 48
	plx		; FA
	inc $C2.b,X		; F6 C2
	php		; 08
	tsb $3248.w		; 0C 48 32
	ldx $0895.w,Y		; BE 95 08
	asl $F748.w		; 0E 48 F7
	sbc $08D2.w,Y		; F9 D2 08
	jsr $0748.w		; 20 48 07
	sbc #$08D2.w		; E9 D2 08
	jsl $06F248.l		; 22 48 F2 06
	sep #$00		; E2 00
	bit $40.b		; 24 40
	plx		; FA
	inc $00E2.w,X		; FE E2 00
	and $40.b		; 25 40
	ora ($E6.b)		; 12 E6
	sbc ($00.b)		; F2 00
	rol $40.b		; 26 40
.INDEX 8
	sep #$16		; E2 16
	plx		; FA
	brk $27.b		; 00 27
	rti		; 40

	ora ($E6.b)		; 12 E6
	plx		; FA
	brk $28.b		; 00 28
	rti		; 40

	inc A		; 1A
	dec $00FA.w,X		; DE FA 00
	and #$1940.w		; 29 40 19
	cmp $2A00B2.l,X		; DF B2 00 2A
	rti		; 40

	sbc ($17.b,X)		; E1 17
	lda ($00.b)		; B2 00
	pld		; 2B
	rti		; 40

	and ($D7.b,X)		; 21 D7
	lda $2C00.w		; AD 00 2C
	rti		; 40

	nop		; EA
	asl $00AA.w		; 0E AA 00
	and $0A40.w		; 2D 40 0A
	inc $00C2.w		; EE C2 00
	rol $0A40.w		; 2E 40 0A
	inc $00CA.w		; EE CA 00
	and $D62240.l		; 2F 40 22 D6
	sta $3400.w,X		; 9D 00 34
	rti		; 40

	rol A		; 2A
	dec $009D.w		; CE 9D 00
	and $40.b,X		; 35 40
	jsl $00A5D6.l		; 22 D6 A5 00
	rol $40.b,X		; 36 40
	sbc ($06.b)		; F2 06
	tax		; AA
	brk $37.b		; 00 37
	rti		; 40

	sbc $00D209.l		; EF 09 D2 00
	sec		; 38
	rti		; 40

	plx		; FA
	inc $00AA.w,X		; FE AA 00
	and $EA40.w,Y		; 39 40 EA
	asl $00E2.w		; 0E E2 00
	dec A		; 3A
	rti		; 40

	bpl -24.b		; 10 E8
	sep #$00		; E2 00
	tsa		; 3B
	rti		; 40

	inx		; E8
	bpl -22.b		; 10 EA
	brk $3C.b		; 00 3C
	rti		; 40

	beq   8.b		; F0 08
	nop		; EA
	brk $3D.b		; 00 3D
	rti		; 40

	bpl -24.b		; 10 E8
	nop		; EA
	brk $3E.b		; 00 3E
	rti		; 40

	cpx #$18.b		; E0 18
	sbc ($00.b)		; F2 00
	and $10E840.l,X		; 3F 40 E8 10
	sbc ($00.b)		; F2 00
	rti		; 40

	rti		; 40

	ora $B0F7F9.l,X		; 1F F9 F7 B0
	php		; 08
	brk $48.b		; 00 48
	sbc $C0F7.w,Y		; F9 F7 C0
	php		; 08
	cop $48.b		; 02 48
	ora #$B0E7.w		; 09 E7 B0
	php		; 08
	tsb $48.b		; 04 48
	ora $B0D7.w,Y		; 19 D7 B0
	php		; 08
	asl $48.b		; 06 48
	ora #$C0E7.w		; 09 E7 C0
	php		; 08
	php		; 08
	pha		; 48
	ora $C0D7.w,Y		; 19 D7 C0
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc #$B107.w		; E9 07 B1
	php		; 08
	tsb $FC48.w		; 0C 48 FC
	pea $08D0.w		; F4 D0 08
	asl $1548.w		; 0E 48 15
	stp		; DB
	cld		; D8
	php		; 08
	jsr $F048.w		; 20 48 F0
	brk $E8.b		; 00 E8
	php		; 08
	jsl $AF4948.l		; 22 48 49 AF
	cpy $00.b		; C4 00
	bit $40.b		; 24 40
	ora $A8DF.w,Y		; 19 DF A8
	brk $25.b		; 00 25
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sed		; F8
	brk $26.b		; 00 26
	rti		; 40

	and #$C1CF.w		; 29 CF C1
	brk $27.b		; 00 27
	rti		; 40

	ora $F8DF.w,Y		; 19 DF F8
	brk $28.b		; 00 28
	rti		; 40

	trb $E4.b		; 14 E4
	bne   0.b		; D0 00
	and #$1C40.w		; 29 40 1C
	jmp.w [$00D0]		; DC D0 00
	rol A		; 2A
	rti		; 40

	cpx $F80C.w		; EC 0C F8
	brk $2B.b		; 00 2B
	rti		; 40

	pea $F804.w		; F4 04 F8
	cpy #$22.b		; C0 22
	bra  49.b		; 80 31
	cmp [$C4.b]		; C7 C4
	brk $2C.b		; 00 2C
	rti		; 40

	tsb $D0EC.w		; 0C EC D0
	brk $2D.b		; 00 2D
	rti		; 40

	tsb $D8EC.w		; 0C EC D8
	brk $2E.b		; 00 2E
	rti		; 40

	ora $F3.b		; 05 F3
	tay		; A8
	brk $2F.b		; 00 2F
	rti		; 40

	ora $E3.b,X		; 15 E3
	beq   0.b		; F0 00
	bit $40.b,X		; 34 40
	and $C4BF.w,Y		; 39 BF C4
	brk $35.b		; 00 35
	rti		; 40

	ora $E3.b,X		; 15 E3
	inx		; E8
	brk $36.b		; 00 36
	rti		; 40

	ora $E8DB.w,X		; 1D DB E8
	brk $37.b		; 00 37
	rti		; 40

	sbc $00E0F9.l,X		; FF F9 E0 00
	sec		; 38
	rti		; 40

	ora [$F1.b]		; 07 F1
	cpx #$00.b		; E0 00
	and $0040.w,Y		; 39 40 00
	sed		; F8
	inx		; E8
	brk $3A.b		; 00 3A
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	cpy $00.b		; C4 00
	tsa		; 3B
	rti		; 40

	trb $F7F9.w		; 1C F9 F7
	rep #$08		; C2 08
	brk $48.b		; 00 48
	and #$A2C7.w		; 29 C7 A2
	php		; 08
	cop $48.b		; 02 48
	and #$B2C7.w		; 29 C7 B2
	php		; 08
	tsb $48.b		; 04 48
	ora $AAD7.w,Y		; 19 D7 AA
	php		; 08
	asl $48.b		; 06 48
	ora $BAD7.w,Y		; 19 D7 BA
	php		; 08
	php		; 08
	pha		; 48
	ora #$BAE7.w		; 09 E7 BA
	php		; 08
	asl A		; 0A
	pha		; 48
	and $CB.b		; 25 CB
	dex		; CA
	php		; 08
	tsb $1548.w		; 0C 48 15
	stp		; DB
	dex		; CA
	php		; 08
	asl $1548.w		; 0E 48 15
	stp		; DB
	phx		; DA
	php		; 08
	jsr $1148.w		; 20 48 11
	sbc [$B2.b]		; E7 B2
	brk $22.b		; 00 22
	rti		; 40

	and #$C2CF.w		; 29 CF C2
	brk $23.b		; 00 23
	rti		; 40

	and ($C7.b),Y		; 31 C7
	rep #$00		; C2 00
	bit $40.b		; 24 40
	eor #$B3AF.w		; 49 AF B3
	brk $25.b		; 00 25
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	ldy $00.b,X		; B4 00
	rol $40.b		; 26 40
	and $A6BF.w,Y		; 39 BF A6
	brk $27.b		; 00 27
	rti		; 40

	and $B6BF.w,Y		; 39 BF B6
	brk $28.b		; 00 28
	rti		; 40

	and $BEBF.w,Y		; 39 BF BE
	brk $29.b		; 00 29
	rti		; 40

	eor ($A7.b),Y		; 51 A7
	lda $402A00.l		; AF 00 2A 40
	eor $AF9F.w,Y		; 59 9F AF
	brk $2B.b		; 00 2B
	rti		; 40

	ora $CAEB.w		; 0D EB CA
	brk $2C.b		; 00 2C
	rti		; 40

	ora $E2EB.w		; 0D EB E2
	brk $2D.b		; 00 2D
	rti		; 40

	ora $E3.b,X		; 15 E3
	sbc ($00.b)		; F2 00
	rol $1540.w		; 2E 40 15
	sbc $FA.b,S		; E3 FA
	brk $2F.b		; 00 2F
	rti		; 40

	ora $FADB.w,X		; 1D DB FA
	brk $32.b		; 00 32
	rti		; 40

	ora $EADF.w,Y		; 19 DF EA
	brk $33.b		; 00 33
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tax		; AA
	brk $34.b		; 00 34
	rti		; 40

	ora #$B2EF.w		; 09 EF B2
	brk $35.b		; 00 35
	rti		; 40

	and $D3.b		; 25 D3
	phx		; DA
	brk $36.b		; 00 36
	rti		; 40

	clc		; 18
	phy		; 5A
	stx $AA.b,Y		; 96 AA
	php		; 08
	brk $48.b		; 00 48
	lsr A		; 4A
	ldx $AA.b		; A6 AA
	php		; 08
	cop $48.b		; 02 48
	dec A		; 3A
	ldx $9A.b,Y		; B6 9A
	php		; 08
	tsb $48.b		; 04 48
	rol A		; 2A
	dec $9A.b		; C6 9A
	php		; 08
	asl $48.b		; 06 48
	inc A		; 1A
	dec $A2.b,X		; D6 A2
	php		; 08
	php		; 08
	pha		; 48
	inc A		; 1A
	dec $B2.b,X		; D6 B2
	php		; 08
	asl A		; 0A
	pha		; 48
	rol A		; 2A
	dec $AA.b		; C6 AA
	php		; 08
	tsb $3A48.w		; 0C 48 3A
	ldx $AA.b,Y		; B6 AA
	php		; 08
	asl $2A48.w		; 0E 48 2A
	dec $BA.b		; C6 BA
	php		; 08
	jsr $0248.w		; 20 48 02
	inc $08C0.w		; EE C0 08
	jsl $C92748.l		; 22 48 27 C9
	dex		; CA
	php		; 08
	bit $48.b		; 24 48
	and ($CF.b,X)		; 21 CF
	phx		; DA
	php		; 08
	rol $48.b		; 26 48
	dec A		; 3A
	ldx $00BA.w,Y		; BE BA 00
	plp		; 28
	rti		; 40

	.db $42, $B6		; 42 B6
	tsx		; BA
	brk $29.b		; 00 29
	rti		; 40

	lsr A		; 4A
	ldx $00BA.w		; AE BA 00
	rol A		; 2A
	rti		; 40

	jsl $00C2D6.l		; 22 D6 C2 00
	pld		; 2B
	rti		; 40

	dec A		; 3A
	ldx $00C2.w,Y		; BE C2 00
	bit $6A40.w		; 2C 40 6A
	stx $00A7.w		; 8E A7 00
	and $5A40.w		; 2D 40 5A
	stz $00A2.w,X		; 9E A2 00
	rol $1B40.w		; 2E 40 1B
	cmp $00F2.w,X		; DD F2 00
	and $D91F40.l		; 2F 40 1F D9
	nop		; EA
	brk $38.b		; 00 38
	rti		; 40

	ora ($E6.b)		; 12 E6
	rep #$00		; C2 00
	and $1A40.w,Y		; 39 40 1A
	dec $00FA.w,X		; DE FA 00
	dec A		; 3A
	rti		; 40

	ora $BEDF.w,Y		; 19 DF BE
	brk $3B.b		; 00 3B
	rti		; 40

	ora $F1.b,X		; 15 F1
	sbc $0008D4.l,X		; FF D4 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	pei ($08.b)		; D4 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	ldy $08.b		; A4 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	ldy $08.b,X		; B4 08
	asl $48.b		; 06 48
	sbc #$AC07.w		; E9 07 AC
	php		; 08
	php		; 08
	pha		; 48
	sbc $C403.w		; ED 03 C4
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $C4F3.w,X		; FD F3 C4
	php		; 08
	tsb $D648.w		; 0C 48 D6
	inc A		; 1A
	sta ($08.b,S),Y		; 93 08
	asl $F948.w		; 0E 48 F9
	sbc $2000A4.l,X		; FF A4 00 20
	rti		; 40

	sbc $ACFF.w,Y		; F9 FF AC
	brk $21.b		; 00 21
	rti		; 40

	sbc $B4FF.w,Y		; F9 FF B4
	brk $22.b		; 00 22
	rti		; 40

	sbc #$BC0F.w		; E9 0F BC
	brk $23.b		; 00 23
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ldy $2400.w,X		; BC 00 24
	rti		; 40

	sbc $BCFF.w,Y		; F9 FF BC
	brk $25.b		; 00 25
	rti		; 40

	ora $D5DF.w,Y		; 19 DF D5
	brk $26.b		; 00 26
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	pei ($00.b)		; D4 00
	and [$40.b]		; 27 40
	sbc ($17.b,X)		; E1 17
	ldx #$00.b		; A2 00
	plp		; 28
	rti		; 40

	ora $C4EB.w		; 0D EB C4
	brk $29.b		; 00 29
	rti		; 40

	ora $CCEB.w		; 0D EB CC
	brk $2A.b		; 00 2A
	rti		; 40

	ora $E3.b,X		; 15 E3
	cmp $2B00.w		; CD 00 2B
	rti		; 40

	sbc #$A40F.w		; E9 0F A4
	brk $2C.b		; 00 2C
	rti		; 40

	tas		; 1B
	sbc #$BA07.w		; E9 07 BA
	php		; 08
	brk $48.b		; 00 48
	sbc $BAF7.w,Y		; F9 F7 BA
	php		; 08
	cop $48.b		; 02 48
	ora #$BAE7.w		; 09 E7 BA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	asl $48.b		; 06 48
	ora #$CAE7.w		; 09 E7 CA
	php		; 08
	php		; 08
	pha		; 48
	dec $AA12.w,X		; DE 12 AA
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $AA02.w		; EE 02 AA
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($AA.b)		; F2 AA
	php		; 08
	asl $0148.w		; 0E 48 01
	sbc [$D2.b],Y		; F7 D2
	brk $20.b		; 00 20
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $21.b		; 00 21
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $22.b		; 00 22
	rti		; 40

	ora #$DAEF.w		; 09 EF DA
	brk $23.b		; 00 23
	rti		; 40

	ora $C8DF.w,Y		; 19 DF C8
	brk $24.b		; 00 24
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b)		; F2 00
	and $40.b		; 25 40
	sbc $E2FB.w,X		; FD FB E2
	brk $26.b		; 00 26
	rti		; 40

	asl $B2EA.w		; 0E EA B2
	brk $27.b		; 00 27
	rti		; 40

	asl $F2.b		; 06 F2
	plx		; FA
	brk $28.b		; 00 28
	rti		; 40

	ora #$02EF.w		; 09 EF 02
	brk $29.b		; 00 29
	rti		; 40

	sbc ($17.b,X)		; E1 17
	ldx #$00.b		; A2 00
	rol A		; 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dex		; CA
	brk $2B.b		; 00 2B
	rti		; 40

	inc $02.b,X		; F6 02
	ldx #$00.b		; A2 00
	bit $FE40.w		; 2C 40 FE
	plx		; FA
	ldx #$00.b		; A2 00
	and $0640.w		; 2D 40 06
	sbc ($A2.b)		; F2 A2
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $00EAF9.l,X		; FF F9 EA 00
	and $C83040.l		; 2F 40 30 C8
	cmp ($00.b,S),Y		; D3 00
	bmi  64.b		; 30 40
	jsr $CDD8.w		; 20 D8 CD
	brk $31.b		; 00 31
	rti		; 40

	plp		; 28
	bne -48.b		; D0 D0
	brk $32.b		; 00 32
	rti		; 40

	trb $E709.w		; 1C 09 E7
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	ldx #$08.b		; A2 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	sbc $BAF7.w,Y		; F9 F7 BA
	php		; 08
	asl $48.b		; 06 48
	sbc #$BA07.w		; E9 07 BA
	php		; 08
	php		; 08
	pha		; 48
	cmp $08CA11.l,X		; DF 11 CA 08
	asl A		; 0A
	pha		; 48
	sbc $08CA01.l		; EF 01 CA 08
	tsb $FF48.w		; 0C 48 FF
	sbc ($CA.b),Y		; F1 CA
	php		; 08
	asl $0F48.w		; 0E 48 0F
	sbc ($CA.b,X)		; E1 CA
	php		; 08
	jsr $F148.w		; 20 48 F1
	ora [$B2.b]		; 07 B2
	brk $22.b		; 00 22
	rti		; 40

	sbc $B2FF.w,Y		; F9 FF B2
	brk $23.b		; 00 23
	rti		; 40

	and $D5.b,S		; 23 D5
	txa		; 8A
	brk $24.b		; 00 24
	rti		; 40

	tas		; 1B
	cmp $0092.w,X		; DD 92 00
	and $40.b		; 25 40
	and $D5.b,S		; 23 D5
	sta ($00.b)		; 92 00
	rol $40.b		; 26 40
	ora ($E5.b,S),Y		; 13 E5
	txs		; 9A
	brk $27.b		; 00 27
	rti		; 40

	tas		; 1B
	cmp $009A.w,X		; DD 9A 00
	plp		; 28
	rti		; 40

	tsb $A2EC.w		; 0C EC A2
	brk $29.b		; 00 29
	rti		; 40

	trb $E4.b		; 14 E4
	ldx #$00.b		; A2 00
	rol A		; 2A
	rti		; 40

	sbc $E2FB.w,X		; FD FB E2
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $EAFB.w,X		; FD FB EA
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $F2FB.w,X		; FD FB F2
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $FAFB.w,X		; FD FB FA
	brk $2E.b		; 00 2E
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $2F.b		; 00 2F
	rti		; 40

	ora $C2DF.w,Y		; 19 DF C2
	brk $32.b		; 00 32
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tax		; AA
	brk $33.b		; 00 33
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	bit $40.b,X		; 34 40
	sbc #$B20F.w		; E9 0F B2
	brk $35.b		; 00 35
	rti		; 40

	ora $00CBD9.l,X		; 1F D9 CB 00
	rol $40.b,X		; 36 40
	ora $17D9.w,X		; 1D D9 17
	rep #$08		; C2 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	ldx #$08.b		; A2 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	sbc #$B207.w		; E9 07 B2
	php		; 08
	asl $48.b		; 06 48
	sbc #$C207.w		; E9 07 C2
	php		; 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	tsb $1148.w		; 0C 48 11
	cmp $0E08BB.l,X		; DF BB 08 0E
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	wai		; CB
	php		; 08
	jsr $3148.w		; 20 48 31
	cmp [$9A.b]		; C7 9A
	brk $22.b		; 00 22
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	and $40.b,S		; 23 40
	sbc $B2FF.w,Y		; F9 FF B2
	brk $24.b		; 00 24
	rti		; 40

	sbc $BAFF.w,Y		; F9 FF BA
	brk $25.b		; 00 25
	rti		; 40

	sbc $C2FF.w,Y		; F9 FF C2
	brk $26.b		; 00 26
	rti		; 40

	sbc $CAFF.w,Y		; F9 FF CA
	brk $27.b		; 00 27
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp ($00.b)		; D2 00
	plp		; 28
	rti		; 40

	sbc $D2FF.w,Y		; F9 FF D2
	brk $29.b		; 00 29
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $2B.b		; 00 2B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plb		; AB
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda ($00.b,S),Y		; B3 00
	and $2140.w		; 2D 40 21
	cmp [$A2.b],Y		; D7 A2
	brk $2E.b		; 00 2E
	rti		; 40

	and ($D7.b,X)		; 21 D7
	tax		; AA
	brk $2F.b		; 00 2F
	rti		; 40

	and #$C5CF.w		; 29 CF C5
	brk $32.b		; 00 32
	rti		; 40

	ora $A7DF.w,Y		; 19 DF A7
	brk $33.b		; 00 33
	rti		; 40

	sbc ($17.b,X)		; E1 17
	lda [$00.b],Y		; B7 00
	bit $40.b,X		; 34 40
	and #$A0CF.w		; 29 CF A0
	brk $35.b		; 00 35
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cpy #$00.b		; C0 00
	rol $40.b,X		; 36 40
	rol $C7CA.w		; 2E CA C7
	brk $37.b		; 00 37
	rti		; 40

	trb $D719.w		; 1C 19 D7
	tax		; AA
	php		; 08
	brk $48.b		; 00 48
	sbc $D2F7.w,Y		; F9 F7 D2
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	ldx #$08.b		; A2 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b)		; B2 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	rep #$08		; C2 08
	php		; 08
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	dex		; CA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	rep #$08		; C2 08
	tsb $0148.w		; 0C 48 01
	sbc $0E08B2.l		; EF B2 08 0E
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	lda $482008.l		; AF 08 20 48
	cmp $BF17.w,Y		; D9 17 BF
	php		; 08
	jsl $F70148.l		; 22 48 01 F7
	tax		; AA
	brk $24.b		; 00 24
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tax		; AA
	brk $25.b		; 00 25
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda ($00.b)		; B2 00
	rol $40.b		; 26 40
	ora ($E7.b),Y		; 11 E7
	tsx		; BA
	brk $27.b		; 00 27
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	plp		; 28
	rti		; 40

	ora $C2DF.w,Y		; 19 DF C2
	brk $29.b		; 00 29
	rti		; 40

	ora #$D2EF.w		; 09 EF D2
	brk $2A.b		; 00 2A
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cmp $00.b		; C5 00
	pld		; 2B
	rti		; 40

	and #$C5CF.w		; 29 CF C5
	brk $2C.b		; 00 2C
	rti		; 40

	and #$A6CF.w		; 29 CF A6
	brk $2D.b		; 00 2D
	rti		; 40

	sbc #$A70F.w		; E9 0F A7
	brk $2E.b		; 00 2E
	rti		; 40

	and ($C7.b),Y		; 31 C7
	cmp [$00.b]		; C7 00
	and $BF3940.l		; 2F 40 39 BF
	cmp [$00.b]		; C7 00
	bit $40.b,X		; 34 40
	eor ($B7.b,X)		; 41 B7
	cmp [$00.b]		; C7 00
	and $40.b,X		; 35 40
	and ($C7.b),Y		; 31 C7
	ldx #$00.b		; A2 00
	rol $40.b,X		; 36 40
	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	and [$40.b],Y		; 37 40
	sbc #$BF0F.w		; E9 0F BF
	brk $38.b		; 00 38
	rti		; 40

	sbc #$C70F.w		; E9 0F C7
	brk $39.b		; 00 39
	rti		; 40

	tas		; 1B
	asl $EA.b		; 06 EA
	cmp ($08.b,X)		; C1 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	sbc #$0208.w		; E9 08 02
	pha		; 48
	inc $FA.b,X		; F6 FA
	cmp $0408.w,Y		; D9 08 04
	pha		; 48
	asl $EA.b		; 06 EA
	cmp ($08.b),Y		; D1 08
	asl $48.b		; 06 48
	asl $EA.b		; 06 EA
	sbc ($08.b,X)		; E1 08
	php		; 08
	pha		; 48
	cmp $08D211.l,X		; DF 11 D2 08
	asl A		; 0A
	pha		; 48
	asl $DBDA.w,X		; 1E DA DB
	brk $0C.b		; 00 0C
	rti		; 40

	rol $D2.b		; 26 D2
	jmp.w [$0D00]		; DC 00 0D
	rti		; 40

	rol $DCCA.w		; 2E CA DC
	brk $0E.b		; 00 0E
	rti		; 40

	rol $C2.b,X		; 36 C2
	jmp.w [$0F00]		; DC 00 0F
	rti		; 40

	rol $DCBA.w,X		; 3E BA DC
	brk $1C.b		; 00 1C
	rti		; 40

	inc $C9FA.w,X		; FE FA C9
	brk $1D.b		; 00 1D
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b),Y		; D1 00
	asl $FE40.w,X		; 1E 40 FE
	plx		; FA
	cmp ($00.b),Y		; D1 00
	ora $E21640.l,X		; 1F 40 16 E2
	cmp $2000.w,Y		; D9 00 20
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	asl $E2.b,X		; 16 E2
	sbc #$2200.w		; E9 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	and $40.b,S		; 23 40
	asl $F1EA.w		; 0E EA F1
	brk $24.b		; 00 24
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc ($00.b),Y		; F1 00
	and $40.b		; 25 40
	asl $E2.b,X		; 16 E2
	cmp $00.b		; C5 00
	rol $40.b		; 26 40
	sbc $00D809.l		; EF 09 D8 00
	and [$40.b]		; 27 40
	sbc [$01.b],Y		; F7 01
	sbc $2800.w,Y		; F9 00 28
	rti		; 40

	sbc $00F9F9.l,X		; FF F9 F9 00
	and #$0740.w		; 29 40 07
	sbc ($F9.b),Y		; F1 F9
	brk $2A.b		; 00 2A
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	pld		; 2B
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sbc $2C00.w,Y		; F9 00 2C
	rti		; 40

	trb $11.b		; 14 11
	cmp $0008C2.l,X		; DF C2 08 00
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b)		; F2 08
	cop $48.b		; 02 48
	ora $DAD7.w,Y		; 19 D7 DA
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	sbc ($08.b)		; F2 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	sbc ($08.b)		; F2 08
	php		; 08
	pha		; 48
	sbc $E2F7.w,Y		; F9 F7 E2
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $D2F7.w,Y		; F9 F7 D2
	php		; 08
	tsb $0948.w		; 0C 48 09
	sbc [$D2.b]		; E7 D2
	php		; 08
	asl $0948.w		; 0E 48 09
	sbc [$E2.b]		; E7 E2
	php		; 08
	jsr $E948.w		; 20 48 E9
	ora [$D5.b]		; 07 D5
	php		; 08
	jsl $F70148.l		; 22 48 01 F7
	dex		; CA
	brk $24.b		; 00 24
	rti		; 40

	ora #$CAEF.w		; 09 EF CA
	brk $25.b		; 00 25
	rti		; 40

	ora $EADF.w,Y		; 19 DF EA
	brk $26.b		; 00 26
	rti		; 40

	and ($D7.b,X)		; 21 D7
	nop		; EA
	brk $27.b		; 00 27
	rti		; 40

	ora #$C2EF.w		; 09 EF C2
	brk $28.b		; 00 28
	rti		; 40

	and #$DECF.w		; 29 CF DE
	brk $29.b		; 00 29
	rti		; 40

	and ($C7.b),Y		; 31 C7
	dec $2A00.w,X		; DE 00 2A
	rti		; 40

	and $DEBF.w,Y		; 39 BF DE
	brk $2B.b		; 00 2B
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	dec $2C00.w,X		; DE 00 2C
	rti		; 40

	eor #$DEAF.w		; 49 AF DE
	brk $2D.b		; 00 2D
	rti		; 40

	inc A		; 1A
	xba		; EB
	ora $AF.b		; 05 AF
	php		; 08
	brk $48.b		; 00 48
	asl $DA.b,X		; 16 DA
	rep #$08		; C2 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	dex		; CA
	php		; 08
	asl $48.b		; 06 48
	asl $DA.b,X		; 16 DA
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	asl $D2E2.w		; 0E E2 D2
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $EAF2.w,X		; FE F2 EA
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($DA.b)		; F2 DA
	php		; 08
	asl $F948.w		; 0E 48 F9
	sbc $2000FB.l,X		; FF FB 00 20
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsx		; BA
	brk $21.b		; 00 21
	rti		; 40

	asl $FAEA.w		; 0E EA FA
	brk $22.b		; 00 22
	rti		; 40

	ora #$BAEF.w		; 09 EF BA
	brk $23.b		; 00 23
	rti		; 40

	sbc $BBFF.w,Y		; F9 FF BB
	brk $24.b		; 00 24
	rti		; 40

	inc $C2FA.w,X		; FE FA C2
	brk $25.b		; 00 25
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b)		; D2 00
	rol $40.b		; 26 40
	inc $02.b,X		; F6 02
	phx		; DA
	brk $27.b		; 00 27
	rti		; 40

	asl $DADA.w,X		; 1E DA DA
	brk $28.b		; 00 28
	rti		; 40

	asl $E2EA.w		; 0E EA E2
	brk $29.b		; 00 29
	rti		; 40

	asl $EAEA.w		; 0E EA EA
	brk $2A.b		; 00 2A
	rti		; 40

	asl $F2EA.w		; 0E EA F2
	brk $2B.b		; 00 2B
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b,S),Y		; F3 00
	bit $2640.w		; 2C 40 26
	cmp ($E5.b)		; D2 E5
	brk $2D.b		; 00 2D
	rti		; 40

	rol $D2.b		; 26 D2
	sbc $2E00.w		; ED 00 2E
	rti		; 40

	rol $EFCA.w		; 2E CA EF
	brk $2F.b		; 00 2F
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sbc ($00.b)		; F2 00
	bmi  64.b		; 30 40
	ora [$E1.b],Y		; 17 E1
	plx		; FA
	brk $31.b		; 00 31
	rti		; 40

	clc		; 18
	and ($BE.b)		; 32 BE
	iny		; C8
	php		; 08
	brk $48.b		; 00 48
	jsl $08D0CE.l		; 22 CE D0 08
	cop $48.b		; 02 48
	inc A		; 1A
	dec $C0.b,X		; D6 C0
	php		; 08
	tsb $48.b		; 04 48
	ora ($DE.b)		; 12 DE
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	asl A		; 0A
	inc $C0.b		; E6 C0
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $C0.b,X		; F6 C0
	php		; 08
	asl A		; 0A
	pha		; 48
	plx		; FA
	inc $D0.b,X		; F6 D0
	php		; 08
	tsb $ED48.w		; 0C 48 ED
	ora $E2.b,S		; 03 E2
	php		; 08
	asl $1548.w		; 0E 48 15
	stp		; DB
	beq   8.b		; F0 08
	jsr $1548.w		; 20 48 15
	stp		; DB
	cpx #$08.b		; E0 08
	jsl $F3FD48.l		; 22 48 FD F3
	cpx #$08.b		; E0 08
	bit $48.b		; 24 48
	.db $42, $B6		; 42 B6
	cmp #$2600.w		; C9 00 26
	rti		; 40

	sbc ($06.b)		; F2 06
	iny		; C8
	brk $27.b		; 00 27
	rti		; 40

	and $D3.b		; 25 D3
	cpx #$00.b		; E0 00
	plp		; 28
	rti		; 40

	sbc $03.b,X		; F5 03
	beq   0.b		; F0 00
	and #$F540.w		; 29 40 F5
	ora $F8.b,S		; 03 F8
	brk $2A.b		; 00 2A
	rti		; 40

	jsl $00B8D6.l		; 22 D6 B8 00
	pld		; 2B
	rti		; 40

	asl A		; 0A
	inc $00D0.w		; EE D0 00
	bit $0A40.w		; 2C 40 0A
	inc $00D8.w		; EE D8 00
	and $0D40.w		; 2D 40 0D
	xba		; EB
	cpx #$00.b		; E0 00
	rol $0D40.w		; 2E 40 0D
	xba		; EB
	inx		; E8
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $F0FB.w,X		; FD FB F0
	brk $36.b		; 00 36
	rti		; 40

	ora $F3.b		; 05 F3
	beq   0.b		; F0 00
	and [$40.b],Y		; 37 40
	ora $F0EB.w		; 0D EB F0
	brk $38.b		; 00 38
	rti		; 40

	jsr $BF31.w		; 20 31 BF
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	and ($CF.b,X)		; 21 CF
	ldy $08.b,X		; B4 08
	cop $48.b		; 02 48
	and ($CF.b,X)		; 21 CF
	cpy $08.b		; C4 08
	tsb $48.b		; 04 48
	ora ($DF.b),Y		; 11 DF
	ldy $08.b,X		; B4 08
	asl $48.b		; 06 48
	sbc $BCF7.w,Y		; F9 F7 BC
	php		; 08
	php		; 08
	pha		; 48
	sbc $CCF7.w,Y		; F9 F7 CC
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	cpy $08.b		; C4 08
	tsb $1148.w		; 0C 48 11
	cmp $0E08D4.l,X		; DF D4 08 0E
	pha		; 48
	eor $AD.b,S		; 43 AD
	cpy $2008.w		; CC 08 20
	pha		; 48
	ora $EB.b		; 05 EB
	cpx $08.b		; E4 08
	jsl $FBF548.l		; 22 48 F5 FB
	sbc $2408.w		; ED 08 24
	pha		; 48
	clc		; 18
	cld		; D8
	cpx $08.b		; E4 08
	rol $48.b		; 26 48
	ora #$BCEF.w		; 09 EF BC
	brk $28.b		; 00 28
	rti		; 40

	ora #$C4EF.w		; 09 EF C4
	brk $29.b		; 00 29
	rti		; 40

	ora #$CCEF.w		; 09 EF CC
	brk $2A.b		; 00 2A
	rti		; 40

	ora #$D4EF.w		; 09 EF D4
	brk $2B.b		; 00 2B
	rti		; 40

	ora #$DCEF.w		; 09 EF DC
	brk $2C.b		; 00 2C
	rti		; 40

	asl A		; 0A
	inc $009C.w		; EE 9C 00
	and $1240.w		; 2D 40 12
	inc $9C.b		; E6 9C
	brk $2E.b		; 00 2E
	rti		; 40

	and ($D7.b,X)		; 21 D7
	jmp.w [$2F00]		; DC 00 2F
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $3800.w,Y		; F9 00 38
	rti		; 40

	trb $ACDC.w		; 1C DC AC
	brk $39.b		; 00 39
	rti		; 40

	bit $D4.b		; 24 D4
	ldy $3A00.w		; AC 00 3A
	rti		; 40

	bit $C9BC.w,X		; 3C BC C9
	brk $3B.b		; 00 3B
	rti		; 40

	ora $E3.b,X		; 15 E3
	pea $3C00.w		; F4 00 3C
	rti		; 40

	ora $E3.b,X		; 15 E3
	jsr ($3D00.w,X)		; FC 00 3D
	rti		; 40

	ora $FCDB.w,X		; 1D DB FC
	brk $3E.b		; 00 3E
	rti		; 40

	and ($C7.b),Y		; 31 C7
	dex		; CA
	brk $3F.b		; 00 3F
	rti		; 40

	sbc $F50B.w		; ED 0B F5
	brk $40.b		; 00 40
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldy $00.b		; A4 00
	eor ($40.b,X)		; 41 40
	ora [$F1.b]		; 07 F1
	sty $00.b,X		; 94 00
	.db $42, $40		; 42 40
	ora $A4DF.w,Y		; 19 DF A4
	brk $43.b		; 00 43
	rti		; 40

	and ($E9.b,X)		; 21 E9
	ora [$DB.b]		; 07 DB
	php		; 08
	brk $48.b		; 00 48
	sbc $DBF7.w,Y		; F9 F7 DB
	php		; 08
	cop $48.b		; 02 48
	ora #$DBE7.w		; 09 E7 DB
	php		; 08
	tsb $48.b		; 04 48
	nop		; EA
	asl $CB.b		; 06 CB
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $EB.b,X		; F6 EB
	php		; 08
	php		; 08
	pha		; 48
	cop $EE.b		; 02 EE
	cmp $08.b,S		; C3 08
	asl A		; 0A
	pha		; 48
	ora $DBDF.w,Y		; 19 DF DB
	brk $0C.b		; 00 0C
	rti		; 40

	ora $E3DF.w,Y		; 19 DF E3
	brk $0D.b		; 00 0D
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b,S),Y		; D3 00
	asl $1A40.w		; 0E 40 1A
	dec $00D3.w,X		; DE D3 00
	ora $06F240.l		; 0F 40 F2 06
	xba		; EB
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($E6.b)		; 12 E6
	xba		; EB
	brk $1D.b		; 00 1D
	rti		; 40

	and ($D7.b,X)		; 21 D7
	sep #$00		; E2 00
	asl $2940.w,X		; 1E 40 29
	cmp $1F00E2.l		; CF E2 00 1F
	rti		; 40

	and ($C7.b),Y		; 31 C7
	sep #$00		; E2 00
	jsr $FA40.w		; 20 40 FA
	inc $00CB.w,X		; FE CB 00
	and ($40.b,X)		; 21 40
	plx		; FA
	inc $00D3.w,X		; FE D3 00
	jsl $F60240.l		; 22 40 02 F6
	cmp ($00.b,S),Y		; D3 00
	and $40.b,S		; 23 40
	asl A		; 0A
	inc $00D3.w		; EE D3 00
	bit $40.b		; 24 40
	asl A		; 0A
	inc $00EB.w		; EE EB 00
	and $40.b		; 25 40
	asl A		; 0A
	inc $00F3.w		; EE F3 00
	rol $40.b		; 26 40
	jsl $00D1D6.l		; 22 D6 D1 00
	and [$40.b]		; 27 40
	ora $E3.b,X		; 15 E3
	inc $2800.w,X		; FE 00 28
	rti		; 40

	ora $00DB.w,X		; 1D DB 00
	brk $29.b		; 00 29
	rti		; 40

	and $D3.b		; 25 D3
	ora ($00.b,X)		; 01 00
	rol A		; 2A
	rti		; 40

	and $01CB.w		; 2D CB 01
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $00FB09.l		; EF 09 FB 00
	bit $F740.w		; 2C 40 F7
	ora ($FB.b,X)		; 01 FB
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $00FBF9.l,X		; FF F9 FB 00
	rol $0740.w		; 2E 40 07
	sbc ($FB.b),Y		; F1 FB
	brk $2F.b		; 00 2F
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	bmi  64.b		; 30 40
	cmp $00F919.l,X		; DF 19 F9 00
	and ($40.b),Y		; 31 40
	sbc [$11.b]		; E7 11
	sbc $3200.w,Y		; F9 00 32
	rti		; 40

	tas		; 1B
	ora $E4D7.w,Y		; 19 D7 E4
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	pei ($08.b)		; D4 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cpx $08.b		; E4 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	pei ($08.b)		; D4 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	cpx $08.b		; E4 08
	php		; 08
	pha		; 48
	inc $FA.b,X		; F6 FA
	pea $0A08.w		; F4 08 0A
	pha		; 48
	asl $EA.b		; 06 EA
	pea $0C08.w		; F4 08 0C
	pha		; 48
	brk $F0.b		; 00 F0
	cpy $08.b		; C4 08
	asl $1148.w		; 0E 48 11
	sbc [$E4.b]		; E7 E4
	brk $20.b		; 00 20
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cpx INIDSP.w		; EC 00 21
	rti		; 40

	and #$E5CF.w		; 29 CF E5
	brk $22.b		; 00 22
	rti		; 40

	and ($C7.b),Y		; 31 C7
	sbc $00.b		; E5 00
	and $40.b,S		; 23 40
	and $E5BF.w,Y		; 39 BF E5
	brk $24.b		; 00 24
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	sbc $00.b		; E5 00
	and $40.b		; 25 40
	rol $D2.b		; 26 D2
	cop $00.b		; 02 00
	rol $40.b		; 26 40
	rol $02CA.w		; 2E CA 02
	brk $27.b		; 00 27
	rti		; 40

	asl $E2.b,X		; 16 E2
	pea $2800.w		; F4 00 28
	rti		; 40

	asl $F4DA.w,X		; 1E DA F4
	brk $29.b		; 00 29
	rti		; 40

	inc $FC0A.w		; EE 0A FC
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	pei ($00.b)		; D4 00
	pld		; 2B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	jmp.w [$2C00]		; DC 00 2C
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $402D00.l,X		; FF 00 2D 40
	asl $FFDA.w,X		; 1E DA FF
	brk $2E.b		; 00 2E
	rti		; 40

	dec $F91A.w,X		; DE 1A F9
	brk $2F.b		; 00 2F
	rti		; 40

	inc $12.b		; E6 12
	sbc $3000.w,Y		; F9 00 30
	rti		; 40

	sed		; F8
	brk $CC.b		; 00 CC
	brk $31.b		; 00 31
	rti		; 40

	ora $DCDF.w,Y		; 19 DF DC
	brk $32.b		; 00 32
	rti		; 40

	clc		; 18
	ora $C2D7.w,Y		; 19 D7 C2
	php		; 08
	brk $48.b		; 00 48
	ora $D2D7.w,Y		; 19 D7 D2
	php		; 08
	cop $48.b		; 02 48
	ora $E2D7.w,Y		; 19 D7 E2
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	sep #$08		; E2 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	sbc $D2F7.w,Y		; F9 F7 D2
	php		; 08
	asl A		; 0A
	pha		; 48
	ora #$D2E7.w		; 09 E7 D2
	php		; 08
	tsb $F748.w		; 0C 48 F7
	sbc $08F2.w,Y		; F9 F2 08
	asl $0748.w		; 0E 48 07
	sbc #$08F2.w		; E9 F2 08
	jsr $0148.w		; 20 48 01
	sbc [$CA.b],Y		; F7 CA
	brk $22.b		; 00 22
	rti		; 40

	ora #$CAEF.w		; 09 EF CA
	brk $23.b		; 00 23
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	dex		; CA
	brk $24.b		; 00 24
	rti		; 40

	sbc ($07.b),Y		; F1 07
	phx		; DA
	brk $25.b		; 00 25
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sep #$00		; E2 00
	rol $40.b		; 26 40
	ora ($E7.b),Y		; 11 E7
	nop		; EA
	brk $27.b		; 00 27
	rti		; 40

	and #$CDCF.w		; 29 CF CD
	brk $28.b		; 00 28
	rti		; 40

	and ($C7.b),Y		; 31 C7
	cmp $2900.w		; CD 00 29
	rti		; 40

	and #$D5CF.w		; 29 CF D5
	brk $2A.b		; 00 2A
	rti		; 40

	eor [$B1.b]		; 47 B1
	rep #$00		; C2 00
	pld		; 2B
	rti		; 40

	and $CABF.w,Y		; 39 BF CA
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	and $1740.w		; 2D 40 17
	sbc ($F2.b,X)		; E1 F2
	brk $2E.b		; 00 2E
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	plx		; FA
	brk $2F.b		; 00 2F
	rti		; 40

	and $00C6B9.l,X		; 3F B9 C6 00
	and ($40.b)		; 32 40
	asl $AF41.w,X		; 1E 41 AF
	cpx #$08.b		; E0 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	asl $DA.b,X		; 16 DA
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	rol $CA.b		; 26 CA
	cmp ($08.b)		; D2 08
	asl $48.b		; 06 48
	rol $BA.b,X		; 36 BA
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	bpl -32.b		; 10 E0
	rep #$08		; C2 08
	asl A		; 0A
	pha		; 48
	jsr $C2D0.w		; 20 D0 C2
	php		; 08
	tsb $3048.w		; 0C 48 30
	cpy #$C2.b		; C0 C2
	php		; 08
	asl $1048.w		; 0E 48 10
	cpx #$E2.b		; E0 E2
	php		; 08
	jsr $2048.w		; 20 48 20
	bne -30.b		; D0 E2
	php		; 08
	jsl $CD2B48.l		; 22 48 2B CD
	sbc ($00.b)		; F2 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	plx		; FA
	brk $25.b		; 00 25
	rti		; 40

	ora $92DB.w,X		; 1D DB 92
	brk $26.b		; 00 26
	rti		; 40

	asl $9ADA.w,X		; 1E DA 9A
	brk $27.b		; 00 27
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $28.b		; 00 28
	rti		; 40

	jsl $00A2D6.l		; 22 D6 A2 00
	and #$2240.w		; 29 40 22
	dec $AA.b,X		; D6 AA
	brk $2A.b		; 00 2A
	rti		; 40

	rol A		; 2A
	dec $00AA.w		; CE AA 00
	pld		; 2B
	rti		; 40

	pld		; 2B
	cmp $00B2.w		; CD B2 00
	bit $2F40.w		; 2C 40 2F
	cmp #$00BA.w		; C9 BA 00
	and $0840.w		; 2D 40 08
	beq -54.b		; F0 CA
	brk $2E.b		; 00 2E
	rti		; 40

	sed		; F8
	brk $E2.b		; 00 E2
	brk $2F.b		; 00 2F
	rti		; 40

	brk $F8.b		; 00 F8
	sep #$00		; E2 00
	bit $40.b,X		; 34 40
	php		; 08
	beq -30.b		; F0 E2
	brk $35.b		; 00 35
	rti		; 40

	clc		; 18
	cpx #$FA.b		; E0 FA
	brk $36.b		; 00 36
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b)		; F2 00
	and [$40.b],Y		; 37 40
	phd		; 0B
	sbc $00F2.w		; ED F2 00
	sec		; 38
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	sbc ($00.b)		; F2 00
	and $1B40.w,Y		; 39 40 1B
	cmp $00F2.w,X		; DD F2 00
	dec A		; 3A
	rti		; 40

	and $D5.b,S		; 23 D5
	sbc ($00.b)		; F2 00
	tsa		; 3B
	rti		; 40

	jsr $D719.w		; 20 19 D7
	rep #$08		; C2 08
	brk $48.b		; 00 48
	ora $D2D7.w,Y		; 19 D7 D2
	php		; 08
	cop $48.b		; 02 48
	and ($BF.b),Y		; 31 BF
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	and ($BF.b),Y		; 31 BF
	sep #$08		; E2 08
	asl $48.b		; 06 48
	ora $E2D7.w,Y		; 19 D7 E2
	php		; 08
	php		; 08
	pha		; 48
	ora $F2D7.w,Y		; 19 D7 F2
	php		; 08
	asl A		; 0A
	pha		; 48
	eor ($AF.b,X)		; 41 AF
	cmp [$08.b],Y		; D7 08
	tsb $0948.w		; 0C 48 09
	sbc [$C1.b]		; E7 C1
	php		; 08
	asl $0948.w		; 0E 48 09
	sbc [$E9.b]		; E7 E9
	php		; 08
	jsr $0148.w		; 20 48 01
	sbc $2208D1.l		; EF D1 08 22
	pha		; 48
	and #$E2CF.w		; 29 CF E2
	brk $24.b		; 00 24
	rti		; 40

	and #$EACF.w		; 29 CF EA
	brk $25.b		; 00 25
	rti		; 40

	and #$F2CF.w		; 29 CF F2
	brk $26.b		; 00 26
	rti		; 40

	and #$FACF.w		; 29 CF FA
	brk $27.b		; 00 27
	rti		; 40

	eor ($A7.b),Y		; 51 A7
	sbc [$00.b]		; E7 00
	plp		; 28
	rti		; 40

	and #$C2CF.w		; 29 CF C2
	brk $29.b		; 00 29
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	sbc [$00.b]		; E7 00
	rol A		; 2A
	rti		; 40

	eor #$E7AF.w		; 49 AF E7
	brk $2B.b		; 00 2B
	rti		; 40

	eor $E89F.w,Y		; 59 9F E8
	brk $2C.b		; 00 2C
	rti		; 40

	adc ($97.b,X)		; 61 97
	inx		; E8
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $2E00.w,Y		; F9 00 2E
	rti		; 40

	and #$CACF.w		; 29 CF CA
	brk $2F.b		; 00 2F
	rti		; 40

	and #$D2CF.w		; 29 CF D2
	brk $34.b		; 00 34
	rti		; 40

	and #$DACF.w		; 29 CF DA
	brk $35.b		; 00 35
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp ($00.b),Y		; D1 00
	rol $40.b,X		; 36 40
	ora ($E7.b),Y		; 11 E7
	cmp $3700.w,Y		; D9 00 37
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,X)		; E1 00
	sec		; 38
	rti		; 40

	ora #$E1EF.w		; 09 EF E1
	brk $39.b		; 00 39
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,X)		; E1 00
	dec A		; 3A
	rti		; 40

	inc $BBFA.w,X		; FE FA BB
	brk $3B.b		; 00 3B
	rti		; 40

	asl $F2.b		; 06 F2
	ldy $3C00.w,X		; BC 00 3C
	rti		; 40

	inc $02.b,X		; F6 02
	lda [$00.b],Y		; B7 00
	and $2140.w,X		; 3D 40 21
	and #$8AC7.w		; 29 C7 8A
	php		; 08
	brk $48.b		; 00 48
	sbc ($0F.b,X)		; E1 0F
	txs		; 9A
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	txs		; 9A
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	sta ($08.b)		; 92 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	sta ($08.b)		; 92 08
	php		; 08
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	ldx #$08.b		; A2 08
	asl A		; 0A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	ldx #$08.b		; A2 08
	tsb $F148.w		; 0C 48 F1
	sbc $0E08AA.l,X		; FF AA 08 0E
	pha		; 48
	ora #$B2E7.w		; 09 E7 B2
	php		; 08
	jsr $F148.w		; 20 48 F1
	sbc $2208BA.l,X		; FF BA 08 22
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	bit $48.b		; 24 48
	ora #$C2E7.w		; 09 E7 C2
	php		; 08
	rol $48.b		; 26 48
	ora [$E9.b]		; 07 E9
	phx		; DA
	php		; 08
	plp		; 28
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	phx		; DA
	php		; 08
	rol A		; 2A
	pha		; 48
	ora ($E7.b),Y		; 11 E7
	sbc ($00.b)		; F2 00
	bit $F140.w		; 2C 40 F1
	ora [$FA.b]		; 07 FA
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $2E.b		; 00 2E
	rti		; 40

	ora $FADF.w,Y		; 19 DF FA
	brk $2F.b		; 00 2F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	txa		; 8A
	brk $3C.b		; 00 3C
	rti		; 40

	and ($D7.b,X)		; 21 D7
	sta ($00.b)		; 92 00
	and $0140.w,X		; 3D 40 01
	sbc [$B2.b],Y		; F7 B2
	brk $3E.b		; 00 3E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsx		; BA
	brk $3F.b		; 00 3F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	rep #$00		; C2 00
	rti		; 40

	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dex		; CA
	brk $41.b		; 00 41
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	.db $42, $40		; 42 40
	ora #$D2EF.w		; 09 EF D2
	brk $43.b		; 00 43
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp ($00.b)		; D2 00
	mvp $F5,$40		; 44 40 F5
	ora $F2.b,S		; 03 F2
	brk $45.b		; 00 45
	rti		; 40

	ora $00EAE9.l		; 0F E9 EA 00
	lsr $40.b		; 46 40
	and $8ABF.w,Y		; 39 BF 8A
	brk $47.b		; 00 47
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	txa		; 8A
	brk $48.b		; 00 48
	rti		; 40

	sbc [$01.b],Y		; F7 01
	nop		; EA
	brk $49.b		; 00 49
	rti		; 40

	sbc $00EAF9.l,X		; FF F9 EA 00
	lsr A		; 4A
	rti		; 40

	ora $A207E9.l,X		; 1F E9 07 A2
	php		; 08
	brk $48.b		; 00 48
	sbc $A2F7.w,Y		; F9 F7 A2
	php		; 08
	cop $48.b		; 02 48
	sbc #$C207.w		; E9 07 C2
	php		; 08
	tsb $48.b		; 04 48
	sbc $C2F7.w,Y		; F9 F7 C2
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b)		; D2 08
	asl A		; 0A
	pha		; 48
	ora $ED.b,S		; 03 ED
	sta ($08.b)		; 92 08
	tsb $E448.w		; 0C 48 E4
	tsb $08B2.w		; 0C B2 08
	asl $F448.w		; 0E 48 F4
	jsr ($08B2.w,X)		; FC B2 08
	jsr $1948.w		; 20 48 19
	cmp $22008A.l,X		; DF 8A 00 22
	rti		; 40

	ora #$A2EF.w		; 09 EF A2
	brk $23.b		; 00 23
	rti		; 40

	ora #$AAEF.w		; 09 EF AA
	brk $24.b		; 00 24
	rti		; 40

	ora #$C2EF.w		; 09 EF C2
	brk $25.b		; 00 25
	rti		; 40

	ora #$CAEF.w		; 09 EF CA
	brk $26.b		; 00 26
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sep #$00		; E2 00
	and [$40.b]		; 27 40
	sbc $E2FF.w,Y		; F9 FF E2
	brk $28.b		; 00 28
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	and #$1B40.w		; 29 40 1B
	cmp $0092.w,X		; DD 92 00
	rol A		; 2A
	rti		; 40

	xce		; FB
	sbc $009A.w,X		; FD 9A 00
	pld		; 2B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldx #$00.b		; A2 00
	bit $1340.w		; 2C 40 13
	sbc $92.b		; E5 92
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	txs		; 9A
	brk $2E.b		; 00 2E
	rti		; 40

	tas		; 1B
	cmp $0086.w,X		; DD 86 00
	and $07F140.l		; 2F 40 F1 07
	nop		; EA
	brk $32.b		; 00 32
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	txa		; 8A
	brk $33.b		; 00 33
	rti		; 40

	tsb $F4.b		; 04 F4
	lda ($00.b)		; B2 00
	bit $40.b,X		; 34 40
	tsb $F4.b		; 04 F4
	tsx		; BA
	brk $35.b		; 00 35
	rti		; 40

	brk $F8.b		; 00 F8
	nop		; EA
	brk $36.b		; 00 36
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b)		; F2 00
	and [$40.b],Y		; 37 40
	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	sec		; 38
	rti		; 40

	beq   8.b		; F0 08
	plx		; FA
	brk $39.b		; 00 39
	rti		; 40

	asl $EF01.w,X		; 1E 01 EF
	txa		; 8A
	php		; 08
	brk $48.b		; 00 48
	and #$B2C7.w		; 29 C7 B2
	php		; 08
	cop $48.b		; 02 48
	ora #$CAE7.w		; 09 E7 CA
	php		; 08
	tsb $48.b		; 04 48
	sbc $CAF7.w,Y		; F9 F7 CA
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	tax		; AA
	php		; 08
	php		; 08
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	tsx		; BA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	tsb $0148.w		; 0C 48 01
	sbc $0E08AA.l		; EF AA 08 0E
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	lda ($08.b)		; B2 08
	jsr $0948.w		; 20 48 09
	sbc [$9A.b]		; E7 9A
	php		; 08
	jsl $D71948.l		; 22 48 19 D7
	ldx #$08.b		; A2 08
	bit $48.b		; 24 48
	sbc $DAF3.w,X		; FD F3 DA
	php		; 08
	rol $48.b		; 26 48
	and $BB.b,X		; 35 BB
	lda $482808.l,X		; BF 08 28 48
	ora ($E7.b),Y		; 11 E7
	sta ($00.b)		; 92 00
	rol A		; 2A
	rti		; 40

	ora $9ADF.w,Y		; 19 DF 9A
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	pld		; 2B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tax		; AA
	brk $2C.b		; 00 2C
	rti		; 40

	and #$AACF.w		; 29 CF AA
	brk $2A.b		; 00 2A
	rti		; 40

	and ($D7.b,X)		; 21 D7
	lda ($00.b)		; B2 00
	bpl  64.b		; 10 40
	and ($D7.b,X)		; 21 D7
	tsx		; BA
	brk $2D.b		; 00 2D
	rti		; 40

	ora $DAEB.w		; 0D EB DA
	brk $2E.b		; 00 2E
	rti		; 40

	ora $E3.b,X		; 15 E3
	phx		; DA
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $8AFF.w,Y		; F9 FF 8A
	brk $3A.b		; 00 3A
	rti		; 40

	sbc $03.b,X		; F5 03
	stp		; DB
	brk $3B.b		; 00 3B
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $00.b,S		; E3 00
	bit $F940.w,X		; 3C 40 F9
	sbc $3D0082.l,X		; FF 82 00 3D
	rti		; 40

	sbc $00EAF9.l,X		; FF F9 EA 00
	rol $FF40.w,X		; 3E 40 FF
	sbc $00F2.w,Y		; F9 F2 00
	and $F9FF40.l,X		; 3F 40 FF F9
	plx		; FA
	brk $40.b		; 00 40
	rti		; 40

	ora [$F1.b]		; 07 F1
	plx		; FA
	brk $41.b		; 00 41
	rti		; 40

	jsl $C2BF31.l		; 22 31 BF C2
	php		; 08
	brk $48.b		; 00 48
	ora $A2D7.w,Y		; 19 D7 A2
	php		; 08
	cop $48.b		; 02 48
	and ($CF.b,X)		; 21 CF
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	sep #$08		; E2 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	sbc $AAF7.w,Y		; F9 F7 AA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora #$AAE7.w		; 09 E7 AA
	php		; 08
	tsb $F148.w		; 0C 48 F1
	sbc $0E08BA.l,X		; FF BA 08 0E
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	jsr $1148.w		; 20 48 11
	cmp $2208BA.l,X		; DF BA 08 22
	pha		; 48
	sbc $CAF7.w,Y		; F9 F7 CA
	php		; 08
	bit $48.b		; 24 48
	ora #$CAE7.w		; 09 E7 CA
	php		; 08
	rol $48.b		; 26 48
	ora $CAD7.w,Y		; 19 D7 CA
	php		; 08
	plp		; 28
	pha		; 48
	ora #$9AEF.w		; 09 EF 9A
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	txs		; 9A
	brk $2B.b		; 00 2B
	rti		; 40

	and ($C7.b),Y		; 31 C7
	tsx		; BA
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b)		; F2 00
	and $0140.w		; 2D 40 01
	sbc [$FA.b],Y		; F7 FA
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $8AFF.w,Y		; F9 FF 8A
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	txa		; 8A
	brk $3A.b		; 00 3A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sta ($00.b)		; 92 00
	tsa		; 3B
	rti		; 40

	ora #$92EF.w		; 09 EF 92
	brk $3C.b		; 00 3C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldx #$00.b		; A2 00
	and $F140.w,X		; 3D 40 F1
	ora [$B2.b]		; 07 B2
	brk $3E.b		; 00 3E
	rti		; 40

	ora $B2DF.w,Y		; 19 DF B2
	brk $3F.b		; 00 3F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	rep #$00		; C2 00
	rti		; 40

	rti		; 40

	eor ($B7.b,X)		; 41 B7
	rep #$00		; C2 00
	eor ($40.b,X)		; 41 40
	sbc ($07.b),Y		; F1 07
	dex		; CA
	brk $42.b		; 00 42
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	dex		; CA
	brk $43.b		; 00 43
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $44.b		; 00 44
	rti		; 40

	ora #$DAEF.w		; 09 EF DA
	brk $45.b		; 00 45
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	phx		; DA
	brk $46.b		; 00 46
	rti		; 40

	ora $DADF.w,Y		; 19 DF DA
	brk $47.b		; 00 47
	rti		; 40

	sbc $F6FF.w,Y		; F9 FF F6
	brk $48.b		; 00 48
	rti		; 40

	trb $E9.b		; 14 E9
	ora [$F2.b]		; 07 F2
	php		; 08
	brk $48.b		; 00 48
	cpx $C204.w		; EC 04 C2
	php		; 08
	cop $48.b		; 02 48
	cmp $D213.w,X		; DD 13 D2
	php		; 08
	tsb $48.b		; 04 48
	sbc $0B.b		; E5 0B
	sep #$08		; E2 08
	asl $48.b		; 06 48
	sbc $D203.w		; ED 03 D2
	php		; 08
	php		; 08
	pha		; 48
	sbc $D2F3.w,X		; FD F3 D2
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $FB.b,X		; F5 FB
	sep #$08		; E2 08
	tsb $C548.w		; 0C 48 C5
	pld		; 2B
	cmp ($08.b),Y		; D1 08
	asl $1548.w		; 0E 48 15
	sbc $DA.b,S		; E3 DA
	brk $20.b		; 00 20
	rti		; 40

	ora $DADB.w,X		; 1D DB DA
	brk $21.b		; 00 21
	rti		; 40

	and $D3.b		; 25 D3
	phx		; DA
	brk $22.b		; 00 22
	rti		; 40

	sbc $F2FF.w,Y		; F9 FF F2
	brk $23.b		; 00 23
	rti		; 40

	sbc $FAFF.w,Y		; F9 FF FA
	brk $24.b		; 00 24
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b)		; F2 00
	and $40.b		; 25 40
	jsr ($C2FC.w,X)		; FC FC C2
	brk $26.b		; 00 26
	rti		; 40

	jsr ($CAFC.w,X)		; FC FC CA
	brk $27.b		; 00 27
	rti		; 40

	ora $F3.b		; 05 F3
	sep #$00		; E2 00
	plp		; 28
	rti		; 40

	ora $F3.b		; 05 F3
	nop		; EA
	brk $29.b		; 00 29
	rti		; 40

	cmp $23.b,X		; D5 23
	pei ($00.b)		; D4 00
	rol A		; 2A
	rti		; 40

	ora $DAEB.w		; 0D EB DA
	brk $2B.b		; 00 2B
	rti		; 40

	jsl $9A0FE1.l		; 22 E1 0F 9A
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	txs		; 9A
	php		; 08
	cop $48.b		; 02 48
	sbc ($0F.b,X)		; E1 0F
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	dex		; CA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	tsb $E548.w		; 0C 48 E5
	phd		; 0B
	tax		; AA
	php		; 08
	asl $F548.w		; 0E 48 F5
	xce		; FB
	tax		; AA
	php		; 08
	jsr $0148.w		; 20 48 01
	sbc [$CA.b],Y		; F7 CA
	brk $22.b		; 00 22
	rti		; 40

	ora #$CAEF.w		; 09 EF CA
	brk $23.b		; 00 23
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	bit $40.b		; 24 40
	sbc ($17.b,X)		; E1 17
	phx		; DA
	brk $25.b		; 00 25
	rti		; 40

	sbc #$DA0F.w		; E9 0F DA
	brk $26.b		; 00 26
	rti		; 40

	sbc ($07.b),Y		; F1 07
	phx		; DA
	brk $27.b		; 00 27
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $28.b		; 00 28
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $29.b		; 00 29
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	txs		; 9A
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	pld		; 2B
	rti		; 40

	ora $F3.b		; 05 F3
	tax		; AA
	brk $2C.b		; 00 2C
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b)		; B2 00
	and $F140.w		; 2D 40 F1
	ora [$E2.b]		; 07 E2
	brk $32.b		; 00 32
	rti		; 40

	sbc $E2FF.w,Y		; F9 FF E2
	brk $33.b		; 00 33
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	bit $40.b,X		; 34 40
	sbc ($07.b),Y		; F1 07
	nop		; EA
	brk $35.b		; 00 35
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sep #$00		; E2 00
	rol $40.b,X		; 36 40
.INDEX 8
	sep #$16		; E2 16
	nop		; EA
	brk $37.b		; 00 37
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sbc ($00.b)		; F2 00
	sec		; 38
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	plx		; FA
	brk $39.b		; 00 39
	rti		; 40

	sbc $EAFB.w,X		; FD FB EA
	brk $3A.b		; 00 3A
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $3B.b		; 00 3B
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b)		; F2 00
	bit $0040.w,X		; 3C 40 00
	sed		; F8
	sbc ($00.b)		; F2 00
	and $0040.w,X		; 3D 40 00
	sed		; F8
	plx		; FA
	brk $3E.b		; 00 3E
	rti		; 40

	jsl $9A0FE1.l		; 22 E1 0F 9A
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	txs		; 9A
	php		; 08
	cop $48.b		; 02 48
	sbc ($0F.b,X)		; E1 0F
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	dex		; CA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	tsb $E548.w		; 0C 48 E5
	phd		; 0B
	tax		; AA
	php		; 08
	asl $F548.w		; 0E 48 F5
	xce		; FB
	tax		; AA
	php		; 08
	jsr $0148.w		; 20 48 01
	sbc [$CA.b],Y		; F7 CA
	brk $22.b		; 00 22
	rti		; 40

	ora #$CAEF.w		; 09 EF CA
	brk $23.b		; 00 23
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	bit $40.b		; 24 40
	sbc ($17.b,X)		; E1 17
	phx		; DA
	brk $25.b		; 00 25
	rti		; 40

	sbc #$DA0F.w		; E9 0F DA
	brk $26.b		; 00 26
	rti		; 40

	sbc ($07.b),Y		; F1 07
	phx		; DA
	brk $27.b		; 00 27
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $28.b		; 00 28
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $29.b		; 00 29
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	txs		; 9A
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	pld		; 2B
	rti		; 40

	ora $F3.b		; 05 F3
	tax		; AA
	brk $2C.b		; 00 2C
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b)		; B2 00
	and $F140.w		; 2D 40 F1
	ora [$E2.b]		; 07 E2
	brk $32.b		; 00 32
	rti		; 40

	sbc $E2FF.w,Y		; F9 FF E2
	brk $33.b		; 00 33
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	bit $40.b,X		; 34 40
	sbc ($07.b),Y		; F1 07
	nop		; EA
	brk $35.b		; 00 35
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sep #$00		; E2 00
	rol $40.b,X		; 36 40
.INDEX 8
	sep #$16		; E2 16
	nop		; EA
	brk $37.b		; 00 37
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sbc ($00.b)		; F2 00
	sec		; 38
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	plx		; FA
	brk $39.b		; 00 39
	rti		; 40

	sbc $EAFB.w,X		; FD FB EA
	brk $3A.b		; 00 3A
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $3B.b		; 00 3B
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b)		; F2 00
	bit $0040.w,X		; 3C 40 00
	sed		; F8
	sbc ($00.b)		; F2 00
	and $0040.w,X		; 3D 40 00
	sed		; F8
	plx		; FA
	brk $3E.b		; 00 3E
	rti		; 40

	tas		; 1B
	sbc $A2F7.w,Y		; F9 F7 A2
	php		; 08
	brk $48.b		; 00 48
	sbc #$AA07.w		; E9 07 AA
	php		; 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	sbc #$BA07.w		; E9 07 BA
	php		; 08
	asl $48.b		; 06 48
	sbc #$CA07.w		; E9 07 CA
	php		; 08
	php		; 08
	pha		; 48
	ora #$CAE7.w		; 09 E7 CA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $C2F7.w,Y		; F9 F7 C2
	php		; 08
	tsb $F948.w		; 0C 48 F9
	sbc [$D2.b],Y		; F7 D2
	php		; 08
	asl $E448.w		; 0E 48 E4
	tsb $08E2.w		; 0C E2 08
	jsr $DD48.w		; 20 48 DD
	ora ($9A.b,S),Y		; 13 9A
	php		; 08
	jsl $EB0548.l		; 22 48 05 EB
	sep #$08		; E2 08
	bit $48.b		; 24 48
	ora ($E7.b),Y		; 11 E7
	sbc ($00.b)		; F2 00
	rol $40.b		; 26 40
	ora $D2DF.w,Y		; 19 DF D2
	brk $27.b		; 00 27
	rti		; 40

	ora $DADF.w,Y		; 19 DF DA
	brk $28.b		; 00 28
	rti		; 40

	sbc $B2FF.w,Y		; F9 FF B2
	brk $29.b		; 00 29
	rti		; 40

	sbc $BAFF.w,Y		; F9 FF BA
	brk $2A.b		; 00 2A
	rti		; 40

	ora #$C2EF.w		; 09 EF C2
	brk $2B.b		; 00 2B
	rti		; 40

	sbc #$DA0F.w		; E9 0F DA
	brk $2C.b		; 00 2C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	phx		; DA
	brk $2D.b		; 00 2D
	rti		; 40

	ora #$DAEF.w		; 09 EF DA
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	plx		; FA
	brk $2F.b		; 00 2F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	phx		; DA
	brk $36.b		; 00 36
	rti		; 40

	sbc $A20B.w		; ED 0B A2
	brk $37.b		; 00 37
	rti		; 40

	sbc $E2FB.w,X		; FD FB E2
	brk $38.b		; 00 38
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc ($00.b)		; F2 00
	and $0940.w,Y		; 39 40 09
	sbc $3140F2.l		; EF F2 40 31
	brk $DF.b		; 00 DF
	ora $00FA.w,Y		; 19 FA 00
	dec A		; 3A
	rti		; 40

	tas		; 1B
	ora #$BAE7.w		; 09 E7 BA
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc $CAF7.w,Y		; F9 F7 CA
	php		; 08
	tsb $48.b		; 04 48
	cmp $AA13.w,X		; DD 13 AA
	php		; 08
	asl $48.b		; 06 48
	sbc $AA03.w		; ED 03 AA
	php		; 08
	php		; 08
	pha		; 48
	sbc $AAF3.w,X		; FD F3 AA
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $FA.b,X		; F6 FA
	txs		; 9A
	php		; 08
	tsb $0648.w		; 0C 48 06
	nop		; EA
	txs		; 9A
	php		; 08
	asl $0148.w		; 0E 48 01
	sbc [$C2.b],Y		; F7 C2
	brk $20.b		; 00 20
	rti		; 40

	sbc ($07.b),Y		; F1 07
	dex		; CA
	brk $21.b		; 00 21
	rti		; 40

	ora $AAEB.w		; 0D EB AA
	brk $22.b		; 00 22
	rti		; 40

	ora $B2EB.w		; 0D EB B2
	brk $23.b		; 00 23
	rti		; 40

	rol $D2.b		; 26 D2
	sta ($00.b)		; 92 00
	bit $40.b		; 24 40
	rol $92CA.w		; 2E CA 92
	brk $25.b		; 00 25
	rti		; 40

	rol $C2.b,X		; 36 C2
	sta ($00.b)		; 92 00
	rol $40.b		; 26 40
	asl $E2.b,X		; 16 E2
	txs		; 9A
	brk $27.b		; 00 27
	rti		; 40

	rol $D2.b		; 26 D2
	txs		; 9A
	brk $28.b		; 00 28
	rti		; 40

	ora #$CAEF.w		; 09 EF CA
	brk $29.b		; 00 29
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsx		; BA
	brk $2A.b		; 00 2A
	rti		; 40

	asl $98DA.w,X		; 1E DA 98
	brk $2B.b		; 00 2B
	rti		; 40

	plx		; FA
	inc $DA.b,X		; F6 DA
	php		; 08
	bit $F948.w		; 2C 48 F9
	sbc $2E00FA.l,X		; FF FA 00 2E
	rti		; 40

	plx		; FA
	inc $00EA.w,X		; FE EA 00
	and $FFF940.l		; 2F 40 F9 FF
	sbc ($00.b)		; F2 00
	bmi  64.b		; 30 40
	phd		; 0B
	sbc $00FA.w		; ED FA 00
	and ($40.b),Y		; 31 40
	ora $F3.b		; 05 F3
	nop		; EA
	brk $32.b		; 00 32
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b)		; F2 00
	and ($40.b,S),Y		; 33 40
	ora $D719.w,Y		; 19 19 D7
	sta ($08.b)		; 92 08
	brk $48.b		; 00 48
	cmp $B217.w,Y		; D9 17 B2
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	txs		; 9A
	php		; 08
	tsb $48.b		; 04 48
	sbc #$AA07.w		; E9 07 AA
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	txs		; 9A
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $AAF7.w,Y		; F9 F7 AA
	php		; 08
	tsb $0948.w		; 0C 48 09
	sbc [$AA.b]		; E7 AA
	php		; 08
	asl $0148.w		; 0E 48 01
	sbc $2008BA.l		; EF BA 08 20
	pha		; 48
	xce		; FB
	sbc $CA.b,X		; F5 CA
	php		; 08
	jsl $C73148.l		; 22 48 31 C7
	txa		; 8A
	brk $24.b		; 00 24
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	txs		; 9A
	brk $25.b		; 00 25
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ldx #$00.b		; A2 00
	rol $40.b		; 26 40
	ora ($E7.b),Y		; 11 E7
	tsx		; BA
	brk $27.b		; 00 27
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	plp		; 28
	rti		; 40

	and #$8ECF.w		; 29 CF 8E
	brk $29.b		; 00 29
	rti		; 40

	phd		; 0B
	sbc $00CA.w		; ED CA 00
	rol A		; 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sta ($00.b)		; 92 00
	pld		; 2B
	rti		; 40

	plx		; FA
	inc $DA.b,X		; F6 DA
	php		; 08
	bit $48.b,X		; 34 48
	sbc $FAFF.w,Y		; F9 FF FA
	brk $36.b		; 00 36
	rti		; 40

	plx		; FA
	inc $00EA.w,X		; FE EA 00
	and [$40.b],Y		; 37 40
	sbc $F2FF.w,Y		; F9 FF F2
	brk $38.b		; 00 38
	rti		; 40

	phd		; 0B
	sbc $00FA.w		; ED FA 00
	and $0540.w,Y		; 39 40 05
	sbc ($EA.b,S),Y		; F3 EA
	brk $3A.b		; 00 3A
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc ($00.b)		; F2 00
	tsa		; 3B
	rti		; 40

	jsl $B21FD1.l		; 22 D1 1F B2
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	lda #$0208.w		; A9 08 02
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda #$0408.w		; A9 08 04
	pha		; 48
	sbc #$B907.w		; E9 07 B9
	php		; 08
	asl $48.b		; 06 48
	sbc $B9F7.w,Y		; F9 F7 B9
	php		; 08
	php		; 08
	pha		; 48
	ora ($DE.b)		; 12 DE
	cmp [$08.b],Y		; D7 08
	asl A		; 0A
	pha		; 48
	plx		; FA
	inc $99.b,X		; F6 99
	php		; 08
	tsb $0A48.w		; 0C 48 0A
	inc $99.b		; E6 99
	php		; 08
	asl $0248.w		; 0E 48 02
	inc $08D1.w		; EE D1 08
	jsr $F248.w		; 20 48 F2
	inc $08D1.w,X		; FE D1 08
	jsl $FEF248.l		; 22 48 F2 FE
	sbc ($08.b,X)		; E1 08
	bit $48.b		; 24 48
	sbc ($17.b,X)		; E1 17
	ldx $2600.w,Y		; BE 00 26
	rti		; 40

	cmp ($37.b,X)		; C1 37
	lda $402700.l		; AF 00 27 40
	ora #$B9EF.w		; 09 EF B9
	brk $28.b		; 00 28
	rti		; 40

	ora #$C1EF.w		; 09 EF C1
	brk $29.b		; 00 29
	rti		; 40

	sbc #$C90F.w		; E9 0F C9
	brk $2A.b		; 00 2A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp #$2B00.w		; C9 00 2B
	rti		; 40

	sbc $C9FF.w,Y		; F9 FF C9
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp #$2D00.w		; C9 00 2D
	rti		; 40

	ora #$C9EF.w		; 09 EF C9
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc [$00.b]		; E7 00
	and $E61240.l		; 2F 40 12 E6
	sbc $403600.l		; EF 00 36 40
	ora ($E6.b)		; 12 E6
	sbc [$00.b],Y		; F7 00
	and [$40.b],Y		; 37 40
	sbc ($07.b),Y		; F1 07
	sbc ($00.b),Y		; F1 00
	sec		; 38
	rti		; 40

	sbc ($06.b)		; F2 06
	lda ($00.b,X)		; A1 00
	and $0A40.w,Y		; 39 40 0A
	inc $00E1.w		; EE E1 00
	dec A		; 3A
	rti		; 40

	asl A		; 0A
	inc $00E9.w		; EE E9 00
	tsa		; 3B
	rti		; 40

	asl A		; 0A
	inc $00F1.w		; EE F1 00
	bit $F140.w,X		; 3C 40 F1
	ora [$F9.b]		; 07 F9
	brk $3D.b		; 00 3D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $3E00.w,Y		; F9 00 3E
	rti		; 40

	ora $F9DF.w,Y		; 19 DF F9
	brk $3F.b		; 00 3F
	rti		; 40

	cmp #$B22F.w		; C9 2F B2
	brk $40.b		; 00 40
	rti		; 40

	ora $8EDF.w,Y		; 19 DF 8E
	brk $41.b		; 00 41
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sta ($00.b,S),Y		; 93 00
	.db $42, $40		; 42 40
	ora $F2DF11.l,X		; 1F 11 DF F2
	php		; 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	sbc ($08.b)		; F2 08
	cop $48.b		; 02 48
	sbc ($0F.b,X)		; E1 0F
	ldx #$08.b		; A2 08
	tsb $48.b		; 04 48
	ora #$AAE7.w		; 09 E7 AA
	php		; 08
	asl $48.b		; 06 48
	ora #$BAE7.w		; 09 E7 BA
	php		; 08
	php		; 08
	pha		; 48
	sbc $AAF7.w,Y		; F9 F7 AA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $BAF7.w,Y		; F9 F7 BA
	php		; 08
	tsb $E948.w		; 0C 48 E9
	ora [$BA.b]		; 07 BA
	php		; 08
	asl $F148.w		; 0E 48 F1
	sbc $2008DA.l,X		; FF DA 08 20
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	phx		; DA
	php		; 08
	jsl $D71948.l		; 22 48 19 D7
	tay		; A8
	php		; 08
	bit $48.b		; 24 48
	jsr ($9AF4.w,X)		; FC F4 9A
	php		; 08
	rol $48.b		; 26 48
	sbc $CA03.w		; ED 03 CA
	php		; 08
	plp		; 28
	pha		; 48
	sbc $CAF3.w,X		; FD F3 CA
	php		; 08
	rol A		; 2A
	pha		; 48
	sbc ($07.b),Y		; F1 07
	lda ($00.b)		; B2 00
	bit $1140.w		; 2C 40 11
	sbc [$DA.b]		; E7 DA
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sep #$00		; E2 00
	rol $F140.w		; 2E 40 F1
	ora [$EA.b]		; 07 EA
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $EAFF.w,Y		; F9 FF EA
	brk $3C.b		; 00 3C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	nop		; EA
	brk $3D.b		; 00 3D
	rti		; 40

	ora #$EAEF.w		; 09 EF EA
	brk $3E.b		; 00 3E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	nop		; EA
	brk $3F.b		; 00 3F
	rti		; 40

	sbc $02FF.w,Y		; F9 FF 02
	brk $40.b		; 00 40
	rti		; 40

	and $D5.b,S		; 23 D5
	ldy #$00.b		; A0 00
	eor ($40.b,X)		; 41 40
	sbc ($07.b),Y		; F1 07
	tax		; AA
	brk $42.b		; 00 42
	rti		; 40

	tsb $9AEC.w		; 0C EC 9A
	brk $43.b		; 00 43
	rti		; 40

	tsb $A2EC.w		; 0C EC A2
	brk $44.b		; 00 44
	rti		; 40

	sbc ($17.b,X)		; E1 17
	lda ($00.b)		; B2 00
	eor $40.b		; 45 40
	sbc #$B20F.w		; E9 0F B2
	brk $46.b		; 00 46
	rti		; 40

	ora $CAEB.w		; 0D EB CA
	brk $47.b		; 00 47
	rti		; 40

	ora $D2EB.w		; 0D EB D2
	brk $48.b		; 00 48
	rti		; 40

	and $F1.b,S		; 23 F1
	sbc $00088A.l,X		; FF 8A 08 00
	pha		; 48
	cmp ($1F.b),Y		; D1 1F
	lda ($08.b)		; B2 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b)		; D2 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	dex		; CA
	php		; 08
	asl $48.b		; 06 48
	ora #$BAE7.w		; 09 E7 BA
	php		; 08
	php		; 08
	pha		; 48
	sbc $9AF7.w,Y		; F9 F7 9A
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc #$9A07.w		; E9 07 9A
	php		; 08
	tsb $0148.w		; 0C 48 01
	sbc $0E08AA.l		; EF AA 08 0E
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	tax		; AA
	php		; 08
	jsr $F948.w		; 20 48 F9
	sbc [$BA.b],Y		; F7 BA
	php		; 08
	jsl $0FE148.l		; 22 48 E1 0F
	tax		; AA
	php		; 08
	bit $48.b		; 24 48
	sbc ($0F.b,X)		; E1 0F
	tsx		; BA
	php		; 08
	rol $48.b		; 26 48
	ora $B9D7.w,Y		; 19 D7 B9
	php		; 08
	plp		; 28
	pha		; 48
	cmp $2D.b,S		; C3 2D
	cmp $08.b		; C5 08
	rol A		; 2A
	pha		; 48
	cpx $E204.w		; EC 04 E2
	php		; 08
	bit $0948.w		; 2C 48 09
	sbc $2E009A.l		; EF 9A 00 2E
	rti		; 40

	cmp ($27.b),Y		; D1 27
	rep #$00		; C2 00
	and $17E140.l		; 2F 40 E1 17
	ldx #$00.b		; A2 00
	rol $D940.w,X		; 3E 40 D9
	ora $3F00AA.l,X		; 1F AA 00 3F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	tsx		; BA
	brk $40.b		; 00 40
	rti		; 40

	sbc ($07.b),Y		; F1 07
	rep #$00		; C2 00
	eor ($40.b,X)		; 41 40
	sbc ($17.b,X)		; E1 17
	dex		; CA
	brk $42.b		; 00 42
	rti		; 40

	sbc #$CA0F.w		; E9 0F CA
	brk $43.b		; 00 43
	rti		; 40

	sbc ($07.b),Y		; F1 07
	dex		; CA
	brk $44.b		; 00 44
	rti		; 40

	sbc $CAFF.w,Y		; F9 FF CA
	brk $45.b		; 00 45
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $4600.w,Y		; F9 00 46
	rti		; 40

	ora $F9DF.w,Y		; 19 DF F9
	brk $47.b		; 00 47
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp ($00.b)		; D2 00
	pha		; 48
	rti		; 40

	ora ($E6.b)		; 12 E6
	sbc ($00.b),Y		; F1 00
	eor #$E940.w		; 49 40 E9
	ora $4A00F2.l		; 0F F2 00 4A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b)		; F2 00
	phk		; 4B
	rti		; 40

	ora $DAEB.w		; 0D EB DA
	brk $4C.b		; 00 4C
	rti		; 40

	asl $E2EA.w		; 0E EA E2
	brk $4D.b		; 00 4D
	rti		; 40

	inc $12.b		; E6 12
	plx		; FA
	brk $4E.b		; 00 4E
	rti		; 40

	ora $00EAE9.l		; 0F E9 EA 00
	eor $092240.l		; 4F 40 22 09
	sbc [$A8.b]		; E7 A8
	php		; 08
	brk $48.b		; 00 48
	sbc #$A907.w		; E9 07 A9
	php		; 08
	cop $48.b		; 02 48
	sbc $A9F7.w,Y		; F9 F7 A9
	php		; 08
	tsb $48.b		; 04 48
	tsa		; 3B
	lda $B4.b,X		; B5 B4
	php		; 08
	asl $48.b		; 06 48
	and $CD.b,S		; 23 CD
	clv		; B8
	php		; 08
	php		; 08
	pha		; 48
	ora ($DD.b,S),Y		; 13 DD
	clv		; B8
	php		; 08
	asl A		; 0A
	pha		; 48
	phd		; 0B
	sbc $C8.b		; E5 C8
	php		; 08
	tsb $FB48.w		; 0C 48 FB
	sbc $C8.b,X		; F5 C8
	php		; 08
	asl $FB48.w		; 0E 48 FB
	sbc $B8.b,X		; F5 B8
	php		; 08
	jsr $E348.w		; 20 48 E3
	ora $08B9.w		; 0D B9 08
	jsl $C53348.l		; 22 48 33 C5
	clv		; B8
	brk $24.b		; 00 24
	rti		; 40

	xba		; EB
	ora $00E8.w		; 0D E8 00
	and $40.b		; 25 40
	sbc ($05.b,S),Y		; F3 05
	inx		; E8
	brk $26.b		; 00 26
	rti		; 40

	sbc $D8FF.w,Y		; F9 FF D8
	brk $27.b		; 00 27
	rti		; 40

	ora $A8DF.w,Y		; 19 DF A8
	brk $28.b		; 00 28
	rti		; 40

	ora $B0DF.w,Y		; 19 DF B0
	brk $29.b		; 00 29
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cld		; D8
	brk $2A.b		; 00 2A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx #$00.b		; E0 00
	pld		; 2B
	rti		; 40

	phd		; 0B
	sbc $00B8.w		; ED B8 00
	bit $0B40.w		; 2C 40 0B
	sbc $00C0.w		; ED C0 00
	and $F940.w		; 2D 40 F9
	sbc $2E00E0.l,X		; FF E0 00 2E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	lda $2F00.w,Y		; B9 00 2F
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp ($00.b,X)		; C1 00
	bit $40.b,X		; 34 40
	cpx $14.b		; E4 14
	sed		; F8
	brk $35.b		; 00 35
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpx #$00.b		; E0 00
	rol $40.b,X		; 36 40
	ora $E0DB.w,X		; 1D DB E0
	brk $37.b		; 00 37
	rti		; 40

	ora $E3.b,X		; 15 E3
	inx		; E8
	brk $38.b		; 00 38
	rti		; 40

	ora $E3.b,X		; 15 E3
	beq   0.b		; F0 00
	and $1540.w,Y		; 39 40 15
	sbc $F8.b,S		; E3 F8
	brk $3A.b		; 00 3A
	rti		; 40

	ora $F8DB.w,X		; 1D DB F8
	brk $3B.b		; 00 3B
	rti		; 40

	asl $D8EA.w		; 0E EA D8
	brk $3C.b		; 00 3C
	rti		; 40

	asl $E2.b,X		; 16 E2
	cld		; D8
	brk $3D.b		; 00 3D
	rti		; 40

	sbc [$11.b]		; E7 11
	beq   0.b		; F0 00
	rol $EF40.w,X		; 3E 40 EF
	ora #$00F0.w		; 09 F0 00
	and $012140.l,X		; 3F 40 21 01
	sbc $0008F2.l		; EF F2 08 00
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	tax		; AA
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	ora ($EF.b,X)		; 01 EF
	tsx		; BA
	php		; 08
	php		; 08
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	tax		; AA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	tsx		; BA
	php		; 08
	tsb $0948.w		; 0C 48 09
	sbc [$DA.b]		; E7 DA
	php		; 08
	asl $1948.w		; 0E 48 19
	cmp [$DA.b],Y		; D7 DA
	php		; 08
	jsr $E148.w		; 20 48 E1
	ora $2208B0.l		; 0F B0 08 22
	pha		; 48
	jsl $089ACE.l		; 22 CE 9A 08
	bit $48.b		; 24 48
	inc $FA.b,X		; F6 FA
	dex		; CA
	php		; 08
	rol $48.b		; 26 48
	asl $EA.b		; 06 EA
	dex		; CA
	php		; 08
	plp		; 28
	pha		; 48
	asl $DA.b,X		; 16 DA
	dex		; CA
	php		; 08
	rol A		; 2A
	pha		; 48
	rol $CA.b		; 26 CA
	dex		; CA
	php		; 08
	bit $2148.w		; 2C 48 21
	cmp [$BA.b],Y		; D7 BA
	brk $2E.b		; 00 2E
	rti		; 40

	and ($D7.b,X)		; 21 D7
	rep #$C0		; C2 C0
	bmi -128.b		; 30 80
	ora #$EAEF.w		; 09 EF EA
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	nop		; EA
	brk $3E.b		; 00 3E
	rti		; 40

	ora $EADF.w,Y		; 19 DF EA
	brk $3F.b		; 00 3F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	nop		; EA
	brk $40.b		; 00 40
	rti		; 40

	and $96BF.w,Y		; 39 BF 96
	brk $41.b		; 00 41
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $42.b		; 00 42
	rti		; 40

	and ($C7.b),Y		; 31 C7
	sta $4300.w,Y		; 99 00 43
	rti		; 40

	asl A		; 0A
	inc $00A2.w		; EE A2 00
	mvp $12,$40		; 44 40 12
	inc $A2.b		; E6 A2
	brk $45.b		; 00 45
	rti		; 40

	inc A		; 1A
	dec $00A2.w,X		; DE A2 00
	lsr $40.b		; 46 40
	and #$DACF.w		; 29 CF DA
	brk $47.b		; 00 47
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cop $00.b		; 02 00
	pha		; 48
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $3F.b		; 00 3F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	tax		; AA
	brk $49.b		; 00 49
	rti		; 40

	and ($D7.b,X)		; 21 D7
	lda ($00.b)		; B2 00
	lsr A		; 4A
	rti		; 40

	sbc $000AF9.l,X		; FF F9 0A 00
	phk		; 4B
	rti		; 40

	jsl $98E709.l		; 22 09 E7 98
	php		; 08
	brk $48.b		; 00 48
	sbc $98F7.w,Y		; F9 F7 98
	php		; 08
	cop $48.b		; 02 48
	sbc #$9807.w		; E9 07 98
	php		; 08
	tsb $48.b		; 04 48
	sbc ($0F.b,X)		; E1 0F
	tay		; A8
	php		; 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	tay		; A8
	php		; 08
	php		; 08
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	tay		; A8
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	tay		; A8
	php		; 08
	tsb $E948.w		; 0C 48 E9
	ora [$B8.b]		; 07 B8
	php		; 08
	asl $E948.w		; 0E 48 E9
	ora [$C8.b]		; 07 C8
	php		; 08
	jsr $F948.w		; 20 48 F9
	sbc [$B8.b],Y		; F7 B8
	php		; 08
	jsl $E70948.l		; 22 48 09 E7
	clv		; B8
	php		; 08
	bit $48.b		; 24 48
	and ($CF.b,X)		; 21 CF
	cmp $2608.w,Y		; D9 08 26
	pha		; 48
	cmp $CD1F.w,Y		; D9 1F CD
	brk $28.b		; 00 28
	rti		; 40

	sbc ($17.b,X)		; E1 17
	beq   0.b		; F0 00
	and #$E140.w		; 29 40 E1
	ora [$F8.b],Y		; 17 F8
	brk $2A.b		; 00 2A
	rti		; 40

	cmp $C51F.w,Y		; D9 1F C5
	brk $2B.b		; 00 2B
	rti		; 40

	sbc ($17.b,X)		; E1 17
	ldy #$00.b		; A0 00
	bit $1940.w		; 2C 40 19
	cmp $2D00B8.l,X		; DF B8 00 2D
	rti		; 40

	ora $C0DF.w,Y		; 19 DF C0
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $C8FF.w,Y		; F9 FF C8
	brk $2F.b		; 00 2F
	rti		; 40

	ora #$C8EF.w		; 09 EF C8
	brk $38.b		; 00 38
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	iny		; C8
	brk $39.b		; 00 39
	rti		; 40

	ora $C8DF.w,Y		; 19 DF C8
	brk $3A.b		; 00 3A
	rti		; 40

	sbc $D0FF.w,Y		; F9 FF D0
	brk $3B.b		; 00 3B
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cmp ($00.b,X)		; C1 00
	bit $2140.w,X		; 3C 40 21
	cmp [$C9.b],Y		; D7 C9
	brk $3D.b		; 00 3D
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cmp ($00.b),Y		; D1 00
	rol $2940.w,X		; 3E 40 29
	cmp $3F00E9.l		; CF E9 00 3F
	rti		; 40

	sbc ($17.b,X)		; E1 17
	cmp $00.b		; C5 00
	rti		; 40

	rti		; 40

	pld		; 2B
	cmp $00F1.w		; CD F1 00
	eor ($40.b,X)		; 41 40
	cpx $14.b		; E4 14
	inx		; E8
	brk $42.b		; 00 42
	rti		; 40

	sbc [$11.b]		; E7 11
	cld		; D8
	brk $43.b		; 00 43
	rti		; 40

	sbc $00D809.l		; EF 09 D8 00
	mvp $E7,$40		; 44 40 E7
	ora ($E0.b),Y		; 11 E0
	brk $45.b		; 00 45
	rti		; 40

	and ($22.b,X)		; 21 22
	dec $0892.w		; CE 92 08
	brk $48.b		; 00 48
	cop $EE.b		; 02 EE
	sta ($08.b)		; 92 08
	cop $48.b		; 02 48
	ora ($DE.b)		; 12 DE
	sta ($08.b)		; 92 08
	tsb $48.b		; 04 48
	trb $DC.b		; 14 DC
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	ora $DB.b,X		; 15 DB
	dex		; CA
	php		; 08
	php		; 08
	pha		; 48
	cpx #$10.b		; E0 10
	tax		; AA
	php		; 08
	asl A		; 0A
	pha		; 48
	beq   0.b		; F0 00
	ldx #$08.b		; A2 08
	tsb $0048.w		; 0C 48 00
	beq -94.b		; F0 A2
	php		; 08
	asl $1048.w		; 0E 48 10
	cpx #$A2.b		; E0 A2
	php		; 08
	jsr $2048.w		; 20 48 20
	bne -94.b		; D0 A2
	php		; 08
	jsl $E61248.l		; 22 48 12 E6
	txa		; 8A
	brk $24.b		; 00 24
	rti		; 40

	inc A		; 1A
	dec $008A.w,X		; DE 8A 00
	and $40.b		; 25 40
	xce		; FB
	sbc $00B2.w,X		; FD B2 00
	rol $40.b		; 26 40
	ora $F5.b,S		; 03 F5
	lda ($00.b)		; B2 00
	and [$40.b]		; 27 40
	bit $BACC.w		; 2C CC BA
	brk $28.b		; 00 28
	rti		; 40

	and #$B2CF.w		; 29 CF B2
	brk $29.b		; 00 29
	rti		; 40

	bit $D4.b		; 24 D4
	tsx		; BA
	brk $2A.b		; 00 2A
	rti		; 40

	bit $D4.b		; 24 D4
	rep #$00		; C2 00
	pld		; 2B
	rti		; 40

	and ($D7.b,X)		; 21 D7
	phx		; DA
	brk $2C.b		; 00 2C
	rti		; 40

	and $D3.b		; 25 D3
	dex		; CA
	brk $2D.b		; 00 2D
	rti		; 40

	and $D3.b		; 25 D3
	cmp ($00.b)		; D2 00
	rol $1E40.w		; 2E 40 1E
	phx		; DA
	nop		; EA
	brk $2F.b		; 00 2F
	rti		; 40

	asl $F2DA.w,X		; 1E DA F2
	brk $34.b		; 00 34
	rti		; 40

	asl $FADA.w,X		; 1E DA FA
	brk $35.b		; 00 35
	rti		; 40

	cld		; D8
	jsr $00B2.w		; 20 B2 00
	rol $40.b,X		; 36 40
	cld		; D8
	jsr $00BA.w		; 20 BA 00
	and [$40.b],Y		; 37 40
	and ($D7.b,X)		; 21 D7
	sep #$00		; E2 00
	sec		; 38
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda ($00.b)		; B2 00
	and $1940.w,Y		; 39 40 19
	cmp $3A00B2.l,X		; DF B2 00 3A
	rti		; 40

	and ($D7.b,X)		; 21 D7
	lda ($00.b)		; B2 00
	tsa		; 3B
	rti		; 40

	asl A		; 0A
	inc $008A.w		; EE 8A 00
	bit $3040.w,X		; 3C 40 30
	iny		; C8
	ldx #$00.b		; A2 00
	and $3040.w,X		; 3D 40 30
	iny		; C8
	tax		; AA
	brk $3E.b		; 00 3E
	rti		; 40

	and $09.b,S		; 23 09
	sbc [$8A.b]		; E7 8A
	php		; 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	txs		; 9A
	php		; 08
	cop $48.b		; 02 48
	ora ($DF.b),Y		; 11 DF
	txs		; 9A
	php		; 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	tax		; AA
	php		; 08
	php		; 08
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	tsx		; BA
	php		; 08
	asl A		; 0A
	pha		; 48
	and ($CF.b,X)		; 21 CF
	lda $0C08.w		; AD 08 0C
	pha		; 48
	and ($CF.b,X)		; 21 CF
	sta $0E08.w		; 8D 08 0E
	pha		; 48
	and ($CF.b,X)		; 21 CF
	sta $2008.w,X		; 9D 08 20
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	txa		; 8A
	brk $22.b		; 00 22
	rti		; 40

	ora #$D2EF.w		; 09 EF D2
	brk $23.b		; 00 23
	rti		; 40

	ora #$DAEF.w		; 09 EF DA
	brk $24.b		; 00 24
	rti		; 40

	ora #$E2EF.w		; 09 EF E2
	brk $25.b		; 00 25
	rti		; 40

	ora #$EAEF.w		; 09 EF EA
	brk $26.b		; 00 26
	rti		; 40

	ora $92DF.w,Y		; 19 DF 92
	brk $27.b		; 00 27
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsx		; BA
	brk $28.b		; 00 28
	rti		; 40

	ora #$BAEF.w		; 09 EF BA
	brk $29.b		; 00 29
	rti		; 40

	ora #$C2EF.w		; 09 EF C2
	brk $2A.b		; 00 2A
	rti		; 40

	ora #$CAEF.w		; 09 EF CA
	brk $2B.b		; 00 2B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	dex		; CA
	brk $2C.b		; 00 2C
	rti		; 40

	ora $CADF.w,Y		; 19 DF CA
	brk $2D.b		; 00 2D
	rti		; 40

	and $A5BF.w,Y		; 39 BF A5
	brk $2E.b		; 00 2E
	rti		; 40

	ora #$F2EF.w		; 09 EF F2
	brk $2F.b		; 00 2F
	rti		; 40

	ora #$FAEF.w		; 09 EF FA
	brk $32.b		; 00 32
	rti		; 40

	sbc $8AFF.w,Y		; F9 FF 8A
	brk $33.b		; 00 33
	rti		; 40

	and ($C7.b),Y		; 31 C7
	sta $3400.w		; 8D 00 34
	rti		; 40

	and ($C7.b),Y		; 31 C7
	sta $00.b,X		; 95 00
	and $40.b,X		; 35 40
	and ($C7.b),Y		; 31 C7
	sta $3600.w,X		; 9D 00 36
	rti		; 40

	and ($C7.b),Y		; 31 C7
	lda $00.b		; A5 00
	and [$40.b],Y		; 37 40
	and ($C7.b),Y		; 31 C7
	lda $3800.w		; AD 00 38
	rti		; 40

	sbc ($07.b),Y		; F1 07
	ldx $00.b		; A6 00
	and $F940.w,Y		; 39 40 F9
	sbc $3A00A6.l,X		; FF A6 00 3A
	rti		; 40

	and $91BF.w,Y		; 39 BF 91
	brk $3B.b		; 00 3B
	rti		; 40

	rol $95BA.w,X		; 3E BA 95
	brk $3C.b		; 00 3C
	rti		; 40

	lsr $B2.b		; 46 B2
	sta $00.b,X		; 95 00
	and $2140.w,X		; 3D 40 21
	ora ($DF.b),Y		; 11 DF
	sta ($08.b)		; 92 08
	brk $48.b		; 00 48
	and ($CF.b,X)		; 21 CF
	sta ($08.b)		; 92 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	rep #$08		; C2 08
	tsb $48.b		; 04 48
	ora $C2D7.w,Y		; 19 D7 C2
	php		; 08
	asl $48.b		; 06 48
	and #$C2C7.w		; 29 C7 C2
	php		; 08
	php		; 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	lda ($08.b)		; B2 08
	asl A		; 0A
	pha		; 48
	ora ($DD.b,S),Y		; 13 DD
	lda ($08.b)		; B2 08
	tsb $2348.w		; 0C 48 23
	cmp $08B2.w		; CD B2 08
	asl $4548.w		; 0E 48 45
	plb		; AB
	cmp ($08.b)		; D2 08
	jsr $0748.w		; 20 48 07
	sbc #$08A2.w		; E9 A2 08
	jsl $D91748.l		; 22 48 17 D9
	ldx #$08.b		; A2 08
	bit $48.b		; 24 48
	and [$C9.b]		; 27 C9
	ldx #$08.b		; A2 08
	rol $48.b		; 26 48
	sbc $D2FF.w,Y		; F9 FF D2
	brk $28.b		; 00 28
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	and #$F240.w		; 29 40 F2
	asl $F2.b		; 06 F2
	brk $2A.b		; 00 2A
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	tsx		; BA
	brk $2B.b		; 00 2B
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	dex		; CA
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $2D.b		; 00 2D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	plx		; FA
	brk $2E.b		; 00 2E
	rti		; 40

	ora $D2DB.w,X		; 1D DB D2
	brk $2F.b		; 00 2F
	rti		; 40

	and $D3.b		; 25 D3
	cmp ($00.b)		; D2 00
	sec		; 38
	rti		; 40

	and $D2CB.w		; 2D CB D2
	brk $39.b		; 00 39
	rti		; 40

	and $C3.b,X		; 35 C3
	cmp ($00.b)		; D2 00
	dec A		; 3A
	rti		; 40

	and $D2BB.w,X		; 3D BB D2
	brk $3B.b		; 00 3B
	rti		; 40

	eor $DA9B.w,X		; 5D 9B DA
	brk $3C.b		; 00 3C
	rti		; 40

	sbc $03.b,X		; F5 03
	nop		; EA
	brk $3D.b		; 00 3D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	rol $5540.w,X		; 3E 40 55
	lda $D2.b,S		; A3 D2
	brk $3F.b		; 00 3F
	rti		; 40

	eor $A3.b,X		; 55 A3
	phx		; DA
	brk $40.b		; 00 40
	rti		; 40

	inc $02.b,X		; F6 02
	sep #$00		; E2 00
	eor ($40.b,X)		; 41 40
	and $C2BF.w,Y		; 39 BF C2
	brk $42.b		; 00 42
	rti		; 40

	sbc $CAFF.w,Y		; F9 FF CA
	brk $43.b		; 00 43
	rti		; 40

	and $CABF.w,Y		; 39 BF CA
	brk $44.b		; 00 44
	rti		; 40

	trb $17D9.w		; 1C D9 17
	nop		; EA
	php		; 08
	brk $48.b		; 00 48
	and $E2B7.w,Y		; 39 B7 E2
	php		; 08
	cop $48.b		; 02 48
	ora ($DF.b),Y		; 11 DF
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	and ($CF.b,X)		; 21 CF
	tsx		; BA
	php		; 08
	asl $48.b		; 06 48
	ora ($DF.b),Y		; 11 DF
	rep #$08		; C2 08
	php		; 08
	pha		; 48
	and ($BF.b),Y		; 31 BF
	dex		; CA
	php		; 08
	asl A		; 0A
	pha		; 48
	and ($CF.b,X)		; 21 CF
	dex		; CA
	php		; 08
	tsb $1148.w		; 0C 48 11
	cmp $0E08D2.l,X		; DF D2 08 0E
	pha		; 48
	and #$DAC7.w		; 29 C7 DA
	php		; 08
	jsr $1948.w		; 20 48 19
	cmp [$E2.b],Y		; D7 E2
	php		; 08
	jsl $DB1548.l		; 22 48 15 DB
	sbc ($08.b)		; F2 08
	bit $48.b		; 24 48
	and $CB.b		; 25 CB
	sbc ($08.b)		; F2 08
	rol $48.b		; 26 48
	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	plp		; 28
	rti		; 40

	and ($C7.b),Y		; 31 C7
	rep #$00		; C2 00
	and #$2140.w		; 29 40 21
	cmp [$DA.b],Y		; D7 DA
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sep #$00		; E2 00
	pld		; 2B
	rti		; 40

	and #$EACF.w		; 29 CF EA
	brk $2C.b		; 00 2C
	rti		; 40

	and ($C7.b),Y		; 31 C7
	nop		; EA
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $2E.b		; 00 2E
	rti		; 40

	ora #$DDEF.w		; 09 EF DD
	brk $2F.b		; 00 2F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inc $00.b		; E6 00
	sec		; 38
	rti		; 40

	ora $A2DB.w,X		; 1D DB A2
	brk $39.b		; 00 39
	rti		; 40

	ora $E3.b,X		; 15 E3
	tax		; AA
	brk $3A.b		; 00 3A
	rti		; 40

	ora $AADB.w,X		; 1D DB AA
	brk $3B.b		; 00 3B
	rti		; 40

	and $C3.b,X		; 35 C3
	sbc ($00.b)		; F2 00
	bit $E940.w,X		; 3C 40 E9
	ora $3D00EA.l		; 0F EA 00 3D
	rti		; 40

	cmp ($27.b),Y		; D1 27
	sbc ($00.b)		; F2 00
	rol $0540.w,X		; 3E 40 05
	sbc ($DF.b,S),Y		; F3 DF
	brk $3F.b		; 00 3F
	rti		; 40

	tas		; 1B
	xce		; FB
	sbc $9B.b,X		; F5 9B
	php		; 08
	brk $48.b		; 00 48
	tas		; 1B
	cmp $9B.b,X		; D5 9B
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $AB.b,X		; F5 AB
	php		; 08
	tsb $48.b		; 04 48
	phd		; 0B
	sbc $A3.b		; E5 A3
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $BB.b,X		; F5 BB
	php		; 08
	php		; 08
	pha		; 48
	phd		; 0B
	sbc $B3.b		; E5 B3
	php		; 08
	asl A		; 0A
	pha		; 48
	tas		; 1B
	cmp $B3.b,X		; D5 B3
	php		; 08
	tsb $1B48.w		; 0C 48 1B
	cmp $C3.b,X		; D5 C3
	php		; 08
	asl $0B48.w		; 0E 48 0B
	sbc $C3.b		; E5 C3
	php		; 08
	jsr $0C48.w		; 20 48 0C
	cpx $EB.b		; E4 EB
	php		; 08
	jsl $E20E48.l		; 22 48 0E E2
	stp		; DB
	php		; 08
	bit $48.b		; 24 48
	inc A		; 1A
	dec $00FB.w,X		; DE FB 00
	rol $40.b		; 26 40
	ora #$D3EF.w		; 09 EF D3
	brk $27.b		; 00 27
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp ($00.b,S),Y		; D3 00
	plp		; 28
	rti		; 40

	ora $D3DF.w,Y		; 19 DF D3
	brk $29.b		; 00 29
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	txy		; 9B
	brk $2A.b		; 00 2A
	rti		; 40

	tas		; 1B
	cmp $00AB.w,X		; DD AB 00
	pld		; 2B
	rti		; 40

	xce		; FB
	sbc $00CB.w,X		; FD CB 00
	bit $0340.w		; 2C 40 03
	sbc $CB.b,X		; F5 CB
	brk $2D.b		; 00 2D
	rti		; 40

	asl A		; 0A
	inc $00FB.w		; EE FB 00
	rol $FE40.w		; 2E 40 FE
	plx		; FA
	cmp ($00.b,S),Y		; D3 00
	and $FAFE40.l		; 2F 40 FE FA
	stp		; DB
	brk $36.b		; 00 36
	rti		; 40

	inc $E3FA.w,X		; FE FA E3
	brk $37.b		; 00 37
	rti		; 40

	inc $EBFA.w,X		; FE FA EB
	brk $38.b		; 00 38
	rti		; 40

	inc $F3FA.w,X		; FE FA F3
	brk $39.b		; 00 39
	rti		; 40

	inc $FBFA.w,X		; FE FA FB
	brk $3A.b		; 00 3A
	rti		; 40

	ora ($E6.b)		; 12 E6
	xce		; FB
	brk $3B.b		; 00 3B
	rti		; 40

	ora $07E9.w,X		; 1D E9 07
	sbc $88.b,X		; F5 88
	brk $C8.b		; 00 C8
	cop $EE.b		; 02 EE
	lda $88.b,X		; B5 88
	cop $C8.b		; 02 C8
	asl $9DE2.w		; 0E E2 9D
	dey		; 88
	tsb $C8.b		; 04 C8
	dec $1A.b,X		; D6 1A
	cmp $0688.w		; CD 88 06
	iny		; C8
	inc $0A.b		; E6 0A
	sbc $88.b		; E5 88
	php		; 08
	iny		; C8
	inc $0A.b		; E6 0A
	cmp $88.b,X		; D5 88
	asl A		; 0A
	iny		; C8
	inc $FA.b,X		; F6 FA
	sbc $88.b		; E5 88
	tsb $F6C8.w		; 0C C8 F6
	plx		; FA
	cmp $88.b,X		; D5 88
	asl $06C8.w		; 0E C8 06
	nop		; EA
	cmp $88.b,X		; D5 88
	jsr $FFC8.w		; 20 C8 FF
	sbc ($C5.b),Y		; F1 C5
	dey		; 88
	jsl $01EFC8.l		; 22 C8 EF 01
	cmp $88.b		; C5 88
	bit $C8.b		; 24 C8
	sbc [$09.b]		; E7 09
	lda $88.b,X		; B5 88
	rol $C8.b		; 26 C8
	sbc $F5FF.w,Y		; F9 FF F5
	bra  40.b		; 80 28
	cpy #$FA.b		; C0 FA
	inc $80BD.w,X		; FE BD 80
	and #$0AC0.w		; 29 C0 0A
	inc $80AD.w		; EE AD 80
	rol A		; 2A
	cpy #$12.b		; C0 12
	inc $AD.b		; E6 AD
	bra  43.b		; 80 2B
	cpy #$01.b		; C0 01
	sbc [$F5.b],Y		; F7 F5
	bra  44.b		; 80 2C
	cpy #$E5.b		; C0 E5
	ora ($AD.b,S),Y		; 13 AD
	bra  45.b		; 80 2D
	cpy #$06.b		; C0 06
	sbc ($ED.b)		; F2 ED
	bra  46.b		; 80 2E
	cpy #$06.b		; C0 06
	sbc ($E5.b)		; F2 E5
	bra  47.b		; 80 2F
	cpy #$0E.b		; C0 0E
	nop		; EA
	sbc $80.b		; E5 80
	sec		; 38
	cpy #$26.b		; C0 26
	cmp ($F2.b)		; D2 F2
	bra  57.b		; 80 39
	cpy #$26.b		; C0 26
	cmp ($EA.b)		; D2 EA
	bra  58.b		; 80 3A
	cpy #$1E.b		; C0 1E
	phx		; DA
	inx		; E8
	bra  59.b		; 80 3B
	cpy #$DF.b		; C0 DF
	ora $809D.w,Y		; 19 9D 80
	bit $2EC0.w,X		; 3C C0 2E
	dex		; CA
	inc $3D80.w		; EE 80 3D
	cpy #$16.b		; C0 16
.ACCU 8
	sep #$E6		; E2 E6
	bra  62.b		; 80 3E
	cpy #$E1.b		; C0 E1
	ora [$A5.b],Y		; 17 A5
	bra  63.b		; 80 3F
	cpy #$E7.b		; C0 E7
	ora ($C5.b),Y		; 11 C5
	bra  64.b		; 80 40
	cpy #$1E.b		; C0 1E
	sbc #$07.b		; E9 07
	xba		; EB
	dey		; 88
	brk $C8.b		; 00 C8
	sbc $EBF7.w,Y		; F9 F7 EB
	dey		; 88
	cop $C8.b		; 02 C8
	sbc #$07.b		; E9 07
	stp		; DB
	dey		; 88
	tsb $C8.b		; 04 C8
	sbc $DBF7.w,Y		; F9 F7 DB
	dey		; 88
	asl $C8.b		; 06 C8
	sbc #$07.b		; E9 07
	wai		; CB
	dey		; 88
	php		; 08
	iny		; C8
	sbc $CBF7.w,Y		; F9 F7 CB
	dey		; 88
	asl A		; 0A
	iny		; C8
	ora #$E7.b		; 09 E7
	sep #$88		; E2 88
	tsb $09C8.w		; 0C C8 09
	sbc [$B2.b]		; E7 B2
	dey		; 88
	asl $D9C8.w		; 0E C8 D9
	ora [$F1.b],Y		; 17 F1
	dey		; 88
	jsr $E5C8.w		; 20 C8 E5
	phd		; 0B
	tyx		; BB
	dey		; 88
	jsl $EF09C8.l		; 22 C8 09 EF
	dex		; CA
	bra  36.b		; 80 24
	cpy #$E1.b		; C0 E1
	ora [$AB.b],Y		; 17 AB
	bra  37.b		; 80 25
	cpy #$19.b		; C0 19
	cmp $2680EA.l,X		; DF EA 80 26
	cpy #$E1.b		; C0 E1
	ora [$E9.b],Y		; 17 E9
	bra  39.b		; 80 27
	cpy #$09.b		; C0 09
	sbc $2880DA.l		; EF DA 80 28
	cpy #$22.b		; C0 22
	dec $E6.b,X		; D6 E6
	bra  41.b		; 80 29
	cpy #$2A.b		; C0 2A
	dec $80E6.w		; CE E6 80
	rol A		; 2A
	cpy #$F2.b		; C0 F2
	asl $FB.b		; 06 FB
	bra  43.b		; 80 2B
	cpy #$FA.b		; C0 FA
	inc $80FB.w,X		; FE FB 80
	bit $02C0.w		; 2C C0 02
	inc $FB.b,X		; F6 FB
	bra  45.b		; 80 2D
	cpy #$32.b		; C0 32
	dec $E3.b		; C6 E3
	bra  46.b		; 80 2E
	cpy #$FA.b		; C0 FA
	inc $80C3.w,X		; FE C3 80
	and $F602C0.l		; 2F C0 02 F6
	cmp $80.b,S		; C3 80
	bit $C0.b,X		; 34 C0
	asl A		; 0A
	inc $80C2.w		; EE C2 80
	and $C0.b,X		; 35 C0
	ora ($E6.b)		; 12 E6
	tax		; AA
	bra  54.b		; 80 36
	cpy #$E4.b		; C0 E4
	trb $B3.b		; 14 B3
	bra  55.b		; 80 37
	cpy #$1D.b		; C0 1D
	stp		; DB
	sbc [$80.b]		; E7 80
	sec		; 38
	cpy #$09.b		; C0 09
	sbc $3980D2.l		; EF D2 80 39
	cpy #$DE.b		; C0 DE
	inc A		; 1A
	tay		; A8
	bra  58.b		; 80 3A
	cpy #$18.b		; C0 18
	cpx #$A9.b		; E0 A9
	bra  59.b		; 80 3B
	cpy #$1C.b		; C0 1C
	phx		; DA
	asl $FD.b,X		; 16 FD
	dey		; 88
	brk $C8.b		; 00 C8
	asl $EA.b		; 06 EA
	tyx		; BB
	dey		; 88
	cop $C8.b		; 02 C8
	php		; 08
	inx		; E8
	wai		; CB
	dey		; 88
	tsb $C8.b		; 04 C8
	inx		; E8
	php		; 08
	sbc ($88.b,S),Y		; F3 88
	asl $C8.b		; 06 C8
	sed		; F8
	sed		; F8
	sbc ($88.b,S),Y		; F3 88
	php		; 08
	iny		; C8
	inx		; E8
	php		; 08
	sbc $88.b,S		; E3 88
	asl A		; 0A
	iny		; C8
	inx		; E8
	php		; 08
	cmp ($88.b,S),Y		; D3 88
	tsb $F8C8.w		; 0C C8 F8
	sed		; F8
	wai		; CB
	dey		; 88
	asl $F8C8.w		; 0E C8 F8
	sed		; F8
	sbc $88.b,S		; E3 88
	jsr $10C8.w		; 20 C8 10
	inx		; E8
	lda ($80.b,S),Y		; B3 80
	jsl $15E3C0.l		; 22 C0 E3 15
	clv		; B8
	bra  35.b		; 80 23
	cpy #$15.b		; C0 15
	sbc $B1.b,S		; E3 B1
	bra  36.b		; 80 24
	cpy #$1B.b		; C0 1B
	cmp $80C4.w,X		; DD C4 80
	and $C0.b		; 25 C0
	sbc [$11.b]		; E7 11
	tyx		; BB
	bra  38.b		; 80 26
	cpy #$EF.b		; C0 EF
	ora #$BB.b		; 09 BB
	bra  39.b		; 80 27
	cpy #$E8.b		; C0 E8
	bpl -61.b		; 10 C3
	bra  40.b		; 80 28
	cpy #$F0.b		; C0 F0
	php		; 08
	cmp $80.b,S		; C3 80
	and #$C0.b		; 29 C0
	php		; 08
	beq  -5.b		; F0 FB
	bra  42.b		; 80 2A
	cpy #$08.b		; C0 08
	beq -13.b		; F0 F3
	bra  43.b		; 80 2B
	cpy #$08.b		; C0 08
	beq -21.b		; F0 EB
	bra  44.b		; 80 2C
	cpy #$08.b		; C0 08
	beq -29.b		; F0 E3
	bra  45.b		; 80 2D
	cpy #$F8.b		; C0 F8
	brk $DB.b		; 00 DB
	bra  46.b		; 80 2E
	cpy #$00.b		; C0 00
	sed		; F8
	stp		; DB
	bra  47.b		; 80 2F
	cpy #$08.b		; C0 08
	beq -37.b		; F0 DB
	bra  50.b		; 80 32
	cpy #$F0.b		; C0 F0
	php		; 08
	wai		; CB
	bra  51.b		; 80 33
	cpy #$10.b		; C0 10
	inx		; E8
	sbc ($80.b),Y		; F1 80
	bit $C0.b,X		; 34 C0
	clc		; 18
	cpx #$C9.b		; E0 C9
	bra  53.b		; 80 35
	cpy #$E0.b		; C0 E0
	clc		; 18
	bcs -128.b		; B0 80
	rol $C0.b,X		; 36 C0
	ora $00E60A.l,X		; 1F 0A E6 00
	dey		; 88
	brk $C8.b		; 00 C8
	asl A		; 0A
	inc $F0.b		; E6 F0
	dey		; 88
	cop $C8.b		; 02 C8
	inc A		; 1A
	dec $07.b,X		; D6 07
	dey		; 88
	tsb $C8.b		; 04 C8
	inc A		; 1A
	dec $F7.b,X		; D6 F7
	dey		; 88
	asl $C8.b		; 06 C8
	cmp ($1E.b)		; D2 1E
	inc $0888.w		; EE 88 08
	iny		; C8
	plx		; FA
	inc $E6.b,X		; F6 E6
	dey		; 88
	asl A		; 0A
	iny		; C8
	sbc ($FE.b)		; F2 FE
	inc $88.b,X		; F6 88
	tsb $E2C8.w		; 0C C8 E2
	asl $88EE.w		; 0E EE 88
	asl $DAC8.w		; 0E C8 DA
	asl $DE.b,X		; 16 DE
	dey		; 88
	jsr $EAC8.w		; 20 C8 EA
	asl $DE.b		; 06 DE
	dey		; 88
	jsl $EE0AC8.l		; 22 C8 0A EE
	inx		; E8
	bra  36.b		; 80 24
	cpy #$12.b		; C0 12
	inc $E8.b		; E6 E8
	bra  37.b		; 80 25
	cpy #$2A.b		; C0 2A
	dec $8017.w		; CE 17 80
	rol $C0.b		; 26 C0
	rol A		; 2A
	dec $800F.w		; CE 0F 80
	and [$C0.b]		; 27 C0
	inc A		; 1A
	dec $80EF.w,X		; DE EF 80
	plp		; 28
	cpy #$CA.b		; C0 CA
	rol $80EB.w		; 2E EB 80
	and #$C0.b		; 29 C0
	rol A		; 2A
	dec $80FA.w		; CE FA 80
	rol A		; 2A
	cpy #$FA.b		; C0 FA
	inc $8006.w,X		; FE 06 80
	pld		; 2B
	cpy #$2A.b		; C0 2A
	dec $80F2.w		; CE F2 80
	bit $32C0.w		; 2C C0 32
	dec $F2.b		; C6 F2
	bra  45.b		; 80 2D
	cpy #$3A.b		; C0 3A
	ldx $80F2.w,Y		; BE F2 80
	rol $32C0.w		; 2E C0 32
	dec $EA.b		; C6 EA
	bra  47.b		; 80 2F
	cpy #$02.b		; C0 02
	inc $03.b,X		; F6 03
	bra  52.b		; 80 34
	cpy #$CA.b		; C0 CA
	rol $80F3.w		; 2E F3 80
	and $C0.b,X		; 35 C0
	nop		; EA
	asl $80FE.w		; 0E FE 80
	rol $C0.b,X		; 36 C0
	cop $F6.b		; 02 F6
	inc $80.b,X		; F6 80
	and [$C0.b],Y		; 37 C0
	sbc ($06.b)		; F2 06
	inc $3880.w		; EE 80 38
	cpy #$D2.b		; C0 D2
	rol $E6.b		; 26 E6
	bra  57.b		; 80 39
	cpy #$D3.b		; C0 D3
	and $FE.b		; 25 FE
	bra  58.b		; 80 3A
	cpy #$DB.b		; C0 DB
	ora $80FE.w,X		; 1D FE 80
	tsa		; 3B
	cpy #$D5.b		; C0 D5
	and $06.b,S		; 23 06
	bra  60.b		; 80 3C
	cpy #$1D.b		; C0 1D
	ora [$E9.b]		; 07 E9
	txy		; 9B
	pha		; 48
	brk $08.b		; 00 08
	inc $DB02.w		; EE 02 DB
	pha		; 48
	cop $08.b		; 02 08
	sep #$0E		; E2 0E
	sbc ($48.b,S),Y		; F3 48
	tsb $08.b		; 04 08
	inc A		; 1A
	dec $C3.b,X		; D6 C3
	pha		; 48
	asl $08.b		; 06 08
	asl A		; 0A
	inc $AB.b		; E6 AB
	pha		; 48
	php		; 08
	php		; 08
	asl A		; 0A
	inc $BB.b		; E6 BB
	pha		; 48
	asl A		; 0A
	php		; 08
	plx		; FA
	inc $AB.b,X		; F6 AB
	pha		; 48
	tsb $FA08.w		; 0C 08 FA
	inc $BB.b,X		; F6 BB
	pha		; 48
	asl $EA08.w		; 0E 08 EA
	asl $BB.b		; 06 BB
	pha		; 48
	jsr $F108.w		; 20 08 F1
	sbc $2248CB.l,X		; FF CB 48 22
	php		; 08
	ora ($EF.b,X)		; 01 EF
	wai		; CB
	pha		; 48
	bit $08.b		; 24 08
	ora #$E7.b		; 09 E7
	stp		; DB
	pha		; 48
	rol $08.b		; 26 08
	sbc $40A3F9.l,X		; FF F9 A3 40
	plp		; 28
	brk $FE.b		; 00 FE
	plx		; FA
	stp		; DB
	rti		; 40

	and #$00.b		; 29 00
	inc $EB0A.w		; EE 0A EB
	rti		; 40

	rol A		; 2A
	brk $E6.b		; 00 E6
	ora ($EB.b)		; 12 EB
	rti		; 40

	pld		; 2B
	brk $F7.b		; 00 F7
	ora ($A3.b,X)		; 01 A3
	rti		; 40

	bit $1300.w		; 2C 00 13
	sbc $EB.b		; E5 EB
	rti		; 40

	and $F200.w		; 2D 00 F2
	asl $AB.b		; 06 AB
	rti		; 40

	rol $F200.w		; 2E 00 F2
	asl $B3.b		; 06 B3
	rti		; 40

	and $0EEA00.l		; 2F 00 EA 0E
	lda ($40.b,S),Y		; B3 40
	sec		; 38
	brk $D2.b		; 00 D2
	rol $A6.b		; 26 A6
	rti		; 40

	and $D200.w,Y		; 39 00 D2
	rol $AE.b		; 26 AE
	rti		; 40

	dec A		; 3A
	brk $DA.b		; 00 DA
	asl $40B0.w,X		; 1E B0 40
	tsa		; 3B
	brk $19.b		; 00 19
	cmp $3C40FB.l,X		; DF FB 40 3C
	brk $CA.b		; 00 CA
	rol $40AA.w		; 2E AA 40
	and $E200.w,X		; 3D 00 E2
	asl $B2.b,X		; 16 B2
	rti		; 40

	rol $1700.w,X		; 3E 00 17
	sbc ($F3.b,X)		; E1 F3
	rti		; 40

	and $E71100.l,X		; 3F 00 11 E7
	cmp ($40.b,S),Y		; D3 40
	rti		; 40

	brk $1E.b		; 00 1E
	ora [$E9.b]		; 07 E9
	ldx $0048.w		; AE 48 00
	php		; 08
	sbc [$F9.b],Y		; F7 F9
	ldx $0248.w		; AE 48 02
	php		; 08
	ora [$E9.b]		; 07 E9
	ldx $0448.w,Y		; BE 48 04
	php		; 08
	sbc [$F9.b],Y		; F7 F9
	ldx $0648.w,Y		; BE 48 06
	php		; 08
	ora [$E9.b]		; 07 E9
	dec $0848.w		; CE 48 08
	php		; 08
	sbc [$F9.b],Y		; F7 F9
	dec $0A48.w		; CE 48 0A
	php		; 08
	sbc [$09.b]		; E7 09
	lda [$48.b],Y		; B7 48
	tsb $E708.w		; 0C 08 E7
	ora #$E7.b		; 09 E7
	pha		; 48
	asl $1708.w		; 0E 08 17
	cmp $48A8.w,Y		; D9 A8 48
	jsr $0B08.w		; 20 08 0B
	sbc $DE.b		; E5 DE
	pha		; 48
	jsl $09EF08.l		; 22 08 EF 09
	cmp [$40.b],Y		; D7 40
	bit $00.b		; 24 00
	ora [$E1.b],Y		; 17 E1
	inc $40.b,X		; F6 40
	and $00.b		; 25 00
	cmp $40B719.l,X		; DF 19 B7 40
	rol $00.b		; 26 00
	ora [$E1.b],Y		; 17 E1
	clv		; B8
	rti		; 40

	and [$00.b]		; 27 00
	sbc $40C709.l		; EF 09 C7 40
	plp		; 28
	brk $D6.b		; 00 D6
	jsl $2940BB.l		; 22 BB 40 29
	brk $CE.b		; 00 CE
	rol A		; 2A
	tyx		; BB
	rti		; 40

	rol A		; 2A
	brk $06.b		; 00 06
	sbc ($A6.b)		; F2 A6
	rti		; 40

	pld		; 2B
	brk $FE.b		; 00 FE
	plx		; FA
	ldx $40.b		; A6 40
	bit $F600.w		; 2C 00 F6
	cop $A6.b		; 02 A6
	rti		; 40

	and $C600.w		; 2D 00 C6
	and ($BE.b)		; 32 BE
	rti		; 40

	rol $FE00.w		; 2E 00 FE
	plx		; FA
	dec $2F40.w,X		; DE 40 2F
	brk $F6.b		; 00 F6
	cop $DE.b		; 02 DE
	rti		; 40

	bit $00.b,X		; 34 00
	inc $DF0A.w		; EE 0A DF
	rti		; 40

	and $00.b,X		; 35 00
	inc $12.b		; E6 12
	sbc [$40.b],Y		; F7 40
	rol $00.b,X		; 36 00
	trb $E4.b		; 14 E4
	inc $3740.w		; EE 40 37
	brk $DB.b		; 00 DB
	ora $40BA.w,X		; 1D BA 40
	sec		; 38
	brk $EF.b		; 00 EF
	ora #$CF.b		; 09 CF
	rti		; 40

	and $1A00.w,Y		; 39 00 1A
	dec $40F9.w,X		; DE F9 40
	dec A		; 3A
	brk $E0.b		; 00 E0
	clc		; 18
	sed		; F8
	rti		; 40

	tsa		; 3B
	brk $1C.b		; 00 1C
	asl $DA.b,X		; 16 DA
	ldy $48.b		; A4 48
	brk $08.b		; 00 08
	nop		; EA
	asl $E6.b		; 06 E6
	pha		; 48
	cop $08.b		; 02 08
	inx		; E8
	php		; 08
	dec $48.b,X		; D6 48
	tsb $08.b		; 04 08
	php		; 08
	inx		; E8
	ldx $0648.w		; AE 48 06
	php		; 08
	sed		; F8
	sed		; F8
	ldx $0848.w		; AE 48 08
	php		; 08
	php		; 08
	inx		; E8
	ldx $0A48.w,Y		; BE 48 0A
	php		; 08
	php		; 08
	inx		; E8
	dec $0C48.w		; CE 48 0C
	php		; 08
	sed		; F8
	sed		; F8
	dec $48.b,X		; D6 48
	asl $F808.w		; 0E 08 F8
	sed		; F8
	ldx $2048.w,Y		; BE 48 20
	php		; 08
	inx		; E8
	bpl -10.b		; 10 F6
	rti		; 40

	jsl $E31500.l		; 22 00 15 E3
	sbc ($40.b),Y		; F1 40
	and $00.b,S		; 23 00
	sbc $15.b,S		; E3 15
	sed		; F8
	rti		; 40

	bit $00.b		; 24 00
	cmp $E51B.w,X		; DD 1B E5
	rti		; 40

	and $00.b		; 25 00
	ora ($E7.b),Y		; 11 E7
	inc $2640.w		; EE 40 26
	brk $09.b		; 00 09
	sbc $2740EE.l		; EF EE 40 27
	brk $10.b		; 00 10
	inx		; E8
	inc $40.b		; E6 40
	plp		; 28
	brk $08.b		; 00 08
	beq -26.b		; F0 E6
	rti		; 40

	and #$00.b		; 29 00
	beq   8.b		; F0 08
	ldx $2A40.w		; AE 40 2A
	brk $F0.b		; 00 F0
	php		; 08
	ldx $40.b,Y		; B6 40
	pld		; 2B
	brk $F0.b		; 00 F0
	php		; 08
	ldx $2C40.w,Y		; BE 40 2C
	brk $F0.b		; 00 F0
	php		; 08
	dec $40.b		; C6 40
	and $0000.w		; 2D 00 00
	sed		; F8
	dec $2E40.w		; CE 40 2E
	brk $F8.b		; 00 F8
	brk $CE.b		; 00 CE
	rti		; 40

	and $08F000.l		; 2F 00 F0 08
	dec $3240.w		; CE 40 32
	brk $08.b		; 00 08
	beq -34.b		; F0 DE
	rti		; 40

	and ($00.b,S),Y		; 33 00
	inx		; E8
	bpl -72.b		; 10 B8
	rti		; 40

	bit $00.b,X		; 34 00
	cpx #$18.b		; E0 18
	cpx #$40.b		; E0 40
	and $00.b,X		; 35 00
	clc		; 18
	cpx #$F9.b		; E0 F9
	rti		; 40

	rol $00.b,X		; 36 00
	ora $D70AE6.l,X		; 1F E6 0A D7
	pha		; 48
	brk $08.b		; 00 08
	inc $0A.b		; E6 0A
	sbc [$48.b]		; E7 48
	cop $08.b		; 02 08
	dec $1A.b,X		; D6 1A
	bne  72.b		; D0 48
	tsb $08.b		; 04 08
	dec $1A.b,X		; D6 1A
	cpx #$48.b		; E0 48
	asl $08.b		; 06 08
	asl $E9D2.w,X		; 1E D2 E9
	pha		; 48
	php		; 08
	php		; 08
	inc $FA.b,X		; F6 FA
	sbc ($48.b),Y		; F1 48
	asl A		; 0A
	php		; 08
	inc $E1F2.w,X		; FE F2 E1
	pha		; 48
	tsb $0E08.w		; 0C 08 0E
.ACCU 8
	sep #$E9		; E2 E9
	pha		; 48
	asl $1608.w		; 0E 08 16
	phx		; DA
	sbc $2048.w,Y		; F9 48 20
	php		; 08
	asl $EA.b		; 06 EA
	sbc $2248.w,Y		; F9 48 22
	php		; 08
	inc $F70A.w		; EE 0A F7
	rti		; 40

	bit $00.b		; 24 00
	inc $12.b		; E6 12
	sbc [$40.b],Y		; F7 40
	and $00.b		; 25 00
	dec $C82A.w		; CE 2A C8
	rti		; 40

	rol $00.b		; 26 00
	dec $D02A.w		; CE 2A D0
	rti		; 40

	and [$00.b]		; 27 00
	dec $F01A.w,X		; DE 1A F0
	rti		; 40

	plp		; 28
	brk $2E.b		; 00 2E
	dex		; CA
	pea $2940.w		; F4 40 29
	brk $CE.b		; 00 CE
	rol A		; 2A
	sbc $40.b		; E5 40
	rol A		; 2A
	brk $FE.b		; 00 FE
	plx		; FA
	cmp $2B40.w,Y		; D9 40 2B
	brk $CE.b		; 00 CE
	rol A		; 2A
	sbc $2C40.w		; ED 40 2C
	brk $C6.b		; 00 C6
	and ($ED.b)		; 32 ED
	rti		; 40

	and $BE00.w		; 2D 00 BE
	dec A		; 3A
	sbc $2E40.w		; ED 40 2E
	brk $C6.b		; 00 C6
	and ($F5.b)		; 32 F5
	rti		; 40

	and $02F600.l		; 2F 00 F6 02
	jmp.w [$3440]		; DC 40 34
	brk $2E.b		; 00 2E
	dex		; CA
	cpx $3540.w		; EC 40 35
	brk $0E.b		; 00 0E
	nop		; EA
	sbc ($40.b,X)		; E1 40
	rol $00.b,X		; 36 00
	inc $02.b,X		; F6 02
	sbc #$40.b		; E9 40
	and [$00.b],Y		; 37 00
	asl $F2.b		; 06 F2
	sbc ($40.b),Y		; F1 40
	sec		; 38
	brk $26.b		; 00 26
	cmp ($F9.b)		; D2 F9
	rti		; 40

	and $2500.w,Y		; 39 00 25
	cmp ($E1.b,S),Y		; D3 E1
	rti		; 40

	dec A		; 3A
	brk $1D.b		; 00 1D
	stp		; DB
	sbc ($40.b,X)		; E1 40
	tsa		; 3B
	brk $23.b		; 00 23
	cmp $D9.b,X		; D5 D9
	rti		; 40

	bit $1500.w,X		; 3C 00 15
	cmp $48E311.l,X		; DF 11 E3 48
	brk $08.b		; 00 08
	cmp $48F311.l,X		; DF 11 F3 48
	cop $08.b		; 02 08
	sbc $48F301.l		; EF 01 F3 48
	tsb $08.b		; 04 08
	cmp $48F621.l		; CF 21 F6 48
	asl $08.b		; 06 08
	sbc $48EEF1.l,X		; FF F1 EE 48
	php		; 08
	php		; 08
	ora $48E7E1.l		; 0F E1 E7 48
	asl A		; 0A
	php		; 08
	ora $48F7E1.l		; 0F E1 F7 48
	tsb $1F08.w		; 0C 08 1F
	cmp ($F1.b),Y		; D1 F1
	pha		; 48
	asl $C708.w		; 0E 08 C7
	and ($FB.b),Y		; 31 FB
	rti		; 40

	jsr $EF00.w		; 20 00 EF
	ora #$E3.b		; 09 E3
	rti		; 40

	and ($00.b,X)		; 21 00
	ora [$F1.b]		; 07 F1
	inc $2240.w,X		; FE 40 22
	brk $FF.b		; 00 FF
	sbc $40FE.w,Y		; F9 FE 40
	and $00.b,S		; 23 00
	and $40F7C9.l		; 2F C9 F7 40
	bit $00.b		; 24 00
	and $40FFC9.l		; 2F C9 FF 40
	and $00.b		; 25 00
	sbc [$01.b],Y		; F7 01
	xba		; EB
	rti		; 40

	rol $00.b		; 26 00
	sbc $40EB09.l		; EF 09 EB 40
	and [$00.b]		; 27 00
	ora $40E9D9.l,X		; 1F D9 E9 40
	plp		; 28
	brk $BF.b		; 00 BF
	and $40F9.w,Y		; 39 F9 40
	and #$00.b		; 29 00
	cmp [$21.b],Y		; D7 21
	inc $2A40.w		; EE 40 2A
	brk $27.b		; 00 27
	cmp ($01.b),Y		; D1 01
	rti		; 40

	pld		; 2B
	brk $1F.b		; 00 1F
	cmp $4001.w,Y		; D9 01 40
	bit $1D00.w		; 2C 00 1D
	ora [$E9.b]		; 07 E9
	sbc $C8.b,X		; F5 C8
	brk $88.b		; 00 88
	inc $B502.w		; EE 02 B5
	iny		; C8
	cop $88.b		; 02 88
	sep #$0E		; E2 0E
	sta $04C8.w,X		; 9D C8 04
	dey		; 88
	inc A		; 1A
	dec $CD.b,X		; D6 CD
	iny		; C8
	asl $88.b		; 06 88
	asl A		; 0A
	inc $E5.b		; E6 E5
	iny		; C8
	php		; 08
	dey		; 88
	asl A		; 0A
	inc $D5.b		; E6 D5
	iny		; C8
	asl A		; 0A
	dey		; 88
	plx		; FA
	inc $E5.b,X		; F6 E5
	iny		; C8
	tsb $FA88.w		; 0C 88 FA
	inc $D5.b,X		; F6 D5
	iny		; C8
	asl $EA88.w		; 0E 88 EA
	asl $D5.b		; 06 D5
	iny		; C8
	jsr $F188.w		; 20 88 F1
	sbc $22C8C5.l,X		; FF C5 C8 22
	dey		; 88
	ora ($EF.b,X)		; 01 EF
	cmp $C8.b		; C5 C8
	bit $88.b		; 24 88
	ora #$E7.b		; 09 E7
	lda $C8.b,X		; B5 C8
	rol $88.b		; 26 88
	sbc $C0F5F9.l,X		; FF F9 F5 C0
	plp		; 28
	bra  -2.b		; 80 FE
	plx		; FA
	lda $29C0.w,X		; BD C0 29
	bra -18.b		; 80 EE
	asl A		; 0A
	lda $2AC0.w		; AD C0 2A
	bra -26.b		; 80 E6
	ora ($AD.b)		; 12 AD
	cpy #$2B.b		; C0 2B
	bra  -9.b		; 80 F7
	ora ($F5.b,X)		; 01 F5
	cpy #$2C.b		; C0 2C
	bra  19.b		; 80 13
	sbc $AD.b		; E5 AD
	cpy #$2D.b		; C0 2D
	bra -14.b		; 80 F2
	asl $ED.b		; 06 ED
	cpy #$2E.b		; C0 2E
	bra -14.b		; 80 F2
	asl $E5.b		; 06 E5
	cpy #$2F.b		; C0 2F
	bra -22.b		; 80 EA
	asl $C0E5.w		; 0E E5 C0
	sec		; 38
	bra -46.b		; 80 D2
	rol $F2.b		; 26 F2
	cpy #$39.b		; C0 39
	bra -46.b		; 80 D2
	rol $EA.b		; 26 EA
	cpy #$3A.b		; C0 3A
	bra -38.b		; 80 DA
	asl $C0E8.w,X		; 1E E8 C0
	tsa		; 3B
	bra  25.b		; 80 19
	cmp $3CC09D.l,X		; DF 9D C0 3C
	bra -54.b		; 80 CA
	rol $C0EE.w		; 2E EE C0
	and $E280.w,X		; 3D 80 E2
	asl $E6.b,X		; 16 E6
	cpy #$3E.b		; C0 3E
	bra  23.b		; 80 17
	sbc ($A5.b,X)		; E1 A5
	cpy #$3F.b		; C0 3F
	bra  17.b		; 80 11
	sbc [$C5.b]		; E7 C5
	cpy #$40.b		; C0 40
	bra  30.b		; 80 1E
	ora [$E9.b]		; 07 E9
	xba		; EB
	iny		; C8
	brk $88.b		; 00 88
	sbc [$F9.b],Y		; F7 F9
	xba		; EB
	iny		; C8
	cop $88.b		; 02 88
	ora [$E9.b]		; 07 E9
	stp		; DB
	iny		; C8
	tsb $88.b		; 04 88
	sbc [$F9.b],Y		; F7 F9
	stp		; DB
	iny		; C8
	asl $88.b		; 06 88
	ora [$E9.b]		; 07 E9
	wai		; CB
	iny		; C8
	php		; 08
	dey		; 88
	sbc [$F9.b],Y		; F7 F9
	wai		; CB
	iny		; C8
	asl A		; 0A
	dey		; 88
	sbc [$09.b]		; E7 09
	sep #$C8		; E2 C8
	tsb $E788.w		; 0C 88 E7
	ora #$B2.b		; 09 B2
	iny		; C8
	asl $1788.w		; 0E 88 17
	cmp $C8F1.w,Y		; D9 F1 C8
	jsr $0B88.w		; 20 88 0B
	sbc $BB.b		; E5 BB
	iny		; C8
	jsl $09EF88.l		; 22 88 EF 09
	dex		; CA
	cpy #$24.b		; C0 24
	bra  23.b		; 80 17
	sbc ($AB.b,X)		; E1 AB
	cpy #$25.b		; C0 25
	bra -33.b		; 80 DF
	ora $C0EA.w,Y		; 19 EA C0
	rol $80.b		; 26 80
	ora [$E1.b],Y		; 17 E1
	sbc #$C0.b		; E9 C0
	and [$80.b]		; 27 80
	sbc $C0DA09.l		; EF 09 DA C0
	plp		; 28
	bra -42.b		; 80 D6
	jsl $29C0E6.l		; 22 E6 C0 29
	bra -50.b		; 80 CE
	rol A		; 2A
	inc $C0.b		; E6 C0
	rol A		; 2A
	bra   6.b		; 80 06
	sbc ($FB.b)		; F2 FB
	cpy #$2B.b		; C0 2B
	bra  -2.b		; 80 FE
	plx		; FA
	xce		; FB
	cpy #$2C.b		; C0 2C
	bra -10.b		; 80 F6
	cop $FB.b		; 02 FB
	cpy #$2D.b		; C0 2D
	bra -58.b		; 80 C6
	and ($E3.b)		; 32 E3
	cpy #$2E.b		; C0 2E
	bra  -2.b		; 80 FE
	plx		; FA
	cmp $C0.b,S		; C3 C0
	and $02F680.l		; 2F 80 F6 02
	cmp $C0.b,S		; C3 C0
	bit $80.b,X		; 34 80
	inc $C20A.w		; EE 0A C2
	cpy #$35.b		; C0 35
	bra -26.b		; 80 E6
	ora ($AA.b)		; 12 AA
	cpy #$36.b		; C0 36
	bra  20.b		; 80 14
	cpx $B3.b		; E4 B3
	cpy #$37.b		; C0 37
	bra -37.b		; 80 DB
	ora $C0E7.w,X		; 1D E7 C0
	sec		; 38
	bra -17.b		; 80 EF
	ora #$D2.b		; 09 D2
	cpy #$39.b		; C0 39
	bra  26.b		; 80 1A
	dec $C0A8.w,X		; DE A8 C0
	dec A		; 3A
	bra -32.b		; 80 E0
	clc		; 18
	lda #$C0.b		; A9 C0
	tsa		; 3B
	bra  28.b		; 80 1C
	asl $DA.b,X		; 16 DA
	sbc $00C8.w,X		; FD C8 00
	dey		; 88
	nop		; EA
	asl $BB.b		; 06 BB
	iny		; C8
	cop $88.b		; 02 88
	inx		; E8
	php		; 08
	wai		; CB
	iny		; C8
	tsb $88.b		; 04 88
	php		; 08
	inx		; E8
	sbc ($C8.b,S),Y		; F3 C8
	asl $88.b		; 06 88
	sed		; F8
	sed		; F8
	sbc ($C8.b,S),Y		; F3 C8
	php		; 08
	dey		; 88
	php		; 08
	inx		; E8
	sbc $C8.b,S		; E3 C8
	asl A		; 0A
	dey		; 88
	php		; 08
	inx		; E8
	cmp ($C8.b,S),Y		; D3 C8
	tsb $F888.w		; 0C 88 F8
	sed		; F8
	wai		; CB
	iny		; C8
	asl $F888.w		; 0E 88 F8
	sed		; F8
	sbc $C8.b,S		; E3 C8
	jsr $E888.w		; 20 88 E8
	bpl -77.b		; 10 B3
	cpy #$22.b		; C0 22
	bra  21.b		; 80 15
	sbc $B8.b,S		; E3 B8
	cpy #$23.b		; C0 23
	bra -29.b		; 80 E3
	ora $B1.b,X		; 15 B1
	cpy #$24.b		; C0 24
	bra -35.b		; 80 DD
	tas		; 1B
	cpy $C0.b		; C4 C0
	and $80.b		; 25 80
	ora ($E7.b),Y		; 11 E7
	tyx		; BB
	cpy #$26.b		; C0 26
	bra   9.b		; 80 09
	sbc $27C0BB.l		; EF BB C0 27
	bra  16.b		; 80 10
	inx		; E8
	cmp $C0.b,S		; C3 C0
	plp		; 28
	bra   8.b		; 80 08
	beq -61.b		; F0 C3
	cpy #$29.b		; C0 29
	bra -16.b		; 80 F0
	php		; 08
	xce		; FB
	cpy #$2A.b		; C0 2A
	bra -16.b		; 80 F0
	php		; 08
	sbc ($C0.b,S),Y		; F3 C0
	pld		; 2B
	bra -16.b		; 80 F0
	php		; 08
	xba		; EB
	cpy #$2C.b		; C0 2C
	bra -16.b		; 80 F0
	php		; 08
	sbc $C0.b,S		; E3 C0
	and $0080.w		; 2D 80 00
	sed		; F8
	stp		; DB
	cpy #$2E.b		; C0 2E
	bra  -8.b		; 80 F8
	brk $DB.b		; 00 DB
	cpy #$2F.b		; C0 2F
	bra -16.b		; 80 F0
	php		; 08
	stp		; DB
	cpy #$32.b		; C0 32
	bra   8.b		; 80 08
	beq -53.b		; F0 CB
	cpy #$33.b		; C0 33
	bra -24.b		; 80 E8
	bpl -15.b		; 10 F1
	cpy #$34.b		; C0 34
	bra -32.b		; 80 E0
	clc		; 18
	cmp #$C0.b		; C9 C0
	and $80.b,X		; 35 80
	clc		; 18
	cpx #$B0.b		; E0 B0
	cpy #$36.b		; C0 36
	bra  31.b		; 80 1F
	inc $0A.b		; E6 0A
	brk $C8.b		; 00 C8
	brk $88.b		; 00 88
	inc $0A.b		; E6 0A
	beq -56.b		; F0 C8
	cop $88.b		; 02 88
	dec $1A.b,X		; D6 1A
	ora [$C8.b]		; 07 C8
	tsb $88.b		; 04 88
	dec $1A.b,X		; D6 1A
	sbc [$C8.b],Y		; F7 C8
	asl $88.b		; 06 88
	asl $EED2.w,X		; 1E D2 EE
	iny		; C8
	php		; 08
	dey		; 88
	inc $FA.b,X		; F6 FA
	inc $C8.b		; E6 C8
	asl A		; 0A
	dey		; 88
	inc $F6F2.w,X		; FE F2 F6
	iny		; C8
	tsb $0E88.w		; 0C 88 0E
.ACCU 8
	sep #$EE		; E2 EE
	iny		; C8
	asl $1688.w		; 0E 88 16
	phx		; DA
	dec $20C8.w,X		; DE C8 20
	dey		; 88
	asl $EA.b		; 06 EA
	dec $22C8.w,X		; DE C8 22
	dey		; 88
	inc $E80A.w		; EE 0A E8
	cpy #$24.b		; C0 24
	bra -26.b		; 80 E6
	ora ($E8.b)		; 12 E8
	cpy #$25.b		; C0 25
	bra -50.b		; 80 CE
	rol A		; 2A
	ora [$C0.b],Y		; 17 C0
	rol $80.b		; 26 80
	dec $0F2A.w		; CE 2A 0F
	cpy #$27.b		; C0 27
	bra -34.b		; 80 DE
	inc A		; 1A
	sbc $8028C0.l		; EF C0 28 80
	rol $EBCA.w		; 2E CA EB
	cpy #$29.b		; C0 29
	bra -50.b		; 80 CE
	rol A		; 2A
	plx		; FA
	cpy #$2A.b		; C0 2A
	bra  -2.b		; 80 FE
	plx		; FA
	asl $C0.b		; 06 C0
	pld		; 2B
	bra -50.b		; 80 CE
	rol A		; 2A
	sbc ($C0.b)		; F2 C0
	bit $C680.w		; 2C 80 C6
	and ($F2.b)		; 32 F2
	cpy #$2D.b		; C0 2D
	bra -66.b		; 80 BE
	dec A		; 3A
	sbc ($C0.b)		; F2 C0
	rol $C680.w		; 2E 80 C6
	and ($EA.b)		; 32 EA
	cpy #$2F.b		; C0 2F
	bra -10.b		; 80 F6
	cop $03.b		; 02 03
	cpy #$34.b		; C0 34
	bra  46.b		; 80 2E
	dex		; CA
	sbc ($C0.b,S),Y		; F3 C0
	and $80.b,X		; 35 80
	asl $FEEA.w		; 0E EA FE
	cpy #$36.b		; C0 36
	bra -10.b		; 80 F6
	cop $F6.b		; 02 F6
	cpy #$37.b		; C0 37
	bra   6.b		; 80 06
	sbc ($EE.b)		; F2 EE
	cpy #$38.b		; C0 38
	bra  38.b		; 80 26
	cmp ($E6.b)		; D2 E6
	cpy #$39.b		; C0 39
	bra  37.b		; 80 25
	cmp ($FE.b,S),Y		; D3 FE
	cpy #$3A.b		; C0 3A
	bra  29.b		; 80 1D
	stp		; DB
	inc $3BC0.w,X		; FE C0 3B
	bra  35.b		; 80 23
	cmp $06.b,X		; D5 06
	cpy #$3C.b		; C0 3C
	bra  21.b		; 80 15
	cmp $C80011.l,X		; DF 11 00 C8
	brk $88.b		; 00 88
	cmp $C8F011.l,X		; DF 11 F0 C8
	cop $88.b		; 02 88
	sbc $C8F001.l		; EF 01 F0 C8
	tsb $88.b		; 04 88
	cmp $C8ED21.l		; CF 21 ED C8
	asl $88.b		; 06 88
	sbc $C8F5F1.l,X		; FF F1 F5 C8
	php		; 08
	dey		; 88
	ora $C8FCE1.l		; 0F E1 FC C8
	asl A		; 0A
	dey		; 88
	ora $C8ECE1.l		; 0F E1 EC C8
	tsb $1F88.w		; 0C 88 1F
	cmp ($F2.b),Y		; D1 F2
	iny		; C8
	asl $C788.w		; 0E 88 C7
	and ($F0.b),Y		; 31 F0
	cpy #$20.b		; C0 20
	bra -17.b		; 80 EF
	ora #$08.b		; 09 08
	cpy #$21.b		; C0 21
	bra   7.b		; 80 07
	sbc ($ED.b),Y		; F1 ED
	cpy #$22.b		; C0 22
	bra  -1.b		; 80 FF
	sbc $C0ED.w,Y		; F9 ED C0
	and $80.b,S		; 23 80
	and $C0F4C9.l		; 2F C9 F4 C0
	bit $80.b		; 24 80
	and $C0ECC9.l		; 2F C9 EC C0
	and $80.b		; 25 80
	sbc [$01.b],Y		; F7 01
	brk $C0.b		; 00 C0
	rol $80.b		; 26 80
	sbc $C00009.l		; EF 09 00 C0
	and [$80.b]		; 27 80
	ora $C002D9.l,X		; 1F D9 02 C0
	plp		; 28
	bra -65.b		; 80 BF
	and $C0F2.w,Y		; 39 F2 C0
	and #$80.b		; 29 80
	cmp [$21.b],Y		; D7 21
	sbc $2AC0.w,X		; FD C0 2A
	bra  39.b		; 80 27
	cmp ($EA.b),Y		; D1 EA
	cpy #$2B.b		; C0 2B
	bra  31.b		; 80 1F
	cmp $C0EA.w,Y		; D9 EA C0
	bit $2080.w		; 2C 80 20
	cmp [$19.b],Y		; D7 19
	stp		; DB
	iny		; C8
	brk $88.b		; 00 88
	sbc [$09.b]		; E7 09
	sbc $C8.b,S		; E3 C8
	cop $88.b		; 02 88
	ora $C8E5E1.l		; 0F E1 E5 C8
	tsb $88.b		; 04 88
	sbc $C8E5F1.l,X		; FF F1 E5 C8
	asl $88.b		; 06 88
	ora $C8D5E1.l		; 0F E1 D5 C8
	php		; 08
	dey		; 88
	sbc $C8D5F1.l,X		; FF F1 D5 C8
	asl A		; 0A
	dey		; 88
	tsb $EC.b		; 04 EC
	sbc $C8.b,X		; F5 C8
	tsb $D788.w		; 0C 88 D7
	and ($C8.b,X)		; 21 C8
	cpy #$0E.b		; C0 0E
	bra  31.b		; 80 1F
	cmp $C0E7.w,Y		; D9 E7 C0
	ora $D12780.l		; 0F 80 27 D1
	cmp $801EC0.l		; CF C0 1E 80
	ora $C0CFD9.l,X		; 1F D9 CF C0
	ora $09EF80.l,X		; 1F 80 EF 09
	cmp $20C0.w		; CD C0 20
	bra -49.b		; 80 CF
	and #$DB.b		; 29 DB
	cpy #$21.b		; C0 21
	bra -17.b		; 80 EF
	ora #$DB.b		; 09 DB
	cpy #$22.b		; C0 22
	bra -25.b		; 80 E7
	ora ($DB.b),Y		; 11 DB
	cpy #$23.b		; C0 23
	bra -25.b		; 80 E7
	ora ($C8.b),Y		; 11 C8
	cpy #$24.b		; C0 24
	bra  -9.b		; 80 F7
	ora ($ED.b,X)		; 01 ED
	cpy #$25.b		; C0 25
	bra  -9.b		; 80 F7
	ora ($E5.b,X)		; 01 E5
	cpy #$26.b		; C0 26
	bra  -9.b		; 80 F7
	ora ($DD.b,X)		; 01 DD
	cpy #$27.b		; C0 27
	bra  -9.b		; 80 F7
	ora ($D5.b,X)		; 01 D5
	cpy #$28.b		; C0 28
	bra  23.b		; 80 17
	sbc ($CD.b,X)		; E1 CD
	cpy #$29.b		; C0 29
	bra  15.b		; 80 0F
	sbc #$CD.b		; E9 CD
	cpy #$2A.b		; C0 2A
	bra   7.b		; 80 07
	sbc ($CD.b),Y		; F1 CD
	cpy #$2B.b		; C0 2B
	bra  -1.b		; 80 FF
	sbc $C0CD.w,Y		; F9 CD C0
	bit $F780.w		; 2C 80 F7
	ora ($CD.b,X)		; 01 CD
	cpy #$2D.b		; C0 2D
	bra -35.b		; 80 DD
	tas		; 1B
	cmp ($C0.b,S),Y		; D3 C0
	rol $D580.w		; 2E 80 D5
	and $D3.b,S		; 23 D3
	cpy #$2F.b		; C0 2F
	bra -51.b		; 80 CD
	pld		; 2B
	cmp ($C0.b,S),Y		; D3 C0
	bmi -128.b		; 30 80
	cmp $33.b		; C5 33
	cmp ($C0.b,S),Y		; D3 C0
	and ($80.b),Y		; 31 80
	cmp $C0C819.l,X		; DF 19 C8 C0
	and ($80.b)		; 32 80
	jsr ($FDFC.w,X)		; FC FC FD
	cpy #$33.b		; C0 33
	bra  -4.b		; 80 FC
	jsr ($C0F5.w,X)		; FC F5 C0
	bit $80.b,X		; 34 80
	ora $06EA.w,X		; 1D EA 06
	ldx $0008.w,Y		; BE 08 00
	pha		; 48
	plx		; FA
	inc $BE.b,X		; F6 BE
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $BE.b		; E6 BE
	php		; 08
	tsb $48.b		; 04 48
	jsr ($9EF4.w,X)		; FC F4 9E
	php		; 08
	asl $48.b		; 06 48
	pea $FEFC.w		; F4 FC FE
	php		; 08
	php		; 08
	pha		; 48
	sbc $CE03.w		; ED 03 CE
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $CEE3.w		; 0D E3 CE
	php		; 08
	tsb $FD48.w		; 0C 48 FD
	sbc ($CE.b,S),Y		; F3 CE
	php		; 08
	asl $0548.w		; 0E 48 05
	xba		; EB
	dec $2008.w,X		; DE 08 20
	pha		; 48
	sbc $FB.b,X		; F5 FB
	dec $2208.w,X		; DE 08 22
	pha		; 48
	sbc $FB.b,X		; F5 FB
	inc $2408.w		; EE 08 24
	pha		; 48
	bne  32.b		; D0 20
	plb		; AB
	php		; 08
	rol $48.b		; 26 48
	cpx #$10.b		; E0 10
	ldx $2808.w		; AE 08 28
	pha		; 48
	beq   0.b		; F0 00
	ldx $2A08.w		; AE 08 2A
	pha		; 48
	brk $F0.b		; 00 F0
	ldx $2C08.w		; AE 08 2C
	pha		; 48
	bpl -32.b		; 10 E0
	ldx $2E08.w		; AE 08 2E
	pha		; 48
	inc A		; 1A
	dec $00BE.w,X		; DE BE 00
	rti		; 40

	rti		; 40

	inc A		; 1A
	dec $00C6.w,X		; DE C6 00
	eor ($40.b,X)		; 41 40
	jsl $00C0D6.l		; 22 D6 C0 00
	.db $42, $40		; 42 40
	rol A		; 2A
	dec $00C1.w		; CE C1 00
	eor $40.b,S		; 43 40
	pea $A604.w		; F4 04 A6
	brk $44.b		; 00 44
	rti		; 40

	tsb $A6EC.w		; 0C EC A6
	brk $45.b		; 00 45
	rti		; 40

	ora $F3.b		; 05 F3
	inc $4600.w		; EE 00 46
	rti		; 40

	ora $F3.b		; 05 F3
	inc $00.b,X		; F6 00
	eor [$40.b]		; 47 40
	trb $E4.b		; 14 E4
	ldx $00.b		; A6 00
	pha		; 48
	rti		; 40

	dec A		; 3A
	ldx $00C2.w,Y		; BE C2 00
	eor #$40.b		; 49 40
	and ($C6.b)		; 32 C6
	rep #$00		; C2 00
	lsr A		; 4A
	rti		; 40

	tsb $F4.b		; 04 F4
	inc $4B00.w,X		; FE 00 4B
	rti		; 40

	tsb $F4.b		; 04 F4
	asl $00.b		; 06 00
	jmp $2040.w		; 4C 40 20
	sbc ($FF.b),Y		; F1 FF
	cmp $0008.w		; CD 08 00
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	cmp $0208.w		; CD 08 02
	pha		; 48
	sbc $08DD01.l		; EF 01 DD 08
	tsb $48.b		; 04 48
	sbc $08DDF1.l,X		; FF F1 DD 08
	asl $48.b		; 06 48
	cld		; D8
	clc		; 18
	lda $0808.w		; AD 08 08
	pha		; 48
	php		; 08
	inx		; E8
	lda $08.b		; A5 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	sed		; F8
	lda $08.b		; A5 08
	tsb $E848.w		; 0C 48 E8
	php		; 08
	lda $0E08.w		; AD 08 0E
	pha		; 48
	inx		; E8
	php		; 08
	lda $2008.w,X		; BD 08 20
	pha		; 48
	sed		; F8
	sed		; F8
	lda $08.b,X		; B5 08
	jsl $E80848.l		; 22 48 08 E8
	lda $08.b,X		; B5 08
	bit $48.b		; 24 48
	inx		; E8
	php		; 08
	sbc $2608.w		; ED 08 26
	pha		; 48
	clc		; 18
	cld		; D8
	lda $2808.w,Y		; B9 08 28
	pha		; 48
	sbc #$0F.b		; E9 0F
	cmp $2A00.w		; CD 00 2A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp $2B00.w		; CD 00 2B
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $2C00.w		; ED 00 2C
	rti		; 40

	beq   8.b		; F0 08
	lda $00.b		; A5 00
	and $E040.w		; 2D 40 E0
	clc		; 18
	lda $2E00.w,X		; BD 00 2E
	rti		; 40

	sed		; F8
	brk $C5.b		; 00 C5
	brk $2F.b		; 00 2F
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $00.b		; C5 00
	dec A		; 3A
	rti		; 40

	php		; 08
	beq -59.b		; F0 C5
	brk $3B.b		; 00 3B
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $00.b		; C5 00
	bit $F840.w,X		; 3C 40 F8
	brk $ED.b		; 00 ED
	brk $3D.b		; 00 3D
	rti		; 40

	sed		; F8
	brk $F5.b		; 00 F5
	brk $3E.b		; 00 3E
	rti		; 40

	inx		; E8
	bpl  -3.b		; 10 FD
	brk $3F.b		; 00 3F
	rti		; 40

	beq   8.b		; F0 08
	sbc $4000.w,X		; FD 00 40
	rti		; 40

	sed		; F8
	brk $FD.b		; 00 FD
	brk $41.b		; 00 41
	rti		; 40

	plp		; 28
	bne -65.b		; D0 BF
	brk $42.b		; 00 42
	rti		; 40

	bmi -56.b		; 30 C8
	cmp ($00.b,X)		; C1 00
	eor $40.b,S		; 43 40
	sec		; 38
	cpy #$C1.b		; C0 C1
	brk $44.b		; 00 44
	rti		; 40

	rti		; 40

	clv		; B8
	cmp ($00.b,X)		; C1 00
	eor $40.b		; 45 40
	ora ($E7.b),Y		; 11 E7
	cmp $00.b,X		; D5 00
	lsr $40.b		; 46 40
	tas		; 1B
	sbc #$07.b		; E9 07
	tsx		; BA
	php		; 08
	brk $48.b		; 00 48
	sbc $BAF7.w,Y		; F9 F7 BA
	php		; 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	dex		; CA
	php		; 08
	asl $48.b		; 06 48
	ora #$E7.b		; 09 E7
	dex		; CA
	php		; 08
	php		; 08
	pha		; 48
	dec $AA12.w,X		; DE 12 AA
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $AA02.w		; EE 02 AA
	php		; 08
	tsb $FE48.w		; 0C 48 FE
	sbc ($AA.b)		; F2 AA
	php		; 08
	asl $0148.w		; 0E 48 01
	sbc [$D2.b],Y		; F7 D2
	brk $20.b		; 00 20
	rti		; 40

	sbc $DAFF.w,Y		; F9 FF DA
	brk $21.b		; 00 21
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $22.b		; 00 22
	rti		; 40

	ora #$EF.b		; 09 EF
	phx		; DA
	brk $23.b		; 00 23
	rti		; 40

	ora $C8DF.w,Y		; 19 DF C8
	brk $24.b		; 00 24
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b)		; F2 00
	and $40.b		; 25 40
	sbc $E2FB.w,X		; FD FB E2
	brk $26.b		; 00 26
	rti		; 40

	asl $B2EA.w		; 0E EA B2
	brk $27.b		; 00 27
	rti		; 40

	asl $F2.b		; 06 F2
	plx		; FA
	brk $28.b		; 00 28
	rti		; 40

	ora #$EF.b		; 09 EF
	cop $00.b		; 02 00
	and #$40.b		; 29 40
	sbc ($17.b,X)		; E1 17
	ldx #$00.b		; A2 00
	rol A		; 2A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dex		; CA
	brk $2B.b		; 00 2B
	rti		; 40

	inc $02.b,X		; F6 02
	ldx #$00.b		; A2 00
	bit $FE40.w		; 2C 40 FE
	plx		; FA
	ldx #$00.b		; A2 00
	and $0640.w		; 2D 40 06
	sbc ($A2.b)		; F2 A2
	brk $2E.b		; 00 2E
	rti		; 40

	sbc $00EAF9.l,X		; FF F9 EA 00
	and $C83040.l		; 2F 40 30 C8
	cmp ($00.b,S),Y		; D3 00
	bmi  64.b		; 30 40
	jsr $CDD8.w		; 20 D8 CD
	brk $31.b		; 00 31
	rti		; 40

	plp		; 28
	bne -48.b		; D0 D0
	brk $32.b		; 00 32
	rti		; 40

	trb $D719.w		; 1C 19 D7
	tax		; AA
	php		; 08
	brk $48.b		; 00 48
	sbc $D2F7.w,Y		; F9 F7 D2
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	ldx #$08.b		; A2 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b)		; B2 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	rep #$08		; C2 08
	php		; 08
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	dex		; CA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	rep #$08		; C2 08
	tsb $0148.w		; 0C 48 01
	sbc $0E08B2.l		; EF B2 08 0E
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	lda $482008.l		; AF 08 20 48
	cmp $BF17.w,Y		; D9 17 BF
	php		; 08
	jsl $F70148.l		; 22 48 01 F7
	tax		; AA
	brk $24.b		; 00 24
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tax		; AA
	brk $25.b		; 00 25
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	lda ($00.b)		; B2 00
	rol $40.b		; 26 40
	ora ($E7.b),Y		; 11 E7
	tsx		; BA
	brk $27.b		; 00 27
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	plp		; 28
	rti		; 40

	ora $C2DF.w,Y		; 19 DF C2
	brk $29.b		; 00 29
	rti		; 40

	ora #$EF.b		; 09 EF
	cmp ($00.b)		; D2 00
	rol A		; 2A
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cmp $00.b		; C5 00
	pld		; 2B
	rti		; 40

	and #$CF.b		; 29 CF
	cmp $00.b		; C5 00
	bit $2940.w		; 2C 40 29
	cmp $2D00A6.l		; CF A6 00 2D
	rti		; 40

	sbc #$0F.b		; E9 0F
	lda [$00.b]		; A7 00
	rol $3140.w		; 2E 40 31
	cmp [$C7.b]		; C7 C7
	brk $2F.b		; 00 2F
	rti		; 40

	and $C7BF.w,Y		; 39 BF C7
	brk $34.b		; 00 34
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	cmp [$00.b]		; C7 00
	and $40.b,X		; 35 40
	and ($C7.b),Y		; 31 C7
	ldx #$00.b		; A2 00
	rol $40.b,X		; 36 40
	ora ($F7.b,X)		; 01 F7
	ldx #$00.b		; A2 00
	and [$40.b],Y		; 37 40
	sbc #$0F.b		; E9 0F
	lda $403800.l,X		; BF 00 38 40
	sbc #$0F.b		; E9 0F
	cmp [$00.b]		; C7 00
	and $1F40.w,Y		; 39 40 1F
	sbc #$07.b		; E9 07
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	sbc $B2F7.w,Y		; F9 F7 B2
	php		; 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	ora $B2D7.w,Y		; 19 D7 B2
	php		; 08
	asl $48.b		; 06 48
	ora $C2D7.w,Y		; 19 D7 C2
	php		; 08
	php		; 08
	pha		; 48
	ora #$E7.b		; 09 E7
	rep #$08		; C2 08
	asl A		; 0A
	pha		; 48
	sbc $C2F7.w,Y		; F9 F7 C2
	php		; 08
	tsb $1948.w		; 0C 48 19
	cmp [$D2.b],Y		; D7 D2
	php		; 08
	asl $0948.w		; 0E 48 09
	sbc [$D2.b]		; E7 D2
	php		; 08
	jsr $1548.w		; 20 48 15
	stp		; DB
	ldx #$08.b		; A2 08
	jsl $EF0948.l		; 22 48 09 EF
	nop		; EA
	brk $24.b		; 00 24
	rti		; 40

	ora $EADF.w,Y		; 19 DF EA
	brk $25.b		; 00 25
	rti		; 40

	and $B2BF.w,Y		; 39 BF B2
	brk $26.b		; 00 26
	rti		; 40

	sbc ($07.b),Y		; F1 07
	rep #$00		; C2 00
	and [$40.b]		; 27 40
	sbc $D2FF.w,Y		; F9 FF D2
	brk $28.b		; 00 28
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b)		; D2 00
	and #$40.b		; 29 40
	ora #$EF.b		; 09 EF
	sep #$00		; E2 00
	rol A		; 2A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sep #$00		; E2 00
	pld		; 2B
	rti		; 40

	ora $E2DF.w,Y		; 19 DF E2
	brk $2C.b		; 00 2C
	rti		; 40

	and ($D7.b,X)		; 21 D7
	sep #$00		; E2 00
	and $2940.w		; 2D 40 29
	cmp $2E00B6.l		; CF B6 00 2E
	rti		; 40

	and ($C7.b),Y		; 31 C7
	ldx $00.b,Y		; B6 00
	and $CF2940.l		; 2F 40 29 CF
	ldx $3400.w,Y		; BE 00 34
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	lda ($00.b),Y		; B1 00
	and $40.b,X		; 35 40
	ora $F3.b		; 05 F3
	tax		; AA
	brk $36.b		; 00 36
	rti		; 40

	ora $AAEB.w		; 0D EB AA
	brk $37.b		; 00 37
	rti		; 40

	and $BABF.w,Y		; 39 BF BA
	brk $38.b		; 00 38
	rti		; 40

	and $D3.b		; 25 D3
	ldx #$00.b		; A2 00
	and $2540.w,Y		; 39 40 25
	cmp ($AA.b,S),Y		; D3 AA
	brk $3A.b		; 00 3A
	rti		; 40

	clc		; 18
	cpx #$F2.b		; E0 F2
	brk $3B.b		; 00 3B
	rti		; 40

	clc		; 18
	cpx #$FA.b		; E0 FA
	brk $3C.b		; 00 3C
	rti		; 40

	ora [$1B.b],Y		; 17 1B
	cmp $D2.b,X		; D5 D2
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $AA.b,X		; F5 AA
	php		; 08
	cop $48.b		; 02 48
	tas		; 1B
	cmp $AA.b,X		; D5 AA
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $BA.b,X		; F5 BA
	php		; 08
	asl $48.b		; 06 48
	tas		; 1B
	cmp $BA.b,X		; D5 BA
	php		; 08
	php		; 08
	pha		; 48
	phd		; 0B
	sbc $A4.b		; E5 A4
	php		; 08
	asl A		; 0A
	pha		; 48
	phd		; 0B
	sbc $B4.b		; E5 B4
	php		; 08
	tsb $0B48.w		; 0C 48 0B
	sbc $C4.b		; E5 C4
	php		; 08
	asl $3348.w		; 0E 48 33
	lda $08BC.w,X		; BD BC 08
	jsr $4348.w		; 20 48 43
	lda $08BC.w		; AD BC 08
	jsl $05EB48.l		; 22 48 EB 05
	lda $2408.w,Y		; B9 08 24
	pha		; 48
	inc A		; 1A
	dec $9A.b,X		; D6 9A
	php		; 08
	rol $48.b		; 26 48
	pld		; 2B
	cmp $00C2.w		; CD C2 00
	plp		; 28
	rti		; 40

	xce		; FB
	sbc $00CA.w,X		; FD CA 00
	and #$40.b		; 29 40
	ora $F5.b,S		; 03 F5
	dex		; CA
	brk $2A.b		; 00 2A
	rti		; 40

	tas		; 1B
	cmp $00CA.w,X		; DD CA 00
	pld		; 2B
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc ($00.b)		; F2 00
	bit $1740.w		; 2C 40 17
	sbc ($FA.b,X)		; E1 FA
	brk $2D.b		; 00 2D
	rti		; 40

	clc		; 18
	cpx #$EA.b		; E0 EA
	brk $2E.b		; 00 2E
	rti		; 40

	ora $E2DF.w,Y		; 19 DF E2
	brk $2F.b		; 00 2F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	sep #$00		; E2 00
	sec		; 38
	rti		; 40

	pld		; 2B
	cmp $00BA.w		; CD BA 00
	and $F240.w,Y		; 39 40 F2
	asl $B1.b		; 06 B1
	brk $3A.b		; 00 3A
	rti		; 40

	ora $FDF3.w,X		; 1D F3 FD
	ldy $08.b,X		; B4 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	cpy $08.b		; C4 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	ldy $08.b,X		; B4 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	cpy $08.b		; C4 08
	asl $48.b		; 06 48
	sbc $0D.b,S		; E3 0D
	ldx $08.b,Y		; B6 08
	php		; 08
	pha		; 48
	brk $F0.b		; 00 F0
	ldy $08.b		; A4 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	sed		; F8
	pei ($08.b)		; D4 08
	tsb $0848.w		; 0C 48 08
	inx		; E8
	pei ($08.b)		; D4 08
	asl $F048.w		; 0E 48 F0
	brk $E1.b		; 00 E1
	php		; 08
	jsr $2348.w		; 20 48 23
	cmp $BF.b,X		; D5 BF
	brk $22.b		; 00 22
	rti		; 40

	pld		; 2B
	cmp $00BF.w		; CD BF 00
	and $40.b,S		; 23 40
	and ($C5.b,S),Y		; 33 C5
	lda $402400.l,X		; BF 00 24 40
	tsa		; 3B
	lda $00BF.w,X		; BD BF 00
	and $40.b		; 25 40
	eor $B5.b,S		; 43 B5
	lda $402600.l,X		; BF 00 26 40
	trb $E4.b		; 14 E4
	pea $2700.w		; F4 00 27
	rti		; 40

	cpx $ED0C.w		; EC 0C ED
	brk $28.b		; 00 28
	rti		; 40

	sbc $13.b		; E5 13
	sbc $2900.w,Y		; F9 00 29
	rti		; 40

	ora $00F8E9.l		; 0F E9 F8 00
	rol A		; 2A
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	sed		; F8
	brk $2B.b		; 00 2B
	rti		; 40

	sed		; F8
	brk $AC.b		; 00 AC
	brk $2C.b		; 00 2C
	rti		; 40

	bpl -24.b		; 10 E8
	cpx $2D00.w		; EC 00 2D
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cpy $00.b		; C4 00
	rol $1340.w		; 2E 40 13
	sbc $CC.b		; E5 CC
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	ldy $3200.w,X		; BC 00 32
	rti		; 40

	php		; 08
	beq -28.b		; F0 E4
	brk $33.b		; 00 33
	rti		; 40

	bpl -24.b		; 10 E8
	cpx $00.b		; E4 00
	bit $40.b,X		; 34 40
	bpl -24.b		; 10 E8
	tay		; A8
	brk $35.b		; 00 35
	rti		; 40

	inx		; E8
	bpl -15.b		; 10 F1
	brk $36.b		; 00 36
	rti		; 40

	tas		; 1B
	cmp $00BF.w,X		; DD BF 00
	and [$40.b],Y		; 37 40
	jsr $FFF1.w		; 20 F1 FF
	nop		; EA
	php		; 08
	brk $48.b		; 00 48
	and #$C7.b		; 29 C7
	txs		; 9A
	php		; 08
	cop $48.b		; 02 48
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b)		; B2 08
	tsb $48.b		; 04 48
	sbc $CAF7.w,Y		; F9 F7 CA
	php		; 08
	asl $48.b		; 06 48
	ora #$E7.b		; 09 E7
	dex		; CA
	php		; 08
	php		; 08
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	ldx #$08.b		; A2 08
	asl A		; 0A
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	tax		; AA
	php		; 08
	tsb $0148.w		; 0C 48 01
	sbc $0E08BA.l		; EF BA 08 0E
	pha		; 48
	and ($CF.b,X)		; 21 CF
	tax		; AA
	php		; 08
	jsr $1148.w		; 20 48 11
	cmp $2208B2.l,X		; DF B2 08 22
	pha		; 48
	eor ($AF.b,X)		; 41 AF
	sty $08.b,X		; 94 08
	bit $48.b		; 24 48
	ora $ED.b,S		; 03 ED
	phx		; DA
	php		; 08
	rol $48.b		; 26 48
	ora ($DD.b,S),Y		; 13 DD
	phx		; DA
	php		; 08
	plp		; 28
	pha		; 48
	and ($C7.b),Y		; 31 C7
	tax		; AA
	brk $2A.b		; 00 2A
	rti		; 40

	and ($D7.b,X)		; 21 D7
	tsx		; BA
	brk $2B.b		; 00 2B
	rti		; 40

	sbc $C2FF.w,Y		; F9 FF C2
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	and $1940.w		; 2D 40 19
	cmp $2E00C2.l,X		; DF C2 00 2E
	rti		; 40

	ora $CADF.w,Y		; 19 DF CA
	brk $2F.b		; 00 2F
	rti		; 40

	ora $D2DF.w,Y		; 19 DF D2
	brk $3A.b		; 00 3A
	rti		; 40

	and $9CBF.w,Y		; 39 BF 9C
	brk $3B.b		; 00 3B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	nop		; EA
	brk $3C.b		; 00 3C
	rti		; 40

	and $D5.b,S		; 23 D5
	phx		; DA
	brk $3D.b		; 00 3D
	rti		; 40

	xce		; FB
	sbc $00E2.w,X		; FD E2 00
	rol $1340.w,X		; 3E 40 13
	sbc $FA.b		; E5 FA
	brk $3F.b		; 00 3F
	rti		; 40

	tas		; 1B
	cmp $00FA.w,X		; DD FA 00
	rti		; 40

	rti		; 40

	and ($D7.b,X)		; 21 D7
	ldx #$00.b		; A2 00
	eor ($40.b,X)		; 41 40
	sbc $AAFF.w,Y		; F9 FF AA
	brk $42.b		; 00 42
	rti		; 40

	trb $E4.b		; 14 E4
	nop		; EA
	brk $43.b		; 00 43
	rti		; 40

	trb $EADC.w		; 1C DC EA
	brk $44.b		; 00 44
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b)		; F2 00
	eor $40.b		; 45 40
	sbc $00FA09.l		; EF 09 FA 00
	lsr $40.b		; 46 40
	bit $09.b		; 24 09
	sbc [$A2.b]		; E7 A2
	php		; 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	sbc $D2F7.w,Y		; F9 F7 D2
	php		; 08
	tsb $48.b		; 04 48
	ora #$E7.b		; 09 E7
	lda ($08.b)		; B2 08
	asl $48.b		; 06 48
	sbc $B2F7.w,Y		; F9 F7 B2
	php		; 08
	php		; 08
	pha		; 48
	sbc $C2F7.w,Y		; F9 F7 C2
	php		; 08
	asl A		; 0A
	pha		; 48
	and #$C7.b		; 29 C7
	lda ($08.b,S),Y		; B3 08
	tsb $3148.w		; 0C 48 31
	lda $0E08C3.l,X		; BF C3 08 0E
	pha		; 48
	sbc #$07.b		; E9 07
	ldy $08.b,X		; B4 08
	jsr $E948.w		; 20 48 E9
	ora [$C4.b]		; 07 C4
	php		; 08
	jsl $D71948.l		; 22 48 19 D7
	ldx $2408.w		; AE 08 24
	pha		; 48
	ora ($E7.b),Y		; 11 E7
	sbc ($00.b)		; F2 00
	rol $40.b		; 26 40
	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $27.b		; 00 27
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tax		; AA
	brk $28.b		; 00 28
	rti		; 40

	ora #$EF.b		; 09 EF
	rep #$00		; C2 00
	and #$40.b		; 29 40
	ora ($E7.b),Y		; 11 E7
	rep #$00		; C2 00
	rol A		; 2A
	rti		; 40

	ora #$EF.b		; 09 EF
	dex		; CA
	brk $2B.b		; 00 2B
	rti		; 40

	ora $FADF.w,Y		; 19 DF FA
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $92FF.w,Y		; F9 FF 92
	brk $2D.b		; 00 2D
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	cpy $00.b		; C4 00
	rol $0140.w		; 2E 40 01
	sbc [$92.b],Y		; F7 92
	brk $2F.b		; 00 2F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	txs		; 9A
	brk $36.b		; 00 36
	rti		; 40

	ora $A6DF.w,Y		; 19 DF A6
	brk $37.b		; 00 37
	rti		; 40

	ora #$EF.b		; 09 EF
	txs		; 9A
	brk $38.b		; 00 38
	rti		; 40

	ora $BEDF.w,Y		; 19 DF BE
	brk $39.b		; 00 39
	rti		; 40

	and ($D7.b,X)		; 21 D7
	ldx $3A00.w,Y		; BE 00 3A
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc $3B00.w,Y		; F9 00 3B
	rti		; 40

	sbc ($06.b)		; F2 06
	sep #$00		; E2 00
	bit $FA40.w,X		; 3C 40 FA
	inc $00E2.w,X		; FE E2 00
	and $E440.w,X		; 3D 40 E4
	trb $F2.b		; 14 F2
	brk $3E.b		; 00 3E
	rti		; 40

	cpx $E80C.w		; EC 0C E8
	brk $3F.b		; 00 3F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	txa		; 8A
	brk $40.b		; 00 40
	rti		; 40

	bpl -24.b		; 10 E8
	sep #$00		; E2 00
	eor ($40.b,X)		; 41 40
	bpl -24.b		; 10 E8
	nop		; EA
	brk $42.b		; 00 42
	rti		; 40

	inx		; E8
	bpl -20.b		; 10 EC
	brk $43.b		; 00 43
	rti		; 40

	beq   8.b		; F0 08
	inc $00.b		; E6 00
	mvp $18,$40		; 44 40 18
	plx		; FA
	inc $F0.b,X		; F6 F0
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $E0.b,X		; F6 E0
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $E0.b		; 06 E0
	php		; 08
	tsb $48.b		; 04 48
	cpx $A004.w		; EC 04 A0
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	tya		; 98
	php		; 08
	php		; 08
	pha		; 48
	inc $0A.b		; E6 0A
	bcs   8.b		; B0 08
	asl A		; 0A
	pha		; 48
	inc $FA.b,X		; F6 FA
	bcs   8.b		; B0 08
	tsb $0648.w		; 0C 48 06
	nop		; EA
	bcs   8.b		; B0 08
	asl $E648.w		; 0E 48 E6
	asl A		; 0A
	cpy #$08.b		; C0 08
	jsr $E648.w		; 20 48 E6
	asl A		; 0A
	bne   8.b		; D0 08
	jsl $FAF648.l		; 22 48 F6 FA
	cpy #$08.b		; C0 08
	bit $48.b		; 24 48
	asl $EA.b		; 06 EA
	cpy #$08.b		; C0 08
	rol $48.b		; 26 48
	inc $FA.b,X		; F6 FA
	bne   8.b		; D0 08
	plp		; 28
	pha		; 48
	asl $EA.b		; 06 EA
	bne   8.b		; D0 08
	rol A		; 2A
	pha		; 48
	sbc [$09.b]		; E7 09
	sed		; F8
	php		; 08
	bit $0448.w		; 2C 48 04
	pea $0000.w		; F4 00 00
	rol $EA40.w		; 2E 40 EA
	asl $00F0.w		; 0E F0 00
	and $06F240.l		; 2F 40 F2 06
	beq   0.b		; F0 00
	rol $FC40.w,X		; 3E 40 FC
	jsr ($00A0.w,X)		; FC A0 00
	and $FCFC40.l,X		; 3F 40 FC FC
	tay		; A8
	brk $40.b		; 00 40
	rti		; 40

	tsb $F4.b		; 04 F4
	tay		; A8
	brk $41.b		; 00 41
	rti		; 40

	tsb $A8EC.w		; 0C EC A8
	brk $42.b		; 00 42
	rti		; 40

	asl $E2.b,X		; 16 E2
	bcs   0.b		; B0 00
	eor $40.b,S		; 43 40
	jsr ($00FC.w,X)		; FC FC 00
	brk $44.b		; 00 44
	rti		; 40

	lda #$C9.b		; A9 C9
	cpx #$C9.b		; E0 C9
	and $CA.b,S		; 23 CA
	jmp ($85CA.w)		; 6C CA 85
	dex		; CA
	sbc ($CA.b)		; F2 CA
	adc [$CB.b],Y		; 77 CB
	ora #$DA.b		; 09 DA
	asl $E8.b,X		; 16 E8
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $E4.b		; 06 E4
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $E4.b,X		; F6 E4
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $00F0.w		; EE F0 00
	pha		; 48
	rti		; 40

	asl A		; 0A
	inc $00E8.w		; EE E8 00
	eor #$40.b		; 49 40
	nop		; EA
	asl $00F4.w		; 0E F4 00
	lsr A		; 4A
	rti		; 40

	sbc ($06.b)		; F2 06
	pea $4B00.w		; F4 00 4B
	rti		; 40

	plx		; FA
	inc $00F4.w,X		; FE F4 00
	jmp $0240.w		; 4C 40 02
	inc $F4.b,X		; F6 F4
	brk $4D.b		; 00 4D
	rti		; 40

	phd		; 0B
	sep #$0E		; E2 0E
	inx		; E8
	php		; 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	sbc $08.b		; E5 08
	php		; 08
	pha		; 48
	sbc ($06.b)		; F2 06
	nop		; EA
	brk $4E.b		; 00 4E
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	eor $FEFA40.l		; 4F 40 FA FE
	sbc $00.b,S		; E3 00
	cli		; 58
	rti		; 40

	phx		; DA
	asl $00EB.w,X		; 1E EB 00
	eor $FA40.w,Y		; 59 40 FA
	inc $00EB.w,X		; FE EB 00
	phy		; 5A
	rti		; 40

	plx		; FA
	inc $00F3.w,X		; FE F3 00
	tad		; 5B
	rti		; 40

	sbc ($06.b)		; F2 06
	sep #$00		; E2 00
	jmp $F60240.l		; 5C 40 02 F6
	sbc $00.b,X		; F5 00
	eor $0A40.w,X		; 5D 40 0A
	inc $00F5.w		; EE F5 00
	lsr $0C40.w,X		; 5E 40 0C
	phx		; DA
	asl $E8.b,X		; 16 E8
	php		; 08
	asl A		; 0A
	pha		; 48
	plx		; FA
	inc $E0.b,X		; F6 E0
	php		; 08
	tsb $FA48.w		; 0C 48 FA
	inc $F0.b,X		; F6 F0
	dey		; 88
	tsb $EAC8.w		; 0C C8 EA
	asl $00E8.w		; 0E E8 00
	eor $EE0A40.l,X		; 5F 40 0A EE
	inx		; E8
	brk $60.b		; 00 60
	rti		; 40

	nop		; EA
	asl $00F0.w		; 0E F0 00
	adc ($40.b,X)		; 61 40
	asl A		; 0A
	inc $80F0.w		; EE F0 80
	rts		; 60

	cpy #$F2.b		; C0 F2
	asl $E5.b		; 06 E5
	brk $62.b		; 00 62
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $6300.w		; ED 00 63
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $00.b,X		; F5 00
	stz $40.b		; 64 40
	inc $D8FA.w,X		; FE FA D8
	brk $65.b		; 00 65
	rti		; 40

	inc $00FA.w,X		; FE FA 00
	bra 101.b		; 80 65
	cpy #$04.b		; C0 04
	plx		; FA
	inc $E0.b,X		; F6 E0
	php		; 08
	asl $0A48.w		; 0E 48 0A
	inc $E0.b		; E6 E0
	php		; 08
	jsr $FA48.w		; 20 48 FA
	inc $F0.b,X		; F6 F0
	php		; 08
	jsl $E60A48.l		; 22 48 0A E6
	beq   8.b		; F0 08
	bit $48.b		; 24 48
	ora ($12.b)		; 12 12
	dec $08D0.w,X		; DE D0 08
	rol $48.b		; 26 48
	ora ($DE.b)		; 12 DE
	cpx #$08.b		; E0 08
	plp		; 28
	pha		; 48
	ora ($DE.b)		; 12 DE
	beq -120.b		; F0 88
	plp		; 28
	iny		; C8
	ora ($DE.b)		; 12 DE
	brk $88.b		; 00 88
	rol $C8.b		; 26 C8
	cop $F6.b		; 02 F6
	sed		; F8
	brk $66.b		; 00 66
	rti		; 40

	cop $F6.b		; 02 F6
	brk $00.b		; 00 00
	adc [$40.b]		; 67 40
	cop $F6.b		; 02 F6
	cld		; D8
	bra 103.b		; 80 67
	cpy #$02.b		; C0 02
	inc $E0.b,X		; F6 E0
	bra 102.b		; 80 66
	cpy #$02.b		; C0 02
	inc $E8.b,X		; F6 E8
	brk $68.b		; 00 68
	rti		; 40

	cop $F6.b		; 02 F6
	beq -128.b		; F0 80
	pla		; 68
	cpy #$0A.b		; C0 0A
	inc $00D4.w		; EE D4 00
	adc #$40.b		; 69 40
	asl A		; 0A
	inc $00DC.w		; EE DC 00
	ror A		; 6A
	rti		; 40

	asl A		; 0A
	inc $00E4.w		; EE E4 00
	rtl		; 6B

	rti		; 40

	plx		; FA
	inc $00EC.w,X		; FE EC 00
	jmp ($0A40.w)		; 6C 40 0A
	inc $00EC.w		; EE EC 00
	adc $0A40.w		; 6D 40 0A
	inc $80F4.w		; EE F4 80
	rtl		; 6B

	cpy #$0A.b		; C0 0A
	inc $80FC.w		; EE FC 80
	ror A		; 6A
	cpy #$0A.b		; C0 0A
	inc $8004.w		; EE 04 80
	adc #$C0.b		; 69 C0
	asl $1A.b,X		; 16 1A
	dec $B8.b,X		; D6 B8
	php		; 08
	rol A		; 2A
	pha		; 48
	inc A		; 1A
	dec $18.b,X		; D6 18
	dey		; 88
	rol A		; 2A
	iny		; C8
	ora $C8E3.w		; 0D E3 C8
	php		; 08
	bit $1D48.w		; 2C 48 1D
	cmp ($C8.b,S),Y		; D3 C8
	php		; 08
	rol $0D48.w		; 2E 48 0D
	sbc $08.b,S		; E3 08
	dey		; 88
	bit $1DC8.w		; 2C C8 1D
	cmp ($08.b,S),Y		; D3 08
	dey		; 88
	rol $16C8.w		; 2E C8 16
	phx		; DA
	cld		; D8
	php		; 08
	rti		; 40

	pha		; 48
	rol $CA.b		; 26 CA
	cld		; D8
	php		; 08
	.db $42, $48		; 42 48
	asl $DA.b,X		; 16 DA
	inx		; E8
	php		; 08
	mvp $26,$48		; 44 48 26
	dex		; CA
	inx		; E8
	php		; 08
	lsr $48.b		; 46 48
	asl $DA.b,X		; 16 DA
	sed		; F8
	dey		; 88
	rti		; 40

	iny		; C8
	rol $CA.b		; 26 CA
	sed		; F8
	dey		; 88
	.db $42, $C8		; 42 C8
	and $C8CB.w		; 2D CB C8
	brk $6E.b		; 00 6E
	rti		; 40

	and $D0CB.w		; 2D CB D0
	brk $6F.b		; 00 6F
	rti		; 40

	and $08CB.w		; 2D CB 08
	bra 111.b		; 80 6F
	cpy #$2D.b		; C0 2D
	wai		; CB
	bpl -128.b		; 10 80
	ror $05C0.w		; 6E C0 05
	sbc ($D0.b,S),Y		; F3 D0
	brk $70.b		; 00 70
	rti		; 40

	ora $F3.b		; 05 F3
	php		; 08
	bra 112.b		; 80 70
	cpy #$12.b		; C0 12
	inc $18.b		; E6 18
	brk $71.b		; 00 71
	rti		; 40

	rol A		; 2A
	dec $0018.w		; CE 18 00
	adc ($40.b)		; 72 40
	ora ($E6.b)		; 12 E6
	cpy #$80.b		; C0 80
	adc ($C0.b),Y		; 71 C0
	rol A		; 2A
	dec $80C0.w		; CE C0 80
	adc ($C0.b)		; 72 C0
	phd		; 0B
	sep #$0E		; E2 0E
	sbc [$88.b]		; E7 88
	asl $C8.b		; 06 C8
	cop $EE.b		; 02 EE
	nop		; EA
	dey		; 88
	php		; 08
	iny		; C8
	sbc ($06.b)		; F2 06
	sbc $4E80.w		; ED 80 4E
	cpy #$F2.b		; C0 F2
	asl $E5.b		; 06 E5
	bra  79.b		; 80 4F
	cpy #$FA.b		; C0 FA
	inc $80F4.w,X		; FE F4 80
	cli		; 58
	cpy #$DA.b		; C0 DA
	asl $80EC.w,X		; 1E EC 80
	eor $FAC0.w,Y		; 59 C0 FA
	inc $80EC.w,X		; FE EC 80
	phy		; 5A
	cpy #$FA.b		; C0 FA
	inc $80E4.w,X		; FE E4 80
	tad		; 5B
	cpy #$F2.b		; C0 F2
	asl $F5.b		; 06 F5
	bra  92.b		; 80 5C
	cpy #$02.b		; C0 02
	inc $E2.b,X		; F6 E2
	bra  93.b		; 80 5D
	cpy #$0A.b		; C0 0A
	inc $80E2.w		; EE E2 80
	lsr $C6C0.w,X		; 5E C0 C6
	wai		; CB
	ora #$CC.b		; 09 CC
	bvs -52.b		; 70 CC
	ora $92CD.w		; 0D CD 92
	cmp $CDF9.w		; CD F9 CD
	phd		; 0B
	sed		; F8
	sed		; F8
	beq   8.b		; F0 08
	brk $48.b		; 00 48
	inx		; E8
	php		; 08
	clv		; B8
	php		; 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	iny		; C8
	php		; 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	clv		; B8
	php		; 08
	asl $48.b		; 06 48
	php		; 08
	inx		; E8
	clv		; B8
	php		; 08
	php		; 08
	pha		; 48
	php		; 08
	inx		; E8
	iny		; C8
	php		; 08
	asl A		; 0A
	pha		; 48
	sed		; F8
	sed		; F8
	iny		; C8
	php		; 08
	tsb $F048.w		; 0C 48 F0
	brk $D8.b		; 00 D8
	php		; 08
	asl $0048.w		; 0E 48 00
	beq -40.b		; F0 D8
	php		; 08
	jsr $F848.w		; 20 48 F8
	brk $E8.b		; 00 E8
	brk $6A.b		; 00 6A
	rti		; 40

	brk $F8.b		; 00 F8
	inx		; E8
	brk $6B.b		; 00 6B
	rti		; 40

	ora ($F8.b),Y		; 11 F8
	sed		; F8
	beq   8.b		; F0 08
	jsl $F8F848.l		; 22 48 F8 F8
	cpx #$08.b		; E0 08
	bit $48.b		; 24 48
	inx		; E8
	php		; 08
	bra   8.b		; 80 08
	rol $48.b		; 26 48
	inx		; E8
	php		; 08
	bcc   8.b		; 90 08
	plp		; 28
	pha		; 48
	sed		; F8
	sed		; F8
	bra   8.b		; 80 08
	rol A		; 2A
	pha		; 48
	php		; 08
	inx		; E8
	bra   8.b		; 80 08
	bit $0848.w		; 2C 48 08
	inx		; E8
	bcc   8.b		; 90 08
	rol $F848.w		; 2E 48 F8
	sed		; F8
	bcc   8.b		; 90 08
	rti		; 40

	pha		; 48
	beq   0.b		; F0 00
	ldy #$08.b		; A0 08
	.db $42, $48		; 42 48
	brk $F0.b		; 00 F0
	ldy #$08.b		; A0 08
	mvp $F0,$48		; 44 48 F0
	brk $B0.b		; 00 B0
	php		; 08
	lsr $48.b		; 46 48
	brk $F0.b		; 00 F0
	bcs   8.b		; B0 08
	pha		; 48
	pha		; 48
	beq   0.b		; F0 00
	cpy #$48.b		; C0 48
	mvp $00,$08		; 44 08 00
	beq -64.b		; F0 C0
	pha		; 48
	.db $42, $08		; 42 08
	beq   0.b		; F0 00
	bne  72.b		; D0 48
	pha		; 48
	php		; 08
	brk $F0.b		; 00 F0
	bne  72.b		; D0 48
	lsr $08.b		; 46 08
	php		; 08
	beq -32.b		; F0 E0
	brk $6C.b		; 00 6C
	rti		; 40

	inc A		; 1A
	inx		; E8
	php		; 08
	iny		; C8
	php		; 08
	lsr A		; 4A
	pha		; 48
	inx		; E8
	php		; 08
	cld		; D8
	php		; 08
	jmp $0848.w		; 4C 48 08
	inx		; E8
	iny		; C8
	pha		; 48
	lsr A		; 4A
	php		; 08
	php		; 08
	inx		; E8
	cld		; D8
	pha		; 48
	jmp $D808.w		; 4C 08 D8
	clc		; 18
	tya		; 98
	php		; 08
	lsr $E848.w		; 4E 48 E8
	php		; 08
	tya		; 98
	php		; 08
	rts		; 60

	pha		; 48
	clc		; 18
	cld		; D8
	tya		; 98
	pha		; 48
	lsr $0808.w		; 4E 08 08
	inx		; E8
	tya		; 98
	pha		; 48
	rts		; 60

	php		; 08
	cpx #$10.b		; E0 10
	tay		; A8
	php		; 08
	.db $62, $48, $08		; 62 48 08
	inx		; E8
	tay		; A8
	php		; 08
	stz $48.b		; 64 48
	sed		; F8
	brk $B8.b		; 00 B8
	brk $6D.b		; 00 6D
	rti		; 40

	brk $F8.b		; 00 F8
	clv		; B8
	rti		; 40

	adc $F000.w		; 6D 00 F0
	php		; 08
	tay		; A8
	rti		; 40

	stz $00.b		; 64 00
	clc		; 18
	cpx #$A8.b		; E0 A8
	rti		; 40

	.db $62, $00, $F0		; 62 00 F0
	php		; 08
	bcs  64.b		; B0 40
	stz $00.b,X		; 74 00
	clc		; 18
	cpx #$B0.b		; E0 B0
	rti		; 40

	adc ($00.b)		; 72 00
	cpx #$18.b		; E0 18
	clv		; B8
	brk $6E.b		; 00 6E
	rti		; 40

	inx		; E8
	bpl -72.b		; 10 B8
	brk $6F.b		; 00 6F
	rti		; 40

	beq   8.b		; F0 08
	clv		; B8
	brk $7A.b		; 00 7A
	rti		; 40

	php		; 08
	beq -72.b		; F0 B8
	rti		; 40

	ply		; 7A
	brk $10.b		; 00 10
	inx		; E8
	clv		; B8
	rti		; 40

	adc $E01800.l		; 6F 00 18 E0
	clv		; B8
	rti		; 40

	ror $0B00.w		; 6E 00 0B
	sbc $00C0.w		; ED C0 00
	tda		; 7B
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cpy #$00.b		; C0 00
	jmp ($E540.w,X)		; 7C 40 E5
	ora ($C0.b,S),Y		; 13 C0
	rti		; 40

	jmp ($ED00.w,X)		; 7C 00 ED
	phd		; 0B
	cpy #$40.b		; C0 40
	tda		; 7B
	brk $16.b		; 00 16
	cpx #$10.b		; E0 10
	tay		; A8
	php		; 08
	ror $48.b		; 66 48
	cpx #$10.b		; E0 10
	clv		; B8
	php		; 08
	pla		; 68
	pha		; 48
	bpl -32.b		; 10 E0
	tay		; A8
	pha		; 48
	ror $08.b		; 66 08
	bpl -32.b		; 10 E0
	clv		; B8
	pha		; 48
	pla		; 68
	php		; 08
	beq   8.b		; F0 08
	bcs   0.b		; B0 00
	adc $0840.w,X		; 7D 40 08
	beq -80.b		; F0 B0
	rti		; 40

	adc $F000.w,X		; 7D 00 F0
	php		; 08
	clv		; B8
	brk $7E.b		; 00 7E
	rti		; 40

	php		; 08
	beq -72.b		; F0 B8
	rti		; 40

	ror $1100.w,X		; 7E 00 11
	sbc [$A0.b]		; E7 A0
	brk $7F.b		; 00 7F
	rti		; 40

	ora $A0DF.w,Y		; 19 DF A0
	brk $80.b		; 00 80
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	iny		; C8
	brk $81.b		; 00 81
	rti		; 40

	ora #$EF.b		; 09 EF
	bne   0.b		; D0 00
	.db $82, $40, $11		; 82 40 11
	sbc [$D0.b]		; E7 D0
	brk $83.b		; 00 83
	rti		; 40

	ora ($E6.b)		; 12 E6
	tya		; 98
	brk $84.b		; 00 84
	rti		; 40

	inc A		; 1A
	dec $0098.w,X		; DE 98 00
	sta $40.b		; 85 40
	dec $981A.w,X		; DE 1A 98
	rti		; 40

	sta $00.b		; 85 00
	inc $12.b		; E6 12
	tya		; 98
	rti		; 40

	sty $00.b		; 84 00
	cmp $40A019.l,X		; DF 19 A0 40
	bra   0.b		; 80 00
	sbc [$11.b]		; E7 11
	ldy #$40.b		; A0 40
	adc $11E700.l,X		; 7F 00 E7 11
	iny		; C8
	rti		; 40

	sta ($00.b,X)		; 81 00
	sbc [$11.b]		; E7 11
	bne  64.b		; D0 40
	sta $00.b,S		; 83 00
	sbc $40D009.l		; EF 09 D0 40
	.db $82, $00, $11		; 82 00 11
	sed		; F8
	sed		; F8
	beq  72.b		; F0 48
	jsl $F8F808.l		; 22 08 F8 F8
	cpx #$48.b		; E0 48
	bit $08.b		; 24 08
	php		; 08
	inx		; E8
	bra  72.b		; 80 48
	rol $08.b		; 26 08
	php		; 08
	inx		; E8
	bcc  72.b		; 90 48
	plp		; 28
	php		; 08
	sed		; F8
	sed		; F8
	bra  72.b		; 80 48
	rol A		; 2A
	php		; 08
	inx		; E8
	php		; 08
	bra  72.b		; 80 48
	bit $E808.w		; 2C 08 E8
	php		; 08
	bcc  72.b		; 90 48
	rol $F808.w		; 2E 08 F8
	sed		; F8
	bcc  72.b		; 90 48
	rti		; 40

	php		; 08
	brk $F0.b		; 00 F0
	ldy #$48.b		; A0 48
	.db $42, $08		; 42 08
	beq   0.b		; F0 00
	ldy #$48.b		; A0 48
	mvp $00,$08		; 44 08 00
	beq -80.b		; F0 B0
	pha		; 48
	lsr $08.b		; 46 08
	beq   0.b		; F0 00
	bcs  72.b		; B0 48
	pha		; 48
	php		; 08
	brk $F0.b		; 00 F0
	cpy #$08.b		; C0 08
	mvp $F0,$48		; 44 48 F0
	brk $C0.b		; 00 C0
	php		; 08
	.db $42, $48		; 42 48
	brk $F0.b		; 00 F0
	bne   8.b		; D0 08
	pha		; 48
	pha		; 48
	beq   0.b		; F0 00
	bne   8.b		; D0 08
	lsr $48.b		; 46 48
	beq   8.b		; F0 08
	cpx #$40.b		; E0 40
	jmp ($0B00.w)		; 6C 00 0B
	sed		; F8
	sed		; F8
	beq  72.b		; F0 48
	brk $08.b		; 00 08
	php		; 08
	inx		; E8
	clv		; B8
	pha		; 48
	cop $08.b		; 02 08
	php		; 08
	inx		; E8
	iny		; C8
	pha		; 48
	tsb $08.b		; 04 08
	sed		; F8
	sed		; F8
	clv		; B8
	pha		; 48
	asl $08.b		; 06 08
	inx		; E8
	php		; 08
	clv		; B8
	pha		; 48
	php		; 08
	php		; 08
	inx		; E8
	php		; 08
	iny		; C8
	pha		; 48
	asl A		; 0A
	php		; 08
	sed		; F8
	sed		; F8
	iny		; C8
	pha		; 48
	tsb $0008.w		; 0C 08 00
	beq -40.b		; F0 D8
	pha		; 48
	asl $F008.w		; 0E 08 F0
	brk $D8.b		; 00 D8
	pha		; 48
	jsr $0008.w		; 20 08 00
	sed		; F8
	inx		; E8
	rti		; 40

	ror A		; 6A
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	rti		; 40

	rtl		; 6B

	brk $54.b		; 00 54
	dec $CE67.w		; CE 67 CE
	bra -50.b		; 80 CE
	sta $12CE.w,Y		; 99 CE 12
	cmp $98CF8B.l		; CF 8B CF 98
	cmp $ACCF9F.l		; CF 9F CF AC
	cmp $CCCFB3.l		; CF B3 CF CC
	cmp $03CFE5.l		; CF E5 CF 03
	sbc [$09.b]		; E7 09
	sbc $0008.w,Y		; F9 08 00
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sbc $0208.w,Y		; F9 08 02
	pha		; 48
	ora [$E9.b]		; 07 E9
	sbc $0408.w,Y		; F9 08 04
	pha		; 48
	tsb $0F.b		; 04 0F
	sbc ($F1.b,X)		; E1 F1
	php		; 08
	asl $48.b		; 06 48
	ora $48F1D1.l,X		; 1F D1 F1 48
	asl $08.b		; 06 08
	ora $8801E1.l		; 0F E1 01 88
	asl $C8.b		; 06 C8
	ora $C801D1.l,X		; 1F D1 01 C8
	asl $88.b		; 06 88
	tsb $0F.b		; 04 0F
	sbc ($F1.b,X)		; E1 F1
	php		; 08
	php		; 08
	pha		; 48
	ora $48F1D1.l,X		; 1F D1 F1 48
	php		; 08
	php		; 08
	ora $8801E1.l		; 0F E1 01 88
	php		; 08
	iny		; C8
	ora $C801D1.l,X		; 1F D1 01 C8
	php		; 08
	dey		; 88
	trb $0F.b		; 14 0F
	sbc ($E1.b,X)		; E1 E1
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $48E1D1.l,X		; 1F D1 E1 48
	asl A		; 0A
	php		; 08
	sbc $08F1F1.l,X		; FF F1 F1 08
	tsb $FF48.w		; 0C 48 FF
	sbc ($01.b),Y		; F1 01
	dey		; 88
	tsb $0FC8.w		; 0C C8 0F
	sbc ($F1.b,X)		; E1 F1
	php		; 08
	asl $1F48.w		; 0E 48 1F
	cmp ($F1.b),Y		; D1 F1
	pha		; 48
	asl $2F08.w		; 0E 08 2F
	cmp ($F1.b,X)		; C1 F1
	pha		; 48
	tsb $2F08.w		; 0C 08 2F
	cmp ($01.b,X)		; C1 01
	iny		; C8
	tsb $0F88.w		; 0C 88 0F
	sbc ($01.b,X)		; E1 01
	dey		; 88
	asl $1FC8.w		; 0E C8 1F
	cmp ($01.b),Y		; D1 01
	iny		; C8
	asl $0F88.w		; 0E 88 0F
	sbc ($11.b,X)		; E1 11
	dey		; 88
	asl A		; 0A
	iny		; C8
	ora $C811D1.l,X		; 1F D1 11 C8
	asl A		; 0A
	dey		; 88
	sbc $00E1F9.l,X		; FF F9 E1 00
	ror $40.b		; 66 40
	and [$C1.b],Y		; 37 C1
	sbc ($40.b,X)		; E1 40
	ror $00.b		; 66 00
	sbc $8019F9.l,X		; FF F9 19 80
	ror $C0.b		; 66 C0
	and [$C1.b],Y		; 37 C1
	ora $66C0.w,Y		; 19 C0 66
	bra   7.b		; 80 07
	sbc ($E9.b),Y		; F1 E9
	brk $67.b		; 00 67
	rti		; 40

	and $40E9C9.l		; 2F C9 E9 40
	adc [$00.b]		; 67 00
	ora [$F1.b]		; 07 F1
	ora ($80.b),Y		; 11 80
	adc [$C0.b]		; 67 C0
	and $C011C9.l		; 2F C9 11 C0
	adc [$80.b]		; 67 80
	trb $0F.b		; 14 0F
	sbc ($E1.b,X)		; E1 E1
	php		; 08
	jsr $1F48.w		; 20 48 1F
	cmp ($E1.b),Y		; D1 E1
	pha		; 48
	jsr $FF08.w		; 20 08 FF
	sbc ($F1.b),Y		; F1 F1
	php		; 08
	jsl $F1FF48.l		; 22 48 FF F1
	ora ($88.b,X)		; 01 88
	jsl $E10FC8.l		; 22 C8 0F E1
	sbc ($08.b),Y		; F1 08
	bit $48.b		; 24 48
	ora $48F1D1.l,X		; 1F D1 F1 48
	bit $08.b		; 24 08
	and $48F1C1.l		; 2F C1 F1 48
	jsl $C12F08.l		; 22 08 2F C1
	ora ($C8.b,X)		; 01 C8
	jsl $E10F88.l		; 22 88 0F E1
	ora ($88.b,X)		; 01 88
	bit $C8.b		; 24 C8
	ora $C801D1.l,X		; 1F D1 01 C8
	bit $88.b		; 24 88
	ora $8811E1.l		; 0F E1 11 88
	jsr $1FC8.w		; 20 C8 1F
	cmp ($11.b),Y		; D1 11
	iny		; C8
	jsr $FF88.w		; 20 88 FF
	sbc $00E1.w,Y		; F9 E1 00
	pla		; 68
	rti		; 40

	and [$C1.b],Y		; 37 C1
	sbc ($40.b,X)		; E1 40
	pla		; 68
	brk $FF.b		; 00 FF
	sbc $8019.w,Y		; F9 19 80
	pla		; 68
	cpy #$37.b		; C0 37
	cmp ($19.b,X)		; C1 19
	cpy #$68.b		; C0 68
	bra   7.b		; 80 07
	sbc ($E9.b),Y		; F1 E9
	brk $69.b		; 00 69
	rti		; 40

	and $40E9C9.l		; 2F C9 E9 40
	adc #$00.b		; 69 00
	ora [$F1.b]		; 07 F1
	ora ($80.b),Y		; 11 80
	adc #$C0.b		; 69 C0
	and $C011C9.l		; 2F C9 11 C0
	adc #$80.b		; 69 80
	cop $F8.b		; 02 F8
	sed		; F8
	inc $08.b,X		; F6 08
	rol $48.b		; 26 48
	plx		; FA
	inc $00EE.w,X		; FE EE 00
	ror A		; 6A
	rti		; 40

	ora ($F9.b,X)		; 01 F9
	sbc [$F8.b],Y		; F7 F8
	php		; 08
	plp		; 28
	pha		; 48
	cop $F8.b		; 02 F8
	sed		; F8
	sbc $2A08.w,Y		; F9 08 2A
	pha		; 48
	xce		; FB
	sbc $0009.w,X		; FD 09 00
	rtl		; 6B

	rti		; 40

	ora ($F8.b,X)		; 01 F8
	sed		; F8
	sed		; F8
	php		; 08
	bit $0448.w		; 2C 48 04
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	rol $0048.w		; 2E 48 00
	beq -16.b		; F0 F0
	php		; 08
	rti		; 40

	pha		; 48
	beq   0.b		; F0 00
	brk $08.b		; 00 08
	.db $42, $48		; 42 48
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	mvp $04,$48		; 44 48 04
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	lsr $48.b		; 46 48
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	pha		; 48
	pha		; 48
	beq   0.b		; F0 00
	brk $08.b		; 00 08
	lsr A		; 4A
	pha		; 48
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	jmp $0448.w		; 4C 48 04
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	lsr $0048.w		; 4E 48 00
	beq -16.b		; F0 F0
	php		; 08
	rts		; 60

	pha		; 48
	beq   0.b		; F0 00
	brk $08.b		; 00 08
	.db $62, $48, $00		; 62 48 00
	beq   0.b		; F0 00
	php		; 08
	stz $48.b		; 64 48
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFBE.l,X		; FF BE FF FD
	sbc $FFDBFF.l,X		; FF FF DB FF
	sbc $DDFFFF.l,X		; FF FF FF DD
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $DBFD7F.l,X		; FF 7F FD DB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FBFF.w,X		; DD FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EDFDF7.l,X		; FF F7 FD ED
	and $F7FEFF.l,X		; 3F FF FE F7
	sbc $FFE7.w,X		; FD E7 FF
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	sbc $7EFFFF.l,X		; FF FF FF 7E
	inc $7F.b,X		; F6 7F
	cmp $DEFFE7.l,X		; DF E7 FF DE
	sbc [$FD.b]		; E7 FD
	sbc $FFFFEF.l,X		; FF EF FF FF
	inc $FFFF.w,X		; FE FF FF
	tsx		; BA
	eor [$FF.b],Y		; 57 FF
	ply		; 7A
	cmp $7FFAB3.l,X		; DF B3 FA 7F
	lda $FFFFFD.l,X		; BF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $F7DBEF.l,X		; BF EF DB F7
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $EFFFF5.l,X		; FF F5 FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $BFFF.w,X		; FE FF BF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $EFFFFD.l		; EF FD FF EF
	cmp $FFFFFD.l,X		; DF FD FF FF
	sbc $AEFFFF.l,X		; FF FF FF AE
	sbc $FFF77F.l,X		; FF 7F F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FA7FBC.l,X		; FF BC 7F FA
	ror $FFFF.w,X		; 7E FF FF
	sbc ($7F.b,S),Y		; F3 7F
	sbc [$FF.b],Y		; F7 FF
	adc $7FFFFF.l,X		; 7F FF FF 7F
	sbc $B7BFFF.l,X		; FF FF BF B7
	sbc $FFFFFB.l		; EF FB FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $5FFFFF.l,X		; FF FF FF 5F
	sbc $7BECFF.l,X		; FF FF EC 7B
	sbc $FF6F77.l,X		; FF 77 6F FF
	tyx		; BB
	stp		; DB
	sbc $7FFBEF.l,X		; FF EF FB 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	xce		; FB
	eor $FCBFFF.l,X		; 5F FF BF FC
	sbc $BDFFDF.l,X		; FF DF FF BD
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $F7FF.w,X		; FD FF F7
	sta $FFFFDF.l,X		; 9F DF FF FF
	sbc $FFFF7F.l		; EF 7F FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFD.w,Y		; D9 FD FF
	sbc $FE1FB7.l,X		; FF B7 1F FE
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F32FA7.l,X		; FF A7 2F F3
	sbc $EDFD.w,Y		; F9 FD ED
	sbc $FEFFFD.l,X		; FF FD FF FE
	sbc $FBFFBF.l,X		; FF BF FF FB
	sbc $7F6FFF.l,X		; FF FF 6F 7F
	sbc $2BCD3F.l,X		; FF 3F CD 2B
	sbc $EFBFF6.l,X		; FF F6 BF EF
	adc $FFFBFF.l,X		; 7F FF FB FF
	sbc $FF93FF.l,X		; FF FF 93 FF
	sbc $27FFFE.l,X		; FF FE FF 27
	cmp $F7F7FF.l,X		; DF FF F7 F7
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFEFF.l,X		; FF FF FE DF
	sbc [$FB.b],Y		; F7 FB
	lda $FFFFFF.l		; AF FF FF FF
	sbc $FFE7FF.l,X		; FF FF E7 FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	jsr ($BBFB.w,X)		; FC FB BB
	sbc $DFDFFF.l		; EF FF DF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFF6.l,X		; FF F6 FF FF
	lda $FFBFBF.l,X		; BF BF BF FF
	sbc $FFFEFF.l		; EF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A2FBF6.l,X		; FF F6 FB A2
	sbc $FFD7FB.l,X		; FF FB D7 FF
	inc $3F.b,X		; F6 3F
	cmp $FFFFFF.l		; CF FF FF FF
	sbc $BDFFFF.l,X		; FF FF FF BD
	tsa		; 3B
	xba		; EB
	adc $FF7F3F.l,X		; 7F 3F 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFEBFF.l,X		; FF FF EB FF
	lda $FB7E6F.l,X		; BF 6F 7E FB
	jsr ($FFFF.w,X)		; FC FF FF
	stp		; DB
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr ($FFFD.w,X)		; FC FD FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7ED5FF.l,X		; FF FF D5 7E
	xce		; FB
	sbc $BFFEFC.l,X		; FF FC FE BF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFDAF.l,X		; FF AF FD DF
	sbc $EFFFDE.l,X		; FF DE FF EF
	sbc $FFFF.w,X		; FD FF FF
	sbc $DFBFFF.l,X		; FF FF BF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $7FFB7F.l,X		; DF 7F FB 7F
	inc $FF.b		; E6 FF
	sbc $FFFFFB.l		; EF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$EE.b],Y		; F7 EE
	plx		; FA
	sbc $DF7FFD.l		; EF FD 7F DF
	adc $FF3DFF.l,X		; 7F FF 3D FF
	xce		; FB
	sbc $FFFF.w,X		; FD FF FF
	lda $7BFFBC.l,X		; BF BC FF 7B
	sbc $FFFF7E.l,X		; FF 7E FF FF
	sbc $FF.b		; E5 FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	cmp $FEBFFD.l,X		; DF FD BF FE
	sbc $FFFB.w		; ED FB FF
	adc $FFFFBF.l,X		; 7F BF FF FF
	sbc $FFFEFB.l,X		; FF FB FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F6DB.w,X		; FD DB F6
	phx		; DA
	sbc $FFFF.w,X		; FD FF FF
	cmp [$FE.b],Y		; D7 FE
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $7FFFDA.l,X		; FF DA FF 7F
	and [$FF.b],Y		; 37 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7F.w,X		; FD 7F FF
	adc $E7FF.w,X		; 7D FF E7
	cmp $FFFEFF.l,X		; DF FF FE FF
	sbc $BFBFFF.l,X		; FF FF BF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	adc $D976EE.l,X		; 7F EE 76 D9
	cmp $FF.b,X		; D5 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFEBF.l,X		; FF BF FE EF
	dec A		; 3A
	adc $F7EF7B.l,X		; 7F 7B EF F7
	inc $FFFF.w,X		; FE FF FF
	cmp $B7FDFF.l,X		; DF FF FD B7
	sbc $BDF7F7.l,X		; FF F7 F7 BD
	sbc $FF7E.w,X		; FD 7E FF
	sbc $FDCFFF.l,X		; FF FF CF FD
	adc $FFFFFF.l,X		; 7F FF FF FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FB.b],Y		; F7 FB
	inc $FBFF.w,X		; FE FF FB
	sbc [$7F.b],Y		; F7 7F
	inc $BF.b,X		; F6 BF
	adc $FFFFF6.l,X		; 7F F6 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $FFE7FF.l,X		; 5F FF E7 FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $7FFF.w,X		; FD FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	lda $BFDF.w,X		; BD DF BF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $72BCFF.l,X		; FF FF BC 72
	adc [$EE.b],Y		; 77 EE
	tda		; 7B
	inc $FB7B.w,X		; FE 7B FB
	ror $FBFB.w,X		; 7E FB FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CFDEFB.l,X		; FF FB DE CF
	sbc $DFB3F7.l,X		; FF F7 B3 DF
	sbc $FFF7FF.l		; EF FF F7 FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $F735.w,X		; FD 35 F7
	sbc $FDFFFE.l,X		; FF FE FF FD
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDDFF.l,X		; FF FF DD FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FEFFFC.l,X		; FF FC FF FE
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFDFB.l,X		; FF FB FD FF
	sbc $FF.b,X		; F5 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF5FF.l,X		; FF FF F5 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFD9.l,X		; FF D9 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDBFB.l,X		; FF FB DB FF
	sbc $CFDAFF.l,X		; FF FF DA CF
	sbc $FFEFDB.l,X		; FF DB EF FF
	lda $7FFFFB.l,X		; BF FB FF 7F
	sbc $CFF7FD.l,X		; FF FD F7 CF
	xce		; FB
	eor $EF7BBB.l		; 4F BB 7B EF
	inc $FDFF.w,X		; FE FF FD
	lda $FFFFBF.l,X		; BF BF FF FF
	sbc $AFF9BD.l,X		; FF BD F9 AF
	cmp $F75EBF.l,X		; DF BF 5E F7
	tyx		; BB
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	rts		; 60

	bvs 101.b		; 70 65
	xba		; EB
	cmp ($CD.b,X)		; C1 CD
	ora #$D2.b		; 09 D2
	lda ($DC.b,S),Y		; B3 DC
	ora ($05.b)		; 12 05
	ora $71.b,S		; 03 71
	stz $18.b		; 64 18
	ora $24.b		; 05 24
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	bpl   4.b		; 10 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $79.b		; 00 79
	plx		; FA
	txs		; 9A
	eor ($34.b,S),Y		; 53 34
	eor ($F5.b,S),Y		; 53 F5
	eor [$6B.b],Y		; 57 6B
	eor ($E5.b),Y		; 51 E5
	asl $10.b,X		; 16 10
	ora $09.b,X		; 15 09
	brk $14.b		; 00 14
	bpl  10.b		; 10 0A
	and ($01.b,X)		; 21 01
	brk $02.b		; 00 02
	bit $10.b		; 24 10
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	trb $12.b		; 14 12
	brk $02.b		; 00 02
	rts		; 60

	brk $00.b		; 00 00
	rti		; 40

	ldy $00.b		; A4 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bpl  10.b		; 10 0A
	php		; 08
	php		; 08
	ora #$00.b		; 09 00
	ora $40.b,S		; 03 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	clc		; 18
	stx $C282.w		; 8E 82 C2
	bvs  54.b		; 70 36
	adc $08.b,X		; 75 08
	tsb $200A.w		; 0C 0A 20
	adc ($32.b)		; 72 32
	pha		; 48
	rti		; 40

	bra   0.b		; 80 00
	cop $10.b		; 02 10
	ora ($00.b,X)		; 01 00
	tsb $80.b		; 04 80
	bvc  64.b		; 50 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0400.w		; 20 00 04
	and $12.b,S		; 23 12
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   4.b		; 90 04
	brk $10.b		; 00 10
	brk $03.b		; 00 03
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$21.b		; 09 21
	ora $FA.b,S		; 03 FA
	and $9DEE.w		; 2D EE 9D
	dec $F0.b,X		; D6 F0
	cmp ($0A.b)		; D2 0A
	stz $78EE.w		; 9C EE 78
	iny		; C8
	jsr $2004.w		; 20 04 20
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	bcc -126.b		; 90 82
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	bra  72.b		; 80 48
	tsb $80.b		; 04 80
	trb $02.b		; 14 02
	brk $C2.b		; 00 C2
	brk $94.b		; 00 94
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	rti		; 40

	rti		; 40

	bpl   0.b		; 10 00
	bpl  32.b		; 10 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	cli		; 58
	rti		; 40

	bit $AA.b		; 24 AA
	cmp ($38.b,S),Y		; D3 38
	ply		; 7A
	mvn $BA,$88		; 54 88 BA
	brk $24.b		; 00 24
	rts		; 60

	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $8C.b		; 04 8C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0001.w		; 20 01 00
	brk $20.b		; 00 20
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	sta ($20.b),Y		; 91 20
	inc $58.b,X		; F6 58
	sbc ($B1.b,X)		; E1 B1
	cmp [$94.b],Y		; D7 94
	cmp [$02.b]		; C7 02
	lda $0A74D9.l		; AF D9 74 0A
	ora ($80.b,X)		; 01 80
	brk $02.b		; 00 02
	php		; 08
	ora $00.b,S		; 03 00
	tsb $40.b		; 04 40
	brk $0C.b		; 00 0C
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bpl   0.b		; 10 00
	php		; 08
	ora $08.b		; 05 08
	brk $11.b		; 00 11
	bpl  36.b		; 10 24
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora $20.b,S		; 03 20
	ora ($88.b,X)		; 01 88
	cop $24.b		; 02 24
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	bit $1232.w		; 2C 32 12
	bpl -10.b		; 10 F6
	php		; 08
	cmp $4433.w		; CD 33 44
	ora ($A0.b)		; 12 A0
	jsr $2000.w		; 20 00 20
	jsr $2090.w		; 20 90 20
	.db $42, $00		; 42 00
	ora ($48.b,X)		; 01 48
	php		; 08
	jsr $0400.w		; 20 00 04
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	php		; 08
	brk $10.b		; 00 10
	brk $15.b		; 00 15
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AA.b		; 00 AA
	cmp ($3A.b,X)		; C1 3A
	ora $E6FEE6.l		; 0F E6 FE E6
	stz $E75B.w,X		; 9E 5B E7
	bmi 126.b		; 30 7E
	ora $D003.w,X		; 1D 03 D0
	brk $05.b		; 00 05
	pha		; 48
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	bvc   2.b		; 50 02
	brk $00.b		; 00 00
	bit $20.b		; 24 20
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	clc		; 18
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	rti		; 40

	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tsb $82.b		; 04 82
	jsr $000A.w		; 20 0A 00
	jsl $040012.l		; 22 12 00 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	sec		; 38
	.db $42, $F4		; 42 F4
	dey		; 88
	ror A		; 6A
	phk		; 4B
	sbc ($A0.b,X)		; E1 A0
	ora ($C0.b)		; 12 C0
	rol A		; 2A
	brk $00.b		; 00 00
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($08.b,X)		; 01 08
	iny		; C8
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cop $04.b		; 02 04
	rti		; 40

	brk $20.b		; 00 20
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	lsr $96C5.w		; 4E C5 96
	adc $9205.w		; 6D 05 92
	adc #$5D.b		; 69 5D
	sbc ($A4.b,S),Y		; F3 A4
	cmp $01.b		; C5 01
	ora $9000.w		; 0D 00 90
	brk $11.b		; 00 11
	rti		; 40

	bra  42.b		; 80 2A
	jsr $0820.w		; 20 20 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	ora ($10.b,X)		; 01 10
	ora $0C.b		; 05 0C
	lda ($00.b,X)		; A1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $14.b		; 04 14
	ora #$05.b		; 09 05
	.db $82, $00, $89		; 82 00 89
	bmi   0.b		; 30 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	bra -108.b		; 80 94
	ora ($A1.b,X)		; 01 A1
	and $28.b		; 25 28
	rts		; 60

	cli		; 58
	adc ($21.b,X)		; 61 21
	tsb $0008.w		; 0C 08 00
	php		; 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cpy #$90.b		; C0 90
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	php		; 08
	dey		; 88
	ora ($00.b)		; 12 00
	brk $40.b		; 00 40
	php		; 08
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	jmp $02FD.w		; 4C FD 02
	tax		; AA
	beq -75.b		; F0 B5
	ora $D0E6.w,X		; 1D E6 D0
	eor [$4F.b]		; 47 4F
	cpx BG2SC.w		; EC 08 21
	jsr $0300.w		; 20 00 03
	ora ($80.b,X)		; 01 80
	ora $00.b,S		; 03 00
	plp		; 28
	jsr $8400.w		; 20 00 84
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $B0.b		; 00 B0
	brk $10.b		; 00 10
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	cop $02.b		; 02 02
	brk $30.b		; 00 30
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	sty $04.b		; 84 04
	brk $90.b		; 00 90
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	tsb $9A42.w		; 0C 42 9A
	adc $11.b,S		; 63 11
	eor ($82.b)		; 52 82
	phb		; 8B
	tsb $9C16.w		; 0C 16 9C
	php		; 08
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	jsr $8211.w		; 20 11 82
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	pha		; 48
	tsb $10.b		; 04 10
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	ror $950C.w,X		; 7E 0C 95
	bmi  -6.b		; 30 FA
	sbc $DA55B1.l		; EF B1 55 DA
	ldx $28.b,Y		; B6 28
	jsr $0511.w		; 20 11 05
	bit $20.b,X		; 34 20
	brk $00.b		; 00 00
	rti		; 40

	bit $08.b		; 24 08
	jsr $2008.w		; 20 08 20
	bpl   0.b		; 10 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	jsr $0500.w		; 20 00 05
	ldy #$01.b		; A0 01
	rts		; 60

	jsr $0010.w		; 20 10 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $84.b		; 06 84
	rti		; 40

	cpy #$00.b		; C0 00
	php		; 08
	jsr $C400.w		; 20 00 C4
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $02.b,X		; 94 02
	dec A		; 3A
	bmi -100.b		; 30 9C
	asl A		; 0A
	bcc 104.b		; 90 68
	tsb $46.b		; 04 46
	tsb $1024.w		; 0C 24 10
	bra   8.b		; 80 08
	brk $01.b		; 00 01
	dey		; 88
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0004.w		; 20 04 00
	trb $10.b		; 14 10
	brk $02.b		; 00 02
	ora $09.b		; 05 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	rti		; 40

	brk $80.b		; 00 80
	ora ($08.b,X)		; 01 08
	ora $0040.w		; 0D 40 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -92.b		; 10 A4
	tas		; 1B
	sty $EC.b		; 84 EC
	ora $707F.w		; 0D 7F 70
	tad		; 5B
	cpx $57.b		; E4 57
	tya		; 98
	lsr A		; 4A
	tsb $0242.w		; 0C 42 02
	bra   0.b		; 80 00
	brk $1D.b		; 00 1D
	cop $00.b		; 02 00
	and [$00.b]		; 27 00
	cop $40.b		; 02 40
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	tsb $95.b		; 04 95
	bcc   4.b		; 90 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $0A.b		; 02 0A
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
	dey		; 88
	rti		; 40

	rts		; 60

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FF.b,X		; F6 FF
	sbc $FEBBBF.l,X		; FF BF BB FE
	inc $FFFF.w,X		; FE FF FF
	sbc $F7FDFF.l,X		; FF FF FD F7
	adc $FFFFFF.l,X		; 7F FF FF FF
	cmp [$7F.b],Y		; D7 7F
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFF7F.l,X		; FF 7F FF FE
	sbc $BFDFBE.l,X		; FF BE DF BF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $F7F6.w,X		; FD F6 F7
	sbc $FFFFFF.l		; EF FF FF FF
	and $FFFF7F.l,X		; 3F 7F FF FF
	sbc $DEFEFF.l,X		; FF FF FE DE
	eor [$FF.b],Y		; 57 FF
	cmp $FFDBFB.l,X		; DF FB DB FF
	sbc $FEFD.w,X		; FD FD FE
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $EF7FFE.l,X		; FF FE 7F EF
	sbc $77FFAE.l,X		; FF AE FF 77
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l		; EF FF FF FF
	adc $BFFFFF.l,X		; 7F FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFEF.l,X		; FF EF FF FB
	sbc $FFCFFF.l,X		; FF FF CF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FE5FFF.l,X		; FF FF 5F FE
	sbc $FDFFF7.l,X		; FF F7 FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FB.b,X		; F6 FB
	tyx		; BB
	xce		; FB
	inc $FFFE.w,X		; FE FE FF
	lda $F7FFFF.l,X		; BF FF FF F7
	sbc $EFFFFF.l,X		; FF FF FF EF
	cmp [$FE.b],Y		; D7 FE
	sbc $DFBF.w,X		; FD BF DF
	sbc $FFFF.w		; ED FF FF
	sbc $FFF7FF.l		; EF FF F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $9EBDFF.l,X		; FF FF BD 9E
	sbc $FEFEFF.l		; EF FF FE FE
	sbc $FFDDFF.l,X		; FF FF DD FF
	inc $FFBF.w,X		; FE BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $BEFFFE.l		; EF FE FF BE
	sbc $FFFDBF.l,X		; FF BF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FBFF2F.l		; EF 2F FF FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFEEF.l,X		; FF EF FE FF
	sbc $79FF7D.l,X		; FF 7D FF 79
	sbc $FCFFFF.l,X		; FF FF FF FC
	sbc $BFBDF5.l,X		; FF F5 BD BF
	lda $FFFFDF.l,X		; BF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DBFFFF.l,X		; FF FF FF DB
	rol $FCFF.w,X		; 3E FF FC
	sbc [$FB.b]		; E7 FB
	sbc $FFFF4F.l,X		; FF 4F FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FEDFF7.l,X		; FF F7 DF FE
	stx $FB.b,Y		; 96 FB
	sed		; F8
	inc $FF.b,X		; F6 FF
	adc $FFDFFF.l,X		; 7F FF DF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FBFF3F.l,X		; FF 3F FF FB
	sbc $FEFEFA.l,X		; FF FA FE FE
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEAFFF.l,X		; FF FF AF FE
	sbc ($FF.b,S),Y		; F3 FF
	lda $FFFBFF.l,X		; BF FF FB FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFF5FF.l,X		; FF FF F5 FF
	sbc $FFDF.w		; ED DF FF
	adc $DF5FFF.l,X		; 7F FF 5F DF
	xce		; FB
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F77FFF.l,X		; FF FF 7F F7
	sbc $7F7BBF.l,X		; FF BF 7B 7F
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF5.l,X		; FF F5 FF FF
	sbc $FFFBED.l,X		; FF ED FB FF
	inc $FFBF.w,X		; FE BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFBFFD.l,X		; FF FD BF DF
	sbc $F7FF.w,X		; FD FF F7
	lda [$BF.b],Y		; B7 BF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF76E.l,X		; FF 6E F7 7F
	adc $FFEFDE.l,X		; 7F DE EF FF
	lda $FBFFBF.l,X		; BF BF FF FB
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFD.l,X		; FF FD FF FD
	sbc $FF.b,X		; F5 FF
	sbc $FBFFF6.l,X		; FF F6 FF FB
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $EAFFFF.l,X		; FF FF FF EA
	sbc $F7FFFF.l,X		; FF FF FF F7
	adc [$FF.b],Y		; 77 FF
	sbc $FBFDFF.l,X		; FF FF FD FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DF7FFF.l,X		; FF FF 7F DF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $DFEF.w,X		; FD EF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFBFF.l,X		; FF FF FB DF
	and $FFFFBF.l,X		; 3F BF FF FF
	dec $FBFF.w,X		; DE FF FB
	xce		; FB
	sbc $F7FFFF.l,X		; FF FF FF F7
	inc $7FFF.w,X		; FE FF 7F
	sbc $EFF5FF.l,X		; FF FF F5 EF
	eor $FFEFFF.l,X		; 5F FF EF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $BEFFFF.l,X		; FF FF FF BE
	ldy $BEFD.w,X		; BC FD BE
	cmp $BF77FE.l,X		; DF FE 77 BF
	cmp [$FF.b],Y		; D7 FF
	sbc [$FE.b],Y		; F7 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w		; ED FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $FFDF7F.l,X		; FF 7F DF FF
	sbc $BFF7D6.l,X		; FF D6 F7 BF
	sbc $FFFFBF.l		; EF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $F7FFDF.l,X		; FF DF FF F7
	ldx $FE.b,Y		; B6 FE
	sbc $FFEEFF.l,X		; FF FF EE FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7EFFFD.l,X		; FF FD FF 7E
	sta $DFFF.w,X		; 9D FF DF
	sbc $EF6FFB.l		; EF FB 6F EF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFF6FF.l,X		; FF FF F6 FF
	adc $EFEFFD.l		; 6F FD EF EF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $CFFFFF.l,X		; FF FF FF CF
	sbc $FDFFBF.l		; EF BF FF FD
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFF77.l,X		; FF 77 FF FB
	sbc [$FF.b],Y		; F7 FF
	sbc $F97FFF.l,X		; FF FF 7F F9
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFAFFD.l,X		; FF FD AF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $2FDFFF.l,X		; 7F FF DF 2F
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc ($F7.b,S),Y		; F3 F7
	sbc $FFFFFE.l,X		; FF FE FF FF
	inc $FFFF.w		; EE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFDBB7.l,X		; FF B7 DB FF
	adc $FFFF.w,Y		; 79 FF FF
	adc $FF9FFF.l,X		; 7F FF 9F FF
	cmp $FBFFFF.l,X		; DF FF FF FB
	sbc $BFFEFE.l,X		; FF FE FE BF
	inc $FE7F.w,X		; FE 7F FE
	sbc $FFCFFF.l,X		; FF FF CF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $FEFF.w,Y		; BE FF FE
	sbc $FFFF7A.l,X		; FF 7A FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FBFFF7.l,X		; DF F7 FF FB
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $3FFF.w,X		; FE FF 3F
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BE7FF.l,X		; FF FF E7 7B
	ror $FFEF.w,X		; 7E EF FF
	sbc $FFFA7F.l,X		; FF 7F FA FF
	xce		; FB
	sbc $FFFBFF.l		; EF FF FB FF
	sbc $FECFFF.l,X		; FF FF CF FE
	adc [$D5.b]		; 67 D5
	adc $FFFF.w,X		; 7D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BFFFF.l,X		; FF FF FF 7B
	sbc $BCFFAF.l,X		; FF AF FF BC
	xce		; FB
	adc $FEBFFF.l,X		; 7F FF BF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFF7B.l,X		; FF 7B FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and [$50.b]		; 27 50
	trb $9482.w		; 1C 82 94
	sep #$C7		; E2 C7
	ror $22.b		; 66 22
	ora [$16.b]		; 07 16
	clc		; 18
	jsr $2940.w		; 20 40 29
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	jsr $2080.w		; 20 80 20
	bra   0.b		; 80 00
	rti		; 40

	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   8.b		; 50 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc 120.b		; 90 78
	sty $14.b,X		; 94 14
	lda ($C3.b)		; B2 C3
	jsr $DA39.w		; 20 39 DA
	cmp ($4C.b),Y		; D1 4C
	jsr $0022.w		; 20 22 00
	brk $48.b		; 00 48
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
	cpy #$00.b		; C0 00
	bpl  24.b		; 10 18
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	brk $01.b		; 00 01
	bra  80.b		; 80 50
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	jsr $0000.w		; 20 00 00
	jsr $0000.w		; 20 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	phk		; 4B
	jmp $0000.w		; 4C 00 00
	phy		; 5A
	and $A0229F.l,X		; 3F 9F 22 A0
	sta ($61.b),Y		; 91 61
	brk $0C.b		; 00 0C
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cop $00.b		; 02 00
	rti		; 40

	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  64.b		; 30 40
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cop $20.b		; 02 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	eor ($1A.b)		; 52 1A
	adc ($64.b,X)		; 61 64
	adc ($99.b,X)		; 61 99
	php		; 08
	inc A		; 1A
	tas		; 1B
	bvs   2.b		; 70 02
	brk $4C.b		; 00 4C
	cpx #$01.b		; E0 01
	brk $00.b		; 00 00
	ora ($94.b,X)		; 01 94
	brk $01.b		; 00 01
	tsb $20.b		; 04 20
	asl $0000.w		; 0E 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr $8820.w		; 20 20 88
	brk $00.b		; 00 00
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bcc   1.b		; 90 01
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	bpl -64.b		; 10 C0
	cpx #$3C.b		; E0 3C
	php		; 08
	tsb $30.b		; 04 30
	stz $0108.w		; 9C 08 01
	tsb $14.b		; 04 14
	plp		; 28
	brk $48.b		; 00 48
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	php		; 08
	brk $00.b		; 00 00
	jsr $0438.w		; 20 38 04
	cop $09.b		; 02 09
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	plp		; 28
	php		; 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $94.b		; 26 94
	tay		; A8
	sty $AFE3.w		; 8C E3 AF
	cpy $82.b		; C4 82
	txy		; 9B
	ora #$90.b		; 09 90
	sta ($1C.b,X)		; 81 1C
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	jsr $0040.w		; 20 40 00
	php		; 08
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bcc  76.b		; 90 4C
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	php		; 08
	tsb $42.b		; 04 42
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($10.b,X)		; 81 10
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	bvs -87.b		; 70 A9
	jsl $540E46.l		; 22 46 0E 54
	ora ($C0.b,X)		; 01 C0
	mvp $28,$17		; 44 17 28
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txa		; 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $04.b		; 00 04
	brk $60.b		; 00 60
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	rti		; 40

	brk $00.b		; 00 00
	bpl  68.b		; 10 44
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C5.b		; 00 C5
	eor ($C4.b,X)		; 41 C4
	tda		; 7B
	bcs -16.b		; B0 F0
	eor $DD98.w		; 4D 98 DD
	eor $B0.b		; 45 B0
	rts		; 60

	sty $0E.b		; 84 0E
	brk $21.b		; 00 21
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	lsr $0002.w		; 4E 02 00
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	cop $80.b		; 02 80
	brk $A4.b		; 00 A4
	cop $05.b		; 02 05
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $8022.w		; 20 22 80
	bvc   4.b		; 50 04
	bpl   0.b		; 10 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	asl A		; 0A
	dey		; 88
	pla		; 68
	sta $0C.b		; 85 0C
	cmp $38.b		; C5 38
	bra  34.b		; 80 22
	lsr A		; 4A
	cli		; 58
	bra  37.b		; 80 25
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	php		; 08
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0408.w		; 0C 08 04
	brk $0B.b		; 00 0B
	php		; 08
	bra  64.b		; 80 40
	ora ($20.b),Y		; 11 20
	brk $A0.b		; 00 A0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	stz $0B01.w,X		; 9E 01 0B
	sep #$0B		; E2 0B
	lda $DA.b		; A5 DA
	sty $48.b		; 84 48
	rts		; 60

	asl A		; 0A
	clc		; 18
	ora $38.b,S		; 03 38
	rti		; 40

	bpl   0.b		; 10 00
	cop $01.b		; 02 01
	asl $00.b		; 06 00
	rti		; 40

	jsl L400000.l		; 22 00 00 40
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $01.b		; 04 01
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $43.b		; 00 43
	bra  64.b		; 80 40
	tsb $1100.w		; 0C 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	cop $1D.b		; 02 1D
	bra  98.b		; 80 62
	stz $A828.w,X		; 9E 28 A8
	jmp ($A080.w)		; 6C 80 A0
	ora ($10.b)		; 12 10
	asl $00.b		; 06 00
	plp		; 28
	brk $00.b		; 00 00
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	sta ($00.b,X)		; 81 00
	sta ($40.b,X)		; 81 40
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sei		; 78
	ldy $6F.b,X		; B4 6F
	ora ($2F.b,S),Y		; 13 2F
	pha		; 48
	asl $19CC.w,X		; 1E CC 19
	and ($B0.b,X)		; 21 B0
	bcc  64.b		; 90 40
	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora #$60.b		; 09 60
	dey		; 88
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4200.w		; 20 00 42
	bvs   0.b		; 70 00
	ora ($92.b,X)		; 01 92
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $00.b		; 46 00
	bvc   4.b		; 50 04
	tsb $0000.w		; 0C 00 00
	bpl   8.b		; 10 08
	bra  32.b		; 80 20
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$14.b		; 09 14
	bmi  34.b		; 30 22
	ror A		; 6A
	phk		; 4B
	stx $54.b		; 86 54
	bra -110.b		; 80 92
	sty $00.b		; 84 00
	ora [$00.b],Y		; 17 00
	php		; 08
	trb $00.b		; 14 00
	php		; 08
	bpl  32.b		; 10 20
	tsb $00.b		; 04 00
	php		; 08
	bpl   2.b		; 10 02
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0002.w		; 20 02 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CD.b		; 00 CD
	brk $D4.b		; 00 D4
	rol A		; 2A
	cmp #$95.b		; C9 95
	cpy #$08.b		; C0 08
	php		; 08
	and $27B9.w,Y		; 39 B9 27
	.db $42, $02		; 42 02
	tsb $0010.w		; 0C 10 00
	bpl  66.b		; 10 42
	ora ($92.b,X)		; 01 92
	ora ($00.b,X)		; 01 00
	dey		; 88
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $22.b		; 00 22
	bra   0.b		; 80 00
	php		; 08
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4B.b		; 00 4B
	sty $21.b,X		; 94 21
	cpy #$08.b		; C0 08
	sty $4E.b		; 84 4E
	stx $0F.b		; 86 0F
	mvn $00,$10		; 54 10 00
	ora $50.b		; 05 50
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	and ($00.b,X)		; 21 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($24.b,X)		; 01 24
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A8.b		; 00 A8
	tsb $02.b		; 04 02
	ldy #$F6.b		; A0 F6
	sbc $81.b,S		; E3 81
	cli		; 58
	and #$60.b		; 29 60
	.db $42, $46		; 42 46
	jsr $2002.w		; 20 02 20
	rti		; 40

	ora $00.b,S		; 03 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

	ora #$00.b		; 09 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4200.w		; 20 00 42
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	jsr $1008.w		; 20 08 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FF7FDF.l,X		; FF DF 7F FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5FFEF.l,X		; FF EF FF F5
	sbc [$FF.b],Y		; F7 FF
	lda $FFFFBD.l,X		; BF BD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2EFFFF.l,X		; FF FF FF 2E
	sbc $7FDF.w,X		; FD DF 7F
	adc [$FF.b],Y		; 77 FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E7FF7D.l,X		; FF 7D FF E7
	tyx		; BB
	sbc $DFEFF6.l,X		; FF F6 EF DF
	adc $FEFFFF.l,X		; 7F FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	ror $EF.b,X		; 76 EF
	sbc $E5EFF9.l,X		; FF F9 EF E5
	sbc $EFFFFB.l,X		; FF FB FF EF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $BB6FFF.l,X		; FF FF 6F BB
	lda $7FFFE3.l		; AF E3 FF 7F
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFB.l,X		; FF FB FF FE
	rtl		; 6B

	sbc $FFDEEF.l,X		; FF EF DE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	adc $FFFF36.l,X		; 7F 36 FF FF
	sbc $FF7BFF.l,X		; FF FF 7B FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $F8FB78.l		; EF 78 FB F8
	sbc $7F3FEB.l,X		; FF EB 3F 7F
	inc $FFFD.w		; EE FD FF
	sbc $FFDF7F.l,X		; FF 7F DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFF5FF.l,X		; FF FF F5 EF
	ldx $6BF9.w,Y		; BE F9 6B
	sbc [$BE.b],Y		; F7 BE
	lda $FBB7FF.l,X		; BF FF B7 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF1E.l,X		; FF 1E FF FF
	adc [$3F.b]		; 67 3F
	tyx		; BB
	sbc $FFFDB5.l,X		; FF B5 FD FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $F3DDFF.l,X		; FF FF DD F3
	sbc $B578FD.l,X		; FF FD 78 B5
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFF97.l,X		; FF 97 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc $FFF7.w,X		; FD F7 FF
	sbc $BFFFF7.l,X		; FF F7 FF BF
	sbc $DFFFFF.l,X		; FF FF FF DF
	and [$EF.b],Y		; 37 EF
	adc $DFCEFF.l,X		; 7F FF CE DF
	sbc ($FE.b,S),Y		; F3 FE
	xba		; EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFEFF.l,X		; FF FF FE FB
	sbc $DEFFFF.l,X		; FF FF FF DE
	lda $DFEF.w,X		; BD EF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DDFFFF.l,X		; FF FF FF DD
	cmp [$78.b]		; C7 78
	jsr ($FF5D.w,X)		; FC 5D FF
	sbc ($EB.b,S),Y		; F3 EB
	cmp $3E.b,X		; D5 3E
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $DFCFFF.l,X		; FF FF CF DF
	sbc $FC4FFF.l,X		; FF FF 4F FC
	lda [$FF.b],Y		; B7 FF
	lda $FFFD.w,X		; BD FD FF
	sbc $FFFF.w,X		; FD FF FF
	xce		; FB
	sbc $BFEFEF.l,X		; FF EF EF BF
	rol $FEBF.w,X		; 3E BF FE
	sbc $FFEEFF.l,X		; FF FF EE FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FEFFFF.l,X		; FF FF FF FE
	cmp $FFBFFF.l,X		; DF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $89F7EF.l,X		; FF EF F7 89
	cmp [$FF.b],Y		; D7 FF
	sbc $DFFEDD.l,X		; FF DD FE DF
	sta $FFFFBF.l,X		; 9F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEBFFF.l		; EF FF BF FE
	plx		; FA
	sbc $BFFEFB.l,X		; FF FB FE BF
	sbc [$FF.b],Y		; F7 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc ($F3.b,S),Y		; F3 F3
	sbc [$FF.b],Y		; F7 FF
	sbc $7FFDFF.l,X		; FF FF FD 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FE.b],Y		; F7 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7EBFF.l,X		; FF FF EB F7
	inc $CFF9.w,X		; FE F9 CF
	sbc $FEFF77.l,X		; FF 77 FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	xba		; EB
	xce		; FB
	sbc $56F5FF.l,X		; FF FF F5 56
	adc ($F3.b,S),Y		; 73 F3
	xce		; FB
	sbc $BFF7FD.l,X		; FF FD F7 BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $ECFF.w,X		; FD FF EC
	sbc $FFFBFF.l		; EF FF FB FF
	lda $FFEFFC.l		; AF FC EF FF
	sbc $7FFFF7.l		; EF F7 FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFF6.w,X		; 7D F6 FF
	plx		; FA
	inc $DF7F.w,X		; FE 7F DF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFAFED.l,X		; FF ED AF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $CBFDFF.l,X		; FF FF FD CB
	sbc $FFFFBD.l,X		; FF BD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FAFEF5.l,X		; 7F F5 FE FA
	sbc $FFDFCE.l,X		; FF CE DF FF
	sbc [$FB.b],Y		; F7 FB
	sbc $EFFF.w,X		; FD FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEB7.w		; ED B7 FE
	sbc $FFFFDA.l,X		; FF DA FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc ($B3.b,S),Y		; F3 B3
	adc $DFBFFD.l,X		; 7F FD BF DF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF3EFF.l,X		; FF FF 3E FF
	adc $FFF7FF.l,X		; 7F FF F7 FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FF97FE.l,X		; FF FE 97 FF
	sbc $EDFFEF.l,X		; FF EF FF ED
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBBFF.l,X		; FF FF BB FF
	sbc $BFF6.w,X		; FD F6 BF
	sbc $BFF7.w,X		; FD F7 BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFBFCF.l,X		; FF CF BF FF
	jsr ($FFFE.w,X)		; FC FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDF7.l,X		; FF F7 FD FF
	cmp $FFFFFF.l		; CF FF FF FF
	sbc $F7FDFF.l,X		; FF FF FD F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	plx		; FA
	sbc $FFDE3B.l,X		; FF 3B DE FF
	sbc [$FF.b],Y		; F7 FF
	jsr ($FEBF.w,X)		; FC BF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFE.l,X		; FF FE FF FB
	sbc [$FF.b]		; E7 FF
	sbc $F7FEFF.l,X		; FF FF FE F7
	sbc $BFFFD7.l,X		; FF D7 FF BF
	sbc $FCFFFF.l,X		; FF FF FF FC
	sbc $FF7FF7.l,X		; FF F7 7F FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	xba		; EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5A5FF.l,X		; FF FF A5 F5
	sbc $DFD7FE.l		; EF FE D7 DF
	cmp $FFFDDF.l,X		; DF DF FD FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $4EFBFF.l,X		; FF FF FB 4E
	adc $F6BFBF.l,X		; 7F BF BF F6
	sbc $DFEFE7.l,X		; FF E7 EF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEF7.w,X		; FD F7 EE
	inc $BFFE.w,X		; FE FE BF
	tsa		; 3B
	lda $EBFF5B.l,X		; BF 5B FF EB
	adc $FEFFEF.l,X		; 7F EF FF FE
	sbc $FBFFF7.l,X		; FF F7 FF FB
	sbc $FEFFE7.l,X		; FF E7 FF FE
	adc $7DFFFF.l,X		; 7F FF FF 7D
	sbc $FFCFFF.l,X		; FF FF CF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	plb		; AB
	sbc $FDFFFD.l,X		; FF FD FF FD
	sbc $FFFF5F.l,X		; FF 5F FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	lda $FE7FFB.l,X		; BF FB 7F FE
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FF7B.w,X		; FD 7B FF
	lda $FFFFDE.l,X		; BF DE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $F77B.w,X		; FE 7B F7
	cmp $FE7E.w,X		; DD 7E FE
	lda $FFFDBF.l,X		; BF BF FD FF
	inc $7F77.w,X		; FE 77 7F
	sbc $8BFFFF.l,X		; FF FF FF 8B
	sbc [$7D.b],Y		; F7 7D
	cpx $FFFF.w		; EC FF FF
	adc $F3FFFE.l,X		; 7F FE FF F3
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFDEFF.l,X		; FF FF DE FF
	sbc $FF6B7D.l,X		; FF 7D 6B FF
	cmp $FFFF.w,X		; DD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFEEF.l,X		; DF EF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	rti		; 40

	adc ($07.b),Y		; 71 07
	lda $F3.b,S		; A3 F3
	ora ($42.b,X)		; 01 42
	rts		; 60

	and ($01.b,S),Y		; 33 01
	cli		; 58
	rep #$04		; C2 04
	adc ($80.b,X)		; 61 80
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	dey		; 88
	jsr $0004.w		; 20 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	bpl   0.b		; 10 00
	bpl -128.b		; 10 80
	rts		; 60

	eor #$00.b		; 49 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	stx $A8F0.w		; 8E F0 A8
	bit $31F8.w		; 2C F8 31
	tay		; A8
	asl $58.b		; 06 58
	mvn $94,$6D		; 54 6D 94
	and ($E0.b,X)		; 21 E0
	.db $42, $00		; 42 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	bit $0002.w		; 2C 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	ora $00.b,S		; 03 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	cop $10.b		; 02 10
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bit $20.b		; 24 20
	cop $20.b		; 02 20
	brk $20.b		; 00 20
	asl A		; 0A
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	stx $0A1C.w		; 8E 1C 0A
	sta ($DE.b,X)		; 81 DE
	sta [$83.b],Y		; 97 83
	ora $38.b,S		; 03 38
	ldx #$0F.b		; A2 0F
	brk $48.b		; 00 48
	bcc   4.b		; 90 04
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	bit $28.b		; 24 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	jsl $000180.l		; 22 80 01 00
	rti		; 40

	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	adc $C8.b		; 65 C8
	asl A		; 0A
	eor $2C.b,X		; 55 2C
	ror A		; 6A
	bit $DB71.w		; 2C 71 DB
	lda $74.b,S		; A3 74
	eor [$01.b]		; 47 01
	jsl $00C400.l		; 22 00 C4 00
	brk $12.b		; 00 12
	clc		; 18
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	brk $51.b		; 00 51
	ora ($00.b,X)		; 01 00
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $D3.b		; 00 D3
	brk $50.b		; 00 50
	jsr $0210.w		; 20 10 02
	jsr $0000.w		; 20 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	adc ($01.b)		; 72 01
	trb $AD73.w		; 1C 73 AD
	tay		; A8
	cop $DD.b		; 02 DD
	eor ($00.b,X)		; 41 00
	bvc  37.b		; 50 25
	jsr $4120.w		; 20 20 41
	brk $10.b		; 00 10
	bra  64.b		; 80 40
	php		; 08
	ora ($04.b,S),Y		; 13 04
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rts		; 60

	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	sbc ($91.b,X)		; E1 91
	and ($14.b,S),Y		; 33 14
	adc ($77.b)		; 72 77
	cpx $F8.b		; E4 F8
	cmp $0B.b,S		; C3 0B
	lda #$6B.b		; A9 6B
	sta $4884.w		; 8D 84 48
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $30.b		; 00 30
	ora $44.b		; 05 44
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra  17.b		; 80 11
	brk $00.b		; 00 00
	dey		; 88
	bra  35.b		; 80 23
	jsl $008800.l		; 22 00 88 00
	brk $92.b		; 00 92
	ora $00.b,X		; 15 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sty $08.b		; 84 08
	tsb $00.b		; 04 00
	bra  17.b		; 80 11
	bcc   1.b		; 90 01
	ora ($00.b,X)		; 01 00
	jsr $0040.w		; 20 40 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($1A.b),Y		; B1 1A
	rol $E9.b,X		; 36 E9
	sta [$08.b]		; 87 08
	and ($FF.b,X)		; 21 FF
	cop $20.b		; 02 20
	cop $60.b		; 02 60
	eor $05.b,S		; 43 05
	trb $0001.w		; 1C 01 00
	ora ($90.b,X)		; 01 90
	brk $20.b		; 00 20
	jsr $0420.w		; 20 20 04
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	dec A		; 3A
	lda $7389.w,Y		; B9 89 73
	mvn $FF,$3D		; 54 3D FF
	ora $28.b,X		; 15 28
	jmp ($8A9D.w,X)		; 7C 9D 8A
	adc $4B.b		; 65 4B
	tsb $8B.b		; 04 8B
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora ($10.b,X)		; 01 10
	brk $25.b		; 00 25
	tsb $20.b		; 04 20
	dey		; 88
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	brk $11.b		; 00 11
	brk $80.b		; 00 80
	ora #$04.b		; 09 04
	brk $01.b		; 00 01
	and ($00.b,X)		; 21 00
	bvc  70.b		; 50 46
	jsr $0000.w		; 20 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $E2.b,S		; 03 E2
	stz $84.b		; 64 84
	sta $20.b,X		; 95 20
	sbc ($9A.b,X)		; E1 9A
	rts		; 60

	cld		; D8
	rti		; 40

	tsb $00.b		; 04 00
	ora ($00.b)		; 12 00
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	bra  32.b		; 80 20
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	tsb $80.b		; 04 80
	tsb $05.b		; 04 05
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	pha		; 48
	bra  57.b		; 80 39
	rts		; 60

	bit #$77.b		; 89 77
	sbc $55C9.w		; ED C9 55
	eor #$E4.b		; 49 E4
	wai		; CB
	ldx #$11.b		; A2 11
	php		; 08
	tsb $00.b		; 04 00
	rti		; 40

	jsr $4800.w		; 20 00 48
	brk $80.b		; 00 80
	brk $24.b		; 00 24
	cmp ($40.b,X)		; C1 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	php		; 08
	tsb $00.b		; 04 00
	bpl  32.b		; 10 20
	brk $81.b		; 00 81
	php		; 08
	jsr $0022.w		; 20 22 00
	rti		; 40

	brk $03.b		; 00 03
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx #$49.b		; A2 49
	nop		; EA
	bvc  28.b		; 50 1C
	lda $CE6E48.l		; AF 48 6E CE
	ror $1092.w		; 6E 92 10
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	bpl  64.b		; 10 40
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	ora ($40.b,X)		; 01 40
	php		; 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	tay		; A8
	pei ($39.b)		; D4 39
	bcs -71.b		; B0 B9
	cld		; D8
	plp		; 28
	eor $FE.b,X		; 55 FE
	ora ($A6.b,X)		; 01 A6
	ora $0133.w,Y		; 19 33 01
	bra  33.b		; 80 21
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	rti		; 40

	sec		; 38
	brk $00.b		; 00 00
	rti		; 40

	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	asl $6840.w		; 0E 40 68
	ora $00.b,S		; 03 00
	jsr $0010.w		; 20 10 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	jsr $0300.w		; 20 00 03
	brk $A9.b		; 00 A9
	cpy #$20.b		; C0 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cpy #$0B.b		; C0 0B
	ldy #$97.b		; A0 97
	tsb $C0.b		; 04 C0
	trb $59.b		; 14 59
	plp		; 28
	cpy $0A.b		; C4 0A
	brk $00.b		; 00 00
	tsb $50.b		; 04 50
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($4A.b),Y		; B1 4A
	adc $B7968A.l		; 6F 8A 96 B7
	inc $7879.w		; EE 79 78
	sta $23.b,S		; 83 23
	jmp $48C894.l		; 5C 94 C8 48
	tsb $00.b		; 04 00
	brk $81.b		; 00 81
	ora ($02.b,X)		; 01 02
	bra   0.b		; 80 00
	.db $42, $00		; 42 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bra  12.b		; 80 0C
	bra   0.b		; 80 00
	rol $82.b		; 26 82
	.db $82, $80, $00		; 82 80 00
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $869021.l		; 22 21 90 86
	dey		; 88
	eor $42.b,S		; 43 42
	ldx $06C0.w,Y		; BE C0 06
	iny		; C8
	lsr A		; 4A
	tay		; A8
	.db $82, $30, $00		; 82 30 00
	jsr $0400.w		; 20 00 04
	cop $0A.b		; 02 0A
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	phd		; 0B
	dec $1592.w		; CE 92 15
	lda $F916F1.l		; AF F1 16 F9
	dec A		; 3A
	ora ($1E.b,S),Y		; 13 1E
	sta ($2C.b)		; 92 2C
	bit $FD.b		; 24 FD
	tsb $12.b		; 04 12
	brk $01.b		; 00 01
	.db $82, $C8, $01		; 82 C8 01
	tsb $00.b		; 04 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	stx $0080.w		; 8E 80 00
	brk $00.b		; 00 00
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	brk $41.b		; 00 41
	jsl $002102.l		; 22 02 21 00
	bra   2.b		; 80 02
	ora ($00.b)		; 12 00
	rti		; 40

	brk $80.b		; 00 80
	cop $00.b		; 02 00
	lda $0000.w,Y		; B9 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E5.b		; 00 E5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 09FFFE. Skipping.
	.db $3C		; Opcode 3C overrunning bank boundry at 09FFFF. Skipping.
.ENDS
