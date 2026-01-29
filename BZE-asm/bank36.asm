.BANK 36 SLOT 0
.ORG $0000

.SECTION "Bank36" FORCE

	brk $78.b		; 00 78
	brk $08.b		; 00 08
	eor $5F0806.l,X		; 5F 06 08 5F
	cmp ($1E.b)		; D2 1E
	jsr $CFCD.w		; 20 CD CF
	lda $F0E8.w,X		; BD E8 F0
	cmp $F1.b		; C5 F1
	brk $E8.b		; 00 E8
	rti		; 40

	cmp $FA.b		; C5 FA
	brk $E8.b		; 00 E8
	ora ($C5.b,X)		; 01 C5
	sbc ($00.b),Y		; F1 00
	inx		; E8
	bit $8D.b,X		; 34 8D
	eor $563F.w,X		; 5D 3F 56
	ora ($E8.b,S),Y		; 13 E8
	cpx #$8D.b		; E0 8D
	adc $563F.w		; 6D 3F 56
	ora ($8F.b,S),Y		; 13 8F
	brk $00.b		; 00 00
	sta $8F0100.l		; 8F 00 01 8F
	brk $02.b		; 00 02
	sta $8F0300.l		; 8F 00 03 8F
	brk $F4.b		; 00 F4
	sta $8FF500.l		; 8F 00 F5 8F
	brk $F6.b		; 00 F6
	sta $8FF700.l		; 8F 00 F7 8F
	brk $E0.b		; 00 E0
	cmp $3F00.w		; CD 00 3F
	ldy $3F0B.w,X		; BC 0B 3F
	jmp $02CD08.l		; 5C 08 CD 02
	sbc $FD.b		; E5 FD
	brk $F0.b		; 00 F0
	xce		; FB
	eor $C23F.w		; 4D 3F C2
	ora #$CE.b		; 09 CE
	ora $F3D0.w,X		; 1D D0 F3
	eor $3F0847.l,X		; 5F 47 08 3F
	rep #$09		; C2 09
	cpx $4E.b		; E4 4E
	beq   1.b		; F0 01
	adc $03F0E5.l		; 6F E5 F0 03
	rts		; 60

	sta $F2.b		; 85 F2
	ora $C5.b,S		; 03 C5
	beq   3.b		; F0 03
	sbc $F1.b		; E5 F1
	ora $85.b,S		; 03 85
	sbc ($03.b,S),Y		; F3 03
	cmp $F1.b		; C5 F1
	ora $90.b,S		; 03 90
	rol $FA.b		; 26 FA
	and $37.b,X		; 35 37
	plx		; FA
	eor $41.b,S		; 43 41
	plx		; FA
	mvp $FA,$42		; 44 42 FA
	pha		; 48
	eor [$CD.b]		; 47 CD
	brk $E8.b		; 00 E8
	ora ($C4.b,X)		; 01 C4
	bit $3F.b,X		; 34 3F
	sty $3D0C.w		; 8C 0C 3D
	phd		; 0B
	bit $D0.b,X		; 34 D0
	sed		; F8
	plx		; FA
	and [$35.b],Y		; 37 35
	plx		; FA
	eor ($43.b,X)		; 41 43
	plx		; FA
	.db $42, $44		; 42 44
	plx		; FA
	eor [$48.b]		; 47 48
	plx		; FA
	rol $37.b,X		; 36 37
	plx		; FA
	eor $41.b		; 45 41
	plx		; FA
	lsr $42.b		; 46 42
	plx		; FA
	eor #$47.b		; 49 47
	cmp $E808.w		; CD 08 E8
	ora ($C4.b,X)		; 01 C4
	bit $3F.b,X		; 34 3F
	sty $3D0C.w		; 8C 0C 3D
	phd		; 0B
	bit $D0.b,X		; 34 D0
	sed		; F8
	plx		; FA
	and [$36.b],Y		; 37 36
	plx		; FA
	eor ($45.b,X)		; 41 45
	plx		; FA
	.db $42, $46		; 42 46
	plx		; FA
	eor [$49.b]		; 47 49
	and $690963.l,X		; 3F 63 09 69
	pld		; 2B
	ora $E409F0.l,X		; 1F F0 09 E4
	ora $8D2BC4.l,X		; 1F C4 2B 8D
	adc $563F.w,X		; 7D 3F 56
	ora ($69.b,S),Y		; 13 69
	rol $1A.b		; 26 1A
	beq  69.b		; F0 45
	cpx $1A.b		; E4 1A
	cpy $26.b		; C4 26
	sta $3F6C.w		; 8D 6C 3F
	lsr $13.b,X		; 56 13
	cpx $16.b		; E4 16
	cpy $22.b		; C4 22
	sta $CC2C.w		; 8D 2C CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $E4.b		; 00 E4
	ora [$C4.b],Y		; 17 C4
	and $8D.b,S		; 23 8D
	bit $F2CC.w,X		; 3C CC F2
	brk $C5.b		; 00 C5
	sbc ($00.b,S),Y		; F3 00
	cpx $1B.b		; E4 1B
	cpy $27.b		; C4 27
	sta $CC0D.w		; 8D 0D CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $E4.b		; 00 E4
	asl $2AC4.w,X		; 1E C4 2A
	sta $CC4D.w		; 8D 4D CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $E4.b		; 00 E4
	ora $29C4.w,X		; 1D C4 29
	sta $CC3D.w		; 8D 3D CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $69.b		; 00 69
	and $19.b		; 25 19
	beq  18.b		; F0 12
	cpx $19.b		; E4 19
	cpy $25.b		; C4 25
	sta $CC5C.w		; 8D 5C CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $8D.b		; 00 8D
	phd		; 0B
	brk $DC.b		; 00 DC
	bne  -4.b		; D0 FC
	cpx $18.b		; E4 18
	beq  11.b		; F0 0B
	sta $CC4C.w		; 8D 4C CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $8F.b		; 00 8F
	brk $18.b		; 00 18
	adc #$20.b		; 69 20
	trb $F0.b		; 14 F0
	ora #$E4.b		; 09 E4
	trb $C4.b		; 14 C4
	jsr $0C8D.w		; 20 8D 0C
	and $691356.l,X		; 3F 56 13 69
	and ($15.b,X)		; 21 15
	beq   9.b		; F0 09
	cpx $15.b		; E4 15
	cpy $21.b		; C4 21
	sta $3F1C.w		; 8D 1C 3F
	lsr $13.b,X		; 56 13
	adc $3D3E69.l		; 6F 69 3E 3D
	beq  28.b		; F0 1C
	cpx $3D.b		; E4 3D
	cpy $3E.b		; C4 3E
	trb $1C1C.w		; 1C 1C 1C
	eor $0F8D.w,X		; 5D 8D 0F
	sbc $9A.b,X		; F5 9A
	ora #$3F.b		; 09 3F
	lsr $13.b,X		; 56 13
	and $60DD.w,X		; 3D DD 60
	dey		; 88
	bpl 104.b		; 10 68
	sta $FD03F0.l		; 8F F0 03 FD
	and $39E4EE.l		; 2F EE E4 39
	beq   3.b		; F0 03
	phb		; 8B
	and $E46F.w,Y		; 39 6F E4
	and $1E3FFA.l,X		; 3F FA 3F 1E
	plx		; FA
	dec A		; 3A
	asl $FA.b,X		; 16 FA
	tsa		; 3B
	ora [$FA.b],Y		; 17 FA
	bit $6F1B.w,X		; 3C 1B 6F
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	lda $FEF0DB.l,X		; BF DB F0 FE
	ora [$0C.b]		; 07 0C
	tsb BG34NBA.w		; 0C 0C 21
	pld		; 2B
	pld		; 2B
	ora ($FE.b,S),Y		; 13 FE
	sbc ($F9.b,S),Y		; F3 F9
	bit $33.b,X		; 34 33
	brk $D9.b		; 00 D9
	sbc $01.b		; E5 01
	jsr ($25EB.w,X)		; FC EB 25
	rol $28.b,X		; 36 28
	ora $FEEDF7.l		; 0F F7 ED FE
	bpl -27.b		; 10 E5
	sbc [$00.b],Y		; F7 00
	adc $F7.b		; 65 F7
	brk $D0.b		; 00 D0
	adc $64.b,S		; 63 64
	ora $F0.b,S		; 03 F0
	ora #$C4.b		; 09 C4
	ora $C5.b,S		; 03 C5
	sbc [$00.b],Y		; F7 00
	php		; 08
	brk $D0.b		; 00 D0
	eor [$E5.b],Y		; 57 E5
	inc $00.b,X		; F6 00
	adc $F6.b		; 65 F6
	brk $D0.b		; 00 D0
	sed		; F8
	stz $02.b		; 64 02
	beq  19.b		; F0 13
	cpy $02.b		; C4 02
	cmp $F6.b		; C5 F6
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	asl A		; 0A
	pla		; 68
	rts		; 60

	bcs   6.b		; B0 06
	and $3F0A93.l,X		; 3F 93 0A 3F
	sbc [$0A.b],Y		; F7 0A
	sbc $F5.b		; E5 F5
	brk $65.b		; 00 65
	sbc $00.b,X		; F5 00
	bne  -8.b		; D0 F8
	stz $01.b		; 64 01
	beq  16.b		; F0 10
	cpy $01.b		; C4 01
	cmp $F5.b		; C5 F5
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	ora [$3F.b]		; 07 3F
	sta ($0A.b,S),Y		; 93 0A
	ldy $F73F.w,X		; BC 3F F7
	asl A		; 0A
	sbc $F4.b		; E5 F4
	brk $65.b		; 00 65
	pea $D000.w		; F4 00 D0
	sed		; F8
	stz $00.b		; 64 00
	beq  15.b		; F0 0F
	cpy $00.b		; C4 00
	cmp $F4.b		; C5 F4
	brk $08.b		; 00 08
	brk $F0.b		; 00 F0
	asl $3F.b		; 06 3F
	sta ($0A.b,S),Y		; 93 0A
	and $6F0AF7.l,X		; 3F F7 0A 6F
	pla		; 68
	beq -112.b		; F0 90
	ora $0178.w,X		; 1D 78 01
	cpx #$F0.b		; E0 F0
	php		; 08
	plp		; 28
	ora $40F55D.l		; 0F 5D F5 40
	asl A		; 0A
	cpy $4C.b		; C4 4C
	adc $060201.l		; 6F 01 02 06
	php		; 08
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
.INDEX 8
	sep #$D0		; E2 D0
	tas		; 1B
	sbc $F6.b		; E5 F6
	brk $65.b		; 00 65
	inc $00.b,X		; F6 00
	bne  -8.b		; D0 F8
	cpy $02.b		; C4 02
	cmp $F6.b		; C5 F6
	brk $68.b		; 00 68
.INDEX 8
	sep #$D0		; E2 D0
	rol $008F.w		; 2E 8F 00
	pea $FFE8.w		; F4 E8 FF
	cpy $F1.b		; C4 F1
	eor $68FFC0.l,X		; 5F C0 FF 68
	rol $B0.b		; 26 B0
	jsr $1C9C.w		; 20 9C 1C
	eor $78F5.w,X		; 5D F5 78
	ora ($C4.b,S),Y		; 13 C4
	tsb $3D.b		; 04 3D
	sbc $78.b,X		; F5 78
	ora ($C4.b,S),Y		; 13 C4
	ora $3F.b		; 05 3F
	tsx		; BA
	phd		; 0B
	cmp $E8FF.w		; CD FF E8
	ora ($C4.b,X)		; 01 C4
	bit $8F.b,X		; 34 8F
	brk $37.b		; 00 37
	and $FA0B1E.l,X		; 3F 1E 0B FA
	and [$35.b],Y		; 37 35
	adc $4E0178.l		; 6F 78 01 4E
	bne  15.b		; D0 0F
	pla		; 68
	and [$D0.b]		; 27 D0
	phd		; 0B
	sta $2D4E00.l		; 8F 00 4E 2D
	inx		; E8
	bvc -60.b		; 50 C4
	trb $C4.b		; 14 C4
	ora $AE.b,X		; 15 AE
	cmp $F4.b		; C5 F4
	ora $68.b,S		; 03 68
	bra -112.b		; 80 90
	ora $80.b,S		; 03 80
	tay		; A8
	bra -100.b		; 80 9C
	pla		; 68
	rti		; 40

	bcs  31.b		; B0 1F
	trb $5D1C.w		; 1C 1C 5D
	sbc $D6.b,X		; F5 D6
	ora ($C4.b,S),Y		; 13 C4
	tsb $3D.b		; 04 3D
	sbc $D6.b,X		; F5 D6
	ora ($C4.b,S),Y		; 13 C4
	ora $3D.b		; 05 3D
	sbc $D6.b,X		; F5 D6
	ora ($F0.b,S),Y		; 13 F0
	asl $64.b		; 06 64
	lsr A		; 4A
	bcc  38.b		; 90 26
	cpy $4A.b		; C4 4A
	and $D6F5.w,X		; 3D F5 D6
	ora ($6F.b,S),Y		; 13 6F
	trb $5D1C.w		; 1C 1C 5D
	sbc $D6.b,X		; F5 D6
	trb $C4.b		; 14 C4
	tsb $3D.b		; 04 3D
	sbc $D6.b,X		; F5 D6
	trb $C4.b		; 14 C4
	ora $3D.b		; 05 3D
	sbc $D6.b,X		; F5 D6
	trb $F0.b		; 14 F0
	asl $64.b		; 06 64
	lsr A		; 4A
	bcc   7.b		; 90 07
	cpy $4A.b		; C4 4A
	and $D6F5.w,X		; 3D F5 D6
	trb $6F.b		; 14 6F
	inx		; E8
	bra 111.b		; 80 6F
	php		; 08
	brk $30.b		; 00 30
	inc A		; 1A
	eor $16F5.w,X		; 5D F5 16
	phd		; 0B
	cpy $34.b		; C4 34
	adc $8860.w,X		; 7D 60 88
	ora [$5D.b]		; 07 5D
	plx		; FA
	rol $37.b,X		; 36 37
	and $FA0B1E.l,X		; 3F 1E 0B FA
	and [$36.b],Y		; 37 36
	sbc $F4.b		; E5 F4
	ora $D5.b,S		; 03 D5
	bvc   4.b		; 50 04
	adc $040201.l		; 6F 01 02 04
	php		; 08
	bpl  32.b		; 10 20
	rti		; 40

	bra -115.b		; 80 8D
	brk $F7.b		; 00 F7
	tsb $C4.b		; 04 C4
	asl $3D.b		; 06 3D
	ora #$34.b		; 09 34
	and [$C8.b],Y		; 37 C8
	php		; 08
	bcc   9.b		; 90 09
	plx		; FA
	bit $11.b,X		; 34 11
	cli		; 58
	sbc $112911.l,X		; FF 11 29 11
	and $04F7FC.l,X		; 3F FC F7 04
	cmp $00.b,X		; D5 00
	cop $FC.b		; 02 FC
	sbc [$04.b],Y		; F7 04
	cmp $10.b,X		; D5 10
	cop $FC.b		; 02 FC
	sbc [$04.b],Y		; F7 04
	cmp $40.b,X		; D5 40
	cop $FC.b		; 02 FC
	sbc [$04.b],Y		; F7 04
	cmp $50.b,X		; D5 50
	cop $FC.b		; 02 FC
	sbc [$04.b],Y		; F7 04
	cmp $60.b,X		; D5 60
	cop $FC.b		; 02 FC
	sbc [$04.b],Y		; F7 04
	cmp $70.b,X		; D5 70
	cop $E4.b		; 02 E4
	ora $3464.w,X		; 1D 64 34
	bne   4.b		; D0 04
	inx		; E8
	brk $C4.b		; 00 C4
	ora $353F.w,X		; 1D 3F 35
	tsb $03E8.w		; 0C E8 03
	pei ($C0.b)		; D4 C0
	inx		; E8
	brk $D4.b		; 00 D4
	bne -43.b		; D0 D5
	brk $04.b		; 00 04
	cmp $30.b,X		; D5 30
	tsb $D5.b		; 04 D5
	rti		; 40

	tsb $D5.b		; 04 D5
	bcs   2.b		; B0 02
	cmp $C0.b,X		; D5 C0
	cop $D5.b		; 02 D5
	ldy #$00.b		; A0 00
	cmp $B0.b,X		; D5 B0
	brk $D5.b		; 00 D5
	beq   2.b		; F0 02
	cmp $E0.b,X		; D5 E0
	cop $D4.b		; 02 D4
	bcc -44.b		; 90 D4
	bra -43.b		; 80 D5
	brk $03.b		; 00 03
	cpx $34.b		; E4 34
	pha		; 48
	sbc $C4E324.l,X		; FF 24 E3 C4
	sbc $E4.b,S		; E3 E4
	bit $48.b,X		; 34 48
	sbc $C44124.l,X		; FF 24 41 C4
	eor ($E4.b,X)		; 41 E4
	bit $48.b,X		; 34 48
	sbc $C44224.l,X		; FF 24 42 C4
	.db $42, $E4		; 42 E4
	bit $48.b,X		; 34 48
	sbc $C44724.l,X		; FF 24 47 C4
	eor [$0B.b]		; 47 0B
	bit $8B.b,X		; 34 8B
	asl $F0.b		; 06 F0
	ora $5F.b,S		; 03 5F
	bit $0B.b		; 24 0B
	adc $E806CD.l		; 6F CD 06 E8
	brk $AF.b		; 00 AF
	iny		; C8
	inx		; E8
	bne  -5.b		; D0 FB
	cmp $D500.w		; CD 00 D5
	brk $02.b		; 00 02
	and $00C8.w,X		; 3D C8 00
	bne  -8.b		; D0 F8
	cmp $00.b,X		; D5 00
	ora $3D.b,S		; 03 3D
	iny		; C8
	brk $D0.b		; 00 D0
	sed		; F8
	cmp $00.b,X		; D5 00
	tsb $3D.b		; 04 3D
	iny		; C8
	rts		; 60

	bne  -8.b		; D0 F8
	cmp $F518.w		; CD 18 F5
	trb $FD0C.w		; 1C 0C FD
	inx		; E8
	brk $CC.b		; 00 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $1D.b		; 00 1D
	bne -15.b		; D0 F1
	sta $8F1450.l		; 8F 50 14 8F
	bvc  21.b		; 50 15
	inx		; E8
	brk $C5.b		; 00 C5
	sbc ($03.b)		; F2 03
	inx		; E8
	beq -59.b		; F0 C5
	sbc ($03.b,S),Y		; F3 03
	sta $E43E0F.l		; 8F 0F 3E E4
	inc A		; 1A
	plp		; 28
	ora $C42008.l,X		; 1F 08 20 C4
	inc A		; 1A
	cpx $1A.b		; E4 1A
	plp		; 28
	ora $C46008.l,X		; 1F 08 60 C4
	rol $E8.b		; 26 E8
	rts		; 60

	sta $CC6C.w		; 8D 6C CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $6F.b		; 00 6F
	jmp $3C2C4C.l		; 5C 4C 2C 3C
	ora $3D2D.w		; 0D 2D 3D
	eor $007D.w		; 4D 7D 00
	ora ($10.b,X)		; 01 10
	ora ($20.b),Y		; 11 20
	and ($30.b,X)		; 21 30
	and ($40.b),Y		; 31 40
	eor ($50.b,X)		; 41 50
	eor ($60.b),Y		; 51 60
	adc ($70.b,X)		; 61 70
	adc ($6D.b),Y		; 71 6D
	sbc $50.b,X		; F5 50
	cop $68.b		; 02 68
	bmi -112.b		; 30 90
	asl $80D5.w,X		; 1E D5 80
	cop $E8.b		; 02 E8
	sbc $0290D5.l,X		; FF D5 90 02
	inx		; E8
	cpx #$D5.b		; E0 D5
	ldy #$02.b		; A0 02
	inx		; E8
	clv		; B8
	cmp $D0.b,X		; D5 D0
	cop $E8.b		; 02 E8
	cop $D5.b		; 02 D5
	jsr $E804.w		; 20 04 E8
	ora [$D5.b],Y		; 17 D5
	bpl   4.b		; 10 04
	inc $8D6F.w		; EE 6F 8D
	asl $CF.b		; 06 CF
	phx		; DA
	asl A		; 0A
	rts		; 60

	tya		; 98
	brk $0A.b		; 00 0A
	tya		; 98
	and [$0B.b],Y		; 37 0B
	sbc [$0A.b],Y		; F7 0A
	cmp $80.b,X		; D5 80
	cop $FC.b		; 02 FC
	sbc [$0A.b],Y		; F7 0A
	cmp $90.b,X		; D5 90
	cop $FC.b		; 02 FC
	sbc [$0A.b],Y		; F7 0A
	cmp $A0.b,X		; D5 A0
	cop $FC.b		; 02 FC
	sbc [$0A.b],Y		; F7 0A
	cmp $D0.b,X		; D5 D0
	cop $FC.b		; 02 FC
	sbc [$0A.b],Y		; F7 0A
	cmp $20.b,X		; D5 20
	tsb $FC.b		; 04 FC
	sbc [$0A.b],Y		; F7 0A
	cmp $10.b,X		; D5 10
	tsb $EE.b		; 04 EE
	adc $2437E4.l		; 6F E4 37 24
	bit $D0.b,X		; 34 D0
	ora ($6F.b,X)		; 01 6F
	txy		; 9B
	cpy #$D0.b		; C0 D0
	phd		; 0B
	pea $F0D0.w		; F4 D0 F0
	tsb $9B.b		; 04 9B
	bne  47.b		; D0 2F
	ora $3F.b,S		; 03 3F
	lda $8E3F0C.l		; AF 0C 3F 8E
	ora ($3F.b),Y		; 11 3F
	ora $3F12.w,Y		; 19 12 3F
	tda		; 7B
	ora ($3F.b)		; 12 3F
	ldy $12.b,X		; B4 12
	adc $0200F5.l		; 6F F5 00 02
	cpy $08.b		; C4 08
	sbc $10.b,X		; F5 10
	cop $C4.b		; 02 C4
	ora #$8D.b		; 09 8D
	brk $F7.b		; 00 F7
	php		; 08
	pla		; 68
	cmp $6865F0.l,X		; DF F0 65 68
	cpx #$90.b		; E0 90
	ora $5F.b,S		; 03 5F
	phk		; 4B
	asl $D068.w		; 0E 68 D0
	bcc  32.b		; 90 20
	adc $A880.w		; 6D 80 A8
	bne  28.b		; D0 1C
	trb $F6FD.w		; 1C FD F6
	ora $50D50E.l		; 0F 0E D5 50
	cop $3F.b		; 02 3F
	and $0C.b,X		; 35 0C
	inc $11.b,X		; F6 11
	asl $30D5.w		; 0E D5 30
	tsb $F6.b		; 04 F6
	ora ($0E.b)		; 12 0E
	cmp $40.b,X		; D5 40
	tsb $F6.b		; 04 F6
	bpl  14.b		; 10 0E
	inc $A880.w		; EE 80 A8
	stz $60.b,X		; 74 60
	sta $40.b,X		; 95 40
	cop $C4.b		; 02 C4
	sec		; 38
	iny		; C8
	php		; 08
	bcs   8.b		; B0 08
	cpx $36.b		; E4 36
	bit $34.b		; 24 34
	beq   2.b		; F0 02
	and $E3E411.l		; 2F 11 E4 E3
	bit $34.b		; 24 34
	bne  11.b		; D0 0B
	ora #$34.b		; 09 34
	clc		; 18
	cpx $34.b		; E4 34
	pha		; 48
	sbc $C41924.l,X		; FF 24 19 C4
	ora $50F5.w,Y		; 19 F5 50
	ora $D5.b,S		; 03 D5
	bpl   3.b		; 10 03
	sbc $30.b,X		; F5 30
	ora $08.b,S		; 03 08
	bra -43.b		; 80 D5
	bmi   3.b		; 30 03
	sbc $20.b,X		; F5 20
	ora $D5.b,S		; 03 D5
	rti		; 40

	ora $FC.b,S		; 03 FC
	sbc [$08.b],Y		; F7 08
	pla		; 68
	sbc $0CD0.w,X		; FD D0 0C
	jsr ($08F7.w,X)		; FC F7 08
	pei ($C0.b)		; D4 C0
	jsr ($08F7.w,X)		; FC F7 08
	pei ($D0.b)		; D4 D0
	and $746811.l		; 2F 11 68 74
	bcc   9.b		; 90 09
	beq   7.b		; F0 07
	pea $D450.w		; F4 50 D4
	cpy #$DC.b		; C0 DC
	and $C0D404.l		; 2F 04 D4 C0
	pei ($50.b)		; D4 50
	jsr ($60DD.w,X)		; FC DD 60
	sty $08.b		; 84 08
	cmp $00.b,X		; D5 00
	cop $E4.b		; 02 E4
	ora #$88.b		; 09 88
	brk $D5.b		; 00 D5
	bpl   2.b		; 10 02
	sbc [$08.b],Y		; F7 08
	pla		; 68
	sbc $D0.b,X		; F5 D0
	ora $09.b		; 05 09
	bit $E2.b,X		; 34 E2
	and $34FA09.l		; 2F 09 FA 34
	ora ($58.b),Y		; 11 58
	sbc $112911.l,X		; FF 11 29 11
.ACCU 8
	sep #$6D		; E2 6D
	cpx $38.b		; E4 38
	cpy $E6.b		; C4 E6
	sbc $00.b,X		; F5 00
	tsb $C4.b		; 04 C4
	sbc [$8D.b]		; E7 8D
	brk $E4.b		; 00 E4
	inc $80.b		; E6 80
	tay		; A8
	bit $B0.b,X		; 34 B0
	cop $2F.b		; 02 2F
	tsb $7A.b		; 04 7A
	sbc [$DA.b]		; E7 DA
	sbc [$4D.b]		; E7 4D
	cpx $E6.b		; E4 E6
	trb $008D.w		; 1C 8D 00
	cmp $9E18.w		; CD 18 9E
	eor $F6F6.w,X		; 5D F6 F6
	ora $0BC4.w		; 0D C4 0B
	inc $F5.b,X		; F6 F5
	ora $0AC4.w		; 0D C4 0A
	inc $F8.b,X		; F6 F8
	ora $F62D.w		; 0D 2D F6
	sbc [$0D.b],Y		; F7 0D
	inc $0A9A.w		; EE 9A 0A
	xba		; EB
	sbc [$CF.b]		; E7 CF
	cmp $008D.w,X		; DD 8D 00
	ply		; 7A
	asl A		; 0A
	wai		; CB
	phd		; 0B
	trb $0B2B.w		; 1C 2B 0B
	cpy $0A.b		; C4 0A
	and $0B4B04.l		; 2F 04 4B 0B
	jmp ($C83D.w,X)		; 7C 3D C8
	asl $D0.b		; 06 D0
	sed		; F8
	cpy $0A.b		; C4 0A
	dec $10F5.w		; CE F5 10
	tsb $EB.b		; 04 EB
	phd		; 0B
	cmp $F50CDA.l		; CF DA 0C F5
	bpl   4.b		; 10 04
	xba		; EB
	asl A		; 0A
	cmp $20F56D.l		; CF 6D F5 20
	tsb $EB.b		; 04 EB
	asl A		; 0A
	cmp $DA0C7A.l		; CF 7A 0C DA
	tsb $20F5.w		; 0C F5 20
	tsb $EB.b		; 04 EB
	phd		; 0B
	cmp $7AAEFD.l		; CF FD AE 7A
	tsb $0CDA.w		; 0C DA 0C
	cpx $0C.b		; E4 0C
	cpy $0B.b		; C4 0B
	cmp $B0.b,X		; D5 B0
	cop $E4.b		; 02 E4
	ora $0CC4.w		; 0D C4 0C
	cmp $C0.b,X		; D5 C0
	cop $EE.b		; 02 EE
	adc $DE085F.l		; 6F 5F 08 DE
	php		; 08
	adc $09.b		; 65 09
	pea $8C09.w		; F4 09 8C
	asl A		; 0A
	bit $D60B.w		; 2C 0B D6
	phd		; 0B
	phb		; 8B
	tsb $0D4A.w		; 0C 4A 0D
	trb $0E.b		; 14 0E
	nop		; EA
	asl $0FCD.w		; 0E CD 0F
	ldx $1310.w,Y		; BE 10 13
	tya		; 98
	brk $00.b		; 00 00
	ora ($9A.b),Y		; 11 9A
	cpx #$E0.b		; E0 E0
	ora ($98.b)		; 12 98
	cpx #$C0.b		; E0 C0
	ora $A2.b,X		; 15 A2
	bne -64.b		; D0 C0
	trb $96.b		; 14 96
	brk $C0.b		; 00 C0
	trb $91.b		; 14 91
	brk $00.b		; 00 00
	trb $8C.b		; 14 8C
	cpy #$00.b		; C0 00
	ora $99.b,X		; 15 99
	cpx #$28.b		; E0 28
	ora $9D.b,X		; 15 9D
	brk $08.b		; 00 08
	ora $B2.b,X		; 15 B2
	cpy #$E0.b		; C0 E0
	trb $A8.b		; 14 A8
	jsr $14E0.w		; 20 E0 14
	tya		; 98
	brk $00.b		; 00 00
	trb $88.b		; 14 88
	cpx #$20.b		; E0 20
	ora ($A8.b)		; 12 A8
	jsr $12E0.w		; 20 E0 12
	dey		; 88
	cpx #$20.b		; E0 20
	bra -88.b		; 80 A8
	cpx #$1C.b		; E0 1C
	eor $1F5D.w		; 4D 5D 1F
	mvn $53,$0E		; 54 0E 53
	ora $870F63.l		; 0F 63 0F 87
	ora $D80FB1.l		; 0F B1 0F D8
	ora $120FF2.l		; 0F F2 0F 12
	bpl  28.b		; 10 1C
	bpl  67.b		; 10 43
	bpl  81.b		; 10 51
	bpl -124.b		; 10 84
	bpl -109.b		; 10 93
	bpl   1.b		; 10 01
	ora ($21.b),Y		; 11 21
	ora ($43.b),Y		; 11 43
	ora ($37.b),Y		; 11 37
	ora ($8E.b),Y		; 11 8E
	ora ($DE.b),Y		; 11 DE
	asl $0EE3.w		; 0E E3 0E
	cmp $2F0E.w		; CD 0E 2F
	ora ($99.b),Y		; 11 99
	asl $0F14.w		; 0E 14 0F
	rol A		; 2A
	ora $E80F42.l		; 0F 42 0F E8
	asl $0F05.w		; 0E 05 0F
	and $8E10.w		; 2D 10 8E
	asl $FCCE.w		; 0E CE FC
	sbc [$08.b],Y		; F7 08
	cmp $00.b,X		; D5 00
	tsb $FC.b		; 04 FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	jsr ($08F7.w,X)		; FC F7 08
	pla		; 68
	stz $90.b,X		; 74 90
	ora $F0.b		; 05 F0
	ora $F4.b,S		; 03 F4
	bvc -36.b		; 50 DC
	pei ($C0.b)		; D4 C0
	pei ($50.b)		; D4 50
	jsr ($60DD.w,X)		; FC DD 60
	sty $08.b		; 84 08
	cmp $00.b,X		; D5 00
	cop $E4.b		; 02 E4
	ora #$88.b		; 09 88
	brk $D5.b		; 00 D5
	bpl   2.b		; 10 02
	sbc [$08.b],Y		; F7 08
	pla		; 68
	sbc $D0.b,X		; F5 D0
	tsb $09.b		; 04 09
	bit $E2.b,X		; 34 E2
	adc $1134FA.l		; 6F FA 34 11
	cli		; 58
	sbc $112911.l,X		; FF 11 29 11
.ACCU 8
	sep #$6F		; E2 6F
	dec $F7FC.w		; CE FC F7
	php		; 08
	cmp $F2.b		; C5 F2
	ora $FC.b,S		; 03 FC
	sbc [$08.b],Y		; F7 08
	cmp $F3.b		; C5 F3
	ora $FC.b,S		; 03 FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	jsr ($BB5F.w,X)		; FC 5F BB
	tsb $FCCE.w		; 0C CE FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	ora #$34.b		; 09 34
	ora $E4FC.w,X		; 1D FC E4
	inc A		; 1A
	plp		; 28
	cpx #$17.b		; E0 17
	php		; 08
	cpy $1A.b		; C4 1A
	jsr ($08F7.w,X)		; FC F7 08
	cmp $90.b,X		; D5 90
	cop $FC.b		; 02 FC
	sbc [$08.b],Y		; F7 08
	cmp $A0.b,X		; D5 A0
	cop $FC.b		; 02 FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	cpx $1A.b		; E4 1A
	plp		; 28
	cpx #$C4.b		; E0 C4
	inc A		; 1A
	inx		; E8
	brk $C4.b		; 00 C4
	ora $5FFC.w,X		; 1D FC 5F
	tyx		; BB
	tsb $E4CE.w		; 0C CE E4
	bit $04.b,X		; 34 04
	sbc $C4.b,S		; E3 C4
	sbc $09.b,S		; E3 09
	bit $18.b,X		; 34 18
	cpx $34.b		; E4 34
	pha		; 48
	sbc $C41924.l,X		; FF 24 19 C4
	ora $5FFC.w,Y		; 19 FC 5F
	tyx		; BB
	tsb $E4CE.w		; 0C CE E4
	bit $48.b,X		; 34 48
	sbc $C4E324.l,X		; FF 24 E3 C4
	sbc $09.b,S		; E3 09
	bit $19.b,X		; 34 19
	cpx $34.b		; E4 34
	pha		; 48
	sbc $C41824.l,X		; FF 24 18 C4
	clc		; 18
	jsr ($BB5F.w,X)		; FC 5F BB
	tsb $FCCE.w		; 0C CE FC
	sbc [$08.b],Y		; F7 08
	cmp $90.b,X		; D5 90
	cop $FC.b		; 02 FC
	sbc [$08.b],Y		; F7 08
	cmp $A0.b,X		; D5 A0
	cop $FC.b		; 02 FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	jsr ($08F7.w,X)		; FC F7 08
	cmp $00.b,X		; D5 00
	cop $FC.b		; 02 FC
	sbc [$08.b],Y		; F7 08
	cmp $10.b,X		; D5 10
	cop $5F.b		; 02 5F
	lda $FCCE0C.l		; AF 0C CE FC
	sbc [$08.b],Y		; F7 08
	cmp $00.b,X		; D5 00
	cop $FC.b		; 02 FC
	sbc [$08.b],Y		; F7 08
	cmp $10.b,X		; D5 10
	cop $FC.b		; 02 FC
	cmp $8460.w,X		; DD 60 84
	php		; 08
	cpy $08.b		; C4 08
	tya		; 98
	brk $09.b		; 00 09
	cpx $08.b		; E4 08
	cmp $20.b,X		; D5 20
	cop $E4.b		; 02 E4
	ora #$D5.b		; 09 D5
	bmi   2.b		; 30 02
	eor $CE0CAF.l,X		; 5F AF 0C CE
	sbc $20.b,X		; F5 20
	cop $68.b		; 02 68
	brk $D0.b		; 00 D0
	phd		; 0B
	sbc $30.b,X		; F5 30
	cop $68.b		; 02 68
	brk $D0.b		; 00 D0
	tsb $FC.b		; 04 FC
	eor $F50CBB.l,X		; 5F BB 0C F5
	jsr $D502.w		; 20 02 D5
	brk $02.b		; 00 02
	sbc $30.b,X		; F5 30
	cop $D5.b		; 02 D5
	bpl   2.b		; 10 02
	inx		; E8
	brk $D5.b		; 00 D5
	jsr $D502.w		; 20 02 D5
	bmi   2.b		; 30 02
	eor $CE0CAF.l,X		; 5F AF 0C CE
	jsr ($08F7.w,X)		; FC F7 08
	cpy $3D.b		; C4 3D
	jsr ($08F7.w,X)		; FC F7 08
	cpy $1F.b		; C4 1F
	jsr ($08F7.w,X)		; FC F7 08
	cpy $3A.b		; C4 3A
	jsr ($08F7.w,X)		; FC F7 08
	cpy $3B.b		; C4 3B
	jsr ($08F7.w,X)		; FC F7 08
	cpy $3C.b		; C4 3C
	cpx $1A.b		; E4 1A
	plp		; 28
	cmp $8F1AC4.l,X		; DF C4 1A 8F
	ora $39.b		; 05 39
	jsr ($BB5F.w,X)		; FC 5F BB
	tsb $C8CE.w		; 0C CE C8
	php		; 08
	bcs  14.b		; B0 0E
	cpx $34.b		; E4 34
	bit $36.b		; 24 36
	beq   5.b		; F0 05
	ora #$34.b		; 09 34
	phk		; 4B
	and $340906.l		; 2F 06 09 34
	phk		; 4B
	ora #$34.b		; 09 34
	and $BB5FFC.l,X		; 3F FC 5F BB
	tsb $FACE.w		; 0C CE FA
	bit $11.b,X		; 34 11
	cli		; 58
	sbc $08C811.l,X		; FF 11 C8 08
	bcs  14.b		; B0 0E
	cpx $34.b		; E4 34
	bit $36.b		; 24 36
	beq   5.b		; F0 05
	and #$11.b		; 29 11
	phk		; 4B
	and $112906.l		; 2F 06 29 11
	phk		; 4B
	and #$11.b		; 29 11
	and $BB5FFC.l,X		; 3F FC 5F BB
	tsb $E4CE.w		; 0C CE E4
	bit $48.b,X		; 34 48
	sbc $C43724.l,X		; FF 24 37 C4
	and [$6F.b],Y		; 37 6F
	dec $F7FC.w		; CE FC F7
	php		; 08
	cmp $60.b,X		; D5 60
	cop $FC.b		; 02 FC
	sbc [$08.b],Y		; F7 08
	cmp $70.b,X		; D5 70
	cop $FC.b		; 02 FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	sbc $50.b,X		; F5 50
	tsb $10.b		; 04 10
	tsb $04E8.w		; 0C E8 04
	rts		; 60

	sta $50.b,X		; 95 50
	cop $D5.b		; 02 D5
	bvc   2.b		; 50 02
	and $FC0C35.l,X		; 3F 35 0C FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	jsr ($08F7.w,X)		; FC F7 08
	cmp $50.b,X		; D5 50
	cop $3F.b		; 02 3F
	and $0C.b,X		; 35 0C
	jsr ($BB5F.w,X)		; FC 5F BB
	tsb $4DCE.w		; 0C CE 4D
	jsr ($08F7.w,X)		; FC F7 08
	sta $6010D8.l,X		; 9F D8 10 60
	sty $10.b		; 84 10
	eor $A0F4.w,X		; 5D F4 A0
	beq  12.b		; F0 0C
	jsr ($A09B.w,X)		; FC 9B A0
	bne  14.b		; D0 0E
	jsr ($FCFC.w,X)		; FC FC FC
	dec $BB5F.w		; CE 5F BB
	tsb $F7FC.w		; 0C FC F7
	php		; 08
	pei ($A0.b)		; D4 A0
	txy		; 9B
	ldy #$CE.b		; A0 CE
	jsr ($08F7.w,X)		; FC F7 08
	cmp $00.b,X		; D5 00
	cop $FC.b		; 02 FC
	sbc [$08.b],Y		; F7 08
	cmp $10.b,X		; D5 10
	cop $5F.b		; 02 5F
	lda $FCCE0C.l		; AF 0C CE FC
	sbc [$08.b],Y		; F7 08
	rts		; 60

	sta $40.b,X		; 95 40
	cop $D5.b		; 02 D5
	rti		; 40

	cop $FC.b		; 02 FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	jsr ($08F7.w,X)		; FC F7 08
	pei ($60.b)		; D4 60
	jsr ($08F7.w,X)		; FC F7 08
	cmp $F0.b,X		; D5 F0
	cop $FC.b		; 02 FC
	sbc [$08.b],Y		; F7 08
	bra -88.b		; 80 A8
	stz $60.b,X		; 74 60
	sta $40.b,X		; 95 40
	cop $C4.b		; 02 C4
	sec		; 38
	cpy $40.b		; C4 40
	and $FA0D6D.l,X		; 3F 6D 0D FA
	phd		; 0B
	asl $0CFA.w		; 0E FA 0C
	ora $BB3FFC.l		; 0F FC 3F BB
	tsb $38E4.w		; 0C E4 38
	cmp $00.b,X		; D5 00
	ora $F5.b,S		; 03 F5
	beq   2.b		; F0 02
	cpy $11.b		; C4 11
	cpx $40.b		; E4 40
	adc $00.b,X		; 75 00
	ora $90.b,S		; 03 90
	asl $E4.b,X		; 16 E4
	asl $B0D5.w		; 0E D5 B0
	cop $E4.b		; 02 E4
	ora $02C0D5.l		; 0F D5 C0 02
	cpx $34.b		; E4 34
	tsb $42.b		; 04 42
	cpy $42.b		; C4 42
	tsx		; BA
	asl $0B9A.w		; 0E 9A 0B
	and $0EE414.l		; 2F 14 E4 0E
	cmp $B0.b,X		; D5 B0
	cop $E4.b		; 02 E4
	ora $02C0D5.l		; 0F D5 C0 02
	cpx $34.b		; E4 34
	tsb $41.b		; 04 41
	cpy $41.b		; C4 41
	tsx		; BA
	phd		; 0B
	txs		; 9A
	asl $F84D.w		; 0E 4D F8
	ora ($9E.b),Y		; 11 9E
	dec $80D4.w		; CE D4 80
	cmp $E0D5.w,X		; DD D5 E0
	cop $6F.b		; 02 6F
	dec $F7FC.w		; CE FC F7
	php		; 08
	cmp $10.b,X		; D5 10
	ora $D5.b,S		; 03 D5
	bvc   3.b		; 50 03
	jsr ($08F7.w,X)		; FC F7 08
	cmp $20.b,X		; D5 20
	ora $FC.b,S		; 03 FC
	sbc [$08.b],Y		; F7 08
	cmp $30.b,X		; D5 30
	ora $FA.b,S		; 03 FA
	bit $11.b,X		; 34 11
	ora #$11.b		; 09 11
	eor [$FC.b]		; 47 FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	plx		; FA
	bit $11.b,X		; 34 11
	cli		; 58
	sbc $112911.l,X		; FF 11 29 11
	eor [$FC.b]		; 47 FC
	eor $CE0CBB.l,X		; 5F BB 0C CE
	sta $FC4F01.l		; 8F 01 4F FC
	eor $8F0CBB.l,X		; 5F BB 0C 8F
	ora ($4E.b,X)		; 01 4E
	sta $E84F00.l		; 8F 00 4F E8
	brk $C4.b		; 00 C4
	trb $C4.b		; 14 C4
	ora $CE.b,X		; 15 CE
	ora #$34.b		; 09 34
	ora $34FA.w,Y		; 19 FA 34
	ora ($58.b),Y		; 11 58
	sbc $112911.l,X		; FF 11 29 11
	rol $29.b,X		; 36 29
	ora ($37.b),Y		; 11 37
	plx		; FA
	bit $11.b,X		; 34 11
	cli		; 58
	sbc $112911.l,X		; FF 11 29 11
	eor [$8F.b]		; 47 8F
	brk $4A.b		; 00 4A
	and #$11.b		; 29 11
	and $244BE4.l,X		; 3F E4 4B 24
	bit $C4.b,X		; 34 C4
	and $3909.w,Y		; 39 09 39
	and $39058F.l,X		; 3F 8F 05 39
	sta $E44F00.l		; 8F 00 4F E4
	ora $3464.w,X		; 1D 64 34
	bne   4.b		; D0 04
	inx		; E8
	brk $C4.b		; 00 C4
	ora $606F.w,X		; 1D 6F 60
	bit #$11.b		; 89 11
	php		; 08
	tya		; 98
	brk $09.b		; 00 09
	cpx $08.b		; E4 08
	cmp $00.b,X		; D5 00
	cop $E4.b		; 02 E4
	ora #$D5.b		; 09 D5
	bpl   2.b		; 10 02
	adc $2441E4.l		; 6F E4 41 24
	bit $D0.b,X		; 34 D0
	ora [$E4.b]		; 07 E4
	.db $42, $24		; 42 24
	bit $D0.b,X		; 34 D0
	and [$6F.b],Y		; 37 6F
	pea $F060.w		; F4 60 F0
	ora $9B.b,S		; 03 9B
	rts		; 60

	adc $02F0F5.l		; 6F F5 F0 02
	bne  10.b		; D0 0A
	plx		; FA
	eor ($11.b,X)		; 41 11
	and $FA1208.l,X		; 3F 08 12 FA
	ora ($41.b),Y		; 11 41
	adc $02F0F5.l		; 6F F5 F0 02
	stz $F0D5.w		; 9C D5 F0
	cop $60.b		; 02 60
	sbc $E0.b,X		; F5 E0
	cop $94.b		; 02 94
	bcc -44.b		; 90 D4
	bcc -12.b		; 90 F4
	bra -107.b		; 80 95
	bcs   2.b		; B0 02
	cmp $B0.b,X		; D5 B0
	cop $E8.b		; 02 E8
	brk $95.b		; 00 95
	cpy #$02.b		; C0 02
	cmp $C0.b,X		; D5 C0
	cop $6F.b		; 02 6F
	pea $F060.w		; F4 60 F0
	ora $9B.b,S		; 03 9B
	rts		; 60

	adc $02F0F5.l		; 6F F5 F0 02
	bne  10.b		; D0 0A
	plx		; FA
	.db $42, $11		; 42 11
	and $FA1208.l,X		; 3F 08 12 FA
	ora ($42.b),Y		; 11 42
	adc $02F0F5.l		; 6F F5 F0 02
	stz $F0D5.w		; 9C D5 F0
	cop $60.b		; 02 60
	sbc $E0.b,X		; F5 E0
	cop $94.b		; 02 94
	bcc -19.b		; 90 ED
	pei ($90.b)		; D4 90
	sbc $B0.b,X		; F5 B0
	cop $B4.b		; 02 B4
	bra -43.b		; 80 D5
	bcs   2.b		; B0 02
	sbc $C0.b,X		; F5 C0
	cop $A8.b		; 02 A8
	brk $D5.b		; 00 D5
	cpy #$02.b		; C0 02
	adc $4834E4.l		; 6F E4 34 48
	sbc $C41124.l,X		; FF 24 11 C4
	ora ($F5.b),Y		; 11 F5
	brk $03.b		; 00 03
	cpy $38.b		; C4 38
	and $6F0D6D.l,X		; 3F 6D 0D 6F
	plx		; FA
	bit $11.b,X		; 34 11
	and #$47.b		; 29 47
	ora ($D0.b),Y		; 11 D0
	ora ($6F.b,X)		; 01 6F
	sbc $10.b,X		; F5 10
	ora $F0.b,S		; 03 F0
	ora $9C.b		; 05 9C
	cmp $10.b,X		; D5 10
	ora $6F.b,S		; 03 6F
	sbc $40.b,X		; F5 40
	ora $D0.b,S		; 03 D0
	phd		; 0B
	sbc $30.b,X		; F5 30
	ora $48.b,S		; 03 48
	bra -43.b		; 80 D5
	bmi   3.b		; 30 03
	sbc $20.b,X		; F5 20
	ora $9C.b,S		; 03 9C
	cmp $40.b,X		; D5 40
	ora $FA.b,S		; 03 FA
	bit $11.b,X		; 34 11
	and #$41.b		; 29 41
	ora ($D0.b),Y		; 11 D0
	and ($FA.b)		; 32 FA
	bit $11.b,X		; 34 11
	and #$42.b		; 29 42
	ora ($D0.b),Y		; 11 D0
	rol A		; 2A
	sbc $30.b,X		; F5 30
	ora $10.b,S		; 03 10
	ora ($28.b,S),Y		; 13 28
	adc $B09560.l,X		; 7F 60 95 B0
	cop $D5.b		; 02 D5
	bcs   2.b		; B0 02
	inx		; E8
	brk $95.b		; 00 95
	cpy #$02.b		; C0 02
	cmp $C0.b,X		; D5 C0
	cop $2F.b		; 02 2F
	ora ($F5.b)		; 12 F5
	bcs   2.b		; B0 02
	bra -75.b		; 80 B5
	bmi   3.b		; 30 03
	cmp $B0.b,X		; D5 B0
	cop $F5.b		; 02 F5
	cpy #$02.b		; C0 02
	tay		; A8
	brk $D5.b		; 00 D5
	cpy #$02.b		; C0 02
	adc $F04CE4.l		; 6F E4 4C F0
	and ($E4.b),Y		; 31 E4
	eor $2DD0.w		; 4D D0 2D
	plx		; FA
	jmp $E44D.w		; 4C 4D E4
	trb $F0.b		; 14 F0
	cop $8B.b		; 02 8B
	trb $E4.b		; 14 E4
	ora $F0.b,X		; 15 F0
	cop $8B.b		; 02 8B
	ora $E4.b,X		; 15 E4
	dec A		; 3A
	beq   2.b		; F0 02
	phb		; 8B
	dec A		; 3A
	cpx $3B.b		; E4 3B
	beq   2.b		; F0 02
	phb		; 8B
	tsa		; 3B
	cpx $14.b		; E4 14
	tsb $15.b		; 04 15
	bne  12.b		; D0 0C
	cpx $3A.b		; E4 3A
	tsb $3B.b		; 04 3B
	bne   6.b		; D0 06
	sta $3F4C00.l		; 8F 00 4C 3F
	tsx		; BA
	phd		; 0B
	phb		; 8B
	eor $6F6F.w		; 4D 6F 6F
	pea $D0D0.w		; F4 D0 D0
	bmi -12.b		; 30 F4
	cpy #$68.b		; C0 68
	ora ($D0.b,X)		; 01 D0
	rol A		; 2A
	cpx $E2.b		; E4 E2
	bit $34.b		; 24 34
	bne  36.b		; D0 24
	cpx $E3.b		; E4 E3
	bit $34.b		; 24 34
	bne  30.b		; D0 1E
	plx		; FA
	bit $11.b,X		; 34 11
	cli		; 58
	sbc $112911.l,X		; FF 11 29 11
	eor ($29.b,X)		; 41 29
	ora ($42.b),Y		; 11 42
	iny		; C8
	php		; 08
	bcs   8.b		; B0 08
	cpx $36.b		; E4 36
	bit $34.b		; 24 34
	beq   2.b		; F0 02
	and $112963.l		; 2F 63 29 11
	clc		; 18
	ora #$34.b		; 09 34
	ora $08C8.w,Y		; 19 C8 08
	bcs   8.b		; B0 08
	cpx $36.b		; E4 36
	bit $34.b		; 24 34
	beq   2.b		; F0 02
	and $46F551.l		; 2F 51 F5 46
	ora ($FD.b,S),Y		; 13 FD
	sbc $60.b,X		; F5 60
	cop $60.b		; 02 60
	sta $30.b,X		; 95 30
	tsb $CC.b		; 04 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $FC.b		; 00 FC
	sbc $70.b,X		; F5 70
	cop $60.b		; 02 60
	sta $40.b,X		; 95 40
	tsb $CC.b		; 04 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $FC.b		; 00 FC
	sbc $B0.b,X		; F5 B0
	cop $CC.b		; 02 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $FC.b		; 00 FC
	sbc $C0.b,X		; F5 C0
	cop $CC.b		; 02 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $FC.b		; 00 FC
	sbc $80.b,X		; F5 80
	cop $CC.b		; 02 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $FC.b		; 00 FC
	sbc $90.b,X		; F5 90
	cop $CC.b		; 02 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $FC.b		; 00 FC
	sbc $A0.b,X		; F5 A0
	cop $CC.b		; 02 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $6F.b		; 00 6F
	brk $10.b		; 00 10
	jsr $4030.w		; 20 30 40
	bvc  96.b		; 50 60
	bvs   0.b		; 70 00
	bpl  32.b		; 10 20
	bmi  64.b		; 30 40
	bvc  96.b		; 50 60
	bvs -52.b		; 70 CC
	sbc ($00.b)		; F2 00
	cmp $F3.b		; C5 F3
	brk $6F.b		; 00 6F
	cpy $00F2.w		; CC F2 00
	sbc $F3.b		; E5 F3
	brk $6F.b		; 00 6F
	sei		; 78
	ora ($78.b,S),Y		; 13 78
	ora ($78.b,S),Y		; 13 78
	ora ($78.b,S),Y		; 13 78
	ora ($78.b,S),Y		; 13 78
	ora ($78.b,S),Y		; 13 78
	ora ($78.b,S),Y		; 13 78
	ora ($78.b,S),Y		; 13 78
	ora ($78.b,S),Y		; 13 78
	ora ($78.b,S),Y		; 13 78
	ora ($52.b,S),Y		; 13 52
	ora $00.b,X		; 15 00
	plp		; 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	brk $28.b		; 00 28
	sty $15.b		; 84 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	eor ($15.b)		; 52 15
	stz $0015.w,X		; 9E 15 00
	brk $D0.b		; 00 D0
	ora $00.b,X		; 15 00
	cop $EC.b		; 02 EC
	ora $00.b,X		; 15 00
	cop $07.b		; 02 07
	asl $00.b,X		; 16 00
	cop $12.b		; 02 12
	asl $00.b,X		; 16 00
	cop $2D.b		; 02 2D
	asl $00.b,X		; 16 00
	cop $54.b		; 02 54
	asl $00.b,X		; 16 00
	cop $98.b		; 02 98
	asl $00.b,X		; 16 00
	cop $B5.b		; 02 B5
	asl $00.b,X		; 16 00
	cop $D8.b		; 02 D8
	asl $00.b,X		; 16 00
	cop $F3.b		; 02 F3
	asl $00.b,X		; 16 00
	asl $00.b		; 06 00
	ora [$00.b],Y		; 17 00
	asl $25.b		; 06 25
	ora [$00.b],Y		; 17 00
	cop $39.b		; 02 39
	ora [$00.b],Y		; 17 00
	cop $5E.b		; 02 5E
	ora [$01.b],Y		; 17 01
	ora ($79.b,X)		; 01 79
	ora [$01.b],Y		; 17 01
	ora ($B8.b,X)		; 01 B8
	ora [$01.b],Y		; 17 01
	ora ($DA.b,X)		; 01 DA
	ora [$02.b],Y		; 17 02
	ora ($15.b,X)		; 01 15
	clc		; 18
	brk $02.b		; 00 02
	and ($18.b),Y		; 31 18
	brk $02.b		; 00 02
	lsr $18.b		; 46 18
	brk $02.b		; 00 02
	adc $0018.w,X		; 7D 18 00
	cop $A0.b		; 02 A0
	clc		; 18
	brk $02.b		; 00 02
.INDEX 8
	sep #$18		; E2 18
	brk $02.b		; 00 02
	sbc $0018.w,X		; FD 18 00
	cop $1C.b		; 02 1C
	ora $0200.w,Y		; 19 00 02
	bit $19.b,X		; 34 19
	brk $02.b		; 00 02
	bra  25.b		; 80 19
	brk $00.b		; 00 00
	lda [$19.b],Y		; B7 19
	brk $04.b		; 00 04
	cmp ($19.b)		; D2 19
	brk $02.b		; 00 02
	sbc $020019.l		; EF 19 00 02
	asl $1A.b,X		; 16 1A
	brk $02.b		; 00 02
	and $001A.w,Y		; 39 1A 00
	cop $5F.b		; 02 5F
	inc A		; 1A
	brk $02.b		; 00 02
	sty $1A.b,X		; 94 1A
	brk $02.b		; 00 02
	bcs  26.b		; B0 1A
	brk $02.b		; 00 02
	cmp $1A.b,X		; D5 1A
	brk $02.b		; 00 02
	sed		; F8
	inc A		; 1A
	php		; 08
	brk $46.b		; 00 46
	tas		; 1B
	php		; 08
	brk $8B.b		; 00 8B
	tas		; 1B
	brk $02.b		; 00 02
	plb		; AB
	tas		; 1B
	brk $02.b		; 00 02
	cmp $001B.w		; CD 1B 00
	cop $F4.b		; 02 F4
	tas		; 1B
	brk $02.b		; 00 02
	ora $02001C.l		; 0F 1C 00 02
	lsr A		; 4A
	trb $0200.w		; 1C 00 02
	adc $1C.b,S		; 63 1C
	brk $02.b		; 00 02
	stz $1C.b,X		; 74 1C
	brk $02.b		; 00 02
	sta $1C.b,S		; 83 1C
	brk $04.b		; 00 04
	stx $001C.w		; 8E 1C 00
	tsb $A8.b		; 04 A8
	trb $0400.w		; 1C 00 04
	lda ($1C.b,S),Y		; B3 1C
	brk $04.b		; 00 04
	ldx $001C.w,Y		; BE 1C 00
	tsb $C9.b		; 04 C9
	trb $0400.w		; 1C 00 04
	pei ($1C.b)		; D4 1C
	brk $04.b		; 00 04
	cpx #$1C.b		; E0 1C
	brk $04.b		; 00 04
	xba		; EB
	trb $0400.w		; 1C 00 04
	inc $1C.b,X		; F6 1C
	brk $04.b		; 00 04
	inc $001C.w,X		; FE 1C 00
	tsb $09.b		; 04 09
	ora $0400.w,X		; 1D 00 04
	trb $1D.b		; 14 1D
	brk $04.b		; 00 04
	ora $04001D.l,X		; 1F 1D 00 04
	rol A		; 2A
	ora $0400.w,X		; 1D 00 04
	and $1D.b,X		; 35 1D
	brk $04.b		; 00 04
	rti		; 40

	ora $0400.w,X		; 1D 00 04
	phk		; 4B
	ora $0400.w,X		; 1D 00 04
	lsr $1D.b,X		; 56 1D
	brk $04.b		; 00 04
	adc ($1D.b,X)		; 61 1D
	brk $04.b		; 00 04
	jmp ($001D.w)		; 6C 1D 00
	tsb $77.b		; 04 77
	ora $0400.w,X		; 1D 00 04
	.db $82, $1D, $00		; 82 1D 00
	tsb $8D.b		; 04 8D
	ora $0400.w,X		; 1D 00 04
	tya		; 98
	ora $0400.w,X		; 1D 00 04
	lda $1D.b,S		; A3 1D
	brk $04.b		; 00 04
	ldx $001D.w		; AE 1D 00
	tsb $B9.b		; 04 B9
	ora $0400.w,X		; 1D 00 04
	cpy $1D.b		; C4 1D
	brk $04.b		; 00 04
	cmp $04001D.l		; CF 1D 00 04
	phx		; DA
	ora $0400.w,X		; 1D 00 04
	sbc $1D.b		; E5 1D
	brk $04.b		; 00 04
	beq  29.b		; F0 1D
	brk $04.b		; 00 04
	xce		; FB
	ora $0400.w,X		; 1D 00 04
	asl $1E.b		; 06 1E
	brk $04.b		; 00 04
	ora ($1E.b),Y		; 11 1E
	brk $04.b		; 00 04
	trb $001E.w		; 1C 1E 00
	tsb $27.b		; 04 27
	asl $0400.w,X		; 1E 00 04
	and ($1E.b)		; 32 1E
	brk $04.b		; 00 04
	and $001E.w,X		; 3D 1E 00
	tsb $48.b		; 04 48
	asl $0400.w,X		; 1E 00 04
	eor ($1E.b,S),Y		; 53 1E
	brk $04.b		; 00 04
	lsr $001E.w,X		; 5E 1E 00
	tsb $69.b		; 04 69
	asl $0400.w,X		; 1E 00 04
	stz $1E.b,X		; 74 1E
	brk $04.b		; 00 04
	adc $04001E.l,X		; 7F 1E 00 04
	txa		; 8A
	asl $0400.w,X		; 1E 00 04
	adc ($16.b,S),Y		; 73 16
	brk $02.b		; 00 02
	php		; 08
	sta $15.b,S		; 83 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $15.b,S		; 83 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $15.b,S		; 83 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $15.b,S		; 83 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $15.b,S		; 83 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $15.b,S		; 83 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $15.b,S		; 83 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $15.b,S		; 83 15
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $02.b		; E6 02
	sta ($15.b),Y		; 91 15
	brk $00.b		; 00 00
	bvc  80.b		; 50 50
	sta ($15.b),Y		; 91 15
	brk $00.b		; 00 00
	bvc  80.b		; 50 50
	inx		; E8
	asl $6098.w,X		; 1E 98 60
	tya		; 98
	rts		; 60

	tya		; 98
	rts		; 60

	tya		; 98
	rts		; 60

	cpx #$91.b		; E0 91
	ora $08.b,X		; 15 08
	cmp $000015.l		; CF 15 00 00
	brk $00.b		; 00 00
	cmp $000015.l		; CF 15 00 00
	brk $00.b		; 00 00
	cmp $000015.l		; CF 15 00 00
	brk $00.b		; 00 00
	cmp $000015.l		; CF 15 00 00
	brk $00.b		; 00 00
	cmp $000015.l		; CF 15 00 00
	brk $00.b		; 00 00
	cmp $000015.l		; CF 15 00 00
	brk $00.b		; 00 00
	cmp $000015.l		; CF 15 00 00
	brk $00.b		; 00 00
	cmp $000015.l		; CF 15 00 00
	brk $00.b		; 00 00
	inc $DD02.w		; EE 02 DD
	ora $03.b,X		; 15 03
	ora [$48.b]		; 07 48
	plp		; 28
	cmp $070815.l,X		; DF 15 08 07
	plp		; 28
	pha		; 48
	jsr ($FA08.w,X)		; FC 08 FA
	sed		; F8
	sbc $04A4F4.l,X		; FF F4 A4 04
	ldx #$9F.b		; A2 9F
	ldx $98.b		; A6 98
	tsb $96.b		; 04 96
	inc $F902.w		; EE 02 F9
	ora $03.b,X		; 15 03
	ora ($48.b,X)		; 01 48
	plp		; 28
	xce		; FB
	ora $08.b,X		; 15 08
	ora ($28.b,X)		; 01 28
	pha		; 48
	jsr ($FA08.w,X)		; FC 08 FA
	sed		; F8
	sbc $0498F3.l,X		; FF F3 98 04
	txy		; 9B
	ldy #$A7.b		; A0 A7
	ldx $EE14.w		; AE 14 EE
	ora ($0E.b,X)		; 01 0E
	asl $00.b,X		; 16 00
	ora ($58.b,X)		; 01 58
	cli		; 58
	plx		; FA
	tax		; AA
	tsb $EE.b		; 04 EE
	cop $1F.b		; 02 1F
	asl $0A.b,X		; 16 0A
	.db $82, $68, $58		; 82 68 58
	rol $16.b		; 26 16
	asl A		; 0A
	.db $82, $58, $68		; 82 58 68
	plx		; FA
	sed		; F8
	plx		; FA
	cpx #$98.b		; E0 98
	ora $F8FAEE.l		; 0F EE FA F8
	plx		; FA
	cpx #$8C.b		; E0 8C
	ora $3A02EE.l		; 0F EE 02 3A
	asl $F8.b,X		; 16 F8
	.db $82, $60, $60		; 82 60 60
	eor [$16.b]		; 47 16
	beq -126.b		; F0 82
	rts		; 60

	rts		; 60

	plx		; FA
	sed		; F8
	plx		; FA
	sbc ($8C.b)		; F2 8C
	ora $EB.b,S		; 03 EB
	brk $08.b		; 00 08
	tya		; 98
	bra  16.b		; 80 10
	inc $F8FA.w		; EE FA F8
	plx		; FA
	sbc ($80.b)		; F2 80
	ora $EB.b,S		; 03 EB
	ora ($08.b,X)		; 01 08
	tya		; 98
	bra  16.b		; 80 10
	inc $6102.w		; EE 02 61
	asl $F8.b,X		; 16 F8
	bra  96.b		; 80 60
	bmi 106.b		; 30 6A
	asl $F8.b,X		; 16 F8
	bra  48.b		; 80 30
	rts		; 60

	plx		; FA
	jsr ($F814.w,X)		; FC 14 F8
	inc $98F3.w,X		; FE F3 98
	asl A		; 0A
	inc $F8FA.w		; EE FA F8
	inc $98F4.w,X		; FE F4 98
	tsb $9F.b		; 04 9F
	asl A		; 0A
	inc $8002.w		; EE 02 80
	asl $FC.b,X		; 16 FC
	bra  64.b		; 80 40
	rti		; 40

	sta $FC16.w		; 8D 16 FC
	bra  64.b		; 80 40
	rti		; 40

	plx		; FA
	jsr ($F803.w,X)		; FC 03 F8
	jsr ($9CF3.w,X)		; FC F3 9C
	cop $A4.b		; 02 A4
	cop $9F.b		; 02 9F
	asl A		; 0A
	inc $F8FA.w		; EE FA F8
	jsr ($9CF4.w,X)		; FC F4 9C
	cop $A4.b		; 02 A4
	cop $9F.b		; 02 9F
	asl A		; 0A
	inc $A502.w		; EE 02 A5
	asl $04.b,X		; 16 04
	bra 120.b		; 80 78
	pla		; 68
	lda $0416.w		; AD 16 04
	bra 104.b		; 80 68
	sei		; 78
	plx		; FA
	tya		; 98
	cop $DF.b		; 02 DF
	cop $8C.b		; 02 8C
	asl A		; 0A
	inc $98FA.w		; EE FA 98
	cop $DF.b		; 02 DF
	cop $98.b		; 02 98
	asl A		; 0A
	inc $C802.w		; EE 02 C8
	asl $F8.b,X		; 16 F8
	ora ($60.b),Y		; 11 60
	rti		; 40

.INDEX 16
	rep #$16		; C2 16
	plx		; FA
	bra  64.b		; 80 40
	rts		; 60

	plx		; FA
	sed		; F8
	sbc $08FCF4.l,X		; FF F4 FC 08
	plx		; FA
	sed		; F8
	sbc $0598F4.l,X		; FF F4 98 05
	sta ($04.b,S),Y		; 93 04
	sbc [$40.b]		; E7 40
	rti		; 40

	tya		; 98
	cop $9F.b		; 02 9F
	cop $EE.b		; 02 EE
	cop $E5.b		; 02 E5
	asl $00.b,X		; 16 00
	bra  96.b		; 80 60
	rts		; 60

	sbc $16.b		; E5 16
	bpl -125.b		; 10 83
	bvc  80.b		; 50 50
	plx		; FA
	sta ($04.b),Y		; 91 04
	sty $10.b,X		; 94 10
	inc $91FA.w		; EE FA 91
	tsb $E8.b		; 04 E8
	sta ($94.b,X)		; 81 94
	bpl -18.b		; 10 EE
	ora ($FA.b,X)		; 01 FA
	asl $08.b,X		; 16 08
	sta ($60.b,X)		; 81 60
	rts		; 60

	plx		; FA
	sta ($04.b),Y		; 91 04
	sta $EE05.w,X		; 9D 05 EE
	cop $0D.b		; 02 0D
	ora [$00.b],Y		; 17 00
	ora $40.b,X		; 15 40
	jsr $1718.w		; 20 18 17
	brk $15.b		; 00 15
	jsr $FA40.w		; 20 40 FA
	sed		; F8
	sed		; F8
	inc $EB.b,X		; F6 EB
	brk $12.b		; 00 12
	lda ($B9.b,X)		; A1 B9
	asl $FAEE.w,X		; 1E EE FA
	sed		; F8
	sed		; F8
	inc $FC.b,X		; F6 FC
	asl $00EB.w,X		; 1E EB 00
	ora ($9F.b)		; 12 9F
	lda [$28.b],Y		; B7 28
	inc $3202.w		; EE 02 32
	ora [$08.b],Y		; 17 08
	ora ($40.b,S),Y		; 13 40
	rti		; 40

	and ($17.b)		; 32 17
	beq  17.b		; F0 11
	bvs 112.b		; 70 70
	plx		; FA
	sed		; F8
	sbc $2098F8.l,X		; FF F8 98 20
	inc $4602.w		; EE 02 46
	ora [$E4.b],Y		; 17 E4
	sta $40.b		; 85 40
	rti		; 40

	eor ($17.b),Y		; 51 17
	sed		; F8
	brk $60.b		; 00 60
	rts		; 60

	plx		; FA
	sed		; F8
	plx		; FA
	sbc $EB.b,X		; F5 EB
	brk $14.b		; 00 14
	lda $14B9.w		; AD B9 14
	inc $F8FA.w		; EE FA F8
	plx		; FA
	sbc $FC.b,X		; F5 FC
	asl $00EB.w,X		; 1E EB 00
	trb $87.b		; 14 87
	sta ($14.b,S),Y		; 93 14
	inc $6D02.w		; EE 02 6D
	ora [$F7.b],Y		; 17 F7
	sta ($48.b,X)		; 81 48
	pla		; 68
	rtl		; 6B

	ora [$F0.b],Y		; 17 F0
	sty $68.b		; 84 68
	pha		; 48
	jsr ($FA10.w,X)		; FC 10 FA
	sed		; F8
	sbc $0A98F3.l,X		; FF F3 98 0A
	sbc [$28.b]		; E7 28
	plp		; 28
	tya		; 98
	clc		; 18
	inc $8602.w		; EE 02 86
	ora [$F4.b],Y		; 17 F4
	php		; 08
	rts		; 60

	rts		; 60

	ldx #$F617.w		; A2 17 F6
	php		; 08
	rts		; 60

	rts		; 60

	plx		; FA
	sed		; F8
	sbc $00EBF2.l,X		; FF F2 EB 00
	asl $80.b		; 06 80
	sty $E806.w		; 8C 06 E8
	asl A		; 0A
	sed		; F8
	sbc $02EBF2.l,X		; FF F2 EB 02
	tsb $8C.b		; 04 8C
	bra   4.b		; 80 04
	xba		; EB
	tsb $0C.b		; 04 0C
	bra -116.b		; 80 8C
	bmi -18.b		; 30 EE
	plx		; FA
	sed		; F8
	sbc $067BEE.l,X		; FF EE 7B 06
	sed		; F8
	sbc $02EBF2.l,X		; FF F2 EB 02
	tsb $90.b		; 04 90
	sty $04.b		; 84 04
	xba		; EB
	tsb $0C.b		; 04 0C
	sty $90.b		; 84 90
	jsr $02EE.w		; 20 EE 02
	dex		; CA
	ora [$08.b],Y		; 17 08
	trb $4060.w		; 1C 60 40
	cmp $17.b		; C5 17
	php		; 08
	trb $6040.w		; 1C 40 60
	plx		; FA
	jsr ($DF0F.w,X)		; FC 0F DF
	ora ($FA.b,X)		; 01 FA
	sed		; F8
	plx		; FA
	sed		; F8
	tya		; 98
	ora $DF.b,S		; 03 DF
	cop $E8.b		; 02 E8
	sta $F8.b,S		; 83 F8
	sbc $0A9FFA.l,X		; FF FA 9F 0A
	inc $E702.w		; EE 02 E7
	ora [$10.b],Y		; 17 10
	bpl  64.b		; 10 40
	jsr $17FE.w		; 20 FE 17
	bpl  16.b		; 10 10
	jsr $FA40.w		; 20 40 FA
	jsr ($DF0A.w,X)		; FC 0A DF
	ora $F8.b		; 05 F8
	plx		; FA
	sbc ($98.b)		; F2 98
	ora $A2.b		; 05 A2
	lda [$AE.b]		; A7 AE
	sbc [$20.b]		; E7 20
	clc		; 18
	nop		; EA
	tsb $A298.w		; 0C 98 A2
	lda [$AE.b]		; A7 AE
	inc $FCFA.w		; EE FA FC
	asl A		; 0A
	cmp $FAF805.l,X		; DF 05 F8 FA
	sbc ($98.b)		; F2 98
	ora $A2.b		; 05 A2
	lda [$AE.b]		; A7 AE
	sbc [$18.b]		; E7 18
	jsr $0CEA.w		; 20 EA 0C
	tya		; 98
	ldx #$AEA7.w		; A2 A7 AE
	inc $2602.w		; EE 02 26
	clc		; 18
	bpl -123.b		; 10 85
	bvc  80.b		; 50 50
	jsl $851018.l		; 22 18 10 85
	bmi  48.b		; 30 30
	jsr ($DF10.w,X)		; FC 10 DF
	asl A		; 0A
	plx		; FA
	sed		; F8
	plx		; FA
	sbc ($EB.b)		; F2 EB
	ora $12.b,S		; 03 12
	ldy $8C.b		; A4 8C
	jsr $01EE.w		; 20 EE 01
	sec		; 38
	clc		; 18
	brk $85.b		; 00 85
	bvc  48.b		; 50 30
	sbc $F91A.w,Y		; F9 1A F9
	cpx #$0498.w		; E0 98 04
	sbc $F91F.w,Y		; F9 1F F9
	cpx #$3098.w		; E0 98 30
	plx		; FA
	inc $6D06.w		; EE 06 6D
	clc		; 18
	brk $07.b		; 00 07
	rti		; 40

	jsr $186B.w		; 20 6B 18
	brk $07.b		; 00 07
	jsr $7640.w		; 20 40 76
	clc		; 18
	tsb $3807.w		; 0C 07 38
	jsr $186D.w		; 20 6D 18
	tsb $2007.w		; 0C 07 20
	sec		; 38
	rtl		; 6B

	clc		; 18
	ora [$07.b]		; 07 07
	plp		; 28
	jsr $1874.w		; 20 74 18
	ora [$07.b]		; 07 07
	jsr $FC28.w		; 20 28 FC
	and ($FA.b)		; 32 FA
	sed		; F8
	sbc $707BEE.l,X		; FF EE 7B 70
	inc $32FC.w		; EE FC 32
	plx		; FA
	sed		; F8
	plx		; FA
	inc $707B.w		; EE 7B 70
	inc $8A02.w		; EE 02 8A
	clc		; 18
	brk $0A.b		; 00 0A
	bvc  48.b		; 50 30
	sta $18.b,X		; 95 18
	brk $85.b		; 00 85
	bmi  80.b		; 30 50
	plx		; FA
	sed		; F8
	sbc ($E0.b)		; F2 E0
	xba		; EB
	ora $40.b		; 05 40
	bra -92.b		; 80 A4
	rti		; 40

	inc $F8FA.w		; EE FA F8
	sbc ($E0.b)		; F2 E0
	xba		; EB
	ora $40.b		; 05 40
	bra -92.b		; 80 A4
	rti		; 40

	inc $AD02.w		; EE 02 AD
	clc		; 18
	trb $84.b		; 14 84
	bvs  80.b		; 70 50
	cmp ($18.b,S),Y		; D3 18
	sed		; F8
	sty $50.b		; 84 50
	bvs  -6.b		; 70 FA
	sed		; F8
	plx		; FA
	sbc ($EB.b)		; F2 EB
	ora $1C.b,S		; 03 1C
	bra -104.b		; 80 98
	bpl -25.b		; 10 E7
	rti		; 40

	bmi -21.b		; 30 EB
	ora $1C.b,S		; 03 1C
	bra -104.b		; 80 98
	bpl -25.b		; 10 E7
	jsr $EB18.w		; 20 18 EB
	ora $1C.b,S		; 03 1C
	bra -104.b		; 80 98
	bpl -25.b		; 10 E7
	asl $14.b,X		; 16 14
	xba		; EB
	ora $1C.b,S		; 03 1C
	bra -104.b		; 80 98
	bpl -18.b		; 10 EE
	plx		; FA
	jsr ($DF0A.w,X)		; FC 0A DF
	cop $F8.b		; 02 F8
	plx		; FA
	sbc ($EB.b)		; F2 EB
	ora $1C.b,S		; 03 1C
	bra -116.b		; 80 8C
	rti		; 40

	inc $F402.w		; EE 02 F4
	clc		; 18
	sbc $487884.l,X		; FF 84 78 48
	pea $FF18.w		; F4 18 FF
	sty $48.b		; 84 48
	sei		; 78
	plx		; FA
	jsr ($DF0A.w,X)		; FC 0A DF
	ora $FA.b,S		; 03 FA
	sed		; F8
	sbc $038CF0.l,X		; FF F0 8C 03
	tya		; 98
	bmi -18.b		; 30 EE
	cop $0A.b		; 02 0A
	ora $8300.w,Y		; 19 00 83
	bvc  48.b		; 50 30
	ora ($19.b)		; 12 19
	brk $80.b		; 00 80
	bmi  80.b		; 30 50
	plx		; FA
	sty $E804.w		; 8C 04 E8
	sta $A4.b		; 85 A4
	bmi -18.b		; 30 EE
	plx		; FA
	jsr ($8C1E.w,X)		; FC 1E 8C
	tsb $E8.b		; 04 E8
	sta $A4.b		; 85 A4
	bmi -18.b		; 30 EE
	cop $2E.b		; 02 2E
	ora $08F8.w,Y		; 19 F8 08
	rti		; 40

	jsr $1929.w		; 20 29 19
	php		; 08
	sta $20.b,S		; 83 20
	rti		; 40

	plx		; FA
	cmp $05FC03.l,X		; DF 03 FC 05
	plx		; FA
	sty $9802.w		; 8C 02 98
	asl $EE.b		; 06 EE
	ora $53.b		; 05 53
	ora $0C0C.w,Y		; 19 0C 0C
	sec		; 38
	clc		; 18
	stz $19.b		; 64 19
	tsb $300C.w		; 0C 0C 30
	jsr $196B.w		; 20 6B 19
	tsb $280C.w		; 0C 0C 28
	plp		; 28
	adc ($19.b)		; 72 19
	tsb $200C.w		; 0C 0C 20
	bmi 121.b		; 30 79
	ora $0C0C.w,Y		; 19 0C 0C
	clc		; 18
	sec		; 38
	plx		; FA
	sed		; F8
	sbc $049DF2.l,X		; FF F2 9D 04
	stz $A09F.w,X		; 9E 9F A0
	lda ($A2.b,X)		; A1 A2
	lda $A4.b,S		; A3 A4
	lda $1C.b		; A5 1C
.ACCU 8
	sep #$EE		; E2 EE
	plx		; FA
	nop		; EA
	sbc $53E1.w,X		; FD E1 53
	ora $FAEE.w,Y		; 19 EE FA
	nop		; EA
	sbc $53E1.w,Y		; F9 E1 53
	ora $FAEE.w,Y		; 19 EE FA
	nop		; EA
	sed		; F8
	sbc ($53.b,X)		; E1 53
	ora $FAEE.w,Y		; 19 EE FA
	nop		; EA
	sbc $1953E1.l		; EF E1 53 19
	inc $9102.w		; EE 02 91
	ora $1500.w,Y		; 19 00 15
	rti		; 40

	rti		; 40

	sta $0019.w		; 8D 19 00
	phd		; 0B
	bvs 112.b		; 70 70
	jsr ($DF1E.w,X)		; FC 1E DF
	tsb $FA.b		; 04 FA
	sed		; F8
	sbc $0398F2.l,X		; FF F2 98 03
	sta $E79A.w,Y		; 99 9A E7
	rti		; 40

	rti		; 40

	txy		; 9B
	sta $30E7.w,X		; 9D E7 30
	bmi -98.b		; 30 9E
	ldy #$2AE7.w		; A0 E7 2A
	rol A		; 2A
	lda ($A3.b,X)		; A1 A3
	sbc [$14.b]		; E7 14
	trb $9E.b		; 14 9E
	ldy #$A3A1.w		; A0 A1 A3
	sbc [$12.b]		; E7 12
	ora ($A0.b)		; 12 A0
	lda ($A3.b,X)		; A1 A3
	bpl -18.b		; 10 EE
	ora ($BE.b,X)		; 01 BE
	ora $30FF.w,Y		; 19 FF 30
	bvs 112.b		; 70 70
	plx		; FA
	xce		; FB
	tya		; 98
	tsb $28E7.w		; 0C E7 28
	plp		; 28
	sta $E708.w,Y		; 99 08 E7
	bmi  48.b		; 30 30
	txs		; 9A
	tsb $1EE7.w		; 0C E7 1E
	asl $149B.w,X		; 1E 9B 14
	inc $E402.w		; EE 02 E4
	ora $0700.w,Y		; 19 00 07
	sei		; 78
	pha		; 48
	cmp $070019.l,X		; DF 19 00 07
	pha		; 48
	sei		; 78
	plx		; FA
	jsr ($DF32.w,X)		; FC 32 DF
	ora $FA.b,S		; 03 FA
	sed		; F8
	sed		; F8
	beq 123.b		; F0 7B
	bmi -25.b		; 30 E7
	pha		; 48
	pha		; 48
	plx		; FA
	inc $0002.w		; EE 02 00
	inc A		; 1A
	beq -126.b		; F0 82
	cli		; 58
	cli		; 58
	jsr ($F019.w,X)		; FC 19 F0
	.db $82, $38, $38		; 82 38 38
	jsr ($DF0F.w,X)		; FC 0F DF
	tsb $E8FA.w		; 0C FA E8
	.db $82, $F8, $F8		; 82 F8 F8
	cpx #$0498.w		; E0 98 04
	ldy $04.b		; A4 04
	inx		; E8
	bra -73.b		; 80 B7
	ora $EA.b,S		; 03 EA
	cop $E9.b		; 02 E9
	brk $02.b		; 00 02
	brk $1A.b		; 00 1A
	inc $2302.w		; EE 02 23
	inc A		; 1A
	php		; 08
	asl A		; 0A
	bvc  80.b		; 50 50
	and [$1A.b]		; 27 1A
	php		; 08
	sta $40.b		; 85 40
	rti		; 40

	jsr ($DF14.w,X)		; FC 14 DF
	asl A		; 0A
	plx		; FA
	sed		; F8
	sbc $EBF4.w,Y		; F9 F4 EB
	ora $08.b		; 05 08
	tya		; 98
	bcs   5.b		; B0 05
	nop		; EA
	ora $E9.b,S		; 03 E9
	brk $09.b		; 00 09
	and [$1A.b]		; 27 1A
	inc $4602.w		; EE 02 46
	inc A		; 1A
	brk $1C.b		; 00 1C
	cli		; 58
	sec		; 38
	mvn $E4,$1A		; 54 1A E4
	ora $38.b,X		; 15 38
	sei		; 78
	sbc $F81C.w,Y		; F9 1C F8
	sbc ($98.b)		; F2 98
	php		; 08
	sbc $F810.w,Y		; F9 10 F8
	sbc ($98.b)		; F2 98
	plp		; 28
	plx		; FA
	inc $F8FA.w		; EE FA F8
	sed		; F8
	sbc ($EB.b)		; F2 EB
	cop $10.b		; 02 10
	sty $38B0.w		; 8C B0 38
	inc $6C02.w		; EE 02 6C
	inc A		; 1A
	cpx $82.b		; E4 82
	bvc  32.b		; 50 20
	bra  26.b		; 80 1A
	cpx $08.b		; E4 08
	jsr $FA50.w		; 20 50 FA
	sed		; F8
	plx		; FA
	cpx #$00EB.w		; E0 EB 00
	asl $93.b		; 06 93
	sta $FFF820.l,X		; 9F 20 F8 FF
	beq -21.b		; F0 EB
	brk $06.b		; 00 06
	sta $EE1093.l,X		; 9F 93 10 EE
	plx		; FA
	sed		; F8
	plx		; FA
	cpx #$00EB.w		; E0 EB 00
	php		; 08
	sta ($9F.b,S),Y		; 93 9F
	jsr $FFF8.w		; 20 F8 FF
	beq -21.b		; F0 EB
	brk $08.b		; 00 08
	sta $EE1093.l,X		; 9F 93 10 EE
	cop $A5.b		; 02 A5
	inc A		; 1A
	sed		; F8
	ora $70.b,X		; 15 70
	bmi -95.b		; 30 A1
	inc A		; 1A
	php		; 08
	ora $30.b,X		; 15 30
	bvs  -4.b		; 70 FC
	asl A		; 0A
	cmp $F8FA0A.l,X		; DF 0A FA F8
	jsr ($EBF2.w,X)		; FC F2 EB
	cop $30.b		; 02 30
	tya		; 98
	plb		; AB
	bmi -18.b		; 30 EE
	cop $BD.b		; 02 BD
	inc A		; 1A
	brk $08.b		; 00 08
	rti		; 40

	bvs -58.b		; 70 C6
	inc A		; 1A
	brk $08.b		; 00 08
	bvs  64.b		; 70 40
	plx		; FA
	sed		; F8
	sbc $0598F2.l,X		; FF F2 98 05
	dey		; 88
	rti		; 40

	inc $FCFA.w		; EE FA FC
	trb $DF.b		; 14 DF
	cop $F8.b		; 02 F8
	sbc $0598F2.l,X		; FF F2 98 05
	inx		; E8
	sta $80.b,S		; 83 80
	rti		; 40

	inc $E602.w		; EE 02 E6
	inc A		; 1A
	bpl  12.b		; 10 0C
	cli		; 58
	cli		; 58
.INDEX 8
	sep #$1A		; E2 1A
	bpl  12.b		; 10 0C
	plp		; 28
	plp		; 28
	jsr ($DF0F.w,X)		; FC 0F DF
	tsb $F8FA.w		; 0C FA F8
	sbc $02EBF4.l,X		; FF F4 EB 02
	asl $98.b		; 06 98
	ldy $06.b		; A4 06
	nop		; EA
	cop $E9.b		; 02 E9
	brk $08.b		; 00 08
	inc $1A.b		; E6 1A
	inc $3008.w		; EE 08 30
	tas		; 1B
	brk $04.b		; 00 04
	jsr $3020.w		; 20 20 30
	tas		; 1B
	brk $04.b		; 00 04
	jsr $3020.w		; 20 20 30
	tas		; 1B
	brk $01.b		; 00 01
	jsr $3020.w		; 20 20 30
	tas		; 1B
	brk $01.b		; 00 01
	jsr $3020.w		; 20 20 30
	tas		; 1B
	brk $01.b		; 00 01
	jsr $3020.w		; 20 20 30
	tas		; 1B
	brk $01.b		; 00 01
	jsr $3020.w		; 20 20 30
	tas		; 1B
	brk $01.b		; 00 01
	jsr $3020.w		; 20 20 30
	tas		; 1B
	brk $01.b		; 00 01
	jsr $FA20.w		; 20 20 FA
	pea $48DF.w		; F4 DF 48
	cmp $FAEF04.l,X		; DF 04 EF FA
	pea $3FE1.w		; F4 E1 3F
	tas		; 1B
	sbc [$1E.b]		; E7 1E
	clc		; 18
	sbc ($3F.b,X)		; E1 3F
	tas		; 1B
	sbc [$00.b]		; E7 00
	brk $EF.b		; 00 EF
	lda $A802.w		; AD 02 A8
	cop $A3.b		; 02 A3
	php		; 08
	sep #$08		; E2 08
	jmp ($001B.w,X)		; 7C 1B 00
	tsb $20.b		; 04 20
	jsr $1B7C.w		; 20 7C 1B
	brk $04.b		; 00 04
	jsr $7C20.w		; 20 20 7C
	tas		; 1B
	brk $01.b		; 00 01
	jsr $7C20.w		; 20 20 7C
	tas		; 1B
	brk $01.b		; 00 01
	jsr $7C20.w		; 20 20 7C
	tas		; 1B
	brk $01.b		; 00 01
	jsr $7C20.w		; 20 20 7C
	tas		; 1B
	brk $01.b		; 00 01
	jsr $7C20.w		; 20 20 7C
	tas		; 1B
	brk $01.b		; 00 01
	jsr $7C20.w		; 20 20 7C
	tas		; 1B
	brk $01.b		; 00 01
	jsr $FA20.w		; 20 20 FA
	pea $48DF.w		; F4 DF 48
	inc $F4FA.w		; EE FA F4
	sbc ($3F.b,X)		; E1 3F
	tas		; 1B
	sbc [$1E.b]		; E7 1E
	clc		; 18
	sbc ($3F.b,X)		; E1 3F
	tas		; 1B
	sbc [$00.b]		; E7 00
	brk $EE.b		; 00 EE
	cop $98.b		; 02 98
	tas		; 1B
	inc $6082.w,X		; FE 82 60
	rti		; 40

	tya		; 98
	tas		; 1B
	ora ($84.b)		; 12 84
	rti		; 40

	rts		; 60

	plx		; FA
	tya		; 98
	ora $8C.b		; 05 8C
	trb $FAEE.w		; 1C EE FA
	bra   5.b		; 80 05
	sed		; F8
	sbc $01EBF3.l,X		; FF F3 EB 01
	bpl -92.b		; 10 A4
	bcs  16.b		; B0 10
	inc $BD02.w		; EE 02 BD
	tas		; 1B
	beq   8.b		; F0 08
	bvs 112.b		; 70 70
	clv		; B8
	tas		; 1B
	inx		; E8
	php		; 08
	bvs 112.b		; 70 70
	plx		; FA
	jsr ($DF14.w,X)		; FC 14 DF
	ora $FA.b		; 05 FA
	sed		; F8
	jsr ($98F5.w,X)		; FC F5 98
	ora $F8.b		; 05 F8
	sed		; F8
	sbc $EB.b,X		; F5 EB
	ora ($10.b,X)		; 01 10
	sty $0E87.w		; 8C 87 0E
	inc $DE02.w		; EE 02 DE
	tas		; 1B
	beq  21.b		; F0 15
	bvs 112.b		; 70 70
	phx		; DA
	tas		; 1B
	sed		; F8
	ora $70.b,X		; 15 70
	bvs  -4.b		; 70 FC
	trb $DF.b		; 14 DF
	ora $03EBFA.l		; 0F FA EB 03
	php		; 08
	tya		; 98
	bcs  12.b		; B0 0C
	sbc #$00.b		; E9 00
	ora $DE.b,S		; 03 DE
	tas		; 1B
	sed		; F8
	plx		; FA
	sbc $EB.b,X		; F5 EB
	ora $1A.b,S		; 03 1A
	ldy $B0.b		; A4 B0
	asl $02EE.w,X		; 1E EE 02
	asl $1C.b		; 06 1C
	php		; 08
	ora $58.b,X		; 15 58
	jsr $1C01.w		; 20 01 1C
	bpl  21.b		; 10 15
	jsr $FA58.w		; 20 58 FA
	jsr ($DF0A.w,X)		; FC 0A DF
	cop $FA.b		; 02 FA
	tya		; 98
	tsb $F8.b		; 04 F8
	xce		; FB
	sbc ($9F.b,S),Y		; F3 9F
	bmi -18.b		; 30 EE
	cop $1C.b		; 02 1C
	trb $0C00.w		; 1C 00 0C
	bra -128.b		; 80 80
	and $15001C.l,X		; 3F 1C 00 15
	cli		; 58
	cli		; 58
	plx		; FA
	sed		; F8
	inc $F5.b,X		; F6 F5
	jsr ($8C28.w,X)		; FC 28 8C
	ora $91.b,S		; 03 91
	stx $9B.b,Y		; 96 9B
	ldy #$A5.b		; A0 A5
	sbc [$58.b]		; E7 58
	cli		; 58
	nop		; EA
	asl $03AA.w,X		; 1E AA 03
	lda $40E7B4.l		; AF B4 E7 40
	rti		; 40

	nop		; EA
	ora [$8C.b]		; 07 8C
	ora $91.b,S		; 03 91
	stx $9B.b,Y		; 96 9B
	ldy #$A5.b		; A0 A5
	inc $F8FA.w		; EE FA F8
	plx		; FA
	sbc ($EB.b)		; F2 EB
	ora $20.b		; 05 20
	sty $30A4.w		; 8C A4 30
	inc $5C02.w		; EE 02 5C
	trb $0706.w		; 1C 06 07
	sei		; 78
	pha		; 48
	eor [$1C.b],Y		; 57 1C
	asl $07.b		; 06 07
	pha		; 48
	sei		; 78
	plx		; FA
	jsr ($DF32.w,X)		; FC 32 DF
	ora $FA.b,S		; 03 FA
	sed		; F8
	sed		; F8
	sed		; F8
	tda		; 7B
	clc		; 18
	inc $7002.w		; EE 02 70
	trb $08FC.w		; 1C FC 08
	bvs  48.b		; 70 30
	adc ($1C.b)		; 72 1C
	jsr ($3008.w,X)		; FC 08 30
	bvs  -6.b		; 70 FA
	inc $EEFA.w		; EE FA EE
	cop $81.b		; 02 81
	trb $0905.w		; 1C 05 09
	bvs  88.b		; 70 58
	sta ($1C.b,X)		; 81 1C
	ora [$09.b]		; 07 09
	cli		; 58
	bvs  -6.b		; 70 FA
	inc $8A01.w		; EE 01 8A
	trb $3003.w		; 1C 03 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	bvs -18.b		; 70 EE
	ora ($95.b,X)		; 01 95
	trb $30FE.w		; 1C FE 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	ora $5454E7.l		; 0F E7 54 54
	tya		; 98
	ora $3232E7.l		; 0F E7 32 32
	tya		; 98
	ora $2121E7.l		; 0F E7 21 21
	tya		; 98
	rts		; 60

	inc $AF01.w		; EE 01 AF
	trb $31FE.w		; 1C FE 31
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $BA01.w		; EE 01 BA
	trb $32FF.w		; 1C FF 32
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $C501.w		; EE 01 C5
	trb $33FD.w		; 1C FD 33
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $D001.w		; EE 01 D0
	trb $3001.w		; 1C 01 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	bvs -18.b		; 70 EE
	ora ($DB.b,X)		; 01 DB
	trb $38FD.w		; 1C FD 38
	sei		; 78
	sei		; 78
	xce		; FB
	cpx #$96.b		; E0 96
	trb $01EE.w		; 1C EE 01
	sbc [$1C.b]		; E7 1C
	ora ($39.b,X)		; 01 39
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $F201.w		; EE 01 F2
	trb $3AFD.w		; 1C FD 3A
	bra -128.b		; 80 80
	xce		; FB
	tya		; 98
	rts		; 60

	inc $FD01.w		; EE 01 FD
	trb $3BFD.w		; 1C FD 3B
	sei		; 78
	sei		; 78
	inc $0501.w		; EE 01 05
	ora $30FE.w,X		; 1D FE 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $1001.w		; EE 01 10
	ora $4000.w,X		; 1D 00 40
	sei		; 78
	sei		; 78
	xce		; FB
	cpx #$96.b		; E0 96
	trb $1B01.w		; 1C 01 1B
	ora $41FC.w,X		; 1D FC 41
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $2601.w		; EE 01 26
	ora $4200.w,X		; 1D 00 42
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $3101.w		; EE 01 31
	ora $43FE.w,X		; 1D FE 43
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	pha		; 48
	inc $3C01.w		; EE 01 3C
	ora $3001.w,X		; 1D 01 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $4701.w		; EE 01 47
	ora $4800.w,X		; 1D 00 48
	sei		; 78
	sei		; 78
	xce		; FB
	cpx #$96.b		; E0 96
	trb $5201.w		; 1C 01 52
	ora $49FF.w,X		; 1D FF 49
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $5D01.w		; EE 01 5D
	ora $4A00.w,X		; 1D 00 4A
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $6801.w		; EE 01 68
	ora $4BFA.w,X		; 1D FA 4B
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $7301.w		; EE 01 73
	ora $3000.w,X		; 1D 00 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $7E01.w		; EE 01 7E
	ora $50FE.w,X		; 1D FE 50
	sei		; 78
	sei		; 78
	xce		; FB
	cpx #$96.b		; E0 96
	trb $8901.w		; 1C 01 89
	ora $51FE.w,X		; 1D FE 51
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $9401.w		; EE 01 94
	ora $52FA.w,X		; 1D FA 52
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $9F01.w		; EE 01 9F
	ora $53FE.w,X		; 1D FE 53
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $AA01.w		; EE 01 AA
	ora $3002.w,X		; 1D 02 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $B501.w		; EE 01 B5
	ora $58FE.w,X		; 1D FE 58
	sei		; 78
	sei		; 78
	xce		; FB
	cpx #$96.b		; E0 96
	trb $C001.w		; 1C 01 C0
	ora $59FE.w,X		; 1D FE 59
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $CB01.w		; EE 01 CB
	ora $5AFE.w,X		; 1D FE 5A
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $D601.w		; EE 01 D6
	ora $5BFB.w,X		; 1D FB 5B
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $E101.w		; EE 01 E1
	ora $3001.w,X		; 1D 01 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $EC01.w		; EE 01 EC
	ora $60FC.w,X		; 1D FC 60
	sei		; 78
	sei		; 78
	xce		; FB
	cpx #$96.b		; E0 96
	trb $F701.w		; 1C 01 F7
	ora $6100.w,X		; 1D 00 61
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $0201.w		; EE 01 02
	asl $62FC.w,X		; 1E FC 62
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $0D01.w		; EE 01 0D
	asl $63FF.w,X		; 1E FF 63
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $1801.w		; EE 01 18
	asl $3004.w,X		; 1E 04 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $2301.w		; EE 01 23
	asl $68FE.w,X		; 1E FE 68
	sei		; 78
	sei		; 78
	xce		; FB
	cpx #$96.b		; E0 96
	trb $2E01.w		; 1C 01 2E
	asl $69FF.w,X		; 1E FF 69
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $3901.w		; EE 01 39
	asl $6A01.w,X		; 1E 01 6A
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $4401.w		; EE 01 44
	asl $6B00.w,X		; 1E 00 6B
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $4F01.w		; EE 01 4F
	asl $3002.w,X		; 1E 02 30
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $5A01.w		; EE 01 5A
	asl $7001.w,X		; 1E 01 70
	sei		; 78
	sei		; 78
	xce		; FB
	cpx #$96.b		; E0 96
	trb $6501.w		; 1C 01 65
	asl $71FE.w,X		; 1E FE 71
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $7001.w		; EE 01 70
	asl $72FE.w,X		; 1E FE 72
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $7B01.w		; EE 01 7B
	asl $73FC.w,X		; 1E FC 73
	sei		; 78
	sei		; 78
	xce		; FB
	tya		; 98
	rts		; 60

	inc $8601.w		; EE 01 86
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	xce		; FB
	tya		; 98
	jsr $01EE.w		; 20 EE 01
	sta ($1E.b),Y		; 91 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	tya		; 98
	jsr $8FEE.w		; 20 EE 8F
	brk $00.b		; 00 00
	sta $8F0100.l		; 8F 00 01 8F
	tax		; AA
	pea $BB8F.w		; F4 8F BB
	sbc $78.b,X		; F5 78
	cpy $D0F4.w		; CC F4 D0
	xce		; FB
	and $F4EC1C.l		; 2F 1C EC F4
	brk $D0.b		; 00 D0
	xce		; FB
	lsr $00F4.w,X		; 5E F4 00
	bne   9.b		; D0 09
	sbc $F5.b		; E5 F5
	brk $CC.b		; 00 CC
	pea $D700.w		; F4 00 D7
	brk $FC.b		; 00 FC
	bpl -16.b		; 10 F0
	plb		; AB
	ora ($5E.b,X)		; 01 5E
	pea $1000.w		; F4 00 10
	sbc #$BA.b		; E9 BA
	inc $DA.b,X		; F6 DA
	brk $BA.b		; 00 BA
	pea $F4C5.w		; F4 C5 F4
	brk $DD.b		; 00 DD
	eor $D7D0.w,X		; 5D D0 D7
	adc $CFCD20.l		; 6F 20 CD CF
	lda $F0E8.w,X		; BD E8 F0
	cmp $F1.b		; C5 F1
	brk $E8.b		; 00 E8
	brk $C4.b		; 00 C4
	asl A		; 0A
	inx		; E8
	bra -60.b		; 80 C4
	phd		; 0B
	inx		; E8
	cpy #$C4.b		; C0 C4
	tsb $7FE8.w		; 0C E8 7F
	cpy $0D.b		; C4 0D
	inx		; E8
	brk $5D.b		; 00 5D
	cmp [$0A.b]		; C7 0A
	dec A		; 3A
	asl A		; 0A
	inc A		; 1A
	tsb $F8D0.w		; 0C D0 F8
	eor $200806.l,X		; 5F 06 08 20
	adc $FFF8FA.l,X		; 7F FA F8 FF
	beq -97.b		; F0 9F
	ora $98.b		; 05 98
	jsr $FAEE.w		; 20 EE FA
	jsr ($F805.w,X)		; FC 05 F8
	sbc $059FF0.l,X		; FF F0 9F 05
	tya		; 98
	jsr $02EE.w		; 20 EE 02
	trb $051F.w		; 1C 1F 05
	brk $70.b		; 00 70
	pha		; 48
	trb $071F.w		; 1C 1F 07
	brk $48.b		; 00 48
	bvs  -6.b		; 70 FA
	sty $EE10.w		; 8C 10 EE
	jsr $CFCD.w		; 20 CD CF
	lda $F0E8.w,X		; BD E8 F0
	cmp $F1.b		; C5 F1
	brk $E8.b		; 00 E8
	brk $C4.b		; 00 C4
	asl A		; 0A
	inx		; E8
	bra -60.b		; 80 C4
	phd		; 0B
	inx		; E8
	cpy #$C4.b		; C0 C4
	tsb $7FE8.w		; 0C E8 7F
	cpy $0D.b		; C4 0D
	inx		; E8
	brk $5D.b		; 00 5D
	cmp [$0A.b]		; C7 0A
	dec A		; 3A
	asl A		; 0A
	inc A		; 1A
	tsb $F8D0.w		; 0C D0 F8
	eor $EE0806.l,X		; 5F 06 08 EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $6F7FFF.l,X		; FF FF 7F 6F
	sbc $FFFEFF.l		; EF FF FE FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFDBF.l,X		; FF BF FD FF
	xce		; FB
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	nop		; EA
	plb		; AB
	lda $FA7FFF.l		; AF FF 7F FA
	lda $000000.l		; AF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6F.b		; 00 6F
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $00FFBF.l,X		; BF BF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BB.b		; 00 BB
	sbc $FFBF.w		; ED BF FF
	sbc $FFFFFF.l		; EF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFEBBF.l		; EF BF EB FF
	tax		; AA
	xce		; FB
	inc $00EF.w		; EE EF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $00BFFF.l		; EF FF BF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	sbc $FFBFDF.l,X		; FF DF BF FF
	xce		; FB
	inc $00FF.w,X		; FE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	inc $FBFF.w,X		; FE FF FB
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	sbc $FBEFFE.l,X		; FF FE EF FB
	sbc $00FEFF.l,X		; FF FF FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	inc $FEFE.w,X		; FE FE FE
	sbc $FFFBFF.l,X		; FF FF FB FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFEFFF.l,X		; FF FF EF FF
	lda $EFFFBF.l,X		; BF BF FF EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFEFFF.l,X		; FF FF EF FF
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFBFF.l		; EF FF FB FB
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFEBF.l,X		; FF BF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $DFFFFF.l,X		; BF FF FF DF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $00FFEF.l,X		; FF EF FF 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FEBFEB.l,X		; FF EB BF FE
	sbc $006FEF.l,X		; FF EF 6F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $EFEFFF.l,X		; FF FF EF EF
	sbc $00BFFA.l,X		; FF FA BF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FBFEFF.l,X		; FF FF FE FB
	sbc $00FFEF.l,X		; FF EF FF 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	inc $FFFF.w,X		; FE FF FF
	inc $FFFD.w,X		; FE FD FF
	plx		; FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	lda $BFFBFB.l,X		; BF FB FB BF
	sbc $00FFAF.l,X		; FF AF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFDF.l,X		; FF DF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	lda $BFE7FF.l,X		; BF FF E7 BF
	tda		; 7B
	inc $00EB.w		; EE EB 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	cmp $DFFFFF.l,X		; DF FF FF DF
	sbc $F7FF.w,X		; FD FF F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $EFFF.w,Y		; BE FF EF
	sbc $FFFFFE.l,X		; FF FE FF FF
	inc $4000.w,X		; FE 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $EBFFFF.l,X		; BF FF FF EB
	lda $EFBFBF.l,X		; BF BF BF EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $BFFFBF.l,X		; FF BF FF BF
	lda $FFFAFF.l,X		; BF FF FA FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFEE.l		; EF EE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	sbc $FFAEFF.l,X		; FF FF AE FF
	tyx		; BB
	sbc $0002FF.l,X		; FF FF 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $F7.b		; 00 F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $10FFFF.l,X		; FF FF FF 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFE.w,X		; FD FE FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFBB.l,X		; FF BB FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $BFFF.w,X		; FE FF BF
	plx		; FA
	lda $FFFFFF.l		; AF FF FF FF
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFBFF.l		; EF FF FB FF
	xce		; FB
	sbc $00EFFE.l,X		; FF FE EF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $DFAF.w,X		; FE AF DF
	sbc $BBFEFE.l,X		; FF FE FE BB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $BFFFEF.l,X		; FF EF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFEFFF.l,X		; FF FF EF FF
	inc $EFFF.w,X		; FE FF EF
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $6FFFFF.l		; EF FF FF 6F
	sbc $BFBFFF.l,X		; FF FF BF BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l		; EF FF FF 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFBBFE.l,X		; FF FE BB FF
	sbc $F7FBEF.l,X		; FF EF FB F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	sbc $FBFFFE.l,X		; FF FE FF FB
	sbc $80FFFF.l,X		; FF FF FF 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	inc $EFFE.w,X		; FE FE EF
	sbc $F9FBAD.l		; EF AD FB F9
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $FFFFFF.l,X		; BF FF FF FF
	lda $FFEFFF.l,X		; BF FF EF FF
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFEFBF.l,X		; FF BF EF FF
	sbc $FBFFBB.l,X		; FF BB FF FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFBF.l,X		; FF BF FF AF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $FBFF.w,Y		; BE FF FB
	sbc $EFBFFF.l,X		; FF FF BF EF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	inc $AAFF.w		; EE FF AA
	lda $EEBBAB.l,X		; BF AB BB EE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFEF.w,X		; FE EF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	lda $FFFFFF.l,X		; BF FF FF FF
	xce		; FB
	lda $4000FF.l,X		; BF FF 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $EBFFFF.l		; EF FF FF EB
	inc $FFFF.w,X		; FE FF FF
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FBBFFF.l,X		; FF FF BF FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $BFFEEF.l,X		; FF EF FE BF
	sbc $00BEFF.l,X		; FF FF BE 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFD.l,X		; FF FD FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	tyx		; BB
	tyx		; BB
	sbc $EFFFFF.l		; EF FF FF EF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FDFF.l,X		; FF FF FD 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($FF.b,X)		; 01 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	xce		; FB
	sbc $FBEFFF.l,X		; FF FF EF FB
	sbc $0000EF.l		; EF EF 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	adc $FFFFFE.l,X		; 7F FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFDFF.l,X		; FF FF FD FF
	lda $FFFFFF.l,X		; BF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $EFFFBF.l,X		; BF BF FF EF
	sbc $FFBFEF.l		; EF EF BF FF
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc [$BE.b],Y		; F7 BE
	sbc $0000BF.l,X		; FF BF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $FFFFFF.l		; AF FF FF FF
	sbc $FBFFBB.l,X		; FF BB FF FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $FF.b		; 00 FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $00FFBF.l,X		; FF BF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FEFBEF.l,X		; FF EF FB FE
	ldx $BFFF.w,Y		; BE FF BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $BFFEFB.l		; EF FB FE BF
	sbc $BFFFEF.l,X		; FF EF FF BF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFBFFB.l,X		; FF FB BF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $00FFEF.l,X		; FF EF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	xba		; EB
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFABB.l,X		; FF BB FA FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $EEFFFF.l		; AF FF FF EE
	sbc $FEFFBF.l,X		; FF BF FF FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	and ($28.b),Y		; 31 28
	brk $18.b		; 00 18
	ora ($24.b)		; 12 24
	ora $180029.l		; 0F 29 00 18
	trb $E60C.w		; 1C 0C E6
	and #$00.b		; 29 00
	ora $0818.w,Y		; 19 18 08
	bmi  43.b		; 30 2B
	brk $18.b		; 00 18
	clc		; 18
	php		; 08
	ldy $002B.w,X		; BC 2B 00
	clc		; 18
	php		; 08
	clc		; 18
	pha		; 48
	bit $1A00.w		; 2C 00 1A
	php		; 08
	clc		; 18
	lda [$2C.b],Y		; B7 2C
	tsb $241B.w		; 0C 1B 24
	bit $2D.b		; 24 2D
	and $D100.w		; 2D 00 D1
	rol $F33E.w,X		; 3E 3E F3
	brk $94.b		; 00 94
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $04.b		; 04 04
	sed		; F8
	sbc $04A6EE.l,X		; FF EE A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $0CA908.l,X		; DF 08 A9 0C
	ldx $08.b		; A6 08
	tay		; A8
	tsb $04A1.w		; 0C A1 04
	lda $0C.b,S		; A3 0C
	ldx $04.b		; A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A39E08.l,X		; DF 08 9E A3
	tsb $9E.b		; 04 9E
	php		; 08
	stz $A10C.w		; 9C 0C A1
	tsb $A3.b		; 04 A3
	tsb $04A6.w		; 0C A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $0CA908.l,X		; DF 08 A9 0C
	ldx $08.b		; A6 08
	tay		; A8
	tsb $04A1.w		; 0C A1 04
	lda $0C.b,S		; A3 0C
	ldx $04.b		; A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A39E08.l,X		; DF 08 9E A3
	tsb $9E.b		; 04 9E
	php		; 08
	stz $9E0C.w		; 9C 0C 9E
	tsb $9F.b		; 04 9F
	php		; 08
	lda ($04.b,X)		; A1 04
	lda $DF.b,S		; A3 DF
	php		; 08
	lda $04.b,S		; A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $0C9F08.l,X		; DF 08 9F 0C
	lda ($08.b,X)		; A1 08
	stz $9F0C.w,X		; 9E 0C 9F
	cop $DF.b		; 02 DF
	lda ($0C.b,X)		; A1 0C
	lda $04.b,S		; A3 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $0C9F08.l,X		; DF 08 9F 0C
	lda ($08.b,X)		; A1 08
	stz $9F0C.w,X		; 9E 0C 9F
	cop $DF.b		; 02 DF
	lda ($0C.b,X)		; A1 0C
	lda $04.b,S		; A3 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A508.l,X		; DF 08 A5 04
	cmp $04A508.l,X		; DF 08 A5 04
	cmp $04A608.l,X		; DF 08 A6 04
	cmp $A8A608.l,X		; DF 08 A6 A8
	tsb $04A6.w		; 0C A6 04
	tay		; A8
	tsb $04A5.w		; 0C A5 04
	cmp $04A508.l,X		; DF 08 A5 04
	cmp $A4A508.l,X		; DF 08 A5 A4
	tsb $A5.b		; 04 A5
	tsb $04A1.w		; 0C A1 04
	cmp $18AD14.l,X		; DF 14 AD 18
	cpx #$3A.b		; E0 3A
	plp		; 28
	cmp $FFF806.l,X		; DF 06 F8 FF
	inc $04A6.w		; EE A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $0CA908.l,X		; DF 08 A9 0C
	ldx $08.b		; A6 08
	tay		; A8
	tsb $04A1.w		; 0C A1 04
	lda $0C.b,S		; A3 0C
	ldx $04.b		; A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A39E08.l,X		; DF 08 9E A3
	tsb $9E.b		; 04 9E
	php		; 08
	stz $A10C.w		; 9C 0C A1
	tsb $A3.b		; 04 A3
	tsb $04A6.w		; 0C A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $0CA908.l,X		; DF 08 A9 0C
	ldx $08.b		; A6 08
	tay		; A8
	tsb $04A1.w		; 0C A1 04
	lda $0C.b,S		; A3 0C
	ldx $04.b		; A6 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A39E08.l,X		; DF 08 9E A3
	tsb $9E.b		; 04 9E
	php		; 08
	stz $9E0C.w		; 9C 0C 9E
	tsb $9F.b		; 04 9F
	php		; 08
	lda ($04.b,X)		; A1 04
	sta $9F08DF.l,X		; 9F DF 08 9F
	tsb $DF.b		; 04 DF
	php		; 08
	stz $DF04.w,X		; 9E 04 DF
	php		; 08
	stz $DF04.w,X		; 9E 04 DF
	php		; 08
	stz $9E0C.w		; 9C 0C 9E
	php		; 08
	txs		; 9A
	tsb $029C.w		; 0C 9C 02
	cmp $9F0C9E.l,X		; DF 9E 0C 9F
	tsb $DF.b		; 04 DF
	php		; 08
	sta $08DF04.l,X		; 9F 04 DF 08
	stz $DF04.w,X		; 9E 04 DF
	php		; 08
	stz $DF04.w,X		; 9E 04 DF
	php		; 08
	stz $9E0C.w		; 9C 0C 9E
	php		; 08
	txs		; 9A
	tsb $029C.w		; 0C 9C 02
	cmp $9F0C9E.l,X		; DF 9E 0C 9F
	tsb $DF.b		; 04 DF
	php		; 08
	sta $08DF04.l,X		; 9F 04 DF 08
	ldx #$04.b		; A2 04
	cmp $04A208.l,X		; DF 08 A2 04
	cmp $04A308.l,X		; DF 08 A3 04
	cmp $A0A308.l,X		; DF 08 A3 A0
	tsb $04A0.w		; 0C A0 04
	ldy #$0C.b		; A0 0C
	lda ($04.b,X)		; A1 04
	cmp $04A108.l,X		; DF 08 A1 04
	cmp $A0A108.l,X		; DF 08 A1 A0
	tsb $A1.b		; 04 A1
	tsb $04A1.w		; 0C A1 04
	cmp $18A514.l,X		; DF 14 A5 18
	cpx #$11.b		; E0 11
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	clc		; 18
	tsb $04.b		; 04 04
	sed		; F8
	sbc $0A95F2.l,X		; FF F2 95 0A
	cmp $069E02.l,X		; DF 02 9E 06
	cmp $049A02.l,X		; DF 02 9A 04
	sta $06.b,X		; 95 06
	cmp $04A102.l,X		; DF 02 A1 04
	stz $DF06.w,X		; 9E 06 DF
	cop $9A.b		; 02 9A
	tsb $9F.b		; 04 9F
	asl $DF.b		; 06 DF
	cop $9A.b		; 02 9A
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	asl A		; 0A
	cmp $049C02.l,X		; DF 02 9C 04
	sta $DF06.w,Y		; 99 06 DF
	cop $95.b		; 02 95
	tsb $95.b		; 04 95
	asl A		; 0A
	cmp $069E02.l,X		; DF 02 9E 06
	cmp $049A02.l,X		; DF 02 9A 04
	sta $06.b,X		; 95 06
	cmp $04A102.l,X		; DF 02 A1 04
	stz $DF06.w,X		; 9E 06 DF
	cop $9A.b		; 02 9A
	tsb $A0.b		; 04 A0
	asl $DF.b		; 06 DF
	cop $9A.b		; 02 9A
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	asl A		; 0A
	cmp $049C02.l,X		; DF 02 9C 04
	sta $DF06.w,Y		; 99 06 DF
	cop $95.b		; 02 95
	tsb $95.b		; 04 95
	asl A		; 0A
	cmp $069E02.l,X		; DF 02 9E 06
	cmp $049A02.l,X		; DF 02 9A 04
	sta $06.b,X		; 95 06
	cmp $04A102.l,X		; DF 02 A1 04
	stz $DF06.w,X		; 9E 06 DF
	cop $9A.b		; 02 9A
	tsb $9F.b		; 04 9F
	asl $DF.b		; 06 DF
	cop $9A.b		; 02 9A
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	asl A		; 0A
	cmp $049C02.l,X		; DF 02 9C 04
	sta $DF06.w,Y		; 99 06 DF
	cop $95.b		; 02 95
	tsb $95.b		; 04 95
	asl A		; 0A
	cmp $069E02.l,X		; DF 02 9E 06
	cmp $049A02.l,X		; DF 02 9A 04
	sta $06.b,X		; 95 06
	cmp $04A102.l,X		; DF 02 A1 04
	stz $DF06.w,X		; 9E 06 DF
	cop $9A.b		; 02 9A
	tsb $A0.b		; 04 A0
	asl $DF.b		; 06 DF
	cop $9A.b		; 02 9A
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	asl A		; 0A
	cmp $049C02.l,X		; DF 02 9C 04
	sta $DF06.w,Y		; 99 06 DF
	cop $95.b		; 02 95
	tsb $93.b		; 04 93
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	tsb $9A.b		; 04 9A
	asl $DF.b		; 06 DF
	cop $97.b		; 02 97
	tsb $95.b		; 04 95
	asl $DF.b		; 06 DF
	cop $9E.b		; 02 9E
	tsb $9A.b		; 04 9A
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	tsb $9C.b		; 04 9C
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	asl A		; 0A
	cmp $049E02.l,X		; DF 02 9E 04
	txs		; 9A
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	tsb $93.b		; 04 93
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	tsb $9A.b		; 04 9A
	asl $DF.b		; 06 DF
	cop $97.b		; 02 97
	tsb $95.b		; 04 95
	asl $DF.b		; 06 DF
	cop $9E.b		; 02 9E
	tsb $9A.b		; 04 9A
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	tsb $97.b		; 04 97
	asl $DF.b		; 06 DF
	cop $9F.b		; 02 9F
	tsb $9C.b		; 04 9C
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	asl A		; 0A
	cmp $049E02.l,X		; DF 02 9E 04
	txs		; 9A
	asl $DF.b		; 06 DF
	cop $95.b		; 02 95
	tsb $97.b		; 04 97
	php		; 08
	sta $089A04.l,X		; 9F 04 9A 08
	sta [$04.b],Y		; 97 04
	stx $9E.b,Y		; 96 9E
	stz $9699.w		; 9C 99 96
	sta ($97.b)		; 92 97
	php		; 08
	stz $9A04.w,X		; 9E 04 9A
	php		; 08
	sta [$A0.b],Y		; 97 A0
	tsb $9C.b		; 04 9C
	txs		; 9A
	sta [$94.b],Y		; 97 94
	sta ($08.b,S),Y		; 93 08
	sta $089C04.l,X		; 9F 04 9C 08
	sta $9504.w,Y		; 99 04 95
	sta $999C9E.l,X		; 9F 9E 9C 99
	stz $DF95.w		; 9C 95 DF
	bpl -107.b		; 10 95
	cop $99.b		; 02 99
	stz $169F.w		; 9C 9F 16
	cpx #$EC.b		; E0 EC
	and #$DF.b		; 29 DF
	asl $EC.b		; 06 EC
	tsb $0505.w		; 0C 05 05
	sed		; F8
	sbc $0CDFF0.l,X		; FF F0 DF 0C
	sta $04.b,X		; 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049C14.l,X		; DF 14 9C 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049C14.l,X		; DF 14 9C 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049C14.l,X		; DF 14 9C 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049A14.l,X		; DF 14 9A 04
	cmp $049C14.l,X		; DF 14 9C 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049C08.l,X		; DF 08 9C 04
	cmp $189C14.l,X		; DF 14 9C 18
	cpx #$36.b		; E0 36
	pld		; 2B
	cmp $0CEC06.l,X		; DF 06 EC 0C
	ora $05.b		; 05 05
	sed		; F8
	sbc $0CDFF0.l,X		; FF F0 DF 0C
	sta ($04.b)		; 92 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049414.l,X		; DF 14 94 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049414.l,X		; DF 14 94 04
	cmp $049014.l,X		; DF 14 90 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049514.l,X		; DF 14 95 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049914.l,X		; DF 14 99 04
	cmp $049214.l,X		; DF 14 92 04
	cmp $049714.l,X		; DF 14 97 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049314.l,X		; DF 14 93 04
	cmp $049908.l,X		; DF 08 99 04
	cmp $189314.l,X		; DF 14 93 18
	cpx #$C2.b		; E0 C2
	pld		; 2B
	cmp $18EC06.l,X		; DF 06 EC 18
	tsb $07.b		; 04 07
	stx $DF04.w		; 8E 04 DF
	jsl $F530F5.l		; 22 F5 30 F5
	bmi -11.b		; 30 F5
	bmi -119.b		; 30 89
	cop $8A.b		; 02 8A
	phb		; 8B
	sty $8E8D.w		; 8C 8D 8E
	tsb $DF.b		; 04 DF
	trb $30F5.w		; 1C F5 30
	sbc $30.b,X		; F5 30
	sbc $30.b,X		; F5 30
	stx $9004.w		; 8E 04 90
	php		; 08
	sta ($04.b)		; 92 04
	sta ($DF.b,S),Y		; 93 DF
	jsl $8E30F5.l		; 22 F5 30 8E
	cop $8F.b		; 02 8F
	bcc -111.b		; 90 91
	sta ($93.b)		; 92 93
	tsb $DF.b		; 04 DF
	trb $30F5.w		; 1C F5 30
	stx $9004.w		; 8E 04 90
	php		; 08
	sta ($04.b)		; 92 04
	sta [$DF.b],Y		; 97 DF
	php		; 08
	sta [$04.b],Y		; 97 04
	cmp $049608.l,X		; DF 08 96 04
	cmp $049608.l,X		; DF 08 96 04
	cmp $049508.l,X		; DF 08 95 04
	cmp $949508.l,X		; DF 08 95 94
	bpl -105.b		; 10 97
	tsb $0493.w		; 0C 93 04
	cmp $049308.l,X		; DF 08 93 04
	cmp $929308.l,X		; DF 08 93 92
	tsb $93.b		; 04 93
	tsb $0490.w		; 0C 90 04
	cmp $028922.l,X		; DF 22 89 02
	txa		; 8A
	phb		; 8B
	sty $E08D.w		; 8C 8D E0
	lsr $DF2C.w		; 4E 2C DF
	asl $F8.b		; 06 F8
	sbc $0C82E8.l,X		; FF E8 82 0C
	cmp $7BDF7A.l,X		; DF 7A DF 7B
	cmp $0A7D08.l,X		; DF 08 7D 0A
	cmp $047D02.l,X		; DF 02 7D 04
	adc $DF820C.l,X		; 7F 0C 82 DF
	ply		; 7A
	cmp $08DF78.l,X		; DF 78 DF 08
	adc $DF0A.w,X		; 7D 0A DF
	cop $7D.b		; 02 7D
	tsb $7F.b		; 04 7F
	tsb $DF82.w		; 0C 82 DF
	ply		; 7A
	cmp $08DF7B.l,X		; DF 7B DF 08
	adc $DF0A.w,X		; 7D 0A DF
	cop $7D.b		; 02 7D
	tsb $7F.b		; 04 7F
	tsb $DF82.w		; 0C 82 DF
	ply		; 7A
	cmp $08DF78.l,X		; DF 78 DF 08
	adc $DF0A.w,X		; 7D 0A DF
	cop $7D.b		; 02 7D
	tsb $7F.b		; 04 7F
	tsb $DF7B.w		; 0C 7B DF
	ply		; 7A
	cmp $08DF78.l,X		; DF 78 DF 08
	ror $0A.b,X		; 76 0A
	cmp $047802.l,X		; DF 02 78 04
	ply		; 7A
	tsb $DF7B.w		; 0C 7B DF
	ply		; 7A
	cmp $08DF78.l,X		; DF 78 DF 08
	ror $0A.b,X		; 76 0A
	cmp $047802.l,X		; DF 02 78 04
	ply		; 7A
	tsb $DF7B.w		; 0C 7B DF
	ply		; 7A
	cmp $08DF7F.l,X		; DF 7F DF 08
	sei		; 78
	bpl -124.b		; 10 84
	tsb $DF7D.w		; 0C 7D DF
	sty $DF.b		; 84 DF
	adc $7DDF.w,X		; 7D DF 7D
	clc		; 18
	cpx #$B9.b		; E0 B9
	bit $06DF.w		; 2C DF 06
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($D2.b)		; D2 D2
	cmp $D5.b,X		; D5 D5
	cmp $D6.b,X		; D5 D6
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	bne   4.b		; D0 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	bne   8.b		; D0 08
	cmp ($04.b)		; D2 04
	cmp ($08.b)		; D2 08
	cmp ($04.b)		; D2 04
	cmp ($18.b)		; D2 18
	cmp ($08.b,S),Y		; D3 08
	cmp ($04.b),Y		; D1 04
	cmp ($D5.b)		; D2 D5
	dec $E0.b,X		; D6 E0
	and $DF092D.l		; 2F 2D 09 DF
	ora $8B.b,S		; 03 8B
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $88.b,S		; 03 88
	asl $88.b		; 06 88
	sta [$09.b]		; 87 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $098703.l,X		; DF 03 87 09
	cmp $098F03.l,X		; DF 03 8F 09
	cmp $098C03.l,X		; DF 03 8C 09
	cmp $C2E01B.l,X		; DF 1B E0 C2
	pld		; 2B
	cmp $60DF06.l,X		; DF 06 DF 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	bra   9.b		; 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097703.l,X		; DF 03 77 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097B06.l,X		; DF 06 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $067C03.l,X		; DF 03 7C 06
	jmp ($097B.w,X)		; 7C 7B 09
	cmp $097F03.l,X		; DF 03 7F 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $098203.l,X		; DF 03 82 09
	cmp $067B03.l,X		; DF 03 7B 06
	tda		; 7B
	adc $7B79.w,Y		; 79 79 7B
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	asl $7C.b		; 06 7C
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	asl $80.b		; 06 80
	adc $7B79.w,Y		; 79 79 7B
	ora #$DF.b		; 09 DF
	ora $E2.b,S		; 03 E2
	sbc ($58.b,X)		; E1 58
	rol $58E1.w		; 2E E1 58
	rol $0980.w		; 2E 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097703.l,X		; DF 03 77 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097B06.l,X		; DF 06 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $067B03.l,X		; DF 03 7B 06
	tda		; 7B
	adc $DF09.w,Y		; 79 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	asl $79.b		; 06 79
	adc [$77.b],Y		; 77 77
	adc $DF09.w,Y		; 79 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	asl $7C.b		; 06 7C
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	asl $80.b		; 06 80
	adc $7B79.w,Y		; 79 79 7B
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $76.b,S		; 03 76
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $85.b,S		; 03 85
	ora #$DF.b		; 09 DF
	ora $86.b,S		; 03 86
	ora #$DF.b		; 09 DF
	ora $87.b,S		; 03 87
	ora #$DF.b		; 09 DF
	and ($E1.b,S),Y		; 33 E1
	cli		; 58
	rol $0980.w		; 2E 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $097703.l,X		; DF 03 77 09
	cmp $127C03.l,X		; DF 03 7C 12
	cmp $097B06.l,X		; DF 06 7B 09
	cmp $098003.l,X		; DF 03 80 09
	cmp $097B03.l,X		; DF 03 7B 09
	cmp $067B03.l,X		; DF 03 7B 06
	tda		; 7B
	adc $DF09.w,Y		; 79 09 DF
	ora $7C.b,S		; 03 7C
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $79.b,S		; 03 79
	asl $79.b		; 06 79
	adc [$77.b],Y		; 77 77
	adc $DF09.w,Y		; 79 09 DF
	ora $82.b,S		; 03 82
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	ora ($DF.b)		; 12 DF
	asl $7B.b		; 06 7B
	ora #$DF.b		; 09 DF
	ora $7F.b,S		; 03 7F
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $7C.b,S		; 03 7C
	asl $7C.b		; 06 7C
	tda		; 7B
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	ora $7B.b,S		; 03 7B
	ora #$DF.b		; 09 DF
	ora $83.b,S		; 03 83
	ora #$DF.b		; 09 DF
	ora $80.b,S		; 03 80
	ora #$DF.b		; 09 DF
	tas		; 1B
	cpx #$50.b		; E0 50
	rol $06DF.w		; 2E DF 06
	cmp $60F560.l,X		; DF 60 F5 60
	bne  24.b		; D0 18
	bne -48.b		; D0 D0
	bne -48.b		; D0 D0
	bne -48.b		; D0 D0
	tsb $06D1.w		; 0C D1 06
	cmp ($D1.b),Y		; D1 D1
	cmp ($D1.b),Y		; D1 D1
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
.INDEX 8
	sep #$D0		; E2 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	cmp ($D1.b),Y		; D1 D1
	cmp ($E1.b),Y		; D1 E1
	ldx $30.b,Y		; B6 30
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	cmp $04.b,X		; D5 04
	cmp $D6.b,X		; D5 D6
	cmp ($0C.b),Y		; D1 0C
	cmp ($06.b),Y		; D1 06
	cmp ($D0.b),Y		; D1 D0
	clc		; 18
	cmp ($D0.b),Y		; D1 D0
	tsb $D1D0.w		; 0C D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	clc		; 18
	bne  12.b		; D0 0C
	cmp ($D1.b),Y		; D1 D1
	cmp ($18.b),Y		; D1 18
	cmp $0C.b,X		; D5 0C
	cmp ($D1.b),Y		; D1 D1
	asl $D1.b		; 06 D1
	sbc ($B6.b,X)		; E1 B6
	bmi -48.b		; 30 D0
	cmp ($0C.b),Y		; D1 0C
	bne  24.b		; D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne -47.b		; D0 D1
	bne  12.b		; D0 0C
	bne   6.b		; D0 06
	bne -47.b		; D0 D1
	clc		; 18
	bne -47.b		; D0 D1
	tsb $18D0.w		; 0C D0 18
	bne  12.b		; D0 0C
	cmp ($18.b),Y		; D1 18
	bne  12.b		; D0 0C
	bne -47.b		; D0 D1
	bne -48.b		; D0 D0
	cmp ($24.b),Y		; D1 24
	cpx #$A2.b		; E0 A2
	bmi -33.b		; 30 DF
	asl $DF.b		; 06 DF
	bmi -11.b		; 30 F5
	rts		; 60

	lda $30.b,S		; A3 30
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cmp $60F560.l,X		; DF 60 F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	sbc $60.b,X		; F5 60
	cpx #$96.b		; E0 96
	and ($8B.b),Y		; 31 8B
	cmp $8E088B.l,X		; DF 8B 08 8E
	phb		; 8B
	sty $DF04.w		; 8C 04 DF
	sty $8CDF.w		; 8C DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $8CDF8C.l,X		; DF 8C DF 8C
	cmp $8E088C.l,X		; DF 8C 08 8E
	tsb $DF.b		; 04 DF
	stx $8EDF.w		; 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $8EDF8E.l,X		; DF 8E DF 8E
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	php		; 08
	bit #$8B.b		; 89 8B
	sty $04.b		; 84 04
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	php		; 08
	sta ($02.b)		; 92 02
	sta ($06.b,S),Y		; 93 06
	sta ($08.b)		; 92 08
	stx $0484.w		; 8E 84 04
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	cmp $84DF84.l,X		; DF 84 DF 84
	php		; 08
	phb		; 8B
	stx $8490.w		; 8E 90 84
	tsb $DF.b		; 04 DF
	sty $DF.b		; 84 DF
	sty $DF.b		; 84 DF
	sty $DF.b		; 84 DF
	sty $DF.b		; 84 DF
	sty $DF.b		; 84 DF
	sty $DF.b		; 84 DF
	sty $DF0C.w		; 8C 0C DF
	tsb $8C.b		; 04 8C
	cmp $DF0C8C.l,X		; DF 8C 0C DF
	tsb $87.b		; 04 87
	cmp $DF148C.l,X		; DF 8C 14 DF
	tsb $E0.b		; 04 E0
	cpy $2F.b		; C4 2F
	cmp $18DF06.l,X		; DF 06 DF 18
	bne   8.b		; D0 08
	bne -47.b		; D0 D1
	bpl -48.b		; 10 D0
	cmp ($08.b),Y		; D1 08
	bne -33.b		; D0 DF
	bne -47.b		; D0 D1
	bne -48.b		; D0 D0
	bpl -47.b		; 10 D1
	bne   8.b		; D0 08
	bne -47.b		; D0 D1
	bpl -48.b		; 10 D0
	php		; 08
	cmp ($10.b),Y		; D1 10
	bne   8.b		; D0 08
	bne  16.b		; D0 10
	cmp ($08.b),Y		; D1 08
	bne -48.b		; D0 D0
	bpl -47.b		; 10 D1
	php		; 08
	bne -30.b		; D0 E2
	bne  16.b		; D0 10
	cmp ($D0.b),Y		; D1 D0
	cmp ($08.b),Y		; D1 08
	bne -33.b		; D0 DF
	bne -47.b		; D0 D1
	bpl -48.b		; 10 D0
	php		; 08
	bne -47.b		; D0 D1
	bpl -48.b		; 10 D0
	php		; 08
	bne -47.b		; D0 D1
	bpl -48.b		; 10 D0
	cmp ($08.b),Y		; D1 08
	bne -31.b		; D0 E1
	ldy $D032.w		; AC 32 D0
	bpl -47.b		; 10 D1
	php		; 08
	bne  16.b		; D0 10
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
.INDEX 8
	sep #$DF		; E2 DF
	bne -47.b		; D0 D1
	bpl -48.b		; 10 D0
	cmp ($08.b),Y		; D1 08
	bne -30.b		; D0 E2
	cmp $D0D1D0.l,X		; DF D0 D1 D0
	bpl -48.b		; 10 D0
	php		; 08
	cmp ($D0.b),Y		; D1 D0
	sbc ($DE.b,X)		; E1 DE
	and ($E1.b)		; 32 E1
	cmp ($32.b,S),Y		; D3 32
	sbc ($DE.b,X)		; E1 DE
	and ($DF.b)		; 32 DF
	bpl -47.b		; 10 D1
	php		; 08
	bne  16.b		; D0 10
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $04D5D4.l,X		; DF D4 D5 04
	cmp $D6.b,X		; D5 D6
	php		; 08
	cmp $04.b,X		; D5 04
	cmp $D5.b,X		; D5 D5
	php		; 08
	dec $D0.b,X		; D6 D0
	bne  16.b		; D0 10
	cmp ($D0.b),Y		; D1 D0
	php		; 08
	bne -47.b		; D0 D1
	bne -33.b		; D0 DF
	bpl -47.b		; 10 D1
	clc		; 18
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $D0D110.l,X		; DF 10 D1 D0
	php		; 08
	bne -47.b		; D0 D1
	bne -23.b		; D0 E9
	brk $03.b		; 00 03
	ora $DF33.w,Y		; 19 33 DF
	php		; 08
	cmp ($D1.b),Y		; D1 D1
	bne -47.b		; D0 D1
	bne -47.b		; D0 D1
	bne -48.b		; D0 D0
	bpl -47.b		; 10 D1
	bne   8.b		; D0 08
	bne -47.b		; D0 D1
	bne -33.b		; D0 DF
	bne -47.b		; D0 D1
	clc		; 18
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $18D110.l,X		; DF 10 D1 18
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $18D1D0.l,X		; DF D0 D1 18
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $D0D110.l,X		; DF 10 D1 D0
	php		; 08
	bne -47.b		; D0 D1
	bne -33.b		; D0 DF
	bne -47.b		; D0 D1
	clc		; 18
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $D0D110.l,X		; DF 10 D1 D0
	php		; 08
	bne -47.b		; D0 D1
	bne -33.b		; D0 DF
	bne -47.b		; D0 D1
	bpl -47.b		; 10 D1
	php		; 08
	dec $D1.b,X		; D6 D1
	tsb $D1.b		; 04 D1
	bne   8.b		; D0 08
	bne  16.b		; D0 10
	cmp ($08.b),Y		; D1 08
	bne  16.b		; D0 10
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $18D1D0.l,X		; DF D0 D1 18
	bne   8.b		; D0 08
	cmp ($10.b),Y		; D1 10
	bne -47.b		; D0 D1
	php		; 08
	bne  16.b		; D0 10
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $D0D1D0.l,X		; DF D0 D1 D0
	cmp ($D0.b),Y		; D1 D0
	cmp ($D1.b),Y		; D1 D1
	tsb $D1.b		; 04 D1
	bne  16.b		; D0 10
	cmp ($08.b),Y		; D1 08
	bne  16.b		; D0 10
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp $18D110.l,X		; DF 10 D1 18
	bne   8.b		; D0 08
	cmp ($10.b),Y		; D1 10
	bne -47.b		; D0 D1
	php		; 08
	bne  16.b		; D0 10
	bne   8.b		; D0 08
	cmp ($D0.b),Y		; D1 D0
	cmp ($04.b),Y		; D1 04
	cmp ($D1.b),Y		; D1 D1
	cmp ($D5.b),Y		; D1 D5
	cmp $D6.b,X		; D5 D6
	dec $D6.b,X		; D6 D6
	php		; 08
	bne -47.b		; D0 D1
	bne -32.b		; D0 E0
	sta ($32.b),Y		; 91 32
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b)		; D2 D0
	tsb $06D0.w		; 0C D0 06
	cmp ($D1.b)		; D2 D1
	tsb $06D0.w		; 0C D0 06
	cmp ($D2.b)		; D2 D2
	tsb $06D0.w		; 0C D0 06
	cmp ($D1.b)		; D2 D1
	tsb $06D0.w		; 0C D0 06
	cmp ($D0.b)		; D2 D0
	tsb $06D0.w		; 0C D0 06
	cmp ($D1.b)		; D2 D1
	tsb $06D0.w		; 0C D0 06
	cmp ($D0.b)		; D2 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b)		; D2 D0
	tsb $06D0.w		; 0C D0 06
	cmp ($D1.b)		; D2 D1
	tsb $00D0.w		; 0C D0 00
	sec		; 38
	pha		; 48
	sec		; 38
	adc $38.b,X		; 75 38
	sta $B438.w,Y		; 99 38 B4
	sec		; 38
	cld		; D8
	sec		; 38
	sbc ($38.b,S),Y		; F3 38
	asl $3239.w		; 0E 39 32
	and $3956.w,Y		; 39 56 39
	adc ($39.b),Y		; 71 39
	sta $39.b,X		; 95 39
	bcs  57.b		; B0 39
	ora ($3A.b,X)		; 01 3A
	rti		; 40

	dec A		; 3A
	adc $3ABE3A.l,X		; 7F 3A BE 3A
	pea $063A.w		; F4 3A 06
	tsa		; 3B
	and ($3B.b,X)		; 21 3B
	sty $3B.b		; 84 3B
	stx $3B.b,Y		; 96 3B
	cpy $E73B.w		; CC 3B E7
	tsa		; 3B
	and $3C5C3C.l		; 2F 3C 5C 3C
	ror $223C.w		; 6E 3C 22
	and $3D34.w,X		; 3D 34 3D
	lsr $3D.b		; 46 3D
	sta [$3D.b],Y		; 97 3D
	and [$3E.b]		; 27 3E
	.db $42, $3E		; 42 3E
	sta ($3E.b,X)		; 81 3E
	cpy #$3E.b		; C0 3E
	cpy #$3E.b		; C0 3E
	sed		; F8
	phk		; 4B
	sed		; F8
	phk		; 4B
	and $3D4F.w,X		; 3D 4F 3D
	eor $E153E1.l		; 4F E1 53 E1
	eor ($CB.b,S),Y		; 53 CB
	eor $6482.w,X		; 5D 82 64
	and $6C.b,S		; 23 6C
	sta $6F.b,S		; 83 6F
	and $70.b		; 25 70
	sbc $0771.w,Y		; F9 71 07
	adc ($48.b,S),Y		; 73 48
	adc [$5A.b],Y		; 77 5A
	adc [$75.b],Y		; 77 75
	adc [$90.b],Y		; 77 90
	adc [$9C.b],Y		; 77 9C
	adc $7DB7.w,X		; 7D B7 7D
	eor $E97E.w,Y		; 59 7E E9
	ror $7EFB.w,X		; 7E FB 7E
	and ($7F.b),Y		; 31 7F
	jmp $677F.w		; 4C 7F 67
	adc $F483F9.l,X		; 7F F9 83 F4
	phb		; 8B
	phd		; 0B
	sta $8E00.w		; 8D 00 8E
	ldx $D094.w		; AE 94 D0
	asl $D2.b		; 06 D2
	cmp ($0C.b),Y		; D1 0C
	bne   6.b		; D0 06
	cmp ($D0.b)		; D2 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b)		; D2 D0
	tsb $06D0.w		; 0C D0 06
	cmp ($D1.b)		; D2 D1
	tsb $06D0.w		; 0C D0 06
	cmp ($D2.b)		; D2 D2
	tsb $06D0.w		; 0C D0 06
	cmp ($D1.b)		; D2 D1
	tsb $06D0.w		; 0C D0 06
	cmp ($D0.b)		; D2 D0
	tsb $06D0.w		; 0C D0 06
	cmp ($D1.b)		; D2 D1
	tsb $06D0.w		; 0C D0 06
	cmp ($D0.b)		; D2 D0
	tsb $06D2.w		; 0C D2 06
	cmp ($D1.b)		; D2 D1
	tsb $06D2.w		; 0C D2 06
	cmp ($D0.b)		; D2 D0
	tsb $B700.w		; 0C 00 B7
	lda ($BC.b)		; B2 BC
	lda ($BC.b)		; B2 BC
	sty $CC.b		; 84 CC
	sty $CC.b		; 84 CC
	cmp $D2CFD2.l		; CF D2 CF D2
	phb		; 8B
	phx		; DA
	brk $DB.b		; 00 DB
	lda ($E0.b)		; B2 E0
	lda ($E0.b)		; B2 E0
	sty $F0.b		; 84 F0
	sty $F0.b		; 84 F0
	cmp $F6CFF6.l		; CF F6 CF F6
	phb		; 8B
	inc $B700.w,X		; FE 00 B7
	sta [$BC.b],Y		; 97 BC
	sta [$BC.b],Y		; 97 BC
	adc $79C8.w,Y		; 79 C8 79
	iny		; C8
	cmp $CC.b,X		; D5 CC
	asl $D2.b		; 06 D2
	bne  12.b		; D0 0C
	brk $DB.b		; 00 DB
	sta [$E0.b],Y		; 97 E0
	sta [$E0.b],Y		; 97 E0
	adc $79EC.w,Y		; 79 EC 79
	cpx $F0D5.w		; EC D5 F0
	cmp ($D0.b)		; D2 D0
	tsb $00D2.w		; 0C D2 00
	lda [$E0.b],Y		; B7 E0
	ldx $BEE0.w,Y		; BE E0 BE
	pea $F4CB.w		; F4 CB F4
	wai		; CB
	dec $CED0.w		; CE D0 CE
	bne  26.b		; D0 1A
	cmp $DB00.w,Y		; D9 00 DB
	cpx #$E2.b		; E0 E2
	cpx #$E2.b		; E0 E2
	pea $F4EF.w		; F4 EF F4
	sbc $CEF4CE.l		; EF CE F4 CE
	pea $FD1A.w		; F4 1A FD
	brk $B7.b		; 00 B7
	tyx		; BB
	ldy $BCBB.w,X		; BC BB BC
	txs		; 9A
	wai		; CB
	txs		; 9A
	wai		; CB
	cmp ($D1.b,X)		; C1 D1
	cmp ($D1.b,X)		; C1 D1
	jmp ($00D7.w,X)		; 7C D7 00
	stp		; DB
	tyx		; BB
	cpx #$BB.b		; E0 BB
	cpx #$9A.b		; E0 9A
	sbc $C1EF9A.l		; EF 9A EF C1
	sbc $C1.b,X		; F5 C1
	sbc $7C.b,X		; F5 7C
	xce		; FB
	brk $B7.b		; 00 B7
	.db $62, $BE, $62		; 62 BE 62
	ldx $CC18.w,Y		; BE 18 CC
	clc		; 18
	cpy $CF30.w		; CC 30 CF
	bmi -49.b		; 30 CF
	trb $D6.b		; 14 D6
	brk $DB.b		; 00 DB
	.db $62, $E2, $62		; 62 E2 62
.INDEX 8
	sep #$18		; E2 18
	beq  24.b		; F0 18
	beq  48.b		; F0 30
	sbc ($30.b,S),Y		; F3 30
	sbc ($14.b,S),Y		; F3 14
	plx		; FA
	brk $B7.b		; 00 B7
	cmp $CDBC.w		; CD BC CD
	ldy $C975.w,X		; BC 75 C9
	adc $C9.b,X		; 75 C9
	cmp [$D0.b],Y		; D7 D0
	cmp [$D0.b],Y		; D7 D0
	adc ($D7.b,S),Y		; 73 D7
	brk $DB.b		; 00 DB
	cmp $CDE0.w		; CD E0 CD
	cpx #$75.b		; E0 75
	sbc $ED75.w		; ED 75 ED
	cmp [$F4.b],Y		; D7 F4
	cmp [$F4.b],Y		; D7 F4
	adc ($FB.b,S),Y		; 73 FB
	brk $B7.b		; 00 B7
	phk		; 4B
	lda $BD4B.w,X		; BD 4B BD
	and ($CC.b,X)		; 21 CC
	and ($CC.b,X)		; 21 CC
	sbc $CFFFCF.l,X		; FF CF FF CF
	cmp #$D8.b		; C9 D8
	brk $DB.b		; 00 DB
	phk		; 4B
	sbc ($4B.b,X)		; E1 4B
	sbc ($21.b,X)		; E1 21
	beq  33.b		; F0 21
	beq  -1.b		; F0 FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc ($C9.b,S),Y		; F3 C9
	jsr ($B700.w,X)		; FC 00 B7
	lsr $BC.b		; 46 BC
	lsr $BC.b		; 46 BC
	lda ($C7.b,S),Y		; B3 C7
	lda ($C7.b,S),Y		; B3 C7
	ora $CF.b,X		; 15 CF
	ora $CF.b,X		; 15 CF
	rts		; 60

	cmp $00.b,X		; D5 00
	stp		; DB
	lsr $E0.b		; 46 E0
	lsr $E0.b		; 46 E0
	lda ($EB.b,S),Y		; B3 EB
	lda ($EB.b,S),Y		; B3 EB
	ora $F3.b,X		; 15 F3
	ora $F3.b,X		; 15 F3
	rts		; 60

	sbc $B700.w,Y		; F9 00 B7
	eor [$BE.b]		; 47 BE
	eor [$BE.b]		; 47 BE
	cmp ($CD.b),Y		; D1 CD
	cmp ($CD.b),Y		; D1 CD
	and $D4.b		; 25 D4
	and $D4.b		; 25 D4
	xce		; FB
	cmp $DB00.w,Y		; D9 00 DB
	eor [$E2.b]		; 47 E2
	eor [$E2.b]		; 47 E2
	cmp ($F1.b),Y		; D1 F1
	cmp ($F1.b),Y		; D1 F1
	and $F8.b		; 25 F8
	and $F8.b		; 25 F8
	xce		; FB
	sbc $FFFF.w,X		; FD FF FF
	sbc $FEBFFF.l,X		; FF FF BF FE
	sbc $0000FF.l		; EF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9C.b		; 00 9C
	ora #$9C.b		; 09 9C
	sta ($9E.b),Y		; 91 9E
	ora $A2.b,X		; 15 A2
	ora $A2.b,X		; 15 A2
	sbc $A4.b		; E5 A4
	sbc $A4.b		; E5 A4
	ora ($AE.b)		; 12 AE
	ora ($AE.b)		; 12 AE
	asl $1EB4.w,X		; 1E B4 1E
	ldy $27.b,X		; B4 27
	ldy $00.b,X		; B4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	sbc $FEFFBF.l		; EF BF FF FE
	sbc $00FFFF.l		; EF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $0000EF.l,X		; BF EF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $E7EF7F.l,X		; FF 7F EF E7
	xba		; EB
	xce		; FB
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $BFFFEF.l,X		; FF EF FF BF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $02B8E0.l,X		; FF E0 B8 02
	bra   1.b		; 80 01
	sbc $03B8E0.l,X		; FF E0 B8 03
	brk $02.b		; 00 02
	sbc $03B8E0.l,X		; FF E0 B8 03
	brk $03.b		; 00 03
	sbc $04B8E0.l,X		; FF E0 B8 04
	brk $04.b		; 00 04
	sbc $03B8E0.l,X		; FF E0 B8 03
	brk $05.b		; 00 05
	sbc $03B8E0.l,X		; FF E0 B8 03
	brk $06.b		; 00 06
	sbc $03B8E0.l,X		; FF E0 B8 03
	bra   7.b		; 80 07
	sbc $03B8E0.l,X		; FF E0 B8 03
	bra   8.b		; 80 08
	sbc $05B8E0.l,X		; FF E0 B8 05
	brk $09.b		; 00 09
	sbc $01B8E0.l,X		; FF E0 B8 01
	cpx #$0A.b		; E0 0A
	sbc $04B8E0.l,X		; FF E0 B8 04
	bvs  11.b		; 70 0B
	sbc $04B8E0.l,X		; FF E0 B8 04
	bvs  12.b		; 70 0C
	sbc $01B8E0.l,X		; FF E0 B8 01
	brk $0D.b		; 00 0D
	sbc $04B8E0.l,X		; FF E0 B8 04
	brk $0E.b		; 00 0E
	sbc $09B8E0.l,X		; FF E0 B8 09
	brk $0F.b		; 00 0F
	sbc $03B8E0.l,X		; FF E0 B8 03
	brk $10.b		; 00 10
	sbc $01B8E0.l,X		; FF E0 B8 01
	cpy #$11.b		; C0 11
	sbc $05B8E0.l,X		; FF E0 B8 05
	ldy #$12.b		; A0 12
	sbc $08B8E0.l,X		; FF E0 B8 08
	beq  19.b		; F0 13
	sbc $04B8E0.l,X		; FF E0 B8 04
	bvs  20.b		; 70 14
	sbc $04B8E0.l,X		; FF E0 B8 04
	bvs  21.b		; 70 15
	sbc $04B8E0.l,X		; FF E0 B8 04
	bvs  22.b		; 70 16
	sbc $09B8E0.l,X		; FF E0 B8 09
	bpl  23.b		; 10 17
	sbc $0FB8E0.l,X		; FF E0 B8 0F
	jsr $FF18.w		; 20 18 FF
	cpx #$B8.b		; E0 B8
	cop $00.b		; 02 00
	ora $E0FF.w,Y		; 19 FF E0
	clv		; B8
	ora $00.b,S		; 03 00
	inc A		; 1A
	sbc $03B8E0.l,X		; FF E0 B8 03
	brk $1B.b		; 00 1B
	sbc $08B8E0.l,X		; FF E0 B8 08
	brk $1C.b		; 00 1C
	sbc $05B8E0.l,X		; FF E0 B8 05
	beq  29.b		; F0 1D
	sbc $03B8E0.l,X		; FF E0 B8 03
	brk $1E.b		; 00 1E
	sbc $04B8E0.l,X		; FF E0 B8 04
	bra  31.b		; 80 1F
	sbc $02B8E0.l,X		; FF E0 B8 02
	brk $20.b		; 00 20
	sbc $03B8E0.l,X		; FF E0 B8 03
	bne  32.b		; D0 20
	sbc $02B8E0.l,X		; FF E0 B8 02
	cpy #$20.b		; C0 20
	sbc $03B8E0.l,X		; FF E0 B8 03
	brk $41.b		; 00 41
	sbc $03B8EE.l,X		; FF EE B8 03
	bra  66.b		; 80 42
	sbc $03B8E0.l,X		; FF E0 B8 03
	bvc  67.b		; 50 43
	sbc $03B8EE.l,X		; FF EE B8 03
	ldy #$44.b		; A0 44
	sbc $04B8EE.l,X		; FF EE B8 04
	brk $40.b		; 00 40
	sbc $04B8E0.l,X		; FF E0 B8 04
	bcc  65.b		; 90 41
	sbc $03B8EF.l,X		; FF EF B8 03
	brk $42.b		; 00 42
	sbc $02B8EF.l,X		; FF EF B8 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $2D.b,Y		; B6 2D
	sbc ($DF.b,X)		; E1 DF
	sbc $E1A2D1.l,X		; FF D1 A2 E1
	asl $B6.b		; 06 B6
	asl $03.b		; 06 03
	jsr $DDD1.w		; 20 D1 DD
	jsr ($0010.w,X)		; FC 10 00
	ldx $5E.b,Y		; B6 5E
	eor $4F2F10.l		; 4F 10 2F 4F
	ora $00.b,S		; 03 00
	inc $E0C6.w,X		; FE C6 E0
	bne -17.b		; D0 EF
	cpx #$E3.b		; E0 E3
	ora ($11.b,X)		; 01 11
	sbc ($B6.b),Y		; F1 B6
	beq  32.b		; F0 20
	eor $22.b,S		; 43 22
	lsr $0F3F.w,X		; 5E 3F 0F
	jsr ($0CB6.w,X)		; FC B6 0C
	cmp ($E0.b),Y		; D1 E0
	inc $A1D1.w,X		; FE D1 A1
.INDEX 8
	sep #$15		; E2 15
	ldx $F6.b,Y		; B6 F6
	ora $20.b,S		; 03 20
	cmp ($DD.b),Y		; D1 DD
	ora $011F.w		; 0D 1F 01
	ldx $5E.b,Y		; B6 5E
	eor $401E10.l		; 4F 10 1E 40
	ora ($F0.b,S),Y		; 13 F0
	ora $C0E0C6.l		; 0F C6 E0 C0
	sbc $02E2E1.l		; EF E1 E2 02
	bpl -15.b		; 10 F1
	ldx $F0.b,Y		; B6 F0
	and $5E3243.l,X		; 3F 43 32 5E
	rol $FCFF.w,X		; 3E FF FC
	ldx $0C.b,Y		; B6 0C
	cmp ($E0.b),Y		; D1 E0
	sbc $E1A2D1.l,X		; FF D1 A2 E1
	ora $B7.b		; 05 B7
	sbc [$13.b],Y		; F7 13
	bpl -47.b		; 10 D1
	cmp $10FC.w,X		; DD FC 10
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rep #$00		; C2 00
	brk $00.b		; 00 00
	tsb $43.b		; 04 43
	and ($21.b,S),Y		; 33 21
	bpl -106.b		; 10 96
	ora $EDDD.w		; 0D DD ED
	wai		; CB
	sbc $010100.l		; EF 00 01 01
	stx $F2EF.w		; 8E EF F2
	jsr $101F.w		; 20 1F 10
	sbc $A62102.l,X		; FF 02 21 A6
	ora ($01.b)		; 12 01
	ora $55.b,S		; 03 55
	asl $EEF0.w,X		; 1E F0 EE
	sbc $0FC08E.l		; EF 8E C0 0F
	asl $24DE.w		; 0E DE 24
	ora $8F0010.l		; 0F 10 00 8F
	sbc $1F20F2.l,X		; FF F2 20 1F
	bpl  -1.b		; 10 FF
	pea $0202.w		; F4 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b,Y		; 96 00
	brk $00.b		; 00 00
	ora [$55.b]		; 07 55
	mvn $43,$43		; 54 43 43
	stz $1000.w,X		; 9E 00 10
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	inc $7EED.w,X		; FE ED 7E
	jsl $E0DF0E.l		; 22 0E DF E0
	ora $12F0E0.l		; 0F E0 F0 12
	stx $1210.w		; 8E 10 12
	jsl $022042.l		; 22 42 20 02
	ora ($11.b,X)		; 01 11
	stz $0100.w,X		; 9E 00 01
	ora $00FF10.l		; 0F 10 FF 00
	cpx #$CE.b		; E0 CE
	adc $DF0E12.l,X		; 7F 12 0E DF
	cpx #$0F.b		; E0 0F
	cpx #$0F.b		; E0 0F
	ora ($02.b)		; 12 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($DC.b)		; D2 DC
	cmp $DDDD.w,X		; DD DD DD
	cmp $EEDD.w,X		; DD DD EE
	inc $4E96.w		; EE 96 4E
	brk $01.b		; 00 01
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($6A.b),Y		; 11 6A
	mvp $22,$00		; 44 00 22
	bit $44.b,X		; 34 44
	eor $66.b		; 45 66
	adc [$B6.b]		; 67 B6
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($00.b),Y		; 11 00
	and $DCD25E.l,X		; 3F 5E D2 DC
	cmp $DDDD.w,X		; DD DD DD
	cmp $EEDD.w,X		; DD DD EE
	inc $4E97.w		; EE 97 4E
	brk $01.b		; 00 01
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($02.b),Y		; 11 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b,Y		; 96 00
	brk $00.b		; 00 00
	phd		; 0B
	dec BG3VOFS.w		; CE 12 21
	tsb $96.b		; 04 96
	rti		; 40

	and $30.b,S		; 23 30
	cpx $45E4.w		; EC E4 45
	eor ($4E.b,X)		; 41 4E
	dec $F1.b		; C6 F1
	ora ($21.b)		; 12 21
	sbc $11A0.w,Y		; F9 A0 11
	jsr $960F.w		; 20 0F 96
	ora ($03.b,S),Y		; 13 03
	eor $2C.b,S		; 43 2C
	dec OAMADDL.w		; CE 02 21
	trb $96.b		; 14 96
	and ($22.b),Y		; 31 22
	and ($EC.b),Y		; 31 EC
	cpx $44.b		; E4 44
	.db $42, $3E		; 42 3E
	cmp [$00.b]		; C7 00
	ora ($21.b)		; 12 21
	sbc $11A0.w,Y		; F9 A0 11
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $0000.w,X		; 9E 00 00
	brk $0E.b		; 00 0E
	cmp ($20.b,S),Y		; D3 20
	beq -31.b		; F0 E1
	ldx $02EE.w		; AE EE 02
	eor $0E.b		; 45 0E
	cpx #$F0.b		; E0 F0
	sbc ($01.b),Y		; F1 01
	ldx $0110.w,Y		; BE 10 01
	sbc $21E1.w		; ED E1 21
	bpl -15.b		; 10 F1
	beq -106.b		; F0 96
	sbc $66E3.w		; ED E3 66
	plx		; FA
	dec $0F12.w		; CE 12 0F
	sbc $03EEAE.l,X		; FF AE EE 03
	and $0E.b,X		; 35 0E
	cpx #$0F.b		; E0 0F
	sbc ($02.b),Y		; F1 02
	lda $EE0001.l,X		; BF 01 00 EE
	cpx #$22.b		; E0 22
	ora ($F0.b,X)		; 01 F0
	ora $000002.l		; 0F 02 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $61.b		; 86 61
	mvp $43,$25		; 44 25 43
	bvc   1.b		; 50 01
	dec $8ABA.w,X		; DE BA 8A
	jsr $4312.w		; 20 12 43
	ora ($1E.b,S),Y		; 13 1E
	jsl $9A09EE.l		; 22 EE 09 9A
	cmp ($20.b),Y		; D1 20
	and $22.b,X		; 35 22
	beq  12.b		; F0 0C
	cmp $9ABE.w		; CD BE 9A
	and ($24.b,X)		; 21 24
	adc $FF.b,S		; 63 FF
	plx		; FA
	cmp $9AEFFE.l		; CF FE EF 9A
	and $11.b		; 25 11
	eor ($CC.b,X)		; 41 CC
	cpx $D0DE.w		; EC DE D0
	mvp $24,$9A		; 44 9A 24
	lsr $FDBD.w		; 4E BD FD
	cmp $4620F1.l,X		; DF F1 20 46
	txs		; 9A
	ora $CDFE.w,X		; 1D FE CD
	inc $5205.w,X		; FE 05 52
	mvp $9A,$EC		; 44 EC 9A
	cmp $42BF.w,X		; DD BF 42
	rol $31.b		; 26 31
	bmi -52.b		; 30 CC
	beq -86.b		; F0 AA
	ora ($10.b,X)		; 01 10
	beq  16.b		; F0 10
	sbc ($42.b)		; F2 42
	sbc $B19AFD.l,X		; FF FD 9A B1
	bmi  52.b		; 30 34
	and ($0F.b,S),Y		; 33 0F
	jsr ($BEDD.w,X)		; FC DD BE
	txs		; 9A
	jsr $6325.w		; 20 25 63
	sbc $FEC0EA.l,X		; FF EA C0 FE
	sbc $21159A.l		; EF 9A 15 21
	and ($DC.b),Y		; 31 DC
	jmp.w [$D0EE]		; DC EE D0
	and ($9A.b,S),Y		; 33 9A
	and $4E.b,X		; 35 4E
	lda $DFFE.w		; AD FE DF
	beq  33.b		; F0 21
	rol $9A.b,X		; 36 9A
	and $DDEE.w		; 2D EE DD
	sbc $5205.w,X		; FD 05 52
	mvn $9B,$DC		; 54 DC 9B
	sbc $42AF.w		; ED AF 42
	and [$31.b]		; 27 31
	jsr $00CC.w		; 20 CC 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	brk $00.b		; 00 00
	inc $3EF4.w,X		; FE F4 3E
	sbc ($14.b),Y		; F1 14
	bit $D1C2.w		; 2C C2 D1
	ora ($1C.b)		; 12 1C
	cmp ($0F.b),Y		; D1 0F
	jsr ($1DE3.w,X)		; FC E3 1D
.INDEX 16
	rep #$DC		; C2 DC
	sbc $1C.b,S		; E3 1C
	dec $2DF3.w,X		; DE F3 2D
	cpx #$C202.w		; E0 02 C2
	trb $33E3.w		; 1C E3 33
	rol WRDIVH.w		; 2E 05 42
	asl $C206.w,X		; 1E 06 C2
	rti		; 40

	ora $E03D05.l		; 0F 05 3D E0
	cop $F9.b		; 02 F9
	cmp ($C2.b,X)		; C1 C2
	ora ($FA.b),Y		; 11 FA
	cmp ($1F.b,S),Y		; D3 1F
	xba		; EB
	cmp ($1D.b,S),Y		; D3 1D
	inc $05C2.w		; EE C2 05
	bit $24E1.w		; 2C E1 24
	trb $23F3.w		; 1C F3 23
	rol $16C2.w		; 2E C2 16
	.db $42, $1E		; 42 1E
	ora $3D.b		; 05 3D
	cpx #$3D14.w		; E0 14 3D
.ACCU 16
	rep #$E1		; C2 E1
	ora ($0B.b,X)		; 01 0B
	cmp ($0F.b,X)		; C1 0F
	jsr ($1ED2.w,X)		; FC D2 1E
.ACCU 16
	rep #$EC		; C2 EC
	cmp ($1D.b)		; D2 1D
	sbc $E12D04.l		; EF 04 2D E1
	ora ($C2.b,S),Y		; 13 C2
	trb $33E3.w		; 1C E3 33
	rol WRDIVH.w		; 2E 05 42
	asl $C206.w,X		; 1E 06 C2
	rti		; 40

	ora $E03D05.l		; 0F 05 3D E0
	cop $F9.b		; 02 F9
	cmp ($C3.b,X)		; C1 C3
	ora ($FA.b),Y		; 11 FA
	cmp ($1F.b,S),Y		; D3 1F
	xba		; EB
	cmp ($1D.b,S),Y		; D3 1D
	inc $0002.w		; EE 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsx		; BA
	ora $4E.b,S		; 03 4E
	cmp $12F1.w,X		; DD F1 12
	and ($FE.b)		; 32 FE
	sbc $E5CCAA.l		; EF AA CC E5
	ror $5E.b		; 66 5E
	wai		; CB
	ldy $3313.w,X		; BC 13 33
	tax		; AA
	eor ($0E.b,S),Y		; 53 0E
	tsx		; BA
	cmp ($45.b,X)		; C1 45
	eor ($FC.b,S),Y		; 53 FC
	cmp $CDAA.w		; CD AA CD
	pea $4E66.w		; F4 66 4E
	stp		; DB
	lda $3313.w		; AD 13 33
	tax		; AA
	mvp $AA,$1D		; 44 1D AA
	cmp ($45.b),Y		; D1 45
	eor ($FC.b,S),Y		; 53 FC
	cmp $CDAB.w		; CD AB CD
	pea $5F56.w		; F4 56 5F
	wai		; CB
	lda $3313.w		; AD 13 33
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	pea $EF3F.w		; F4 3F EF
	sbc $FE2101.l,X		; FF 01 21 FE
	sbc $1F10BA.l,X		; FF BA 10 1F
	cop $2E.b		; 02 2E
	bcs  17.b		; B0 11
	ora ($43.b),Y		; 11 43
	ldx $2B.b,Y		; B6 2B
	dec $14F0.w		; CE F0 14
	lsr $FFCE.w		; 4E CE FF
	sbc $0100C6.l,X		; FF C6 00 01
	jsr $00EF.w		; 20 EF 00
	cop $42.b		; 02 42
	inc $20BA.w		; EE BA 20
	ora ($22.b)		; 12 22
	cpy $0102.w		; CC 02 01
	brk $F0.b		; 00 F0
	dex		; CA
	ora ($FE.b),Y		; 11 FE
	ora ($00.b,X)		; 01 00
	ora ($0C.b,S),Y		; 13 0C
	sbc ($01.b,X)		; E1 01
	ldx $12.b,Y		; B6 12
	.db $42, $DD		; 42 DD
	sbc $F1FFFF.l,X		; FF FF FF F1
	mvp $DF,$CA		; 44 CA DF
	ora ($00.b),Y		; 11 00
	jsl $1001EC.l		; 22 EC 01 10
	ora ($B6.b),Y		; 11 B6
	lsr $F0CD.w		; 4E CD F0
	ora $4102FF.l		; 0F FF 02 41
	cmp $F0C6.w,X		; DD C6 F0
	ora ($44.b,X)		; 01 44
	sbc $01EF.w,X		; FD EF 01
	jsl $DEB60E.l		; 22 0E B6 DE
	sbc $1300FF.l,X		; FF FF 00 13
	rol $FFDE.w,X		; 3E DE FF
	dex		; CA
	trb $FC.b		; 14 FC
	sbc ($11.b,X)		; E1 11
	brk $2F.b		; 00 2F
	sbc $2FBB10.l		; EF 10 BB 2F
	brk $01.b		; 00 01
	rol $20B0.w,X		; 3E B0 20
	cop $43.b		; 02 43
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6A.b		; 00 6A
	ora $AACCCE.l		; 0F CE CC AA
	tsx		; BA
	plb		; AB
	ldy $7ACB.w,X		; BC CB 7A
	sbc $EEEEEF.l		; EF EF EE EE
	dec $CCDC.w,X		; DE DC CC
	tsx		; BA
	ply		; 7A
	plb		; AB
	tax		; AA
	txy		; 9B
	tax		; AA
	ldy $EDCC.w,X		; BC CC ED
	sbc $32116A.l,X		; FF 6A 11 32
	eor $65.b		; 45 65
	lsr $65.b,X		; 56 65
	eor $44.b,X		; 55 44
	ply		; 7A
	jsl $222211.l		; 22 11 22 22
	and ($34.b)		; 32 34
	eor $55.b		; 45 55
	ply		; 7A
	lsr $66.b,X		; 56 66
	ror $55.b,X		; 76 55
	adc $42.b		; 65 42
	and ($10.b,S),Y		; 33 10
	rtl		; 6B

	bpl -35.b		; 10 DD
	ldy $ABBA.w,X		; BC BA AB
	tsx		; BA
	ldy $02CC.w		; AC CC 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	txs		; 9A
	cmp $1137.w,X		; DD 37 11
	ora ($12.b)		; 12 12
	ora ($01.b)		; 12 01
	ora ($7A.b)		; 12 7A
	eor $22.b,S		; 43 22
	and $22.b,S		; 23 22
	and $33.b,S		; 23 33
	and ($44.b,S),Y		; 33 44
	ply		; 7A
	eor $55.b		; 45 55
	ror $55.b		; 66 55
	ror $65.b		; 66 65
	mvp $7A,$54		; 44 54 7A
	eor $32.b,S		; 43 32
	and $32.b,S		; 23 32
	jsl $443333.l		; 22 33 33 44
	ply		; 7A
	eor $54.b,X		; 55 54
	ror $65.b		; 66 65
	adc $65.b		; 65 65
	mvn $7A,$44		; 54 44 7A
	mvp $33,$22		; 44 22 33
	jsl $233323.l		; 22 23 33 23
	eor $7A.b		; 45 7A
	eor $55.b		; 45 55
	lsr $66.b,X		; 56 66
	lsr $55.b,X		; 56 55
	eor $43.b,X		; 55 43
	ply		; 7A
	eor $33.b,S		; 43 33
	and ($22.b)		; 32 22
	and $33.b,S		; 23 33
	and ($34.b,S),Y		; 33 34
	ply		; 7A
	eor $55.b,X		; 55 55
	ror $55.b		; 66 55
	ror $55.b		; 66 55
	eor $44.b,X		; 55 44
	tda		; 7B
	and ($33.b,S),Y		; 33 33
	and ($22.b)		; 32 22
	and ($33.b)		; 32 33
	and ($44.b,S),Y		; 33 44
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	ora ($44.b,X)		; 01 44
	adc $DFAC.w,X		; 7D AC DF
	inc $00F0.w,X		; FE F0 00
	ldx $24.b,Y		; B6 24
	eor $7E.b,S		; 43 7E
	ldy $FEDE.w,X		; BC DE FE
	beq  17.b		; F0 11
	ldx $23.b,Y		; B6 23
	mvp $AC,$7D		; 44 7D AC
	cmp $00F0FE.l,X		; DF FE F0 00
	ldx $24.b,Y		; B6 24
	eor $7E.b,S		; 43 7E
	ldy $FEDE.w,X		; BC DE FE
	beq  17.b		; F0 11
	lda [$13.b],Y		; B7 13
	mvp $AC,$7D		; 44 7D AC
	sbc $00F0FE.l		; EF FE F0 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $000002.l,X		; FF 02 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ply		; 7A
	sbc $FFEE0F.l,X		; FF 0F EE FF
	sbc $42.b,S		; E3 42
	ora $007AF0.l		; 0F F0 7A 00
	ora ($21.b)		; 12 21
	ora ($2B.b)		; 12 2B
	lda $7A0000.l,X		; BF 00 00 7A
	ora $EEEEFF.l		; 0F FF EE EE
	dec $61.b,X		; D6 61
	sbc $008A00.l,X		; FF 00 8A 00
	ora ($01.b),Y		; 11 01
	ora ($1C.b)		; 12 1C
	cmp $8A1000.l,X		; DF 00 10 8A
	ora $FEFEFF.l		; 0F FF FE FE
	pea $FF41.w		; F4 41 FF
	ora ($8A.b,X)		; 01 8A
	brk $01.b		; 00 01
	jsl $CF1B11.l		; 22 11 1B CF
	ora ($0F.b),Y		; 11 0F
	txa		; 8A
	brk $FE.b		; 00 FE
	sbc $31F6EE.l,X		; FF EE F6 31
	beq -16.b		; F0 F0
	txa		; 8A
	ora ($11.b,X)		; 01 11
	ora ($22.b),Y		; 11 22
	ora $10C0.w,Y		; 19 C0 10
	brk $8A.b		; 00 8A
	beq  -1.b		; F0 FF
	sbc $41F7ED.l		; EF ED F7 41
	sbc $009AF1.l,X		; FF F1 9A 00
	ora ($11.b,X)		; 01 11
	ora ($0C.b),Y		; 11 0C
	cpx #$0100.w		; E0 00 01
	txs		; 9A
	brk $FF.b		; 00 FF
	sbc $3004FE.l,X		; FF FE 04 30
	sbc $009A01.l,X		; FF 01 9A 00
	ora ($11.b,X)		; 01 11
	ora ($FC.b),Y		; 11 FC
	beq   0.b		; F0 00
	brk $9A.b		; 00 9A
	brk $FF.b		; 00 FF
	sbc $1113FF.l,X		; FF FF 13 11
	ora $009AF1.l		; 0F F1 9A 00
	cop $11.b		; 02 11
	cop $FC.b		; 02 FC
	cpx #$1000.w		; E0 00 10
	txs		; 9A
	ora $EE0FFF.l		; 0F FF 0F EE
	bit $10.b		; 24 10
	brk $00.b		; 00 00
	txs		; 9A
	beq  18.b		; F0 12
	bpl  18.b		; 10 12
	xce		; FB
	beq   0.b		; F0 00
	brk $9A.b		; 00 9A
	brk $FF.b		; 00 FF
	inc $25FE.w,X		; FE FE 25
	and $9A00F0.l		; 2F F0 00 9A
	brk $11.b		; 00 11
	ora ($12.b),Y		; 11 12
	xba		; EB
	sbc ($10.b,X)		; E1 10
	beq -102.b		; F0 9A
	brk $0F.b		; 00 0F
	inc $230F.w		; EE 0F 23
	bpl   0.b		; 10 00
	brk $9A.b		; 00 9A
	sbc ($11.b),Y		; F1 11
	ora ($22.b,X)		; 01 22
	jmp.w [$00F0]		; DC F0 00
	brk $9B.b		; 00 9B
	brk $0F.b		; 00 0F
	inc $34FF.w		; EE FF 34
	ora $020F00.l,X		; 1F 00 0F 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $DF.b,Y		; B6 DF
	ora ($02.b,X)		; 01 02
	and $31B4.w,X		; 3D B4 31
	rol $B6E4.w,X		; 3E E4 B6
	sbc $FD54.w		; ED 54 FD
	cmp ($2E.b),Y		; D1 2E
	ora $0EB2.w,X		; 1D B2 0E
	ldx $03.b,Y		; B6 03
	tsb $5E.b		; 04 5E
	trb $0F.b		; 14 0F
	and ($EF.b,X)		; 21 EF
	tsb $13BA.w		; 0C BA 13
	and ($FE.b,X)		; 21 FE
	sbc ($1D.b)		; F2 1D
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
.ACCU 16
.INDEX 16
	rep #$BA		; C2 BA
	eor $EF.b,X		; 55 EF
	cmp $2010.w,X		; DD 10 20
	cmp ($2D.b,S),Y		; D3 2D
	ora $AA.b,S		; 03 AA
	ora $13EC.w,X		; 1D EC 13
	ora $01.b,S		; 03 01
	stz $0C22.w		; 9C 22 0C
	tsx		; BA
	and $CC.b,X		; 35 CC
	and $FD.b,S		; 23 FD
	sbc ($0F.b),Y		; F1 0F
	ora ($01.b),Y		; 11 01
	ldx $0F.b,Y		; B6 0F
	sbc ($DD.b)		; F2 DD
	ora ($31.b)		; 12 31
	sbc $C611DC.l,X		; FF DC 11 C6
	and ($FF.b,X)		; 21 FF
	bit $0F.b		; 24 0F
	ora $10FF00.l		; 0F 00 FF 10
	lda [$EF.b],Y		; B7 EF
	ora ($01.b,X)		; 01 01
	and $30C5.w		; 2D C5 30
	rol $02E3.w,X		; 3E E3 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror A		; 6A
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($0F.b,X)		; 01 0F
	dec $5A03.w,X		; DE 03 5A
	bmi  80.b		; 30 50
	sbc $3504.w,X		; FD 04 35
	stp		; DB
	txs		; 9A
	cmp $00017A.l		; CF 7A 01 00
	trb $4F.b		; 14 4F
	ldy $0000.w,X		; BC 00 00
	inc $E18A.w		; EE 8A E1
	ora ($22.b)		; 12 22
	brk $0F.b		; 00 0F
	sbc $8A15DC.l,X		; FF DC 15 8A
	rti		; 40

	beq  16.b		; F0 10
	brk $13.b		; 00 13
	ora $DFEC.w		; 0D EC DF
	txs		; 9A
	ora ($01.b,X)		; 01 01
	ora ($2F.b)		; 12 2F
	cmp $01FF.w,X		; DD FF 01
	ora $13E09A.l		; 0F 9A E0 13
	ora ($00.b)		; 12 00
	beq  14.b		; F0 0E
	cmp $9A34.w		; CD 34 9A
	and ($10.b),Y		; 31 10
	ora $2E13F0.l		; 0F F0 13 2E
	dec $9AF0.w		; CE F0 9A
	ora ($11.b),Y		; 11 11
	ora ($2E.b,S),Y		; 13 2E
	ldy $FFE0.w		; AC E0 FF
	brk $8A.b		; 00 8A
	cop $4F.b		; 02 4F
	ldy $DF0E.w,X		; BC 0E DF
	and ($11.b,X)		; 21 11
	cop $8A.b		; 02 8A
	eor $1E.b,X		; 55 1E
	cop $31.b		; 02 31
	sbc $21F1.w		; ED F1 21
	and $8A.b,S		; 23 8A
	mvn $E1,$1E		; 54 1E E1
	ora $DDBD.w		; 0D BD DD
	inc $8A02.w		; EE 02 8A
	eor $1C.b,S		; 43 1C
	ldy $EF0E.w		; AC 0E EF
	and ($00.b,X)		; 21 00
	ora $8A.b,S		; 03 8A
	eor $0E.b,X		; 55 0E
	ora ($20.b)		; 12 20
	asl $22E0.w		; 0E E0 22
	ora ($8A.b,S),Y		; 13 8A
	eor $1E.b,X		; 55 1E
	cpx #$CD0D.w		; E0 0D CD
	cmp $03DE.w,X		; DD DE 03
	txa		; 8A
	eor $1C.b,S		; 43 1C
	ldy $E0FE.w		; AC FE E0
	ora ($11.b),Y		; 11 11
	ora ($8A.b,X)		; 01 8A
	eor $1E.b,X		; 55 1E
	ora ($20.b)		; 12 20
	inc $21E1.w,X		; FE E1 21
	bit $8B.b		; 24 8B
	mvp $E1,$1E		; 44 1E E1
	ora $EEAC.w,X		; 1D AC EE
	dec $0202.w,X		; DE 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rep #$00		; C2 00
	brk $FE.b		; 00 FE
	pea $F13E.w		; F4 3E F1
	trb $2C.b		; 14 2C
.INDEX 16
	rep #$D1		; C2 D1
	ora ($1C.b)		; 12 1C
	cmp ($0F.b),Y		; D1 0F
	jsr ($1DE3.w,X)		; FC E3 1D
.INDEX 16
	rep #$DC		; C2 DC
	sbc $1C.b,S		; E3 1C
	dec $2DF3.w,X		; DE F3 2D
	cpx #$C202.w		; E0 02 C2
	trb $33E3.w		; 1C E3 33
	rol WRDIVH.w		; 2E 05 42
	asl $C206.w,X		; 1E 06 C2
	rti		; 40

	ora $E03D05.l		; 0F 05 3D E0
	cop $F9.b		; 02 F9
	cmp ($C2.b,X)		; C1 C2
	ora ($FA.b),Y		; 11 FA
	cmp ($1F.b,S),Y		; D3 1F
	xba		; EB
	cmp ($1D.b,S),Y		; D3 1D
	inc $05C2.w		; EE C2 05
	bit $24E1.w		; 2C E1 24
	trb $23F3.w		; 1C F3 23
	rol $16C2.w		; 2E C2 16
	.db $42, $1E		; 42 1E
	ora $3D.b		; 05 3D
	cpx #$3D14.w		; E0 14 3D
.ACCU 16
	rep #$E1		; C2 E1
	ora ($0B.b,X)		; 01 0B
	cmp ($0F.b,X)		; C1 0F
	jsr ($1ED2.w,X)		; FC D2 1E
.ACCU 16
	rep #$EC		; C2 EC
	cmp ($1D.b)		; D2 1D
	sbc $E12D04.l		; EF 04 2D E1
	ora ($C2.b,S),Y		; 13 C2
	trb $33E3.w		; 1C E3 33
	rol WRDIVH.w		; 2E 05 42
	asl $C206.w,X		; 1E 06 C2
	rti		; 40

	ora $E03D05.l		; 0F 05 3D E0
	cop $F9.b		; 02 F9
	cmp ($C3.b,X)		; C1 C3
	ora ($FA.b),Y		; 11 FA
	cmp ($1F.b,S),Y		; D3 1F
	xba		; EB
	cmp ($1D.b,S),Y		; D3 1D
	inc $0000.w		; EE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	brk $10.b		; 00 10
	stp		; DB
	cpx $32.b		; E4 32
	wai		; CB
	ora $1EB81F.l		; 0F 1F B8 1E
	bpl   0.b		; 10 00
	sbc ($01.b,X)		; E1 01
	eor ($BA.b,X)		; 41 BA
	eor ($B4.b,X)		; 41 B4
	sbc $2515.w,X		; FD 15 25
	and $E153BF.l,X		; 3F BF 53 E1
	ora ($B4.b)		; 12 B4
	ora $F35EF1.l		; 0F F1 5E F3
	asl $0E01.w,X		; 1E 01 0E
	dec $66B0.w,X		; DE B0 66
	and [$75.b],Y		; 37 75
	asl $F0DD.w,X		; 1E DD F0
	sbc $11B4DD.l,X		; FF DD B4 11
	stp		; DB
	and ($CF.b,X)		; 21 CF
	sbc $0DE210.l,X		; FF 10 E2 0D
	ldy $CE.b		; A4 CE
	and $01.b,S		; 23 01
	phx		; DA
	and ($12.b,X)		; 21 12
	and ($E3.b)		; 32 E3
	ldy $FA.b,X		; B4 FA
	bit $FF.b,X		; 34 FF
	ora ($EF.b),Y		; 11 EF
	asl $4D.b		; 06 4D
	sbc $30F1C4.l		; EF C4 F1 30
	sbc ($20.b,X)		; E1 20
	sbc $E04FF3.l,X		; FF F3 4F E0
	ldy $EF.b,X		; B4 EF
	eor ($DD.b)		; 52 DD
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	bmi   1.b		; 30 01
	inc $04B4.w,X		; FE B4 04
	inc $13DF.w,X		; FE DF 13
	and ($CC.b),Y		; 31 CC
	pea $C440.w		; F4 40 C4
	beq  16.b		; F0 10
	beq  15.b		; F0 0F
	beq -16.b		; F0 F0
	.db $42, $EE		; 42 EE
	ldy $14.b,X		; B4 14
	sbc $F4ED1F.l,X		; FF 1F ED F4
	ora $22F1.w,X		; 1D F1 22
	ldy $0E.b,X		; B4 0E
	ora $4300DF.l		; 0F DF 00 43
	cmp $CDFE.w,X		; DD FE CD
	clv		; B8
	eor $F41BE2.l		; 4F E2 1B F4
	pld		; 2B
	ldy $40.b,X		; B4 40
	dec $D2A8.w,X		; DE A8 D2
	jsr $F0E0.w		; 20 E0 F0
	sbc $F00DE3.l,X		; FF E3 0D F0
	sty $20.b		; 84 20
	cmp $E0EFEF.l,X		; DF EF EF E0
	phd		; 0B
	pea $B4A1.w		; F4 A1 B4
	jsl $101000.l		; 22 00 10 10
	and $0E.b,S		; 23 0E
	ora ($0F.b,X)		; 01 0F
	clv		; B8
	brk $03.b		; 00 03
	and $FEF2.w,X		; 3D F2 FE
	and ($FF.b)		; 32 FF
	sbc $B4.b,S		; E3 B4
	bpl -27.b		; 10 E5
	rol $110F.w		; 2E 0F 11
	ora ($0F.b)		; 12 0F
	ora ($A4.b)		; 12 A4
	ora ($42.b),Y		; 11 42
	cmp $0F0112.l		; CF 12 01 0F
	inc $B42F.w,X		; FE 2F B4
	beq  -2.b		; F0 FE
	asl $FF02.w		; 0E 02 FF
	brk $41.b		; 00 41
	stz $10B4.w		; 9C B4 10
	ora $0F42D0.l,X		; 1F D0 42 0F
	sbc $10CE.w,X		; FD CE 10
	ldy $00.b		; A4 00
	inc $10FD.w		; EE FD 10
	sbc ($0E.b,X)		; E1 0E
	cpx $10.b		; E4 10
	clv		; B8
	sbc $0E0E12.l,X		; FF 12 0E 0E
	pea $B23B.w		; F4 3B B2
	.db $42, $A4		; 42 A4
	jmp ($35BF.w)		; 6C BF 35
	brk $21.b		; 00 21
	sbc $B8BAFD.l		; EF FD BA B8
	jsl $0E03FE.l		; 22 FE 03 0E
	rol $E40F.w		; 2E 0F E4
	jmp $CDB4.w		; 4C B4 CD
	cop $22.b		; 02 22
	rol $22D0.w		; 2E D0 22
	ora $34B4F0.l		; 0F F0 B4 34
	jsr ($1202.w,X)		; FC 02 12
	and ($01.b,X)		; 21 01
	and ($DD.b),Y		; 31 DD
	ldy $45.b,X		; B4 45
	sbc $11210F.l,X		; FF 0F 21 11
	cmp ($2F.b),Y		; D1 2F
	beq -76.b		; F0 B4
	.db $42, $D1		; 42 D1
	ora $203DF2.l,X		; 1F F2 3D 20
	beq  13.b		; F0 0D
	ldy $F4.b,X		; B4 F4
	xce		; FB
	cop $0F.b		; 02 0F
	ora ($2F.b,S),Y		; 13 2F
	cmp $1DA800.l		; CF 00 A8 1D
	and $D410.w		; 2D 10 D4
	nop		; EA
	and $DF.b,X		; 35 DF
	sbc $114EA4.l,X		; FF A4 4E 11
	wai		; CB
	bvc -81.b		; 50 AF
	and $A4121C.l		; 2F 1C 12 A4
	cmp $E1D0.w,X		; DD D0 E1
	ora $CFEE12.l,X		; 1F 12 EE CF
	and ($B4.b)		; 32 B4
	jsr $40C0.w		; 20 C0 40
	beq  15.b		; F0 0F
	sbc ($41.b),Y		; F1 41
	dec $34B4.w,X		; DE B4 34
	ora ($00.b),Y		; 11 00
	ora ($0E.b,X)		; 01 0E
	and ($ED.b,S),Y		; 33 ED
	tsb $A4.b		; 04 A4
	jmp ($01F2.w,X)		; 7C F2 01
	bpl -15.b		; 10 F1
	and ($D1.b,X)		; 21 D1
	bmi -76.b		; 30 B4
	sbc $00F033.l		; EF 33 F0 00
	ora ($1E.b,X)		; 01 1E
	ora $A8E4.w		; 0D E4 A8
	tyx		; BB
	jmp $32A120.l		; 5C 20 A1 32
	rol $AF10.w		; 2E 10 AF
	ldy $10.b,X		; B4 10
	cpx #$0E.b		; E0 0E
	asl $FDE3.w		; 0E E3 FD
	ora ($EF.b)		; 12 EF
	ldy $1F.b		; A4 1F
	and $2914BF.l,X		; 3F BF 14 29
	cmp ($F0.b),Y		; D1 F0
	jsr $FEA4.w		; 20 A4 FE
	ora $10.b,S		; 03 10
	sbc ($3D.b)		; F2 3D
	bne 100.b		; D0 64
	sbc #$B4.b		; E9 B4
	cmp ($40.b,S),Y		; D3 40
	sbc $120D24.l		; EF 24 0D 12
	sbc $B1A821.l,X		; FF 21 A8 B1
	eor ($DD.b),Y		; 51 DD
	lsr $CD.b		; 46 CD
	cop $30.b		; 02 30
	stp		; DB
	ldy $17.b		; A4 17
	and $040FF0.l		; 2F F0 0F 04
	and $0004.w,X		; 3D 04 00
	ldy $2E.b		; A4 2E
	sbc ($DC.b,S),Y		; F3 DC
	adc $B1.b,S		; 63 B1
	sbc $94FF40.l		; EF 40 FF 94
	cmp ($50.b,X)		; C1 50
	ldy $B0F0.w,X		; BC F0 B0
	adc $FBAE.w,X		; 7D AE FB
	sty $BF.b,X		; 94 BF
	eor ($91.b),Y		; 51 91
	ora $60B0.w		; 0D B0 60
	lda $A4FD.w		; AD FD A4
	and $DD33BF.l		; 2F BF 33 DD
	sbc $2F02.w		; ED 02 2F
	bne -92.b		; D0 A4
	ora $D0F0.w		; 0D F0 D0
	and ($1C.b)		; 32 1C
	cmp $A41021.l		; CF 21 10 A4
	ldy #$42.b		; A0 42
	jsr ($03FF.w,X)		; FC FF 03
	ora $A430F2.l,X		; 1F F2 30 A4
	cpx $0B35.w		; EC 35 0B
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	cop $43.b		; 02 43
	cmp $1022A4.l,X		; DF A4 22 10
	sbc ($42.b),Y		; F1 42
	cmp $3D36.w,X		; DD 36 3D
	cop $A8.b		; 02 A8
	cmp ($3D.b,S),Y		; D3 3D
	bmi -95.b		; 30 A1
	adc $CB.b		; 65 CB
	ora ($40.b),Y		; 11 40
	tya		; 98
	sbc $DF.b,X		; F5 DF
	and $B0.b,S		; 23 B0
	eor $FA.b		; 45 FA
	and ($10.b,S),Y		; 33 10
	tay		; A8
	beq  16.b		; F0 10
	ora ($0E.b,X)		; 01 0E
	bpl   1.b		; 10 01
	asl $B4DF.w,X		; 1E DF B4
	beq  33.b		; F0 21
	cpx #$1E.b		; E0 1E
	bne  17.b		; D0 11
	asl $94DF.w		; 0E DF 94
	stz $99.b,X		; 74 99
	ora ($DB.b,X)		; 01 DB
	dec $D923.w,X		; DE 23 D9
	brk $A4.b		; 00 A4
	dec INIDSP.w		; CE 00 21
	bne  29.b		; D0 1D
	sbc ($01.b),Y		; F1 01
	trb $F2A4.w		; 1C A4 F2
	jsr $13DF.w		; 20 DF 13
	trb $11E3.w		; 1C E3 11
	asl $C694.w,X		; 1E 94 C6
	bvs  33.b		; 70 21
	tsb $6F.b		; 04 6F
	trb $B1.b		; 14 B1
	adc ($A4.b,S),Y		; 73 A4
	ora ($F0.b),Y		; 11 F0
	jsr $3014.w		; 20 14 30
	inc $4004.w,X		; FE 04 40
	sty $F2.b,X		; 94 F2
	mvp $1F,$F0		; 44 F0 1F
	mvp $C3,$2D		; 44 2D C3
	eor $4EF2A4.l,X		; 5F A4 F2 4E
	cmp ($11.b,X)		; C1 11
	bpl  31.b		; 10 1F
	sbc ($20.b)		; F2 20
	sty $BB.b,X		; 94 BB
	trb $22.b		; 14 22
	jmp.w [$FE00]		; DC 00 FE
	sbc ($E9.b,S),Y		; F3 E9
	ldy $E1.b		; A4 E1
	and ($DB.b,S),Y		; 33 DB
	beq -16.b		; F0 F0
	ora ($0E.b),Y		; 11 0E
	cpx #$94.b		; E0 94
	cpx $41D0.w		; EC D0 41
	ldy $04EB.w,X		; BC EB 04
	eor ($BD.b,X)		; 41 BD
	tya		; 98
	xce		; FB
	eor $FE.b		; 45 FE
	xba		; EB
	asl $FD22.w,X		; 1E 22 FD
	lda ($94.b)		; B2 94
	ora $E2AC03.l,X		; 1F 03 AC E2
	and $11B2.w,X		; 3D B2 11
	xce		; FB
	ldy $12.b		; A4 12
	inc $1310.w		; EE 10 13
	ora $40F3.w		; 0D F3 40
	ora ($94.b,X)		; 01 94
	jsl $0D1310.l		; 22 10 13 0D
	bit $44.b,X		; 34 44
	mvp $94,$22		; 44 22 94
	stp		; DB
	rol $6F.b,X		; 36 6F
	cmp $4D.b		; C5 4D
	sbc $62.b,X		; F5 62
	bmi -92.b		; 30 A4
	inc $EF34.w,X		; FE 34 EF
	ora ($E0.b)		; 12 E0
	and $A420DF.l		; 2F DF 20 A4
	cmp ($6F.b,S),Y		; D3 6F
	cmp $10E1.w		; CD E1 10
	sbc ($3F.b),Y		; F1 3F
	cmp $13DD94.l,X		; DF 94 DD 13
	lsr $00BD.w		; 4E BD 00
	and ($CF.b,X)		; 21 CF
	jsr $DC94.w		; 20 94 DC
	cmp $FE21F1.l,X		; DF F1 21 FE
	lda $94EC44.l,X		; BF 44 EC 94
	cpx #$45.b		; E0 45
	ora $21BB01.l,X		; 1F 01 BB 21
	beq  54.b		; F0 36
	ldy #$42.b		; A0 42
	sbc $2E1321.l		; EF 21 13 2E
	cpy #$52.b		; C0 52
	cpy $41A4.w		; CC A4 41
	cmp $0E23.w,X		; DD 23 0E
	sbc ($10.b,X)		; E1 10
	sbc ($0E.b),Y		; F1 0E
	sty $14.b,X		; 94 14
	sbc $0CDE.w,X		; FD DE 0C
	asl $4C.b		; 06 4C
	lda ($20.b,X)		; A1 20
	sty $10.b,X		; 94 10
	bne   3.b		; D0 03
	inc $9D4F.w,X		; FE 4F 9D
	mvn $94,$FE		; 54 FE 94
	inc $6F.b		; E6 6F
	beq  18.b		; F0 12
	eor ($CE.b,S),Y		; 53 CE
	and ($10.b,S),Y		; 33 10
	sty $D2.b,X		; 94 D2
	and ($FF.b,X)		; 21 FF
	and ($35.b),Y		; 31 35
	trb $0FE1.w		; 1C E1 0F
	ldy $43.b		; A4 43
	cpx #$20.b		; E0 20
	ora $5DD4.w		; 0D D4 5D
	cmp $5F.b,S		; C3 5F
	ldy $EE.b		; A4 EE
	ora ($0C.b,S),Y		; 13 0C
	sbc $2E.b,S		; E3 2E
	sbc ($1F.b,X)		; E1 1F
	cmp ($A4.b,S),Y		; D3 A4
	and $3EE2.w,X		; 3D E2 3E
	cmp ($2E.b,X)		; C1 2E
	cmp $94E030.l		; CF 30 E0 94
	cmp $FBF1.w,X		; DD F1 FB
	ora $EA.b,X		; 15 EA
	ora ($31.b)		; 12 31
	ldx $31A4.w		; AE A4 31
	cpy $0013.w		; CC 13 00
	asl $42D0.w		; 0E D0 42
	sbc $360E98.l		; EF 98 0E 36
	cmp $0A20.w,X		; DD 20 0A
	cpy $53.b		; C4 53
	rol A		; 2A
	sty $B1.b,X		; 94 B1
	bit $EA47.w		; 2C 47 EA
	brk $E4.b		; 00 E4
	bvc -51.b		; 50 CD
	sty $01.b,X		; 94 01
	sbc ($5F.b,X)		; E1 5F
	cmp ($22.b)		; D2 22
	and ($0B.b),Y		; 31 0B
	lda ($98.b,S),Y		; B3 98
	bne  46.b		; D0 2E
	cmp ($7E.b,X)		; C1 7E
	pei ($0D.b)		; D4 0D
	cpx $A465.w		; EC 65 A4
	bpl  -1.b		; 10 FF
	beq  67.b		; F0 43
	jsr ($42D0.w,X)		; FC D0 42
	jsr ($CEA0.w,X)		; FC A0 CE
	ora $D03EF3.l		; 0F F3 3E D0
	bpl -16.b		; 10 F0
	jsl $1C03A4.l		; 22 A4 03 1C
	bne  16.b		; D0 10
	bpl -15.b		; 10 F1
	bpl  17.b		; 10 11
	tay		; A8
	inc $2D14.w		; EE 14 2D
	cmp ($3F.b),Y		; D1 3F
	sbc ($00.b,X)		; E1 00
	and ($94.b),Y		; 31 94
	cpx $37CE.w		; EC CE 37
	phd		; 0B
	ora $10.b,S		; 03 10
	sbc ($10.b,X)		; E1 10
	ldy $FD.b		; A4 FD
	ora ($00.b,X)		; 01 00
	and ($DE.b,X)		; 21 DE
	ora ($3F.b,S),Y		; 13 3F
	cmp $2D10A8.l,X		; DF A8 10 2D
.ACCU 8
	sep #$22		; E2 22
	jmp.w [$FF32]		; DC 32 FF
	sbc $94.b,S		; E3 94
	bmi  12.b		; 30 0C
	cmp ($0C.b,S),Y		; D3 0C
	inc $5E15.w,X		; FE 15 5E
	dec $F0A4.w,X		; DE A4 F0
	and $0E32C0.l		; 2F C0 32 0E
	inc $1C35.w		; EE 35 1C
	tay		; A8
	tsb $2D.b		; 04 2D
	ora $FC.b,S		; 03 FC
	ora ($FF.b)		; 12 FF
	and $F090E0.l,X		; 3F E0 90 F0
	ora ($FC.b)		; 12 FC
	cmp $1C46FF.l		; CF FF 46 1C
	lda ($90.b),Y		; B1 90
	adc ($04.b,S),Y		; 73 04
	and ($25.b)		; 32 25
	eor $6FF7.w,X		; 5D F7 6F
	pei ($A4.b)		; D4 A4
	and $EE20F1.l		; 2F F1 20 EE
	and $0B.b		; 25 0B
	pea $942E.w		; F4 2E 94
	pei ($4F.b)		; D4 4F
	bne  32.b		; D0 20
	cpy #$3E.b		; C0 3E
	sbc ($FE.b),Y		; F1 FE
	ldy $02.b		; A4 02
	and $52FFE1.l,X		; 3F E1 FF 52
	ldx $EE21.w,Y		; BE 21 EE
	ldy $F0.b		; A4 F0
	and ($0E.b,S),Y		; 33 0E
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	and $21D0A4.l		; 2F A4 D0 21
	sbc $1EF4.w,X		; FD F4 1E
	sbc ($0D.b,X)		; E1 0D
	ora ($A4.b,S),Y		; 13 A4
	tsb $22F2.w		; 0C F2 22
	cmp $10CF30.l,X		; DF 30 CF 10
	beq -92.b		; F0 A4
	sbc $E02110.l		; EF 10 21 E0
	jsr $21CD.w		; 20 CD 21
	asl $E1A4.w		; 0E A4 E1
	jsl $0FF3FC.l		; 22 FC F3 0F
	and $20F3.w		; 2D F3 20
	ldy $BE.b		; A4 BE
	.db $42, $02		; 42 02
	brk $20.b		; 00 20
	cmp $A43101.l		; CF 01 31 A4
	dec $1D13.w,X		; DE 13 1D
	bit $DC.b,X		; 34 DC
	ora ($2E.b,S),Y		; 13 2E
	pei ($A4.b)		; D4 A4
	lsr $1FE2.w,X		; 5E E2 1F
	cpx #$12.b		; E0 12
	ora $A41E00.l		; 0F 00 1E A4
	sbc ($32.b,X)		; E1 32
	brk $0E.b		; 00 0E
	sbc ($33.b,X)		; E1 33
	jsr ($A413.w,X)		; FC 13 A4
	tsb $2ED2.w		; 0C D2 2E
	sbc ($EF.b,X)		; E1 EF
	and ($F0.b,X)		; 21 F0
	and $10C0A4.l		; 2F A4 C0 10
	ora $20E000.l		; 0F 00 E0 20
	ora $FD9401.l		; 0F 01 94 FD
	cmp ($40.b),Y		; D1 40
	rol $D1F0.w		; 2E F0 D1
	bvc -84.b		; 50 AC
	ldy #$D1.b		; A0 D1
	and ($0F.b),Y		; 31 0F
	sbc $01FF00.l		; EF 00 FF 01
	asl $1494.w		; 0E 94 14
	ora $23D2.w,X		; 1D D2 23
	rti		; 40

	wai		; CB
	tsb $2E.b		; 04 2E
	sty $DF.b,X		; 94 DF
	and $E0.b,S		; 23 E0
	inc $BB44.w,X		; FE 44 BB
	and ($03.b,X)		; 21 03
	sty $0E.b,X		; 94 0E
	brk $F1.b		; 00 F1
	rts		; 60

	cmp $D10BF2.l		; CF F2 0B D1
	ldy $34.b		; A4 34
	jsr ($20F2.w,X)		; FC F2 20
	sbc $1D0211.l		; EF 11 02 1D
	sty $D5.b,X		; 94 D5
	ror $52C4.w		; 6E C4 52
	ldy $F000.w		; AC 00 F0
	eor ($A4.b)		; 52 A4
	sbc ($40.b,X)		; E1 40
	cmp $1F03.w,X		; DD 03 1F
	ora ($FE.b,X)		; 01 FE
	jsl $03ECA4.l		; 22 A4 EC 03
	ora $2F02.w		; 0D 02 2F
	bne  33.b		; D0 21
	cmp $E594.w,X		; DD 94 E5
	and $1FD22D.l		; 2F 2D D2 1F
	inc $14CD.w,X		; FE CD 14
	sty $2D.b,X		; 94 2D
	cmp ($10.b),Y		; D1 10
	cpx #$22.b		; E0 22
	and $943CD2.l		; 2F D2 3C 94
	sbc $45.b,S		; E3 45
	inc $C21D.w,X		; FE 1D C2
	and ($EE.b)		; 32 EE
	eor $94.b,S		; 43 94
	sbc $30E4.w		; ED E4 30
	ora $1D.b,S		; 03 1D
	cmp ($30.b),Y		; D1 30
	dec $4594.w		; CE 94 45
	phx		; DA
	and $11.b,S		; 23 11
	bne  17.b		; D0 11
	lsr $90B0.w		; 4E B0 90
	ora $75.b,S		; 03 75
	asl $3B16.w,X		; 1E 16 3B
	ldx $F0EE.w,Y		; BE EE F0
	sty $AD.b		; 84 AD
	jsl $44D13E.l		; 22 3E D1 44
	cmp $A8A13D.l,X		; DF 3D A1 A8
	and $110FE1.l		; 2F E1 0F 11
	cpx #$32.b		; E0 32
	cpy $9424.w		; CC 24 94
	bvc -64.b		; 50 C0
	eor ($ED.b,S),Y		; 53 ED
.INDEX 16
	rep #$50		; C2 50
	beq -15.b		; F0 F1
	tya		; 98
	brk $EE.b		; 00 EE
	and ($2F.b),Y		; 31 2F
	cmp $4C.b,S		; C3 4C
	cmp ($3D.b,S),Y		; D3 3D
	sty $BD.b,X		; 94 BD
	bit $FB.b,X		; 34 FB
	lda $B1F947.l,X		; BF 47 F9 B1
	bpl -108.b		; 10 94
	cop $1F.b		; 02 1F
	ora $FF04EC.l		; 0F EC 04 FF
	bpl -36.b		; 10 DC
	sty $D2.b,X		; 94 D2
	eor $212EC1.l,X		; 5F C1 2E 21
	lda $0C11.w		; AD 11 0C
	sty $D4.b,X		; 94 D4
	and $DE22F0.l		; 2F F0 22 DE
	and ($01.b,X)		; 21 01
	sbc ($A4.b)		; F2 A4
	rol $1102.w		; 2E 02 11
	and ($EC.b,X)		; 21 EC
	trb $1D.b		; 14 1D
	sbc ($A4.b)		; F2 A4
	eor ($E1.b,X)		; 41 E1
	bmi -18.b		; 30 EE
	cop $20.b		; 02 20
	sbc ($20.b),Y		; F1 20
	ldy $FE.b		; A4 FE
	ora $30.b,S		; 03 30
	cmp $FE22.w		; CD 22 FE
	bit $0D.b		; 24 0D
	ldy $DF.b		; A4 DF
	eor $FE.b,S		; 43 FE
	ora ($EF.b),Y		; 11 EF
	ora $1FE2.w		; 0D E2 1F
	ldy $02.b		; A4 02
	rol $41D1.w		; 2E D1 41
	sbc $0011DD.l,X		; FF DD 11 00
	sty $0F.b,X		; 94 0F
	brk $1E.b		; 00 1E
	sbc $1B.b,X		; F5 1B
	dec $0D13.w		; CE 13 0D
	ldy $F1.b		; A4 F1
	and ($EE.b),Y		; 31 EE
	sbc ($1F.b),Y		; F1 1F
	sbc $4E04.w		; ED 04 4E
	tay		; A8
	pei ($10.b)		; D4 10
	ora $00F00F.l,X		; 1F 0F F0 00
	ora ($00.b),Y		; 11 00
	ldy $FE.b		; A4 FE
	sbc ($20.b,X)		; E1 20
	beq   0.b		; F0 00
	ora ($20.b,X)		; 01 20
	dec $4394.w		; CE 94 43
	sbc $5F0102.l		; EF 02 01 5F
	lda ($41.b)		; B2 41
	sbc $03A4.w		; ED A4 03
	rol $31B0.w,X		; 3E B0 31
	ora ($FF.b),Y		; 11 FF
	ora $5D9413.l		; 0F 13 94 5D
	cmp $72.b,S		; C3 72
	dec $4112.w		; CE 12 41
	sbc ($2D.b),Y		; F1 2D
	sty $D4.b,X		; 94 D4
	lsr $60C5.w		; 4E C5 60
	bne  47.b		; D0 2F
	ldx $9452.w,Y		; BE 52 94
	cmp $3011.w		; CD 11 30
	plb		; AB
	tsb $31.b		; 04 31
	asl A		; 0A
	ldx #$4D94.w		; A2 94 4D
	cmp ($1B.b,X)		; C1 1B
	bne -16.b		; D0 F0
	sbc $2CF4.w		; ED F4 2C
	tay		; A8
	ora ($11.b,X)		; 01 11
	jsr ($3EE5.w,X)		; FC E5 3E
	inc $EF12.w		; EE 12 EF
	ldy $F2.b		; A4 F2
	and $F131CF.l,X		; 3F CF 31 F1
	and $94EF00.l		; 2F 00 EF 94
	bit $E0.b,X		; 34 E0
	ora ($30.b)		; 12 30
	inc $6FB3.w,X		; FE B3 6F
	bne -108.b		; D0 94
	asl $24E1.w		; 0E E1 24
	asl $EE12.w		; 0E 12 EE
	bmi -29.b		; 30 E3
	ldy $0E.b		; A4 0E
	trb $2B.b		; 14 2B
	cmp ($2E.b)		; D2 2E
	sbc $A41013.l		; EF 13 10 A4
	bpl -46.b		; 10 D2
	and $5ED3.w		; 2D D3 5E
	bne  16.b		; D0 10
	cop $94.b		; 02 94
	nop		; EA
	ora $11.b,X		; 15 11
	rol $2202.w		; 2E 02 22
	cop $FB.b		; 02 FB
	sty $22.b,X		; 94 22
	inc $EEE1.w,X		; FE E1 EE
	eor $FA.b,X		; 55 FA
	dec $94F1.w		; CE F1 94
	cop $42.b		; 02 42
	inc $20BE.w,X		; FE BE 20
	ldx $CD32.w,Y		; BE 32 CD
	ldy $11.b		; A4 11
	ora ($FD.b)		; 12 FD
	sbc $1C0332.l		; EF 32 03 1C
	sbc ($94.b),Y		; F1 94
	jsr $4DF2.w		; 20 F2 4D
	lda ($63.b),Y		; B1 63
	inc $54FF.w		; EE FF 54
	sty $ED.b,X		; 94 ED
	dec $D131.w,X		; DE 31 D1
	eor $ED.b,S		; 43 ED
	bpl -19.b		; 10 ED
	sty $00.b,X		; 94 00
	sbc $03FB14.l,X		; FF 14 FB 03
	rol $5EC2.w		; 2E C2 5E
	ldy #$1DE0.w		; A0 E0 1D
	cmp ($20.b)		; D2 20
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tya		; 98
	eor $E32EE1.l		; 4F E1 2E E3
	and ($EE.b),Y		; 31 EE
	sbc ($1F.b)		; F2 1F
	ldy $0F.b		; A4 0F
	ora ($FC.b,X)		; 01 FC
	cmp ($31.b)		; D2 31
	brk $F0.b		; 00 F0
	ora ($90.b),Y		; 11 90
	ora ($53.b),Y		; 11 53
	sbc $25DC33.l		; EF 33 DC 25
	jsr ($9403.w,X)		; FC 03 94
	cpx $0A26.w		; EC 26 0A
	sbc $1F.b,S		; E3 1F
	cpx #$CD01.w		; E0 01 CD
	sty $30.b,X		; 94 30
	cmp ($41.b),Y		; D1 41
	sbc $F1FF31.l		; EF 31 FF F1
	ora $2194.w		; 0D 94 21
	bcs  82.b		; B0 52
	jsr $32BC.w		; 20 BC 32
	cpx $98FF.w		; EC FF 98
	and $DE.b,S		; 23 DE
	bpl -65.b		; 10 BF
	bvc -75.b		; 50 B5
	lsr A		; 4A
	ora ($94.b,S),Y		; 13 94
	pld		; 2B
	sta ($00.b),Y		; 91 00
	mvn $B2,$0B		; 54 0B B2
	eor ($03.b,X)		; 41 03
	tya		; 98
	ora $B012.w		; 0D 12 B0
	rol $FF50.w,X		; 3E 50 FF
	ora $FDA453.l		; 0F 53 A4 FD
	cpx #$2210.w		; E0 10 22
	ora $1E24FF.l		; 0F FF 24 1E
	sty $D1.b,X		; 94 D1
	.db $42, $0F		; 42 0F
	ora ($9C.b),Y		; 11 9C
	stz $DA.b		; 64 DA
	asl $94.b,X		; 16 94
	plx		; FA
	sbc $5C.b		; E5 5C
	lda ($3C.b),Y		; B1 3C
	lda ($42.b)		; B2 42
	bpl -108.b		; 10 94
	jsr ($32D2.w,X)		; FC D2 32
	cpx #$D40A.w		; E0 0A D4
	eor ($F0.b,X)		; 41 F0
	sty $1F.b,X		; 94 1F
	sbc $DC2FE1.l,X		; FF E1 2F DC
	and $0C.b,X		; 35 0C
	inc $9D84.w		; EE 84 9D
	cmp ($4C.b,S),Y		; D3 4C
	cmp ($3F.b,X)		; C1 3F
	and $DB.b		; 25 DB
	tsb $A4.b		; 04 A4
	asl $21D0.w,X		; 1E D0 21
	ora $C01EF0.l		; 0F F0 1E C0
	bpl -108.b		; 10 94
	beq  65.b		; F0 41
	cmp ($50.b),Y		; D1 50
	lda $1EF042.l		; AF 42 F0 1E
	sty $01.b,X		; 94 01
	ora ($01.b),Y		; 11 01
	.db $42, $F2		; 42 F2
	jsl $940300.l		; 22 00 03 94
	eor ($CE.b),Y		; 51 CE
	ora ($01.b)		; 12 01
	and $1C.b		; 25 1C
	ora $0B.b		; 05 0B
	sty $E4.b,X		; 94 E4
	eor ($0E.b,X)		; 41 0E
	cpx $31.b		; E4 31
	sbc $0200.w		; ED 00 02
	sty $20.b		; 84 20
	cpx $CBA0.w		; EC A0 CB
	.db $62, $DF, $25		; 62 DF 25
	eor $DD94.w		; 4D 94 DD
	ora ($CC.b,X)		; 01 CC
	mvn $F3,$FC		; 54 FC F3
	sbc #$F2.b		; E9 F2
	tya		; 98
	cmp ($FE.b),Y		; D1 FE
	asl $3CF5.w,X		; 1E F5 3C
	dec $DC52.w		; CE 52 DC
	tya		; 98
	trb $DE.b		; 14 DE
	eor ($AC.b),Y		; 51 AC
	bit $32.b		; 24 32
	lda $982F.w,X		; BD 2F 98
	ora ($E1.b),Y		; 11 E1
	rti		; 40

	cmp $EE33.w		; CD 33 EE
	lsr $94E3.w		; 4E E3 94
	ora $2EF4.w,X		; 1D F4 2E
	dec $F023.w,X		; DE 23 F0
	and ($E0.b),Y		; 31 E0
	bcc  46.b		; 90 2E
	cpy #$3422.w		; C0 22 34
	and $ECDF.w		; 2D DF EC
	sbc ($94.b),Y		; F1 94
	sbc $11E3.w,X		; FD E3 11
	asl $1F02.w,X		; 1E 02 1F
	cmp $9414.w,X		; DD 14 94
	rol A		; 2A
	pei ($3F.b)		; D4 3F
	ldy $1E22.w,X		; BC 22 1E
	bit $FE.b		; 24 FE
	tya		; 98
	and ($02.b,X)		; 21 02
	bit $42CF.w		; 2C CF 42
	ora $A44CF3.l		; 0F F3 4C A4
	sbc $2E14.w		; ED 14 2E
	bne  16.b		; D0 10
	ora ($EE.b),Y		; 11 EE
	cop $94.b		; 02 94
	ora $B12A03.l,X		; 1F 03 2A B1
	and ($FE.b),Y		; 31 FE
	cmp $B1844F.l,X		; DF 4F 84 B1
	sbc $6D05.w		; ED 05 6D
	sbc $BB.b,S		; E3 BB
	mvp $94,$F3		; 44 F3 94
	ora $32E0.w		; 0D E0 32
	jsr ($01E3.w,X)		; FC E3 01
	and ($FE.b),Y		; 31 FE
	sty $F4.b,X		; 94 F4
	asl $14FF.w,X		; 1E FF 14
	ora $0014DD.l,X		; 1F DD 14 00
	sty $2E.b,X		; 94 2E
	cpy #$0011.w		; C0 11 00
	sbc $30F41F.l,X		; FF 1F F4 30
	sty $FF.b		; 84 FF
	ldy $1130.w		; AC 30 11
	sbc $1D15.w		; ED 15 1D
	ldy $88.b,X		; B4 88
	rol $45BC.w		; 2E BC 45
	cmp $1EDE13.l,X		; DF 13 DE 1E
	and ($98.b)		; 32 98
	beq  16.b		; F0 10
.ACCU 8
	sep #$2A		; E2 2A
	cmp $4F.b,X		; D5 4F
	cmp ($F0.b),Y		; D1 F0
	sty $1F.b,X		; 94 1F
	sbc ($11.b,X)		; E1 11
	sbc $E0EF.w,X		; FD EF E0
	rti		; 40

	cmp $0D2294.l		; CF 94 22 0D
	bit $0E.b,X		; 34 0E
	brk $BF.b		; 00 BF
	.db $42, $ED		; 42 ED
	sty $01.b,X		; 94 01
	asl $1B14.w,X		; 1E 14 1B
.INDEX 16
	rep #$53		; C2 53
	brk $1F.b		; 00 1F
	sty $1F.b		; 84 1F
	pea $052C.w		; F4 2C 05
	and $65BC.w		; 2D BC 65
	.db $42, $94		; 42 94
	cmp $3F13.w		; CD 13 3F
	brk $FF.b		; 00 FF
	and $01.b,S		; 23 01
	jsr ($6598.w,X)		; FC 98 65
	ldy $30F4.w,X		; BC F4 30
	cmp $FD25.w		; CD 25 FD
	jsl $6DE084.l		; 22 84 E0 6D
	cmp $ECE4.w		; CD E4 EC
	mvn $3D,$E1		; 54 E1 3D
	sty $0F.b,X		; 94 0F
	sbc $3F1101.l		; EF 01 11 3F
	cmp ($72.b,X)		; C1 72
	tyx		; BB
	tya		; 98
	mvn $D1,$0B		; 54 0B D1
	bmi -29.b		; 30 E3
	pld		; 2B
	ldx $5D.b,Y		; B6 5D
	dey		; 88
	sta $3131.w,X		; 9D 31 31
	dec $311B.w		; CE 1B 31
	dec $59.b,X		; D6 59
	sty $AE.b		; 84 AE
	and $5EB2.w,X		; 3D B2 5E
	ldy $3016.w		; AC 16 30
	inc $0198.w		; EE 98 01
	ora ($F0.b,X)		; 01 F0
	inc $3D15.w		; EE 15 3D
	lda $F4943E.l,X		; BF 3E 94 F4
	bmi  12.b		; 30 0C
	cpy #$F032.w		; C0 32 F0
	ora ($22.b)		; 12 22
	sty $2C.b,X		; 94 2C
	bcs  49.b		; B0 31
	ora ($0E.b)		; 12 0E
	cop $2F.b		; 02 2F
	cmp $12A4.w,X		; DD A4 12
	brk $01.b		; 00 01
	and ($0F.b,X)		; 21 0F
	sbc $84FF33.l		; EF 33 FF 84
	and ($BF.b,X)		; 21 BF
	and $21.b,S		; 23 21
	ora $73AE64.l		; 0F 64 AE 73
	sty $EE.b,X		; 94 EE
	sbc ($5F.b)		; F2 5F
	ldy $2102.w,X		; BC 02 21
	rol $98C0.w		; 2E C0 98
	and $2D22DE.l		; 2F DE 22 2D
	beq -47.b		; F0 D1
	and $0E9420.l,X		; 3F 20 94 0E
	dec $DB44.w,X		; DE 44 DB
	and $ED.b		; 25 ED
	sbc ($32.b),Y		; F1 32
	tya		; 98
	cmp $3221.w		; CD 21 32
	cpy $1F14.w		; CC 14 1F
	inc $98EF.w,X		; FE EF 98
	jsl $F1CD32.l		; 22 32 CD F1
	jsr $110D.w		; 20 0D 11
	sbc ($80.b),Y		; F1 80
	cmp $DC2023.l		; CF 23 20 DC
	sbc $2CD1CC.l,X		; FF CC D1 2C
	tya		; 98
	cop $30.b		; 02 30
	inc $2F0F.w,X		; FE 0F 2F
	cpx $3D.b		; E4 3D
	cmp ($94.b,X)		; C1 94
	bit $FC.b		; 24 FC
	trb $0F.b		; 14 0F
	and ($0F.b,X)		; 21 0F
	cop $1F.b		; 02 1F
	dey		; 88
	ora $43.b,S		; 03 43
	ldy $EB55.w,X		; BC 55 EB
	trb $FF.b		; 14 FF
	eor $33EF98.l		; 4F 98 EF 33
	sbc ($EC.b),Y		; F1 EC
	ora $4F.b,S		; 03 4F
	cpy #$9463.w		; C0 63 94
	phd		; 0B
	sbc ($EB.b),Y		; F1 EB
	cmp ($0D.b,S),Y		; D3 0D
	ora ($01.b),Y		; 11 01
	asl $BD94.w,X		; 1E 94 BD
	and $FE.b,X		; 35 FE
	sbc $1F02.w,X		; FD 02 1F
	cmp $EC9431.l		; CF 31 94 EC
	cpx #$4F24.w		; E0 24 4F
	cmp $0F01.w		; CD 01 0F
	sbc ($94.b,X)		; E1 94
	.db $42, $DE		; 42 DE
	bpl  -2.b		; 10 FE
	sbc ($20.b,S),Y		; F3 20
	inc $9402.w,X		; FE 02 94
	sbc $2214.w,X		; FD 14 22
	trb $32D1.w		; 1C D1 32
	inc $9802.w,X		; FE 02 98
	cpx #$241E.w		; E0 1E 24
	inc $04FC.w,X		; FE FC 04
	eor ($CE.b,X)		; 41 CE
	sty $DF.b,X		; 94 DF
	bit $2D.b		; 24 2D
	cmp ($0E.b)		; D2 0E
	jsl $9444DE.l		; 22 DE 44 94
	dex		; CA
	ora $11.b,S		; 03 11
	sbc $FEF2.w,X		; FD F2 FE
	ora ($DC.b,S),Y		; 13 DC
	tya		; 98
	rts		; 60

	bne  12.b		; D0 0C
	asl $3A.b		; 06 3A
	lda ($42.b),Y		; B1 42
	asl $1094.w,X		; 1E 94 10
	inc $C10E.w		; EE 0E C1
	bmi -17.b		; 30 EF
	jsr $84F1.w		; 20 F1 84
	asl $120F.w		; 0E 0F 12
	rol $3A.b		; 26 3A
	cmp ($60.b,S),Y		; D3 60
	lda $0F94.w		; AD 94 0F
	bit $0F.b,X		; 34 0F
	and ($EF.b,X)		; 21 EF
	bit $2D.b		; 24 2D
.INDEX 16
	rep #$94		; C2 94
	jsr $0110.w		; 20 10 01
	rti		; 40

	lda $011210.l,X		; BF 10 12 01
	tya		; 98
	rol $1EF1.w		; 2E F1 1E
	ora ($FE.b),Y		; 11 FE
	eor $DD.b		; 45 DD
	brk $94.b		; 00 94
	bpl   3.b		; 10 03
	rol $0FCF.w,X		; 3E CF 0F
	cmp $2D25.w,X		; DD 25 2D
	sty $C2.b		; 84 C2
	eor ($DB.b)		; 52 DB
	sbc ($D0.b,X)		; E1 D0
	and $84FE32.l		; 2F 32 FE 84
	dec $15AB.w,X		; DE AB 15
	asl $14CA.w,X		; 1E CA 14
	beq  52.b		; F0 34
	sty $0D.b,X		; 94 0D
	sbc ($DD.b),Y		; F1 DD
	bpl -17.b		; 10 EF
	xce		; FB
	sbc $43.b,S		; E3 43
	sty $1D.b,X		; 94 1D
	cpx #$1FF0.w		; E0 F0 1F
	sbc ($0F.b,X)		; E1 0F
	ora ($EF.b),Y		; 11 EF
	sty $1E.b,X		; 94 1E
	cmp ($40.b)		; D2 40
	inc $41F3.w		; EE F3 41
	cpx $30.b		; E4 30
	tya		; 98
	brk $F2.b		; 00 F2
	beq  32.b		; F0 20
	sbc ($00.b,X)		; E1 00
	ora $DA8825.l,X		; 1F 25 88 DA
	ldy #$0E73.w		; A0 73 0E
	cpy #$A245.w		; C0 45 A2
	bvc -108.b		; 50 94
	cpx $1113.w		; EC 13 11
	xce		; FB
	cmp $61.b,X		; D5 61
	dec $9411.w,X		; DE 11 94
	sbc $FB2123.l,X		; FF 23 21 FB
	ora $0E.b,S		; 03 0E
	ora $1E.b,S		; 03 1E
	sty $E0.b,X		; 94 E0
	and ($F0.b,X)		; 21 F0
	ora ($FD.b)		; 12 FD
	dec $3D05.w,X		; DE 05 3D
	tya		; 98
	ora ($20.b),Y		; 11 20
	tsb $51D2.w		; 0C D2 51
	dec $0FF3.w,X		; DE F3 0F
	sty $20.b,X		; 94 20
	beq   3.b		; F0 03
	lsr $2FC0.w		; 4E C0 2F
	sbc $94F3.w		; ED F3 94
	ora $30CF.w		; 0D CF 30
	cmp $F2FE33.l,X		; DF 33 FE F2
	and $3CE498.l,X		; 3F 98 E4 3C
	bne  67.b		; D0 43
	cmp $F13C.w,X		; DD 3C F1
	eor $94.b,S		; 43 94
	ora $2E04.w,X		; 1D 04 2E
	cmp $5413.w		; CD 13 54
	sbc $98E0.w		; ED E0 98
	ora ($1B.b)		; 12 1B
	lda ($50.b,S),Y		; B3 50
	cmp ($4D.b)		; D2 4D
	cpy #$8421.w		; C0 21 84
	ora $32.b,S		; 03 32
	cmp $1F43.w,X		; DD 43 1F
	sbc $84ECCF.l,X		; FF CF EC 84
	rol $2C.b,X		; 36 2C
.INDEX 8
	sep #$54		; E2 54
	ora $1222BD.l,X		; 1F BD 22 12
	sty $FD.b,X		; 94 FD
	cpx #$54.b		; E0 54
	sbc $0D02.w,X		; FD 02 0D
	cpy #$44.b		; C0 44
	sty $0E.b,X		; 94 0E
	inc $13F0.w,X		; FE F0 13
	bmi   1.b		; 30 01
	ora $88D3.w,X		; 1D D3 88
	ora $F011.w,Y		; 19 11 F0
	brk $21.b		; 00 21
	bne 109.b		; D0 6D
	sbc $84.b,S		; E3 84
	bpl  15.b		; 10 0F
	stz $E33E.w		; 9C 3E E3
	inc $03CA.w		; EE CA 03
	sty $10.b,X		; 94 10
	cmp $0101.w,X		; DD 01 01
	rol $2EDF.w		; 2E DF 2E
	ldy #$94.b		; A0 94
	.db $42, $FF		; 42 FF
	inc $4FF3.w,X		; FE F3 4F
	bne  51.b		; D0 33
	asl $3388.w		; 0E 88 33
	xce		; FB
	ora $2E.b,X		; 15 2E
	sbc ($EC.b,S),Y		; F3 EC
.ACCU 8
	sep #$20		; E2 20
	sty $E3.b		; 84 E3
	inc A		; 1A
	cmp $4E.b,S		; C3 4E
	cop $46.b		; 02 46
	asl $90CB.w,X		; 1E CB 90
	tsb $40.b		; 04 40
	beq   1.b		; F0 01
	asl $52E3.w,X		; 1E E3 52
	ora ($94.b,S),Y		; 13 94
	and ($0D.b)		; 32 0D
	sbc $EF0F10.l		; EF 10 0F EF
	eor $ED.b,X		; 55 ED
	tya		; 98
	eor $EF3EE2.l		; 4F E2 3E EF
	sbc ($43.b),Y		; F1 43
	cpx #$ED.b		; E0 ED
	sty $CB.b		; 84 CB
	cpx $53.b		; E4 53
	inc OAMADDH.w		; EE 03 21
	and $0D.b,S		; 23 0D
	sty $04.b		; 84 04
	ora ($1E.b,X)		; 01 1E
	cpx #$FC.b		; E0 FC
	cmp ($63.b,S),Y		; D3 63
	sbc $ED0284.l		; EF 84 02 ED
	bpl -96.b		; 10 A0
	sbc $5213.w		; ED 13 52
	jmp.w [$F284]		; DC 84 F2
	inc $E2DB.w,X		; FE DB E2
	ora $DC24.w,X		; 1D 24 DC
	trb $98.b		; 14 98
	cmp $E141.w		; CD 41 E1
	and $EF1FE2.l		; 2F E2 1F EF
	brk $88.b		; 00 88
	sbc $22.b,S		; E3 22
	asl $41B0.w		; 0E B0 41
	sbc $844E2F.l,X		; FF 2F 4E 84
	ldx $144F.w		; AE 4F 14
	asl A		; 0A
	lda $0B1352.l		; AF 52 13 0B
	sty $B0.b		; 84 B0
	ora ($32.b)		; 12 32
	brk $04.b		; 00 04
	rol A		; 2A
	sbc ($23.b,X)		; E1 23
	tya		; 98
	ora $FD33DF.l		; 0F DF 33 FD
	sbc $3C.b,X		; F5 3C
	sep #$0D		; E2 0D
	sty $DF.b,X		; 94 DF
	ora ($00.b)		; 12 00
	ora ($FF.b),Y		; 11 FF
	cop $31.b		; 02 31
	dec $4684.w,X		; DE 84 46
	xce		; FB
	ora $2E.b		; 05 2E
	cmp ($4E.b),Y		; D1 4E
	cpx $3E.b		; E4 3E
	dey		; 88
	bpl  70.b		; 10 46
	stz $FD07.w		; 9C 07 FD
	and ($BF.b,X)		; 21 BF
	rti		; 40

	sty $23.b,X		; 94 23
	tsb $53D1.w		; 0C D1 53
	cmp $2211.w,X		; DD 11 22
	sbc $E588.w,X		; FD 88 E5
	eor ($F9.b,S),Y		; 53 F9
	beq  16.b		; F0 10
	ora ($1F.b)		; 12 1F
	rol $E198.w		; 2E 98 E1
	beq  49.b		; F0 31
	cpy $2F05.w		; CC 05 2F
	sbc ($FD.b,X)		; E1 FD
	sty $D4.b		; 84 D4
	ora $1DF4.w,X		; 1D F4 1D
	ora ($DE.b),Y		; 11 DE
	brk $DE.b		; 00 DE
	sty $63.b		; 84 63
	dec $03FD.w,X		; DE FD 03
	jsr $5F06.w		; 20 06 5F
	tax		; AA
	sty $FF.b,X		; 94 FF
	ora ($1D.b,S),Y		; 13 1D
	dec $0122.w		; CE 22 01
	sbc $3F8800.l,X		; FF 00 88 3F
	cmp $E13D04.l		; CF 04 3D E1
.INDEX 8
	sep #$10		; E2 10
	sbc $2388.w,X		; FD 88 23
	ora ($FB.b)		; 12 FB
	ora ($01.b),Y		; 11 01
	ora $84FD03.l,X		; 1F 03 FD 84
	inc MPYL.w		; EE 34 21
	dec $0121.w,X		; DE 21 01
	bpl  31.b		; 10 1F
	sty $BE.b		; 84 BE
	ora ($55.b),Y		; 11 55
	tas		; 1B
	cmp ($22.b)		; D2 22
	inc $8420.w,X		; FE 20 84
	dec $2012.w		; CE 12 20
	inc $43CD.w		; EE CD 43
	cpx $84E3.w		; EC E3 84
	adc ($9D.b,X)		; 61 9D
	rol $2B.b,X		; 36 2B
	cmp $13FFFE.l		; CF FE FF 13
	sty $2C.b		; 84 2C
	cmp ($31.b,X)		; C1 31
	asl $02BE.w,X		; 1E BE 02
	and ($FC.b,S),Y		; 33 FC
	stz $CD.b,X		; 74 CD
	bne  62.b		; D0 3E
	bcs  68.b		; B0 44
	asl $D50F.w		; 0E 0F D5
	stz $7E.b,X		; 74 7E
.INDEX 8
	sep #$52		; E2 52
	dec $E1EF.w		; CE EF E1
	eor $2E.b,S		; 43 2E
	dey		; 88
.ACCU 8
	sep #$21		; E2 21
	trb $4905.w		; 1C 05 49
	stx $5E.b,Y		; 96 5E
	cmp $320474.l		; CF 74 04 32
	bit $50.b		; 24 50
	cmp $1D15.w,X		; DD 15 1D
	and ($94.b,X)		; 21 94
	beq  32.b		; F0 20
	beq  16.b		; F0 10
	cmp $2E14.w,X		; DD 14 2E
	bne -124.b		; D0 84
	bpl  18.b		; 10 12
	beq  15.b		; F0 0F
	cmp $3105.w,X		; DD 05 31
	ora $2188.w		; 0D 88 21
	bne  50.b		; D0 32
	inc $E42E.w		; EE 2E E4
	and $E584BD.l		; 2F BD 84 E5
	rol $2FF1.w,X		; 3E F1 2F
	beq -15.b		; F0 F1
	jsr $88EE.w		; 20 EE 88
	ora ($FE.b)		; 12 FE
	ora $E0FD23.l,X		; 1F 23 FD E0
	and $FD.b,S		; 23 FD
	sty $EB.b		; 84 EB
	pei ($52.b)		; D4 52
	sbc $EE2101.l,X		; FF 01 21 EE
	ora ($74.b,X)		; 01 74
	ora $D342FF.l,X		; 1F FF 42 D3
	stz $EB.b		; 64 EB
	lda ($4E.b,S),Y		; B3 4E
	bra  18.b		; 80 12
	and ($11.b,X)		; 21 11
	bpl -15.b		; 10 F1
	and ($FF.b,X)		; 21 FF
	bit $74.b,X		; 34 74
	lda $52B14F.l,X		; BF 4F B1 52
	jsr $36DD.w		; 20 DD 36
	asl $0174.w,X		; 1E 74 01
	sbc ($10.b),Y		; F1 10
	sbc $D31E11.l,X		; FF 11 1E D3
	eor $F270.w,X		; 5D 70 F2
	adc $EB.b,X		; 75 EB
	ora $0B.b,S		; 03 0B
	cmp $78EF0E.l		; CF 0E EF 78
	ldx $0C26.w,Y		; BE 26 0C
	sbc $32F2.w		; ED F2 32
	sbc $741F.w		; ED 1F 74
	dec $EC23.w		; CE 23 EC
	sbc $44C11F.l		; EF 1F C1 44
	eor ($74.b,X)		; 41 74
	plb		; AB
	rol $1D.b,X		; 36 1D
	sbc $CB31FF.l		; EF FF 31 CB
	cmp ($74.b),Y		; D1 74
	adc [$0D.b],Y		; 77 0D
	tsb $3F.b		; 04 3F
	sbc $14E010.l		; EF 10 E0 14
	dey		; 88
	ora $3D04.w		; 0D 04 3D
	sbc ($00.b,X)		; E1 00
	sbc ($3F.b),Y		; F1 3F
.ACCU 8
.INDEX 8
	sep #$74		; E2 74
	rti		; 40

	bne  49.b		; D0 31
	jsr ($2FE4.w,X)		; FC E4 2F
	lda $7435.w,X		; BD 35 74
	ora $02AD1E.l		; 0F 1E AD 02
	and $C21DF1.l,X		; 3F F1 1D C2
	sei		; 78
	eor $F2EC.w		; 4D EC F2
	and $CD.b,S		; 23 CD
	lsr $74B2.w,X		; 5E B2 74
	bvs  79.b		; 70 4F
	sbc ($34.b,X)		; E1 34
	and $FDCDCD.l		; 2F CD CD FD
	cpy $1374.w		; CC 74 13
	ora $10C0.w,X		; 1D C0 10
	cpy $D111.w		; CC 11 D1
	eor $E388.w,X		; 5D 88 E3
	and $21EF0F.l		; 2F 0F EF 21
	rol $31C0.w		; 2E C0 31
	stz $12.b,X		; 74 12
	jsr $24EE.w		; 20 EE 24
	asl A		; 0A
	cmp $63.b,S		; C3 63
	sbc $E34D78.l,X		; FF 78 4D E3
	ora $AC35.w,X		; 1D 35 AC
	and ($0F.b)		; 32 0F
	jsr $2368.w		; 20 68 23
	ora $61ED.w		; 0D ED 61
	inc $32F5.w		; EE F5 32
	lsr $DF78.w		; 4E 78 DF
	ora ($0F.b),Y		; 11 0F
	jsr $43FE.w		; 20 FE 43
	inc $741F.w		; EE 1F 74
	beq  17.b		; F0 11
	asl $54BF.w,X		; 1E BF 54
	xce		; FB
	beq   0.b		; F0 00
	stz $00.b,X		; 74 00
	asl $3113.w		; 0E 13 31
	cmp $01EF.w,X		; DD EF 01
	inc $0074.w,X		; FE 74 00
	ora ($FD.b),Y		; 11 FD
	sbc ($20.b,X)		; E1 20
	cmp $2D03.w,X		; DD 03 2D
	stz $D1.b,X		; 74 D1
	and ($FE.b,X)		; 21 FE
	cmp $F13F13.l,X		; DF 13 3F F1
	ora ($68.b),Y		; 11 68
	asl A		; 0A
	cmp ($50.b,S),Y		; D3 50
	phd		; 0B
	cmp $6F.b,X		; D5 6F
	cmp ($0B.b)		; D2 0B
	pla		; 68
	ora ($00.b,X)		; 01 00
	and ($3B.b,X)		; 21 3B
.INDEX 16
	rep #$53		; C2 53
	asl $68CE.w		; 0E CE 68
	mvp $F4,$FD		; 44 FD F4
	ora $13E1.w,X		; 1D E1 13
	eor $600E.w		; 4D 0E 60
	eor ($FE.b),Y		; 51 FE
	sbc ($33.b),Y		; F1 33
	asl $1112.w		; 0E 12 11
	jsl $1F0174.l		; 22 74 01 1F
	dec $1D14.w		; CE 14 1D
	cmp ($2F.b)		; D2 2F
	sbc ($68.b),Y		; F1 68
	sbc $1011.w		; ED 11 10
	bmi -49.b		; 30 CF
	asl $2413.w		; 0E 13 24
	mvn $AC,$6A		; 54 6A AC
	asl $2EB2.w		; 0E B2 2E
	rol $64.b,X		; 36 64
	phk		; 4B
	rts		; 60

	ora $32E2.w		; 0D E2 32
	sbc $14EF.w,X		; FD EF 14
	eor ($FF.b,X)		; 41 FF
	cli		; 58
	sbc $49.b,S		; E3 49
	cmp ($F2.b)		; D2 F2
	tsb $1A27.w		; 0C 27 1A
	lda ($54.b,X)		; A1 54
	tsb $2E.b		; 04 2E
	sbc ($2D.b)		; F2 2D
	ldy #$EF5F.w		; A0 5F EF
	sbc $231F58.l,X		; FF 58 1F 23
	bne -21.b		; D0 EB
	rol $39.b,X		; 36 39
	sbc ($D3.b)		; F2 D3
	mvp $32,$3F		; 44 3F 32
	ora $F2DE42.l		; 0F 42 DE F2
	.db $42, $FD		; 42 FD
	cli		; 58
	and ($CC.b,S),Y		; 33 CC
	sbc $20.b,X		; F5 20
	asl $31D0.w,X		; 1E D0 31
	inc $E344.w		; EE 44 E3
	rol $0C.b,X		; 36 0C
	jsl $001D25.l		; 22 25 1D 00
	sbc ($44.b),Y		; F1 44
	rti		; 40

	sbc [$40.b],Y		; F7 40
	inc $04DA.w,X		; FE DA 04
	asl $4801.w		; 0E 01 48
	phk		; 4B
	lda $1E.b		; A5 1E
	ora ($EE.b)		; 12 EE
	eor $AA.b,S		; 43 AA
	ora [$48.b],Y		; 17 48
	jsr ($2D05.w,X)		; FC 05 2D
	asl $13AF.w		; 0E AF 13
	rol $54F1.w		; 2E F1 54
	jsr $2FF1.w		; 20 F1 2F
	dec $0032.w		; CE 32 00
	sbc $54DF.w,X		; FD DF 54
	eor $0D.b		; 45 0D
	cmp ($31.b),Y		; D1 31
	brk $00.b		; 00 00
	cop $1F.b		; 02 1F
	pha		; 48
	ora $110E12.l,X		; 1F 12 0E 11
	cop $3F.b		; 02 3F
	sbc $3413.w		; ED 13 34
	tsb $50C3.w		; 0C C3 50
	tax		; AA
	eor $CA.b		; 45 CA
	ora $1F.b,X		; 15 1F
	pha		; 48
	sbc ($30.b)		; F2 30
	cmp $EE34.w,X		; DD 34 EE
	sbc ($02.b),Y		; F1 02
	ora $12E048.l,X		; 1F 48 E0 12
	jsr ($40E4.w,X)		; FC E4 40
	inc $0E02.w		; EE 02 0E
	bit $CD.b,X		; 34 CD
	.db $42, $CD		; 42 CD
	cmp $23DD33.l,X		; DF 33 DD 23
	bpl  52.b		; 10 34
	asl $31F2.w		; 0E F2 31
	asl $C00E.w		; 0E 0E C0
	.db $42, $FF		; 42 FF
	sec		; 38
	sbc ($4C.b)		; F2 4C
	cpy #$1F22.w		; C0 22 1F
	bpl -51.b		; 10 CD
	mvp $40,$34		; 44 34 40
	sbc $C20A13.l		; EF 13 0A C2
	rti		; 40

	beq   1.b		; F0 01
	bit $00.b		; 24 00
	sbc $06FC33.l		; EF 33 FC 06
	rti		; 40

	ora ($10.b,X)		; 01 10
	trb $DC.b		; 14 DC
	sbc $5F04.w		; ED 04 5F
	bne  52.b		; D0 34
	jsr $14FF.w		; 20 FF 14
	brk $0E.b		; 00 0E
	and $0F.b		; 25 0F
	and $00.b,S		; 23 00
	brk $12.b		; 00 12
	bit $10.b		; 24 10
	inc $1E02.w,X		; FE 02 1E
	bne  33.b		; D0 21
	brk $00.b		; 00 00
	php		; 08
	asl $CD31.w		; 0E 31 CD
	eor $0F.b,S		; 43 0F
	sbc ($0B.b),Y		; F1 0B
	ora $04.b		; 05 04
	asl $1004.w		; 0E 04 10
	sbc $02FF00.l		; EF 00 FF 02
	asl $CD00.w		; 0E 00 CD
	inc $E0DD.w		; EE DD E0
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $12.b		; 00 12
	and $2F1DE4.l		; 2F E4 1D 2F
	lda $2C.b,S		; A3 2C
	cpy #$3101.w		; C0 01 31
	sbc $0FE52E.l,X		; FF 2E E5 0F
	bit $C0F3.w		; 2C F3 C0
	ora ($C1.b),Y		; 11 C1
	and $4FE0F1.l		; 2F F1 E0 4F
	brk $E1.b		; 00 E1
	cpy #$0220.w		; C0 20 02
	cmp ($FD.b),Y		; D1 FD
	ora ($E3.b)		; 12 E3
	tad		; 5B
	ora ($C0.b)		; 12 C0
	cmp ($02.b)		; D2 02
	cmp $C2424F.l,X		; DF 4F 42 C2
	bpl   0.b		; 10 00
	cpy #$2F1D.w		; C0 1D 2F
	cmp ($2B.b,S),Y		; D3 2B
	cpx #$E221.w		; E0 21 E2
	beq -64.b		; F0 C0
	rol $020F.w		; 2E 0F 02
	inc $D030.w,X		; FE 30 D0
	sbc ($2C.b,S),Y		; F3 2C
	cpy #$D011.w		; C0 11 D0
	trb $FD.b		; 14 FD
	ora ($FE.b,X)		; 01 FE
	jsr ($C064.w,X)		; FC 64 C0
	lda ($EE.b)		; B2 EE
	cop $F3.b		; 02 F3
	dec A		; 3A
	tsb $10.b		; 04 10
	cmp ($C0.b)		; D2 C0
	jmp $A550.w		; 4C 50 A5
	ora ($DE.b,X)		; 01 DE
	eor $11F0.w		; 4D F0 11
	cpy #$10D1.w		; C0 D1 10
	bpl  18.b		; 10 12
	dec $0F41.w		; CE 41 0F
	sbc ($C0.b)		; F2 C0
	sbc $EF4E00.l,X		; FF 00 4E EF
	bpl   2.b		; 10 02
	sbc ($FE.b,X)		; E1 FE
	cpy #$203E.w		; C0 3E 20
	sbc ($D2.b,S),Y		; F3 D2
	ora ($2C.b,X)		; 01 2C
	adc ($A3.b,X)		; 61 A3
	cpy $FE.b		; C4 FE
	bpl  15.b		; 10 0F
	cop $D4.b		; 02 D4
	inc $DA31.w		; EE 31 DA
	cpy #$B163.w		; C0 63 B1
	sbc $11200F.l,X		; FF 0F 20 11
.INDEX 16
	rep #$1C		; C2 1C
	cpy #$C330.w		; C0 30 C3
	ora $2F00.w,X		; 1D 00 2F
	cop $E2.b		; 02 E2
	asl $FEB0.w		; 0E B0 FE
	adc $EEB30F.l,X		; 7F 0F B3 EE
	rti		; 40

	dec $C040.w,X		; DE 40 C0
	sbc ($F3.b)		; F2 F3
	dec $2F3D.w,X		; DE 3D 2F
	cmp $1D.b,S		; C3 1D
	cop $C0.b		; 02 C0
	sbc ($1E.b,X)		; E1 1E
	sbc $EE.b,S		; E3 EE
	and $240E11.l		; 2F 11 0E 24
	cpy #$E1D0.w		; C0 D0 E1
	sbc $E2004D.l,X		; FF 4D 00 E2
	sbc $A4B03E.l,X		; FF 3E B0 A4
	dec $C66D.w,X		; DE 6D C6
	jsr $E1EC.w		; 20 EC E1
	bmi -80.b		; 30 B0
	tas		; 1B
	sbc $DF.b,S		; E3 DF
	sbc $5FA43D.l,X		; FF 3D A4 5F
	cpy #$5CB0.w		; C0 B0 5C
	cmp $DF.b,S		; C3 DF
	.db $62, $DE, $01		; 62 DE 01
	brk $0F.b		; 00 0F
	cpy #$1E00.w		; C0 00 1E
	cop $F3.b		; 02 F3
	phd		; 0B
	.db $42, $C3		; 42 C3
	rol $3FB0.w		; 2E B0 3F
	lda ($4F.b),Y		; B1 4F
	dec $2111.w,X		; DE 11 21
	pei ($3E.b)		; D4 3E
	cpy #$010E.w		; C0 0E 01
	asl $C112.w		; 0E 12 C1
	trb $EF23.w		; 1C 23 EF
	bcs  46.b		; B0 2E
	bpl  45.b		; 10 2D
	ora ($E5.b),Y		; 11 E5
.ACCU 16
	rep #$2B		; C2 2B
	phk		; 4B
	cpy #$FEF4.w		; C0 F4 FE
	jsr $FF0E.w		; 20 0E FF
	sbc ($FF.b,S),Y		; F3 FF
	ora $000FB0.l,X		; 1F B0 0F 00
	sbc $C44DF0.l,X		; FF F0 4D C4
	bpl -17.b		; 10 EF
	cpy #$0E0F.w		; C0 0F 0E
	ora ($F0.b,X)		; 01 F0
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	bit $B031.w,X		; 3C 31 B0
	sbc ($E7.b),Y		; F1 E7
	sbc $1023.w		; ED 23 10
	ora ($1D.b),Y		; 11 1D
	bpl -64.b		; 10 C0
	sbc ($2F.b,S),Y		; F3 2F
	ora ($F0.b)		; 12 F0
	ora ($F0.b,X)		; 01 F0
	trb $B022.w		; 1C 22 B0
	lda $02110E.l		; AF 0E 11 02
	lda ($4E.b,X)		; A1 4E
	jsr $C0CD.w		; 20 CD C0
	and $0210F1.l		; 2F F1 10 02
	sbc $FD041D.l		; EF 1D 04 FD
	bcs  17.b		; B0 11
	cmp ($00.b)		; D2 00
	tsa		; 3B
	ora ($F0.b,X)		; 01 F0
	sbc ($E1.b),Y		; F1 E1
	cpy #$30.b		; C0 30
	sbc ($F2.b)		; F2 F2
	ora $4DF000.l		; 0F 00 F0 4D
	sbc ($B0.b),Y		; F1 B0
	sty $3D.b,X		; 94 3D
	cmp ($12.b),Y		; D1 12
	ora $43DB22.l		; 0F 22 DB 43
	bcs -48.b		; B0 D0
	and ($3D.b,X)		; 21 3D
	ldy $10.b,X		; B4 10
	sbc ($ED.b),Y		; F1 ED
	eor $011FB0.l		; 4F B0 1F 01
	ora $2DC212.l,X		; 1F 12 C2 2D
	and $EE.b,S		; 23 EE
	ldy #$42.b		; A0 42
	pea $2EB3.w		; F4 B3 2E
	pei ($1B.b)		; D4 1B
	jsr $B00E.w		; 20 0E B0
	and $CEF2E2.l		; 2F E2 F2 CE
	jmp $BF13.w		; 4C 13 BF
	ora ($B0.b,X)		; 01 B0
	asl $045D.w,X		; 1E 5D 04
	ora $E212F0.l,X		; 1F F0 12 E2
	asl $2FC0.w,X		; 1E C0 2F
	sbc ($0D.b,S),Y		; F3 0D
	and $10E002.l,X		; 3F 02 E0 10
	ora ($B0.b)		; 12 B0
	cmp $1DEF23.l		; CF 23 EF 1D
	and ($01.b,X)		; 21 01
	rol $A0C5.w		; 2E C5 A0
	nop		; EA
	eor $6FCFD5.l		; 4F D5 CF 6F
	cmp $A35E.w		; CD 5E A3
	bcs -15.b		; B0 F1
	eor $FDF2.w		; 4D F2 FD
	and $FE.b,S		; 23 FE
	cpx #$01.b		; E0 01
	bcs  29.b		; B0 1D
	beq  16.b		; F0 10
	sbc ($01.b)		; F2 01
	rol $1BE3.w,X		; 3E E3 1B
	bcs  34.b		; B0 22
	lda ($1E.b),Y		; B1 1E
	lsr $EF02.w,X		; 5E 02 EF
	cop $01.b		; 02 01
	bcs -32.b		; B0 E0
	ora $CF233E.l,X		; 1F 3E 23 CF
	and $A0D014.l		; 2F 14 D0 A0
	tda		; 7B
	cmp ($32.b),Y		; D1 32
	jsr ($321F.w,X)		; FC 1F 32
	lda ($41.b)		; B2 41
	bcs   0.b		; B0 00
	pei ($FD.b)		; D4 FD
	bpl  14.b		; 10 0E
	ora $B0B101.l,X		; 1F 01 B1 B0
	rol $EC24.w,X		; 3E 24 EC
	rol $B130.w,X		; 3E 30 B1
	cop $FF.b		; 02 FF
	bcs  31.b		; B0 1F
	sbc $0D.b,S		; E3 0D
	and ($D1.b,X)		; 21 D1
	bit $B122.w		; 2C 22 B1
	bcs  48.b		; B0 30
	brk $D3.b		; 00 D3
	ora $4FD0.w,X		; 1D D0 4F
	brk $03.b		; 00 03
	bcs -49.b		; B0 CF
	bmi  33.b		; 30 21
	asl $EEF2.w,X		; 1E F2 EE
	ora $D0B012.l,X		; 1F 12 B0 D0
	cop $01.b		; 02 01
	rol $002F.w		; 2E 2F 00
	sbc $FE.b		; E5 FE
	bcs  48.b		; B0 30
	sbc ($F0.b,X)		; E1 F0
	cpx #$2C.b		; E0 2C
	bpl  16.b		; 10 10
	cmp ($A0.b,S),Y		; D3 A0
	ldx #$1D.b		; A2 1D
	and ($E0.b),Y		; 31 E0
	tad		; 5B
	pea $0DD1.w		; F4 D1 0D
	bcs  34.b		; B0 22
	cmp ($10.b)		; D2 10
	bpl   0.b		; 10 00
	sbc ($FE.b),Y		; F1 FE
	and $E122B0.l,X		; 3F B0 22 E1
	cop $FE.b		; 02 FE
	ora $4BE2F1.l,X		; 1F F1 E2 4B
	bcs   1.b		; B0 01
	sbc ($EF.b)		; F2 EF
	ora ($DF.b)		; 12 DF
	rol $1FE1.w,X		; 3E E1 1F
	ldy #$2F.b		; A0 2F
	cmp $3D.b,S		; C3 3D
	ora $BE.b,S		; 03 BE
	bit $AF32.w		; 2C 32 AF
	ldy #$42.b		; A0 42
	sbc $10.b,S		; E3 10
	ora ($FC.b,S),Y		; 13 FC
	bpl  31.b		; 10 1F
	and $A0.b,S		; 23 A0
	bcs -47.b		; B0 D1
	eor $32B0.w,X		; 5D B0 32
	sbc ($3E.b,X)		; E1 3E
	and ($A0.b),Y		; 31 A0
	cpx $FD.b		; E4 FD
	ora ($20.b),Y		; 11 20
	ora ($DF.b,S),Y		; 13 DF
	ora ($3C.b,X)		; 01 3C
	bcc  36.b		; 90 24
	sbc $A5F1.w,X		; FD F1 A5
	rol $0DEF.w		; 2E EF 0D
	and $F1B0.w,X		; 3D B0 F1
	rol $C004.w		; 2E 04 C0
	ora ($1D.b,X)		; 01 1D
	asl $A011.w,X		; 1E 11 A0
	cmp $C0.b,S		; C3 C0
	jsl $E34ED0.l		; 22 D0 4E E3
	inc $A01D.w,X		; FE 1D A0
	eor $3DD4EF.l		; 4F EF D4 3D
	and ($D4.b),Y		; 31 D4
	cpx $A04F.w		; EC 4F A0
	pei ($1D.b)		; D4 1D
	and $1CD7.w		; 2D D7 1C
	rol $E113.w		; 2E 13 E1
	ldy #$F1.b		; A0 F1
	cmp ($0F.b)		; D2 0F
	bit $1001.w		; 2C 01 10
	cop $02.b		; 02 02
	ldy #$01.b		; A0 01
	cop $E0.b		; 02 E0
	ora ($3C.b)		; 12 3C
	sbc $ED.b		; E5 ED
	eor $12A0.w		; 4D A0 12
	cmp ($FF.b),Y		; D1 FF
	beq  51.b		; F0 33
	cmp $A040FD.l,X		; DF FD 40 A0
	sbc $DCF620.l		; EF 20 F6 DC
	jsr $211F.w		; 20 1F 21
	cmp $A0.b,S		; C3 A0
	ora $102E2F.l		; 0F 2F 2E 10
	sbc ($E0.b)		; F2 E0
	.db $62, $D0, $A0		; 62 D0 A0
	cmp $CDF44F.l,X		; DF 4F F4 CD
	tda		; 7B
	bit $C2.b		; 24 C2
	cmp ($A0.b),Y		; D1 A0
	asl $FF03.w,X		; 1E 03 FF
	and $FED3.w		; 2D D3 FE
	jmp $C4A0E3.l		; 5C E3 A0 C4
	asl $EF12.w		; 0E 12 EF
	and ($CD.b,X)		; 21 CD
	and $DEA003.l,X		; 3F 03 A0 DE
	eor $F22D.w		; 4D 2D F2
	sbc ($2D.b),Y		; F1 2D
	tsb $B3.b		; 04 B3
	ldy #$FD.b		; A0 FD
	rti		; 40

	cpx $1E.b		; E4 1E
	and ($1F.b,X)		; 21 1F
	brk $F0.b		; 00 F0
	ldy #$F4.b		; A0 F4
	ora $204ED0.l		; 0F D0 4E 20
	cmp ($13.b),Y		; D1 13
	asl $2E90.w,X		; 1E 90 2E
	lda $1B.b,X		; B5 1B
	rol $0BF7.w		; 2E F7 0B
	ora $0FA0F6.l		; 0F F6 A0 0F
	bit $F1F5.w		; 2C F5 F1
	cpx #$3E.b		; E0 3E
	ora ($E1.b),Y		; 11 E1
	ldy #$3E.b		; A0 3E
	cop $CC.b		; 02 CC
	ora $4C.b,S		; 03 4C
	bne -45.b		; D0 D3
	ora $124A90.l		; 0F 90 4A 12
	jsr ($2330.w,X)		; FC 30 23
	cpy $C9.b		; C4 C9
	adc $DD04A0.l		; 6F A0 04 DD
	lsr $E110.w		; 4E 10 E1
	ora $90A332.l,X		; 1F 32 A3 90
	eor ($4B.b,X)		; 41 4B
	sbc [$D1.b],Y		; F7 D1
	eor ($3B.b,X)		; 41 3B
	jsl $FFA0E3.l		; 22 E3 A0 FF
	cmp ($00.b),Y		; D1 00
	asl $0C15.w		; 0E 15 0C
	ora ($DE.b)		; 12 DE
	ldy #$50.b		; A0 50
	beq -17.b		; F0 EF
	lsr $E0C2.w		; 4E C2 E0
	bpl -32.b		; 10 E0
	ldy #$2B.b		; A0 2B
	bvc  14.b		; 50 0E
	ora ($D1.b)		; 12 D1
	sbc $DF22.w		; ED 22 DF
	bcc  46.b		; 90 2E
	ora $05FE4F.l,X		; 1F 4F FE 05
	cmp ($3B.b,X)		; C1 3B
	sbc ($A1.b,S),Y		; F3 A1
	brk $3D.b		; 00 3D
	cmp ($DE.b,S),Y		; D3 DE
	and $0002.w		; 2D 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	ora ($3C.b),Y		; 11 3C
	and $F1E4.w,X		; 3D E4 F1
	ora $0E.b,S		; 03 0E
	ldy #$4F.b		; A0 4F
	ora $01014D.l		; 0F 4D 01 01
	ora $90E3F2.l,X		; 1F F2 E3 90
	asl A		; 0A
	dec $AC.b		; C6 AC
	ora $303CCE.l		; 0F CE 3C 30
	mvp $F2,$C0		; 44 C0 F2
	lsr $F203.w		; 4E 03 F2
	ora $32D014.l,X		; 1F 14 D0 32
	cpy #$13.b		; C0 13
	bpl  16.b		; 10 10
	ora ($0E.b),Y		; 11 0E
	jsr $E1E4.w		; 20 E4 E1
	cpy #$3C.b		; C0 3C
	bne  78.b		; D0 4E
	ora $CB05FC.l		; 0F FC 05 CB
	ora $E2C0.w		; 0D C0 E2
	lda $ACF1AC.l,X		; BF AC F1 AC
	cpx $ABDD.w		; EC DD AB
	ldy $5F.b,X		; B4 5F
	bne 107.b		; D0 6B
	pei ($E0.b)		; D4 E0
	sbc ($1C.b)		; F2 1C
	ora ($B4.b,S),Y		; 13 B4
	cmp $0F.b,S		; C3 0F
	rol $2D01.w,X		; 3E 01 2D
	ora ($D3.b,S),Y		; 13 D3
	ora ($B4.b,X)		; 01 B4
	pea $4EFE.w		; F4 FE 4E
	ora ($2E.b)		; 12 2E
	and $B40420.l,X		; 3F 20 04 B4
	cpx $1E.b		; E4 1E
	bmi -26.b		; 30 E6
	cmp ($11.b)		; D2 11
	brk $11.b		; 00 11
	ldy $1D.b,X		; B4 1D
	adc $001011.l		; 6F 11 10 00
	jsr $1101.w		; 20 01 11
	ldy $11.b		; A4 11
	ora ($12.b),Y		; 11 12
	bpl -41.b		; 10 D7
	brk $3E.b		; 00 3E
	cop $B4.b		; 02 B4
	sbc $F04F.w,X		; FD 4F F0
	beq -31.b		; F0 E1
	rol $0CE0.w		; 2E E0 0C
	ldy $31.b		; A4 31
	nop		; EA
	ora $A43CEB.l,X		; 1F EB 3C A4
	ldy $A43A.w,X		; BC 3A A4
	sep #$CB		; E2 CB
	ora $FDEEEE.l		; 0F EE EE FD
	inc $84EF.w,X		; FE EF 84
	wai		; CB
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	plb		; AB
	tyx		; BB
	tax		; AA
	sei		; 78
	tyx		; BB
	tax		; AA
	tax		; AA
	tsx		; BA
	plb		; AB
	tsx		; BA
	plb		; AB
	tsx		; BA
	sty $BB.b		; 84 BB
	tyx		; BB
	tyx		; BB
	tyx		; BB
	wai		; CB
	tyx		; BB
	cpy $A4C5.w		; CC C5 A4
	lda $A3.b,X		; B5 A3
	sbc $A502F1.l,X		; FF F1 02 A5
	sbc ($F3.b,X)		; E1 F3
	ldy $EF.b		; A4 EF
	and $FF224D.l,X		; 3F 4D 22 FF
	and ($20.b,X)		; 21 20
	and $0011B4.l		; 2F B4 11 00
	and $3F3F2E.l,X		; 3F 2E 3F 3F
	ora ($F2.b,S),Y		; 13 F2
	ldy $1F.b		; A4 1F
	lsr $0731.w		; 4E 31 07
	pea $5100.w		; F4 00 51
	cop $94.b		; 02 94
	eor $233364.l,X		; 5F 64 33 23
	and ($33.b,S),Y		; 33 33
	and ($33.b,S),Y		; 33 33
	sei		; 78
	eor $76.b		; 45 76
	lsr $66.b,X		; 56 66
	eor $66.b,X		; 55 66
	eor $65.b,X		; 55 65
	sei		; 78
	eor $65.b,X		; 55 65
	eor $65.b,X		; 55 65
	eor $55.b,X		; 55 55
	eor $45.b,X		; 55 45
	sty $22.b,X		; 94 22
	jsl $222222.l		; 22 22 22 22
	and ($05.b)		; 32 05
	ora $1003A4.l,X		; 1F A4 03 10
	sbc ($F2.b),Y		; F1 F2
	beq  59.b		; F0 3B
	jsr $9411.w		; 20 11 94
	sta ($B0.b,S),Y		; 93 B0
	ora ($A3.b),Y		; 11 A3
	dec $A20E.w,X		; DE 0E A2
	phx		; DA
	ldy $4D.b		; A4 4D
	inc $00EF.w,X		; FE EF 00
	cmp $CFF00E.l,X		; DF 0E F0 CF
	ldy $1D.b		; A4 1D
	ora $0E0C.w		; 0D 0C 0E
	sbc $B1F1.w,X		; FD F1 B1
	cpy #$A4.b		; C0 A4
	tsb $EF0D.w		; 0C 0D EF
	sbc $FF0EFD.l		; EF FD 0E FF
	inc $F188.w		; EE 88 F1
	sta $DEDDDD.l,X		; 9F DD DD DE
	sbc $EDDD.w		; ED DD ED
	sei		; 78
	tsx		; BA
	wai		; CB
	tsx		; BA
	tyx		; BB
	wai		; CB
	tsx		; BA
	wai		; CB
	tyx		; BB
	sty $0E.b,X		; 94 0E
.INDEX 16
	rep #$91		; C2 91
	asl A		; 0A
	bit $EC10.w		; 2C 10 EC
	sbc $4E94.w,X		; FD 94 4E
	bne  43.b		; D0 2B
	phk		; 4B
	lsr $E1E3.w		; 4E E3 E1
	sbc ($94.b)		; F2 94
	sbc $2F2EE3.l,X		; FF E3 2E 2F
	and $E321.w,X		; 3D 21 E3
	eor $02A4.w		; 4D A4 02
	sbc ($01.b),Y		; F1 01
	ora $023F5E.l		; 0F 5E 3F 02
	bpl -92.b		; 10 A4
	and $4D2F11.l,X		; 3F 11 2F 4D
	bmi  33.b		; 30 21
	ora ($F2.b,X)		; 01 F2
	sty $50.b,X		; 94 50
	and ($F3.b,S),Y		; 33 F3
	jsr $607D.w		; 20 7D 60
	ora $31.b,S		; 03 31
	sty $21.b,X		; 94 21
	rts		; 60

	ora ($42.b),Y		; 11 42
	and $03.b,S		; 23 03
	sbc $22.b,X		; F5 22
	sty $11.b,X		; 94 11
	and $F145.w,X		; 3D 45 F1
	trb $1F.b		; 14 1F
	and ($20.b)		; 32 20
	sty $12.b,X		; 94 12
	ora ($21.b),Y		; 11 21
	jsr $410F.w		; 20 0F 41
	ora ($5E.b,X)		; 01 5E
	sty $20.b,X		; 94 20
	bpl  63.b		; 10 3F
	cop $F3.b		; 02 F3
	ora ($1D.b,X)		; 01 1D
	eor $3F0094.l		; 4F 94 00 3F
	cop $C4.b		; 02 C4
	ora $F05F.w		; 0D 5F F0
	cop $84.b		; 02 84
	ora $3F2D.w		; 0D 2D 3F
	cmp $0C.b,S		; C3 0C
	bmi -63.b		; 30 C1
	ora $FCD484.l,X		; 1F 84 D4 FC
	sbc $C013.w		; ED 13 C0
	beq  -1.b		; F0 FF
	lda ($84.b,S),Y		; B3 84
	lda ($D2.b),Y		; B1 D2
	lda $1C1F.w		; AD 1F 1C
	dec $EF0D.w,X		; DE 0D EF
	sty $FC.b		; 84 FC
	cmp ($EE.b),Y		; D1 EE
	cmp $EC3CCD.l,X		; DF CD 3C EC
	cpy $94.b		; C4 94
	jsr ($FE00.w,X)		; FC 00 FE
	asl $EF1D.w		; 0E 1D EF
	asl $880F.w		; 0E 0F 88
	pld		; 2B
	cmp $0C.b		; C5 0C
	asl $DEF1.w		; 0E F1 DE
	bmi -51.b		; 30 CD
	sty $0D.b		; 84 0D
.ACCU 8
	sep #$A2		; E2 A2
	inc $FFC2.w,X		; FE C2 FF
	cmp ($B2.b),Y		; D1 B2
	sty $ED.b		; 84 ED
	bpl  14.b		; 10 0E
	jsr ($0D5E.w,X)		; FC 5E 0D
	asl $8402.w,X		; 1E 02 84
	ora $21EFE2.l		; 0F E2 EF 21
	pei ($ED.b)		; D4 ED
	and $C28404.l		; 2F 04 84 C2
	sbc $E1.b,S		; E3 E1
	beq  32.b		; F0 20
	cmp ($2D.b,S),Y		; D3 2D
	bpl 116.b		; 10 74
	ora ($22.b)		; 12 22
	sbc $F55F.w,X		; FD 5F F5
	ora $74F62E.l		; 0F 2E F6 74
	lda $1E.b,X		; B5 1E
	bit $F9.b		; 24 F9
	eor ($5D.b,S),Y		; 53 5D
	ora ($3F.b,X)		; 01 3F
	stz $C4.b,X		; 74 C4
	rti		; 40

	cmp ($E6.b)		; D2 E6
	lda ($2D.b)		; B2 2D
	and ($4B.b,X)		; 21 4B
	sty $F4.b		; 84 F4
	sbc $E0121E.l,X		; FF 1E 12 E0
	rol $2001.w		; 2E 01 20
	stz $B5.b,X		; 74 B5
	pei ($21.b)		; D4 21
	ora $0F1211.l		; 0F 11 12 0F
	bmi 116.b		; 30 74
	sbc ($00.b),Y		; F1 00
	rti		; 40

	sbc ($0F.b,S),Y		; F3 0F
	ora $E2.b,S		; 03 E2
	cop $74.b		; 02 74
	ora ($1D.b),Y		; 11 1D
	adc ($4B.b,X)		; 61 4B
	.db $42, $1E		; 42 1E
	and ($14.b,X)		; 21 14
	stz $D1.b,X		; 74 D1
	ora ($2E.b,S),Y		; 13 2E
	ora $0D.b		; 05 0D
	eor ($01.b),Y		; 51 01
	and ($84.b,X)		; 21 84
	ora ($00.b),Y		; 11 00
	ora ($11.b),Y		; 11 11
	cpx $F0.b		; E4 F0
	and $5464F0.l		; 2F F0 64 54
	mvn $51,$A2		; 54 A2 51
	lsr $2EE5.w		; 4E E5 2E
	eor ($74.b,X)		; 41 74
.ACCU 8
	sep #$2D		; E2 2D
	ora $10.b,S		; 03 10
	jsr $F3D3.w		; 20 D3 F3
	lda ($74.b,S),Y		; B3 74
	sbc ($2F.b,X)		; E1 2F
	sbc ($0F.b)		; F2 0F
	and $4C0F.w,X		; 3D 0F 4C
	brk $74.b		; 00 74
	cpx #$FFF1.w		; E0 F1 FF
	cmp ($2D.b),Y		; D1 2D
	sep #$0D		; E2 0D
	ora $E1FF74.l,X		; 1F 74 FF E1
	asl $B0F2.w,X		; 1E F2 B0
	pld		; 2B
	cop $DF.b		; 02 DF
	stz $7A.b		; 64 7A
	sta ($B1.b)		; 92 B1
	sbc $A9.b,S		; E3 A9
	and $64EFDF.l,X		; 3F DF EF 64
	sbc $0C0E0E.l		; EF 0E 0E 0C
	rol $2BB1.w		; 2E B1 2B
	lda ($64.b),Y		; B1 64
	sbc ($0A.b,S),Y		; F3 0A
	ora $EB.b		; 05 EB
	jmp ($2FB4.w)		; 6C B4 2F
	cmp $1064.w,X		; DD 64 10
	inc A		; 1A
	adc $E4E0.w		; 6D E0 E4
	sbc $74E4F0.l		; EF F0 E4 74
	sbc $300EF0.l,X		; FF F0 0E 30
	ora $411EC1.l,X		; 1F C1 1E 41
	rts		; 60

	sbc $30BD.w		; ED BD 30
	and $4D.b,S		; 23 4D
	bvc  34.b		; 50 22
	rti		; 40

	stz $4F.b,X		; 74 4F
	sbc ($00.b),Y		; F1 00
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	pei ($64.b)		; D4 64
	ora $E423.w,X		; 1D 23 E4
	and $0113FF.l		; 2F FF 13 01
	sbc $1F4364.l		; EF 64 43 1F
	sbc $FF.b		; E5 FF
	adc $F015FE.l		; 6F FE 15 F0
	stz $2F.b		; 64 2F
	ora $2D.b,S		; 03 2D
	and $41122F.l,X		; 3F 2F 12 41
	lda ($64.b),Y		; B1 64
	ora $0F0104.l,X		; 1F 04 01 0F
	and $F20F2F.l		; 2F 2F 0F F2
	stz $0F.b		; 64 0F
	jsr $E0E3.w		; 20 E3 E0
	jsl $C0140E.l		; 22 0E 14 C0
	stz $5C.b		; 64 5C
	sbc ($F0.b,S),Y		; F3 F0
	jmp $D202.w		; 4C 02 D2
	rtl		; 6B

	sbc ($64.b,S),Y		; F3 64
	cop $1D.b		; 02 1D
	cpx $0B.b		; E4 0B
	cop $02.b		; 02 02
	cmp ($03.b,X)		; C1 03
	rts		; 60

	jsr $0202.w		; 20 02 02
	lsr $1014.w		; 4E 14 10
	jsl $E45010.l		; 22 10 50 E4
	ora $312F04.l		; 0F 04 2F 31
	ora ($41.b,S),Y		; 13 41
	asl $54.b,X		; 16 54
	cmp $20E25D.l,X		; DF 5D E2 20
	sbc ($F1.b,X)		; E1 F1
	phd		; 0B
	eor ($50.b,X)		; 41 50
	bne  66.b		; D0 42
	and $600FC4.l,X		; 3F C4 0F 60
	sbc ($0E.b,S),Y		; F3 0E
	bvc   3.b		; 50 03
	ora $0DDD.w		; 0D DD 0D
	sbc ($1F.b)		; F2 1F
	brk $52.b		; 00 52
	stz $E0.b		; 64 E0
	bpl  -2.b		; 10 FE
	sbc ($1E.b,S),Y		; F3 1E
	sbc ($C2.b),Y		; F1 C2
	and $24FC54.l		; 2F 54 FC 24
	cmp $143D.w,X		; DD 3D 14
	ldx $122B.w		; AE 2B 12
	mvn $C0,$FE		; 54 FE C0
	sbc ($3F.b)		; F2 3F
	dec $1DEE.w,X		; DE EE 1D
	trb $2B54.w		; 1C 54 2B
	sbc ($EC.b)		; F2 EC
	ora $FCCDD1.l		; 0F D1 CD FC
	bit $F458.w		; 2C 58 F4
	phx		; DA
	rts		; 60

	ldy $B3.b		; A4 B3
	xba		; EB
	and ($97.b,X)		; 21 97
	mvn $DB,$FD		; 54 FD DB
	bit $19DE.w		; 2C DE 19
	sbc ($EE.b)		; F2 EE
	bne 100.b		; D0 64
	sbc $0CE01F.l		; EF 1F E0 0C
	sep #$0D		; E2 0D
	ora $1B54F1.l		; 0F F1 54 1B
	bpl -64.b		; 10 C0
	ora $FF2E.w		; 0D 2E FF
	and $E244D1.l		; 2F D1 44 E2
	sbc $0C03.w		; ED 03 0C
	mvp $24,$DF		; 44 DF 24
	sbc ($54.b)		; F2 54
	brk $00.b		; 00 00
	ora $12.b,S		; 03 12
	sbc $20F151.l,X		; FF 51 F1 20
	mvn $00,$04		; 54 04 00
	ora ($03.b,X)		; 01 03
	jsr $F43F.w		; 20 3F F4
	rol $4F54.w,X		; 3E 54 4F
	tsb $03.b		; 04 03
	ora $001422.l,X		; 1F 22 14 00
	jsr $2254.w		; 20 54 22
	bit $E1.b		; 24 E1
	ora ($31.b),Y		; 11 31
	jsr $2121.w		; 20 21 21
	mvn $F1,$24		; 54 24 F1
	jsl $02051E.l		; 22 1E 05 02
	bpl   1.b		; 10 01
	mvp $41,$25		; 44 25 41
	ora ($21.b)		; 12 21
	jsr $F660.w		; 20 60 F6
	cop $44.b		; 02 44
	and $210433.l		; 2F 33 04 21
	sbc ($30.b,S),Y		; F3 30
	and ($10.b,X)		; 21 10
	mvp $FF,$15		; 44 15 FF
	bvc   1.b		; 50 01
	jsr $F30E.w		; 20 0E F3
	bpl  52.b		; 10 34
	jsr $0FF0.w		; 20 F0 0F
	.db $42, $B1		; 42 B1
	ora ($EB.b),Y		; 11 EB
	and $34.b,X		; 35 34
	dex		; CA
	brk $F0.b		; 00 F0
	bne  26.b		; D0 1A
	inc A		; 1A
	sbc $DA.b,S		; E3 DA
	mvp $C1,$10		; 44 10 C1
	tsb $DF1F.w		; 0C 1F DF
	sbc $44FEFD.l,X		; FF FD FE 44
	sbc $FF0FFD.l,X		; FF FD 0F FF
	cpy #$EF1E.w		; C0 1E EF
	cmp $DC2D34.l,X		; DF 34 2D DC
	dec $EFEC.w		; CE EC EF
	xce		; FB
	cmp ($AD.b,S),Y		; D3 AD
	bit $2C.b,X		; 34 2C
	bne -17.b		; D0 EF
	tas		; 1B
	cpx #$EED0.w		; E0 D0 EE
	beq  52.b		; F0 34
	tas		; 1B
	cpx #$FDEF.w		; E0 EF FD
	ora $F1FEF1.l,X		; 1F F1 FE F1
	bit $FE.b		; 24 FE
	cmp ($EE.b,S),Y		; D3 EE
	cop $F0.b		; 02 F0
	ldx #$3E3F.w		; A2 3F 3E
	bit $B3.b		; 24 B3
	lsr $F200.w		; 4E 00 F2
	brk $F1.b		; 00 F1
	bmi   2.b		; 30 02
	trb $02.b		; 14 02
	ora ($55.b,X)		; 01 55
	bne  96.b		; D0 60
	bvc  51.b		; 50 33
	sbc $24.b,X		; F5 24
	bmi -29.b		; 30 E3
	cop $20.b		; 02 20
	ora ($10.b)		; 12 10
	ora ($21.b)		; 12 21
	trb $15.b		; 14 15
	brk $63.b		; 00 63
	ora ($03.b,S),Y		; 13 03
	bmi  19.b		; 30 13
	jsl $E22514.l		; 22 14 25 E2
	bmi  97.b		; 30 61
	brk $40.b		; 00 40
	ora ($11.b,S),Y		; 13 11
	trb $F4.b		; 14 F4
	bpl  18.b		; 10 12
	ora ($02.b),Y		; 11 02
	jsr $0011.w		; 20 11 00
	tsb $41.b		; 04 41
	sbc ($0F.b,S),Y		; F3 0F
	bpl  16.b		; 10 10
	and ($E1.b,X)		; 21 E1
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	ora ($10.b,X)		; 01 10
	ora $000000.l		; 0F 00 00 00
	bpl  50.b		; 10 32
	and $32.b,S		; 23 32
	ora ($11.b),Y		; 11 11
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	sbc $FFFEFF.l,X		; FF FF FE FF
	brk $EF.b		; 00 EF
	inc $FFEE.w		; EE EE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $FF.b		; 00 FF
	ora $0000F0.l		; 0F F0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $FE.b		; 00 FE
	inc $CDCF.w,X		; FE CF CD
	rep #$C0		; C2 C0
	cmp $D3.b,X		; D5 D3
	eor $F01210.l		; 4F 10 12 F0
	ora ($34.b,X)		; 01 34
	cpy #$E304.w		; C0 04 E3
	ora ($F3.b)		; 12 F3
	cop $4F.b		; 02 4F
	ora ($D0.b)		; 12 D0
	cpy #$0E0F.w		; C0 0F 0E
	asl $D1FF.w,X		; 1E FF D1
	sbc $C4221D.l		; EF 1D 22 C4
	cpx $040F.w		; EC 0F 04
	tsb $004D.w		; 0C 4D 00
	brk $EF.b		; 00 EF
	cpy $1F.b		; C4 1F
	sbc ($D2.b)		; F2 D2
	inc $4E2E.w,X		; FE 2E 4E
	ora ($F4.b,X)		; 01 F4
	cpy #$21FF.w		; C0 FF 21
	inc $1003.w,X		; FE 03 10
	eor $C42422.l		; 4F 22 24 C4
	asl $E420.w		; 0E 20 E4
	sbc ($2F.b,X)		; E1 2F
	and $B4F212.l		; 2F 12 F2 B4
	cpy #$3D5D.w		; C0 5D 3D
	and $C4A6F5.l,X		; 3F F5 A6 C4
	cmp ($B4.b)		; D2 B4
	cmp ($1D.b),Y		; D1 1D
	sbc ($B6.b),Y		; F1 B6
	cmp $DFE2F0.l		; CF F0 E2 DF
	ldy $3A.b,X		; B4 3A
	ora ($C1.b),Y		; 11 C1
	cmp ($DF.b,X)		; C1 DF
	and $C2F2.w		; 2D F2 C2
	ldy $F0.b,X		; B4 F0
	and $1EE210.l		; 2F 10 E2 1E
	eor $EF04.w		; 4D 04 EF
	ldy $20.b,X		; B4 20
	jsr $F1F3.w		; 20 F3 F1
	ora $C5F430.l,X		; 1F 30 F4 C5
	ldy $01.b		; A4 01
	and ($12.b),Y		; 31 12
	sbc ($1C.b)		; F2 1C
	eor ($04.b,X)		; 41 04
	sbc ($B4.b,X)		; E1 B4
	ora ($F1.b,X)		; 01 F1
	asl $3E1D.w		; 0E 1D 3E
	cop $C5.b		; 02 C5
	sbc $5AA4.w,X		; FD A4 5A
	lsr $4CEC.w,X		; 5E EC 4C
	cmp $FF.b,S		; C3 FF
	cmp $DC.b,S		; C3 DC
	ldy $2C.b		; A4 2C
	tas		; 1B
	brk $C4.b		; 00 C4
	lda $011D4A.l,X		; BF 4A 1D 01
	ldy $D2.b		; A4 D2
	ora $011E.w		; 0D 1E 01
	ora ($00.b,X)		; 01 00
	ora $A423.w,X		; 1D 23 A4
	sbc ($F2.b),Y		; F1 F2
	cop $01.b		; 02 01
	eor $334E.w,X		; 5D 4E 33
	cpx $A4.b		; E4 A4
	bpl  61.b		; 10 3D
	and $10.b,S		; 23 10
	and $E4D204.l,X		; 3F 04 D2 E4
	ldy $FE.b		; A4 FE
	jmp ($C223.w)		; 6C 23 C2
	and $E012.w		; 2D 12 E0
	ora $4BA4.w,X		; 1D A4 4B
	sbc ($B5.b)		; F2 B5
	cpy #$D4FC.w		; C0 FC D4
	lsr A		; 4A
	eor $C4B4.w		; 4D B4 C4
	dec $1FFF.w,X		; DE FF 1F
	bne  47.b		; D0 2F
	sbc ($C3.b),Y		; F1 C3
	ldy $C1.b,X		; B4 C1
	sbc $011E2D.l,X		; FF 2D 1E 01
	ora ($F4.b),Y		; 11 F4
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	brk $11.b		; 00 11
	bpl  46.b		; 10 2E
	jsr $0212.w		; 20 12 02
	cpx $A4.b		; E4 A4
	sbc ($40.b,X)		; E1 40
	bmi  16.b		; 30 10
	pei ($39.b)		; D4 39
	rti		; 40

	trb $A4.b		; 14 A4
	rep #$4B		; C2 4B
	sbc ($00.b,X)		; E1 00
	brk $D2.b		; 00 D2
	brk $F5.b		; 00 F5
	ldy $1F.b		; A4 1F
	lda $DD.b,X		; B5 DD
	cpx #$D2D1.w		; E0 D1 D2
	pld		; 2B
	ora $E2B4.w,X		; 1D B4 E2
	cmp ($10.b,X)		; C1 10
	ora $F1FEFF.l		; 0F FF FE F1
	sbc ($B4.b),Y		; F1 B4
.INDEX 8
	sep #$1D		; E2 1D
	jsr $EFD5.w		; 20 D5 EF
	rol $0FE1.w,X		; 3E E1 0F
	ldy $6E.b		; A4 6E
	eor $D1.b,S		; 43 D1
	and $2E.b		; 25 2E
	eor $D123.w,X		; 5D 23 D1
	ldy $30.b		; A4 30
	cpx $B2.b		; E4 B2
	sep #$03		; E2 03
	inc $0D.b		; E6 0D
	rol $FEA4.w,X		; 3E A4 FE
	ror $11E3.w		; 6E E3 11
	pei ($00.b)		; D4 00
	pea $A41F.w		; F4 1F A4
	and ($D0.b,X)		; 21 D0
	ora $B1.b,S		; 03 B1
	sbc $D03FEE.l,X		; FF EE 3F D0
	ldy $A1.b		; A4 A1
	tas		; 1B
	phk		; 4B
	ora $0CEFB0.l,X		; 1F B0 EF 0C
	ora ($A4.b,X)		; 01 A4
	cmp ($11.b),Y		; D1 11
	cmp ($06.b,X)		; C1 06
	lda $10.b,S		; A3 10
	and $A03F.w		; 2D 3F A0
	sbc $11E0B2.l		; EF B2 E0 11
	eor $34.b,S		; 43 34
	ora ($41.b,S),Y		; 13 41
	ldy $3F.b		; A4 3F
	eor $2320.w		; 4D 20 23
	ora $F3F112.l,X		; 1F 12 F1 F3
	ldy $C1.b		; A4 C1
	and $3E3E.w		; 2D 3E 3E
	cop $00.b		; 02 00
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	sty $4B.b,X		; 94 4B
	rol $EC.b,X		; 36 EC
	asl $A7F7.w		; 0E F7 A7
	bcc  43.b		; 90 2B
	ldy $0E.b		; A4 0E
	beq -47.b		; F0 D1
	bit $111D.w		; 2C 1D 11
	cmp $DE.b		; C5 DE
	ldy $3F.b		; A4 3F
	ora ($C3.b),Y		; 11 C3
	beq   1.b		; F0 01
	sbc ($FE.b)		; F2 FE
	dec A		; 3A
	ldy $20.b		; A4 20
	cmp $EE.b,S		; C3 EE
	cpx #$3C.b		; E0 3C
	jsr $2DD3.w		; 20 D3 2D
	sty $43.b,X		; 94 43
	sbc ($21.b),Y		; F1 21
	sbc $D0.b		; E5 D0
	.db $42, $02		; 42 02
	adc $12A4.w		; 6D A4 12
	sbc $F2.b		; E5 F2
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	sbc ($20.b,S),Y		; F3 20
.ACCU 8
	sep #$A4		; E2 A4
	beq -28.b		; F0 E4
	cpx #$1F.b		; E0 1F
	beq  15.b		; F0 0F
	sbc ($E1.b)		; F2 E1
	ldy #$CE.b		; A0 CE
	asl $3F0D.w,X		; 1E 0D 3F
	beq -31.b		; F0 E1
	cpx #$2F.b		; E0 2F
	sty $12.b,X		; 94 12
	dec $FF12.w		; CE 12 FF
	lda $DC17.w,X		; BD 17 DC
	ora $1C1EA4.l,X		; 1F A4 1E 1C
	ora $F0.b,S		; 03 F0
	inc $1E4D.w		; EE 4D 1E
	bpl -92.b		; 10 A4
	ora $DE.b,S		; 03 DE
	ora ($D1.b,X)		; 01 D1
	asl $224C.w,X		; 1E 4C 22
	beq -108.b		; F0 94
	lsr $3C21.w,X		; 5E 21 3C
	rol $F6F3.w		; 2E F3 F6
	sbc $20A46D.l,X		; FF 6D A4 20
	pld		; 2B
	and $0120.w		; 2D 20 01
	jsr $F214.w		; 20 14 F2
	sty $D2.b,X		; 94 D2
.ACCU 16
.INDEX 16
	rep #$B2		; C2 B2
	bpl  30.b		; 10 1E
	eor ($E2.b,X)		; 41 E2
	sbc $94.b,S		; E3 94
	pea $2CA4.w		; F4 A4 2C
	pei ($A2.b)		; D4 A2
	dec A		; 3A
	and $4E94F0.l		; 2F F0 94 4E
	asl $FAC0.w		; 0E C0 FA
	and ($F4.b,X)		; 21 F4
	lda $941E.w,X		; BD 1E 94
	rol $2DF0.w		; 2E F0 2D
	sbc ($ED.b,X)		; E1 ED
	ror A		; 6A
	jmp ($9421.w)		; 6C 21 94
	sbc ($0C.b),Y		; F1 0C
	jsl $1DB1D3.l		; 22 D3 B1 1D
	and $338401.l,X		; 3F 01 84 33
	dec $B645.w,X		; DE 45 B6
	and ($15.b),Y		; 31 15
	ora $30943C.l,X		; 1F 3C 94 30
	and ($E4.b)		; 32 E4
	ora $B4D3F3.l,X		; 1F F3 D3 B4
	bne -108.b		; D0 94
	brk $30.b		; 00 30
	pea $4FDE.w		; F4 DE 4F
	and $94EFD6.l,X		; 3F D6 EF 94
	trb $F010.w		; 1C 10 F0
	tsb $1F3D.w		; 0C 3D 1F
	brk $F3.b		; 00 F3
	ldy #$DCFE.w		; A0 FE DC
	cpy $EFEE.w		; CC EE EF
	cmp ($EE.b,X)		; C1 EE
	sbc $6D94.w		; ED 94 6D
	sbc $EC.b,S		; E3 EC
	rol $F13D.w,X		; 3E 3D F1
	ora $941D.w,X		; 1D 1D 94
	lsr $3DFE.w		; 4E FE 3D
	bpl   0.b		; 10 00
	cmp ($DE.b,S),Y		; D3 DE
	phk		; 4B
	sty $15.b,X		; 94 15
	pea $E2D5.w		; F4 D5 E2
.ACCU 8
	sep #$2F		; E2 2F
	rol $94E2.w,X		; 3E E2 94
	sbc ($2C.b),Y		; F1 2C
	and ($D2.b),Y		; 31 D2
	beq   1.b		; F0 01
	dec A		; 3A
	eor $0F0294.l		; 4F 94 02 0F
	bmi  46.b		; 30 2E
	tsb $0D.b		; 04 0D
	and $4D8431.l,X		; 3F 31 84 4D
	ldy $B1.b,X		; B4 B1
	eor $F9FC00.l		; 4F 00 FC F9
	ora ($84.b,X)		; 01 84
	jsr $1221.w		; 20 21 12
.INDEX 8
	sep #$1D		; E2 1D
	ldx $BD.b		; A6 BD
	ora $C4F484.l,X		; 1F 84 F4 C4
	cpx $E0.b		; E4 E0
	tyx		; BB
	ora $94C0D3.l		; 0F D3 C0 94
.INDEX 16
	rep #$DF		; C2 DF
	sbc $4D1EF1.l		; EF F1 1E 4D
	eor $9421.w		; 4D 21 94
	sbc ($01.b,X)		; E1 01
	and $024E.w		; 2D 4E 02
	brk $30.b		; 00 30
	bit $1484.w		; 2C 84 14
	inc $027B.w		; EE 7B 02
	cmp $3EE46F.l		; CF 6F E4 3E
	sty $5F.b		; 84 5F
	ora $C1.b		; 05 C1
	cop $F0.b		; 02 F0
	trb $14.b		; 14 14
	sbc $84.b,X		; F5 84
	brk $1F.b		; 00 1F
	and $FEC531.l		; 2F 31 C5 FE
.ACCU 8
	sep #$22		; E2 22
	sty $E0.b		; 84 E0
	cpx #$FAD0.w		; E0 D0 FA
	ora $E0CC.w,X		; 1D CC E0
	dec $84.b		; C6 84
	stp		; DB
	phk		; 4B
	and $0CA1C4.l,X		; 3F C4 A1 0C
	jsr $8421.w		; 20 21 84
	sbc $024D3C.l		; EF 3C 4D 02
	lda ($1C.b),Y		; B1 1C
	rol $94FF.w,X		; 3E FF 94
	bpl   0.b		; 10 00
	sbc ($E2.b)		; F2 E2
	tsb $F121.w		; 0C 21 F1
.INDEX 8
	sep #$94		; E2 94
	sbc $E20221.l,X		; FF 21 02 E2
	beq  62.b		; F0 3E
	and ($01.b,X)		; 21 01
	sty $1E.b		; 84 1E
	eor ($20.b,X)		; 41 20
	and $7E.b,S		; 23 7E
	ora ($22.b),Y		; 11 22
	sep #$84		; E2 84
	eor $EF5F.w		; 4D 5F EF
	cop $0F.b		; 02 0F
	cpx #$3A.b		; E0 3A
	ora ($84.b,X)		; 01 84
	cmp $C0.b,S		; C3 C0
	sbc $D520.w		; ED 20 D5
	inc $1F1D.w		; EE 1D 1F
	stz $33.b,X		; 74 33
	stz $4ACC.w,X		; 9E CC 4A
	rol A		; 2A
	jmp $8493FF.l		; 5C FF 93 84
	trb $C201.w		; 1C 01 C2
	cmp $213B.w,Y		; D9 3B 21
	cmp ($E2.b),Y		; D1 E2
	sty $D4.b		; 84 D4
	jsr ($D05F.w,X)		; FC 5F D0
	sbc ($F2.b,S),Y		; F3 F2
	and $01.b,S		; 23 01
	sty $E0.b		; 84 E0
	rol $F104.w,X		; 3E 04 F1
	sbc ($3E.b)		; F2 3E
	ror $8405.w,X		; 7E 05 84
	sbc $06.b		; E5 06
	cmp $4A.b,X		; D5 4A
	and ($1D.b),Y		; 31 1D
	ror $8430.w		; 6E 30 84
	brk $0C.b		; 00 0C
	cop $F0.b		; 02 F0
	ora $2EB1C4.l,X		; 1F C4 B1 2E
	sty $01.b		; 84 01
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora $EFD3F1.l		; 0F F1 D3 EF
	phd		; 0B
	sty $6D.b		; 84 6D
	asl $FCF1.w		; 0E F1 FC
	ora ($0C.b,X)		; 01 0C
	tsb $94E0.w		; 0C E0 94
	sbc $100DF0.l,X		; FF F0 0D 10
	sbc ($FF.b)		; F2 FF
	bpl   1.b		; 10 01
	sty $03.b		; 84 03
.ACCU 8
	sep #$E1		; E2 E1
	brk $12.b		; 00 12
	cmp ($C1.b)		; D2 C1
	jsr $2384.w		; 20 84 23
	sbc ($1E.b,S),Y		; F3 1E
	bmi  46.b		; 30 2E
	jsl $742240.l		; 22 40 22 74
	ora $41.b		; 05 41
	and ($3D.b),Y		; 31 3D
	bit $E7DF.w,X		; 3C DF E7
	ldy $84.b		; A4 84
	asl $1AE0.w,X		; 1E E0 1A
	and ($CF.b,X)		; 21 CF
	bpl  31.b		; 10 1F
	and $1284.w,X		; 3D 84 12
	ora ($E3.b,S),Y		; 13 E3
	cop $2C.b		; 02 2C
	and $74DFD4.l		; 2F D4 DF 74
	cmp ($C3.b,S),Y		; D3 C3
	cpy $AFF0.w		; CC F0 AF
	cmp $FE3D.w,Y		; D9 3D FE
	sty $F2.b		; 84 F2
	bne  -1.b		; D0 FF
	ora ($FC.b,X)		; 01 FC
	and $74FFA3.l,X		; 3F A3 FF 74
	rol $1561.w,X		; 3E 61 15
	rep #$00		; C2 00
	ora ($D5.b,X)		; 01 D5
	jsr $4084.w		; 20 84 40
	cmp ($20.b),Y		; D1 20
	eor $2E00.w,X		; 5D 00 2E
	ora ($C4.b,S),Y		; 13 C4
	stz $CE.b,X		; 74 CE
	ora $1E11.w		; 0D 11 1E
	tsb $E6.b		; 04 E6
	sbc $32740C.l,X		; FF 0C 74 32
	eor ($F2.b,X)		; 41 F2
	bit $F2.b,X		; 34 F2
	inc $024E.w,X		; FE 4E 02
	sty $2F.b		; 84 2F
	ora $E2C431.l,X		; 1F 31 C4 E2
	bne -18.b		; D0 EE
	lsr $5174.w		; 4E 74 51
	sbc $11.b,S		; E3 11
	jmp.w [$EDCE]		; DC CE ED
	tas		; 1B
	rti		; 40

	stz $DD.b,X		; 74 DD
	inc $AFEF.w		; EE EF AF
	cpx $A111.w		; EC 11 A1
	xce		; FB
	stz $32.b,X		; 74 32
	cmp $D1.b,S		; C3 D1
	rol $EC00.w,X		; 3E 00 EC
	tsa		; 3B
	and ($84.b,X)		; 21 84
	and $210EF1.l		; 2F F1 0E 21
	tsb $F0.b		; 04 F0
	ora ($E2.b),Y		; 11 E2
	stz $20.b,X		; 74 20
	bvc  79.b		; 50 4F
	brk $03.b		; 00 03
	cmp $CF.b		; C5 CF
	ora ($84.b),Y		; 11 84
	sbc ($11.b)		; F2 11
	asl $0320.w,X		; 1E 20 03
	sbc $03.b,X		; F5 03
	bpl 116.b		; 10 74
	eor ($40.b,X)		; 41 40
	bpl   1.b		; 10 01
	beq -50.b		; F0 CE
	sbc $E5.b,S		; E3 E5
	stz $9F.b,X		; 74 9F
	ora $B1DD10.l		; 0F 10 DD B1
	rol $1DEF.w		; 2E EF 1D
	sei		; 78
	ora ($C6.b,X)		; 01 C6
	cpy #$FC.b		; C0 FC
	eor #$4E.b		; 49 4E
	ora ($91.b),Y		; 11 91
	stz $0F.b,X		; 74 0F
	cmp $AF.b		; C5 AF
	asl $C1F2.w,X		; 1E F2 C1
	rti		; 40

	ora ($74.b,X)		; 01 74
	brk $57.b		; 00 57
	cpx $1F.b		; E4 1F
	rol $34F4.w,X		; 3E F4 34
	and $74.b,S		; 23 74
	and ($D1.b),Y		; 31 D1
	and $60.b,S		; 23 60
	dec $03.b,X		; D6 03
	sbc ($2F.b),Y		; F1 2F
	stz $5C.b,X		; 74 5C
	and ($12.b,X)		; 21 12
	ora $D3.b		; 05 D3
	trb $0C.b		; 14 0C
	bit $74.b		; 24 74
	pea $020D.w		; F4 0D 02
	sbc $C2.b,S		; E3 C2
	beq -49.b		; F0 CF
	plx		; FA
	sty $00.b		; 84 00
	cmp $1E0F1D.l		; CF 1D 0F 1E
	cpx #$E0.b		; E0 E0
	sbc $EFE174.l		; EF 74 E1 EF
	ora $E3E2.w		; 0D E2 E3
	lda ($FE.b,X)		; A1 FE
	ora $032F74.l,X		; 1F 74 2F 03
	cmp ($5E.b),Y		; D1 5E
	pea $2E2F.w		; F4 2F 2E
	mvp $E2,$64		; 44 64 E2
	and ($74.b,X)		; 21 74
	bne  17.b		; D0 11
	ora $D0.b,X		; 15 D0
	ora ($74.b),Y		; 11 74
	cmp ($1F.b)		; D2 1F
	jsl $E231F1.l		; 22 F1 31 E2
	and ($03.b),Y		; 31 03
	stz $F3.b,X		; 74 F3
	rol $1D21.w,X		; 3E 21 1D
	inc $01F6.w		; EE F6 01
	trb $1F74.w		; 1C 74 1F
	cmp ($EF.b),Y		; D1 EF
	ora $D0FE.w		; 0D FE D0
	bit $74E2.w		; 2C E2 74
	beq -63.b		; F0 C1
	asl $2E1A.w		; 0E 1A 2E
	and $0100.w		; 2D 00 01
	stz $F0.b,X		; 74 F0
	and ($40.b,X)		; 21 40
	sbc $C2.b,S		; E3 C2
	inc $330D.w,X		; FE 0D 33
	stz $F1.b,X		; 74 F1
	inc $234D.w,X		; FE 4D 23
	cmp $4E.b		; C5 4E
	sbc $F0742E.l,X		; FF 2E 74 F0
	eor ($F1.b),Y		; 51 F1
	brk $13.b		; 00 13
	inc $102E.w,X		; FE 2E 10
	stz $A4.b		; 64 A4
	beq -20.b		; F0 EC
	ora $112B.w		; 0D 2B 11
	ldx $643E.w		; AE 3E 64
	brk $B1.b		; 00 B1
	eor $A36F.w,X		; 5D 6F A3
	ora $2417.w,Y		; 19 17 24
	stz $F1.b,X		; 74 F1
	bne  45.b		; D0 2D
	eor ($3D.b,X)		; 41 3D
	and $C1.b,S		; 23 C1
	inc $CD70.w,X		; FE 70 CD
	and ($14.b,X)		; 21 14
	and ($10.b,X)		; 21 10
	ora ($01.b)		; 12 01
	bpl 100.b		; 10 64
	asl $0230.w		; 0E 30 02
	jsr $F5FE.w		; 20 FE F5
	sbc $D4.b,X		; F5 D4
	stz $21.b,X		; 74 21
	bpl   0.b		; 10 00
	ora $4FE2FF.l		; 0F FF E2 4F
	ora $1CEF74.l		; 0F 74 EF 1C
	ora $001C.w		; 0D 1C 00
	ora ($01.b,X)		; 01 01
	sbc $2DFB64.l,X		; FF 64 FB 2D
	cpx #$E4.b		; E0 E4
	bne 109.b		; D0 6D
	brk $D2.b		; 00 D2
	stz $20.b,X		; 74 20
	ora ($00.b,X)		; 01 00
	sbc ($13.b),Y		; F1 13
	cmp $641EEE.l		; CF EE 1E 64
	rol $E52F.w,X		; 3E 2F E5
	bcs  78.b		; B0 4E
	and $74C115.l,X		; 3F 15 C1 74
	ora ($E3.b),Y		; 11 E3
	jsr $2012.w		; 20 12 20
	ora ($4E.b,X)		; 01 4E
	rol $F274.w,X		; 3E 74 F2
	sbc ($F3.b,X)		; E1 F3
	ora $10E0E5.l		; 0F E5 E0 10
	cpx #$74.b		; E0 74
	cop $DF.b		; 02 DF
	pea $1EE0.w		; F4 E0 1E
	cop $EF.b		; 02 EF
	sbc ($74.b),Y		; F1 74
	sbc ($E0.b,X)		; E1 E0
	phd		; 0B
	asl $F10F.w,X		; 1E 0F F1
	bpl  32.b		; 10 20
	stz $FF.b		; 64 FF
	lsr $D50E.w		; 4E 0E D5
	beq  28.b		; F0 1C
	ora ($C3.b),Y		; 11 C3
	stz $F0.b,X		; 74 F0
	ora $CFE1F0.l,X		; 1F F0 E1 CF
	and $640E2F.l		; 2F 2F 0E 64
	bvc  16.b		; 50 10
	cmp $F1.b,S		; C3 F1
	beq  43.b		; F0 2B
	rts		; 60

	ora ($68.b)		; 12 68
	ora $E020.w,X		; 1D 20 E0
	rol $3FF2.w		; 2E F2 3F
	ora $C0.b		; 05 C0
	stz $D1.b		; 64 D1
	ora $056E.w		; 0D 6E 05
	tsb $BF.b		; 04 BF
	and $6416.w		; 2D 16 64
	pea $12E3.w		; F4 E3 12
	eor $1094FF.l		; 4F FF 94 10
	asl $ED54.w		; 0E 54 ED
	adc $250B.w		; 6D 0B 25
	lda $5F.b,X		; B5 5F
	trb $6494.w		; 1C 94 64
	sbc ($10.b),Y		; F1 10
	brk $EC.b		; 00 EC
	asl $1DD0.w,X		; 1E D0 1D
	inc $E168.w		; EE 68 E1
	ora $1E4E1B.l		; 0F 1B 4E 1E
	cmp ($FE.b),Y		; D1 FE
	and ($54.b,X)		; 21 54
	jmp $CF53.w		; 4C 53 CF
	phy		; 5A
	sbc $4257.w,X		; FD 57 42
	ora ($64.b),Y		; 11 64
	eor ($0F.b,S),Y		; 53 0F
	cop $D3.b		; 02 D3
	sbc $02.b,X		; F5 02
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	stz $05.b		; 64 05
	inc $3F2D.w,X		; FE 2D 3F
	ora $F62633.l,X		; 1F 33 26 F6
	stz $20.b		; 64 20
	sbc $41.b,X		; F5 41
	ora $E2.b,X		; 15 E2
	ora $64FF31.l,X		; 1F 31 FF 64
	jmp $2D2FFE.l		; 5C FE 2F 2D
	sbc $CD.b,S		; E3 CD
	inc A		; 1A
	and ($64.b,X)		; 21 64
	tsb $D11F.w		; 0C 1F D1
	cmp $FAA1.w		; CD A1 FA
	jsr ($6400.w,X)		; FC 00 64
	dec $C31C.w		; CE 1C C3
	lda $3FED.w,X		; BD ED 3F
	dec $A2.b,X		; D6 A2
	stz $D0.b		; 64 D0
	rti		; 40

	bpl  14.b		; 10 0E
	jmp $3D0332.l		; 5C 32 03 3D
	stz $1E.b		; 64 1E
	jsl $0E122D.l		; 22 2D 12 0E
	cop $01.b		; 02 01
	bit $64.b		; 24 64
	sbc ($3F.b,S),Y		; F3 3F
	and ($10.b,S),Y		; 33 10
	rts		; 60

	jsr $3320.w		; 20 20 33
	stz $32.b		; 64 32
	sep #$00		; E2 00
	and ($0E.b)		; 32 0E
	eor ($02.b)		; 52 02
	inc $3154.w,X		; FE 54 31
	sbc $EE1B2D.l		; EF 2D 1B EE
	cmp $DBF0.w		; CD F0 DB
	stz $1D.b		; 64 1D
	inc $FDBF.w		; EE BF FD
	phd		; 0B
	cpx #$1C.b		; E0 1C
	bpl  84.b		; 10 54
	ldy $AC0A.w		; AC 0A AC
	inc $D0DE.w,X		; FE DE D0
	jsr ($545C.w,X)		; FC 5C 54
	eor ($A1.b)		; 52 A1
	eor $E025.w,X		; 5D 25 E0
	bvc  15.b		; 50 0F
	ora ($64.b),Y		; 11 64
	ora $1E4C30.l,X		; 1F 30 4C 1E
	jsr $02E4.w		; 20 E4 02
	jsr $0254.w		; 20 54 02
	trb $35.b		; 14 35
	and ($40.b,X)		; 21 40
	eor ($6E.b)		; 52 6E
	bmi  88.b		; 30 58
	and $2D.b,X		; 35 2D
	sbc ($04.b)		; F2 04
	beq -26.b		; F0 E6
	sbc $3E543F.l,X		; FF 3F 54 3E
.ACCU 8
.INDEX 8
	sep #$BE		; E2 BE
	ora $FF1FC0.l,X		; 1F C0 1F FF
	phd		; 0B
	mvn $1A,$E9		; 54 E9 1A
	ora $1EEDB0.l		; 0F B0 ED 1E
	xba		; EB
	and $1054.w,X		; 3D 54 10
	lda ($DC.b,S),Y		; B3 DC
	eor $D2D1A2.l,X		; 5F A2 D1 D2
	sbc $54.b,S		; E3 54
	dec $94D2.w,X		; DE D2 94
	cpx #$0E.b		; E0 0E
	asl $6ADF.w,X		; 1E DF 6A
	mvn $F1,$31		; 54 31 F1
	sbc $A4.b		; E5 A4
	and ($30.b,X)		; 21 30
	sbc ($E3.b,X)		; E1 E3
	pla		; 68
	asl $D012.w		; 0E 12 D0
	ora ($2E.b),Y		; 11 2E
	ora ($D1.b),Y		; 11 D1
	jmp $5E2F54.l		; 5C 54 2F 5E
	lsr $B514.w		; 4E 14 B5
	tda		; 7B
	rti		; 40

	ora $2E54.w		; 0D 54 2E
	lsr $2F40.w		; 4E 40 2F
	ora $23033D.l,X		; 1F 3D 03 23
	mvn $F0,$F0		; 54 F0 F0
	ora $E4F0.w		; 0D F0 E4
	lda $58CDF3.l,X		; BF F3 CD 58
	and $012E.w		; 2D 2E 01
	ldy $C6.b,X		; B4 C6
	tsx		; BA
	rts		; 60

	ora $1DDF54.l		; 0F 54 DF 1D
	cmp $FED21E.l,X		; DF 1E D2 FE
	bit $544B.w,X		; 3C 4B 54
	brk $20.b		; 00 20
	rol $A015.w		; 2E 15 A0
	cmp ($ED.b)		; D2 ED
	tsb $54.b		; 04 54
	sbc ($3D.b)		; F2 3D
	and ($33.b,X)		; 21 33
	bpl  32.b		; 10 20
	and ($F6.b,S),Y		; 33 F6
	mvn $6F,$F2		; 54 F2 6F
	ora $25.b,S		; 03 25
	cmp [$01.b],Y		; D7 01
	ora ($1F.b,X)		; 01 1F
	mvn $D5,$03		; 54 03 D5
	cpx #$01.b		; E0 01
	rol $4D30.w,X		; 3E 30 4D
	cpx #$44.b		; E0 44
	and ($E2.b,S),Y		; 33 E2
	tsb $D0FC.w		; 0C FC D0
	sbc $540D3B.l,X		; FF 3B 0D 54
	jsr ($D1FF.w,X)		; FC FF D1
	sbc $E11F.w		; ED 1F E1
	lda ($0B.b),Y		; B1 0B
	mvn $EF,$1E		; 54 1E EF
	sbc $0EFF.w,X		; FD FF 0E
	phy		; 5A
	jsl $0E540D.l		; 22 0D 54 0E
	beq  31.b		; F0 1F
	and $313D0E.l		; 2F 0E 3D 31
	pea $0254.w		; F4 54 02
	ora ($F0.b)		; 12 F0
	and ($00.b,S),Y		; 33 00
	jsr $423F.w		; 20 3F 42
	mvn $51,$FE		; 54 FE 51
	jsl $001FF3.l		; 22 F3 1F 00
	inc $541F.w,X		; FE 1F 54
	pld		; 2B
	rol $0DE1.w		; 2E E1 0D
	sbc ($EF.b,S),Y		; F3 EF
	beq -17.b		; F0 EF
	mvp $21,$2E		; 44 2E 21
	ldx $ED.b		; A6 ED
	adc $A695E1.l,X		; 7F E1 95 A6
	mvp $E3,$E3		; 44 E3 E3
	lda ($F1.b,S),Y		; B3 F1
	bit $1D.b		; 24 1D
	eor $44D4.w,X		; 5D D4 44
	sbc ($F2.b,S),Y		; F3 F2
	asl $3C02.w,X		; 1E 02 3C
	eor ($21.b)		; 52 21
	tsb $44.b		; 04 44
	cpy $2E.b		; C4 2E
	asl $2FED.w		; 0E ED 2F
	ora ($EB.b,S),Y		; 13 EB
	bne  84.b		; D0 54
	cmp $0E0F1F.l,X		; DF 1F 0F 0E
	beq -30.b		; F0 E2
	sbc ($E0.b),Y		; F1 E0
	mvn $FF,$00		; 54 00 FF
	asl $F04F.w,X		; 1E 4F F0
.INDEX 16
	rep #$1E		; C2 1E
	ora $3334.w		; 0D 34 33
	cmp ($AB.b,S),Y		; D3 AB
	ora $F0ED.w		; 0D ED F0
	inc $4841.w,X		; FE 41 48
	beq  31.b		; F0 1F
	ora $B324.w,X		; 1D 24 B3
	lsr A		; 4A
	tsb $FF.b		; 04 FF
	mvn $12,$01		; 54 01 12
	and ($42.b),Y		; 31 42
	sbc $20.b,S		; E3 20
	bpl  48.b		; 10 30
	mvp $E5,$F5		; 44 F5 E5
	cpx #$F130.w		; E0 30 F1
	sta ($FD.b)		; 92 FD
	sbc ($44.b),Y		; F1 44
	rol A		; 2A
	sbc $1CEBA1.l,X		; FF A1 EB 1C
	asl $0E3D.w		; 0E 3D 0E
	mvp $FC,$CD		; 44 CD FC
	tsb $043C.w		; 0C 3C 04
	sbc ($FB.b,X)		; E1 FB
	trb $E044.w		; 1C 44 E0
	dec $1FDD.w,X		; DE DD 1F
	tsb $E100.w		; 0C 00 E1
	phd		; 0B
	mvp $01,$0E		; 44 0E 01
	rti		; 40

	ora $E0.b,S		; 03 E0
	eor ($EF.b,X)		; 41 EF
	jsr $3044.w		; 20 44 30
	rti		; 40

	and $03.b		; 25 03
	rti		; 40

	jsr $1134.w		; 20 34 11
	bit $61.b,X		; 34 61
	adc ($EF.b,X)		; 61 EF
	.db $42, $6F		; 42 6F
	jsl $44316F.l		; 22 6F 31 44
	jsr $FF0E.w		; 20 0E FF
	and $2312.w		; 2D 12 23
	asl $442C.w		; 0E 2C 44
	and ($E0.b)		; 32 E0
	bit $A2F1.w		; 2C F1 A2
	cmp $34E0FF.l,X		; DF FF E0 34
	stz $BDFF.w,X		; 9E FF BD
	ora $ACC0.w,X		; 1D C0 AC
	sbc $442E.w,X		; FD 2E 44
	bpl  -2.b		; 10 FE
	cpx #$0F2E.w		; E0 2E 0F
	trb $E0D3.w		; 1C D3 E0
	bit $3E.b,X		; 34 3E
	and $300F.w,X		; 3D 0F 30
	beq  61.b		; F0 3D
	inc $3424.w,X		; FE 24 34
	sbc ($F0.b,X)		; E1 F0
	bmi  67.b		; 30 43
	sbc ($53.b,X)		; E1 53
	ora $22.b		; 05 22
	bit $23.b,X		; 34 23
	cmp $61.b		; C5 61
	.db $42, $04		; 42 04
	lda ($23.b,S),Y		; B3 23
	cop $24.b		; 02 24
	sbc ($0E.b,X)		; E1 0E
	lsr $00.b,X		; 56 00
	and $125A.w		; 2D 5A 12
	and $3228.w		; 2D 28 32
	sbc $11.b,S		; E3 11
	sbc $1EC430.l,X		; FF 30 C4 1E
	inc MPYL.w		; EE 34 21
	sbc $0211.w,X		; FD 11 02
	bne  77.b		; D0 4D
	beq -35.b		; F0 DD
	bit $EF.b,X		; 34 EF
	cmp ($CF.b),Y		; D1 CF
	jmp.w [$FE0D]		; DC 0D FE
	cmp ($0C.b,X)		; C1 0C
	bit $C3.b,X		; 34 C3
	asl $2F2B.w		; 0E 2B 2F
	cmp ($DF.b)		; D2 DF
	ora $3411.w,X		; 1D 11 34
	bpl -16.b		; 10 F0
	ora ($1E.b),Y		; 11 1E
	eor ($03.b,X)		; 41 03
	brk $04.b		; 00 04
	bit $0F.b,X		; 34 0F
	and $113020.l		; 2F 20 30 11
	jsr $224C.w		; 20 4C 22
	bit $31.b,X		; 34 31
	ora ($03.b,X)		; 01 03
	sbc ($34.b)		; F2 34
	ora ($12.b)		; 12 12
	bit $4034.w,X		; 3C 34 40
	ora ($D0.b,S),Y		; 13 D0
	beq  -1.b		; F0 FF
	and $34FF22.l		; 2F 22 FF 34
	sbc $0FD10E.l		; EF 0E D1 0F
	sbc $D2E2.w,X		; FD E2 D2
	asl $0034.w		; 0E 34 00
	beq -16.b		; F0 F0
	sbc ($FE.b,X)		; E1 FE
	trb $FFF1.w		; 1C F1 FF
	bit $1C.b,X		; 34 1C
	brk $DF.b		; 00 DF
	sbc $F0001D.l,X		; FF 1D 00 F0
	ora $1D0014.l		; 0F 14 00 1D
	cop $AF.b		; 02 AF
	bit $E4.b,X		; 34 E4
	rtl		; 6B

	and ($24.b,S),Y		; 33 24
	ora $11.b,S		; 03 11
	ora ($23.b,S),Y		; 13 23
	sbc ($40.b)		; F2 40
	jsl $422401.l		; 22 01 24 42
	mvn $31,$13		; 54 13 31
	ora ($00.b,X)		; 01 00
	and $E014E2.l		; 2F E2 14 E0
	bmi -17.b		; 30 EF
	tsb $B220.w		; 0C 20 B2
	cmp ($2F.b)		; D2 2F
	trb $1E.b		; 14 1E
	and $EF04.w,X		; 3D 04 EF
	ora $0E0EFA.l		; 0F FA 0E 0E
	bit $F1.b		; 24 F1
	bpl -16.b		; 10 F0
	inc $0EDE.w,X		; FE DE 0E
	beq  13.b		; F0 0D
	bit $0C.b		; 24 0C
	sbc ($EF.b)		; F2 EF
	asl $EF00.w,X		; 1E 00 EF
	bpl  32.b		; 10 20
	trb $4B.b		; 14 4B
	brk $43.b		; 00 43
	cop $1F.b		; 02 1F
	lsr $0123.w		; 4E 23 01
	trb $61.b		; 14 61
	sbc $10.b,S		; E3 10
	bmi -29.b		; 30 E3
	bne  79.b		; D0 4F
	ora ($04.b,S),Y		; 13 04
	ora $30.b,S		; 03 30
	lda ($0F.b)		; B2 0F
	cpx $402C.w		; EC 2C 40
	ora $04.b,S		; 03 04
	ora ($10.b,X)		; 01 10
	cop $F0.b		; 02 F0
	and $E0D000.l		; 2F 00 D0 E0
	trb $01.b		; 14 01
	brk $0F.b		; 00 0F
	rti		; 40

	ora $C0.b,S		; 03 C0
	asl $140F.w		; 0E 0F 14
	ora $0FE0F0.l		; 0F F0 E0 0F
	brk $C1.b		; 00 C1
	brk $00.b		; 00 00
	tsb $A3.b		; 04 A3
	brk $31.b		; 00 31
	jsr $0421.w		; 20 21 04
	ora $15046C.l		; 0F 6C 04 15
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $F2.b		; 02 F2
	and $2F04.w		; 2D 04 2F
	and $00F0E0.l,X		; 3F E0 F0 00
	ora $040F0F.l		; 0F 0F 0F 04
	cpx $FEE0.w		; EC E0 FE
	beq   0.b		; F0 00
	sbc ($0F.b),Y		; F1 0F
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$0010.w		; E0 10 00
	ora ($00.b)		; 12 00
	cpx #$0F00.w		; E0 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	ora ($21.b,X)		; 01 21
	and $22.b,S		; 23 22
	jsl $334323.l		; 22 23 43 33
	tsb $02.b		; 04 02
	sbc ($0E.b),Y		; F1 0E
	ora ($01.b,X)		; 01 01
	ora $000020.l		; 0F 20 00 00
	and ($21.b),Y		; 31 21
	ora ($11.b)		; 12 11
	ora ($00.b,X)		; 01 00
	ora $001022.l		; 0F 22 10 00
	brk $11.b		; 00 11
	brk $0F.b		; 00 0F
	sbc $10DEFE.l,X		; FF FE DE 10
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $0FF0FF.l,X		; FF FF F0 0F
	brk $FE.b		; 00 FE
	inc $00F0.w		; EE F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($11.b),Y		; 11 11
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($10.b),Y		; 11 10
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
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($01.b,X)		; 01 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($09.b)		; B2 09
	ldx $0FAC.w,Y		; BE AC 0F
	ora ($12.b,X)		; 01 12
	ora $2EB226.l,X		; 1F 26 B2 2E
	sbc $EDEE.w		; ED EE ED
	sbc ($24.b,X)		; E1 24
	asl A		; 0A
	ldy $54B6.w		; AC B6 54
	ora $2C.b,S		; 03 2C
	dec OBJSEL.w		; CE 01 21
	ora $03BAED.l,X		; 1F ED BA 03
	ora ($2E.b,X)		; 01 2E
	cmp ($2F.b,X)		; C1 2F
	sbc ($3D.b,S),Y		; F3 3D
.ACCU 8
	sep #$A6		; E2 A6
	lda $042A.w,X		; BD 2A 04
	bpl -80.b		; 10 B0
	tsb $F1BE.w		; 0C BE F1
	ldx $32.b,Y		; B6 32
	bpl -29.b		; 10 E3
	sbc $2040.w,X		; FD 40 20
	sbc ($0F.b)		; F2 0F
	ldx $E0.b,Y		; B6 E0
	beq  47.b		; F0 2F
	ora $2FE4DE.l		; 0F DE E4 2F
	ora $22DFB6.l,X		; 1F B6 DF 22
	and ($02.b,X)		; 21 02
	ora ($1A.b,S),Y		; 13 1A
	stz $BA53.w,X		; 9E 53 BA
	cmp ($DE.b,S),Y		; D3 DE
	sbc ($32.b,X)		; E1 32
	bit $44ED.w		; 2C ED 44
	cmp ($B6.b)		; D2 B6
	and $BF4C12.l		; 2F 12 4C BF
	ora ($E1.b),Y		; 11 E1
	and ($0C.b,X)		; 21 0C
	ldx $C0.b,Y		; B6 C0
	ora ($00.b)		; 12 00
	beq  34.b		; F0 22
	ora $41E3.w,X		; 1D E3 41
	ldx $0F.b		; A6 0F
	cmp $2A24FB.l,X		; DF FB 24 2A
	lda $B614E2.l,X		; BF E2 14 B6
	and ($FD.b),Y		; 31 FD
	cpx #$0400.w		; E0 00 04
	and ($1D.b,X)		; 21 1D
	dec $13BA.w,X		; DE BA 13
	beq  45.b		; F0 2D
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	jsr ($3D12.w,X)		; FC 12 3D
	dec $FF.b		; C6 FF
	ora ($01.b,X)		; 01 01
	ora ($0C.b,X)		; 01 0C
	sbc ($13.b,S),Y		; F3 13
	ora $BD1BB2.l,X		; 1F B2 1B BD
	beq   1.b		; F0 01
	ora ($00.b),Y		; 11 00
	and $1D.b,S		; 23 1D
	ldx $12.b,Y		; B6 12
	ora $21D2.w		; 0D D2 21
	ora $B12D02.l,X		; 1F 02 2D B1
	tsx		; BA
	bit $0FC5.w,X		; 3C C5 0F
	eor $22D0.w		; 4D D0 22
	sbc ($C0.b),Y		; F1 C0
	ldx $E1.b,Y		; B6 E1
	asl $E32E.w,X		; 1E 2E E3
	and ($00.b)		; 32 00
	cpy $A642.w		; CC 42 A6
	and ($BF.b)		; 32 BF
	tsb $E1F1.w		; 0C F1 E1
	.db $62, $4E, $B5		; 62 4E B5
	ldx $EE.b,Y		; B6 EE
	and ($FF.b,X)		; 21 FF
	asl $02EE.w		; 0E EE 02
	stz $CC.b		; 64 CC
	ldx $D0.b,Y		; B6 D0
	eor ($2C.b,S),Y		; 53 2C
	pei ($DB.b)		; D4 DB
	cop $10.b		; 02 10
	bit $B6.b		; 24 B6
	pld		; 2B
	bcs  54.b		; B0 36
	tas		; 1B
	cmp $11142F.l		; CF 2F 14 11
.ACCU 16
	rep #$21		; C2 21
	ora $EF0FFF.l		; 0F FF 0F EF
	ora $3F.b,S		; 03 3F
	cmp $E12DCA.l,X		; DF CA 2D E1
	bpl  -1.b		; 10 FF
	ora ($EE.b,S),Y		; 13 EE
	brk $3F.b		; 00 3F
	ldx $C0.b,Y		; B6 C0
	bit $20.b		; 24 20
	trb $44B0.w		; 1C B0 44
	asl $B6C2.w,X		; 1E C2 B6
	ora $BE4F11.l,X		; 1F 11 4F BE
	sbc ($21.b)		; F2 21
	sbc $2DA61E.l,X		; FF 1E A6 2D
	sbc $1D.b,X		; F5 1D
	lda $62.b,X		; B5 62
	xba		; EB
	lda ($62.b),Y		; B1 62
	tsx		; BA
	cpx #$E030.w		; E0 30 E0
	sbc $2F34.w		; ED 34 2F
	cpx $B6E5.w		; EC E5 B6
	sbc ($2E.b)		; F2 2E
	brk $24.b		; 00 24
	jsl $D3CE0D.l		; 22 0D CE D3
	ldx $60.b,Y		; B6 60
	phd		; 0B
	lda ($24.b)		; B2 24
	and $15DC1F.l		; 2F 1F DC 15
	lda ($30.b)		; B2 30
	sbc ($11.b,S),Y		; F3 11
	tsb $F3EF.w		; 0C EF F3
	and ($0E.b)		; 32 0E
	lda ($D0.b)		; B2 D0
	and ($0E.b),Y		; 31 0E
	cmp $60F6.w		; CD F6 60
	cmp $B614.w,X		; DD 14 B6
	sbc $50C2.w		; ED C2 50
	bne  -2.b		; D0 FE
	ora $4314.w,X		; 1D 14 43
	ldx $DF.b		; A6 DF
	lda $013E.w,X		; BD 3E 01
	stp		; DB
	.db $62, $CF, $BD		; 62 CF BD
	ldx $F3.b,Y		; B6 F3
	and $CB3421.l,X		; 3F 21 34 CB
.INDEX 8
	sep #$53		; E2 53
	jmp.w [$00C6]		; DC C6 00
	brk $11.b		; 00 11
	beq  -4.b		; F0 FC
	sbc ($33.b),Y		; F1 33
	inc $11B6.w,X		; FE B6 11
	.db $42, $11		; 42 11
	cmp $C32D.w		; CD 2D C3
	ora ($21.b),Y		; 11 21
	tsx		; BA
	bit $33B2.w		; 2C B2 33
	jsr $0ECE.w		; 20 CE 0E
	and ($02.b)		; 32 02
	tsx		; BA
	sbc $DC2000.l		; EF 00 20 DC
	and $FF.b,X		; 35 FF
	bne  35.b		; D0 23
	ldx $20.b,Y		; B6 20
	dec $D14D.w		; CE 4D D1
	and ($DF.b,S),Y		; 33 DF
	and ($1D.b,S),Y		; 33 1D
	tsx		; BA
	cop $42.b		; 02 42
	cpy $C233.w		; CC 33 C2
	sbc $EE50.w		; ED 50 EE
	dec $F1.b		; C6 F1
	.db $42, $EE		; 42 EE
	ora ($1F.b,X)		; 01 1F
	brk $22.b		; 00 22
	cmp $4FF2B2.l		; CF B2 F2 4F
	ldy $5215.w,X		; BC 15 52
	cpy $32E0.w		; CC E0 32
	tsx		; BA
	sbc $D00422.l		; EF 22 04 D0
	xce		; FB
	rti		; 40

	bit $BE.b		; 24 BE
	ldx $EF.b,Y		; B6 EF
	cop $AB.b		; 02 AB
	mvn $00,$4F		; 54 4F 00
	ldy #$FF.b		; A0 FF
	ldx $40.b,Y		; B6 40
	inc $50E5.w		; EE E5 50
	sbc $CC4CE4.l		; EF E4 4C CC
	lda ($BF.b)		; B2 BF
	rol $6E.b,X		; 36 6E
	stz $3F13.w,X		; 9E 13 3F
	sbc $11CABB.l,X		; FF BB CA 11
	sbc $F10F00.l,X		; FF 00 0F F1
	.db $42, $BE		; 42 BE
	cop $C2.b		; 02 C2
	sbc $01FE00.l,X		; FF 00 FE 01
	brk $DC.b		; 00 DC
	ora $30.b,S		; 03 30
	tsx		; BA
	ora $4F.b		; 05 4F
	bne   1.b		; D0 01
	bit $211F.w		; 2C 1F 21
	sbc $FD12BA.l,X		; FF BA 12 FD
	cpy #$55.b		; C0 55
	beq -21.b		; F0 EB
	ora $10.b,S		; 03 10
	dex		; CA
	ora ($FD.b),Y		; 11 FD
	sbc ($2E.b)		; F2 2E
	cop $01.b		; 02 01
	inc $B2D0.w,X		; FE D0 B2
	lda ($52.b,X)		; A1 52
	cmp $3104.w,X		; DD 04 31
	bpl   0.b		; 10 00
	ora ($BA.b,X)		; 01 BA
	ora ($AD.b,X)		; 01 AD
	adc $FE.b		; 65 FE
	sbc $EE.b,S		; E3 EE
	ora $0ABA25.l		; 0F 25 BA 0A
	sbc ($2E.b),Y		; F1 2E
	and ($C4.b,X)		; 21 C4
	and $BA25BB.l,X		; 3F BB 25 BA
	eor $BFF5.w		; 4D F5 BF
	tsb $F131.w		; 0C 31 F1
	and $00B6E2.l,X		; 3F E2 B6 00
	sbc $E11D53.l		; EF 53 1D E1
	cpx #$DC.b		; E0 DC
	ror $C6.b		; 66 C6
	inc $24EE.w,X		; FE EE 24
	jsr $F1EE.w		; 20 EE F1
	rol $B6E0.w		; 2E E0 B6
	and $00.b,S		; 23 00
	sbc ($0E.b,X)		; E1 0E
	ora ($ED.b),Y		; 11 ED
	mvp $C2,$33		; 44 33 C2
	jsr $F1FD.w		; 20 FD F1
	and $0D.b,S		; 23 0D
	cmp $1D24.w		; CD 24 1D
	ldx $F3.b,Y		; B6 F3
	.db $62, $D1, $F1		; 62 D1 F1
	and $02EFFE.l		; 2F FE EF 02
	tsx		; BA
	and $4B06BC.l		; 2F BC 06 4B
	rti		; 40

	sbc ($D0.b,X)		; E1 D0
	ora $2DF4BA.l		; 0F BA F4 2D
	ora $F102.w,X		; 1D 02 F1
	tsb $0B.b		; 04 0B
	tsb $E0C6.w		; 0C C6 E0
	jsl $FC10F0.l		; 22 F0 10 FC
	sbc $41.b,S		; E3 41
	sbc $F2FFB6.l		; EF B6 FF F2
	bit $0C.b,X		; 34 0C
	bmi -96.b		; 30 A0
	bpl  85.b		; 10 55
	dec $FC.b		; C6 FC
	lda ($40.b),Y		; B1 40
	cpx #$00.b		; E0 00
	and ($00.b,X)		; 21 00
	asl $E0C2.w		; 0E C2 E0
	bit $3F.b		; 24 3F
	lda $0D33.w,X		; BD 33 0D
	cmp $DFBAFF.l,X		; DF FF BA DF
	ror $C9.b		; 66 C9
	cpy $43.b		; C4 43
	and $14A4.w,Y		; 39 A4 14
	ldx $EA.b,Y		; B6 EA
	trb $52.b		; 14 52
	sbc $FE03.w,X		; FD 03 FE
	cpx #$1E.b		; E0 1E
	dec $F0.b		; C6 F0
	bit $FC.b,X		; 34 FC
	cmp $010F42.l		; CF 42 0F 01
	beq -74.b		; F0 B6
	bit $1C.b		; 24 1C
	cmp ($2D.b,X)		; C1 2D
	cpx #$25.b		; E0 25
	ora $B6CE.w		; 0D CE B6
	bit $10.b		; 24 10
	and $CE13DD.l		; 2F DD 13 CE
	bit $60.b,X		; 34 60
	tsx		; BA
	lda ($30.b,S),Y		; B3 30
	sbc $CF1C23.l		; EF 23 1C CF
	and ($E3.b,S),Y		; 33 E3
	tsx		; BA
	bpl -35.b		; 10 DD
	bmi -47.b		; 30 D1
	and $EC.b,X		; 35 EC
	dec $B614.w,X		; DE 14 B6
	jsl $D3CB40.l		; 22 40 CB D3
	adc $0E.b		; 65 0E
	xba		; EB
	jsl $E100CA.l		; 22 CA 00 E1
	asl $2DF2.w,X		; 1E F2 2D
	beq  53.b		; F0 35
	xba		; EB
	dec $CC.b		; C6 CC
	cop $1F.b		; 02 1F
	sbc ($42.b,X)		; E1 42
	inc $0EEF.w		; EE EF 0E
	ldx $15.b,Y		; B6 15
	bit $ED.b,X		; 34 ED
	cmp $EC0F54.l,X		; DF 54 0F EC
	and $B6.b,S		; 23 B6
	sbc ($1B.b,S),Y		; F3 1B
	cpy #$EE.b		; C0 EE
	and $5D.b,X		; 35 5D
	pei ($1E.b)		; D4 1E
	lda ($DB.b)		; B2 DB
	trb $42.b		; 14 42
	trb $42.b		; 14 42
	tsb $EEBE.w		; 0C BE EE
	ldx $3E.b,Y		; B6 3E
	trb $0E.b		; 14 0E
.INDEX 8
	sep #$1F		; E2 1F
	sbc $40F2.w		; ED F2 40
	tsx		; BA
	beq -45.b		; F0 D3
	rti		; 40

	dec $1F30.w		; CE 30 1F
	cop $D0.b		; 02 D0
	ldx $23.b,Y		; B6 23
	inc A		; 1A
	dec $30D4.w,X		; DE D4 30
	sbc $BAFC21.l		; EF 21 FC BA
	eor $BD.b,X		; 55 BD
	ora ($20.b,X)		; 01 20
	brk $D0.b		; 00 D0
	jmp $BAD5.w		; 4C D5 BA
	eor $DB.b,S		; 43 DB
	cmp $EE75.w		; CD 75 EE
	sbc ($5F.b,X)		; E1 5F
	cpy #$B2.b		; C0 B2
	xba		; EB
	cpx #$44.b		; E0 44
	jmp.w [$00EE]		; DC EE 00
	beq  -4.b		; F0 FC
	tsx		; BA
	eor $BB2FE4.l,X		; 5F E4 2F BB
	tsb $34.b		; 04 34
	tsb $CAD0.w		; 0C D0 CA
	bpl -30.b		; 10 E2
	bpl  45.b		; 10 2D
	cmp ($F1.b)		; D2 F1
	eor ($CD.b),Y		; 51 CD
	rep #$0D		; C2 0D
	bne  12.b		; D0 0C
	bcs  32.b		; B0 20
	sbc $3203.w		; ED 03 32
	tsx		; BA
	ora $EF.b,S		; 03 EF
	ora $2F.b,S		; 03 2F
	inc $D31E.w,X		; FE 1E D3
	and $C6.b,X		; 35 C6
	and $1F32CE.l,X		; 3F CE 32 1F
	sbc ($24.b,X)		; E1 24
	tas		; 1B
	ldx $5FCA.w,Y		; BE CA 5F
	cmp ($30.b,X)		; C1 30
	dec $4102.w,X		; DE 02 41
	cmp $B6E1.w,X		; DD E1 B6
	ora [$3D.b],Y		; 17 3D
	ora ($CE.b,X)		; 01 CE
	and ($DD.b),Y		; 31 DD
	eor [$1D.b],Y		; 57 1D
.ACCU 16
	rep #$EC		; C2 EC
	sbc ($31.b)		; F2 31
	brk $ED.b		; 00 ED
	cmp $B6FD22.l,X		; DF 22 FD B6
	eor $31.b		; 45 31
	jmp.w [$11D0]		; DC D0 11
	ora ($1F.b),Y		; 11 1F
	bit $B6.b		; 24 B6
	sbc #$61C4.w		; E9 C4 61
	tsb $549E.w		; 0C 9E 54
	ora $B6E4.w		; 0D E4 B6
	ora ($3E.b),Y		; 11 3E
	ora ($E0.b)		; 12 E0
	sbc $F1CD0F.l,X		; FF 0F CD F1
	dec $32.b		; C6 32
	ora $F010D0.l		; 0F D0 10 F0
	mvp $C0,$FC		; 44 FC C0
.INDEX 16
	rep #$14		; C2 14
	and ($11.b)		; 32 11
	ora $DEDD.w		; 0D DD DE
	sbc $C0B623.l		; EF 23 B6 C0
	and ($FB.b),Y		; 31 FB
	and $C1.b,S		; 23 C1
	xba		; EB
	ora $24C225.l		; 0F 25 C2 24
	and $3103DE.l,X		; 3F DE 03 31
	ora ($21.b),Y		; 11 21
	cpx #$CBBA.w		; E0 BA CB
	mvn $1F,$EC		; 54 EC 1F
	ora $2C.b,X		; 15 2C
	lda ($E0.b,S),Y		; B3 E0
	tsx		; BA
	asl $E152.w,X		; 1E 52 E1
	xba		; EB
	pea $FB23.w		; F4 23 FB
	bit $C2.b		; 24 C2
	and ($DD.b),Y		; 31 DD
	cop $21.b		; 02 21
	brk $11.b		; 00 11
	sbc $B2D0.w,X		; FD D0 B2
	and $6F.b,X		; 35 6F
	ldy $2FF2.w		; AC F2 2F
	lda $1C13.w,X		; BD 13 1C
	lda ($03.b)		; B2 03
	ora $E041F1.l		; 0F F1 41 E0
	ora $7F.b,X		; 15 7F
	rep #$C6		; C2 C6
	jsr ($21F3.w,X)		; FC F3 21
	asl $1001.w		; 0E 01 10
	asl $B6E2.w		; 0E E2 B6
	and ($2B.b),Y		; 31 2B
	sbc $31.b,S		; E3 31
	stp		; DB
	tsb $FC.b		; 04 FC
	sbc ($BA.b),Y		; F1 BA
	bpl -15.b		; 10 F1
	sbc $D40A22.l		; EF 22 0A D4
	eor $0A.b,S		; 43 0A
	dex		; CA
	brk $F3.b		; 00 F3
	brk $0D.b		; 00 0D
	beq  67.b		; F0 43
	sbc $C6F2.w		; ED F2 C6
	ora ($EC.b),Y		; 11 EC
	trb $0F.b		; 14 0F
	beq  31.b		; F0 1F
	sbc ($43.b,X)		; E1 43
	rep #$40		; C2 40
	sbc $EC1F01.l		; EF 01 1F EC
	cmp ($10.b),Y		; D1 10
	ora $D422BA.l		; 0F BA 22 D4
	bit $54BE.w		; 2C BE 54
	ora $C63ECF.l,X		; 1F CF 3E C6
	cmp $E5FC32.l,X		; DF 32 FC E5
	eor $FE33D0.l		; 4F D0 33 FE
	dex		; CA
	ora ($21.b,X)		; 01 21
	cpx #$100E.w		; E0 0E 10
	ora ($E3.b,X)		; 01 E3
	eor $DFCA.w		; 4D CA DF
	cpx $40.b		; E4 40
	ldy $3114.w,X		; BC 14 31
	cmp $B204.w		; CD 04 B2
	sbc ($3D.b)		; F2 3D
	lda #$61C5.w		; A9 C5 61
	inc $6315.w,X		; FE 15 63
	dex		; CA
	cmp ($43.b)		; D2 43
	xce		; FB
.INDEX 16
	rep #$52		; C2 52
	cpx $1FF4.w		; EC F4 1F
	lda ($FC.b)		; B2 FC
.ACCU 8
	sep #$20		; E2 20
	sbc $34E0.w		; ED E0 34
	sbc $B2F1.w,X		; FD F1 B2
	bmi -52.b		; 30 CC
	trb $43.b		; 14 43
	cop $54.b		; 02 54
	ora $C6CC.w,X		; 1D CC C6
	sbc ($20.b),Y		; F1 20
	sbc $B21B23.l		; EF 23 1B B2
	eor ($EE.b)		; 52 EE
	ldx $05.b,Y		; B6 05
	bvc -37.b		; 50 DB
.INDEX 16
	rep #$50		; C2 50
	ldy #$E050.w		; A0 50 E0
	ldx $0F.b,Y		; B6 0F
	and ($EC.b)		; 32 EC
	sbc $42.b,S		; E3 42
	inc $FE1F.w		; EE 1F FE
	ldx $E4.b,Y		; B6 E4
	adc ($BB.b,X)		; 61 BB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	and ($1E.b,S),Y		; 33 1E
	cmp $140DCA.l,X		; DF CA 0D 14
	jsl $40F4CA.l		; 22 CA F4 40
	bne  47.b		; D0 2F
	tsx		; BA
	dec $ED45.w		; CE 45 ED
	sbc ($3F.b,X)		; E1 3F
.INDEX 8
	sep #$12		; E2 12
	tsa		; 3B
	dex		; CA
	cpy #$23.b		; C0 23
	ora $2FD11F.l		; 0F 1F D1 2F
	sbc ($2F.b)		; F2 2F
	ldx $DE.b,Y		; B6 DE
	eor ($BE.b,X)		; 41 BE
	cmp $3DF330.l,X		; DF 30 F3 3D
	pei ($BA.b)		; D4 BA
	sbc $42C0.w,X		; FD C0 42
	ora $FB20F0.l		; 0F F0 20 FB
	sbc $B2.b,X		; F5 B2
	cmp $4502EE.l,X		; DF EE 02 45
	and $C23EE0.l		; 2F E0 3E C2
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	beq  17.b		; F0 11
	jsr ($0CE2.w,X)		; FC E2 0C
	cmp ($44.b),Y		; D1 44
	dex		; CA
	sbc ($FD.b),Y		; F1 FD
	bit $E0.b,X		; 34 E0
	ora BG2VOFS.w		; 0D 10 21
	sbc $2000C6.l		; EF C6 00 20
	sbc ($2F.b,X)		; E1 2F
	jmp.w [$30F5]		; DC F5 30
	inc $23CA.w,X		; FE CA 23
	jsr ($4FD4.w,X)		; FC D4 4F
	sbc $E03CE4.l		; EF E4 3C E0
	dec $02.b		; C6 02
	xba		; EB
	asl $2F.b,X		; 16 2F
	sbc $FDE031.l		; EF 31 E0 FD
	ldx $C1.b,Y		; B6 C1
	adc ($3F.b,S),Y		; 73 3F
	sbc $CA.b,S		; E3 CA
	ror $9E.b		; 66 9E
	sbc $24C2.w,X		; FD C2 24
	ora $FC33F0.l		; 0F F0 33 FC
	cmp ($1F.b),Y		; D1 1F
	ora ($B6.b,S),Y		; 13 B6
	inc $5BB4.w,X		; FE B4 5B
	dec $C111.w		; CE 11 C1
	eor ($12.b,S),Y		; 53 12
	lda ($FF.b)		; B2 FF
	stz $0B.b		; 64 0B
	ldy #$BB1F.w		; A0 1F BB
	rol $3C.b		; 26 3C
	dec $F2.b		; C6 F2
	eor ($CD.b,X)		; 41 CD
	sbc ($2F.b)		; F2 2F
	ora ($FF.b)		; 12 FF
	brk $C2.b		; 00 C2
	and $EC.b,S		; 23 EC
	sbc ($32.b),Y		; F1 32
	sbc $40E0.w		; ED E0 40
	tyx		; BB
.INDEX 16
	rep #$D0		; C2 D0
	sbc $ED2244.l,X		; FF 44 22 ED
	bpl -16.b		; 10 F0
	sbc ($B6.b),Y		; F1 B6
	and $64CD.w,X		; 3D CD 64
	lda $B4400F.l,X		; BF 0F 40 B4
	rol $20C2.w,X		; 3E C2 20
	dec $EB21.w		; CE 21 EB
	cpy #$0F23.w		; C0 23 0F
	eor $B2.b		; 45 B2
	tas		; 1B
	lda ($2A.b)		; B2 2A
	cmp ($20.b,X)		; C1 20
	cpy $CE0F.w		; CC 0F CE
	dex		; CA
	bpl -18.b		; 10 EE
	ora ($2F.b),Y		; 11 2F
	sbc ($EB.b,S),Y		; F3 EB
	trb $2E.b		; 14 2E
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	cop $31.b		; 02 31
	cpx $40E3.w		; EC E3 40
	dec $C20F.w,X		; DE 0F C2
	cmp $011044.l,X		; DF 44 10 01
	asl $00DF.w,X		; 1E DF 00
	sbc ($B6.b),Y		; F1 B6
	adc $EAE2.w		; 6D E2 EA
	pei ($1C.b)		; D4 1C
	sbc $62.b,S		; E3 62
	sbc ($C6.b,X)		; E1 C6
	bmi -33.b		; 30 DF
	sbc $2412.w,X		; FD 12 24
	jsr ($E20E.w,X)		; FC 0E E2
	lda ($03.b)		; B2 03
	tas		; 1B
	ldx $2146.w		; AE 46 21
	bpl  84.b		; 10 54
	tyx		; BB
	dec $10.b		; C6 10
	jsr $03FF.w		; 20 FF 03
	and $C121DD.l		; 2F DD 21 C1
.INDEX 16
	rep #$12		; C2 12
	asl $43CF.w,X		; 1E CF 43
	inc $1C14.w		; EE 14 1C
	sbc $B6.b,S		; E3 B6
	rol A		; 2A
	bne   3.b		; D0 03
	xba		; EB
	bit $EE.b		; 24 EE
	jsl $D0C630.l		; 22 30 C6 D0
	eor ($BC.b)		; 52 BC
	sbc ($1F.b)		; F2 1F
	sbc ($30.b)		; F2 30
	beq -62.b		; F0 C2
	ora $010FF0.l		; 0F F0 0F 01
	and ($CE.b),Y		; 31 CE
	bit $2D.b		; 24 2D
	dec $F1.b		; C6 F1
	ora ($12.b)		; 12 12
	sbc $C021.w,X		; FD 21 C0
	and $AFB20F.l		; 2F 0F B2 AF
	bit $3F.b		; 24 3F
	bit $DC.b,X		; 34 DC
	sbc ($3F.b),Y		; F1 3F
	cpx $C2.b		; E4 C2
	asl $2F13.w		; 0E 13 2F
	sbc ($2E.b,S),Y		; F3 2E
	dec $0E12.w		; CE 12 0E
	dec $F2.b		; C6 F2
	and $FA0202.l		; 2F 02 02 FA
	rol $FA.b		; 26 FA
	pei ($C2.b)		; D4 C2
	mvp $D2,$0C		; 44 0C D2
	and ($0F.b),Y		; 31 0F
	ora ($F1.b)		; 12 F1
	and ($B6.b)		; 32 B6
	asl $229E.w,X		; 1E 9E 22
	ora ($FE.b),Y		; 11 FE
	tsb $2D.b		; 04 2D
	pei ($C6.b)		; D4 C6
	ora $54D2.w,X		; 1D D2 54
	xba		; EB
	brk $EE.b		; 00 EE
	ora $20.b,S		; 03 20
	dex		; CA
	ora ($0E.b,X)		; 01 0E
	cop $00.b		; 02 00
	jsr ($FF34.w,X)		; FC 34 FF
	sep #$C6		; E2 C6
	and $21C0FF.l,X		; 3F FF C0 21
	ora $1E04.w		; 0D 04 1E
	sbc $1402B6.l		; EF B6 02 14
	eor $F3CF.w,X		; 5D CF F3
	and $C241ED.l		; 2F ED 41 C2
	dec $3101.w,X		; DE 01 31
	brk $DE.b		; 00 DE
	bpl -32.b		; 10 E0
	mvp $2C,$B2		; 44 B2 2C
	ldx $1F45.w		; AE 45 1F
	rol $3B.b		; 26 3B
	ldx $CAEA.w		; AE EA CA
	and ($FE.b)		; 32 FE
	sbc ($31.b,X)		; E1 31
	dec $EC33.w		; CE 33 EC
	trb $C2.b		; 14 C2
	ora ($0C.b,S),Y		; 13 0C
	cmp ($2F.b),Y		; D1 2F
	cpx #$0011.w		; E0 11 00
	cop $C2.b		; 02 C2
	bmi  -2.b		; 30 FE
	wai		; CB
	lda ($3E.b),Y		; B1 3E
	sbc ($10.b,X)		; E1 10
	cop $B6.b		; 02 B6
	ror A		; 6A
	lda $3B24E2.l,X		; BF E2 24 3B
	sbc ($CE.b,X)		; E1 CE
	and ($C6.b,X)		; 21 C6
	and ($D0.b,X)		; 21 D0
	ora ($2E.b)		; 12 2E
	dec $0E04.w,X		; DE 04 0E
	sbc ($C2.b),Y		; F1 C2
	jsl $12EE10.l		; 22 10 EE 12
	sbc $C01D01.l,X		; FF 01 1D C0
	ldx $7E.b,Y		; B6 7E
	ldx $0E23.w,Y		; BE 23 0E
	ora ($AA.b)		; 12 AA
	bit $3F.b		; 24 3F
	dec $F0.b		; C6 F0
	ora ($10.b,X)		; 01 10
	bpl  -1.b		; 10 FF
	ora $2C.b,S		; 03 2C
.ACCU 16
.INDEX 16
	rep #$B6		; C2 B6
	adc $F142CC.l		; 6F CC 42 F1
	inc $2D25.w		; EE 25 2D
	pea $19B2.w		; F4 B2 19
	lda $4D3326.l,X		; BF 26 33 4D
	cmp $C2CCDC.l		; CF DC CC C2
	sbc $1D24F0.l,X		; FF F0 24 1D
	sbc ($22.b)		; F2 22
	ora $0FCAF0.l,X		; 1F F0 CA 0F
	ora $34EF01.l		; 0F 01 EF 34
	ora $35CF.w		; 0D CF 35
	ldx $5D.b,Y		; B6 5D
	ldy $DF66.w		; AC 66 DF
	xba		; EB
	sbc ($03.b),Y		; F1 03
	eor $C2.b,S		; 43 C2
	and $FD22E0.l,X		; 3F E0 22 FD
	cpx #$CF1F.w		; E0 1F CF
	mvp $9B,$B6		; 44 B6 9B
	and $FC.b		; 25 FC
	cop $53.b		; 02 53
	cmp $3EBF.w,X		; DD BF 3E
	ldx $F2.b,Y		; B6 F2
	jsr $06FF.w		; 20 FF 06
	jmp $DD42AF.l		; 5C AF 42 DD
	dec $01.b		; C6 01
	ora $FC54E1.l		; 0F E1 54 FC
	cpx #$E3FE.w		; E0 FE E3
	dex		; CA
	and $33AE.w,X		; 3D AE 33
	and $1000FF.l		; 2F FF 00 10
	beq -74.b		; F0 B6
	jmp.w [$E500]		; DC 00 E5
	and $0010.w		; 2D 10 00
	sbc $FEB612.l,X		; FF 12 B6 FE
	lsr $3B.b		; 46 3B
	lda ($EC.b,X)		; A1 EC
	and ($12.b,S),Y		; 33 12
	cmp $03B6.w,X		; DD B6 03
	eor $33BE.w		; 4D BE 33
	and ($E0.b,X)		; 21 E0
	cmp $0EC221.l,X		; DF 21 C2 0E
	sbc ($21.b,X)		; E1 21
	inc $3112.w		; EE 12 31
	cpy $B6E1.w		; CC E1 B6
	rol $34BE.w,X		; 3E BE 34
	tsa		; 3B
	lda ($01.b)		; B2 01
	ora ($FD.b)		; 12 FD
	dec $20.b		; C6 20
	sbc ($DC.b)		; F2 DC
	bit $00.b		; 24 00
	cpx #$EF30.w		; E0 30 EF
	tsx		; BA
	and ($D9.b)		; 32 D9
	rol $2F.b,X		; 36 2F
	sbc $924DE1.l		; EF E1 4D 92
	lda ($A2.b)		; B2 A2
	adc ($BB.b),Y		; 71 BB
.ACCU 8
.INDEX 8
	sep #$30		; E2 30
	sbc ($31.b),Y		; F1 31
	sbc ($C2.b)		; F2 C2
	asl $2FD0.w,X		; 1E D0 2F
	cmp $04FE54.l		; CF 54 FE 04
	and $0FE3B6.l,X		; 3F B6 E3 0F
	ora ($32.b,X)		; 01 32
	inc $EF0D.w		; EE 0D EF
	sbc $B6.b		; E5 B6
	jmp ($23D2.w)		; 6C D2 23
	tsb $25D0.w		; 0C D0 25
	adc $FFC6AD.l		; 6F AD C6 FF
	and ($EB.b)		; 32 EB
.ACCU 8
	sep #$20		; E2 20
	sbc $41.b,S		; E3 41
	jsr ($DFC2.w,X)		; FC C2 DF
	ora ($1E.b,S),Y		; 13 1E
	sbc ($32.b),Y		; F1 32
	cpx #$42.b		; E0 42
	trb $C4C6.w		; 1C C6 C4
	ora $F3ED52.l,X		; 1F 52 ED F3
	and $C620E1.l		; 2F E1 20 C6
	sbc $EC56ED.l		; EF ED 56 EC
	sbc ($20.b,S),Y		; F3 20
	sbc $DCB2F0.l,X		; FF F0 B2 DC
	cmp $CEF0.w		; CD F0 CE
	ror $2F.b		; 66 2F
	sbc $D4B600.l,X		; FF 00 B6 D4
	adc ($AA.b),Y		; 71 AA
	ora ($0F.b)		; 12 0F
	sbc $1F.b,S		; E3 1F
	xba		; EB
	dec $12.b		; C6 12
	and ($CE.b),Y		; 31 CE
	sbc ($31.b,X)		; E1 31
	bpl  17.b		; 10 11
	sbc ($C6.b),Y		; F1 C6
	sbc $F2FF0F.l,X		; FF 0F FF F2
	and $FCF3.w		; 2D F3 FC
	trb $C2.b		; 14 C2
	jsl $131121.l		; 22 21 11 13
	.db $42, $0E		; 42 0E
	cmp $0FD232.l,X		; DF 32 D2 0F
	sbc $1CFE00.l		; EF 00 FE 1C
	and $C610F0.l		; 2F F0 10 C6
.INDEX 8
	sep #$11		; E2 11
	plx		; FA
	inc $40.b		; E6 40
	dec $CF52.w,X		; DE 52 CF
	ldx $FE.b		; A6 FE
	asl $B024.w		; 0E 24 B0
	lsr $5332.w		; 4E 32 53
	stz $DDB6.w		; 9C B6 DD
	mvn $00,$BE		; 54 BE 00
	.db $62, $E0, $E0		; 62 E0 E0
	bmi -74.b		; 30 B6
	dec $24EE.w		; CE EE 24
	eor ($ED.b,X)		; 41 ED
	cpx #$41.b		; E0 41
	jmp.w [$E5C6]		; DC C6 E5
	eor $24D0.w		; 4D D0 24
	sbc $F1FE.w,X		; FD FE F1
	cop $B6.b		; 02 B6
	jmp $1221C0.l		; 5C C0 21 12
	ora $03DE.w,X		; 1D DE 03
	and $DE22CA.l		; 2F CA 22 DE
	cmp ($5F.b)		; D2 5F
	ora $CD41D1.l		; 0F D1 41 CD
	dec $F4.b		; C6 F4
	rol $01DE.w		; 2E DE 01
	ora ($01.b)		; 12 01
	asl $CAF0.w,X		; 1E F0 CA
	ora $101FE2.l,X		; 1F E2 1F 10
	cpx #$22.b		; E0 22
	jsr ($C6E4.w,X)		; FC E4 C6
	ora $2E03F0.l,X		; 1F F0 03 2E
	brk $E3.b		; 00 E3
	rol $C2E0.w		; 2E E0 C2
	bit $FD.b,X		; 34 FD
	sbc ($20.b)		; F2 20
	ora ($FE.b),Y		; 11 FE
	beq  31.b		; F0 1F
	ldx $D4.b,Y		; B6 D4
	tsb $5501.w		; 0C 01 55
	ldx $2F31.w,Y		; BE 31 2F
	ldx $E0C2.w,Y		; BE C2 E0
	bmi -33.b		; 30 DF
	bpl -35.b		; 10 DD
	brk $02.b		; 00 02
	and ($B2.b,X)		; 21 B2
	asl $2413.w,X		; 1E 13 24
	phd		; 0B
	ldy $27DE.w,X		; BC DE 27
	dec A		; 3A
	lda ($C1.b)		; B2 C1
	sbc $F03F14.l,X		; FF 14 3F F0
	cmp $C22220.l		; CF 20 22 C2
	inc $0101.w,X		; FE 01 01
	jsr $CFFE.w		; 20 FE CF
	and ($FF.b),Y		; 31 FF
	dec $E1.b		; C6 E1
	and ($0E.b),Y		; 31 0E
	sbc ($0F.b)		; F2 0F
	cmp ($30.b),Y		; D1 30
	ora $09E4B6.l		; 0F B6 E4 09
	trb $D1.b		; 14 D1
	eor ($42.b,X)		; 41 42
	wai		; CB
	cpx #$B6.b		; E0 B6
	and ($E1.b)		; 32 E1
	nop		; EA
	cop $31.b		; 02 31
	ora $DE.b,S		; 03 DE
	mvn $EB,$B6		; 54 B6 EB
	sbc ($2E.b,S),Y		; F3 2E
	cpy $4EF6.w		; CC F6 4E
	ora ($FA.b,X)		; 01 FA
	dec $E3.b		; C6 E3
	rti		; 40

	cmp $DE1E33.l		; CF 33 1E DE
	jsl $4DB6FF.l		; 22 FF B6 4D
	cmp $30.b,X		; D5 30
	tsx		; BA
	and $00.b,X		; 35 00
	tsx		; BA
	adc $B6.b,X		; 75 B6
	ora ($CB.b)		; 12 CB
	trb $0C.b		; 14 0C
	sbc $FC5FE6.l,X		; FF E6 5F FC
.INDEX 16
	rep #$DF		; C2 DF
	ora ($1E.b),Y		; 11 1E
	cmp ($31.b)		; D2 31
	beq  51.b		; F0 33
	xba		; EB
	lda ($D7.b)		; B2 D7
	jmp $0FAD.w		; 4C AD 0F
	cop $44.b		; 02 44
	and ($12.b,S),Y		; 33 12
	ldx $2F.b,Y		; B6 2F
	cmp $FE01.w,X		; DD 01 FE
	ora ($30.b)		; 12 30
	sbc ($DF.b,X)		; E1 DF
	dex		; CA
	lsr $01EF.w		; 4E EF 01
	bpl  32.b		; 10 20
	cmp $5CF5.w,X		; DD F5 5C
	lda ($0B.b)		; B2 0B
	cmp $1E.b,S		; C3 1E
	trb $73.b		; 14 73
	tyx		; BB
	sbc $12BAE0.l,X		; FF E0 BA 12
	tyx		; BB
	jsl $12DF4F.l		; 22 4F DF 12
	ora ($EA.b,S),Y		; 13 EA
	lda ($10.b)		; B2 10
	ora ($2E.b)		; 12 2E
	sbc $DA.b,S		; E3 DA
	bne  69.b		; D0 45
	asl $EEB2.w,X		; 1E B2 EE
	sbc $DC4401.l		; EF 01 44 DC
	sbc ($1D.b),Y		; F1 1D
	sbc $C6.b,S		; E3 C6
	bpl  -2.b		; 10 FE
	sbc ($2D.b)		; F2 2D
	sbc ($FD.b,S),Y		; F3 FD
	sbc ($52.b,S),Y		; F3 52
.INDEX 16
	rep #$1B		; C2 1B
	dec $02FF.w		; CE FF 02
	and ($FE.b,X)		; 21 FE
	ora $1E.b,S		; 03 1E
	ldx $E1.b,Y		; B6 E1
	eor ($03.b,X)		; 41 03
	and $F5DE.w		; 2D DE F5
	inc A		; 1A
	bit $B2.b		; 24 B2
	rol $2CE4.w		; 2E E4 2C
	ldy #$9F60.w		; A0 60 9F
	eor $14B6CD.l		; 4F CD B6 14
	sbc $D71C31.l,X		; FF 31 1C D7
	dec A		; 3A
	bne -33.b		; D0 DF
	ldx $24.b,Y		; B6 24
	jmp $14C1.w		; 4C C1 14
	rol $05DA.w		; 2E DA 05
	and ($BA.b,S),Y		; 33 BA
	sbc #$55.b		; E9 55
	sbc ($9D.b,X)		; E1 9D
	lsr $FB.b,X		; 56 FB
	tsb $2C.b		; 04 2C
	dec $01.b		; C6 01
	ora $1FDE21.l		; 0F 21 DE 1F
	cpx #$EC33.w		; E0 33 EC
	dex		; CA
	ora ($6E.b,S),Y		; 13 6E
	ldx $0D24.w		; AE 24 0D
	cmp ($4E.b,S),Y		; D3 4E
	dec $D3C2.w,X		; DE C2 D3
	bvc -67.b		; 50 BD
	ora ($20.b,S),Y		; 13 20
	ora ($13.b)		; 12 13
	eor ($C6.b,X)		; 41 C6
	bne  49.b		; D0 31
	dec $0D23.w		; CE 23 0D
	sbc ($42.b)		; F2 42
	ldy $D4B2.w,X		; BC B2 D4
	rol $4014.w		; 2E 14 40
	cmp $13CCFE.l		; CF FE CC 13
.INDEX 16
	rep #$11		; C2 11
	bpl  15.b		; 10 0F
	sbc ($2E.b,S),Y		; F3 2E
	dec $F110.w		; CE 10 F1
	dex		; CA
	sbc $D130FF.l,X		; FF FF 30 D1
	and ($2C.b,X)		; 21 2C
	cmp ($E4.b),Y		; D1 E4
	lda ($17.b)		; B2 17
	eor ($EE.b)		; 52 EE
	and ($11.b,S),Y		; 33 11
	ora $EECD.w		; 0D CD EE
.ACCU 16
	rep #$E0		; C2 E0
	bit $30.b,X		; 34 30
	sbc ($10.b),Y		; F1 10
	sbc $FE12.w		; ED 12 FE
	dec $22.b		; C6 22
	sbc $1002.w,X		; FD 02 10
	sbc $D2DD41.l		; EF 41 DD D2
	tsx		; BA
	ror A		; 6A
	cmp $402FD2.l		; CF D2 2F 40
	jmp.w [$FE17]		; DC 17 FE
.INDEX 16
	rep #$1F		; C2 1F
	cop $10.b		; 02 10
	ora $0C02F0.l		; 0F F0 02 0C
.ACCU 8
.INDEX 8
	sep #$B6		; E2 B6
	asl $1EDF.w		; 0E DF 1E
	ora $5E.b		; 05 5E
	dec $FC12.w		; CE 12 FC
	dex		; CA
	trb $EB.b		; 14 EB
	ora ($4E.b,S),Y		; 13 4E
	cpx #$0E.b		; E0 0E
	pea $B62C.w		; F4 2C B6
	lda ($30.b,S),Y		; B3 30
	cpy $D34F.w		; CC 4F D3
	and ($0D.b),Y		; 31 0D
	cmp ($B2.b)		; D2 B2
	and $0F42E2.l		; 2F E2 42 0F
	tsb $1D.b		; 04 1D
	sbc $F0B202.l,X		; FF 02 B2 F0
	tsb $6207.w		; 0C 07 62
	wai		; CB
	ora $B2E4DB.l		; 0F DB E4 B2
	ora $45FF.w		; 0D FF 45
	beq  45.b		; F0 2D
	sbc $42.b,X		; F5 42
	wai		; CB
	ldx $5F.b,Y		; B6 5F
	asl $3FD3.w,X		; 1E D3 3F
	and ($EF.b,X)		; 21 EF
	sbc $B2E3.w,X		; FD E3 B2
	eor $B9.b,X		; 55 B9
	asl $4E.b		; 06 4E
	sbc ($33.b,X)		; E1 33
	ora $11C600.l,X		; 1F 00 C6 11
	cmp $1E24.w,X		; DD 24 1E
	cpx #$11.b		; E0 11
	and ($EB.b,X)		; 21 EB
	rep #$C2		; C2 C2
	and $FE21DF.l,X		; 3F DF 21 FE
	sbc ($44.b)		; F2 44
	and $E3C6.w		; 2D C6 E3
	rol $3FF3.w		; 2E F3 3F
	bne -17.b		; D0 EF
	jsr $B621.w		; 20 21 B6
	lda ($21.b),Y		; B1 21
	eor $C9.b,S		; 43 C9
	cpx $7D.b		; E4 7D
	lda $FBC215.l		; AF 15 C2 FB
	cmp ($20.b),Y		; D1 20
	cmp $E00E44.l,X		; DF 44 0E E0
	and ($B6.b,X)		; 21 B6
	sbc ($1F.b,X)		; E1 1F
	pea $CD4E.w		; F4 4E CD
	ora ($0B.b,S),Y		; 13 0B
	sbc $DAD1B2.l		; EF B2 D1 DA
	pei ($52.b)		; D4 52
	nop		; EA
	ora $13.b,X		; 15 13
	bvc -74.b		; 50 B6
	sbc ($FF.b)		; F2 FF
	sbc $0F141F.l,X		; FF 1F 14 0F
	cmp $B242.w		; CD 42 B2
	beq -14.b		; F0 F2
	mvn $DF,$31		; 54 31 DF
	and ($F3.b),Y		; 31 F3
	adc $41C2C6.l,X		; 7F C6 C2 41
	cmp $1E14.w		; CD 14 1E
	sbc ($2E.b)		; F2 2E
	cmp $0D23C6.l		; CF C6 23 0D
	sbc ($32.b)		; F2 32
	jmp.w [$0C33]		; DC 33 0C
	cmp ($C6.b,S),Y		; D3 C6
	rti		; 40

	cmp $EC43.w		; CD 43 EC
	sbc $40.b,S		; E3 40
	dec $C603.w,X		; DE 03 C6
	rol $1001.w		; 2E 01 10
	cmp $D1FE31.l,X		; DF 31 FE D1
	and $04EEC2.l		; 2F C2 EE 04
	and $1E02EE.l,X		; 3F EE 02 1E
	cmp ($32.b),Y		; D1 32
	dec $00.b		; C6 00
	sbc ($FC.b),Y		; F1 FC
	trb $EE.b		; 14 EE
	ora ($00.b),Y		; 11 00
	brk $B6.b		; 00 B6
	asl $1F02.w		; 0E 02 1F
	jsl $BF1BE2.l		; 22 E2 1B BF
	.db $42, $B6		; 42 B6
	brk $CF.b		; 00 CF
	eor $1945E2.l		; 4F E2 45 19
	dec $B205.w		; CE 05 B2
	and ($10.b,X)		; 21 10
	and ($DB.b,S),Y		; 33 DB
	cpy #$22.b		; C0 22
	and $3EC6D2.l		; 2F D2 C6 3E
	sbc ($F0.b,X)		; E1 F0
	bpl  17.b		; 10 11
	cmp $1F22.w		; CD 22 1F
	dec $F2.b		; C6 F2
	and $ED23FF.l		; 2F FF 23 ED
	sbc $B6CF43.l		; EF 43 CF B6
	sbc $DB56.w,X		; FD 56 DB
	cop $52.b		; 02 52
	dex		; CA
	asl $DB.b,X		; 16 DB
	lda ($E0.b)		; B2 E0
	mvp $63,$D0		; 44 D0 63
	cpy $0CF1.w		; CC F1 0C
	sbc $3FC1B6.l		; EF B6 C1 3F
	inc $6F.b		; E6 6F
	jsr ($229F.w,X)		; FC 9F 22
	and ($B6.b),Y		; 31 B6
	sbc $CE0E22.l		; EF 22 0E CE
	ora ($11.b)		; 12 11
	and ($C3.b),Y		; 31 C3
	ldx $5C.b,Y		; B6 5C
	tax		; AA
	ora $FF.b,X		; 15 FF
	ror $CC.b		; 66 CC
	ora ($40.b,X)		; 01 40
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	beq -20.b		; F0 EC
.ACCU 8
.INDEX 8
	sep #$3E		; E2 3E
	bcs  50.b		; B0 32
	jsr $E1C2.w		; 20 C2 E1
	and ($ED.b),Y		; 31 ED
	sbc ($34.b),Y		; F1 34
	ora $C6EF1F.l		; 0F 1F EF C6
	ora ($FB.b,S),Y		; 13 FB
	ora $31.b,S		; 03 31
	cmp $D31D10.l,X		; DF 10 1D D3
	lda ($12.b)		; B2 12
	eor ($DF.b),Y		; 51 DF
	sbc $6B.b		; E5 6B
	lda $C6EF00.l,X		; BF 00 EF C6
	bmi -31.b		; 30 E1
	ora $1F13ED.l,X		; 1F ED 13 1F
	cmp ($1F.b),Y		; D1 1F
	ldx $46.b,Y		; B6 46
	xba		; EB
	ora ($C2.b,X)		; 01 C2
	lsr $3DE4.w		; 4E E4 3D
	cmp $CEDCC2.l,X		; DF C2 DC CE
	bit $00.b,X		; 34 00
	and ($21.b,X)		; 21 21
	beq  31.b		; F0 1F
	dec $F0.b		; C6 F0
	and $EC.b,S		; 23 EC
	tsb $2B.b		; 04 2B
	cmp ($32.b)		; D2 32
	asl $E1B6.w		; 0E B6 E1
	bpl -18.b		; 10 EE
	and $1C.b		; 25 1C
	cmp $2B.b		; C5 2B
	jmp.w [$C6B2]		; DC B2 C6
	adc ($10.b,X)		; 61 10
	ora $139D.w		; 0D 9D 13
	rti		; 40

	cmp $FC55B2.l		; CF B2 55 FC
	cop $1F.b		; 02 1F
	lda $3000.w,X		; BD 00 30
	lda ($C6.b)		; B2 C6
	and $1F03DC.l,X		; 3F DC 03 1F
	cop $31.b		; 02 31
	dec $B6F0.w		; CE F0 B6
	jsl $DF71DF.l		; 22 DF 71 DF
	ora ($FE.b,S),Y		; 13 FE
	inc $C20C.w		; EE 0C C2
	cpy #$23.b		; C0 23
	eor ($BE.b),Y		; 51 BE
	ora ($31.b),Y		; 11 31
	ora $20.b,S		; 03 20
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	ora $1C.b,S		; 03 1C
	cpy #$001F.w		; C0 1F 00
	cmp $52B610.l,X		; DF 10 B6 52
	cmp $03CF.w,X		; DD CF 03
	and $10D131.l		; 2F 31 D1 10
	ldx $2C.b,Y		; B6 2C
	cmp $31.b,S		; C3 31
	nop		; EA
	sbc ($33.b,X)		; E1 33
	ora ($0E.b),Y		; 11 0E
	dec $FE.b		; C6 FE
	ora ($0F.b,S),Y		; 13 0F
	brk $32.b		; 00 32
	jmp.w [$3EF3]		; DC F3 3E
	rep #$CE		; C2 CE
	ora ($EC.b),Y		; 11 EC
	sbc ($45.b)		; F2 45
	ora $14F0.w,X		; 1D F0 14
	dec $1D.b		; C6 1D
	cpy #$032E.w		; C0 2E 03
	ora $DD43EE.l		; 0F EE 43 DD
	ldx $45.b,Y		; B6 45
	ora $05EF.w		; 0D EF 05
	phd		; 0B
	ora ($DF.b)		; 12 DF
	stz $B2.b		; 64 B2
	rol $50D2.w		; 2E D2 50
	sbc ($1C.b)		; F2 1C
	cpy $32C1.w		; CC C1 32
.INDEX 16
	rep #$12		; C2 12
	ora $0DCF.w,X		; 1D CF 0D
	sbc $42.b,S		; E3 42
	jsl $EEC21F.l		; 22 1F C2 EE
	ora ($EC.b,S),Y		; 13 EC
	dec $0C45.w		; CE 45 0C
	sep #$43		; E2 43
.ACCU 16
	rep #$EC		; C2 EC
	cop $21.b		; 02 21
	sbc $11F021.l		; EF 21 F0 11
	ora $EE12B6.l		; 0F B6 12 EE
	cop $5E.b		; 02 5E
	cmp ($EE.b,X)		; C1 EE
	and $3B.b,X		; 35 3B
	dec $E1.b		; C6 E1
	ora $1C25FE.l		; 0F FE 25 1C
	cmp ($5E.b,S),Y		; D3 5E
	lda $4FF4B2.l,X		; BF B2 F4 4F
	lda $DA55.w		; AD 55 DA
	cmp $B2CE0E.l,X		; DF 0E CE B2
	and $40.b		; 25 40
	cmp $1245.w		; CD 45 12
	ora ($0C.b),Y		; 11 0C
	bne -74.b		; D0 B6
	ora $01F1.w		; 0D F1 01
	brk $55.b		; 00 55
	xba		; EB
	bne  95.b		; D0 5F
.INDEX 16
	rep #$DD		; C2 DD
	brk $11.b		; 00 11
	cmp $0032.w		; CD 32 00
	ora ($11.b,X)		; 01 11
	ldx $21.b,Y		; B6 21
	jmp.w [$AE01]		; DC 01 AE
	rts		; 60

	and $EF.b,X		; 35 EF
	xce		; FB
.ACCU 16
.INDEX 16
	rep #$F4		; C2 F4
	rti		; 40

	sbc $200200.l		; EF 00 02 20
	beq  32.b		; F0 20
	rep #$CE		; C2 CE
	ora ($FC.b),Y		; 11 FC
	sbc $41.b,S		; E3 41
	sbc $C25224.l		; EF 24 52 C2
	dec $FD22.w,X		; DE 22 FD
	sbc ($0B.b,S),Y		; F3 0B
	ldx $FD23.w,Y		; BE 23 FD
	dec $22.b		; C6 22
	ora $DF21F0.l,X		; 1F F0 21 DF
	.db $42, $DC		; 42 DC
	bne -62.b		; D0 C2
	tsb $2F.b		; 04 2F
	ora ($0E.b,X)		; 01 0E
	ldy $FD24.w,X		; BC 24 FD
	trb $B6.b		; 14 B6
	rol A		; 2A
	sty $5E.b,X		; 94 5E
	cmp ($DB.b)		; D2 DB
	adc $EE.b		; 65 EE
	dec $F1C2.w,X		; DE C2 F1
	bpl  15.b		; 10 0F
	sbc ($30.b)		; F2 30
	jmp.w [$30F4]		; DC F4 30
	dec $01.b		; C6 01
	and ($CD.b,X)		; 21 CD
	bit $1E.b,X		; 34 1E
	cmp ($0E.b),Y		; D1 0E
	sbc ($B2.b),Y		; F1 B2
	and ($EF.b)		; 32 EF
	sbc $1213.w		; ED 13 12
	and $B2E110.l		; 2F 10 E1 B2
	and $1A.b,S		; 23 1A
	bcs  19.b		; B0 13
	bpl  65.b		; 10 41
	xba		; EB
	ldx #$2FC6.w		; A2 C6 2F
	jsr ($2EE4.w,X)		; FC E4 2E
	sbc $0E0F14.l,X		; FF 14 0F 0E
	tsx		; BA
	stz $CA.b		; 64 CA
	dec $3D.b,X		; D6 3D
	and ($C0.b)		; 32 C0
	tas		; 1B
	ora ($B2.b)		; 12 B2
	cmp $4F.b,S		; C3 4F
	cop $25.b		; 02 25
	rti		; 40

	brk $EF.b		; 00 EF
	ora $01C6.w		; 0D C6 01
	brk $22.b		; 00 22
	jmp.w [$2F12]		; DC 12 2F
	cmp ($3F.b),Y		; D1 3F
	ldx $D2.b,Y		; B6 D2
	rol $10C0.w,X		; 3E C0 10
	tsb $3F.b		; 04 3F
	dec $B602.w,X		; DE 02 B6
	and ($ED.b,X)		; 21 ED
	sbc ($0E.b)		; F2 0E
	cpx #$EE31.w		; E0 31 EE
	eor [$C2.b],Y		; 57 C2
	jsr $DF31.w		; 20 31 DF
	jsl $32D20C.l		; 22 0C D2 32
	ora ($B2.b),Y		; 11 B2
	ora ($1C.b)		; 12 1C
	sta $559F.w,Y		; 99 9F 55
	rol $65AE.w,X		; 3E AE 65
	dec $CF.b		; C6 CF
	.db $42, $EE		; 42 EE
	ora $3F.b,S		; 03 3F
	cpy $1FF3.w		; CC F3 1F
	ldx $01.b,Y		; B6 01
	and ($11.b,X)		; 21 11
	nop		; EA
	bit $C1.b		; 24 C1
	jsr $B231.w		; 20 31 B2
	and $F163BF.l		; 2F BF 63 F1
	and ($FE.b,X)		; 21 FE
	inc $B2E0.w,X		; FE E0 B2
	inc $0EE0.w,X		; FE E0 0E
	sbc $FE3522.l		; EF 22 35 FE
	lsr $C6.b		; 46 C6
	inc $0101.w,X		; FE 01 01
	jsr ($1EF4.w,X)		; FC F4 1E
	dec $C255.w,X		; DE 55 C2
	ora ($2F.b),Y		; 11 2F
	beq  20.b		; F0 14
	and $1FF1EE.l,X		; 3F EE F1 1F
	dec $D0.b		; C6 D0
	ora ($31.b),Y		; 11 31
	beq  31.b		; F0 1F
	jmp.w [$3D06]		; DC 06 3D
	dec $C0.b		; C6 C0
	eor $1E.b,S		; 43 1E
	cmp ($3F.b,X)		; C1 3F
	sbc $C6ED23.l,X		; FF 23 ED C6
	ora ($10.b,X)		; 01 10
	cmp $1E33.w		; CD 33 1E
	sbc ($13.b,X)		; E1 13
	and $0FC2.w		; 2D C2 0F
	cpx #$34EE.w		; E0 EE 34
	and ($13.b,X)		; 21 13
	and $00C2DE.l,X		; 3F DE C2 00
	beq  -1.b		; F0 FF
	jsr $24CD.w		; 20 CD 24
	ora $C2F1.w		; 0D F1 C2
	and $20.b,S		; 23 20
	cop $1E.b		; 02 1E
	bne  66.b		; D0 42
	jmp.w [$B6EE]		; DC EE B6
	rol $12.b		; 26 12
	asl A		; 0A
	inc $21E3.w		; EE E3 21
	ora $1FC222.l,X		; 1F 22 C2 1F
	sbc ($3F.b,X)		; E1 3F
	dec $1EF1.w		; CE F1 1E
	ora ($13.b,X)		; 01 13
	dec $ED.b		; C6 ED
	ora $3103FF.l		; 0F FF 03 31
	sbc $B6BC43.l,X		; FF 43 BC B6
	rti		; 40

	beq -62.b		; F0 C2
	eor $C40C0F.l,X		; 5F 0F 0C C4
	tsb $F1C2.w		; 0C C2 F1
	ora ($44.b,X)		; 01 44
	and $41B0.w		; 2D B0 41
	sbc $F5B610.l		; EF 10 B6 F5
	brk $F1.b		; 00 F1
	rol A		; 2A
	lda $4B.b,X		; B5 4B
	sta $B243.w,X		; 9D 43 B2
	cmp ($53.b)		; D2 53
	and $32.b,S		; 23 32
	bit $62.b		; 24 62
	cmp $B614.w		; CD 14 B6
	ora $A30D.w		; 0D 0D A3
	.db $42, $DB		; 42 DB
	jsl $B62302.l		; 22 02 23 B6
	lsr A		; 4A
	lda $DD.b,X		; B5 DD
	eor ($42.b)		; 52 42
	plb		; AB
	cpx #$C630.w		; E0 30 C6
	sbc $301001.l		; EF 01 10 30
	sbc ($0E.b,S),Y		; F3 0E
	sbc $B614.w		; ED 14 B6
	brk $1C.b		; 00 1C
	pea $12EC.w		; F4 EC 12
	sbc $C257FF.l,X		; FF FF 57 C2
	eor ($11.b,X)		; 41 11
	inc $32DF.w,X		; FE DF 32
	inc $12F0.w,X		; FE F0 12
	lda ($DC.b)		; B2 DC
	jsl $0D6203.l		; 22 03 62 0D
	cpy $50.b		; C4 50
	sbc $02B6.w		; ED B6 02
	cmp $B276.w,Y		; D9 76 B2
	ora $AE2E53.l,X		; 1F 53 2E AE
.ACCU 16
	rep #$EC		; C2 EC
	cmp $220F35.l,X		; DF 35 0F 22
	and $C210C0.l		; 2F C0 10 C2
	bpl  -1.b		; 10 FF
	sbc ($10.b),Y		; F1 10
	and ($0F.b,S),Y		; 33 0F
	dec $C230.w,X		; DE 30 C2
	cpy #$1032.w		; C0 32 10
	bpl -19.b		; 10 ED
	cpx #$3000.w		; E0 00 30
.ACCU 16
.INDEX 16
	rep #$F4		; C2 F4
	rti		; 40

	inc $EEF0.w,X		; FE F0 EE
	ora ($44.b)		; 12 44
	asl $AAB2.w,X		; 1E B2 AA
	dex		; CA
	cmp ($24.b,X)		; C1 24
	.db $42, $31		; 42 31
	ldy $B222.w,X		; BC 22 B2
	beq  18.b		; F0 12
	sbc #$34D1.w		; E9 D1 34
	jsr $7EE3.w		; 20 E3 7E
	dec $D4.b		; C6 D4
	eor $1104DC.l		; 4F DC 04 11
	trb $0EE0.w		; 1C E0 0E
	ldx $26.b,Y		; B6 26
	eor $0C.b		; 45 0C
	pei ($1A.b)		; D4 1A
	brk $03.b		; 00 03
	jsr ($EEC2.w,X)		; FC C2 EE
	trb $2D.b		; 14 2D
	cmp ($0D.b),Y		; D1 0D
	sbc $B62102.l		; EF 02 21 B6
	ora ($21.b),Y		; 11 21
	cpy #$BF1D.w		; C0 1D BF
	ora ($4E.b,S),Y		; 13 4E
	lda $C55FB6.l		; AF B6 5F C5
	adc ($EC.b,X)		; 61 EC
	tsb $FE.b		; 04 FE
	inc $C643.w		; EE 43 C6
	asl $44CF.w		; 0E CF 44
	ora $32D0.w		; 0D D0 32
	asl $B601.w		; 0E 01 B6
	sbc ($FD.b,X)		; E1 FD
	bpl  65.b		; 10 41
	lda ($4F.b)		; B2 4F
	lda $C203.w,X		; BD 03 C2
	jsr $13EF.w		; 20 EF 13
	bmi -34.b		; 30 DE
	sbc $C62C25.l,X		; FF 25 2C C6
	pea $CE40.w		; F4 40 CE
	eor $EC.b,S		; 43 EC
	tsb $3E.b		; 04 3E
	lda $1F64B6.l,X		; BF B6 64 1F
	ldy $ED45.w		; AC 45 ED
	dec $ED66.w,X		; DE 66 ED
	rep #$01		; C2 01
	and ($DE.b)		; 32 DE
	bpl -15.b		; 10 F1
	and ($FE.b,X)		; 21 FE
	sbc $10F0CA.l		; EF CA F0 10
	sbc ($FF.b),Y		; F1 FF
	ora $52DF31.l		; 0F 31 DF 52
	ldx $09.b,Y		; B6 09
	sta ($3C.b),Y		; 91 3C
	sbc $5D.b		; E5 5D
	lda ($2F.b,S),Y		; B3 2F
	ora $2F13C2.l		; 0F C2 13 2F
	sbc ($53.b,X)		; E1 53
	cmp $0E01.w,X		; DD 01 0E
	sbc ($B6.b,S),Y		; F3 B6
	asl A		; 0A
	dec $B152.w,X		; DE 52 B1
	eor $54F3.w		; 4D F3 54
	jmp.w [$FCB2]		; DC B2 FC
	inc $279B.w		; EE 9B 27
	adc $1E90.w		; 6D 90 1E
	cmp $20CA.w,X		; DD CA 20
	dec $4C14.w,X		; DE 14 4C
	cpy #$CD32.w		; C0 32 CD
	and $B2.b,S		; 23 B2
	asl $3C.b		; 06 3C
	lda ($53.b,S),Y		; B3 53
	jsr ($4E16.w,X)		; FC 16 4E
	lda $21B6.w		; AD B6 21
	bpl  65.b		; 10 41
	lda $D3DB41.l		; AF 41 DB D3
	and $24FFC6.l,X		; 3F C6 FF 24
	rol $2DD2.w		; 2E D2 2D
	cpx #$FD12.w		; E0 12 FD
	rep #$CF		; C2 CF
	mvp $BF,$0C		; 44 0C BF
	and ($F0.b,X)		; 21 F0
	ora ($30.b),Y		; 11 30
	lda ($A1.b)		; B2 A1
	pld		; 2B
	ldx $44EF.w,Y		; BE EF 44
	ora ($34.b),Y		; 11 34
	trb $BFB2.w		; 1C B2 BF
	ora $FA22E0.l,X		; 1F E0 22 FA
	sbc [$5F.b]		; E7 5F
	sbc ($B6.b,S),Y		; F3 B6
	bit $40B2.w		; 2C B2 40
	wai		; CB
	trb $12.b		; 14 12
	cpy #$B26C.w		; C0 6C B2
	beq -34.b		; F0 DE
	ora ($31.b,X)		; 01 31
	cop $34.b		; 02 34
	bit $C2BF.w,X		; 3C BF C2
	cop $0C.b		; 02 0C
	cpx #$1C13.w		; E0 13 1C
	sbc ($11.b,X)		; E1 11
	sbc $314FB6.l,X		; FF B6 4F 31
	cmp ($00.b),Y		; D1 00
	tsb $B410.w		; 0C 10 B4
	jmp ($EDC2.w)		; 6C C2 ED
	pea $D04E.w		; F4 4E D0
	bit $1F.b,X		; 34 1F
	brk $FE.b		; 00 FE
	ldx $34.b,Y		; B6 34
	cmp $D1CF51.l,X		; DF 51 CF D1
	and $AA35.w		; 2D 35 AA
	rep #$CF		; C2 CF
	jsl $FEDE1F.l		; 22 1F DE FE
	sbc ($30.b,X)		; E1 30
	cmp $0F44C2.l,X		; DF C2 44 0F
	and $0C.b,S		; 23 0C
	cmp ($0D.b),Y		; D1 0D
	cpx #$C210.w		; E0 10 C2
	sbc $1F23F0.l,X		; FF F0 23 1F
	ora $3F.b,S		; 03 3F
	dec $B6EF.w,X		; DE EF B6
	ora $A12B56.l,X		; 1F 56 2B A1
	cpx $1233.w		; EC 33 12
	cmp $03B7.w,X		; DD B7 03
	eor $33BE.w		; 4D BE 33
	and ($E0.b,X)		; 21 E0
	cmp $000221.l,X		; DF 21 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	tyx		; BB
	tas		; 1B
	cpx #$1DC9.w		; E0 C9 1D
	xba		; EB
	asl $96DD.w,X		; 1E DD 96
	rol $11F1.w		; 2E F1 11
	bpl  34.b		; 10 22
	and ($04.b),Y		; 31 04
	and ($96.b)		; 32 96
	bmi   5.b		; 30 05
	eor ($24.b,X)		; 41 24
	eor ($54.b)		; 52 54
	asl $41.b,X		; 16 41
	stx $22.b,Y		; 96 22
	and $42.b,S		; 23 42
	sbc $43.b		; E5 43
	stz $C1.b		; 64 C1
	lsr $9A.b		; 46 9A
	dec $1B.b		; C6 1B
	eor ($01.b,S),Y		; 53 01
	eor ($CE.b)		; 52 CE
	.db $42, $61		; 42 61
	stx $13.b,Y		; 96 13
	rol $5312.w,X		; 3E 12 53
	eor $DE.b		; 45 DE
	ora $32A612.l		; 0F 12 A6 32
	inc $FFF1.w,X		; FE F1 FF
	bit $0D.b,X		; 34 0D
	cmp $CF9A12.l		; CF 12 9A CF
	lsr $45CD.w,X		; 5E CD 45
	and $60BF.w,X		; 3D BF 60
.INDEX 16
	rep #$9A		; C2 9A
	lsr $F0F0.w		; 4E F0 F0
	ora ($13.b),Y		; 11 13
	sbc $2EF4.w,X		; FD F4 2E
	txs		; 9A
	brk $12.b		; 00 12
	ora $3E14.w		; 0D 14 3E
	beq  19.b		; F0 13
	bpl -122.b		; 10 86
	jsl $06FE43.l		; 22 43 FE 06
	.db $62, $DC, $01		; 62 DC 01
	sbc $737A.w,X		; FD 7A 73
	tyx		; BB
	ora $42.b,S		; 03 42
	sbc ($FB.b),Y		; F1 FB
	bne   1.b		; D0 01
	txa		; 8A
	sbc ($20.b,X)		; E1 20
	stp		; DB
	ora ($E0.b)		; 12 E0
	cmp ($0C.b),Y		; D1 0C
	bpl 118.b		; 10 76
	sbc $00.b,X		; F5 00
	eor $F0.b,S		; 43 F0
	and ($EE.b,S),Y		; 33 EE
	eor $41.b,X		; 55 41
	txa		; 8A
	ora $0D.b		; 05 0D
	ora ($1E.b,X)		; 01 1E
	cop $02.b		; 02 02
	ora $8A33.w		; 0D 33 8A
	cmp ($51.b)		; D2 51
	ldx $4D31.w,Y		; BE 31 4D
	cmp $50.b,S		; C3 50
	sbc ($8A.b,X)		; E1 8A
	lsr A		; 4A
	ora $DF.b,S		; 03 DF
	.db $42, $AE		; 42 AE
	ora ($33.b),Y		; 11 33
	jmp.w [$D18A]		; DC 8A D1
	brk $FD.b		; 00 FD
	cop $CD.b		; 02 CD
	rol $EB12.w		; 2E 12 EB
	stx $DE.b,Y		; 96 DE
	brk $DD.b		; 00 DD
	ora ($FE.b)		; 12 FE
	cmp $3E04.w,X		; DD 04 3E
	txs		; 9A
	sbc ($FE.b),Y		; F1 FE
	bit $1E.b		; 24 1E
	ldx $F321.w,Y		; BE 21 F3
	and $CB96.w,X		; 3D 96 CB
	sbc ($32.b,X)		; E1 32
	sbc ($2F.b),Y		; F1 2F
	lda $1B57.w		; AD 57 1B
	txs		; 9A
	ora $3D.b		; 05 3D
	cmp ($5E.b,S),Y		; D3 5E
	ldy $4F24.w		; AC 24 4F
	cmp $D21F9A.l,X		; DF 9A 1F D2
	.db $42, $0F		; 42 0F
	wai		; CB
	ora $42.b		; 05 42
	cpx $EF96.w		; EC 96 EF
	ora $1C44F2.l		; 0F F2 44 1C
	bcs  67.b		; B0 43
	jsr ($229A.w,X)		; FC 9A 22
	asl $3EE3.w,X		; 1E E3 3E
	dec $1F22.w		; CE 22 1F
	beq -118.b		; F0 8A
	phd		; 0B
	cpx #$FD13.w		; E0 13 FD
	sbc $33F1.w,X		; FD F1 33
	tyx		; BB
	txa		; 8A
	bne   0.b		; D0 00
	ora ($1C.b,S),Y		; 13 1C
	lda ($2F.b),Y		; B1 2F
	and ($DC.b,S),Y		; 33 DC
	txa		; 8A
	sep #$01		; E2 01
	ora $24DB45.l		; 0F 45 DB 24
	asl $8A22.w,X		; 1E 22 8A
	jsr $54CF.w		; 20 CF 54
	sbc $20DF51.l		; EF 51 DF 20
	beq 122.b		; F0 7A
	and $1D.b,S		; 23 1D
	bne  62.b		; D0 3E
	cpx #$AC40.w		; E0 40 AC
	ora $7A.b,S		; 03 7A
	ora $F3DDDC.l,X		; 1F DC DD F3
	stp		; DB
	sbc ($DA.b),Y		; F1 DA
	and $7A.b		; 25 7A
	xce		; FB
	beq -32.b		; F0 E0
	phd		; 0B
.ACCU 16
	rep #$23		; C2 23
	sbc $8A1E.w,X		; FD 1E 8A
	jsl $20C020.l		; 22 20 C0 20
	cmp ($63.b),Y		; D1 63
	cmp $7A15.w,X		; DD 15 7A
	adc $C042DF.l,X		; 7F DF 42 C0
	adc $1E.b,X		; 75 1E
	rol $0D.b		; 26 0D
	txs		; 9A
	sbc ($3F.b),Y		; F1 3F
	bne  49.b		; D0 31
	cmp $C11C23.l,X		; DF 23 1C C1
	txs		; 9A
	rti		; 40

	sbc $F3EE10.l		; EF 10 EE F3
	bmi -36.b		; 30 DC
	sbc ($8A.b),Y		; F1 8A
	and ($0E.b,X)		; 21 0E
	asl $03DE.w		; 0E DE 03
	bmi -54.b		; 30 CA
	cmp ($9A.b),Y		; D1 9A
	and ($FF.b),Y		; 31 FF
	brk $0F.b		; 00 0F
	sbc ($33.b),Y		; F1 33
	xba		; EB
	cmp ($9A.b)		; D2 9A
	and ($00.b)		; 32 00
	bpl -35.b		; 10 DD
	tsb $41.b		; 04 41
	cmp $8A01.w		; CD 01 8A
	ora ($31.b,S),Y		; 13 31
	sbc $4104EB.l		; EF EB 04 41
	cmp $8AE3.w		; CD E3 8A
	jsr $FCF2.w		; 20 F2 FC
	sbc ($11.b)		; F2 11
	jsr $B0FD.w		; 20 FD B0
	txa		; 8A
	adc $FD.b		; 65 FD
	ora ($DB.b,S),Y		; 13 DB
	asl $5F.b		; 06 5F
	ldx $8A32.w,Y		; BE 32 8A
	sbc $F2ED32.l,X		; FF 32 ED F2
	eor ($0F.b,X)		; 41 0F
	ora $417AD0.l,X		; 1F D0 7A 41
	bne  63.b		; D0 3F
	cmp $FB2202.l,X		; DF 02 22 FB
	cpy #$0E7A.w		; C0 7A 0E
	bne  67.b		; D0 43
	jsr ($00F0.w,X)		; FC F0 00
	inc $7A43.w		; EE 43 7A
	nop		; EA
.INDEX 16
	rep #$10		; C2 10
	eor $0D.b		; 45 0D
	cpy #$2311.w		; C0 11 23
	ply		; 7A
	and $DC74B0.l		; 2F B0 74 DC
	trb $4F.b		; 14 4F
	bcs  98.b		; B0 62
	ply		; 7A
	cpy $DD25.w		; CC 25 DD
	sbc ($2F.b,S),Y		; F3 2F
	dec $2200.w,X		; DE 00 22
	txa		; 8A
	bpl -19.b		; 10 ED
	sbc ($10.b,X)		; E1 10
	beq  30.b		; F0 1E
	cmp $FA7A43.l		; CF 43 7A FA
	lda ($3E.b)		; B2 3E
	lda $E3EB43.l		; AF 43 EB E3
	eor ($7A.b)		; 52 7A
	brk $10.b		; 00 10
	cmp $5303.w,X		; DD 03 53
	phd		; 0B
.ACCU 8
	sep #$66		; E2 66
	txa		; 8A
	and $0221DE.l		; 2F DE 21 02
	and ($FD.b)		; 32 FD
	cmp ($64.b,X)		; C1 64
	txa		; 8A
	jsr ($20E0.w,X)		; FC E0 20
	beq  49.b		; F0 31
	cpx $21E1.w		; EC E1 21
	txa		; 8A
	inc $0FEF.w,X		; FE EF 0F
	sbc ($11.b),Y		; F1 11
	cpx $21D0.w		; EC D0 21
	stx $22.b		; 86 22
	asl $03DD.w,X		; 1E DD 03
	mvp $DC,$31		; 44 31 DC
	pea $3D7A.w		; F4 7A 3D
	lda $641222.l,X		; BF 22 12 64
	phx		; DA
	pea $7A30.w		; F4 30 7A
	and $1E.b,S		; 23 1E
	cop $21.b		; 02 21
	ora ($0D.b),Y		; 11 0D
	bne  53.b		; D0 35
	ply		; 7A
	eor $0101BC.l		; 4F BC 01 01
	bmi -52.b		; 30 CC
	dec $6634.w		; CE 34 66
	and $CDAB.w		; 2D AB CD
	cmp $DAF1.w		; CD F1 DA
	cmp ($25.b),Y		; D1 25
	ply		; 7A
	and ($ED.b,X)		; 21 ED
	ora ($10.b,X)		; 01 10
	ora ($3F.b)		; 12 3F
	cmp $0E7A44.l		; CF 44 7A 0E
	ora ($2F.b,S),Y		; 13 2F
	ora $42.b,S		; 03 42
	cpx #$0E33.w		; E0 33 0E
	ror $DF.b		; 66 DF
	ora ($33.b)		; 12 33
	and $6F16AA.l,X		; 3F AA 16 6F
	cpy $0D7A.w		; CC 7A 0D
.INDEX 8
	sep #$53		; E2 53
	cmp $FB12.w,X		; DD 12 FB
	sbc $50.b,S		; E3 50
	ply		; 7A
	wai		; CB
	cop $FF.b		; 02 FF
	ora ($0C.b)		; 12 0C
	bcs  35.b		; B0 23
	ora $E3BA6A.l		; 0F 6A BA E3
	and $FD11DF.l,X		; 3F DF 11 FD
	ora ($1B.b,S),Y		; 13 1B
	ply		; 7A
	cmp $F20F11.l,X		; DF 11 0F F2
	and $3036AB.l		; 2F AB 36 30
	ply		; 7A
	sbc $43C0FC.l,X		; FF FC C0 43
	asl $03CD.w,X		; 1E CD 03
	eor ($7A.b,X)		; 41 7A
	inc $FF01.w		; EE 01 FF
	sbc ($0E.b)		; F2 0E
	cmp ($34.b),Y		; D1 34
	ora $0F017A.l,X		; 1F 7A 01 0F
	brk $11.b		; 00 11
	jsr $03FF.w		; 20 FF 03
	eor $7A.b,S		; 43 7A
	sbc $2301EF.l,X		; FF EF 01 23
	bpl -34.b		; 10 DE
	ora $41.b,S		; 03 41
	ply		; 7A
	cpx $21DF.w		; EC DF 21
	ora $EFEEFE.l		; 0F FE EE EF
	ora $EFDC7A.l,X		; 1F 7A DC EF
	ora $DC11DE.l		; 0F DE 11 DC
	cmp $FE6A00.l,X		; DF 00 6A FE
	jmp.w [$13DF]		; DC DF 13
	and ($DC.b),Y		; 31 DC
	cpy #$56.b		; C0 56
	ror A		; 6A
	bmi   4.b		; 30 04
	eor $23.b,X		; 55 23
	stz $21.b		; 64 21
	bpl  36.b		; 10 24
	ply		; 7A
	trb $21.b		; 14 21
	brk $10.b		; 00 10
	ora ($2F.b)		; 12 2F
	sbc $6A03.w		; ED 03 6A
	bvc -18.b		; 50 EE
	sbc $F0CE.w,X		; FD CE F0
	stp		; DB
	sta $BC6A20.l,X		; 9F 20 6A BC
	cmp $EEDC.w,X		; DD DC EE
	dec $CBEE.w,X		; DE EE CB
	sbc [$7A.b],Y		; F7 7A
	and $E000CF.l,X		; 3F CF 00 E0
	bit $1D.b		; 24 1D
	cmp ($42.b)		; D2 42
	ror A		; 6A
	cpx #$35.b		; E0 35
	and ($25.b),Y		; 31 25
	and ($25.b)		; 32 25
	mvp $6A,$33		; 44 33 6A
	ora ($25.b,X)		; 01 25
	adc $10.b,S		; 63 10
	rol $63.b,X		; 36 63
	brk $01.b		; 00 01
	ply		; 7A
	ora $FE4202.l		; 0F 02 42 FE
	beq  -2.b		; F0 FE
	trb $2E.b		; 14 2E
	ply		; 7A
	dec $02FE.w		; CE FE 02
	bpl -36.b		; 10 DC
	sbc $7A0F01.l		; EF 01 0F 7A
	jmp.w [$0FF0]		; DC F0 0F
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $D07A.w,X		; FD 7A D0
	jsr $11FF.w		; 20 FF 11
	inc $15CE.w,X		; FE CE 15
	eor ($7A.b,X)		; 41 7A
	ora $33F3CB.l		; 0F CB F3 33
	ora $4204CE.l		; 0F CE 04 42
	ply		; 7A
	inc $0F00.w,X		; FE 00 0F
	ora ($1E.b),Y		; 11 1E
	cpx #$33.b		; E0 33
	ora ($7A.b),Y		; 11 7A
	and ($FE.b,X)		; 21 FE
	sbc ($12.b),Y		; F1 12
	bpl -17.b		; 10 EF
	ora ($43.b,S),Y		; 13 43
	ply		; 7A
	tsb $00D0.w		; 0C D0 00
	bit $1E.b		; 24 1E
	dec $4103.w		; CE 03 41
	ply		; 7A
	stp		; DB
	cpy #$20.b		; C0 20
	sbc $D0DB0F.l		; EF 0F DB D0
	rol $CC7A.w		; 2E 7A CC
	sbc $2FE0FC.l,X		; FF FC E0 2F
	stp		; DB
	cmp $0F7A10.l,X		; DF 10 7A 0F
	inc $12E0.w		; EE E0 12
	and ($DC.b),Y		; 31 DC
	sbc ($33.b,S),Y		; F3 33
	ply		; 7A
	bpl  19.b		; 10 13
	jsl $004223.l		; 22 23 42 00
	brk $14.b		; 00 14
	ply		; 7A
	eor $10.b,S		; 43 10
	ora ($1F.b),Y		; 11 1F
	ora ($3F.b,S),Y		; 13 3F
	cpy $6A15.w		; CC 15 6A
	lsr $EDDF.w		; 4E DF ED
	dec $D900.w		; CE 00 D9
	stz $7A2F.w,X		; 9E 2F 7A
	inc $FEEE.w		; EE EE FE
	inc $0FEF.w,X		; FE EF 0F
	cmp $7A04.w,X		; DD 04 7A
	rol $11CE.w,X		; 3E CE 11
	inc $1D25.w		; EE 25 1D
	cmp ($42.b)		; D2 42
	ror A		; 6A
	sbc $353145.l		; EF 45 31 35
	jsl $354336.l		; 22 36 43 35
	ply		; 7A
	bpl   2.b		; 10 02
	eor $0F.b,S		; 43 0F
	trb $42.b		; 14 42
	brk $00.b		; 00 00
	ply		; 7A
	brk $02.b		; 00 02
	.db $42, $FE		; 42 FE
	brk $FE.b		; 00 FE
	tsb $3F.b		; 04 3F
	ply		; 7A
	cpy $01FF.w		; CC FF 01
	and ($DA.b,X)		; 21 DA
	cpx #$00.b		; E0 00
	brk $7A.b		; 00 7A
	jmp.w [$0FEF]		; DC EF 0F
	beq  16.b		; F0 10
	cmp $FD01.w,X		; DD 01 FD
	ply		; 7A
	bne  17.b		; D0 11
	inc $FD12.w,X		; FE 12 FD
	dec $4124.w		; CE 24 41
	ply		; 7A
	ora $43E3DB.l		; 0F DB E3 43
	sbc $42F5DE.l,X		; FF DE F5 42
	ply		; 7A
	sbc $110F00.l		; EF 00 0F 11
	asl $34E0.w,X		; 1E E0 34
	ora ($7A.b),Y		; 11 7A
	ora ($FF.b),Y		; 11 FF
	beq  19.b		; F0 13
	ora $3313E0.l,X		; 1F E0 13 33
	ply		; 7A
	ora $01DF.w		; 0D DF 01
	and ($1E.b)		; 32 1E
	cmp $4103.w,X		; DD 03 41
	ply		; 7A
	stp		; DB
	bne  31.b		; D0 1F
	beq  -2.b		; F0 FE
	jmp.w [$1EE0]		; DC E0 1E
	ply		; 7A
	cpy $FEEF.w		; CC EF FE
	bne  47.b		; D0 2F
	cpy $01DF.w		; CC DF 01
	ply		; 7A
	ora $12F0DE.l		; 0F DE F0 12
	bmi -20.b		; 30 EC
.INDEX 8
	sep #$53		; E2 53
	ply		; 7A
	bpl  18.b		; 10 12
	jsl $0F4224.l		; 22 24 42 0F
	sbc ($33.b),Y		; F1 33
	ply		; 7A
	and ($11.b,S),Y		; 33 11
	ora ($10.b,X)		; 01 10
	ora ($2E.b,S),Y		; 13 2E
	cmp $6A04.w,X		; DD 04 6A
	adc $CFFCCE.l,X		; 7F CE FC CF
	ora $2F9ED9.l		; 0F D9 9E 2F
	tda		; 7B
	sbc $FEEFED.l		; EF ED EF FE
	sbc $04DD0F.l		; EF 0F DD 04
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4A.b		; 00 4A
	ror $0311.w,X		; 7E 11 03
	ora ($32.b),Y		; 11 32
	and ($44.b,S),Y		; 33 44
	and $5A.b		; 25 5A
	and ($33.b),Y		; 31 33
	and ($34.b,S),Y		; 33 34
	bit $44.b,X		; 34 44
	eor $44.b		; 45 44
	phy		; 5A
	eor $54.b,X		; 55 54
	eor $56.b,X		; 55 56
	adc $57.b		; 65 57
	ror $56.b		; 66 56
	phy		; 5A
	eor $65.b,X		; 55 65
	lsr $54.b		; 46 54
	eor $44.b		; 45 44
	mvp $4A,$35		; 44 35 4A
	lsr $77.b,X		; 56 77
	bit $54.b,X		; 34 54
	bit $23.b,X		; 34 23
	adc $6AA4.w		; 6D A4 6A
	and ($ED.b),Y		; 31 ED
	beq  18.b		; F0 12
	ora ($1E.b),Y		; 11 1E
	cop $FC.b		; 02 FC
	ror A		; 6A
	tsb $2E.b		; 04 2E
	bne  37.b		; D0 25
	eor $41B1.w		; 4D B1 41
	eor ($7A.b)		; 52 7A
	sbc ($11.b),Y		; F1 11
	and ($0F.b)		; 32 0F
	eor $FD.b		; 45 FD
	sbc ($53.b,S),Y		; F3 53
	ply		; 7A
	sbc ($40.b,X)		; E1 40
	sbc $3F0354.l		; EF 54 03 3F
	cmp $8A35.w,X		; DD 35 8A
	bpl -15.b		; 10 F1
	and $1E33AF.l		; 2F AF 33 1E
	cpx #$0E.b		; E0 0E
	stx $DE.b		; 86 DE
	dex		; CA
	cmp ($0A.b)		; D2 0A
	lda $EAFF.w		; AD FF EA
	lda $EF9A.w		; AD 9A EF
	brk $F1.b		; 00 F1
	ora $21CF.w		; 0D CF 21
	inc $96F1.w,X		; FE F1 96
	and ($DB.b)		; 32 DB
	cmp $2EE1.w		; CD E1 2E
	cpy #$31.b		; C0 31
	sbc $F19A.w		; ED 9A F1
	ora $2010EF.l,X		; 1F EF 10 20
	cmp $FFFF.w,X		; DD FF FF
	stx $E1.b,Y		; 96 E1
	and ($EE.b),Y		; 31 EE
	ora ($0D.b,X)		; 01 0D
	cmp $00CD.w,X		; DD CD 00
	txs		; 9A
	bne  49.b		; D0 31
	cmp $0EFF.w		; CD FF 0E
	beq  -2.b		; F0 FE
	trb $9A.b		; 14 9A
	trb $CFDE.w		; 1C DE CF
	and ($EB.b,X)		; 21 EB
	bne  51.b		; D0 33
	and $DD9A.w		; 2D 9A DD
	cpy $02F0.w		; CC F0 02
	asl $12CE.w,X		; 1E CE 12
	inc $DD9A.w,X		; FE 9A DD
	dec $21F1.w,X		; DE F1 21
	ora $2FD2DB.l		; 0F DB D2 2F
	txa		; 8A
	dex		; CA
	cmp ($40.b),Y		; D1 40
	cmp $EEFF.w		; CD FF EE
	cmp $8AF1.w		; CD F1 8A
	inc $1001.w		; EE 01 10
	xba		; EB
	lda $E00E13.l,X		; BF 13 0E E0
	txa		; 8A
	cmp $22E1.w,X		; DD E1 22
	xce		; FB
	ldy WRMPYB.w		; AC 03 42
	cpx $BC7A.w		; EC 7A BC
	ldy $1111.w,X		; BC 11 11
	jsr ($D29B.w,X)		; FC 9B D2
	and $DDDD8A.l,X		; 3F 8A DD DD
	sbc ($11.b)		; F2 11
	asl $CFDC.w		; 0E DC CF
	bpl 122.b		; 10 7A
	sbc $E1BA.w		; ED BA E1
	asl $BCB9.w,X		; 1E B9 BC
	cmp $7AEF.w		; CD EF 7A
	sbc $0FCF.w,X		; FD CF 0F
	cmp $DECC.w		; CD CC DE
	sbc ($0C.b,X)		; E1 0C
	ply		; 7A
	lda ($2F.b),Y		; B1 2F
	rol $FB.b		; 26 FB
	ldx $0033.w,Y		; BE 33 00
	.db $42, $8A		; 42 8A
	sbc $130E43.l		; EF 43 0E 13
	ora $014114.l,X		; 1F 14 41 01
	txa		; 8A
	and $31.b,S		; 23 31
	ora ($23.b),Y		; 11 23
	.db $42, $11		; 42 11
	ora ($55.b),Y		; 11 55
	txa		; 8A
	ora ($42.b),Y		; 11 42
	sbc ($56.b),Y		; F1 56
	and ($12.b),Y		; 31 12
	and $34.b,S		; 23 34
	txa		; 8A
	jsr $3203.w		; 20 03 32
	ora $53.b,S		; 03 53
	sbc $8A5025.l,X		; FF 25 50 8A
	sbc $1D4444.l		; EF 44 44 1D
	ora $0F.b,S		; 03 0F
	rol $4F.b,X		; 36 4F
	txa		; 8A
	cmp $5403.w,X		; DD 03 54
	ora $DB65D1.l,X		; 1F D1 65 DB
	ora $8A.b,X		; 15 8A
	and $5015EE.l		; 2F EE 15 50
	dec $0F01.w,X		; DE 01 0F
	sbc ($8A.b)		; F2 8A
	mvp $0E,$10		; 44 10 0E
	sbc ($10.b,X)		; E1 10
	and $0F.b,S		; 23 0F
	sbc $2D268A.l,X		; FF 8A 26 2D
	cmp ($41.b),Y		; D1 41
	cpx #$34.b		; E0 34
	and ($10.b),Y		; 31 10
	txs		; 9A
	sbc $0E3202.l,X		; FF 02 32 0E
	beq  67.b		; F0 43
	and $1F9A01.l		; 2F 01 9A 1F
	beq  19.b		; F0 13
	mvp $FF,$1F		; 44 1F FF
	ora ($2F.b,S),Y		; 13 2F
	txs		; 9A
	cpx #$13.b		; E0 13
	mvp $FE,$31		; 44 31 FE
	sbc ($23.b,X)		; E1 23
	ora $54049A.l		; 0F 9A 04 54
	and $22F2DD.l		; 2F DD F2 22
	bit $1F.b,X		; 34 1F
	txs		; 9A
	cpx #$34.b		; E0 34
	bmi -38.b		; 30 DA
	cmp ($77.b)		; D2 77
	eor ($DC.b,X)		; 41 DC
	txs		; 9A
	cmp $DC4125.l		; CF 25 41 DC
	sbc $64.b,S		; E3 64
	jsr $9AFB.w		; 20 FB 9A
	dec $4401.w,X		; DE 01 44
	jsr $F10F.w		; 20 0F F1
	jsr $9AED.w		; 20 ED 9A
	sbc ($23.b,X)		; E1 23
	ora ($22.b)		; 12 22
	and ($CB.b,X)		; 21 CB
	lda $249A33.l,X		; BF 33 9A 24
	eor ($FD.b,X)		; 41 FD
	inc OBJSEL.w		; EE 01 21
	sbc $349AF1.l,X		; FF F1 9A 34
	and $23CEEC.l		; 2F EC CE 23
	and ($1F.b,S),Y		; 33 1F
	cmp $D28A.w,X		; DD 8A D2
	jsr $EC10.w		; 20 10 EC
	sbc ($42.b,X)		; E1 42
	ora $CE8ACA.l,X		; 1F CA 8A CE
	ora ($12.b,X)		; 01 12
	ora $FFFFDE.l,X		; 1F DE FF FF
	dec $FC7A.w,X		; DE 7A FC
	sta $DA44.w,X		; 9D 44 DA
	cmp $BBBCCB.l,X		; DF CB BC BB
	txa		; 8A
	trb $3F.b		; 14 3F
	cpy $F0DE.w		; CC DE F0
	sbc $01DE.w,X		; FD DE 01
	txa		; 8A
	jsl $01BD0D.l		; 22 0D BD 01
	jsr ($41E3.w,X)		; FC E3 41
	sbc $F0DD8A.l,X		; FF 8A DD F0
	asl $1EF0.w		; 0E F0 1E
	cmp $8A2E24.l,X		; DF 24 2E 8A
	ldy $21F2.w,X		; BC F2 21
	cpx $0FE1.w		; EC E1 0F
	ora ($0E.b)		; 12 0E
	txa		; 8A
	wai		; CB
	cmp ($42.b),Y		; D1 42
	xba		; EB
	cmp ($21.b),Y		; D1 21
	sbc $7ADE.w		; ED DE 7A
	ora ($EA.b,X)		; 01 EA
	ldy $E0DB.w,X		; BC DB E0
	inc $99DC.w,X		; FE DC 99
	txa		; 8A
	cpx #$0E.b		; E0 0E
	cmp $01DE.w,X		; DD DE 01
	asl $EFDD.w		; 0E DD EF
	ply		; 7A
	inc $0FEF.w,X		; FE EF 0F
	cmp $ECE0.w,X		; DD E0 EC
	cpx $30.b		; E4 30
	ply		; 7A
	cmp $45C0.w,X		; DD C0 45
	bit $57AE.w		; 2C AE 57
	rti		; 40

	beq -118.b		; F0 8A
	ora ($11.b),Y		; 11 11
	ora ($34.b,X)		; 01 34
	ora $35F001.l		; 0F 01 F0 35
	txa		; 8A
	and ($01.b)		; 32 01
	jsr $22F2.w		; 20 F2 22
	and $42.b		; 25 42
	sbc $671386.l		; EF 86 13 67
	bvc -71.b		; 50 B9
	cmp ($66.b,S),Y		; D3 66
	eor ($0E.b,S),Y		; 53 0E
	ply		; 7A
	rol $74.b,X		; 36 74
	and ($0E.b)		; 32 0E
	ora $75.b		; 05 75
	xba		; EB
	sbc $8A.b,S		; E3 8A
	ora ($22.b)		; 12 22
	sbc $1132F2.l,X		; FF F2 32 11
	jsr ($8AC1.w,X)		; FC C1 8A
	ror $1D.b		; 66 1D
	cpy $5104.w		; CC 04 51
	jmp.w [$13DE]		; DC DE 13
	txs		; 9A
	and $2F.b,S		; 23 2F
	jmp.w [$23E0]		; DC E0 23
	bpl -17.b		; 10 EF
	cop $8A.b		; 02 8A
	and ($1E.b,X)		; 21 1E
	tax		; AA
.INDEX 8
	sep #$55		; E2 55
	mvp $BD,$1D		; 44 1D BD
	ply		; 7A
	sbc $206512.l		; EF 12 65 20
	sbc ($53.b,S),Y		; F3 53
	ora $E08AFD.l,X		; 1F FD 8A E0
	jsl $0D4155.l		; 22 55 41 0D
	cmp $5403.w,X		; DD 03 54
	txs		; 9A
	bpl  17.b		; 10 11
	brk $23.b		; 00 23
	ora $25F0EF.l,X		; 1F EF F0 25
	txs		; 9A
	eor ($1F.b,S),Y		; 53 1F
	cmp $23F0.w,X		; DD F0 23
	and ($00.b),Y		; 31 00
	cop $9A.b		; 02 9A
	eor $0E.b,S		; 43 0E
	sbc $24EF.w		; ED EF 24
	adc $1E.b		; 65 1E
	dec $E09A.w,X		; DE 9A E0
	ora ($10.b)		; 12 10
	ora ($11.b,X)		; 01 11
	ora ($22.b),Y		; 11 22
	cpx $BE8A.w		; EC 8A BE
	tsb $66.b		; 04 66
	bmi  -3.b		; 30 FD
	cmp $8A1F22.l		; CF 22 1F 8A
	sbc $FF5214.l		; EF 14 52 FF
	brk $FD.b		; 00 FD
	lda $358A34.l,X		; BF 34 8A 35
	eor ($FB.b)		; 52 FB
	plb		; AB
	tsb $53.b		; 04 53
	jsr ($9AE1.w,X)		; FC E1 9A
	and ($30.b,S),Y		; 33 30
	xba		; EB
	dec RDDIVL.w		; CE 14 42
	ora $D08AEE.l		; 0F EE 8A D0
	ora ($10.b),Y		; 11 10
	cpx $43E1.w		; EC E1 43
	asl $8ACB.w		; 0E CB 8A
	dec OBJSEL.w		; CE 01 21
	asl $0EEE.w,X		; 1E EE 0E
	inc $7AEE.w,X		; FE EE 7A
	jsr ($34AD.w,X)		; FC AD 34
	phx		; DA
	cmp $CBBCCB.l,X		; DF CB BC CB
	txa		; 8A
	tsb $4F.b		; 04 4F
	cpy $E0DE.w		; CC DE E0
	inc $F0DF.w,X		; FE DF F0
	phb		; 8B
	and $0D.b,S		; 23 0D
	lda $0DF1.w,X		; BD F1 0D
	cmp ($42.b)		; D2 42
	sbc $000002.l,X		; FF 02 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($1B.b)		; 52 1B
	sbc $F1.b,X		; F5 F1
	phk		; 4B
	and $000FFF.l		; 2F FF 0F 00
	tax		; AA
	brk $00.b		; 00 00
	cop $6E.b		; 02 6E
	dec $0010.w		; CE 10 00
	brk $AA.b		; 00 AA
	ora $0FFF00.l,X		; 1F 00 FF 0F
	brk $05.b		; 00 05
	and $E09ADF.l,X		; 3F DF 9A E0
	brk $44.b		; 00 44
	bpl -100.b		; 10 9C
	pei ($44.b)		; D4 44
	xce		; FB
	tax		; AA
	and $D03ED0.l		; 2F D0 3E D0
	asl $51F6.w		; 0E F6 51
	cpx $0EAA.w		; EC AA 0E
	and ($21.b,X)		; 21 21
	ora $50F1EF.l		; 0F EF F1 50
	inc $10AA.w,X		; FE AA 10
	cmp $12DF2F.l,X		; DF 2F DF 12
	ora $AAED62.l		; 0F 62 ED AA
	sbc $0F0401.l,X		; FF 01 04 0F
	asl $43D2.w		; 0E D2 43
	phd		; 0B
	ldx $0E.b,Y		; B6 0E
	jmp.w [$CCDD]		; DC DD CC
	cmp $3223FF.l,X		; DF FF 23 32
	tax		; AA
	bne  31.b		; D0 1F
	ora ($10.b)		; 12 10
	sbc $1E42E1.l,X		; FF E1 42 1E
	tax		; AA
	ora $03EF.w		; 0D EF 03
	cmp $7F1100.l,X		; DF 00 11 7F
	sbc $E0AA.w,X		; FD AA E0
	beq  19.b		; F0 13
	cop $DF.b		; 02 DF
	cpx #$52.b		; E0 52
	trb $2EAA.w		; 1C AA 2E
	cmp $00D022.l		; CF 22 D0 00
	ora ($60.b,X)		; 01 60
	sbc $E0AA.w,X		; FD AA E0
	sbc $EF3012.l,X		; FF 12 30 EF
	cmp ($52.b),Y		; D1 52
	asl $FFAA.w		; 0E AA FF
	cmp $00DF13.l,X		; DF 13 DF 00
	jsl $AA0C31.l		; 22 31 0C AA
	sbc ($EF.b,X)		; E1 EF
	ora ($31.b)		; 12 31
	sbc $34F1.w		; ED F1 34
	inc $0FAA.w,X		; FE AA 0F
	bcs  33.b		; B0 21
	sbc $134000.l		; EF 00 40 13
	inc $D0AA.w,X		; FE AA D0
	beq   2.b		; F0 02
	bmi  12.b		; 30 0C
	sbc ($33.b),Y		; F1 33
	asl $EE9A.w		; 0E 9A EE
	lda $FC32.w		; AD 32 FC
	tsb $41.b		; 04 41
	sbc [$0A.b],Y		; F7 0A
	tax		; AA
	cpx #$FE.b		; E0 FE
	bmi  65.b		; 30 41
	inc $23C3.w,X		; FE C3 23
	ora $EDEFAA.l		; 0F AA EF ED
	and ($0F.b,X)		; 21 0F
	cpx $2F.b		; E4 2F
	sbc $0E.b		; E5 0E
	tax		; AA
	inc $111E.w		; EE 1E 11
	and ($0D.b)		; 32 0D
	cmp ($14.b)		; D2 14
	asl $0FAA.w		; 0E AA 0F
	cmp $0E21.w,X		; DD 21 0E
	tsb $1E.b		; 04 1E
	sbc ($3E.b)		; F2 3E
	tax		; AA
	sbc $3410FF.l		; EF FF 10 34
	sbc $0E24B2.l		; EF B2 24 0E
	tax		; AA
	asl $12EE.w		; 0E EE 12
	cpx #$04.b		; E0 04
	asl $3FF2.w		; 0E F2 3F
	tax		; AA
	inc $12FF.w		; EE FF 12
	tsb $1D.b		; 04 1D
	cmp ($23.b,X)		; C1 23
	and $0EAA.w		; 2D AA 0E
	jsr ($FF22.w,X)		; FC 22 FF
	jsl $50F00E.l		; 22 0E F0 50
	tax		; AA
	dec $01F0.w,X		; DE F0 01
	ora $1D.b		; 05 1D
	cmp ($23.b,X)		; C1 23
	asl $F0AA.w,X		; 1E AA F0
	dec $F003.w,X		; DE 03 F0
	ora ($0D.b)		; 12 0D
	ora ($31.b,X)		; 01 31
	tax		; AA
	inc $02FF.w		; EE FF 02
	sbc $1E.b,X		; F5 1E
	cpy #$23.b		; C0 23
	asl $0F9A.w,X		; 1E 9A 0F
	ldy $0F05.w		; AC 05 0F
	and ($FC.b)		; 32 FC
.ACCU 8
.INDEX 8
	sep #$73		; E2 73
	tax		; AA
	inc $11FE.w		; EE FE 11
	tsb $2D.b		; 04 2D
	inc $2E23.w		; EE 23 2E
	txs		; 9A
	sbc $1114CA.l		; EF CA 14 11
	ora ($FD.b),Y		; 11 FD
	cmp ($63.b,S),Y		; D3 63
	tax		; AA
	inc $10EF.w,X		; FE EF 10
	ora $4E.b,S		; 03 4E
	dec $1F14.w,X		; DE 14 1F
	txs		; 9A
	sbc $2204CA.l		; EF CA 04 22
	brk $FD.b		; 00 FD
	pei ($36.b)		; D4 36
	tax		; AA
	inc $01EF.w,X		; FE EF 01
	cop $4F.b		; 02 4F
	cmp $9A1004.l		; CF 04 10 9A
	cmp $42F3CB.l,X		; DF CB F3 42
	sbc $26D3FE.l,X		; FF FE D3 26
	tax		; AA
	asl $11FD.w		; 0E FD 11
	ora ($40.b,X)		; 01 40
	dec $1F04.w,X		; DE 04 1F
	tax		; AA
	asl $020C.w		; 0E 0C 02
	and ($0E.b,X)		; 21 0E
	ora $AA13F1.l		; 0F F1 13 AA
	ora $0001EE.l		; 0F EE 01 00
	eor ($CE.b),Y		; 51 CE
	tsb $1F.b		; 04 1F
	txs		; 9A
	sbc $7102DA.l,X		; FF DA 02 71
	dec $E20E.w,X		; DE 0E E2
	and ($AA.b,S),Y		; 33 AA
	ora $F101FD.l,X		; 1F FD 01 F1
	bvc -34.b		; 50 DE
	ora $2F.b,S		; 03 2F
	txs		; 9A
	cpx #$DA.b		; E0 DA
	pea $CD62.w		; F4 62 CD
	sbc ($E0.b),Y		; F1 E0
	bvc -86.b		; 50 AA
	and ($DD.b,X)		; 21 DD
	ora ($00.b,X)		; 01 00
	eor ($EE.b,X)		; 41 EE
	sbc ($2F.b,S),Y		; F3 2F
	tax		; AA
	ora $40F2FD.l		; 0F FD F2 40
	inc $F010.w		; EE 10 F0
	ora ($AA.b),Y		; 11 AA
	and ($DF.b,X)		; 21 DF
	sbc ($F1.b,X)		; E1 F1
	eor ($EE.b,X)		; 41 EE
	sbc ($11.b,S),Y		; F3 11
	tax		; AA
	cpx #$FD.b		; E0 FD
	sbc ($40.b)		; F2 40
	inc $E101.w		; EE 01 E1
	and $EE31AA.l		; 2F AA 31 EE
	cmp ($0F.b)		; D2 0F
	.db $42, $FD		; 42 FD
	sbc ($11.b,S),Y		; F3 11
	tax		; AA
	sbc ($ED.b,X)		; E1 ED
	ora ($40.b,X)		; 01 40
	inc $F001.w		; EE 01 F0
	ora ($AA.b)		; 12 AA
	ora ($0D.b,X)		; 01 0D
	sbc ($0F.b,X)		; E1 0F
	.db $42, $FD		; 42 FD
	sbc ($30.b)		; F2 30
	tax		; AA
	cpx #$FE.b		; E0 FE
.INDEX 8
	sep #$5F		; E2 5F
	sbc $FF11.w		; ED 11 FF
	bmi -86.b		; 30 AA
	ora $EF.b,S		; 03 EF
	bne  31.b		; D0 1F
	and ($0E.b)		; 32 0E
.ACCU 8
	sep #$21		; E2 21
	tax		; AA
	cpx #$FE.b		; E0 FE
	sep #$41		; E2 41
	cmp $30FF01.l		; CF 01 FF 30
	txs		; 9A
	inc $0B.b,X		; F6 0B
	bcs  14.b		; B0 0E
	stz $1B.b,X		; 74 1B
	cmp ($42.b,S),Y		; D3 42
	tax		; AA
	cpx #$0D.b		; E0 0D
.INDEX 8
	sep #$5F		; E2 5F
	sbc $002F.w		; ED 2F 00
	jsr $E59A.w		; 20 9A E5
	bit $F0BF.w		; 2C BF F0
	eor $2B.b		; 45 2B
	cmp ($51.b)		; D2 51
	tax		; AA
	sbc $40D30E.l,X		; FF 0E D3 40
	dec $E102.w,X		; DE 02 E1
	cop $9A.b		; 02 9A
	pei ($4B.b)		; D4 4B
	cmp $441F.w		; CD 1F 44
	and $51B2.w,X		; 3D B2 51
	tax		; AA
	beq  -2.b		; F0 FE
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	cmp $10E1F2.l		; CF F2 E1 10
	txs		; 9A
	and $0FAE5E.l		; 2F 5E AE 0F
	and $3D.b,X		; 35 3D
	lda ($42.b)		; B2 42
	ldx $22.b		; A6 22
	asl $11CD.w		; 0E CD 11
	sbc $DDCE.w,X		; FD CE DD
	beq -102.b		; F0 9A
	asl $BE6E.w,X		; 1E 6E BE
	sbc $DF5D33.l,X		; FF 33 5D DF
	adc ($AA.b,X)		; 61 AA
	beq  -2.b		; F0 FE
	sbc ($31.b),Y		; F1 31
	inc $FFF2.w		; EE F2 FF
	and ($9A.b,X)		; 21 9A
	sbc $E0BE50.l,X		; FF 50 BE E0
	trb $5E.b		; 14 5E
	cmp $EE9A61.l		; CF 61 9A EE
	ora $62B3.w,X		; 1D B3 62
	wai		; CB
	ora ($1E.b,X)		; 01 1E
	and ($9A.b),Y		; 31 9A
	ora $FECD32.l		; 0F 32 CD FE
	ora $4F.b,X		; 15 4F
	cpy #$41.b		; C0 41
	txs		; 9A
	beq  -3.b		; F0 FD
	lda ($62.b,S),Y		; B3 62
	wai		; CB
	cop $0E.b		; 02 0E
	and $9A.b,S		; 23 9A
	beq   5.b		; F0 05
	dec $15DE.w		; CE DE 15
	bmi -19.b		; 30 ED
	eor ($9A.b)		; 52 9A
	inc $B20E.w,X		; FE 0E B2
	.db $62, $DA, $10		; 62 DA 10
	asl $9A31.w,X		; 1E 31 9A
	brk $03.b		; 00 03
	inc $04B0.w,X		; FE B0 04
	rti		; 40

	cmp $FE9A33.l,X		; DF 33 9A FE
	ora $61C2.w		; 0D C2 61
	plx		; FA
	sbc $0F.b,S		; E3 0F
	tsb $9A.b		; 04 9A
	sbc $DEFE13.l,X		; FF 13 FE DE
	sbc $31.b,X		; F5 31
	bne  35.b		; D0 23
	txs		; 9A
	cpx #$0C.b		; E0 0C
	cmp ($53.b),Y		; D1 53
	nop		; EA
	sbc ($0F.b)		; F2 0F
	tsb $9A.b		; 04 9A
	asl $1E03.w		; 0E 03 1E
	cmp $FE31E4.l		; CF E4 31 FE
	and ($9A.b,S),Y		; 33 9A
	cpx #$FD.b		; E0 FD
	cmp ($42.b)		; D2 42
	plx		; FA
	sbc $0F.b,S		; E3 0F
	ora $9A.b,S		; 03 9A
	asl $1002.w,X		; 1E 02 10
	dec $41E3.w		; CE E3 41
	inc $9A32.w,X		; FE 32 9A
	asl $D10E.w		; 0E 0E D1
	.db $42, $EC		; 42 EC
	cmp ($1D.b,S),Y		; D3 1D
	jsl $011E8A.l		; 22 8A 1E 01
	bvc -87.b		; 50 A9
	dec $72.b		; C6 72
	jsr ($9A56.w,X)		; FC 56 9A
	ora $D00F.w		; 0D 0F D0
	eor $DC.b,S		; 43 DC
.INDEX 8
	sep #$1E		; E2 1E
	ora ($9A.b)		; 12 9A
	ora $DD400F.l,X		; 1F 0F 40 DD
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	ora $9A32.w,X		; 1D 32 9A
	ora $C21E.w,X		; 1D 1E C2
	and $FB.b,S		; 23 FB
	sbc ($2F.b,X)		; E1 2F
	ora ($9A.b,X)		; 01 9A
	and $CF230F.l		; 2F 0F 23 CF
	cmp ($42.b,X)		; C1 42
	sbc $0D9A14.l,X		; FF 14 9A 0D
	ora $0B12D2.l		; 0F D2 12 0B
	sep #$00		; E2 00
	ora ($9A.b,X)		; 01 9A
	rol $132E.w		; 2E 2E 13
	inc $51DF.w		; EE DF 51
	ora $1B8A13.l		; 0F 13 8A 1B
	asl $23B3.w		; 0E B3 23
	plx		; FA
	ldx #$3E.b		; A2 3E
	ora $9A.b,S		; 03 9A
	rol $F410.w		; 2E 10 F4
	sbc $51DF.w,X		; FD DF 51
	asl $8A24.w		; 0E 24 8A
	cpx $B50F.w		; EC 0F B5
	sbc $19.b,S		; E3 19
	bcs  95.b		; B0 5F
	pei ($9A.b)		; D4 9A
	and $0EE4F1.l		; 2F F1 E4 0E
	dec $FF42.w,X		; DE 42 FF
	and $9A.b,S		; 23 9A
	ora $00F0.w,X		; 1D F0 00
	sbc ($0D.b)		; F2 0D
.ACCU 16
	rep #$2F		; C2 2F
	sbc ($9A.b)		; F2 9A
	bpl  15.b		; 10 0F
	cop $1F.b		; 02 1F
	dec $E033.w		; CE 33 E0
	and $8A.b,S		; 23 8A
	ora $11EF.w		; 0D EF 11
	cpx #$29.b		; E0 29
	cpy #$6E.b		; C0 6E
	cmp ($8A.b,S),Y		; D3 8A
	eor $10F5FF.l		; 4F FF F5 10
	txs		; 9A
	eor [$CF.b],Y		; 57 CF
	lsr $9A.b		; 46 9A
	ora $0100.w,X		; 1D 00 01
	inc $D02E.w,X		; FE 2E D0
	and ($E0.b,X)		; 21 E0
	txs		; 9A
	and $4FF01F.l,X		; 3F 1F F0 4F
	cmp $D015.w,X		; DD 15 D0
	trb $8A.b		; 14 8A
	bit $6FEF.w		; 2C EF 6F
	lda $9F5D.w		; AD 5D 9F
	adc ($C2.b,X)		; 61 C2
	txs		; 9A
	and $12F11F.l		; 2F 1F F1 12
	jmp.w [$FE14]		; DC 14 FE
	and $9A.b,S		; 23 9A
	and $B030D1.l		; 2F D1 30 B0
	ora $E021D0.l,X		; 1F D0 21 E0
	txs		; 9A
	and $130F1F.l,X		; 3F 1F 0F 13
	cmp $0D03.w,X		; DD 03 0D
	and ($9A.b)		; 32 9A
	eor $3FF1.w		; 4D F1 3F
	ldy #$11.b		; A0 11
	cmp $9AFF21.l,X		; DF 21 FF 9A
	and $110F1F.l,X		; 3F 1F 0F 11
	ora $FCE5.w		; 0D E5 FC
	and ($9A.b,S),Y		; 33 9A
	bmi -46.b		; 30 D2
	and $40CD.w,X		; 3D CD 40
	bne  16.b		; D0 10
	brk $9A.b		; 00 9A
	bpl  16.b		; 10 10
	sbc $F3FDF4.l,X		; FF F4 FD F3
	tsb $9A15.w		; 0C 15 9A
	lsr $2D01.w		; 4E 01 2D
	lda $02EF21.l,X		; BF 21 EF 02
	asl $ED96.w		; 0E 96 ED
	sbc $31F1F0.l,X		; FF F0 F1 31
	sbc ($3F.b)		; F2 3F
	pea $429A.w		; F4 9A 42
	sbc ($1D.b,X)		; E1 1D
	ldx $FE31.w,Y		; BE 31 FE
	ora ($0F.b),Y		; 11 0F
	stx $DD.b,Y		; 96 DD
	sbc $22E00F.l,X		; FF 0F E0 22
	cop $20.b		; 02 20
	sbc ($9A.b)		; F2 9A
	adc ($00.b),Y		; 71 00
	sbc $31CE.w,X		; FD CE 31
	ora $0F11.w		; 0D 11 0F
	stx $9C.b		; 86 9C
	inc $DEEF.w		; EE EF DE
	and ($23.b,S),Y		; 33 23
	rts		; 60

	cpy $9A.b		; C4 9A
	stz $F0.b		; 64 F0
	dec $13B0.w,X		; DE B0 13
	sbc $8A0001.l		; EF 01 00 8A
	cop $1F.b		; 02 1F
	asl $32EE.w		; 0E EE 32
	sbc ($1A.b,X)		; E1 1A
	cmp $9A.b		; C5 9A
	adc $FF.b,X		; 75 FF
	cmp $12DF.w,X		; DD DF 12
	ora $8A00F1.l		; 0F F1 00 8A
	ora ($1F.b),Y		; 11 1F
	ora $E024DE.l		; 0F DE 24 E0
	trb $AA96.w		; 1C 96 AA
	and ($1D.b,S),Y		; 33 1D
	asl $11E0.w		; 0E E0 11
	beq   0.b		; F0 00
	brk $8A.b		; 00 8A
	ora ($2F.b),Y		; 11 2F
	inc $23FD.w,X		; FE FD 23
	ora $AAA42B.l		; 0F 2B A4 AA
	.db $42, $1E		; 42 1E
	cpx #$EF.b		; E0 EF
	ora ($0F.b),Y		; 11 0F
	ora ($F1.b,X)		; 01 F1
	txa		; 8A
	cmp ($2F.b)		; D2 2F
	asl $04EE.w		; 0E EE 04
	ora $AAA21C.l,X		; 1F 1C A2 AA
	eor $0E.b,S		; 43 0E
	sbc $1E01E0.l,X		; FF E0 01 1E
	ora $F28A10.l,X		; 1F 10 8A F2
	ora $04FD0E.l,X		; 1F 0E FD 04
	bpl  12.b		; 10 0C
	lda $AA.b,S		; A3 AA
	eor $0E.b,S		; 43 0E
	cpx #$E0.b		; E0 E0
	ora ($00.b,X)		; 01 00
	sbc ($F1.b),Y		; F1 F1
	txa		; 8A
	sbc ($2F.b),Y		; F1 2F
	sbc $2F03EE.l,X		; FF EE 03 2F
	trb $AAA2.w		; 1C A2 AA
	eor $0E.b,S		; 43 0E
	sbc $1E01E0.l,X		; FF E0 01 1E
	ora $F28B10.l,X		; 1F 10 8B F2
	bpl -32.b		; 10 E0
	dec $1013.w,X		; DE 13 10
	tsb $02A3.w		; 0C A3 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tax		; AA
	cmp $2C.b,S		; C3 2C
	sta ($4A.b),Y		; 91 4A
	eor $F5.b,S		; 43 F5
	eor $BAD2.w,Y		; 59 D2 BA
	lda ($50.b),Y		; B1 50
	cpx #$21.b		; E0 21
	asl $13FE.w		; 0E FE 13
	ldy $CDC2.w,X		; BC C2 CD
	cpy $34DF.w		; CC DF 34
	and ($32.b,S),Y		; 33 32
	ora $B5AA01.l		; 0F 01 AA B5
	pld		; 2B
	sta ($3A.b)		; 92 3A
	eor $F5.b,S		; 43 F5
	eor $BBE2.w,Y		; 59 E2 BB
	lda ($40.b),Y		; B1 40
	sbc ($21.b,X)		; E1 21
	asl $13FD.w		; 0E FD 13
	cpy $0002.w		; CC 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	cpy $31F3.w		; CC F3 31
	bpl -32.b		; 10 E0
	cpx #$01.b		; E0 01
	sbc ($96.b),Y		; F1 96
	ora ($01.b,X)		; 01 01
	ora ($11.b,X)		; 01 11
	and ($22.b,X)		; 21 22
	and ($EC.b,X)		; 21 EC
	txa		; 8A
	and $42.b,S		; 23 42
	brk $E0.b		; 00 E0
	sbc ($11.b),Y		; F1 11
	ora ($01.b),Y		; 11 01
	tax		; AA
	brk $1E.b		; 00 1E
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	asl $001F.w		; 0E 1F 00
	ora ($AA.b,X)		; 01 AA
	ora $00F110.l		; 0F 10 F1 00
	brk $1F.b		; 00 1F
	pld		; 2B
	sbc $86.b,S		; E3 86
	lsr $2F.b		; 46 2F
	sbc $F1EE.w		; ED EE F1
	ora ($23.b),Y		; 11 23
	and $A6.b,S		; 23 A6
	ora ($10.b),Y		; 11 10
	ora ($2A.b),Y		; 11 2A
	lda ($11.b)		; B2 11
	brk $0F.b		; 00 0F
	ldx #$F0FF.w		; A2 FF F0
	ora ($23.b),Y		; 11 23
	mvp $6E,$55		; 44 55 6E
	ldy $2286.w		; AC 86 22
	inc $DDCC.w		; EE CC DD
	sbc $111101.l,X		; FF 01 11 11
	ldx #$00EF.w		; A2 EF 00
	ora ($34.b)		; 12 34
	eor [$6D.b],Y		; 57 6D
	sbc $11B212.l		; EF 12 B2 11
	ora ($12.b),Y		; 11 12
	and $33.b,S		; 23 33
	mvp $EF,$3E		; 44 3E EF
	stx $00.b		; 86 00
	cmp $BDAC.w		; CD AC BD
	sbc $00F0FF.l		; EF FF F0 00
	lda ($EE.b)		; B2 EE
	sbc $1200FF.l		; EF FF 00 12
	and $44.b,S		; 23 44
	beq -74.b		; F0 B6
	bpl  16.b		; 10 10
	bpl   1.b		; 10 01
	ora ($11.b,X)		; 01 11
	cpx $8A00.w		; EC 00 8A
	tad		; 5B
	lda ($C2.b),Y		; B1 C2
	sbc ($0F.b),Y		; F1 0F
	ora $960FFF.l,X		; 1F FF 0F 96
	brk $01.b		; 00 01
	cop $12.b		; 02 12
	and ($43.b)		; 32 43
	bit $6A.b,X		; 34 6A
	ldx $D1.b,Y		; B6 D1
	ora ($01.b),Y		; 11 01
	ora ($01.b,X)		; 01 01
	ora ($DD.b,X)		; 01 DD
	bpl -118.b		; 10 8A
	and $C2C1.w		; 2D C1 C2
	sep #$0F		; E2 0F
	ora $7A000E.l		; 0F 0E 00 7A
	cpy #$100E.w		; C0 0E 10
	bpl  18.b		; 10 12
	ora ($4F.b)		; 12 4F
	bvc -74.b		; 50 B6
	and $11E1.w		; 2D E1 11
	ora ($01.b),Y		; 11 01
	ora ($CD.b,X)		; 01 CD
	bpl -122.b		; 10 86
	ror $AACB.w		; 6E CB AA
	ldy $DECD.w		; AC CD DE
	inc $7AEE.w		; EE EE 7A
	sbc $1F1FEF.l,X		; FF EF 1F 1F
	jsr $2321.w		; 20 21 23
	lsr $11B6.w		; 4E B6 11
	bit $1201.w		; 2C 01 12
	ora ($01.b,X)		; 01 01
	ldx $8610.w,Y		; BE 10 86
	eor $AADA.w		; 4D DA AA
	ldy $DDCC.w		; AC CC DD
	cmp $7AEE.w,X		; DD EE 7A
	cpy #$0FFE.w		; C0 FE 0F
	asl $1120.w,X		; 1E 20 11
	jsl $11B616.l		; 22 16 B6 11
	and ($0D.b,X)		; 21 0D
	ora ($21.b),Y		; 11 21
	bpl -81.b		; 10 AF
	ora ($8A.b,X)		; 01 8A
	stz $1F1C.w		; 9C 1C 1F
	brk $1E.b		; 00 1E
	ora $7AF0E0.l		; 0F E0 F0 7A
	cmp $00FFEF.l		; CF EF FF 00
	sbc ($01.b),Y		; F1 01
	ora ($22.b)		; 12 22
	tsx		; BA
	ora ($F1.b,X)		; 01 F1
	ora ($C1.b,X)		; 01 C1
	bmi  29.b		; 30 1D
	cmp $10.b		; C5 10
	txa		; 8A
	sta $011F1D.l,X		; 9F 1D 1F 01
	beq  -2.b		; F0 FE
	asl $6A0F.w		; 0E 0F 6A
	cpy $EEED.w		; CC ED EE
	sbc $3310F0.l,X		; FF F0 10 33
	and $B6.b,X		; 35 B6
	ora ($21.b),Y		; 11 21
	and ($2F.b,X)		; 21 2F
	cmp ($2F.b)		; D2 2F
	bcs  16.b		; B0 10
	txa		; 8A
	jsr ($2E2D.w,X)		; FC 2D 2E
	jsr $E0F0.w		; 20 F0 E0
	sbc $CF7AF0.l		; EF F0 7A CF
	cpx #$F0EF.w		; E0 EF F0
	sbc $131110.l,X		; FF 10 11 13
	ldx $11.b,Y		; B6 11
	and ($21.b,X)		; 21 21
	jsl $C21E1C.l		; 22 1C 1E C2
	ora ($96.b,X)		; 01 96
	cmp $DDDC.w,X		; DD DC DD
	inc $EEEF.w,X		; FE EF EE
	inc $7AEE.w		; EE EE 7A
	cpy #$FFEF.w		; C0 EF FF
	sbc $01F1F0.l,X		; FF F0 F1 01
	and ($BA.b,X)		; 21 BA
	ora ($F1.b,X)		; 01 F1
	ora ($F1.b,X)		; 01 F1
	ora $E135DD.l,X		; 1F DD 35 E1
	stx $ED.b,Y		; 96 ED
	stp		; DB
	cmp $FFEE.w,X		; DD EE FF
	inc $EDEE.w		; EE EE ED
	ply		; 7A
	tsa		; 3B
	beq -48.b		; F0 D0
	sbc $110FFF.l,X		; FF FF 0F 11
	ora ($C6.b),Y		; 11 C6
	ora ($10.b,X)		; 01 10
	ora ($11.b),Y		; 11 11
	bpl  43.b		; 10 2B
	sbc ($10.b,X)		; E1 10
	stx $1E.b,Y		; 96 1E
	stp		; DB
	cmp $FEEE.w		; CD EE FE
	inc $EEEE.w,X		; FE EE EE
	ply		; 7A
	lda $0E0EFE.l,X		; BF FE 0E 0E
	beq -31.b		; F0 E1
	sbc ($02.b)		; F2 02
	ldx $11.b,Y		; B6 11
	ora ($21.b),Y		; 11 21
	jsl $DD2C21.l		; 22 21 2C DD
	ora ($8A.b),Y		; 11 8A
	cmp $C3A2.w		; CD A2 C3
	cop $00.b		; 02 00
	sbc $6A0EFE.l,X		; FF FE 0E 6A
	wai		; CB
	cmp $FDED.w,X		; DD ED FD
	inc $00E0.w,X		; FE E0 00
	and $B6.b,S		; 23 B6
	ora ($11.b),Y		; 11 11
	ora ($21.b)		; 12 21
	jsl $C1101B.l		; 22 1B 10 C1
	txa		; 8A
	sta ($BC.b,S),Y		; 93 BC
	and $1F30.w		; 2D 30 1F
	asl $FFFF.w,X		; 1E FF FF
	ror A		; 6A
	ldy $DDBE.w		; AC BE DD
	sbc $EFEF.w,X		; FD EF EF
	ora $11B621.l,X		; 1F 21 B6 11
	ora ($12.b),Y		; 11 12
	ora ($13.b)		; 12 13
	jsr ($0C12.w,X)		; FC 12 0C
	stx $E2.b,Y		; 96 E2
	beq -50.b		; F0 CE
	cmp $EEEE.w,X		; DD EE EE
	inc $6AEE.w,X		; FE EE 6A
	ldy $DDDC.w		; AC DC DD
	sbc $FFFE.w		; ED FE FF
	beq  33.b		; F0 21
	ldx $11.b,Y		; B6 11
	ora ($12.b),Y		; 11 12
	ora ($13.b)		; 12 13
	cpx $2021.w		; EC 21 20
	lda ($21.b)		; B2 21
	ora ($10.b),Y		; 11 10
	ora $DDDDEE.l		; 0F EE DD DD
	cpy $BD7A.w		; CC 7A BD
	bne -34.b		; D0 DE
	asl $00FF.w		; 0E FF 00
	sbc ($10.b,X)		; E1 10
	ldx $12.b		; A6 12
	jsl $353323.l		; 22 23 33 35
	txy		; 9B
	eor $32.b,S		; 43 32
	ldx $0B.b,Y		; B6 0B
	sbc ($00.b,X)		; E1 00
	beq -16.b		; F0 F0
	sbc $860F0F.l,X		; FF 0F 0F 86
	tsb $CECD.w		; 0C CD CE
	dec $11FF.w,X		; DE FF 11
	jsl $11B644.l		; 22 44 B6 11
	ora ($21.b,X)		; 01 21
	ora ($12.b)		; 12 12
	dec $1122.w		; CE 22 11
	ldx $01.b,Y		; B6 01
	ldx $1F00.w,Y		; BE 00 1F
	ora $F0F00F.l		; 0F 0F F0 F0
	stx $BC.b		; 86 BC
	cmp $DEDE.w		; CD DE DE
	sbc $341301.l,X		; FF 01 13 34
	ldx $10.b,Y		; B6 10
	ora ($12.b),Y		; 11 12
	ora ($21.b),Y		; 11 21
	bcs  18.b		; B0 12
	ora ($B6.b),Y		; 11 B6
	bpl  11.b		; 10 0B
	sbc ($00.b,X)		; E1 00
	brk $FF.b		; 00 FF
	beq -16.b		; F0 F0
	txa		; 8A
	ldy #$0E0F.w		; A0 0F 0E
	ora $0000FF.l		; 0F FF 00 00
	ora ($B6.b,X)		; 01 B6
	bpl  17.b		; 10 11
	ora ($21.b),Y		; 11 21
	jsr $21B0.w		; 20 B0 21
	ora ($B6.b),Y		; 11 B6
	ora ($00.b,X)		; 01 00
	ldx $0011.w,Y		; BE 11 00
	sbc $8AF00F.l,X		; FF 0F F0 8A
	sta ($F0.b)		; 92 F0
	cpx #$0FFF.w		; E0 FF 0F
	beq   0.b		; F0 00
	ora $1110B6.l,X		; 1F B6 10 11
	ora ($12.b),Y		; 11 12
	and $1012B1.l		; 2F B1 12 10
	ldx $10.b,Y		; B6 10
	ora ($0B.b,X)		; 01 0B
	sbc ($10.b,X)		; E1 10
	beq  -1.b		; F0 FF
	ora $0F6F7A.l		; 0F 7A 6F 0F
	inc $FEFE.w		; EE FE FE
	beq  15.b		; F0 0F
	ora ($B6.b),Y		; 11 B6
	bpl  17.b		; 10 11
	ora ($11.b),Y		; 11 11
	rol $12C1.w		; 2E C1 12
	bpl -78.b		; 10 B2
	mvp $55,$44		; 44 44 55
	asl $0FFF.w		; 0E FF 0F
	inc $7AED.w,X		; FE ED 7A
	eor ($2E.b),Y		; 51 2E
	inc $FFFE.w,X		; FE FE FF
	cpx #$11F0.w		; E0 F0 11
	ldx $10.b,Y		; B6 10
	ora ($11.b),Y		; 11 11
	ora ($2C.b),Y		; 11 2C
	cmp ($11.b)		; D2 11
	bpl -78.b		; 10 B2
	mvp $45,$44		; 44 44 45
	eor $FFF0EF.l,X		; 5F EF F0 FF
	sbc $CC86.w		; ED 86 CC
	dec $FFEF.w		; CE EF FF
	sbc $231100.l,X		; FF 00 11 23
	ldx $01.b,Y		; B6 01
	ora ($11.b),Y		; 11 11
	ora ($1C.b),Y		; 11 1C
	sbc ($11.b,X)		; E1 11
	bpl -78.b		; 10 B2
	and ($33.b,S),Y		; 33 33
	mvp $FE,$54		; 44 54 FE
	sbc $8AEEFF.l,X		; FF FF EE 8A
	sta ($10.b),Y		; 91 10
	brk $F0.b		; 00 F0
	sbc ($E1.b,X)		; E1 E1
	beq   0.b		; F0 00
	ldx $10.b,Y		; B6 10
	ora ($11.b),Y		; 11 11
	ora ($1B.b),Y		; 11 1B
.INDEX 8
	sep #$11		; E2 11
	ora ($B2.b,X)		; 01 B2
	jsl $453323.l		; 22 23 33 45
	rol $FFEF.w,X		; 3E EF FF
	inc $6F7A.w,X		; FE 7A 6F
	pei ($F0.b)		; D4 F0
	asl $0FFE.w		; 0E FE 0F
	brk $F1.b		; 00 F1
	lda ($F0.b)		; B2 F0
	ora ($23.b),Y		; 11 23
	eor $5F.b		; 45 5F
	beq  18.b		; F0 12
	jsl $0000B6.l		; 22 B6 00 00
	ora ($01.b),Y		; 11 01
	asl $00B1.w,X		; 1E B1 00
	brk $8A.b		; 00 8A
	bcc  31.b		; 90 1F
	and $F01F1E.l		; 2F 1E 1F F0
	brk $F2.b		; 00 F2
	lda ($00.b)		; B2 00
	ora ($23.b)		; 12 23
	eor $4E.b		; 45 4E
	beq  17.b		; F0 11
	ora ($B6.b)		; 12 B6
	beq   1.b		; F0 01
	ora ($10.b,X)		; 01 10
	ora ($DC.b),Y		; 11 DC
	bpl   0.b		; 10 00
	stx $CC.b		; 86 CC
	ldy $F0CE.w		; AC CE F0
	brk $11.b		; 00 11
	ora ($23.b)		; 12 23
	ldx $01.b,Y		; B6 01
	ora ($11.b,X)		; 01 11
	ora ($EB.b),Y		; 11 EB
	ora ($11.b),Y		; 11 11
	brk $B6.b		; 00 B6
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	ora ($1C.b),Y		; 11 1C
	bne  16.b		; D0 10
	txa		; 8A
	dec $000F.w,X		; DE 0F 00
	ora ($00.b,X)		; 01 00
	beq   0.b		; F0 00
	brk $B6.b		; 00 B6
	ora ($01.b,X)		; 01 01
	ora ($11.b),Y		; 11 11
	jmp.w [$1011]		; DC 11 10
	brk $B2.b		; 00 B2
	brk $00.b		; 00 00
	ora ($23.b),Y		; 11 23
	and ($44.b,S),Y		; 33 44
	sbc $86EE.w,X		; FD EE 86
	eor $CDEB.w,X		; 5D EB CD
	bne   0.b		; D0 00
	ora ($22.b)		; 12 22
	and $B6.b,S		; 23 B6
	ora ($10.b,X)		; 01 10
	ora ($11.b),Y		; 11 11
	ldx $1011.w,Y		; BE 11 10
	brk $B2.b		; 00 B2
	brk $00.b		; 00 00
	ora ($12.b,X)		; 01 12
	and ($34.b,S),Y		; 33 34
	and $86DE.w,X		; 3D DE 86
	and ($CE.b)		; 32 CE
	cmp $F1CF.w		; CD CF F1
	ora ($23.b)		; 12 23
	bit $B2.b		; 24 B2
	ora ($12.b,X)		; 01 12
	and ($45.b,S),Y		; 33 45
	sbc $00FF.w,X		; FD FF 00
	brk $B2.b		; 00 B2
	ora $1100F0.l		; 0F F0 00 11
	jsl $DE4133.l		; 22 33 41 DE
	txa		; 8A
	sta ($DC.b,S),Y		; 93 DC
	asl $0110.w		; 0E 10 01
	bpl  15.b		; 10 0F
	bpl -78.b		; 10 B2
	ora ($22.b),Y		; 11 22
	and ($44.b,S),Y		; 33 44
	sbc $00FF.w		; ED FF 00
	ora $FFFFB2.l		; 0F B2 FF FF
	brk $11.b		; 00 11
	jsl $FD3423.l		; 22 23 34 FD
	stx $44.b		; 86 44
	eor $E0CEED.l		; 4F ED CE E0
	jsl $B23423.l		; 22 23 34 B2
	ora ($22.b),Y		; 11 22
	bit $53.b,X		; 34 53
	cmp $00FF.w,X		; DD FF 00
	ora $DEEDA2.l		; 0F A2 ED DE
	sbc $452301.l,X		; FF 01 23 45
	adc [$6C.b]		; 67 6C
	stx $B4.b,Y		; 96 B4
	and ($F0.b,X)		; 21 F0
	sbc $1201F0.l		; EF F0 01 12
	and ($B2.b,X)		; 21 B2
	ora ($23.b)		; 12 23
	bit $52.b,X		; 34 52
	dec $0FFF.w,X		; DE FF 0F
	sbc $00FFA6.l,X		; FF A6 FF 00
	ora ($01.b),Y		; 11 01
	ora ($11.b),Y		; 11 11
	ora ($3B.b),Y		; 11 3B
	ldx #$AB.b		; A2 AB
	dec $EDEE.w		; CE EE ED
	cmp $FFDE.w,X		; DD DE FF
	ora ($B6.b,X)		; 01 B6
	bpl  17.b		; 10 11
	bpl  29.b		; 10 1D
	cpy #$11.b		; C0 11
	brk $F0.b		; 00 F0
	txa		; 8A
	lda ($11.b)		; B2 11
	bpl   0.b		; 10 00
	ora ($11.b,X)		; 01 11
	sbc $02.b,S		; E3 02
	ldx #$E9.b		; A2 E9
	cmp $FEFF.w		; CD FF FE
	sbc $F0EE.w		; ED EE F0
	ora ($B6.b)		; 12 B6
	ora ($10.b,X)		; 01 10
	ora ($1B.b),Y		; 11 1B
	cmp ($10.b),Y		; D1 10
	brk $0F.b		; 00 0F
	txa		; 8A
	eor $000021.l,X		; 5F 21 00 00
	bpl   1.b		; 10 01
	ora $4BA224.l,X		; 1F 24 A2 4B
	lda $FFEF.w,X		; BD EF FF
	inc $F0EE.w		; EE EE F0
	ora ($B2.b)		; 12 B2
	jsl $5F4433.l		; 22 33 44 5F
	dec $FFFF.w,X		; DE FF FF
	inc $508A.w,X		; FE 8A 50
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	bpl  46.b		; 10 2E
	bmi -90.b		; 30 A6
	and #$12A2.w		; 29 A2 12
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	ora ($B2.b)		; 12 B2
	jsl $4E4533.l		; 22 33 45 4E
	dec $FFFF.w,X		; DE FF FF
	inc $BE86.w		; EE 86 BE
	beq  18.b		; F0 12
	ora ($32.b)		; 12 32
	bit $45.b,X		; 34 45
	eor $A2.b		; 45 A2
	ror $CB.b,X		; 76 CB
	cmp $FF0000.l,X		; DF 00 00 FF
	ora ($23.b,X)		; 01 23
	lda ($23.b)		; B2 23
	bit $45.b,X		; 34 45
	lsr $FFDE.w		; 4E DE FF
	sbc $A48AEE.l,X		; FF EE 8A A4
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	sbc $B6.b,S		; E3 B6
	ora ($DD.b),Y		; 11 DD
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ldx $01.b,Y		; B6 01
	ora ($02.b),Y		; 11 02
	stp		; DB
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	stx $FE.b		; 86 FE
	beq   1.b		; F0 01
	ora ($13.b)		; 12 13
	and $35.b,S		; 23 35
	eor $A2.b,X		; 55 A2
	eor [$6D.b],Y		; 57 6D
	ldx $11F1.w,Y		; BE F1 11
	ora ($11.b),Y		; 11 11
	and $B6.b,S		; 23 B6
	ora ($01.b),Y		; 11 01
	ora ($DB.b),Y		; 11 DB
	bpl  16.b		; 10 10
	beq -16.b		; F0 F0
	stx $9E.b		; 86 9E
	beq   1.b		; F0 01
	cop $12.b		; 02 12
	and $34.b,S		; 23 34
	stz $A6.b		; 64 A6
	and ($3A.b,X)		; 21 3A
	sta ($21.b)		; 92 21
	bpl   0.b		; 10 00
	bpl  17.b		; 10 11
	ldx $11.b,Y		; B6 11
	ora ($11.b,X)		; 01 11
	cpy $1010.w		; CC 10 10
	beq  -1.b		; F0 FF
	stx $EE.b		; 86 EE
	beq   0.b		; F0 00
	ora ($12.b),Y		; 11 12
	jsl $B25534.l		; 22 34 55 B2
	and $43.b,S		; 23 43
	inc $11F0.w		; EE F0 11
	ora ($11.b),Y		; 11 11
	ora ($B6.b)		; 12 B6
	ora ($01.b),Y		; 11 01
	ora ($BD.b),Y		; 11 BD
	bpl  31.b		; 10 1F
	ora $A38AF0.l		; 0F F0 8A A3
	beq   0.b		; F0 00
	sbc $10001F.l,X		; FF 1F 00 10
	ora ($A6.b)		; 12 A6
	ora ($22.b)		; 12 22
	tax		; AA
	jsl $010021.l		; 22 21 00 01
	ora ($B2.b,X)		; 01 B2
	and ($45.b,S),Y		; 33 45
	eor $FD.b,X		; 55 FD
	sbc $DDFEFF.l,X		; FF FF FE DD
	txa		; 8A
	rep #$0F		; C2 0F
	brk $F0.b		; 00 F0
	beq   0.b		; F0 00
	bpl   3.b		; 10 03
	lda ($22.b)		; B2 22
	bit $3E.b,X		; 34 3E
	cpx #$11.b		; E0 11
	jsl $BA2222.l		; 22 22 22 BA
	bpl   0.b		; 10 00
	ora $2FC5.w,X		; 1D C5 2F
	ora $7A100F.l		; 0F 0F 10 7A
	sta $0F.b,X		; 95 0F
	ora $E000.w		; 0D 00 E0
	sbc ($02.b),Y		; F1 02
	ora $B6.b,S		; 03 B6
	ora ($11.b),Y		; 11 11
	tsb $11F1.w		; 0C F1 11
	brk $10.b		; 00 10
	ora ($BA.b,X)		; 01 BA
	sbc ($01.b),Y		; F1 01
	inc $2FD4.w,X		; FE D4 2F
	ora $6AF100.l		; 0F 00 F1 6A
	ora $FC1D.w		; 0D 1D FC
	sbc $22FFD0.l		; EF D0 FF 22
	and ($A6.b,S),Y		; 33 A6
	and ($22.b,X)		; 21 22
	dec A		; 3A
	ldx #$22.b		; A2 22
	ora ($01.b),Y		; 11 01
	ora ($B6.b,X)		; 01 B6
	bpl  17.b		; 10 11
	ora $10C0.w,X		; 1D C0 10
	brk $FF.b		; 00 FF
	beq -118.b		; F0 8A
	sta ($00.b,S),Y		; 93 00
	sbc $1FE0F1.l,X		; FF F1 E0 1F
	ora ($02.b,X)		; 01 02
	tsx		; BA
	brk $01.b		; 00 01
	asl $10C5.w		; 0E C5 10
	ora $B61F00.l		; 0F 00 1F B6
	ora ($10.b),Y		; 11 10
	pld		; 2B
	cmp ($01.b),Y		; D1 01
	beq  -1.b		; F0 FF
	beq -118.b		; F0 8A
	ldx #$0F.b		; A2 0F
	ora $F1F0F0.l		; 0F F0 F0 F1
	brk $10.b		; 00 10
	ldx $11.b,Y		; B6 11
	cop $10.b		; 02 10
	dec $1111.w,X		; DE 11 11
	ora ($00.b,X)		; 01 00
	ldx $11.b,Y		; B6 11
	ora ($1B.b,X)		; 01 1B
	cmp ($10.b),Y		; D1 10
	ora $86FFF0.l		; 0F F0 FF 86
	inc $FFEF.w		; EE EF FF
	beq -15.b		; F0 F1
	ora ($23.b,X)		; 01 23
	mvp $12,$A6		; 44 A6 12
	jsl $12CA23.l		; 22 23 CA 12
	jsl $B60111.l		; 22 11 01 B6
	bpl  17.b		; 10 11
	xce		; FB
	sbc ($10.b),Y		; F1 10
	beq  -1.b		; F0 FF
	beq -122.b		; F0 86
	lda $FFFE.w		; AD FE FF
	sbc $230100.l,X		; FF 00 01 23
	and $AA.b,X		; 35 AA
	ora ($F1.b,X)		; 01 F1
	ora ($DB.b,X)		; 01 DB
	mvp $F1,$1F		; 44 1F F1
	sbc ($BA.b),Y		; F1 BA
	ora ($F1.b,X)		; 01 F1
	dec $0F41.w,X		; DE 41 0F
	ora $86F001.l		; 0F 01 F0 86
	inc $EFEF.w		; EE EF EF
	sbc $2301F0.l,X		; FF F0 01 23
	and $A6.b,X		; 35 A6
	ora ($22.b)		; 12 22
	jsl $32C22A.l		; 22 2A C2 32
	and ($11.b,X)		; 21 11
	ldx $01.b,Y		; B6 01
	bpl -36.b		; 10 DC
	ora ($00.b),Y		; 11 00
	sbc $8AFF0F.l,X		; FF 0F FF 8A
	adc $0EFF.w,X		; 7D FF 0E
	ora $00F10F.l		; 0F 0F F1 00
	cop $A6.b		; 02 A6
	ora ($22.b)		; 12 22
	jsl $33A23B.l		; 22 3B A2 33
	ora ($11.b),Y		; 11 11
	ldx $10.b,Y		; B6 10
	bpl -51.b		; 10 CD
	ora ($00.b),Y		; 11 00
	sbc $8AFFF0.l,X		; FF F0 FF 8A
	adc $F0FF.w,X		; 7D FF F0
	sbc $100FF0.l,X		; FF F0 0F 10
	ora ($A6.b,X)		; 01 A6
	ora ($22.b)		; 12 22
	jsl $33A13C.l		; 22 3C A1 33
	and ($11.b,X)		; 21 11
	ldx $01.b,Y		; B6 01
	bpl -66.b		; 10 BE
	ora ($0F.b),Y		; 11 0F
	ora $8A0FFF.l		; 0F FF 0F 8A
	eor $FFF0FF.l,X		; 5F FF F0 FF
	beq  15.b		; F0 0F
	bpl   1.b		; 10 01
	ldx $12.b		; A6 12
	jsl $913D22.l		; 22 22 3D 91
	.db $42, $21		; 42 21
	ora ($BA.b),Y		; 11 BA
	brk $1F.b		; 00 1F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	asl $011F.w		; 0E 1F 01
	beq -118.b		; F0 8A
	eor $0EFFE0.l		; 4F E0 FF 0E
	brk $F0.b		; 00 F0
	ora ($00.b,X)		; 01 00
	ldx $12.b		; A6 12
	jsl $923D22.l		; 22 22 3D 92
	and ($21.b)		; 32 21
	ora ($BA.b),Y		; 11 BA
	brk $1F.b		; 00 1F
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	beq  15.b		; F0 0F
	brk $1F.b		; 00 1F
	tda		; 7B
	rti		; 40

	inc $EFFE.w,X		; FE FE EF
	cpx #$11FF.w		; E0 FF 11
	ora ($02.b),Y		; 11 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4A.b		; 00 4A
	brk $00.b		; 00 00
	brk $51.b		; 00 51
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	rol A		; 2A
	rti		; 40

	and $32.b,S		; 23 32
	cpx #$C50F.w		; E0 0F C5
	inc A		; 1A
	sbc ($3A.b),Y		; F1 3A
	brk $E0.b		; 00 E0
	sbc $BBDE1E.l,X		; FF 1E DE BB
	phx		; DA
	tyx		; BB
	lsr A		; 4A
	cmp $DBDD.w,X		; DD DD DB
	cpy $CABB.w		; CC BB CA
	tsx		; BA
	lda #$DC5A.w		; A9 5A DC
	cmp $CCDB.w		; CD DB CC
	ldy $BBBB.w,X		; BC BB BB
	lda #$DD6A.w		; A9 6A DD
	jmp.w [$CCDC]		; DC DC CC
	cpy $BCBB.w		; CC BB BC
	tyx		; BB
	ply		; 7A
	cmp $DDDE.w,X		; DD DE DD
	cmp $DDCD.w		; CD CD DD
	cpy $7ACC.w		; CC CC 7A
	jmp.w [$DBCD]		; DC CD DB
	cmp $CCDC.w		; CD DC CC
	cmp $6ADD.w,X		; DD DD 6A
	lda #$BBAB.w		; A9 AB BB
	tyx		; BB
	tyx		; BB
	cpy $DDCC.w		; CC CC DD
	ply		; 7A
	sbc $0100FF.l,X		; FF FF 00 01
	ora ($22.b)		; 12 22
	and $44.b,S		; 23 44
	ply		; 7A
	eor $45.b		; 45 45
	eor $56.b,X		; 55 56
	adc $56.b		; 65 56
	ror $55.b		; 66 55
	ply		; 7A
	ror $54.b		; 66 54
	eor $44.b,X		; 55 44
	mvn $44,$33		; 54 33 44
	and ($6A.b)		; 32 6A
	eor $44.b		; 45 44
	eor $22.b,S		; 43 22
	jsl $101121.l		; 22 21 11 10
	dec A		; 3A
	sbc ($25.b,X)		; E1 25
	ora ($01.b),Y		; 11 01
	bpl  16.b		; 10 10
	brk $0F.b		; 00 0F
	rol A		; 2A
	asl $EFFD.w		; 0E FD EF
	cpy #$0010.w		; C0 10 00
	ora $BE2AFD.l,X		; 1F FD 2A BE
	phx		; DA
	wai		; CB
	jmp.w [$01FA]		; DC FA 01
	sbc ($02.b,X)		; E1 02
	rol A		; 2A
	asl $F000.w		; 0E 00 F0
	lsr $D0E0.w,X		; 5E E0 D0
	sbc ($E0.b)		; F2 E0
	rol A		; 2A
	eor $12.b,S		; 43 12
	and ($DF.b,S),Y		; 33 DF
	bpl -75.b		; 10 B5
	inc A		; 1A
	sbc ($3A.b),Y		; F1 3A
	brk $E0.b		; 00 E0
	sbc $BBDE1E.l,X		; FF 1E DE BB
	phx		; DA
	tyx		; BB
	lsr A		; 4A
	cmp $DBDD.w,X		; DD DD DB
	cpy $CABB.w		; CC BB CA
	tsx		; BA
	lda #$DC5A.w		; A9 5A DC
	cmp $CCDB.w		; CD DB CC
	ldy $BBBB.w,X		; BC BB BB
	lda #$DD6A.w		; A9 6A DD
	jmp.w [$CCDC]		; DC DC CC
	cpy $BCBB.w		; CC BB BC
	tyx		; BB
	ply		; 7A
	cmp $DDDE.w,X		; DD DE DD
	cmp $DDCD.w		; CD CD DD
	cpy $7ACC.w		; CC CC 7A
	jmp.w [$DBCD]		; DC CD DB
	cmp $CCDC.w		; CD DC CC
	cmp $6ADD.w,X		; DD DD 6A
	lda #$BBAB.w		; A9 AB BB
	tyx		; BB
	tyx		; BB
	cpy $DDCC.w		; CC CC DD
	ply		; 7A
	sbc $0100FF.l,X		; FF FF 00 01
	ora ($22.b)		; 12 22
	and $44.b,S		; 23 44
	ply		; 7A
	eor $45.b		; 45 45
	eor $56.b,X		; 55 56
	adc $56.b		; 65 56
	ror $55.b		; 66 55
	ply		; 7A
	ror $54.b		; 66 54
	eor $44.b,X		; 55 44
	mvn $44,$33		; 54 33 44
	and ($6A.b)		; 32 6A
	eor $44.b		; 45 44
	eor $22.b,S		; 43 22
	jsl $101121.l		; 22 21 11 10
	dec A		; 3A
	sbc ($25.b,X)		; E1 25
	ora ($01.b),Y		; 11 01
	bpl  16.b		; 10 10
	brk $0F.b		; 00 0F
	rol A		; 2A
	asl $EFFD.w		; 0E FD EF
	cpy #$0010.w		; C0 10 00
	ora $BE2BFD.l,X		; 1F FD 2B BE
	phx		; DA
	wai		; CB
	jmp.w [$01FA]		; DC FA 01
	sbc ($02.b,X)		; E1 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $6A.b		; 00 6A
	ora $AACCCE.l		; 0F CE CC AA
	tsx		; BA
	plb		; AB
	ldy $7ACB.w,X		; BC CB 7A
	sbc $EEEEEF.l		; EF EF EE EE
	dec $CCDC.w,X		; DE DC CC
	tsx		; BA
	ply		; 7A
	plb		; AB
	tax		; AA
	txy		; 9B
	tax		; AA
	ldy $EDCC.w,X		; BC CC ED
	sbc $32116A.l,X		; FF 6A 11 32
	eor $65.b		; 45 65
	lsr $65.b,X		; 56 65
	eor $44.b,X		; 55 44
	ply		; 7A
	jsl $222211.l		; 22 11 22 22
	and ($34.b)		; 32 34
	eor $55.b		; 45 55
	ply		; 7A
	lsr $66.b,X		; 56 66
	ror $55.b,X		; 76 55
	adc $42.b		; 65 42
	and ($10.b,S),Y		; 33 10
	rtl		; 6B

	bpl -35.b		; 10 DD
	ldy $ABBA.w,X		; BC BA AB
	tsx		; BA
	ldy $02CC.w		; AC CC 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsx		; BA
	inc $1F.b		; E6 1F
	sbc $E3FD0F.l,X		; FF 0F FD E3
	eor ($1E.b)		; 52 1E
	ldx $24.b,Y		; B6 24
	.db $42, $ED		; 42 ED
	tax		; AA
	trb $40.b		; 14 40
	dec $AA12.w		; CE 12 AA
	dex		; CA
	ora $2F.b,S		; 03 2F
	ora $1101EE.l		; 0F EE 01 11
	bpl -70.b		; 10 BA
	cop $10.b		; 02 10
	cpx #$EEF0.w		; E0 F0 EE
	cmp ($53.b,S),Y		; D3 53
	ora $13B7.w,X		; 1D B7 13
	.db $42, $ED		; 42 ED
	plb		; AB
	bit $30.b		; 24 30
	dec $0212.w		; CE 12 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $FC.b		; 86 FC
	cmp ($1D.b)		; D2 1D
	cmp $34F000.l,X		; DF 00 F0 34
	ora ($8A.b),Y		; 11 8A
	sbc $F02101.l,X		; FF 01 21 F0
	ora $CF3001.l,X		; 1F 01 30 CF
	stx $34.b		; 86 34
	ora $22E0DB.l,X		; 1F DB E0 22
	sbc $CDFD.w,X		; FD FD CD
	txa		; 8A
	sbc ($4F.b,X)		; E1 4F
	cmp $120CF3.l,X		; DF F3 0C 12
	sbc $408ADE.l		; EF DE 8A 40
	cmp ($10.b)		; D2 10
	asl $BBF1.w,X		; 1E F1 BB
	mvp $86,$E0		; 44 E0 86
	and $5413F1.l		; 2F F1 13 54
	bmi -17.b		; 30 EF
	sbc $8A23.w		; ED 23 8A
.INDEX 16
	rep #$1E		; C2 1E
	bit $ED.b,X		; 34 ED
	cpx #$F410.w		; E0 10 F4
	and $1286.w,X		; 3D 86 12
	brk $11.b		; 00 11
	jsr $00E0.w		; 20 E0 00
	ora $1F9A05.l,X		; 1F 05 9A 1F
	inc $0E02.w		; EE 02 0E
	ora ($FE.b,S),Y		; 13 FE
	inc $9A34.w		; EE 34 9A
	sbc ($1D.b),Y		; F1 1D
	cpx #$F0FF.w		; E0 FF F0
	jsr $0011.w		; 20 11 00
	txa		; 8A
	rol $EBE0.w		; 2E E0 EB
	sbc ($54.b)		; F2 54
	sbc ($1B.b),Y		; F1 1B
	tsb $86.b		; 04 86
	brk $32.b		; 00 32
	bit $0E.b,X		; 34 0E
	sbc $0BF3.w,X		; FD F3 0B
	cmp $108A.w		; CD 8A 10
	cmp ($20.b)		; D2 20
	inc $FD03.w,X		; FE 03 FD
	beq   2.b		; F0 02
	stx $00.b,Y		; 96 00
	bpl -34.b		; 10 DE
	beq  67.b		; F0 43
	cop $1D.b		; 02 1D
	sbc $41A18A.l		; EF 8A A1 41
	and ($ED.b,X)		; 21 ED
	cmp ($5F.b)		; D2 5F
	lda $02960F.l		; AF 0F 96 02
	bpl  33.b		; 10 21
	ora ($0E.b,X)		; 01 0E
	cmp $2014.w		; CD 14 20
	brk $00.b		; 00 00
	cpy #$C0FF.w		; C0 FF C0
	adc $9A8000.l,X		; 7F 00 80 9A
	sbc ($00.b)		; F2 00
	jsr $2EB1.w		; 20 B1 2E
	ora ($F2.b)		; 12 F2
	and $E186.w,X		; 3D 86 E1
	ora $3DD3FD.l,X		; 1F FD D3 3D
	ldy $02CC.w,X		; BC CC 02
	stx $01.b,Y		; 96 01
	jsr $DDFF.w		; 20 FF DD
	ora ($01.b)		; 12 01
	tsb $96CF.w		; 0C CF 96
	ora ($32.b,S),Y		; 13 32
	eor ($E2.b,X)		; 41 E2
	and $30D10F.l		; 2F 0F D1 30
	txs		; 9A
	brk $D0.b		; 00 D0
	.db $42, $1E		; 42 1E
	cmp ($2E.b),Y		; D1 2E
	sbc ($EE.b),Y		; F1 EE
	txa		; 8A
	asl $3F.b,X		; 16 3F
	cmp ($52.b,X)		; C1 52
	lda $F32F.w,X		; BD 2F F3
	ora $0196.w		; 0D 96 01
	inc $1212.w,X		; FE 12 12
	asl $E001.w,X		; 1E 01 E0
	trb $F59A.w		; 1C 9A F5
	ora $F0F10F.l		; 0F 0F F1 F0
	ora $8ABC12.l,X		; 1F 12 BC 8A
	eor ($22.b,S),Y		; 53 22
	beq  -4.b		; F0 FC
	sbc $11D032.l		; EF 32 D0 11
	txs		; 9A
	rol $EBF3.w		; 2E F3 EB
	cop $F2.b		; 02 F2
	and $8A00F0.l		; 2F F0 00 8A
	.db $62, $CE, $31		; 62 CE 31
	cmp $E41B03.l,X		; DF 03 1B E4
	ora ($8A.b),Y		; 11 8A
	jmp $5DA4.w		; 4C A4 5D
	ora $FA.b,X		; 15 FA
	cmp ($32.b,X)		; C1 32
	sbc $030F8A.l,X		; FF 8A 0F 03
	brk $0A.b		; 00 0A
	dec $2E.b,X		; D6 2E
	inc $9AF3.w,X		; FE F3 9A
	bpl -15.b		; 10 F1
	sbc $2402.w,X		; FD 02 24
	ora $CF2E.w		; 0D 2E CF
	stx $CC.b,Y		; 96 CC
	cmp $FFE0.w,X		; DD E0 FF
	jsl $4F2411.l		; 22 11 24 4F
	stx $FE.b,Y		; 96 FE
	cpy #$4420.w		; C0 20 44
	sbc $00140D.l		; EF 0D 14 00
	txs		; 9A
	inc $E421.w,X		; FE 21 E4
	trb $C011.w		; 1C 11 C0
	ora $9A53.w		; 0D 53 9A
	dec $1FF0.w,X		; DE F0 1F
	sbc ($01.b,X)		; E1 01
	ora $9ACFF0.l,X		; 1F F0 CF 9A
	mvn $AE,$20		; 54 20 AE
	bit $ED05.w		; 2C 05 ED
	.db $42, $F1		; 42 F1
	stx $20.b,Y		; 96 20
	cpx $31E2.w		; EC E2 31
	and ($01.b)		; 32 01
	and $328AEE.l		; 2F EE 8A 32
	jmp.w [$4301]		; DC 01 43
	cmp $6D03.w		; CD 03 6D
	ldy $96.b,X		; B4 96
	ora $C0FE.w		; 0D FE C0
	ora $FEEE33.l		; 0F 33 EE FE
	ora ($9A.b,X)		; 01 9A
	beq  31.b		; F0 1F
	cpx #$0400.w		; E0 00 04
	and ($DB.b)		; 32 DB
	cmp ($9A.b,S),Y		; D3 9A
	asl $0034.w		; 0E 34 00
	xce		; FB
	sbc ($F3.b)		; F2 F3
	eor $1D8612.l		; 4F 12 86 1D
	rti		; 40

	sbc ($DB.b,S),Y		; F3 DB
	ora $ABE2.w		; 0D E2 AB
	mvp $21,$96		; 44 96 21
	cmp $1E12.w,X		; DD 12 1E
	dec $CEFC.w		; CE FC CE
	ora ($86.b,X)		; 01 86
	bit $2B.b,X		; 34 2B
	lda $B01EEE.l		; AF EE 1E B0
	asl $9A13.w,X		; 1E 13 9A
	cop $1F.b		; 02 1F
	ora $033FB0.l		; 0F B0 3F 03
	ora ($1E.b),Y		; 11 1E
	txa		; 8A
	cmp $65D1.w,X		; DD D1 65
	beq  59.b		; F0 3B
	lda ($13.b,S),Y		; B3 13
	trb $E08A.w		; 1C 8A E0
	bne  50.b		; D0 32
	ora ($F0.b),Y		; 11 F0
	and $8A2AA1.l,X		; 3F A1 2A 8A
	sbc ($DE.b,S),Y		; F3 DE
	rti		; 40

	sbc ($FC.b)		; F2 FC
	ora ($ED.b,S),Y		; 13 ED
	and ($96.b,X)		; 21 96
	ora ($31.b,X)		; 01 31
	and ($DD.b,X)		; 21 DD
	ora ($34.b),Y		; 11 34
	and $3F.b,S		; 23 3F
	txa		; 8A
	asl $E0.b		; 06 E0
	jsr $BD52.w		; 20 52 BD
	jsr ($1037.w,X)		; FC 37 10
	txa		; 8A
	eor $2F00B0.l		; 4F B0 00 2F
	cmp ($10.b,X)		; C1 10
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	txs		; 9A
	cpx $2F.b		; E4 2F
	ora $0FFEEF.l,X		; 1F EF FE 0F
	cop $10.b		; 02 10
	stx $2E.b		; 86 2E
	ldx $21DD.w,Y		; BE DD 21
	cpx #$21.b		; E0 21
	dec $8A32.w		; CE 32 8A
	eor [$ED.b]		; 47 ED
	jmp.w [$D123]		; DC 23 D1
	rol $31F6.w,X		; 3E F6 31
	txs		; 9A
	and $40FFC0.l		; 2F C0 FF 40
	pea $2E0E.w		; F4 0E 2E
	sbc ($9A.b,X)		; E1 9A
	asl $2FF1.w		; 0E F1 2F
	ora ($EE.b,X)		; 01 EE
	and $20.b,S		; 23 20
	jmp.w [$128A]		; DC 8A 12
	cmp ($FB.b)		; D2 FB
	mvp $09,$C0		; 44 C0 09
	ora $02.b,S		; 03 02
	txa		; 8A
	pld		; 2B
	trb $EE.b		; 14 EE
	ora $1C13F3.l,X		; 1F F3 13 1C
	cpy #$8A.b		; C0 8A
	ora ($23.b)		; 12 23
	ora $1BDF45.l		; 0F 45 DF 1B
	cpy #$24.b		; C0 24
	txa		; 8A
	bmi  51.b		; 30 33
	cpx $02EF.w		; EC EF 02
	cmp $A151.w,X		; DD 51 A1
	txa		; 8A
	and $1204.w,X		; 3D 04 12
	trb $DCD1.w		; 1C D1 DC
	ora ($02.b,X)		; 01 02
	txa		; 8A
	asl $C10E.w,X		; 1E 0E C1
	rol $0E13.w		; 2E 13 0E
	bpl -33.b		; 10 DF
	txa		; 8A
	eor ($FD.b)		; 52 FD
	ora $1B.b		; 05 1B
	cop $04.b		; 02 04
	ora $9A33.w		; 0D 33 9A
	ora ($F0.b,X)		; 01 F0
	ora $2FE3.w		; 0D E3 2F
	ora ($2F.b)		; 12 2F
	cpy #$8A.b		; C0 8A
	inc $A42F.w,X		; FE 2F A4
	phk		; 4B
	sbc ($E0.b,S),Y		; F3 E0
	eor ($22.b,X)		; 41 22
	txa		; 8A
	cmp $E3DE.w,Y		; D9 DE E3
	and ($2D.b),Y		; 31 2D
	sbc $C9.b,S		; E3 C9
	and ($7A.b,S),Y		; 33 7A
	ora $FD.b		; 05 FD
	sbc ($4E.b)		; F2 4E
	lda $5D.b,S		; A3 5D
	cmp $51.b,S		; C3 51
	txa		; 8A
	cmp ($51.b),Y		; D1 51
	cpx $1E.b		; E4 1E
	cpx #$04.b		; E0 04
	ora $9ACF.w,X		; 1D CF 9A
	and ($01.b,X)		; 21 01
	ora ($FD.b)		; 12 FD
	beq   1.b		; F0 01
	inc $8A30.w		; EE 30 8A
	sta ($5E.b),Y		; 91 5E
	and $F1.b,S		; 23 F1
	bit $DCAF.w,X		; 3C AF DC
	lsr $8A.b		; 46 8A
	ora ($DD.b),Y		; 11 DD
	asl $02E0.w		; 0E E0 02
	eor ($DE.b,X)		; 41 DE
	jsl $D21F8A.l		; 22 8A 1F D2
	tas		; 1B
	and $F0.b		; 25 F0
	and ($0F.b)		; 32 0F
	and ($8A.b)		; 32 8A
	dec $1F21.w		; CE 21 1F
	dec $6004.w		; CE 04 60
	cmp ($7F.b,X)		; C1 7F
	txa		; 8A
	lda $2CEF.w		; AD EF 2C
	cpy $2F.b		; C4 2F
	bmi -31.b		; 30 E1
	ora ($8A.b,X)		; 01 8A
	lsr $FCBF.w		; 4E BF FC
	ora ($35.b,X)		; 01 35
	bit $1D9F.w,X		; 3C 9F 1D
	txa		; 8A
	cop $04.b		; 02 04
	and $F011.w		; 2D 11 F0
	sbc ($1D.b,X)		; E1 1D
	bit $8A.b		; 24 8A
	cmp ($21.b),Y		; D1 21
	bmi -29.b		; 30 E3
	asl $0E02.w,X		; 1E 02 0E
	sbc $33018A.l		; EF 8A 01 33
	tsb $FE15.w		; 0C 15 FE
	xce		; FB
	cmp ($EF.b)		; D2 EF
	txa		; 8A
	and $141FF2.l		; 2F F2 1F 14
	jsr ($E3FE.w,X)		; FC FE E3
	asl $048A.w		; 0E 8A 04
	rti		; 40

	ldy $D42E.w		; AC 2E D4
	asl $F352.w		; 0E 52 F3
	ply		; 7A
	plx		; FA
	asl $27E0.w,X		; 1E E0 27
	tsb $0365.w		; 0C 65 03
	ora $140F8A.l,X		; 1F 8A 0F 14
	sbc $23EF.w		; ED EF 23
	sbc $8ADF41.l,X		; FF 41 DF 8A
	bmi -19.b		; 30 ED
	beq -20.b		; F0 EC
	ora ($E3.b),Y		; 11 E3
	jmp $1D8AD3.l		; 5C D3 8A 1D
	brk $F2.b		; 00 F2
	pld		; 2B
	sbc $10.b		; E5 10
	plx		; FA
	sbc $8A.b,S		; E3 8A
	ora ($0D.b,X)		; 01 0D
	sbc ($54.b,S),Y		; F3 54
	jmp.w [$F110]		; DC 10 F1
	cpx #$8A.b		; E0 8A
	adc $043DD5.l		; 6F D5 3D 04
	and $0B04.w		; 2D 04 0B
	cmp $2B368A.l		; CF 8A 36 2B
	sbc $1C.b,X		; F5 1C
	sbc ($FF.b)		; F2 FF
	and $8AC0.w		; 2D C0 8A
	ora $EE33FE.l		; 0F FE 33 EE
	ora $FB1300.l,X		; 1F 00 13 FB
	txa		; 8A
	ora [$0A.b]		; 07 0A
	cmp ($00.b)		; D2 00
	ora $25DE10.l,X		; 1F 10 DE 25
	txs		; 9A
	and $2EE000.l		; 2F 00 E0 2E
	ora ($EF.b,S),Y		; 13 EF
	and ($01.b,X)		; 21 01
	txa		; 8A
	ora ($EE.b)		; 12 EE
	ora ($EC.b),Y		; 11 EC
	sbc $6F.b		; E5 6F
	sbc ($EE.b),Y		; F1 EE
	txs		; 9A
	bpl -33.b		; 10 DF
	.db $42, $EE		; 42 EE
	sbc $2FE011.l		; EF 11 E0 2F
	txs		; 9A
	bne  32.b		; D0 20
	ora ($0C.b,S),Y		; 13 0C
	pea $D00D.w		; F4 0D D0
	ora ($96.b)		; 12 96
	ora ($0F.b),Y		; 11 0F
	sbc $F3DC.w		; ED DC F3
	and ($31.b)		; 32 31
	ora ($8A.b,X)		; 01 8A
	sbc ($4C.b)		; F2 4C
	pea $0211.w		; F4 11 02
	lsr $3D92.w,X		; 5E 92 3D
	txa		; 8A
	sbc $CC3025.l		; EF 25 30 CC
	and ($AD.b)		; 32 AD
	and ($30.b,S),Y		; 33 30
	txs		; 9A
	inc $1FE0.w		; EE E0 1F
	ora ($FE.b,X)		; 01 FE
	brk $33.b		; 00 33
	trb $C58A.w		; 1C 8A C5
	bit $07BB.w,X		; 3C BB 07
	eor ($0D.b),Y		; 51 0D
	ldx $8A1F.w		; AE 1F 8A
	asl $50.b,X		; 16 50
	rol $4FA1.w		; 2E A1 4F
	bpl -31.b		; 10 E1
	and ($8A.b,X)		; 21 8A
	jsr $CD32.w		; 20 32 CD
	jsr $E30F.w		; 20 0F E3
	eor ($DB.b)		; 52 DB
	txa		; 8A
	and $9D.b,S		; 23 9D
	eor $EDFC06.l,X		; 5F 06 FC ED
	bne  -2.b		; D0 FE
	txs		; 9A
	ora ($FF.b,X)		; 01 FF
	bit $0E.b,X		; 34 0E
	beq  14.b		; F0 0E
	sbc $219A03.l		; EF 03 9A 21
	bpl -51.b		; 10 CD
	brk $10.b		; 00 10
	trb $3F.b		; 14 3F
	sbc $2EE18A.l,X		; FF 8A E1 2E
	beq  48.b		; F0 30
	sbc $3E.b,X		; F5 3E
	bpl -33.b		; 10 DF
	txa		; 8A
	ora ($00.b,X)		; 01 00
	bvc -33.b		; 50 DF
	beq  46.b		; F0 2E
	sbc ($D0.b),Y		; F1 D0
	txs		; 9A
	jsr $CE00.w		; 20 00 CE
	ora $031FE2.l,X		; 1F E2 1F 03
	and $FCF19A.l		; 2F 9A F1 FC
	cpx #$23.b		; E0 23
	bpl  17.b		; 10 11
	jmp.w [$9AE2]		; DC E2 9A
	brk $12.b		; 00 12
	eor ($F0.b,X)		; 41 F0
	sbc $1FF11F.l,X		; FF 1F F1 1F
	txa		; 8A
	inc $4D.b,X		; F6 4D
	sbc ($0F.b)		; F2 0F
	inc $4D04.w,X		; FE 04 4D
.INDEX 16
	rep #$9A		; C2 9A
	ora $2EE020.l		; 0F 20 E0 2E
	cmp ($41.b),Y		; D1 41
	dec $9AFE.w		; CE FE 9A
	ora ($00.b,X)		; 01 00
	and ($01.b,X)		; 21 01
	asl $DDE0.w,X		; 1E E0 DD
	and $9A.b,X		; 35 9A
	jsr $1EEF.w		; 20 EF 1E
	lda $120032.l,X		; BF 32 00 12
	jsl $CD0E8A.l		; 22 8A 0E CD
.INDEX 8
	sep #$1F		; E2 1F
	inc $6D.b,X		; F6 6D
	sbc ($F3.b,X)		; E1 F3
	txs		; 9A
	asl $4FD2.w,X		; 1E D2 4F
	cmp $DE4101.l,X		; DF 01 41 DE
	bpl -102.b		; 10 9A
	cmp $EEFE33.l		; CF 33 FE EE
	sbc ($20.b,X)		; E1 20
	ora ($F0.b),Y		; 11 F0
	txs		; 9A
	rol $E0C0.w,X		; 3E C0 E0
	jsl $11BC43.l		; 22 43 BC 11
	sbc $039A.w		; ED 9A 03
	bpl  31.b		; 10 1F
	bit $20.b		; 24 20
	sbc $11EF.w		; ED EF 11
	txa		; 8A
	trb $4F.b		; 14 4F
	cpx #$03.b		; E0 03
	lsr $46AC.w		; 4E AC 46
	nop		; EA
	txs		; 9A
	sbc ($41.b)		; F2 41
	sbc $01EE0F.l		; EF 0F EE 01
	and ($FD.b,X)		; 21 FD
	txs		; 9A
	sbc $220012.l		; EF 12 00 22
	sbc $F2CF.w,X		; FD CF F2
	.db $42, $8A		; 42 8A
	and ($BB.b)		; 32 BB
	sbc $D50E.w		; ED 0E D5
	rts		; 60

	asl $9AD6.w		; 0E D6 9A
	eor ($FE.b)		; 52 FE
	jmp.w [$3202]		; DC 02 32
	asl $1210.w		; 0E 10 12
	txs		; 9A
	asl $01FE.w,X		; 1E FE 01
	ora $0F43E0.l,X		; 1F E0 43 0F
	inc $FD9A.w,X		; FE 9A FD
.INDEX 8
	sep #$10		; E2 10
	and $4EE1EF.l		; 2F EF E1 4E
	sbc $9A.b,X		; F5 9A
	inc A		; 1A
	ldy #$21.b		; A0 21
	and $0E.b,X		; 35 0E
	sbc $9AF0EF.l,X		; FF EF F0 9A
	beq  66.b		; F0 42
	cpx #$F0.b		; E0 F0
	mvp $DB,$00		; 44 00 DB
	sbc ($8A.b)		; F2 8A
	adc $DF.b,S		; 63 DF
	ora ($34.b)		; 12 34
	asl $1DBE.w,X		; 1E BE 1D
	sbc ($8A.b,S),Y		; F3 8A
	brk $63.b		; 00 63
	sbc ($1B.b),Y		; F1 1B
	stz $E00F.w,X		; 9E 0F E0
	eor $A6.b,X		; 55 A6
	ora $1201FF.l		; 0F FF 01 12
	and ($DC.b),Y		; 31 DC
	beq  19.b		; F0 13
	txs		; 9A
	asl $D01E.w,X		; 1E 1E D0
	sbc $FF3210.l		; EF 10 32 FF
	bpl -118.b		; 10 8A
	rol $3D.b		; 26 3D
	inc $62BF.w		; EE BF 62
	sbc $9A2513.l		; EF 13 25 9A
	rol $FFCF.w,X		; 3E CF FF
	ora $101122.l,X		; 1F 22 11 10
	asl $BE9A.w,X		; 1E 9A BE
	jsr $23EF.w		; 20 EF 23
	asl $12D0.w		; 0E D0 12
	and $ACE09A.l		; 2F 9A E0 AC
	mvn $E1,$12		; 54 12 E1
	rol $F1CE.w,X		; 3E CE F1
	txa		; 8A
	beq  67.b		; F0 43
	jsr $30E2.w		; 20 E2 30
	bpl   1.b		; 10 01
	dec $408A.w		; CE 8A 40
	inc $3007.w,X		; FE 07 30
	rts		; 60

	sta $3FBE.w,X		; 9D BE 3F
	txs		; 9A
	cop $23.b		; 02 23
	ora $00C00D.l,X		; 1F 0D C0 00
	asl $9AF3.w,X		; 1E F3 9A
	ora $2F22DF.l,X		; 1F DF 22 2F
	dec $050D.w		; CE 0D 05
	and $40D29A.l,X		; 3F 9A D2 40
	cmp $1EE2.w		; CD E2 1E
	ora $10.b,S		; 03 10
	cop $8A.b		; 02 8A
	ora $CB36EE.l,X		; 1F EE 36 CB
	rti		; 40

	cpy #$25.b		; C0 25
	eor $0D039A.l,X		; 5F 9A 03 0D
	ldx $0112.w,Y		; BE 12 01
	bit $10.b		; 24 10
	xce		; FB
	txs		; 9A
	cmp $FD.b,S		; C3 FD
	and ($E0.b)		; 32 E0
	asl $22E0.w,X		; 1E E0 22
	brk $8A.b		; 00 8A
	tax		; AA
	bpl -11.b		; 10 F5
	bit $5FE6.w,X		; 3C E6 5F
	cmp $9ADF.w		; CD DF 9A
	bpl -32.b		; 10 E0
	and ($23.b,X)		; 21 23
	asl $23EF.w		; 0E EF 23
	tsb $029A.w		; 0C 9A 02
	cpx #$30.b		; E0 30
	ora ($F1.b)		; 12 F1
	lsr $11AC.w		; 4E AC 11
	txs		; 9A
	jsr $3123.w		; 20 23 31
	xba		; EB
	cpy #$2E.b		; C0 2E
	trb $FD.b		; 14 FD
	txa		; 8A
	asl $12D2.w,X		; 1E D2 12
	ora $EEE1.w,X		; 1D E1 EE
	ora ($FA.b,S),Y		; 13 FA
	txa		; 8A
	and [$2F.b]		; 27 2F
	inc $D01F.w		; EE 1F D0
	inc $1234.w,X		; FE 34 12
	txs		; 9A
	and $0F21C0.l,X		; 3F C0 21 0F
	sbc ($F1.b),Y		; F1 F1
	and $129AE2.l,X		; 3F E2 9A 12
	lsr $01BC.w		; 4E BC 01
	cop $21.b		; 02 21
	eor ($BE.b),Y		; 51 BE
	txs		; 9A
	sbc $24F0.w,X		; FD F0 24
	ora $00E0.w		; 0D E0 00
	brk $FF.b		; 00 FF
	txa		; 8A
	and $2D.b,S		; 23 2D
	cmp ($DC.b)		; D2 DC
	and ($36.b),Y		; 31 36
	stp		; DB
	and $9A.b,S		; 23 9A
	ora $31D1.w		; 0D D1 31
	brk $31.b		; 00 31
	cmp $9A0D22.l		; CF 22 0D 9A
	cop $FF.b		; 02 FF
	eor ($CE.b,X)		; 41 CE
	eor $1F.b		; 45 1F
	xba		; EB
	sbc ($9A.b,X)		; E1 9A
	ora ($22.b,X)		; 01 22
	eor ($BD.b)		; 52 BD
	inc $24EF.w,X		; FE EF 24
	ora $01FD9A.l,X		; 1F 9A FD 01
	inc $02F1.w,X		; FE F1 02
	rti		; 40

	ldx $9601.w,Y		; BE 01 96
	and $1352E3.l		; 2F E3 52 13
	eor ($CB.b)		; 52 CB
	sbc ($10.b),Y		; F1 10
	stx $01.b,Y		; 96 01
	bpl  17.b		; 10 11
	ora $F31FDF.l,X		; 1F DF 1F F3
	trb $369A.w		; 1C 9A 36
	ora $1FC00D.l,X		; 1F 0D C0 1F
	trb $41.b		; 14 41
	sbc $EE9A.w		; ED 9A EE
	sbc $FE40F3.l,X		; FF F3 40 FE
	sbc ($1C.b,X)		; E1 1C
	cmp $9A.b,S		; C3 9A
	jsr $CC43.w		; 20 43 CC
	ora $50D210.l		; 0F 10 D2 50
.INDEX 8
	sep #$9A		; E2 9A
	and $23CF.w		; 2D CF 23
	rol $12E0.w		; 2E E0 12
	and $FE9AE1.l		; 2F E1 9A FE
	and ($EF.b)		; 32 EF
	and $EE51E3.l		; 2F E3 51 EE
	sbc $160D9A.l		; EF 9A 0D 16
	bmi -17.b		; 30 EF
	sbc $F0E2.w		; ED E2 F0
	and ($9A.b),Y		; 31 9A
	sbc ($FD.b)		; F2 FD
	inc $20C2.w,X		; FE C2 20
	rol $FA.b		; 26 FA
	ora ($9A.b,X)		; 01 9A
	dec $3220.w		; CE 20 32
	ora ($2E.b,X)		; 01 2E
	cmp $3E04.w,X		; DD 04 3E
	txa		; 8A
	ldy #$44.b		; A0 44
	eor $3420AE.l		; 4F AE 20 34
	sbc #$04.b		; E9 04
	txs		; 9A
	sbc $00DC66.l,X		; FF 66 DC 00
	cpx $5005.w		; EC 05 50
	sbc $FE9A.w,X		; FD 9A FE
	sbc ($FD.b)		; F2 FD
	ora ($12.b,S),Y		; 13 12
	asl $F0CD.w		; 0E CD F0
	txs		; 9A
	cop $34.b		; 02 34
	tas		; 1B
	sbc ($B9.b,S),Y		; F3 B9
	bit $22.b		; 24 22
	ora ($8A.b),Y		; 11 8A
	and $4FF6B9.l		; 2F B9 F6 4F
	ldx $0055.w,Y		; BE 55 00
	tsb $E29A.w		; 0C 9A E2
	bmi  -2.b		; 30 FE
	beq  15.b		; F0 0F
	eor [$3B.b]		; 47 3B
	cpy #$9A.b		; C0 9A
	ora $2401.w		; 0D 01 24
	trb $01E0.w		; 1C E0 01
	sbc $9A03.w		; ED 03 9A
	ora ($2F.b)		; 12 2F
	ldy $F011.w		; AC 11 F0
	and ($1E.b,S),Y		; 33 1E
	ora ($9A.b,X)		; 01 9A
	phx		; DA
	sbc ($44.b,X)		; E1 44
	ora ($2F.b),Y		; 11 2F
	sbc $20E2.w		; ED E2 20
	txa		; 8A
	dec $0F46.w		; CE 46 0F
	asl $64D0.w		; 0E D0 64
	dex		; CA
	ora $33F19A.l		; 0F 9A F1 33
	eor ($CD.b),Y		; 51 CD
	asl $03F0.w		; 0E F0 03
	eor $10CF9A.l		; 4F 9A CF 10
	inc $32F1.w,X		; FE F1 32
	ora $9AF2DD.l		; 0F DD F2 9A
	ora $EF41F2.l		; 0F F2 41 EF
	sbc $16EF.w		; ED EF 16
	jsr $319A.w		; 20 9A 31
	cmp $21FF.w		; CD FF 21
	ora $E01F12.l		; 0F 12 1F E0
	txs		; 9A
	ora ($02.b),Y		; 11 02
	sbc $D110.w		; ED 10 D1
	and ($44.b,S),Y		; 33 44
	xba		; EB
	txs		; 9A
	beq -17.b		; F0 EF
	brk $33.b		; 00 33
	inc $FE10.w		; EE 10 FE
	sbc ($9A.b,X)		; E1 9A
	and ($EF.b)		; 32 EF
	sbc $CE20F0.l,X		; FF F0 20 CE
	stz $ED.b		; 64 ED
	txs		; 9A
	asl $13DE.w		; 0E DE 13
	bvc  20.b		; 50 14
	plx		; FA
	bne  18.b		; D0 12
	stx $EC.b		; 86 EC
	cmp $F0DC00.l,X		; DF 00 DC F0
	sbc ($2D.b)		; F2 2D
	tyx		; BB
	txs		; 9A
	cpx #$34.b		; E0 34
	and $3D.b,S		; 23 3D
	cpy #$EC.b		; C0 EC
	bpl  20.b		; 10 14
	txs		; 9A
	rol $0DF1.w		; 2E F1 0D
	cmp ($41.b,X)		; C1 41
	inc $0000.w,X		; FE 00 00
	txs		; 9A
	brk $FD.b		; 00 FD
	trb $1D.b		; 14 1D
	beq -19.b		; F0 ED
	ora $43.b,S		; 03 43
	txs		; 9A
	ora ($1C.b,X)		; 01 1C
	ldx $2F14.w,Y		; BE 14 2F
	sbc ($10.b),Y		; F1 10
	sbc $F0119A.l,X		; FF 9A 11 F0
	bpl -17.b		; 10 EF
	beq   3.b		; F0 03
	mvp $9A,$3F		; 44 3F 9A
	cmp $13E1FB.l		; CF FB E1 13
	and ($FF.b),Y		; 31 FF
	asl $8AD0.w		; 0E D0 8A
	rts		; 60

	cmp $ED252E.l		; CF 2E 25 ED
	xba		; EB
	sbc [$3D.b]		; E7 3D
	txs		; 9A
	bne  46.b		; D0 2E
	cmp ($35.b)		; D2 35
	and $DCF1.w		; 2D F1 DC
	sbc ($86.b,S),Y		; F3 86
	and ($BD.b,X)		; 21 BD
	beq  -3.b		; F0 FD
	bne  -3.b		; D0 FD
	cmp $019AEB.l,X		; DF EB 9A 01
	sbc ($45.b,X)		; E1 45
	and ($DD.b),Y		; 31 DD
	sbc $9602DE.l		; EF DE 02 96
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	inc $DEBA.w,X		; FE BA DE
	tyx		; BB
	dec $9A14.w,X		; DE 14 9A
	asl $E1EE.w		; 0E EE E1
	jsr $31DF.w		; 20 DF 31
	cmp $4E9A25.l,X		; DF 25 9A 4E
	cmp ($FD.b,X)		; C1 FD
	cmp ($53.b),Y		; D1 53
	cmp $9A0F21.l		; CF 21 0F 9A
	sbc ($2F.b,X)		; E1 2F
	beq  31.b		; F0 1F
	cpx #$10.b		; E0 10
	bit $52.b		; 24 52
	txs		; 9A
	cmp $ECE0.w,X		; DD E0 EC
	sep #$43		; E2 43
	jsl $8AEFED.l		; 22 ED EF 8A
	cmp ($0B.b,S),Y		; D3 0B
	ora ($36.b,S),Y		; 13 36
	rol A		; 2A
	dec $1FD0.w		; CE D0 1F
	txs		; 9A
	inc $0F13.w,X		; FE 13 0F
	cop $42.b		; 02 42
	cmp $00FE.w,X		; DD FE 00
	stx $C1.b		; 86 C1
	trb $1EC0.w		; 1C C0 1E
	tyx		; BB
	bne -21.b		; D0 EB
	cmp ($9A.b),Y		; D1 9A
	inc $1103.w		; EE 03 11
	mvn $FF,$ED		; 54 ED FF
	sbc $9AE0.w		; ED E0 9A
	bit $21.b,X		; 34 21
	ora $F0EF.w		; 0D EF F0
	asl $22F2.w,X		; 1E F2 22
	txa		; 8A
	bit $CECE.w,X		; 3C CE CE
	and $50F5ED.l		; 2F ED F5 50
	asl $259A.w		; 0E 9A 25
	tsb $12CE.w		; 0C CE 12
	beq  64.b		; F0 40
	cmp ($3E.b),Y		; D1 3E
	txs		; 9A
	sbc $F11D12.l		; EF 12 1D F1
	asl $2012.w		; 0E 12 20
	bit $9A.b		; 24 9A
	ora $FEE0.w,X		; 1D E0 FE
	sbc $0F3005.l		; EF 05 30 0F
	cmp $20FE8A.l,X		; DF 8A FE 20
	bne  69.b		; D0 45
	and $9CF0.w		; 2D F0 9C
	and ($8A.b,X)		; 21 8A
	jmp.w [$53F4]		; DC F4 53
	inc $2C37.w,X		; FE 37 2C
	plb		; AB
	sbc ($8A.b,X)		; E1 8A
	jsr $1C16.w		; 20 16 1C
	and ($9D.b),Y		; 31 9D
	and $20.b,S		; 23 20
	sbc $E48A.w		; ED 8A E4
	ora $0654.w,X		; 1D 54 06
	eor $11CC.w,X		; 5D CC 11
	ldy $029A.w,X		; BC 9A 02
	rti		; 40

	beq  15.b		; F0 0F
	inc $EF21.w		; EE 21 EF
	ora ($96.b)		; 12 96
	and ($34.b,S),Y		; 33 34
	and $CEFDDF.l,X		; 3F DF FD CE
	cop $33.b		; 02 33
	txs		; 9A
	and $FF.b,S		; 23 FF
	inc $11EF.w,X		; FE EF 11
	sep #$40		; E2 40
	cpx #$8A.b		; E0 8A
	cmp $0032.w		; CD 32 00
	bit $4DB4.w		; 2C B4 4D
	ora $14.b,X		; 15 14
	txa		; 8A
	bvc -38.b		; 50 DA
	sbc $19.b		; E5 19
	sbc ($54.b,X)		; E1 54
	sbc $9AF3.w,X		; FD F3 9A
	tsb $EF03.w		; 0C 03 EF
	bpl  17.b		; 10 11
	sbc ($1D.b),Y		; F1 1D
	cmp $EF208A.l,X		; DF 8A 20 EF
	brk $53.b		; 00 53
	rol $0B.b		; 26 0B
	asl $9ABD.w,X		; 1E BD 9A
	ora ($FF.b,X)		; 01 FF
	and $0D.b,X		; 35 0D
	cmp $F12001.l,X		; DF 01 20 F1
	txa		; 8A
	wai		; CB
	adc ($B2.b,S),Y		; 73 B2
	stz $31.b		; 64 31
	xce		; FB
	ldy $5E.b		; A4 5E
	txa		; 8A
	ldx $0023.w,Y		; BE 23 00
	sbc ($4D.b),Y		; F1 4D
	sty $2B.b,X		; 94 2B
	beq -118.b		; F0 8A
	ora $20.b		; 05 20
	tsb $E2DD.w		; 0C DD E2
	sbc $270E.w,X		; FD 0E 27
	txa		; 8A
	adc $0C.b,S		; 63 0C
.ACCU 8
	sep #$EB		; E2 EB
	bne   0.b		; D0 00
	eor $4E.b		; 45 4E
	txs		; 9A
	dec $1111.w		; CE 11 11
	sbc $0F110F.l,X		; FF 0F 11 0F
	jsl $0D229A.l		; 22 9A 22 0D
	bne  65.b		; D0 41
	cpx $1F03.w		; EC 03 1F
	beq -118.b		; F0 8A
	mvp $42,$BA		; 44 BA 42
	stz $1253.w		; 9C 53 12
	sbc $E09AFE.l,X		; FF FE 9A E0
	inc $F101.w,X		; FE 01 F1
	eor ($FF.b,S),Y		; 53 FF
	ora $DF9A0F.l		; 0F 0F 9A DF
	bpl  17.b		; 10 11
	ora ($0B.b)		; 12 0B
.ACCU 8
	sep #$21		; E2 21
	inc $029A.w,X		; FE 9A 02
	asl $1002.w		; 0E 02 10
	and ($0E.b,S),Y		; 33 0E
	cpy #$23.b		; C0 23
	txs		; 9A
	tsb $1FD3.w		; 0C D3 1F
	ora ($12.b,X)		; 01 12
	tsb $1CE2.w		; 0C E2 1C
	txa		; 8A
	sbc [$1F.b],Y		; F7 1F
	eor $FEEDDF.l		; 4F DF ED FE
	inc $9A13.w		; EE 13 9A
	bit $2E.b		; 24 2E
	ora $001DD1.l		; 0F D1 1D 00
	ora ($10.b,X)		; 01 10
	txa		; 8A
	and $FB64AD.l		; 2F AD 64 FB
.ACCU 16
	rep #$60		; C2 60
	lda $149A63.l,X		; BF 63 9A 14
	ora $02DF.w,X		; 1D DF 02
	and $011FD1.l		; 2F D1 1F 01
	txs		; 9A
	ora ($00.b),Y		; 11 00
	dec $D230.w		; CE 30 D2
	rol $0F11.w		; 2E 11 0F
	txs		; 9A
	beq -17.b		; F0 EF
	inc $12F4.w,X		; FE F4 12
	rti		; 40

	cmp ($FE.b),Y		; D1 FE
	txa		; 8A
	bpl -64.b		; 10 C0
	jsr $E102.w		; 20 02 E1
	tsa		; 3B
	dec $1D.b,X		; D6 1D
	txs		; 9A
	inc $EC34.w		; EE 34 EC
	bit $11.b,X		; 34 11
	and $0FD1.w		; 2D D1 0F
	txa		; 8A
	and $EE.b		; 25 EE
	ora $2F0211.l		; 0F 11 02 2F
	phx		; DA
	sbc $8A.b,X		; F5 8A
	ora $D120.w		; 0D 20 D1
	adc ($AE.b),Y		; 71 AE
	ora $D1D0.w,Y		; 19 D0 D1
	txa		; 8A
	stz $53.b,X		; 74 53
	sbc $3EB30A.l		; EF 0A B3 3E
	sbc ($D1.b),Y		; F1 D1
	txs		; 9A
	and $20DF02.l		; 2F 02 DF 20
	inc $2E04.w		; EE 04 2E
	sbc $9A.b,S		; E3 9A
	eor ($0F.b,X)		; 41 0F
	cmp $2FF22F.l,X		; DF 2F F2 2F
	beq  31.b		; F0 1F
	txs		; 9A
	sbc ($20.b),Y		; F1 20
	inc $0100.w,X		; FE 00 01
	inc $1310.w,X		; FE 10 13
	txs		; 9A
	sbc $DF1E.w,X		; FD 1E DF
	asl $2134.w		; 0E 34 21
	ora $BE8AFF.l,X		; 1F FF 8A BE
	eor $033BC4.l		; 4F C4 3B 03
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	cmp ($8A.b,X)		; C1 8A
	sbc $63F4.w,X		; FD F4 63
	cmp $AC0E65.l,X		; DF 65 0E AC
	.db $42, $8A		; 42 8A
	cmp ($53.b),Y		; D1 53
	ora $C2FF.w		; 0D FF C2
	eor $8AE50F.l		; 4F 0F E5 8A
	cmp $B24C.w,X		; DD 4C B2
	asl $5A.b		; 06 5A
	bne -67.b		; D0 BD
	dec $358A.w,X		; DE 8A 35
	eor $3F.b,X		; 55 3F
	dec $E0FD.w		; CE FD E0
	sbc ($4E.b,S),Y		; F3 4E
	ply		; 7A
	bcc  34.b		; 90 22
	and $13CFBA.l,X		; 3F BA CF 13
	ror $62.b		; 66 62
	txa		; 8A
	trb $0D.b		; 14 0D
	dec $F1F2.w,X		; DE F2 F1
	mvp $B1,$4D		; 44 4D B1
	txs		; 9A
	dec $F141.w,X		; DE 41 F1
	sbc ($1C.b)		; F2 1C
	sbc ($EE.b)		; F2 EE
	cop $8A.b		; 02 8A
	rts		; 60

	cpy $CAE1.w		; CC E1 CA
	ora $47.b,X		; 15 47
	lsr $96DE.w		; 4E DE 96
	.db $42, $FE		; 42 FE
	cpy $FD02.w		; CC 02 FD
	cmp $DDFE.w		; CD FE DD
	txa		; 8A
	tsb $6EE5.w		; 0C E5 6E
	ora $22.b		; 05 22
	rol $10AD.w,X		; 3E AD 10
	txs		; 9A
	sbc ($32.b),Y		; F1 32
	jsr $0CCF.w		; 20 CF 0C
	trb $01.b		; 14 01
	ora $BF1E8A.l,X		; 1F 8A 1E BF
	ora ($DC.b),Y		; 11 DC
	lsr $EC.b		; 46 EC
	sbc $E19A0D.l		; EF 0D 9A E1
	ora ($40.b,S),Y		; 13 40
	sbc $0FDE10.l		; EF 10 DE 0F
	bit $9A.b		; 24 9A
	ora $FF11EE.l		; 0F EE 11 FF
	and $F041C1.l		; 2F C1 41 F0
	txs		; 9A
	and ($1E.b,S),Y		; 33 1E
	sbc $FF01.w		; ED 01 FF
	and $40.b		; 25 40
	cmp $0E9A.w		; CD 9A 0E
.ACCU 8
	sep #$21		; E2 21
	and ($FE.b,X)		; 21 FE
	brk $D1.b		; 00 D1
	bit $D49A.w		; 2C 9A D4
	and $0E01DF.l,X		; 3F DF 01 0E
	cpx $40.b		; E4 40
	beq -102.b		; F0 9A
	brk $FE.b		; 00 FE
	inc $2F24.w		; EE 24 2F
	inc $200F.w		; EE 0F 20
	txs		; 9A
	sep #$0C		; E2 0C
	ora ($10.b,S),Y		; 13 10
	ora $3F.b,S		; 03 3F
	sbc $9AD1.w,X		; FD D1 9A
	asl $3124.w,X		; 1E 24 31
	inc $E1ED.w,X		; FE ED E1
	and $1F.b,S		; 23 1F
	txs		; 9A
	and $21FDE1.l		; 2F E1 FD 21
	ldx $FF33.w,Y		; BE 33 FF
	ora $F1F09A.l		; 0F 9A F0 F1
	eor ($E1.b,X)		; 41 E1
	brk $FF.b		; 00 FF
	sbc $129AF2.l,X		; FF F2 9A 12
	ora $02E1.w		; 0D E1 02
	ora $F3F00F.l		; 0F 0F F0 F3
	txs		; 9A
	eor ($00.b,X)		; 41 00
	brk $DE.b		; 00 DE
	asl $2214.w,X		; 1E 14 22
	asl $DD8A.w,X		; 1E 8A DD
	lda $225212.l		; AF 12 52 22
	dec $CE1D.w,X		; DE 1D CE
	txa		; 8A
	ora $3FE4.w		; 0D E4 3F
	asl $21B1.w,X		; 1E B1 21
	jsl $228AF0.l		; 22 F0 8A 22
	sbc #$E4.b		; E9 E4
	asl $4CF2.w,X		; 1E F2 4C
	cmp ($13.b,X)		; C1 13
	txs		; 9A
	ora $D0010F.l		; 0F 0F 01 D0
	eor ($0F.b,S),Y		; 53 0F
	ora ($EE.b,X)		; 01 EE
	txa		; 8A
	asl $24E6.w,X		; 1E E6 24
	adc $01BCCE.l,X		; 7F CE BC 01
	ora ($8A.b),Y		; 11 8A
	ror $CE.b,X		; 76 CE
	ora $D3EB.w		; 0D EB D3
	sbc $6F02.w,X		; FD 02 6F
	txs		; 9A
	cpy #$20.b		; C0 20
	ora ($FF.b)		; 12 FF
	ora ($0E.b,X)		; 01 0E
.ACCU 8
	sep #$2F		; E2 2F
	ply		; 7A
	lda $021F.w		; AD 1F 02
	trb $69.b		; 14 69
	cmp $9A1BC3.l		; CF C3 1B 9A
	jsl $0D0011.l		; 22 11 00 0D
	ora ($F1.b,X)		; 01 F1
	brk $52.b		; 00 52
	txs		; 9A
	sbc $1EFFFE.l		; EF FE FF 1E
	and $1F.b		; 25 1F
	asl $9AEE.w,X		; 1E EE 9A
	cpx #$01.b		; E0 01
	tsb $EE24.w		; 0C 24 EE
	jsr $1FF2.w		; 20 F2 1F
	txa		; 8A
	sbc ($0C.b),Y		; F1 0C
	cmp ($52.b)		; D2 52
	xba		; EB
	inc $30E5.w,X		; FE E5 30
	txa		; 8A
	jsr $F1CF.w		; 20 CF F1
	sbc $41D253.l,X		; FF 53 D2 41
	sbc $F09A.w,X		; FD 9A F0
	ora ($0F.b,X)		; 01 0F
	and ($00.b,S),Y		; 33 00
	inc $EE00.w		; EE 00 EE
	txs		; 9A
	tsb $32.b		; 04 32
	ora $F0DF.w,X		; 1D DF F0
	inc $D120.w,X		; FE 20 D1
	txa		; 8A
	rts		; 60

	sbc $2B2202.l		; EF 02 22 2B
	lda $8A3322.l		; AF 22 33 8A
	jmp.w [$9F2F]		; DC 2F 9F
	eor $4E.b,X		; 55 4E
	cmp $8A1DE1.l,X		; DF E1 1D 8A
	and $DE.b,X		; 35 DE
	and ($2E.b,S),Y		; 33 2E
	cpx #$E3.b		; E0 E3
	and $9A26.w		; 2D 26 9A
	ora ($0E.b,X)		; 01 0E
	sbc $23F1FF.l,X		; FF FF F1 23
	eor $EC8ACF.l		; 4F CF 8A EC
	bit $5BA4.w		; 2C A4 5B
	cpx $3F.b		; E4 3F
	sbc ($11.b),Y		; F1 11
	txs		; 9A
	and $3102CE.l		; 2F CE 02 31
	inc $EDF2.w,X		; FE F2 ED
	ora ($8A.b)		; 12 8A
	and ($EE.b,S),Y		; 33 EE
	ora $30D021.l		; 0F 21 D0 30
	sbc ($22.b),Y		; F1 22
	txa		; 8A
	ora $3212FF.l		; 0F FF 12 32
	asl $1C03.w		; 0E 03 1C
	lda $250E8A.l,X		; BF 8A 0E 25
	eor ($0D.b,S),Y		; 53 0D
	tyx		; BB
	cop $9B.b		; 02 9B
	mvn $DF,$8A		; 54 8A DF
	jsl $3DE41F.l		; 22 1F E4 3D
	cmp $8A56CD.l,X		; DF CD 56 8A
	rol $FCDF.w		; 2E DF FC
	brk $04.b		; 00 04
	eor ($FD.b,X)		; 41 FD
	ora $8A.b,S		; 03 8A
	phd		; 0B
	inc $2C.b		; E6 2C
	jsl $1F10F1.l		; 22 F1 10 1F
	bit $8A.b		; 24 8A
	asl $4EE2.w		; 0E E2 4E
	ldx $33FE.w,Y		; BE FE 33
	cop $62.b		; 02 62
	txa		; 8A
	tyx		; BB
	dec $D20D.w		; CE 0D D2
	bmi  14.b		; 30 0E
	and ($D1.b)		; 32 D1
	txa		; 8A
	rtl		; 6B

	lda ($0D.b,S),Y		; B3 0D
	ora $AE1B46.l		; 0F 46 1B AE
	and $17E08A.l,X		; 3F 8A E0 17
	jmp $C20EF0.l		; 5C F0 0E C2
	lsr $8A32.w		; 4E 32 8A
	lda ($50.b),Y		; B1 50
	bpl -13.b		; 10 F3
	and $D12FFF.l		; 2F FF 2F D1
	txa		; 8A
	phd		; 0B
	ora $1E.b,X		; 15 1E
	bit $1E.b		; 24 1E
	dex		; CA
	sbc ($EE.b,X)		; E1 EE
	txa		; 8A
	brk $32.b		; 00 32
	sbc $ED20F2.l,X		; FF F2 20 ED
	pea $9A1B.w		; F4 1B 9A
	sbc ($3F.b,S),Y		; F3 3F
	dec $F120.w		; CE 20 F1
	sbc $8A0042.l,X		; FF 42 00 8A
	jmp.w [$1001]		; DC 01 10
	ora ($DD.b,S),Y		; 13 DD
	stz $D0.b		; 64 D0
	and ($8A.b)		; 32 8A
	ora $DB24.w		; 0D 24 DB
	sbc ($11.b)		; F2 11
	inc $FC34.w		; EE 34 FC
	txa		; 8A
	trb $0B.b		; 14 0B
	cpx #$CD.b		; E0 CD
	rol $49E6.w		; 2E E6 49
	sbc $8A.b,S		; E3 8A
	ora ($2D.b,X)		; 01 2D
	pei ($3C.b)		; D4 3C
	cmp $3F.b,X		; D5 3F
	dex		; CA
	ora $9A.b,S		; 03 9A
	ora ($0F.b,X)		; 01 0F
	sbc ($32.b)		; F2 32
	cmp $FF020F.l,X		; DF 0F 02 FF
	txa		; 8A
	adc $263ED3.l		; 6F D3 3E 26
	inc A		; 1A
	inc $1C.b		; E6 1C
	dec $258A.w		; CE 8A 25
	trb $1C04.w		; 1C 04 1C
	sep #$00		; E2 00
	rol $8ABE.w		; 2E BE 8A
	beq  -2.b		; F0 FE
	.db $42, $CE		; 42 CE
	brk $31.b		; 00 31
	ora $0A.b,S		; 03 0A
	txs		; 9A
	ora $1D.b,S		; 03 1D
	cpx #$00.b		; E0 00
	ora ($1F.b),Y		; 11 1F
	sbc $638614.l		; EF 14 86 63
	and $E1.b,S		; 23 E1
	lsr $2FF6.w,X		; 5E F6 2F
	bit $46.b,X		; 34 46
	txa		; 8A
	and ($EE.b,X)		; 21 EE
	ora ($FA.b)		; 12 FA
	cmp $6F.b,X		; D5 6F
	brk $EF.b		; 00 EF
	txs		; 9A
	ora $EF41D0.l,X		; 1F D0 41 EF
	inc $F010.w		; EE 10 F0
	and $11EF9A.l		; 2F 9A EF 11
	trb $0A.b		; 14 0A
	inc $1C.b,X		; F6 1C
	dec $9A13.w,X		; DE 13 9A
	jsr $EF0F.w		; 20 0F EF
	ora $0E0F34.l		; 0F 34 0F 0E
	cop $9A.b		; 02 9A
	sbc ($2E.b,X)		; E1 2E
	sbc ($11.b)		; F2 11
	brk $3F.b		; 00 3F
	cmp ($3E.b,X)		; C1 3E
	txs		; 9A
	sbc $ED2022.l		; EF 22 20 ED
	and ($CF.b,X)		; 21 CF
	jsl $CF9A20.l		; 22 20 9A CF
	sbc $0F010F.l,X		; FF 0F 01 0F
	cpx #$44.b		; E0 44
	tsb $E29A.w		; 0C 9A E2
	rol $04EC.w		; 2E EC 04
	rti		; 40

	ora $9A0FDE.l		; 0F DE 0F 9A
	trb $30.b		; 14 30
	ora $012FC1.l,X		; 1F C1 2F 01
	beq  17.b		; F0 11
	txa		; 8A
	jsr $CC33.w		; 20 33 CC
	bpl   0.b		; 10 00
.INDEX 8
	sep #$53		; E2 53
	stp		; DB
	txs		; 9A
	ora ($D0.b,X)		; 01 D0
	and $FFFD04.l		; 2F 04 FD FF
	cpx #$0F.b		; E0 0F
	txs		; 9A
	cop $EE.b		; 02 EE
	eor $FD.b		; 45 FD
	ora ($FE.b,X)		; 01 FE
	sbc $219A03.l		; EF 03 9A 21
	and $010FCE.l		; 2F CE 0F 01
	trb $4F.b		; 14 4F
	sbc $1FF18A.l		; EF 8A F1 1F
	cpx #$30.b		; E0 30
	sbc $3F.b,X		; F5 3F
	ora $028ADF.l,X		; 1F DF 8A 02
	sbc $E0C052.l,X		; FF 52 C0 E0
	asl $D0F2.w,X		; 1E F2 D0
	txs		; 9A
	and ($FF.b,X)		; 21 FF
	dec $E12F.w		; CE 2F E1
	and $9A2F03.l		; 2F 03 2F 9A
	sbc ($FC.b),Y		; F1 FC
	bne  36.b		; D0 24
	bpl  17.b		; 10 11
	xba		; EB
	cmp ($9A.b)		; D2 9A
	jsr $52F2.w		; 20 F2 52
	cpx #$FF.b		; E0 FF
	ora $8A10F0.l,X		; 1F F0 10 8A
	ora $4D.b		; 05 4D
	sbc ($0F.b)		; F2 0F
	sbc $C23D04.l		; EF 04 3D C2
	txs		; 9A
	ora $1FEF21.l		; 0F 21 EF 1F
	sbc ($30.b,X)		; E1 30
	cmp $019A0D.l		; CF 0D 9A 01
	brk $21.b		; 00 21
	ora ($1E.b,X)		; 01 1E
	sbc $9A44DE.l		; EF DE 44 9A
	jsr $1EEF.w		; 20 EF 1E
	lda $120032.l,X		; BF 32 00 12
	jsl $CD0E8A.l		; 22 8A 0E CD
.INDEX 8
	sep #$1F		; E2 1F
	inc $6D.b,X		; F6 6D
	sbc ($02.b,X)		; E1 02
	txs		; 9A
	ora $4FE2.w,X		; 1D E2 4F
	cmp $EF3101.l,X		; DF 01 31 EF
	ora $33CF9A.l,X		; 1F 9A CF 33
	inc $E1EE.w,X		; FE EE E1
	jsr $F111.w		; 20 11 F1
	txs		; 9A
	and $E0C0.w,X		; 3D C0 E0
	and ($32.b)		; 32 32
	cmp $EE10.w		; CD 10 EE
	txs		; 9A
	sbc ($11.b,S),Y		; F3 11
	brk $14.b		; 00 14
	and ($ED.b,X)		; 21 ED
	inc $8A11.w		; EE 11 8A
	bit $4F.b		; 24 4F
	sbc ($F3.b,X)		; E1 F3
	eor $EA469C.l		; 4F 9C 46 EA
	txs		; 9A
	sbc ($41.b)		; F2 41
	sbc $01EE0F.l		; EF 0F EE 01
	and ($FD.b,X)		; 21 FD
	txs		; 9A
	sbc $120012.l		; EF 12 00 12
	ora $01CF.w		; 0D CF 01
	and ($8A.b)		; 32 8A
	eor ($AB.b,S),Y		; 53 AB
	cmp $D50F.w,X		; DD 0F D5
	adc $9AE60E.l		; 6F 0E E6 9A
	eor ($FE.b)		; 52 FE
	jmp.w [$2302]		; DC 02 23
	asl $0211.w		; 0E 11 02
	txs		; 9A
	ora $2EF2FE.l		; 0F FE F2 2E
	cpx #$43.b		; E0 43
	ora $FD9AFE.l		; 0F FE 9A FD
	sbc ($11.b,X)		; E1 11
	and $4EE1DF.l,X		; 3F DF E1 4E
	sbc $9A.b,X		; F5 9A
	ora $30A1.w,Y		; 19 A1 30
	and $1D.b,X		; 35 1D
	sbc $9A00EE.l,X		; FF EE 00 9A
	beq  81.b		; F0 51
	cpx #$0F.b		; E0 0F
	mvp $EC,$0F		; 44 0F EC
	sbc ($8A.b),Y		; F1 8A
	mvn $02,$EF		; 54 EF 02
	mvp $BE,$1D		; 44 1D BE
	and $8AE3.w		; 2D E3 8A
	brk $64.b		; 00 64
	sbc ($0C.b),Y		; F1 0C
	stz $E0FF.w,X		; 9E FF E0
	adc $A6.b		; 65 A6
	ora $1201FF.l		; 0F FF 01 12
	and ($DC.b),Y		; 31 DC
	beq  19.b		; F0 13
	txy		; 9B
	asl $D01E.w,X		; 1E 1E D0
	sbc $FF3210.l		; EF 10 32 FF
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $00.b,Y		; 96 00
	bpl  -1.b		; 10 FF
	cop $21.b		; 02 21
	ora $2EBE.w,X		; 1D BE 2E
	rep #$00		; C2 00
	ora $32EFFD.l		; 0F FD EF 32
	rol $FFEB.w,X		; 3E EB FF
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	eor ($1C.b,S),Y		; 53 1C
	ora ($35.b,X)		; 01 35
	eor $CBD0.w		; 4D D0 CB
	dec $31.b		; C6 31
	sbc $DC.b,X		; F5 DC
.ACCU 8
	sep #$E5		; E2 E5
	eor ($B1.b,X)		; 41 B1
	cpx #$35C6.w		; E0 C6 35
	beq -20.b		; F0 EC
	sbc $12.b,S		; E3 12
	and $0DBF.w,X		; 3D BF 0D
	dec $34.b		; C6 34
	sbc $F41D.w		; ED 1D F4
	lsr $DE11.w		; 4E 11 DE
	bmi -58.b		; 30 C6
	trb $2E.b		; 14 2E
	sbc $E03EE2.l,X		; FF E2 3E E0
	cmp $CA23.w,X		; DD 23 CA
	cmp ($EC.b),Y		; D1 EC
	and ($F1.b,S),Y		; 33 F1
	and $1FB3.w,X		; 3D B3 1F
	jsl $0E00C6.l		; 22 C6 00 0E
	cmp ($20.b,S),Y		; D3 20
	brk $CE.b		; 00 CE
	ora $0AB603.l		; 0F 03 B6 0A
	inc $70D4.w,X		; FE D4 70
	ora ($CD.b)		; 12 CD
	eor ($15.b)		; 52 15
	ldx $3B.b,Y		; B6 3B
	beq -48.b		; F0 D0
	rts		; 60

	cmp $0203B9.l,X		; DF B9 03 02
	ldx $2B.b,Y		; B6 2B
	cmp ($F1.b),Y		; D1 F1
	adc $F1.b,S		; 63 F1
	sbc $2425.w,X		; FD 25 24
	ldx $2C.b,Y		; B6 2C
	bcs -32.b		; B0 E0
	.db $42, $CD		; 42 CD
	wai		; CB
	pea $BA20.w		; F4 20 BA
	trb $12F3.w		; 1C F3 12
	and $2201CF.l		; 2F CF 01 22
	brk $AA.b		; 00 AA
	plb		; AB
	ora ($07.b)		; 12 07
	dec A		; 3A
	ldy #$44C5.w		; A0 C5 44
	sbc $21DEBA.l,X		; FF BA DE 21
	tsb $0D.b		; 04 0D
	ora $024ED3.l		; 0F D3 4E 02
	ldx $EB.b,Y		; B6 EB
	sbc $CF4EC2.l,X		; FF C2 4E CF
	lda $0323.w		; AD 23 03
	tsx		; BA
	jmp.w [$E532]		; DC 32 E5
	tas		; 1B
	ora ($A1.b)		; 12 A1
	ror $B6F4.w		; 6E F4 B6
	asl A		; 0A
	sbc $C04EB0.l		; EF B0 4E C0
	ldy $0323.w,X		; BC 23 03
	tsx		; BA
	plx		; FA
	.db $42, $D3		; 42 D3
	phk		; 4B
	ora ($C0.b,X)		; 01 C0
	ror $BAF4.w		; 6E F4 BA
	phx		; DA
	eor ($C5.b,X)		; 41 C5
	phy		; 5A
	cmp ($B0.b,S),Y		; D3 B0
	eor ($D3.b,S),Y		; 53 D3
	tsx		; BA
	nop		; EA
	and ($E4.b)		; 32 E4
	tsa		; 3B
	cop $B0.b		; 02 B0
	ror $BAF4.w		; 6E F4 BA
	phx		; DA
	eor ($C5.b,X)		; 41 C5
	phy		; 5A
	cmp ($B1.b,S),Y		; D3 B1
	eor ($D3.b)		; 52 D3
	tsx		; BA
	nop		; EA
	and ($D5.b)		; 32 D5
	phk		; 4B
	sbc ($B1.b),Y		; F1 B1
	ror $BAF5.w		; 6E F5 BA
	dex		; CA
	eor ($B6.b,X)		; 41 B6
	phy		; 5A
	cmp ($A1.b,S),Y		; D3 A1
	.db $62, $D3, $BA		; 62 D3 BA
	sbc #$42.b		; E9 42
	pei ($5B.b)		; D4 5B
	sbc ($B0.b),Y		; F1 B0
	adc $BABA04.l		; 6F 04 BA BA
	.db $42, $C6		; 42 C6
	eor #$D4.b		; 49 D4
	bcs  83.b		; B0 53
	cmp ($BA.b,S),Y		; D3 BA
	nop		; EA
	and ($D4.b)		; 32 D4
	jmp $A100.w		; 4C 00 A1
	ror $BAF5.w,X		; 7E F5 BA
	dex		; CA
	and ($C7.b),Y		; 31 C7
	eor #$D4.b		; 49 D4
	bcs  83.b		; B0 53
	cmp ($BA.b,S),Y		; D3 BA
	sbc #$33.b		; E9 33
	cpx $3B.b		; E4 3B
	ora ($A1.b,X)		; 01 A1
	ror $BAF5.w,X		; 7E F5 BA
	cmp #$42.b		; C9 42
	cmp $4A.b		; C5 4A
	sbc $A1.b,S		; E3 A1
	.db $62, $D3, $BB		; 62 D3 BB
	sbc #$32.b		; E9 32
	sbc $4B.b		; E5 4B
	sbc ($A1.b),Y		; F1 A1
	ror $00F5.w,X		; 7E F5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A6.b		; 00 A6
	bit $E40F.w		; 2C 0F E4
	and $211C.w		; 2D 1C 21
	tsb $0E.b		; 04 0E
	ldx #$01F1.w		; A2 F1 01
	eor $EFC100.l		; 4F 00 C1 EF
	sbc $9642.w		; ED 42 96
	beq  74.b		; F0 4A
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	ora ($23.b,X)		; 01 23
	ldx $FC.b,Y		; B6 FC
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	ora ($F0.b),Y		; 11 F0
	ora ($20.b,X)		; 01 20
	beq -74.b		; F0 B6
	brk $FC.b		; 00 FC
.ACCU 16
	rep #$21		; C2 21
	bpl   4.b		; 10 04
	and $10BAEF.l,X		; 3F EF BA 10
	beq -89.b		; F0 A7
	jsr $F0FF.w		; 20 FF F0
	ora ($1D.b),Y		; 11 1D
	tax		; AA
	sbc ($FD.b),Y		; F1 FD
	and $F0.b,X		; 35 F0
	sbc $9B2710.l		; EF 10 27 9B
	lda ($21.b)		; B2 21
	brk $FE.b		; 00 FE
	jmp.w [$05CC]		; DC CC 05
	adc ($AA.b,X)		; 61 AA
	tsx		; BA
	lsr $01D0.w		; 4E D0 01
	bpl -15.b		; 10 F1
	sbc $C24E11.l,X		; FF 11 4E C2
	and ($10.b)		; 32 10
	jsr ($42D2.w,X)		; FC D2 42
	bpl   0.b		; 10 00
	brk $B6.b		; 00 B6
	sbc $5F23CD.l,X		; FF CD 23 5F
	lda ($65.b,X)		; A1 65
	cpx $C6D4.w		; EC D4 C6
	ora ($00.b,X)		; 01 00
	phx		; DA
	ora ($11.b)		; 12 11
	brk $01.b		; 00 01
	rti		; 40

	lda ($32.b)		; B2 32
	asl $44BE.w,X		; 1E BE 44
	and $22F100.l		; 2F 00 F1 22
	ldx $F0.b,Y		; B6 F0
	inc $F030.w,X		; FE 30 F0
	xce		; FB
	cop $21.b		; 02 21
	brk $BA.b		; 00 BA
	brk $F2.b		; 00 F2
	sbc $5A0110.l,X		; FF 10 01 5A
	cmp ($FD.b,S),Y		; D3 FD
	ldx #$64D6.w		; A2 D6 64
	and $2211E2.l		; 2F E2 11 22
	bpl   0.b		; 10 00
	ldx $0F.b,Y		; B6 0F
	bpl -36.b		; 10 DC
	and ($20.b,X)		; 21 20
	ora $B61200.l,X		; 1F 00 12 B6
	bne  60.b		; D0 3C
	cop $51.b		; 02 51
	sbc $0F12EF.l		; EF EF 12 0F
	ldx $CC.b		; A6 CC
	ora ($31.b)		; 12 31
	ora ($EF.b,X)		; 01 EF
	and $DF.b,S		; 23 DF
	and ($CA.b,X)		; 21 CA
	sbc $0F2F3F.l		; EF 3F 2F 0F
	ora ($1F.b,X)		; 01 1F
	cpx $DC.b		; E4 DC
	lda ($DF.b)		; B2 DF
	eor ($11.b,S),Y		; 53 11
	brk $01.b		; 00 01
	bpl  36.b		; 10 24
	ora ($B2.b),Y		; 11 B2
	ora $10FFEF.l,X		; 1F EF FF 10
	sbc $BC2C12.l,X		; FF 12 2C BC
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ora $14FFFF.l		; 0F FF FF 14
	and $B624DD.l,X		; 3F DD 24 B6
	sbc $01EF.w		; ED EF 01
	bpl  14.b		; 10 0E
	sbc $E2.b		; E5 E2
	lsr $F3BA.w,X		; 5E BA F3
	asl $2A05.w		; 0E 05 2A
	sbc $F025.w,X		; FD 25 F0
	sbc $01FFB6.l,X		; FF B6 FF 01
	lsr $B9.b		; 46 B9
	ora $61.b		; 05 61
	cpy #$B6FF.w		; C0 FF B6
	bpl  12.b		; 10 0C
	cpx #$C222.w		; E0 22 C2
	lsr $EE33.w,X		; 5E 33 EE
	tsx		; BA
	ora $C53A03.l,X		; 1F 03 3A C5
	and ($D1.b,X)		; 21 D1
	ora $25B2E1.l,X		; 1F E1 B2 25
	bvc -66.b		; 50 BE
	.db $42, $F0		; 42 F0
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	sbc $3EC63D.l,X		; FF 3D C6 3E
	bit $DF.b,X		; 34 DF
	xba		; EB
	and $BA.b		; 25 BA
	cmp $61C2.w		; CD C2 61
	bne   0.b		; D0 00
	beq  37.b		; F0 25
	txy		; 9B
	ldx $B2.b,Y		; B6 B2
	bmi   0.b		; 30 00
	brk $FF.b		; 00 FF
	bpl -12.b		; 10 F4
	xba		; EB
	ldx $24.b,Y		; B6 24
	ora $DFEE43.l		; 0F 43 EE DF
	jsl $B6CCFF.l		; 22 FF CC B6
	jsl $F01010.l		; 22 10 10 F0
	ora $2A.b,X		; 15 2A
	lda ($13.b),Y		; B1 13
	ldx #$1032.w		; A2 32 10
	ora $2FF50D.l		; 0F 0D F5 2F
	cpx #$B61F.w		; E0 1F B6
	lsr $ED.b		; 46 ED
	bne  17.b		; D0 11
	ora $1023AB.l		; 0F AB 23 10
	ldx $20.b,Y		; B6 20
	beq  21.b		; F0 15
	bit $13A0.w		; 2C A0 13
	ora $0FB600.l,X		; 1F 00 B6 0F
	ora $F01E12.l		; 0F 12 1E F0
	brk $34.b		; 00 34
	inc $EFB6.w,X		; FE B6 EF
	ora ($0F.b),Y		; 11 0F
	nop		; EA
	jsl $F02FE3.l		; 22 E3 2F F0
	tsx		; BA
	ora ($2B.b),Y		; 11 2B
	lda $21.b,X		; B5 21
	ora $0F10.w		; 0D 10 0F
	bpl -58.b		; 10 C6
	bpl  46.b		; 10 2E
	ora $0E2300.l		; 0F 00 23 0E
	sbc $F0CA11.l,X		; FF 11 CA F0
	cpx #$1401.w		; E0 01 14
	cmp $2F00F2.l		; CF F2 00 2F
	lda ($EB.b)		; B2 EB
	dec $1121.w,X		; DE 21 11
	ora $5001FF.l		; 0F FF 01 50
	ldx $1E.b,Y		; B6 1E
	beq  70.b		; F0 46
	tsb $02EF.w		; 0C EF 02
	asl $C6E1.w,X		; 1E E1 C6
	cmp $0F42.w		; CD 42 0F
	bpl   0.b		; 10 00
	and ($BE.b)		; 32 BE
	bpl -74.b		; 10 B6
	and ($0F.b)		; 32 0F
	sbc $4D1100.l,X		; FF 00 11 4D
	sbc $45B6F0.l		; EF F0 B6 45
	inc $02EF.w,X		; FE EF 02
	sbc $629D10.l,X		; FF 10 9D 62
	lda ($FF.b)		; B2 FF
	ora $0E25FF.l		; 0F FF 25 0E
	sbc $11F2.w,X		; FD F2 11
	ldx $F0.b,Y		; B6 F0
	beq  17.b		; F0 11
	and $431FDE.l,X		; 3F DE 1F 43
	asl $EFB6.w,X		; 1E B6 EF
	ora ($F0.b,X)		; 01 F0
	rol $31BF.w		; 2E BF 31
	sbc ($2F.b),Y		; F1 2F
	lda ($FF.b)		; B2 FF
	trb $0F.b		; 14 0F
	sbc $21F3.w,X		; FD F3 21
	bpl  15.b		; 10 0F
	ldx $11.b,Y		; B6 11
	bmi -50.b		; 30 CE
	ora ($22.b,X)		; 01 22
	and $B601EE.l,X		; 3F EE 01 B6
	sbc ($1C.b),Y		; F1 1C
	cpx #$E300.w		; E0 00 E3
	and $B221E0.l,X		; 3F E0 21 B2
	jsr $D3FC.w		; 20 FC D3
	and ($21.b)		; 32 21
	ora $B65501.l		; 0F 01 55 B6
	cpy $0203.w		; CC 03 02
	adc $0101DD.l		; 6F DD 01 01
	jsr ($F0B6.w,X)		; FC B6 F0
	cmp $E04DE7.l,X		; DF E7 4D E0
	ora ($2E.b,S),Y		; 13 2E
	cmp $30E3C6.l		; CF C6 E3 30
	beq  -1.b		; F0 FF
	ora ($32.b,X)		; 01 32
	cpy $C612.w		; CC 12 C6
	brk $50.b		; 00 50
	cmp $FD0100.l,X		; DF 00 01 FD
	jsr $C6CF.w		; 20 CF C6
	sbc $2E.b,X		; F5 2E
	beq  17.b		; F0 11
	bpl -32.b		; 10 E0
	bne  96.b		; D0 60
	dec $F1.b		; C6 F1
	sbc $BD3201.l		; EF 01 32 BD
	jsr $5011.w		; 20 11 50
	dec $DF.b		; C6 DF
	beq  16.b		; F0 10
	sbc $24CD10.l,X		; FF 10 CD 24
	ora $F0FEC2.l,X		; 1F C2 FE F0
	ora ($0F.b),Y		; 11 0F
	jmp.w [$2213]		; DC 13 22
	ora $2210C6.l,X		; 1F C6 10 22
	cmp $400110.l		; CF 10 01 40
	sbc $00C6F1.l		; EF F1 C6 00
	asl $CD11.w		; 0E 11 CD
	and $1F.b,S		; 23 1F
	beq   1.b		; F0 01
	lda ($11.b)		; B2 11
	ora $53E5D9.l		; 0F D9 E5 53
	jsr $3400.w		; 20 00 34
	ldx $CF.b,Y		; B6 CF
	bpl -14.b		; 10 F2
	eor ($DE.b)		; 52 DE
	beq   0.b		; F0 00
	brk $C6.b		; 00 C6
	brk $EB.b		; 00 EB
	and $2F.b,S		; 23 2F
	beq   1.b		; F0 01
	brk $00.b		; 00 00
	tsx		; BA
	cmp $20BB65.l,X		; DF 65 BB 20
	cop $00.b		; 02 00
	cpx #$BA10.w		; E0 10 BA
	ora ($4D.b,X)		; 01 4D
	cmp ($10.b,X)		; C1 10
	bpl  15.b		; 10 0F
	bpl -38.b		; 10 DA
	ldx $16.b,Y		; B6 16
	eor $0111EF.l		; 4F EF 11 01
	ora $B617EC.l		; 0F EC 17 B6
	rol $01FE.w,X		; 3E FE 01
	ora ($0E.b,X)		; 01 0E
	ora ($E2.b,X)		; 01 E2
	.db $42, $C6		; 42 C6
	sbc $000000.l,X		; FF 00 00 00
	brk $FC.b		; 00 FC
	pea $B610.w		; F4 10 B6
	cpx #$1100.w		; E0 00 11
	brk $EB.b		; 00 EB
	ora $6F.b,X		; 15 6F
	inc $12BA.w		; EE BA 12
	sbc ($EE.b)		; F2 EE
	and ($D3.b,X)		; 21 D3
	eor $10D0.w		; 4D D0 10
	ldx $00.b,Y		; B6 00
	brk $00.b		; 00 00
	xce		; FB
	cmp $20.b,X		; D5 20
	beq   0.b		; F0 00
	lda ($00.b)		; B2 00
	ora ($FC.b),Y		; 11 FC
	cmp $002145.l		; CF 45 21 00
	ora ($BA.b),Y		; 11 BA
	brk $00.b		; 00 00
	sbc ($4D.b),Y		; F1 4D
	sbc ($00.b,X)		; E1 00
	ora ($F1.b,X)		; 01 F1
	ldx $00.b		; A6 00
	phx		; DA
	ldx $4F.b,Y		; B6 4F
	ora $111100.l		; 0F 00 11 11
	ldx $E9.b		; A6 E9
	cpx $75.b		; E4 75
	sbc $11FF.w		; ED FF 11
	brk $0F.b		; 00 0F
	ldx $F1.b		; A6 F1
	bvs -16.b		; 70 F0
	sbc $0001F0.l,X		; FF F0 01 00
	dex		; CA
	tax		; AA
	eor $2C.b,S		; 43 2C
	brk $F0.b		; 00 F0
	and $56CB2F.l		; 2F 2F CB 56
	lda ($04.b)		; B2 04
	.db $42, $11		; 42 11
	ora ($11.b),Y		; 11 11
	bpl   1.b		; 10 01
	and ($A6.b)		; 32 A6
	ora ($FF.b,X)		; 01 FF
	ora $DA0F01.l		; 0F 01 0F DA
	and $00B611.l		; 2F 11 B6 00
	beq  17.b		; F0 11
	ora ($FC.b,X)		; 01 FC
	sbc ($24.b),Y		; F1 24
	rol $E0A6.w		; 2E A6 E0
	brk $10.b		; 00 10
	ora $F15DF3.l		; 0F F3 5D F1
	beq -90.b		; F0 A6
	ora $D90F01.l		; 0F 01 0F D9
	rti		; 40

.INDEX 16
	rep #$10		; C2 10
	beq -74.b		; F0 B6
	ora ($11.b,X)		; 01 11
	sbc $23D1.w,X		; FD D1 23
	eor $A600FF.l		; 4F FF 00 A6
	ora ($0F.b,X)		; 01 0F
	sbc ($6F.b,S),Y		; F3 6F
	cmp $F1FF21.l		; CF 21 FF F1
	ldx $00.b,Y		; B6 00
	sbc $C021.w		; ED 21 C0
	ora ($0F.b),Y		; 11 0F
	ora ($11.b,X)		; 01 11
	tsx		; BA
	sbc $1FF5.w,X		; FD F5 1F
	and $01D1.w,X		; 3D D1 01
	bpl  -1.b		; 10 FF
	ldx $01.b,Y		; B6 01
	bmi -18.b		; 30 EE
	and ($F0.b,X)		; 21 F0
	sbc ($00.b),Y		; F1 00
	sbc $31B6.w		; ED B6 31
	dec $1000.w,X		; DE 00 10
	brk $21.b		; 00 21
	sbc $31B6CF.l,X		; FF CF B6 31
	bit $EF.b,X		; 34 EF
	beq  16.b		; F0 10
	ora $A23101.l		; 0F 01 31 A2
	eor $115326.l,X		; 5F 26 53 11
	jsl $ECEF0D.l		; 22 0D EF EC
	ldx $C1.b,Y		; B6 C1
	bpl   1.b		; 10 01
	ora ($0F.b),Y		; 11 0F
	cmp $B61421.l		; CF 21 14 B6
	and $F001E0.l		; 2F E0 01 F0
	sbc ($23.b),Y		; F1 23
	cpx $BA22.w		; EC 22 BA
	sbc $0F0F02.l		; EF 02 0F 0F
	bpl  30.b		; 10 1E
.ACCU 8
	sep #$2F		; E2 2F
	ldx $01.b,Y		; B6 01
	ora ($0F.b),Y		; 11 0F
	dec $0221.w,X		; DE 21 02
	adc $01B6EF.l		; 6F EF B6 01
	ora $FC2300.l		; 0F 00 23 FC
	ora $0F.b,S		; 03 0F
	beq -90.b		; F0 A6
	jsr $E0FE.w		; 20 FE E0
	bpl -86.b		; 10 AA
	jsl $BA1211.l		; 22 11 12 BA
	beq -17.b		; F0 EF
	rti		; 40

	beq  77.b		; F0 4D
	cmp ($10.b),Y		; D1 10
	brk $A6.b		; 00 A6
	sbc ($27.b),Y		; F1 27
	ora #$D6.b		; 09 D6
	ora $0F01EF.l		; 0F EF 01 0F
	ldx $F0.b,Y		; B6 F0
	sbc ($FC.b),Y		; F1 FC
	ora ($10.b,X)		; 01 10
	ora ($10.b,X)		; 01 10
	sbc $11B6.w		; ED B6 11
	ora ($34.b,X)		; 01 34
	sbc $0F0000.l		; EF 00 00 0F
	trb $A6.b		; 14 A6
	ora $2EC5.w,Y		; 19 C5 2E
	sbc $ED2EE2.l,X		; FF E2 2E ED
	pea $0DB6.w		; F4 B6 0D
	cmp ($10.b),Y		; D1 10
	ora ($00.b),Y		; 11 00
	inc $11F0.w,X		; FE F0 11
	tsx		; BA
	tsb $BF.b		; 04 BF
	bpl   1.b		; 10 01
	sbc ($02.b),Y		; F1 02
	phd		; 0B
	trb $A6.b		; 14 A6
	ora $5ED2FF.l		; 0F FF D2 5E
	sbc $2CE4.w		; ED E4 2C
	tyx		; BB
	ldx $12.b		; A6 12
	ora ($20.b)		; 12 20
	sbc $2723DB.l,X		; FF DB 23 27
	adc $EEA6.w		; 6D A6 EE
	ora ($F0.b,X)		; 01 F0
	ora ($6E.b,S),Y		; 13 6E
	cmp $B6F000.l,X		; DF 00 F0 B6
	cpx #$FE30.w		; E0 30 FE
	sbc ($1F.b)		; F2 1F
	jsr ($11F1.w,X)		; FC F1 11
	ldx $10.b,Y		; B6 10
	beq -18.b		; F0 EE
	cop $12.b		; 02 12
	bvc -17.b		; 50 EF
	brk $B6.b		; 00 B6
	brk $00.b		; 00 00
	and ($EF.b),Y		; 31 EF
	brk $00.b		; 00 00
	sbc $DBA641.l		; EF 41 A6 DB
	cpx $2E.b		; E4 2E
	xce		; FB
	sta ($32.b)		; 92 32
	bpl   0.b		; 10 00
	tax		; AA
	dec $0051.w,X		; DE 51 00
	ply		; 7A
	ldx #$F211.w		; A2 11 F2
	beq -90.b		; F0 A6
	mvn $E2,$CE		; 54 CE E2
	brk $DC.b		; 00 DC
	adc ($EC.b)		; 72 EC
	cpx $AA.b		; E4 AA
	cmp $9610.w,X		; DD 10 96
	lsr $FFF0.w,X		; 5E F0 FF
	jsr ($A653.w,X)		; FC 53 A6
	ora ($76.b),Y		; 11 76
	dec $10FF.w,X		; DE FF 10
	ora $A6EE35.l		; 0F 35 EE A6
	cpx #$EC2F.w		; E0 2F EC
	eor $ED.b		; 45 ED
.INDEX 8
	sep #$1F		; E2 1F
	sbc $3FD2BA.l,X		; FF BA D2 3F
	ora $11FF00.l		; 0F 00 FF 11
	brk $21.b		; 00 21
	ldx $FE.b		; A6 FE
	sbc $250000.l,X		; FF 00 00 25
	inc $20D0.w,X		; FE D0 20
	ldx $FB.b		; A6 FB
	ora [$FD.b],Y		; 17 FD
	sbc ($00.b),Y		; F1 00
	sbc $AA429D.l,X		; FF 9D 42 AA
	sbc ($F0.b,X)		; E1 F0
	sbc $1531E1.l,X		; FF E1 31 15
	sta $A602.w,X		; 9D 02 A6
	brk $00.b		; 00 00
	trb $1E.b		; 14 1E
	inc $EC31.w		; EE 31 EC
	sbc [$A6.b],Y		; F7 A6
	ora $00FF.w,X		; 1D FF 00
	asl $32AD.w		; 0E AD 32
	cop $10.b		; 02 10
	tsx		; BA
	ora $13200F.l		; 0F 0F 20 13
	cpx $2E10.w		; EC 10 2E
	ora ($A6.b),Y		; 11 A6
	sbc $2E.b,X		; F5 2E
	sbc $FD31.w		; ED 31 FD
	dec $3F.b		; C6 3F
	inc $21AA.w		; EE AA 21
	sbc $42E1.w,X		; FD E1 42
	cmp ($E0.b)		; D2 E0
	beq  -5.b		; F0 FB
	ldx $01.b,Y		; B6 01
	trb $4E.b		; 14 4E
	beq  15.b		; F0 0F
	ora ($F3.b,X)		; 01 F3
	rol $41A2.w		; 2E A2 41
	and $31.b,X		; 35 31
	cpy #$64.b		; C0 64
	asl $0DF1.w,X		; 1E F1 0D
	tax		; AA
	sbc ($04.b),Y		; F1 04
	asl $0E1F.w		; 0E 1F 0E
	tsb $0325.w		; 0C 25 03
	ldx $5F.b,Y		; B6 5F
	beq -16.b		; F0 F0
	brk $02.b		; 00 02
	rol $02FE.w,X		; 3E FE 02
	ldx $F0.b,Y		; B6 F0
	bne  65.b		; D0 41
	sbc $EF0F00.l		; EF 00 0F EF
	sbc ($BA.b,X)		; E1 BA
	sbc ($F0.b),Y		; F1 F0
	ora $10030E.l		; 0F 0E 03 10
	bit $A6E0.w,X		; 3C E0 A6
	ora $6D1300.l		; 0F 00 13 6D
	dec $1FF2.w,X		; DE F2 1F
	cpy $41B6.w		; CC B6 41
	inc $0F01.w,X		; FE 01 0F
	bne  -1.b		; D0 FF
	ora ($01.b),Y		; 11 01
	ldx $00.b,Y		; B6 00
	sbc $21E1.w,X		; FD E1 21
	eor ($EF.b,S),Y		; 53 EF
	brk $00.b		; 00 00
	ldx $F4.b		; A6 F4
	adc $D1DF.w		; 6D DF D1
	and $ED55DB.l,X		; 3F DB 55 ED
	ldx $01.b		; A6 01
	sbc $20EDCF.l,X		; FF CF ED 20
	ora ($10.b)		; 12 10
	xce		; FB
	ldx $E0.b,Y		; B6 E0
	and ($35.b,X)		; 21 35
	sbc $0100F0.l,X		; FF F0 00 01
	and $1154A2.l,X		; 3F A2 54 11
	and ($1B.b,S),Y		; 33 1B
	pei ($31.b)		; D4 31
	brk $0F.b		; 00 0F
	ldx $C0.b		; A6 C0
	asl A		; 0A
	ora ($12.b),Y		; 11 12
	bpl  -4.b		; 10 FC
	lda ($32.b),Y		; B1 32
	tsx		; BA
	ora ($BF.b,S),Y		; 13 BF
	ora ($10.b,X)		; 01 10
	sbc ($2C.b)		; F2 2C
	brk $1F.b		; 00 1F
	ldx $11.b,Y		; B6 11
	inc $1FF3.w,X		; FE F3 1F
	beq   0.b		; F0 00
	cpx #$0D.b		; E0 0D
	tax		; AA
	adc ($F1.b,X)		; 61 F1
	sbc $10D6EF.l,X		; FF EF D6 10
	asl $AA.b,X		; 16 AA
	ldx $EF.b		; A6 EF
	ora ($01.b,X)		; 01 01
	adc $31EEDF.l		; 6F DF EE 31
	jsr ($C6A6.w,X)		; FC A6 C6
	eor $0FF0.w		; 4D F0 0F
	cmp $11E239.l,X		; DF 39 E2 11
	ldx $10.b,Y		; B6 10
	asl $02E0.w		; 0E E0 02
	trb $3E.b		; 14 3E
	beq   0.b		; F0 00
	ldx $01.b		; A6 01
	rts		; 60

	dec $12FE.w,X		; DE FE 12
	ora $5FB3.w		; 0D B3 5F
	ldx $E1.b		; A6 E1
	asl $3BDF.w		; 0E DF 3B
	lda ($21.b)		; B2 21
	bpl  30.b		; 10 1E
	ldx $D0.b,Y		; B6 D0
	cop $12.b		; 02 12
	eor $00F1E0.l,X		; 5F E0 F1 00
	and ($A2.b),Y		; 31 A2
	stz $31.b		; 64 31
	trb $31.b		; 14 31
	cpy $1122.w		; CC 22 11
	bpl -74.b		; 10 B6
	sbc $01D02F.l		; EF 2F D0 01
	bpl  31.b		; 10 1F
	cpy #$11.b		; C0 11
	tsx		; BA
	brk $4C.b		; 00 4C
	cmp ($00.b)		; D2 00
	bpl  47.b		; 10 2F
	cmp ($1F.b),Y		; D1 1F
	ldx #$12.b		; A2 12
	and ($DB.b)		; 32 DB
	ora ($11.b,S),Y		; 13 11
	bpl -37.b		; 10 DB
	sbc $2FC3BA.l,X		; FF BA C3 2F
	brk $0E.b		; 00 0E
	sbc ($00.b)		; F2 00
	and $CEA63E.l		; 2F 3E A6 CE
	beq   1.b		; F0 01
	eor ($CE.b,S),Y		; 53 CE
	sbc $B620F1.l,X		; FF F1 20 B6
	sbc $F032.w		; ED 32 F0
	brk $EE.b		; 00 EE
	and ($DE.b,X)		; 21 DE
	ora ($B6.b,X)		; 01 B6
	ora ($1F.b,X)		; 01 1F
	bne   1.b		; D0 01
	ora ($34.b),Y		; 11 34
	sbc $10A6F0.l		; EF F0 A6 10
	eor ($DD.b,S),Y		; 53 DD
	ora $DB30F0.l		; 0F F0 30 DB
	ora $A6.b,X		; 15 A6
	sbc ($1E.b),Y		; F1 1E
	cmp $CA32.w,X		; DD 32 CA
	ora ($12.b),Y		; 11 12
	ora $10DFB6.l,X		; 1F B6 DF 10
	ora ($25.b),Y		; 11 25
	inc $0000.w,X		; FE 00 00
	jsl $E0EDA6.l		; 22 A6 ED E0
	cpx #$40.b		; E0 40
	xba		; EB
	sbc $02.b,X		; F5 02
	ora $00AA.w,X		; 1D AA 00
	eor ($AB.b),Y		; 51 AB
	adc ($F2.b),Y		; 71 F2
	sbc $5DE0.w,X		; FD E0 5D
	tsx		; BA
	bpl   4.b		; 10 04
	jmp.w [$0012]		; DC 12 00
	ora ($CF.b)		; 12 CF
	ora ($A6.b),Y		; 11 A6
	brk $21.b		; 00 21
	sbc $21B6.w		; ED B6 21
	ora $AA24DC.l		; 0F DC 24 AA
	plb		; AB
	mvp $FF,$F1		; 44 F1 FF
	cpy #$5E.b		; C0 5E
	ora ($F5.b),Y		; 11 F5
	ldx $6C.b		; A6 6C
	cmp $EE3511.l,X		; DF 11 35 EE
	inc $120F.w		; EE 0F 12
	ldx $0D.b		; A6 0D
	lda $41.b,S		; A3 41
	ora $0A24DC.l,X		; 1F DC 24 0A
	lda ($B6.b),Y		; B1 B6
	ora ($01.b,X)		; 01 01
	sbc $120110.l		; EF 10 01 12
	eor $11A6EF.l		; 4F EF A6 11
	rol $FD.b		; 26 FD
	inc $031F.w		; EE 1F 03
	ora $A6B0.w		; 0D B0 A6
	eor ($1F.b)		; 52 1F
	jmp.w [$0C05]		; DC 05 0C
	ldy #$01.b		; A0 01
	and ($BA.b,X)		; 21 BA
	cpx #$11.b		; E0 11
	sbc ($00.b),Y		; F1 00
	phk		; 4B
	sbc ($20.b,X)		; E1 20
	ora $A6.b,S		; 03 A6
	sbc $00EE.w,X		; FD EE 00
	sbc ($0F.b,S),Y		; F3 0F
	cmp $2F52.w		; CD 52 2F
	tax		; AA
	sbc $BD46.w,X		; FD 46 BD
	cmp $2F.b		; C5 2F
	and $B64FCF.l		; 2F CF 4F B6
	ora ($01.b,X)		; 01 01
	eor $DF.b,S		; 43 DF
	ora ($04.b,X)		; 01 04
	asl $A6FF.w		; 0E FF A6
	ora $DB1E02.l		; 0F 02 1E DB
	mvp $EC,$2F		; 44 2F EC
	sbc $AA.b		; E5 AA
	dec $40B2.w		; CE B2 40
	brk $ED.b		; 00 ED
	rti		; 40

	beq  47.b		; F0 2F
	ldx $67.b		; A6 67
	cmp $27F1.w		; CD F1 27
	tsb $F0EE.w		; 0C EE F0
	ora ($A6.b,X)		; 01 A6
	and $1025DB.l		; 2F DB 25 10
	sbc $10E4.w		; ED E4 10
	tyx		; BB
	ldx $00.b,Y		; B6 00
	bpl  14.b		; 10 0E
	bpl   0.b		; 10 00
	ora ($24.b),Y		; 11 24
	inc $33AA.w,X		; FE AA 33
	inc $BB.b,X		; F6 BB
	bmi   2.b		; 30 02
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	sbc $55AA.w,X		; FD AA 55
	dec $06D0.w,X		; DE D0 06
	sbc $71EB.w,X		; FD EB 71
	sbc ($AA.b),Y		; F1 AA
	xce		; FB
	bvc -16.b		; 50 F0
	ora ($15.b,X)		; 01 15
	stz $2431.w		; 9C 31 24
	ldx $2D.b		; A6 2D
	inc $F0FF.w,X		; FE FF F0
	jsr $D5FC.w		; 20 FC D5
	rti		; 40

	tax		; AA
	sbc $EAEE07.l		; EF 07 EE EA
	adc $E1.b,S		; 63 E1
	jsr ($A632.w,X)		; FC 32 A6
	bpl   2.b		; 10 02
	and [$4C.b]		; 27 4C
	cpx #$16.b		; E0 16
	and $A6FE.w		; 2D FE A6
	beq  -1.b		; F0 FF
	ora ($FD.b)		; 12 FD
	lda ($60.b,S),Y		; B3 60
	jsr ($AAC4.w,X)		; FC C4 AA
	sbc $36EB.w,X		; FD EB 36
	sbc $F0130D.l		; EF 0D 13 F0
.ACCU 8
	sep #$AA		; E2 AA
	asl $D9.b		; 06 D9
	ora ($23.b),Y		; 11 23
	sbc $E120.w,X		; FD 20 E1
	sbc ($A6.b),Y		; F1 A6
	ora ($FD.b)		; 12 FD
	cmp ($4F.b,S),Y		; D3 4F
	inc $20E1.w,X		; FE E1 20
	jmp.w [$C2A6]		; DC A6 C2
	bpl  30.b		; 10 1E
	ora $250200.l		; 0F 00 02 25
	ror $DFA6.w,X		; 7E A6 DF
	tsb $3E.b		; 04 3E
	brk $FF.b		; 00 FF
	inc $0E02.w,X		; FE 02 0E
	ldx $DF.b		; A6 DF
	adc ($FD.b,X)		; 61 FD
	cmp ($3F.b)		; D2 3F
	cpx $10B1.w		; EC B1 10
	tax		; AA
	trb $F121.w		; 1C 21 F1
	beq  17.b		; F0 11
	tad		; 5B
	lda $14.b,S		; A3 14
	ldx $5E.b		; A6 5E
	cpx #$F0.b		; E0 F0
	sbc $DC0FF2.l		; EF F2 0F DC
	stz $AA.b		; 64 AA
	lda $E01DE6.l,X		; BF E6 1D E0
	cpy $3E.b		; C4 3E
	trb $A614.w		; 1C 14 A6
	cop $F1.b		; 02 F1
	and ($66.b,X)		; 21 66
	dec $6FF3.w		; CE F3 6F
	cmp $FF0FA6.l,X		; DF A6 0F FF
	sbc ($1F.b),Y		; F1 1F
	xba		; EB
	lsr $FD.b		; 46 FD
	lda ($AA.b)		; B2 AA
	tsa		; 3B
	cpx #$D0.b		; E0 D0
	adc $E0050C.l		; 6F 0C 05 E0
	beq -74.b		; F0 B6
	bpl  36.b		; 10 24
	sbc $EF3FF2.l,X		; FF F2 3F EF
	brk $0F.b		; 00 0F
	ldx #$00.b		; A2 00
	and ($0C.b,X)		; 21 0C
	cmp ($41.b,S),Y		; D3 41
	cmp $0E21.w		; CD 21 0E
	tax		; AA
	inc $FC61.w		; EE 61 FC
	inc $FF.b,X		; F6 FF
	beq   0.b		; F0 00
	ora [$A6.b],Y		; 17 A6
	ora $6FF2.w,X		; 1D F2 6F
	cmp $FFFFF0.l,X		; DF F0 FF FF
	jsr $FFB6.w		; 20 B6 FF
	sbc ($1F.b,S),Y		; F3 1F
	cpx #$20.b		; E0 20
	ora $A6F1ED.l		; 0F ED F1 A6
	and $31D3.w		; 2D D3 31
	ora $5C0712.l,X		; 1F 12 07 5C
	sbc ($A6.b,X)		; E1 A6
	adc ($DE.b,X)		; 61 DE
	beq -16.b		; F0 F0
	cpx #$10.b		; E0 10
	inc $AAB7.w,X		; FE B7 AA
	cpy $7AC4.w		; CC C4 7A
	beq  -5.b		; F0 FB
	rol $ED.b,X		; 36 ED
	sbc $B6.b		; E5 B6
	jsr $0110.w		; 20 10 01
	cop $4F.b		; 02 4F
	sbc ($30.b,X)		; E1 30
	sbc $0FFFA6.l,X		; FF A6 FF 0F
	sbc $C4FE11.l,X		; FF 11 FE C4
	lsr $A6CE.w,X		; 5E CE A6
	eor ($FF.b),Y		; 51 FF
	nop		; EA
.INDEX 16
	rep #$1E		; C2 1E
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	bpl -70.b		; 10 BA
	ora ($F1.b,X)		; 01 F1
	bit $3FF1.w,X		; 3C F1 3F
	cpx #$0001.w		; E0 01 00
	ldx #$F110.w		; A2 10 F1
	ora $FC33CD.l,X		; 1F CD 33 FC
	ora ($10.b)		; 12 10
	ldx $FB.b		; A6 FB
	lda ($2E.b,X)		; A1 2E
	cmp ($42.b,X)		; C1 42
	bpl  17.b		; 10 11
	ora ($BA.b,X)		; 01 BA
	rol $3ED2.w,X		; 3E D2 3E
	sbc ($00.b,X)		; E1 00
	ora ($F1.b,X)		; 01 F1
	sbc ($A6.b),Y		; F1 A6
	rol $62DF.w		; 2E DF 62
	cmp $FE42.w		; CD 42 FE
	sbc $A6AF.w,X		; FD AF A6
	and $1142B1.l		; 2F B1 42 11
	brk $11.b		; 00 11
	ror $CE.b		; 66 CE
	ldx $52.b		; A6 52
	sbc $FFF0E0.l		; EF E0 F0 FF
	sbc ($2E.b,X)		; E1 2E
	inc $43A6.w		; EE A6 43
	cpx $FF33.w		; EC 33 FF
	sbc $C020AC.l		; EF AC 20 C0
	ldx $12.b,Y		; B6 12
	ora ($00.b,X)		; 01 00
	bpl  35.b		; 10 23
	asl $F021.w		; 0E 21 F0
	ldx #$3254.w		; A2 54 32
	and ($FF.b,X)		; 21 FF
	bpl -20.b		; 10 EC
	sbc $1D.b,S		; E3 1D
	ldx $33.b		; A6 33
	sbc $11CAEF.l,X		; FF EF CA 11
	cmp $AA1233.l		; CF 33 12 AA
	cpx #$0701.w		; E0 01 07
	plb		; AB
	bvs -78.b		; 70 B2
	sbc ($10.b),Y		; F1 10
	sta ($42.b)		; 92 42
	inc $EB12.w,X		; FE 12 EB
	lda $3A.b		; A5 3A
	asl $41.b		; 06 41
	tax		; AA
	brk $FB.b		; 00 FB
	adc ($B1.b),Y		; 71 B1
	rti		; 40

	sbc $A6F20F.l,X		; FF 0F F2 A6
	asl $4D.b,X		; 16 4D
	and $EF.b,S		; 23 EF
	sbc $FF0F0F.l,X		; FF 0F 0F FF
	tax		; AA
	jsr $04D1.w		; 20 D1 04
	xba		; EB
	adc ($C0.b,X)		; 61 C0
	brk $FB.b		; 00 FB
	ldx $E2.b		; A6 E2
	dec $2132.w,X		; DE 32 21
	bpl   1.b		; 10 01
	trb $6E.b		; 14 6E
	ldx $13.b		; A6 13
	sbc $F000FF.l		; EF FF 00 F0
	sbc $A6FF02.l		; EF 02 FF A6
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	ora ($0F.b,S),Y		; 13 0F
	sbc $EDB2FB.l,X		; FF FB B2 ED
	ldx $32.b		; A6 32
	and ($20.b,X)		; 21 20
	sbc ($22.b),Y		; F1 22
	adc $A6FE03.l,X		; 7F 03 FE A6
	sbc $FE00F0.l,X		; FF F0 00 FE
	cop $F0.b		; 02 F0
	cpx #$4D.b		; E0 4D
	ldx $03.b		; A6 03
	ora $A1FCFF.l		; 0F FF FC A1
	sbc $1232.w,X		; FD 32 12
	tax		; AA
	sbc $5D00F2.l,X		; FF F2 00 5D
	dec $A0.b		; C6 A0
	and $649220.l		; 2F 20 92 64
	and $FA10D0.l		; 2F D0 10 FA
	and $AA42E5.l,X		; 3F E5 42 AA
	brk $0E.b		; 00 0E
	cmp $FE.b,X		; D5 FE
	rti		; 40

	ora $A6F10F.l		; 0F 0F F1 A6
	ora ($55.b),Y		; 11 55
	cpx $FE.b		; E4 FE
	inc $FF01.w,X		; FE 01 FF
	beq -110.b		; F0 92
	cmp $010911.l		; CF 11 09 01
	inc $52.b,X		; F6 52
	asl $AADA.w		; 0E DA AA
.ACCU 16
	rep #$2E		; C2 2E
	eor ($E0.b,X)		; 41 E0
	ora $1411F0.l		; 0F F0 11 14
	ldx $F3.b		; A6 F3
	ora $00FF.w		; 0D FF 00
	ora $10E1FF.l		; 0F FF E1 10
	tax		; AA
	ora $D441.w		; 0D 41 D4
	cmp $DEF001.l,X		; DF 01 F0 DE
	lsr $31AA.w,X		; 5E AA 31
	sbc $11EF01.l,X		; FF 01 EF 11
	trb $B3.b		; 14 B3
	cmp $DE96.w,X		; DD 96 DE
	beq  30.b		; F0 1E
	sbc $2B21C0.l		; EF C0 21 2B
	dec $AA.b		; C6 AA
	cmp ($EE.b,S),Y		; D3 EE
	ora ($F0.b,X)		; 01 F0
	sbc $315E.w		; ED 5E 31
	sbc $0E1FAA.l,X		; FF AA 1F 0E
	ora ($05.b),Y		; 11 05
	inc $02FE.w		; EE FE 02
	ora ($96.b,X)		; 01 96
	asl $EDEF.w,X		; 1E EF ED
	bmi  46.b		; 30 2E
	lda $16.b		; A5 16
	ora $10AA.w,X		; 1D AA 10
	ora $22310B.l		; 0F 0B 31 22
	cpx #$F1.b		; E0 F1
	sbc $16029A.l,X		; FF 9A 02 16
	trb $32DA.w		; 1C DA 32
	cop $1F.b		; 02 1F
.ACCU 8
	sep #$A6		; E2 A6
	inc $1011.w,X		; FE 11 10
	cmp ($22.b,X)		; C1 22
	rol $0FFF.w		; 2E FF 0F
	txs		; 9A
	sbc $4305.w,Y		; F9 05 43
	sbc $0D00.w,X		; FD 00 0D
	cop $05.b		; 02 05
	txs		; 9A
	phy		; 5A
	stp		; DB
	and ($21.b,X)		; 21 21
	brk $F0.b		; 00 F0
	ora $00AA31.l		; 0F 31 AA 00
	rep #$40		; C2 40
	inc $0001.w		; EE 01 00
	inc $AAE1.w,X		; FE E1 AA
	bvc  15.b		; 50 0F
	sbc ($F0.b),Y		; F1 F0
	beq  32.b		; F0 20
	lsr $9AED.w		; 4E ED 9A
	ora ($21.b)		; 12 21
	ora ($E0.b,X)		; 01 E0
	brk $03.b		; 00 03
	ora $51AAAF.l,X		; 1F AF AA 51
	inc $F1F2.w		; EE F2 F1
	cpx #$C1.b		; E0 C1
	eor ($0E.b),Y		; 51 0E
	tax		; AA
	sbc ($1E.b),Y		; F1 1E
	sbc ($10.b),Y		; F1 10
	and ($BD.b)		; 32 BD
	ora ($10.b),Y		; 11 10
	ldx #$22.b		; A2 22
	and ($0F.b,X)		; 21 0F
	sbc $D20C11.l		; EF 11 0C D2
	eor $AA.b,S		; 43 AA
	sbc ($1F.b),Y		; F1 1F
	brk $CF.b		; 00 CF
	eor ($0E.b)		; 52 0E
	brk $00.b		; 00 00
	tax		; AA
	sbc ($10.b,X)		; E1 10
	bit $BC.b		; 24 BC
	ora ($10.b),Y		; 11 10
	ora $0FA21F.l,X		; 1F 1F A2 0F
	inc $0D01.w		; EE 01 0D
	rep #$43		; C2 43
	bpl  15.b		; 10 0F
	tax		; AA
	ora $0F62EC.l,X		; 1F EC 62 0F
	beq  31.b		; F0 1F
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	tax		; AA
	ora $DA.b		; 05 DA
	ora ($2F.b),Y		; 11 2F
	bpl  15.b		; 10 0F
	ora ($E2.b,X)		; 01 E2
	ldx $20.b		; A6 20
	asl $4FE4.w		; 0E E4 4F
	inc $F000.w,X		; FE 00 F0
	phx		; DA
	ldx $E2.b		; A6 E2
	jsl $F01101.l		; 22 01 11 F0
	bpl  38.b		; 10 26
	jmp $E0CE96.l		; 5C 96 CE E0
	brk $0F.b		; 00 0F
	sbc $FC33FD.l		; EF FD 33 FC
	ldx $D4.b		; A6 D4
	rti		; 40

	inc $0F0F.w,X		; FE 0F 0F
	plx		; FA
.ACCU 16
	rep #$22		; C2 22
	ldx $01.b,Y		; B6 01
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	and $A2F0E0.l,X		; 3F E0 F0 A2
	jsl $FE0022.l		; 22 22 00 FE
	sbc ($1F.b),Y		; F1 1F
	dec $A644.w		; CE 44 A6
	sbc $FB0FE0.l,X		; FF E0 0F FB
	lda ($21.b)		; B2 21
	ora ($11.b),Y		; 11 11
	ldx $00.b,Y		; B6 00
	brk $11.b		; 00 11
	rti		; 40

	sbc $000000.l		; EF 00 00 00
	ldx #$00.b		; A2 00
	asl $10E0.w		; 0E E0 10
	cmp $2134.w		; CD 34 21
	ora $FD00A6.l		; 0F A6 00 FD
	sta ($21.b),Y		; 91 21
	and ($01.b,X)		; 21 01
	ora $00BA01.l,X		; 1F 01 BA 00
	jmp $10E1.w		; 4C E1 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx #$E0.b		; A2 E0
	bpl -36.b		; 10 DC
	bit $32.b,X		; 34 32
	brk $FF.b		; 00 FF
	cpx $B7AA.w		; EC AA B7
	ora $E1F11F.l,X		; 1F 1F F1 E1
	sbc ($10.b),Y		; F1 10
	jmp ($CEA6.w)		; 6C A6 CE
	sbc $F00000.l,X		; FF 00 00 F0
	ora $A61FF1.l		; 0F F1 1F A6
	inc $F053.w		; EE 53 F0
	sbc $AE0E0F.l		; EF 0F 0E AE
	and ($A6.b,X)		; 21 A6
	and ($10.b,X)		; 21 10
	bpl   0.b		; 10 00
	ora ($75.b),Y		; 11 75
	cmp $A6F0.w		; CD F0 A6
	brk $00.b		; 00 00
	sbc $10F10F.l,X		; FF 0F F1 10
	sbc $AA45.w		; ED 45 AA
	lda ($F0.b,X)		; A1 F0
	bpl  15.b		; 10 0F
	lda ($40.b,S),Y		; B3 40
	sbc ($E1.b),Y		; F1 E1
	ldx $00.b		; A6 00
	brk $12.b		; 00 12
	lsr $EC.b,X		; 56 EC
	beq -16.b		; F0 F0
	brk $A2.b		; 00 A2
	ora ($0F.b),Y		; 11 0F
	sbc $E4FB10.l		; EF 10 FB E4
	eor $20.b,S		; 43 20
	ldx $0F.b		; A6 0F
	sbc $1112CB.l,X		; FF CB 12 11
	ora ($10.b),Y		; 11 10
	ora $4712A6.l		; 0F A6 12 47
	sbc $00EF.w,X		; FD EF 00
	brk $F0.b		; 00 F0
	sbc $11EFA2.l,X		; FF A2 EF 11
	jsr ($43D3.w,X)		; FC D3 43
	jsr $EE0F.w		; 20 0F EE
	tax		; AA
	dec $F161.w		; CE 61 F1
	sbc ($FF.b,X)		; E1 FF
	ora $A64210.l,X		; 1F 10 42 A6
	trb $F1E0.w		; 1C E0 F1
	beq -16.b		; F0 F0
	beq -32.b		; F0 E0
	jsr $FEAA.w		; 20 AA FE
	and $EC.b,X		; 35 EC
	brk $01.b		; 00 01
	beq -19.b		; F0 ED
	mvp $11,$A6		; 44 A6 11
	and ($10.b,X)		; 21 10
	brk $01.b		; 00 01
	lsr $3D.b		; 46 3D
	cmp $2233A2.l,X		; DF A2 33 22
	and ($1F.b,X)		; 21 1F
	inc $FD01.w		; EE 01 FD
	cpy #$AA.b		; C0 AA
	tas		; 1B
	ora $DFE102.l		; 0F 02 E1 DF
	trb $1E.b		; 14 1E
	ora ($AA.b,X)		; 01 AA
	cpx #$00.b		; E0 00
	sbc ($22.b)		; F2 22
	asl A		; 0A
.ACCU 8
	sep #$20		; E2 20
	brk $AA.b		; 00 AA
	ora ($FF.b,X)		; 01 FF
	bpl  17.b		; 10 11
	sbc $2C33.w		; ED 33 2C
	sbc $FFFFA6.l,X		; FF A6 FF FF
	jmp.w [$22C0]		; DC C0 22
	and ($10.b,X)		; 21 10
	brk $AA.b		; 00 AA
	ora ($23.b,X)		; 01 23
	sbc $10C3.w		; ED C3 10
	ora $AA0E01.l,X		; 1F 01 0E AA
	and $310D2F.l		; 2F 2F 0D 31
	rol $00D0.w,X		; 3E D0 00
	brk $9A.b		; 00 9A
	dec $7DE5.w,X		; DE E5 7D
	brk $EF.b		; 00 EF
	sbc ($F1.b),Y		; F1 F1
	lsr $96.b,X		; 56 96
	lsr $9B.b,X		; 56 9B
	sbc $FEF0FF.l,X		; FF FF F0 FE
	sbc $0DA611.l		; EF 11 A6 0D
	ora ($34.b,X)		; 01 34
	sbc $DCE0FF.l,X		; FF FF E0 DC
	cpx $6FAA.w		; EC AA 6F
	ora $F1000F.l		; 0F 0F 00 F1
	bit $C2.b		; 24 C2
	ldy #$96.b		; A0 96
	sbc $FE0FFF.l		; EF FF 0F FE
	sbc $F31C10.l		; EF 10 1C F3
	ldx $05.b		; A6 05
	asl $E0FF.w,X		; 1E FF E0
	cmp $22EB.w,X		; DD EB 22
	ora ($AA.b)		; 12 AA
	sbc $150000.l,X		; FF 00 00 15
	rep #$CE		; C2 CE
	ora ($00.b)		; 12 00
	ldx $0F.b		; A6 0F
	ora $0E10E0.l		; 0F E0 10 0E
	sbc ($04.b)		; F2 04
	and $0000AA.l		; 2F AA 00 00
	inc $423C.w,X		; FE 3C 42
	beq  14.b		; F0 0E
	ora $1600AA.l,X		; 1F AA 00 16
	lda ($0B.b),Y		; B1 0B
	ora ($01.b)		; 12 01
	sbc ($0F.b),Y		; F1 0F
	stx $CF.b,Y		; 96 CF
	rol $D61D.w,X		; 3E 1D D6
	cmp [$7E.b],Y		; D7 7E
	sbc $AADE.w		; ED DE AA
	inc $243C.w,X		; FE 3C 24
	beq -16.b		; F0 F0
	beq   0.b		; F0 00
	trb $A6.b		; 14 A6
	and ($5D.b),Y		; 31 5D
	cmp $0F0FF0.l,X		; DF F0 0F 0F
	sbc $0FA610.l,X		; FF 10 A6 0F
	sbc $F1.b,S		; E3 F1
	rti		; 40

	sbc $0EFBEF.l,X		; FF EF FB 0E
	ldx $C2.b		; A6 C2
	ora ($11.b)		; 12 11
	bpl  31.b		; 10 1F
	ora $30.b,X		; 15 30
	adc $F0DEA6.l		; 6F A6 DE F0
	brk $F0.b		; 00 F0
	sbc $E3F010.l		; EF 10 F0 E3
	ldx $0E.b		; A6 0E
	adc ($FF.b,X)		; 61 FF
	sbc $A0F0EC.l		; EF EC F0 A0
	and ($A6.b),Y		; 31 A6
	and ($10.b,X)		; 21 10
	bpl   4.b		; 10 04
	eor $FFDE42.l,X		; 5F 42 DE FF
	ldx $00.b		; A6 00
	beq  -2.b		; F0 FE
	ora ($FF.b),Y		; 11 FF
	sbc $1D.b,S		; E3 1D
	eor $A6.b,S		; 43 A6
	sbc $E1FCFE.l,X		; FF FE FC E1
	ldx $2031.w,Y		; BE 31 20
	ora ($A6.b),Y		; 11 A6
	bpl   4.b		; 10 04
	rti		; 40

	and $DD.b		; 25 DD
	sbc $A6F000.l,X		; FF 00 F0 A6
	inc $FF11.w,X		; FE 11 FF
	sbc $1D.b,S		; E3 1D
	bit $FF.b,X		; 34 FF
	inc $FCA6.w,X		; FE A6 FC
	sbc ($CD.b,X)		; E1 CD
	jsl $101111.l		; 22 11 11 10
	ora $A6.b,S		; 03 A6
	eor $E0ED17.l,X		; 5F 17 ED E0
	ora $110DF0.l		; 0F F0 0D 11
	tax		; AA
	cpx #$F4.b		; E0 F4
	phd		; 0B
	and $CD.b,X		; 35 CD
	bpl  -1.b		; 10 FF
	tsb $A6.b		; 04 A6
	xba		; EB
	and ($21.b,X)		; 21 21
	ora ($01.b),Y		; 11 01
	cop $50.b		; 02 50
	asl $A6.b		; 06 A6
	trb $1FEF.w		; 1C EF 1F
	ora $FEF20E.l		; 0F 0E F2 FE
	sbc ($A6.b)		; F2 A6
	and $EF2FE5.l		; 2F E5 2F EF
	sbc $FBD1.w		; ED D1 FB
	cop $A6.b		; 02 A6
	jsr $1111.w		; 20 11 11
	cop $50.b		; 02 50
	sbc $3D.b,X		; F5 3D
	cmp $2243A2.l,X		; DF A2 43 22
	bpl -16.b		; 10 F0
	asl $10CE.w		; 0E CE 10
	cmp ($A6.b),Y		; D1 A6
	eor $D1FCFE.l		; 4F FE FC D1
	phd		; 0B
	sbc $11.b,S		; E3 11
	ora ($A6.b),Y		; 11 A6
	bpl  18.b		; 10 12
	eor ($F3.b,X)		; 41 F3
	adc $F0DF.w		; 6D DF F0
	ora $F010A2.l		; 0F A2 10 F0
	asl $21CE.w		; 0E CE 21
	sbc $A62144.l		; EF 44 21 A6
	jsr ($0DC2.w,X)		; FC C2 0D
.INDEX 16
	rep #$11		; C2 11
	ora ($11.b),Y		; 11 11
	ora ($A6.b),Y		; 11 A6
	bvc -14.b		; 50 F2
	rts		; 60

	cmp $FFF0F0.l		; CF F0 F0 FF
	sbc ($A6.b),Y		; F1 A6
	ora $DF40D1.l		; 0F D1 40 DF
	adc ($EF.b,X)		; 61 EF
	sbc $A6C0.w,X		; FD C0 A6
	asl $11B2.w,X		; 1E B2 11
	ora ($10.b),Y		; 11 10
	ora ($40.b)		; 12 40
	brk $A6.b		; 00 A6
	adc $BE.b,S		; 63 BE
	brk $0F.b		; 00 0F
	sbc $D00FF1.l,X		; FF F1 0F D0
	ldx $50.b		; A6 50
	sbc $FE53.w		; ED 53 FE
	sbc $1FC0.w,X		; FD C0 1F
	bcs -90.b		; B0 A6
	and ($11.b,X)		; 21 11
	ora ($12.b,X)		; 01 12
	eor ($F0.b,X)		; 41 F0
	eor $CE.b		; 45 CE
	ldx #$3244.w		; A2 44 32
	bpl   0.b		; 10 00
	bpl -52.b		; 10 CC
	ora ($0D.b)		; 12 0D
	ldx $34.b		; A6 34
	sbc $00C0FD.l,X		; FF FD C0 00
	cmp $1121.w,X		; DD 21 11
	ldx $01.b		; A6 01
	and ($41.b,X)		; 21 41
	beq  39.b		; F0 27
	sbc $F0F0.w		; ED F0 F0
	ldx #$0011.w		; A2 11 00
	bpl -37.b		; 10 DB
	ora ($FD.b),Y		; 11 FD
	sbc $42.b,S		; E3 42
	ldx $EE.b		; A6 EE
	cmp $22DB11.l		; CF 11 DB 22
	jsr $0111.w		; 20 11 01
	tax		; AA
	eor $15C3.w		; 4D C3 15
	lda $F040.w		; AD 40 F0
	brk $11.b		; 00 11
	ldx $00.b		; A6 00
	cmp $EF50.w,X		; DD 50 EF
	sbc $2E.b,X		; F5 2E
	inc $AACF.w,X		; FE CF AA
	and $E163EB.l		; 2F EB 63 E1
	bne  16.b		; D0 10
	eor $A6C3.w		; 4D C3 A6
	asl $3C.b		; 06 3C
	ora $F1FEF0.l,X		; 1F F0 FE F1
	brk $EC.b		; 00 EC
	tax		; AA
	ror $E7D1.w,X		; 7E D1 E7
	sbc $D4F0.w		; ED F0 D4
	bpl -22.b		; 10 EA
	ldx $D4.b		; A6 D4
	and $10.b,S		; 23 10
	ora ($43.b,X)		; 01 43
	sbc $A66E13.l		; EF 13 6E A6
	inc $0EF0.w,X		; FE F0 0E
	sbc ($00.b),Y		; F1 00
	cpx $1E21.w		; EC 21 1E
	ldx $D3.b		; A6 D3
	eor $11CFFE.l		; 4F FE CF 11
	asl A		; 0A
	ldy $23.b,X		; B4 23
	tax		; AA
	tsb BG3HOFS.w		; 0C 11 21
	ldx #$5A11.w		; A2 11 5A
	asl $A621.w		; 0E 21 A6
	sbc $FB10F0.l,X		; FF F0 10 FB
	ora ($1F.b)		; 12 1F
	lda ($51.b),Y		; B1 51
	ldx $EF.b		; A6 EF
	dec $FC21.w		; CE 21 FC
	ldx #$5032.w		; A2 32 50
	sbc ($A6.b),Y		; F1 A6
	bit $EE.b,X		; 34 EE
	ora ($53.b),Y		; 11 53
	ora $1FEF.w		; 0D EF 1F
	beq -90.b		; F0 A6
	brk $FC.b		; 00 FC
	ora ($20.b,X)		; 01 20
	lda $CEFF52.l		; AF 52 FF CE
	ldx $10.b,Y		; B6 10
	ora $2121C0.l		; 0F C0 21 21
	brk $12.b		; 00 12
	ora $3221AA.l		; 0F AA 21 32
	ldx $3F01.w,Y		; BE 01 3F
.INDEX 8
	sep #$1F		; E2 1F
	ora $E1A6.w		; 0D A6 E1
	and ($BC.b),Y		; 31 BC
	bit $0F.b		; 24 0F
	cmp $0F21.w,X		; DD 21 0F
	tax		; AA
	sta $6D.b,X		; 95 6D
	bmi -80.b		; 30 B0
	and ($B0.b)		; 32 B0
	ora ($24.b),Y		; 11 24
	ldx $1F.b		; A6 1F
	cpy $EF22.w		; CC 22 EF
	ora $20E20D.l,X		; 1F 0D E2 20
	ldx $ED.b		; A6 ED
	cpy $2F.b		; C4 2F
	sbc $0011.w		; ED 11 00
	plb		; AB
	and ($AA.b,S),Y		; 33 AA
	cpx $DE.b		; E4 DE
	ora ($DF.b)		; 12 DF
	bpl  52.b		; 10 34
	cmp $A6EE.w,X		; DD EE A6
	ora ($FE.b,S),Y		; 13 FE
	brk $0D.b		; 00 0D
	sbc ($00.b)		; F2 00
	inc $B693.w,X		; FE 93 B6
	and $1F01FF.l		; 2F FF 01 1F
	cpx $0212.w		; EC 12 02
	and ($AA.b),Y		; 31 AA
	pei ($EF.b)		; D4 EF
	sbc ($F6.b,S),Y		; F3 F6
	inc $73DC.w		; EE DC 73
	cmp $1F3EAA.l		; CF AA 3E 1F
	cop $F1.b		; 02 F1
	cpx #$B5.b		; E0 B5
	tad		; 5B
	sbc $0001B6.l,X		; FF B6 01 00
	jsr ($0102.w,X)		; FC 02 01
	and ($F2.b)		; 32 F2
	ora $14F0A6.l		; 0F A6 F0 14
	eor ($EB.b)		; 52 EB
	sbc $0E.b,S		; E3 0E
	ora $F1A6FF.l		; 0F FF A6 F1
	brk $F0.b		; 00 F0
	cpy $FD41.w		; CC 41 FD
	cop $00.b		; 02 00
	tax		; AA
	plx		; FA
	eor $D2.b		; 45 D2
	jsl $11FD93.l		; 22 93 FD 11
	jsr $64A6.w		; 20 A6 64
	xba		; EB
	cmp ($0E.b,S),Y		; D3 0E
	ora $FF11D0.l,X		; 1F D0 11 FF
	ldx $E2.b		; A6 E2
	xba		; EB
	ora ($FE.b),Y		; 11 FE
	cop $10.b		; 02 10
	jsr ($AAB0.w,X)		; FC B0 AA
	bpl  35.b		; 10 23
	lda ($EE.b),Y		; B1 EE
	cop $10.b		; 02 10
	bvc -68.b		; 50 BC
	ldx $D1.b		; A6 D1
	asl $CF10.w		; 0E 10 CF
	and ($FE.b),Y		; 31 FE
	sbc ($0C.b)		; F2 0C
	tax		; AA
	rol $112F.w,X		; 3E 2F 11
	ora $6F93F0.l		; 0F F0 93 6F
	ora ($AA.b)		; 12 AA
	tas		; 1B
	ora $2F11.w		; 0D 11 2F
	bvc -21.b		; 50 EB
	ora $00.b,S		; 03 00
	ldx $10.b		; A6 10
	lda $F3FD41.l,X		; BF 41 FD F3
	tsb $DF1D.w		; 0C 1D DF
	ldx $01.b,Y		; B6 01
	bpl -16.b		; 10 F0
	cpx $1221.w		; EC 21 12
	.db $42, $0E		; 42 0E
	ldx $0F.b		; A6 0F
	ora ($25.b,X)		; 01 25
	jsr $F0CE.w		; 20 CE F0
	bpl -36.b		; 10 DC
	ldx $43.b		; A6 43
	sbc $1CE3.w,X		; FD E3 1C
	brk $AE.b		; 00 AE
	ora ($10.b)		; 12 10
	ldx $00.b,Y		; B6 00
	sbc $1111.w		; ED 11 11
	and ($0F.b,S),Y		; 33 0F
	beq   1.b		; F0 01
	ldx $13.b		; A6 13
	bmi -34.b		; 30 DE
	cpx #$20.b		; E0 20
	jmp.w [$1C24]		; DC 24 1C
	ldx $F2.b		; A6 F2
	inc $BC01.w,X		; FE 01 BC
	ora ($01.b)		; 12 01
	brk $EA.b		; 00 EA
	tax		; AA
	.db $62, $E1, $32		; 62 E1 32
	lda $1311.w		; AD 11 13
	sbc ($1E.b,X)		; E1 1E
	ldx $EE.b		; A6 EE
	sbc $E5ED11.l,X		; FF 11 ED E5
	rol $E0F0.w		; 2E F0 E0
	plb		; AB
	ora ($BF.b,X)		; 01 BF
	.db $42, $E1		; 42 E1
	inc $120F.w,X		; FE 0F 12
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($06.b)		; 92 06
	asl $1F2E.w,X		; 1E 2E 1F
	jsl $403133.l		; 22 33 31 40
	stx $3C.b		; 86 3C
	pld		; 2B
	jmp $EE11.w		; 4C 11 EE
	asl A		; 0A
	and $15.b		; 25 15
	ldx $00.b,Y		; B6 00
	ora $4ED20E.l		; 0F 0E D2 4E
	cpx $20.b		; E4 20
	bpl -74.b		; 10 B6
	ora ($0D.b),Y		; 11 0D
	beq -80.b		; F0 B0
	cpx $E112.w		; EC 12 E1
	eor $C6.b,S		; 43 C6
	and ($12.b),Y		; 31 12
	sbc ($E0.b,X)		; E1 E0
	tsb $002C.w		; 0C 2C 00
	sbc $10C6.w,X		; FD C6 10
	ora ($F3.b,X)		; 01 F3
	asl $5D4E.w,X		; 1E 4E 5D
	sbc $1D.b,S		; E3 1D
	dec $4E.b		; C6 4E
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	sbc $F0F10F.l,X		; FF 0F F1 F0
	asl $FEB2.w,X		; 1E B2 FE
	brk $F2.b		; 00 F2
	rol $012E.w		; 2E 2E 01
	lda ($3C.b,S),Y		; B3 3C
	lda ($32.b)		; B2 32
	sbc $D4.b,X		; F5 D4
	rol $F040.w		; 2E 40 F0
	asl $C2ED.w		; 0E ED C2
	cpx #$EC.b		; E0 EC
	asl $D0CF.w		; 0E CF D0
	cmp ($00.b,X)		; C1 00
	cpx #$B2.b		; E0 B2
	tas		; 1B
	cop $E3.b		; 02 E3
	pei ($10.b)		; D4 10
	eor ($F3.b)		; 52 F3
	ora ($B2.b)		; 12 B2
	inc $C11D.w,X		; FE 1D C1
	lda $D0B0B2.l,X		; BF B2 B0 D0
	rol $5FA2.w		; 2E A2 5F
	sbc $DDDDDD.l,X		; FF DD DD DD
	inc $F0EC.w		; EE EC F0
	ldx #$B0.b		; A2 B0
	trb $EFFD.w		; 1C FD EF
	bne -110.b		; D0 92
	sta $20A20B.l,X		; 9F 0B A2 20
	pea $21E4.w		; F4 E4 21
	ora $CCDCED.l		; 0F ED DC CC
	txs		; 9A
	cpx #$0F.b		; E0 0F
	ora $F1E4.w,X		; 1D E4 F1
.INDEX 8
	sep #$11		; E2 11
	and ($8A.b,X)		; 21 8A
	rol $F113.w		; 2E 13 F1
	sbc ($2E.b,X)		; E1 2E
	and $AA030D.l		; 2F 0D 03 AA
	tsb $2E5B.w		; 0C 5B 2E
	rol $D103.w,X		; 3E 03 D1
	asl $A600.w,X		; 1E 00 A6
	ora ($21.b),Y		; 11 21
	and ($34.b,S),Y		; 33 34
	mvp $36,$42		; 44 42 36
	lda [$A6.b]		; A7 A6
	inc $CDFE.w,X		; FE FE CD
	ldy $BEBC.w		; AC BC BE
	cmp $CCC2F0.l,X		; DF F0 C2 CC
	cmp $FDDF.w,X		; DD DF FD
	ora $1D0D.w		; 0D 0D 1D
	ora $406FB6.l,X		; 1F B6 6F 40
	trb $F3.b		; 14 F3
	brk $01.b		; 00 01
	sbc ($E0.b),Y		; F1 E0
	ldx $0D.b,Y		; B6 0D
	asl $C2F0.w,X		; 1E F0 C2
	lda ($FB.b)		; B2 FB
	phk		; 4B
	and $10B6.w,X		; 3D B6 10
	sbc ($00.b),Y		; F1 00
	ora ($20.b),Y		; 11 20
	and ($E7.b),Y		; 31 E7
	inc A		; 1A
	dec $5C.b		; C6 5C
	and $1EF0F2.l,X		; 3F F2 F0 1E
	rol $002E.w		; 2E 2E 00
	ldx $E3.b,Y		; B6 E3
	cmp ($E1.b)		; D2 E1
	beq -15.b		; F0 F1
	cmp ($D1.b,S),Y		; D3 D1
	tsb $3CC6.w		; 0C C6 3C
	rol $301D.w,X		; 3E 1D 30
	cmp ($D3.b,S),Y		; D3 D3
	cmp ($1E.b)		; D2 1E
	rep #$01		; C2 01
	sbc $1F.b,S		; E3 1F
	rti		; 40

	rti		; 40

	rti		; 40

	eor ($32.b,X)		; 41 32
	ldx $2E.b,Y		; B6 2E
	jmp $003F.w		; 4C 3F 00
	ora $EFC301.l,X		; 1F 01 C3 EF
	dec $F0.b		; C6 F0
	asl $3C2C.w		; 0E 2C 3C
	jsr $5CFE.w		; 20 FE 5C
	rol $EFB2.w,X		; 3E B2 EF
	beq  16.b		; F0 10
	and ($04.b),Y		; 31 04
	ora $1F.b,S		; 03 1F
	and ($C6.b),Y		; 31 C6
	brk $2E.b		; 00 2E
	jsr $2E00.w		; 20 00 2E
	ora ($E4.b),Y		; 11 E4
	sbc $F340C2.l		; EF C2 40 F3
	cmp ($E0.b),Y		; D1 E0
	cpy #$DD.b		; C0 DD
	cpx $B6DE.w		; EC DE B6
.ACCU 8
	sep #$2E		; E2 2E
	rti		; 40

	and ($12.b,X)		; 21 12
	brk $0F.b		; 00 0F
	sbc $EFEFB6.l,X		; FF B6 EF EF
	sbc ($0A.b,X)		; E1 0A
	jmp ($E305.w,X)		; 7C 05 E3
	bpl -74.b		; 10 B6
	jmp $4C6B7B.l		; 5C 7B 6B 4C
	trb $F12C.w		; 1C 2C F1
	cmp $C6.b,S		; C3 C6
	beq  31.b		; F0 1F
	rol $5D4E.w,X		; 3E 4E 5D
	jsr $4D1D.w		; 20 1D 4D
	dec $E3.b		; C6 E3
	cmp $3C4B2B.l		; CF 2B 4B 3C
	jmp $025E.w		; 4C 5E 02
	ldx #$A7.b		; A2 A7
	asl $53.b,X		; 16 53
	and [$5F.b]		; 27 5F
	ror A		; 6A
	and ($0C.b),Y		; 31 0C
	lda ($1F.b)		; B2 1F
	sbc ($F2.b),Y		; F1 F2
	sbc ($D3.b),Y		; F1 D3
	ora ($F4.b,X)		; 01 F4
	cmp $B2.b		; C5 B2
	and $E451.w		; 2D 51 E4
	pea $E4F4.w		; F4 F4 E4
	beq  16.b		; F0 10
.ACCU 16
	rep #$E2		; C2 E2
	ora $041221.l		; 0F 21 12 04
	pea $3E1F.w		; F4 1F 3E
	lda ($01.b)		; B2 01
	dec $DAEA.w,X		; DE EA DA
	xce		; FB
	phx		; DA
	inc A		; 1A
	sbc $0DCDB2.l		; EF B2 CD 0D
	phd		; 0B
	bit $E321.w,X		; 3C 21 E3
	and $B26F.w		; 2D 6F B2
	cmp $A2.b,X		; D5 A2
	ora $302E.w		; 0D 2E 30
	and $B21145.l		; 2F 45 11 B2
	rts		; 60

	eor $01.b,S		; 43 01
	bpl -27.b		; 10 E5
	sep #$03		; E2 03
	ora $3220C2.l,X		; 1F C2 20 32
	ora $00.b,S		; 03 00
	asl $1D2D.w,X		; 1E 2D 1D
	trb $19B2.w		; 1C B2 19
	inc A		; 1A
	phd		; 0B
	stp		; DB
	cmp $39FA.w		; CD FA 39
	rol $F2B2.w,X		; 3E B2 F2
	cpx #$F2.b		; E0 F2
	cmp $C1.b		; C5 C1
	asl $F111.w,X		; 1E 11 F1
	lda ($2D.b)		; B2 2D
	lsr $4D20.w,X		; 5E 20 4D
	eor $113D.w,X		; 5D 3D 11
	rep #$C2		; C2 C2
	asl $1110.w,X		; 1E 10 11
	and $04.b,S		; 23 04
	jsl $B20022.l		; 22 22 00 B2
	and $F24C.w		; 2D 4C F2
	ldy $ED.b,X		; B4 ED
	phk		; 4B
	tad		; 5B
	rti		; 40

	rep #$C1		; C2 C1
	sbc $EE1D.w,X		; FD 1D EE
	ora $0E1D.w		; 0D 1D 0E
	asl $1CB2.w		; 0E B2 1C
	tsa		; 3B
	and ($E0.b),Y		; 31 E0
	jmp $506F6D.l		; 5C 6D 6F 50
	lda ($31.b)		; B2 31
	jsl $2C1CFE.l		; 22 FE 1C 2C
	sbc ($C4.b,S),Y		; F3 C4
	and $B2.b,S		; 23 B2
	jsl $3B2F51.l		; 22 51 2F 3B
	ora $A5.b,S		; 03 A5
	ora $B24F.w		; 0D 4F B2
	beq  60.b		; F0 3C
	jmp $F64E.w		; 4C 4E F6
	lda ($DF.b,S),Y		; B3 DF
	sbc $EEB2.w,X		; FD B2 EE
	rol $6DED.w		; 2E ED 6D
	inc $B3.b		; E6 B3
	ora $E0B22F.l		; 0F 2F B2 E0
	rol $3B3A.w		; 2E 3A 3B
	rol $C610.w		; 2E 10 C6
	lda $0E1DC2.l,X		; BF C2 1D 0E
	bne -64.b		; D0 C0
	cmp ($E2.b)		; D2 E2
	sbc ($01.b)		; F2 01
	rep #$03		; C2 03
	cop $03.b		; 02 03
	pea $11F2.w		; F4 F2 11
	ora ($E3.b)		; 12 E3
	lda ($D2.b)		; B2 D2
	and $D512.w		; 2D 12 D5
	cpy $E14E.w		; CC 4E E1
	cmp ($C2.b,S),Y		; D3 C2
	cmp $112D2D.l		; CF 2D 2D 11
	beq  12.b		; F0 0C
	rol $C2D2.w		; 2E D2 C2
	cmp ($E0.b,X)		; C1 E0
	sep #$C2		; E2 C2
	sbc $E0032E.l		; EF 2E 03 E0
	lda ($43.b)		; B2 43
	inc $045E.w,X		; FE 5E 04
	cmp [$D6.b]		; C7 D6
	ora ($35.b),Y		; 11 35
	lda ($C5.b)		; B2 C5
	sbc $F2.b,S		; E3 F2
	sbc ($B5.b,S),Y		; F3 B5
	ldx #$B1.b		; A2 B1
	xba		; EB
	lda ($29.b)		; B2 29
	rol $1BDE.w,X		; 3E DE 1B
	lsr $B6F5.w		; 4E F5 B6
	jmp $D262B2.l		; 5C B2 62 D2
	ora ($A4.b)		; 12 A4
	sbc ($E2.b,X)		; E1 E2
	trb $B22D.w		; 1C 2D B2
	bpl -14.b		; 10 F2
	ora $A3.b,S		; 03 A3
	inc $1CF0.w,X		; FE F0 1C
	jmp ($05B2.w)		; 6C B2 05
	lda $0E.b,X		; B5 0E
	bmi  30.b		; 30 1E
	lsr $FEE3.w		; 4E E3 FE
	lda ($0F.b)		; B2 0F
	sbc ($D3.b,S),Y		; F3 D3
	dec $E1.b,X		; D6 E1
	jsr $3000.w		; 20 00 30
	lda ($F2.b,S),Y		; B3 F2
	dec $C2.b		; C6 C2
	beq  18.b		; F0 12
	sep #$01		; E2 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $01.b		; A4 01
	sbc ($0E.b,X)		; E1 0E
	jsl $D0410E.l		; 22 0E 41 D0
	bpl -108.b		; 10 94
	cpx #$5F.b		; E0 5F
	ldy $2C.b,X		; B4 2C
	sbc $E42F1F.l,X		; FF 1F 2F E4
	sty $1D.b,X		; 94 1D
	tsb $B0.b		; 04 B0
	and ($FE.b)		; 32 FE
	adc ($CE.b,X)		; 61 CE
	eor ($90.b,X)		; 41 90
	brk $00.b		; 00 00
	and ($24.b,X)		; 21 24
	and ($42.b,X)		; 21 42
	ora ($21.b,X)		; 01 21
	ldy #$20.b		; A0 20
	cop $1F.b		; 02 1F
	cpx #$1D.b		; E0 1D
	sbc ($1B.b),Y		; F1 1B
	tyx		; BB
	cpy #$01.b		; C0 01
	and ($03.b,X)		; 21 03
	sbc ($0B.b)		; F2 0B
	lda $C0BEEC.l,X		; BF EC BE C0
	brk $C2.b		; 00 C2
	and $323302.l,X		; 3F 02 33 32
	and ($11.b,X)		; 21 11
	bcs  35.b		; B0 23
	lda $01CFEC.l		; AF EC CF 01
	and $51.b,S		; 23 51
	and ($C0.b,X)		; 21 C0
	lda $DCEE.w,X		; BD EE DC
	sbc ($1F.b),Y		; F1 1F
	bit $32.b,X		; 34 32
	eor $B4.b		; 45 B4
	sbc $FFFF0F.l		; EF 0F FF FF
	xce		; FB
	ora ($20.b)		; 12 20
	cmp $F0C4.w,X		; DD C4 F0
	ora ($F1.b,X)		; 01 F1
	ora ($11.b),Y		; 11 11
	tsb $01.b		; 04 01
	sbc ($B4.b),Y		; F1 B4
	lda $F4FF4C.l,X		; BF 4C FF F4
	cpy #$C3.b		; C0 C3
	ora $2AA4EE.l		; 0F EE A4 2A
	rep #$0F		; C2 0F
	trb $00.b		; 14 00
	asl $F1.b,X		; 16 F1
	eor ($98.b,X)		; 41 98
	asl $1D3A.w		; 0E 3A 1D
	and $224B.w,X		; 3D 4B 22
	cmp ($D6.b),Y		; D1 D6
	tya		; 98
	bne -13.b		; D0 F3
	sbc $2DB421.l,X		; FF 21 B4 2D
	bpl  61.b		; 10 3D
	ldy $10.b,X		; B4 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	inc $215C.w		; EE 5C 21
	ldy $1D.b,X		; B4 1D
	cmp $00F0.w		; CD F0 00
	ora ($00.b),Y		; 11 00
	ora ($E3.b)		; 12 E3
	ldy $3C.b,X		; B4 3C
	ora $E2FEF0.l,X		; 1F F0 FE E2
	beq  14.b		; F0 0E
	sbc $010FB4.l		; EF B4 0F 01
	ora ($22.b,X)		; 01 22
	and ($31.b,X)		; 21 31
	ora ($04.b)		; 12 04
	ldy $C5.b		; A4 C5
	cmp $DDEE0E.l		; CF 0E EE DD
	cpy $BECD.w		; CC CD BE
	tya		; 98
	ora $1BE4.w,X		; 1D E4 1B
	and ($0C.b,X)		; 21 0C
	and $B2.b,S		; 23 B2
	brk $B4.b		; 00 B4
	bpl  17.b		; 10 11
	brk $3C.b		; 00 3C
	and ($DE.b),Y		; 31 DE
	cop $A3.b		; 02 A3
	ldy $E0.b,X		; B4 E0
	ora ($C1.b)		; 12 C1
	pld		; 2B
	bmi  16.b		; 30 10
	ora $E5.b,S		; 03 E5
	ldy $B1.b,X		; B4 B1
	jsr $10EF.w		; 20 EF 10
	asl $3E5D.w		; 0E 5D 3E
	eor $5DB4.w		; 4D B4 5D
	and ($4B.b,X)		; 21 4B
	bit $96.b,X		; 34 96
	cmp ($2E.b,X)		; C1 2E
	jmp.w [$11C4]		; DC C4 11
.INDEX 16
	rep #$1B		; C2 1B
	lsr $1DF1.w		; 4E F1 1D
	ora ($FF.b),Y		; 11 FF
	cpy $2D.b		; C4 2D
	and $002FFF.l,X		; 3F FF 2F 00
	brk $0F.b		; 00 0F
	ora ($B4.b,X)		; 01 B4
	ora $EF14.w		; 0D 14 EF
	tad		; 5B
	jsl $21D004.l		; 22 04 D0 21
	ldy $1B.b,X		; B4 1B
	eor $C3232C.l,X		; 5F 2C 23 C3
	cmp ($00.b)		; D2 00
	and $0201C0.l,X		; 3F C0 01 02
	cop $2F.b		; 02 2F
	and ($12.b),Y		; 31 12
	ora ($40.b),Y		; 11 40
	cpy #$1011.w		; C0 11 10
	rti		; 40

	brk $3F.b		; 00 3F
	ora ($F1.b),Y		; 11 F1
	brk $B0.b		; 00 B0
	sbc $E0D01D.l		; EF 1D D0 E0
	cpx $BBE1.w		; EC E1 BB
	phd		; 0B
	ldy $12.b,X		; B4 12
	lda $2A.b,S		; A3 2A
	lsr $0E00.w		; 4E 00 0E
	and $EDB010.l		; 2F 10 B0 ED
	beq  15.b		; F0 0F
	and $0122.w		; 2D 22 01
	and ($E4.b),Y		; 31 E4
	bcs  50.b		; B0 32
	ora $F3.b,X		; 15 F3
	.db $42, $33		; 42 33
	jsl $B03234.l		; 22 34 32 B0
	bit $50.b,X		; 34 50
	and $32.b,S		; 23 32
	bit $01.b		; 24 01
	lsr $B031.w,X		; 5E 31 B0
	cop $01.b		; 02 01
	asl $F13D.w		; 0E 3D F1
	cpy #$1DFC.w		; C0 FC 1D
	ldy $10.b,X		; B4 10
	ora $F34D.w		; 0D 4D F3
.INDEX 16
	rep #$1D		; C2 1D
	ora ($2D.b,X)		; 01 2D
	ldy $03.b,X		; B4 03
	cpy $C2.b		; C4 C2
	bpl -16.b		; 10 F0
	rol $1E01.w		; 2E 01 1E
	ldy #$E432.w		; A0 32 E4
	jsr $E323.w		; 20 23 E3
	asl $EE25.w		; 0E 25 EE
	ldy #$6F5A.w		; A0 5A 6F
	and $32.b,S		; 23 32
	ora ($23.b)		; 12 23
	and $51.b		; 25 51
	ldy #$4562.w		; A0 62 45
	and $34.b,X		; 35 34
	bmi 112.b		; 30 70
	and [$E1.b]		; 27 E1
	ldy $3E.b		; A4 3E
	cmp ($0E.b,S),Y		; D3 0E
	sbc ($D1.b,S),Y		; F3 D1
	bit $E210.w		; 2C 10 E2
	ldy $00.b,X		; B4 00
	ora $0F4E.w		; 0D 4E 0F
	sbc $F0.b,S		; E3 F0
	asl $A411.w		; 0E 11 A4
	cmp $1A.b,S		; C3 1A
	lsr $3CD0.w,X		; 5E D0 3C
	and $A0DF02.l,X		; 3F 02 DF A0
	dec $0F1A.w,X		; DE 1A 0F
	cmp ($E1.b,X)		; C1 E1
	inc $E220.w,X		; FE 20 E2
	ldy $F1.b		; A4 F1
	ora ($0E.b),Y		; 11 0E
	ora $B2.b,X		; 15 B2
	and $FD04.w,X		; 3D 04 FD
	ldy $32.b		; A4 32
	ora $D025.w		; 0D 25 D0
	xce		; FB
	eor $E0.b,X		; 55 E0
	pei ($B0.b)		; D4 B0
	eor $101431.l,X		; 5F 31 14 10
	jsr $11FF.w		; 20 FF 11
	ora ($A4.b),Y		; 11 A4
	bpl -32.b		; 10 E0
	sbc ($CD.b),Y		; F1 CD
	jmp $00E22F.l		; 5C 2F E2 00
	ldy $03.b		; A4 03
	inc $202C.w		; EE 2C 20
	cmp ($0D.b)		; D2 0D
	jmp $A42F.w		; 4C 2F A4
	ora $FF1F0F.l		; 0F 0F 1F FF
	eor $F011.w		; 4D 11 F0
	brk $90.b		; 00 90
	inc A		; 1A
	sep #$C0		; E2 C0
	cmp ($2F.b,X)		; C1 2F
	sbc ($FB.b)		; F2 FB
	mvn $F4,$A0		; 54 A0 F4
	jsl $342434.l		; 22 34 24 34
	eor $35.b,S		; 43 35
	bit $A4.b,X		; 34 A4
	ora $FF4F.w,X		; 1D 4F FF
	ora ($E1.b),Y		; 11 E1
	bit $014D.w,X		; 3C 4D 01
	bcc  95.b		; 90 5F
	bit $14.b		; 24 14
	ora ($4E.b,S),Y		; 13 4E
	and $904F2C.l		; 2F 2C 4F 90
	eor $EE23.w,X		; 5D 23 EE
	trb $D410.w		; 1C 10 D4
	sbc $C3.b,S		; E3 C3
	ldy #$1CEE.w		; A0 EE 1C
	ora ($FF.b,X)		; 01 FF
	ora $EF0EC0.l,X		; 1F C0 0E EF
	bcc  -1.b		; 90 FF
	ora $FF0CF0.l,X		; 1F F0 0C FF
	cpx $EE2E.w		; EC 2E EE
	bcc -48.b		; 90 D0
	sbc $2F3A3F.l,X		; FF 3F 3A 2F
	lda ($CE.b,X)		; A1 CE
	cmp $D00B80.l,X		; DF 80 0B D0
	tsb $B425.w		; 0C 25 B4
	cpx $F4.b		; E4 F4
	jmp $1F2290.l		; 5C 90 22 1F
	and ($D2.b,X)		; 21 D2
	asl $CF14.w,X		; 1E 14 CF
	ora $4EFC90.l		; 0F 90 FC 4E
	beq -15.b		; F0 F1
	dec $D52D.w,X		; DE 2D D5
	asl $31A0.w,X		; 1E A0 31
	tsb $01.b		; 04 01
	rti		; 40

	and ($21.b,S),Y		; 33 21
	and $10.b,S		; 23 10
	bcc  50.b		; 90 32
	and $F2.b,S		; 23 F2
	eor $0220.w		; 4D 20 02
	sbc ($30.b,S),Y		; F3 30
	bcc -15.b		; 90 F1
	trb $E445.w		; 1C 45 E4
	and ($40.b),Y		; 31 40
	sbc ($12.b),Y		; F1 12
	ldy #$F0E2.w		; A0 E2 F0
	beq -18.b		; F0 EE
	ora $CFE100.l,X		; 1F 00 E1 CF
	sty $B1.b		; 84 B1
	cmp [$D5.b],Y		; D7 D5
	brk $C5.b		; 00 C5
	bcs -47.b		; B0 D1
	cmp ($A0.b),Y		; D1 A0
	asl $1CFD.w		; 0E FD 1C
	inc $0EEE.w		; EE EE 0E
	sbc ($EE.b),Y		; F1 EE
	ldy #$C0F1.w		; A0 F1 C0
	sbc ($F1.b),Y		; F1 F1
	ora ($1F.b,X)		; 01 1F
	bpl -13.b		; 10 F3
	bra -12.b		; 80 F4
	and $E3.b,X		; 35 E3
	rtl		; 6B

	eor ($35.b),Y		; 51 35
	pei ($13.b)		; D4 13
	sty $F1.b,X		; 94 F1
	ora $C324.w,X		; 1D 24 C3
	sbc ($0F.b),Y		; F1 0F
	sbc ($B4.b,S),Y		; F3 B4
	bra  97.b		; 80 61
	and ($34.b)		; 32 34
	eor $2C26.w,X		; 5D 26 2C
	and ($61.b)		; 32 61
	bcc  50.b		; 90 32
	sbc $12.b,X		; F5 12
	pea $0213.w		; F4 13 02
	ora ($0E.b),Y		; 11 0E
	bcc  93.b		; 90 5D
	brk $FF.b		; 00 FF
	beq -48.b		; F0 D0
	cpx #$1FEE.w		; E0 EE 1F
	bcc  -1.b		; 90 FF
	ora $DFE2.w		; 0D E2 DF
	tsb $1EF0.w		; 0C F0 1E
	cmp ($90.b),Y		; D1 90
	asl $3DED.w		; 0E ED 3D
	cpy $4AE2.w		; CC E2 4A
	and $F1.b,S		; 23 F1
	bcc -64.b		; 90 C0
	cmp ($FE.b)		; D2 FE
	and $F0EE3F.l		; 2F 3F EE F0
	inc $2194.w		; EE 94 21
	jsr ($E14E.w,X)		; FC 4E E1
	pea $C3F0.w		; F4 F0 C3
	sbc $4B94.w,X		; FD 94 4B
	and $B351.w		; 2D 51 B3
	ora $F1F1.w,X		; 1D F1 F1
	ora ($90.b,S),Y		; 13 90
	sbc ($00.b,X)		; E1 00
	bne  15.b		; D0 0F
	sbc $02.b		; E5 02
	tsb $EF.b		; 04 EF
	bra 109.b		; 80 6D
	ora ($21.b,X)		; 01 21
	.db $62, $34, $31		; 62 34 31
	ora $33.b,X		; 15 33
	bcc  18.b		; 90 12
	jsr $4030.w		; 20 30 40
	ora $F2.b		; 05 F2
	bit $13.b		; 24 13
	sty $12.b,X		; 94 12
	lda ($3D.b)		; B2 3D
	asl $C76E.w,X		; 1E 6E C7
	cmp $F58021.l		; CF 21 80 F5
	mvn $3E,$54		; 54 54 3E
	sbc ($BD.b,S),Y		; F3 BD
	sbc ($ED.b),Y		; F1 ED
	sty $01.b,X		; 94 01
	cmp ($1F.b)		; D2 1F
	inc $2C4D.w,X		; FE 4D 2C
	bit $844D.w,X		; 3C 4D 84
	and #$0E6E.w		; 29 6E 0E
	tas		; 1B
	cop $0B.b		; 02 0B
	eor $9A.b,X		; 55 9A
	bcc  29.b		; 90 1D
	lda $DEDD.w		; AD DD DE
	ora $E21EEE.l		; 0F EE 1E E2
	bra  31.b		; 80 1F
	bmi -28.b		; 30 E4
	cpx #$0613.w		; E0 13 06
	sbc ($5F.b)		; F2 5F
	sty $20.b,X		; 94 20
	sbc $D5.b,S		; E3 D5
	lda ($3D.b,S),Y		; B3 3D
	rol $144D.w		; 2E 4D 14
	sty $C0.b,X		; 94 C0
	ora ($D1.b)		; 12 D1
	asl $0C02.w,X		; 1E 02 0C
	eor ($EF.b,X)		; 41 EF
	bra  22.b		; 80 16
	beq   5.b		; F0 05
	ldx #$1DFB.w		; A2 FB 1D
	bpl -50.b		; 10 CE
	bcc -17.b		; 90 EF
	cmp $DFEEEC.l,X		; DF EC EE DF
	sbc $DDF1.w,X		; FD F1 DD
	bcc  -1.b		; 90 FF
	sbc $FFC0F0.l		; EF F0 C0 FF
	beq  14.b		; F0 0E
	ora $2DCC80.l		; 0F 80 CC 2D
	sbc $0F.b,S		; E3 0F
.ACCU 16
	rep #$2F		; C2 2F
	sbc ($2C.b)		; F2 2C
	bra 117.b		; 80 75
	sbc $24.b,S		; E3 24
	.db $42, $47		; 42 47
	eor ($61.b,X)		; 41 61
	ora ($90.b)		; 12 90
	rti		; 40

	ora $30.b,S		; 03 30
	and ($F4.b)		; 32 F4
	ora ($F1.b),Y		; 11 F1
	bmi -108.b		; 30 94
	bpl -48.b		; 10 D0
	and $120DD4.l		; 2F D4 0D 12
	dec $D14D.w,X		; DE 4D D1
	brk $02.b		; 00 02
	cpx $33.b		; E4 33
	jmp $44C4.w		; 4C C4 44
	jmp $0000.w		; 4C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	sbc ($1F.b),Y		; F1 1F
	bit $215E.w,X		; 3C 5E 21
	jsr ($64C0.w,X)		; FC C0 64
	dey		; 88
	asl $012E.w		; 0E 2E 01
	and ($FC.b,X)		; 21 FC
	sbc ($2F.b),Y		; F1 2F
	sbc $CF94.w,X		; FD 94 CF
	rti		; 40

	ora ($22.b),Y		; 11 22
	jsl $ECFE00.l		; 22 00 FE EC
	dey		; 88
	ora $0045.w,X		; 1D 45 00
	jmp $3B1120.l		; 5C 20 11 3B
	jsr ($E288.w,X)		; FC 88 E2
	cmp ($2F.b,X)		; C1 2F
	eor ($F2.b,X)		; 41 F2
	cop $79.b		; 02 79
	lda $98.b,S		; A3 98
	cmp ($FF.b),Y		; D1 FF
	trb $5E.b		; 14 5E
	pld		; 2B
	brk $F0.b		; 00 F0
	inc $A194.w		; EE 94 A1
	sbc $20.b,S		; E3 20
	cmp $C00C2D.l,X		; DF 2D 0C C0
	tsb $A4.b		; 04 A4
	and ($33.b),Y		; 31 33
	and $2E.b		; 25 2E
	sbc $CCDA.w		; ED DA CC
	jsl $01DFA8.l		; 22 A8 DF 01
	jsr $1FF0.w		; 20 F0 1F
	rol $FD0F.w		; 2E 0F FD
	tay		; A8
	ora ($40.b,X)		; 01 40
	jsr $2F1E.w		; 20 1E 2F
	ldy $1D21.w,X		; BC 21 1D
	ldy $03.b,X		; B4 03
	bit $42.b,X		; 34 42
	brk $FB.b		; 00 FB
	wai		; CB
	cpy #$B876.w		; C0 76 B8
	ora $C2ED.w		; 0D ED C2
	ora ($41.b,S),Y		; 13 41
	brk $ED.b		; 00 ED
	lda $35BEB4.l,X		; BF B4 BE 35
	eor $1E.b		; 45 1E
	dec $23D2.w,X		; DE D2 23
	rol $BDB4.w,X		; 3E B4 BD
	dec $3505.w,X		; DE 05 35
	sbc ($1A.b,X)		; E1 1A
	jmp.w [$C826]		; DC 26 C8
	sbc ($1C.b,X)		; E1 1C
	sbc ($D1.b),Y		; F1 D1
	eor ($2F.b,X)		; 41 2F
	sbc $CDB40F.l		; EF 0F B4 CD
	sbc $54EF.w		; ED EF 54
	.db $42, $1B		; 42 1B
	trb $00.b		; 14 00
	ldy $ED.b,X		; B4 ED
	inc $61B2.w		; EE B2 61
	sbc ($EF.b,S),Y		; F3 EF
	ora ($13.b),Y		; 11 13
	cpy $0C.b		; C4 0C
	sbc $5411.w		; ED 11 54
	bne  14.b		; D0 0E
	sbc $12B421.l,X		; FF 21 B4 12
	plb		; AB
	asl $3A.b,X		; 16 3A
	cmp $FC6343.l,X		; DF 43 63 FC
	ldy $B9.b,X		; B4 B9
	lda [$23.b],Y		; B7 23
	.db $42, $DB		; 42 DB
	ora ($4F.b,S),Y		; 13 4F
	lda $12E0C4.l		; AF C4 E0 12
	eor $E3DE1E.l		; 4F 1E DE E3
	bit $DD.b,X		; 34 DD
	cpy $CF.b		; C4 CF
	eor $41.b,S		; 43 41
	cmp $14DD.w,X		; DD DD 14
	bmi -18.b		; 30 EE
	ldy $C3.b		; A4 C3
	and ($11.b)		; 32 11
	and $A4.b,S		; 23 A4
	ror $EBDF.w		; 6E DF EB
	bcs   0.b		; B0 00
	jmp.w [$3FFF]		; DC FF 3F
	asl $2F11.w		; 0E 11 2F
	ora $04FCB0.l		; 0F B0 FC 04
	eor $0E.b,S		; 43 0E
	sbc ($F4.b,X)		; E1 F4
	bmi  16.b		; 30 10
	clv		; B8
	lda ($60.b,S),Y		; B3 60
	sbc ($AD.b)		; F2 AD
	ora ($20.b)		; 12 20
	adc #$B4E4.w		; 69 E4 B4
	inc $E40F.w		; EE 0F E4
	ora ($1F.b,X)		; 01 1F
	ora ($DF.b),Y		; 11 DF
	and ($A4.b,X)		; 21 A4
	and $DBF3.w,X		; 3D F3 DB
	ldy $40.b,X		; B4 40
	cmp ($64.b,X)		; C1 64
	pea $B5B8.w		; F4 B8 B5
	cmp $002301.l		; CF 01 23 00
.INDEX 16
	rep #$D1		; C2 D1
	sbc $F6A4.w,X		; FD A4 F6
	bit $3F.b		; 24 3F
	sbc $32E1.w		; ED E1 32
	tsb $A4B1.w		; 0C B1 A4
	sbc $10.b,X		; F5 10
	eor ($DB.b,S),Y		; 53 DB
	jmp.w [$4D22]		; DC 22 4D
	ora ($B8.b)		; 12 B8
	bpl  12.b		; 10 0C
	sbc ($12.b),Y		; F1 12
	ora $0D.b,S		; 03 0D
	asl $A8F2.w		; 0E F2 A8
	asl $6CE2.w,X		; 1E E2 6C
	rti		; 40

	bit $2B09.w,X		; 3C 09 2B
	sbc $B8.b		; E5 B8
	and ($00.b)		; 32 00
	beq  -1.b		; F0 FF
	sbc $44E2.w,X		; FD E2 44
	ora $33B4.w,X		; 1D B4 33
	sbc $EECD.w,X		; FD CD EE
	ora ($42.b)		; 12 42
	and $FDA81F.l,X		; 3F 1F A8 FD
	sbc ($34.b,S),Y		; F3 34
	rti		; 40

	cmp $44FDAF.l,X		; DF AF FD 44
	tay		; A8
	bvc  27.b		; 50 1B
	tsb $D3C7.w		; 0C C7 D3
	jsl $A4DFF1.l		; 22 F1 DF A4
	rol $ABEC.w		; 2E EC AB
	inc $3355.w		; EE 55 33
	inc $A413.w		; EE 13 A4
	adc $10DEDB.l		; 6F DB DE 10
	bit $2C.b		; 24 2C
	sbc ($2C.b),Y		; F1 2C
	tay		; A8
	eor $0A2F31.l		; 4F 31 2F 0A
	ldy $04.b,X		; B4 04
	sbc ($2E.b)		; F2 2E
	tay		; A8
	trb $EB.b		; 14 EB
	cpx #$0F22.w		; E0 22 0F
	cop $D0.b		; 02 D0
	and ($A8.b,X)		; 21 A8
	sbc ($F0.b),Y		; F1 F0
	ora $DD.b		; 05 DD
	cpx $0F52.w		; EC 52 0F
	ora ($A8.b,X)		; 01 A8
	bmi -13.b		; 30 F3
	stp		; DB
	beq  34.b		; F0 22
	asl $F112.w		; 0E 12 F1
	sty $47.b,X		; 94 47
	jmp $31DE.w		; 4C DE 31
	jsr ($5F12.w,X)		; FC 12 5F
	tsb $CF94.w		; 0C 94 CF
	bvc -68.b		; 50 BC
	bit $53.b,X		; 34 53
	sbc ($24.b),Y		; F1 24
	ora $FF98.w		; 0D 98 FF
	inc $01.b,X		; F6 01
	eor ($AF.b,S),Y		; 53 AF
	ldx $DE26.w,Y		; BE 26 DE
	sty $B0.b,X		; 94 B0
	mvp $F1,$3F		; 44 3F F1
	asl $03C0.w		; 0E C0 03
	eor ($98.b,X)		; 41 98
	ora $D401.w		; 0D 01 D4
	pei ($5A.b)		; D4 5A
	sbc $DF.b,X		; F5 DF
	lda ($94.b),Y		; B1 94
	cmp $411303.l		; CF 03 13 41
	ora $2E.b,S		; 03 2E
	tsb $8810.w		; 0C 10 88
	cop $0A.b		; 02 0A
	ora $FA.b		; 05 FA
	and $40.b,S		; 23 40
	ora [$AF.b],Y		; 17 AF
	sty $21.b,X		; 94 21
	tsx		; BA
	sbc $5414F2.l		; EF F2 14 54
	ora $98DC.w		; 0D DC 98
	ora $E2.b,S		; 03 E2
	and ($D0.b)		; 32 D0
	sbc ($1E.b),Y		; F1 1E
	sbc $D38822.l		; EF 22 88 D3
	pei ($F0.b)		; D4 F0
	inc $0F2F.w,X		; FE 2F 0F
	cmp ($11.b),Y		; D1 11
	sei		; 78
	cpx $66.b		; E4 66
	tsb $ABC0.w		; 0C C0 AB
	bne -28.b		; D0 E4
	lsr $78.b,X		; 56 78
	and ($3B.b,X)		; 21 3B
	sta ($B0.b),Y		; 91 B0
	bpl  67.b		; 10 43
	cpx #$7406.w		; E0 06 74
	jsr $EAEC.w		; 20 EC EA
	sbc $50.b,S		; E3 50
	ora $11B3.w		; 0D B3 11
	sei		; 78
	bmi  31.b		; 30 1F
	bne -76.b		; D0 B4
	cmp ($51.b,X)		; C1 51
	eor $E0.b		; 45 E0
	dey		; 88
	sbc $E0E001.l		; EF 01 E0 E0
	beq  65.b		; F0 41
	jsr $7800.w		; 20 00 78
	rol $BF01.w,X		; 3E 01 BF
	cmp ($C0.b)		; D2 C0
	sbc ($E3.b,X)		; E1 E3
	inc $88.b		; E6 88
	cop $02.b		; 02 02
	inc $1F00.w,X		; FE 00 1F
	phd		; 0B
	sbc ($0D.b,S),Y		; F3 0D
	sei		; 78
	and $141232.l,X		; 3F 32 12 14
	bne  25.b		; D0 19
	cpx #$780A.w		; E0 0A 78
	tsb $3552.w		; 0C 52 35
	and $DD.b		; 25 DD
	tsb $D2BF.w		; 0C BF D2
	sei		; 78
	sbc $E2.b,X		; F5 E2
	and $00.b,X		; 35 00
	and ($FD.b,X)		; 21 FD
	cpx $78FE.w		; EC FE 78
	sbc $212325.l		; EF 25 23 21
	beq  31.b		; F0 1F
	inc $780C.w		; EE 0C 78
	xce		; FB
	and $20.b,S		; 23 20
	eor $EEF11F.l,X		; 5F 1F F1 EE
	bpl 104.b		; 10 68
	bne -66.b		; D0 BE
	eor ($14.b)		; 52 14
	pld		; 2B
	trb $E001.w		; 1C 01 E0
	stz $DA.b		; 64 DA
	bne  31.b		; D0 1F
	cmp $BB2234.l,X		; DF 34 22 BB
	tyx		; BB
	pla		; 68
	phd		; 0B
	and ($2F.b)		; 32 2F
	sbc $EC2223.l		; EF 23 22 EC
	lda ($68.b)		; B2 68
	lda $410FE2.l		; AF E2 0F 41
	rts		; 60

	tsa		; 3B
	rol $581E.w		; 2E 1E 58
	dec $CC2F.w		; CE 2F CC
	asl $0127.w,X		; 1E 27 01
	.db $62, $0F, $68		; 62 0F 68
	cpx #$1E1D.w		; E0 1D 1E
	and ($01.b)		; 32 01
	trb $E2.b		; 14 E2
	cpy #$CE68.w		; C0 68 CE
	asl $0121.w		; 0E 21 01
	trb $0F.b		; 14 0F
	asl $68DD.w,X		; 1E DD 68
	eor $0F2BFE.l		; 4F FE 2B 0F
	rol $04E0.w		; 2E E0 04
	cpx #$DF58.w		; E0 58 DF
	bit $E02E.w		; 2C 2E E0
	cpx $F52B.w		; EC 2B F5
	beq  88.b		; F0 58
	asl $23CB.w,X		; 1E CB 23
	ora ($0D.b,S),Y		; 13 0D
	jsr $F02B.w		; 20 2B F0
	cli		; 58
	sep #$0F		; E2 0F
	asl $2C2F.w		; 0E 2F 2C
	bmi  12.b		; 30 0C
	and ($58.b,S),Y		; 33 58
	eor ($DC.b,X)		; 41 DC
	asl $2E54.w		; 0E 54 2E
	ora ($EC.b)		; 12 EC
	lsr $3E58.w,X		; 5E 58 3E
	cmp $0F1EE5.l		; CF E5 1E 0F
	ora $65F24D.l		; 0F 4D F2 65
	ora $CDDD12.l,X		; 1F 12 DD CD
	cmp $12F1.w,X		; DD F1 12
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	bpl -93.b		; 10 A3
	jmp.w [$4F40]		; DC 40 4F
	bcs  63.b		; B0 3F
	adc $B4.b		; 65 B4
	tas		; 1B
	ldx $F040.w		; AE 40 F0
	sbc $20F113.l,X		; FF 13 F1 20
	clv		; B8
	bne  49.b		; D0 31
	ora $2F12FF.l		; 0F FF 12 2F
	ldy $C453.w,X		; BC 53 C4
	bpl  -1.b		; 10 FF
	and $2D.b,S		; 23 2D
	cpx #$1E13.w		; E0 13 1E
	cpx #$F0B4.w		; E0 B4 F0
	bpl   1.b		; 10 01
	and ($EF.b,X)		; 21 EF
	inc A		; 1A
	cpx $12.b		; E4 12
	ldy $0F.b,X		; B4 0F
	ora $BF4C13.l,X		; 1F 13 4C BF
	ora ($EF.b,S),Y		; 13 EF
	inc $F6A4.w,X		; FE A4 F6
	eor $731EEF.l,X		; 5F EF 1E 73
	rol $43AB.w,X		; 3E AB 43
	clv		; B8
	sbc $C0.b,S		; E3 C0
	ora ($F1.b),Y		; 11 F1
	ora ($EB.b,X)		; 01 EB
	lsr $B842.w,X		; 5E 42 B8
	ora $EE32BF.l		; 0F BF 32 EE
	trb $1B.b		; 14 1B
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	clv		; B8
	cmp $3E2F.w		; CD 2F 3E
	bpl -29.b		; 10 E3
	cmp $4C.b,S		; C3 4C
	asl $BEB4.w		; 0E B4 BE
	ora ($20.b),Y		; 11 20
	asl $62E5.w,X		; 1E E5 62
	jsr ($C0FF.w,X)		; FC FF C0
	ora ($1F.b)		; 12 1F
	jmp.w [$44E0]		; DC E0 44
	asl $43E0.w,X		; 1E E0 43
	iny		; C8
	cpx #$31.b		; E0 31
	trb $1300.w		; 1C 00 13
	and $04FC.w		; 2D FC 04
	cpy #$13.b		; C0 13
	ora $00DE.w,X		; 1D DE 00
	sbc $1001.w		; ED 01 10
	beq -76.b		; F0 B4
	sbc ($10.b)		; F2 10
	and $FD.b,S		; 23 FD
	cmp ($1D.b,S),Y		; D3 1D
	cmp $A414.w		; CD 14 A4
	ora ($EB.b,X)		; 01 EB
	eor ($02.b,S),Y		; 53 02
	bcc -16.b		; 90 F0
	.db $42, $F4		; 42 F4
	ldy $EC.b		; A4 EC
	ora $72.b		; 05 72
	ldy $12E1.w,X		; BC E1 12
	xba		; EB
	lda $1F11B4.l,X		; BF B4 11 1F
	ora ($F3.b,S),Y		; 13 F3
	ora $DB30.w,X		; 1D 30 DB
	dec $C4.b,X		; D6 C4
	ora ($0C.b)		; 12 0C
	cpx #$F1.b		; E0 F1
	jsl $02D00E.l		; 22 0E D0 02
	cpy $11.b		; C4 11
	ora $DE1F14.l		; 0F 14 1F DE
	ora ($3F.b),Y		; 11 3F
	dec $34B4.w,X		; DE B4 34
	tad		; 5B
	cpy #$B4.b		; C0 B4
	jsl $62DF6B.l		; 22 6B DF 62
	ldy $E2.b,X		; B4 E2
	ora $E12A0E.l		; 0F 0E 2A E1
	cmp ($D0.b)		; D2 D0
	inc $BAB0.w,X		; FE B0 BA
	bpl  18.b		; 10 12
	tsx		; BA
	dec $DF42.w		; CE 42 DF
	asl $30B0.w		; 0E B0 30
	lda $11F4.w,X		; BD F4 11
	ora ($14.b),Y		; 11 14
	ora ($24.b),Y		; 11 24
	iny		; C8
.INDEX 8
	sep #$1E		; E2 1E
	sbc ($E3.b),Y		; F1 E3
	jmp $F20F.w		; 4C 0F F2
	ora $0DB0.w		; 0D B0 0D
	ldy $2FBC.w		; AC BC 2F
	cmp ($61.b,X)		; C1 61
	rol $C0D5.w		; 2E D5 C0
	sbc $0201.w,X		; FD 01 02
	trb $0E03.w		; 1C 03 0E
	bmi -33.b		; 30 DF
	bcs  33.b		; B0 21
	sbc #$9B.b		; E9 9B
	bmi -70.b		; 30 BA
	cmp $B0BB31.l		; CF 31 BB B0
	cpy #$EE.b		; C0 EE
	ora $CB42.w		; 0D 42 CB
	eor ($54.b,X)		; 41 54
	.db $42, $B4		; 42 B4
	jmp.w [$1031]		; DC 31 10
	sbc ($30.b,X)		; E1 30
	asl $01DF.w		; 0E DF 01
	cpy #$00.b		; C0 00
	cop $01.b		; 02 01
	ora $41.b,S		; 03 41
	bpl  47.b		; 10 2F
	and ($C0.b,S),Y		; 33 C0
	jsl $243300.l		; 22 00 33 24
	and ($0E.b)		; 32 0E
	inc $B844.w		; EE 44 B8
	cpx $1F40.w		; EC 40 1F
	eor $FF2F.w		; 4D 2F FF
	bpl  34.b		; 10 22
	ldy $3F.b,X		; B4 3F
	phx		; DA
	sbc ($3F.b,S),Y		; F3 3F
	cpx #$F0.b		; E0 F0
	bit $CE.b,X		; 34 CE
	ldy $F0.b,X		; B4 F0
	rol $110C.w		; 2E 0C 11
	and $E0.b		; 25 E0
	jmp.w [$B40F]		; DC 0F B4
	and ($1F.b),Y		; 31 1F
	sbc ($0E.b,X)		; E1 0E
	ora $02E014.l		; 0F 14 E0 02
	clv		; B8
	sbc $E30001.l,X		; FF 01 00 E3
	lsr A		; 4A
	ldy $3F.b,X		; B4 3F
	sbc $11B4.w,X		; FD B4 11
	sbc ($2F.b)		; F2 2F
	ora $0F2302.l		; 0F 02 23 0F
	tsb $14B4.w		; 0C B4 14
	tsb $35CF.w		; 0C CF 35
	sbc $3310EA.l,X		; FF EA 10 33
	ldy $FB.b,X		; B4 FB
	sbc ($4E.b,S),Y		; F3 4E
	sbc ($31.b,S),Y		; F3 31
	sbc $010E.w,X		; FD 0E 01
	ldy $52.b		; A4 52
	trb $CB.b		; 14 CB
	inc $11F0.w,X		; FE F0 11
	bit $D1.b,X		; 34 D1
	ldy $44.b,X		; B4 44
	ora $21C2.w		; 0D C2 21
	ora $FE1F.w		; 0D 1F FE
	inc $F3B4.w		; EE B4 F3
	inc $1F00.w		; EE 00 1F
	cop $0E.b		; 02 0E
	and $FF.b		; 25 FF
	ldy $CC.b,X		; B4 CC
	pea $FF00.w		; F4 00 FF
	cpx #$12.b		; E0 12
	and $4FA42E.l		; 2F 2E A4 4F
	and ($DF.b)		; 32 DF
	sbc ($E1.b),Y		; F1 E1
	sbc ($43.b,X)		; E1 43
	eor $B4.b,X		; 55 B4
	ora ($BD.b),Y		; 11 BD
	bpl 109.b		; 10 6D
	lda ($02.b)		; B2 02
	plx		; FA
	bne -76.b		; D0 B4
	jsl $34FDF1.l		; 22 F1 FD 34
	brk $DF.b		; 00 DF
	ora ($4E.b),Y		; 11 4E
	ldy $04.b,X		; B4 04
	sbc ($CE.b),Y		; F1 CE
	and ($51.b,X)		; 21 51
	dec $001D.w,X		; DE 1D 00
	ldy $F3.b,X		; B4 F3
	sbc ($02.b,S),Y		; F3 02
	and $F00F.w		; 2D 0F F0
	bpl  48.b		; 10 30
	ldy $FF.b,X		; B4 FF
	sbc $D3F0FE.l		; EF FE F0 D3
	and $B4F10B.l		; 2F 0B F1 B4
	beq  31.b		; F0 1F
	asl $D003.w		; 0E 03 D0
	ora ($4F.b,X)		; 01 4F
	cpx #$B4.b		; E0 B4
	trb $2E.b		; 14 2E
	cpx #$05.b		; E0 05
	sbc $135F1F.l,X		; FF 1F 5F 13
	ldy $02.b,X		; B4 02
	brk $FC.b		; 00 FC
	lda ($E1.b),Y		; B1 E1
	bpl   0.b		; 10 00
	and $D5CBA4.l		; 2F A4 CB D5
	sbc ($1E.b,S),Y		; F3 1E
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	ora ($25.b,X)		; 01 25
	ldy $3F.b		; A4 3F
	brk $51.b		; 00 51
	sbc ($B2.b),Y		; F1 B2
	bmi  91.b		; 30 5B
	bit $A4.b		; 24 A4
	jsr $AE00.w		; 20 00 AE
	lda ($1F.b,X)		; A1 1F
	sbc $EB.b,X		; F5 EB
	bcs -88.b		; B0 A8
	ora $33F0.w,X		; 1D F0 33
	cmp $DC040F.l		; CF 0F 04 DC
	and ($B0.b)		; 32 B0
	and ($EF.b,X)		; 21 EF
	ora ($3F.b,X)		; 01 3F
	cpy $00CF.w		; CC CF 00
	inc $10B4.w,X		; FE B4 10
	and ($E1.b,X)		; 21 E1
	bmi  17.b		; 30 11
	cpx $FC.b		; E4 FC
	bpl -76.b		; 10 B4
	eor $DF.b,S		; 43 DF
	ora ($FE.b,X)		; 01 FE
	dec $F11D.w,X		; DE 1D F1
	jsr $1FA4.w		; 20 A4 1F
	ldy #$C6.b		; A0 C6
	jsr ($11E0.w,X)		; FC E0 11
	and $14B41E.l,X		; 3F 1E B4 14
	bpl  -1.b		; 10 FF
	bit $01.b,X		; 34 01
	cpy #$0E.b		; C0 0E
	rol $00B4.w		; 2E B4 00
	bne -45.b		; D0 D3
	lsr $B22B.w		; 4E 2B B2
	cop $41.b		; 02 41
	ldy $0B.b,X		; B4 0B
	cmp $212D05.l,X		; DF 05 2D 21
	sbc ($2E.b)		; F2 2E
	ora $41E2B4.l		; 0F B4 E2 41
	inc $1E0F.w,X		; FE 0F 1E
	beq  79.b		; F0 4F
	dec $E2B4.w		; CE B4 E2
	and $F32F.w,X		; 3D 2F F3
	cmp $100100.l		; CF 00 01 10
	ldy $01.b,X		; B4 01
	ora ($22.b,X)		; 01 22
	ora ($D4.b,X)		; 01 D4
	and $B420FD.l		; 2F FD 20 B4
	.db $42, $0B		; 42 0B
	sbc $0F.b,S		; E3 0F
	cop $05.b		; 02 05
	phd		; 0B
	sbc ($A8.b),Y		; F1 A8
	phd		; 0B
	eor #$15.b		; 49 15
	sbc ($11.b),Y		; F1 11
	cmp ($4D.b,X)		; C1 4D
	tas		; 1B
	ldy $20.b,X		; B4 20
	sep #$C0		; E2 C0
	and $6C.b,S		; 23 6C
	lda $F5.b		; A5 F5
	asl $FDB4.w		; 0E B4 FD
	adc $1EA1B0.l,X		; 7F B0 A1 1E
	bvc -51.b		; 50 CD
	and ($B4.b,X)		; 21 B4
	brk $F3.b		; 00 F3
	ora $11E23F.l		; 0F 3F E2 11
	ora $A8B0.w		; 0D B0 A8
	ora ($DA.b,S),Y		; 13 DA
	tsb $1C.b		; 04 1C
	sbc ($F4.b,X)		; E1 F4
	inc $B835.w,X		; FE 35 B8
	lda $2D3E11.l,X		; BF 11 3E 2D
	cmp ($44.b),Y		; D1 44
	lda $40A4F3.l		; AF F3 A4 40
	and #$BF.b		; 29 BF
	asl $2E.b		; 06 2E
	tyx		; BB
	ora $A460.w		; 0D 60 A4
	lda ($12.b,X)		; A1 12
	bvc   3.b		; 50 03
	tas		; 1B
	inc $6E.b,X		; F6 6E
	cpx #$B4.b		; E0 B4
	beq  15.b		; F0 0F
	ora ($1D.b)		; 12 1D
	brk $35.b		; 00 35
	jmp.w [$B410]		; DC 10 B4
	rti		; 40

	brk $E0.b		; 00 E0
	cmp ($0E.b,S),Y		; D3 0E
	bit $0F3F.w		; 2C 3F 0F
	ldy $D2.b,X		; B4 D2
	beq  15.b		; F0 0F
	bne -31.b		; D0 E1
	sbc ($1C.b),Y		; F1 1C
	cop $A4.b		; 02 A4
	stz $DD.b		; 64 DD
	bmi -23.b		; 30 E9
	ora ($25.b),Y		; 11 25
	trb $FB.b		; 14 FB
	sty $A2.b,X		; 94 A2
	eor $6B.b,S		; 43 6B
	ora ($11.b,X)		; 01 11
	and $22.b,S		; 23 22
	ora ($A8.b)		; 12 A8
	brk $00.b		; 00 00
	rol $3D21.w		; 2E 21 3D
	brk $E3.b		; 00 E3
	cmp $A8.b		; C5 A8
	and $000D5B.l		; 2F 5B 0D 00
	lsr $014E.w,X		; 5E 4E 01
.ACCU 16
	rep #$A4		; C2 A4
	xba		; EB
	cop $DE.b		; 02 DE
	sbc $DD5F.w,X		; FD 5F DD
	lda $30B402.l		; AF 02 B4 30
	cmp $1C14F1.l		; CF F1 14 1C
	brk $13.b		; 00 13
	tsb $00B4.w		; 0C B4 00
	and ($04.b,X)		; 21 04
	sbc $EE031F.l,X		; FF 1F 03 EE
	bpl -80.b		; 10 B0
	eor $1F.b,S		; 43 1F
	cpx #$1D.b		; E0 1D
	cmp $000FF0.l,X		; DF F0 0F 00
	tay		; A8
	sbc ($F4.b),Y		; F1 F4
	lda ($5D.b,S),Y		; B3 5D
	lda $1DFC63.l,X		; BF 63 FC 1D
	ldy $01.b,X		; B4 01
	inc $10EC.w,X		; FE EC 10
	and ($00.b,X)		; 21 00
	ora $B4F2.w		; 0D F2 B4
	tsb $00E1.w		; 0C E1 00
	bmi  77.b		; 30 4D
	sbc $B43112.l		; EF 12 31 B4
	sbc $012FFF.l		; EF FF 2F 01
	sbc $FB32E4.l,X		; FF E4 32 FB
	ldy $EF.b,X		; B4 EF
	ora $43.b,S		; 03 43
	tsb $01D0.w		; 0C D0 01
	beq -27.b		; F0 E5
	ldy $7F.b		; A4 7F
	sbc $1490.w,X		; FD 90 14
	bpl -83.b		; 10 AD
	cmp ($6B.b,S),Y		; D3 6B
	ldy $C1.b,X		; B4 C1
	bpl  17.b		; 10 11
	cpx #$0D.b		; E0 0D
	sbc ($11.b,X)		; E1 11
	brk $A4.b		; 00 A4
	brk $35.b		; 00 35
	cmp $2F0F34.l,X		; DF 34 0F 2F
	sbc $30A4F1.l		; EF F1 A4 30
	sbc ($FE.b)		; F2 FE
	beq  20.b		; F0 14
	jmp $24D1.w		; 4C D1 24
	ldy $3D.b		; A4 3D
	dec $1211.w		; CE 11 12
	beq  45.b		; F0 2D
	ora ($12.b)		; 12 12
	tay		; A8
	cmp $2F.b,S		; C3 2F
	tad		; 5B
	sbc ($D1.b)		; F2 D1
	jmp $A4F0E4.l		; 5C E4 F0 A4
	sbc ($01.b)		; F2 01
	jsr ($130F.w,X)		; FC 0F 13
	sbc $01CF.w		; ED CF 01
	sty $35.b,X		; 94 35
	mvn $CF,$2C		; 54 2C CF
	and $BF5514.l,X		; 3F 14 55 BF
	sty $3D.b,X		; 94 3D
	eor $0DBF.w,X		; 5D BF 0D
	ora $BB.b,X		; 15 BB
	bit $A862.w,X		; 3C 62 A8
	cmp $136F.w		; CD 6F 13
	bcs  31.b		; B0 1F
	bpl   0.b		; 10 00
	brk $A4.b		; 00 A4
	ora ($32.b),Y		; 11 32
	sbc $0000.w,X		; FD 00 00
	and $E0.b		; 25 E0
	sbc ($A4.b),Y		; F1 A4
	asl $25E2.w,X		; 1E E2 25
	eor $E1EC.w		; 4D EC E1
	ora ($10.b,X)		; 01 10
	tay		; A8
	cpx $CC.b		; E4 CC
	lsr $4D20.w,X		; 5E 20 4D
	tsa		; 3B
	dec $A850.w,X		; DE 50 A8
	sbc ($13.b)		; F2 13
	stp		; DB
	lda [$32.b]		; A7 32
	trb $0EFE.w		; 1C FE 0E
	sty $BC.b,X		; 94 BC
	trb $44.b		; 14 44
	cmp $DF0E63.l		; CF 63 0E DF
	eor ($B4.b,S),Y		; 53 B4
	bpl -32.b		; 10 E0
	ora ($50.b,X)		; 01 50
	ora $12FEF0.l,X		; 1F F0 FE 12
	tay		; A8
	ora $1D5FDC.l,X		; 1F DC 5F 1D
	sbc $12.b,S		; E3 12
	jsr $A0EE.w		; 20 EE A0
	sbc $F14323.l		; EF 23 43 F1
	and ($1D.b)		; 32 1D
	cmp $10A414.l		; CF 14 A4 10
	ora ($CD.b)		; 12 CD
	sbc $0F14.w,X		; FD 14 0F
	asl $9003.w,X		; 1E 03 90
	eor $2B.b,X		; 55 2B
	dec $6634.w		; CE 34 66
	beq  -4.b		; F0 FC
	jmp.w [$E294]		; DC 94 E2
	inc A		; 1A
	bpl  17.b		; 10 11
	ora ($13.b),Y		; 11 13
	ora ($FF.b),Y		; 11 FF
	tya		; 98
	bit $D0.b		; 24 D0
	sbc $BD2C34.l,X		; FF 34 2C BD
	and $10.b,X		; 35 10
	ldy $0F.b		; A4 0F
	sbc $3FE3.w,X		; FD E3 3F
	sbc $FE24E1.l,X		; FF E1 24 FE
	sty $DB.b,X		; 94 DB
	jsl $3F11DB.l		; 22 DB 11 3F
	inc $FFFF.w		; EE FF FF
	tya		; 98
	sbc $F030.w,X		; FD 30 F0
	jmp.w [$0131]		; DC 31 01
	and #$9424.w		; 29 24 94
	ora $ED2F01.l		; 0F 01 2F ED
	rol $7F.b		; 26 7F
	cpx #$F3.b		; E0 F3
	dey		; 88
	ora $EFE6F9.l,X		; 1F F9 E6 EF
	rts		; 60

	asl $AB.b,X		; 16 AB
	.db $42, $A4		; 42 A4
	and $10.b,S		; 23 10
	beq -32.b		; F0 E0
	bpl  16.b		; 10 10
	tsb $20.b		; 04 20
	sty $9D.b,X		; 94 9D
	ora ($34.b,X)		; 01 34
	trb $0F.b		; 14 0F
	stp		; DB
	inc $8803.w		; EE 03 88
	ldy #$C2.b		; A0 C2
	xce		; FB
	eor $0D02.w		; 4D 02 0D
	ora $2E.b,X		; 15 2E
	tay		; A8
	beq  -1.b		; F0 FF
	bpl -15.b		; 10 F1
	sbc ($0F.b)		; F2 0F
	bpl  -5.b		; 10 FB
	sty $B0.b,X		; 94 B0
	trb $25.b		; 14 25
	ora ($D0.b),Y		; 11 D0
	beq  64.b		; F0 40
	eor ($A8.b),Y		; 51 A8
	eor $021D.w		; 4D 1D 02
	brk $00.b		; 00 00
.INDEX 8
	sep #$1D		; E2 1D
	and $12BE94.l		; 2F 94 BE 12
	ror A		; 6A
	ldy $FFC1.w,X		; BC C1 FF
	sbc $4C981F.l		; EF 1F 98 4C
	phk		; 4B
	sbc ($24.b,X)		; E1 24
	phd		; 0B
	sbc ($00.b,S),Y		; F3 00
	cmp ($94.b,S),Y		; D3 94
	bit $24FF.w		; 2C FF 24
	beq  16.b		; F0 10
	sbc ($F0.b,X)		; E1 F0
	sbc ($A8.b),Y		; F1 A8
	brk $2F.b		; 00 2F
	sbc ($D1.b)		; F2 D1
	ora ($01.b),Y		; 11 01
	sbc ($4D.b,X)		; E1 4D
	sty $A1.b		; 84 A1
	bvs  77.b		; 70 4D
	lda $7EFE.w,Y		; B9 FE 7E
	eor $3E.b,X		; 55 3E
	tya		; 98
	brk $00.b		; 00 00
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	ora ($CD.b,S),Y		; 13 CD
	asl $944F.w,X		; 1E 4F 94
	cmp $210D1F.l,X		; DF 1F 0D 21
	ora ($01.b),Y		; 11 01
	bmi  49.b		; 30 31
	dey		; 88
	sbc ($A5.b,S),Y		; F3 A5
	eor $0DE5.w,Y		; 59 E5 0D
	phk		; 4B
	and $846D.w,X		; 3D 6D 84
	lda $BD.b,S		; A3 BD
	and $35.b,X		; 35 35
	eor $2A5637.l		; 4F 37 56 2A
	sty $A3.b,X		; 94 A3
	bpl  85.b		; 10 55
	asl $01BD.w,X		; 1E BD 01
	ldy $94CB.w		; AC CB 94
	ldx $301E.w,Y		; BE 1E 30
	jsl $141402.l		; 22 02 14 14
	ora [$A4.b]		; 07 A4
	ora $EEDCFE.l,X		; 1F FE DC EE
	jsl $D2001E.l		; 22 1E 00 D2
	ldy $E0.b		; A4 E0
	brk $01.b		; 00 01
	jsr $5F10.w		; 20 10 5F
	jsl $EE9821.l		; 22 21 98 EE
	asl $0050.w		; 0E 50 00
	brk $1F.b		; 00 1F
	ora $943F.w,X		; 1D 3F 94
	jsr $3D01.w		; 20 01 3D
	sbc $00F3C4.l,X		; FF C4 F3 00
	cpx #$84.b		; E0 84
	ldy $21.b		; A4 21
	rol $33EC.w,X		; 3E EC 33
	jsl $942323.l		; 22 23 23 94
	ora ($5F.b)		; 12 5F
	and $D4E021.l		; 2F 21 E0 D4
	ora ($F0.b),Y		; 11 F0
	sty $E1.b,X		; 94 E1
	eor $DF1112.l		; 4F 12 11 DF
	eor ($B4.b,S),Y		; 53 B4
	asl $7294.w		; 0E 94 72
	cmp $11.b,X		; D5 11
	cpy $FFAE.w		; CC AE FF
	sbc $DC941F.l		; EF 1F 94 DC
	cpx #$3E.b		; E0 3E
	sbc $FFDFCE.l,X		; FF CE DF FF
	sbc $E0F188.l,X		; FF 88 F1 E0
	brk $F1.b		; 00 F1
	eor $B2B2.w		; 4D B2 B2
	rti		; 40

	dey		; 88
	tsa		; 3B
	rol $2D2E.w,X		; 3E 2E 2D
	ora $C4.b		; 05 C4
	bit $DC.b,X		; 34 DC
	sty $0E.b,X		; 94 0E
	bmi  82.b		; 30 52
	asl $2010.w,X		; 1E 10 20
	cpy #$D1.b		; C0 D1
	sty $FF.b,X		; 94 FF
	sbc $ED0A0D.l		; EF 0D 0A ED
	cmp ($10.b,X)		; C1 10
	sbc ($94.b),Y		; F1 94
	and $24.b,S		; 23 24
	brk $EF.b		; 00 EF
	inc $1513.w		; EE 13 15
	eor $F194.w		; 4D 94 F1
	ora $050EFE.l,X		; 1F FE 0E 05
	adc $EA.b		; 65 EA
	ora ($94.b)		; 12 94
	ora ($CE.b,X)		; 01 CE
	sbc $1D2DF1.l		; EF F1 2D 1D
	brk $F1.b		; 00 F1
	ldy $01.b		; A4 01
	tsb $D0.b		; 04 D0
	sbc $DE001E.l,X		; FF 1E 00 DE
	brk $98.b		; 00 98
	sbc $FE.b,S		; E3 FE
	xce		; FB
	eor ($F0.b)		; 52 F0
	brk $D1.b		; 00 D1
	ora ($94.b,S),Y		; 13 94
	and ($E2.b,S),Y		; 33 E2
	cop $0F.b		; 02 0F
	beq -36.b		; F0 DC
	sbc ($0F.b)		; F2 0F
	sty $3E.b,X		; 94 3E
	bpl   3.b		; 10 03
	jsr $4200.w		; 20 00 42
	and $8401.w		; 2D 01 84
	plx		; FA
	tsx		; BA
	and $11C0DF.l,X		; 3F DF C0 11
	bpl  17.b		; 10 11
	tya		; 98
	and $3E3E0E.l		; 2F 0E 3E 3E
	cmp ($02.b),Y		; D1 02
	and ($BC.b,S),Y		; 33 BC
	dey		; 88
	eor $6C.b,S		; 43 6C
	ora $A4.b,S		; 03 A4
	cmp $2F6E.w,X		; DD 6E 2F
	plx		; FA
	tya		; 98
	rol $EF13.w		; 2E 13 EF
	cpx #$11.b		; E0 11
.ACCU 8
	sep #$E1		; E2 E1
	bit $3E94.w		; 2C 94 3E
	ora ($DD.b,X)		; 01 DD
	sbc $2001FF.l,X		; FF FF 01 20
	ora ($88.b,X)		; 01 88
	brk $C1.b		; 00 C1
	and $FE.b,S		; 23 FE
	and ($C1.b),Y		; 31 C1
	tsb $9454.w		; 0C 54 94
	bit $FD.b,X		; 34 FD
.INDEX 8
	sep #$10		; E2 10
	beq  51.b		; F0 33
	jsr $88FF.w		; 20 FF 88
	ora $BD.b,S		; 03 BD
	rts		; 60

	bit $1040.w		; 2C 40 10
	cpy #$D2.b		; C0 D2
	dey		; 88
	and ($ED.b)		; 32 ED
	eor $B32F.w,X		; 5D 2F B3
	lda $02.b,X		; B5 02
	cpx $2F84.w		; EC 84 2F
	jsr $DF00.w		; 20 00 DF
	ora $B0DF.w,X		; 1D DF B0
	sbc ($94.b,X)		; E1 94
	ora ($12.b,X)		; 01 12
	bmi  -2.b		; 30 FE
	ora ($42.b)		; 12 42
	sep #$0F		; E2 0F
	dey		; 88
	and $F45C0B.l		; 2F 0B 5C F4
	ora ($E2.b),Y		; 11 E2
	cmp ($C2.b,S),Y		; D3 C2
	stz $60.b,X		; 74 60
	bit $EA.b		; 24 EA
	cpy #$11.b		; C0 11
	xba		; EB
	ora $2A84F0.l,X		; 1F F0 84 2A
	jmp.w [$11F0]		; DC F0 11
	ora ($E1.b,X)		; 01 E1
	and ($1F.b),Y		; 31 1F
	dey		; 88
	bpl  16.b		; 10 10
	jsl $F101EF.l		; 22 EF 01 F1
	cmp ($D4.b),Y		; D1 D4
	sty $44.b		; 84 44
	adc ($BF.b),Y		; 71 BF
	ldy $1300.w,X		; BC 00 13
	phk		; 4B
	bpl -124.b		; 10 84
	cmp $3436D5.l		; CF D5 36 34
	sbc $E0DF.w		; ED DF E0
	asl $EB88.w,X		; 1E 88 EB
	eor ($F6.b)		; 52 F6
	xce		; FB
	cmp ($0F.b),Y		; D1 0F
	cpx $0D.b		; E4 0D
	sty $20.b		; 84 20
	cmp $22BE.w		; CD BE 22
	ora ($32.b),Y		; 11 32
	sbc ($00.b,S),Y		; F3 00
	sty $3E.b		; 84 3E
	and ($25.b),Y		; 31 25
	ora $EF.b		; 05 EF
	pld		; 2B
	rol $88F2.w		; 2E F2 88
	adc $22FC.w,X		; 7D FC 22
	inc $F201.w,X		; FE 01 F2
	bne  46.b		; D0 2E
	sty $2F.b,X		; 94 2F
	ora $F3C02C.l		; 0F 2C C0 F3
	ora $84F0DE.l,X		; 1F DE F0 84
	brk $0E.b		; 00 0E
	ora ($53.b),Y		; 11 53
	bne -49.b		; D0 CF
	cpx $78E0.w		; EC E0 78
	and $C434FC.l		; 2F FC 34 C4
	lda ($2A.b,S),Y		; B3 2A
	sbc ($51.b,X)		; E1 51
	stz $01.b,X		; 74 01
	eor $24.b,S		; 43 24
	eor ($00.b,X)		; 41 00
	adc $35.b		; 65 35
	trb $84.b		; 14 84
	and ($DD.b,X)		; 21 DD
	jmp.w [$DD1E]		; DC 1E DD
	sbc $88D1CF.l		; EF CF D1 88
	beq  -1.b		; F0 FF
	cop $C4.b		; 02 C4
	sbc ($4E.b,X)		; E1 4E
	cmp $E478E2.l,X		; DF E2 78 E4
	pld		; 2B
	sbc $E0412E.l,X		; FF 2E 41 E0
	brk $0F.b		; 00 0F
	sei		; 78
	brk $20.b		; 00 20
	ora ($1E.b,S),Y		; 13 1E
	lda $7F33.w,X		; BD 33 7F
	bcs 116.b		; B0 74
	cmp $A11CED.l		; CF ED 1C A1
	brk $0A.b		; 00 0A
	ldy #$F1.b		; A0 F1
	stz $42.b,X		; 74 42
	jsr $5404.w		; 20 04 54
	ora $DD6012.l,X		; 1F 12 60 DD
	dey		; 88
	tsb $3F5F.w		; 0C 5F 3F
	sbc $FE32.w		; ED 32 FE
	asl $883E.w		; 0E 3E 88
	cmp $F2.b,S		; C3 F2
	ora $00FF0F.l,X		; 1F 0F FF 00
	ora ($E1.b),Y		; 11 E1
	sty $FC.b		; 84 FC
	cop $32.b		; 02 32
	inc $12E1.w,X		; FE E1 12
	ora $008411.l		; 0F 11 84 00
	cop $F2.b		; 02 F2
	sbc ($12.b,X)		; E1 12
	and ($2F.b,X)		; 21 2F
	trb $88.b		; 14 88
	tsb $F311.w		; 0C 11 F3
	cmp ($02.b,X)		; C1 02
	bit $02E2.w		; 2C E2 02
	stz $30.b,X		; 74 30
	jsr $212D.w		; 20 2D 21
	asl $F162.w,X		; 1E 62 F1
	sbc $2D2088.l,X		; FF 88 20 2D
	ora ($0D.b),Y		; 11 0D
	ora ($02.b)		; 12 02
	dec $7824.w		; CE 24 78
	cpy #$B0.b		; C0 B0
	asl $DF.b,X		; 16 DF
	tas		; 1B
	ora ($6B.b),Y		; 11 6B
	trb $88.b		; 14 88
	cmp $D2.b,S		; C3 D2
	asl $023F.w,X		; 1E 3F 02
	cmp $74D112.l,X		; DF 12 D1 74
	dec $EED0.w		; CE D0 EE
	inc $111A.w		; EE 1A 11
	and $D274C3.l		; 2F C3 74 D2
	beq  -2.b		; F0 FE
	bit $EE01.w,X		; 3C 01 EE
	brk $14.b		; 00 14
	sei		; 78
	sbc $01CFF4.l		; EF F4 CF 01
	bpl   0.b		; 10 00
	and ($FE.b),Y		; 31 FE
	dey		; 88
.INDEX 8
	sep #$1F		; E2 1F
	jsr $2FF0.w		; 20 F0 2F
	pei ($0E.b)		; D4 0E
	and ($74.b)		; 32 74
	lda ($4D.b,S),Y		; B3 4D
	cmp $FC0CDD.l		; CF DD 0C FC
	cmp $74FB.w		; CD FB 74
	ora $F0.b,X		; 15 F0
	brk $F0.b		; 00 F0
	ora $300012.l		; 0F 12 00 30
	stz $0E.b,X		; 74 0E
	cpx #$13.b		; E0 13
	cpx $1FE0.w		; EC E0 1F
	cmp $5564F1.l		; CF F1 64 55
	tda		; 7B
	rol $350F.w,X		; 3E 0F 35
	pea $3532.w		; F4 32 35
	stz $20.b,X		; 74 20
	asl $0F.b,X		; 16 0F
	eor ($DE.b),Y		; 51 DE
	tyx		; BB
	and ($0F.b,X)		; 21 0F
	stz $0F.b		; 64 0F
	rol $DCD5.w,X		; 3E D5 DC
	cmp $C50B9D.l,X		; DF 9D 0B C5
	pla		; 68
	inc $D22B.w,X		; FE 2B D2
	cmp $A54F.w,X		; DD 4F A5
	and $25641C.l		; 2F 1C 64 25
	lda $1F1233.l,X		; BF 33 12 1F
	mvp $61,$02		; 44 02 61
	pla		; 68
	adc ($9A.b),Y		; 71 9A
	adc ($C1.b,S),Y		; 73 C1
	jsr $D1B5.w		; 20 B5 D1
	inc $68.b,X		; F6 68
	asl $EBB3.w,X		; 1E B3 EB
	rts		; 60

	ora ($ED.b)		; 12 ED
	and $D36404.l		; 2F 04 64 D3
	ora ($33.b),Y		; 11 33
	jsr $004D.w		; 20 4D 00
	eor $24.b,S		; 43 24
	stz $75.b		; 64 75
	sbc $E1.b,S		; E3 E1
	trb $F0DB.w		; 1C DB F0
	ldx #$FA.b		; A2 FA
	pla		; 68
	lsr $4029.w,X		; 5E 29 40
	lsr $F4F0.w		; 4E F0 F4
	beq -62.b		; F0 C2
	cli		; 58
.ACCU 16
	rep #$2E		; C2 2E
	adc $216A.w		; 6D 6A 21
	asl $0300.w		; 0E 00 03
	cli		; 58
	asl A		; 0A
	bvs -94.b		; 70 A2
	ora $34.b,S		; 03 34
	lda $4EEC.w,X		; BD EC 4E
	mvn $FD,$EB		; 54 EB FD
	wai		; CB
	cpy #$AF.b		; C0 AF
	dec $45F4.w		; CE F4 45
	cli		; 58
	sbc $0ED5.w		; ED D5 0E
	lda ($E2.b,X)		; A1 E2
	bpl  46.b		; 10 2E
	rol $0368.w,X		; 3E 68 03
	brk $D1.b		; 00 D1
	beq -27.b		; F0 E5
	and $540F3B.l,X		; 3F 3B 0F 54
	ora ($01.b,X)		; 01 01
.ACCU 16
.INDEX 16
	rep #$BE		; C2 BE
	dec $A9DB.w		; CE DB A9
	cpx $68.b		; E4 68
	brk $F0.b		; 00 F0
	sbc ($01.b,X)		; E1 01
	tsa		; 3B
	sbc $3F43.w,X		; FD 43 3F
	stz $F1.b		; 64 F1
	inc $F00E.w,X		; FE 0E F0
	cpx $10FF.w		; EC FF 10
	brk $54.b		; 00 54
	cpx $32.b		; E4 32
	and ($11.b),Y		; 31 11
	jsl $50F152.l		; 22 52 F1 50
	mvn $1F,$4B		; 54 4B 1F
	cpx #$1241.w		; E0 41 12
	adc ($12.b,X)		; 61 12
	lda $64.b,S		; A3 64
	ora $DCEDEF.l,X		; 1F EF ED DC
	bmi -49.b		; 30 CF
	pei ($1C.b)		; D4 1C
	mvn $E2,$9D		; 54 9D E2
	lda $004FFE.l		; AF FE 4F 00
	bne   2.b		; D0 02
	cli		; 58
	asl $0BE2.w,X		; 1E E2 0B
	bvc -26.b		; 50 E6
	bcs  15.b		; B0 0F
	sbc ($54.b,S),Y		; F3 54
	bmi  51.b		; 30 33
	sbc $20.b,X		; F5 20
	ora ($F4.b),Y		; 11 F4
	beq  -2.b		; F0 FE
	mvn $12,$F3		; 54 F3 12
	inc A		; 1A
	tsb $F022.w		; 0C 22 F0
	eor $F7.b,S		; 43 F7
	stz $F0.b		; 64 F0
	cpx $001D.w		; EC 1D 00
	beq   1.b		; F0 01
	jsr $64F0.w		; 20 F0 64
	ora $FE.b,S		; 03 FE
	lda ($E0.b),Y		; B1 E0
	bit $C3F4.w,X		; 3C F4 C3
	eor $2E64.w		; 4D 64 2E
	cmp $FF.b,S		; C3 FF
	rol $E121.w		; 2E 21 E1
	ora ($01.b),Y		; 11 01
	stz $1E.b		; 64 1E
	and $D003.w,X		; 3D 03 D0
	eor ($0F.b),Y		; 51 0F
	inc $64F2.w,X		; FE F2 64
	cpx $424C.w		; EC 4C 42
	beq  14.b		; F0 0E
	asl $C41E.w,X		; 1E 1E C4
	stz $C4.b		; 64 C4
	dec $FF5C.w,X		; DE 5C FF
	sbc ($31.b),Y		; F1 31
	inc $5411.w		; EE 11 54
	sbc ($C0.b,S),Y		; F3 C0
	tas		; 1B
	bmi  15.b		; 30 0F
	brk $30.b		; 00 30
	beq  68.b		; F0 44
	adc $6D11D2.l		; 6F D2 11 6D
	ora ($16.b,X)		; 01 16
	jsl $2F640F.l		; 22 0F 64 2F
	cop $E2.b		; 02 E2
	and $F2E40F.l		; 2F 0F E4 F2
	brk $54.b		; 00 54
	sbc $E3FF.w,X		; FD FF E3
	cpx #$FD13.w		; E0 13 FD
	wai		; CB
	eor $54.b,S		; 43 54
	cpx #$43EB.w		; E0 EB 43
	lda $EF.b,S		; A3 EF
	bit $1021.w		; 2C 21 10
	mvp $DE,$D0		; 44 D0 DE
	bit $E0.b		; 24 E0
	sep #$01		; E2 01
	and ($0B.b,S),Y		; 33 0B
	mvp $1F,$1F		; 44 1F 1F
	ora ($D0.b,S),Y		; 13 D0
	ora ($2F.b),Y		; 11 2F
	adc $0C5433.l		; 6F 33 54 0C
	brk $11.b		; 00 11
	beq  31.b		; F0 1F
	bmi   0.b		; 30 00
	sbc $B00144.l,X		; FF 44 01 B0
	bcs -30.b		; B0 E2
	trb $ED.b		; 14 ED
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	rti		; 40

	eor ($2F.b,X)		; 41 2F
	sep #$00		; E2 00
	sbc $0FC0.w		; ED C0 0F
	and $C31C44.l		; 2F 44 1C C3
	ora $EEB220.l,X		; 1F 20 B2 EE
	and ($01.b,X)		; 21 01
	bmi -19.b		; 30 ED
	cop $FD.b		; 02 FD
	and ($D4.b,S),Y		; 33 D4
	dec $1101.w,X		; DE 01 11
	plp		; 28
	rti		; 40

	lsr A		; 4A
	cmp $10EF54.l,X		; DF 54 EF 10
	ora ($D0.b,S),Y		; 13 D0
	bit $FF.b,X		; 34 FF
	rol $FE4E.w		; 2E 4E FE
	beq -30.b		; F0 E2
	sbc $14EF.w,X		; FD EF 14
	eor ($CE.b,X)		; 41 CE
	bmi -64.b		; 30 C0
	lda ($16.b),Y		; B1 16
	eor $E0.b,S		; 43 E0
	trb $0B.b		; 14 0B
	jsr $00F5.w		; 20 F5 00
	brk $02.b		; 00 02
	eor $D214E0.l,X		; 5F E0 14 D2
	brk $30.b		; 00 30
	cmp ($02.b),Y		; D1 02
	bpl   0.b		; 10 00
	brk $14.b		; 00 14
	bpl   0.b		; 10 00
	tsb $03.b		; 04 03
	brk $E3.b		; 00 E3
	sbc $0114F0.l		; EF F0 14 01
	asl $E000.w		; 0E 00 E0
	jsr $F1E1.w		; 20 E1 F1
	dec $EF00.w,X		; DE 00 EF
	bpl  -2.b		; 10 FE
	dec $00F0.w		; CE F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	ora ($E2.b)		; 12 E2
	bpl -29.b		; 10 E3
	asl $42F3.w,X		; 1E F3 42
	bpl -76.b		; 10 B4
	phk		; 4B
.INDEX 16
	rep #$5C		; C2 5C
	pea $49CE.w		; F4 CE 49
	inc $B412.w		; EE 12 B4
	sbc ($21.b,X)		; E1 21
	ora ($01.b)		; 12 01
	lsr $E642.w		; 4E 42 E6
	cmp $C4.b,S		; C3 C4
	sbc ($0E.b)		; F2 0E
	bpl  -1.b		; 10 FF
	ora ($FE.b,X)		; 01 FE
	sbc ($D3.b)		; F2 D3
	cpy $E0.b		; C4 E0
	cmp $FD.b,S		; C3 FD
	bpl  31.b		; 10 1F
	ora ($02.b),Y		; 11 02
	and ($C4.b,X)		; 21 C4
	cpy $3C.b		; C4 3C
	ora $2CC32C.l		; 0F 2C C3 2C
	ora $0D.b,S		; 03 0D
	ldy $30.b,X		; B4 30
	jmp $F652.w		; 4C 52 F6
	cmp ($2E.b,S),Y		; D3 2E
	jsr $B4E1.w		; 20 E1 B4
	inc $D3F0.w,X		; FE F0 D3
	tas		; 1B
	bmi  -3.b		; 30 FD
	pld		; 2B
	ora ($B4.b),Y		; 11 B4
	inc $215B.w,X		; FE 5B 21
	tas		; 1B
	jmp $020A21.l		; 5C 21 0A 02
	ldy $0F.b,X		; B4 0F
	ora ($11.b),Y		; 11 11
	ora ($13.b),Y		; 11 13
	ora $21.b,X		; 15 21
	pei ($B4.b)		; D4 B4
	sbc ($FF.b,X)		; E1 FF
	xce		; FB
	bpl -46.b		; 10 D2
	cmp $A4E012.l,X		; DF 12 E0 A4
	and $FE4D.w,X		; 3D 4D FE
	ora $3E5CF3.l		; 0F F3 5C 3E
	plx		; FA
	cpy $DE.b		; C4 DE
	asl $A1.b,X		; 16 A1
	lsr $16EE.w,X		; 5E EE 16
	ldx $C032.w,Y		; BE 32 C0
	sbc $5FD15E.l		; EF 5E D1 5F
	and $EF44C0.l		; 2F C0 44 EF
	cpy $61.b		; C4 61
	xce		; FB
	and $2BF2.w		; 2D F2 2B
	and $C4F523.l		; 2F 23 F5 C4
	cmp ($F0.b,S),Y		; D3 F0
	lda ($1D.b,S),Y		; B3 1D
	lda ($FF.b,S),Y		; B3 FF
	ora ($01.b,X)		; 01 01
	cpy $03.b		; C4 03
	asl $0DF4.w,X		; 1E F4 0D
	jmp $3E1F.w		; 4C 1F 3E
	cmp ($C4.b),Y		; D1 C4
	cmp ($C4.b,S),Y		; D3 C4
	ora $FFE220.l,X		; 1F 20 E2 FF
	and $3DC4EF.l		; 2F EF C4 3D
	cmp ($1E.b,S),Y		; D3 1E
	sbc ($C2.b,S),Y		; F3 C2
	sbc $B40001.l,X		; FF 01 00 B4
	dec $D1.b,X		; D6 D1
	tsb $C2.b		; 04 C2
	and ($FE.b,S),Y		; 33 FE
	ora ($E0.b),Y		; 11 E0
	ldy $4D.b,X		; B4 4D
	ora ($00.b)		; 12 00
	brk $2E.b		; 00 2E
	eor $C205.w		; 4D 05 C2
	ldy $E3.b,X		; B4 E3
	jsr ($0F4E.w,X)		; FC 4E 0F
	beq -17.b		; F0 EF
	ora ($FF.b,X)		; 01 FF
	ldy $F2.b		; A4 F2
	inc $1169.w		; EE 69 11
	inc $FE.b		; E6 FE
	ora ($B3.b),Y		; 11 B3
	ldy $0F.b		; A4 0F
	pei ($D1.b)		; D4 D1
	ora $03E112.l		; 0F 12 E1 03
	cmp $A0.b,X		; D5 A0
	mvp $46,$64		; 44 64 46
	eor $36.b,X		; 55 36
	pea $2F64.w		; F4 64 2F
	bcs  -1.b		; B0 FF
	cmp ($00.b,X)		; C1 00
	cmp ($CF.b)		; D2 CF
	lda ($A0.b)		; B2 A0
	bne -80.b		; D0 B0
	and $E1.b,S		; 23 E1
	cop $11.b		; 02 11
	eor ($43.b)		; 52 43
	and ($43.b)		; 32 43
	bcs  63.b		; B0 3F
	eor $03.b,S		; 43 03
	ora ($F0.b,S),Y		; 13 F0
	ora $A0D0FF.l,X		; 1F FF D0 A0
	sbc $FF03.w,X		; FD 03 FF
	ora ($F4.b,X)		; 01 F4
	brk $12.b		; 00 12
	eor $0DA4.w		; 4D A4 0D
	eor $B3F5.w,X		; 5D F5 B3
	bpl -58.b		; 10 C6
	ldx $5C.b,Y		; B6 5C
	bcs  16.b		; B0 10
	bne   0.b		; D0 00
	inc $312B.w		; EE 2B 31
	cmp ($E0.b,X)		; C1 E0
	bcs -63.b		; B0 C1
	inc $F111.w,X		; FE 11 F1
	cpx #$FF1F.w		; E0 1F FF
	sbc ($A4.b)		; F2 A4
	cpx $FE04.w		; EC 04 FE
	tsb $DF40.w		; 0C 40 DF
	tas		; 1B
	bit $B0.b,X		; 34 B0
	bne -49.b		; D0 CF
	inc $201E.w		; EE 1E 20
	jsr $2021.w		; 20 21 20
	bcs  46.b		; B0 2E
	jsr $0011.w		; 20 11 00
	sbc $0F1C0F.l,X		; FF 0F 1C 0F
	bcs  29.b		; B0 1D
	sbc ($E1.b),Y		; F1 E1
	tsb $D0E0.w		; 0C E0 D0
	bne -32.b		; D0 E0
	bcs -18.b		; B0 EE
	sbc ($3E.b,X)		; E1 3E
	ora ($21.b)		; 12 21
	bpl   4.b		; 10 04
	ora ($B4.b),Y		; 11 B4
	bpl -15.b		; 10 F1
	ora $5AC014.l		; 0F 14 C0 5A
	and ($11.b),Y		; 31 11
	ldy $E0.b,X		; B4 E0
	ora ($D2.b),Y		; 11 D2
	cpx #$C4C4.w		; E0 C4 C4
	lda ($C6.b),Y		; B1 C6
	ldy $B3.b,X		; B4 B3
	bpl -46.b		; 10 D2
.ACCU 8
	sep #$2E		; E2 2E
	and $A41000.l,X		; 3F 00 10 A4
	and $E4310D.l,X		; 3F 0D 31 E4
	cmp ($00.b,X)		; C1 00
	ora ($0F.b,S),Y		; 13 0F
	ldy $3C.b,X		; B4 3C
	ora $0E.b,S		; 03 0E
	ora $C1F1F1.l		; 0F F1 F1 C1
	brk $A4.b		; 00 A4
	rol A		; 2A
	eor $96.b,S		; 43 96
	ora ($31.b,X)		; 01 31
	lda ($DD.b,S),Y		; B3 DD
	and ($A0.b,S),Y		; 33 A0
	stp		; DB
	trb $FBDD.w		; 1C DD FB
	ora $CF00.w,Y		; 19 00 CF
	jsr $E3A4.w		; 20 A4 E3
	cpy #$E2F0.w		; C0 F0 E2
	pld		; 2B
	ora ($A7.b),Y		; 11 A7
	ora $6A2DA4.l,X		; 1F A4 2D 6A
	lsr $06D3.w,X		; 5E D3 06
	dec $023D.w		; CE 3D 02
	ldy #$0FE2.w		; A0 E2 0F
	bit $D4.b		; 24 D4
	asl $01D1.w,X		; 1E D1 01
	and $2DA4.w		; 2D A4 2D
	sbc $1002F1.l,X		; FF F1 02 10
	tas		; 1B
	and ($C0.b)		; 32 C0
	ldy #$1113.w		; A0 13 11
	cmp ($01.b),Y		; D1 01
	trb $F6.b		; 14 F6
	ora $F0A002.l		; 0F 02 A0 F0
	lsr $07.b		; 46 07
	brk $5D.b		; 00 5D
	ora $B01FEF.l,X		; 1F EF 1F B0
	jsr ($FF2E.w,X)		; FC 2E FF
	jsr ($1011.w,X)		; FC 11 10
	and ($23.b)		; 32 23
	ldy #$26F6.w		; A0 F6 26
	bvc  -1.b		; 50 FF
	jsr $ED2E.w		; 20 2E ED
	ora $A0.b,S		; 03 A0
	adc $5F0D34.l		; 6F 34 0D 5F
	asl $211D.w,X		; 1E 1D 21
	bpl -96.b		; 10 A0
	sta ($1A.b),Y		; 91 1A
	ora ($00.b),Y		; 11 00
	and ($20.b,S),Y		; 33 20
	sbc ($FF.b,X)		; E1 FF
	ldy #$1332.w		; A0 32 13
	bit $0020.w,X		; 3C 20 00
	tsb $3B.b		; 04 3B
	ora $D135A0.l,X		; 1F A0 35 D1
	eor ($50.b),Y		; 51 50
	rti		; 40

.INDEX 8
	sep #$12		; E2 12
	sbc $1050A0.l		; EF A0 50 10
	cpy BG2VOFS.w		; CC 10 21
	tsb $0FD0.w		; 0C D0 0F
	ldy #$2E.b		; A0 2E
	sbc $1D20.w,X		; FD 20 1D
	cmp $F1C120.l		; CF 20 C1 F1
	ldy $1F.b		; A4 1F
	ldx #$3C.b		; A2 3C
	and $5AD3.w,X		; 3D D3 5A
	trb $A042.w		; 1C 42 A0
	and ($12.b,X)		; 21 12
	eor $1032.w,X		; 5D 32 10
	eor ($F1.b),Y		; 51 F1
	ora ($A0.b)		; 12 A0
	cpy #$B4.b		; C0 B4
	ora $CF02.w,X		; 1D 02 CF
	ora ($E2.b,S),Y		; 13 E2
	beq -92.b		; F0 A4
	cmp $FF.b,X		; D5 FF
.ACCU 16
	rep #$E4		; C2 E4
	cmp ($0B.b),Y		; D1 0B
	adc $01A01D.l		; 6F 1D A0 01
	cmp $E00C1C.l		; CF 1C 0C E0
	tsb $EB11.w		; 0C 11 EB
	ldy #$FF.b		; A0 FF
	inc $E6F4.w,X		; FE F4 E6
	tas		; 1B
	adc $FF.b,S		; 63 FF
	and $4D03A0.l		; 2F A0 03 4D
	ora ($13.b),Y		; 11 13
	eor $02.b,S		; 43 02
	cpx $DE.b		; E4 DE
	ldy $2B.b		; A4 2B
	jmp $0EE3.w		; 4C E3 0E
	brk $F3.b		; 00 F3
	cop $FE.b		; 02 FE
	ldy #$40.b		; A0 40
	.db $42, $FD		; 42 FD
	sbc ($02.b),Y		; F1 02
	asl $3552.w		; 0E 52 35
	ldy #$34.b		; A0 34
	rol $3F21.w,X		; 3E 21 3F
	bvc -28.b		; 50 E4
	cmp $D0A431.l,X		; DF 31 A4 D0
	jsr $FF1D.w		; 20 1D FF
	asl $0DF3.w,X		; 1E F3 0D
	ora $94.b,S		; 03 94
	and $56C2D7.l		; 2F D7 C2 56
	xce		; FB
	cmp $69.b		; C5 69
	and $A0.b,S		; 23 A0
	pea $4451.w		; F4 51 44
	ora ($3D.b,X)		; 01 3D
	sbc ($10.b),Y		; F1 10
	sbc ($A0.b)		; F2 A0
	sbc ($E1.b),Y		; F1 E1
	sbc $2E02.w,X		; FD 02 2E
	trb $E0.b		; 14 E0
	bpl -96.b		; 10 A0
	and ($04.b)		; 32 04
	sbc ($0B.b,X)		; E1 0B
	xce		; FB
	ora $CFBF.w,X		; 1D BF CF
	ldy $0C.b		; A4 0C
	and ($02.b,X)		; 21 02
	bpl   2.b		; 10 02
	brk $0F.b		; 00 0F
	sbc ($90.b,S),Y		; F3 90
	and $EECD11.l		; 2F 11 CD EE
	ldy #$01.b		; A0 01
	ora ($E4.b,X)		; 01 E4
	bcc   2.b		; 90 02
	rol $3F2C.w		; 2E 2C 3F
	trb $4D24.w		; 1C 24 4D
	wai		; CB
	ldy #$FF.b		; A0 FF
	jsr ($BDDD.w,X)		; FC DD BD
	lda ($1B.b),Y		; B1 1B
	sbc ($0F.b,X)		; E1 0F
	bcc  47.b		; 90 2F
	ora ($44.b),Y		; 11 44
	nop		; EA
	and ($25.b,X)		; 21 25
	cmp $02.b,X		; D5 02
	ldy #$03.b		; A0 03
	ora ($21.b,S),Y		; 13 21
	ora $FFAFB1.l,X		; 1F B1 AF FF
	sta $3FA4.w,X		; 9D A4 3F
	ldy $D4.b,X		; B4 D4
	asl $005C.w,X		; 1E 5C 00
	tsb $A3.b		; 04 A3
	ldy #$00.b		; A0 00
	ora ($22.b,S),Y		; 13 22
	trb $301E.w		; 1C 1E 30
	cmp ($3D.b),Y		; D1 3D
	ldy #$40.b		; A0 40
	sbc ($D2.b)		; F2 D2
	tsb $F1.b		; 04 F1
	ora ($1E.b,X)		; 01 1E
	sbc $A0.b,X		; F5 A0
	rti		; 40

	ora ($FD.b)		; 12 FD
	ora ($D0.b)		; 12 D0
	and $A0DD2F.l		; 2F 2F DD A0
	sbc $FDEDE2.l,X		; FF E2 ED FD
	pei ($F5.b)		; D4 F5
	sbc ($24.b,X)		; E1 24
	ldy #$1E.b		; A0 1E
	and $F3.b,S		; 23 F3
	and ($E3.b)		; 32 E3
	lsr $F021.w		; 4E 21 F0
	bcc  42.b		; 90 2A
	xba		; EB
	bit $2E.b,X		; 34 2E
	cpx #$E6.b		; E0 E6
	ldy #$EF.b		; A0 EF
	ldy #$0E.b		; A0 0E
	brk $2D.b		; 00 2D
	cmp ($FF.b,X)		; C1 FF
	ora ($0F.b,S),Y		; 13 0F
	and $03E394.l,X		; 3F 94 E3 03
	and ($F2.b,X)		; 21 F2
	ora $E2153A.l		; 0F 3A 15 E2
	ldy #$30.b		; A0 30
	eor $FE00EE.l,X		; 5F EE 00 FE
	asl $FFCE.w		; 0E CE FF
	bcc  -3.b		; 90 FD
	asl $F44F.w,X		; 1E 4F F4
	ldx $D91F.w		; AE 1F D9
	sbc ($A4.b,X)		; E1 A4
	bne  62.b		; D0 3E
	ora $00F031.l		; 0F 31 F0 00
	beq  65.b		; F0 41
	ldy #$22.b		; A0 22
	eor $001031.l,X		; 5F 31 10 00
	and ($DE.b),Y		; 31 DE
	cpx $0B90.w		; EC 90 0B
	bpl  98.b		; 10 62
	ora $24CF.w,X		; 1D CF 24
	ora ($EB.b),Y		; 11 EB
	ldy #$00.b		; A0 00
	dec $4F12.w		; CE 12 4F
	and ($2E.b,X)		; 21 2E
	brk $12.b		; 00 12
	sty $EE.b,X		; 94 EE
	brk $3D.b		; 00 3D
	sty $02.b,X		; 94 02
	ora $5E0D.w,X		; 1D 0D 5E
	ldy #$1D.b		; A0 1D
	inc $DFF0.w		; EE F0 DF
	sbc $0F2F.w		; ED 2F 0F
	rti		; 40

	bcc  64.b		; 90 40
	pea $5E0E.w		; F4 0E 5E
	ora $FD.b,S		; 03 FD
	eor ($F2.b,S),Y		; 53 F2
	ldy #$2E.b		; A0 2E
	ora $01C1F1.l,X		; 1F F1 C1 01
	sbc $E0.b,S		; E3 E0
	sbc $E2A0.w		; ED A0 E2
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	and $D0FF21.l		; 2F 21 FF D0
	ora $1FFDA4.l,X		; 1F A4 FD 1F
	eor $00F200.l		; 4F 00 F2 00
	ora $01A4B5.l		; 0F B5 A4 01
	inc $F52F.w,X		; FE 2F F5
	sbc $3CE33E.l,X		; FF 3E E3 3C
	ldy #$3005.w		; A0 05 30
	rol $2F31.w,X		; 3E 31 2F
	and $A4FE01.l,X		; 3F 01 FE A4
	rti		; 40

	ora $1F00.w		; 0D 00 1F
	ora $FEE20F.l,X		; 1F 0F E2 FE
	bcc -61.b		; 90 C3
	sta $2EDD.w,X		; 9D DD 2E
	cmp ($D4.b)		; D2 D4
	ora ($05.b),Y		; 11 05
	bcc -12.b		; 90 F4
	jmp $BF60.w		; 4C 60 BF
	brk $B1.b		; 00 B1
	inc $803D.w		; EE 3D 80
	and $E0.b,X		; 35 E0
	eor $76.b,S		; 43 76
	lda ($B1.b,S),Y		; B3 B1
	eor $C194A3.l,X		; 5F A3 94 C1
	rtl		; 6B

	cpy $0E.b		; C4 0E
	lsr $5C02.w,X		; 5E 02 5C
	dec $94.b,X		; D6 94
	cmp $01.b		; C5 01
.ACCU 8
	sep #$EA		; E2 EA
	jsl $304C0E.l		; 22 0E 4C 30
	bcc  50.b		; 90 32
	and $301EC2.l		; 2F C2 1E 30
	cmp $A22B.w,X		; DD 2B A2
	bcc  79.b		; 90 4F
	ror $36.b,X		; 76 36
	eor ($23.b,X)		; 41 23
	eor $62.b,X		; 55 62
	asl $FEA0.w,X		; 1E A0 FE
	sbc ($FF.b),Y		; F1 FF
	rol $1C1E.w		; 2E 1E 1C
	cop $F1.b		; 02 F1
	bcc  35.b		; 90 23
	sbc ($EF.b),Y		; F1 EF
	bcs  60.b		; B0 3C
	cmp $0F.b,X		; D5 0F
	sbc $00A0.w,Y		; F9 A0 00
	bpl  50.b		; 10 32
	cop $03.b		; 02 03
	ora $94D041.l		; 0F 41 D0 94
	bne -73.b		; D0 B7
	cmp ($31.b),Y		; D1 31
	sep #$0F		; E2 0F
	ora ($B4.b,S),Y		; 13 B4
	bcc  35.b		; 90 23
	sbc ($40.b)		; F2 40
	nop		; EA
	lda ($D0.b,S),Y		; B3 D0
	ldx #$90CB.w		; A2 CB 90
	asl $01C3.w		; 0E C3 01
	sbc ($C0.b)		; F2 C0
	jsr $02EC.w		; 20 EC 02
	bcc -34.b		; 90 DE
	ora $42D012.l		; 0F 12 D0 42
	eor ($01.b,X)		; 41 01
	.db $42, $90		; 42 90
	rol $EBD1.w		; 2E D1 EB
	sbc $D230DC.l,X		; FF DC 30 D2
	lda $2090.w,X		; BD 90 20
.INDEX 16
	rep #$10		; C2 10
	sbc $FCEF.w		; ED EF FC
	asl $A0F0.w,X		; 1E F0 A0
	ora $FF21C1.l		; 0F C1 21 FF
	bpl  -1.b		; 10 FF
	cmp ($20.b),Y		; D1 20
	tya		; 98
	bvc -31.b		; 50 E1
	tsb $FB52.w		; 0C 52 FB
	jsr $EC20.w		; 20 20 EC
	bcc -74.b		; 90 B6
	asl $BCF1.w		; 0E F1 BC
	dec $B3EB.w		; CE EB B3
	eor $D01F90.l		; 4F 90 1F D0
	and ($ED.b,X)		; 21 ED
	jsl $D43DCE.l		; 22 CE 3D D4
	bcc  29.b		; 90 1D
	ora ($3C.b)		; 12 3C
	beq  -1.b		; F0 FF
	eor $41E1.w		; 4D E1 41
	sty $E5.b,X		; 94 E5
	cpx #$2A05.w		; E0 05 2A
	ora ($2C.b,X)		; 01 2C
	tad		; 5B
	and ($80.b),Y		; 31 80
	bpl 109.b		; 10 6D
	sbc ($EF.b)		; F2 EF
	cpx #$9ADB.w		; E0 DB 9A
	ldy #$CE90.w		; A0 90 CE
	bne -78.b		; D0 B2
	cmp #$12.b		; C9 12
	cpx $D0.b		; E4 D0
	bne -112.b		; D0 90
	bmi -12.b		; 30 F4
	trb $45.b		; 14 45
	sbc ($13.b),Y		; F1 13
	ror $9034.w		; 6E 34 90
	mvn $22,$4E		; 54 4E 22
	ora $0E.b,S		; 03 0E
	eor ($1B.b),Y		; 51 1B
	brk $94.b		; 00 94
	sbc $0F5E.w,X		; FD 5E 0F
	sbc $F241.w,X		; FD 41 F2
	sbc ($03.b,X)		; E1 03
	bcc -53.b		; 90 CB
	.db $42, $F1		; 42 F1
	adc $64.b,S		; 63 64
	ora $900256.l		; 0F 56 02 90
	bvc  52.b		; 50 34
	cpx #$E12E.w		; E0 2E E1
	sbc ($00.b,X)		; E1 00
	brk $90.b		; 00 90
	rti		; 40

	ora $1F3AF0.l,X		; 1F F0 3A 1F
	ora $2FFE.w,X		; 1D FE 2F
	bcc -97.b		; 90 9F
	lda ($F2.b)		; B2 F2
	jsr $A2EF.w		; 20 EF A2
	cmp $90FC.w,X		; DD FC 90
	ora $D0DC.w,X		; 1D DC D0
	bit $610E.w,X		; 3C 0E 61
	ora ($FD.b,X)		; 01 FD
	sty $3E.b,X		; 94 3E
	bmi -16.b		; 30 F0
	eor $D1F3.w		; 4D F3 D1
	and $1FA04C.l		; 2F 4C A0 1F
	inc $FFFF.w		; EE FF FF
	beq -17.b		; F0 EF
	jsr ($900F.w,X)		; FC 0F 90
	lsr $3022.w		; 4E 22 30
	rol $4442.w,X		; 3E 42 44
	ora ($DF.b)		; 12 DF
	ldy #$014F.w		; A0 4F 01
	ora ($00.b),Y		; 11 00
	sbc ($10.b),Y		; F1 10
	ora ($03.b,S),Y		; 13 03
	bcc  12.b		; 90 0C
	asl $00CC.w		; 0E CC 00
	cmp $EEEA.w,X		; DD EA EE
	ora ($90.b,X)		; 01 90
	adc ($42.b,X)		; 61 42
	and $014B.w,X		; 3D 4B 01
	eor $90F4DF.l		; 4F DF F4 90
	cpx #$E01E.w		; E0 1E E0
	cop $9E.b		; 02 9E
	sbc ($33.b,S),Y		; F3 33
	brk $90.b		; 00 90
	cop $C4.b		; 02 C4
	inc $DE.b		; E6 DE
	rti		; 40

	asl $FD11.w		; 0E 11 FD
	sty $50.b,X		; 94 50
	dec $3D0F.w,X		; DE 0F 3D
	ora ($FC.b)		; 12 FC
	trb $CD.b		; 14 CD
	sty $21.b,X		; 94 21
	ora ($4F.b,X)		; 01 4F
	cmp $00.b,S		; C3 00
	cop $0E.b		; 02 0E
	eor $3DFE90.l		; 4F 90 FE 3D
	asl $30F2.w		; 0E F2 30
	sbc $90CFC0.l,X		; FF C0 CF 90
	ora $21E0.w		; 0D E0 21
	lda $1FFC.w,X		; BD FC 1F
	sbc ($DB.b)		; F2 DB
	bcc  -4.b		; 90 FC
	sbc $2FF1.w,X		; FD F1 2F
	inc $10EE.w,X		; FE EE 10
	eor ($90.b)		; 52 90
	ora ($DB.b,X)		; 01 DB
	tas		; 1B
	and ($BE.b),Y		; 31 BE
	sbc $8001EB.l,X		; FF EB 01 80
	cpx #$4E53.w		; E0 53 4E
	lda $CBAD30.l		; AF 30 AD CB
	sbc $110294.l		; EF 94 02 11
	asl $FBF4.w,X		; 1E F4 FB
	sbc ($23.b,S),Y		; F3 23
	cpy #$B080.w		; C0 80 B0
	asl $23B4.w,X		; 1E B4 23
	and ($FF.b)		; 32 FF
	bit $25.b		; 24 25
	bcc  36.b		; 90 24
	eor ($22.b,X)		; 41 22
	dec $AD51.w,X		; DE 51 AD
	and ($0F.b,X)		; 21 0F
	bcc -64.b		; 90 C0
	ora ($0F.b)		; 12 0F
	bpl -18.b		; 10 EE
	cmp ($1F.b),Y		; D1 1F
	bmi -112.b		; 30 90
	sbc $43000E.l		; EF 0E 00 43
	and ($52.b,S),Y		; 33 52
	ora $9031.w,X		; 1D 31 90
	eor ($ED.b,S),Y		; 53 ED
	ora ($1E.b,S),Y		; 13 1E
	rol $5313.w		; 2E 13 53
	pei ($94.b)		; D4 94
	asl $3DF2.w		; 0E F2 3D
	ora $02C200.l		; 0F 00 C2 02
	brk $90.b		; 00 90
	dec $DFCD.w		; CE CD DF
	and $E15131.l		; 2F 31 51 E1
	sbc ($94.b),Y		; F1 94
	brk $1F.b		; 00 1F
	asl $E13C.w,X		; 1E 3C E1
	cpx $3D.b		; E4 3D
	and ($94.b,X)		; 21 94
	cpx $D35E.w		; EC 5E D3
	ora $FDF3.w		; 0D F3 FD
.ACCU 8
	sep #$20		; E2 20
	bra  82.b		; 80 52
	dec A		; 3A
	dec $4B.b,X		; D6 4B
	cmp ($54.b,S),Y		; D3 54
	ora $F4.b,S		; 03 F4
	sty $A3.b,X		; 94 A3
	jsr $2CB1.w		; 20 B1 2C
	ora ($02.b,S),Y		; 13 02
	sbc ($4C.b)		; F2 4C
	bcc -13.b		; 90 F3
	eor $33.b,X		; 55 33
	and ($EF.b)		; 32 EF
	ora $4FCE.w		; 0D CE 4F
	sty $F3.b,X		; 94 F3
	bne -49.b		; D0 CF
	rts		; 60

	and ($A1.b,X)		; 21 A1
	ora ($B3.b),Y		; 11 B3
	sty $E1.b,X		; 94 E1
	jsr $B42E.w		; 20 2E B4
	asl $EEF4.w,X		; 1E F4 EE
	ora ($94.b)		; 12 94
	plx		; FA
	bvc  47.b		; 50 2F
	sbc ($0F.b),Y		; F1 0F
	bit $0210.w		; 2C 10 02
	bcc  35.b		; 90 23
	bcs  61.b		; B0 3D
	sbc $0BCD.w,X		; FD CD 0B
	cpy $94EB.w		; CC EB 94
	bvc -13.b		; 50 F3
	rol $E3E1.w		; 2E E1 E3
	jsl $9022FC.l		; 22 FC 22 90
	sbc ($ED.b,S),Y		; F3 ED
	cmp $322B1F.l,X		; DF 1F 2B 32
	cmp ($2D.b),Y		; D1 2D
	sty $52.b,X		; 94 52
	inc $1EE1.w,X		; FE E1 1E
	sbc $1F.b,S		; E3 1F
	phd		; 0B
	bit $2595.w		; 2C 95 25
	cmp ($1D.b),Y		; D1 1D
	and ($EF.b)		; 32 EF
	ora ($5A.b)		; 12 5A
	beq   2.b		; F0 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
.INDEX 16
	rep #$10		; C2 10
	pea $4DC2.w		; F4 C2 4D
	ora $4E0DF3.l,X		; 1F F3 0D 4E
.ACCU 16
	rep #$E4		; C2 E4
	sbc ($2D.b,X)		; E1 2D
	eor $520C02.l		; 4F 02 0C 52
	dec $C2.b		; C6 C2
	cmp ($3E.b,S),Y		; D3 3E
	ora ($C3.b),Y		; 11 C3
	bit $B26C.w		; 2C 6C B2
	cmp $1CC2.w		; CD C2 1C
	lda ($FB.b)		; B2 FB
	bit $C324.w		; 2C 24 C3
	cmp $C230.w,X		; DD 30 C2
	cmp $0C.b,X		; D5 0C
	ora $3E10E3.l,X		; 1F E3 10 3E
	sbc ($00.b,S),Y		; F3 00
.ACCU 16
	rep #$2E		; C2 2E
	ora $C2.b,S		; 03 C2
	jmp $B12E.w		; 4C 2E B1
	beq  64.b		; F0 40
	rep #$42		; C2 42
	bne  13.b		; D0 0D
	ora ($D4.b),Y		; 11 D4
	rol $F323.w,X		; 3E 23 F3
	dec $D3.b		; C6 D3
.INDEX 16
	rep #$11		; C2 11
	sbc $F23C4C.l,X		; FF 4C 3C F2
	jsr ($0DC2.w,X)		; FC C2 0D
	brk $0D.b		; 00 0D
	cmp $0C40E0.l,X		; DF E0 40 0C
	ora $031DC2.l		; 0F C2 1D 03
	lda ($4D.b),Y		; B1 4D
	and ($12.b),Y		; 31 12
	asl $C24F.w		; 0E 4F C2
	cmp ($EC.b,S),Y		; D3 EC
	lsr $ECD2.w		; 4E D2 EC
	eor $C2DFB3.l		; 4F B3 DF C2
	lsr $FDF5.w		; 4E F5 FD
	ora $F112.w,X		; 1D 12 F1
	sbc $3EC6EF.l		; EF EF C6 3E
	jsr $024B.w		; 20 4B 02
	inc $313C.w,X		; FE 3C 31
	cmp $C2.b,S		; C3 C2
	adc $EDE2.w		; 6D E2 ED
	trb $B1FF.w		; 1C FF B1
	cpx $C23D.w		; EC 3D C2
	cpx #$1FFE.w		; E0 FE 1F
	pei ($FE.b)		; D4 FE
	trb $1FE5.w		; 1C E5 1F
	rep #$0D		; C2 0D
	brk $C4.b		; 00 C4
	sbc $9411.w		; ED 11 94
	jmp $C23E.w		; 4C 3E C2
	ldy $FD.b,X		; B4 FD
	rol $0213.w,X		; 3E 13 02
	bit $B1E0.w,X		; 3C E0 B1
.INDEX 16
	rep #$10		; C2 10
	sbc $D0.b,S		; E3 D0
	ora $F03EE2.l,X		; 1F E2 3E F0
	lda ($D2.b),Y		; B1 D2
	jsr ($E011.w,X)		; FC 11 E0
	and $30FF02.l,X		; 3F 02 FF 30
	beq -62.b		; F0 C2
	cpx #$126F.w		; E0 6F 12
	cpx $5F0E.w		; EC 0E 5F
.INDEX 8
	sep #$DF		; E2 DF
	rep #$01		; C2 01
	dec $3CFE.w		; CE FE 3C
	and $E11BF2.l,X		; 3F F2 1B E1
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	lsr $00E4.w		; 4E E4 00
	and ($FF.b,X)		; 21 FF
	ora ($1D.b),Y		; 11 1D
	rep #$4F		; C2 4F
	cop $14.b		; 02 14
	eor ($C0.b,X)		; 41 C0
	bne  12.b		; D0 0C
	rti		; 40

	rep #$03		; C2 03
	and $1151.w		; 2D 51 11
	ora $0FD20D.l,X		; 1F 0D D2 0F
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	asl $D0F3.w		; 0E F3 D0
	bmi -44.b		; 30 D4
	bpl  45.b		; 10 2D
.ACCU 16
	rep #$2D		; C2 2D
	ora $10.b,S		; 03 10
	bmi   3.b		; 30 03
	sbc $C2145C.l,X		; FF 5C 14 C2
	ora $30.b,S		; 03 30
	ora $11.b,S		; 03 11
	and $2CFCF1.l		; 2F F1 FC 2C
.INDEX 16
	rep #$11		; C2 11
	lda ($FC.b,X)		; A1 FC
	ora ($C2.b,S),Y		; 13 C2
	sbc $B42E.w,X		; FD 2E B4
	rep #$0D		; C2 0D
	eor $C3F2.w,X		; 5D F2 C3
	rol $E111.w		; 2E 11 E1
	bmi -62.b		; 30 C2
	ora ($F5.b,S),Y		; 13 F5
	cmp $EEE12E.l,X		; DF 2E E1 EE
	bit $C2E0.w		; 2C E0 C2
	tas		; 1B
	and ($D3.b,X)		; 21 D3
	sbc $E1F12B.l,X		; FF 2B F1 E1
	eor $1063C2.l		; 4F C2 63 10
	inc $0F3F.w,X		; FE 3F 0F
	trb $E244.w		; 1C 44 E2
	rep #$00		; C2 00
	pei ($12.b)		; D4 12
	jsr $0CFF.w		; 20 FF 0C
	jsr $C233.w		; 20 33 C2
	sep #$04		; E2 04
	rti		; 40

	rol $11.b		; 26 11
	.db $42, $E4		; 42 E4
	asl $2EC2.w,X		; 1E C2 2E
	cmp $FD00CF.l,X		; DF CF 00 FD
	sbc ($FF.b)		; F2 FF
	bmi -62.b		; 30 C2
	ora ($04.b),Y		; 11 04
	jsr ($1E1F.w,X)		; FC 1F 1E
	sbc $C2101E.l		; EF 1E 10 C2
	ora ($E2.b,X)		; 01 E2
	jsl $212CB4.l		; 22 B4 2C 21
	lda ($1C.b),Y		; B1 1C
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	cpx $DC.b		; E4 DC
	and $DDE0E0.l		; 2F E0 E0 DD
	inc $F2C2.w,X		; FE C2 F2
	rep #$4F		; C2 4F
	and $EE.b,S		; 23 EE
	eor $C2E124.l		; 4F 24 E1 C2
	and $F200.w		; 2D 00 F2
	and $D320.w,X		; 3D 20 D3
	cpx $C21E.w		; EC 1E C2
	cmp ($D0.b,X)		; C1 D0
	sbc $0A00EE.l,X		; FF EE 00 0A
	ora $A3.b,S		; 03 A3
	rep #$0B		; C2 0B
	and $2FFFD5.l		; 2F D5 FF 2F
	ora $FF.b,S		; 03 FF
	and $E4C2.w,X		; 3D C2 E4
	lda ($2C.b,S),Y		; B3 2C
	and $C3.b,S		; 23 C3
	sbc $C20131.l		; EF 31 01 C2
	xba		; EB
	bit $D101.w		; 2C 01 D1
	eor ($13.b,X)		; 41 13
	and ($10.b,S),Y		; 33 10
	rep #$4E		; C2 4E
	ora $1EDCE1.l,X		; 1F E1 DC 1E
	and ($C4.b),Y		; 31 C4
	sbc $216BB2.l,X		; FF B2 6B 21
	and [$C4.b]		; 27 C4
	phk		; 4B
	ror $F4.b		; 66 F4
	and $F241C2.l,X		; 3F C2 41 F2
	stp		; DB
	rol $BFDF.w,X		; 3E DF BF
	rol $C201.w,X		; 3E 01 C2
	ora $B113.w,X		; 1D 13 B1
	cmp $0F2E.w,X		; DD 2E 0F
	sbc ($F0.b)		; F2 F0
	rep #$40		; C2 40
	rol $DF13.w		; 2E 13 DF
	ora $BE0FE2.l		; 0F E2 0F BE
.ACCU 16
	rep #$2D		; C2 2D
	and ($23.b,X)		; 21 23
	inc $3BB0.w,X		; FE B0 3B
	ora $FCB21E.l		; 0F 1E B2 FC
	sbc $E4126C.l		; EF 6C 12 E4
	lda ($4D.b),Y		; B1 4D
	bit $B2.b,X		; 34 B2
	lda ($0A.b)		; B2 0A
	eor $5F3BC3.l		; 4F C3 3B 5F
	sbc $ED.b,S		; E3 ED
	rep #$0E		; C2 0E
	cmp ($F1.b),Y		; D1 F1
	bit $00.b		; 24 00
	eor $C2D133.l		; 4F 33 D1 C2
	ora $D202FE.l,X		; 1F FE 02 D2
	ora $311C.w		; 0D 1C 31
	sbc $00F0C2.l		; EF C2 F0 00
	pei ($1E.b)		; D4 1E
	sbc $D320.w,X		; FD 20 D3
	ora $10C2.w,X		; 1D C2 10
	cmp $D0301D.l		; CF 1D 30 D0
	brk $11.b		; 00 11
	sbc ($B2.b,S),Y		; F3 B2
	rts		; 60

	and $DC.b,S		; 23 DC
	ror $3D12.w		; 6E 12 3D
	cmp $E2B2F1.l,X		; DF F1 B2 E2
	rti		; 40

	ora ($AB.b),Y		; 11 AB
	mvn $EC,$92		; 54 92 EC
	ora ($C6.b,S),Y		; 13 C6
	beq  30.b		; F0 1E
	tad		; 5B
	ora ($DD.b),Y		; 11 DD
	rti		; 40

	cpx $1C.b		; E4 1C
.INDEX 16
	rep #$11		; C2 11
	sbc ($00.b,S),Y		; F3 00
	and $CCFEE0.l		; 2F E0 FE CC
	tas		; 1B
.INDEX 16
	rep #$DE		; C2 DE
	cpy #$101B.w		; C0 1B 10
	sbc ($1E.b)		; F2 1E
	ora ($03.b),Y		; 11 03
	ldx $49.b,Y		; B6 49
	cmp ($26.b,X)		; C1 26
	lda ($C2.b),Y		; B1 C2
	inc A		; 1A
	ora ($3E.b,S),Y		; 13 3E
	rep #$C2		; C2 C2
	asl $E42E.w,X		; 1E 2E E4
	ora $0D1523.l,X		; 1F 23 15 0D
	lda ($25.b)		; B2 25
	cmp ($0A.b,X)		; C1 0A
	and $F00F.w,X		; 3D 0F F0
	bcc  19.b		; 90 13
	rep #$44		; C2 44
	tsb $EB.b		; 04 EB
	and $12F1F3.l		; 2F F3 F1 12
	ora $F43DC2.l		; 0F C2 3D F4
	bne -34.b		; D0 DE
	sbc $213EEE.l,X		; FF EE 3E 21
	lda ($BA.b)		; B2 BA
	ora $E513.w		; 0D 13 E5
	ora ($3F.b)		; 12 3F
	sbc ($FF.b),Y		; F1 FF
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	ora ($01.b),Y		; 11 01
	inc $122F.w,X		; FE 2F 12
	eor $C221.w		; 4D 21 C2
	cpx #$F120.w		; E0 20 F1
	ora $3EE3F7.l,X		; 1F F7 E3 3E
	bmi -62.b		; 30 C2
	ora ($D1.b,S),Y		; 13 D1
	and $02E3.w		; 2D E3 02
	bne  -5.b		; D0 FB
	pea $ECC2.w		; F4 C2 EC
	adc $3EFCD6.l		; 6F D6 FC 3E
	cmp ($1C.b,S),Y		; D3 1C
	and $2EC1C2.l		; 2F C2 C1 2E
	ora ($02.b,X)		; 01 02
	asl $1DC2.w,X		; 1E C2 1D
	sbc $1D02C2.l,X		; FF C2 02 1D
	sbc ($EE.b,X)		; E1 EE
	brk $F1.b		; 00 F1
	tsb $C23E.w		; 0C 3E C2
	ora ($DD.b),Y		; 11 DD
	asl $E0C1.w,X		; 1E C1 E0
	ora ($D0.b),Y		; 11 D0
	sbc $12F0C3.l,X		; FF C3 F0 12
	rti		; 40

	cpx $FD.b		; E4 FD
	jsr $20F0.w		; 20 F0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A4.b		; 00 A4
	jmp.w [$32F2]		; DC F2 32
	ora ($CD.b),Y		; 11 CD
	sbc ($33.b,X)		; E1 33
	ora ($A4.b),Y		; 11 A4
	jmp.w [$33E1]		; DC E1 33
	ora ($EC.b),Y		; 11 EC
	cpy #$2143.w		; C0 43 21
	ldy $FC.b		; A4 FC
	bcs  52.b		; B0 34
	bmi  28.b		; 30 1C
	cmp $3224.w		; CD 24 32
	ldy $1D.b		; A4 1D
	cpy $3304.w		; CC 04 33
	brk $BC.b		; 00 BC
	sbc $52.b,S		; E3 52
	ldy $11.b		; A4 11
	ldy $51D2.w,X		; BC D2 51
	and ($DC.b,X)		; 21 DC
	cmp ($42.b),Y		; D1 42
	tay		; A8
	sbc $FD5FFE.l,X		; FF FE 5F FD
	ora ($24.b,S),Y		; 13 24
	lda $B8F4.w		; AD F4 B8
	cmp ($34.b,X)		; C1 34
	sbc $1DEFF0.l		; EF F0 EF 1D
	eor ($1F.b,S),Y		; 53 1F
	clv		; B8
	bne -17.b		; D0 EF
	beq  67.b		; F0 43
	ora $0EFED0.l,X		; 1F D0 FE 0E
	clv		; B8
	eor $3F.b,S		; 43 3F
	cmp ($ED.b,X)		; C1 ED
	asl $3F43.w,X		; 1E 43 3F
	cmp ($B8.b,X)		; C1 B8
	sbc $4122E0.l		; EF E0 22 41
	cmp $F3D1E0.l,X		; DF E0 D1 F3
	clv		; B8
	bit $FB.b,X		; 34 FB
	ora $11FF.w,X		; 1D FF 11
	and $1C.b		; 25 1C
	sbc $FBB4.w,X		; FD B4 FB
	cmp $4501.w,X		; DD 01 45
	jsl $CFCEFE.l		; 22 FE CE CF
	ldy $13.b,X		; B4 13
	and $34.b,S		; 23 34
	cmp $21C0CE.l		; CF CE C0 21
	ora ($B4.b,S),Y		; 13 B4
	.db $62, $CD, $FB		; 62 CD FB
	sbc ($2F.b,X)		; E1 2F
	bit $6E.b,X		; 34 6E
	cpx $FBB4.w		; EC B4 FB
	sbc ($10.b)		; F2 10
	and $5C.b,X		; 35 5C
	sbc $11CD.w		; ED CD 11
	clv		; B8
	sbc ($31.b),Y		; F1 31
	stp		; DB
	cop $C4.b		; 02 C4
	and ($D4.b,X)		; 21 D4
	cop $B8.b		; 02 B8
	ldx $B5D5.w,Y		; BE D5 B5
	jsr $12D3.w		; 20 D3 12
	lda $B8F4.w,X		; BD F4 B8
	lda $3E.b,X		; B5 3E
	sbc $11.b,S		; E3 11
	jmp.w [$C3F4]		; DC F4 C3
	lsr $F2B4.w		; 4E B4 F2
	bit $4C.b		; 24 4C
	cmp $E132CE.l		; CF CE 32 E1
	and $B4.b,S		; 23 B4
	ror $FCDC.w		; 6E DC FC
	sbc ($10.b)		; F2 10
	bit $54.b		; 24 54
	tsx		; BA
	clv		; B8
	bmi -11.b		; 30 F5
	ora $AEFF03.l,X		; 1F 03 FF AE
	ora ($F3.b,S),Y		; 13 F3
	clv		; B8
	and ($02.b,X)		; 21 02
	phx		; DA
	cmp ($3F.b,S),Y		; D3 3F
	and $CE.b,S		; 23 CE
	.db $42, $B4		; 42 B4
	adc ($AC.b)		; 72 AC
	stp		; DB
	sbc ($03.b)		; F2 03
	lsr $1C.b,X		; 56 1C
	ldy $10C4.w,X		; BC C4 10
	ora ($0E.b,X)		; 01 0E
	ora ($1F.b,S),Y		; 13 1F
	inc $3FF3.w		; EE F3 3F
	cpy #$CE0F.w		; C0 0F CE
	and $10.b,S		; 23 10
	cpx $2014.w		; EC 14 20
	jsr ($F6C4.w,X)		; FC C4 F6
	rol $D3FE.w,X		; 3E FE D3
	lsr $DEEF.w,X		; 5E EF DE
	mvn $00,$C4		; 54 C4 00
	jsr ($EF12.w,X)		; FC 12 EF
	asl $43E3.w,X		; 1E E3 43
	ora $EECDC4.l		; 0F C4 CD EE
	ora $41.b,X		; 15 41
	ora $23CD.w,X		; 1D CD 23
	ora $C51DB4.l,X		; 1F B4 1D C5
	adc $64CEDF.l		; 6F DF CE 64
	cmp $C4FB.w,X		; DD FB C4
	tsb $31.b		; 04 31
	ora $02FFDD.l		; 0F DD FF 02
	and ($2F.b,S),Y		; 33 2F
	bcs  44.b		; B0 2C
	dec $FEDD.w		; CE DD FE
	cmp $1B5545.l		; CF 45 55 1B
	iny		; C8
	ora ($23.b),Y		; 11 23
	jsr ($F4FF.w,X)		; FC FF F4
	lsr $FFC1.w		; 4E C1 FF
	cpy $25.b		; C4 25
	asl $D3FD.w,X		; 1E FD D3
	bvc  -1.b		; 50 FF
	dec $B833.w,X		; DE 33 B8
	sta $2C251E.l,X		; 9F 1E 25 2C
	lda $F24B14.l,X		; BF 14 4B F2
	ldy $DC.b,X		; B4 DC
	eor $01.b		; 45 01
	asl $CCFE.w,X		; 1E FE CC
	ora $63.b,X		; 15 63
	clv		; B8
	nop		; EA
	pea $CD62.w		; F4 62 CD
	bne  54.b		; D0 36
	rol A		; 2A
	dec $24B8.w		; CE B8 24
	eor ($BB.b,X)		; 41 BB
	sbc ($54.b),Y		; F1 54
	ora $03CC.w,X		; 1D CC 03
	iny		; C8
	and $FC.b,S		; 23 FC
	sbc $CF5D04.l,X		; FF 04 5D CF
	sbc $63C065.l,X		; FF 65 C0 63
	ora $56AE.w		; 0D AE 56
	ora $41F5CA.l,X		; 1F CA F5 41
	cpy $ED.b		; C4 ED
	sbc $4F.b,X		; F5 4F
	inc $54DF.w		; EE DF 54
	ora $C4DD.w		; 0D DD C4
	tsb $51.b		; 04 51
	cmp $55CF.w,X		; DD CF 55
	asl $F4DD.w		; 0E DD F4
	cpy $50.b		; C4 50
	dec $45E0.w		; CE E0 45
	jsr ($05ED.w,X)		; FC ED 05
	eor $F3F0C8.l		; 4F C8 F0 F3
	rti		; 40

	lda $EC350F.l,X		; BF 0F 35 EC
	beq -56.b		; F0 C8
	sbc ($6D.b,S),Y		; F3 6D
	bcs  15.b		; B0 0F
	eor ($DB.b,S),Y		; 53 DB
	and $2EC804.l		; 2F 04 C8 2E
	cmp $FC3300.l,X		; DF 00 33 FC
	beq -12.b		; F0 F4
	eor $D0C8.w		; 4D C8 D0
	sbc ($34.b,X)		; E1 34
	cmp $F5F0.w,X		; DD F0 F5
	rol $B4D1.w		; 2E D1 B4
	tyx		; BB
	sbc $72.b		; E5 72
	dec $15CC.w,X		; DE CC 15
	and ($2F.b)		; 32 2F
	clv		; B8
	sbc $1E5201.l		; EF 01 52 1E
	dec $0500.w		; CE 00 05
	and $F0C8.w		; 2D C8 F0
	sbc $0FFF32.l,X		; FF 32 FF 0F
	phd		; 0B
	eor $1F.b,S		; 43 1F
	iny		; C8
	trb $30E1.w		; 1C E1 30
	and ($CF.b,X)		; 21 CF
	cpx #$1F24.w		; E0 24 1F
	iny		; C8
	sbc $41F2FF.l		; EF FF F2 41
	cpx #$F3ED.w		; E0 ED F3
	and ($C8.b,S),Y		; 33 C8
	sbc $12ED.w,X		; FD ED 12
	eor ($FD.b,X)		; 41 FD
	sbc $C40012.l,X		; FF 12 00 C4
	bpl -32.b		; 10 E0
	bpl  19.b		; 10 13
	jmp.w [$0301]		; DC 01 03
	rol $FEC0.w,X		; 3E C0 FE
	cmp $23F2.w,X		; DD F2 23
	eor ($BB.b),Y		; 51 BB
	sbc $DCC436.l		; EF 36 C4 DC
	sbc $F03013.l		; EF 13 30 F0
	phd		; 0B
	sbc ($20.b,S),Y		; F3 20
	clv		; B8
	tad		; 5B
	sta ($41.b,S),Y		; 93 41
	and ($CC.b),Y		; 31 CC
	ora ($4A.b),Y		; 11 4A
	bit $C0.b		; 24 C0
	bpl  17.b		; 10 11
	inc $01FF.w,X		; FE FF 01
	brk $12.b		; 00 12
	eor $1F64B8.l		; 4F B8 64 1F
	tad		; 5B
	lda ($21.b),Y		; B1 21
	and ($EF.b,X)		; 21 EF
	ora ($B4.b)		; 12 B4
	tyx		; BB
	ora ($13.b)		; 12 13
	trb $F2F0.w		; 1C F0 F2
	jsr $B022.w		; 20 22 B0
	dec A		; 3A
	ldx $7F05.w		; AE 05 7F
	plb		; AB
.INDEX 8
	sep #$53		; E2 53
	beq -76.b		; F0 B4
	bit $0FD3.w,X		; 3C D3 0F
	bmi -14.b		; 30 F2
	tsb $02F0.w		; 0C F0 02
	bcs  35.b		; B0 23
	jsl $11C03D.l		; 22 3D C0 11
	bmi -51.b		; 30 CD
	ora ($B0.b,X)		; 01 B0
	ora ($03.b),Y		; 11 03
	adc $F2AD.w		; 6D AD F2
	adc $CB.b,S		; 63 CB
	bne -80.b		; D0 B0
	bit $1F.b,X		; 34 1F
	ora ($ED.b,S),Y		; 13 ED
	sbc $14FF02.l,X		; FF 02 FF 14
	ldy $ED.b,X		; B4 ED
	inc $4115.w		; EE 15 41
	cmp $54CE.w,X		; DD CE 54
	ora $E0FCC0.l,X		; 1F C0 FC E0
	jsl $DE2110.l		; 22 10 21 DE
	brk $22.b		; 00 22
	bcs -38.b		; B0 DA
	cpy #$45.b		; C0 45
	asl $3DF3.w,X		; 1E F3 3D
	sbc $FEB8E0.l		; EF E0 B8 FE
	bmi -19.b		; 30 ED
	ora ($13.b),Y		; 11 13
	ora $B42FCE.l,X		; 1F CE 2F B4
	sbc $3F.b		; E5 3F
	sbc $53E2.w		; ED E2 53
	ora $26DA.w		; 0D DA 26
	ldy $31.b,X		; B4 31
	phx		; DA
	cpy $54.b		; C4 54
	ora $D6DB.w,X		; 1D DB D6
	eor ($B4.b),Y		; 51 B4
	jsr ($1DE3.w,X)		; FC E3 1D
	bmi -31.b		; 30 E1
	sbc $2123.w,X		; FD 23 21
	clv		; B8
	cmp $EE3E04.l,X		; DF 04 3E EE
	sbc ($11.b,S),Y		; F3 11
	sbc $EEB0F0.l,X		; FF F0 B0 EE
	ora ($20.b,X)		; 01 20
	sbc $F0ED14.l,X		; FF 14 ED F0
	jsl $22DEB4.l		; 22 B4 DE 22
	bmi -52.b		; 30 CC
	sbc ($53.b,S),Y		; F3 53
	ldy $A010.w,X		; BC 10 A0
	sbc $3E.b		; E5 3E
	ora ($AD.b,X)		; 01 AD
	bit $53.b		; 24 53
	sbc $B0BC.w,X		; FD BC B0
	jsl $25CD1E.l		; 22 1E CD 25
	eor ($EB.b),Y		; 51 EB
	lda ($42.b),Y		; B1 42
	ldy $ED.b,X		; B4 ED
	pei ($52.b)		; D4 52
	sbc $05DE.w,X		; FD DE 05
	and $13C4BC.l,X		; 3F BC C4 13
	jsr $E2ED.w		; 20 ED E2
	and ($0F.b)		; 32 0F
	cmp $B423.w,X		; DD 23 B4
	and $3F26BC.l,X		; 3F BC 26 3F
	plb		; AB
	trb $32.b		; 14 32
	sbc $E0B4.w,X		; FD B4 E0
	ora ($1F.b),Y		; 11 1F
	cop $2C.b		; 02 2C
	lda ($22.b,S),Y		; B3 22
	bit $B1B4.w		; 2C B4 B1
	and ($1F.b,S),Y		; 33 1F
	sbc ($ED.b,X)		; E1 ED
	and ($F0.b)		; 32 F0
	inc $42B8.w,X		; FE B8 42
	sbc $53A4.w		; ED A4 53
	sbc $12D1.w		; ED D1 12
	bpl -88.b		; 10 A8
	sta $B10D35.l,X		; 9F 35 0D B1
	sbc [$3D.b],Y		; F7 3D
	jmp.w [$A4D6]		; DC D6 A4
	adc [$2C.b]		; 67 2C
	stz $DC57.w,X		; 9E 57 DC
	inc $0C44.w		; EE 44 0C
	sty $EF.b,X		; 94 EF
	and [$2D.b]		; 27 2D
	cpy $D035.w		; CC 35 D0
	and $A4FF.w		; 2D FF A4
	ora ($21.b,X)		; 01 21
	sbc $30EFF1.l,X		; FF F1 EF 30
	bpl -50.b		; 10 CE
	ldy #$02.b		; A0 02
	.db $42, $ED		; 42 ED
	and $DE.b,S		; 23 DE
	ora $B0DE11.l		; 0F 11 DE B0
	ora ($21.b),Y		; 11 21
	inc $23F0.w,X		; FE F0 23
	and $23CF.w		; 2D CF 23
	bcs  29.b		; B0 1D
	lda $AB3134.l,X		; BF 34 31 AB
	trb $41.b		; 14 41
	phx		; DA
	ldy $45.b,X		; B4 45
	asl $25CD.w,X		; 1E CD 25
	and $3015CA.l,X		; 3F CA 15 30
	ldy $DC.b,X		; B4 DC
	tsb $30.b		; 04 30
	jmp.w [$3203]		; DC 03 32
	inc $B8A2.w		; EE A2 B8
	jmp $06DD.w		; 4C DD 06
	and $4D14CD.l		; 2F CD 14 4D
	xba		; EB
	bcs -67.b		; B0 BD
	ora $5E.b,X		; 15 5E
	ldy $5114.w		; AC 14 51
	tsx		; BA
	pea $52B0.w		; F4 B0 52
	dex		; CA
	sbc $53.b,S		; E3 53
	phx		; DA
	cmp ($55.b)		; D2 55
	rol A		; 2A
	ldy $F6.b,X		; B4 F6
	eor ($DA.b,X)		; 41 DA
	pea $EC41.w		; F4 41 EC
	cmp ($42.b,S),Y		; D3 42
	bcs  66.b		; B0 42
	tax		; AA
	trb $41.b		; 14 41
	wai		; CB
	ora $41.b,S		; 03 41
	jmp.w [$F3B0]		; DC B0 F3
	eor $2C.b,S		; 43 2C
	ldy #$33.b		; A0 33
	rol $34BF.w		; 2E BF 34
	bcs  46.b		; B0 2E
	dec $3113.w		; CE 13 31
	bit $32B1.w		; 2C B1 32
	ora $BFB0.w,X		; 1D B0 BF
	bit $1D.b,X		; 34 1D
	cmp $2C2123.l		; CF 23 21 2C
	cmp ($B4.b,X)		; C1 B4
	bpl  12.b		; 10 0C
	cpx $30.b		; E4 30
	cpx OAMADDL.w		; EC 02 21
	ora $C13CB0.l		; 0F B0 3C C1
	jsl $23C01D.l		; 22 1D C0 23
	ora $B0DF.w,X		; 1D DF B0
	ora ($21.b)		; 12 21
	bit $22C1.w,X		; 3C C1 22
	ora $23C0.w,X		; 1D C0 23
	bcs  29.b		; B0 1D
	cmp $3B2213.l,X		; DF 13 22 3B
.ACCU 16
	rep #$23		; C2 23
	ora $C0B0.w,X		; 1D B0 C0
	and ($1D.b,S),Y		; 33 1D
	cmp $3B2113.l		; CF 13 21 3B
	cmp ($B0.b,X)		; C1 B0
	jsl $33C01D.l		; 22 1D C0 33
	tsb $22C0.w		; 0C C0 22
	ora ($B0.b),Y		; 11 B0
	dec A		; 3A
	sbc $22.b,S		; E3 22
	tsb $33E2.w		; 0C E2 33
	xce		; FB
	cmp ($B0.b),Y		; D1 B0
	and ($12.b)		; 32 12
	rol A		; 2A
	sbc $12.b,S		; E3 12
	xce		; FB
.ACCU 8
.INDEX 8
	sep #$33		; E2 33
	bcs  -5.b		; B0 FB
	cmp ($33.b),Y		; D1 33
	ora ($09.b)		; 12 09
	pea $EB22.w		; F4 22 EB
	ldy $43.b,X		; B4 43
	rol $34CC.w		; 2E CC 34
	and $63DBF1.l		; 2F F1 DB 63
	ldy $F0.b,X		; B4 F0
	cmp $1F43.w		; CD 43 1F
	cmp $2F24.w		; CD 24 2F
	sbc ($B0.b),Y		; F1 B0
	wai		; CB
	trb $21.b		; 14 21
	wai		; CB
	ora $41.b,S		; 03 41
	wai		; CB
	sbc ($B0.b,S),Y		; F3 B0
	and ($13.b)		; 32 13
	ldy $2123.w,X		; BC 23 21
	cpy $3113.w		; CC 13 31
	bcs -53.b		; B0 CB
	sbc ($32.b)		; F2 32
	ora ($BD.b)		; 12 BD
	and $20.b,S		; 23 20
	cmp $13B0.w		; CD B0 13
	jsr $F2DD.w		; 20 DD F2
	and ($02.b,X)		; 21 02
	dec $A422.w		; CE 22 A4
	sbc $64B0.w,X		; FD B0 64
	tsb $46AE.w		; 0C AE 46
	and $DDB0D2.l		; 2F D2 B0 DD
	ora ($11.b)		; 12 11
	jmp.w [$3203]		; DC 03 32
	cpx $B4E0.w		; EC E0 B4
	ora ($F0.b),Y		; 11 F0
	ora $20D4.w,X		; 1D D4 20
	tsb $32E3.w		; 0C E3 32
	bcs  46.b		; B0 2E
	dec $3101.w		; CE 01 31
	ora ($CC.b,S),Y		; 13 CC
	ora ($21.b)		; 12 21
	bcs -52.b		; B0 CC
	ora ($31.b,S),Y		; 13 31
	cpy $22F0.w		; CC F0 22
	ora ($2B.b,X)		; 01 2B
	ldy $44.b,X		; B4 44
	cpx #$ED.b		; E0 ED
	and ($1F.b,S),Y		; 33 1F
	cmp $2113.w,X		; DD 13 21
	bcs  16.b		; B0 10
	tsa		; 3B
	sbc $11.b,S		; E3 11
	tsb $33E2.w		; 0C E2 33
	jsr ($CFB0.w,X)		; FC B0 CF
	and $20.b,S		; 23 20
	rol $31C1.w		; 2E C1 31
	ora $B0C1.w,X		; 1D C1 B0
	and ($1D.b,S),Y		; 33 1D
	ldx $2023.w,Y		; BE 23 20
	ora ($AF.b)		; 12 AF
	and ($B4.b),Y		; 31 B4
	ora $40C4.w,X		; 1D C4 40
	jsr ($42D1.w,X)		; FC D1 42
	asl $B0F3.w,X		; 1E F3 B0
	lda $2032.w,X		; BD 32 20
	lda $3F24.w,X		; BD 24 3F
	ldy $B003.w,X		; BC 03 B0
	.db $42, $02		; 42 02
	cpy W12SEL.w		; CC 23 21
	cpy $4113.w		; CC 13 41
	bcs -69.b		; B0 BB
	sbc ($43.b)		; F2 43
	cop $CB.b		; 02 CB
	and $21.b,S		; 23 21
	cpy $13B0.w		; CC B0 13
	eor ($BB.b,X)		; 41 BB
	sbc ($42.b)		; F2 42
	ora ($CB.b,S),Y		; 13 CB
	bit $B4.b		; 24 B4
	sbc $1E43B0.l		; EF B0 43 1E
	ldx $1044.w		; AE 44 10
.ACCU 8
.INDEX 8
	sep #$B0		; E2 B0
	wai		; CB
	bit $21.b		; 24 21
	wai		; CB
	ora $41.b,S		; 03 41
	dex		; CA
.ACCU 8
.INDEX 8
	sep #$B0		; E2 B0
	eor $12.b,S		; 43 12
	nop		; EA
	trb $22.b		; 14 22
	stp		; DB
	ora $42.b,S		; 03 42
	ldy $BD.b,X		; B4 BD
	bit $20.b,X		; 34 20
	sbc ($DA.b,X)		; E1 DA
	stz $E0.b,X		; 74 E0
	ldx $F3B0.w,Y		; BE B0 F3
	eor $DA.b,S		; 43 DA
	cmp ($33.b),Y		; D1 33
	ora ($19.b),Y		; 11 19
	pea $E0B4.w		; F4 B4 E0
	jmp.w [$2F34]		; DC 34 2F
	cpy $3014.w		; CC 14 30
	sbc $D22BB0.l,X		; FF B0 2B D2
	jsl $34C11C.l		; 22 1C C1 34
	trb $B0BE.w		; 1C BE B0
	ora ($30.b,S),Y		; 13 30
	ora ($AE.b,S),Y		; 13 AE
	jsl $24BD30.l		; 22 30 BD 24
	bcs  64.b		; B0 40
	tyx		; BB
	sbc ($42.b,S),Y		; F3 42
	cop $0A.b		; 02 0A
	ora $12.b,S		; 03 12
	bcs -21.b		; B0 EB
	ora $42.b,S		; 03 42
	nop		; EA
	cmp ($33.b),Y		; D1 33
	bpl  61.b		; 10 3D
	bcs -63.b		; B0 C1
	and ($1D.b,X)		; 21 1D
	cpy #$23.b		; C0 23
	rol $02CD.w		; 2E CD 02
	ldy $1D.b		; A4 1D
	sbc ($1B.b)		; F2 1B
	cmp $30.b		; C5 30
	rol A		; 2A
	ldy $45.b,X		; B4 45
	bcs  63.b		; B0 3F
	cmp $21F1.w		; CD F1 21
	brk $33.b		; 00 33
	ldx $B010.w,Y		; BE 10 B0
	bmi -50.b		; 30 CE
	ora ($3F.b,S),Y		; 13 3F
	cmp $21E0.w		; CD E0 21
	brk $B0.b		; 00 B0
	bit $BE.b		; 24 BE
	bpl  48.b		; 10 30
	dec $3013.w		; CE 13 30
	dec $F0B0.w,X		; DE B0 F0
	ora ($00.b),Y		; 11 00
	and $CC.b		; 25 CC
	ora ($32.b,X)		; 01 32
	jmp.w [$02B0]		; DC B0 02
	.db $42, $DD		; 42 DD
	sbc $150022.l		; EF 22 00 15
	jsr ($F1B0.w,X)		; FC B0 F1
	and $FC.b,S		; 23 FC
	sbc ($43.b),Y		; F1 43
	sbc $12DF.w		; ED DF 12
	bcs  15.b		; B0 0F
	ora $4B.b,S		; 03 4B
	cmp ($14.b),Y		; D1 14
	trb $34D0.w		; 1C D0 34
	bcs  12.b		; B0 0C
	cmp $010F02.l,X		; DF 02 0F 01
	eor ($BE.b),Y		; 51 BE
	ora ($B0.b,X)		; 01 B0
	rti		; 40

	cmp $4003.w		; CD 03 40
	cmp $10F2.w,X		; DD F2 10
	sbc $1B23B4.l		; EF B4 23 1B
	lda ($53.b),Y		; B1 53
	ora $54BF.w		; 0D BF 54
	ora $CBB0.w,X		; 1D B0 CB
	sbc ($30.b,S),Y		; F3 30
	cpy $42F3.w		; CC F3 42
	phd		; 0B
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	eor $0B.b,S		; 43 0B
	cmp ($44.b,X)		; C1 44
	tsb $33C0.w		; 0C C0 33
	jsr ($D1B0.w,X)		; FC B0 D1
	and ($10.b,S),Y		; 33 10
	ldx $2F23.w,Y		; BE 23 2F
	dec $A023.w		; CE 23 A0
	eor $259C.w		; 4D 9C 25
	and $3215D9.l,X		; 3F D9 15 32
	cmp $F4A0.w,Y		; D9 A0 F4
	eor ($DC.b,X)		; 41 DC
	sbc ($30.b)		; F2 30
	wai		; CB
	sbc $41.b,S		; E3 41
	ldy #$CD12.w		; A0 12 CD
	jsl $13CC10.l		; 22 10 CC 13
	rti		; 40

	cmp $5594.w,X		; DD 94 55
	trb $34BF.w		; 1C BF 34
	asl $04EF.w,X		; 1E EF 04
	tsb $CEA0.w		; 0C A0 CE
	ora ($43.b,S),Y		; 13 43
	ora $43C3.w,Y		; 19 C3 43
	xce		; FB
.ACCU 16
	rep #$A4		; C2 A4
	jsr $14CC.w		; 20 CC 14
	bmi -51.b		; 30 CD
	ora $30.b,S		; 03 30
	sbc $01A4.w		; ED A4 01
	rti		; 40

	dec $2002.w,X		; DE 02 20
	sbc $41E5.w		; ED E5 41
	lda ($21.b),Y		; B1 21
	cmp $0000.w		; CD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ora ($B3.b,X)		; 01 B3
	brk $00.b		; 00 00
	ora ($01.b),Y		; 11 01
	brk $FF.b		; 00 FF
	pha		; 48
	sbc ($F2.b),Y		; F1 F2
	ora $04202F.l		; 0F 2F 20 04
	ora $F078FA.l,X		; 1F FA 78 F0
	ora $3FF2F0.l,X		; 1F F0 F2 3F
	and $D2.b,S		; 23 D2
	sbc $1DED78.l,X		; FF 78 ED 1D
	beq  47.b		; F0 2F
	rti		; 40

	bpl -16.b		; 10 F0
	.db $42, $78		; 42 78
	tas		; 1B
	rol $5ADD.w,X		; 3E DD 5A
	ora $500EE5.l,X		; 1F E5 0E 50
	dey		; 88
	beq   2.b		; F0 02
	bpl  34.b		; 10 22
	jmp.w [$1D00]		; DC 00 1D
	sbc ($88.b),Y		; F1 88
	ora ($E1.b)		; 12 E1
	and $EE44C1.l,X		; 3F C1 44 EE
	bmi -50.b		; 30 CE
	dey		; 88
	ora ($DD.b),Y		; 11 DD
	and ($2E.b,X)		; 21 2E
	ora ($0D.b)		; 12 0D
	asl $1D.b,X		; 16 1D
	dey		; 88
	jsl $EEFFB0.l		; 22 B0 FF EE
	sbc ($30.b),Y		; F1 30
	ora ($1F.b,X)		; 01 1F
	dey		; 88
	inc $20.b		; E6 20
	pea $1EBD.w		; F4 BD 1E
	sbc $40F0.w		; ED F0 40
	tya		; 98
	ora ($1F.b,X)		; 01 1F
	ora ($2E.b),Y		; 11 2E
	and ($CF.b,X)		; 21 CF
	and $B4E0.w		; 2D E0 B4
	sbc $22FFF1.l,X		; FF F1 FF 22
	ora ($6D.b,X)		; 01 6D
	cmp ($CC.b,S),Y		; D3 CC
	cpy #$DFF0.w		; C0 F0 DF
	ora $46FFE1.l		; 0F E1 FF 46
	sbc ($3E.b,S),Y		; F3 3E
	cpy $F3.b		; C4 F3
	sbc $1DF14E.l		; EF 4E F1 1D
	eor $CE.b		; 45 CE
	jmp $CFC0.w		; 4C C0 CF
	trb $EF02.w		; 1C 02 EF
	asl $6EF4.w,X		; 1E F4 6E
	.db $42, $D0		; 42 D0
	sbc $0FF11F.l		; EF 1F F1 0F
	brk $F2.b		; 00 F2
	rti		; 40

	ora ($C4.b),Y		; 11 C4
	dec $E54F.w		; CE 4F E5
	inc $D420.w		; EE 20 D4
	ror A		; 6A
	ora $C0.b,S		; 03 C0
	cpx $D300.w		; EC 00 D3
	asl $D200.w,X		; 1E 00 D2
	eor $DEC022.l,X		; 5F 22 C0 DE
	asl $F034.w		; 0E 34 F0
	tas		; 1B
	sbc $E0.b,S		; E3 E0
	and $E4E0C0.l,X		; 3F C0 E0 E4
	adc $1EBC10.l,X		; 7F 10 BC 1E
	cop $0E.b		; 02 0E
	cpy #$370E.w		; C0 0E 37
	sbc ($1C.b)		; F2 1C
	cmp ($E0.b,X)		; C1 E0
	jsr $C0E0.w		; 20 E0 C0
	sbc $7F.b,S		; E3 7F
	and ($CC.b,X)		; 21 CC
	asl $0E02.w,X		; 1E 02 0E
	asl $36C0.w		; 0E C0 36
	sbc ($1C.b)		; F2 1C
	cmp ($E0.b),Y		; D1 E0
	jsr $E5E0.w		; 20 E0 E5
	cpy $FB.b		; C4 FB
	jsr $2EB3.w		; 20 B3 2E
	and ($D0.b,X)		; 21 D0
	cop $6A.b		; 02 6A
	cpy #$EC10.w		; C0 10 EC
	ora $FF0E02.l,X		; 1F 02 0E FF
	adc ($10.b,X)		; 61 10
	cpy #$0FEC.w		; C0 EC 0F
	cop $1E.b		; 02 1E
	sbc $EB1061.l,X		; FF 61 10 EB
	cpy #$021F.w		; C0 1F 02
	asl $71FF.w,X		; 1E FF 71
	ora $C01FEB.l,X		; 1F EB 1F C0
	ora ($1E.b,X)		; 01 1E
	beq 112.b		; F0 70
	ora $011FEB.l,X		; 1F EB 1F 01
	cpy $FE.b		; C4 FE
	ora ($79.b),Y		; 11 79
	and $5EFE.w		; 2D FE 5E
	and ($EE.b,X)		; 21 EE
	cpy #$7FF1.w		; C0 F1 7F
	and $121FDC.l		; 2F DC 1F 12
	asl $C0F2.w		; 0E F2 C0
	adc $1FDC1F.l,X		; 7F 1F DC 1F
	ora ($FE.b)		; 12 FE
	sbc ($6F.b,S),Y		; F3 6F
	cpy #$BE1F.w		; C0 1F BE
	ora $F5FE12.l,X		; 1F 12 FE F5
	bmi  15.b		; 30 0F
	cpy #$F0B0.w		; C0 B0 F0
	ora ($EF.b),Y		; 11 EF
	asl $01.b		; 06 01
	inc $C0C0.w,X		; FE C0 C0
	sbc ($20.b),Y		; F1 20
	sbc $FBF126.l		; EF 26 F1 FB
	cpx #$C401.w		; E0 01 C4
	trb $5F10.w		; 1C 10 5F
	sbc $215F0B.l		; EF 0B 5F 21
	jsr ($F2C0.w,X)		; FC C0 F2
	eor $00CE2F.l,X		; 5F 2F CE 00
	ora ($EF.b)		; 12 EF
	sbc $C0.b,X		; F5 C0
	and ($FF.b,X)		; 21 FF
	bcs -15.b		; B0 F1
	and ($DF.b,X)		; 21 DF
	rol $F2.b		; 26 F2
	cpy $DD.b		; C4 DD
	ora ($F2.b,S),Y		; 13 F2
	ora $5F01.w		; 0D 01 5F
	bne  -4.b		; D0 FC
	cpy #$120F.w		; C0 0F 12
	ora $60F1.w,X		; 1D F1 60
	and $C400DD.l		; 2F DD 00 C4
	ora ($DF.b),Y		; 11 DF
	ora $0C.b,X		; 15 0C
	ora $2F10B4.l,X		; 1F B4 10 2F
	cpy $C2.b		; C4 C2
	bit $B2.b		; 24 B2
	dec $F203.w,X		; DE 03 F2
	ora $C0F1.w,X		; 1D F1 C0
	eor $10.b,S		; 43 10
	xba		; EB
	ora $F21D02.l		; 0F 02 1D F2
	eor $C32EC4.l,X		; 5F C4 2E C3
	bpl  32.b		; 10 20
	cmp ($34.b,X)		; C1 34
	lda ($DD.b)		; B2 DD
	cpy $13.b		; C4 13
	sbc ($0D.b)		; F2 0D
	cop $5B.b		; 02 5B
	and $4FD0.w		; 2D D0 4F
	cpy #$FE12.w		; C0 12 FE
	asl $12.b		; 06 12
	inc $01B1.w,X		; FE B1 01
	jsr $DFC0.w		; 20 C0 DF
	eor $10.b,S		; 43 10
	plx		; FA
	brk $01.b		; 00 01
	ora $C0F3.w,X		; 1D F3 C0
	eor $00BF1F.l,X		; 5F 1F BF 00
	ora ($DE.b),Y		; 11 DE
	and $F2.b		; 25 F2
	cpy #$E0FC.w		; C0 FC E0
	ora ($1E.b,X)		; 01 1E
	sbc ($6F.b,X)		; E1 6F
	and $3FC4CD.l		; 2F CD C4 3F
	jsr $25D0.w		; 20 D0 25
	lda ($ED.b)		; B2 ED
	pea $C0F1.w		; F4 F1 C0
	ora $1051E0.l,X		; 1F E0 51 10
	xba		; EB
	bpl   1.b		; 10 01
	sbc $F5C0.w,X		; FD C0 F5
	bmi  14.b		; 30 0E
	lda ($00.b),Y		; B1 00
	bpl -33.b		; 10 DF
	mvp $00,$C0		; 44 C0 00
	xba		; EB
	bpl   1.b		; 10 01
	ora $40F4.w		; 0D F4 40
	ora $00C5C4.l,X		; 1F C4 C5 00
	ora $C160D1.l,X		; 1F D1 60 C1
	xba		; EB
	rts		; 60

	cpy $01.b		; C4 01
	sbc $2B15.w,X		; FD 15 2B
	asl $00C5.w,X		; 1E C5 00
	bpl -60.b		; 10 C4
	cmp ($52.b,X)		; C1 52
	ldx #$51EB.w		; A2 EB 51
	sbc ($0C.b)		; F2 0C
	ora $C4.b,X		; 15 C4
	rol A		; 2A
	rol $1FB5.w		; 2E B5 1F
	jsr $52C1.w		; 20 C1 52
	ldx #$EBC4.w		; A2 C4 EB
	eor ($F2.b),Y		; 51 F2
	sbc $1B15.w,X		; FD 15 1B
	rol $C4B5.w		; 2E B5 C4
	ora $51D12F.l,X		; 1F 2F D1 51
	lda ($DC.b)		; B2 DC
	eor ($F2.b),Y		; 51 F2
	cpy #$F50C.w		; C0 0C F5
	rti		; 40

	asl $00A1.w,X		; 1E A1 00
	jsr $C0CF.w		; 20 CF C0
	eor ($10.b,S),Y		; 53 10
	stp		; DB
	bpl   2.b		; 10 02
	jsr ($21F6.w,X)		; FC F6 21
	cpy #$B10D.w		; C0 0D B1
	ora ($2F.b),Y		; 11 2F
	cpy #$2061.w		; C0 61 20
	stp		; DB
	cpy $6F.b		; C4 6F
	ora ($CF.b),Y		; 11 CF
	rol $A2.b,X		; 36 A2
	cpx $F105.w		; EC 05 F1
	cpy #$D22E.w		; C0 2E D2
	adc $10BD20.l		; 6F 20 BD 10
	ora ($DE.b)		; 12 DE
	cpy #$F235.w		; C0 35 F2
	plx		; FA
	ora ($02.b,X)		; 01 02
	trb $30F5.w		; 1C F5 30
	cpy #$A11E.w		; C0 1E A1
	brk $2F.b		; 00 2F
	cpy #$1060.w		; C0 60 10
	stp		; DB
	cpy #$0220.w		; C0 20 02
	sbc $F227.w		; ED 27 F2
	tsb $01D1.w		; 0C D1 01
	cpy #$D32D.w		; C0 2D D3
	ror $BF2F.w		; 6E 2F BF
	ora $C0CF21.l,X		; 1F 21 CF C0
	mvn $EA,$F2		; 54 F2 EA
	ora ($F2.b),Y		; 11 F2
	tsb $1106.w		; 0C 06 11
	cpy #$B21D.w		; C0 1D B2
	brk $2F.b		; 00 2F
	cmp ($7E.b)		; D2 7E
	jsr $C0BE.w		; 20 BE C0
	and $54DE12.l		; 2F 12 DE 54
.ACCU 8
	sep #$EA		; E2 EA
	ora ($F2.b),Y		; 11 F2
	cpy #$170C.w		; C0 0C 17
	sbc ($2C.b),Y		; F1 2C
	cmp $FF.b,S		; C3 FF
	rol $C0D4.w,X		; 3E D4 C0
	eor $A030.w,X		; 5D 30 A0
	rol $CF12.w		; 2E 12 CF
	bvs -13.b		; 70 F3
	cpy #$30DB.w		; C0 DB 30
	sbc $FC.b,S		; E3 FC
	rol $D2.b,X		; 36 D2
	inc A		; 1A
	sbc ($C0.b,S),Y		; F3 C0
	cpx #$F72D.w		; E0 2D F7
	ora $0EB32D.l		; 0F 2D B3 0E
	and $2EE2D0.l		; 2F D0 E2 2E
	bpl -48.b		; 10 D0
	ora $4FE001.l,X		; 1F 01 E0 4F
	cpy #$CCF2.w		; C0 F2 CC
	bmi -30.b		; 30 E2
	sbc $D163.w,X		; FD 63 D1
	asl A		; 0A
	cpy #$D112.w		; C0 12 D1
	trb $EF27.w		; 1C 27 EF
	bit $FED3.w		; 2C D3 FE
	cpy #$E62E.w		; C0 2E E6
	asl $B21F.w,X		; 1E 1F B2
	and $D311.w		; 2D 11 D3
	cpy #$026D.w		; C0 6D 02
	ldx $F23F.w,Y		; BE 3F F2
	sbc $C0E270.l		; EF 70 E2 C0
	xce		; FB
	and ($D1.b,X)		; 21 D1
	ora $D045.w		; 0D 45 D0
	tas		; 1B
	sbc ($C0.b,S),Y		; F3 C0
	sbc $FEF72E.l		; EF 2E F7 FE
	rol $1EC2.w		; 2E C2 1E
	bpl -64.b		; 10 C0
	pei ($4D.b)		; D4 4D
	ora ($B0.b,X)		; 01 B0
	rol $D0F2.w,X		; 3E F2 D0
	adc $DDE2C0.l		; 6F C0 E2 DD
	bmi -31.b		; 30 E1
	inc $E152.w,X		; FE 52 E1
	phd		; 0B
	cpy #$E003.w		; C0 03 E0
	asl $EF16.w,X		; 1E 16 EF
	and $0ED3.w		; 2D D3 0E
	cpy #$E61F.w		; C0 1F E6
	asl $C110.w,X		; 1E 10 C1
	rol $E301.w		; 2E 01 E3
	cpy #$F14E.w		; C0 4E F1
	dec $F13F.w		; CE 3F F1
	beq  96.b		; F0 60
	sbc ($C0.b,X)		; E1 C0
	sbc $E111.w		; ED 11 E1
	ora $0CE042.l		; 0F 42 E0 0C
	sbc ($C0.b)		; F2 C0
	sbc $FF241F.l,X		; FF 1F 24 FF
	ora $0FE2.w,X		; 1D E2 0F
	ora $0E05C0.l,X		; 1F C0 05 0E
	asl $1ED1.w,X		; 1E D1 1E
	brk $05.b		; 00 05
	ora $90FFB0.l,X		; 1F B0 FF 90
	rol $F6F0.w,X		; 3E F0 F6
	adc $C49DE1.l		; 6F E1 9D C4
	rol $F2F2.w,X		; 3E F2 F2
	bit $D0E2.w,X		; 3C E2 D0
	bmi -30.b		; 30 E2
	cpy $F1.b		; C4 F1
	jmp $EEF1.w		; 4C F1 EE
	and ($E1.b),Y		; 31 E1
	brk $5E.b		; 00 5E
	ldy $B0.b,X		; B4 B0
	asl A		; 0A
	and ($D0.b,S),Y		; 33 D0
	and ($70.b,X)		; 21 70
	lda $01B4FB.l,X		; BF FB B4 01
	sbc ($34.b),Y		; F1 34
	lsr $CEEF.w,X		; 5E EF CE
	inc $B404.w		; EE 04 B4
	eor ($01.b)		; 52 01
	sbc $DFFE.w,X		; FD FE DF
	ora ($5F.b,S),Y		; 13 5F
	ora ($A4.b,X)		; 01 A4
	sbc $9F1D.w,X		; FD 1D 9F
	and $4C.b		; 25 4C
	cop $01.b		; 02 01
	eor $BDA4.w		; 4D A4 BD
	pea $F34B.w		; F4 4B F3
	cop $60.b		; 02 60
	ldy $A4E1.w		; AC E1 A4
	rtl		; 6B

.ACCU 8
	sep #$21		; E2 21
	.db $62, $AC, $E1		; 62 AC E1
	jmp $A4D2.w		; 4C D2 A4
	and ($63.b,X)		; 21 63
	ldy $2DF0.w,X		; BC F0 2D
	bne  51.b		; D0 33
	and ($A4.b)		; 32 A4
	jsr ($1CE1.w,X)		; FC E1 1C
	cpx $3F.b		; E4 3F
	and ($DD.b,X)		; 21 DD
	jsr $BD90.w		; 20 90 BD
	and ($34.b,S),Y		; 33 34
	ora $DEEF.w,X		; 1D EF DE
	ora ($11.b),Y		; 11 11
	stz $DC.b,X		; 74 DC
	bmi  17.b		; 30 11
	bpl -34.b		; 10 DE
	brk $B3.b		; 00 B3
	adc $1384.w		; 6D 84 13
	sbc $42EDE0.l,X		; FF E0 ED 42
	cmp $5F.b,S		; C3 5F
	sbc ($80.b),Y		; F1 80
	stp		; DB
	cmp $E1EF.w,X		; DD EF E1
	eor $32.b,X		; 55 32
	cpx $74CF.w		; EC CF 74
	sbc ($23.b),Y		; F1 23
	ora ($FA.b,X)		; 01 FA
	sbc $0242E4.l		; EF E4 42 02
	stz $10.b,X		; 74 10
	ldx $3FCE.w		; AE CE 3F
	eor ($41.b)		; 52 41
	bit $74A0.w		; 2C A0 74
	dec $0231.w,X		; DE 31 02
	jmp ($9033.w,X)		; 7C 33 90
	cmp $84D1.w		; CD D1 84
	and ($10.b)		; 32 10
	jsr $1CDF.w		; 20 DF 1C
	sbc ($41.b,X)		; E1 41
	cop $78.b		; 02 78
	cmp $E3B6F2.l		; CF F2 B6 E3
	sbc $F1.b,S		; E3 F1
	sbc $74F4.w		; ED F4 74
	sbc $F13F.w,X		; FD 3F F1
	sbc ($10.b)		; F2 10
	and ($BE.b,X)		; 21 BE
	cpx #$0574.w		; E0 74 05
	bpl  -9.b		; 10 F7
	cpx $BC0F.w		; EC 0F BC
	eor $F4.b		; 45 F4
	stz $10.b,X		; 74 10
	cpx #$0FCD.w		; E0 CD 0F
	and $BF2152.l		; 2F 52 21 BF
	bvs  45.b		; 70 2D
	sbc ($DF.b,X)		; E1 DF
	phd		; 0B
	sbc $EF2C03.l		; EF 03 2C EF
	bvs -22.b		; 70 EA
	rti		; 40

	cpy #$2D0E.w		; C0 0E 2D
	cmp $D00A.w,X		; DD 0A D0
	stz $D5.b,X		; 74 D5
	ora $A31E.w		; 0D 1E A3
	eor $3F0FF0.l,X		; 5F F0 0F 3F
	stz $DD.b,X		; 74 DD
	and $E0E240.l		; 2F 40 E2 E0
	ora ($F1.b)		; 12 F1
	sbc $F174.w,X		; FD 74 F1
	lda ($12.b),Y		; B1 12
	ora ($10.b),Y		; 11 10
	dec A		; 3A
	sbc ($DE.b),Y		; F1 DE
	bvs  17.b		; 70 11
	sbc ($0D.b,X)		; E1 0D
	tsb $F0DF.w		; 0C DF F0
	eor $FD.b,X		; 55 FD
	rts		; 60

	ldy #$2067.w		; A0 67 20
	and $30.b,S		; 23 30
	txy		; 9B
	cpy $64EE.w		; CC EE 64
	ora ($32.b)		; 12 32
	cop $0F.b		; 02 0F
	ora $2CFFDE.l		; 0F DE FF 2C
	stz $F0.b		; 64 F0
	jsl $5DF1E5.l		; 22 E5 F1 5D
	ora $FE.b,S		; 03 FE
	ora $E3BD54.l,X		; 1F 54 BD E3
	rol $10B1.w		; 2E B1 10
	ora ($2E.b,X)		; 01 2E
	and ($54.b,S),Y		; 33 54
	and $DF2A11.l,X		; 3F 11 2A DF
	inc $11EE.w,X		; FE EE 11
	ora ($64.b),Y		; 11 64
	ora $001112.l		; 0F 12 11 00
	ora ($1E.b)		; 12 1E
	xce		; FB
	ora $4FFD64.l,X		; 1F 64 FD 4F
	trb $F1.b		; 14 F1
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	mvp $D0,$0F		; 44 0F D0
	cmp $1F10.w,Y		; D9 10 1F
	jsr $1131.w		; 20 31 11
	stz $00.b,X		; 74 00
	brk $0F.b		; 00 0F
.ACCU 8
.INDEX 8
	sep #$F2		; E2 F2
	eor ($1F.b,X)		; 41 1F
	ora $3F0D78.l		; 0F 78 0D 3F
	ora ($1F.b),Y		; 11 1F
	eor $F11F.w		; 4D 1F F1
	sbc $0FF094.l		; EF 94 F0 0F
	brk $01.b		; 00 01
	ora ($31.b),Y		; 11 31
	dec $B4E4.w		; CE E4 B4
	sbc $130F11.l,X		; FF 11 0F 13
	tsa		; 3B
	cmp $C4E24F.l		; CF 4F E2 C4
	jsr $34D0.w		; 20 D0 34
	cpy $0E03.w		; CC 03 0E
	ora ($0D.b)		; 12 0D
	cpy $02.b		; C4 02
	rti		; 40

	lda $21D202.l,X		; BF 02 D2 21
	cmp $3CC422.l,X		; DF 22 C4 3C
	inc $122F.w		; EE 2F 12
	ora $1C13E0.l,X		; 1F E0 13 1C
	cpy $EF.b		; C4 EF
	and $F01E11.l,X		; 3F 11 1E F0
	and ($DD.b,S),Y		; 33 DD
	sep #$C4		; E2 C4
	brk $22.b		; 00 22
	sbc $3211.w		; ED 11 32
	ldx $F2F3.w,Y		; BE F3 F2
	cpy $20.b		; C4 20
	cmp $BD5E12.l		; CF 12 5E BD
	and ($22.b,X)		; 21 22
	ora $D0C4.w		; 0D C4 D0
	and $2A.b,X		; 35 2A
	bcs  49.b		; B0 31
	rti		; 40

	stp		; DB
	ora $C4.b,S		; 03 C4
	eor $C9.b		; 45 C9
	sbc $33.b,S		; E3 33
	ora $24BF.w,X		; 1D BF 24
	bvc -64.b		; 50 C0
	nop		; EA
	bcs  53.b		; B0 35
	and $15BD.w		; 2D BD 15
	adc ($AA.b),Y		; 71 AA
	iny		; C8
	rti		; 40

	sbc $42B2.w,X		; FD B2 42
	rol $55BB.w		; 2E BB 55
	bpl -64.b		; 10 C0
	bvc -53.b		; 50 CB
.ACCU 8
	sep #$66		; E2 66
	nop		; EA
	bcs  53.b		; B0 35
	and $E2C4.w		; 2D C4 E2
	bit $2A.b,X		; 34 2A
	lda $BD3F43.l,X		; BF 43 3F BD
	ora ($C8.b,S),Y		; 13 C8
	ora $1F45AD.l,X		; 1F AD 45 1F
	xba		; EB
	tsb $30.b		; 04 30
	trb $DAC0.w		; 1C C0 DA
	cpy #$35.b		; C0 35
	ora $15BE.w,X		; 1D BE 15
	adc $4FC8BB.l		; 6F BB C8 4F
	tsb $32C3.w		; 0C C3 32
	ora $0154AD.l,X		; 1F AD 54 01
	iny		; C8
	cpy $3013.w		; CC 13 30
	inc A		; 1A
	cpy $42.b		; C4 42
	inc $C0CF.w,X		; FE CF C0
	dec $5E25.w		; CE 25 5E
	ldy $5103.w,X		; BC 03 51
	jmp.w [$C0E1]		; DC E1 C0
	eor $EC.b,X		; 55 EC
	cmp $CE2D25.l		; CF 25 2D CE
	trb $4F.b		; 14 4F
	cpy $D0.b		; C4 D0
	bit $2D.b		; 24 2D
	cmp $CD3013.l		; CF 13 30 CD
	cop $C4.b		; 02 C4
	and ($EB.b,S),Y		; 33 EB
	sbc ($24.b),Y		; F1 24
	ora $23DF.w		; 0D DF 23
	lsr $ECC0.w		; 4E C0 EC
	cmp $DE1D34.l,X		; DF 34 1D DE
	ora $3E.b,X		; 15 3E
	cmp $23C4.w		; CD C4 23
	and $13DF.w		; 2D DF 13
	lsr $02CE.w		; 4E CE 02
	and ($C4.b),Y		; 31 C4
	sbc $3400.w		; ED 00 34
	cmp $13F0.w,X		; DD F0 13
	ora $B4FF.w,X		; 1D FF B4
	ora [$69.b]		; 07 69
	dec $70F3.w		; CE F3 70
	lda $76F0.w,X		; BD F0 76
	cpy #$0F.b		; C0 0F
	inc $2003.w		; EE 03 20
	inc $40E2.w,X		; FE E2 40
	inc $B0B0.w,X		; FE B0 B0
	stz $0E.b		; 64 0E
	ldy $2035.w,X		; BC 35 20
	stp		; DB
	inc $B0.b,X		; F6 B0
	and ($FB.b),Y		; 31 FB
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	ora $71C0.w		; 0D C0 71
	ora $41D1B4.l,X		; 1F B4 D1 41
	asl $46DF.w		; 0E DF 46
	ldy #$23EE.w		; A0 EE 23
	ldy $00.b,X		; B4 00
	inc $4BF5.w		; EE F5 4B
	asl $30E2.w		; 0E E2 30
	asl $EEB0.w		; 0E B0 EE
	ora $F1.b,X		; 15 F1
	sbc $1100.w		; ED 00 11
	sbc $4FB0F2.l,X		; FF F2 B0 4F
	rol $F1D0.w		; 2E D0 F1
	ora $0133FF.l,X		; 1F FF 33 01
	ldy #$1EBA.w		; A0 BA 1E
	and ($EE.b),Y		; 31 EE
	dec $50.b,X		; D6 50
	tsa		; 3B
	lda ($B0.b,X)		; A1 B0
	sbc ($1F.b)		; F2 1F
	sbc $DD0141.l,X		; FF 41 01 DD
	ora $FFB020.l		; 0F 20 B0 FF
	pea $1D11.w		; F4 11 1D
	cpx #$0FF2.w		; E0 F2 0F
	beq -80.b		; F0 B0
	eor $FFDE10.l,X		; 5F 10 DE FF
	and $011400.l		; 2F 00 14 01
	ldy $BE.b		; A4 BE
	rol $E231.w,X		; 3E 31 E2
	asl $A2.b,X		; 16 A2
	cmp $A002.w		; CD 02 A0
	bcs  -1.b		; B0 FF
	asl $51.b,X		; 16 51
	and $BECF.w,X		; 3D CF BE
	inc $14A4.w,X		; FE A4 14
	jmp $CF1E.w		; 4C 1E CF
	tsa		; 3B
	bmi   2.b		; 30 02
	adc $FD24A0.l		; 6F A0 24 FD
	inc $EECD.w,X		; FE CD EE
	bit $01.b		; 24 01
	jsr $0290.w		; 20 90 02
	sbc $B3DD.w		; ED DD B3
	lsr $F021.w		; 4E 21 F0
	rol $EE90.w		; 2E 90 EE
	cmp $E232.w,X		; DD 32 E2
	ora $0D0F04.l		; 0F 04 0F 0D
	bcc -62.b		; 90 C2
	bit $FF00.w,X		; 3C 00 FF
	eor ($00.b),Y		; 51 00
	phx		; DA
	eor ($90.b)		; 52 90
	lda ($0D.b),Y		; B1 0D
	asl $00.b,X		; 16 00
	inc A		; 1A
	lda $19.b		; A5 19
	rti		; 40

	ldy #$3EE1.w		; A0 E1 3E
	ora $E473BF.l		; 0F BF 73 E4
	xba		; EB
	bpl -76.b		; 10 B4
	cmp ($E0.b,S),Y		; D3 E0
	eor $92.b		; 45 92
	cpx $B514.w		; EC 14 B5
	ora $05B0.w		; 0D B0 05
	ror $B03C.w		; 6E 3C B0
	ora $45E03F.l		; 0F 3F E0 45
	bcs -30.b		; B0 E2
	jmp.w [$0100]		; DC 00 01
	inc $6E05.w		; EE 05 6E
	bit $C1B0.w		; 2C B0 C1
	ora ($2E.b,X)		; 01 2E
	sbc $BCE265.l		; EF 65 E2 BC
	bpl -64.b		; 10 C0
	ora ($EF.b),Y		; 11 EF
	sbc ($5F.b)		; F2 5F
	ora $22D0.w		; 0D D0 22
	asl $F1C4.w,X		; 1E C4 F1
	bit $DD.b,X		; 34 DD
	inc $0E44.w		; EE 44 0E
	dec $C414.w,X		; DE 14 C4
	eor $40D4A0.l		; 4F A0 D4 40
	sbc $35D1.w,X		; FD D1 35
	xce		; FB
	cpy $FD.b		; C4 FD
	bit $1F.b,X		; 34 1F
	cmp $5F13.w,X		; DD 13 5F
	lda $40C4D3.l,X		; BF D3 C4 40
	ora $35E0.w		; 0D E0 35
	dec $33EE.w,X		; DE EE 33
	ora $13EEC4.l		; 0F C4 EE 13
	bit $030D.w,X		; 3C 0D 03
	bpl  13.b		; 10 0D
	brk $B0.b		; 00 B0
	lsr $00.b,X		; 56 00
	ldy $3123.w,X		; BC 23 31
	cpy $40F7.w		; CC F7 40
	cpy #$E1FD.w		; C0 FD E1
	ora ($0E.b)		; 12 0E
	cpx #$0F41.w		; E0 41 0F
	cmp $1E20C4.l,X		; DF C4 20 1E
	cpx #$C133.w		; E0 33 C1
	cmp $B00031.l,X		; DF 31 00 B0
	cpx $7FD3.w		; EC D3 7F
	trb $22B0.w		; 1C B0 22
	rol $B0CE.w		; 2E CE B0
	eor $00.b		; 45 00
	cpy $3211.w		; CC 11 32
	cmp $40E5.w,X		; DD E5 40
	bcs  12.b		; B0 0C
	cmp ($13.b,X)		; C1 13
	asl $53DE.w,X		; 1E DE 53
	brk $CC.b		; 00 CC
	bcs  17.b		; B0 11
	bmi -19.b		; 30 ED
	sbc $20.b,X		; F5 20
	jsr ($03D1.w,X)		; FC D1 03
	bcs  14.b		; B0 0E
	cpx #$1F60.w		; E0 60 1F
	dec $101F.w,X		; DE 1F 10
	sbc $F124B0.l,X		; FF B0 24 F1
	sbc $F1F0.w,X		; FD F0 F1
	ora $B43F03.l		; 0F 03 3F B4
	rol $1FE2.w		; 2E E2 1F
	ora $D24EF2.l,X		; 1F F2 4E D2
	inc $3FB4.w		; EE B4 3F
	sbc ($0F.b),Y		; F1 0F
	and ($C0.b,S),Y		; 33 C0
	asl $EEF3.w,X		; 1E F3 EE
	bcs  -1.b		; B0 FF
	pea $1130.w		; F4 30 11
	cpx #$EF1D.w		; E0 1D EF
	cmp ($B0.b),Y		; D1 B0
	bvc  18.b		; 50 12
	inc $DF1E.w,X		; FE 1E DF
	inc $1263.w		; EE 63 12
	bcs  29.b		; B0 1D
	brk $CE.b		; 00 CE
	ora $0246.w		; 0D 46 02
	rol $B4D1.w,X		; 3E D1 B4
	bcs  78.b		; B0 4E
	and [$BF.b]		; 27 BF
	and $EDC4.w		; 2D C4 ED
	eor ($B0.b,X)		; 41 B0
	sbc [$31.b],Y		; F7 31
	jsl $D1ECCF.l		; 22 CF EC D1
	sbc $42.b,X		; F5 42
	bcs  18.b		; B0 12
	dec $D0FD.w,X		; DE FD D0
	sbc ($41.b,S),Y		; F3 41
	bpl   1.b		; 10 01
	bcs  -1.b		; B0 FF
	sbc $01E1.w,X		; FD E1 01
	and $105EE3.l		; 2F E3 5E 10
	bcs -66.b		; B0 BE
	and $44DE11.l		; 2F 11 DE 44
	sbc ($FB.b),Y		; F1 FB
	sbc ($B0.b)		; F2 B0
	sbc ($1D.b),Y		; F1 1D
	inc $2F.b,X		; F6 2F
	asl $1FB0.w,X		; 1E B0 1F
	ora ($B4.b),Y		; 11 B4
	ldy $6B.b,X		; B4 6B
	sbc ($DE.b),Y		; F1 DE
	bvc -15.b		; 50 F1
	sbc $B046.w,X		; FD 46 B0
	beq  28.b		; F0 1C
	rep #$00		; C2 00
	ora $004ED5.l,X		; 1F D5 4E 00
	cpy #$10E0.w		; C0 E0 10
	ora ($F0.b,X)		; 01 F0
	rti		; 40

	beq  -2.b		; F0 FE
	ora ($B0.b),Y		; 11 B0
	sbc ($1D.b,X)		; E1 1D
	rol $EE.b,X		; 36 EE
	trb $0ED2.w		; 1C D2 0E
	and $2EE6B0.l		; 2F B0 E6 2E
	beq -80.b		; F0 B0
	and $7FE1F2.l		; 2F F2 E1 7F
	bcs -32.b		; B0 E0
	cpx $F121.w		; EC 21 F1
	asl $FE35.w		; 0E 35 FE
	trb $E2B0.w		; 1C B0 E2
	ora $2EE62F.l,X		; 1F 2F E6 2E
	beq -80.b		; F0 B0
	jsr $F3B4.w		; 20 B4 F3
.ACCU 16
.INDEX 16
	rep #$79		; C2 79
.ACCU 8
	sep #$EE		; E2 EE
	eor ($D1.b),Y		; 51 D1
	trb $35B0.w		; 1C B0 35
	inc $D21D.w,X		; FE 1D D2
	asl $E610.w,X		; 1E 10 E6
	and $BFF0B0.l		; 2F B0 F0 BF
	jsr $E0F2.w		; 20 F2 E0
	adc ($E0.b),Y		; 71 E0
	xce		; FB
	ldy $52.b,X		; B4 52
	bne  45.b		; D0 2D
	mvp $3D,$AE		; 44 AE 3D
	sbc $1C.b		; E5 1C
	bcs   0.b		; B0 00
	sbc $4F.b		; E5 4F
	cpx #$21CE.w		; E0 CE 21
	sbc ($F0.b,X)		; E1 F0
	bcs 113.b		; B0 71
	sbc $0F02FB.l		; EF FB 02 0F
	asl $0D26.w,X		; 1E 26 0D
	bcs  13.b		; B0 0D
	cmp ($2F.b,X)		; C1 2F
	brk $F6.b		; 00 F6
	and $B4CEE0.l,X		; 3F E0 CE B4
	eor $6BE1D3.l		; 4F D3 E1 6B
	cmp ($FD.b)		; D2 FD
	.db $42, $EF		; 42 EF
	ldy $1F.b,X		; B4 1F
	eor ($DD.b,X)		; 41 DD
	and $1C04.w		; 2D 04 1C
	and $1FB016.l		; 2F 16 B0 1F
	sbc $F020C0.l,X		; FF C0 20 F0
	sbc $30.b,X		; F5 30
	cpx #$C1B4.w		; E0 B4 C1
	rti		; 40

	cmp ($F2.b)		; D2 F2
	tad		; 5B
	cmp ($FE.b),Y		; D1 FE
	.db $42, $B0		; 42 B0
	ora $0D540F.l		; 0F 0F 54 0D
	ora $3ED1.w		; 0D D1 3E
	ora $2F07B0.l		; 0F B0 07 2F
	cpx #$22CF.w		; E0 CF 22
	cpx #$71F2.w		; E0 F2 71
	bcs -18.b		; B0 EE
	cpx $0F13.w		; EC 13 0F
	asl $0D45.w		; 0E 45 0D
	sbc $D1B0.w,X		; FD B0 D1
	rol $F7FF.w,X		; 3E FF F7
	and $22CFDF.l,X		; 3F DF CF 22
	ldy $C2.b,X		; B4 C2
	sbc $6B.b,S		; E3 6B
	cmp $EE431D.l,X		; DF 1D 43 EE
	ora $1D36B0.l,X		; 1F B0 36 1D
	sbc $3FC1.w,X		; FD C1 3F
	sbc $B440F5.l,X		; FF F5 40 B4
	cmp ($D1.b)		; D2 D1
	.db $42, $C0		; 42 C0
	ora ($5C.b,X)		; 01 5C
	dec $B420.w,X		; DE 20 B4
	and ($1D.b),Y		; 31 1D
	cmp $1FE042.l,X		; DF 42 E0 1F
	bpl -48.b		; 10 D0
	tay		; A8
	and $4E03B1.l,X		; 3F B1 03 4E
	cmp $1010.w,X		; DD 10 10
	ora ($A4.b)		; 12 A4
	bmi  16.b		; 30 10
	dec $04F0.w,X		; DE F0 04
	rol $F0F0.w,X		; 3E F0 F0
	ldy #$F4EC.w		; A0 EC F4
	rol $31D0.w,X		; 3E D0 31
	beq  -1.b		; F0 FF
	brk $90.b		; 00 90
	sbc ($0C.b),Y		; F1 0C
	cmp ($31.b),Y		; D1 31
	ora ($10.b),Y		; 11 10
	inc $90F1.w,X		; FE F1 90
	sbc ($02.b),Y		; F1 02
	ora $CF0C01.l,X		; 1F 01 0C CF
	ora ($1E.b),Y		; 11 1E
	ldy #$1C24.w		; A0 24 1C
	sbc ($0F.b),Y		; F1 0F
	sbc $34DF11.l		; EF 11 DF 34
	bcc  11.b		; 90 0B
	ora $2F.b,S		; 03 2F
	tsb $43CD.w		; 0C CD 43
	stp		; DB
	pea $53A0.w		; F4 A0 53
	stp		; DB
	tsb $FB.b		; 04 FB
	cmp ($32.b,X)		; C1 32
	sbc $3A9034.l,X		; FF 34 90 3A
	ldx #$902A.w		; A2 2A 90
	.db $42, $EF		; 42 EF
	trb $55.b		; 14 55
	sty $ED.b,X		; 94 ED
	sbc ($0E.b,S),Y		; F3 0E
	cmp $2C.b,S		; C3 2C
	sep #$44		; E2 44
	pld		; 2B
	sty $C3.b,X		; 94 C3
	tsa		; 3B
	sta $04FC65.l,X		; 9F 65 FC 04
	adc ($AB.b,S),Y		; 73 AB
	ldy $F0.b		; A4 F0
	asl $52C2.w		; 0E C2 52
	cmp $BE5B15.l,X		; DF 15 5B BE
	ldy $E4.b		; A4 E4
	sbc $0E24.w,X		; FD 24 0E
	ora ($41.b)		; 12 41
	ldy $B401.w		; AC 01 B4
	ora $001001.l		; 0F 01 10 00
	and $EC.b,S		; 23 EC
	sbc ($2F.b,X)		; E1 2F
	ldy $F0.b,X		; B4 F0
	ora ($00.b)		; 12 00
	sbc ($1C.b,S),Y		; F3 1C
	cpy #$CE42.w		; C0 42 CE
	cpy #$10F1.w		; C0 F1 10
	beq  50.b		; F0 32
	sbc $40F2.w,X		; FD F2 40
	cmp $14C0.w		; CD C0 14
	rol $33DF.w		; 2E DF 33
	ora $42E1.w		; 0D E1 42
	cmp $15C0.w,X		; DD C0 15
	bit $41D1.w,X		; 3C D1 41
	inc $32E1.w		; EE E1 32
	inc $15C0.w		; EE C0 15
	trb $30E2.w		; 1C E2 30
	inc $31F1.w		; EE F1 31
	inc $25C0.w		; EE C0 25
	jsr ($2FF3.w,X)		; FC F3 2F
	inc $30F2.w		; EE F2 30
	sbc $EC34C0.l		; EF C0 34 EC
	ora $2F.b,S		; 03 2F
	inc $30F2.w		; EE F2 30
	sbc $CD33C0.l		; EF C0 33 CD
	ora ($0E.b,S),Y		; 13 0E
	sbc $E12F02.l,X		; FF 02 2F E1
	cpy #$C04E.w		; C0 4E C0
	eor ($EE.b,X)		; 41 EE
	beq  18.b		; F0 12
	asl $C004.w		; 0E 04 C0
	jsr ($2EF4.w,X)		; FC F4 2E
	sbc $EF2101.l		; EF 01 21 EF
	rti		; 40

	cpy #$32CE.w		; C0 CE 32
	inc $02FF.w,X		; FE FF 02
	ora $B00CF3.l,X		; 1F F3 0C B0
	dec $4E.b,X		; D6 4E
	dec $42F0.w,X		; DE F0 42
	cpx #$B15D.w		; E0 5D B1
	bcs  80.b		; B0 50
	dec $2100.w,X		; DE 00 21
	sbc ($2B.b)		; F2 2B
	cmp ($50.b,S),Y		; D3 50
	bcs -35.b		; B0 DD
	ora ($32.b,X)		; 01 32
	beq  75.b		; F0 4B
	lda ($71.b),Y		; B1 71
	cmp $F0C0.w,X		; DD C0 F0
	and ($00.b,X)		; 21 00
	rol $40E0.w,X		; 3E E0 40
	inc $C000.w		; EE 00 C0
	ora ($00.b)		; 12 00
	and $40E1.w		; 2D E1 40
	inc INIDSP.w		; EE 00 21
	cpy #$1D00.w		; C0 00 1D
	sep #$40		; E2 40
	inc INIDSP.w		; EE 00 21
	sbc ($B0.b),Y		; F1 B0
	ora $6ED5.w,Y		; 19 D5 6E
	lda $4201.w,X		; BD 01 42
	sbc ($EA.b,S),Y		; F3 EA
	bcs  -9.b		; B0 F7
	lsr $13BD.w		; 4E BD 13
	and ($EF.b)		; 32 EF
	cmp ($32.b,X)		; C1 32
	bcs -20.b		; B0 EC
.ACCU 8
.INDEX 8
	sep #$32		; E2 32
	tsa		; 3B
	bcs 115.b		; B0 73
	xba		; EB
	cmp $1222C0.l,X		; DF C0 22 12
	lda $1E14.w,X		; BD 14 1E
	dec $2203.w,X		; DE 03 22
	cpy #$0B.b		; C0 0B
	sbc $40.b,S		; E3 40
	sbc $32E1.w		; ED E1 32
	and $C0CF.w		; 2D CF C0
	eor $FE.b,S		; 43 FE
	sbc $BD2223.l		; EF 23 22 BD
	trb $2F.b		; 14 2F
	cpy #$DE.b		; C0 DE
	sbc ($33.b,S),Y		; F3 33
	phd		; 0B
	cmp ($41.b,S),Y		; D3 41
	sbc $C0D0.w,X		; FD D0 C0
	and ($3D.b,S),Y		; 33 3D
	lda $CD1E43.l,X		; BF 43 1E CD
	bit $31.b		; 24 31
	cpy #$BC.b		; C0 BC
	trb $30.b		; 14 30
	jmp.w [$43F3]		; DC F3 43
	xba		; EB
	cmp ($C0.b)		; D2 C0
	.db $42, $FC		; 42 FC
	cmp ($44.b,X)		; C1 44
	bit $44BF.w		; 2C BF 44
	asl $05C8.w,X		; 1E C8 05
	rol $04DD.w		; 2E DD 04
	eor $F3ED.w,X		; 5D ED F3
	eor ($C8.b,X)		; 41 C8
	cmp $DD51B4.l		; CF B4 51 DD
	sbc $CFFD53.l,X		; FF 53 FD CF
	iny		; C8
	eor ($1C.b,S),Y		; 53 1C
	cmp $DB2E24.l,X		; DF 24 2E DB
	bit $3E.b,X		; 34 3E
	iny		; C8
	cpx $4103.w		; EC 03 41
	jmp.w [$32D5]		; DC D5 32
	cmp $C8E1.w,X		; DD E1 C8
	eor $ED.b,S		; 43 ED
	cmp ($24.b),Y		; D1 24
	ora $23D0.w		; 0D D0 23
	sbc $CF1EB0.l,X		; FF B0 1E CF
	and ($0F.b,X)		; 21 0F
	sbc ($1E.b,S),Y		; F3 1E
	cpx #$F2.b		; E0 F2
	bcs  47.b		; B0 2F
	cmp $CE4E04.l,X		; DF 04 4E CE
	sbc ($40.b)		; F2 40
	cmp $15B4.w		; CD B4 15
	tsa		; 3B
	cpy #$12.b		; C0 12
	eor $6D02CE.l		; 4F CE 02 6D
	ldy #$EC.b		; A0 EC
	tyx		; BB
	and $1E.b,X		; 35 1E
	jmp.w [$0F63]		; DC 63 0F
	nop		; EA
	ldy #$03.b		; A0 03
	ora $FE330D.l		; 0F 0D 33 FE
	phd		; 0B
	sbc ($0F.b,S),Y		; F3 0F
	ldy #$0D.b		; A0 0D
	bit $FE.b		; 24 FE
	ora $1EE2.w		; 0D E2 1E
	asl $A024.w,X		; 1E 24 A0
	inc $E20D.w,X		; FE 0D E2
	asl $240F.w		; 0E 0F 24
	inc $90FE.w,X		; FE FE 90
	cmp $1D.b,S		; C3 1D
	ora $FCFD35.l		; 0F 35 FD FC
	cmp ($0F.b),Y		; D1 0F
	sty $10.b,X		; 94 10
	ora ($BF.b,S),Y		; 13 BF
	rol $FEE5.w		; 2E E5 FE
	and $0C8025.l		; 2F 25 80 0C
	dex		; CA
	ldx #$3E.b		; A2 3E
	sbc $22E4.w		; ED E4 22
	sbc $F484.w		; ED 84 F4
	and $40F5DD.l		; 2F DD F5 40
	dec $40E2.w,X		; DE E2 40
	sty $ED.b		; 84 ED
	lda ($62.b)		; B2 62
	sbc $32FF.w,X		; FD FF 32
	ora $80CE.w,X		; 1D CE 80
	sbc ($20.b,X)		; E1 20
	dec $43F1.w,X		; DE F1 43
	cpx $11DF.w		; EC DF 11
	stz $AE.b,X		; 74 AE
	and ($63.b),Y		; 31 63
	tsx		; BA
	sbc $11BF51.l,X		; FF 51 BF 11
	stz $37.b,X		; 74 37
	cpy $22EE.w		; CC EE 22
	dec $334F.w,X		; DE 4F 33
	tsb $FD70.w		; 0C 70 FD
	lda $F2DFED.l,X		; BF ED DF F2
	eor $88CDFE.l,X		; 5F FE CD 88
	asl $F221.w		; 0E 21 F2
	sbc $D60E.w,X		; FD 0E D6
	rol $B477.w		; 2E 77 B4
	ora $02ED0F.l,X		; 1F 0F ED 02
	ora ($60.b,S),Y		; 13 60
	cmp $C4FA.w		; CD FA C4
	sbc ($20.b)		; F2 20
	bit $DD.b,X		; 34 DD
	inc $41D1.w,X		; FE D1 41
	ora $C4.b,X		; 15 C4
	cpx $D0E0.w		; EC E0 D0
	and ($14.b)		; 32 14
	jsr ($E0D1.w,X)		; FC D1 E0
	cpy #$02.b		; C0 02
	trb $4F.b		; 14 4F
	cmp $1213EE.l,X		; DF EE 13 12
	and $2EB4B4.l,X		; 3F B4 B4 2E
	.db $42, $DF		; 42 DF
	jmp ($4DB1.w)		; 6C B1 4D
	trb $B4.b		; 14 B4
	stp		; DB
	jsl $FDCD7F.l		; 22 7F CD FD
	rol $2B.b		; 26 2B
	brk $B0.b		; 00 B0
	and $0E.b		; 25 0E
	inc $40D2.w		; EE D2 40
	sbc $B05FF7.l		; EF F7 5F B0
	ldx $55CF.w,Y		; BE CF 55
	sbc $51E3.w		; ED E3 51
	inc $C0DD.w		; EE DD C0
	ora ($0E.b)		; 12 0E
	beq  66.b		; F0 42
	inc $03FE.w,X		; FE FE 03
	asl $01C4.w,X		; 1E C4 01
	bit $CD.b		; 24 CD
	brk $03.b		; 00 03
	and $15D1.w		; 2D D1 15
	cpy $0C.b		; C4 0C
	cmp ($F2.b),Y		; D1 F2
	rti		; 40

	dec $5E12.w		; CE 12 5E
	cmp $20C4.w		; CD C4 20
	.db $42, $DB		; 42 DB
	cop $53.b		; 02 53
	wai		; CB
.ACCU 8
.INDEX 8
	sep #$34		; E2 34
	cpy $0B.b		; C4 0B
	cmp ($45.b,X)		; C1 45
	and #$B0.b		; 29 B0
	bit $3E.b,X		; 34 3E
	lda $53C8.w		; AD C8 53
	asl A		; 0A
	ldx #$72.b		; A2 72
	ora $46CD.w		; 0D CD 46
	asl $ACC8.w,X		; 1E C8 AC
	lsr $2E.b		; 46 2E
	cmp $5FF5.w		; CD F5 5F
	sbc #$F4.b		; E9 F4
	cpy $55.b		; C4 55
	rol $16BC.w		; 2E BC 16
	bvc -86.b		; 50 AA
	ora $51.b		; 05 51
	iny		; C8
	bcs  22.b		; B0 16
	and $F5BE.w,X		; 3D BE F5
	bvc -68.b		; 50 BC
	ora $C4.b,S		; 03 C4
	and $3E.b		; 25 3E
	cpy $4F05.w		; CC 05 4F
	dec $42F2.w		; CE F2 42
	iny		; C8
	cmp $CD4EF5.l		; CF F5 4E CD
	and ($41.b,X)		; 21 41
	cmp $C8F0.w,X		; DD F0 C8
	mvp $D2,$DD		; 44 DD D2
	and $1C.b,S		; 23 1C
	inc $3C24.w		; EE 24 3C
	cpy #$2E.b		; C0 2E
	cmp $3104.w,X		; DD 04 31
	cpy $41F4.w		; CC F4 41
	cpx $D2C0.w		; EC C0 D2
	eor $0C.b,S		; 43 0C
	cpy #$43.b		; C0 43
	ora $34CE.w		; 0D CE 34
	iny		; C8
	sbc $5D13.w		; ED 13 5D
	cmp $4121.w,X		; DD 21 41
	dec $C8D3.w		; CE D3 C8
	eor $CD.b,S		; 43 CD
.ACCU 8
	sep #$23		; E2 23
	tas		; 1B
	sbc $1C44.w,X		; FD 44 1C
	iny		; C8
	bne  19.b		; D0 13
	rol $E5DE.w,X		; 3E DE E5
	rti		; 40

	ldx $C801.w,Y		; BE 01 C8
	.db $42, $DE		; 42 DE
	bne  83.b		; D0 53
	jsr ($24D1.w,X)		; FC D1 24
	trb $FCC8.w		; 1C C8 FC
	bit $3F.b		; 24 3F
	cmp $4012.w		; CD 12 40
	sbc $C8D3.w		; ED D3 C8
	and ($ED.b,S),Y		; 33 ED
	cmp ($24.b),Y		; D1 24
	trb $24DF.w		; 1C DF 24
	ora $B2CAB4.l,X		; 1F B4 CA B2
	adc $FA.b		; 65 FA
	bne  51.b		; D0 33
	asl $A4DF.w,X		; 1E DF A4
	eor $1D.b		; 45 1D
	cmp $CE1E51.l		; CF 51 1E CE
	ora $4E.b,X		; 15 4E
	ldy $BC.b		; A4 BC
	rol $2F.b		; 26 2F
	cmp $41D4.w,X		; DD D4 41
	inc $A0D5.w		; EE D5 A0
	and $3FF1F0.l		; 2F F0 F1 3F
	ldx $6103.w,Y		; BE 03 61
	plb		; AB
	ldy $22.b,X		; B4 22
	and $21CF.w,X		; 3D CF 21
	rti		; 40

	cmp $5202.w		; CD 02 52
	ldy $BC.b,X		; B4 BC
	ora ($34.b,X)		; 01 34
	xce		; FB
	cpx #$35.b		; E0 35
	sbc $A0E0.w		; ED E0 A0
	cmp $61.b,S		; C3 61
	cmp $3FE6.w,X		; DD E6 3F
	inc $50C1.w		; EE C1 50
	ldy #$EE.b		; A0 EE
	sbc $4F.b		; E5 4F
	cmp $EF31CF.l,X		; DF CF 31 EF
	sbc $A0.b,X		; F5 A0
	bmi -34.b		; 30 DE
	cmp $05FF21.l		; CF 21 FF 05
	and $D3A4EF.l		; 2F EF A4 D3
	and $ED04F1.l		; 2F F1 04 ED
	beq -15.b		; F0 F1
	and $26E194.l,X		; 3F 94 E1 26
	cmp $E2D0.w		; CD D0 E2
	and $801202.l		; 2F 02 12 80
	rol $D1DE.w		; 2E DE D1
	bpl -34.b		; 10 DE
	ora ($1E.b)		; 12 1E
	phx		; DA
	sty $17.b		; 84 17
	and $02EE.w,X		; 3D EE 02
	and $5EC5FD.l		; 2F FD C5 5E
	sty $0E.b		; 84 0E
.ACCU 8
	sep #$20		; E2 20
	ora $51C0.w,X		; 1D C0 51
	sbc $2284E0.l,X		; FF E0 84 22
	jsr $31AD.w		; 20 AD 31
	lsr $F1FE.w		; 4E FE F1
	eor ($74.b)		; 52 74
	tax		; AA
	cmp $CC1E44.l,X		; DF 44 1E CC
	lsr $2B.b		; 46 2B
	dec $C070.w,X		; DE 70 C0
	bit $1B.b		; 24 1B
	cmp ($32.b,X)		; C1 32
	jsr ($21D1.w,X)		; FC D1 21
	rts		; 60

	and $40D3.w,X		; 3D D3 40
	xba		; EB
	bne  33.b		; D0 21
	xce		; FB
	ldx #$60.b		; A2 60
	.db $42, $FB		; 42 FB
	ldx #$44.b		; A2 44
	xce		; FB
	sta $1C71.w,X		; 9D 71 1C
	rts		; 60

	lda $BE1023.l		; AF 23 10 BE
	bit $20.b		; 24 20
	txs		; 9A
	and $3260.w,X		; 3D 60 32
	xce		; FB
	sbc ($03.b,S),Y		; F3 03
	dec $D0EF.w,X		; DE EF D0
	asl $3064.w		; 0E 64 30
	beq  31.b		; F0 1F
	asl $D4D1.w,X		; 1E D1 D4
	and ($0E.b),Y		; 31 0E
	sty $00.b,X		; 94 00
	ora $EFFE01.l,X		; 1F 01 FE EF
	bit $4E.b		; 24 4E
	cmp $10C8.w,X		; DD C8 10
	ora $1003F0.l		; 0F F0 03 10
	cpx $33F3.w		; EC F3 33
	iny		; C8
	jsr ($02EF.w,X)		; FC EF 02
	bvs -53.b		; 70 CB
	sbc $25.b,S		; E3 25
	tas		; 1B
	iny		; C8
	bne -30.b		; D0 E2
	adc ($BC.b)		; 72 BC
	sbc ($36.b,X)		; E1 36
	asl A		; 0A
	cmp ($C4.b)		; D2 C4
	lda $CD1C56.l,X		; BF 56 1C CD
	asl $4F.b,X		; 16 4F
	dec $C4B0.w,X		; DE B0 C4
	eor $0D.b,X		; 55 0D
	ldx $4E25.w,Y		; BE 25 4E
	dec $64C0.w,X		; DE C0 64
	iny		; C8
	cmp $33F3.w		; CD F3 33
	xba		; EB
	brk $F5.b		; 00 F5
	and $C4ED.w,X		; 3D ED C4
	cmp $DF1D34.l,X		; DF 34 1D DF
	ora ($2F.b,S),Y		; 13 2F
	sbc $B4F3.w,X		; FD F3 B4
	eor $4E15BD.l,X		; 5F BD 15 4E
	lda $5014.w		; AD 14 50
	jmp.w [$E1C4]		; DC C4 E1
	.db $42, $EC		; 42 EC
	sep #$43		; E2 43
	inc $54CE.w		; EE CE 54
	cpy #$3F.b		; C0 3F
	cmp $3203.w		; CD 03 32
	phd		; 0B
	cmp ($41.b)		; D2 41
	sbc $13C4.w,X		; FD C4 13
	and $51C30D.l		; 2F 0D C3 51
	cmp $41E2.w,X		; DD E2 41
	cpy #$21.b		; C0 21
	cpy $2F15.w		; CC 15 2F
	cmp $3114.w		; CD 14 31
	stp		; DB
	cpy $54.b		; C4 54
	jsr ($43D1.w,X)		; FC D1 43
	inc $54B0.w,X		; FE B0 54
	jmp.w [$CEC0]		; DC C0 CE
	bit $3F.b		; 24 3F
	lda $1D35.w,X		; BD 35 1D
	ldx $C034.w,Y		; BE 34 C0
	rol $44BF.w		; 2E BF 44
	tsb $43C0.w		; 0C C0 43
	tsb $C0D2.w		; 0C D2 C0
	eor ($DC.b,X)		; 41 DC
	sbc $42.b,S		; E3 42
	jmp.w [$3F04]		; DC 04 3F
	cmp $14C0.w		; CD C0 14
	and $1D34BD.l,X		; 3F BD 34 1D
	cmp $C02C34.l		; CF 34 2C C0
	cpy #$42.b		; C0 42
	jsr ($43D1.w,X)		; FC D1 43
	jsr ($40E3.w,X)		; FC E3 40
	cpy #$DC.b		; C0 DC
	sbc ($40.b,S),Y		; F3 40
	cmp $1E24.w		; CD 24 1E
	dec $C034.w		; CE 34 C0
	ora $32D1.w,X		; 1D D1 32
	jsr ($42E2.w,X)		; FC E2 42
	cmp $C003.w,X		; DD 03 C0
	and $3E14CD.l		; 2F CD 14 3E
	cmp $D00D32.l		; CF 32 0D D0
	cpy #$43.b		; C0 43
	jsr ($30E2.w,X)		; FC E2 30
	sbc $3003.w		; ED 03 30
	dec $23C0.w		; CE C0 23
	asl $33CF.w		; 0E CF 33
	tsb $31E2.w		; 0C E2 31
	cpx $E3C0.w		; EC C0 E3
	eor ($CD.b,X)		; 41 CD
	ora ($1F.b,S),Y		; 13 1F
	dec $1D24.w		; CE 24 1D
	cpy #$D1.b		; C0 D1
	and ($EC.b),Y		; 31 EC
	sbc ($40.b,S),Y		; F3 40
	dec $1E23.w,X		; DE 23 1E
	cpy #$D0.b		; C0 D0
	and ($ED.b,S),Y		; 33 ED
	sbc ($2F.b)		; F2 2F
	dec $0D24.w,X		; DE 24 0D
	cpy #$E1.b		; C0 E1
	and ($ED.b),Y		; 31 ED
	tsb $4E.b		; 04 4E
	cmp $C00D22.l		; CF 22 0D C0
	cmp ($42.b),Y		; D1 42
	cmp $2F12.w,X		; DD 12 2F
	cmp $C0FD34.l,X		; DF 34 FD C0
.ACCU 8
	sep #$21		; E2 21
	sbc $3E04.w		; ED 04 3E
	cmp $C00D22.l,X		; DF 22 0D C0
	cmp ($41.b)		; D2 41
	cmp $2F12.w,X		; DD 12 2F
	cmp $C0FD34.l,X		; DF 34 FD C0
.ACCU 8
	sep #$21		; E2 21
	sbc $3E04.w		; ED 04 3E
	bne  34.b		; D0 22
	ora $D2C0.w		; 0D C0 D2
	eor ($DD.b),Y		; 51 DD
	ora ($2F.b)		; 12 2F
	cmp $C0FD34.l		; CF 34 FD C0
.ACCU 8
	sep #$21		; E2 21
	cmp $3E14.w,X		; DD 14 3E
	cpy #$22.b		; C0 22
	ora $E2C0.w		; 0D C0 E2
	eor ($DE.b,X)		; 41 DE
	ora ($1E.b)		; 12 1E
	bne  66.b		; D0 42
	sbc $02C0.w		; ED C0 02
	and $FD34DF.l		; 2F DF 34 FD
	sbc ($21.b)		; F2 21
	sbc $14C0.w		; ED C0 14
	and $22D1.w		; 2D D1 22
	sbc $5FE3.w,X		; FD E3 5F
	cmp $FD30C4.l		; CF C4 30 FD
	pea $B04D.w		; F4 4D B0
	eor ($0D.b,X)		; 41 0D
	sep #$C0		; E2 C0
	and ($ED.b,S),Y		; 33 ED
	ora ($20.b,X)		; 01 20
	inc $0D24.w		; EE 24 0D
	sbc ($C0.b,X)		; E1 C0
	and ($ED.b,X)		; 21 ED
	tsb $3E.b		; 04 3E
	bne  34.b		; D0 22
	ora $C4E2.w		; 0D E2 C4
	tsa		; 3B
	cmp ($31.b),Y		; D1 31
	inc $4EE3.w,X		; FE E3 4E
	cmp $2FC041.l		; CF 41 C0 2F
	dec $FD34.w,X		; DE 34 FD
	sbc ($21.b),Y		; F1 21
	sbc $C014.w		; ED 14 C0
	ora $22D1.w,X		; 1D D1 22
	sbc $4FF3.w,X		; FD F3 4F
	cmp $0DC022.l,X		; DF 22 C0 0D
	cmp ($42.b),Y		; D1 42
	cmp $2F12.w,X		; DD 12 2F
	cmp $FDC034.l,X		; DF 34 C0 FD
.ACCU 8
	sep #$21		; E2 21
	sbc $3D04.w		; ED 04 3D
	bne  34.b		; D0 22
	cpy $DE.b		; C4 DE
	trb $2C.b		; 14 2C
	cmp ($31.b),Y		; D1 31
	sbc $4FF3.w,X		; FD F3 4F
	cpy #$ED.b		; C0 ED
	cop $2F.b		; 02 2F
	dec $FD24.w,X		; DE 24 FD
.ACCU 8
	sep #$21		; E2 21
	cpy #$ED.b		; C0 ED
	tsb $2D.b		; 04 2D
	bne  34.b		; D0 22
	sbc $40E2.w,X		; FD E2 40
	bcs -84.b		; B0 AC
	bit $2C.b,X		; 34 2C
	ldy #$77.b		; A0 77
	cmp #$F5.b		; C9 F5
	eor $25DDC0.l		; 4F C0 DD 25
	ora $21D1.w,X		; 1D D1 21
	sbc $4EF3.w		; ED F3 4E
	cpy #$DF.b		; C0 DF
	jsl $42D10D.l		; 22 0D D1 42
	cmp $2F12.w,X		; DD 12 2F
	cpy #$DF.b		; C0 DF
	bit $0D.b,X		; 34 0D
.ACCU 8
	sep #$21		; E2 21
	sbc $3E04.w		; ED 04 3E
	cpy $E3.b		; C4 E3
	bmi -19.b		; 30 ED
	tsb $3D.b		; 04 3D
	cpy #$41.b		; C0 41
	inc $DFC0.w,X		; FE C0 DF
	bit $FD.b,X		; 34 FD
	sbc ($20.b)		; F2 20
	sbc $2D14.w		; ED 14 2D
	cpy $03.b		; C4 03
	and $2C14EE.l		; 2F EE 14 2C
	bne  65.b		; D0 41
	sbc $DFC0.w,X		; FD C0 DF
	bit $ED.b,X		; 34 ED
	sbc ($20.b)		; F2 20
	sbc $1D14.w		; ED 14 1D
	bcs -78.b		; B0 B2
	and ($EA.b)		; 32 EA
	inc $7C.b,X		; F6 7C
	sta $C00B33.l,X		; 9F 33 0B C0
	sbc ($41.b,X)		; E1 41
	cmp $2F12.w,X		; DD 12 2F
	cmp $B0FD34.l,X		; DF 34 FD B0
	cmp ($32.b)		; D2 32
	phx		; DA
	ora [$5C.b],Y		; 17 5C
	lda $C00B33.l		; AF 33 0B C0
	sep #$41		; E2 41
	cmp $2F12.w,X		; DD 12 2F
	cmp $C0FD34.l,X		; DF 34 FD C0
	sbc ($21.b),Y		; F1 21
	sbc $3E04.w,X		; FD 04 3E
	cmp $B41E12.l,X		; DF 12 1E B4
	inc $6C.b,X		; F6 6C
	stz $2D53.w,X		; 9E 53 2D
	lda ($66.b,X)		; A1 66
	lda #$B4.b		; A9 B4
	sbc $41.b,X		; F5 41
	cpy $6B05.w		; CC 05 6B
	cmp $3E24.w		; CD 24 3E
	cpy #$FE.b		; C0 FE
	sbc ($32.b)		; F2 32
	sbc $31F2.w		; ED F2 31
	cpx $C0F3.w		; EC F3 C0
	eor ($CC.b,X)		; 41 CC
	ora $30.b,S		; 03 30
	jmp.w [$3004]		; DC 04 30
	cpy $04C0.w		; CC C0 04
	and $3014CD.l,X		; 3F CD 14 30
	cpy $3F14.w		; CC 14 3F
	cpy $D0.b		; C4 D0
	eor ($FD.b,S),Y		; 53 FD
	cpy #$53.b		; C0 53
	jsr ($43D1.w,X)		; FC D1 43
	cpy #$30.b		; C0 30
	cpy $3F14.w		; CC 14 3F
	cmp $3104.w		; CD 04 31
	cmp $E5B0.w,X		; DD B0 E5
	adc ($CB.b,X)		; 61 CB
	sbc $42.b,S		; E3 42
	jsr ($31E1.w,X)		; FC E1 31
	tay		; A8
	sbc ($44.b)		; F2 44
	stp		; DB
	ora $0FFC52.l		; 0F 52 FC 0F
	and ($A4.b)		; 32 A4
	ora $0012E0.l,X		; 1F E0 12 00
	dec $1F33.w		; CE 33 1F
	cpx $BFA0.w		; EC A0 BF
	bit $32.b,X		; 34 32
	dex		; CA
	cmp ($44.b)		; D2 44
	ora $94DF.w		; 0D DF 94
	adc ($DB.b)		; 72 DB
	cmp ($30.b),Y		; D1 30
	brk $1F.b		; 00 1F
	bit $90F1.w,X		; 3C F1 90
	ora ($3F.b)		; 12 3F
	inc $0FF0.w		; EE F0 0F
	inc $6F14.w		; EE 14 6F
	sty $E0.b,X		; 94 E0
	and ($1D.b,X)		; 21 1D
	bne  84.b		; D0 54
	pld		; 2B
	dec $8812.w,X		; DE 12 88
	sbc $33E1.w		; ED E1 33
	dec $012F.w		; CE 2F 01
	and $0D78E0.l		; 2F E0 78 0D
	eor ($E0.b,X)		; 41 E0
	sbc $30.b		; E5 30
	cmp $00F3.w,X		; DD F3 00
	stz $AD.b,X		; 74 AD
	wai		; CB
	jsl $033201.l		; 22 01 32 03
	adc $CC7411.l,X		; 7F 11 74 CC
	tyx		; BB
	bmi  28.b		; 30 1C
	cpy $65.b		; C4 65
	bvc -50.b		; 50 CE
	stz $11.b,X		; 74 11
	dec $20CD.w		; CE CD 20
	and ($2F.b),Y		; 31 2F
	eor $10.b,S		; 43 10
	stz $3C.b,X		; 74 3C
	cpy $F1C3.w		; CC C3 F1
	cmp $6523.w		; CD 23 65
	tsb $D274.w		; 0C 74 D2
	ora ($EC.b,S),Y		; 13 EC
	bcs  36.b		; B0 24
	sbc ($C0.b),Y		; F1 C0
	and ($60.b,X)		; 21 60
	and ($0F.b),Y		; 31 0F
	inc $CDEF.w,X		; FE EF CD
	and ($FC.b,X)		; 21 FC
	cmp $4164.w		; CD 64 41
	asl $11FF.w		; 0E FF 11
	asl $0EFF.w		; 0E FF 0E
	ora ($74.b)		; 12 74
	ora ($0F.b),Y		; 11 0F
	beq  18.b		; F0 12
	trb $33FD.w		; 1C FD 33
	and $33C378.l		; 2F 78 C3 33
	cmp $2E20E0.l,X		; DF E0 20 2E
	cpx #$3E.b		; E0 3E
	stz $22.b		; 64 22
	trb $0F1F.w		; 1C 1F 0F
	ror $12EB.w		; 6E EB 12
	bit $60.b,X		; 34 60
	bpl -35.b		; 10 DD
	bit $1F.b,X		; 34 1F
	xba		; EB
	cmp ($22.b,S),Y		; D3 22
	sbc $0064.w		; ED 64 00
	.db $42, $FC		; 42 FC
	cpx #$45.b		; E0 45
	cmp $42B3.w		; CD B3 42
	stz $1F.b		; 64 1F
	cmp $0F14.w,X		; DD 14 0F
	cmp $F01F21.l,X		; DF 21 1F F0
	bvc  19.b		; 50 13
	lda $15AD.w,X		; BD AD 15
	jsr $63BB.w		; 20 BB 63
	and ($50.b),Y		; 31 50
	cpx $44E0.w		; EC E0 44
	and $1F42DF.l		; 2F DF 42 1F
	cmp $E050.w,X		; DD 50 E0
	asl $000F.w,X		; 1E 0F 00
	ora ($1B.b)		; 12 1B
	ora $1B5070.l		; 0F 70 50 1B
	asl $11.b		; 06 11
	ora ($11.b),Y		; 11 11
	ora ($1B.b)		; 12 1B
	rts		; 60

	bvc  18.b		; 50 12
	jsr $2301.w		; 20 01 23
	.db $42, $B3		; 42 B3
	and ($4B.b,S),Y		; 33 4B
	bvs -15.b		; 70 F1
	bpl  15.b		; 10 0F
	and ($01.b),Y		; 31 01
	jsl $904E13.l		; 22 13 4E 90
	beq  17.b		; F0 11
	bpl   1.b		; 10 01
	sbc ($4F.b),Y		; F1 4F
	sbc ($FE.b),Y		; F1 FE
	bra   2.b		; 80 02
	ora $0EF4.w		; 0D F4 0E
	adc $D1.b,S		; 63 D1
	and $B284F1.l		; 2F F1 84 B2
	eor $D113.w,X		; 5D 13 D1
	asl $FAF2.w		; 0E F2 FA
	eor $80.b,S		; 43 80
	trb $31.b		; 14 31
	sbc ($3F.b)		; F2 3F
	cmp ($1F.b),Y		; D1 1F
	eor ($CF.b,X)		; 41 CF
	bra  31.b		; 80 1F
	bne  31.b		; D0 1F
	cop $F1.b		; 02 F1
	eor $80DDE2.l		; 4F E2 DD 80
	ora ($23.b),Y		; 11 23
	bpl  20.b		; 10 14
	ora $E210.w,X		; 1D 10 E2
	jmp $DE80.w		; 4C 80 DE
	cpx #$04.b		; E0 04
	ora $E532.w		; 0D 32 E5
	jmp $80D4.w		; 4C D4 80
	sbc $ED05.w,Y		; F9 05 ED
	mvn $20,$EF		; 54 EF 20
	sbc ($E1.b),Y		; F1 E1
	bra  12.b		; 80 0C
	tsb $D2.b		; 04 D2
	rts		; 60

	lda ($4F.b,X)		; A1 4F
	lda $8112.w,X		; BD 12 81
	rol $50B1.w		; 2E B1 50
	cmp $E11E.w		; CD 1E E1
	cpx $4F.b		; E4 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	asl $0EFD.w		; 0E FD 0E
	dec $DFE1.w,X		; DE E1 DF
	inc $64E0.w,X		; FE E0 64
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	ora ($D0.b,X)		; 01 D0
	bit $2F2E.w,X		; 3C 2E 2F
	sbc ($64.b),Y		; F1 64
	jmp $A501.w		; 4C 01 A5
	ora ($03.b,X)		; 01 03
	lda $F1.b,X		; B5 F1
	cpx $60.b		; E4 60
	ora ($33.b,S),Y		; 13 33
	ora $1D1D2B.l		; 0F 2B 1D 1D
	sbc $00703F.l		; EF 3F 70 00
	brk $FE.b		; 00 FE
	asl $D4FF.w		; 0E FF D4
	sbc $640E.w,X		; FD 0E 64
	ora $5E2D3C.l		; 0F 3C 2D 5E
	cmp $1C.b		; C5 1C
	jsr $700C.w		; 20 0C 70
	ora $0BDFE1.l		; 0F E1 DF 0B
	cop $B2.b		; 02 B2
	inc $7410.w,X		; FE 10 74
	cop $DF.b		; 02 DF
	and $D401.w,X		; 3D 01 D4
	sbc $80F1C4.l,X		; FF C4 F1 80
	beq  15.b		; F0 0F
	brk $01.b		; 00 01
	cmp ($FF.b,X)		; C1 FF
	sbc $C07000.l		; EF 00 70 C0
	asl $DEFE.w		; 0E FE DE
	brk $E2.b		; 00 E2
	cpy #$DE.b		; C0 DE
	bra -16.b		; 80 F0
	pei ($D0.b)		; D4 D0
	ora $0F0D00.l		; 0F 00 0D 0F
	ora $1F80.w,X		; 1D 80 1F
	beq -32.b		; F0 E0
	bmi   1.b		; 30 01
	sbc $94C0A1.l,X		; FF A1 C0 94
	bpl   0.b		; 10 00
	cpx #$D0.b		; E0 D0
	ora $23.b,S		; 03 23
	ora ($CD.b,X)		; 01 CD
	ldy $EF.b		; A4 EF
	cop $32.b		; 02 32
	ora ($CD.b),Y		; 11 CD
	dec $3405.w,X		; DE 05 34
	ldy $21.b		; A4 21
	ldy $F6CD.w		; AC CD F6
	mvp $BB,$51		; 44 51 BB
	tyx		; BB
	ldy $F2.b,X		; B4 F2
	and ($32.b)		; 32 32
	cpx $E1DE.w		; EC DE E1
	eor $33.b,S		; 43 33
	ldy $FC.b,X		; B4 FC
	cmp $44D0.w,X		; DD D0 44
	and ($2B.b,S),Y		; 33 2B
	ldy $C4DD.w,X		; BC DD C4
	bit $12.b		; 24 12
	rol $EFCE.w		; 2E CE EF
	ora ($41.b,S),Y		; 13 41
	and $6FBFB8.l		; 2F B8 BF 6F
	mvp $92,$10		; 44 10 92
	sta $C40416.l,X		; 9F 16 04 C4
	bit $F0.b,X		; 34 F0
	cpx $02D1.w		; EC D1 02
	mvp $DC,$E0		; 44 E0 DC
	iny		; C8
	and $F2.b,S		; 23 F2
	ora $2201DE.l,X		; 1F DE 01 22
	asl $B8F0.w		; 0E F0 B8
	sep #$40		; E2 40
	and $FEFD.w		; 2D FD FE
	eor ($31.b,X)		; 41 31
	trb $B4.b		; 14 B4
	ldy #$AC.b		; A0 AC
	cmp $23.b,S		; C3 23
	and ($EE.b),Y		; 31 EE
	sbc ($20.b)		; F2 20
	clv		; B8
	beq -46.b		; F0 D2
	bmi  17.b		; 30 11
	sbc $124B.w		; ED 4B 12
	ora $5EA8.w,X		; 1D A8 5E
	cmp ($5C.b,S),Y		; D3 5C
	sbc ($F1.b,S),Y		; F3 F1
	asl A		; 0A
	brk $A5.b		; 00 A5
	cpy $13.b		; C4 13
	ora ($13.b),Y		; 11 13
	lda $FEF2F0.l,X		; BF F0 F2 FE
	ora $C0.b,S		; 03 C0
	brk $26.b		; 00 26
	sbc ($E0.b),Y		; F1 E0
	cmp ($2F.b)		; D2 2F
	ldy $C4DF.w,X		; BC DF C4
	and ($F0.b,S),Y		; 33 F0
	inc $10F2.w		; EE F2 10
	cpx $33F2.w		; EC F2 33
	cpy $10.b		; C4 10
	tas		; 1B
	inc $2031.w,X		; FE 31 20
	cpy $3203.w		; CC 03 32
	ldy $1C.b,X		; B4 1C
	asl $4ED0.w,X		; 1E D0 4E
	beq -31.b		; F0 E1
	pea $C4FE.w		; F4 FE C4
	beq   0.b		; F0 00
	and $C0.b,X		; 35 C0
	cmp ($E2.b),Y		; D1 E2
	ora $33B4D0.l,X		; 1F D0 B4 33
	jsl $23E9E1.l		; 22 E1 E9 23
	and $B4DC3B.l,X		; 3F 3B DC B4
	bit $2E.b		; 24 2E
	bpl   3.b		; 10 03
	rtl		; 6B

	sbc $202E.w		; ED 2E 20
	ldy $0B.b,X		; B4 0B
	cop $2F.b		; 02 2F
	cop $35.b		; 02 35
	bcc -48.b		; 90 D0
	ora $B4.b,S		; 03 B4
	asl $3491.w		; 0E 91 34
	and ($CD.b),Y		; 31 CD
	eor $1D4E.w,X		; 5D 4E 1D
	ldy $D2.b,X		; B4 D2
	ora ($00.b)		; 12 00
	cmp $1003.w		; CD 03 10
	bpl  47.b		; 10 2F
	ldy $43.b,X		; B4 43
	ldy $12E3.w		; AC E3 12
	ora $1D23BF.l,X		; 1F BF 23 1D
	clv		; B8
	sbc ($53.b),Y		; F1 53
	jsr ($A62C.w,X)		; FC 2C A6
	adc ($CC.b,X)		; 61 CC
	ora ($C4.b,X)		; 01 C4
	sbc ($20.b)		; F2 20
	inc $23F0.w,X		; FE F0 23
	and ($DD.b,X)		; 21 DD
	cpy $B4.b		; C4 B4
	and $DD.b,X		; 35 DD
	ldx $3D36.w,Y		; BE 36 3D
	ldy $76F3.w		; AC F3 76
	cpy #$55.b		; C0 55
	inc $22C1.w,X		; FE C1 22
	asl $03DE.w		; 0E DE 03
	and $D0CBC0.l		; 2F C0 CB D0
	and $43.b,X		; 35 43
	sbc $32E2.w		; ED E2 32
	sbc $F3B4.w,X		; FD B4 F3
	stz $D9.b		; 64 D9
	lda $0D5237.l,X		; BF 37 52 0D
	txy		; 9B
	cpy $32.b		; C4 32
	rol $02EE.w		; 2E EE 02
	jsl $23EFFC.l		; 22 FC EF 23
	cpy #$34.b		; C0 34
	and ($ED.b,S),Y		; 33 ED
	sbc ($31.b)		; F2 31
	sbc $13DF.w,X		; FD DF 13
	ldy $EB.b,X		; B4 EB
	ldx $4135.w		; AE 35 41
	cop $DD.b		; 02 DD
	cpy $32.b		; C4 32
	ldy $CD.b,X		; B4 CD
	sbc ($23.b,X)		; E1 23
	and $43F2BC.l		; 2F BC F2 43
	bpl -76.b		; 10 B4
	and $51EB.w,X		; 3D EB 51
	bit $11FE.w		; 2C FE 11
	and ($FC.b),Y		; 31 FC
	ldy $C0.b,X		; B4 C0
	and ($30.b)		; 32 30
	trb $BF.b		; 14 BF
	lda $12.b,X		; B5 12
	cmp $13FFB4.l		; CF B4 FF 13
	and $23E3CE.l		; 2F CE E3 23
	ora ($3D.b,X)		; 01 3D
	ldy $EB.b,X		; B4 EB
	bvc  60.b		; 50 3C
	sbc $FD3101.l,X		; FF 01 31 FD
	cmp $2122B4.l,X		; DF B4 22 21
	ora ($DE.b,S),Y		; 13 DE
	cmp $13.b,S		; C3 13
	cmp $11B8E0.l,X		; DF E0 B8 11
	asl $23EE.w		; 0E EE 23
	bpl  -1.b		; 10 FF
	bit $A4EF.w,X		; 3C EF A4
	eor $5A.b		; 45 5A
	cpx $5401.w		; EC 01 54
	pld		; 2B
	txs		; 9A
	trb $B4.b		; 14 B4
	and ($10.b),Y		; 31 10
	tsa		; 3B
	inc $EF51.w,X		; FE 51 EF
	cpx #$02.b		; E0 02
	ldy $21.b,X		; B4 21
	jsr ($23EE.w,X)		; FC EE 23
	and ($02.b,X)		; 21 02
	cmp $02B4D4.l,X		; DF D4 B4 02
	cmp $2F12F0.l,X		; DF F0 12 2F
	dec $23D1.w,X		; DE D1 23
	ldy $10.b,X		; B4 10
	tsb $CE.b		; 04 CE
	sbc ($1F.b,S),Y		; F3 1F
	sbc $A412F0.l,X		; FF F0 12 A4
	rol $CFCE.w		; 2E CE CF
	rol $20.b		; 26 20
	ora $0B.b		; 05 0B
	cpy $A4.b		; C4 A4
	ora ($B2.b),Y		; 11 B2
	cmp $DF2F05.l,X		; DF 05 2F DF
	cmp $B406.w		; CD 06 B4
	jsr $2C02.w		; 20 02 2C
	sbc ($20.b,X)		; E1 20
	sbc ($E0.b,X)		; E1 E0
	sbc ($B4.b,S),Y		; F3 B4
	bpl  -1.b		; 10 FF
	inc $1003.w		; EE 03 10
	ora ($3A.b)		; 12 3A
	ora $017CA4.l		; 0F A4 7C 01
	cmp $20E7.w,X		; DD E7 20
	asl $15C9.w		; 0E C9 15
	bcs   1.b		; B0 01
	bit $5F.b		; 24 5F
	beq  17.b		; F0 11
	ora ($DC.b),Y		; 11 DC
	cpx #$B4.b		; E0 B4
	ora ($0E.b),Y		; 11 0E
	dec $2222.w		; CE 22 22
	ora ($B0.b)		; 12 B0
	sbc ($B4.b)		; F2 B4
	sbc ($0E.b)		; F2 0E
	cmp $0D2130.l,X		; DF 30 21 0D
	lda ($13.b),Y		; B1 13
	ldy $23.b,X		; B4 23
	bit $10DF.w		; 2C DF 10
	and ($ED.b),Y		; 31 ED
	sep #$03		; E2 03
	clv		; B8
	inc $33E0.w		; EE E0 33
	brk $C1.b		; 00 C1
.ACCU 16
	rep #$22		; C2 22
	asl $0FB4.w		; 0E B4 0F
	sbc $FF0F20.l		; EF 20 0F FF
	ora ($6C.b,S),Y		; 13 6C
	ora $EAA4.w,X		; 1D A4 EA
	eor $F3.b,S		; 43 F3
	sbc $EC2FD1.l,X		; FF D1 2F EC
	beq -76.b		; F0 B4
	bit $2E.b,X		; 34 2E
	inc $11D1.w,X		; FE D1 11
	ora ($FE.b,X)		; 01 FE
	bpl -76.b		; 10 B4
	asl $F20F.w,X		; 1E 0F F2
	eor $D1.b,S		; 43 D1
	dec $10F1.w,X		; DE F1 10
	tay		; A8
	tsa		; 3B
	bpl  16.b		; 10 10
	sbc ($E4.b,X)		; E1 E4
	asl $AB.b,X		; 16 AB
	tsa		; 3B
	ldy #$AC.b		; A0 AC
	dec $1E03.w		; CE 03 1E
	sbc $BCDB.w		; ED DB BC
	cmp ($B4.b,S),Y		; D3 B4
	jmp $10FE2D.l		; 5C 2D FE 10
	sbc ($F1.b,S),Y		; F3 F1
	beq -18.b		; F0 EE
	ldy $1F.b,X		; B4 1F
	and $5C.b,S		; 23 5C
	bit $10EE.w,X		; 3C EE 10
	ora ($F1.b)		; 12 F1
	clv		; B8
	cpx #$F1.b		; E0 F1
	brk $41.b		; 00 41
	sbc $132B.w		; ED 2B 13
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	and ($11.b),Y		; 31 11
	ora $F0EE.w		; 0D EE F0
	eor $F5.b		; 45 F5
	cmp $A09EA4.l,X		; DF A4 9E A0
	and ($33.b,X)		; 21 33
	ora $01D5F1.l		; 0F F1 D5 01
	sty $12.b,X		; 94 12
	lda $D0D9.w		; AD D9 D0
	sbc $46.b,S		; E3 46
	adc ($3F.b),Y		; 71 3F
	ldy $0D.b		; A4 0D
	ora $FFFF.w,X		; 1D FF FF
	beq   0.b		; F0 00
	bit $03.b		; 24 03
	ldy $11.b		; A4 11
	cmp ($BE.b,S),Y		; D3 BE
	inc $00F0.w		; EE F0 00
	ora ($4F.b,S),Y		; 13 4F
	ldy $4F.b		; A4 4F
	asl $FF1C.w,X		; 1E 1C FF
	sbc $120E.w		; ED 0E 12
	.db $42, $A4		; 42 A4
	ora $F0.b,X		; 15 F0
	sbc $E0FECF.l,X		; FF CF FE E0
	sbc ($15.b,X)		; E1 15
	ldy $F6.b		; A4 F6
	cop $F2.b		; 02 F2
	lda $E0DFEE.l,X		; BF EE DF E0
	and $A4.b,S		; 23 A4
	and ($40.b),Y		; 31 40
	ora ($FD.b,X)		; 01 FD
	asl $FCEE.w		; 0E EE FC
	and ($B4.b,X)		; 21 B4
	and $1E1040.l		; 2F 40 10 1E
	asl $FFFF.w		; 0E FF FF
	ora ($A4.b,X)		; 01 A4
	bmi  50.b		; 30 32
	jsr $FF3E.w		; 20 3E FF
	cmp $E1EE.w,X		; DD EE E1
	tay		; A8
	ora ($01.b,X)		; 01 01
	sbc ($FF.b,X)		; E1 FF
	sbc $C1.b,S		; E3 C1
	brk $03.b		; 00 03
	tya		; 98
	ora ($F4.b),Y		; 11 F4
	lda $B0D52B.l,X		; BF 2B D5 B0
	eor $A417.w		; 4D 17 A4
	bit $15.b,X		; 34 15
	cmp ($DE.b),Y		; D1 DE
	cpy #$D2.b		; C0 D2
	brk $13.b		; 00 13
	ldy $40.b		; A4 40
	rol $0AFD.w,X		; 3E FD 0A
	and $F120.w		; 2D 20 F1
	and $B4.b,S		; 23 B4
	and $D1FF2E.l,X		; 3F 2E FF D1
	sbc ($1F.b,X)		; E1 1F
	ora ($13.b),Y		; 11 13
	ldy $E4.b,X		; B4 E4
	cpy #$EE.b		; C0 EE
	ora $110F01.l,X		; 1F 01 0F 11
	lsr $4CB4.w		; 4E B4 4C
	asl $00FF.w		; 0E FF 00
	bpl -15.b		; 10 F1
	trb $E4.b		; 14 E4
	ldy $C0.b,X		; B4 C0
	sbc $0FF1F1.l		; EF F1 F1 0F
	ora ($4E.b),Y		; 11 4E
	jmp $0EB4.w		; 4C B4 0E
	sbc $F1101F.l,X		; FF 1F 10 F1
	ora $E4.b		; 05 E4
	lda ($B4.b),Y		; B1 B4
	sbc $FF02F0.l		; EF F0 02 FF
	ora ($5D.b),Y		; 11 5D
	phy		; 5A
	asl $E1B4.w,X		; 1E B4 E1
	sbc ($1F.b),Y		; F1 1F
	sbc ($15.b),Y		; F1 15
	sbc $CF.b,S		; E3 CF
	tsb $3EB4.w		; 0C B4 3E
	jsr $13FF.w		; 20 FF 13
	ora ($FF.b)		; 12 FF
	cmp ($C4.b,X)		; C1 C4
	ldy $E2.b,X		; B4 E2
	inc $5F11.w,X		; FE 11 5F
	bit $E1FE.w,X		; 3C FE E1
	ora ($B4.b),Y		; 11 B4
	inc $2403.w,X		; FE 03 24
	sbc $01D3CF.l,X		; FF CF D3 01
	sbc $14B4.w,X		; FD B4 14
	and ($EF.b,S),Y		; 33 EF
	bcs -45.b		; B0 D3
	ora ($FD.b,X)		; 01 FD
	trb $C4.b		; 14 C4
	ora ($FF.b)		; 12 FF
	cpx #$F1.b		; E0 F1
	brk $0E.b		; 00 0E
	ora ($F4.b,S),Y		; 13 F4
	cpy $D0.b		; C4 D0
	sbc $FF0001.l		; EF 01 00 FF
	and $E5.b,S		; 23 E5
	lda ($C4.b),Y		; B1 C4
	inc $0020.w		; EE 20 00
	cpx #$24.b		; E0 24
	cmp $B0.b,X		; D5 B0
	inc $6EB4.w,X		; FE B4 6E
	asl $55D0.w,X		; 1E D0 55
	ora ($BD.b),Y		; 11 BD
	ora $C45F.w		; 0D 5F C4
	beq -31.b		; F0 E1
	lsr $0E5C.w		; 4E 5C 0E
	sbc ($01.b)		; F2 01
	sbc $4EF2C4.l		; EF C4 F2 4E
	jmp $D4F0.w		; 4C F0 D4
	beq  -2.b		; F0 FE
	trb $C4.b		; 14 C4
	pea $EFC0.w		; F4 C0 EF
	jsr $EF1F.w		; 20 1F EF
	and ($F2.b,S),Y		; 33 F2
	cpy $DE.b		; C4 DE
	asl $0F3F.w,X		; 1E 3F 0F
	sep #$4D		; E2 4D
	rtl		; 6B

	beq -60.b		; F0 C4
	pei ($F0.b)		; D4 F0
	sbc $EF0303.l,X		; FF 03 03 EF
	cpx #$01.b		; E0 01
	bcs  30.b		; B0 1E
	wai		; CB
	trb $65.b		; 14 65
	ora $10ED.w		; 0D ED 10
	jmp.w [$C3B0]		; DC B0 C3
	lsr $4E.b		; 46 4E
	jsr ($ED01.w,X)		; FC 01 ED
	lda $0FC446.l,X		; BF 46 C4 0F
.ACCU 16
	rep #$E3		; C2 E3
	asl $5FFF.w		; 0E FF 5F
	and $C00E.w,X		; 3D 0E C0
	sbc $E3EE10.l,X		; FF 10 EE E3
	ora $1F.b		; 05 1F
	inc $C010.w,X		; FE 10 C0
	sbc $4132DF.l,X		; FF DF 32 41
	cpx #$E1.b		; E0 E1
	asl $C0FD.w		; 0E FD C0
	ora ($41.b),Y		; 11 41
	asl $00FF.w		; 0E FF 00
	inc $05E3.w		; EE E3 05
	cpy #$0F.b		; C0 0F
	inc $FE10.w,X		; FE 10 FE
	cmp $E04032.l,X		; DF 32 40 E0
	cpy #$E1.b		; C0 E1
	asl $21ED.w		; 0E ED 21
	eor ($0E.b,X)		; 41 0E
	beq  16.b		; F0 10
	cpy #$ED.b		; C0 ED
	cpx $15.b		; E4 15
	ora $FE10FE.l		; 0F FE 10 FE
	bne -60.b		; D0 C4
	bmi  14.b		; 30 0E
	cmp ($F2.b)		; D2 F2
	asl $4FF0.w		; 0E F0 4F
	jmp $0EC0.w		; 4C C0 0E
	cpx #$00.b		; E0 00
	sbc $15E3.w		; ED E3 15
	asl $B0FE.w		; 0E FE B0
	and ($FC.b),Y		; 31 FC
	ldy #$56.b		; A0 56
	eor ($CF.b),Y		; 51 CF
	sbc $0D.b,S		; E3 0D
	cpy #$DE.b		; C0 DE
	and ($50.b,X)		; 21 50
	asl $10E1.w		; 0E E1 10
	sbc $C4F4.w		; ED F4 C4
	sbc $BF.b,S		; E3 BF
	asl $FE4F.w,X		; 1E 4F FE
	pea $0D20.w		; F4 20 0D
	cpy $E2.b		; C4 E2
	sbc ($FE.b,S),Y		; F3 FE
	beq  64.b		; F0 40
	bit $12FE.w,X		; 3C FE 12
	cpy $1F.b		; C4 1F
	cmp $BFF315.l,X		; DF 15 F3 BF
	sbc ($3F.b),Y		; F1 3F
	ora $DFC0.w		; 0D C0 DF
	.db $42, $5F		; 42 5F
	inc $10E2.w		; EE E2 10
	sbc $C0F4.w		; ED F4 C0
	and $FE.b		; 25 FE
	sbc $C00D21.l		; EF 21 0D C0
	eor $5F.b,S		; 43 5F
	cpy #$EE.b		; C0 EE
	sbc ($10.b)		; F2 10
	jmp.w [$35F4]		; DC F4 35
	inc $C0EF.w,X		; FE EF C0
	and ($0D.b,X)		; 21 0D
	cmp $EE5033.l		; CF 33 50 EE
	sbc ($10.b)		; F2 10
	clv		; B8
	cmp ($56.b)		; D2 56
	lda $34B0.w,X		; BD B0 34
	bpl -82.b		; 10 AE
	trb $C0.b		; 14 C0
	ora $34.b,X		; 15 34
	sbc $31FF.w		; ED FF 31
	sbc $34CF.w,X		; FD CF 34
	cpy $1B.b		; C4 1B
	sbc $DE0F13.l,X		; FF 13 0F DE
	trb $5E.b		; 14 5E
	phd		; 0B
	cpy $E1.b		; C4 E1
	and $FE.b,S		; 23 FE
	dec $4124.w,X		; DE 24 41
	dec $C4C1.w		; CE C1 C4
	and ($2D.b)		; 32 2D
	dec $4303.w,X		; DE 03 43
	sbc $24CF.w		; ED CF 24
	cpy $2F.b		; C4 2F
	cmp $44F2.w		; CD F2 44
	tas		; 1B
	xce		; FB
	bit $21.b		; 24 21
	cpy $DC.b		; C4 DC
	sbc ($33.b,X)		; E1 33
	bmi -50.b		; 30 CE
.ACCU 8
	sep #$22		; E2 22
	ora $DFC4.w		; 0D C4 DF
	ora ($31.b)		; 12 31
	ora $3FF2B1.l,X		; 1F B1 F2 3F
	sbc $BDC0.w,X		; FD C0 BD
	sbc ($23.b)		; F2 23
	eor $030D.w		; 4D 0D 03
	ora ($EC.b),Y		; 11 EC
	bcs -83.b		; B0 AD
	bit $53.b		; 24 53
	jmp $241F.w		; 4C 1F 24
	ora $E0B0BA.l		; 0F BA B0 E0
	and ($12.b,X)		; 21 12
	eor $F0F230.l		; 4F 30 F2 F0
	jmp.w [$20B4]		; DC B4 20
	and $3B4922.l		; 2F 22 49 3B
	tsb $E2.b		; 04 E2
	cmp $DDB0.w,X		; DD B0 DD
	brk $23.b		; 00 23
	adc $13F12C.l		; 6F 2C F1 13
	sbc $CDB0.w,X		; FD B0 CD
	sbc ($21.b),Y		; F1 21
	and $E3.b		; 25 E3
	beq  63.b		; F0 3F
	ora $F1B4.w,X		; 1D B4 F1
	ora ($00.b)		; 12 00
	sbc ($4B.b,S),Y		; F3 4B
	bit $E1F2.w,X		; 3C F2 E1
	ldy $ED.b		; A4 ED
	bpl  18.b		; 10 12
	jsr $0321.w		; 20 21 03
	ldx #$CF.b		; A2 CF
	ldy $0F.b,X		; B4 0F
	brk $01.b		; 00 01
	ora ($10.b,X)		; 01 10
	brk $03.b		; 00 03
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	cmp $F11F1F.l,X		; DF 1F 1F F1
	ora ($12.b)		; 12 12
	and $A2A4C0.l		; 2F C0 A4 A2
	rti		; 40

	plx		; FA
	lda ($36.b),Y		; B1 36
	rti		; 40

	inc $B4F6.w		; EE F6 B4
	jmp $E02B.w		; 4C 2B E0
	sbc ($10.b)		; F2 10
	and $B411F1.l		; 2F F1 11 B4
	ora ($CF.b)		; 12 CF
	bne  49.b		; D0 31
	sbc $23D0.w,X		; FD D0 23
	and ($94.b),Y		; 31 94
	lda ($5A.b,X)		; A1 5A
	jmp $BEBF.w		; 4C BF BE
	dex		; CA
	ora ($35.b,X)		; 01 35
	tay		; A8
	ora $CE4E00.l		; 0F 00 4E CE
	cmp $16.b,S		; C3 16
	bpl -34.b		; 10 DE
	tay		; A8
	ora ($11.b),Y		; 11 11
	inc $42DC.w,X		; FE DC 42
	bvs -35.b		; 70 DD
.ACCU 16
	rep #$A8		; C2 A8
	and ($2D.b)		; 32 2D
	cpy $45F5.w		; CC F5 45
	jsr ($23CE.w,X)		; FC CE 23
	clv		; B8
	jsr $E1FC.w		; 20 FC E1
	bit $1F.b		; 24 1F
	cmp $A82102.l,X		; DF 02 21 A8
	stz $57CF.w		; 9C CF 57
	bmi -37.b		; 30 DB
	ora ($32.b,X)		; 01 32
	cpx $EEA8.w		; EC A8 EE
	bit $30.b,X		; 34 30
	sbc $11F2.w		; ED F2 11
	sbc $3298E0.l,X		; FF E0 98 32
	and ($FE.b,X)		; 21 FE
	sbc $000000.l		; EF 00 00 00
	and ($88.b,X)		; 21 88
	rti		; 40

	and $FFDD.w		; 2D DD FF
	sbc ($C5.b,S),Y		; F3 C5
	dec $8451.w,X		; DE 51 84
	and $14.b		; 25 14
	ora ($0F.b),Y		; 11 0F
	cop $13.b		; 02 13
	ora ($3E.b),Y		; 11 3E
	tya		; 98
	trb $0212.w		; 1C 12 02
	sbc $1F3F10.l		; EF 10 3F 1F
	cpx #$4288.w		; E0 88 42
	bit $10F9.w,X		; 3C F9 10
	.db $42, $2C		; 42 2C
	sbc ($E5.b,X)		; E1 E5
	sty $13.b		; 84 13
	and $6F10EE.l,X		; 3F EE 10 6F
	rol $24D1.w		; 2E D1 24
	dey		; 88
	sbc $F4A2.w		; ED A2 F4
	adc $F1FD.w		; 6D FD F1
	and ($0E.b)		; 32 0E
	sty $DF.b		; 84 DF
	tsb $21.b		; 04 21
	cmp $DF2203.l,X		; DF 03 22 DF
	cpx $2E88.w		; EC 88 2E
	jsr $0401.w		; 20 01 04
	cmp $3F3E1D.l,X		; DF 1D 3E 3F
	sty $0F.b		; 84 0F
	jsl $A0E211.l		; 22 11 E2 A0
	bne  17.b		; D0 11
	bpl 116.b		; 10 74
	lda $40EF.w		; AD EF 40
	jsr ($14D2.w,X)		; FC D2 14
	adc ($3C.b,X)		; 61 3C
	sei		; 78
	sbc ($50.b),Y		; F1 50
	asl $E4C3.w		; 0E C3 E4
	tsb $220C.w		; 0C 0C 22
	sei		; 78
	cop $E2.b		; 02 E2
	cmp ($13.b,X)		; C1 13
	ora $2BE2E0.l		; 0F E0 E2 2B
	stz $4C.b,X		; 74 4C
	brk $DF.b		; 00 DF
	sbc $D00F.w		; ED 0F D0
	ora $F17412.l,X		; 1F 12 74 F1
	ora $E31F1D.l		; 0F 1D 1F E3
	cpx #$1EEC.w		; E0 EC 1E
	stz $EF.b,X		; 74 EF
	cpy #$21E0.w		; C0 E0 21
	sbc ($DF.b),Y		; F1 DF
	cmp ($22.b,S),Y		; D3 22
	stz $32.b		; 64 32
	sbc ($0D.b,S),Y		; F3 0D
	.db $42, $43		; 42 43
	inc $33A2.w		; EE A2 33
	adc $1D.b		; 65 1D
	cpx $5100.w		; EC 00 51
	ora $30D0.w		; 0D D0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $3E.b,X		; 74 3E
	ror A		; 6A
	jsr $3CD0.w		; 20 D0 3C
	sbc ($B2.b,X)		; E1 B2
	pea $0280.w		; F4 80 02
	and ($35.b,S),Y		; 33 35
	eor [$F3.b]		; 47 F3
	brk $F2.b		; 00 F2
	ora $DEDF80.l,X		; 1F 80 DF DE
	and $201452.l		; 2F 52 14 20
	cop $E2.b		; 02 E2
	bra -80.b		; 80 B0
	lda $4462F2.l		; AF F2 62 44
	ora $900501.l,X		; 1F 01 05 90
	cpx #$E2EF.w		; E0 EF E2
	pea $1F01.w		; F4 01 1F
	brk $3E.b		; 00 3E
	sty $30.b,X		; 94 30
	cmp ($00.b),Y		; D1 00
	and $FF104C.l		; 2F 4C 10 FF
	ora ($90.b,S),Y		; 13 90
	sbc $1F.b,S		; E3 1F
	ora $034F10.l		; 0F 10 4F 03
	sbc $0590F1.l,X		; FF F1 90 05
	beq  63.b		; F0 3F
	sbc $215E2F.l,X		; FF 2F 5E 21
	inc $1090.w		; EE 90 10
	pea $E1E6.w		; F4 E6 E1
	cop $E2.b		; 02 E2
	ora ($3C.b,S),Y		; 13 3C
	bcc  62.b		; 90 3E
	asl $4F3E.w		; 0E 3E 4F
	jmp $022111.l		; 5C 11 21 02
	bcc -14.b		; 90 F2
	tsa		; 3B
	ora ($00.b),Y		; 11 00
	bmi  20.b		; 30 14
	bne  28.b		; D0 1C
	bcc -15.b		; 90 F1
	and ($3F.b,X)		; 21 3F
	bit $BF.b,X		; 34 BF
	brk $03.b		; 00 03
	sbc ($90.b,S),Y		; F3 90
	jmp $CF2F.w		; 4C 2F CF
	and $21.b,S		; 23 21
	ora $0B.b,X		; 15 0B
	ora $F190.w		; 0D 90 F1
	and ($21.b),Y		; 31 21
	tsb $BF.b		; 04 BF
	sbc ($13.b),Y		; F1 13
	ora ($90.b,X)		; 01 90
	and $D03D.w,X		; 3D 3D D0
	and $21.b,S		; 23 21
	ora ($C0.b,S),Y		; 13 C0
	cpx $0290.w		; EC 90 02
	eor ($21.b),Y		; 51 21
	bit $B1FF.w,X		; 3C FF B1
	asl $12.b		; 06 12
	bcc  19.b		; 90 13
	dec $100A.w		; CE 0A 10
	adc ($21.b),Y		; 71 21
	and $A0D0.w,X		; 3D D0 A0
	bne   3.b		; D0 03
	ora ($01.b,X)		; 01 01
	inc $101D.w		; EE 1D 10
	rti		; 40

	ldy #$2F11.w		; A0 11 2F
	sbc ($D1.b,X)		; E1 D1
	tsb $01.b		; 04 01
	ora ($FE.b)		; 12 FE
	ldy #$0F1C.w		; A0 1C 0F
	rti		; 40

	ora ($20.b),Y		; 11 20
	cmp ($D1.b),Y		; D1 D1
	pea $01A0.w		; F4 A0 01
	ora ($0D.b)		; 12 0D
	ora $411F.w,X		; 1D 1F 41
	bpl  33.b		; 10 21
	ldy #$D1C1.w		; A0 C1 D1
	pea $0101.w		; F4 01 01
	trb $1F1D.w		; 1C 1D 1F
	ldy #$0030.w		; A0 30 00
	ora ($C1.b)		; 12 C1
	cmp ($F4.b)		; D2 F4
	brk $F2.b		; 00 F2
	ldy #$1E1C.w		; A0 1C 1E
	and $200F40.l		; 2F 40 0F 20
	cmp ($E2.b,X)		; C1 E2
	ldy #$0004.w		; A0 04 00
.ACCU 8
.INDEX 8
	sep #$FD		; E2 FD
	asl $4120.w		; 0E 20 41
	inc $3EA0.w,X		; FE A0 3E
	cpx #$F2.b		; E0 F2
	trb $1F.b		; 14 1F
	cmp ($CF.b,S),Y		; D3 CF
	ora $4112A0.l		; 0F A0 12 41
	sbc $1F2A.w		; ED 2A 1F
	ora ($44.b),Y		; 11 44
	and $E1B0.w		; 2D B0 E1
	cmp ($F1.b,X)		; C1 F1
	cop $11.b		; 02 11
	sbc $A01F0E.l,X		; FF 0E 1F A0
	jsr $2D52.w		; 20 52 2D
	dec $F3D3.w,X		; DE D3 F3
	ora $12.b		; 05 12
	ldy #$DC.b		; A0 DC
	cpy #$1F.b		; C0 1F
	and ($53.b)		; 32 53
	and $B00CBA.l		; 2F BA 0C B0
	ora ($32.b),Y		; 11 32
	and ($0C.b),Y		; 31 0C
	dec $14E3.w		; CE E3 14
	bit $B4.b		; 24 B4
	cmp $0324CE.l,X		; DF CE 24 03
	ora ($EE.b),Y		; 11 EE
	dec $C8D2.w,X		; DE D2 C8
	and $2D3C.w		; 2D 3C 2D
	ora $C32211.l,X		; 1F 11 22 C3
	lda ($B8.b)		; B2 B8
	ldy $F3.b		; A4 F3
	bit $1A.b		; 24 1A
	tas		; 1B
	asl $4122.w		; 0E 22 41
	clv		; B8
	lsr A		; 4A
	inc A		; 1A
	beq  17.b		; F0 11
	eor $10.b,S		; 43 10
	ldx $C4C1.w,Y		; BE C1 C4
	bne  18.b		; D0 12
	bit $FF.b,X		; 34 FF
	dec $12D0.w,X		; DE D0 12
	bit $B4.b,X		; 34 B4
	cmp $34D0AB.l		; CF AB D0 34
	ror $BE.b		; 66 BE
	ldy $B4E2.w		; AC E2 B4
	mvp $AE,$44		; 44 44 AE
	ldx WRMPYB.w		; AE 03 42
	and ($A0.b,X)		; 21 A0
	bcs -19.b		; B0 ED
	sbc $0F0200.l,X		; FF 00 02 0F
	asl $F0.b		; 06 F0
	stp		; DB
	bcs -48.b		; B0 D0
	and ($0E.b)		; 32 0E
	.db $42, $0F		; 42 0F
	ldy $2001.w,X		; BC 01 20
	cpy #$F1.b		; C0 F1
	eor $12DF0D.l		; 4F 0D DF 12
	ora $C011E2.l,X		; 1F E2 11 C0
	ora $11E0.w		; 0D E0 11
	ora $EEF004.l		; 0F 04 F0 EE
	ora ($B0.b,X)		; 01 B0
	jsr $64CC.w		; 20 CC 64
	and $1F02AC.l,X		; 3F AC 02 1F
	cmp $0E50C0.l		; CF C0 50 0E
	cmp $E21F11.l,X		; DF 11 1F E2
	and ($FD.b),Y		; 31 FD
	cpy #$E1.b		; C0 E1
	ora ($0E.b),Y		; 11 0E
	ora $00.b		; 05 00
	sbc $11F1.w		; ED F1 11
	cpy #$FE.b		; C0 FE
	and $0F.b,S		; 23 0F
	dec $1F22.w,X		; DE 22 1F
	bne  80.b		; D0 50
	bcs  28.b		; B0 1C
	lda $C70B32.l		; AF 32 0B C7
	.db $62, $E9, $B3		; 62 E9 B3
	cpy $0F.b		; C4 0F
	sbc $DFCF35.l		; EF 35 CF DF
	and ($FF.b,S),Y		; 33 FF
	bne -64.b		; D0 C0
	bit $1F.b,X		; 34 1F
	cmp $1F13.w		; CD 13 1F
	cmp $C00E53.l		; CF 53 0E C0
	dec $1D33.w		; CE 33 1D
	cpy #$63.b		; C0 63
	ora $43CF.w		; 0D CF 43
	cpy $DD.b		; C4 DD
	inc $4B.b,X		; F6 4B
	dec $2E14.w,X		; DE 14 2E
	dec $C026.w,X		; DE 26 C0
	rts		; 60

	stp		; DB
	sbc $30.b,S		; E3 30
	jmp.w [$4F06]		; DC 06 4F
	wai		; CB
	cpy $45.b		; C4 45
	jsr ($56D0.w,X)		; FC D0 56
	wai		; CB
	cmp ($45.b),Y		; D1 45
	jmp.w [$D2C4]		; DC C4 D2
	stz $AB.b		; 64 AB
	sbc ($53.b)		; F2 53
	cpy $63E3.w		; CC E3 63
	cpy #$FB.b		; C0 FB
	lda $B0FC45.l,X		; BF 45 FC B0
	ror $EA.b		; 66 EA
	cpy #$C0.b		; C0 C0
	mvn $C1,$EB		; 54 EB C1
	ror $DA.b		; 66 DA
	cmp ($63.b,X)		; C1 63
	stp		; DB
	cpy #$D2.b		; C0 D2
	adc $CA.b,X		; 75 CA
.ACCU 16
	rep #$63		; C2 63
	stp		; DB
	cmp ($65.b)		; D2 65
	cpy #$CA.b		; C0 CA
	cmp ($53.b)		; D2 53
	phx		; DA
	cmp ($55.b)		; D2 55
	sbc #$C0C2.w		; E9 C2 C0
	mvn $D2,$EA		; 54 EA D2
	mvp $B1,$1A		; 44 1A B1
	mvp $C0,$FB		; 44 FB C0
	cmp ($44.b,X)		; C1 44
	tsa		; 3B
	lda $BF1C34.l,X		; BF 34 1C BF
	bit $C0.b,X		; 34 C0
	and $3E23AD.l,X		; 3F AD 23 3E
	ldx $3224.w,Y		; BE 24 32
	ldy $13C0.w,X		; BC C0 13
	bmi -51.b		; 30 CD
	ora $33.b,S		; 03 33
	stp		; DB
	sbc ($32.b,S),Y		; F3 32
	cpy #$DB.b		; C0 DB
	sbc ($33.b)		; F2 33
	tas		; 1B
	cmp ($33.b),Y		; D1 33
	jsr ($C0D1.w,X)		; FC D1 C0
	and ($2C.b,S),Y		; 33 2C
	cmp $CF1D33.l		; CF 33 1D CF
	and $20.b,S		; 23 20
	cpy #$BD.b		; C0 BD
	and $3F.b,S		; 23 3F
	dec $3213.w		; CE 13 32
	jmp.w [$C003]		; DC 03 C0
	and ($DC.b),Y		; 31 DC
	sbc ($32.b)		; F2 32
	tas		; 1B
	cmp ($33.b),Y		; D1 33
	tsb $13C4.w		; 0C C4 13
	jsr $D20D.w		; 20 0D D2
	rti		; 40

	tsb $31E2.w		; 0C E2 31
	cpy #$22.b		; C0 22
	jmp.w [$2102]		; DC 02 21
	jmp.w [$32F2]		; DC F2 32
	trb $D1C0.w		; 1C C0 D1
	jsl $23D00D.l		; 22 0D D0 23
	ora ($CE.b),Y		; 11 CE
	ora ($B0.b)		; 12 B0
	rti		; 40

	plb		; AB
	tsb $42.b		; 04 42
	rol A		; 2A
	lda ($43.b)		; B2 43
	phd		; 0B
	bcs -65.b		; B0 BF
	bit $12.b,X		; 34 12
	tyx		; BB
	ora ($31.b,S),Y		; 13 31
	wai		; CB
.ACCU 8
.INDEX 8
	sep #$B4		; E2 B4
	rol $D41B.w		; 2E 1B D4
	eor $24D31B.l		; 4F 1B D3 24
	beq -80.b		; F0 B0
	ora $24D2.w,Y		; 19 D2 24
	xce		; FB
	dec $2334.w		; CE 34 23
	plb		; AB
	bcs   2.b		; B0 02
	.db $42, $DB		; 42 DB
	cmp ($42.b),Y		; D1 42
	ora ($AD.b),Y		; 11 AD
	and ($B0.b,X)		; 21 B0
	and ($CD.b),Y		; 31 CD
	sbc ($32.b,X)		; E1 32
	jsl $4211BC.l		; 22 BC 11 42
	bcs -35.b		; B0 DD
	cmp $CB1432.l,X		; DF 32 14 CB
	brk $34.b		; 00 34
	sbc $DDB0.w,X		; FD B0 DD
	and $14.b,S		; 23 14
	asl A		; 0A
	bne   5.b		; D0 05
	rol $B0EC.w		; 2E EC B0
.ACCU 8
	sep #$21		; E2 21
	and ($BD.b)		; 32 BD
	sbc $BC0F43.l,X		; FF 43 0F BC
	bcs  18.b		; B0 12
	bit $2B.b,X		; 34 2B
	dec $40F5.w		; CE F5 40
	xce		; FB
	cpy #$B0.b		; C0 B0
	and $53.b,S		; 23 53
	wai		; CB
	cmp $BB1054.l,X		; DF 54 10 BB
	sbc ($B8.b),Y		; F1 B8
	ora ($CB.b,X)		; 01 CB
	eor ($14.b),Y		; 51 14
	dec $15FD.w,X		; DE FD 15
	sbc ($B4.b,S),Y		; F3 B4
	eor ($AE.b,X)		; 41 AE
	cmp $DD2043.l,X		; DF 43 20 DD
	beq  36.b		; F0 24
	ldy $5D.b		; A4 5D
	dex		; CA
	lda ($45.b,X)		; A1 45
	rti		; 40

	dec $30C0.w,X		; DE C0 30
	ldy $31.b		; A4 31
	bne -18.b		; D0 EE
	ora $BD3413.l,X		; 1F 13 34 BD
	jsr ($B0A0.w,X)		; FC A0 B0
	ora ($3F.b,X)		; 01 3F
	cpx #$E1.b		; E0 E1
	and $90F2F1.l		; 2F F1 F2 90
	lsr $DF0F.w		; 4E 0F DF
	asl $DFFF.w,X		; 1E FF DF
	ora ($30.b),Y		; 11 30
	sty $C4.b		; 84 C4
	sbc $F241.w,X		; FD 41 F2
	jsr ($03D0.w,X)		; FC D0 03
	.db $42, $88		; 42 88
	tsb $44C2.w		; 0C C2 44
	asl $F0DE.w		; 0E DE F0
	eor ($4C.b),Y		; 51 4C
	dey		; 88
	sbc $F3E4.w		; ED E4 F3
	rol $D4FD.w		; 2E FD D4
	and ($1D.b),Y		; 31 1D
	sty $1C.b		; 84 1C
	beq   1.b		; F0 01
	beq   0.b		; F0 00
	beq -17.b		; F0 EF
	rti		; 40

	sty $13.b		; 84 13
	dec JOY4L.w		; CE 1E 42
	cpx $53D0.w		; EC D0 53
	and $E1DD84.l		; 2F 84 DD E1
	and ($ED.b,S),Y		; 33 ED
	ora $0E02F4.l		; 0F F4 02 0E
	dey		; 88
	sbc ($35.b,X)		; E1 35
	bne -49.b		; D0 CF
	sbc ($20.b,S),Y		; F3 20
	asl $74EE.w,X		; 1E EE 74
	sbc $30.b		; E5 30
	asl $DE00.w,X		; 1E 00 DE
	sbc ($04.b),Y		; F1 04
	ora ($84.b)		; 12 84
	ora $04EE.w,X		; 1D EE 04
	jsr $D00E.w		; 20 0E D0
	cop $20.b		; 02 20
	stz $EF.b,X		; 74 EF
	cmp $DB4311.l,X		; DF 11 43 DB
	lda ($45.b),Y		; B1 45
	and $01AB74.l		; 2F 74 AB 01
	eor ($0D.b,S),Y		; 53 0D
	sbc $243E.w		; ED 3E 24
	brk $74.b		; 00 74
	sbc $42FF.w		; ED FF 42
	inc $220E.w		; EE 0E 22
	rol $70CE.w,X		; 3E CE 70
	inc $0C23.w		; EE 23 0C
	inc $0FF0.w		; EE F0 0F
	phd		; 0B
	cpx #$70.b		; E0 70
	cmp $FC101F.l,X		; DF 1F 10 FC
	lda $F031.w,X		; BD 31 F0
	sbc $4E64.w		; ED 64 4E
	eor ($FB.b,S),Y		; 53 FB
	tsb $1012.w		; 0C 12 10
	ror A		; 6A
	cmp $C170.w		; CD 70 C1
	and ($1D.b),Y		; 31 1D
	cmp $FF02FF.l,X		; DF FF 02 FF
	stp		; DB
	bvs -16.b		; 70 F0
	ora $0D.b,X		; 15 0D
	stp		; DB
	cmp ($32.b,S),Y		; D3 32
	xce		; FB
	cmp $1FF470.l		; CF 70 F4 1F
	sbc $1F0FFF.l,X		; FF FF 0F 1F
	sbc ($0D.b),Y		; F1 0D
	stz $00.b		; 64 00
	rts		; 60

	ora $0FD2.w,X		; 1D D2 0F
	and $64A400.l		; 2F 00 A4 64
	cop $00.b		; 02 00
	bcs  18.b		; B0 12
	cop $1D.b		; 02 1D
	sbc $106400.l,X		; FF 00 64 10
	bpl  -2.b		; 10 FE
	jsr $D003.w		; 20 03 D0
	sbc $2160F1.l		; EF F1 60 21
	and $13BDEE.l		; 2F EE BD 13
	and $DECB.w,X		; 3D CB DE
	rts		; 60

	adc $30.b,X		; 75 30
	tsx		; BA
	cmp $31.b,S		; C3 31
	ora #$9A.b		; 09 9A
	sbc ($64.b,X)		; E1 64
	bpl -49.b		; 10 CF
	cpx #$12.b		; E0 12
	bpl -32.b		; 10 E0
	cpy #$32.b		; C0 32
	stz $21.b		; 64 21
	and #$ED.b		; 29 ED
	eor $30.b,S		; 43 30
	ldy $22F4.w,X		; BC F4 22
	stz $1B.b		; 64 1B
	cmp $E3.b		; C5 E3
	rol $02EF.w		; 2E EF 02
	jsr $50EE.w		; 20 EE 50
	stp		; DB
	ldy $BE23.w,X		; BC 23 BE
	xba		; EB
	cpy $20D3.w		; CC D3 20
	rts		; 60

	jmp.w [$D221]		; DC 21 D2
	rol $1301.w		; 2E 01 13
	and ($1F.b)		; 32 1F
	bvc  34.b		; 50 22
	ora ($4D.b,S),Y		; 13 4D
	sbc $EEDD.w		; ED DD EE
	sbc $CE24FE.l,X		; FF FE 24 CE
	eor $3C.b		; 45 3C
	tsx		; BA
	cmp ($71.b)		; D2 71
	lda $50CE.w,X		; BD CE 50
	sbc $FFFFFF.l		; EF FF FF FF
	sbc ($B0.b),Y		; F1 B0
	asl $01.b		; 06 01
	sec		; 38
	cmp $4FF43C.l,X		; DF 3C F4 4F
	jmp.w [$1023]		; DC 23 10
	and $F3DC24.l,X		; 3F 24 DC F3
	rti		; 40

	ora $35FE12.l		; 0F 12 FE 35
	tsb $34.b		; 04 34
	jsr ($41E0.w,X)		; FC E0 41
	bpl   0.b		; 10 00
	ora ($11.b),Y		; 11 11
	brk $24.b		; 00 24
	beq   3.b		; F0 03
	and $14.b,S		; 23 14
	cmp ($E0.b,S),Y		; D3 E0
	rti		; 40

	cmp ($50.b,X)		; C1 50
	ora ($21.b),Y		; 11 21
	lda $47D4DC.l		; AF DC D4 47
	phy		; 5A
	sbc $0188.w,X		; FD 88 01
	brk $0F.b		; 00 0F
.ACCU 8
.INDEX 8
	sep #$F0		; E2 F0
	bit $CF.b,X		; 34 CF
	trb $F0B4.w		; 1C B4 F0
	sbc $F13113.l		; EF 13 31 F1
	dec $14EC.w		; CE EC 14
	cpy $51.b		; C4 51
	ora $140FDC.l		; 0F DC 0F 14
	eor $DD.b,S		; 43 DD
	xba		; EB
	cpy $21.b		; C4 21
	trb $31.b		; 14 31
	cmp $32DE.w		; CD DE 32
	jsl $FDC02E.l		; 22 2E C0 FD
	cmp $2222.w		; CD 22 22
	jsr $F0EF.w		; 20 EF F0
	and ($C4.b),Y		; 31 C4
	cpx #$14.b		; E0 14
	cmp ($FC.b),Y		; D1 FC
	rol $0612.w,X		; 3E 12 06
	ldx $EEC4.w,Y		; BE C4 EE
	and ($F2.b,S),Y		; 33 F2
	cmp ($0C.b)		; D2 0C
	jsr $D0F4.w		; 20 F4 D0
	cpy #$00.b		; C0 00
	rts		; 60

	ora $1F10C1.l		; 0F C1 10 1F
	bmi -16.b		; 30 F0
	cpy #$F0.b		; C0 F0
	and $F015FF.l		; 2F FF 15 F0
	inc $0F21.w		; EE 21 0F
	cpy #$E4.b		; C0 E4
	bpl  -2.b		; 10 FE
	ora $F0.b,S		; 03 F0
	sbc ($4F.b),Y		; F1 4F
	ora $0FE3C0.l		; 0F C0 E3 0F
	sbc $E0FE51.l,X		; FF 51 FE E0
	and $24C0FF.l,X		; 3F FF C0 24
	sbc $FF31EE.l,X		; FF EE 31 FF
	ora $0F.b		; 05 0F
	sbc $DD25B0.l		; EF B0 25 DD
	inc $6E.b		; E6 6E
	jmp.w [$FCF7]		; DC F7 FC
	sep #$C0		; E2 C0
	eor $2EF3FE.l,X		; 5F FE F3 2E
	beq  81.b		; F0 51
	inc $C0F1.w,X		; FE F1 C0
	rol $42E0.w,X		; 3E E0 42
	inc $3FF1.w,X		; FE F1 3F
	cpx #$33.b		; E0 33
	cpy #$FE.b		; C0 FE
	cpx #$4F.b		; E0 4F
	cmp $E0FE24.l,X		; DF 24 FE E0
	rti		; 40

	cpy #$DF.b		; C0 DF
	bit $FE.b		; 24 FE
	cpx #$30.b		; E0 30
	cmp $C0FE24.l,X		; DF 24 FE C0
	cpx #$30.b		; E0 30
	cmp $E1FE34.l,X		; DF 34 FE E1
	and $33C0DF.l,X		; 3F DF C0 33
	sbc $3EF1.w,X		; FD F1 3E
	bne  65.b		; D0 41
	sbc $C002.w,X		; FD 02 C0
	and $40E1.w		; 2D E1 40
	inc $0D03.w		; EE 03 0D
	sbc ($3F.b,S),Y		; F3 3F
	cpy #$EF.b		; C0 EF
	ora ($ED.b,S),Y		; 13 ED
	trb $0F.b		; 14 0F
	bne  34.b		; D0 22
	dec $24C0.w,X		; DE C0 24
	inc $3FE1.w,X		; FE E1 3F
	bne  66.b		; D0 42
	sbc $C001.w		; ED 01 C0
	rol $4FE1.w		; 2E E1 4F
	inc $0D13.w		; EE 13 0D
	tsb $1E.b		; 04 1E
	cpy #$D0.b		; C0 D0
	jsl $EE34CE.l		; 22 CE 34 EE
	sbc ($4D.b),Y		; F1 4D
	cmp ($C0.b)		; D2 C0
	eor $0C13ED.l,X		; 5F ED 13 0C
	pea $D02E.w		; F4 2E D0
	and $C0.b,S		; 23 C0
	dec $EE34.w		; CE 34 EE
	sbc ($3E.b,X)		; E1 3E
	cmp ($5E.b),Y		; D1 5E
	inc $13C0.w		; EE C0 13
	jsr ($0E05.w,X)		; FC 05 0E
	cpx #$21.b		; E0 21
	cmp $EEC042.l		; CF 42 C0 EE
	cop $2C.b		; 02 2C
	pea $E03D.w		; F4 3D E0
	ora ($CE.b)		; 12 CE
	cpy #$33.b		; C0 33
	inc $3DF1.w		; EE F1 3D
	sbc $4E.b,S		; E3 4E
	sbc $DDC013.l		; EF 13 C0 DD
	bit $EE.b		; 24 EE
	sbc ($3E.b),Y		; F1 3E
	cmp ($4E.b)		; D2 4E
	sbc $ED13C0.l		; EF C0 13 ED
	bit $EF.b		; 24 EF
	beq  62.b		; F0 3E
	cmp ($4E.b),Y		; D1 4E
	cpy #$FF.b		; C0 FF
	cop $FD.b		; 02 FD
	bit $EE.b		; 24 EE
	beq  47.b		; F0 2F
	cmp ($C0.b)		; D2 C0
	lsr $02EF.w		; 4E EF 02
	sbc $EF24.w		; ED 24 EF
	beq  46.b		; F0 2E
	bcs -76.b		; B0 B4
	tda		; 7B
	cmp $65BD15.l,X		; DF 15 BD 65
	ldx $C001.w,Y		; BE 01 C0
	and $1EF4.w		; 2D F4 1E
	beq  17.b		; F0 11
	bne  64.b		; D0 40
	sbc $0D01C0.l		; EF C0 01 0D
	trb $EF.b		; 14 EF
	beq  47.b		; F0 2F
	sbc ($4E.b,X)		; E1 4E
	bcs -33.b		; B0 DF
	tsb $DD.b		; 04 DD
	eor $BE.b		; 45 BE
	brk $3B.b		; 00 3B
	inc $C0.b,X		; F6 C0
	asl $10F0.w		; 0E F0 10
	cmp ($4E.b),Y		; D1 4E
	cpx #$01.b		; E0 01
	inc $55B0.w,X		; FE B0 55
	ldx $2B01.w,Y		; BE 01 2B
	sbc [$0C.b],Y		; F7 0C
	beq  32.b		; F0 20
	bcs -77.b		; B0 B3
	jmp ($02D0.w,X)		; 7C D0 02
	dec $BE53.w,X		; DE 53 BE
	ora ($C0.b),Y		; 11 C0
	asl $FE04.w		; 0E 04 FE
	ora ($1F.b,X)		; 01 1F
.ACCU 8
.INDEX 8
	sep #$3D		; E2 3D
	cpx #$C0.b		; E0 C0
	ora ($EF.b),Y		; 11 EF
	and ($DF.b)		; 32 DF
	ora ($0D.b,X)		; 01 0D
	tsb $FE.b		; 04 FE
	cpy #$01.b		; C0 01
	ora $E04ED2.l,X		; 1F D2 4E E0
	ora ($EE.b),Y		; 11 EE
	and $B0.b,S		; 23 B0
	lda $2B02.w,X		; BD 02 2B
	inc $3B.b		; E6 3B
	sbc ($22.b,X)		; E1 22
	lda $BE63B0.l		; AF B0 63 BE
	ora ($2A.b)		; 12 2A
	sbc [$3B.b],Y		; F7 3B
	cmp ($32.b),Y		; D1 32
	cpy #$DF.b		; C0 DF
	.db $42, $DE		; 42 DE
	ora ($1C.b),Y		; 11 1C
	pea $E02D.w		; F4 2D E0
	cpy #$21.b		; C0 21
	cmp $02DE33.l,X		; DF 33 DE 02
	and $4EE3.w		; 2D E3 4E
	cpy #$D0.b		; C0 D0
	jsl $ED24DD.l		; 22 DD 24 ED
	sbc ($2E.b)		; F2 2E
	cmp ($C0.b)		; D2 C0
	eor $FC22DF.l,X		; 5F DF 22 FC
	tsb $1D.b		; 04 1D
.ACCU 8
	sep #$20		; E2 20
	cpy #$CF.b		; C0 CF
	eor $DD.b,S		; 43 DD
	ora ($1C.b,S),Y		; 13 1C
	sbc $5E.b,S		; E3 5E
	cpy #$C0.b		; C0 C0
	and ($DC.b)		; 32 DC
	and $0C.b		; 25 0C
	sbc $2F.b,S		; E3 2F
	cpy #$43.b		; C0 43
	cpy #$CD.b		; C0 CD
	ora ($1C.b,S),Y		; 13 1C
	cmp ($5F.b,S),Y		; D3 5F
	cmp $C0FC32.l		; CF 32 FC C0
	ora $3C.b		; 05 3C
.ACCU 16
.INDEX 16
	rep #$31		; C2 31
	cmp $0B35.w		; CD 35 0B
	cpx $C0.b		; E4 C0
	and $DC44BF.l		; 2F BF 44 DC
	trb $1D.b		; 14 1D
	rep #$43		; C2 43
	cpy #$23CC.w		; C0 CC 23
	tsb $42E2.w		; 0C E2 42
	lda $FC33.w,X		; BD 33 FC
	cpy #$41E3.w		; C0 E3 41
	ldx $EC43.w,Y		; BE 43 EC
	sbc ($40.b,S),Y		; F3 40
	ldx $42C0.w,Y		; BE C0 42
	cpx $3003.w		; EC 03 30
	lda $03DD42.l,X		; BF 42 DD 03
	cpy #$BF20.w		; C0 20 BF
	.db $42, $ED		; 42 ED
	ora $21.b,S		; 03 21
	dec $C033.w		; CE 33 C0
	sbc $31F2.w		; ED F2 31
	cpx $FD23.w		; EC 23 FD
.ACCU 8
.INDEX 8
	sep #$31		; E2 31
	cpy #$FC.b		; C0 FC
	trb $0D.b		; 14 0D
	cmp ($31.b)		; D2 31
	tsb $1D04.w		; 0C 04 1D
	bcs -95.b		; B0 A1
	stz $0A.b		; 64 0A
	cmp $5D.b		; C5 5D
	lda $0F55.w		; AD 55 0F
	bcs -111.b		; B0 91
	rts		; 60

	tyx		; BB
	rol $20.b,X		; 36 20
	lda $CB53.w,X		; BD 53 CB
	bcs -28.b		; B0 E4
	rti		; 40

	inc A		; 1A
	asl $0C.b		; 06 0C
	bcs  82.b		; B0 52
	brk $B0.b		; 00 B0
	ldx #$5E.b		; A2 5E
	stp		; DB
	and $21.b		; 25 21
	wai		; CB
	eor $DC.b		; 45 DC
	bcs -61.b		; B0 C3
	eor ($1C.b),Y		; 51 1C
	pei ($3D.b)		; D4 3D
	cmp $1113.w,X		; DD 13 11
	bcs  -2.b		; B0 FE
	sbc ($10.b),Y		; F1 10
	dec $30F2.w,X		; DE F2 30
	ora $CE.b,S		; 03 CE
	bcs  49.b		; B0 31
	sbc $40D2.w		; ED D2 40
	ora ($BE.b,S),Y		; 13 BE
	and ($FD.b),Y		; 31 FD
	bcs -62.b		; B0 C2
	bvc   3.b		; 50 03
	cmp $DE32.w		; CD 32 DE
	cmp ($40.b)		; D2 40
	bcs   3.b		; B0 03
	tas		; 1B
	sbc ($00.b)		; F2 00
	ldx $0143.w,Y		; BE 43 01
	pld		; 2B
	bcs -29.b		; B0 E3
	asl $34DD.w,X		; 1E DD 34
	beq  50.b		; F0 32
	lda $0CB03F.l,X		; BF 3F B0 0C
	cpx $20.b		; E4 20
	trb $DB.b		; 14 DB
	ora ($0E.b,S),Y		; 13 0E
	lda ($B0.b),Y		; B1 B0
	eor ($01.b,X)		; 41 01
	jmp $DC3FB2.l		; 5C B2 3F DC
	ora $1F.b,X		; 15 1F
	bcs   4.b		; B0 04
	jmp.w [$0D12]		; DC 12 0D
.INDEX 16
	rep #$50		; C2 50
	beq  93.b		; F0 5D
	bcs -63.b		; B0 C1
	jsr $14EC.w		; 20 EC 14
	ora $F3FA04.l		; 0F 04 FA F3
	bcs  15.b		; B0 0F
	bcs  65.b		; B0 41
	sbc $21BD33.l,X		; FF 33 BD 21
	ora $C1B0.w,X		; 1D B0 C1
	eor ($EF.b,X)		; 41 EF
	and $DA.b,X		; 35 DA
	tsb $1E.b		; 04 1E
	cmp $FF21C0.l		; CF C0 21 FF
	cop $10.b		; 02 10
	cmp $02EF31.l		; CF 31 EF 02
	bcs  30.b		; B0 1E
	sbc ($41.b)		; F2 41
	lda $0D33.w		; AD 33 0D
	cmp ($2F.b),Y		; D1 2F
	bcs -17.b		; B0 EF
	ora ($31.b,S),Y		; 13 31
	ldx $DE41.w		; AE 41 DE
	sbc ($1F.b)		; F2 1F
	bcs -15.b		; B0 F1
	and $DB.b,S		; 23 DB
	trb $1E.b		; 14 1E
	cpy #$EE30.w		; C0 30 EE
	ldy #$2025.w		; A0 25 20
	tsa		; 3B
	cmp $0B.b,S		; C3 0B
	cpx #$EE22.w		; E0 22 EE
	bcs  17.b		; B0 11
	jsl $0E12EC.l		; 22 EC 12 0E
	cmp $A0EF21.l,X		; DF 21 EF A0
	and $33.b,S		; 23 33
	bit $2CB2.w		; 2C B2 2C
	cpx #$FF01.w		; E0 01 FF
	ldy #$1312.w		; A0 12 13
	and $10C0.w,X		; 3D C0 10
	sbc $20D1.w,X		; FD D1 20
	ldy #$14EF.w		; A0 EF 14
	and ($DC.b)		; 32 DC
	ora ($FF.b),Y		; 11 FF
	sbc $E5840F.l		; EF 0F 84 E5
	bmi -31.b		; 30 E1
	eor ($AD.b),Y		; 51 AD
	and ($BC.b)		; 32 BC
	ora ($94.b,X)		; 01 94
	and $DF40D2.l		; 2F D2 40 DF
	and $2E.b,S		; 23 2E
	bne  46.b		; D0 2E
	sty $D0.b,X		; 94 D0
	ora ($1D.b),Y		; 11 1D
	sbc $2E.b		; E5 2E
	cmp ($13.b),Y		; D1 13
	ora $FF90.w		; 0D 90 FF
	bit $ED.b,X		; 34 ED
	inc $EEFF.w		; EE FF EE
	beq  34.b		; F0 22
	bcc  15.b		; 90 0F
	ora $50.b		; 05 50
	bpl  -1.b		; 10 FF
	ldx $CD20.w,Y		; BE 20 CD
	bcc  19.b		; 90 13
	ora $34F1.w		; 0D F1 34
	tsb $4DF4.w		; 0C F4 4D
	bcs -128.b		; B0 80
	tas		; 1B
	ldy $CCF1.w,X		; BC F1 CC
	and ($FF.b,S),Y		; 33 FF
	lsr $1E.b,X		; 56 1E
	sty $33.b,X		; 94 33
	cpy $3DF3.w		; CC F3 3D
	cmp $20.b,S		; C3 20
	inc $8033.w		; EE 33 80
	bit $31.b		; 24 31
	bit $AC66.w		; 2C 66 AC
	ora $80C0DA.l,X		; 1F DA C0 80
	sbc $00EE.w		; ED EE 00
	cmp ($11.b),Y		; D1 11
	ora $2F24.w		; 0D 24 2F
	sty $00.b		; 84 00
	and $2A22D0.l		; 2F D0 22 2A
	cmp $3E.b		; C5 3E
	asl $2681.w		; 0E 81 26
	jsr ($2013.w,X)		; FC 13 20
	beq  -3.b		; F0 FD
	cpx #$00FE.w		; E0 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	lda ($BC.b)		; B2 BC
	lda ($BC.b)		; B2 BC
	sty $CC.b		; 84 CC
	sty $CC.b		; 84 CC
	cmp $D2CFD2.l		; CF D2 CF D2
	phb		; 8B
	phx		; DA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	bra  32.b		; 80 20
	jsr $3808.w		; 20 08 38
	bra -120.b		; 80 88
	cop $14.b		; 02 14
	asl $90.b		; 06 90
	lda ($94.b,X)		; A1 94
	ldy $12.b		; A4 12
	mvp $44,$04		; 44 04 44
	ora ($03.b),Y		; 11 03
	brk $DB.b		; 00 DB
	trb $1000.w		; 1C 00 10
	tsb $10.b		; 04 10
	brk $14.b		; 00 14
	eor ($94.b,X)		; 41 94
	brk $20.b		; 00 20
	ldy #$00A8.w		; A0 A8 00
	plp		; 28
	ora ($02.b,X)		; 01 02
	cop $20.b		; 02 20
	tsb $42B8.w		; 0C B8 42
	rti		; 40

	brk $20.b		; 00 20
	ror A		; 6A
	jmp ($4206.w)		; 6C 06 42
	bit $37.b,X		; 34 37
	adc $000469.l		; 6F 69 04 00
	jsr $4010.w		; 20 10 40
	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sbc $FFFEFF.l		; EF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FB.l,X		; FF FB F7 FF
	sbc ($FF.b,S),Y		; F3 FF
	xce		; FB
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $42FFFF.l,X		; FF FF FF 42
	and [$91.b],Y		; 37 91
	ora $209902.l		; 0F 02 99 20
	plp		; 28
	cpy $C8.b		; C4 C8
	sta ($4C.b,X)		; 81 4C
	jsr $4002.w		; 20 02 40
	jsr $2040.w		; 20 40 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	trb $40.b		; 14 40
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	ora #$01.b		; 09 01
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	sty $DA6C.w		; 8C 6C DA
	bit $E3.b		; 24 E3
	cpy #$00C0.w		; C0 C0 00
	sty $6201.w		; 8C 01 62
	adc $08.b		; 65 08
	pei ($C0.b)		; D4 C0
	brk $40.b		; 00 40
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	bvc  32.b		; 50 20
	.db $82, $80, $00		; 82 80 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0202.w		; 20 02 02
	and ($00.b,X)		; 21 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rep #$88		; C2 88
	adc $004005.l,X		; 7F 05 40 00
	jsr $4452.w		; 20 52 44
	brk $46.b		; 00 46
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	bra  68.b		; 80 44
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora #$00.b		; 09 00
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ora [$00.b]		; 07 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $515F.w		; 8C 5F 51
	inc $564A.w,X		; FE 4A 56
	rol $A3.b,X		; 36 A3
	bcs -72.b		; B0 B8
	adc $20.b,S		; 63 20
	ora ($00.b,X)		; 01 00
	php		; 08
	mvp $04,$00		; 44 00 04
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
	eor #$00.b		; 49 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	and ($21.b,X)		; 21 21
	ldy #$0000.w		; A0 00 00
	brk $20.b		; 00 20
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
	ora [$20.b],Y		; 17 20
	cmp ($15.b,S),Y		; D3 15
	cop $70.b		; 02 70
	bmi -30.b		; 30 E2
	cpy $40.b		; C4 40
	ldy #$0028.w		; A0 28 00
	jsr $C540.w		; 20 40 C5
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	tsb $82.b		; 04 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $2200.w		; 20 00 22
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
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
	cmp $A4265C.l		; CF 5C 26 A4
	eor ($01.b,X)		; 41 01
	tsb $8061.w		; 0C 61 80
	sty $63.b,X		; 94 63
	clc		; 18
	jsr $8302.w		; 20 02 83
	bvc   3.b		; 50 03
	rti		; 40

	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	ora ($02.b)		; 12 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($C9.b)		; 52 C9
	cpx #$0009.w		; E0 09 00
	eor $5A02.w		; 4D 02 5A
	adc [$00.b],Y		; 77 00
	php		; 08
	php		; 08
	sta ($02.b,X)		; 81 02
	bcc   0.b		; 90 00
	brk $04.b		; 00 04
	bpl   4.b		; 10 04
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	tsb $C0.b		; 04 C0
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora #$20.b		; 09 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $87A583.l		; 8F 83 A5 87
	lda $2686.w,Y		; B9 86 26
	and #$08.b		; 29 08
	bra   0.b		; 80 00
	stz $41.b,X		; 74 41
	cop $AE.b		; 02 AE
	brk $48.b		; 00 48
	cop $13.b		; 02 13
	brk $40.b		; 00 40
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0000.w		; 1C 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ply		; 7A
	txs		; 9A
	trb $93.b		; 14 93
	iny		; C8
	php		; 08
	tsb $13.b		; 04 13
	php		; 08
	bpl   0.b		; 10 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sta ($00.b,X)		; 81 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $28.b,S		; 03 28
	tsb $00.b		; 04 00
	ora ($20.b,X)		; 01 20
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	brk $20.b		; 00 20
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
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
	.db $42, $F1		; 42 F1
	rol $B8.b		; 26 B8
	sec		; 38
	brk $48.b		; 00 48
	lda $80.b,S		; A3 80
	brk $13.b		; 00 13
	inc A		; 1A
	tsb $04.b		; 04 04
	bmi -124.b		; 30 84
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	sta ($00.b,X)		; 81 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
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
	asl $86.b,X		; 16 86
	eor $6E.b		; 45 6E
	ldx $4E.b		; A6 4E
	bit $0513.w,X		; 3C 13 05
	rts		; 60

	cmp ($40.b,X)		; C1 40
	asl $80.b		; 06 80
	rti		; 40

	php		; 08
	pha		; 48
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	rti		; 40

	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $02.b		; 00 02
	jsr $8300.w		; 20 00 83
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $C4.b,X		; 34 C4
	bra  42.b		; 80 2A
.ACCU 8
	sep #$AF		; E2 AF
	cmp ($A8.b,X)		; C1 A8
	mvp $84,$02		; 44 02 84
	brk $40.b		; 00 40
	brk $4A.b		; 00 4A
	brk $21.b		; 00 21
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bpl  64.b		; 10 40
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $30.b		; 00 30
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	dey		; 88
	ldy $A2.b,X		; B4 A2
	asl A		; 0A
	ora $1818.w		; 0D 18 18
	brk $44.b		; 00 44
	cli		; 58
	ora $00.b		; 05 00
	trb $00.b		; 14 00
	rti		; 40

	bit $04.b		; 24 04
	ora ($18.b,X)		; 01 18
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $44.b		; 84 44
	brk $41.b		; 00 41
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4F.b		; 00 4F
	nop		; EA
	.db $82, $94, $30		; 82 94 30
	and #$00.b		; 29 00
	bra  36.b		; 80 24
	asl $0000.w		; 0E 00 00
	pla		; 68
	bpl   4.b		; 10 04
	bra -90.b		; 80 A6
	cpy #$0200.w		; C0 00 02
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bvc  16.b		; 50 10
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	eor [$00.b]		; 47 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	brk $28.b		; 00 28
	ldy #$1802.w		; A0 02 18
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc  36.b		; 90 24
	.db $82, $16, $44		; 82 16 44
	dey		; 88
	.db $42, $47		; 42 47
	bit #$80.b		; 89 80
	bcc  97.b		; 90 61
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	bpl -96.b		; 10 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and ($02.b),Y		; 31 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
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
	brk $12.b		; 00 12
	adc $B2C05A.l		; 6F 5A C0 B2
	sbc $1A0C.w,Y		; F9 0C 1A
	bpl  18.b		; 10 12
	bmi   8.b		; 30 08
	cop $88.b		; 02 88
	brk $01.b		; 00 01
	rti		; 40

	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $2000.w		; 0C 00 20
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $40.b		; 02 40
	tsb $00.b		; 04 00
	jsr $0410.w		; 20 10 04
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
	.db $00		; Opcode 00 overrunning bank boundry at 24FFFE. Skipping.
	.db $00		; Opcode 00 overrunning bank boundry at 24FFFF. Skipping.
.ENDS
