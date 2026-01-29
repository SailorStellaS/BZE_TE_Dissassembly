.BANK 11 SLOT 0
.ORG $0000

.SECTION "Bank11" FORCE

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	brk $1C.b		; 00 1C
	ora ($1F.b,X)		; 01 1F
	ora $09.b,S		; 03 09
	tsb $16.b		; 04 16
	asl $10.b		; 06 10
	ora [$4A.b]		; 07 4A
	ora #$0A3E.w		; 09 3E 0A
	adc ($0C.b,S),Y		; 73 0C
	eor $0F760D.l,X		; 5F 0D 76 0F
	jmp $124B10.l		; 5C 10 4B 12
	eor [$13.b],Y		; 57 13
	lda $168115.l		; AF 15 81 16
	eor $1B18.w		; 4D 18 1B
	ora $0001.w,Y		; 19 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	brk $14.b		; 00 14
	brk $15.b		; 00 15
	brk $16.b		; 00 16
	brk $17.b		; 00 17
	brk $18.b		; 00 18
	brk $19.b		; 00 19
	brk $1A.b		; 00 1A
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $2A.b		; 00 2A
	brk $2B.b		; 00 2B
	brk $2C.b		; 00 2C
	brk $56.b		; 00 56
	brk $57.b		; 00 57
	brk $2D.b		; 00 2D
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	brk $32.b		; 00 32
	brk $33.b		; 00 33
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	brk $44.b		; 00 44
	brk $45.b		; 00 45
	brk $46.b		; 00 46
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	lsr $5E49.w,X		; 5E 49 5E
	lsr A		; 4A
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	eor $4E004D.l,X		; 5F 4D 00 4E
	brk $4F.b		; 00 4F
	eor $510050.l,X		; 5F 50 00 51
	brk $52.b		; 00 52
	brk $53.b		; 00 53
	stz $54.b		; 64 54
	brk $55.b		; 00 55
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $39.b		; 00 39
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $15.b		; 00 15
	brk $0F.b		; 00 0F
	brk $5B.b		; 00 5B
	brk $5C.b		; 00 5C
	brk $59.b		; 00 59
	eor $5D5A.w,X		; 5D 5A 5D
	plp		; 28
	brk $29.b		; 00 29
	brk $24.b		; 00 24
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $33.b		; 00 33
	brk $60.b		; 00 60
	stz $61.b		; 64 61
	stz $62.b		; 64 62
	stz $63.b		; 64 63
	stz $58.b		; 64 58
	brk $65.b		; 00 65
	brk $66.b		; 00 66
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $1A.b		; C4 1A
	wai		; CB
	cpy #$8404.w		; C0 04 84
	ora $0520CB.l,X		; 1F CB 20 05
	ldy $24.b		; A4 24
	wai		; CB
	rti		; 40

	tsb $E4.b		; 04 E4
	plp		; 28
	wai		; CB
	brk $04.b		; 00 04
	cpx $2C.b		; E4 2C
	wai		; CB
	rti		; 40

	tsb $24.b		; 04 24
	and ($CB.b),Y		; 31 CB
	brk $05.b		; 00 05
	bit $36.b		; 24 36
	wai		; CB
	ldy #$C404.w		; A0 04 C4
	dec A		; 3A
	wai		; CB
	rti		; 40

	tsb $04.b		; 04 04
	and $0400CB.l,X		; 3F CB 00 04
	tsb $43.b		; 04 43
	wai		; CB
	bra   4.b		; 80 04
	sty $47.b		; 84 47
	wai		; CB
	rti		; 40

	ora #$50C4.w		; 09 C4 50
	wai		; CB
	bra   6.b		; 80 06
	mvp $CB,$57		; 44 57 CB
	brk $07.b		; 00 07
	mvp $CB,$5E		; 44 5E CB
	bra   4.b		; 80 04
	cpy $62.b		; C4 62
	wai		; CB
	cpx #$A404.w		; E0 04 A4
	adc [$CB.b]		; 67 CB
	brk $04.b		; 00 04
	ldy $6B.b		; A4 6B
	wai		; CB
	rts		; 60

	tsb $04.b		; 04 04
	bvs -53.b		; 70 CB
	cpy #$C403.w		; C0 03 C4
	adc ($CB.b,S),Y		; 73 CB
	cpx #$A403.w		; E0 03 A4
	adc [$CB.b],Y		; 77 CB
	rti		; 40

	tsb $E4.b		; 04 E4
	tda		; 7B
	wai		; CB
	cpy #$A404.w		; C0 04 A4
	bra -53.b		; 80 CB
	brk $05.b		; 00 05
	ldy $85.b		; A4 85
	wai		; CB
	cpx #$8405.w		; E0 05 84
	phb		; 8B
	wai		; CB
	bra   4.b		; 80 04
	tsb $90.b		; 04 90
	wai		; CB
	rti		; 40

	ora $44.b		; 05 44
	sta $CB.b,X		; 95 CB
	ldy #$E404.w		; A0 04 E4
	sta $60CB.w,Y		; 99 CB 60
	tsb $44.b		; 04 44
	stz $20CB.w,X		; 9E CB 20
	ora $64.b		; 05 64
	lda $CB.b,S		; A3 CB
	rts		; 60

	tsb $C4.b		; 04 C4
	lda [$CB.b]		; A7 CB
	rti		; 40

	tsb $04.b		; 04 04
	ldy $E0CB.w		; AC CB E0
	ora $E4.b,S		; 03 E4
	lda $0340CB.l		; AF CB 40 03
	bit $B3.b		; 24 B3
	wai		; CB
	jsr $4403.w		; 20 03 44
	ldx $CB.b,Y		; B6 CB
	rti		; 40

	ora $84.b,S		; 03 84
	lda $60CB.w,Y		; B9 CB 60
	ora $E4.b,S		; 03 E4
	ldy $60CB.w,X		; BC CB 60
	tsb $44.b		; 04 44
	cmp ($CB.b,X)		; C1 CB
	ldy #$E404.w		; A0 04 E4
	cmp $CB.b		; C5 CB
	cpx #$C404.w		; E0 04 C4
	dex		; CA
	wai		; CB
	rts		; 60

	tsb $24.b		; 04 24
	cmp $0460CB.l		; CF CB 60 04
	sty $D3.b		; 84 D3
	wai		; CB
	ldy #$2404.w		; A0 04 24
	cld		; D8
	wai		; CB
	rts		; 60

	tsb $84.b		; 04 84
	jmp.w [$C0CB]		; DC CB C0
	tsb $44.b		; 04 44
	sbc ($CB.b,X)		; E1 CB
	rts		; 60

	tsb $A4.b		; 04 A4
	sbc $CB.b		; E5 CB
	ldy #$4404.w		; A0 04 44
	nop		; EA
	wai		; CB
	bra   4.b		; 80 04
	cpy $EE.b		; C4 EE
	wai		; CB
	jsr $E405.w		; 20 05 E4
	sbc ($CB.b,S),Y		; F3 CB
	brk $06.b		; 00 06
	cpx $F9.b		; E4 F9
	wai		; CB
	cpy #$0004.w		; C0 04 00
	brk $CC.b		; 00 CC
	cpy #$C003.w		; C0 03 C0
	ora $CC.b,S		; 03 CC
	cpx #$A003.w		; E0 03 A0
	ora [$CC.b]		; 07 CC
	rti		; 40

	tsb $E0.b		; 04 E0
	phd		; 0B
	cpy $0480.w		; CC 80 04
	rts		; 60

	bpl -52.b		; 10 CC
	jsr $8004.w		; 20 04 80
	trb $CC.b		; 14 CC
	bra   4.b		; 80 04
	brk $19.b		; 00 19
	cpy $03A0.w		; CC A0 03
	ldy #$CC1C.w		; A0 1C CC
	jsr $C004.w		; 20 04 C0
	jsr $C0CC.w		; 20 CC C0
	tsb $80.b		; 04 80
	and $CC.b		; 25 CC
	brk $05.b		; 00 05
	bra  42.b		; 80 2A
	cpy $0440.w		; CC 40 04
	cpy #$CC2E.w		; C0 2E CC
	rts		; 60

	ora $20.b		; 05 20
	bit $CC.b,X		; 34 CC
	jsr $4003.w		; 20 03 40
	and [$CC.b],Y		; 37 CC
	rti		; 40

	asl $80.b		; 06 80
	and $80CC.w,X		; 3D CC 80
	asl $00.b		; 06 00
	mvp $60,$CC		; 44 CC 60
	asl $60.b		; 06 60
	lsr A		; 4A
	cpy $0640.w		; CC 40 06
	ldy #$CC50.w		; A0 50 CC
	brk $05.b		; 00 05
	ldy #$CC55.w		; A0 55 CC
	rti		; 40

	asl $E0.b		; 06 E0
	tad		; 5B
	cpy $0540.w		; CC 40 05
	jsr $CC61.w		; 20 61 CC
	jsr $4007.w		; 20 07 40
	pla		; 68
	cpy $05A0.w		; CC A0 05
	cpx #$CC6D.w		; E0 6D CC
	jsr $0005.w		; 20 05 00
	adc ($CC.b,S),Y		; 73 CC
	bra   2.b		; 80 02
	bra 117.b		; 80 75
	cpy $0520.w		; CC 20 05
	ldy #$CC7A.w		; A0 7A CC
	rti		; 40

	ora $E0.b		; 05 E0
	adc $0240CC.l,X		; 7F CC 40 02
	jsr $CC82.w		; 20 82 CC
	rti		; 40

	ora $60.b		; 05 60
	sta [$CC.b]		; 87 CC
	cpx #$4004.w		; E0 04 40
	sty $40CC.w		; 8C CC 40
	cop $80.b		; 02 80
	stx $00CC.w		; 8E CC 00
	tsb $80.b		; 04 80
	sta ($CC.b)		; 92 CC
	jsr $A004.w		; 20 04 A0
	stx $CC.b,Y		; 96 CC
	cpy #$6004.w		; C0 04 60
	txy		; 9B
	cpy $0280.w		; CC 80 02
	cpx #$CC9D.w		; E0 9D CC
	ldy #$8005.w		; A0 05 80
	lda $CC.b,S		; A3 CC
	cpy #$4003.w		; C0 03 40
	lda [$CC.b]		; A7 CC
	jsr $6005.w		; 20 05 60
	ldy $C0CC.w		; AC CC C0
	tsb $20.b		; 04 20
	lda ($CC.b),Y		; B1 CC
	cpy #$E003.w		; C0 03 E0
	ldy $CC.b,X		; B4 CC
	rti		; 40

	ora $20.b,S		; 03 20
	clv		; B8
	cpy $0320.w		; CC 20 03
	rti		; 40

	tyx		; BB
	cpy $06A0.w		; CC A0 06
	cpx #$CCC1.w		; E0 C1 CC
	rti		; 40

	asl $20.b		; 06 20
	iny		; C8
	cpy $0100.w		; CC 00 01
	jsr $CCC9.w		; 20 C9 CC
	cpy #$E002.w		; C0 02 E0
	wai		; CB
	cpy $0400.w		; CC 00 04
	cpx #$CCCF.w		; E0 CF CC
	bra   2.b		; 80 02
	rts		; 60

	cmp ($CC.b)		; D2 CC
	bra   2.b		; 80 02
	cpx #$CCD4.w		; E0 D4 CC
	cpy #$A002.w		; C0 02 A0
	cmp [$CC.b],Y		; D7 CC
	cpy #$6002.w		; C0 02 60
	phx		; DA
	cpy $02C0.w		; CC C0 02
	jsr $CCDD.w		; 20 DD CC
	ldy #$C004.w		; A0 04 C0
	sbc ($CC.b,X)		; E1 CC
	rts		; 60

	ora [$01.b]		; 07 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	.db $62, $14, $62		; 62 14 62
	ora $5F.b,X		; 15 5F
	asl $5F.b,X		; 16 5F
	ora [$5F.b],Y		; 17 5F
	clc		; 18
	rts		; 60

	adc ($60.b,X)		; 61 60
	ora $1A00.w,Y		; 19 00 1A
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	adc $29.b,S		; 63 29
	adc $2A.b,S		; 63 2A
	adc [$2B.b]		; 67 2B
	adc [$2C.b]		; 67 2C
	brk $2D.b		; 00 2D
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	brk $32.b		; 00 32
	brk $33.b		; 00 33
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	brk $44.b		; 00 44
	brk $45.b		; 00 45
	brk $46.b		; 00 46
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $49.b		; 00 49
	brk $4A.b		; 00 4A
	brk $49.b		; 00 49
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	brk $4D.b		; 00 4D
	brk $4E.b		; 00 4E
	brk $4F.b		; 00 4F
	brk $50.b		; 00 50
	brk $51.b		; 00 51
	brk $52.b		; 00 52
	brk $53.b		; 00 53
	brk $54.b		; 00 54
	brk $55.b		; 00 55
	brk $56.b		; 00 56
	brk $57.b		; 00 57
	lsr $5E58.w,X		; 5E 58 5E
	eor $5A00.w,Y		; 59 00 5A
	brk $5B.b		; 00 5B
	brk $5C.b		; 00 5C
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $54.b		; 00 54
	brk $64.b		; 00 64
	brk $5D.b		; 00 5D
	brk $65.b		; 00 65
	brk $66.b		; 00 66
	brk $37.b		; 00 37
	brk $3E.b		; 00 3E
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $68.b		; 00 68
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $CCE9.w		; 20 E9 CC
	brk $04.b		; 00 04
	jsr $CCED.w		; 20 ED CC
	cpx #$0003.w		; E0 03 00
	sbc ($CC.b),Y		; F1 CC
	cpx #$E003.w		; E0 03 E0
	pea $A0CC.w		; F4 CC A0
	ora $80.b,S		; 03 80
	sed		; F8
	cpy $0360.w		; CC 60 03
	cpx #$CCFB.w		; E0 FB CC
	rts		; 60

	ora $00.b,S		; 03 00
	brk $CD.b		; 00 CD
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	cmp $0320.w		; CD 20 03
	jsr $CD07.w		; 20 07 CD
	brk $03.b		; 00 03
	jsr $CD0A.w		; 20 0A CD
	rts		; 60

	ora $80.b,S		; 03 80
	ora $20CD.w		; 0D CD 20
	ora #$16A0.w		; 09 A0 16
	cmp $0740.w		; CD 40 07
	cpx #$CD1D.w		; E0 1D CD
	rts		; 60

	ora [$40.b]		; 07 40
	and $CD.b		; 25 CD
	bra   3.b		; 80 03
	cpy #$CD28.w		; C0 28 CD
	brk $04.b		; 00 04
	cpy #$CD2C.w		; C0 2C CD
	rti		; 40

	ora $00.b,S		; 03 00
	bmi -51.b		; 30 CD
	rti		; 40

	tsb $40.b		; 04 40
	bit $CD.b,X		; 34 CD
	rti		; 40

	ora $80.b,S		; 03 80
	and [$CD.b],Y		; 37 CD
	bra   2.b		; 80 02
	brk $3A.b		; 00 3A
	cmp $0280.w		; CD 80 02
	bra  60.b		; 80 3C
	cmp $0280.w		; CD 80 02
	brk $3F.b		; 00 3F
	cmp $0280.w		; CD 80 02
	bra  65.b		; 80 41
	cmp $0280.w		; CD 80 02
	brk $44.b		; 00 44
	cmp $0300.w		; CD 00 03
	brk $47.b		; 00 47
	cmp $0440.w		; CD 40 04
	rti		; 40

	phk		; 4B
	cmp $0480.w		; CD 80 04
	cpy #$CD4F.w		; C0 4F CD
	rti		; 40

	tsb $00.b		; 04 00
	mvn $00,$CD		; 54 CD 00
	tsb $00.b		; 04 00
	cli		; 58
	cmp $03A0.w		; CD A0 03
	ldy #$CD5B.w		; A0 5B CD
	jsr $C004.w		; 20 04 C0
	eor $0440CD.l,X		; 5F CD 40 04
	brk $64.b		; 00 64
	cmp $02C0.w		; CD C0 02
	cpy #$CD66.w		; C0 66 CD
	ldy #$6003.w		; A0 03 60
	ror A		; 6A
	cmp $03A0.w		; CD A0 03
	brk $6E.b		; 00 6E
	cmp $0340.w		; CD 40 03
	rti		; 40

	adc ($CD.b),Y		; 71 CD
	rts		; 60

	ora $A0.b,S		; 03 A0
	stz $CD.b,X		; 74 CD
	cpx #$8003.w		; E0 03 80
	sei		; 78
	cmp $03E0.w		; CD E0 03
	rts		; 60

	jmp ($80CD.w,X)		; 7C CD 80
	cop $E0.b		; 02 E0
	ror $40CD.w,X		; 7E CD 40
	cop $20.b		; 02 20
	sta ($CD.b,X)		; 81 CD
	rti		; 40

	cop $60.b		; 02 60
	sta $CD.b,S		; 83 CD
	cpy #$2002.w		; C0 02 20
	stx $CD.b		; 86 CD
	brk $03.b		; 00 03
	jsr $CD89.w		; 20 89 CD
	cpy #$E003.w		; C0 03 E0
	sty $C0CD.w		; 8C CD C0
	ora $A0.b,S		; 03 A0
	bcc -51.b		; 90 CD
	brk $04.b		; 00 04
	ldy #$CD94.w		; A0 94 CD
	jsr $C004.w		; 20 04 C0
	tya		; 98
	cmp $03C0.w		; CD C0 03
	bra -100.b		; 80 9C
	cmp $0380.w		; CD 80 03
	brk $A0.b		; 00 A0
	cmp $03E0.w		; CD E0 03
	cpx #$CDA3.w		; E0 A3 CD
	ldy #$8003.w		; A0 03 80
	lda [$CD.b]		; A7 CD
	ldy #$2003.w		; A0 03 20
	plb		; AB
	cmp $0300.w		; CD 00 03
	jsr $CDAE.w		; 20 AE CD
	rti		; 40

	tsb $60.b		; 04 60
	lda ($CD.b)		; B2 CD
	ldy #$0003.w		; A0 03 00
	ldx $CD.b,Y		; B6 CD
	cpx #$E003.w		; E0 03 E0
	lda $20CD.w,Y		; B9 CD 20
	tsb $00.b		; 04 00
	ldx $60CD.w,Y		; BE CD 60
	ora $60.b,S		; 03 60
	cmp ($CD.b,X)		; C1 CD
	brk $04.b		; 00 04
	rts		; 60

	cmp $CD.b		; C5 CD
	brk $04.b		; 00 04
	rts		; 60

	cmp #$20CD.w		; C9 CD 20
	ora $80.b,S		; 03 80
	cpy $80CD.w		; CC CD 80
	ora $00.b,S		; 03 00
	bne -51.b		; D0 CD
	cpy #$C002.w		; C0 02 C0
	cmp ($CD.b)		; D2 CD
	cpy #$8002.w		; C0 02 80
	cmp $CD.b,X		; D5 CD
	bra   3.b		; 80 03
	brk $D9.b		; 00 D9
	cmp $0280.w		; CD 80 02
	bra -37.b		; 80 DB
	cmp $03A0.w		; CD A0 03
	jsr $CDDF.w		; 20 DF CD
	rts		; 60

	ora $80.b,S		; 03 80
	sep #$CD		; E2 CD
	ldy #$2003.w		; A0 03 20
	inc $CD.b		; E6 CD
	bra   3.b		; 80 03
	ldy #$CDE9.w		; A0 E9 CD
	jsr $C003.w		; 20 03 C0
	cpx $C0CD.w		; EC CD C0
	ora $80.b,S		; 03 80
	beq -51.b		; F0 CD
	cpy #$4003.w		; C0 03 40
	pea $40CD.w		; F4 CD 40
	ora $80.b,S		; 03 80
	sbc [$CD.b],Y		; F7 CD
	jsr $A003.w		; 20 03 A0
	plx		; FA
	cmp $0380.w		; CD 80 03
	brk $00.b		; 00 00
	dec $0380.w		; CE 80 03
	bra   3.b		; 80 03
	dec $0400.w		; CE 00 04
	bra   7.b		; 80 07
	dec $04A0.w		; CE A0 04
	jsr $CE0C.w		; 20 0C CE
	cpy #$E003.w		; C0 03 E0
	ora $0400CE.l		; 0F CE 00 04
	cpx #$CE13.w		; E0 13 CE
	bra   3.b		; 80 03
	rts		; 60

	ora [$CE.b],Y		; 17 CE
	brk $04.b		; 00 04
	rts		; 60

	tas		; 1B
	dec $0320.w		; CE 20 03
	bra  30.b		; 80 1E
	dec $03C0.w		; CE C0 03
	rti		; 40

	jsl $0400CE.l		; 22 CE 00 04
	rti		; 40

	rol $CE.b		; 26 CE
	rti		; 40

	cop $80.b		; 02 80
	plp		; 28
	dec $0280.w		; CE 80 02
	brk $2B.b		; 00 2B
	dec $03E0.w		; CE E0 03
	cpx #$CE2E.w		; E0 2E CE
	rts		; 60

	ora $40.b,S		; 03 40
	and ($CE.b)		; 32 CE
	rti		; 40

	ora $80.b		; 05 80
	and [$CE.b],Y		; 37 CE
	brk $0A.b		; 00 0A
	bra  65.b		; 80 41
	dec $0440.w		; CE 40 04
	cpy #$CE45.w		; C0 45 CE
	cpy #$8002.w		; C0 02 80
	pha		; 48
	dec $0240.w		; CE 40 02
	cpy #$CE4A.w		; C0 4A CE
	bra   2.b		; 80 02
	rti		; 40

	eor $80CE.w		; 4D CE 80
	cop $C0.b		; 02 C0
	eor $0240CE.l		; 4F CE 40 02
	brk $52.b		; 00 52
	dec $0300.w		; CE 00 03
	brk $55.b		; 00 55
	dec $0380.w		; CE 80 03
	bra  88.b		; 80 58
	dec $0620.w		; CE 20 06
	ldy #$CE5E.w		; A0 5E CE
	rti		; 40

	asl $E0.b		; 06 E0
	stz $CE.b		; 64 CE
	bra   1.b		; 80 01
	rts		; 60

	ror $CE.b		; 66 CE
	bra   6.b		; 80 06
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	eor $5D14.w,X		; 5D 14 5D
	ora $00.b,X		; 15 00
	asl $5E.b,X		; 16 5E
	ora [$5E.b],Y		; 17 5E
	clc		; 18
	lsr $5E5B.w,X		; 5E 5B 5E
	ora $1A00.w,Y		; 19 00 1A
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $21.b		; 00 21
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	brk $29.b		; 00 29
	brk $2A.b		; 00 2A
	brk $2B.b		; 00 2B
	brk $2C.b		; 00 2C
	brk $2D.b		; 00 2D
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	brk $32.b		; 00 32
	brk $33.b		; 00 33
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $5F.b		; 00 5F
	brk $70.b		; 00 70
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	eor $5940.w,Y		; 59 40 59
	rti		; 40

	eor $6041.w,Y		; 59 41 60
	.db $42, $60		; 42 60
	eor $60.b,S		; 43 60
	mvp $45,$00		; 44 00 45
	brk $46.b		; 00 46
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $49.b		; 00 49
	brk $4C.b		; 00 4C
	brk $4A.b		; 00 4A
	brk $4C.b		; 00 4C
	brk $4D.b		; 00 4D
	brk $4E.b		; 00 4E
	brk $4F.b		; 00 4F
	brk $50.b		; 00 50
	brk $51.b		; 00 51
	brk $52.b		; 00 52
	ror $53.b		; 66 53
	adc [$54.b]		; 67 54
	pla		; 68
	eor $69.b,X		; 55 69
	lsr $00.b,X		; 56 00
	eor [$00.b],Y		; 57 00
	cli		; 58
	brk $5A.b		; 00 5A
	jmp $626765.l		; 5C 65 67 62
	adc [$6A.b]		; 67 6A
	pla		; 68
	adc $68.b,S		; 63 68
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $2F.b		; 00 2F
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $4B.b		; 00 4B
	brk $6B.b		; 00 6B
	adc #$6964.w		; 69 64 69
	jmp ($6166.w)		; 6C 66 61
	ror $6D.b		; 66 6D
	ror $6E.b		; 66 6E
	brk $6F.b		; 00 6F
	brk $5C.b		; 00 5C
	brk $71.b		; 00 71
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$CE6C.w		; E0 6C CE
	bra   4.b		; 80 04
	rts		; 60

	adc ($CE.b),Y		; 71 CE
	cpy #$2004.w		; C0 04 20
	ror $CE.b,X		; 76 CE
	rti		; 40

	tsb $60.b		; 04 60
	ply		; 7A
	dec $04A0.w		; CE A0 04
	brk $7F.b		; 00 7F
	dec $0400.w		; CE 00 04
	brk $83.b		; 00 83
	dec $04E0.w		; CE E0 04
	cpx #$CE87.w		; E0 87 CE
	bra   4.b		; 80 04
	rts		; 60

	sty $80CE.w		; 8C CE 80
	tsb $E0.b		; 04 E0
	bcc -50.b		; 90 CE
	rti		; 40

	tsb $20.b		; 04 20
	sta $CE.b,X		; 95 CE
	brk $06.b		; 00 06
	jsr $CE9B.w		; 20 9B CE
	brk $0A.b		; 00 0A
	jsr $CEA5.w		; 20 A5 CE
	rti		; 40

	ora [$60.b]		; 07 60
	ldy $00CE.w		; AC CE 00
	ora [$60.b]		; 07 60
	lda ($CE.b,S),Y		; B3 CE
	rti		; 40

	tsb $A0.b		; 04 A0
	lda [$CE.b],Y		; B7 CE
	cpy #$6004.w		; C0 04 60
	ldy $80CE.w,X		; BC CE 80
	tsb $E0.b		; 04 E0
	cpy #$80CE.w		; C0 CE 80
	tsb $60.b		; 04 60
	cmp $CE.b		; C5 CE
	jsr $8004.w		; 20 04 80
	cmp #$80CE.w		; C9 CE 80
	ora $00.b,S		; 03 00
	cmp $80CE.w		; CD CE 80
	ora $80.b,S		; 03 80
	bne -50.b		; D0 CE
	rti		; 40

	tsb $C0.b		; 04 C0
	pei ($CE.b)		; D4 CE
	jsr $E003.w		; 20 03 E0
	cmp [$CE.b],Y		; D7 CE
	ldy #$8003.w		; A0 03 80
	stp		; DB
	dec $0380.w		; CE 80 03
	brk $DF.b		; 00 DF
	dec $04E0.w		; CE E0 04
	cpx #$CEE3.w		; E0 E3 CE
	brk $05.b		; 00 05
	cpx #$CEE8.w		; E0 E8 CE
	brk $05.b		; 00 05
	cpx #$CEED.w		; E0 ED CE
	jsr $0004.w		; 20 04 00
	sbc ($CE.b)		; F2 CE
	ldy #$A003.w		; A0 03 A0
	sbc $CE.b,X		; F5 CE
	ldy #$4003.w		; A0 03 40
	sbc $00CE.w,Y		; F9 CE 00
	tsb $00.b		; 04 00
	brk $CF.b		; 00 CF
	bra   3.b		; 80 03
	bra   3.b		; 80 03
	cmp $2003A0.l		; CF A0 03 20
	ora [$CF.b]		; 07 CF
	rts		; 60

	tsb $80.b		; 04 80
	phd		; 0B
	cmp $800500.l		; CF 00 05 80
	bpl -49.b		; 10 CF
	bra   5.b		; 80 05
	brk $16.b		; 00 16
	cmp $C006C0.l		; CF C0 06 C0
	trb $E0CF.w		; 1C CF E0
	ora $A0.b		; 05 A0
	jsl $0440CF.l		; 22 CF 40 04
	cpx #$CF26.w		; E0 26 CF
	rts		; 60

	tsb $40.b		; 04 40
	pld		; 2B
	cmp $0004C0.l		; CF C0 04 00
	bmi -49.b		; 30 CF
	ldy #$A004.w		; A0 04 A0
	bit $CF.b,X		; 34 CF
	rti		; 40

	tsb $E0.b		; 04 E0
	sec		; 38
	cmp $400460.l		; CF 60 04 40
	and $80CF.w,X		; 3D CF 80
	tsb $C0.b		; 04 C0
	eor ($CF.b,X)		; 41 CF
	jsr $E004.w		; 20 04 E0
	eor $CF.b		; 45 CF
	ldy #$8004.w		; A0 04 80
	lsr A		; 4A
	cmp $4004C0.l		; CF C0 04 40
	eor $0540CF.l		; 4F CF 40 05
	bra  84.b		; 80 54
	cmp $800500.l		; CF 00 05 80
	eor $40CF.w,Y		; 59 CF 40
	ora $C0.b		; 05 C0
	lsr $C0CF.w,X		; 5E CF C0
	tsb $80.b		; 04 80
	adc $CF.b,S		; 63 CF
	rts		; 60

	tsb $E0.b		; 04 E0
	adc [$CF.b]		; 67 CF
	ldy #$8004.w		; A0 04 80
	jmp ($40CF.w)		; 6C CF 40
	tsb $C0.b		; 04 C0
	bvs -49.b		; 70 CF
	rti		; 40

	asl $00.b		; 06 00
	adc [$CF.b],Y		; 77 CF
	rti		; 40

	tsb $40.b		; 04 40
	tda		; 7B
	cmp $800440.l		; CF 40 04 80
	adc $0340CF.l,X		; 7F CF 40 03
	cpy #$CF82.w		; C0 82 CF
	cpx #$A004.w		; E0 04 A0
	sta [$CF.b]		; 87 CF
	cpy #$6003.w		; C0 03 60
	phb		; 8B
	cmp $0004A0.l		; CF A0 04 00
	bcc -49.b		; 90 CF
	cpy #$C002.w		; C0 02 C0
	sta ($CF.b)		; 92 CF
	bra   2.b		; 80 02
	rti		; 40

	sta $CF.b,X		; 95 CF
	cpy #$0002.w		; C0 02 00
	tya		; 98
	cmp $C002C0.l		; CF C0 02 C0
	txs		; 9A
	cmp $8002C0.l		; CF C0 02 80
	sta $40CF.w,X		; 9D CF 40
	ora $C0.b,S		; 03 C0
	ldy #$20CF.w		; A0 CF 20
	ora $E0.b		; 05 E0
	lda $CF.b		; A5 CF
	ldy #$8004.w		; A0 04 80
	tax		; AA
	cmp $000480.l		; CF 80 04 00
	lda $0520CF.l		; AF CF 20 05
	jsr $CFB4.w		; 20 B4 CF
	bra   4.b		; 80 04
	ldy #$CFB8.w		; A0 B8 CF
	jsr $C005.w		; 20 05 C0
	lda $C0CF.w,X		; BD CF C0
	ora $80.b		; 05 80
	cmp $CF.b,S		; C3 CF
	rts		; 60

	ora $E0.b		; 05 E0
	iny		; C8
	cmp $400460.l		; CF 60 04 40
	cmp $A0CF.w		; CD CF A0
	tsb $E0.b		; 04 E0
	cmp ($CF.b),Y		; D1 CF
	cpx #$C004.w		; E0 04 C0
	dec $CF.b,X		; D6 CF
	bra   5.b		; 80 05
	rti		; 40

	jmp.w [$60CF]		; DC CF 60
	ora $A0.b,S		; 03 A0
	cmp $02C0CF.l,X		; DF CF C0 02
	rts		; 60

	sep #$CF		; E2 CF
	bra   2.b		; 80 02
	cpx #$CFE4.w		; E0 E4 CF
	bra   2.b		; 80 02
	rts		; 60

	sbc [$CF.b]		; E7 CF
	bra   2.b		; 80 02
	cpx #$CFE9.w		; E0 E9 CF
	cpx #$C004.w		; E0 04 C0
	inc $00CF.w		; EE CF 00
	ora $C0.b		; 05 C0
	sbc ($CF.b,S),Y		; F3 CF
	cpy #$8004.w		; C0 04 80
	sed		; F8
	cmp $800360.l		; CF 60 03 80
	sed		; F8
	cmp $000360.l		; CF 60 03 00
	brk $D0.b		; 00 D0
	bra   3.b		; 80 03
	bra   3.b		; 80 03
	bne  96.b		; D0 60
	tsb $E0.b		; 04 E0
	ora [$D0.b]		; 07 D0
	rts		; 60

	ora ($40.b,X)		; 01 40
	ora #$40D0.w		; 09 D0 40
	cop $80.b		; 02 80
	phd		; 0B
	bne  32.b		; D0 20
	tsb $A0.b		; 04 A0
	ora $0280D0.l		; 0F D0 80 02
	jsr $D012.w		; 20 12 D0
	cpy #$E004.w		; C0 04 E0
	asl $D0.b,X		; 16 D0
	rti		; 40

	cop $20.b		; 02 20
	ora $00D0.w,Y		; 19 D0 00
	ora $20.b,S		; 03 20
	trb $C0D0.w		; 1C D0 C0
	ora $E0.b,S		; 03 E0
	ora $0240D0.l,X		; 1F D0 40 02
	jsr $D022.w		; 20 22 D0
	rti		; 40

	tsb $60.b		; 04 60
	rol $D0.b		; 26 D0
	bra   5.b		; 80 05
	cpx #$D02B.w		; E0 2B D0
	jsr $0006.w		; 20 06 00
	and ($D0.b)		; 32 D0
	jsr $2005.w		; 20 05 20
	and [$D0.b],Y		; 37 D0
	bra   2.b		; 80 02
	ldy #$D039.w		; A0 39 D0
	bra   3.b		; 80 03
	jsr $D03D.w		; 20 3D D0
	cpy #$E003.w		; C0 03 E0
	rti		; 40

	bne   0.b		; D0 00
	ora ($E0.b,X)		; 01 E0
	eor ($D0.b,X)		; 41 D0
	rts		; 60

	tsb $40.b		; 04 40
	lsr $D0.b		; 46 D0
	rti		; 40

	tsb $80.b		; 04 80
	lsr A		; 4A
	bne -32.b		; D0 E0
	tsb $60.b		; 04 60
	eor $07C0D0.l		; 4F D0 C0 07
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	bmi  20.b		; 30 14
	bmi  21.b		; 30 15
	brk $16.b		; 00 16
	brk $17.b		; 00 17
	adc $18.b		; 65 18
	lsr $5E59.w,X		; 5E 59 5E
	inc A		; 1A
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $57.b		; 00 57
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	brk $29.b		; 00 29
	brk $2A.b		; 00 2A
	brk $2B.b		; 00 2B
	brk $2D.b		; 00 2D
	brk $2E.b		; 00 2E
	brk $58.b		; 00 58
	brk $2F.b		; 00 2F
	brk $19.b		; 00 19
	lsr $0031.w,X		; 5E 31 00
	and ($00.b)		; 32 00
	and ($00.b,S),Y		; 33 00
	bit $00.b,X		; 34 00
	and $00.b,X		; 35 00
	rol $00.b,X		; 36 00
	and [$00.b],Y		; 37 00
	stz $4A.b		; 64 4A
	and $3A00.w,Y		; 39 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	brk $44.b		; 00 44
	brk $45.b		; 00 45
	brk $46.b		; 00 46
	eor $485F47.l,X		; 5F 47 5F 48
	brk $49.b		; 00 49
	eor $4B001F.l,X		; 5F 1F 00 4B
	brk $4C.b		; 00 4C
	brk $4D.b		; 00 4D
	brk $4E.b		; 00 4E
	brk $4F.b		; 00 4F
	brk $50.b		; 00 50
	brk $51.b		; 00 51
	brk $52.b		; 00 52
	brk $53.b		; 00 53
	brk $54.b		; 00 54
	brk $55.b		; 00 55
	brk $56.b		; 00 56
	brk $38.b		; 00 38
	brk $56.b		; 00 56
	brk $01.b		; 00 01
	brk $60.b		; 00 60
	adc $61.b		; 65 61
	adc $62.b		; 65 62
	adc $63.b		; 65 63
	lsr A		; 4A
	phy		; 5A
	brk $5B.b		; 00 5B
	brk $68.b		; 00 68
	adc $6D69.w		; 6D 69 6D
	ror A		; 6A
	brk $6B.b		; 00 6B
	ror $6E6C.w		; 6E 6C 6E
	ror $6F.b		; 66 6F
	adc [$6F.b]		; 67 6F
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $5C.b		; 00 5C
	brk $5D.b		; 00 5D
	brk $1F.b		; 00 1F
	brk $2C.b		; 00 2C
	brk $70.b		; 00 70
	brk $35.b		; 00 35
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $D057.w		; 20 57 D0
	rts		; 60

	tsb $80.b		; 04 80
	tad		; 5B
	bne  32.b		; D0 20
	ora $A0.b		; 05 A0
	rts		; 60

	bne -96.b		; D0 A0
	tsb $40.b		; 04 40
	adc $D0.b		; 65 D0
	brk $05.b		; 00 05
	rti		; 40

	ror A		; 6A
	bne -96.b		; D0 A0
	ora $E0.b,S		; 03 E0
	adc $80D0.w		; 6D D0 80
	tsb $60.b		; 04 60
	adc ($D0.b)		; 72 D0
	cpy #$2004.w		; C0 04 20
	adc [$D0.b],Y		; 77 D0
	bra   3.b		; 80 03
	ldy #$D07A.w		; A0 7A D0
	cpx #$8003.w		; E0 03 80
	ror $40D0.w,X		; 7E D0 40
	tsb $C0.b		; 04 C0
	.db $82, $D0, $80		; 82 D0 80
	ora #$8C40.w		; 09 40 8C
	bne -32.b		; D0 E0
	asl $20.b		; 06 20
	sta ($D0.b,S),Y		; 93 D0
	cpx #$0006.w		; E0 06 00
	txs		; 9A
	bne -32.b		; D0 E0
	tsb $E0.b		; 04 E0
	stz $60D0.w,X		; 9E D0 60
	tsb $40.b		; 04 40
	lda $D0.b,S		; A3 D0
	ldy #$E003.w		; A0 03 E0
	ldx $D0.b		; A6 D0
	cpy #$A004.w		; C0 04 A0
	plb		; AB
	bne -96.b		; D0 A0
	ora $40.b,S		; 03 40
	lda $02C0D0.l		; AF D0 C0 02
	brk $B2.b		; 00 B2
	bne -64.b		; D0 C0
	cop $C0.b		; 02 C0
	ldy $D0.b,X		; B4 D0
	rts		; 60

	tsb $20.b		; 04 20
	lda $A0D0.w,Y		; B9 D0 A0
	tsb $C0.b		; 04 C0
	lda $C0D0.w,X		; BD D0 C0
	cop $80.b		; 02 80
	cpy #$80D0.w		; C0 D0 80
	cop $00.b		; 02 00
	cmp $D0.b,S		; C3 D0
	cpx #$E002.w		; E0 02 E0
	cmp $D0.b		; C5 D0
	bra   4.b		; 80 04
	rts		; 60

	dex		; CA
	bne  64.b		; D0 40
	tsb $A0.b		; 04 A0
	dec $80D0.w		; CE D0 80
	tsb $20.b		; 04 20
	cmp ($D0.b,S),Y		; D3 D0
	jsr $4004.w		; 20 04 40
	cmp [$D0.b],Y		; D7 D0
	jsr $6004.w		; 20 04 60
	stp		; DB
	bne -128.b		; D0 80
	tsb $E0.b		; 04 E0
	cmp $0460D0.l,X		; DF D0 60 04
	rti		; 40

	cpx $D0.b		; E4 D0
	bra   4.b		; 80 04
	cpy #$D0E8.w		; C0 E8 D0
	ldy #$6004.w		; A0 04 60
	sbc $20D0.w		; ED D0 20
	ora $80.b		; 05 80
	sbc ($D0.b)		; F2 D0
	ldy #$2004.w		; A0 04 20
	sbc [$D0.b],Y		; F7 D0
	ldy #$0004.w		; A0 04 00
	brk $D1.b		; 00 D1
	ldy #$A005.w		; A0 05 A0
	ora $D1.b		; 05 D1
	bra   4.b		; 80 04
	jsr $D10A.w		; 20 0A D1
	ldy #$C004.w		; A0 04 C0
	asl $60D1.w		; 0E D1 60
	tsb $20.b		; 04 20
	ora ($D1.b,S),Y		; 13 D1
	rti		; 40

	ora $60.b		; 05 60
	clc		; 18
	cmp ($40.b),Y		; D1 40
	tsb $A0.b		; 04 A0
	trb $00D1.w		; 1C D1 00
	tsb $A0.b		; 04 A0
	jsr $E0D1.w		; 20 D1 E0
	tsb $80.b		; 04 80
	and $D1.b		; 25 D1
	cpy #$4004.w		; C0 04 40
	rol A		; 2A
	cmp ($60.b),Y		; D1 60
	tsb $A0.b		; 04 A0
	rol $80D1.w		; 2E D1 80
	cop $20.b		; 02 20
	and ($D1.b),Y		; 31 D1
	rti		; 40

	tsb $60.b		; 04 60
	and $D1.b,X		; 35 D1
	jsr $8003.w		; 20 03 80
	sec		; 38
	cmp ($A0.b),Y		; D1 A0
	ora $20.b,S		; 03 20
	bit $A0D1.w,X		; 3C D1 A0
	ora $C0.b,S		; 03 C0
	and $0440D1.l,X		; 3F D1 40 04
	brk $44.b		; 00 44
	cmp ($40.b),Y		; D1 40
	ora $40.b,S		; 03 40
	eor [$D1.b]		; 47 D1
	cpx #$2003.w		; E0 03 20
	phk		; 4B
	cmp ($C0.b),Y		; D1 C0
	tsb $E0.b		; 04 E0
	eor $04A0D1.l		; 4F D1 A0 04
	bra  84.b		; 80 54
	cmp ($C0.b),Y		; D1 C0
	tsb $40.b		; 04 40
	eor $40D1.w,Y		; 59 D1 40
	ora $80.b,S		; 03 80
	jmp $0420D1.l		; 5C D1 20 04
	ldy #$D160.w		; A0 60 D1
	jsr $C004.w		; 20 04 C0
	stz $D1.b		; 64 D1
	bra   4.b		; 80 04
	rti		; 40

	adc #$C0D1.w		; 69 D1 C0
	ora $00.b,S		; 03 00
	adc $C0D1.w		; 6D D1 C0
	ora $C0.b		; 05 C0
	adc ($D1.b)		; 72 D1
	cpy #$8004.w		; C0 04 80
	adc [$D1.b],Y		; 77 D1
	cpx #$6004.w		; E0 04 60
	jmp ($20D1.w,X)		; 7C D1 20
	ora $80.b		; 05 80
	sta ($D1.b,X)		; 81 D1
	jsr $A005.w		; 20 05 A0
	stx $D1.b		; 86 D1
	rti		; 40

	ora $E0.b		; 05 E0
	phb		; 8B
	cmp ($C0.b),Y		; D1 C0
	cop $A0.b		; 02 A0
	stx $00D1.w		; 8E D1 00
	ora $A0.b,S		; 03 A0
	sta ($D1.b),Y		; 91 D1
	rts		; 60

	tsb $00.b		; 04 00
	stx $D1.b,Y		; 96 D1
	rti		; 40

	ora $40.b,S		; 03 40
	sta $40D1.w,Y		; 99 D1 40
	cop $80.b		; 02 80
	txy		; 9B
	cmp ($40.b),Y		; D1 40
	tsb $C0.b		; 04 C0
	sta $04A0D1.l,X		; 9F D1 A0 04
	rts		; 60

	ldy $D1.b		; A4 D1
	jsr $8004.w		; 20 04 80
	tay		; A8
	cmp ($A0.b),Y		; D1 A0
	tsb $20.b		; 04 20
	lda $00D1.w		; AD D1 00
	tsb $20.b		; 04 20
	lda ($D1.b),Y		; B1 D1
	rti		; 40

	ora $60.b		; 05 60
	ldx $D1.b,Y		; B6 D1
	rti		; 40

	tsb $A0.b		; 04 A0
	tsx		; BA
	cmp ($C0.b),Y		; D1 C0
	tsb $60.b		; 04 60
	lda $0420D1.l,X		; BF D1 20 04
	bra -61.b		; 80 C3
	cmp ($A0.b),Y		; D1 A0
	tsb $20.b		; 04 20
	iny		; C8
	cmp ($80.b),Y		; D1 80
	tsb $A0.b		; 04 A0
	cpy $80D1.w		; CC D1 80
	ora $20.b		; 05 20
	cmp ($D1.b)		; D2 D1
	bra   3.b		; 80 03
	ldy #$D1D5.w		; A0 D5 D1
	ldy #$4004.w		; A0 04 40
	phx		; DA
	cmp ($C0.b),Y		; D1 C0
	cop $00.b		; 02 00
	cmp $80D1.w,X		; DD D1 80
	asl $80.b		; 06 80
	sbc $D1.b,S		; E3 D1
	rti		; 40

	asl $C0.b		; 06 C0
	sbc #$00D1.w		; E9 D1 00
	tsb $C0.b		; 04 C0
	sbc $00D1.w		; ED D1 00
	ora $C0.b		; 05 C0
	sbc ($D1.b)		; F2 D1
	rts		; 60

	ora ($20.b,X)		; 01 20
	pea $40D1.w		; F4 D1 40
	cop $60.b		; 02 60
	inc $D1.b,X		; F6 D1
	brk $03.b		; 00 03
	rts		; 60

	sbc $80D1.w,Y		; F9 D1 80
	cop $E0.b		; 02 E0
	xce		; FB
	cmp ($C0.b),Y		; D1 C0
	cop $00.b		; 02 00
	brk $D2.b		; 00 D2
	bra   2.b		; 80 02
	bra   2.b		; 80 02
	cmp ($C0.b)		; D2 C0
	cop $40.b		; 02 40
	ora $D2.b		; 05 D2
	cpy #$0001.w		; C0 01 00
	ora [$D2.b]		; 07 D2
	rti		; 40

	cop $40.b		; 02 40
	ora #$40D2.w		; 09 D2 40
	cop $80.b		; 02 80
	phd		; 0B
	cmp ($C0.b)		; D2 C0
	cop $40.b		; 02 40
	asl $00D2.w		; 0E D2 00
	ora $40.b,S		; 03 40
	ora ($D2.b),Y		; 11 D2
	cpx #$2004.w		; E0 04 20
	asl $D2.b,X		; 16 D2
	brk $03.b		; 00 03
	jsr $D219.w		; 20 19 D2
	bra   5.b		; 80 05
	ldy #$D21E.w		; A0 1E D2
	bra   2.b		; 80 02
	jsr $D221.w		; 20 21 D2
	cpy #$E002.w		; C0 02 E0
	and $D2.b,S		; 23 D2
	cpy #$A002.w		; C0 02 A0
	rol $D2.b		; 26 D2
	cpx #$0107.w		; E0 07 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $25.b		; 00 25
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	brk $14.b		; 00 14
	brk $15.b		; 00 15
	.db $62, $16, $62		; 62 16 62
	ora [$62.b],Y		; 17 62
	clc		; 18
	.db $62, $19, $00		; 62 19 00
	inc A		; 1A
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	brk $29.b		; 00 29
	brk $2A.b		; 00 2A
	brk $2B.b		; 00 2B
	brk $2C.b		; 00 2C
	brk $2D.b		; 00 2D
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	brk $32.b		; 00 32
	brk $33.b		; 00 33
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $5C.b		; 00 5C
	brk $5D.b		; 00 5D
	brk $5E.b		; 00 5E
	brk $43.b		; 00 43
	brk $47.b		; 00 47
	brk $44.b		; 00 44
	brk $45.b		; 00 45
	brk $46.b		; 00 46
	brk $48.b		; 00 48
	brk $49.b		; 00 49
	brk $4A.b		; 00 4A
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	brk $4D.b		; 00 4D
	brk $4E.b		; 00 4E
	brk $4F.b		; 00 4F
	brk $50.b		; 00 50
	brk $51.b		; 00 51
	brk $52.b		; 00 52
	brk $53.b		; 00 53
	brk $54.b		; 00 54
	brk $55.b		; 00 55
	brk $56.b		; 00 56
	cli		; 58
	eor [$58.b],Y		; 57 58
	phy		; 5A
	brk $5B.b		; 00 5B
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $59.b		; 00 59
	brk $61.b		; 00 61
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $63.b		; 00 63
	brk $64.b		; 00 64
	brk $65.b		; 00 65
	brk $66.b		; 00 66
	brk $69.b		; 00 69
	brk $6A.b		; 00 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  46.b		; 80 2E
	cmp ($40.b)		; D2 40
	tsb $C0.b		; 04 C0
	and ($D2.b)		; 32 D2
	cpx #$A004.w		; E0 04 A0
	and [$D2.b],Y		; 37 D2
	cpy #$6004.w		; C0 04 60
	bit $C0D2.w,X		; 3C D2 C0
	tsb $20.b		; 04 20
	eor ($D2.b,X)		; 41 D2
	cpy #$E003.w		; C0 03 E0
	mvp $E0,$D2		; 44 D2 E0
	tsb $C0.b		; 04 C0
	eor #$80D2.w		; 49 D2 80
	tsb $40.b		; 04 40
	lsr $40D2.w		; 4E D2 40
	tsb $80.b		; 04 80
	eor ($D2.b)		; 52 D2
	jsr $A004.w		; 20 04 A0
	lsr $D2.b,X		; 56 D2
	ldy #$4004.w		; A0 04 40
	tad		; 5B
	cmp ($E0.b)		; D2 E0
	ora #$6520.w		; 09 20 65
	cmp ($80.b)		; D2 80
	asl $A0.b		; 06 A0
	rtl		; 6B

	cmp ($E0.b)		; D2 E0
	asl $80.b		; 06 80
	adc ($D2.b)		; 72 D2
	brk $05.b		; 00 05
	bra 119.b		; 80 77
	cmp ($20.b)		; D2 20
	ora $A0.b		; 05 A0
	jmp ($A0D2.w,X)		; 7C D2 A0
	ora $40.b,S		; 03 40
	bra -46.b		; 80 D2
	jsr $6005.w		; 20 05 60
	sta $D2.b		; 85 D2
	cpx #$4003.w		; E0 03 40
	bit #$E0D2.w		; 89 D2 E0
	tsb $20.b		; 04 20
	stx $E0D2.w		; 8E D2 E0
	tsb $00.b		; 04 00
	sta ($D2.b,S),Y		; 93 D2
	cpy #$C003.w		; C0 03 C0
	stx $D2.b,Y		; 96 D2
	bra   3.b		; 80 03
	rti		; 40

	txs		; 9A
	cmp ($C0.b)		; D2 C0
	ora $00.b,S		; 03 00
	stz $80D2.w,X		; 9E D2 80
	ora $80.b,S		; 03 80
	lda ($D2.b,X)		; A1 D2
	cpx #$6004.w		; E0 04 60
	ldx $D2.b		; A6 D2
	jsr $8005.w		; 20 05 80
	plb		; AB
	cmp ($40.b)		; D2 40
	ora $C0.b		; 05 C0
	bcs -46.b		; B0 D2
	brk $05.b		; 00 05
	cpy #$D2B5.w		; C0 B5 D2
	cpx #$A004.w		; E0 04 A0
	tsx		; BA
	cmp ($40.b)		; D2 40
	ora $E0.b		; 05 E0
	lda $0480D2.l,X		; BF D2 80 04
	rts		; 60

	cpy $D2.b		; C4 D2
	bra   4.b		; 80 04
	cpx #$D2C8.w		; E0 C8 D2
	rts		; 60

	tsb $40.b		; 04 40
	cmp $C0D2.w		; CD D2 C0
	tsb $00.b		; 04 00
	cmp ($D2.b)		; D2 D2
	rts		; 60

	tsb $60.b		; 04 60
	dec $D2.b,X		; D6 D2
	rts		; 60

	ora $C0.b		; 05 C0
	stp		; DB
	cmp ($00.b)		; D2 00
	ora $C0.b		; 05 C0
	cpx #$00D2.w		; E0 D2 00
	asl $C0.b		; 06 C0
	inc $D2.b		; E6 D2
	bra   5.b		; 80 05
	rti		; 40

	cpx $E0D2.w		; EC D2 E0
	tsb $20.b		; 04 20
	sbc ($D2.b),Y		; F1 D2
	rti		; 40

	ora $60.b		; 05 60
	inc $D2.b,X		; F6 D2
	cpy #$0005.w		; C0 05 00
	brk $D3.b		; 00 D3
	jsr $2005.w		; 20 05 20
	ora $D3.b		; 05 D3
	jsr $4006.w		; 20 06 40
	phd		; 0B
	cmp ($80.b,S),Y		; D3 80
	ora $C0.b		; 05 C0
	bpl -45.b		; 10 D3
	jsr $E005.w		; 20 05 E0
	ora $D3.b,X		; 15 D3
	cpx #$C004.w		; E0 04 C0
	inc A		; 1A
	cmp ($20.b,S),Y		; D3 20
	ora $E0.b		; 05 E0
	ora $05A0D3.l,X		; 1F D3 A0 05
	bra  37.b		; 80 25
	cmp ($80.b,S),Y		; D3 80
	ora $00.b		; 05 00
	pld		; 2B
	cmp ($E0.b,S),Y		; D3 E0
	ora $E0.b		; 05 E0
	bmi -45.b		; 30 D3
	rti		; 40

	ora $20.b,S		; 03 20
	bit $D3.b,X		; 34 D3
	cpx #$0004.w		; E0 04 00
	and $00D3.w,Y		; 39 D3 00
	ora $00.b		; 05 00
	rol $60D3.w,X		; 3E D3 60
	ora $60.b		; 05 60
	eor $D3.b,S		; 43 D3
	rts		; 60

	ora $C0.b		; 05 C0
	pha		; 48
	cmp ($C0.b,S),Y		; D3 C0
	ora $80.b,S		; 03 80
	jmp $A0D3.w		; 4C D3 A0
	tsb $20.b		; 04 20
	eor ($D3.b),Y		; 51 D3
	cpy #$E004.w		; C0 04 E0
	eor $D3.b,X		; 55 D3
	bra   5.b		; 80 05
	rts		; 60

	tad		; 5B
	cmp ($A0.b,S),Y		; D3 A0
	ora $00.b,S		; 03 00
	eor $0460D3.l,X		; 5F D3 60 04
	rts		; 60

	adc $D3.b,S		; 63 D3
	jsr $8004.w		; 20 04 80
	adc [$D3.b]		; 67 D3
	cpy #$4004.w		; C0 04 40
	jmp ($80D3.w)		; 6C D3 80
	tsb $C0.b		; 04 C0
	bvs -45.b		; 70 D3
	cpx #$A003.w		; E0 03 A0
	stz $D3.b,X		; 74 D3
	cpx #$8002.w		; E0 02 80
	adc [$D3.b],Y		; 77 D3
	brk $05.b		; 00 05
	bra 124.b		; 80 7C
	cmp ($E0.b,S),Y		; D3 E0
	tsb $60.b		; 04 60
	sta ($D3.b,X)		; 81 D3
	ldy #$0005.w		; A0 05 00
	sta [$D3.b]		; 87 D3
	rts		; 60

	ora $60.b		; 05 60
	sty $C0D3.w		; 8C D3 C0
	tsb $20.b		; 04 20
	sta ($D3.b),Y		; 91 D3
	ldy #$C004.w		; A0 04 C0
	sta $D3.b,X		; 95 D3
	cpx #$A004.w		; E0 04 A0
	txs		; 9A
	cmp ($C0.b,S),Y		; D3 C0
	tsb $60.b		; 04 60
	sta $04A0D3.l,X		; 9F D3 A0 04
	brk $A4.b		; 00 A4
	cmp ($00.b,S),Y		; D3 00
	asl $00.b		; 06 00
	tax		; AA
	cmp ($00.b,S),Y		; D3 00
	ora [$00.b]		; 07 00
	lda ($D3.b),Y		; B1 D3
	ldy #$A004.w		; A0 04 A0
	lda $D3.b,X		; B5 D3
	bra   4.b		; 80 04
	jsr $D3BA.w		; 20 BA D3
	ldy #$C009.w		; A0 09 C0
	cmp $D3.b,S		; C3 D3
	ldy #$6008.w		; A0 08 60
	cpy $A0D3.w		; CC D3 A0
	ora #$D600.w		; 09 00 D6
	cmp ($40.b,S),Y		; D3 40
	php		; 08
	rti		; 40

	dec $E0D3.w,X		; DE D3 E0
	tsb $20.b		; 04 20
	sbc $D3.b,S		; E3 D3
	rti		; 40

	cop $60.b		; 02 60
	sbc $D3.b		; E5 D3
	rti		; 40

	cop $A0.b		; 02 A0
	sbc [$D3.b]		; E7 D3
	rti		; 40

	tsb $E0.b		; 04 E0
	xba		; EB
	cmp ($80.b,S),Y		; D3 80
	asl $60.b		; 06 60
	sbc ($D3.b)		; F2 D3
	cpy #$2004.w		; C0 04 20
	sbc [$D3.b],Y		; F7 D3
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	pei ($60.b)		; D4 60
	ora $60.b,S		; 03 60
	ora $D4.b,S		; 03 D4
	cpx #$4003.w		; E0 03 40
	ora [$D4.b]		; 07 D4
	ldy #$E004.w		; A0 04 E0
	phd		; 0B
	pei ($40.b)		; D4 40
	asl $20.b		; 06 20
	ora ($D4.b)		; 12 D4
	rti		; 40

	asl $60.b		; 06 60
	clc		; 18
	pei ($40.b)		; D4 40
	asl $A0.b		; 06 A0
	asl $40D4.w,X		; 1E D4 40
	cop $E0.b		; 02 E0
	jsr $40D4.w		; 20 D4 40
	asl $20.b		; 06 20
	and [$D4.b]		; 27 D4
	rts		; 60

	php		; 08
	bra  47.b		; 80 2F
	pei ($80.b)		; D4 80
	ora $00.b		; 05 00
	and $D4.b,X		; 35 D4
	rti		; 40

	ora $40.b,S		; 03 40
	sec		; 38
	pei ($60.b)		; D4 60
	ora $A0.b		; 05 A0
	and $A0D4.w,X		; 3D D4 A0
	ora [$40.b]		; 07 40
	sec		; 38
	pei ($60.b)		; D4 60
	ora $A0.b		; 05 A0
	and $A0D4.w,X		; 3D D4 A0
	ora [$01.b]		; 07 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	brk $14.b		; 00 14
	brk $15.b		; 00 15
	brk $16.b		; 00 16
	brk $17.b		; 00 17
	brk $18.b		; 00 18
	brk $19.b		; 00 19
	brk $1A.b		; 00 1A
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	adc ($22.b,X)		; 61 22
	adc ($23.b,X)		; 61 23
	adc ($33.b,X)		; 61 33
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	brk $29.b		; 00 29
	brk $2A.b		; 00 2A
	brk $2B.b		; 00 2B
	brk $2C.b		; 00 2C
	brk $2D.b		; 00 2D
	brk $5E.b		; 00 5E
	brk $32.b		; 00 32
	brk $30.b		; 00 30
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $31.b		; 00 31
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	eor $5D3B.w,X		; 5D 3B 5D
	bit $3D5D.w,X		; 3C 5D 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	brk $44.b		; 00 44
	brk $45.b		; 00 45
	brk $46.b		; 00 46
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $49.b		; 00 49
	brk $4A.b		; 00 4A
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	brk $4D.b		; 00 4D
	brk $4E.b		; 00 4E
	brk $4F.b		; 00 4F
	brk $50.b		; 00 50
	brk $51.b		; 00 51
	brk $58.b		; 00 58
	brk $59.b		; 00 59
	brk $5A.b		; 00 5A
	brk $55.b		; 00 55
	brk $56.b		; 00 56
	brk $57.b		; 00 57
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $52.b		; 00 52
	brk $53.b		; 00 53
	brk $21.b		; 00 21
	adc ($54.b,X)		; 61 54
	brk $2D.b		; 00 2D
	brk $35.b		; 00 35
	brk $37.b		; 00 37
	brk $41.b		; 00 41
	brk $5B.b		; 00 5B
	rts		; 60

	jmp $005F60.l		; 5C 60 5F 00
	bit $00.b		; 24 00
	.db $62, $00, $00		; 62 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	eor $D4.b		; 45 D4
	cpy #$0004.w		; C0 04 00
	lsr A		; 4A
	pei ($20.b)		; D4 20
	ora $20.b		; 05 20
	eor $0500D4.l		; 4F D4 00 05
	jsr $D454.w		; 20 54 D4
	cpy #$E004.w		; C0 04 E0
	cli		; 58
	pei ($E0.b)		; D4 E0
	ora $C0.b,S		; 03 C0
	jmp $04E0D4.l		; 5C D4 E0 04
	ldy #$D461.w		; A0 61 D4
	rti		; 40

	tsb $E0.b		; 04 E0
	adc $D4.b		; 65 D4
	rti		; 40

	tsb $20.b		; 04 20
	ror A		; 6A
	pei ($00.b)		; D4 00
	tsb $20.b		; 04 20
	ror $C0D4.w		; 6E D4 C0
	tsb $E0.b		; 04 E0
	adc ($D4.b)		; 72 D4
	ldy #$8009.w		; A0 09 80
	jmp ($20D4.w,X)		; 7C D4 20
	php		; 08
	ldy #$D484.w		; A0 84 D4
	bra   7.b		; 80 07
	jsr $D48C.w		; 20 8C D4
	cpy #$E004.w		; C0 04 E0
	bcc -44.b		; 90 D4
	ldy #$8004.w		; A0 04 80
	sta $D4.b,X		; 95 D4
	cpx #$6003.w		; E0 03 60
	sta $E0D4.w,Y		; 99 D4 E0
	tsb $40.b		; 04 40
	stz $60D4.w,X		; 9E D4 60
	tsb $A0.b		; 04 A0
	ldx #$A0D4.w		; A2 D4 A0
	tsb $40.b		; 04 40
	lda [$D4.b]		; A7 D4
	ldy #$E004.w		; A0 04 E0
	plb		; AB
	pei ($E0.b)		; D4 E0
	tsb $C0.b		; 04 C0
	bcs -44.b		; B0 D4
	cpy #$8004.w		; C0 04 80
	lda $D4.b,X		; B5 D4
	cpy #$4004.w		; C0 04 40
	tsx		; BA
	pei ($E0.b)		; D4 E0
	tsb $20.b		; 04 20
	lda $04E0D4.l,X		; BF D4 E0 04
	brk $C4.b		; 00 C4
	pei ($60.b)		; D4 60
	tsb $60.b		; 04 60
	iny		; C8
	pei ($60.b)		; D4 60
	tsb $C0.b		; 04 C0
	cpy $E0D4.w		; CC D4 E0
	tsb $A0.b		; 04 A0
	cmp ($D4.b),Y		; D1 D4
	brk $05.b		; 00 05
	ldy #$D4D6.w		; A0 D6 D4
	bra   4.b		; 80 04
	jsr $D4DB.w		; 20 DB D4
	rti		; 40

	tsb $60.b		; 04 60
	cmp $03E0D4.l,X		; DF D4 E0 03
	rti		; 40

	sbc $D4.b,S		; E3 D4
	cpy #$0002.w		; C0 02 00
	inc $D4.b		; E6 D4
	cpy #$C002.w		; C0 02 C0
	inx		; E8
	pei ($00.b)		; D4 00
	ora $00.b,S		; 03 00
	brk $D5.b		; 00 D5
	rti		; 40

	ora #$0940.w		; 09 40 09
	cmp $E0.b,X		; D5 E0
	tsb $20.b		; 04 20
	asl $80D5.w		; 0E D5 80
	ora $A0.b		; 05 A0
	ora ($D5.b,S),Y		; 13 D5
	rts		; 60

	tsb $00.b		; 04 00
	clc		; 18
	cmp $40.b,X		; D5 40
	tsb $40.b		; 04 40
	trb $A0D5.w		; 1C D5 A0
	tsb $E0.b		; 04 E0
	jsr $C0D5.w		; 20 D5 C0
	tsb $A0.b		; 04 A0
	and $D5.b		; 25 D5
	ldy #$4004.w		; A0 04 40
	rol A		; 2A
	cmp $C0.b,X		; D5 C0
	tsb $00.b		; 04 00
	and $0480D5.l		; 2F D5 80 04
	bra  51.b		; 80 33
	cmp $C0.b,X		; D5 C0
	ora $40.b,S		; 03 40
	and [$D5.b],Y		; 37 D5
	ldy #$E003.w		; A0 03 E0
	dec A		; 3A
	cmp $60.b,X		; D5 60
	ora $40.b		; 05 40
	rti		; 40

	cmp $40.b,X		; D5 40
	tsb $80.b		; 04 80
	mvp $20,$D5		; 44 D5 20
	tsb $A0.b		; 04 A0
	pha		; 48
	cmp $00.b,X		; D5 00
	tsb $A0.b		; 04 A0
	jmp $40D5.w		; 4C D5 40
	tsb $E0.b		; 04 E0
	bvc -43.b		; 50 D5
	cpx #$C004.w		; E0 04 C0
	eor $D5.b,X		; 55 D5
	cpx #$A003.w		; E0 03 A0
	eor $60D5.w,Y		; 59 D5 60
	tsb $00.b		; 04 00
	lsr $80D5.w,X		; 5E D5 80
	ora $80.b,S		; 03 80
	adc ($D5.b,X)		; 61 D5
	cpx #$6003.w		; E0 03 60
	adc $D5.b		; 65 D5
	jsr $8003.w		; 20 03 80
	pla		; 68
	cmp $00.b,X		; D5 00
	ora $80.b,S		; 03 80
	rtl		; 6B

	cmp $00.b,X		; D5 00
	ora $80.b,S		; 03 80
	ror $A0D5.w		; 6E D5 A0
	tsb $20.b		; 04 20
	adc ($D5.b,S),Y		; 73 D5
	jsr $4004.w		; 20 04 40
	adc [$D5.b],Y		; 77 D5
	rti		; 40

	tsb $80.b		; 04 80
	tda		; 7B
	cmp $40.b,X		; D5 40
	tsb $C0.b		; 04 C0
	adc $0460D5.l,X		; 7F D5 60 04
	jsr $D584.w		; 20 84 D5
	bra   3.b		; 80 03
	ldy #$D587.w		; A0 87 D5
	rti		; 40

	tsb $E0.b		; 04 E0
	phb		; 8B
	cmp $E0.b,X		; D5 E0
	tsb $C0.b		; 04 C0
	bcc -43.b		; 90 D5
	jsr $E005.w		; 20 05 E0
	sta $D5.b,X		; 95 D5
	bra   4.b		; 80 04
	rts		; 60

	txs		; 9A
	cmp $60.b,X		; D5 60
	ora $C0.b		; 05 C0
	sta $0500D5.l,X		; 9F D5 00 05
	cpy #$D5A4.w		; C0 A4 D5
	ldy #$6005.w		; A0 05 60
	tax		; AA
	cmp $40.b,X		; D5 40
	ora $A0.b		; 05 A0
	lda $0640D5.l		; AF D5 40 06
	cpx #$D5B5.w		; E0 B5 D5
	brk $05.b		; 00 05
	cpx #$D5BA.w		; E0 BA D5
	rti		; 40

	ora $20.b		; 05 20
	cpy #$E0D5.w		; C0 D5 E0
	ora $00.b,S		; 03 00
	cpy $D5.b		; C4 D5
	rts		; 60

	tsb $60.b		; 04 60
	iny		; C8
	cmp $60.b,X		; D5 60
	tsb $C0.b		; 04 C0
	cpy $80D5.w		; CC D5 80
	tsb $40.b		; 04 40
	cmp ($D5.b),Y		; D1 D5
	cpy #$0009.w		; C0 09 00
	stp		; DB
	cmp $C0.b,X		; D5 C0
	php		; 08
	cpy #$D5E3.w		; C0 E3 D5
	cpy #$8003.w		; C0 03 80
	sbc [$D5.b]		; E7 D5
	cpy #$4004.w		; C0 04 40
	cpx $40D5.w		; EC D5 40
	ora $80.b		; 05 80
	sbc ($D5.b),Y		; F1 D5
	brk $06.b		; 00 06
	bra  -9.b		; 80 F7
	cmp $E0.b,X		; D5 E0
	ora $00.b,S		; 03 00
	brk $D6.b		; 00 D6
	rti		; 40

	ora $40.b,S		; 03 40
	ora $D6.b,S		; 03 D6
	rts		; 60

	tsb $A0.b		; 04 A0
	ora [$D6.b]		; 07 D6
	bra   2.b		; 80 02
	jsr $D60A.w		; 20 0A D6
	bra   2.b		; 80 02
	ldy #$D60C.w		; A0 0C D6
	cpy #$6002.w		; C0 02 60
	ora $04E0D6.l		; 0F D6 E0 04
	rti		; 40

	trb $D6.b		; 14 D6
	cpy #$0009.w		; C0 09 00
	asl $60D6.w,X		; 1E D6 60
	ora $60.b,S		; 03 60
	and ($D6.b,X)		; 21 D6
	bra   2.b		; 80 02
	cpx #$D623.w		; E0 23 D6
	rti		; 40

	php		; 08
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	brk $14.b		; 00 14
	brk $15.b		; 00 15
	brk $16.b		; 00 16
	brk $5A.b		; 00 5A
	brk $17.b		; 00 17
	bvs  24.b		; 70 18
	bvs  25.b		; 70 19
	bvs  26.b		; 70 1A
	bvs  27.b		; 70 1B
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	brk $29.b		; 00 29
	brk $2A.b		; 00 2A
	brk $2B.b		; 00 2B
	brk $2C.b		; 00 2C
	brk $2D.b		; 00 2D
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $71.b		; 00 71
	brk $31.b		; 00 31
	brk $32.b		; 00 32
	brk $33.b		; 00 33
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	brk $44.b		; 00 44
	brk $45.b		; 00 45
	brk $46.b		; 00 46
	brk $47.b		; 00 47
	brk $48.b		; 00 48
	brk $49.b		; 00 49
	brk $4A.b		; 00 4A
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	brk $6F.b		; 00 6F
	eor $004E.w		; 4D 4E 00
	eor $005000.l		; 4F 00 50 00
	eor ($00.b),Y		; 51 00
	eor ($00.b)		; 52 00
	eor ($00.b,S),Y		; 53 00
	mvn $55,$00		; 54 00 55
	bmi  86.b		; 30 56
	bmi  87.b		; 30 57
	bmi  91.b		; 30 5B
	brk $5C.b		; 00 5C
	brk $5D.b		; 00 5D
	brk $5E.b		; 00 5E
	brk $5F.b		; 00 5F
	brk $60.b		; 00 60
	brk $61.b		; 00 61
	brk $62.b		; 00 62
	brk $63.b		; 00 63
	brk $64.b		; 00 64
	brk $65.b		; 00 65
	brk $66.b		; 00 66
	brk $67.b		; 00 67
	brk $68.b		; 00 68
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $58.b		; 00 58
	brk $59.b		; 00 59
	brk $34.b		; 00 34
	brk $3C.b		; 00 3C
	brk $49.b		; 00 49
	stz $69.b,X		; 74 69
	brk $6A.b		; 00 6A
	brk $6B.b		; 00 6B
	brk $6D.b		; 00 6D
	brk $6E.b		; 00 6E
	brk $6F.b		; 00 6F
	brk $6C.b		; 00 6C
	brk $6F.b		; 00 6F
	adc ($75.b,S),Y		; 73 75
	brk $76.b		; 00 76
	brk $72.b		; 00 72
	brk $77.b		; 00 77
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $D62C.w		; 20 2C D6
	jsr $4004.w		; 20 04 40
	bmi -42.b		; 30 D6
	rts		; 60

	tsb $A0.b		; 04 A0
	bit $D6.b,X		; 34 D6
	cpx #$8003.w		; E0 03 80
	sec		; 38
	dec $80.b,X		; D6 80
	tsb $00.b		; 04 00
	and $80D6.w,X		; 3D D6 80
	ora $80.b,S		; 03 80
	rti		; 40

	dec $60.b,X		; D6 60
	tsb $E0.b		; 04 E0
	mvp $20,$D6		; 44 D6 20
	tsb $00.b		; 04 00
	eor #$00D6.w		; 49 D6 00
	tsb $00.b		; 04 00
	eor $80D6.w		; 4D D6 80
	tsb $80.b		; 04 80
	eor ($D6.b),Y		; 51 D6
	ldy #$2004.w		; A0 04 20
	lsr $D6.b,X		; 56 D6
	cpx #$0009.w		; E0 09 00
	rts		; 60

	dec $60.b,X		; D6 60
	asl $60.b		; 06 60
	ror $D6.b		; 66 D6
	cpy #$2006.w		; C0 06 20
	adc $60D6.w		; 6D D6 60
	tsb $80.b		; 04 80
	adc ($D6.b),Y		; 71 D6
	brk $04.b		; 00 04
	bra 117.b		; 80 75
	dec $80.b,X		; D6 80
	ora $00.b,S		; 03 00
	adc $C0D6.w,Y		; 79 D6 C0
	ora $C0.b,S		; 03 C0
	jmp ($20D6.w,X)		; 7C D6 20
	ora $E0.b,S		; 03 E0
	adc $0400D6.l,X		; 7F D6 00 04
	cpx #$D683.w		; E0 83 D6
	cpx #$C003.w		; E0 03 C0
	sta [$D6.b]		; 87 D6
	cpx #$A003.w		; E0 03 A0
	phb		; 8B
	dec $E0.b,X		; D6 E0
	ora $80.b,S		; 03 80
	sta $0280D6.l		; 8F D6 80 02
	brk $92.b		; 00 92
	dec $C0.b,X		; D6 C0
	cop $C0.b		; 02 C0
	sty $D6.b,X		; 94 D6
	brk $03.b		; 00 03
	cpy #$D697.w		; C0 97 D6
	cpx #$A002.w		; E0 02 A0
	txs		; 9A
	dec $E0.b,X		; D6 E0
	tsb $80.b		; 04 80
	sta $0480D6.l,X		; 9F D6 80 04
	brk $A4.b		; 00 A4
	dec $80.b,X		; D6 80
	ora $80.b		; 05 80
	lda #$20D6.w		; A9 D6 20
	tsb $A0.b		; 04 A0
	lda $A0D6.w		; AD D6 A0
	ora $40.b,S		; 03 40
	lda ($D6.b),Y		; B1 D6
	jsr $6004.w		; 20 04 60
	lda $D6.b,X		; B5 D6
	brk $04.b		; 00 04
	rts		; 60

	lda $00D6.w,Y		; B9 D6 00
	tsb $60.b		; 04 60
	lda $E0D6.w,X		; BD D6 E0
	ora $40.b,S		; 03 40
	cmp ($D6.b,X)		; C1 D6
	rts		; 60

	tsb $A0.b		; 04 A0
	cmp $D6.b		; C5 D6
	cpy #$6003.w		; C0 03 60
	cmp #$00D6.w		; C9 D6 00
	ora $60.b		; 05 60
	dec $60D6.w		; CE D6 60
	ora $C0.b		; 05 C0
	cmp ($D6.b,S),Y		; D3 D6
	rti		; 40

	ora $00.b		; 05 00
	cmp $40D6.w,Y		; D9 D6 40
	ora $40.b		; 05 40
	dec $C0D6.w,X		; DE D6 C0
	ora $00.b		; 05 00
	cpx $D6.b		; E4 D6
	rts		; 60

	ora $60.b		; 05 60
	sbc #$20D6.w		; E9 D6 20
	tsb $80.b		; 04 80
	sbc $E0D6.w		; ED D6 E0
	ora $00.b,S		; 03 00
	brk $D7.b		; 00 D7
	rti		; 40

	tsb $40.b		; 04 40
	tsb $D7.b		; 04 D7
	rts		; 60

	tsb $A0.b		; 04 A0
	php		; 08
	cmp [$C0.b],Y		; D7 C0
	cop $60.b		; 02 60
	phd		; 0B
	cmp [$C0.b],Y		; D7 C0
	tsb $20.b		; 04 20
	bpl -41.b		; 10 D7
	cpx #$0004.w		; E0 04 00
	ora $D7.b,X		; 15 D7
	jsr $2004.w		; 20 04 20
	ora $40D7.w,Y		; 19 D7 40
	asl $60.b		; 06 60
	ora $0400D7.l,X		; 1F D7 00 04
	rts		; 60

	and $D7.b,S		; 23 D7
	cpy #$2004.w		; C0 04 20
	plp		; 28
	cmp [$20.b],Y		; D7 20
	asl $40.b		; 06 40
	rol $00D7.w		; 2E D7 00
	tsb $40.b		; 04 40
	and ($D7.b)		; 32 D7
	bra   4.b		; 80 04
	cpy #$D736.w		; C0 36 D7
	bra   4.b		; 80 04
	rti		; 40

	tsa		; 3B
	cmp [$40.b],Y		; D7 40
	ora $80.b,S		; 03 80
	rol $E0D7.w,X		; 3E D7 E0
	ora $60.b,S		; 03 60
	.db $42, $D7		; 42 D7
	rti		; 40

	ora $A0.b,S		; 03 A0
	eor $D7.b		; 45 D7
	rts		; 60

	tsb $00.b		; 04 00
	lsr A		; 4A
	cmp [$20.b],Y		; D7 20
	ora $20.b		; 05 20
	eor $03C0D7.l		; 4F D7 C0 03
	cpx #$D752.w		; E0 52 D7
	brk $04.b		; 00 04
	cpx #$D756.w		; E0 56 D7
	cpx #$C004.w		; E0 04 C0
	tad		; 5B
	cmp [$60.b],Y		; D7 60
	ora $20.b,S		; 03 20
	eor $0480D7.l,X		; 5F D7 80 04
	ldy #$D763.w		; A0 63 D7
	rti		; 40

	tsb $E0.b		; 04 E0
	adc [$D7.b]		; 67 D7
	brk $04.b		; 00 04
	cpx #$D76B.w		; E0 6B D7
	bra   4.b		; 80 04
	rts		; 60

	bvs -41.b		; 70 D7
	rts		; 60

	ora $C0.b		; 05 C0
	adc $D7.b,X		; 75 D7
	cpx #$A003.w		; E0 03 A0
	adc $80D7.w,Y		; 79 D7 80
	ora $20.b		; 05 20
	adc $09C0D7.l,X		; 7F D7 C0 09
	cpx #$D788.w		; E0 88 D7
	bra   8.b		; 80 08
	rts		; 60

	sta ($D7.b),Y		; 91 D7
	rts		; 60

	ora $C0.b,S		; 03 C0
	sty $D7.b,X		; 94 D7
	rti		; 40

	ora $00.b		; 05 00
	txs		; 9A
	cmp [$00.b],Y		; D7 00
	ora $00.b		; 05 00
	sta $04E0D7.l,X		; 9F D7 E0 04
	cpx #$D7A3.w		; E0 A3 D7
	rti		; 40

	ora $20.b,S		; 03 20
	lda [$D7.b]		; A7 D7
	cpy #$E004.w		; C0 04 E0
	plb		; AB
	cmp [$60.b],Y		; D7 60
	tsb $40.b		; 04 40
	bcs -41.b		; B0 D7
	rts		; 60

	tsb $A0.b		; 04 A0
	ldy $D7.b,X		; B4 D7
	rti		; 40

	cop $E0.b		; 02 E0
	ldx $D7.b,Y		; B6 D7
	cpy #$A002.w		; C0 02 A0
	lda $C0D7.w,Y		; B9 D7 C0
	cop $60.b		; 02 60
	ldy $A0D7.w,X		; BC D7 A0
	ora [$00.b]		; 07 00
	cpy $D7.b		; C4 D7
	ldy #$A006.w		; A0 06 A0
	dex		; CA
	cmp [$C0.b],Y		; D7 C0
	ora $60.b,S		; 03 60
	dec $20D7.w		; CE D7 20
	tsb $80.b		; 04 80
	cmp ($D7.b)		; D2 D7
	rts		; 60

	tsb $E0.b		; 04 E0
	dec $D7.b,X		; D6 D7
	jsr $0004.w		; 20 04 00
	stp		; DB
	cmp [$20.b],Y		; D7 20
	tsb $20.b		; 04 20
	cmp $04A0D7.l,X		; DF D7 A0 04
	cpy #$D7E3.w		; C0 E3 D7
	ldy #$6004.w		; A0 04 60
	inx		; E8
	cmp [$60.b],Y		; D7 60
	ora $C0.b		; 05 C0
	sbc $A0D7.w		; ED D7 A0
	tsb $60.b		; 04 60
	sbc ($D7.b)		; F2 D7
	cpy #$2004.w		; C0 04 20
	sbc [$D7.b],Y		; F7 D7
	ldy #$0003.w		; A0 03 00
	brk $D8.b		; 00 D8
	ldy #$A003.w		; A0 03 A0
	ora $D8.b,S		; 03 D8
	rts		; 60

	tsb $00.b		; 04 00
	php		; 08
	cld		; D8
	rts		; 60

	ora $60.b		; 05 60
	ora $80D8.w		; 0D D8 80
	tsb $E0.b		; 04 E0
	ora ($D8.b),Y		; 11 D8
	rti		; 40

	asl $20.b		; 06 20
	clc		; 18
	cld		; D8
	ldy #$C009.w		; A0 09 C0
	and ($D8.b,X)		; 21 D8
	cpy #$8009.w		; C0 09 80
	pld		; 2B
	cld		; D8
	brk $0A.b		; 00 0A
	bra  53.b		; 80 35
	cld		; D8
	jsr $A005.w		; 20 05 A0
	dec A		; 3A
	cld		; D8
	bra   5.b		; 80 05
	jsr $D840.w		; 20 40 D8
	jsr $4004.w		; 20 04 40
	mvp $80,$D8		; 44 D8 80
	cop $C0.b		; 02 C0
	lsr $D8.b		; 46 D8
	cpy #$8002.w		; C0 02 80
	eor #$A0D8.w		; 49 D8 A0
	tsb $20.b		; 04 20
	lsr $80D8.w		; 4E D8 80
	cop $A0.b		; 02 A0
	bvc -40.b		; 50 D8
	rti		; 40

	cop $E0.b		; 02 E0
	eor ($D8.b)		; 52 D8
	ldy #$8009.w		; A0 09 80
	jmp $09E0D8.l		; 5C D8 E0 09
	rts		; 60

	ror $D8.b		; 66 D8
	brk $08.b		; 00 08
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora $00.b		; 05 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	php		; 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	brk $14.b		; 00 14
	brk $15.b		; 00 15
	brk $16.b		; 00 16
	brk $17.b		; 00 17
	brk $18.b		; 00 18
	brk $19.b		; 00 19
	brk $1A.b		; 00 1A
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	brk $2B.b		; 00 2B
	brk $2C.b		; 00 2C
	brk $2D.b		; 00 2D
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	brk $32.b		; 00 32
	brk $33.b		; 00 33
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	cli		; 58
	mvp $45,$58		; 44 58 45
	brk $46.b		; 00 46
	eor $5947.w,Y		; 59 47 59
	pha		; 48
	brk $49.b		; 00 49
	brk $4A.b		; 00 4A
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	brk $4D.b		; 00 4D
	brk $4E.b		; 00 4E
	brk $4F.b		; 00 4F
	brk $50.b		; 00 50
	brk $51.b		; 00 51
	brk $52.b		; 00 52
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $53.b		; 00 53
	brk $54.b		; 00 54
	brk $30.b		; 00 30
	brk $33.b		; 00 33
	brk $55.b		; 00 55
	brk $56.b		; 00 56
	brk $26.b		; 00 26
	brk $57.b		; 00 57
	brk $5A.b		; 00 5A
	brk $5B.b		; 00 5B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	ror $20D8.w		; 6E D8 20
	php		; 08
	bra 118.b		; 80 76
	cld		; D8
	rts		; 60

	ora [$E0.b]		; 07 E0
	adc $80D8.w,X		; 7D D8 80
	ora [$60.b]		; 07 60
	sta $D8.b		; 85 D8
	cpx #$4006.w		; E0 06 40
	sty $40D8.w		; 8C D8 40
	asl $80.b		; 06 80
	sta ($D8.b)		; 92 D8
	rts		; 60

	ora [$E0.b]		; 07 E0
	sta $A0D8.w,Y		; 99 D8 A0
	ora [$80.b]		; 07 80
	lda ($D8.b,X)		; A1 D8
	ldy #$2005.w		; A0 05 20
	lda [$D8.b]		; A7 D8
	ldy #$C006.w		; A0 06 C0
	lda $20D8.w		; AD D8 20
	ora [$E0.b]		; 07 E0
	ldy $D8.b,X		; B4 D8
	brk $0A.b		; 00 0A
	cpx #$D8BE.w		; E0 BE D8
	jsr $0009.w		; 20 09 00
	iny		; C8
	cld		; D8
	cpy #$C009.w		; C0 09 C0
	cmp ($D8.b),Y		; D1 D8
	brk $07.b		; 00 07
	cpy #$D8D8.w		; C0 D8 D8
	cpy #$8006.w		; C0 06 80
	cmp $0640D8.l,X		; DF D8 40 06
	brk $00.b		; 00 00
	cmp $08A0.w,Y		; D9 A0 08
	ldy #$D908.w		; A0 08 D9
	cpx #$8005.w		; E0 05 80
	asl $60D9.w		; 0E D9 60
	ora [$E0.b]		; 07 E0
	ora $D9.b,X		; 15 D9
	rts		; 60

	ora [$40.b]		; 07 40
	ora $60D9.w,X		; 1D D9 60
	ora [$A0.b]		; 07 A0
	bit $D9.b		; 24 D9
	rts		; 60

	ora [$00.b]		; 07 00
	bit $20D9.w		; 2C D9 20
	ora [$20.b]		; 07 20
	and ($D9.b,S),Y		; 33 D9
	cpx #$0007.w		; E0 07 00
	tsa		; 3B
	cmp $0A00.w,Y		; D9 00 0A
	brk $45.b		; 00 45
	cmp $0A00.w,Y		; D9 00 0A
	brk $4F.b		; 00 4F
	cmp $07E0.w,Y		; D9 E0 07
	cpx #$D956.w		; E0 56 D9
	rts		; 60

	php		; 08
	rti		; 40

	eor $0720D9.l,X		; 5F D9 20 07
	rts		; 60

	ror $D9.b		; 66 D9
	cpx #$4007.w		; E0 07 40
	ror $40D9.w		; 6E D9 40
	ora [$80.b]		; 07 80
	adc $D9.b,X		; 75 D9
	jsr $A007.w		; 20 07 A0
	jmp ($20D9.w,X)		; 7C D9 20
	asl $C0.b		; 06 C0
	.db $82, $D9, $80		; 82 D9 80
	asl $40.b		; 06 40
	bit #$60D9.w		; 89 D9 60
	ora [$A0.b]		; 07 A0
	bcc -39.b		; 90 D9
	ldy #$4007.w		; A0 07 40
	tya		; 98
	cmp $0740.w,Y		; D9 40 07
	bra -97.b		; 80 9F
	cmp $0700.w,Y		; D9 00 07
	bra -90.b		; 80 A6
	cmp $0840.w,Y		; D9 40 08
	cpy #$D9AE.w		; C0 AE D9
	jsr $E008.w		; 20 08 E0
	ldx $D9.b,Y		; B6 D9
	jsr $E008.w		; 20 08 E0
	ldx $D9.b,Y		; B6 D9
	jsr $E008.w		; 20 08 E0
	ldx $D9.b,Y		; B6 D9
	jsr $0008.w		; 20 08 00
	lda $0780D9.l,X		; BF D9 80 07
	bra -58.b		; 80 C6
	cmp $06E0.w,Y		; D9 E0 06
	rts		; 60

	cmp $80D9.w		; CD D9 80
	ora [$E0.b]		; 07 E0
	pei ($D9.b)		; D4 D9
	ldy #$8005.w		; A0 05 80
	phx		; DA
	cmp $0660.w,Y		; D9 60 06
	cpx #$D9E0.w		; E0 E0 D9
	cpx #$C006.w		; E0 06 C0
	sbc [$D9.b]		; E7 D9
	brk $07.b		; 00 07
	cpy #$D9EE.w		; C0 EE D9
	rti		; 40

	ora [$00.b]		; 07 00
	inc $D9.b,X		; F6 D9
	ldy #$0005.w		; A0 05 00
	brk $DA.b		; 00 DA
	bra   6.b		; 80 06
	bra   6.b		; 80 06
	phx		; DA
	rti		; 40

	asl $C0.b		; 06 C0
	tsb $20DA.w		; 0C DA 20
	ora [$E0.b]		; 07 E0
	ora ($DA.b,S),Y		; 13 DA
	bra   8.b		; 80 08
	rts		; 60

	trb $60DA.w		; 1C DA 60
	asl $C0.b		; 06 C0
	jsl $0660DA.l		; 22 DA 60 06
	jsr $DA29.w		; 20 29 DA
	rts		; 60

	asl $80.b		; 06 80
	and $0780DA.l		; 2F DA 80 07
	brk $37.b		; 00 37
	phx		; DA
	cpy #$C007.w		; C0 07 C0
	rol $60DA.w,X		; 3E DA 60
	ora #$4820.w		; 09 20 48
	phx		; DA
	rti		; 40

	ora [$60.b]		; 07 60
	eor $0840DA.l		; 4F DA 40 08
	ldy #$DA57.w		; A0 57 DA
	jsr $C009.w		; 20 09 C0
	rts		; 60

	phx		; DA
	bra   5.b		; 80 05
	rti		; 40

	ror $DA.b		; 66 DA
	rti		; 40

	asl $80.b		; 06 80
	jmp ($40DA.w)		; 6C DA 40
	asl $C0.b		; 06 C0
	adc ($DA.b)		; 72 DA
	rts		; 60

	ora [$20.b]		; 07 20
	ply		; 7A
	phx		; DA
	bra   5.b		; 80 05
	ldy #$DA7F.w		; A0 7F DA
	bra   6.b		; 80 06
	jsr $DA86.w		; 20 86 DA
	rts		; 60

	php		; 08
	bra -114.b		; 80 8E
	phx		; DA
	jsr $A009.w		; 20 09 A0
	sta [$DA.b],Y		; 97 DA
	brk $0A.b		; 00 0A
	ldy #$DAA1.w		; A0 A1 DA
	brk $08.b		; 00 08
	ldy #$DAA9.w		; A0 A9 DA
	bra   9.b		; 80 09
	jsr $DAB3.w		; 20 B3 DA
	cpy #$E008.w		; C0 08 E0
	tyx		; BB
	phx		; DA
	cpx #$C007.w		; E0 07 C0
	cmp $DA.b,S		; C3 DA
	cpy #$8007.w		; C0 07 80
	wai		; CB
	phx		; DA
	ldy #$2008.w		; A0 08 20
	pei ($DA.b)		; D4 DA
	brk $08.b		; 00 08
	jsr $DADC.w		; 20 DC DA
	bra   7.b		; 80 07
	ldy #$DAE3.w		; A0 E3 DA
	ldy #$4009.w		; A0 09 40
	sbc $E0DA.w		; ED DA E0
	php		; 08
	brk $00.b		; 00 00
	stp		; DB
	ldy #$A007.w		; A0 07 A0
	ora [$DB.b]		; 07 DB
	rts		; 60

	ora [$00.b]		; 07 00
	ora $08E0DB.l		; 0F DB E0 08
	cpx #$DB17.w		; E0 17 DB
	ldy #$8001.w		; A0 01 80
	ora $40DB.w,Y		; 19 DB 40
	cop $C0.b		; 02 C0
	tas		; 1B
	stp		; DB
	ldy #$6008.w		; A0 08 60
	bit $DB.b		; 24 DB
	ldy #$0108.w		; A0 08 01
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $0C.b		; 00 0C
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $12.b		; 00 12
	brk $13.b		; 00 13
	brk $14.b		; 00 14
	brk $15.b		; 00 15
	brk $16.b		; 00 16
	brk $17.b		; 00 17
	brk $18.b		; 00 18
	brk $19.b		; 00 19
	brk $1A.b		; 00 1A
	brk $1B.b		; 00 1B
	brk $1C.b		; 00 1C
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	brk $22.b		; 00 22
	brk $23.b		; 00 23
	brk $24.b		; 00 24
	brk $25.b		; 00 25
	brk $26.b		; 00 26
	brk $27.b		; 00 27
	brk $28.b		; 00 28
	brk $29.b		; 00 29
	brk $2A.b		; 00 2A
	brk $2C.b		; 00 2C
	brk $2B.b		; 00 2B
	brk $2D.b		; 00 2D
	brk $2E.b		; 00 2E
	brk $2F.b		; 00 2F
	brk $30.b		; 00 30
	brk $31.b		; 00 31
	brk $32.b		; 00 32
	brk $33.b		; 00 33
	brk $34.b		; 00 34
	brk $35.b		; 00 35
	brk $36.b		; 00 36
	brk $37.b		; 00 37
	brk $38.b		; 00 38
	brk $39.b		; 00 39
	brk $3A.b		; 00 3A
	brk $3B.b		; 00 3B
	brk $3C.b		; 00 3C
	brk $3D.b		; 00 3D
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $42.b		; 00 42
	brk $43.b		; 00 43
	brk $44.b		; 00 44
	brk $45.b		; 00 45
	brk $4F.b		; 00 4F
	lsr $4F.b		; 46 4F
	eor [$48.b]		; 47 48
	brk $49.b		; 00 49
	brk $4A.b		; 00 4A
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $2E.b		; 00 2E
	brk $30.b		; 00 30
	brk $50.b		; 00 50
	brk $35.b		; 00 35
	brk $4B.b		; 00 4B
	brk $4C.b		; 00 4C
	brk $4D.b		; 00 4D
	brk $4E.b		; 00 4E
	brk $51.b		; 00 51
	brk $52.b		; 00 52
	brk $53.b		; 00 53
	brk $54.b		; 00 54
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2D.b		; 00 2D
	stp		; DB
	brk $03.b		; 00 03
	brk $30.b		; 00 30
	stp		; DB
	rts		; 60

	ora $60.b,S		; 03 60
	and ($DB.b,S),Y		; 33 DB
	brk $03.b		; 00 03
	rts		; 60

	rol $DB.b,X		; 36 DB
	brk $03.b		; 00 03
	rts		; 60

	and $E0DB.w,Y		; 39 DB E0
	cop $40.b		; 02 40
	bit $40DB.w,X		; 3C DB 40
	ora $80.b,S		; 03 80
	and $0340DB.l,X		; 3F DB 40 03
	cpy #$DB42.w		; C0 42 DB
	cpy #$8002.w		; C0 02 80
	eor $DB.b		; 45 DB
	brk $03.b		; 00 03
	bra  72.b		; 80 48
	stp		; DB
	cpx #$6002.w		; E0 02 60
	phk		; 4B
	stp		; DB
	jsr $8007.w		; 20 07 80
	eor ($DB.b)		; 52 DB
	rti		; 40

	asl $C0.b		; 06 C0
	cli		; 58
	stp		; DB
	bra   6.b		; 80 06
	rti		; 40

	eor $0300DB.l,X		; 5F DB 00 03
	rti		; 40

	.db $62, $DB, $20		; 62 DB 20
	ora $60.b,S		; 03 60
	adc $DB.b		; 65 DB
	cpy #$2002.w		; C0 02 20
	pla		; 68
	stp		; DB
	cpx #$0002.w		; E0 02 00
	rtl		; 6B

	stp		; DB
	cpy #$C002.w		; C0 02 C0
	adc $E0DB.w		; 6D DB E0
	cop $A0.b		; 02 A0
	bvs -37.b		; 70 DB
	cpx #$8002.w		; E0 02 80
	adc ($DB.b,S),Y		; 73 DB
	jsr $A003.w		; 20 03 A0
	ror $DB.b,X		; 76 DB
	brk $03.b		; 00 03
	ldy #$DB79.w		; A0 79 DB
	cpx #$8002.w		; E0 02 80
	jmp ($40DB.w,X)		; 7C DB 40
	ora $C0.b,S		; 03 C0
	adc $02C0DB.l,X		; 7F DB C0 02
	bra -126.b		; 80 82
	stp		; DB
	brk $03.b		; 00 03
	bra -123.b		; 80 85
	stp		; DB
	jsr $A003.w		; 20 03 A0
	dey		; 88
	stp		; DB
	jsr $C003.w		; 20 03 C0
	phb		; 8B
	stp		; DB
	cpy #$8002.w		; C0 02 80
	stx $E0DB.w		; 8E DB E0
	cop $60.b		; 02 60
	sta ($DB.b),Y		; 91 DB
	jsr $8003.w		; 20 03 80
	sty $DB.b,X		; 94 DB
	brk $03.b		; 00 03
	bra -105.b		; 80 97
	stp		; DB
	brk $03.b		; 00 03
	bra -102.b		; 80 9A
	stp		; DB
	cpx #$6002.w		; E0 02 60
	sta $60DB.w,X		; 9D DB 60
	ora $C0.b,S		; 03 C0
	ldy #$C0DB.w		; A0 DB C0
	cop $80.b		; 02 80
	lda $DB.b,S		; A3 DB
	cpy #$4002.w		; C0 02 40
	ldx $DB.b		; A6 DB
	cpx #$2002.w		; E0 02 20
	lda #$20DB.w		; A9 DB 20
	ora $40.b,S		; 03 40
	ldy $00DB.w		; AC DB 00
	ora $40.b,S		; 03 40
	lda $0380DB.l		; AF DB 80 03
	cpy #$DBB2.w		; C0 B2 DB
	bra   2.b		; 80 02
	rti		; 40

	lda $DB.b,X		; B5 DB
	brk $03.b		; 00 03
	rti		; 40

	clv		; B8
	stp		; DB
	ldy #$E002.w		; A0 02 E0
	tsx		; BA
	stp		; DB
	cpy #$A002.w		; C0 02 A0
	lda $20DB.w,X		; BD DB 20
	ora $C0.b,S		; 03 C0
	cpy #$C0DB.w		; C0 DB C0
	cop $80.b		; 02 80
	cmp $DB.b,S		; C3 DB
	cpx #$6002.w		; E0 02 60
	dec $DB.b		; C6 DB
	rts		; 60

	ora $C0.b,S		; 03 C0
	cmp #$C0DB.w		; C9 DB C0
	cop $80.b		; 02 80
	cpy $E0DB.w		; CC DB E0
	cop $60.b		; 02 60
	cmp $0300DB.l		; CF DB 00 03
	rts		; 60

	cmp ($DB.b)		; D2 DB
	cpx #$4002.w		; E0 02 40
	cmp $DB.b,X		; D5 DB
	cpy #$0002.w		; C0 02 00
	cld		; D8
	stp		; DB
	bra   2.b		; 80 02
	bra -38.b		; 80 DA
	stp		; DB
	jsr $A003.w		; 20 03 A0
	cmp $00DB.w,X		; DD DB 00
	ora $A0.b,S		; 03 A0
	cpx #$00DB.w		; E0 DB 00
	ora $A0.b,S		; 03 A0
	sbc $DB.b,S		; E3 DB
	bra   3.b		; 80 03
	jsr $DBE7.w		; 20 E7 DB
	brk $03.b		; 00 03
	jsr $DBEA.w		; 20 EA DB
	brk $03.b		; 00 03
	jsr $DBED.w		; 20 ED DB
	cpy #$E002.w		; C0 02 E0
	sbc $02C0DB.l		; EF DB C0 02
	ldy #$DBF2.w		; A0 F2 DB
	brk $03.b		; 00 03
	ldy #$DBF5.w		; A0 F5 DB
	cpy #$0002.w		; C0 02 00
	brk $DC.b		; 00 DC
	rts		; 60

	ora $60.b,S		; 03 60
	ora $DC.b,S		; 03 DC
	brk $03.b		; 00 03
	rts		; 60

	asl $DC.b		; 06 DC
	jsr $8003.w		; 20 03 80
	ora #$C0DC.w		; 09 DC C0
	cop $40.b		; 02 40
	tsb $80DC.w		; 0C DC 80
	cop $C0.b		; 02 C0
	asl $40DC.w		; 0E DC 40
	cop $00.b		; 02 00
	ora ($DC.b),Y		; 11 DC
	bra   2.b		; 80 02
	bra  19.b		; 80 13
	jmp.w [$0300]		; DC 00 03
	bra  22.b		; 80 16
	jmp.w [$02C0]		; DC C0 02
	rti		; 40

	ora $20DC.w,Y		; 19 DC 20
	ora $60.b		; 05 60
	asl $C0DC.w,X		; 1E DC C0
	ora $20.b		; 05 20
	bit $DC.b		; 24 DC
	cpy #$E002.w		; C0 02 E0
	rol $DC.b		; 26 DC
	brk $03.b		; 00 03
	cpx #$DC29.w		; E0 29 DC
	cpy #$A002.w		; C0 02 A0
	bit $C0DC.w		; 2C DC C0
	cop $60.b		; 02 60
	and $0280DC.l		; 2F DC 80 02
	cpx #$DC31.w		; E0 31 DC
	ldy #$8002.w		; A0 02 80
	bit $DC.b,X		; 34 DC
	cpy #$4002.w		; C0 02 40
	and [$DC.b],Y		; 37 DC
	rti		; 40

	asl $05.b		; 06 05
	sbc $B800.w,X		; FD 00 B8
	sbc [$18.b]		; E7 18
	cmp ($CD.b,S),Y		; D3 CD
	ora #$8626.w		; 09 26 86
	cmp ($01.b),Y		; D1 01
	bra  53.b		; 80 35
	and ($1A.b),Y		; 31 1A
	clc		; 18
	sta [$A7.b]		; 87 A7
	ora $3C.b,S		; 03 3C
	bra  -2.b		; 80 FE
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	asl $877E.w		; 0E 7E 87
	ror $8000.w,X		; 7E 00 80
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	bvc -32.b		; 50 E0
	bne  -4.b		; D0 FC
	mvp $2A,$C0		; 44 C0 2A
	mvn $00,$CC		; 54 CC 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	jsr $3880.w		; 20 80 38
	brk $3C.b		; 00 3C
	brk $86.b		; 00 86
	bpl  22.b		; 10 16
	bvs  54.b		; 70 36
	eor $3C5F33.l,X		; 5F 33 5F 3C
	lda $017307.l		; AF 07 73 01
	pha		; 48
	jsr $204A.w		; 20 4A 20
	sta ($48.b)		; 92 48
	sta ($49.b)		; 92 49
	brk $FF.b		; 00 FF
	tsb $03FF.w		; 0C FF 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C4FF00.l,X		; FF 00 FF C4
	.db $42, $C0		; 42 C0
	sta ($80.b,X)		; 81 80
	jsr $2000.w		; 20 00 20
	bra  48.b		; 80 30
	ldy #$9010.w		; A0 10 90
	pha		; 48
	clc		; 18
	mvp $E5,$04		; 44 04 E5
	cop $E2.b		; 02 E2
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	ora $0F.b,S		; 03 0F
	asl $0F.b		; 06 0F
	asl $1F.b		; 06 1F
	asl $0C1F.w		; 0E 1F 0C
	rol $3E1C.w,X		; 3E 1C 3E
	trb $183E.w		; 1C 3E 18
	jmp ($0007.w,X)		; 7C 07 00
	ora $010F08.l		; 0F 08 0F 01
	asl $1E10.w,X		; 1E 10 1E
	brk $3E.b		; 00 3E
	jsl $3C003C.l		; 22 3C 00 3C
	brk $3E.b		; 00 3E
	sta $081E1C.l,X		; 9F 1C 1E 08
	tsb $0401.w		; 0C 01 04
	ora $00.b,S		; 03 00
	cop $09.b		; 02 09
	brk $0A.b		; 00 0A
	brk $0A.b		; 00 0A
	bit $383F.w,X		; 3C 3F 38
	and $183F30.l,X		; 3F 30 3F 18
	tas		; 1B
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	php		; 08
	ora $090708.l		; 0F 08 07 09
	tas		; 1B
	php		; 08
	ora #$0908.w		; 09 08 09
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $09.b		; 00 09
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	php		; 08
	brk $09.b		; 00 09
	ora ($09.b,X)		; 01 09
	ora ($08.b,X)		; 01 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	ora #$0808.w		; 09 08 08
	cpx #$6001.w		; E0 01 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	bpl 112.b		; 10 70
	bpl -96.b		; 10 A0
	bcc  64.b		; 90 40
	bne  64.b		; D0 40
	beq -16.b		; F0 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	bpl -80.b		; 10 B0
	bcc  48.b		; 90 30
	bmi   0.b		; 30 00
	sec		; 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	clc		; 18
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	cop $09.b		; 02 09
	asl $09.b,X		; 16 09
	asl $01.b,X		; 16 01
	asl $0F11.w		; 0E 11 0F
	jsr $201F.w		; 20 1F 20
	ora ($20.b,X)		; 01 20
	cop $1C.b		; 02 1C
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $0E0E.w		; 0E 0E 0E
	asl $1E1E.w		; 0E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $0000.w,X		; 1E 00 00
	clv		; B8
	brk $9C.b		; 00 9C
	rti		; 40

	trb $5840.w		; 1C 40 58
	bit $48.b		; 24 48
	jsr $200A.w		; 20 0A 20
	rol $00.b		; 26 00
	bit $12.b		; 24 12
	sei		; 78
	sei		; 78
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $040C.w		; 0C 0C 04
	bpl   5.b		; 10 05
	bpl  16.b		; 10 10
	ora ($16.b,X)		; 01 16
	brk $13.b		; 00 13
	brk $01.b		; 00 01
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	ora $0E.b,S		; 03 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0F0E.w		; 0E 0E 0F
	ora $070F0F.l		; 0F 0F 0F 07
	ora [$03.b]		; 07 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	cpy #$E020.w		; C0 20 E0
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0E0.w		; C0 E0 E0
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	php		; 08
	asl $3C08.w,X		; 1E 08 3C
	ora $103D.w,Y		; 19 3D 10
	tda		; 7B
	and ($7B.b),Y		; 31 7B
	ora [$03.b]		; 07 03
	ora $030F0B.l		; 0F 0B 0F 03
	asl $1C13.w,X		; 1E 13 1C
	ora $3D.b,S		; 03 3D
	and [$38.b]		; 27 38
	brk $7A.b		; 00 7A
	lsr A		; 4A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	jsl $F461F6.l		; 22 F6 61 F4
	eor [$E5.b]		; 47 E5
.ACCU 16
	rep #$E8		; C2 E8
	sta ($C9.b,X)		; 81 C9
	sta $C7.b,S		; 83 C7
	and $9F3F9F.l		; 2F 9F 3F 9F
	adc ($00.b),Y		; 71 00
	sbc [$94.b],Y		; F7 94
	sep #$00		; E2 00
	inc $21.b		; E6 21
	cpy #$C107.w		; C0 07 C1
	eor $BE3FA7.l,X		; 5F A7 3F BE
	lda $FD79BB.l,X		; BF BB 79 FD
	sbc $7C79.w,X		; FD 79 7C
	bvs 123.b		; 70 7B
	lda ($B3.b,X)		; A1 B3
	cmp $EF.b,S		; C3 EF
	sta $8F3FDF.l		; 8F DF 3F 8F
	lda ($7E.b,S),Y		; B3 7E
	and $707E.w,Y		; 39 7E 70
	inc $FC60.w,X		; FE 60 FC
	ora $FD.b		; 05 FD
	ora $F3.b,S		; 03 F3
	ora [$FF.b]		; 07 FF
	ora [$FF.b]		; 07 FF
	beq -54.b		; F0 CA
	.db $42, $CA		; 42 CA
	stz $C4A9.w,X		; 9E A9 C4
	bra -87.b		; 80 A9
	cmp #$CBF5.w		; C9 F5 CB
	sbc #$E8C7.w		; E9 C7 E8
	sta ($F0.b,X)		; 81 F0
	bit $74.b,X		; 34 74
	bmi -58.b		; 30 C6
	rti		; 40

	rol $34B1.w,X		; 3E B1 34
	lda ($89.b,S),Y		; B3 89
	wai		; CB
	bit #$0CEB.w		; 89 EB 0C
	sbc $12C912.l		; EF 12 C9 12
	cmp #$9922.w		; C9 22 99
	ldx #$2219.w		; A2 19 22
	ora $0813.w,Y		; 19 13 08
	brk $C0.b		; 00 C0
	plp		; 28
	sbc $00FF00.l		; EF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $567F40.l,X		; FF 40 7F 56
	lsr $4C.b		; 46 4C
	jsr $2048.w		; 20 48 20
	jsr $2090.w		; 20 90 20
	bcc -128.b		; 90 80
	brk $30.b		; 00 30
	trb $6C68.w		; 1C 68 6C
	cli		; 58
	dec $00.b		; C6 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	php		; 08
	iny		; C8
	bpl -128.b		; 10 80
	bit $3804.w,X		; 3C 04 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	sed		; F8
	sei		; 78
	sed		; F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	beq  -8.b		; F0 F8
	beq -16.b		; F0 F0
	jmp ($7844.w,X)		; 7C 44 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $0A.b		; 00 0A
	cop $08.b		; 02 08
	ora ($08.b,X)		; 01 08
	ora $0C.b		; 05 0C
	asl $0E.b		; 06 0E
	asl $0E.b		; 06 0E
	asl $0E.b		; 06 0E
	ora $0F.b,S		; 03 0F
	php		; 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora $0E.b,S		; 03 0E
	ora ($0E.b,X)		; 01 0E
	brk $0E.b		; 00 0E
	php		; 08
	ora $0B0508.l		; 0F 08 05 0B
	ora #$0307.w		; 09 07 03
	php		; 08
	ora ($08.b,S),Y		; 13 08
	asl $00.b,X		; 16 00
	asl $10.b		; 06 10
	bit $2D01.w		; 2C 01 2D
	brk $08.b		; 00 08
	ora $070700.l		; 0F 00 07 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $1E0F0F.l		; 0F 0F 0F 1E
	asl $1E1E.w,X		; 1E 1E 1E
	cpy #$E0F0.w		; C0 F0 E0
	beq  32.b		; F0 20
	rts		; 60

	jsr $4040.w		; 20 40 40
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0C0.w		; C0 C0 E0
	bra -96.b		; 80 A0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	trb $1E1C.w		; 1C 1C 1E
	asl $0E1C.w,X		; 1E 1C 0E
	jmp ($0026.w)		; 6C 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	trb $3E1C.w		; 1C 1C 3E
	asl $043F.w		; 0E 3F 04
	and $F47E00.l,X		; 3F 00 7E F4
	bvs -16.b		; 70 F0
	sed		; F8
	cpx #$C0F0.w		; E0 F0 C0
	cpx #$80C0.w		; E0 C0 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bmi  -2.b		; 30 FE
	cpx #$C0FC.w		; E0 FC C0
	sed		; F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $59D3.w,Y		; 59 D3 59
	cmp $61.b,S		; C3 61
	and [$38.b]		; 27 38
	ora [$00.b]		; 07 00
	and $003C00.l,X		; 3F 00 3C 00
	bit $3E00.w,X		; 3C 00 3E
	adc $7D7D.w,X		; 7D 7D 7D
	and $183B.w,X		; 3D 3B 18
	ora [$00.b]		; 07 00
	trb $1B10.w		; 1C 10 1B
	bpl  11.b		; 10 0B
	php		; 08
	and $34.b,X		; 35 34
	phx		; DA
	sbc $0EE780.l,X		; FF 80 E7 0E
	pea $F23C.w		; F4 3C F2
	ply		; 7A
	sta $7E.b		; 85 7E
	ora $70.b,S		; 03 70
	ora $B4.b,S		; 03 B4
	.db $82, $C3, $81		; 82 C3 81
	jmp.w [$A804]		; DC 04 A8
	brk $48.b		; 00 48
	rti		; 40

	stx $FC84.w		; 8E 84 FC
	brk $FE.b		; 00 FE
	asl $0C7C.w		; 0E 7C 0C
	inc A		; 1A
	ror $3E1A.w,X		; 7E 1A 3E
	clc		; 18
	dec A		; 3A
	php		; 08
	inc A		; 1A
	ora $051F.w		; 0D 1F 05
	ora $041D04.l,X		; 1F 04 1D 04
	ora $0039.w		; 0D 39 00
	and $1B20.w,Y		; 39 20 1B
	cop $1B.b		; 02 1B
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	bpl  13.b		; 10 0D
	ora ($0C.b,X)		; 01 0C
	php		; 08
	ldx #$D23E.w		; A2 3E D2
	asl $1ED2.w,X		; 1E D2 1E
	cpx #$E10E.w		; E0 0E E1
	ora $780B70.l		; 0F 70 0B 78
	ora #$0878.w		; 09 78 08
	cmp $14.b,X		; D5 14
	sbc $04.b		; E5 04
	sbc ($00.b,X)		; E1 00
	sbc ($02.b,S),Y		; F3 02
	sed		; F8
	php		; 08
	sbc $F009.w,Y		; F9 09 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bmi -64.b		; 30 C0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$7808.w		; E0 08 78
	php		; 08
	bvs   4.b		; 70 04
	clv		; B8
	sty $38.b		; 84 38
	sty $C0.b		; 84 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	sty $0C.b		; 84 0C
	ora ($0D.b),Y		; 11 0D
	bpl  40.b		; 10 28
	cop $3A.b		; 02 3A
	brk $10.b		; 00 10
	bit $54.b		; 24 54
	jsr $0844.w		; 20 44 08
	tsb $48.b		; 04 48
	asl $0E0E.w		; 0E 0E 0E
	asl $1C1C.w		; 0E 1C 1C
	trb $181C.w		; 1C 1C 18
	clc		; 18
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	php		; 08
	clc		; 18
	php		; 08
	trb $1C08.w		; 1C 08 1C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq 112.b		; F0 70
	beq 112.b		; F0 70
	beq 112.b		; F0 70
	beq  48.b		; F0 30
	bvs  48.b		; 70 30
	sei		; 78
	bpl 120.b		; 10 78
	bpl  56.b		; 10 38
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	jsr $8CB8.w		; 20 B8 8C
	bmi -124.b		; 30 84
	cli		; 58
	cpy $4C.b		; C4 4C
	mvp $60,$28		; 44 28 60
	bpl 124.b		; 10 7C
	asl $1E7C.w		; 0E 7C 1E
	jmp ($0070.w,X)		; 7C 70 00
	sed		; F8
	bra  60.b		; 80 3C
	tsb $38.b		; 04 38
	brk $5C.b		; 00 5C
	rti		; 40

	jsr $2820.w		; 20 20 28
	rol $1E18.w		; 2E 18 1E
	rol $7C70.w,X		; 3E 70 7C
	jsl $1C421C.l		; 22 1C 42 1C
	.db $42, $1C		; 42 1C
	rti		; 40

	jmp $005C00.l		; 5C 00 5C 00
	tsb $1C20.w		; 0C 20 1C
	bit $7C1C.w,X		; 3C 1C 7C
	bit $3C7C.w,X		; 3C 7C 3C
	bit $3E3E.w,X		; 3C 3E 3E
	rol $3E3E.w,X		; 3E 3E 3E
	rol $1E1E.w,X		; 3E 1E 1E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	ora #$0307.w		; 09 07 03
	adc $B3CF43.l,X		; 7F 43 CF B3
	lda [$00.b]		; A7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	tsb $0F.b		; 04 0F
	php		; 08
	xce		; FB
	tyx		; BB
	xce		; FB
	xce		; FB
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	cpx #$0008.w		; E0 08 00
	jsr ($FEF0.w,X)		; FC F0 FE
	tya		; 98
	sbc $B4FF84.l,X		; FF 84 FF B4
	sbc $E00000.l,X		; FF 00 00 E0
	cpy #$1010.w		; C0 10 10
	sed		; F8
	php		; 08
	jsr ($BE14.w,X)		; FC 14 BE
	txa		; 8A
	dec $8690.w,X		; DE 90 86
	cop $3E.b		; 02 3E
	sbc ($0F.b,X)		; E1 0F
	sbc ($96.b,X)		; E1 96
	beq  11.b		; F0 0B
	cli		; 58
	ora [$5C.b]		; 07 5C
	sta $48.b,S		; 83 48
	sta ($4C.b,X)		; 81 4C
	bra -57.b		; 80 C7
	sta $A0BE81.l,X		; 9F 81 BE A0
	ora $008700.l		; 0F 00 87 00
	phb		; 8B
	php		; 08
	sta [$00.b]		; 87 00
	sta [$04.b]		; 87 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$6000.w		; E0 00 60
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	jsr $2000.w		; 20 00 20
	brk $30.b		; 00 30
	jsr $0010.w		; 20 10 00
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $40.b		; 00 40
	cpy #$C040.w		; C0 40 C0
	rti		; 40

	cpy #$4040.w		; C0 40 40
	ora ($40.b,X)		; 01 40
	brk $41.b		; 00 41
	cop $40.b		; 02 40
	ora ($42.b,X)		; 01 42
	cpy #$4080.w		; C0 80 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	eor ($01.b,X)		; 41 01
	ora ($30.b,X)		; 01 30
	ora [$31.b]		; 07 31
	lsr $29.b		; 46 29
	lsr $5917.w		; 4E 17 59
	and $7F.b,S		; 23 7F
	ora $5F1F6F.l		; 0F 6F 1F 5F
	ora $053C5F.l,X		; 1F 5F 3C 05
	jmp ($7445.w,X)		; 7C 45 74
	mvp $49,$68		; 44 68 49
	eor ($47.b,X)		; 41 47
	eor [$5F.b],Y		; 57 5F
	and $3F2E3F.l		; 2F 3F 2E 3F
	cli		; 58
	ldx $7FBA.w,Y		; BE BA 7F
	tda		; 7B
	sbc $8BFBBF.l,X		; FF BF FB 8B
	sbc ($C7.b)		; F2 C7
	sta $9F.b		; 85 9F
	lda $190297.l,X		; BF 97 02 19
	and $7E3A.w,X		; 3D 3A 7E
	dec A		; 3A
	sbc $82FFB2.l,X		; FF B2 FF 82
	sbc $0EFF04.l,X		; FF 04 FF 0E
	sbc $10FF02.l,X		; FF 02 FF 10
	bit $3810.w,X		; 3C 10 38
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bvs -16.b		; 70 F0
	rts		; 60

	beq  96.b		; F0 60
	beq  56.b		; F0 38
	and ($38.b,X)		; 21 38
	brk $38.b		; 00 38
	php		; 08
	sei		; 78
	pha		; 48
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	ldy $43.b,X		; B4 43
	ror $00.b,X		; 76 00
	brk $01.b		; 00 01
	trb $F7.b		; 14 F7
	rol A		; 2A
	sbc $2D.b,S		; E3 2D
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $FF0030.l,X		; 1F 30 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	rol A		; 2A
	jsl $1E011D.l		; 22 1D 01 1E
	brk $3F.b		; 00 3F
	jsr $202F.w		; 20 2F 20
	ora ($03.b,X)		; 01 03
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	ora $D13E.w,Y		; 19 3E D1
	stz $1CD1.w		; 9C D1 1C
	php		; 08
	rol $FC00.w,X		; 3E 00 FC
	brk $8E.b		; 00 8E
	brk $80.b		; 00 80
	ora ($0C.b)		; 12 0C
	jsr ($FAE0.w,X)		; FC E0 FA
	cpx #$E0FB.w		; E0 FB E0
	cmp $3BC0.w,X		; DD C0 3B
	bpl -127.b		; 10 81
	sta ($01.b,X)		; 81 01
	asl $3F00.w		; 0E 00 3F
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	bne  -8.b		; D0 F8
	rts		; 60

	sed		; F8
	bpl -24.b		; 10 E8
	bmi  70.b		; 30 46
	bit $3EC3.w,X		; 3C C3 3E
	cmp $F8.b,S		; C3 F8
	cpy #$E0F0.w		; C0 F0 E0
	bne   0.b		; D0 00
	rts		; 60

	brk $80.b		; 00 80
	bra -88.b		; 80 A8
	brk $3E.b		; 00 3E
	cop $9C.b		; 02 9C
	brk $18.b		; 00 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	jmp ($7830.w,X)		; 7C 30 78
	bmi 120.b		; 30 78
	bmi  -8.b		; 30 F8
	bvs  -8.b		; 70 F8
	rts		; 60

	beq  60.b		; F0 3C
	jsr $043C.w		; 20 3C 04
	sec		; 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	php		; 08
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	ora #$2912.w		; 09 12 29
	cop $1C.b		; 02 1C
	jsl $3E021C.l		; 22 1C 02 3E
	rti		; 40

	rol $0240.w,X		; 3E 40 02
	rti		; 40

	tsb $38.b		; 04 38
	tsb $1C0C.w		; 0C 0C 1C
	trb $1C1C.w		; 1C 1C 1C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $003C.w,X		; 3C 3C 00
	brk $11.b		; 00 11
	brk $02.b		; 00 02
	ora #$0008.w		; 09 08 00
	phd		; 0B
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($0E.b,X)		; 01 0E
	asl $0606.w		; 0E 06 06
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $80.b		; 00 80
	jsr $10E0.w		; 20 E0 10
	bvs   8.b		; 70 08
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F0F0.w		; E0 F0 F0
	brk $00.b		; 00 00
	ora ($1F.b,S),Y		; 13 1F
	php		; 08
	ora $380016.l		; 0F 16 00 38
	bmi 112.b		; 30 70
	sed		; F8
	beq -16.b		; F0 F0
	beq -32.b		; F0 E0
	cpy #$13E0.w		; C0 E0 13
	ora $003F08.l,X		; 1F 08 3F 00
	and $20FE10.l,X		; 3F 10 FE 20
	jsr ($F8C0.w,X)		; FC C0 F8
	bra  -8.b		; 80 F8
	brk $F0.b		; 00 F0
	ora ($C7.b,X)		; 01 C7
	ora $87.b,S		; 03 87
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	sta ($81.b,X)		; 81 81
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($05.b,X)		; 01 05
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpx #$E0E0.w		; E0 E0 E0
	brk $C0.b		; 00 C0
	jsr $20C0.w		; 20 C0 20
	cpy #$D000.w		; C0 00 D0
	brk $D0.b		; 00 D0
	brk $60.b		; 00 60
	bpl -64.b		; 10 C0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	rti		; 40

	ora $04.b,S		; 03 04
	asl A		; 0A
	brk $04.b		; 00 04
	php		; 08
	trb $01.b		; 14 01
	ora #$0010.w		; 09 10 00
	cop $22.b		; 02 22
	tsb $0303.w		; 0C 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $0E0E.w		; 0E 0E 0E
	asl $1C1C.w		; 0E 1C 1C
	bpl  16.b		; 10 10
	ora $7C025E.l		; 0F 5E 02 7C
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	ora ($0C.b,X)		; 01 0C
	ora ($1C.b,X)		; 01 1C
	ora ($1C.b,X)		; 01 1C
	ora ($3C.b,X)		; 01 3C
	bit $003F.w		; 2C 3F 00
	ora $040300.l		; 0F 00 03 04
	ora $0C.b,S		; 03 0C
	phd		; 0B
	tsb $1C03.w		; 0C 03 1C
	ora [$1C.b],Y		; 17 1C
	ora [$45.b]		; 07 45
	bpl -122.b		; 10 86
	bvc -126.b		; 50 82
	eor $4893.w,Y		; 59 93 48
	ora ($CC.b),Y		; 11 CC
	plp		; 28
	dec $28.b		; C6 28
	dec $2C.b		; C6 2C
	cmp $00.b,S		; C3 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $60FF00.l,X		; FF 00 FF 60
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -64.b		; F0 C0
	cpx #$E0C0.w		; E0 C0 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E040.w		; E0 40 E0
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$1F00.w		; C0 00 1F
	bmi   7.b		; 30 07
	bpl   7.b		; 10 07
	bpl  15.b		; 10 0F
	php		; 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $000F08.l,X		; 1F 08 0F 00
	ora $000F10.l,X		; 1F 10 0F 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	tsb $0F.b		; 04 0F
	tsb $1E.b		; 04 1E
	php		; 08
	asl $3D08.w,X		; 1E 08 3D
	bpl  60.b		; 10 3C
	bpl 120.b		; 10 78
	bmi 120.b		; 30 78
	jsr $0EF8.w		; 20 F8 0E
	php		; 08
	asl $1C02.w		; 0E 02 1C
	bpl  28.b		; 10 1C
	ora $38.b		; 05 38
	and ($38.b,X)		; 21 38
	brk $78.b		; 00 78
	pha		; 48
	bvs   0.b		; 70 00
	ora #$6406.w		; 09 06 64
	sbc ($0C.b,S),Y		; F3 0C
	ora $E0.b,S		; 03 E0
	pea $E013.w		; F4 13 E0
	rtl		; 6B

	beq  90.b		; F0 5A
	bpl -48.b		; 10 D0
	trb $7F00.w		; 1C 00 7F
	jsr $00FF.w		; 20 FF 00
	sed		; F8
	adc $FB.b,S		; 63 FB
	ora [$1F.b]		; 07 1F
	sta [$87.b]		; 87 87
	sbc [$07.b]		; E7 07
	sbc $03.b,S		; E3 03
	brk $1F.b		; 00 1F
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	jsr $8000.w		; 20 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bne   0.b		; D0 00
	cpy $6620.w		; CC 20 66
	bpl  50.b		; 10 32
	dey		; 88
	clc		; 18
	cpy $8C.b		; C4 8C
	rts		; 60

	bra 112.b		; 80 70
	rti		; 40

	brk $00.b		; 00 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	mvp $10,$18		; 44 18 10
	bit $EC28.w,X		; 3C 28 EC
	mvn $3C,$C4		; 54 C4 3C
	stx $38.b		; 86 38
	.db $82, $7E, $C2		; 82 7E C2
	trb $00C1.w		; 1C C1 00
	cpx #$E828.w		; E0 28 E8
	mvn $38,$44		; 54 44 38
	brk $78.b		; 00 78
	brk $7E.b		; 00 7E
	cop $3C.b		; 02 3C
	brk $7E.b		; 00 7E
	rti		; 40

	and $7F1F1F.l		; 2F 1F 1F 7F
	txs		; 9A
	ora $38.b,S		; 03 38
	.db $82, $72, $04		; 82 72 04
	cpx $08.b		; E4 08
	iny		; C8
	bpl -112.b		; 10 90
	jsr $1E06.w		; 20 06 1E
	asl $7C3F.w		; 0E 3F 7C
	adc $F87E7C.l,X		; 7F 7C 7E F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$0020.w		; C0 20 00
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	clc		; 18
	sec		; 38
	jmp $207C.w		; 4C 7C 20
	bit $0058.w,X		; 3C 58 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  56.b		; 30 38
	clc		; 18
	jmp ($7E4C.w,X)		; 7C 4C 7E
	jsr $00FE.w		; 20 FE 00
	jsr ($0000.w,X)		; FC 00 00
	ora ($81.b,X)		; 01 81
	ora $D7.b,S		; 03 D7
	eor $9F7FFF.l		; 4F FF 7F 9F
	lsr $941F.w		; 4E 1F 94
	stx $E648.w		; 8E 48 E6
	brk $81.b		; 00 81
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	asl $1F.b		; 06 1F
	jmp ($E83F.w)		; 6C 3F E8
	and $103F60.l,X		; 3F 60 3F 10
	trb $0701.w		; 1C 01 07
	ora $0F.b,S		; 03 0F
	ora [$1F.b]		; 07 1F
	asl $1C3F.w		; 0E 3F 1C
	and $1C7F18.l,X		; 3F 18 7F 1C
	adc $037F07.l,X		; 7F 07 7F 03
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	cop $1E.b		; 02 1E
	asl $1D.b		; 06 1D
	ora $183C.w		; 0D 3C 18
	rol $0F08.w,X		; 3E 08 0F
	tsb $0CE8.w		; 0C E8 0C
	dey		; 88
	jmp $4088.w		; 4C 88 40
	bpl  64.b		; 10 40
	rts		; 60

	rti		; 40

	rti		; 40

	brk $D4.b		; 00 D4
	php		; 08
	eor $09.b		; 45 09
	beq  48.b		; F0 30
	bcs  48.b		; B0 30
	bcs  48.b		; B0 30
	ldy #$8020.w		; A0 20 80
	brk $C0.b		; 00 C0
	clv		; B8
	cpx #$E01E.w		; E0 1E E0
	ora $A36168.l,X		; 1F 68 61 A3
	plp		; 28
	eor $90.b		; 45 90
	ora ($38.b,X)		; 01 38
	sed		; F8
	plp		; 28
	bit $2839.w,X		; 3C 39 28
	and $007994.l		; 2F 94 79 00
	sta $0FD707.l,X		; 9F 07 D7 0F
	adc $EFC7C7.l		; 6F C7 C7 EF
	cmp [$FA.b]		; C7 FA
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	bne  22.b		; D0 16
	ror $00.b		; 66 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	dec A		; 3A
	bpl  63.b		; 10 3F
	inc A		; 1A
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $1A.b		; 00 1A
	brk $3F.b		; 00 3F
	bpl  12.b		; 10 0C
	asl $3E1C.w,X		; 1E 1C 3E
	trb $1C3E.w		; 1C 3E 1C
	bit $3C1C.w,X		; 3C 1C 3C
	bit $383C.w,X		; 3C 3C 38
	jmp ($7C38.w,X)		; 7C 38 7C
	asl $1E00.w,X		; 1E 00 1E
	cop $3C.b		; 02 3C
	jsr $003C.w		; 20 3C 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	sec		; 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	bit $047C.w,X		; 3C 7C 04
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	trb $1C0C.w		; 1C 0C 1C
	tsb $0C1C.w		; 0C 1C 0C
	trb $0C04.w		; 1C 04 0C
	tsb $0C.b		; 04 0C
	bit $1C24.w,X		; 3C 24 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tya		; 98
	rti		; 40

	asl A		; 0A
	rts		; 60

	lsr $0420.w		; 4E 20 04
	and ($24.b)		; 32 24
	bpl   1.b		; 10 01
	bpl  17.b		; 10 11
	php		; 08
	brk $09.b		; 00 09
	bit $1C3C.w,X		; 3C 3C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $0E0C.w		; 0C 0C 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	cpy #$C0DD.w		; C0 DD C0
	.db $42, $E7		; 42 E7
	lda $EDE7FB.l		; AF FB E7 ED
	eor $A6.b,S		; 43 A6
	ora ($D3.b,X)		; 01 D3
	brk $92.b		; 00 92
	pha		; 48
.ACCU 16
	rep #$E2		; C2 E2
	jmp $02FD.w		; 4C FD 02
	sbc $40F7A1.l,X		; FF A1 F7 40
	xce		; FB
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F4C0.w		; E0 C0 F4
	cpx #$FC7E.w		; E0 7E FC
	tsx		; BA
	dec A		; 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	jsr ($FE0C.w,X)		; FC 0C FE
	ora ($7F.b)		; 12 7F
	dec $DEFE.w,X		; DE FE DE
	inc $EEDE.w		; EE DE EE
	dec $CEFE.w		; CE FE CE
	inc $CE.b,X		; F6 CE
	inc $CE.b,X		; F6 CE
	inc $C6.b,X		; F6 C6
	sbc [$EC.b],Y		; F7 EC
	ora $EC1FEC.l,X		; 1F EC 1F EC
	ora $F41FF4.l,X		; 1F F4 1F F4
	and $E02FE4.l,X		; 3F E4 2F E0
	and $DF2FE0.l		; 2F E0 2F DF
	ora $0E0F.w,Y		; 19 0F 0E
	ora ($03.b,S),Y		; 13 03
	and ($00.b)		; 32 00
	rol A		; 2A
	brk $68.b		; 00 68
	cop $50.b		; 02 50
	asl A		; 0A
	mvn $08,$0A		; 54 0A 08
	and $83FF86.l,X		; 3F 86 FF 83
	sbc $00FF80.l,X		; FF 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora $010F02.l		; 0F 02 0F 01
	asl $1C03.w		; 0E 03 1C
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	tsb $05.b		; 04 05
	asl $00.b		; 06 00
	asl $0D08.w		; 0E 08 0D
	brk $0B.b		; 00 0B
	brk $90.b		; 00 90
	cmp #$A00C.w		; C9 0C A0
	adc ($34.b)		; 72 34
	inc $7BD0.w,X		; FE D0 7B
	pla		; 68
	jsr $80AB.w		; 20 AB 80
	trb $49.b		; 14 49
	jmp ($3EC0.w)		; 6C C0 3E
	sta ($FF.b,X)		; 81 FF
	bpl  -1.b		; 10 FF
	bra  -9.b		; 80 F7
	rti		; 40

	sbc $C37C00.l,X		; FF 00 7C C3
	tsa		; 3B
	lda $3B.b,S		; A3 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	and $67.b,S		; 23 67
	tad		; 5B
	eor ($00.b,S),Y		; 53 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $7F.b		; 06 7F
	jmp $007C7F.l		; 5C 7F 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $FF02.w		; CE 02 FF
	cpy #$F0FF.w		; C0 FF F0
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $F148.w		; CE 48 F1
	bpl  -6.b		; 10 FA
	.db $82, $3C, $C1		; 82 3C C1
	ora $3FC1.w,X		; 1D C1 3F
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	ora $300730.l,X		; 1F 30 07 30
	ora $180318.l		; 0F 18 03 18
	adc $407E41.l,X		; 7F 41 7E 40
	asl $3F00.w,X		; 1E 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $D85008.l		; 0F 08 50 D8
	rts		; 60

	iny		; C8
	bmi -56.b		; 30 C8
	bmi -52.b		; 30 CC
	bcc -52.b		; 90 CC
	clv		; B8
	cpx $6410.w		; EC 10 64
	dey		; 88
	stz $A0.b		; 64 A0
	bra  48.b		; 80 30
	brk $78.b		; 00 78
	pha		; 48
	sed		; F8
	iny		; C8
	sec		; 38
	php		; 08
	bpl   0.b		; 10 00
	sed		; F8
	rts		; 60

	jsr ($9064.w,X)		; FC 64 90
	rti		; 40

	clc		; 18
	mvp $42,$18		; 44 18 42
	jmp $4600.w		; 4C 00 46
	ora ($39.b,X)		; 01 39
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $3E3C.w,X		; 3C 3C 3E
	rol $3E3E.w,X		; 3E 3E 3E
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	jsr $E000.w		; 20 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	clc		; 18
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	brk $BC.b		; 00 BC
	sta ($40.b,X)		; 81 40
	rep #$0A		; C2 0A
	stz $84.b		; 64 84
	ldy $4454.w,X		; BC 54 44
	bvc  71.b		; 50 47
	jsr $82C9.w		; 20 C9 82
	and ($7E.b),Y		; 31 7E
	brk $3E.b		; 00 3E
	inc A		; 1A
	clv		; B8
	ldy #$0640.w		; A0 40 06
	brk $BE.b		; 00 BE
	brk $B8.b		; 00 B8
	asl $36.b		; 06 36
	dec $AACE.w		; CE CE AA
	and $39FE.w,Y		; 39 FE 39
	plp		; 28
	plp		; 28
	asl $D0.b,X		; 16 D0
	sty $38.b		; 84 38
	ldx $68.b,Y		; B6 68
	jmp ($E0E2.w,X)		; 7C E2 E0
	cmp ($EE.b)		; D2 EE
	dec $FE.b		; C6 FE
	dec $FE.b,X		; D6 FE
	dec $2C3C.w,X		; DE 3C 2C
	rti		; 40

	rti		; 40

	sty $B4.b		; 84 B4
	brk $70.b		; 00 70
	tsb $4AEC.w		; 0C EC 4A
	brk $50.b		; 00 50
	tsb $54.b		; 04 54
	brk $10.b		; 00 10
	pha		; 48
	clc		; 18
	rti		; 40

	clc		; 18
	rti		; 40

	bra  64.b		; 80 40
	bra  96.b		; 80 60
	bit $383C.w,X		; 3C 3C 38
	sec		; 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	lda $48.b		; A5 48
	and #$0A44.w		; 29 44 0A
	stz $15.b		; 64 15
	.db $62, $8A, $31		; 62 8A 31
	ldy #$0607.w		; A0 07 06
	ora $003D04.l,X		; 1F 04 3D 00
	inc $FE00.w,X		; FE 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	asl $FE.b		; 06 FE
	php		; 08
	inx		; E8
	xba		; EB
	and #$1494.w		; 29 94 14
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	and $001E04.l,X		; 3F 04 1E 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$E7.b]		; C7 E7
	adc [$E7.b]		; 67 E7
	ror $24EF.w		; 6E EF 24
	beq  32.b		; F0 20
	sei		; 78
	bpl 120.b		; 10 78
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	cpx $1F.b		; E4 1F
	inc $1F.b		; E6 1F
	cpx $9F.b		; E4 9F
	bvs  27.b		; 70 1B
	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	sec		; 38
	jsr $0018.w		; 20 18 00
	mvn $35,$0A		; 54 0A 35
	asl A		; 0A
	and ($1E.b,X)		; 21 1E
	and ($1E.b,X)		; 21 1E
	beq  15.b		; F0 0F
	asl $0001.w,X		; 1E 01 00
	trb $0E02.w		; 1C 02 0E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	tsb $0D0F.w		; 0C 0F 0D
	tsb $1806.w		; 0C 06 18
	ora $39.b		; 05 39
	asl A		; 0A
	and [$04.b],Y		; 37 04
	tda		; 7B
	bpl 102.b		; 10 66
	brk $DF.b		; 00 DF
	jmp $7EDE.w		; 4C DE 7E
	dec $1017.w,X		; DE 17 10
	asl $00.b,X		; 16 00
	and #$2429.w		; 29 29 24
	tsb $59.b		; 04 59
	eor $3040.w,Y		; 59 40 30
	cpy #$C8BF.w		; C0 BF C8
	and $09FC99.l,X		; 3F 99 FC 09
	jmp.w [$8C00]		; DC 00 8C
	brk $04.b		; 00 04
	ora #$45C6.w		; 09 C6 45
	asl $0FCE.w		; 0E CE 0F
	sta [$17.b],Y		; 97 17
	phk		; 4B
	tad		; 5B
	sta $BB.b,S		; 83 BB
	ora $3B.b,S		; 03 3B
	ora $1B.b,S		; 03 1B
	brk $18.b		; 00 18
	sbc ($FD.b,X)		; E1 FD
	cpx #$C0FE.w		; E0 FE C0
	sbc $63435B.l,X		; FF 5B 43 63
	and [$3B.b]		; 27 3B
	eor [$1D.b]		; 47 1D
	sbc $44FF00.l,X		; FF 00 FF 44
	lda $A047.w,X		; BD 47 A0
	ora [$71.b],Y		; 17 71
	adc $193B3D.l,X		; 7F 3D 3B 19
	ora [$00.b]		; 07 00
	sta $20B900.l,X		; 9F 00 B9 20
	jsl $001820.l		; 22 20 18 00
	asl $FC80.w		; 0E 80 FC
	sbc $CEFFEE.l,X		; FF EE FF CE
	sbc $84FFD6.l,X		; FF D6 FF 84
	sbc $FCDE00.l		; EF 00 DE FC
	beq -16.b		; F0 F0
	php		; 08
	jsr ($FEE0.w,X)		; FC E0 FE
	cpy $EE.b		; C4 EE
	stx $C6.b		; 86 C6
	.db $82, $D6, $04		; 82 D6 04
	bit $0004.w		; 2C 04 00
	brk $40.b		; 00 40
	brk $07.b		; 00 07
	tsb $0C01.w		; 0C 01 0C
	ora $06.b,S		; 03 06
	ora ($07.b,X)		; 01 07
	ora [$08.b]		; 07 08
	ora $3F0F07.l,X		; 1F 07 0F 3F
	asl A		; 0A
	and $0003.w,Y		; 39 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	asl $3F.b		; 06 3F
	asl $3E.b		; 06 3E
	iny		; C8
	ror $98.b		; 66 98
	rol $94.b,X		; 36 94
	rol $48.b,X		; 36 48
	ror $7A80.w,X		; 7E 80 7A
.ACCU 16
	rep #$A6		; C2 A6
	lsr $BF.b		; 46 BF
	jmp.w [$9C3D]		; DC 3D 9C
	tsb $CC.b		; 04 CC
	tsb $C8.b		; 04 C8
	brk $94.b		; 00 94
	trb $5C.b		; 14 5C
	jmp $069A1A.l		; 5C 1A 9A 06
	stx $0E.b		; 86 0E
	rol $0703.w,X		; 3E 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $0003.w		; 0E 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	cop $24.b		; 02 24
	ora ($04.b)		; 12 04
	ora ($04.b)		; 12 04
	ora ($14.b)		; 12 14
	cop $14.b		; 02 14
	ora ($10.b,X)		; 01 10
	ora ($10.b,X)		; 01 10
	php		; 08
	trb $0C1C.w		; 1C 1C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0E0E.w		; 0C 0E 0E
	asl $070E.w		; 0E 0E 07
	ora [$0C.b]		; 07 0C
	trb $1C18.w		; 1C 18 1C
	bpl  28.b		; 10 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1014.w		; 20 14 10
	bit $10.b		; 24 10
	bit $70.b		; 24 70
	tsb $34.b		; 04 34
	pha		; 48
	cpx $08.b		; E4 08
	inx		; E8
	brk $F8.b		; 00 F8
	brk $08.b		; 00 08
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	lsr $21.b		; 46 21
	eor $CC20.w		; 4D 20 CC
	cop $9A.b		; 02 9A
	rti		; 40

	tya		; 98
	mvp $80,$34		; 44 34 80
	bmi -128.b		; 30 80
	jsr $1E88.w		; 20 88 1E
	asl $1E1E.w,X		; 1E 1E 1E
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3838.w,X		; 3C 38 38
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	clv		; B8
	adc $6184.w,Y		; 79 84 61
	mvp $4C,$21		; 44 21 4C
	and ($4C.b,X)		; 21 4C
	and ($4C.b,X)		; 21 4C
	and ($2C.b,X)		; 21 2C
	brk $2C.b		; 00 2C
	brk $1E.b		; 00 1E
	ror $1E1E.w,X		; 7E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	and $401400.l,X		; 3F 00 14 40
	bit $43.b,X		; 34 43
	plp		; 28
	rti		; 40

	ora $40.b,X		; 15 40
	sta $ED20.w		; 8D 20 ED
	brk $EC.b		; 00 EC
	ora ($00.b,X)		; 01 00
	brk $38.b		; 00 38
	tsa		; 3B
	sec		; 38
	tsa		; 3B
	bmi  55.b		; 30 37
	jsr $002F.w		; 20 2F 00
	eor $005F00.l,X		; 5F 00 5F 00
	eor $BF7C7F.l,X		; 5F 7F 7C BF
	ror $BF9F.w,X		; 7E 9F BF
	eor $4F.b,S		; 43 4F
	and ($23.b),Y		; 31 23
	eor $2811.w,X		; 5D 11 28
	eor $4421.w		; 4D 21 44
	lda $1CFD.w,Y		; B9 FD 1C
	ror $FF0E.w,X		; 7E 0E FF
	ora ($FF.b,X)		; 01 FF
	jsr $10FF.w		; 20 FF 10
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $0100.w,X		; FE 00 01
	brk $07.b		; 00 07
	ora $1F.b,S		; 03 1F
	tsb $3F.b		; 04 3F
	php		; 08
	adc $207F10.l,X		; 7F 10 7F 20
	inc $FF40.w,X		; FE 40 FF
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $111F08.l		; 0F 08 1F 11
	rol $7822.w,X		; 3E 22 78
	rti		; 40

	stz $04.b,X		; 74 04
	sbc $3F85.w		; ED 85 3F
	sbc $00FFE0.l,X		; FF E0 FF 00
	cpx #$B818.w		; E0 18 B8
	jmp $A63C.w		; 4C 3C A6
	ror $9E12.w,X		; 7E 12 9E
	nop		; EA
	asl $80FF.w		; 0E FF 80
	sed		; F8
	php		; 08
	cpy #$0840.w		; C0 40 08
	bit $7E04.w,X		; 3C 04 7E
	eor ($DF.b)		; 52 DF
	inx		; E8
	sta $7C07F0.l		; 8F F0 07 7C
	cmp [$78.b]		; C7 78
	cmp $7A.b,S		; C3 7A
	cmp $1E.b,S		; C3 1E
	cmp $3C.b,S		; C3 3C
	adc ($1C.b,X)		; 61 1C
	adc ($0E.b,X)		; 61 0E
	adc ($1E.b,X)		; 61 1E
	and ($BA.b),Y		; 31 BA
	.db $82, $BE, $82		; 82 BE 82
	bit $7C00.w,X		; 3C 00 7C
	rti		; 40

	lsr $3E40.w,X		; 5E 40 3E
	jsr $213F.w		; 20 3F 21
	ora $980001.l		; 0F 01 00 98
	bvs -104.b		; 70 98
	rts		; 60

	dey		; 88
	bmi -116.b		; 30 8C
	sec		; 38
	sty $C470.w		; 8C 70 C4
	clc		; 18
	dec $1C.b		; C6 1C
	dec $F0.b		; C6 F0
	bcc -32.b		; 90 E0
	bra  -8.b		; 80 F8
	dey		; 88
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bit $7C04.w,X		; 3C 04 7C
	mvp $40,$78		; 44 78 40
	bvc   4.b		; 50 04
	rti		; 40

	tsb $40.b		; 04 40
	jsr $2048.w		; 20 48 20
	tsb $0C22.w		; 0C 22 0C
	and ($26.b,X)		; 21 26
	brk $23.b		; 00 23
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	asl $1F1E.w,X		; 1E 1E 1F
	ora $001F1F.l,X		; 1F 1F 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -80.b		; 80 B0
	cpy #$F0F8.w		; C0 F8 F0
	jsr ($3E7C.w,X)		; FC 7C 3E
	rol $3E3A.w,X		; 3E 3A 3E
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	cpx #$38F8.w		; E0 F8 38
	jsr ($7E38.w,X)		; FC 38 7E
	clc		; 18
	ror $1630.w,X		; 7E 30 16
	cop $12.b		; 02 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $36.b		; 00 36
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	tsb $09.b		; 04 09
	trb $09.b		; 14 09
	ora $0D10.w		; 0D 10 0D
	ora ($3A.b)		; 12 3A
	brk $3A.b		; 00 3A
	brk $3E.b		; 00 3E
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $06.b		; 06 06
	asl $0E.b		; 06 0E
	asl $0C0C.w		; 0E 0C 0C
	trb $1C1C.w		; 1C 1C 1C
	trb $0000.w		; 1C 00 00
	ora $F4.b,X		; 15 F4
	sta $C638.w,X		; 9D 38 C6
	sec		; 38
	cpx $D0.b		; E4 D0
	pea $FCE0.w		; F4 E0 FC
	cpx #$E0E8.w		; E0 E8 E0
	jsr $1ED4.w		; 20 D4 1E
	asl A		; 0A
	dec $04C6.w,X		; DE C6 04
	tsb $88.b		; 04 88
	iny		; C8
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	bpl -12.b		; 10 F4
	jsr $842E.w		; 20 2E 84
	rol $1FCE.w		; 2E CE 1F
	sbc $876F1F.l,X		; FF 1F 6F 87
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	tsb $5F.b		; 04 5F
	asl $073F.w		; 0E 3F 07
	sta $00DF03.l,X		; 9F 03 DF 00
	cmp [$00.b]		; C7 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	bra  44.b		; 80 2C
	ora ($2A.b)		; 12 2A
	bpl  40.b		; 10 28
	tsb $2C.b		; 04 2C
	brk $0C.b		; 00 0C
	jsr $2008.w		; 20 08 20
	rti		; 40

	jsr $3040.w		; 20 40 30
	tsb $0C0C.w		; 0C 0C 0C
	tsb $1818.w		; 0C 18 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	jsr $3080.w		; 20 80 30
	dey		; 88
	bmi -124.b		; 30 84
	tya		; 98
	brk $8C.b		; 00 8C
	cop $72.b		; 02 72
	ora ($0C.b,X)		; 01 0C
	brk $03.b		; 00 03
	brk $70.b		; 00 70
	bvs 112.b		; 70 70
	bvs 120.b		; 70 78
	sei		; 78
	jmp ($7C7C.w,X)		; 7C 7C 7C
	jmp ($0E0E.w,X)		; 7C 0E 0E
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $46.b		; 00 46
	and ($45.b),Y		; 31 45
	jsr $2248.w		; 20 48 22
	txs		; 9A
	rts		; 60

	bcc  68.b		; 90 44
	ldy $40.b,X		; B4 40
	ldy #$2848.w		; A0 48 28
	bra  14.b		; 80 0E
	asl $1E1E.w		; 0E 1E 1E
	trb $1C1C.w		; 1C 1C 1C
	trb $3838.w		; 1C 38 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	phx		; DA
	ora ($5A.b,X)		; 01 5A
	ora ($58.b,X)		; 01 58
	ora $58.b,S		; 03 58
	ora $18.b,S		; 03 18
	ora $10.b,S		; 03 10
	ora $08.b,S		; 03 08
	bpl   3.b		; 10 03
	asl $3F00.w,X		; 1E 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	bpl  23.b		; 10 17
	ora $04.b		; 05 04
	eor $20.b,S		; 43 20
	eor [$20.b],Y		; 57 20
	txa		; 8A
	and ($A5.b),Y		; 31 A5
	clc		; 18
	eor ($8C.b,S),Y		; 53 8C
	dey		; 88
	asl $40.b		; 06 40
	adc ($A3.b),Y		; 71 A3
	and $00FE00.l,X		; 3F 00 FE 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C0AF21.l,X		; FF 21 AF C0
	brk $81.b		; 00 81
	inc $FC01.w,X		; FE 01 FC
	and $C07EE0.l,X		; 3F E0 7E C0
	adc $07B000.l,X		; 7F 00 B0 07
	ldx $0E.b,Y		; B6 0E
	sbc $2AFB0F.l		; EF 0F FB 2A
	sbc ($50.b,S),Y		; F3 50
	sbc $80.b,S		; E3 80
	eor $A018.w,Y		; 59 18 A0
	ldy #$5F58.w		; A0 58 5F
	lsr $5F.b,X		; 56 5F
	asl $1F.b,X		; 16 1F
	bne  27.b		; D0 1B
	ldy $3D.b		; A4 3D
	pha		; 48
	tda		; 7B
	tya		; 98
	inc $50.b,X		; F6 50
	lda #$91EC.w		; A9 EC 91
	sbc $CB00.w		; ED 00 CB
	and ($E8.b,X)		; 21 E8
	ora $800FC0.l		; 0F C0 0F 80
	ora $063100.l,X		; 1F 00 31 06
	ror $0E.b		; 66 0E
	dec $DE1E.w		; CE 1E DE
	ora $065C.w,X		; 1D 5C 06
	bmi  14.b		; 30 0E
	clc		; 18
	asl A		; 0A
	clc		; 18
	ora $1D.b		; 05 1D
	ora $0F3F10.l		; 0F 10 3F 0F
	lsr $543F.w,X		; 5E 3F 54
	and ($1F.b),Y		; 31 1F
	bpl  23.b		; 10 17
	bpl  23.b		; 10 17
	bpl  10.b		; 10 0A
	php		; 08
	brk $00.b		; 00 00
	asl $0F.b		; 06 0F
	asl $3F.b		; 06 3F
	asl $383E.w		; 0E 3E 38
	sep #$0C		; E2 0C
	lda $14.b,S		; A3 14
	lda ($08.b,S),Y		; B3 08
	tyx		; BB
	brk $BD.b		; 00 BD
	brk $91.b		; 00 91
	sta $3F.b,S		; 83 3F
	stz $1E3E.w,X		; 9E 3E 1E
	cop $3E.b		; 02 3E
	jsl $16222E.l		; 22 2E 22 16
	ora ($1E.b)		; 12 1E
	asl $0E0E.w,X		; 1E 0E 0E
	ora $03.b,S		; 03 03
	ora [$3F.b]		; 07 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $7F.b,S		; 03 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $010030.l,X		; 3F 30 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $05.b		; 00 05
	bmi  61.b		; 30 3D
	rts		; 60

	sei		; 78
	rti		; 40

	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	sec		; 38
	brk $70.b		; 00 70
	bpl -32.b		; 10 E0
	jsr $40C0.w		; 20 C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $46.b		; 02 46
	asl $78FE.w		; 0E FE 78
	plx		; FA
	bmi -14.b		; 30 F2
	php		; 08
	rep #$88		; C2 88
	.db $42, $98		; 42 98
	.db $42, $98		; 42 98
	.db $42, $3A		; 42 3A
	dec A		; 3A
	tsb $1C0E.w		; 0C 0E 1C
	jsr ($FC1C.w,X)		; FC 1C FC
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $303C.w,X		; 3C 3C 30
	sty $B0.b		; 84 B0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	php		; 08
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	bpl  72.b		; 10 48
	bvc   8.b		; 50 08
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F3.b		; 00 F3
	cpx #$00FF.w		; E0 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F1.b		; 00 F1
	ora ($01.b,X)		; 01 01
	sbc $097E00.l,X		; FF 00 7E 09
	inc $FF14.w,X		; FE 14 FF
	ora $FF.b,S		; 03 FF
	phd		; 0B
	sbc [$38.b]		; E7 38
	sbc [$69.b]		; E7 69
	cmp [$FB.b],Y		; D7 FB
	.db $82, $23, $23		; 82 23 23
	ora $3E01.w,X		; 1D 01 3E
	jsr $4063.w		; 20 63 40
	txy		; 9B
	sta ($4A.b,X)		; 81 4A
	rti		; 40

	lda $94.b,X		; B5 94
	jsr ($7C87.w,X)		; FC 87 7C
	asl $9E.b		; 06 9E
	bra  86.b		; 80 56
	phb		; 8B
	cli		; 58
	and $001C80.l,X		; 3F 80 1C 00
	bne -96.b		; D0 A0
	bcc 114.b		; 90 72
	brk $F1.b		; 00 F1
	brk $7F.b		; 00 7F
	rts		; 60

	adc $0069.w,Y		; 79 69 00
	bra   0.b		; 80 00
	cpx #$2000.w		; E0 00 20
	cpy #$0040.w		; C0 40 00
	cpy #$E0C0.w		; C0 C0 E0
	jsr $00F0.w		; 20 F0 00
	bmi -112.b		; 30 90
	ldy #$F008.w		; A0 08 F0
	cpy $F8.b		; C4 F8
	sbc ($FC.b)		; F2 FC
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	cpx #$C0C0.w		; E0 C0 C0
	jsr $F020.w		; 20 20 F0
	bpl  -8.b		; 10 F8
	iny		; C8
	sed		; F8
	inc $FDDA.w,X		; FE DA FD
	inc A		; 1A
	sbc $FD9A.w,X		; FD 9A FD
	tya		; 98
	jsr ($FE30.w,X)		; FC 30 FE
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	jsr ($FCE4.w,X)		; FC E4 FC
	php		; 08
	jmp ($1C08.w,X)		; 7C 08 1C
	clc		; 18
	phy		; 5A
	eor ($38.b)		; 52 38
	brk $F0.b		; 00 F0
	ldy #$0000.w		; A0 00 00
	eor ($09.b)		; 52 09
	eor ($09.b)		; 52 09
	ora ($08.b,S),Y		; 13 08
	tas		; 1B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	tsb $2201.w		; 0C 01 22
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	trb $3A1C.w		; 1C 1C 3A
	sty $18.b		; 84 18
	cpy #$C515.w		; C0 15 C5
	txa		; 8A
	pha		; 48
	stx $10.b,Y		; 96 10
	ora [$70.b],Y		; 17 70
	phd		; 0B
	sei		; 78
	ora $1C.b		; 05 1C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cop $F8.b		; 02 F8
	ora [$F0.b]		; 07 F0
	ora $A02FE0.l		; 0F E0 2F A0
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	sbc $FFFEFF.l,X		; FF FF FE FF
	sed		; F8
	sbc $00F840.l,X		; FF 40 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	cop $F0.b		; 02 F0
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	ora $E0FF18.l,X		; 1F 18 FF E0
	jsr ($F080.w,X)		; FC 80 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $427E08.l		; 0F 08 7E 42
	sed		; F8
	php		; 08
	cpx #$8020.w		; E0 20 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $01.b,S		; 03 01
	and $217F03.l,X		; 3F 03 7F 21
	sbc [$59.b]		; E7 59
	cmp ($00.b,S),Y		; D3 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	tsb $3B.b		; 04 3B
	plp		; 28
	adc $7D5D.w,X		; 7D 5D 7D
	adc $7800.w,X		; 7D 00 78
	bvs -124.b		; 70 84
	brk $FE.b		; 00 FE
	sed		; F8
	sbc $E6FFCC.l,X		; FF CC FF E6
	sbc $DAFFC2.l,X		; FF C2 FF DA
	sbc $082030.l,X		; FF 30 20 08
	php		; 08
	jsr ($FE84.w,X)		; FC 84 FE
	asl A		; 0A
	cmp $C3EF45.l,X		; DF 45 EF C3
	sbc $81C3C8.l		; EF C8 C3 81
	and $78.b,X		; 35 78
	and $6808.w		; 2D 08 68
	asl $0F60.w		; 0E 60 0F
	adc $8C.b,S		; 63 8C
	eor ($9D.b)		; 52 9D
	and $FF47B3.l		; 2F B3 47 FF
	eor $43.b,S		; 43 43
	adc ($03.b,S),Y		; 73 03
	adc ($01.b),Y		; 71 01
	sei		; 78
	asl A		; 0A
	sed		; F8
	txa		; 8A
	inx		; E8
	bit #$93D1.w		; 89 D1 93
	sta $8F.b,S		; 83 8F
	stz $141C.w,X		; 9E 1C 14
	ora [$4A.b],Y		; 17 4A
	bit $7CB0.w,X		; 3C B0 7C
	stz $FF.b,X		; 74 FF
	sbc [$FE.b],Y		; F7 FE
	adc $E617F5.l,X		; 7F F5 17 E6
	sbc $FCE1.w,X		; FD E1 FC
	inx		; E8
	phb		; 8B
	lda ($33.b,S),Y		; B3 33
	tda		; 7B
	stz $FC.b,X		; 74 FC
	stz $FF.b,X		; 74 FF
	stz $FF.b		; 64 FF
	tsb $FF.b		; 04 FF
	and $578F.w,Y		; 39 8F 57
	wai		; CB
	and ($EB.b,X)		; 21 EB
	ora ($B9.b)		; 12 B9
	and ($BC.b,X)		; 21 BC
	bvs  -1.b		; 70 FF
	phd		; 0B
	tya		; 98
	ora [$50.b],Y		; 17 50
	bvs   3.b		; 70 03
	and $07.b,X		; 35 07
	ora $07.b,X		; 15 07
	tsb $07.b		; 04 07
	rol A		; 2A
	phd		; 0B
	bvs   0.b		; 70 00
	ora [$E0.b]		; 07 E0
	ora $F0F0E0.l		; 0F E0 F0 F0
	pea $CFE7.w		; F4 E7 CF
	sbc $00DE98.l		; EF 98 DE 00
	sed		; F8
	rti		; 40

	bcs -64.b		; B0 C0
	bpl   0.b		; 10 00
	bpl -64.b		; 10 C0
	sed		; F8
	sta [$F9.b]		; 87 F9
	ora $E41CF0.l		; 0F F0 1C E4
	bpl -112.b		; 10 90
	rts		; 60

	jsr $00E0.w		; 20 E0 00
	cpx #$4C00.w		; E0 00 4C
	and ($4C.b,X)		; 21 4C
	and ($6D.b,X)		; 21 6D
	bra  45.b		; 80 2D
.ACCU 16
	rep #$AD		; C2 AD
	rep #$44		; C2 44
	.db $62, $84, $22		; 62 84 22
	inc $30.b		; E6 30
	asl $1E9E.w,X		; 1E 9E 1E
	stz $1E1E.w,X		; 9E 1E 1E
	stz $5C9C.w		; 9C 9C 5C
	jmp $FC1C9C.l		; 5C 9C 1C FC
	bit $0CCC.w,X		; 3C CC 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$BC78.w		; E0 78 BC
	adc $077F8F.l,X		; 7F 8F 7F 07
	and $001F03.l,X		; 3F 03 1F 00
	ora [$00.b]		; 07 00
	brk $40.b		; 00 40
	brk $70.b		; 00 70
	brk $7F.b		; 00 7F
	ora ($3F.b,X)		; 01 3F
	jsr $101F.w		; 20 1F 10
	ora $020308.l		; 0F 08 03 02
	brk $00.b		; 00 00
	clc		; 18
	bit $3C38.w,X		; 3C 38 3C
	and $183C.w,Y		; 39 3C 18
	sec		; 38
	asl $3F.b,X		; 16 3F
	brk $30.b		; 00 30
	asl $011F.w		; 0E 1F 01
	asl $0038.w		; 0E 38 00
	bit $3C04.w,X		; 3C 04 3C
	ora $38.b,S		; 03 38
	ora [$32.b]		; 07 32
	and $060F10.l		; 2F 10 0F 06
	ora $0C1100.l,X		; 1F 00 11 0C
	beq  13.b		; F0 0D
	brk $24.b		; 00 24
	cpy #$6696.w		; C0 96 66
	lsr A		; 4A
	and ($C4.b)		; 32 C4
	and $4300.w,Y		; 39 00 43
	and $030002.l,X		; 3F 02 00 03
	asl $0EE1.w,X		; 1E E1 0E
	sbc ($00.b),Y		; F1 00
	sbc $FD00.w,Y		; F9 00 FD
	brk $86.b		; 00 86
	bit $7EBC.w,X		; 3C BC 7E
	jsr ($0000.w,X)		; FC 00 00
	rti		; 40

	bra  80.b		; 80 50
	bcc -128.b		; 90 80
	bpl  48.b		; 10 30
	dey		; 88
	bvc  12.b		; 50 0C
	trb $8E.b		; 14 8E
	stx $8B.b		; 86 8B
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bvs 112.b		; 70 70
	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	pea $1870.w		; F4 70 18
	rti		; 40

	tas		; 1B
	rti		; 40

	and $3840.w,X		; 3D 40 38
	bra 112.b		; 80 70
	ora $60.b		; 05 60
	php		; 08
	rts		; 60

	bpl  32.b		; 10 20
	bcc  63.b		; 90 3F
	and $3F3F3F.l,X		; 3F 3F 3F 3F
	and $F87F7F.l,X		; 3F 7F 7F F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$60E0.w		; E0 E0 60
	rts		; 60

	.db $42, $8E		; 42 8E
	ora $C027.w,Y		; 19 27 C0
	ora [$F0.b]		; 07 F0
	ora [$78.b]		; 07 78
	ora [$1E.b]		; 07 1E
	eor [$07.b]		; 47 07
	ora ($03.b,S),Y		; 13 03
	ora [$05.b]		; 07 05
	tsb $C2.b		; 04 C2
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	sbc $FCF8.w,Y		; F9 F8 FC
	sed		; F8
	inc $3E38.w,X		; FE 38 3E
	tsb $030F.w		; 0C 0F 03
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	brk $07.b		; 00 07
	asl $0E.b		; 06 0E
	eor $010000.l,X		; 5F 00 00 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	ora [$02.b]		; 07 02
	ora $003F04.l,X		; 1F 04 3F 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E060.w		; C0 60 E0
	brk $E0.b		; 00 E0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	eor $61C3.w,Y		; 59 C3 61
	and [$38.b]		; 27 38
	eor [$00.b]		; 47 00
	and $003C00.l,X		; 3F 00 3C 00
	trb $3E00.w		; 1C 00 3E
	clc		; 18
	and $3B3D7D.l,X		; 3F 7D 3D 3B
	clc		; 18
	ora [$00.b]		; 07 00
	trb $1B10.w		; 1C 10 1B
	bpl  11.b		; 10 0B
	php		; 08
	ora $04.b,X		; 15 04
	sec		; 38
	jsr $E780.w		; 20 80 E7
	ora $F23DF4.l		; 0F F4 3D F2
	ply		; 7A
	sta $7E.b		; 85 7E
	ora $70.b,S		; 03 70
	ora $B4.b,S		; 03 B4
	.db $82, $28, $EC		; 82 28 EC
	jmp.w [$A904]		; DC 04 A9
	brk $49.b		; 00 49
	rti		; 40

	stx $FC84.w		; 8E 84 FC
	brk $FE.b		; 00 FE
	asl $0C7C.w		; 0E 7C 0C
	bne -64.b		; D0 C0
	ora $BF3FDF.l,X		; 1F DF 3F BF
	and $BC1EBE.l,X		; 3F BE 1E BC
	ora $F8.b		; 05 F8
	brk $79.b		; 00 79
	asl A		; 0A
	ora ($0A.b,X)		; 01 0A
	ora ($AE.b,X)		; 01 AE
	lda $5C7F5E.l,X		; BF 5E 7F 5C
	adc $007F58.l,X		; 7F 58 7F 00
	ora $000700.l,X		; 1F 00 07 00
	ora $8C1F00.l,X		; 1F 00 1F 8C
	php		; 08
	brk $01.b		; 00 01
	pld		; 2B
	brk $A9.b		; 00 A9
	tsb $28.b		; 04 28
	stx $08.b		; 86 08
	lda [$4C.b]		; A7 4C
	lda $46.b,S		; A3 46
	and ($08.b),Y		; 31 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0EFF00.l,X		; FF 00 FF 0E
	cpy #$E10D.w		; C0 0D E1
	ora ($E3.b)		; 12 E3
	sty $67.b,X		; 94 67
	bne  39.b		; D0 27
	bvs   7.b		; 70 07
	bit $5C83.w,X		; 3C 83 5C
	.db $82, $1F, $E0		; 82 1F E0
	asl $05F0.w		; 0E F0 05
	sbc $FA02.w,Y		; F9 02 FA
	tsb $FD.b		; 04 FD
	brk $FB.b		; 00 FB
	brk $F6.b		; 00 F6
	ora ($F5.b,X)		; 01 F5
	bra -112.b		; 80 90
	jsr $60B0.w		; 20 B0 60
	beq -64.b		; F0 C0
	bne -112.b		; D0 90
	bra  80.b		; 80 50
	bra -48.b		; 80 D0
	jsr $2090.w		; 20 90 20
	rts		; 60

	brk $E0.b		; 00 E0
	ldy #$6060.w		; A0 60 60
	rts		; 60

	cpx #$E060.w		; E0 60 E0
	rts		; 60

	rts		; 60

	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	tsb $3F.b		; 04 3F
	bmi  -2.b		; 30 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $84FC11.l,X		; 1F 11 FC 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	asl $3F.b		; 06 3F
	bmi  -4.b		; 30 FC
	bra -16.b		; 80 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $80FC10.l,X		; 1F 10 FC 80
	cpx #$0020.w		; E0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $00F000.l,X		; FF 00 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$1800.w		; E0 00 18
	brk $0C.b		; 00 0C
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0040.w		; C0 40 00
	brk $0C.b		; 00 0C
	tsb $0006.w		; 0C 06 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	and [$3F.b],Y		; 37 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $10.b		; C6 10
	pea $601A.w		; F4 1A 60
	asl A		; 0A
	sec		; 38
	sta $8631.w		; 8D 31 86
	eor $28C6.w,X		; 5D C6 28
	cpx #$F718.w		; E0 18 F7
	jsr ($E41C.w,X)		; FC 1C E4
	tsb $FC.b		; 04 FC
	tsb $82F2.w		; 0C F2 82
	adc $3905.w,X		; 7D 05 39
	ora ($5F.b,X)		; 01 5F
	eor $2C.b,S		; 43 2C
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rts		; 60

	cpy #$0010.w		; C0 10 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$0000.w		; E0 00 00
	ora $200E10.l		; 0F 10 0E 20
	trb $1841.w		; 1C 41 18
	.db $42, $18		; 42 18
	mvp $24,$48		; 44 48 24
	jsr $1E12.w		; 20 12 1E
	brk $0F.b		; 00 0F
	ora $3E1F1F.l		; 0F 1F 1F 3E
	rol $3C3C.w,X		; 3E 3C 3C
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	tsb $000C.w		; 0C 0C 00
	brk $06.b		; 00 06
	sbc $FFFF3F.l,X		; FF 3F FF FF
	sbc $00FFE0.l,X		; FF E0 FF 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FFC0.l,X		; FF C0 FF 00
	sbc $0FFF00.l,X		; FF 00 FF 0F
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F880.w		; C0 80 F8
	beq  -1.b		; F0 FF
	jmp ($07FF.w,X)		; 7C FF 07
	adc $000700.l,X		; 7F 00 07 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	bpl  -2.b		; 10 FE
	cop $FF.b		; 02 FF
	brk $3F.b		; 00 3F
	jsr $0203.w		; 20 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $3F.b,S		; 03 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$05.b]		; 07 05
	brk $1C.b		; 00 1C
	clc		; 18
	rol $7F3C.w,X		; 3E 3C 7F
	clc		; 18
	cmp ($10.b,S),Y		; D3 10
	cmp $80.b,S		; C3 80
	sbc [$C0.b]		; E7 C0
	sbc $00FFF0.l,X		; FF F0 FF 00
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	clc		; 18
	ror $BE3C.w,X		; 7E 3C BE
	ldx $5DDD.w,Y		; BE DD 5D
	sbc [$A4.b]		; E7 A4
	sbc $00E0.w,X		; FD E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF1F.l,X		; FF 1F FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $E3.b,S		; E3 E3
	sbc $F0FFC0.l,X		; FF C0 FF F0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($3F.b,X)		; 01 3F
	adc $FFFFFF.l,X		; 7F FF FF FF
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $00FF10.l,X		; 1F 10 FF 00
	sbc $30F000.l,X		; FF 00 F0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	trb $3EE0.w		; 1C E0 3E
	cpy $EC1D.w		; CC 1D EC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	dey		; 88
	sty $EECE.w		; 8C CE EE
	eor $282F40.l		; 4F 40 2F 28
	ora ($1F.b,X)		; 01 1F
	brk $0B.b		; 00 0B
	asl $08.b		; 06 08
	ora ($06.b,X)		; 01 06
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $7007E0.l,X		; 1F E0 07 70
	cop $22.b		; 02 22
	tsb $04.b		; 04 04
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $4F1E6F.l		; 4F 6F 1E 4F
	stz $09CE.w		; 9C CE 09
	cmp $2042.w		; CD 42 20
	ldy $00.b		; A4 00
	sta $7D00.w		; 8D 00 7D
	bra -98.b		; 80 9E
	ora $383FBC.l,X		; 1F BC 3F 38
	and $803F30.l,X		; 3F 30 3F 80
	sta $5B40.w,X		; 9D 40 5B
	bvs 119.b		; 70 77
	bvs 119.b		; 70 77
	sei		; 78
	brk $0C.b		; 00 0C
	cpy #$0016.w		; C0 16 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  56.b		; F0 38
	sec		; 38
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	brk $FA.b		; 00 FA
	brk $11.b		; 00 11
	nop		; EA
	ora ($0A.b),Y		; 11 0A
	bpl  11.b		; 10 0B
	php		; 08
	ora $08.b		; 05 08
	ora $0D.b		; 05 0D
	brk $E0.b		; 00 E0
	sbc $00EFE0.l		; EF E0 EF 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora [$3C.b]		; 07 3C
	cpy #$708F.w		; C0 8F 70
	eor $3C.b,S		; 43 3C
	jsr $901F.w		; 20 1F 90
	asl $8448.w		; 0E 48 84
	jsr $30C0.w		; 20 C0 30
	cpy #$FF00.w		; C0 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	cmp $000F00.l		; CF 00 0F 00
	ldy #$3F20.w		; A0 20 3F
	adc $00FF00.l,X		; 7F 00 FF 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $E01FE0.l,X		; 1F E0 1F E0
	ora $C040C0.l,X		; 1F C0 40 C0
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora ($01.b,X)		; 01 01
	ora $C1.b,S		; 03 C1
	sbc $02FF03.l,X		; FF 03 FF 02
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	brk $02.b		; 00 02
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	ora $3D.b,S		; 03 3D
	and $0300.w,X		; 3D 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc $F6D0.w,X		; FD D0 F6
	cpy #$A0D3.w		; C0 D3 A0
	cmp ($08.b),Y		; D1 08
	bne  12.b		; D0 0C
	pla		; 68
	asl $6E.b,X		; 16 6E
	ora ($31.b,X)		; 01 31
	php		; 08
	stx $CFDE.w		; 8E DE CF
	cmp $E7CFCF.l,X		; DF CF CF E7
	sbc [$E3.b]		; E7 E3
	sbc $E1.b,S		; E3 E1
	sbc ($F0.b,X)		; E1 F0
	beq -16.b		; F0 F0
	beq   0.b		; F0 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $68.b		; 00 68
	brk $34.b		; 00 34
	brk $1A.b		; 00 1A
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	sed		; F8
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	inc $FFFC.w,X		; FE FC FF
	and $1F00FF.l,X		; 3F FF 00 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FC20.w		; E0 20 FC
	tsb $FF.b		; 04 FF
	ora ($FF.b,X)		; 01 FF
	brk $0F.b		; 00 0F
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	cpy #$00F8.w		; C0 F8 00
	inc $0300.w,X		; FE 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F040.w		; C0 40 F0
	bpl  -2.b		; 10 FE
	inc $03.b		; E6 03
	ora $07.b,S		; 03 07
	adc $4CFF27.l,X		; 7F 27 FF 4C
	sbc $18FF59.l,X		; FF 59 FF 18
	adc $0E1F3C.l,X		; 7F 3C 1F 0E
	ora $370F00.l,X		; 1F 00 0F 37
	ora $6F.b,S		; 03 6F
	brk $5E.b		; 00 5E
	php		; 08
	jmp $101E10.l		; 5C 10 1E 10
	and $0C0E38.l,X		; 3F 38 0E 0C
	brk $00.b		; 00 00
	cpx #$C0FD.w		; E0 FD C0
	jsr ($EE02.w,X)		; FC 02 EE
	sta ($C9.b,X)		; 81 C9
	rol $7ED0.w		; 2E D0 7E
	bra -103.b		; 80 99
	adc ($32.b,X)		; 61 32
	sbc ($FA.b,X)		; E1 FA
	iny		; C8
	sbc [$14.b],Y		; F7 14
	ora $360C.w,X		; 1D 0C 36
	brk $3F.b		; 00 3F
	bpl 127.b		; 10 7F
	brk $5E.b		; 00 5E
	lsr $1F.b		; 46 1F
	ora $00C000.l		; 0F 00 C0 00
	cpy #$FF00.w		; C0 00 FF
	sta ($FF.b,X)		; 81 FF
	bra  -1.b		; 80 FF
	bcc -57.b		; 90 C7
	and $88.b,S		; 23 88
	eor ($C8.b,X)		; 41 C8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	and $3E3F38.l,X		; 3F 38 3F 3E
	brk $38.b		; 00 38
	cmp [$97.b]		; C7 97
	and [$17.b]		; 27 17
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	inc $00FF.w,X		; FE FF 00
	sbc $070003.l,X		; FF 03 00 07
	sta $8E.b,S		; 83 8E
	lsr $00.b		; 46 00
	brk $03.b		; 00 03
	cop $FF.b		; 02 FF
	sbc ($FF.b,X)		; E1 FF
	brk $FF.b		; 00 FF
	ora $010300.l,X		; 1F 00 03 01
	ora [$82.b]		; 07 82
	sta $000000.l		; 8F 00 00 00
	beq   0.b		; F0 00
	jsr ($3E3E.w,X)		; FC 3E 3E
	asl $020E.w		; 0E 0E 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$00FC.w		; E0 FC 00
	rol $0E00.w,X		; 3E 00 0E
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $52.b		; 00 52
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	ora $80.b,S		; 03 80
	jmp $73F810.l		; 5C 10 F8 73
	cpx #$18E0.w		; E0 E0 18
	ora [$71.b]		; 07 71
	bra   0.b		; 80 00
	cpx #$C300.w		; E0 00 C3
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	bmi  -9.b		; 30 F7
	cpy #$00FF.w		; C0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora ($00.b,X)		; 01 00
	ora $3FFF07.l,X		; 1F 07 FF 3F
	sbc $F8FFFF.l,X		; FF FF FF F8
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tsb $607F.w		; 0C 7F 60
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $C002.w,X		; FE 02 C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	and $FF7FFF.l,X		; 3F FF 7F FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $80FF10.l,X		; 1F 10 FF 80
	sbc $8FFF00.l,X		; FF 00 FF 8F
	cpx #$0060.w		; E0 60 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra 121.b		; 80 79
	adc $3CFFFF.l,X		; 7F FF FF 3C
	sbc $000000.l,X		; FF 00 00 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $F3.b		; 00 F3
	bmi  -1.b		; 30 FF
	adc $00FF.w,X		; 7D FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0C0.w		; C0 C0 E0
	bra -128.b		; 80 80
	cpy #$00E0.w		; C0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E040.w		; C0 40 E0
	cpy #$80F0.w		; C0 F0 80
	beq -64.b		; F0 C0
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	cpy #$10FC.w		; C0 FC 10
	sbc $001F03.l,X		; FF 03 1F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $08F8.w		; 20 F8 08
	ror $0F42.w,X		; 7E 42 0F
	php		; 08
	ora ($00.b,X)		; 01 00
	cpx #$D000.w		; E0 00 D0
	brk $30.b		; 00 30
	brk $32.b		; 00 32
	dec $0CF5.w		; CE F5 0C
	tas		; 1B
	php		; 08
	brk $DF.b		; 00 DF
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	ora $E4.b		; 05 E4
	phd		; 0B
	dey		; 88
	ora [$E0.b]		; 07 E0
	ora [$E7.b]		; 07 E7
	ora $0000F0.l		; 0F F0 00 00
	brk $00.b		; 00 00
	jsr $F23C.w		; 20 3C F2
	ora $F9.b,S		; 03 F9
	ora ($00.b,X)		; 01 00
	sbc $FA0FCC.l,X		; FF CC 0F FA
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	bpl  -3.b		; 10 FD
	ora ($FE.b,X)		; 01 FE
	brk $F0.b		; 00 F0
	beq -13.b		; F0 F3
	ora $FD.b,S		; 03 FD
	ora ($18.b,X)		; 01 18
	and ($00.b),Y		; 31 00
	ora $0201.w,X		; 1D 01 02
	asl $00.b		; 06 00
	php		; 08
	brk $06.b		; 00 06
	asl $0D.b		; 06 0D
	ora $0A0A.w		; 0D 0A 0A
	asl $0006.w		; 0E 06 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $041F00.l		; 0F 00 1F 04
	ora $091E08.l,X		; 1F 08 1E 09
	trb $000E.w		; 1C 0E 00
	adc $118686.l,X		; 7F 86 86 11
	eor $9D60.w		; 4D 60 9D
	cpy #$C019.w		; C0 19 C0
	.db $82, $E0, $21		; 82 E0 21
	and $06F901.l,X		; 3F 01 F9 06
	pea $E809.w		; F4 09 E8
	asl $3EDE.w,X		; 1E DE 3E
	ldx $3E3E.w,Y		; BE 3E 3E
	jmp $11D05D.l		; 5C 5D D0 11
	ora [$37.b]		; 07 37
	ror $06.b,X		; 76 06
	stx $0F.b		; 86 0F
	asl $1E.b,X		; 16 1E
	and $783E.w,X		; 3D 3E 78
	jmp ($F8F0.w,X)		; 7C F0 F8
	cpx #$C6F0.w		; E0 F0 C6
	cmp $668F86.l		; CF 86 8F 66
	adc $90FFC4.l,X		; 7F C4 FF 90
	inc $FE30.w,X		; FE 30 FE
	rts		; 60

	jsr ($F8E0.w,X)		; FC E0 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	jsr $10F8.w		; 20 F8 10
	jmp ($1E00.w,X)		; 7C 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	bra  24.b		; 80 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	pha		; 48
	mvn $4A,$00		; 54 00 4A
	jsr $220C.w		; 20 0C 22
	and [$10.b]		; 27 10
	ora ($08.b,S),Y		; 13 08
	ora #$0504.w		; 09 04 05
	cop $30.b		; 02 30
	bmi  56.b		; 30 38
	sec		; 38
	trb $1C1C.w		; 1C 1C 1C
	trb $0E0E.w		; 1C 0E 0E
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	eor $2620.w		; 4D 20 26
	ora ($12.b),Y		; 11 12
	php		; 08
	ora #$0404.w		; 09 04 04
	cop $02.b		; 02 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $1E.b		; 00 1E
	asl $0E0E.w,X		; 1E 0E 0E
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($08.b),Y		; 11 08
	tsb $02.b		; 04 02
	.db $82, $01, $01		; 82 01 01
	bra  65.b		; 80 41
	brk $21.b		; 00 21
	rti		; 40

	brk $A0.b		; 00 A0
	bpl -128.b		; 10 80
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	rti		; 40

	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $38.b		; 00 38
	bra  60.b		; 80 3C
	bra  30.b		; 80 1E
	cpy #$30C3.w		; C0 C3 30
	ora $00.b		; 05 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$7070.w		; E0 70 70
	sei		; 78
	sei		; 78
	bit $0E3C.w,X		; 3C 3C 0E
	asl $0303.w		; 0E 03 03
	rol $1CFF.w,X		; 3E FF 1C
	adc $983F9D.l,X		; 7F 9D 3F 98
	rol $7F10.w,X		; 3E 10 7F
	sta $7F.b,S		; 83 7F
	ora [$F8.b]		; 07 F8
	ora [$C0.b]		; 07 C0
	ldx $DE8C.w,Y		; BE 8C DE
	jmp.w [$D8DC]		; DC DC D8
	cmp $BAD0.w,X		; DD D0 BA
	bra 116.b		; 80 74
	tsb $C8.b		; 04 C8
	php		; 08
	lda $F86000.l,X		; BF 00 60 F8
	jsr $A0F8.w		; 20 F8 A0
	sed		; F8
	brk $70.b		; 00 70
	cpx #$C040.w		; E0 40 C0
	jsr $50A0.w		; 20 A0 50
	cpx #$F031.w		; E0 31 F0
	bmi -16.b		; 30 F0
	bra  48.b		; 80 30
	bpl -64.b		; 10 C0
	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$C040.w		; E0 40 C0
	brk $B4.b		; 00 B4
	ror $48.b		; 66 48
	cmp $408C21.l		; CF 21 8C 40
	bpl  -3.b		; 10 FD
	rol $3FFF.w,X		; 3E FF 3F
	sbc $BF4E3F.l,X		; FF 3F 4E BF
	inc A		; 1A
	ora $34.b,S		; 03 34
	ora $58.b		; 05 58
	tad		; 5B
	ldy #$B8AF.w		; A0 AF B8
	lda $87BFBF.l,X		; BF BF BF 87
	lda $C73F00.l,X		; BF 00 3F C7
	sed		; F8
	sbc $EB7BF1.l,X		; FF F1 7B EB
	sta ($41.b,X)		; 81 41
	rol $FC3E.w,X		; 3E 3E FC
	sbc $EE.b,X		; F5 EE
	dex		; CA
	lda $05.b,X		; B5 05
	asl $E6.b		; 06 E6
	rti		; 40

	sbc $FF00.w,Y		; F9 00 FF
	brk $FF.b		; 00 FF
	asl $E4FF.w,X		; 1E FF E4
	sbc $04FFCA.l,X		; FF CA FF 04
	cmp $083F0C.l		; CF 0C 3F 08
	adc $207E10.l,X		; 7F 10 7E 20
	jsr ($FC40.w,X)		; FC 40 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	ora $223E11.l,X		; 1F 11 3E 22
	jmp ($7844.w,X)		; 7C 44 78
	php		; 08
	bvs  16.b		; 70 10
	rts		; 60

	jsr $4050.w		; 20 50 40
	bmi  16.b		; 30 10
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $1F.b,S		; 03 1F
	ora $7F1C3F.l		; 0F 3F 1C 7F
	bmi  -8.b		; 30 F8
	rts		; 60

	beq  64.b		; F0 40
	cpx #$0000.w		; E0 00 00
	ora $02.b,S		; 03 02
	ora $101F08.l		; 0F 08 1F 10
	and $407020.l,X		; 3F 20 70 40
	cpx #$C080.w		; E0 80 C0
	brk $30.b		; 00 30
	jsr ($F860.w,X)		; FC 60 F8
	cmp ($F1.b,X)		; C1 F1
	sbc $03.b,S		; E3 03
	and [$0F.b],Y		; 37 0F
	sep #$0E		; E2 0E
	php		; 08
	mvn $68,$11		; 54 11 68
	sed		; F8
	dey		; 88
	beq  17.b		; F0 11
	cpx #$0323.w		; E0 23 03
	ora [$E2.b]		; 07 E2
	sbc $281710.l		; EF 10 17 28
	tax		; AA
	bpl -108.b		; 10 94
	rti		; 40

	rti		; 40

	rts		; 60

	sbc ($81.b,X)		; E1 81
	sta $83.b,S		; 83 83
	stx $47.b		; 86 47
	trb $380E.w		; 1C 0E 38
	sta $8231.w		; 8D 31 82
	ora ($40.b,S),Y		; 13 40
	cpx #$F161.w		; E0 61 F1
	bra -32.b		; 80 E0
	sta ($C0.b,X)		; 81 C0
	ora $A0.b,S		; 03 A0
	ora [$40.b]		; 07 40
	asl $1C50.w,X		; 1E 50 1C
	beq 112.b		; F0 70
	brk $38.b		; 00 38
	bra -100.b		; 80 9C
	rti		; 40

	cmp $106720.l		; CF 20 67 10
	and ($08.b,S),Y		; 33 08
	ora $0C84.w,Y		; 19 84 0C
.ACCU 16
	rep #$E0		; C2 E0
	cpx #$7070.w		; E0 70 70
	clv		; B8
	clv		; B8
	jmp.w [$EFDC]		; DC DC EF
	sbc $7BF7F7.l		; EF F7 F7 7B
	tda		; 7B
	and $003D.w,X		; 3D 3D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $FE.b		; 00 FE
	brk $FA.b		; 00 FA
	brk $84.b		; 00 84
	php		; 08
	clc		; 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $FC0C.w		; 0C 0C FC
	jsr ($F0F0.w,X)		; FC F0 F0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $04.b,S		; 03 04
	ora $09.b,S		; 03 09
	ora [$03.b]		; 07 03
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	tsb $0F.b		; 04 0F
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	cpx #$0008.w		; E0 08 00
	jsr ($FEF0.w,X)		; FC F0 FE
	tya		; 98
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$1010.w		; C0 10 10
	sed		; F8
	php		; 08
	jsr ($BE14.w,X)		; FC 14 BE
	txa		; 8A
	bra -16.b		; 80 F0
	cpy #$E2FE.w		; C0 FE E2
	sbc $00FF01.l,X		; FF 01 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $10F0.w		; 20 F0 10
	inc $00.b,X		; F6 00
	cmp ($C0.b,X)		; C1 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $0E.b		; 02 0E
	ora $0D.b		; 05 0D
	ora $0C.b		; 05 0C
	asl $0A.b		; 06 0A
	ora $0C.b,S		; 03 0C
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	tsb $0D0C.w		; 0C 0C 0D
	ora $1D.b		; 05 1D
	ora $07.b,X		; 15 07
	cpy #$E80B.w		; C0 0B E8
	cop $7E.b		; 02 7E
	php		; 08
	and [$70.b],Y		; 37 70
	bra -42.b		; 80 D6
	asl $1B29.w		; 0E 29 1B
	cld		; D8
	and ($BF.b),Y		; 31 BF
	bra  87.b		; 80 57
	rti		; 40

	ora $000C.w		; 0D 0C 00
	sec		; 38
	brk $FF.b		; 00 FF
	asl $E7.b		; 06 E7
	ora ($C7.b,X)		; 01 C7
	tsb $0603.w		; 0C 03 06
	and ($51.b),Y		; 31 51
	plp		; 28
	lda ($C8.b,S),Y		; B3 C8
	cmp $820D24.l,X		; DF 24 0D 82
	and [$80.b],Y		; 37 80
	lda $4740.w,X		; BD 40 47
	rts		; 60

	sbc ($E9.b,X)		; E1 E9
	dec $C6.b		; C6 C6
	ora [$17.b]		; 07 17
	tsb $7200.w		; 0C 00 72
	bvs 120.b		; 70 78
	sei		; 78
	dec A		; 3A
	dec A		; 3A
	inc A		; 1A
	phx		; DA
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($FF.b,X)		; 01 FF
	asl $FF.b		; 06 FF
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cmp ($C0.b,X)		; C1 C0
	asl $0000.w		; 0E 00 00
	brk $38.b		; 00 38
	ora ($04.b,X)		; 01 04
	ora ($3B.b,X)		; 01 3B
	rti		; 40

	tsb $40.b		; 04 40
	ora [$B8.b]		; 07 B8
	ora $80.b		; 05 80
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	sec		; 38
	tsa		; 3B
	bit $3B3C.w,X		; 3C 3C 3B
	tsa		; 3B
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $10FC.w		; 20 FC 10
	inc $7F0C.w,X		; FE 0C 7F
	ora $3F.b,S		; 03 3F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	php		; 08
	jmp ($3F44.w,X)		; 7C 44 3F
	and ($0F.b,X)		; 21 0F
	php		; 08
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	bvs  -1.b		; 70 FF
	asl $00FF.w		; 0E FF 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $04FC.w		; 20 FC 04
	and $000020.l,X		; 3F 20 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	php		; 08
	ror $FE18.w,X		; 7E 18 FE
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora [$05.b]		; 07 05
	ora $161E0D.l		; 0F 0D 1E 16
	rol $7C26.w,X		; 3E 26 7C
	mvp $C0,$00		; 44 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	clc		; 18
	bra 120.b		; 80 78
	clc		; 18
	sei		; 78
	pla		; 68
	brk $60.b		; 00 60
	rti		; 40

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	clc		; 18
	bpl 124.b		; 10 7C
	pla		; 68
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F0.b		; 00 F0
	sta $98.b,S		; 83 98
	ldx $81.b		; A6 81
	cmp [$90.b],Y		; D7 90
	nop		; EA
	inx		; E8
	bcs -48.b		; B0 D0
	ror $D8A1.w		; 6E A1 D8
	eor [$A6.b]		; 47 A6
	tya		; 98
	brk $E1.b		; 00 E1
	brk $F3.b		; 00 F3
	brk $FF.b		; 00 FF
	inx		; E8
	sbc $00FF90.l,X		; FF 90 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C09F04.l,X		; FF 04 9F C0
	asl $0C61.w,X		; 1E 61 0C
	lda $48.b,S		; A3 48
	and [$C0.b]		; 27 C0
	eor $008E80.l		; 4F 80 8E 00
	eor $11.b,X		; 55 11
	ora #$03E9.w		; 09 E9 03
	sep #$07		; E2 07
	pea $F80F.w		; F4 0F F8
	ora $F00FF0.l		; 0F F0 0F F0
	ora $E00EE0.l,X		; 1F E0 0E E0
	sta [$60.b]		; 87 60
	adc ($18.b,X)		; 61 18
	clc		; 18
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $030707.l,X		; 1F 07 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	cpy #$30C7.w		; C0 C7 30
	sbc $F200.w,X		; FD 00 F2
	brk $6C.b		; 00 6C
	brk $10.b		; 00 10
	bra -96.b		; 80 A0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $FECE.w		; CE CE FE
	inc $FCFC.w,X		; FE FC FC
	beq -16.b		; F0 F0
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $3F0008.l		; 0F 08 00 3F
	bpl 126.b		; 10 7E
	bmi  -4.b		; 30 FC
	rts		; 60

	sed		; F8
	cpy #$85F9.w		; C0 F9 85
	beq   2.b		; F0 02
	cpx #$C001.w		; E0 01 C0
	asl $3C06.w,X		; 1E 06 3C
	bit $78.b		; 24 78
	rti		; 40

	sed		; F8
	dey		; 88
	beq  17.b		; F0 11
	cpx #$C023.w		; E0 23 C0
	eor ($80.b,X)		; 41 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	bra -96.b		; 80 A0
	bra  48.b		; 80 30
	bra -104.b		; 80 98
	rti		; 40

	sty $8660.w		; 8C 60 86
	beq -57.b		; F0 C7
	bne   0.b		; D0 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	cpy #$E060.w		; C0 60 E0
	bmi -80.b		; 30 B0
	clc		; 18
	clc		; 18
	tsb $2E8C.w		; 0C 8C 2E
	inc $C8D3.w		; EE D3 C8
	cmp $CCC4.w,Y		; D9 C4 CC
	rep #$46		; C2 46
	sbc ($83.b,X)		; E1 83
	bvs  65.b		; 70 41
	clv		; B8
	rts		; 60

	trb $0618.w		; 1C 18 06
	lda [$F7.b],Y		; B7 F7
	xce		; FB
	xce		; FB
	adc $1EFD.w,X		; 7D FD 1E
	dec $CF0F.w,X		; DE 0F CF
	ora [$47.b]		; 07 47
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	tsa		; 3B
	adc $7D.b,S		; 63 7D
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	ora $BE415D.l		; 0F 5D 41 BE
	sta ($E6.b,X)		; 81 E6
	sta ($DB.b,X)		; 81 DB
	clc		; 18
	ldy #$4E3F.w		; A0 3F 4E
	adc $1EE19D.l,X		; 7F 9D E1 1E
	cpy #$803F.w		; C0 3F 80
	adc ($01.b),Y		; 71 01
	ror $E601.w,X		; 7E 01 E6
	ora ($D0.b,X)		; 01 D0
	bpl -127.b		; 10 81
	ora ($3E.b,X)		; 01 3E
	jsr $407F.w		; 20 7F 40
	sbc $00FE80.l,X		; FF 80 FE 00
	ora ($00.b,X)		; 01 00
	rts		; 60

	ora $78033C.l,X		; 1F 3C 03 78
	brk $BF.b		; 00 BF
	brk $47.b		; 00 47
	brk $98.b		; 00 98
	jsr $C007.w		; 20 07 C0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra -65.b		; 80 BF
	cpy #$00C7.w		; C0 C7 00
	brk $AA.b		; 00 AA
	tad		; 5B
	tsb $08EF.w		; 0C EF 08
	inc $0C00.w		; EE 00 0C
	bne   8.b		; D0 08
	cpx #$0010.w		; E0 10 00
	brk $80.b		; 00 80
	brk $15.b		; 00 15
	sbc ($02.b),Y		; F1 02
	sbc ($04.b)		; F2 04
	pea $F808.w		; F4 08 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	cpx $F00F.w		; EC 0F F0
	ora $A01CC0.l,X		; 1F C0 1C A0
	sec		; 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	sbc ($03.b,S),Y		; F3 03
	inx		; E8
	php		; 08
	beq  16.b		; F0 10
	cpy #$A000.w		; C0 00 A0
	jsr $4040.w		; 20 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	ora ($0F.b,X)		; 01 0F
	tsb $1F.b		; 04 1F
	tsb $183F.w		; 0C 3F 18
	rol $7E18.w,X		; 3E 18 7E
	sec		; 38
	jmp ($7C30.w,X)		; 7C 30 7C
	asl $04.b		; 06 04
	ora $101D09.l		; 0F 09 1D 10
	asl $3C02.w,X		; 1E 02 3C
	jsr $043C.w		; 20 3C 04
	sei		; 78
	rti		; 40

	sei		; 78
	brk $08.b		; 00 08
	rol $FF24.w,X		; 3E 24 FF
	cpy #$00FE.w		; C0 FE 00
	sbc $20F740.l,X		; FF 40 F7 20
	sei		; 78
	bpl 127.b		; 10 7F
	tsb $DD3F.w		; 0C 3F DD
	bne  62.b		; D0 3E
	bpl -19.b		; 10 ED
	tay		; A8
	dec $46.b		; C6 46
	rts		; 60

	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $1E.b		; 00 1E
	brk $C6.b		; 00 C6
	and ($09.b,X)		; 21 09
	rol $37.b		; 26 37
	plp		; 28
	rol $79C1.w,X		; 3E C1 79
	ora [$1D.b]		; 07 1D
	tyx		; BB
	and [$05.b],Y		; 37 05
	tda		; 7B
	ply		; 7A
	cld		; D8
	ora $17D0.w,Y		; 19 D0 17
	cpy #$000E.w		; C0 0E 00
	ora $0700.w,Y		; 19 00 07
	php		; 08
	adc $60FF04.l,X		; 7F 04 FF 60
	sbc $9CC31C.l,X		; FF 1C C3 9C
	.db $42, $80		; 42 80
	.db $42, $02		; 42 02
	sbc $FFF7F7.l,X		; FF F7 F7 FF
	sbc [$EF.b],Y		; F7 EF
	sbc [$EE.b],Y		; F7 EE
	inc $3C.b,X		; F6 3C
	ldy $BD3D.w,X		; BC 3D BD
	and $003D.w,X		; 3D 3D 00
	.db $82, $63, $FF		; 82 63 FF
	sbc [$FF.b]		; E7 FF
	dec $FF.b		; C6 FF
	brk $FF.b		; 00 FF
	sbc ($F9.b,S),Y		; F3 F9
	ror $5CF6.w		; 6E F6 5C
	cpx $F9DA.w		; EC DA F9
	lda $B3D8.w,Y		; B9 D8 B3
	pea $B3A4.w		; F4 A4 B3
	and $20.b,S		; 23 20
	rts		; 60

	sbc $487F44.l,X		; FF 44 7F 48
	adc $10FF18.l,X		; 7F 18 FF 10
	sbc $20FF20.l,X		; FF 20 FF 20
	sbc $7CFF00.l,X		; FF 00 FF 7C
	ora $FE.b,S		; 03 FE
	cop $05.b		; 02 05
	clc		; 18
	ora [$F8.b]		; 07 F8
	sbc $001F00.l,X		; FF 00 1F 00
	and ($C0.b),Y		; 31 C0
	tsb $01F0.w		; 0C F0 01
	lda $E001.w,Y		; B9 01 E0
	ora $F8.b,S		; 03 F8
	ora $F8.b,S		; 03 F8
	ora $F8.b,S		; 03 F8
	ora $FC.b,S		; 03 FC
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	bpl  43.b		; 10 2B
	bmi   5.b		; 30 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $14.b		; 14 14
	asl A		; 0A
	dec A		; 3A
	pea $E807.w		; F4 07 E8
	ora $A01CD0.l		; 0F D0 1C A0
	sec		; 38
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	plx		; FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bne  16.b		; D0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	adc [$F0.b],Y		; 77 F0
	ora [$F0.b],Y		; 17 F0
	ora $70.b,S		; 03 70
	and ($18.b,X)		; 21 18
	bpl  12.b		; 10 0C
	php		; 08
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	brk $8E.b		; 00 8E
	ldx $7F4F.w,Y		; BE 4F 7F
	ora $17073F.l		; 0F 3F 07 17
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $E101.w,X		; FE 01 E1
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	bra -114.b		; 80 8E
	rts		; 60

	adc [$10.b]		; 67 10
	bpl   8.b		; 10 08
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F0F0.w		; E0 F0 F0
	sei		; 78
	sei		; 78
	trb $0E1C.w		; 1C 1C 0E
	asl $0707.w		; 0E 07 07
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1F.b,S		; 03 1F
	php		; 08
	and $003F0F.l,X		; 3F 0F 3F 00
	ora $000707.l,X		; 1F 07 07 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0F.b		; 02 0F
	php		; 08
	asl $1F12.w,X		; 1E 12 1F
	brk $0F.b		; 00 0F
	ora #$FC02.w		; 09 02 FC
	ora ($FC.b)		; 12 FC
	and ($FA.b,X)		; 21 FA
	cpy #$00F0.w		; C0 F0 00
	jsr ($FE08.w,X)		; FC 08 FE
	brk $FE.b		; 00 FE
	brk $C2.b		; 00 C2
	cmp ($C3.b)		; D2 C3
	and ($03.b)		; 32 03
	sbc ($91.b),Y		; F1 91
	cpx #$C000.w		; E0 00 C0
	rti		; 40

	rol $C022.w,X		; 3E 22 C0
	rti		; 40

	bra -128.b		; 80 80
	adc $FF3FFF.l,X		; 7F FF 3F FF
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $FF00FF.l,X		; 3F FF 00 FF
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FCFE.w,X		; FE FE FC
	inc $3E08.w,X		; FE 08 3E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $1CFE.w,X		; FE FE 1C
	sbc $007F08.l,X		; FF 08 7F 00
	rol $0C00.w,X		; 3E 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1000.w		; 20 00 10
	brk $E8.b		; 00 E8
	brk $3C.b		; 00 3C
	bra -98.b		; 80 9E
	rti		; 40

	sbc ($00.b,X)		; E1 00
	ora $000000.l,X		; 1F 00 00 00
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$F0F0.w		; E0 F0 F0
	sei		; 78
	sei		; 78
	bit $1E3C.w,X		; 3C 3C 1E
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	ora $0F.b,S		; 03 0F
	cop $1F.b		; 02 1F
	plp		; 28
	adc $1FFF4D.l,X		; 7F 4D FF 1F
	sbc $00FF3F.l,X		; FF 3F FF 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$0A.b]		; 07 0A
	cop $2D.b		; 02 2D
	brk $5F.b		; 00 5F
	php		; 08
	and $1E7F1C.l,X		; 3F 1C 7F 1E
	bvs  -4.b		; 70 FC
	rts		; 60

	jsr ($FC60.w,X)		; FC 60 FC
	rts		; 60

	jsr ($FE20.w,X)		; FC 20 FE
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	pla		; 68
	php		; 08
	jmp ($2E04.w)		; 6C 04 2E
	cop $2F.b		; 02 2F
	and #$1417.w		; 29 17 14
	ora [$1F.b]		; 07 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $82.b		; 00 82
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sbc ($11.b),Y		; F1 11
	lda ($84.b),Y		; B1 84
	bmi 120.b		; 30 78
	adc #$F38E.w		; 69 8E F3
	trb $F800.w		; 1C 00 F8
	tsb $83.b		; 04 83
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	brk $FF.b		; 00 FF
	pha		; 48
	cmp $E884F4.l		; CF F4 84 E8
	php		; 08
	bpl  16.b		; 10 10
	rti		; 40

	adc $1FFF8C.l,X		; 7F 8C FF 1F
	sbc $18E180.l,X		; FF 80 E1 18
	ora ($F1.b,X)		; 01 F1
	cop $E0.b		; 02 E0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpy #$E4DA.w		; C0 DA E4
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FE.b		; 00 FE
	asl A		; 0A
	ldy #$4005.w		; A0 05 40
	tsx		; BA
	brk $49.b		; 00 49
	bpl  84.b		; 10 54
	dey		; 88
	rol $40.b,X		; 36 40
	ora [$78.b]		; 07 78
	ora [$00.b]		; 07 00
	brk $7F.b		; 00 7F
	bra -65.b		; 80 BF
	cpy #$A0CF.w		; C0 CF A0
	lda [$30.b]		; A7 30
	and ($38.b,S),Y		; 33 38
	tsa		; 3B
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	eor ($3D.b,X)		; 41 3D
	bpl -115.b		; 10 8D
	sty $61.b		; 84 61
	rti		; 40

	sec		; 38
	ldy $18.b		; A4 18
	jmp $005C00.l		; 5C 00 5C 00
	cpy #$0000.w		; C0 00 00
	inc $FF01.w,X		; FE 01 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	cpy #$C0A8.w		; C0 A8 C0
	cld		; D8
	iny		; C8
	stz $2480.w		; 9C 80 24
	bit $08E4.w		; 2C E4 08
.INDEX 8
	sep #$1C		; E2 1C
	lda ($14.b)		; B2 14
	lda ($10.b)		; B2 10
	bne -128.b		; D0 80
	cpx #$90.b		; E0 90
	beq  60.b		; F0 3C
	cpx $18.b		; E4 18
	brk $BC.b		; 00 BC
	jsr $008C.w		; 20 8C 00
	tsb $0800.w		; 0C 00 08
	bra -100.b		; 80 9C
	rti		; 40

	lsr $2720.w		; 4E 20 27
	bpl  35.b		; 10 23
	bpl  57.b		; 10 39
	tsb $06.b		; 04 06
	ora ($01.b,X)		; 01 01
	brk $70.b		; 00 70
	bvs  56.b		; 70 38
	sec		; 38
	trb $0E1C.w		; 1C 1C 0E
	asl $0F0F.w		; 0E 0F 0F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	jsr $E000.w		; 20 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	ora $607C8C.l		; 0F 8C 7C 60
	and $B1.b,S		; 23 B1
	ora $973CC5.l,X		; 1F C5 3C 97
	bvs -33.b		; 70 DF
	rti		; 40

	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($90.b,S),Y		; 13 90
	trb $0280.w		; 1C 80 02
	.db $42, $0B		; 42 0B
	dey		; 88
	and $003F20.l		; 2F 20 3F 00
	brk $7C.b		; 00 7C
	sta $83.b,S		; 83 83
	ora $7D.b		; 05 7D
	pla		; 68
	sbc $FF057E.l		; EF 7E 05 FF
	ora [$0E.b]		; 07 0E
	asl $16.b		; 06 16
	ror $30.b,X		; 76 30
	bmi 125.b		; 30 7D
	ora ($E2.b,X)		; 01 E2
	adc ($90.b,X)		; 61 90
	sta ($FC.b,X)		; 81 FC
	ora $FE.b		; 05 FE
	ora [$FF.b]		; 07 FF
	ora [$EB.b]		; 07 EB
	adc [$A0.b]		; 67 A0
	bcc -120.b		; 90 88
	sty $32.b		; 84 32
	sta ($1C.b,X)		; 81 1C
	bra -121.b		; 80 87
	rti		; 40

	cmp ($30.b,X)		; C1 30
	beq  12.b		; F0 0C
	jsr ($C003.w,X)		; FC 03 C0
	cpy #$70.b		; C0 70
	beq 124.b		; F0 7C
	jsr ($FF7F.w,X)		; FC 7F FF
	and $8F8F3F.l,X		; 3F 3F 8F 8F
	cmp $C3.b,S		; C3 C3
	cpx #$E0.b		; E0 E0
	bra  64.b		; 80 40
	jsr $C810.w		; 20 10 C8
	tsb $62.b		; 04 62
	ora ($18.b,X)		; 01 18
	bra -64.b		; 80 C0
	jsr $0833.w		; 20 33 08
	tsb $0002.w		; 0C 02 00
	brk $C0.b		; 00 C0
	cpy #$F0.b		; C0 F0
	beq  -4.b		; F0 FC
	jsr ($7F7F.w,X)		; FC 7F 7F
	ora $07071F.l,X		; 1F 1F 07 07
	ora ($01.b,X)		; 01 01
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	asl $1F.b		; 06 1F
	ora [$1F.b]		; 07 1F
	ora $27.b,S		; 03 27
	ora $5953.w,Y		; 19 53 59
	cmp $03.b,S		; C3 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $0F.b		; 06 0F
	cop $1F.b		; 02 1F
	ora $3E3F.w,X		; 1D 3F 3E
	adc $FEF43E.l,X		; 7F 3E F4 FE
	tya		; 98
	inc $FA04.w,X		; FE 04 FA
	tsb $0FD1.w		; 0C D1 0F
	beq -49.b		; F0 CF
	beq -98.b		; F0 9E
	cpx #$18.b		; E0 18
	cpy $F4.b		; C4 F4
	bra -104.b		; 80 98
	bra  96.b		; 80 60
	rts		; 60

	rol A		; 2A
	brk $8F.b		; 00 8F
	brk $E7.b		; 00 E7
	brk $CF.b		; 00 CF
	ora $AB.b,S		; 03 AB
	ora $08.b,S		; 03 08
	sty $70.b		; 84 70
	stz $18.b,X		; 74 18
	ora $0F8479.l,X		; 1F 79 84 0F
	cmp $B5.b,S		; C3 B5
	cmp $9B.b,S		; C3 9B
	cmp $B9.b,S		; C3 B9
	cpy $08.b		; C4 08
	bvs  16.b		; 70 10
	sed		; F8
	bpl  -8.b		; 10 F8
	ora $73.b,S		; 03 73
	sta $B8.b,S		; 83 B8
	ora ($09.b,X)		; 01 09
	and ($04.b,S),Y		; 33 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$30.b		; C0 30
	bcc -120.b		; 90 88
	rti		; 40

	pha		; 48
	sty $1FBC.w		; 8C BC 1F
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0.b		; C0 F0
	beq -16.b		; F0 F0
	ldy $C0.b,X		; B4 C0
	eor $00DFCE.l		; 4F CE DF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $BC.b		; 00 BC
	bra -41.b		; 80 D7
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $C7.b		; 00 C7
	brk $F8.b		; 00 F8
	ora ($02.b,X)		; 01 02
	asl $17.b		; 06 17
	tsb $0A3C.w		; 0C 3C 0A
	sei		; 78
	ora [$F0.b]		; 07 F0
	eor [$F0.b]		; 47 F0
	sbc [$90.b]		; E7 90
	sbc $10.b,S		; E3 10
	tsb $04.b		; 04 04
	tsb $0F0F.w		; 0C 0F 0F
	ora $0F1F0F.l		; 0F 0F 1F 0F
	ora $4F0F0F.l,X		; 1F 0F 0F 4F
	ora $000FCF.l		; 0F CF 0F 00
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	bvs  96.b		; 70 60
	inx		; E8
	rti		; 40

	cpy $58.b		; C4 58
	cop $5C.b		; 02 5C
	ora ($4E.b,X)		; 01 4E
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bpl 112.b		; 10 70
	sec		; 38
	sei		; 78
	ldy $BEBC.w,X		; BC BC BE
	ldx $9F9F.w,Y		; BE 9F 9F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $FC.b		; 05 FC
	asl $FC.b		; 06 FC
	ora $F9.b,S		; 03 F9
	tsb $06F9.w		; 0C F9 06
	sbc ($10.b,S),Y		; F3 10
	sbc $93D32C.l		; EF 2C D3 93
	cpy $0063.w		; CC 63 00
	cmp ($C0.b,S),Y		; D3 C0
	ldx $6788.w		; AE 88 67
	eor ($CD.b,X)		; 41 CD
	sta ($92.b,X)		; 81 92
	ora ($AC.b)		; 12 AC
	bit $32B2.w		; 2C B2 32
	sta [$9F.b]		; 87 9F
	adc $0F6D2F.l		; 6F 2F 6D 0F
	sty $049F.w		; 8C 9F 04
	sbc $C33FD4.l,X		; FF D4 3F C3
	bit $18A3.w,X		; 3C A3 18
	sbc $F5FF63.l		; EF 63 FF F5
	sbc $62EFF4.l,X		; FF F4 EF 62
	sbc $1C01.w		; ED 01 1C
	php		; 08
	bmi  32.b		; 30 20
	ora [$10.b],Y		; 17 10
	dec $8EEF.w		; CE EF 8E
	sbc $03FF08.l,X		; FF 08 FF 03
	sta $9D13.w,X		; 9D 13 9D
	dec A		; 3A
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	ora $0BFE.w		; 0D FE 0B
	sbc $20FF7C.l		; EF 7C FF 20
	stz $6800.w,X		; 9E 00 68
	php		; 08
	stz $00.b		; 64 00
	bmi   7.b		; 30 07
	sbc ($07.b,X)		; E1 07
	eor ($03.b)		; 52 03
	txy		; 9B
	bit $7C59.w,X		; 3C 59 7C
	ldy $1DFE.w,X		; BC FE 1D
	inc $B23D.w,X		; FE 3D B2
	rol $9FBF.w,X		; 3E BF 9F
	ora $CB1FDF.l,X		; 1F DF 1F CB
	tas		; 1B
	txy		; 9B
	tas		; 1B
	eor $887D.w,Y		; 59 7D 88
	ldy $FD91.w,X		; BC 91 FD
	trb $0E7E.w		; 1C 7E 0E
	and $F83F06.l,X		; 3F 06 3F F8
	adc ($58.b)		; 72 58
	mvn $28,$A0		; 54 A0 28
	jsr $8078.w		; 20 78 80
	rts		; 60

	rti		; 40

	cpx #$E0F0.w		; E0 F0 E0
	cpx #$FCE1.w		; E0 E1 FC
	ldy $B0F0.w		; AC F0 B0
	bvs  80.b		; 70 50
	bra -80.b		; 80 B0
	bra -80.b		; 80 B0
	brk $78.b		; 00 78
	rti		; 40

	sed		; F8
	cpx #$01FC.w		; E0 FC 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $040F04.l		; 0F 04 0F 04
	ora $0D1E0D.l		; 0F 0D 1E 0D
	asl $0001.w,X		; 1E 01 00
	ora $04.b		; 05 04
	asl $02.b		; 06 02
	ora [$01.b]		; 07 01
	ora $010F08.l		; 0F 08 0F 01
	asl $1E00.w		; 0E 00 1E
	bpl  13.b		; 10 0D
	asl $3D1F.w,X		; 1E 1F 3D
	tas		; 1B
	bit $3D1B.w,X		; 3C 1B 3D
	bmi 124.b		; 30 7C
	bmi 126.b		; 30 7E
	jsl $FE237E.l		; 22 7E 23 FE
	asl $1D02.w,X		; 1E 02 1D
	ora $3C.b,S		; 03 3C
	and $3D.b,S		; 23 3D
	ora [$3C.b]		; 07 3C
	ora [$7B.b]		; 07 7B
	lsr A		; 4A
	adc $7508.w,Y		; 79 08 75
	trb $00.b		; 14 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $3D.b		; 06 3D
	clc		; 18
	bmi  24.b		; 30 18
	rol $7210.w,X		; 3E 10 72
	sec		; 38
	sed		; F8
	sei		; 78
	pei ($D8.b)		; D4 D8
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	bpl  62.b		; 10 3E
	bpl  62.b		; 10 3E
	bpl  56.b		; 10 38
	jsr $307C.w		; 20 7C 30
	jsr ($F8C0.w,X)		; FC C0 F8
	jsr $00F8.w		; 20 F8 00
	bmi  32.b		; 30 20
	dec $9860.w,X		; DE 60 98
	cpy #$A010.w		; C0 10 A0
	bmi  64.b		; 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	clc		; 18
	bvs  16.b		; 70 10
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	bra   0.b		; 80 00
	cpy #$4020.w		; C0 20 40
	brk $60.b		; 00 60
	bpl   0.b		; 10 00
	dey		; 88
	ldy $08.b,X		; B4 08
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$70E0.w		; E0 E0 70
	bvs 112.b		; 70 70
	bvs   0.b		; 70 00
	ora $00.b,S		; 03 00
	ora $003C00.l		; 0F 00 3C 00
	sei		; 78
	jsr $10F0.w		; 20 F0 10
	sed		; F8
	php		; 08
	jmp ($3F00.w,X)		; 7C 00 3F
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	clc		; 18
	bpl  48.b		; 10 30
	jsr $4070.w		; 20 70 40
	sei		; 78
	pha		; 48
	bit $1E24.w,X		; 3C 24 1E
	cop $EB.b		; 02 EB
	brk $D0.b		; 00 D0
	ora #$18A3.w		; 09 A3 18
	eor ($32.b,X)		; 41 32
	bvc  35.b		; 50 23
	bpl   3.b		; 10 03
	brk $03.b		; 00 03
	ora $3F0000.l		; 0F 00 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	cmp ($28.b,S),Y		; D3 28
	sta ($28.b),Y		; 91 28
	ora #$5834.w		; 09 34 58
	stz $94.b		; 64 94
.ACCU 8
	sep #$20		; E2 20
	rep #$42		; C2 42
	sta ($80.b,X)		; 81 80
	ora ($E7.b,X)		; 01 E7
	and [$E7.b]		; 27 E7
	and [$C3.b]		; 27 C3
	ora $83.b,S		; 03 83
	ora $41.b,S		; 03 41
	eor ($81.b,X)		; 41 81
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	bvc -109.b		; 50 93
	pha		; 48
	bit #$04.b		; 89 04
	sty $22.b		; 84 22
.ACCU 16
	rep #$21		; C2 21
	eor ($00.b,X)		; 41 00
	eor ($00.b,X)		; 41 00
	brk $10.b		; 00 10
	sta $87878F.l		; 8F 8F 87 87
	cmp $C3.b,S		; C3 C3
	cmp ($C1.b,X)		; C1 C1
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$00E0.w		; E0 E0 00
	ora [$00.b]		; 07 00
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora $0E0F07.l		; 0F 07 0F 0E
	ora $383E1C.l,X		; 1F 1C 3E 38
	jsr ($0203.w,X)		; FC 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $000E08.l		; 0F 08 0E 00
	trb $7800.w		; 1C 00 78
	brk $8D.b		; 00 8D
	beq -79.b		; F0 B1
	inc $FEBC.w,X		; FE BC FE
	ldy $3CFE.w,X		; BC FE 3C
	ldx $3C1E.w,Y		; BE 1E 3C
	asl $193C.w,X		; 1E 3C 19
	bit $0ECE.w,X		; 3C CE 0E
	bne  48.b		; D0 30
	cld		; D8
	and $183F98.l,X		; 3F 98 3F 18
	and $183F18.l,X		; 3F 18 3F 18
	and $733E10.l,X		; 3F 10 3E 73
	asl A		; 0A
	sbc $DC04.w,Y		; F9 04 DC
	ora $E5.b,S		; 03 E5
	cmp $FB.b,S		; C3 FB
	jsr $D6C9.w		; 20 C9 D6
	php		; 08
	adc $1C1B.w		; 6D 1B 1C
	ora $00.b		; 05 00
	ora $70.b,S		; 03 70
	brk $38.b		; 00 38
	bra -34.b		; 80 DE
	brk $E6.b		; 00 E6
	bra -15.b		; 80 F1
	cop $FA.b		; 02 FA
	phb		; 8B
	tda		; 7B
	sbc $0A.b,X		; F5 0A
	asl $4082.w		; 0E 82 40
	trb $10.b		; 14 10
	cpx $D4E0.w		; EC E0 D4
	inx		; E8
	.db $42, $2C		; 42 2C
.INDEX 16
	rep #$5C		; C2 5C
	adc ($F8.b)		; 72 F8
	phd		; 0B
	bvs 115.b		; 70 73
	cpx #$00EA.w		; E0 EA 00
	bpl   8.b		; 10 08
	php		; 08
	trb $1C1C.w		; 1C 1C 1C
	trb $8CDC.w		; 1C DC 8C
	phb		; 8B
	php		; 08
	eor [$07.b]		; 47 07
	jmp ($6808.w)		; 6C 08 68
	brk $5C.b		; 00 5C
	brk $ED.b		; 00 ED
	brk $95.b		; 00 95
	brk $2A.b		; 00 2A
	brk $60.b		; 00 60
	adc $E0FFE0.l,X		; 7F E0 FF E0
	xce		; FB
	beq  -9.b		; F0 F7
	cpx #$10E7.w		; E0 E7 10
	asl $60.b,X		; 16 60
	adc $F0DFC0.l		; 6F C0 DF F0
	cmp $D1.b,S		; C3 D1
	phd		; 0B
	lda $1A.b,S		; A3 1A
	wai		; CB
	bmi -101.b		; 30 9B
	rts		; 60

	rol $C0.b		; 26 C0
	sty $00.b		; 84 00
	and ($01.b),Y		; 31 01
	brk $DC.b		; 00 DC
	brk $BC.b		; 00 BC
	ora ($7C.b,X)		; 01 7C
	ora $7C.b,S		; 03 7C
	ora $7C.b,S		; 03 7C
	ora [$F8.b]		; 07 F8
	ora [$F8.b]		; 07 F8
	asl $F8.b		; 06 F8
	sbc ($03.b)		; F2 03
	tsb $F7.b		; 04 F7
	cmp ($36.b,X)		; C1 36
	.db $82, $1C, $CC		; 82 1C CC
	bpl -80.b		; 10 B0
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $05.b		; 00 05
	sbc $FA02.w,Y		; F9 02 FA
	tsb $FC.b		; 04 FC
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $0C.b		; 04 0C
	phd		; 0B
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	ora $000007.l		; 0F 07 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($0D.b,X)		; 01 0D
	ora ($1D.b,X)		; 01 1D
	asl $3E.b		; 06 3E
	asl $1EFE.w		; 0E FE 1E
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	tsb $1E0B.w		; 0C 0B 1E
	ora ($3E.b),Y		; 11 3E
	and [$FE.b]		; 27 FE
	cmp $000000.l		; CF 00 00 00
	cpy #$20C1.w		; C0 C1 20
	sbc [$C3.b]		; E7 C3
	adc $FFFF6F.l,X		; 7F 6F FF FF
	lda $8780BF.l,X		; BF BF 80 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	cmp ($E7.b,X)		; C1 E7
	adc [$FF.b]		; 67 FF
	cmp $FF0EFF.l,X		; DF FF 0E FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	php		; 08
	brk $E4.b		; 00 E4
	sbc ($F0.b)		; F2 F0
	sbc $F9F0.w,Y		; F9 F0 F9
	inx		; E8
	sbc ($D0.b),Y		; F1 D0
	sep #$00		; E2 00
	stz $00.b,X		; 74 00
	brk $08.b		; 00 08
	sed		; F8
	stz $FC.b		; 64 FC
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	.db $82, $FE, $04		; 82 FE 04
	jsr ($8808.w,X)		; FC 08 88
	bcs   8.b		; B0 08
	bmi  64.b		; 30 40
	clc		; 18
	mvp $02,$58		; 44 58 02
	tsb $1621.w		; 0C 21 16
	php		; 08
	php		; 08
	tsb $07.b		; 04 07
	brk $70.b		; 00 70
	bvs  56.b		; 70 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $1E3C.w,X		; 3C 3C 1E
	asl $0707.w,X		; 1E 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	eor $2622.w		; 4D 22 26
	ora ($23.b,X)		; 01 23
	clc		; 18
	and $0704.w,Y		; 39 04 07
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $1C.b		; 00 1C
	trb $1E1E.w		; 1C 1E 1E
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$E040.w		; A0 40 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -1.b		; 80 FF
	sed		; F8
	sbc $60FF70.l,X		; FF 70 FF 60
	sbc $F004.w,Y		; F9 04 F0
	asl $74.b		; 06 74
	php		; 08
	and $3F0F.w,Y		; 39 0F 3F
	jsr ($FE04.w,X)		; FC 04 FE
	sbc ($F9.b)		; F2 F9
	adc #$1777.w		; 69 77 17
	adc $0F1F2F.l		; 6F 2F 1F 0F
	ora $060F1E.l,X		; 1F 1E 0F 06
	brk $70.b		; 00 70
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	ldy #$6000.w		; A0 00 60
	jsr $00C0.w		; 20 C0 00
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $27.b		; 00 27
	brk $41.b		; 00 41
	rol $47.b		; 26 47
	lsr $542F.w,X		; 5E 2F 54
	and $4A5428.l		; 2F 28 54 4A
	trb $26.b		; 14 26
	cld		; D8
	clc		; 18
	clc		; 18
	rol $3E3E.w,X		; 3E 3E 3E
	bit $581E.w,X		; 3C 1E 58
	tsb $70.b		; 04 70
	ora ($FB.b,S),Y		; 13 FB
	and ($DB.b,S),Y		; 33 DB
	and ($1F.b,S),Y		; 33 1F
	and $FFCEFF.l,X		; 3F FF CE FF
	ora [$CE.b]		; 07 CE
	sta ($26.b,X)		; 81 26
	php		; 08
	ora $3C09.w,X		; 1D 09 3C
	and $58.b,X		; 35 58
	ror A		; 6A
	and ($1E.b),Y		; 31 1E
	adc $30CF0C.l,X		; 7F 0C CF 30
	and [$D8.b],Y		; 37 D8
	cmp $C0EFE8.l,X		; DF E8 EF C0
	cmp $809E80.l		; CF 80 9E 80
	ldy $40C1.w,X		; BC C1 40
	bne  78.b		; D0 4E
	stz $43C3.w		; 9C C3 43
	bra -80.b		; 80 B0
	tsb $03DC.w		; 0C DC 03
	and [$C0.b]		; 27 C0
	bpl   0.b		; 10 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	cpx #$F0EF.w		; E0 EF F0
	brk $37.b		; 00 37
	brk $07.b		; 00 07
	cpy #$E809.w		; C0 09 E8
	sep #$0E		; E2 0E
	brk $0F.b		; 00 0F
	cpy #$001F.w		; C0 1F 00
	brk $07.b		; 00 07
	sed		; F8
	ora [$F8.b]		; 07 F8
	ora [$F8.b]		; 07 F8
	ora [$F0.b]		; 07 F0
	ora $03FC.w		; 0D FC 03
	sbc ($00.b,S),Y		; F3 00
	cpx #$E000.w		; E0 00 E0
	rts		; 60

	sed		; F8
	bmi -12.b		; 30 F4
	ldy $8FF1.w,X		; BC F1 8F
	beq  31.b		; F0 1F
	cpx #$C030.w		; E0 30 C0
	bcs  14.b		; B0 0E
	asl $0061.w		; 0E 61 00
	rts		; 60

	clv		; B8
	clv		; B8
	asl $4F3E.w		; 0E 3E 4F
	eor $0FDFCF.l,X		; 5F CF DF 0F
	and $904141.l,X		; 3F 41 41 90
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$F010.w		; C0 10 F0
	tsb $1C.b		; 04 1C
	ora ($03.b,X)		; 01 03
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F8E0.w		; E0 E0 F8
	sed		; F8
	inc $3FFE.w,X		; FE FE 3F
	and $000000.l,X		; 3F 00 00 00
	brk $E0.b		; 00 E0
	inc $FFFC.w,X		; FE FC FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FF0C.w,X)		; FC 0C FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	beq  32.b		; F0 20
	sed		; F8
	bpl  -2.b		; 10 FE
	php		; 08
	adc $033F06.l,X		; 7F 06 3F 03
	ora $000700.l,X		; 1F 00 07 00
	brk $E0.b		; 00 E0
	jsr $90F0.w		; 20 F0 90
	sei		; 78
	pha		; 48
	rol $1F22.w,X		; 3E 22 1F
	bpl  15.b		; 10 0F
	php		; 08
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	ora ($FF.b,X)		; 01 FF
	sbc $FF7CFF.l,X		; FF FF 7C FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc $00FF7C.l,X		; FF 7C FF 00
	sbc $000001.l,X		; FF 01 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	asl $7F.b		; 06 7F
	sec		; 38
	sbc $80FCE0.l,X		; FF E0 FC 80
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	and $02FE20.l,X		; 3F 20 FE 02
	sed		; F8
	php		; 08
	cpx #$0020.w		; E0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$06.b]		; 07 06
	ora $133F16.l,X		; 1F 16 3F 13
	and $003F09.l,X		; 3F 09 3F 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	asl $07.b		; 06 07
	tsb $17.b		; 04 17
	tsb $17.b		; 04 17
	cop $1B.b		; 02 1B
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	bit $003E.w,X		; 3C 3E 00
	ora $CAC0.w		; 0D C0 CA
	jsr $18E4.w		; 20 E4 18
	sec		; 38
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	cmp $FF.b,S		; C3 FF
	sbc $1C3E3E.l,X		; FF 3E 3E 1C
	trb $0000.w		; 1C 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	cpy #$0040.w		; C0 40 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($1F.b,X)		; 01 1F
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	bpl  60.b		; 10 3C
	jsr $4078.w		; 20 78 40
	beq  13.b		; F0 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $0C.b		; 06 0C
	tsb $18.b		; 04 18
	php		; 08
	bvs  64.b		; 70 40
	beq -112.b		; F0 90
	asl $7F.b,X		; 16 7F
	jsr $207F.w		; 20 7F 20
	beq  64.b		; F0 40
	sbc ($40.b),Y		; F1 40
	sbc $C0FFC7.l,X		; FF C7 FF C0
	sbc $37E0C0.l,X		; FF C0 E0 37
	jsr $4070.w		; 20 70 40
	bvs  16.b		; 70 10
	cpx #$E780.w		; E0 80 E7
	bit $DF.b		; 24 DF
	brk $DF.b		; 00 DF
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	and $3FFF07.l,X		; 3F 07 FF 3F
	sbc $00FFF8.l,X		; FF F8 FF 00
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $C0FF18.l,X		; 1F 18 FF C0
	sbc $00FF00.l,X		; FF 00 FF 00
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	ora $68.b		; 05 68
	eor $6A.b		; 45 6A
	and [$39.b]		; 27 39
	lda $31.b		; A5 31
	adc ($71.b,X)		; 61 71
	bra -80.b		; 80 B0
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	cmp ($CF.b,S),Y		; D3 CF
	bcs -84.b		; B0 AC
	cpy #$C18D.w		; C0 8D C1
	ora $400781.l		; 0F 81 07 40
	ora ($C0.b,X)		; 01 C0
	brk $A0.b		; 00 A0
	brk $E7.b		; 00 E7
	brk $41.b		; 00 41
	eor $5046.w,Y		; 59 46 50
	eor $AC8550.l,X		; 5F 50 85 AC
	brk $8F.b		; 00 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	asl $5FE8.w		; 0E E8 5F
	beq  15.b		; F0 0F
	cpx #$F80B.w		; E0 0B F8
	ora ($F1.b,X)		; 01 F1
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ldy #$4000.w		; A0 00 40
	bra -128.b		; 80 80
	sed		; F8
	lda ($33.b,X)		; A1 33
	cmp $27.b,S		; C3 27
	sta $A7.b,S		; 83 A7
	asl $E1.b		; 06 E1
	clc		; 18
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	stz $67.b		; 64 67
	cpy $DB0F.w		; CC 0F DB
	ora $181F5B.l,X		; 1F 5B 1F 18
	ora $000700.l,X		; 1F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	bra -11.b		; 80 F5
	sbc $FFFF.w,Y		; F9 FF FF
	sei		; 78
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($E1.b,X)		; E1 E1
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $C9FF00.l,X		; FF 00 FF C9
	cop $46.b		; 02 46
	bmi  17.b		; 30 11
	php		; 08
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $0FFC.w,X		; 3C FC 0F
	ora $010707.l		; 0F 07 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora $908043.l,X		; 1F 43 80 90
	jsr $0867.w		; 20 67 08
	asl $4880.w,X		; 1E 80 48
	jsr $1022.w		; 20 22 10
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F0F0.w		; C0 F0 F0
	adc $1F1F7F.l,X		; 7F 7F 1F 1F
	tsb $000C.w		; 0C 0C 00
	brk $40.b		; 00 40
	beq  64.b		; F0 40
	beq  96.b		; F0 60
	sed		; F8
	bmi  -1.b		; 30 FF
	asl $06FF.w,X		; 1E FF 06
	adc $001F00.l,X		; 7F 00 1F 00
	ora ($E0.b,X)		; 01 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bcc  -2.b		; 90 FE
	stx $7F.b		; 86 7F
	eor ($3F.b,X)		; 41 3F
	and ($0F.b,X)		; 21 0F
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$60C0.w		; C0 C0 60
	cpx #$7800.w		; E0 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $78.b		; 00 78
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $0C.b		; 06 0C
	tsb $BEF8.w		; 0C F8 BE
	cpy #$E01F.w		; C0 1F E0
	ora [$C0.b]		; 07 C0
	ror A		; 6A
	beq   6.b		; F0 06
	sbc $030000.l,X		; FF 00 00 03
	ora ($07.b,X)		; 01 07
	ora $8F.b,S		; 03 8F
	ora ($DF.b,X)		; 01 DF
	brk $BB.b		; 00 BB
	brk $05.b		; 00 05
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpx #$38A0.w		; E0 A0 38
	inx		; E8
	ora $7E01F9.l		; 0F F9 01 7E
	brk $60.b		; 00 60
	cpx #$FF00.w		; E0 00 FF
	tsb $4003.w		; 0C 03 40
	rti		; 40

	bne  16.b		; D0 10
	pea $FE04.w		; F4 04 FE
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	bra  31.b		; 80 1F
	ora $030000.l,X		; 1F 00 00 03
	brk $01.b		; 00 01
	brk $E0.b		; 00 E0
	rti		; 40

	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$00F0.w		; E0 F0 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	bra  -8.b		; 80 F8
	beq  -1.b		; F0 FF
	ora [$3F.b]		; 07 3F
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	bra -128.b		; 80 80
	beq  16.b		; F0 10
	inc $3F0E.w,X		; FE 0E 3F
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $C0C4FC.l,X		; 1F FC C4 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -2.b		; 80 FE
	and $FE00FF.l,X		; 3F FF 00 FE
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	clc		; 18
	and $FEFE00.l,X		; 3F 00 FE FE
	ora $03.b,S		; 03 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	ora $1F.b,S		; 03 1F
	ora ($07.b,X)		; 01 07
	cpy #$60C1.w		; C0 C1 60
	cpx #$7030.w		; E0 30 70
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	sed		; F8
	brk $1F.b		; 00 1F
	clc		; 18
	ora [$04.b]		; 07 04
	cmp ($01.b,X)		; C1 01
	cpx #$7000.w		; E0 00 70
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0000.w,X		; 3D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	eor $7EBF3E.l,X		; 5F 3E BF 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($1F.b,X)		; 01 1F
	asl $FF.b		; 06 FF
	asl $00FF.w,X		; 1E FF 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	bmi -124.b		; 30 84
	adc $11.b,S		; 63 11
	asl $0038.w		; 0E 38 00
	bra -65.b		; 80 BF
	ldx $0081.w,Y		; BE 81 00
	brk $00.b		; 00 00
	sei		; 78
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	bra  -1.b		; 80 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
	cpx #$C728.w		; E0 28 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	asl $F6.b		; 06 F6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	and [$01.b],Y		; 37 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	brk $37.b		; 00 37
	bvs   0.b		; 70 00
	clc		; 18
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	php		; 08
	inc A		; 1A
	php		; 08
	jsl $32D110.l		; 22 10 D1 32
	ora ($03.b,X)		; 01 03
	brk $70.b		; 00 70
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	tsb $1E.b		; 04 1E
	tsb $0C3E.w		; 0C 3E 0C
	sbc $00FFFC.l,X		; FF FC FF 00
	brk $07.b		; 00 07
	brk $18.b		; 00 18
	brk $37.b		; 00 37
	trb $6C.b		; 14 6C
	jsr $40C9.w		; 20 C9 40
	sta $000091.l,X		; 9F 91 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	php		; 08
	and $307C10.l,X		; 3F 10 7C 30
	sbc $FF60.w,Y		; F9 60 FF
	sbc $0000FF.l,X		; FF FF 00 00
	bra   0.b		; 80 00
	inc $4880.w,X		; FE 80 48
	beq -16.b		; F0 F0
	brk $FE.b		; 00 FE
	jsr $2E37.w		; 20 37 2E
	ora ($11.b),Y		; 11 11
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $FE.b		; 00 FE
	cpy #$EEFF.w		; C0 FF EE
	sbc $500898.l,X		; FF 98 08 50
	brk $54.b		; 00 54
	tsb $7C.b		; 04 7C
	clc		; 18
	eor $3530.w		; 4D 30 35
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $07.b		; 00 07
	sta $0B5F0F.l,X		; 9F 0F 5F 0B
	eor $027F03.l,X		; 5F 03 7F 02
	ror $3602.w,X		; 7E 02 36
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	lda ($43.b),Y		; B1 43
	cmp ($60.b,S),Y		; D3 60
	sbc ($60.b)		; F2 60
	sbc ($60.b)		; F2 60
	sbc $42.b,S		; E3 42
	cpx #$C0C0.w		; E0 C0 C0
	bra -43.b		; 80 D5
	asl $6C.b,X		; 16 6C
	adc $6C6F6C.l		; 6F 6C 6F 6C
	ror $6E6C.w		; 6E 6C 6E
	jmp $DFDF5F.l		; 5C 5F DF DF
	lda $3F28BF.l,X		; BF BF 28 3F
	ora $02.b		; 05 02
	ora [$02.b]		; 07 02
	ora $00.b		; 05 00
	php		; 08
	brk $06.b		; 00 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$02.b]		; 07 02
	ora [$07.b]		; 07 07
	ora $000701.l		; 0F 01 07 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	ora $C6.b,S		; 03 C6
	eor ($8F.b,X)		; 41 8F
	bra  15.b		; 80 0F
	brk $1D.b		; 00 1D
	ora $1F.b,S		; 03 1F
	ora $1B.b,S		; 03 1B
	ora [$BE.b]		; 07 BE
	sta [$37.b]		; 87 37
	asl $F939.w		; 0E 39 F9
	bvs -16.b		; 70 F0
	beq -16.b		; F0 F0
	sbc $E3.b,S		; E3 E3
	sbc [$E7.b]		; E7 E7
	sbc [$E7.b]		; E7 E7
	eor $CFCFCF.l		; 4F CF CF CF
	sbc [$C8.b],Y		; F7 C8
	adc $07DA82.l,X		; 7F 82 DA 07
	cmp $C603.w		; CD 03 C6
	ora ($83.b,X)		; 01 83
	brk $81.b		; 00 81
	brk $98.b		; 00 98
	bpl -40.b		; 10 D8
	cld		; D8
	.db $82, $82, $27		; 82 82 27
	and [$33.b]		; 27 33
	and ($39.b,S),Y		; 33 39
	and $7C7C.w,Y		; 39 7C 7C
	ror $677E.w,X		; 7E 7E 67
	adc $8F0018.l,X		; 7F 18 00 8F
	php		; 08
	dec $06.b		; C6 06
	cpx #$E000.w		; E0 00 E0
	bra 112.b		; 80 70
	cpy #$60BC.w		; C0 BC 60
	inc $08.b,X		; F6 08
	cpx #$70F8.w		; E0 F8 70
	adc $9F3F39.l,X		; 7F 39 3F 9F
	sta $EFDFDF.l,X		; 9F DF DF EF
	sbc $096363.l		; EF 63 63 09
	ora #$0004.w		; 09 04 00
	sep #$00		; E2 00
	sbc ($C2.b,S),Y		; F3 C2
	bne  32.b		; D0 20
	bcs   0.b		; B0 00
	stx $1F08.w		; 8E 08 1F
	cop $DF.b		; 02 DF
	cop $F8.b		; 02 F8
	jsr ($1E1C.w,X)		; FC 1C 1E
	cpy $2FCF.w		; CC CF 2F
	and $714F4F.l		; 2F 4F 4F 71
	adc $20FFE0.l,X		; 7F E0 FF 20
	sbc $000000.l,X		; FF 00 00 00
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	bra  40.b		; 80 28
	bmi  -8.b		; 30 F8
	bpl  24.b		; 10 18
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq -64.b		; F0 C0
	sed		; F8
	brk $F8.b		; 00 F8
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	adc ($00.b),Y		; 71 00
	sec		; 38
	brk $B8.b		; 00 B8
	brk $C9.b		; 00 C9
	rti		; 40

	rep #$00		; C2 00
	rts		; 60

	jsr $2070.w		; 20 70 20
	xce		; FB
	ror A		; 6A
	stx $C7FE.w		; 8E FE C7
	sbc $36FF47.l,X		; FF 47 FF 36
	inc $FD3D.w,X		; FE 3D FD
	ora $7F0F7F.l,X		; 1F 7F 0F 7F
	tsb $FF.b		; 04 FF
	dec $04.b		; C6 04
	cpy $00.b		; C4 00
	cpy $00.b		; C4 00
	sty $00.b		; 84 00
	tsb $00.b		; 04 00
	bit $EC28.w		; 2C 28 EC
	tay		; A8
	tay		; A8
	brk $38.b		; 00 38
	rol $3C38.w,X		; 3E 38 3C
	sec		; 38
	bit $7C78.w,X		; 3C 78 7C
	sed		; F8
	jsr ($FCD0.w,X)		; FC D0 FC
	bpl  -4.b		; 10 FC
	bpl -72.b		; 10 B8
	cpx $FE98.w		; EC 98 FE
	sty $08F7.w		; 8C F7 08
	sbc $07FB03.l,X		; FF 03 FB 07
	sbc $00FF00.l,X		; FF 00 FF 00
	lda $9B9B40.l,X		; BF 40 9B 9B
	sta $088D.w		; 8D 8D 08
	php		; 08
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	ora $000F00.l,X		; 1F 00 0F 00
	sbc $FAF701.l,X		; FF 01 F7 FA
	lda $00FFC1.l,X		; BF C1 FF 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	cpx #$F0F0.w		; E0 F0 F0
	ora ($01.b,X)		; 01 01
	plx		; FA
	plx		; FA
	sbc ($E1.b,X)		; E1 E1
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $061B0F.l		; 0F 0F 1B 06
	asl $00.b		; 06 00
	bvs   0.b		; 70 00
	sei		; 78
	bmi  68.b		; 30 44
	brk $DB.b		; 00 DB
	pha		; 48
	cpx $E644.w		; EC 44 E6
	.db $42, $00		; 42 00
	ora $000600.l,X		; 1F 00 06 00
	bvs   0.b		; 70 00
	sei		; 78
	sec		; 38
	jmp ($FF24.w,X)		; 7C 24 FF
	ora $EF.b,S		; 03 EF
	ora ($E7.b,X)		; 01 E7
	.db $82, $82, $C7		; 82 82 C7
	rti		; 40

	lda $44DB60.l		; AF 60 DB 44
	sta $0E.b,X		; 95 0E
	txy		; 9B
	tsb $0F.b		; 04 0F
	brk $0F.b		; 00 0F
	brk $7D.b		; 00 7D
	sbc $10F838.l,X		; FF 38 F8 10
	beq  36.b		; F0 24
	cpx $6E.b		; E4 6E
	inc $E464.w		; EE 64 E4
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	rol $7F00.w,X		; 3E 00 7F
	brk $DF.b		; 00 DF
	and $FF6EBF.l,X		; 3F BF 6E FF
	mvp $44,$FF		; 44 FF 44
	sbc $44FF55.l,X		; FF 55 FF 44
	cmp ($C1.b,X)		; C1 C1
	bra -128.b		; 80 80
	and $6E6E3F.l,X		; 3F 3F 6E 6E
	mvp $44,$44		; 44 44 44
	mvp $55,$55		; 44 55 55
	mvp $78,$44		; 44 44 78
	brk $ED.b		; 00 ED
	bpl  85.b		; 10 55
	clv		; B8
	lda $FCD1.w		; AD D1 FC
	rti		; 40

	inc $FF40.w,X		; FE 40 FF
	rti		; 40

	sbc $878740.l,X		; FF 40 87 87
	ora ($13.b)		; 12 13
	tsx		; BA
	tyx		; BB
	cmp ($D3.b)		; D2 D3
	eor $43.b,S		; 43 43
	eor ($41.b,X)		; 41 41
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	ora $00.b		; 05 00
	asl $02.b		; 06 02
	tsb $0F04.w		; 0C 04 0F
	tsb $1C.b		; 04 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $01.b		; 06 01
	ora [$03.b]		; 07 03
	ora $000F00.l		; 0F 00 0F 00
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $001110.l,X		; 9F 10 11 00
	sta ($80.b),Y		; 91 80
	cmp ($40.b),Y		; D1 40
	adc #$3C20.w		; 69 20 3C
	clc		; 18
	asl $0000.w,X		; 1E 00 00
	brk $60.b		; 00 60
	adc $60F1E0.l,X		; 7F E0 F1 60
	sbc ($20.b),Y		; F1 20
	sbc ($10.b),Y		; F1 10
	adc $3C00.w,Y		; 79 00 3C
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $7501.w,X		; 1D 01 75
	asl $AF.b,X		; 16 AF
	jmp ($48C7.w)		; 6C C7 48
	sbc [$54.b],Y		; F7 54
	inc $44.b,X		; F6 44
	cmp ($02.b)		; D2 02
	ora $07.b,S		; 03 07
	cop $1F.b		; 02 1F
	php		; 08
	adc $30FF10.l,X		; 7F 10 FF 30
	sbc $09FF08.l,X		; FF 08 FF 09
	sbc $3DDF0D.l,X		; FF 0D DF 3D
	asl $0C3F.w		; 0E 3F 0C
	pld		; 2B
	trb $187E.w		; 1C 7E 18
	stz $18.b,X		; 74 18
	jmp ($5C10.w,X)		; 7C 10 5C
	bmi 104.b		; 30 68
	bmi -50.b		; 30 CE
	dec $DEDE.w		; CE DE DE
	jmp.w [$9DDC]		; DC DC 9D
	sta $9B9B.w,X		; 9D 9B 9B
	tyx		; BB
	tyx		; BB
	lda ($B3.b,S),Y		; B3 B3
	lda [$B7.b],Y		; B7 B7
	trb $2200.w		; 1C 00 22
	ora ($7F.b,X)		; 01 7F
	eor ($52.b,X)		; 41 52
	tsb $024E.w		; 0C 4E 02
	adc $40.b,S		; 63 40
	jsr $9100.w		; 20 00 91
	bra -29.b		; 80 E3
	sbc $80E3C0.l,X		; FF C0 E3 80
	sbc $81DF81.l,X		; FF 81 DF 81
	cmp $C0E380.l		; CF 80 E3 C0
	cpx #$F160.w		; E0 60 F1
	ror $BF18.w		; 6E 18 BF
	sty $061B.w		; 8C 1B 06
	ora [$00.b]		; 07 00
	cpx #$3000.w		; E0 00 30
	bpl  17.b		; 10 11
	brk $E5.b		; 00 E5
	asl $9D.b		; 06 9D
	sta $CC4C.w,X		; 9D 4C CC
	inc $E6.b		; E6 E6
	sed		; F8
	sed		; F8
	ora $3F0FFF.l,X		; 1F FF 0F 3F
	asl $181F.w		; 0E 1F 18
	sbc $EC2CEE.l,X		; FF EE 2C EC
	php		; 08
	pea $7600.w		; F4 00 76
	mvp $00,$1B		; 44 1B 00
	sta ($00.b,X)		; 81 00
	dec $18.b,X		; D6 18
	dex		; CA
	tsb $FE10.w		; 0C 10 FE
	bpl  -4.b		; 10 FC
	php		; 08
	jsr ($FE88.w,X)		; FC 88 FE
	cpx $FF.b		; E4 FF
	ror $207F.w,X		; 7E 7F 20
	rol $3E30.w,X		; 3E 30 3E
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx $3000.w,Y		; BE 00 30
	brk $DC.b		; 00 DC
	bpl  54.b		; 10 36
	tsb $060B.w		; 0C 0B 06
	sta [$00.b]		; 87 00
	rti		; 40

	bra -96.b		; 80 A0
	bra  64.b		; 80 40
	inc $F0C0.w,X		; FE C0 F0
	jsr $00FC.w		; 20 FC 00
	rol $0F00.w,X		; 3E 00 0F
	brk $87.b		; 00 87
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$1038.w		; E0 38 10
	bvs   0.b		; 70 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $B0EFE0.l,X		; FF E0 EF B0
	sbc $10FE10.l,X		; FF 10 FE 10
	inc $FE10.w,X		; FE 10 FE
	cpx #$08F6.w		; E0 F6 08
	cpx $F018.w		; EC 18 F0
	beq -16.b		; F0 F0
	beq  16.b		; F0 10
	bpl  17.b		; 10 11
	ora ($B1.b),Y		; 11 B1
	lda ($E1.b),Y		; B1 E1
	sbc ($19.b,X)		; E1 19
	ora $1B1B.w,Y		; 19 1B 1B
	beq   0.b		; F0 00
	sed		; F8
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $63.b		; 00 63
	brk $71.b		; 00 71
	bpl  15.b		; 10 0F
	ora $E30707.l		; 0F 07 07 E3
	sbc $F1.b,S		; E3 F1
	sbc ($F8.b),Y		; F1 F8
	sed		; F8
	jsr ($9CFC.w,X)		; FC FC 9C
	jsr ($FE8E.w,X)		; FC 8E FE
	cmp $60FF60.l,X		; DF 60 FF 60
	lda $30FF70.l		; AF 70 FF 30
	eor $187730.l,X		; 5F 30 77 18
	adc $182F18.l,X		; 7F 18 2F 18
	cpx #$70E0.w		; E0 E0 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs -72.b		; 70 B8
	clv		; B8
	clv		; B8
	clv		; B8
	tya		; 98
	tya		; 98
	jmp.w [$FCDC]		; DC DC FC
	clc		; 18
	jsr ($FC18.w,X)		; FC 18 FC
	clc		; 18
	pea $F518.w		; F4 18 F5
	ora $30DD.w,Y		; 19 DD 30
	cmp $F930.w,Y		; D9 30 F9
	bmi  27.b		; 30 1B
	tas		; 1B
	tas		; 1B
	tas		; 1B
	tas		; 1B
	tas		; 1B
	tsa		; 3B
	tsa		; 3B
	dec A		; 3A
	tsa		; 3B
	dec A		; 3A
	tsa		; 3B
	rol $37.b,X		; 36 37
	rol $37.b,X		; 36 37
	and $187F19.l		; 2F 19 7F 18
	cmp $FC20.w,X		; DD 20 FC
	bmi -68.b		; 30 BC
	rts		; 60

	sei		; 78
	cpy #$80E0.w		; C0 E0 80
	sbc ($00.b,X)		; E1 00
	cmp $98D9.w,Y		; D9 D9 98
	tya		; 98
	jsl $333322.l		; 22 22 33 33
	adc ($73.b,S),Y		; 73 73
	sbc [$E7.b]		; E7 E7
	cmp $9E9EDF.l,X		; DF DF 9E 9E
	sbc $9CFF08.l,X		; FF 08 FF 9C
	sbc $0CFF63.l,X		; FF 63 FF 0C
	adc ($0C.b,S),Y		; 73 0C
	sbc $06FF00.l,X		; FF 00 FF 06
	sbc $0806.w,Y		; F9 06 08
	php		; 08
	stz $639C.w		; 9C 9C 63
	adc $0C.b,S		; 63 0C
	tsb $8C8C.w		; 0C 8C 8C
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $0C.b,X		; 16 0C
	ora $0705.w		; 0D 05 07
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	ora $000F02.l,X		; 1F 02 0F 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $CE.b,S		; 03 CE
	jsr $00A7.w		; 20 A7 00
	ora ($00.b,S),Y		; 13 00
	phd		; 0B
	brk $39.b		; 00 39
	php		; 08
	sbc $20.b,S		; E3 20
	stx $81.b		; 86 81
	ora $1103.w		; 0D 03 11
	sbc ($18.b),Y		; F1 18
	clv		; B8
	tsb $041C.w		; 0C 1C 04
	tsb $3E06.w		; 0C 06 3E
	trb $79FC.w		; 1C FC 79
	sbc $F3F3.w,Y		; F9 F3 F3
	rti		; 40

	rti		; 40

	bmi 112.b		; 30 70
	sbc ($00.b),Y		; F1 00
	and ($10.b,S),Y		; 33 10
	adc [$20.b]		; 67 20
	eor [$00.b]		; 47 00
	cmp [$40.b]		; C7 40
	adc $20.b,S		; 63 20
	lda $FF8FFF.l,X		; BF FF 8F FF
	asl $0CFE.w		; 0E FE 0C
	bit $7818.w,X		; 3C 18 78
	sec		; 38
	sei		; 78
	sec		; 38
	sed		; F8
	trb $717C.w		; 1C 7C 71
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $98.b		; 00 98
	bpl  60.b		; 10 3C
	brk $3E.b		; 00 3E
	brk $9F.b		; 00 9F
	ora ($CF.b),Y		; 11 CF
	php		; 08
	stx $1F8E.w		; 8E 8E 1F
	ora $673F3F.l,X		; 1F 3F 3F 67
	adc $C1FFC3.l,X		; 7F C3 FF C1
	sbc $307F60.l,X		; FF 60 7F 30
	and $4A040A.l,X		; 3F 0A 04 4A
	tsb $4A.b		; 04 4A
	tsb $2C.b		; 04 2C
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $4E00.w		; 0E 00 4E
	brk $4E.b		; 00 4E
	brk $2C.b		; 00 2C
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $6C00.w		; 20 00 6C
	jsr $50CC.w		; 20 CC 50
	stz $D804.w		; 9C 04 D8
	rti		; 40

	rti		; 40

	brk $61.b		; 00 61
	brk $63.b		; 00 63
	brk $1F.b		; 00 1F
	and $237F13.l,X		; 3F 13 7F 23
	sbc $27FF63.l,X		; FF 63 FF 27
	sbc $1E7F3F.l,X		; FF 3F 7F 1E
	ror $7C1C.w,X		; 7E 1C 7C
	sbc $016E03.l		; EF 03 6E 01
	sbc [$00.b]		; E7 00
	cmp [$01.b]		; C7 01
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	lda $FF00.w,Y		; B9 00 FF
	brk $17.b		; 00 17
	ora [$91.b],Y		; 17 91
	sta ($18.b),Y		; 91 18
	clc		; 18
	and $3C39.w,Y		; 39 39 3C
	bit $7C7C.w,X		; 3C 7C 7C
	lsr $46.b		; 46 46
	brk $00.b		; 00 00
	ora $10EEF8.l,X		; 1F F8 EE 10
	jsr ($F800.w,X)		; FC 00 F8
	bpl  -8.b		; 10 F8
	cpx #$40B8.w		; E0 B8 40
	jsr ($FE60.w,X)		; FC 60 FE
	tya		; 98
	jsr ($11FC.w,X)		; FC FC 11
	ora ($03.b),Y		; 11 03
	ora $17.b,S		; 03 17
	ora [$E7.b],Y		; 17 E7
	sbc [$47.b]		; E7 47
	eor [$63.b]		; 47 63
	adc $99.b,S		; 63 99
	sta $003E.w,Y		; 99 3E 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0C00.w		; 0E 00 0C
	brk $0C.b		; 00 0C
	brk $C1.b		; 00 C1
	cmp ($E0.b,X)		; C1 E0
	cpx #$F0F0.w		; E0 F0 F0
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sbc ($F1.b),Y		; F1 F1
	sbc ($F3.b,S),Y		; F3 F3
	sbc ($F3.b,S),Y		; F3 F3
	bpl   0.b		; 10 00
	trb $8610.w		; 1C 10 86
	tsb $B9.b		; 04 B9
	sec		; 38
	eor $203161.l,X		; 5F 61 31 20
	and ($00.b,X)		; 21 00
	ldy #$E000.w		; A0 00 E0
	beq -32.b		; F0 E0
	jsr ($7E78.w,X)		; FC 78 7E
	lsr $7F.b		; 46 7F
	bra  -1.b		; 80 FF
	cpy #$C0F1.w		; C0 F1 C0
	sbc ($40.b,X)		; E1 40
	cpx #$0070.w		; E0 70 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	cld		; D8
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	tsa		; 3B
	tsb $0C17.w		; 0C 17 0C
	ora $0B06.w,Y		; 19 06 0B
	asl $8F.b		; 06 8F
	.db $82, $8F, $00		; 82 8F 00
	stx $8D01.w		; 8E 01 8D
	ora $DC.b,S		; 03 DC
	jmp.w [$EEEE]		; DC EE EE
	inc $F6EE.w		; EE EE F6
	inc $76.b,X		; F6 76
	inc $70.b,X		; F6 70
	beq 113.b		; F0 71
	sbc ($73.b),Y		; F1 73
	sbc ($E9.b,S),Y		; F3 E9
	bmi  -7.b		; 30 F9
	jsr $22F3.w		; 20 F3 22
	lda ($66.b,S),Y		; B3 66
	lda ($60.b),Y		; B1 60
	sed		; F8
	brk $FC.b		; 00 FC
	bpl -36.b		; 10 DC
	clv		; B8
	rol $37.b,X		; 36 37
	rol $37.b,X		; 36 37
	jmp ($686F.w)		; 6C 6F 68
	adc $476F6E.l		; 6F 6E 6F 47
	eor [$13.b]		; 47 13
	ora ($BB.b,S),Y		; 13 BB
	tyx		; BB
	sbc ($00.b),Y		; F1 00
	sbc ($00.b,S),Y		; F3 00
	tda		; 7B
	brk $3E.b		; 00 3E
	ora ($1F.b,X)		; 01 1F
	ora ($1A.b,X)		; 01 1A
	ora ($1B.b,X)		; 01 1B
	brk $31.b		; 00 31
	brk $0E.b		; 00 0E
	asl $0C0C.w		; 0E 0C 0C
	sty $84.b		; 84 84
	cmp ($C1.b,X)		; C1 C1
	sbc ($E1.b,X)		; E1 E1
	sbc $E5.b		; E5 E5
	cpx $E4.b		; E4 E4
	dec $BFCE.w		; CE CE BF
	bvs 121.b		; 70 79
	sbc $FF87FF.l,X		; FF FF 87 FF
	sta $FF.b,S		; 83 FF
	sta $FE.b,S		; 83 FE
	cmp [$7F.b]		; C7 7F
	jsr ($00FF.w,X)		; FC FF 00
	sei		; 78
	sei		; 78
	sbc $C7C7FF.l,X		; FF FF C7 C7
	sta $83.b,S		; 83 83
	sta $83.b,S		; 83 83
	cmp [$C7.b]		; C7 C7
	inc $00FE.w,X		; FE FE 00
	brk $05.b		; 00 05
	ora ($1D.b,X)		; 01 1D
	asl $07.b		; 06 07
	brk $E1.b		; 00 E1
	brk $B1.b		; 00 B1
	rts		; 60

	eor ($21.b,S),Y		; 53 21
	dec A		; 3A
	bpl  54.b		; 10 36
	bpl   2.b		; 10 02
	ora [$00.b]		; 07 00
	ora $000700.l,X		; 1F 00 07 00
	sbc ($00.b,X)		; E1 00
	sbc ($00.b),Y		; F1 00
	adc ($01.b,S),Y		; 73 01
	tsa		; 3B
	ora #$DB3F.w		; 09 3F DB
	lsr $9F.b		; 46 9F
	tsb $BF.b		; 04 BF
	bcc 126.b		; 90 7E
	bmi 126.b		; 30 7E
	plp		; 28
	jmp ($6820.w,X)		; 7C 20 68
	bpl  56.b		; 10 38
	brk $27.b		; 00 27
	sbc [$66.b]		; E7 66
	inc $54.b		; E6 54
	pei ($B1.b)		; D4 B1
	lda ($A9.b),Y		; B1 A9
	lda #$A3A3.w		; A9 A3 A3
	sta [$97.b],Y		; 97 97
	cmp [$C7.b]		; C7 C7
	sec		; 38
	php		; 08
	ora #$0A01.w		; 09 01 0A
	ora $0B.b,S		; 03 0B
	cop $0E.b		; 02 0E
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	and $040F06.l,X		; 3F 06 0F 04
	ora $000F04.l		; 0F 04 0F 00
	asl $0700.w		; 0E 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	cpx #$7000.w		; E0 00 70
	brk $3C.b		; 00 3C
	brk $80.b		; 00 80
	bra -17.b		; 80 EF
	jsr $0033.w		; 20 33 00
	phd		; 0B
	cop $05.b		; 02 05
	cop $1F.b		; 02 1F
	ora $C38F8F.l,X		; 1F 8F 8F C3
	cmp $7F.b,S		; C3 7F
	sbc $0CFF10.l,X		; FF 10 FF 0C
	and $000F04.l,X		; 3F 04 0F 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $63.b		; 00 63
	brk $44.b		; 00 44
	jsl $5C2256.l		; 22 56 22 5C
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$6300.w		; C0 00 63
	ora ($67.b,X)		; 01 67
	ora ($77.b,X)		; 01 77
	ora $7F.b,S		; 03 7F
	cmp [$40.b]		; C7 40
	ror $20.b		; 66 20
	sty $9C00.w		; 8C 00 9C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $B8.b		; 00 B8
	bra  -8.b		; 80 F8
	cpy #$F838.w		; C0 38 F8
	ora $7379.w,Y		; 19 79 73
	sbc ($63.b,S),Y		; F3 63
	sbc $E7.b,S		; E3 E7
	sbc [$C7.b]		; E7 C7
	cmp [$47.b]		; C7 47
	cmp [$07.b]		; C7 07
	cmp [$69.b]		; C7 69
	ora [$5F.b],Y		; 17 5F
	bit $7F.b,X		; 34 7F
	bit $7F.b,X		; 34 7F
	ora $7E.b,X		; 15 7E
	ora [$7F.b],Y		; 17 7F
	trb $7F.b		; 14 7F
	trb $7F.b		; 14 7F
	ora $B7.b,X		; 15 B7
	lda [$B4.b],Y		; B7 B4
	ldy $B4.b,X		; B4 B4
	ldy $95.b,X		; B4 95
	sta $97.b,X		; 95 97
	sta [$94.b],Y		; 97 94
	sty $94.b,X		; 94 94
	sty $B5.b,X		; 94 B5
	lda $F9.b,X		; B5 F9
	stx $AE.b		; 86 AE
	eor ($C4.b),Y		; 51 C4
	rol A		; 2A
	cpy #$E0E4.w		; C0 E4 E0
	and ($D1.b),Y		; 31 D1
	rol A		; 2A
	xce		; FB
	sbc $86916F.l,X		; FF 6F 91 86
	stx $40.b		; 86 40
	rti		; 40

	ora ($00.b),Y		; 11 00
	stp		; DB
	cpy #$202E.w		; C0 2E 20
	bit $20.b		; 24 20
	xce		; FB
	xce		; FB
	sta ($91.b),Y		; 91 91
	ora $F900.w,X		; 1D 00 F9
	brk $79.b		; 00 79
	sta ($38.b,X)		; 81 38
	cpy #$20FC.w		; C0 FC 20
	sbc $B0EFA0.l,X		; FF A0 EF B0
	jsr ($E230.w,X)		; FC 30 E2
	sbc $06.b,S		; E3 06
	ora [$46.b]		; 07 46
	eor [$47.b]		; 47 47
	eor [$63.b]		; 47 63
	adc $B0.b,S		; 63 B0
	bcs -80.b		; B0 B0
	bcs  51.b		; B0 33
	and ($B1.b,S),Y		; 33 B1
	jsr $10D9.w		; 20 D9 10
	inx		; E8
	brk $0D.b		; 00 0D
	php		; 08
	asl $01.b		; 06 01
	ora $03.b,S		; 03 03
	cpy #$FC00.w		; C0 00 FC
	brk $40.b		; 00 40
	sbc ($20.b),Y		; F1 20
	sbc $F810.w,Y		; F9 10 F8
	beq  -3.b		; F0 FD
	sed		; F8
	sbc $3FFFFC.l,X		; FF FC FF 3F
	and $600303.l,X		; 3F 03 03 60
	brk $50.b		; 00 50
	rts		; 60

	beq -96.b		; F0 A0
	bcs   0.b		; B0 00
	sec		; 38
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$F080.w		; E0 80 F0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	brk $38.b		; 00 38
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($3C88.w,X)		; FC 88 3C
	plp		; 28
	cpy $F8C8.w		; CC C8 F8
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  62.b		; 80 3E
	jsr $0283.w		; 20 83 02
	brk $FC.b		; 00 FC
	cpy #$30FC.w		; C0 FC 30
	jsr ($F800.w,X)		; FC 00 F8
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	cpy #$7CFE.w		; C0 FE 7C
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $28.b		; 00 28
	bpl -88.b		; 10 A8
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	sec		; 38
	brk $B8.b		; 00 B8
	tsb $F800.w		; 0C 00 F8
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	bra -126.b		; 80 82
	brk $46.b		; 00 46
	brk $00.b		; 00 00
	tsb $F800.w		; 0C 00 F8
	cpy #$00E0.w		; C0 E0 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $82.b		; 00 82
	bra -58.b		; 80 C6
	dec A		; 3A
	mvp $68,$6C		; 44 6C 68
	php		; 08
	brk $18.b		; 00 18
	bpl -104.b		; 10 98
	bra -112.b		; 80 90
	bra -48.b		; 80 D0
	rti		; 40

	bvs  32.b		; 70 20
	bra  -2.b		; 80 FE
	bcc  -4.b		; 90 FC
	beq  -8.b		; F0 F8
	cpx #$60F8.w		; E0 F8 60
	sed		; F8
	rts		; 60

	beq  32.b		; F0 20
	beq   0.b		; F0 00
	bvs -40.b		; 70 D8
	php		; 08
	tya		; 98
	php		; 08
	bpl   8.b		; 10 08
	tsb $0404.w		; 0C 04 04
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	php		; 08
	ora ($00.b),Y		; 11 00
	ora [$DF.b]		; 07 DF
	ora [$9F.b]		; 07 9F
	ora [$1F.b]		; 07 1F
	ora $0F.b,S		; 03 0F
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora [$1F.b]		; 07 1F
	asl $521E.w		; 0E 1E 52
	bit $3E.b,X		; 34 3E
	asl $000E.w		; 0E 0E 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$017F.w		; 09 7F 01
	and $000F01.l,X		; 3F 01 0F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	jsr $20F8.w		; 20 F8 20
	sbc ($21.b),Y		; F1 21
	lda ($60.b),Y		; B1 60
	cmp ($60.b),Y		; D1 60
	sbc ($40.b),Y		; F1 40
	sbc ($40.b,X)		; E1 40
	sbc $04.b		; E5 04
	and [$37.b],Y		; 37 37
	and [$27.b]		; 27 27
	ror $6E6F.w		; 6E 6F 6E
	adc $6E6F6E.l		; 6F 6E 6F 6E
	adc $1A5F5E.l		; 6F 5E 5F 1A
	ora $50C050.l,X		; 1F 50 C0 50
	bra -44.b		; 80 D4
	brk $56.b		; 00 56
	brk $5E.b		; 00 5E
	tsb $5E.b		; 04 5E
	tsb $185C.w		; 0C 5C 18
	sei		; 78
	bmi  32.b		; 30 20
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	pea $7620.w		; F4 20 76
	jsr $207E.w		; 20 7E 20
	ror $7C20.w,X		; 7E 20 7C
	brk $78.b		; 00 78
	ldx $7070.w,Y		; BE 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $7000.w,X		; FE 00 70
	brk $00.b		; 00 00
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
	cpy #$4080.w		; C0 80 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	stz $3C00.w		; 9C 00 3C
	clc		; 18
	ror $24.b		; 66 24
	dec $44.b,X		; D6 44
	ldx $2B84.w		; AE 84 2B
	lsr $37.b		; 46 37
	jsr $0011.w		; 20 11 00
	brk $9C.b		; 00 9C
	brk $3C.b		; 00 3C
	clc		; 18
	ror $FE28.w,X		; 7E 28 FE
	rti		; 40

	inc $EF80.w		; EE 80 EF
	cpy #$E0F7.w		; C0 F7 E0
	sbc ($1A.b),Y		; F1 1A
	ora ($04.b,S),Y		; 13 04
	ora $050F03.l		; 0F 03 0F 05
	sta $00CE04.l		; 8F 04 CE 00
	rts		; 60

	php		; 08
	eor $5D12.w		; 4D 12 5D
	trb $0800.w		; 1C 00 08
	brk $08.b		; 00 08
	brk $88.b		; 00 88
	brk $C9.b		; 00 C9
	brk $60.b		; 00 60
	ora $5F324D.l,X		; 1F 4D 32 5F
	jsr $9909.w		; 20 09 99
	eor ($D3.b,S),Y		; 53 D3
	jsr $84E2.w		; 20 E2 84
	stx $3A.b		; 86 3A
	rol $FED2.w,X		; 3E D2 FE
	bne -82.b		; D0 AE
	tax		; AA
	stx $79.b		; 86 79
	asl $33.b		; 06 33
	tsb $1D02.w		; 0C 02 1D
	asl $78.b		; 06 78
	rol $FEC0.w,X		; 3E C0 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FE.b,X)		; 01 FE
	ora ($05.b,X)		; 01 05
	asl $63.b		; 06 63
	.db $62, $39, $39		; 62 39 39
	asl $111E.w,X		; 1E 1E 11
	ora $7B3926.l,X		; 1F 26 39 7B
	jmp ($3032.w,X)		; 7C 32 30
	ora [$78.b]		; 07 78
	adc $9C.b,S		; 63 9C
	and $1E46.w,Y		; 39 46 1E
	and ($1F.b,X)		; 21 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $37.b		; 00 37
	pha		; 48
	cpy #$86FF.w		; C0 FF 86
	sbc $4BBF3E.l,X		; FF 3E BF 4B
	ora $A43A12.l		; 0F 12 3A A4
	ldy $89.b		; A4 89
	dey		; 88
	and ($33.b),Y		; 31 33
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7000.w		; C0 00 70
	bra  37.b		; 80 25
	cpy #$409B.w		; C0 9B 40
	lda [$40.b],Y		; B7 40
	ora $0000C0.l		; 0F C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $07.b		; 05 07
	ora $07.b		; 05 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $05.b		; 02 05
	ora [$10.b]		; 07 10
	ora [$18.b]		; 07 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	brk $9C.b		; 00 9C
	php		; 08
	sty $00.b,X		; 94 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	trb $34.b		; 14 34
	bit $372F.w,X		; 3C 2F 37
	adc [$6F.b],Y		; 77 6F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $1E.b		; 00 1E
	trb $2A.b		; 14 2A
	bit $3F00.w,X		; 3C 00 3F
	rti		; 40

	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	sec		; 38
	sec		; 38
	plp		; 28
	sec		; 38
	cpy $2FFC.w		; CC FC 2F
	cmp $000000.l,X		; DF 00 00 00
	tsb $00.b		; 04 00
	tsb $3408.w		; 0C 08 34
	sec		; 38
	tsb $38.b		; 04 38
	lsr $FC.b		; 46 FC
	ora $FF.b,S		; 03 FF
	brk $0C.b		; 00 0C
	ora $020607.l		; 0F 07 06 02
	ora [$04.b]		; 07 04
	ora [$14.b]		; 07 14
	ora [$1A.b],Y		; 17 1A
	tas		; 1B
	phd		; 0B
	ora $0E0F0A.l		; 0F 0A 0F 0E
	bpl   7.b		; 10 07
	php		; 08
	ora [$C8.b]		; 07 C8
	ora [$78.b]		; 07 78
	ora [$68.b],Y		; 17 68
	tas		; 1B
	bit $0F.b		; 24 0F
	bmi  15.b		; 30 0F
	bpl  65.b		; 10 41
	sbc $09.b,S		; E3 09
	sep #$8D		; E2 8D
	cmp ($24.b)		; D2 24
	eor ($24.b,S),Y		; 53 24
	eor ($A4.b),Y		; 51 A4
	ora ($00.b,S),Y		; 13 00
	sta ($03.b,S),Y		; 93 03
	sta ($DD.b,S),Y		; 93 DD
	brk $5D.b		; 00 5D
	brk $6D.b		; 00 6D
	brk $EC.b		; 00 EC
	brk $EE.b		; 00 EE
	brk $EC.b		; 00 EC
	brk $EC.b		; 00 EC
	brk $EC.b		; 00 EC
	brk $D1.b		; 00 D1
	lsr $9BC4.w		; 4E C4 9B
	brk $8E.b		; 00 8E
	brk $04.b		; 00 04
	tsb $20.b		; 04 20
	brk $04.b		; 00 04
	stx $0000.w		; 8E 00 00
	sbc $6400F1.l,X		; FF F1 00 64
	brk $00.b		; 00 00
	adc ($00.b),Y		; 71 00
	xce		; FB
	tsb $DB.b		; 04 DB
	tsb $FB.b		; 04 FB
	stx $7171.w		; 8E 71 71
	brk $F7.b		; 00 F7
	adc #$69B7.w		; 69 B7 69
	asl $29.b,X		; 16 29
	cop $1D.b		; 02 1D
	ora #$039E.w		; 09 9E 03
	asl $1F27.w,X		; 1E 27 1F
	ora [$FF.b],Y		; 17 FF
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	ora [$C0.b],Y		; 17 C0
	ora [$E0.b]		; 07 E0
	ora [$60.b]		; 07 60
	ora [$E0.b]		; 07 E0
	rol $C0.b		; 26 C0
	dec $0200.w		; CE 00 02
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($38.b,X)		; 01 38
	sec		; 38
	ora [$1F.b],Y		; 17 1F
	asl A		; 0A
	ora $0403.w		; 0D 03 04
	ora $0C.b,S		; 03 0C
	ora ($06.b,X)		; 01 06
	ora ($CE.b,X)		; 01 CE
	ora ($FE.b,X)		; 01 FE
	sec		; 38
	eor [$1F.b]		; 47 1F
	jsr $300F.w		; 20 0F 30
	ora [$18.b]		; 07 18
	sta ($7D.b,S),Y		; 93 7D
	adc $99.b		; 65 99
	mvn $60,$89		; 54 89 60
	bit #$C5A4.w		; 89 A4 C5
	cpx $37CD.w		; EC CD 37
	cmp [$D3.b]		; C7 D3
	and [$FE.b]		; 27 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FA.b		; 00 FA
	brk $F2.b		; 00 F2
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $26.b		; 00 26
	ora $0E0738.l,X		; 1F 38 07 0E
	ora ($A7.b,X)		; 01 A7
	ldx #$F7D5.w		; A2 D5 F7
	jmp ($00FF.w)		; 6C FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $5D.b		; 00 5D
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AA.b		; 00 AA
	eor [$D9.b]		; 47 D9
	asl $B7.b,X		; 16 B7
	bmi  40.b		; 30 28
	sec		; 38
	adc $FC0CFF.l		; 6F FF 0C FC
	cop $FA.b		; 02 FA
	eor ($C3.b,X)		; 41 C3
	sbc $00EF00.l,X		; FF 00 EF 00
	cmp $00C700.l		; CF 00 C7 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $05.b		; 02 05
	ora $3C.b,S		; 03 3C
	eor $58.b		; 45 58
	tsb $0700.w		; 0C 00 07
	php		; 08
	ora ($17.b),Y		; 11 17
	ora $060E.w		; 0D 0E 06
	ora $000300.l		; 0F 00 03 00
	ora ($5F.b,X)		; 01 5F
	jsr $300F.w		; 20 0F 30
	ora $081410.l		; 0F 10 14 08
	ora $000F00.l		; 0F 00 0F 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	iny		; C8
	stz $8C.b		; 64 8C
	cpy $54.b		; C4 54
	cpy $EC30.w		; CC 30 EC
	jsr $C0F8.w		; 20 F8 C0
	sei		; 78
	bra 112.b		; 80 70
	brk $E0.b		; 00 E0
	stz $3C02.w		; 9C 02 3C
	cop $3C.b		; 02 3C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $B8.b		; 00 B8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
	tsa		; 3B
	ora ($1D.b),Y		; 11 1D
	bmi  60.b		; 30 3C
	trb $1B.b		; 14 1B
	eor ($59.b)		; 52 59
	trb $18.b		; 14 18
	jsr $322C.w		; 20 2C 32
	bit $003E.w,X		; 3C 3E 00
	asl $3F20.w,X		; 1E 20 3F
	cpy #$601F.w		; C0 1F 60
	eor $201F20.l,X		; 5F 20 1F 20
	and $003F10.l		; 2F 10 3F 00
	and $27.b,S		; 23 27
	sta $E890E7.l		; 8F E7 90 E8
	jmp.w [$51C7]		; DC C7 51
	sbc ($26.b),Y		; F1 26
	cmp [$69.b]		; C7 69
	ora $1E0F01.l		; 0F 01 0F 1E
	cpy #$00DC.w		; C0 DC 00
	cmp $00FB00.l,X		; DF 00 FB 00
	inc $F800.w		; EE 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $0E.b		; 00 0E
	ora $0D0A.w		; 0D 0A 0D
	phd		; 0B
	tsb $0C0F.w		; 0C 0F 0C
	ora [$04.b]		; 07 04
	ora $06.b		; 05 06
	trb $17.b		; 14 17
	tsb $0F0F.w		; 0C 0F 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	bpl  15.b		; 10 0F
	brk $07.b		; 00 07
	pha		; 48
	ora [$38.b]		; 07 38
	asl $28.b,X		; 16 28
	asl $9910.w		; 0E 10 99
	sta $FF76.w,Y		; 99 76 FF
	ora $FA.b		; 05 FA
	clv		; B8
	eor $76FF77.l,X		; 5F 77 FF 76
	cmp $C1DDE6.l		; CF E6 DD C1
	dec $99.b,X		; D6 99
	stz $FF.b		; 64 FF
	brk $C7.b		; 00 C7
	brk $B8.b		; 00 B8
	brk $77.b		; 00 77
	brk $77.b		; 00 77
	brk $E6.b		; 00 E6
	brk $E9.b		; 00 E9
	brk $44.b		; 00 44
	sbc $6246A9.l		; EF A9 46 62
	tsb $5C.b		; 04 5C
	tya		; 98
	.db $82, $7D, $39		; 82 7D 39
	sbc $F7F7FF.l,X		; FF FF F7 F7
	cmp ($FF.b),Y		; D1 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $67.b		; 00 67
	brk $82.b		; 00 82
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F5.b		; 00 F5
	ora $000000.l		; 0F 00 00 00
	asl $7F04.w,X		; 1E 04 7F
	ply		; 7A
	sbc $DBDD3B.l,X		; FF 3B DD DB
	lda $E7.b		; A5 E7
	eor $00FF.w,Y		; 59 FF 00
	sbc $00E100.l,X		; FF 00 E1 00
	stx $00.b		; 86 00
	tda		; 7B
	brk $BB.b		; 00 BB
	brk $DB.b		; 00 DB
	brk $E7.b		; 00 E7
	brk $05.b		; 00 05
	asl $05.b		; 06 05
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $070302.l		; 0F 02 03 07
	clc		; 18
	ora [$08.b]		; 07 08
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	brk $73.b		; 00 73
	brk $3F.b		; 00 3F
	ora $1C0330.l		; 0F 30 03 1C
	jsl $3020B3.l		; 22 B3 20 30
	nop		; EA
	ply		; 7A
	adc ($B3.b,S),Y		; 73 B3
	cop $03.b		; 02 03
	ora $06.b		; 05 06
	cpy $C6.b		; C4 C6
	ror A		; 6A
	cpx $00CD.w		; EC CD 00
	iny		; C8
	ora [$82.b]		; 07 82
	ora $C3.b		; 05 C3
	tsb $FC03.w		; 0C 03 FC
	ora [$F8.b]		; 07 F8
	cmp [$38.b]		; C7 38
	sbc $BF4A10.l		; EF 10 4A BF
	ldy #$5EDF.w		; A0 DF 5E
	rts		; 60

	bit $3A.b		; 24 3A
	bra -128.b		; 80 80
	rts		; 60

	cpx #$79B9.w		; E0 B9 79
	adc $711D.w		; 6D 1D 71
	brk $3B.b		; 00 3B
	brk $1E.b		; 00 1E
	sta ($04.b,X)		; 81 04
	cmp ($80.b,X)		; C1 80
	adc $F91FE0.l,X		; 7F E0 1F F9
	asl $FD.b		; 06 FD
	cop $40.b		; 02 40
	bra   6.b		; 80 06
	stx $3E.b		; 86 3E
	rol $7C74.w,X		; 3E 74 7C
	cpx $FC.b		; E4 FC
	cpx $5DF4.w		; EC F4 5D
	sbc $0F.b		; E5 0F
	sbc [$C0.b]		; E7 C0
	and $3E7906.l,X		; 3F 06 79 3E
	cmp ($7C.b,X)		; C1 7C
	sta $FC.b,S		; 83 FC
	ora $FC.b,S		; 03 FC
	ora $FD.b,S		; 03 FD
	cop $FF.b		; 02 FF
	brk $04.b		; 00 04
	asl $05.b		; 06 05
	asl $06.b		; 06 06
	ora [$33.b]		; 07 33
	and ($23.b)		; 32 23
	jsr $0006.w		; 20 06 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	ora [$08.b]		; 07 08
	and ($0C.b,S),Y		; 33 0C
	and $5C.b,S		; 23 5C
	ora [$F8.b]		; 07 F8
	brk $7F.b		; 00 7F
	bmi  15.b		; 30 0F
	adc $07.b,S		; 63 07
	ora #$790F.w		; 09 0F 79
	adc $953F28.l,X		; 7F 28 3F 95
	ora $707E72.l,X		; 1F 72 7E 70
	bvs   3.b		; 70 03
	ora $F8.b,S		; 03 F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	ora $00FC03.l		; 0F 03 FC 00
	sbc [$40.b],Y		; F7 40
	cpy #$C040.w		; C0 40 C0
	bcc -112.b		; 90 90
	clc		; 18
	clc		; 18
	plp		; 28
	clv		; B8
	lsr $D56E.w,X		; 5E 6E D5
	sbc $200008.l		; EF 08 00 20
	ora $103F00.l,X		; 1F 00 3F 10
	adc $B86798.l		; 6F 98 67 B8
	eor [$7E.b]		; 47 7E
	sta ($FF.b,X)		; 81 FF
	brk $0C.b		; 00 0C
	ora $2A0D0E.l		; 0F 0E 0D 2A
	and $7865.w,X		; 3D 65 78
	bit $5440.w,X		; 3C 40 54
	rts		; 60

	pla		; 68
	bvs  60.b		; 70 3C
	sec		; 38
	sta $F00F70.l		; 8F 70 0F F0
	and $807FC0.l,X		; 3F C0 7F 80
	adc $807F80.l,X		; 7F 80 7F 80
	adc $C03F80.l,X		; 7F 80 3F C0
	beq -16.b		; F0 F0
	cpx #$20E0.w		; E0 E0 20
	cpx #$E060.w		; E0 60 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  14.b		; F0 0E
	cpx #$E01C.w		; E0 1C E0
	clc		; 18
	cpx #$0010.w		; E0 10 00
	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	sbc $FB1D.w,Y		; F9 1D FB
	eor $F1CEF8.l,X		; 5F F8 CE F1
	eor $9667.w,Y		; 59 67 96
	rol $FC44.w		; 2E 44 FC
	stz $07CC.w		; 9C CC 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $9F.b		; 00 9F
	brk $DE.b		; 00 DE
	ora ($9C.b,X)		; 01 9C
	ora $3C.b,S		; 03 3C
	cop $B8.b		; 02 B8
	dey		; 88
	inx		; E8
	cld		; D8
	beq -16.b		; F0 F0
	ldy #$00A0.w		; A0 A0 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	sei		; 78
	tsb $38.b		; 04 38
	asl $F0.b		; 06 F0
	tsb $1060.w		; 0C 60 10
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	cpy #$8000.w		; C0 00 80
	rti		; 40

	and [$38.b]		; 27 38
	ora ($1E.b),Y		; 11 1E
	tas		; 1B
	trb $1C11.w		; 1C 11 1C
	ora $08.b		; 05 08
	clc		; 18
	bpl  21.b		; 10 15
	ora $1C.b,X		; 15 1C
	ora [$3F.b],Y		; 17 3F
	cpy #$E01F.w		; C0 1F E0
	ora $001F20.l,X		; 1F 20 1F 00
	ora $201F30.l		; 0F 30 1F 20
	inc A		; 1A
	brk $18.b		; 00 18
	jsr $0E4A.w		; 20 4A 0E
	cmp $03930E.l,X		; DF 0E 93 03
	tay		; A8
	ora ($4D.b,S),Y		; 13 4D
	adc ($FB.b,S),Y		; 73 FB
	cmp [$46.b]		; C7 46
	dec $CC54.w		; CE 54 CC
	sbc ($00.b),Y		; F1 00
	sbc ($00.b),Y		; F1 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $BF.b		; 00 BF
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	ora ($3C.b,X)		; 01 3C
	ora $00.b,S		; 03 00
	bra -32.b		; 80 E0
	cpx #$70B0.w		; E0 B0 70
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	rts		; 60

	clc		; 18
	beq   0.b		; F0 00
	cpx #$0018.w		; E0 18 00
	jsr ($C800.w,X)		; FC 00 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	cpy #$7CC0.w		; C0 C0 7C
	jsr ($7858.w,X)		; FC 58 78
	php		; 08
	sed		; F8
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	trb $88FC.w		; 1C FC 88
	sed		; F8
	cpy #$FC3F.w		; C0 3F FC
	ora $F8.b,S		; 03 F8
	asl $F8.b		; 06 F8
	tsb $70.b		; 04 70
	tsb $0F70.w		; 0C 70 0F
	jmp ($7803.w,X)		; 7C 03 78
	asl $88.b		; 06 88
	sed		; F8
	php		; 08
	bvs -124.b		; 70 84
	bit $4FD7.w		; 2C D7 4F
	nop		; EA
	dec $84.b		; C6 84
	jmp $F020.w		; 4C 20 F0
	bvc -16.b		; 50 F0
	sei		; 78
	asl $F8.b		; 06 F8
	ora $FC.b		; 05 FC
	ora $BF.b,S		; 03 BF
	brk $3E.b		; 00 3E
	ora ($BC.b,X)		; 01 BC
	ora $10.b,S		; 03 10
	asl $0830.w		; 0E 30 08
	cpx #$40A0.w		; E0 A0 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	ldx $33FE.w,Y		; BE FE 33
	sbc $60BE46.l,X		; FF 46 BE 60
	bpl  64.b		; 10 40
	ldy #$8040.w		; A0 40 80
	brk $F9.b		; 00 F9
	bvs -113.b		; 70 8F
	inc $FF01.w,X		; FE 01 FF
	brk $FE.b		; 00 FE
	brk $C4.b		; 00 C4
	bit $1CEC.w,X		; 3C EC 1C
	tay		; A8
	clc		; 18
	ldy $281C.w		; AC 1C 28
	clc		; 18
	tya		; 98
	dey		; 88
	bvc  80.b		; 50 50
	ora $02FC0F.l		; 0F 0F FC 02
	jsr ($F802.w,X)		; FC 02 F8
	tsb $FC.b		; 04 FC
	cop $F8.b		; 02 F8
	asl $78.b		; 06 78
	tsb $70.b		; 04 70
	sta $9AF00F.l		; 8F 0F F0 9A
	stz $FCE4.w,X		; 9E E4 FC
	jmp $B4F4.w		; 4C F4 B4
	jmp $0CD4.w		; 4C D4 0C
	rol $0E.b,X		; 36 0E
	tas		; 1B
	ora [$4C.b]		; 07 4C
	bit $619E.w,X		; 3C 9E 61
	jsr ($FC03.w,X)		; FC 03 FC
	cop $FC.b		; 02 FC
	cop $FC.b		; 02 FC
	cop $FE.b		; 02 FE
	ora ($FF.b,X)		; 01 FF
	brk $FC.b		; 00 FC
	ora $1C.b,S		; 03 1C
	trb $1F19.w		; 1C 19 1F
	trb $1F.b		; 14 1F
	ora ($11.b),Y		; 11 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1F03.w		; 1C 03 1F
	brk $1F.b		; 00 1F
	jsr $2E11.w		; 20 11 2E
	brk $79.b		; 00 79
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	bit $CE3F.w,X		; 3C 3F CE
	sbc $B0EF13.l,X		; FF 13 EF B0
	eor $A480FF.l		; 4F FF 80 A4
	cpy #$E392.w		; C0 92 E3
	iny		; C8
	sbc ($3F.b,S),Y		; F3 3F
	cpy #$00FF.w		; C0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $A3.b		; 00 A3
	cmp $D53A.w		; CD 3A D5
	lsr $91.b,X		; 56 91
	tax		; AA
	and $3C27.w,Y		; 39 27 3C
	jsr $833E.w		; 20 3E 83
	lda $FFFF40.l,X		; BF 40 FF FF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $C7.b		; 00 C7
	brk $C3.b		; 00 C3
	brk $C1.b		; 00 C1
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	sta ($F8.b,X)		; 81 F8
	sed		; F8
	adc $FF64FF.l		; 6F FF 64 FF
	and #$13F7.w		; 29 F7 13
	adc $4981BE.l		; 6F BE 81 49
	cmp [$81.b]		; C7 81
	ror $07F8.w,X		; 7E F8 07
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $003F00.l,X		; 7F 00 3F 00
	cpx #$40E0.w		; E0 E0 40
	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bvs -16.b		; 70 F0
	cpy #$E0C0.w		; C0 C0 E0
	ora $00A040.l,X		; 1F 40 A0 00
	cpy #$4080.w		; C0 80 40
	bra 104.b		; 80 68
	bra 120.b		; 80 78
	beq   8.b		; F0 08
	cpy #$0038.w		; C0 38 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
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
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	dec $DDA7.w,X		; DE A7 DD
	ldy $5A.b		; A4 5A
	lda $0A.b		; A5 0A
	adc $26.b,X		; 75 26
	tda		; 7B
	ora $7F9D79.l		; 0F 79 9D 7F
	eor $DDFF.w,X		; 5D FF DD
	brk $DF.b		; 00 DF
	brk $5E.b		; 00 5E
	brk $1E.b		; 00 1E
	bra  28.b		; 80 1C
	bra  30.b		; 80 1E
	bra -104.b		; 80 98
	brk $38.b		; 00 38
	brk $C4.b		; 00 C4
	trb $1828.w		; 1C 28 18
	bvs  16.b		; 70 10
	cpy #$A0A0.w		; C0 A0 A0
	cpx #$C080.w		; E0 80 C0
	jsr $4060.w		; 20 60 40
	rts		; 60

	jsr ($F802.w,X)		; FC 02 F8
	asl $F0.b		; 06 F0
	tsb $1860.w		; 0C 60 18
	rts		; 60

	bpl  64.b		; 10 40
	bmi -32.b		; 30 E0
	php		; 08
	cpx #$0719.w		; E0 19 07
	sta $8A27.w		; 8D 27 8A
	bit $4A.b,X		; 34 4A
	bcc  76.b		; 90 4C
	bcc  68.b		; 90 44
	bcc  76.b		; 90 4C
	cop $4C.b		; 02 4C
	tsb $774F.w		; 0C 4F 77
	brk $75.b		; 00 75
	brk $B4.b		; 00 B4
	ora ($B0.b,X)		; 01 B0
	ora $B8.b,S		; 03 B8
	ora $B0.b,S		; 03 B0
	ora $B2.b,S		; 03 B2
	ora ($B1.b,X)		; 01 B1
	brk $47.b		; 00 47
	and $6D12.w,Y		; 39 12 6D
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	bpl -126.b		; 10 82
	brk $10.b		; 00 10
	sec		; 38
	brk $00.b		; 00 00
	sbc $9300C7.l,X		; FF C7 00 93
	brk $00.b		; 00 00
	cmp [$00.b]		; C7 00
	sbc $106D10.l		; EF 10 6D 10
	sbc $C7C738.l		; EF 38 C7 C7
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
	brk $04.b		; 00 04
	asl $00.b		; 06 00
	cop $8D.b		; 02 8D
	sta $4445.w		; 8D 45 44
	phy		; 5A
	ror $2E12.w,X		; 7E 12 2E
	and #$0837.w		; 29 37 08
	ora [$07.b],Y		; 17 07
	brk $03.b		; 00 03
	cpy $428C.w		; CC 8C 42
	eor $BA.b		; 45 BA
	ror $3E81.w,X		; 7E 81 3E
	cmp ($3F.b,X)		; C1 3F
	rti		; 40

	ora $619E60.l,X		; 1F 60 9E 61
	sbc ($01.b)		; F2 01
	dec $01.b		; C6 01
	ora [$00.b]		; 07 00
	ror $CC60.w		; 6E 60 CC
.ACCU 16
	rep #$E8		; C2 E8
	cpx #$E161.w		; E0 61 E1
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	stz $3E01.w,X		; 9E 01 3E
	ora ($18.b,X)		; 01 18
	ora [$19.b]		; 07 19
	asl $00.b		; 06 00
	cpy #$C000.w		; C0 00 C0
	rti		; 40

	cpy #$0808.w		; C0 08 08
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C020.w		; C0 20 C0
	brk $C0.b		; 00 C0
	trb $F008.w		; 1C 08 F0
	brk $F0.b		; 00 F0
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	inc A		; 1A
	sbc $C3BF54.l,X		; FF 54 BF C3
	bit $20DE.w,X		; 3C DE 20
	ply		; 7A
	brk $24.b		; 00 24
	tsb $CD.b		; 04 CD
	cmp $7F77.w		; CD 77 7F
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FB00.l,X		; FF 00 FB 00
	and ($00.b)		; 32 00
	bra   0.b		; 80 00
	adc $AA9E.w		; 6D 9E AA
	trb $3846.w		; 1C 46 38
	jmp ($A900.w,X)		; 7C 00 A9
	sta ($A7.b,X)		; 81 A7
	lda [$BA.b]		; A7 BA
	lda $FFFFD0.l,X		; BF D0 FF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	brk $58.b		; 00 58
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	sta $25.b,S		; 83 25
	sta $0A.b,S		; 83 0A
	stx $1C.b		; 86 1C
	tsb $93.b		; 04 93
	phb		; 8B
	ldy #$6593.w		; A0 93 65
	tas		; 1B
	sbc $FF07.w,Y		; F9 07 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	ora $7B.b,S		; 03 7B
	tsb $73.b		; 04 73
	tsb $00FF.w		; 0C FF 00
	sbc $808000.l,X		; FF 00 80 80
	brk $00.b		; 00 00
	jsr $6020.w		; 20 20 60
	rts		; 60

	rts		; 60

	cpx #$C0C0.w		; E0 C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $78.b		; 00 78
	jsr $60D8.w		; 20 D8 60
	bcc -32.b		; 90 E0
	bpl -64.b		; 10 C0
	jsr $4080.w		; 20 80 40
	brk $C0.b		; 00 C0
	lda $CF.b,S		; A3 CF
	lda #$C6C6.w		; A9 C6 C6
	bra -94.b		; 80 A2
.INDEX 16
	rep #$D3		; C2 D3
	sbc $4B.b,S		; E3 4B
	tda		; 7B
	adc [$67.b],Y		; 77 67
	sbc $07.b		; E5 07
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FD00.l,X		; FF 00 FD 00
	jsr ($7400.w,X)		; FC 00 74
	bra 120.b		; 80 78
	bra  -8.b		; 80 F8
	brk $65.b		; 00 65
	ora $DA0D73.l,X		; 1F 73 0D DA
	sta ($8B.b,X)		; 81 8B
	bra -64.b		; 80 C0
	cpy #$CD4D.w		; C0 4D CD
	eor $FE78DF.l,X		; 5F DF 78 FE
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $003200.l,X		; 3F 00 32 00
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	ora $191C.w,Y		; 19 1C 19
	rol $1338.w		; 2E 38 13
	ora $0B0F03.l,X		; 1F 03 0F 0B
	ora $000E0A.l		; 0F 0A 0E 00
	asl $1E.b		; 06 1E
	cpx #$601E.w		; E0 1E 60
	and $201C00.l,X		; 3F 00 1C 20
	tsb $0C30.w		; 0C 30 0C
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	php		; 08
	ora $FD.b		; 05 FD
	ora ($F9.b,X)		; 01 F9
	cop $FA.b		; 02 FA
	brk $F8.b		; 00 F8
	tsb $68FC.w		; 0C FC 68
	sed		; F8
	pha		; 48
	clv		; B8
	bra  48.b		; 80 30
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	cop $04.b		; 02 04
	php		; 08
	tsb $9C.b		; 04 9C
	brk $98.b		; 00 98
	brk $D8.b		; 00 D8
	ora ($D0.b,X)		; 01 D0
	ora $84FE06.l		; 0F 06 FE 84
	sbc $7AA458.l,X		; FF 58 A4 7A
	cop $21.b		; 02 21
	ora $8C.b,S		; 03 8C
	sta $33DE51.l		; 8F 51 DE 33
	jsr ($007D.w,X)		; FC 7D 00
	adc $03FC00.l,X		; 7F 00 FC 03
	ply		; 7A
	sta $23.b		; 85 23
	jmp.w [$708F]		; DC 8F 70
	cmp $00FF20.l,X		; DF 20 FF 00
	brk $40.b		; 00 40
	tsb $84.b		; 04 84
	trb $E01C.w		; 1C 1C E0
	sed		; F8
	dey		; 88
	sed		; F8
	bpl -16.b		; 10 F0
	jsr $40E0.w		; 20 E0 40
	cpy #$3FC0.w		; C0 C0 3F
	sty $7B.b		; 84 7B
	trb $F8E3.w		; 1C E3 F8
	asl $F8.b		; 06 F8
	tsb $F0.b		; 04 F0
	php		; 08
	cpx #$C010.w		; E0 10 C0
	bmi -115.b		; 30 8D
	dex		; CA
	stx $87D3.w		; 8E D3 87
	sbc $F4CB.w,Y		; F9 CB F4
	and [$38.b]		; 27 38
	adc [$68.b]		; 67 68
.ACCU 16
	rep #$E0		; C2 E0
	bvc -16.b		; 50 F0
	and $00.b,X		; 35 00
	bit $3E00.w,X		; 3C 00 3E
	brk $3B.b		; 00 3B
	brk $27.b		; 00 27
	cpy #$9067.w		; C0 67 90
.INDEX 8
	sep #$1D		; E2 1D
	beq  15.b		; F0 0F
	and #$80FE.w		; 29 FE 80
	adc $90807C.l,X		; 7F 7C 80 90
	cpx $61A1.w		; EC A1 61
	bmi -15.b		; 30 F1
	ora ($32.b,S),Y		; 13 32
	lda $D6.b,X		; B5 D6
	cmp [$00.b]		; C7 00
	cpx $7C00.w		; EC 00 7C
	ora $10.b,S		; 03 10
	ora $A1.b,S		; 03 A1
	asl $0E31.w,X		; 1E 31 0E
	and ($CC.b,S),Y		; 33 CC
	sbc [$08.b],Y		; F7 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	asl $06.b		; 06 06
	ora $07.b		; 05 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	tsb $08.b		; 04 08
	ora [$06.b]		; 07 06
	ora #$0807.w		; 09 07 08
	ora $1712.w,X		; 1D 12 17
	clc		; 18
	adc $78.b		; 65 78
	stz $78.b		; 64 78
	lsr $0A60.w,X		; 5E 60 0A
	bvs  28.b		; 70 1C
	brk $2C.b		; 00 2C
	jsr $201F.w		; 20 1F 20
	ora $807FE0.l,X		; 1F E0 7F 80
	adc $007F80.l,X		; 7F 80 7F 00
	adc $E01F80.l,X		; 7F 80 1F E0
	and $D3C2D0.l		; 2F D0 C2 D3
	.db $42, $C3		; 42 C3
	stz $E7.b		; 64 E7
	lda $A7.b		; A5 A7
	phd		; 0B
	ora $5D53.w		; 0D 53 5D
	and [$79.b],Y		; 37 79
	iny		; C8
	lda ($3B.b,S),Y		; B3 3B
	tsb $23.b		; 04 23
	trb $1827.w		; 1C 27 18
	adc [$18.b]		; 67 18
	ora $A05FF0.l		; 0F F0 5F A0
	adc $00FF80.l,X		; 7F 80 FF 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bvs 112.b		; 70 70
	cpx #$E0.b		; E0 E0
	rti		; 40

	cpy #$80.b		; C0 80
	rti		; 40

	bra  64.b		; 80 40
	bra  80.b		; 80 50
	brk $DC.b		; 00 DC
	bpl -24.b		; 10 E8
	bvs -120.b		; 70 88
	cpx #$10.b		; E0 10
	cpy #$20.b		; C0 20
	rtl		; 6B

	adc $C0FFC0.l,X		; 7F C0 FF C0
	inc $5E10.w,X		; FE 10 5E
	rol A		; 2A
	rol $D252.w		; 2E 52 D2
	rol A		; 2A
	plx		; FA
	eor $AD.b,X		; 55 AD
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $A1.b		; 00 A1
	jsr $D0D1.w		; 20 D1 D0
	and $05F8.w		; 2D F8 05
	sbc $0002.w,X		; FD 02 00
	sbc $48EF20.l,X		; FF 20 EF 48
	sta $B02F29.l		; 8F 29 2F B0
	bcs -40.b		; B0 D8
	sed		; F8
	ldx $ACDE.w		; AE DE AC
	dec $0000.w,X		; DE 00 00
	brk $10.b		; 00 10
	rti		; 40

	bmi  32.b		; 30 20
	bne -80.b		; D0 B0
	eor $FE07F8.l		; 4F F8 07 FE
	ora ($FE.b,X)		; 01 FE
	ora ($06.b,X)		; 01 06
	ora ($E9.b,X)		; 01 E9
	sbc [$9C.b]		; E7 9C
	sty $3050.w		; 8C 50 30
	bmi 112.b		; 30 70
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra  -1.b		; 80 FF
	brk $1F.b		; 00 1F
	brk $7C.b		; 00 7C
	ora $F0.b,S		; 03 F0
	tsb $00F0.w		; 0C F0 00
	cpy #$30.b		; C0 30
	cpy #$20.b		; C0 20
	bra  96.b		; 80 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   3.b		; 80 03
	phy		; 5A
	txy		; 9B
	lsr $EC8F.w		; 4E 8F EC
	cmp $294770.l		; CF 70 47 29
	and [$12.b],Y		; 37 12
	asl $1C1C.w,X		; 1E 1C 1C
	jsr ($E400.w,X)		; FC 00 E4
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	bra  56.b		; 80 38
	rti		; 40

	ora ($60.b),Y		; 11 60
	ora ($E0.b,S),Y		; 13 E0
	asl A		; 0A
	inc $FF03.w,X		; FE 03 FF
	php		; 08
	sbc $90FF71.l,X		; FF 71 FF 90
	stz $0E21.w,X		; 9E 21 0E
	eor ($39.b)		; 52 39
	rts		; 60

	sbc ($01.b),Y		; F1 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $61.b		; 00 61
	brk $F1.b		; 00 F1
	brk $E7.b		; 00 E7
	brk $CF.b		; 00 CF
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora [$09.b]		; 07 09
	ora $040F04.l		; 0F 04 0F 04
	ora $010702.l		; 0F 02 07 01
	ora [$00.b]		; 07 00
	ora $05.b,S		; 03 05
	php		; 08
	tsb $08.b		; 04 08
	tsb $0C00.w		; 0C 00 0C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	bit $5868.w,X		; 3C 68 58
	cpy #$F0.b		; C0 F0
	jsr $50D0.w		; 20 D0 50
	bcs   0.b		; B0 00
	cpx #$80.b		; E0 80
	cpx #$C0.b		; E0 C0
	cpy #$DC.b		; C0 DC
	ora $B8.b,S		; 03 B8
	asl $30.b		; 06 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	mvp $C4,$84		; 44 84 C4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $44.b		; 00 44
	brk $C6.b		; 00 C6
	mvp $C4,$82		; 44 82 C4
	rol A		; 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	bpl  40.b		; 10 28
	sec		; 38
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $242600.l		; 22 00 26 24
	lsr A		; 4A
	jmp $1C74.w		; 4C 74 1C
	clc		; 18
	asl $04.b		; 06 04
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bmi  56.b		; 30 38
	tas		; 1B
	ora $7A0C0B.l,X		; 1F 0B 0C 7A
	sta ($1E.b,X)		; 81 1E
	adc ($06.b,X)		; 61 06
	and $C700.w,Y		; 39 00 C7
	rts		; 60

	sta $4638.w,Y		; 99 38 46
	ora $100F20.l,X		; 1F 20 0F 10
	tsb $07.b		; 04 07
	asl $07.b		; 06 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora ($06.b,X)		; 01 06
	brk $21.b		; 00 21
	brk $19.b		; 00 19
	brk $0C.b		; 00 0C
	tsb $0B.b		; 04 0B
	asl $09.b		; 06 09
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	tsb $07.b		; 04 07
	ora [$04.b]		; 07 04
	ora [$19.b],Y		; 17 19
	inc A		; 1A
	ora $0E09.w,X		; 1D 09 0E
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	ora [$08.b]		; 07 08
	ora [$D8.b]		; 07 D8
	asl $1E60.w,X		; 1E 60 1E
	jsr $300F.w		; 20 0F 30
	bne -39.b		; D0 D9
	xce		; FB
	sbc $F214.w,Y		; F9 14 F2
	cmp [$39.b],Y		; D7 39
	bpl -51.b		; 10 CD
	bmi -56.b		; 30 C8
	trb $39C0.w		; 1C C0 39
	sta ($D7.b,X)		; 81 D7
	jsr $00F7.w		; 20 F7 00
	sbc $00FE00.l,X		; FF 00 FE 00
	and ($00.b)		; 32 00
	rol $01.b,X		; 36 01
	bit $7D03.w,X		; 3C 03 7D
	cop $C4.b		; 02 C4
	sbc $AD.b,S		; E3 AD
.ACCU 8
	sep #$2E		; E2 2E
	sbc ($18.b,X)		; E1 18
	inc $71.b,X		; F6 71
	cmp ($23.b,X)		; C1 23
	ora $0D.b,S		; 03 0D
	ora $9F1F19.l		; 0F 19 1F 9F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	ora ($31.b,X)		; 01 31
	asl $1CE3.w		; 0E E3 1C
	sta $E01F70.l		; 8F 70 1F E0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra 112.b		; 80 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	and [$38.b],Y		; 37 38
	php		; 08
	asl $0101.w		; 0E 01 01
	ora [$17.b],Y		; 17 17
	asl $1F.b,X		; 16 1F
	brk $0F.b		; 00 0F
	asl $0418.w,X		; 1E 18 04
	php		; 08
	and $710E40.l,X		; 3F 40 0E 71
	ora ($1E.b,X)		; 01 1E
	ora [$08.b],Y		; 17 08
	ora $300F20.l,X		; 1F 20 0F 30
	ora $800F80.l,X		; 1F 80 0F 80
	cpy $04.b		; C4 04
	pld		; 2B
	ora $45DB96.l		; 0F 96 DB 45
	tsx		; BA
	lda $DC10.w		; AD 10 DC
	cmp ($A4.b,X)		; C1 A4
	sta $8E.b		; 85 8E
	stz $1BE4.w,X		; 9E E4 1B
	and $20DFD0.l		; 2F D0 DF 20
	sbc $00FF00.l,X		; FF 00 FF 00
	and $007B00.l,X		; 3F 00 7B 00
	rts		; 60

	ora ($C8.b,X)		; 01 C8
	sed		; F8
	bvc -80.b		; 50 B0
	bcs 112.b		; B0 70
	iny		; C8
	pha		; 48
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	asl $0EF0.w		; 0E F0 0E
	iny		; C8
	bmi -128.b		; 30 80
	rti		; 40

	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0F.b		; 09 0F
	cld		; D8
	cmp $4C7F32.l,X		; DF 32 7F 4C
	adc ($24.b),Y		; 71 24
	and $0C0A.w,Y		; 39 0A 0C
	tsb $06.b		; 04 06
	asl $06.b		; 06 06
	phd		; 0B
	bne -35.b		; D0 DD
	jsr $807D.w		; 20 7D 80
	adc $403F00.l,X		; 7F 00 3F 40
	ora $080730.l		; 0F 30 07 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora ($11.b),Y		; 11 11
	ora $1E111F.l		; 0F 1F 11 1E
	asl $0A09.w		; 0E 09 0A
	ora $0705.w		; 0D 05 07
	ora $07.b		; 05 07
	brk $71.b		; 00 71
	ora ($28.b),Y		; 11 28
	ora $201F20.l,X		; 1F 20 1F 20
	asl $0E10.w		; 0E 10 0E
	bpl   5.b		; 10 05
	tya		; 98
	ora $C8.b		; 05 C8
	tax		; AA
	inc $FE12.w		; EE 12 FE
	ora ($FF.b,X)		; 01 FF
	bvs -65.b		; 70 BF
	sbc $9FECFE.l		; EF FE EC 9F
	cmp $83BB.w		; CD BB 83
	lda $10EE.w		; AD EE 10
	inc $8F01.w,X		; FE 01 8F
	brk $70.b		; 00 70
	brk $EF.b		; 00 EF
	brk $EE.b		; 00 EE
	brk $CD.b		; 00 CD
	brk $D3.b		; 00 D3
	brk $28.b		; 00 28
	sec		; 38
	tsb $4B3C.w		; 0C 3C 4B
	adc [$99.b],Y		; 77 99
	sbc [$04.b]		; E7 04
	xce		; FB
	adc ($FF.b)		; 72 FF
	sbc $A2EFEF.l,X		; FF EF EF A2
	sec		; 38
	tsb $3C.b		; 04 3C
	.db $42, $7F		; 42 7F
	bra  -1.b		; 80 FF
	brk $04.b		; 00 04
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $5B.b		; 00 5B
	adc $A07B44.l,X		; 7F 44 7B A0
	jmp.w [$FE08]		; DC 08 FE
	pea $76FF.w		; F4 FF 76
	tyx		; BB
	ldx $4B.b,Y		; B6 4B
	cmp $807FB3.l		; CF B3 7F 80
	adc $00E380.l,X		; 7F 80 E3 00
	ora $F600.w		; 0D 00 F6
	brk $76.b		; 00 76
	brk $B6.b		; 00 B6
	brk $CE.b		; 00 CE
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $00.b		; 02 00
	ora ($0D.b,X)		; 01 0D
	ora $010706.l		; 0F 06 07 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	tsb $0403.w		; 0C 03 04
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	ora $080730.l		; 0F 30 07 08
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	stx $A0.b		; 86 A0
	cmp ($74.b)		; D2 74
	cpx #$18.b		; E0 18
	cmp ($0A.b)		; D2 0A
	phk		; 4B
	sta $94.b,S		; 83 94
	ora ($09.b),Y		; 11 09
	cmp #$AC.b		; C9 AC
	cpy $58A7.w		; CC A7 58
	sbc [$08.b],Y		; F7 08
	sed		; F8
	ora [$FA.b]		; 07 FA
	ora $FB.b		; 05 FB
	tsb $ED.b		; 04 ED
	cop $F5.b		; 02 F5
	cop $F0.b		; 02 F0
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	rts		; 60

	bcc -128.b		; 90 80
	cpy #$40.b		; C0 40
	cpy #$80.b		; C0 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	rts		; 60

	cpx #$19.b		; E0 19
	sbc [$C0.b]		; E7 C0
	bmi -64.b		; 30 C0
	jsr $20C0.w		; 20 C0 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpy #$30.b		; C0 30
	cpx #$1F.b		; E0 1F
	sbc $000000.l,X		; FF 00 00 00
	asl $19.b		; 06 19
	brk $3F.b		; 00 3F
	ora ($71.b,S),Y		; 13 71
	and $2CE9.w		; 2D E9 2C
	sbc ($31.b,X)		; E1 31
	cmp ($1C.b,S),Y		; D3 1C
	sbc $00.b,S		; E3 00
	brk $18.b		; 00 18
	brk $21.b		; 00 21
	brk $3D.b		; 00 3D
	bit $3E3F.w		; 2C 3F 3E
	ldx $DD9E.w,Y		; BE 9E DD
	tsb $8083.w		; 0C 83 80
	brk $FE.b		; 00 FE
	tsb $FF.b		; 04 FF
	dec $F7FF.w,X		; DE FF F7
	sbc $02FFF0.l,X		; FF F0 FF 02
	sbc $0F.b,X		; F5 0F
	pea $F23C.w		; F4 3C F2
	rts		; 60

	rti		; 40

	rol $FF20.w		; 2E 20 FF
	ora [$FF.b]		; 07 FF
	sbc ($E1.b,X)		; E1 E1
	cpy #$CC.b		; C0 CC
	tsb $A8.b		; 04 A8
	brk $48.b		; 00 48
	rti		; 40

	cop $0E.b		; 02 0E
	phd		; 0B
	ora $1B270B.l,X		; 1F 0B 27 1B
	eor [$3B.b]		; 47 3B
	sta [$F4.b]		; 87 F4
	sta [$68.b]		; 87 68
	ora $021CF1.l		; 0F F1 1C 02
	cop $17.b		; 02 17
	ora [$3F.b],Y		; 17 3F
	and [$7D.b]		; 27 7D
	eor [$FC.b]		; 47 FC
	sta [$7A.b]		; 87 7A
	ora $F4.b,S		; 03 F4
	ora $E8.b		; 05 E8
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	clc		; 18
	sec		; 38
	asl $1F.b		; 06 1F
	bra -121.b		; 80 87
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	adc $000000.l,X		; 7F 00 00 00
	brk $E0.b		; 00 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	adc $BF3F7F.l,X		; 7F 7F 3F BF
	ora $80009F.l,X		; 1F 9F 00 80
	ora $0C.b,S		; 03 0C
	asl $0C18.w		; 0E 18 0C
	and ($08.b),Y		; 31 08
	adc $41.b,S		; 63 41
	ora ($1E.b,X)		; 01 1E
	sty $DF3F.w		; 8C 3F DF
	ora $04074F.l,X		; 1F 4F 07 04
	ora [$00.b]		; 07 00
	ora $233E11.l,X		; 1F 11 3E 23
	rts		; 60

	adc $0E7F40.l,X		; 7F 40 7F 0E
	and $1E3F07.l,X		; 3F 07 3F 1E
	cmp ($2F.b),Y		; D1 2F
	tay		; A8
	jmp ($F8F1.w,X)		; 7C F1 F8
	sbc ($F0.b,X)		; E1 F0
	cpy #$FC.b		; C0 FC
	cpy #$DA.b		; C0 DA
	and $FDFB.w,X		; 3D FB FD
	sta ($FF.b),Y		; 91 FF
	tay		; A8
	sbc $6EF606.l,X		; FF 06 F6 6E
	inc $DFDF.w		; EE DF DF
	cmp $DF.b,S		; C3 DF
	clc		; 18
	inc $FFF8.w,X		; FE F8 FF
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora $18.b,S		; 03 18
	jsr ($7100.w,X)		; FC 00 71
	cop $07.b		; 02 07
	brk $08.b		; 00 08
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($E7.b,X)		; 01 E7
	sbc [$FF.b]		; E7 FF
	sbc $F8FCFC.l,X		; FF FC FC F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $6000.w		; 20 00 60
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $02FF01.l,X		; FF 01 FF 02
	sbc $003F08.l,X		; FF 08 3F 00
	inc $F800.w,X		; FE 00 F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	inc $F37E.w,X		; FE 7E F3
	cop $0F.b		; 02 0F
	php		; 08
	rol $F822.w,X		; 3E 22 F8
	dey		; 88
	cpx #$20.b		; E0 20
	bra -128.b		; 80 80
	bmi 120.b		; 30 78
	bmi 124.b		; 30 7C
	clc		; 18
	rol $3F1C.w,X		; 3E 1C 3F
	asl $071F.w		; 0E 1F 07
	ora $000701.l		; 0F 01 07 00
	ora ($78.b,X)		; 01 78
	php		; 08
	sei		; 78
	rti		; 40

	bit $3E04.w,X		; 3C 04 3E
	jsl $0F101F.l		; 22 1F 10 0F
	php		; 08
	ora [$04.b]		; 07 04
	ora ($01.b,X)		; 01 01
	tsb $0C.b		; 04 0C
	tsb $1C.b		; 04 1C
	tsb $1C.b		; 04 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	jsr $0CF0.w		; 20 F0 0C
	php		; 08
	tsb $1C08.w		; 0C 08 1C
	clc		; 18
	clc		; 18
	php		; 08
	sec		; 38
	plp		; 28
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	cpx #$FE.b		; E0 FE
	jmp ($0FFF.w,X)		; 7C FF 0F
	adc $001F00.l,X		; 7F 00 1F 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $04FC.w		; 20 FC 04
	sbc $407F00.l,X		; FF 00 7F 40
	ora $000018.l,X		; 1F 18 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	jsr $3020.w		; 20 20 30
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	jsr $0404.w		; 20 04 04
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	jsr $2078.w		; 20 78 20
	bvs  96.b		; 70 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  12.b		; F0 0C
	tsb $18.b		; 04 18
	php		; 08
	sec		; 38
	php		; 08
	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $FF.b		; 00 FF
	brk $3E.b		; 00 3E
	brk $0E.b		; 00 0E
	php		; 08
	asl $78.b		; 06 78
	and ($EF.b,S),Y		; 33 EF
	pla		; 68
	ora [$F4.b],Y		; 17 F4
	pld		; 2B
	plx		; FA
	asl $0D08.w		; 0E 08 0D
	php		; 08
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	bpl 120.b		; 10 78
	pla		; 68
	inc $3F34.w,X		; FE 34 3F
	cmp ($DF.b)		; D2 DF
	ply		; 7A
	sta $7E.b		; 85 7E
	ora $70.b,S		; 03 70
	ora $B4.b,S		; 03 B4
	.db $82, $28, $EC		; 82 28 EC
	dey		; 88
	bvs -104.b		; 70 98
	brk $FC.b		; 00 FC
	rti		; 40

	stx $FC84.w		; 8E 84 FC
	brk $FE.b		; 00 FE
	asl $0C7C.w		; 0E 7C 0C
	bne -64.b		; D0 C0
	brk $00.b		; 00 00
	rts		; 60

	pla		; 68
	jsr $C088.w		; 20 88 C0
	clc		; 18
	cpy #$10.b		; C0 10
	ldy #$30.b		; A0 30
	bra  32.b		; 80 20
	bra  33.b		; 80 21
	eor ($67.b,X)		; 41 67
	cop $6E.b		; 02 6E
	sta $FC.b		; 85 FC
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	.db $82, $02, $C5		; 82 02 C5
	mvp $48,$4B		; 44 4B 48
	sbc $000000.l,X		; FF 00 00 00
	brk $0F.b		; 00 0F
	php		; 08
	sei		; 78
	eor $7BC1.w,X		; 5D C1 7B
	ora $E8.b,S		; 03 E8
	ora $007F60.l		; 0F 60 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	bpl -66.b		; 10 BE
	bra  -4.b		; 80 FC
	brk $F7.b		; 00 F7
	ora [$98.b]		; 07 98
	clc		; 18
	ora [$03.b]		; 07 03
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc ($FD.b,S),Y		; F3 FD
	bit $18.b		; 24 18
	rti		; 40

	ora ($20.b,X)		; 01 20
	php		; 08
	pha		; 48
	sta ($47.b,S),Y		; 93 47
	bpl  16.b		; 10 10
	rti		; 40

	bmi   4.b		; 30 04
	adc ($FF.b),Y		; 71 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	brk $3F.b		; 00 3F
	bra -65.b		; 80 BF
	bra -65.b		; 80 BF
	cpy #$DF.b		; C0 DF
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	rts		; 60

	inc $FF3F.w,X		; FE 3F FF
	ora $7F07FF.l,X		; 1F FF 07 7F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	sbc $407F80.l,X		; FF 80 7F 40
	and $040720.l,X		; 3F 20 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sed		; F8
	sbc $00FE00.l,X		; FF 00 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($E0.b,X)		; 01 E0
	rts		; 60

	brk $00.b		; 00 00
	brk $03.b		; 00 03
	asl $3F.b		; 06 3F
	jsr ($F0FF.w,X)		; FC FF F0
	sbc $00F880.l,X		; FF 80 F8 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($1F.b,X)		; 01 1F
	bpl  -1.b		; 10 FF
	ora ($FC.b,X)		; 01 FC
	tsb $E0.b		; 04 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $60F0.w		; 20 F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  48.b		; F0 30
	sed		; F8
	clc		; 18
	adc $F07F0F.l,X		; 7F 0F 7F F0
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra 120.b		; 80 78
	brk $7E.b		; 00 7E
	.db $42, $3F		; 42 3F
	jsr $9602.w		; 20 02 96
	cmp ($CC.b,X)		; C1 CC
	sta $AC.b		; 85 AC
	and $48.b,S		; 23 48
	eor $88.b,S		; 43 88
	ora $38.b,S		; 03 38
	cop $F8.b		; 02 F8
	beq   8.b		; F0 08
	ora ($78.b,X)		; 01 78
	eor [$F4.b]		; 47 F4
	sta $F0.b,S		; 83 F0
	ora [$F0.b]		; 07 F0
	ora [$F0.b]		; 07 F0
	ora [$F0.b]		; 07 F0
	ora [$F0.b]		; 07 F0
	ora [$F0.b]		; 07 F0
	adc ($09.b),Y		; 71 09
	and ($0B.b)		; 32 0B
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $03.b		; 00 03
	inc $0001.w,X		; FE 01 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	beq   5.b		; F0 05
	sbc ($06.b),Y		; F1 06
	inc $F800.w,X		; FE 00 F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$F9.b		; 09 F9
	asl $00FF.w,X		; 1E FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $90.b,Y		; 96 90
	and ($21.b,X)		; 21 21
	ror $F07E.w,X		; 7E 7E F0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $20.b		; 04 20
	bit $DCC0.w		; 2C C0 DC
	brk $B8.b		; 00 B8
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bmi  48.b		; 30 30
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	sta ($05.b),Y		; 91 05
	pha		; 48
	cop $30.b		; 02 30
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	adc [$30.b]		; 67 30
	and ($00.b,S),Y		; 33 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C3.b		; C0 C3
	trb $0007.w		; 1C 07 00
	ora $C0.b,S		; 03 C0
	cpy #$30.b		; C0 30
	and $8706.w,Y		; 39 06 87
	bra -61.b		; 80 C3
	cpx #$00.b		; E0 00
	brk $E3.b		; 00 E3
	sbc $FF.b,S		; E3 FF
	sbc $0F3F3F.l,X		; FF 3F 3F 0F
	ora $000000.l		; 0F 00 00 00
	bra   0.b		; 80 00
	cpy #$E0.b		; C0 E0
	cld		; D8
	beq -60.b		; F0 C4
	sed		; F8
.INDEX 16
	rep #$DC		; C2 DC
	cmp ($0E.b,X)		; C1 0E
	cpy #$6087.w		; C0 87 60
	adc $18.b,S		; 63 18
	clc		; 18
	asl $A0.b		; 06 A0
	cpx #$F8F8.w		; E0 F8 F8
	jmp ($3EFC.w,X)		; 7C FC 3E
	inc $FF3F.w,X		; FE 3F FF
	ora $4707DF.l,X		; 1F DF 07 47
	ora ($01.b,X)		; 01 01
	bvs -128.b		; 70 80
	cli		; 58
	bra -52.b		; 80 CC
	ora ($CD.b,X)		; 01 CD
	and $C2.b,S		; 23 C2
	ror $54C1.w		; 6E C1 54
	ora $2C.b		; 05 2C
	sta $98.b,S		; 83 98
	jsr $3020.w		; 20 20 30
	bmi  57.b		; 30 39
	and $1212.w,Y		; 39 12 12
	eor ($18.b,X)		; 41 18
	eor [$3C.b]		; 47 3C
	ora $F0.b,S		; 03 F0
	sta $18C0E8.l		; 8F E8 C0 18
	beq   6.b		; F0 06
	jmp ($1F01.w,X)		; 7C 01 1F
	cpy #$18E3.w		; C0 E3 18
	trb $0202.w		; 1C 02 02
	ora ($01.b,X)		; 01 01
	brk $E0.b		; 00 E0
	cpx #$F8F8.w		; E0 F8 F8
	inc $3FFE.w,X		; FE FE 3F
	and $010707.l,X		; 3F 07 07 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $0C1F04.l		; 0F 04 1F 0C
	and $387E18.l,X		; 3F 18 7E 38
	jmp ($FF73.w,X)		; 7C 73 FF
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	bit $7C00.w,X		; 3C 00 7C
	tsb $7B.b		; 04 7B
	phd		; 0B
	ora $FE.b		; 05 FE
	cop $FD.b		; 02 FD
	cop $DC.b		; 02 DC
	ora ($8F.b,X)		; 01 8F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	adc ($4C.b)		; 72 4C
	bvc  78.b		; 50 4E
	dec $DAD0.w,X		; DE D0 DA
	bne -117.b		; D0 8B
	dey		; 88
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	eor ($FD.b,X)		; 41 FD
	ora $FF.b,S		; 03 FF
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	cop $1F.b		; 02 1F
	asl $1F.b		; 06 1F
	tsb $1C3F.w		; 0C 3F 1C
	and $037E18.l,X		; 3F 18 7E 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	tsb $1F.b		; 04 1F
	php		; 08
	ora $203E11.l,X		; 1F 11 3E 20
	rol $8002.w,X		; 3E 02 80
	sbc ($00.b,X)		; E1 00
	cmp ($01.b,X)		; C1 01
	rep #$02		; C2 02
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora [$C0.b]		; 07 C0
	rti		; 40

	cpy #$81C0.w		; C0 C0 81
	ora ($83.b,X)		; 01 83
	sta $03.b,S		; 83 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	brk $C0.b		; 00 C0
	ora ($83.b),Y		; 11 83
	ora $7F7F3F.l		; 0F 3F 7F 7F
	sbc $75FEFD.l,X		; FF FD FE 75
	sbc $07E3.w,Y		; F9 E3 07
	ora ($CF.b,X)		; 01 CF
	cpx #$C10F.w		; E0 0F C1
	sbc $3EFF9F.l,X		; FF 9F FF 3E
	sbc $00FF78.l,X		; FF 78 FF 00
	sbc $00FF01.l,X		; FF 01 FF 00
	and $FBF8FA.l,X		; 3F FA F8 FB
	plx		; FA
	beq -14.b		; F0 F2
	pha		; 48
	sty $7D78.w		; 8C 78 7D
	sei		; 78
	sbc $FF94.w,Y		; F9 94 FF
	cpx $71FD.w		; EC FD 71
	sbc $FEF0.w,X		; FD F0 FE
	bra  -2.b		; 80 FE
	php		; 08
	inc $FE78.w,X		; FE 78 FE
	bvs  -2.b		; 70 FE
	bra  -2.b		; 80 FE
	cpy $FE.b		; C4 FE
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	clc		; 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	ora ($33.b,X)		; 01 33
	tsb $2146.w		; 0C 46 21
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	asl $F81F.w,X		; 1E 1F F8
	tsb $0470.w		; 0C 70 04
	sed		; F8
	sty $78.b		; 84 78
	sty $3C.b		; 84 3C
	sty $38.b		; 84 38
	bra  88.b		; 80 58
	cpy #$E420.w		; C0 20 E4
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	sty $78.b		; 84 78
	brk $FC.b		; 00 FC
	bra -68.b		; 80 BC
	bra  88.b		; 80 58
	cpy #$0738.w		; C0 38 07
	and [$0F.b],Y		; 37 0F
	adc $214E1F.l		; 6F 1F 4E 21
	eor $1C00.w		; 4D 00 1C
	.db $42, $1A		; 42 1A
	rti		; 40

	clv		; B8
	tsb $00.b		; 04 00
	brk $03.b		; 00 03
	ora $1E3F06.l,X		; 1F 06 3F 1E
	asl $3E3E.w,X		; 1E 3E 3E
	bit $3C3C.w,X		; 3C 3C 3C
	bit $7878.w,X		; 3C 78 78
	and $EF80.w		; 2D 80 EF
	bra  52.b		; 80 34
	.db $42, $7C		; 42 7C
	asl $68.b		; 06 68
	asl $30.b		; 06 30
	tsb $40.b		; 04 40
	iny		; C8
	clc		; 18
	pha		; 48
	clc		; 18
.INDEX 16
	rep #$98		; C2 98
	ldy $98.b		; A4 98
	rti		; 40

	sed		; F8
	brk $FC.b		; 00 FC
	trb $00F8.w		; 1C F8 00
	bcs -128.b		; B0 80
	dey		; 88
	clv		; B8
	tsb $0C24.w		; 0C 24 0C
	rol $18.b,X		; 36 18
	lsr $58.b		; 46 58
	dec $FC.b		; C6 FC
	dec $8C.b		; C6 8C
	sty $7C.b		; 84 7C
	tsb $3D.b		; 04 3D
	sta $44.b		; 85 44
	jmp.w [$06C0]		; DC C0 06
	clv		; B8
	rol $3878.w,X		; 3E 78 38
	sed		; F8
	clv		; B8
	sed		; F8
	beq -56.b		; F0 C8
	cmp ($69.b,X)		; C1 69
	adc ($00.b,X)		; 61 00
	brk $E0.b		; 00 E0
	cpx #$F070.w		; E0 70 F0
	ldy #$D070.w		; A0 70 D0
	ldy #$00E0.w		; A0 E0 00
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	cpx #$F070.w		; E0 70 F0
	jsr $80F8.w		; 20 F8 80
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	jsr $00E0.w		; 20 E0 00
	rts		; 60

	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	rts		; 60

	brk $60.b		; 00 60
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	clc		; 18
	bpl  24.b		; 10 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	dey		; 88
	bcc  64.b		; 90 40
	cli		; 58
	tsb $08.b		; 04 08
	jsr $122C.w		; 20 2C 12
	bpl   1.b		; 10 01
	asl $0001.w		; 0E 01 00
	brk $70.b		; 00 70
	bvs  56.b		; 70 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $0C1C.w		; 1C 1C 0C
	tsb $0E0E.w		; 0C 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($F9.b,X)		; 61 F9
	cpy #$86F6.w		; C0 F6 86
	xba		; EB
	asl $C3.b		; 06 C3
	asl $1A93.w		; 0E 93 1A
	and $1C.b,S		; 23 1C
	ora [$33.b]		; 07 33
	mvp $17,$F1		; 44 F1 17
	inc $27.b		; E6 27
	cmp $CD09.w		; CD 09 CD
	eor ($9D.b,X)		; 41 9D
	sta ($3C.b),Y		; 91 3C
	and ($38.b,X)		; 21 38
	ora ($3C.b,X)		; 01 3C
	ora $88.b		; 05 88
	lda $80.b		; A5 80
	dec $4118.w,X		; DE 18 41
	ora $1F21.w,Y		; 19 21 1F
	adc ($82.b,X)		; 61 82
	rep #$8D		; C2 8D
	sbc $DE1E.w		; ED 1E DE
	ora ($FF.b,X)		; 01 FF
	brk $E1.b		; 00 E1
	asl $1FFE.w,X		; 1E FE 1F
	dec $9E1F.w,X		; DE 1F 9E
	and ($BD.b,S),Y		; 33 BD
	ora ($9E.b,X)		; 01 9E
	tsb $18BF.w		; 0C BF 18
	ror $7C38.w,X		; 7E 38 7C
	bmi 124.b		; 30 7C
	bmi  -8.b		; 30 F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	rts		; 60

	beq  96.b		; F0 60
	beq 124.b		; F0 7C
	rti		; 40

	jmp ($7804.w,X)		; 7C 04 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	dey		; 88
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	asl $1F.b		; 06 1F
	ora $0C1E.w		; 0D 1E 0C
	asl $0406.w,X		; 1E 06 04
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora $010F08.l		; 0F 08 0F 01
	asl $1E00.w		; 0E 00 1E
	bpl  30.b		; 10 1E
	bpl   2.b		; 10 02
	jsr $400A.w		; 20 0A 40
	asl $80.b,X		; 16 80
	stz $12.b		; 64 12
	pha		; 48
	rol $48.b		; 26 48
	rol $48.b		; 26 48
	rol $6C.b		; 26 6C
	cop $C0.b		; 02 C0
	cmp $00BF80.l,X		; DF 80 BF 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7AFF00.l,X		; FF 00 FF 7A
	sei		; 78
	pei ($12.b)		; D4 12
	bcc  75.b		; 90 4B
	bcc  77.b		; 90 4D
	sta ($4C.b),Y		; 91 4C
	dey		; 88
	ror $8A.b		; 66 8A
	stz $8E.b		; 64 8E
	rts		; 60

	plp		; 28
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $10FF00.l,X		; FF 00 FF 10
	clc		; 18
	ora ($10.b,X)		; 01 10
	cop $21.b		; 02 21
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	ora #$00.b		; 09 00
	jsl $214010.l		; 22 10 40 21
	clc		; 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora $8E1E1E.l		; 0F 1E 1E 8E
	rti		; 40

	trb $3080.w		; 1C 80 30
	ora $40.b,S		; 03 40
	tsb $1080.w		; 0C 80 10
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	jsr ($F0FC.w,X)		; FC FC F0
	beq -32.b		; F0 E0
	cpx #$8080.w		; E0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$60F8.w		; C0 F8 60
	bvs   0.b		; 70 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	cop $30.b		; 02 30
	beq -32.b		; F0 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ldy $00.b,X		; B4 00
	beq   8.b		; F0 08
	pla		; 68
	bra  96.b		; 80 60
	bra   0.b		; 80 00
	bne 112.b		; D0 70
	brk $C0.b		; 00 C0
	jsr $20C0.w		; 20 C0 20
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	jsr $E020.w		; 20 20 E0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	sbc $FFFF62.l		; EF 62 FF FF
	sbc $0AFFFB.l,X		; FF FB FF 0A
	sbc $008AF1.l,X		; FF F1 8A 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	adc ($FF.b,S),Y		; 73 FF
	rts		; 60

	rts		; 60

	brk $84.b		; 00 84
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	and ($C3.b)		; 32 C3
	inx		; E8
	bit #$9C.b		; 89 9C
	trb $3A3E.w		; 1C 3E 3A
	jmp ($7C70.w,X)		; 7C 70 7C
	stz $78.b		; 64 78
	php		; 08
	bcs -62.b		; B0 C2
	sta $481F00.l		; 8F 00 1F 48
	adc $B8FF9C.l,X		; 7F 9C FF B8
	inc $FEF0.w,X		; FE F0 FE
	cpx #$40FC.w		; E0 FC 40
	jmp ($E000.w,X)		; 7C 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $98.b		; 00 98
	jsr $008C.w		; 20 8C 00
	clc		; 18
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	cpy #$A060.w		; C0 60 A0
	beq -112.b		; F0 90
	sed		; F8
	dey		; 88
	rts		; 60

	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq  96.b		; F0 60
	cpx #$E060.w		; E0 60 E0
	rts		; 60

	cpx #$E020.w		; E0 20 E0
	beq   0.b		; F0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra  12.b		; 80 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $0C1E.w		; 0C 1E 0C
	trb $1C0C.w		; 1C 0C 1C
	tsb $1C.b		; 04 1C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	asl $1E00.w,X		; 1E 00 1E
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	cop $0E.b		; 02 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	adc $001F00.l,X		; 7F 00 1F 00
	ora $010100.l		; 0F 00 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	adc ($A1.b,X)		; 61 A1
	eor $E0.b,S		; 43 E0
	ora $B80F00.l		; 0F 00 0F B8
	sty $86B4.w		; 8C B4 86
	clv		; B8
	.db $82, $3C, $82		; 82 3C 82
	ora ($FF.b,X)		; 01 FF
	brk $FC.b		; 00 FC
	ora ($F1.b,X)		; 01 F1
	clc		; 18
	inx		; E8
	stz $04.b,X		; 74 04
	sei		; 78
	brk $7C.b		; 00 7C
	brk $FE.b		; 00 FE
	.db $82, $70, $06		; 82 70 06
	sei		; 78
	ora $BC.b,S		; 03 BC
	sta ($2E.b,X)		; 81 2E
	cpx #$F81B.w		; E0 1B F8
	ora $3C.b		; 05 3C
	cop $0E.b		; 02 0E
	ora $03.b		; 05 03
	jsr ($FE04.w,X)		; FC 04 FE
	cop $7F.b		; 02 7F
	ora ($DF.b,X)		; 01 DF
	cpy #$2027.w		; C0 27 20
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpx #$5030.w		; E0 30 50
	jsr $E030.w		; 20 30 E0
	beq -32.b		; F0 E0
	cpx #$00C0.w		; E0 C0 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	jsr $E0C0.w		; 20 C0 E0
	bra -64.b		; 80 C0
	dey		; 88
	.db $42, $18		; 42 18
	bra  56.b		; 80 38
	sty $18.b		; 84 18
	mvp $24,$18		; 44 18 24
	php		; 08
	jsl $00210C.l		; 22 0C 21 00
	ora $7C3C3C.l,X		; 1F 3C 3C 7C
	jmp ($7878.w,X)		; 7C 78 78
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	trb $1E1C.w		; 1C 1C 1E
	asl $0000.w,X		; 1E 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	tsb $183F.w		; 0C 3F 18
	ror $FC30.w,X		; 7E 30 FC
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $011F00.l		; 0F 00 1F 01
	bit $7800.w,X		; 3C 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3F00.w		; 1C 00 3F
	php		; 08
	adc $7216.w,Y		; 79 16 72
	ora ($70.b)		; 12 70
	php		; 08
	adc $00FF01.l,X		; 7F 01 FF 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($3F.b)		; 12 3F
	and [$3F.b]		; 27 3F
	ora $191F3F.l		; 0F 3F 1F 19
	ora ($47.b),Y		; 11 47
	lsr $00.b		; 46 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $051E02.l		; 0F 02 1E 05
	trb $1C04.w		; 1C 04 1C
	cop $1F.b		; 02 1F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $030F09.l		; 0F 09 0F 03
	ora $040607.l		; 0F 07 06 04
	and $0039.w,Y		; 39 39 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	xce		; FB
	clc		; 18
	adc $BEBFBF.l,X		; 7F BF BF BE
	and $7CFF02.l,X		; 3F 02 FF 7C
	sep #$00		; E2 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -3.b		; 80 FD
	cpy #$DCFF.w		; C0 FF DC
	sbc $4058D8.l,X		; FF D8 58 40
	sbc ($80.b,X)		; E1 80
	bra -68.b		; 80 BC
	bra -69.b		; 80 BB
	and ($07.b,X)		; 21 07
	cop $0E.b		; 02 0E
	tsb $EC.b		; 04 EC
	ora [$FF.b]		; 07 FF
	bra  95.b		; 80 5F
	brk $3F.b		; 00 3F
	bra  -1.b		; 80 FF
	sta ($FD.b,X)		; 81 FD
	cop $FA.b		; 02 FA
	ora $F4.b		; 05 F4
	phd		; 0B
	sed		; F8
	php		; 08
	inx		; E8
	ora $D818EF.l		; 0F EF 18 D8
	brk $00.b		; 00 00
	lda $007F87.l,X		; BF 87 7F 00
	sbc $030300.l,X		; FF 00 03 03
	dec $FF.b		; C6 FF
	tas		; 1B
	sbc [$2F.b]		; E7 2F
	ora $780000.l,X		; 1F 00 00 78
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $39.b		; 00 39
	and $0707.w,Y		; 39 07 07
	ora $1F.b,S		; 03 1F
	clc		; 18
	bit $7D18.w,X		; 3C 18 7D
	sec		; 38
	adc $7A31.w,Y		; 79 31 7A
	bvs  -5.b		; 70 FB
	adc ($FA.b),Y		; 71 FA
	rts		; 60

	plx		; FA
	rts		; 60

	sbc ($3C.b),Y		; F1 3C
	bit $38.b		; 24 38
	brk $78.b		; 00 78
	rti		; 40

	adc $7801.w,Y		; 79 01 78
	php		; 08
	sbc $F189.w,Y		; F9 89 F1
	ora ($F0.b,X)		; 01 F0
	brk $D4.b		; 00 D4
	tya		; 98
	tsb $F8.b		; 04 F8
	cpy $0813.w		; CC 13 08
	cpx $BD.b		; E4 BD
	rol $7F7F.w,X		; 3E 7F 7F
	adc $7F3F7F.l,X		; 7F 7F 3F 7F
	rts		; 60

	ora $00.b,S		; 03 00
	ora ($E0.b,X)		; 01 E0
	cpx #$1312.w		; E0 12 13
	bcs  -2.b		; B0 FE
	jmp ($3FFF.w,X)		; 7C FF 3F
	sbc $30FF0F.l,X		; FF 0F FF 30
	rti		; 40

	sec		; 38
	rti		; 40

	clc		; 18
	cpx $3C.b		; E4 3C
	stx $BE.b		; 86 BE
	sta $FF.b,S		; 83 FF
	sta ($83.b,X)		; 81 83
	dey		; 88
	stz $0C.b,X		; 74 0C
	bra -32.b		; 80 E0
	bra 112.b		; 80 70
	bra -128.b		; 80 80
	bvs 112.b		; 70 70
	pea $F670.w		; F4 70 F6
	bvs  -9.b		; 70 F7
	beq -62.b		; F0 C2
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $0C1F06.l		; 0F 06 1F 0C
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $01.b		; 00 01
	ora [$03.b]		; 07 03
	ora $060F06.l		; 0F 06 0F 06
	ora $081E0C.l,X		; 1F 0C 1E 08
	rol $3C18.w,X		; 3E 18 3C
	bpl 125.b		; 10 7D
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000E08.l		; 0F 08 0E 00
	asl $1C12.w,X		; 1E 12 1C
	brk $3C.b		; 00 3C
	bit $38.b		; 24 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -32.b		; 80 E0
	cpy #$E0F0.w		; C0 F0 E0
	sed		; F8
	bra  -8.b		; 80 F8
	rti		; 40

	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpx #$30F0.w		; E0 F0 30
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	ldy #$E010.w		; A0 10 E0
	brk $80.b		; 00 80
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$19.b		; 09 19
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	bpl  24.b		; 10 18
	jsr $0030.w		; 20 30 00
	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	ora $1810.w,Y		; 19 10 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $05.b		; 04 05
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $6F.b		; 00 6F
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	ora [$C0.b]		; 07 C0
	bpl -128.b		; 10 80
	jsr $4000.w		; 20 00 40
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	sbc $FFFFFF.l,X		; FF FF FF FF
	sed		; F8
	sed		; F8
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	cpy #$C1C0.w		; C0 C0 C1
	bit $3EF2.w,X		; 3C F2 3E
	ora $0C1F.w,Y		; 19 1F 0C
	adc $0E06.w,X		; 7D 06 0E
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cmp $F0C1FC.l		; CF FC C1 F0
	plx		; FA
	plx		; FA
	asl $010E.w		; 0E 0E 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bmi  16.b		; 30 10
	inx		; E8
	cli		; 58
	asl $4C.b		; 06 4C
	sta ($E0.b,X)		; 81 E0
	ora $E00000.l,X		; 1F 00 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	jsr $1010.w		; 20 10 10
	clv		; B8
	clv		; B8
	rol $003E.w,X		; 3E 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $00FF00.l,X		; 7F 00 FF 00
	xce		; FB
	bra -13.b		; 80 F3
	bra -25.b		; 80 E7
	ora ($CF.b,X)		; 01 CF
	tsb $83.b		; 04 83
	ora ($39.b)		; 12 39
	tda		; 7B
	phy		; 5A
	xce		; FB
	txs		; 9A
	sbc ($11.b),Y		; F1 11
	cpx #$C320.w		; E0 20 C3
	cop $87.b		; 02 87
	tsb $00.b		; 04 00
	and $A57F10.l,X		; 3F 10 7F A5
	bne  93.b		; D0 5D
	bcs  70.b		; B0 46
	dey		; 88
	and $E02DE0.l		; 2F E0 2D E0
	asl $A0.b		; 06 A0
	sty $1D.b		; 84 1D
	eor ($8E.b,X)		; 41 8E
	cmp $18.b,S		; C3 18
	eor ($14.b,S),Y		; 53 14
	adc ($08.b,S),Y		; 73 08
	sta $031F80.l,X		; 9F 80 1F 03
	sbc $486A60.l,X		; FF 60 6A 48
	sec		; 38
	tay		; A8
	cpy #$A0E0.w		; C0 E0 A0
	bmi -48.b		; 30 D0
	clc		; 18
	pla		; 68
	tsb $86B5.w		; 0C B5 86
	tad		; 5B
	rep #$0D		; C2 0D
	sbc ($0E.b,X)		; E1 0E
	sed		; F8
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	bra 126.b		; 80 7E
	rts		; 60

	ora [$90.b],Y		; 17 90
	eor $21463C.l		; 4F 3C 46 21
	sty $9862.w		; 8C 62 98
	mvp $88,$30		; 44 30 88
	jsr $0090.w		; 20 90 00
	bcc -128.b		; 90 80
	cpx #$3F03.w		; E0 03 3F
	asl $1C1E.w,X		; 1E 1E 1C
	trb $3838.w		; 1C 38 38
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	cpx #$E0F0.w		; E0 F0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	cpx #$E060.w		; E0 60 E0
	rts		; 60

	cpx #$E060.w		; E0 60 E0
	jsr $F060.w		; 20 60 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bpl   1.b		; 10 01
	bmi  17.b		; 30 11
	sec		; 38
	ora $1538.w,X		; 1D 38 15
	bvs  53.b		; 70 35
	bvs  45.b		; 70 2D
	rts		; 60

	brk $FF.b		; 00 FF
	tsb $080F.w		; 0C 0F 08
	ora $382730.l		; 0F 30 27 38
	ora [$30.b]		; 07 30
	ora $604F70.l		; 0F 70 4F 60
	ora $01EE86.l,X		; 1F 86 EE 01
	cmp ($08.b,X)		; C1 08
	stz $371C.w,X		; 9E 1C 37
	sec		; 38
	adc ($74.b,X)		; 61 74
	dec $EA.b		; C6 EA
	sta $19D4.w		; 8D D4 19
	dec $0F.b		; C6 0F
	bra  31.b		; 80 1F
	brk $01.b		; 00 01
	php		; 08
	brk $1E.b		; 00 1E
	brk $38.b		; 00 38
	ora ($70.b,X)		; 01 70
	ora ($E0.b,X)		; 01 E0
	ora $16.b,S		; 03 16
	pha		; 48
	inc A		; 1A
	tsb $02.b		; 04 02
	ldy $8330.w,X		; BC 30 83
	and ($43.b)		; 32 43
	and $C282C3.l,X		; 3F C3 82 C2
	sta $F9.b		; 85 F9
	ora $F9.b,S		; 03 F9
	ora ($FC.b,X)		; 01 FC
	ora ($C2.b,X)		; 01 C2
	bit $3EFC.w,X		; 3C FC 3E
	ldy $3D3F.w,X		; BC 3F 3D
	and $8607BD.l,X		; 3F BD 07 86
	sty $C161.w		; 8C 61 C1
	and ($73.b,S),Y		; 33 73
	ora $A17F3F.l		; 0F 3F 7F A1
	adc $9E6E.w		; 6D 6E 9E
	inc $FEFE.w,X		; FE FE FE
	inc $DE1E.w,X		; FE 1E DE
	tsb $03CD.w		; 0C CD 03
	sbc ($1F.b,S),Y		; F3 1F
	sbc $0E7F00.l,X		; FF 00 7F 0E
	sbc $DEFF1E.l,X		; FF 1E FF DE
	sbc $CAC21C.l,X		; FF 1C C2 CA
	bra -32.b		; 80 E0
	bne -128.b		; D0 80
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  49.b		; 30 31
	bmi -79.b		; 30 B1
	brk $C1.b		; 00 C1
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	bit $41FE.w,X		; 3C FE 41
	ora $48.b,S		; 03 48
	bit $4C.b		; 24 4C
	and $66.b,S		; 23 66
	ora ($A3.b),Y		; 11 A3
	clc		; 18
	and ($8C.b),Y		; 31 8C
	bvc -114.b		; 50 8E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $21.b		; 00 21
	ora $63.b,S		; 03 63
	rts		; 60

	brk $60.b		; 00 60
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	jsr $4063.w		; 20 63 40
	and #$64.b		; 29 64
	plp		; 28
	ror $08.b		; 66 08
	lsr $00.b		; 46 00
	lsr $00.b		; 46 00
	rti		; 40

	rti		; 40

	cpy #$C3C0.w		; C0 C0 C3
	bra -124.b		; 80 84
	rts		; 60

	ora $401F60.l,X		; 1F 60 1F 40
	ora $404F40.l,X		; 1F 40 4F 40
	eor [$C0.b]		; 47 C0
	ora ($C0.b,X)		; 01 C0
	brk $83.b		; 00 83
	ora $18.b,S		; 03 18
	dec $A9.b		; C6 A9
	mvp $62,$8A		; 44 8A 62
	phb		; 8B
	adc [$C1.b]		; 67 C1
	ora $001700.l		; 0F 00 17 00
	sbc $4000.w,X		; FD 00 40
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	ora ($FC.b,X)		; 01 FC
	tsb $FC.b		; 04 FC
	asl $F6.b		; 06 F6
	ora ($E1.b,X)		; 01 E1
	brk $00.b		; 00 00
	lda $0000BF.l,X		; BF BF 00 00
	bra -128.b		; 80 80
	cpy #$4080.w		; C0 80 40
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bcs   0.b		; B0 00
	clc		; 18
	bmi 124.b		; 30 7C
	sei		; 78
	jsr ($78F8.w,X)		; FC F8 78
	sed		; F8
	sec		; 38
	sei		; 78
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	bra 112.b		; 80 70
	brk $F8.b		; 00 F8
	rts		; 60

	jsr ($FC70.w,X)		; FC 70 FC
	sec		; 38
	jsr ($FC18.w,X)		; FC 18 FC
	brk $78.b		; 00 78
	ora ($2A.b),Y		; 11 2A
	bit #$B0.b		; 89 B0
	inc $18.b		; E6 18
	beq -116.b		; F0 8C
	adc $33C5.w,Y		; 79 C5 33
	xba		; EB
	ora #$B3.b		; 09 B3
	pha		; 48
	sta $02.b,X		; 95 02
	cmp $E00F40.l,X		; DF 40 0F E0
	ora [$71.b]		; 07 71
	ora $38.b,S		; 03 38
	ora $15.b,S		; 03 15
	ora [$4C.b]		; 07 4C
	eor $6A6A.w		; 4D 6A 6A
	and $3839.w,Y		; 39 39 38
	and $7A78.w,Y		; 39 78 7A
	beq  -6.b		; F0 FA
	beq -13.b		; F0 F3
	cpx #$C0F0.w		; E0 F0 C0
	cpx #$C080.w		; E0 80 C0
	clc		; 18
	sbc $B0FF08.l,X		; FF 08 FF B0
	sbc $FD61.w,X		; FD 61 FD
	cpx #$C0FC.w		; E0 FC C0
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	cpx #$0100.w		; E0 00 01
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	tsb $0F.b		; 04 0F
	cop $1F.b		; 02 1F
	asl $1F.b		; 06 1F
	tsb $013F.w		; 0C 3F 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	asl A		; 0A
	ora $191F05.l		; 0F 05 1F 19
	asl $CB00.w,X		; 1E 00 CB
	sbc $98.b,S		; E3 98
.INDEX 8
	sep #$19		; E2 19
	sbc $18.b		; E5 18
	cmp [$0A.b]		; C7 0A
	cmp [$07.b]		; C7 07
	sta $07.b,S		; 83 07
	cpx $07.b		; E4 07
	eor [$E0.b],Y		; 57 E0
	ora [$E0.b],Y		; 17 E0
	and [$C0.b]		; 27 C0
	lsr $80.b		; 46 80
	sty $02.b		; 84 02
	asl $00.b		; 06 00
	ora $220F00.l		; 0F 00 0F 22
	and $07301F.l		; 2F 1F 30 07
	bmi  15.b		; 30 0F
	clc		; 18
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	ora ($07.b,X)		; 01 07
	ora $101F00.l		; 0F 00 1F 10
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	bcc -52.b		; 90 CC
	clv		; B8
	cpx $6410.w		; EC 10 64
	dey		; 88
	stz $C8.b		; 64 C8
	ror $98.b		; 66 98
	rol $94.b,X		; 36 94
	rol $48.b,X		; 36 48
	ror $0838.w,X		; 7E 38 08
	bpl   0.b		; 10 00
	sed		; F8
	rts		; 60

	jsr ($9C64.w,X)		; FC 64 9C
	tsb $CC.b		; 04 CC
	tsb $C8.b		; 04 C8
	brk $94.b		; 00 94
	trb $00.b		; 14 00
	asl $1F00.w		; 0E 00 1F
	asl $3F.b		; 06 3F
	php		; 08
	and $3206.w,Y		; 39 06 32
	jsl $3F0118.l		; 22 18 01 3F
	tsb $007F.w		; 0C 7F 00
	brk $0E.b		; 00 0E
	cop $1F.b		; 02 1F
	ora ($1F.b,X)		; 01 1F
	asl $1F.b		; 06 1F
	ora $131717.l		; 0F 17 17 13
	bpl  15.b		; 10 0F
	brk $00.b		; 00 00
	sbc [$02.b]		; E7 02
	sbc $FFFF64.l,X		; FF 64 FF FF
	sbc $ECF1FD.l,X		; FF FD F1 EC
	inc $F343.w		; EE 43 F3
	ora $0000FF.l		; 0F FF 00 00
	inc $80.b		; E6 80
	sbc $60FF08.l,X		; FF 08 FF 60
	sbc ($3F.b),Y		; F1 3F
	cpx $F33F.w		; EC 3F F3
	ora $E02363.l		; 0F 63 23 E0
	cpx #$E0.b		; E0 E0
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	bne  64.b		; D0 40
	bmi   0.b		; 30 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	cpx #$00.b		; E0 00
	cpx #$10.b		; E0 10
	beq  32.b		; F0 20
	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	trb $1C04.w		; 1C 04 1C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	clc		; 18
	brk $1C.b		; 00 1C
	trb $0C.b		; 14 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	brk $04.b		; 00 04
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	asl $0E.b		; 06 0E
	tsb $080E.w		; 0C 0E 08
	asl $0E00.w		; 0E 00 0E
	tsb $04.b		; 04 04
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	cop $0C.b		; 02 0C
	tsb $00.b		; 04 00
	tsb $0800.w		; 0C 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $10.b		; 06 10
	asl $10.b		; 06 10
	jsr $2010.w		; 20 10 20
	clc		; 18
	jsr $1014.w		; 20 14 10
	bit $10.b		; 24 10
	bit $70.b		; 24 70
	tsb $0C.b		; 04 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $040C.w		; 0C 0C 04
	tsb $08.b		; 04 08
	php		; 08
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	tsb $09.b		; 04 09
	trb $0D01.w		; 1C 01 0D
	ora ($39.b)		; 12 39
	cop $3A.b		; 02 3A
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $0E.b		; 06 0E
	asl $0C0C.w		; 0E 0C 0C
	trb $1C1C.w		; 1C 1C 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   8.b		; 50 08
	bvc   4.b		; 50 04
	rti		; 40

	tsb $40.b		; 04 40
	jsr $2048.w		; 20 48 20
	tsb $0C22.w		; 0C 22 0C
	and ($26.b,X)		; 21 26
	brk $30.b		; 00 30
	bmi  56.b		; 30 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	asl $1F1E.w,X		; 1E 1E 1F
	ora $71FB70.l,X		; 1F 70 FB 71
	sed		; F8
	and ($F8.b),Y		; 31 F8
	and ($F8.b),Y		; 31 F8
	and ($F8.b),Y		; 31 F8
	bpl 120.b		; 10 78
	bpl 120.b		; 10 78
	bpl 124.b		; 10 7C
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	pha		; 48
	sec		; 38
	php		; 08
	sec		; 38
	brk $38.b		; 00 38
	jsr $F58A.w		; 20 8A F5
.ACCU 8
.INDEX 8
	sep #$F5		; E2 F5
	sbc ($FC.b,S),Y		; F3 FC
	plp		; 28
	rol A		; 2A
	jmp.w [$F4D8]		; DC D8 F4
	beq 118.b		; F0 76
	jsr $0852.w		; 20 52 08
	asl A		; 0A
	txa		; 8A
	nop		; EA
	nop		; EA
	rts		; 60

	beq  32.b		; F0 20
	jsr ($F840.w,X)		; FC 40 F8
	rts		; 60

	sed		; F8
	jsr $00F8.w		; 20 F8 00
	jsr ($8000.w,X)		; FC 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1C3F.w		; 0C 3F 1C
	adc $387E18.l,X		; 7F 18 7E 38
	ror $7E38.w,X		; 7E 38 7E
	sec		; 38
	inc $FE71.w,X		; FE 71 FE
	adc ($FE.b),Y		; 71 FE
	rol $3E20.w,X		; 3E 20 3E
	cop $3E.b		; 02 3E
	cop $7C.b		; 02 7C
	rti		; 40

	adc $7D05.w,X		; 7D 05 7D
	ora $79.b		; 05 79
	ora ($79.b,X)		; 01 79
	ora ($27.b,X)		; 01 27
	ora [$31.b]		; 07 31
	sta $04.b,S		; 83 04
	sty $8363.w		; 8C 63 83
	and $01.b,X		; 35 01
	cmp #$04.b		; C9 04
	cpx $09.b		; E4 09
	sty $09.b,X		; 94 09
	adc ($7F.b,S),Y		; 73 7F
	bvs 127.b		; 70 7F
	rts		; 60

	adc $C01F01.l,X		; 7F 01 1F C0
	cmp $80BF80.l,X		; DF 80 BF 80
	lda $077F00.l,X		; BF 00 7F 07
	php		; 08
	ora $3F0F07.l,X		; 1F 07 0F 3F
	asl A		; 0A
	and $2146.w,Y		; 39 46 21
	eor $CC20.w		; 4D 20 CC
	cop $9A.b		; 02 9A
	rti		; 40

	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	asl $3F.b		; 06 3F
	asl $3E.b		; 06 3E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $3C3C.w,X		; 1E 3C 3C
	bit $803C.w,X		; 3C 3C 80
	ply		; 7A
.ACCU 16
	rep #$A6		; C2 A6
	lsr $BF.b		; 46 BF
	jmp.w [$B83D]		; DC 3D B8
	adc $6184.w,Y		; 79 84 61
	mvp $4C,$21		; 44 21 4C
	and ($5C.b,X)		; 21 5C
	jmp $069A1A.l		; 5C 1A 9A 06
	stx $0E.b		; 86 0E
	rol $7E1E.w,X		; 3E 1E 7E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	ora $FE.b		; 05 FE
	ora ($FE.b,X)		; 01 FE
	trb $E9.b		; 14 E9
	txa		; 8A
	dec $09.b		; C6 09
	sta [$3C.b]		; 87 3C
	tsa		; 3B
	rti		; 40

	eor $3E.b,S		; 43 3E
	ldy $686E.w,X		; BC 6E 68
	cpx $E4.b		; E4 E4
	rep #$40		; C2 40
	sta $34.b		; 85 34
	cop $7A.b		; 02 7A
	and ($FD.b),Y		; 31 FD
	brk $FE.b		; 00 FE
	clc		; 18
	sbc $3715E7.l,X		; FF E7 15 37
	stx $ED.b,Y		; 96 ED
	sta ($B4.b,X)		; 81 B4
	.db $42, $FC		; 42 FC
	asl $40.b		; 06 40
	brk $77.b		; 00 77
	cmp [$07.b]		; C7 07
	sbc [$00.b],Y		; F7 00
	ora $CE04.w		; 0D 04 CE
	sta $98A7.w,Y		; 99 A7 98
	eor ($F8.b,X)		; 41 F8
	ora ($F8.b,X)		; 01 F8
	and [$B1.b],Y		; 37 B1
	sta $D48F83.l		; 8F 83 8F D4
	ora #$1942.w		; 09 42 19
	ldx #$19.b		; A2 19
	tax		; AA
	ora ($AA.b),Y		; 11 AA
	ora ($AA.b),Y		; 11 AA
	ora ($3A.b),Y		; 11 3A
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $427F00.l,X		; FF 00 7F 42
	plp		; 28
	eor #$4B24.w		; 49 24 4B
	bit $43.b		; 24 43
	bit $A7.b,X		; 34 A7
	bpl -92.b		; 10 A4
	bpl -96.b		; 10 A0
	clc		; 18
	ldy #$18.b		; A0 18
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	jsr $38E0.w		; 20 E0 38
	sbc $612D.w,Y		; F9 2D 61
	asl $1F60.w		; 0E 60 1F
	bmi   7.b		; 30 07
	bmi  15.b		; 30 0F
	clc		; 18
	ora $18.b,S		; 03 18
	rti		; 40

	eor $1E4147.l,X		; 5F 47 41 1E
	brk $3F.b		; 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $080008.l		; 0F 08 00 08
	bpl  -8.b		; 10 F8
	brk $EC.b		; 00 EC
	tya		; 98
	jsr ($7614.w,X)		; FC 14 76
	cli		; 58
	adc ($CC.b)		; 72 CC
	adc ($8C.b)		; 72 8C
	and ($00.b,S),Y		; 33 00
	beq  96.b		; F0 60
	rts		; 60

	clv		; B8
	tay		; A8
	jsr $E820.w		; 20 20 E8
	rts		; 60

	sty $9E00.w		; 8C 00 9E
	ora ($FE.b)		; 12 FE
	and ($26.b)		; 32 26
	ora ($4D.b),Y		; 11 4D
	jsr $204C.w		; 20 4C 20
	pha		; 48
	jsl $50004A.l		; 22 4A 00 50
	tsb $54.b		; 04 54
	brk $10.b		; 00 10
	pha		; 48
	asl $1E0E.w		; 0E 0E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	trb $3C1C.w		; 1C 1C 3C
	bit $3838.w,X		; 3C 38 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	jmp $4C21.w		; 4C 21 4C
	and ($2C.b,X)		; 21 2C
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	cop $24.b		; 02 24
	ora ($04.b)		; 12 04
	ora ($04.b)		; 12 04
	ora ($1E.b)		; 12 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1C1C.w,X		; 1E 1C 1C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	bmi -124.b		; 30 84
	tya		; 98
	brk $8C.b		; 00 8C
	cop $72.b		; 02 72
	ora ($0C.b,X)		; 01 0C
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	sei		; 78
	jmp ($7C7C.w,X)		; 7C 7C 7C
	jmp ($0E0E.w,X)		; 7C 0E 0E
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	ora [$1E.b]		; 07 1E
	tsb $003E.w		; 0C 3E 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	tsb $06.b		; 04 06
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	rts		; 60

	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	rti		; 40

	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $20.b		; 00 20
	bra -32.b		; 80 E0
	cpy #$F0.b		; C0 F0
	cpx #$70.b		; E0 70
	beq 120.b		; F0 78
	bvs  56.b		; 70 38
	sei		; 78
	ldy $00B8.w,X		; BC B8 00
	cpy #$00.b		; C0 00
	cpx #$C0.b		; E0 C0
	cpx #$60.b		; E0 60
	beq 112.b		; F0 70
	beq  48.b		; F0 30
	sed		; F8
	sec		; 38
	sed		; F8
	tya		; 98
	jsr ($0000.w,X)		; FC 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b,X)		; 01 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	tsb $1F.b		; 04 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $030B06.l		; 0F 06 0B 03
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	stz $FE80.w		; 9C 80 FE
	iny		; C8
	lda $9CBFDF.l,X		; BF DF BF 9C
	lda $31FF18.l,X		; BF 18 FF 31
	sbc $000000.l,X		; FF 00 00 00
	brk $80.b		; 00 80
	brk $DC.b		; 00 DC
	rti		; 40

	cmp $48DF4C.l,X		; DF 4C DF 48
	ldy $7800.w,X		; BC 00 78
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora $000000.l		; 0F 00 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	brk $4A.b		; 00 4A
	xba		; EB
	trb $D4.b		; 14 D4
	sty $D4.b,X		; 94 D4
	brk $95.b		; 00 95
	brk $8A.b		; 00 8A
	brk $80.b		; 00 80
	ora $83.b,X		; 15 83
	ora $EA13.w		; 0D 13 EA
	ldx $3ED5.w,Y		; BE D5 3E
	cmp ($7E.b,X)		; C1 7E
	sta ($7F.b,X)		; 81 7F
	bra 127.b		; 80 7F
	bra -65.b		; 80 BF
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	sta $A5E5.w,Y		; 99 E5 A5
	tsa		; 3B
	sbc $BC03.w,X		; FD 03 BC
	sta ($20.b,X)		; 81 20
	cpx $00.b		; E4 00
	ror $E3CC.w,X		; 7E CC E3
	dec $41E0.w		; CE E0 41
	eor $D1.b,S		; 43 D1
	ora ($F9.b),Y		; 11 F9
	ora ($7A.b,X)		; 01 7A
	ora $5B.b,S		; 03 5B
	eor $01.b,S		; 43 01
	sta ($DC.b,X)		; 81 DC
	jmp.w [$DFDF]		; DC DF DF
	iny		; C8
	cpx $ECC8.w		; EC C8 EC
	iny		; C8
	cpx $C8EC.w		; EC EC C8
	ror $14C8.w		; 6E C8 14
	pla		; 68
	sed		; F8
	brk $A0.b		; 00 A0
	rti		; 40

	iny		; C8
	inc $FEC8.w,X		; FE C8 FE
	iny		; C8
	inc $FEC8.w,X		; FE C8 FE
	brk $FC.b		; 00 FC
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bit $7C18.w,X		; 3C 18 7C
	clc		; 18
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	bit $3C24.w,X		; 3C 24 3C
	tsb $38.b		; 04 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	bvs 122.b		; 70 7A
	adc ($70.b),Y		; 71 70
	adc ($70.b)		; 72 70
	and ($70.b)		; 32 70
	and $70.b,X		; 35 70
	ora $70.b,X		; 15 70
	ora $30.b,X		; 15 30
	ora $30.b		; 05 30
	sei		; 78
	ora #$0370.w		; 09 70 03
	bvs   7.b		; 70 07
	bvs   7.b		; 70 07
	bvs  79.b		; 70 4F
	bmi  15.b		; 30 0F
	bmi  47.b		; 30 2F
	bpl   7.b		; 10 07
	sta $00.b,X		; 95 00
	mvn $94,$02		; 54 02 94
	eor $04.b,S		; 43 04
	cmp ($26.b,S),Y		; D3 26
	cmp ($23.b),Y		; D1 23
	tya		; 98
	and $98.b,S		; 23 98
	and ($9C.b,X)		; 21 9C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bit #$CA71.w		; 89 71 CA
	and ($68.b,S),Y		; 33 68
	ora ($38.b,S),Y		; 13 38
	sta $1E.b,S		; 83 1E
	cmp ($2E.b,X)		; C1 2E
	cmp ($A4.b,X)		; C1 A4
	.db $42, $84		; 42 84
	cop $02.b		; 02 02
	jsr ($FD01.w,X)		; FC 01 FD
	cop $FE.b		; 02 FE
	brk $FD.b		; 00 FD
	brk $FB.b		; 00 FB
	brk $FA.b		; 00 FA
	ora ($F9.b,X)		; 01 F9
	ora ($F9.b,X)		; 01 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	beq  96.b		; F0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $F0.b		; 00 F0
	bcs -80.b		; B0 B0
	cld		; D8
	bcc -112.b		; 90 90
	cld		; D8
	jsr ($FCD8.w,X)		; FC D8 FC
	cld		; D8
	iny		; C8
	cpx $ECC8.w		; EC C8 EC
	iny		; C8
	cpx $F8B0.w		; EC B0 F8
	bcc  -8.b		; 90 F8
	bcc  -8.b		; 90 F8
	bcc  -4.b		; 90 FC
	bcc  -4.b		; 90 FC
	iny		; C8
	inc $FEC8.w,X		; FE C8 FE
	iny		; C8
	inc $0000.w,X		; FE 00 00
	rti		; 40

	cpy #$C0.b		; C0 C0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	php		; 08
	bra   8.b		; 80 08
	rti		; 40

	pha		; 48
	bcc -40.b		; 90 D8
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bcs   0.b		; B0 00
	bvs  80.b		; 70 50
	bmi  -8.b		; 30 F8
	rts		; 60

	inx		; E8
	pha		; 48
	cpy #$28.b		; C0 28
	cpy #$68.b		; C0 68
	bcc  72.b		; 90 48
	bpl -64.b		; 10 C0
	bpl -64.b		; 10 C0
	bpl -80.b		; 10 B0
	bcs  48.b		; B0 30
	bvs  48.b		; 70 30
	beq  48.b		; F0 30
	bcs  96.b		; B0 60
	rts		; 60

	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	bne   0.b		; D0 00
	bne  32.b		; D0 20
	bne  32.b		; D0 20
	rti		; 40

	jsr $2040.w		; 20 40 20
	rts		; 60

	brk $60.b		; 00 60
	brk $40.b		; 00 40
	ldy #$E0.b		; A0 E0
	cpx #$C0.b		; E0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$40.b		; C0 40
	rti		; 40

	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	asl $381E.w,X		; 1E 1E 38
	jmp ($0006.w,X)		; 7C 06 00
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $7C00.w,X		; 1E 00 7C
	brk $04.b		; 00 04
	ora $031F00.l,X		; 1F 00 1F 03
	rol $3E03.w,X		; 3E 03 3E
	ora ($3F.b),Y		; 11 3F
	brk $7F.b		; 00 7F
	jsr $0578.w		; 20 78 05
	sbc $0F.b,X		; F5 0F
	brk $0D.b		; 00 0D
	ora #$080D.w		; 09 0D 08
	and $24.b,X		; 35 24
	dec A		; 3A
	jsl $700838.l		; 22 38 08 70
	eor [$60.b],Y		; 57 60
	ora $03FF63.l		; 0F 63 FF 03
	sbc $F9FB2D.l,X		; FF 2D FB F9
	pla		; 68
	jsr ($FD21.w,X)		; FC 21 FD
	sbc ($1D.b),Y		; F1 1D
	adc $9DA1.w,X		; 7D A1 9D
	sbc ($07.b,S),Y		; F3 07
	cmp ($07.b,S),Y		; D3 07
	bit #$988F.w		; 89 8F 98
	ora $0C03DC.l		; 0F DC 03 0C
	ora $60.b,S		; 03 60
	sbc $0D.b,S		; E3 0D
	cmp $060F06.l		; CF 06 0F 06
	ora $0C1E04.l		; 0F 04 1E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	tsb $083E.w		; 0C 3E 08
	bit $3C18.w,X		; 3C 18 3C
	ora $000E09.l		; 0F 09 0E 00
	asl $1E00.w		; 0E 00 1E
	bpl  30.b		; 10 1E
	ora ($1C.b)		; 12 1C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $3902.w		; 20 02 39
	ora ($34.b,X)		; 01 34
	tsb $2232.w		; 0C 32 22
	bmi  48.b		; 30 30
	sei		; 78
	bmi 126.b		; 30 7E
	and ($7C.b)		; 32 7C
	adc ($7C.b)		; 72 7C
	brk $07.b		; 00 07
	plp		; 28
	pld		; 2B
	bit $2E0D.w		; 2C 0D 2E
	ora $710736.l		; 0F 36 07 71
	eor ($7B.b,X)		; 41 7B
	phd		; 0B
	ply		; 7A
	phd		; 0B
.ACCU 16
	rep #$E0		; C2 E0
	rts		; 60

	sbc ($31.b,S),Y		; F3 31
	ror $1E84.w,X		; 7E 84 1E
	ldx $3F61.w,Y		; BE 61 3F
	adc $803C1E.l,X		; 7F 1E 3C 80
	brk $5F.b		; 00 5F
	cmp $01EC2C.l,X		; DF 2C EC 01
	sbc ($01.b),Y		; F1 01
	sbc $FE00.w,X		; FD 00 FE
	asl $0CFF.w,X		; 1E FF 0C
	sbc $00FF00.l,X		; FF 00 FF 00
	cpx #$80.b		; E0 80
	eor ($01.b),Y		; 51 01
	eor ($02.b,S),Y		; 53 02
	lsr $45.b,X		; 56 45
	cpy $288B.w		; CC 8B 28
	ora [$60.b]		; 07 60
	asl $F0.b		; 06 F0
	brk $00.b		; 00 00
	ldy #$A0.b		; A0 A0
	ldy #$A0.b		; A0 A0
	lda ($A0.b,X)		; A1 A0
	ora $70.b,S		; 03 70
	ora [$F0.b]		; 07 F0
	ora $F807F0.l		; 0F F0 07 F8
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	php		; 08
	bit $3C0C.w,X		; 3C 0C 3C
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	tsb $0E.b		; 04 0E
	cop $0E.b		; 02 0E
	bit $3C04.w,X		; 3C 04 3C
	tsb $3C.b		; 04 3C
	jsr $001C.w		; 20 1C 00
	asl $0E12.w,X		; 1E 12 0E
	cop $0E.b		; 02 0E
	brk $0E.b		; 00 0E
	php		; 08
	ora ($10.b,X)		; 01 10
	ora ($18.b,X)		; 01 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	ora [$06.b]		; 07 06
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	bpl  23.b		; 10 17
	php		; 08
	phd		; 0B
	php		; 08
	ora #$000C.w		; 09 0C 00
	asl $00.b		; 06 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	and ($8C.b),Y		; 31 8C
	clv		; B8
	tsb $39.b		; 04 39
	ora ($01.b,X)		; 01 01
	ora [$20.b]		; 07 20
	cmp [$10.b]		; C7 10
	and ($84.b,X)		; 21 84
	php		; 08
	lda ($02.b),Y		; B1 02
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	cop $7A.b		; 02 7A
	ora ($01.b,X)		; 01 01
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	jsr ($56FC.w,X)		; FC FC 56
	cli		; 58
	ldx #$8C.b		; A2 8C
	ror A		; 6A
	tsb $0674.w		; 0C 74 06
	clv		; B8
	.db $82, $5E, $C3		; 82 5E C3
	bit $9FE1.w		; 2C E1 9F
	adc ($21.b),Y		; 71 21
	sta ($79.b,X)		; 81 79
	ora #$05F5.w		; 09 F5 05
	sbc $7F01.w,Y		; F9 01 7F
	ora $BC.b,S		; 03 BC
	bra  95.b		; 80 5F
	eor ($2E.b,X)		; 41 2E
	jsr $0403.w		; 20 03 04
	ora $08.b,S		; 03 08
	ora [$10.b]		; 07 10
	asl $10.b		; 06 10
	asl $11.b		; 06 11
	ora ($09.b)		; 12 09
	php		; 08
	tsb $07.b		; 04 07
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora $0E0F0F.l		; 0F 0F 0F 0E
	asl $0606.w		; 0E 06 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	jmp.w [$8F00]		; DC 00 8F
	brk $07.b		; 00 07
	bvc   1.b		; 50 01
	sty $00.b		; 84 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $FF.b		; 00 FF
	sbc $8FFFFF.l,X		; FF FF FF 8F
	sta $000303.l		; 8F 03 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bvs   3.b		; 70 03
	sei		; 78
	sta $78.b,S		; 83 78
	sbc $7C.b		; E5 7C
	adc ($3E.b)		; 72 3E
	and ($7F.b),Y		; 31 7F
	tas		; 1B
	ora $9F0F00.l,X		; 1F 00 0F 9F
	bcc -113.b		; 90 8F
	iny		; C8
	sta [$E0.b]		; 87 E0
	sta $E0.b,S		; 83 E0
	cmp $F4.b		; C5 F4
	and ($32.b)		; 32 32
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bra -48.b		; 80 D0
	bpl 104.b		; 10 68
	cld		; D8
	ror $8C.b		; 66 8C
	ora ($80.b,X)		; 01 80
	adc $008080.l,X		; 7F 80 80 00
	bra -64.b		; 80 C0
	cpy #$20.b		; C0 20
	jsr $50D0.w		; 20 D0 50
	tya		; 98
	clc		; 18
	inc $C03E.w,X		; FE 3E C0
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($08.b),Y		; 11 08
	ora ($00.b)		; 12 00
	cop $10.b		; 02 10
	jsr $0810.w		; 20 10 08
	jsr $2448.w		; 20 48 24
	jmp $409C20.l		; 5C 20 9C 40
	asl $06.b		; 06 06
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	trb $181C.w		; 1C 1C 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	bit $2812.w		; 2C 12 28
	bpl   8.b		; 10 08
	bmi   8.b		; 30 08
	bit $00.b,X		; 34 00
	bit $40.b,X		; 34 40
	bit $5C.b		; 24 5C
	jsl $0C204F.l		; 22 4F 20 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $080C.w		; 0C 0C 08
	php		; 08
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	trb $1F1C.w		; 1C 1C 1F
	ora $00C000.l,X		; 1F 00 C0 00
	inc $9F86.w,X		; FE 86 9F
	adc $0F2F2F.l		; 6F 2F 2F 0F
	bra  -1.b		; 80 FF
	ora $F62BF8.l,X		; 1F F8 2B F6
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	sbc $F7FF70.l,X		; FF 70 FF F7
	sbc $1096F6.l,X		; FF F6 96 10
	sei		; 78
	rts		; 60

	sbc ($86.b)		; F2 86
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	jsr $F0F8.w		; 20 F8 F0
	jsr ($FEB8.w,X)		; FC B8 FE
	ldy #$FE.b		; A0 FE
	bne -20.b		; D0 EC
	inx		; E8
	pei ($00.b)		; D4 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	sec		; 38
	jsr ($0C0C.w,X)		; FC 0C 0C
	brk $00.b		; 00 00
	jsr $1000.w		; 20 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	cop $0E.b		; 02 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	asl $01.b		; 06 01
	bpl 125.b		; 10 7D
	jsr $40F8.w		; 20 F8 40
	beq -100.b		; F0 9C
	sbc $8C8E.w,Y		; F9 8E 8C
	bit $76.b,X		; 34 76
	php		; 08
	ply		; 7A
	rti		; 40

	mvp $28,$38		; 44 38 28
	bvs  64.b		; 70 40
	cpx #$8F.b		; E0 8F
	iny		; C8
	and $107F8C.l,X		; 3F 8C 7F 10
	sbc $308F08.l,X		; FF 08 8F 30
	sta $207320.l		; 8F 20 73 20
	sbc ($24.b,S),Y		; F3 24
	sbc ($64.b),Y		; F1 64
	sbc ($64.b)		; F2 64
	sbc ($64.b)		; F2 64
	sbc ($64.b)		; F2 64
	sbc ($61.b)		; F2 61
	pea $4C68.w		; F4 68 4C
	bvs  28.b		; 70 1C
	bvs  30.b		; 70 1E
	bvs  31.b		; 70 1F
	beq -113.b		; F0 8F
	beq -113.b		; F0 8F
	beq -113.b		; F0 8F
	beq  15.b		; F0 0F
	adc [$FF.b]		; 67 FF
	sbc [$F7.b],Y		; F7 F7
	sbc [$F7.b],Y		; F7 F7
	tda		; 7B
	xce		; FB
	tsa		; 3B
	sei		; 78
	trb $8C3C.w		; 1C 3C 8C
	trb $4E86.w		; 1C 86 4E
	brk $6F.b		; 00 6F
	adc $FF.b,S		; 63 FF
	adc ($FF.b,S),Y		; 73 FF
	and ($FF.b),Y		; 31 FF
	clc		; 18
	sbc $04FF08.l,X		; FF 08 FF 04
	sbc $00FF02.l,X		; FF 02 FF 00
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bvs  64.b		; 70 40
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	clc		; 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl   8.b		; 10 08
	php		; 08
	and $0E61.w		; 2D 61 0E
	rts		; 60

	ora [$30.b],Y		; 17 30
	ora [$10.b]		; 07 10
	phd		; 0B
	clc		; 18
	ora $08.b,S		; 03 08
	ora $0C.b		; 05 0C
	ora $06.b,S		; 03 06
	asl $3F00.w,X		; 1E 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $000308.l		; 0F 08 03 00
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$20.b		; C0 20
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $05.b		; 05 05
	asl $1C0A.w		; 0E 0A 1C
	trb $52.b		; 14 52
	jsr $01B8.w		; 20 B8 01
	eor ($11.b)		; 52 11
	bit $01.b		; 24 01
	plp		; 28
	sbc $7EB8.w,Y		; F9 B8 7E
	bpl  -4.b		; 10 FC
	bra -48.b		; 80 D0
	clc		; 18
	sbc [$98.b]		; E7 98
	inc $C2.b		; E6 C2
	inc $FEE6.w		; EE E6 FE
	rol $B806.w		; 2E 06 B8
	bra  16.b		; 80 10
	brk $20.b		; 00 20
	ldy $EC88.w		; AC 88 EC
	jmp.w [$9CDC]		; DC DC 9C
	stx $068C.w		; 8E 8C 06
	asl $03.b		; 06 03
	eor $03.b,S		; 43 03
	eor [$03.b]		; 47 03
	and [$83.b]		; 27 83
	brk $9E.b		; 00 9E
	tya		; 98
	inc $FF0C.w,X		; FE 0C FF
	tsb $DF.b		; 04 DF
	brk $CF.b		; 00 CF
	ora ($E7.b,X)		; 01 E7
	ora ($E7.b,X)		; 01 E7
	ora ($F7.b,X)		; 01 F7
	tsb $21.b		; 04 21
	bra -95.b		; 80 A1
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	rti		; 40

	cpx #$20.b		; E0 20
	bcs   0.b		; B0 00
	sbc [$80.b],Y		; F7 80
	sbc [$80.b],Y		; F7 80
	sbc ($80.b,S),Y		; F3 80
	cpx #$00.b		; E0 00
	cpy #$40.b		; C0 40
	cpy #$A0.b		; C0 A0
	ldy #$C0.b		; A0 C0
	bra -100.b		; 80 9C
	rti		; 40

	stz $9E40.w,X		; 9E 40 9E
	rti		; 40

	.db $42, $3C		; 42 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor [$20.b]		; 47 20
	bvs  15.b		; 70 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00001F.l,X		; 1F 1F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$EE.b],Y		; 17 EE
	ora [$E0.b],Y		; 17 E0
	ora $388A78.l		; 0F 78 8A 38
	mvp $20,$8D		; 44 8D 20
	dec $82.b,X		; D6 82
	adc $6A80.w,Y		; 79 80 6A
	dec $86.b,X		; D6 86
	eor $A02740.l,X		; 5F 40 27 A0
	ora [$C1.b]		; 07 C1
	inc A		; 1A
	sed		; F8
	tas		; 1B
	plx		; FA
	clc		; 18
	inc $EF18.w,X		; FE 18 EF
	sei		; 78
	bvc -96.b		; 50 A0
	bmi -32.b		; 30 E0
	bmi  32.b		; 30 20
	bmi   0.b		; 30 00
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bcc  16.b		; 90 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E.b		; 06 0E
	tsb $1C.b		; 04 1C
	tsb $081D.w		; 0C 1D 08
	rol $3A04.w,X		; 3E 04 3A
	php		; 08
	and ($00.b)		; 32 00
	adc ($01.b,S),Y		; 73 01
	adc ($0E.b)		; 72 0E
	ora #$030C.w		; 09 0C 03
	trb $1912.w		; 1C 12 19
	brk $15.b		; 00 15
	tsb $2D.b		; 04 2D
	bit $0C2C.w		; 2C 2C 0C
	and #$200D.w		; 29 0D 20
	bit #$1A40.w		; 89 40 1A
	cpx #$34.b		; E0 34
	bra  52.b		; 80 34
	cpy #$67.b		; C0 67
	ora $E4.b,S		; 03 E4
	cpx #$08.b		; E0 08
	brk $EF.b		; 00 EF
	sei		; 78
	asl $15F1.w		; 0E F1 15
	cmp $0B.b,S		; C3 0B
	sbc $2B.b,S		; E3 2B
	bra  24.b		; 80 18
	ora $1B.b,S		; 03 1B
	sbc [$F7.b]		; E7 F7
	bpl  24.b		; 10 18
	adc ($FC.b,X)		; 61 FC
	adc ($FC.b,X)		; 61 FC
	adc ($F8.b,X)		; 61 F8
	and ($F8.b,X)		; 21 F8
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	jsr $00F8.w		; 20 F8 00
	sei		; 78
	beq   7.b		; F0 07
	beq   7.b		; F0 07
	beq   7.b		; F0 07
	beq -121.b		; F0 87
	beq -125.b		; F0 83
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs  64.b		; 70 40
	sta [$57.b]		; 87 57
	and [$97.b]		; 27 97
	and $97.b,S		; 23 97
	and ($93.b,X)		; 21 93
	jsr $0011.w		; 20 11 00
	bra   8.b		; 80 08
	cmp $0E.b,S		; C3 0E
	cmp $03.b,S		; C3 03
	sbc $01FF03.l,X		; FF 03 FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7E7F00.l,X		; FF 00 7F 7E
	.db $42, $7C		; 42 7C
	rti		; 40

	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	phd		; 0B
	ora [$17.b]		; 07 17
	ora $031823.l		; 0F 23 18 03
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora [$03.b]		; 07 03
	ora $000707.l		; 0F 07 07 00
	bcc 112.b		; 90 70
	cld		; D8
	ldy #$C8.b		; A0 C8
	clc		; 18
	pha		; 48
	bcs 100.b		; B0 64
	cld		; D8
	stz $8C.b		; 64 8C
	bit $D8.b		; 24 D8
	bmi 112.b		; 30 70
	bpl -96.b		; 10 A0
	bra  56.b		; 80 38
	php		; 08
	bcs   0.b		; B0 00
	cld		; D8
	rti		; 40

	stz $F804.w		; 9C 04 F8
	jsr $20EC.w		; 20 EC 20
	iny		; C8
	and ($68.b)		; 32 68
	and ($60.b)		; 32 60
	rol $BEEE.w,X		; 3E EE BE
	tsb $C4FE.w		; 0C FE C4
	sbc ($8C.b)		; F2 8C
	sbc ($08.b)		; F2 08
	rts		; 60

	cpx $DC20.w		; EC 20 DC
	bpl -48.b		; 10 D0
	bpl  84.b		; 10 54
	asl $0E08.w,X		; 1E 08 0E
	sty $0CEC.w		; 8C EC 0C
	cpy $9C9C.w		; CC 9C 9C
	cop $06.b		; 02 06
	tsb $0C0E.w		; 0C 0E 0C
	asl $0C08.w		; 0E 08 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $27.b		; 00 27
	bpl  78.b		; 10 4E
	jsr $005D.w		; 20 5D 00
	tyx		; BB
	rti		; 40

	ldx $01.b,Y		; B6 01
	ror A		; 6A
	sta $50.b		; 85 50
	cop $00.b		; 02 00
	cop $0F.b		; 02 0F
	ora $3E1F1F.l		; 0F 1F 1F 3E
	rol $3C3C.w,X		; 3E 3C 3C
	sei		; 78
	sei		; 78
	stz $70.b,X		; 74 70
	sbc ($E1.b,X)		; E1 E1
	sbc ($E1.b,X)		; E1 E1
	clc		; 18
	mvp $C4,$10		; 44 10 C4
	bmi -120.b		; 30 88
	jsr $6088.w		; 20 88 60
	bpl  64.b		; 10 40
	brk $C0.b		; 00 C0
	jsr $0080.w		; 20 80 00
	clv		; B8
	clv		; B8
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	jsl $7952E9.l		; 22 E9 52 79
	.db $82, $39, $85		; 82 39 85
	sei		; 78
	.db $82, $70, $01		; 82 70 01
	cld		; D8
	ora ($9F.b,X)		; 01 9F
	ora $0093.w		; 0D 93 00
	and $E01F80.l,X		; 3F 80 1F E0
	and [$C4.b]		; 27 C4
	eor [$8E.b]		; 47 8E
	ora $81A787.l		; 0F 87 A7 81
	cpx #$0D.b		; E0 0D
	jmp ($20D8.w)		; 6C D8 20
	bcc  32.b		; 90 20
	bcc  36.b		; 90 24
	plp		; 28
	tsb $D0.b		; 04 D0
	sty $A0.b		; 84 A0
	php		; 08
	rti		; 40

	iny		; C8
	rti		; 40

	sed		; F8
	cpy #$3C.b		; C0 3C
	cpy #$38.b		; C0 38
	cpy #$38.b		; C0 38
	iny		; C8
	sec		; 38
	clc		; 18
	sei		; 78
	bmi -16.b		; 30 F0
	bvs  48.b		; 70 30
	rti		; 40

	brk $65.b		; 00 65
	cpx #$34.b		; E0 34
	bvs  56.b		; 70 38
	and $3D3C.w,Y		; 39 3C 3D
	trb $1D3D.w		; 1C 3D 1D
	and $9888.w,X		; 3D 88 98
	sbc ($86.b,X)		; E1 86
	brk $FF.b		; 00 FF
	jsr $30FF.w		; 20 FF 30
	inc $FE18.w,X		; FE 18 FE
	ora $08FF.w,X		; 1D FF 08
	inc $3E41.w,X		; FE 41 3E
	adc $1A.b,S		; 63 1A
	clc		; 18
	tsb $0C0C.w		; 0C 0C 0C
	asl $1C0E.w,X		; 1E 0E 1C
	asl $0610.w		; 0E 10 06
	brk $84.b		; 00 84
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $BE.b		; 00 BE
	tsb $1E.b		; 04 1E
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	bra -128.b		; 80 80
	ora $18.b,S		; 03 18
	ora $0C.b		; 05 0C
	cop $0E.b		; 02 0E
	brk $0F.b		; 00 0F
	and $3F5E1F.l		; 2F 1F 5E 3F
	stz $3841.w		; 9C 41 38
	.db $82, $0F, $08		; 82 0F 08
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	asl $3F.b		; 06 3F
	tsb $3E3F.w		; 0C 3F 3E
	rol $7D7D.w,X		; 3E 7D 7D
	rti		; 40

	bne   0.b		; D0 00
	bne -72.b		; D0 B8
	sed		; F8
	bmi  -8.b		; 30 F8
	bpl -56.b		; 10 C8
	jsr $0090.w		; 20 90 00
	jsr $2040.w		; 20 40 20
	bmi  16.b		; 30 10
	bcs -112.b		; B0 90
	bpl  56.b		; 10 38
	jsr $3038.w		; 20 38 30
	bcs  96.b		; B0 60
	rts		; 60

	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora [$03.b]		; 07 03
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	eor $CF.b,S		; 43 CF
	lda [$97.b],Y		; B7 97
	sta [$87.b],Y		; 97 87
	rti		; 40

	sbc $00FC0F.l,X		; FF 0F FC 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bcc  -1.b		; 90 FF
	sec		; 38
	sbc $FBFF7B.l,X		; FF 7B FF FB
	wai		; CB
	dey		; 88
	bit $1830.w,X		; 3C 30 18
	sec		; 38
	clc		; 18
	bit $1C08.w,X		; 3C 08 1C
	php		; 08
	trb $1C0C.w		; 1C 0C 1C
	tsb $040C.w		; 0C 0C 04
	asl $0E04.w		; 0E 04 0E
	sec		; 38
	jsr $0018.w		; 20 18 00
	trb $1C04.w		; 1C 04 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	asl A		; 0A
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora $06.b,S		; 03 06
	cop $05.b		; 02 05
	tsb $02.b		; 04 02
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	ora $00.b		; 05 00
	ora ($04.b,X)		; 01 04
	phd		; 0B
	brk $02.b		; 00 02
	php		; 08
	bpl   1.b		; 10 01
	ora ($12.b,X)		; 01 12
	jsl $043000.l		; 22 00 30 04
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $0C0E.w		; 0E 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	clc		; 18
	clc		; 18
	pha		; 48
	jsr $2448.w		; 20 48 24
	jmp $409C20.l		; 5C 20 9C 40
	stz $9E40.w		; 9C 40 9E
	rti		; 40

	stz $4240.w,X		; 9E 40 42
	bit $1C1C.w,X		; 3C 1C 1C
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $1F0408.l		; 0F 08 04 1F
	tsb $081F.w		; 0C 1F 08
	and $183F18.l,X		; 3F 18 3F 18
	rol $7E10.w,X		; 3E 10 7E
	bmi 126.b		; 30 7E
	bmi 126.b		; 30 7E
	ora $111F01.l		; 0F 01 1F 11
	asl $1E02.w,X		; 1E 02 1E
	cop $3C.b		; 02 3C
	bit $3C.b		; 24 3C
	tsb $3C.b		; 04 3C
	tsb $7C.b		; 04 7C
	mvp $FC,$30		; 44 30 FC
	jsr $60FC.w		; 20 FC 60
	jsr ($FC60.w,X)		; FC 60 FC
	rts		; 60

	jsr ($FC60.w,X)		; FC 60 FC
	jsr $207C.w		; 20 7C 20
	jmp ($0878.w,X)		; 7C 78 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	jsr $207C.w		; 20 7C 20
	jmp ($3C00.w,X)		; 7C 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	sei		; 78
	pha		; 48
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	sec		; 38
	plp		; 28
	clc		; 18
	php		; 08
	trb $1C0C.w		; 1C 0C 1C
	trb $0C0C.w		; 1C 0C 0C
	bra  35.b		; 80 23
	brk $FE.b		; 00 FE
	ldx $BCFF.w,Y		; BE FF BC
	ldy $D8DA.w,X		; BC DA D8
	cmp $C0.b,S		; C3 C0
	cmp $EDC0.w		; CD C0 ED
	cpx #$9C.b		; E0 9C
	jmp.w [$0101]		; DC 01 01
	trb $18BE.w		; 1C BE 18
	sbc $80FF80.l,X		; FF 80 FF 80
	sbc $40FFC0.l,X		; FF C0 FF 40
	sbc $00F080.l,X		; FF 80 F0 00
	cpy #$00.b		; C0 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	sec		; 38
	bmi  24.b		; 30 18
	bra   0.b		; 80 00
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	jsr $30F8.w		; 20 F8 30
	jsr ($FC10.w,X)		; FC 10 FC
	and ($86.b),Y		; 31 86
	jmp ($19C6.w,X)		; 7C C6 19
	cmp $3E.b,S		; C3 3E
	sbc $0E.b,S		; E3 0E
	adc $1C.b,S		; 63 1C
	and ($07.b),Y		; 31 07
	and ($0E.b),Y		; 31 0E
	clc		; 18
	sbc $B984.w,X		; FD 84 B9
	bra 124.b		; 80 7C
	rti		; 40

	jmp $203C40.l		; 5C 40 3C 20
	rol $1E20.w		; 2E 20 1E
	bpl  23.b		; 10 17
	bpl -128.b		; 10 80
	cpy #$80.b		; C0 80
	rti		; 40

	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	rti		; 40

	jsr $A0C0.w		; 20 C0 A0
	rti		; 40

	bcc   0.b		; 90 00
	bcc   0.b		; 90 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	rts		; 60

	jsr $0060.w		; 20 60 00
	rts		; 60

	brk $74.b		; 00 74
	cop $E8.b		; 02 E8
	tsb $D1.b		; 04 D1
	tsb $08B1.w		; 0C B1 08
	eor ($09.b)		; 52 09
	ldx #$11.b		; A2 11
	bit $12.b		; 24 12
	tsb $22.b		; 04 22
	sbc $F3F9.w,Y		; F9 F9 F3
	sbc ($E3.b,S),Y		; F3 E3
	sbc $C7.b,S		; E3 C7
	cmp [$86.b]		; C7 86
	stx $0E.b		; 86 0E
	asl $0C0C.w		; 0E 0C 0C
	trb $801C.w		; 1C 1C 80
	rti		; 40

	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	jsr $407C.w		; 20 7C 40
	sed		; F8
	sta ($F0.b,X)		; 81 F0
	asl $03EE.w		; 0E EE 03
	cmp $1D.b,S		; C3 1D
	sta $161E.w,X		; 9D 1E 16
	bit $382C.w,X		; 3C 2C 38
	clc		; 18
	bvs  51.b		; 70 33
	cpx #$6F.b		; E0 6F
	dec $5F.b		; C6 5F
	.db $82, $3F, $0C		; 82 3F 0C
	and $0BFB15.l,X		; 3F 15 FB 0B
	sbc [$0B.b],Y		; F7 0B
	bvs   7.b		; 70 07
	bit $9C45.w,X		; 3C 45 9C
	ldx #$46.b		; A2 46
	cli		; 58
	and $2C.b,S		; 23 2C
	sta ($79.b,S),Y		; 93 79
	eor $6B.b,S		; 43 6B
	eor $2F.b,S		; 43 2F
	jsr $D013.w		; 20 13 D0
	ora $E0.b,S		; 03 E0
	ora $0DFC.w		; 0D FC 0D
	sbc $0C.b,X		; F5 0C
	sbc ($00.b,S),Y		; F3 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	cop $07.b		; 02 07
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	ora [$04.b]		; 07 04
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $103E00.l,X		; 1F 00 3E 10
	jmp ($F921.w,X)		; 7C 21 F9
	rti		; 40

	sbc ($C0.b),Y		; F1 C0
	sbc $03.b,S		; E3 03
	ora ($07.b,X)		; 01 07
	ora $0E.b,S		; 03 0E
	asl $1C.b		; 06 1C
	ora $38.b		; 05 38
	ora $70.b,S		; 03 70
	ora $E0.b,S		; 03 E0
	asl $C1.b		; 06 C1
	ora $F601.w		; 0D 01 F6
	and $C6.b,S		; 23 C6
	eor ($84.b,X)		; 41 84
	ora ($8C.b,X)		; 01 8C
	ora $8C.b		; 05 8C
	trb $8F.b		; 14 8F
	and $9C.b,S		; 23 9C
	mvp $C3,$2B		; 44 2B C3
	asl A		; 0A
	lda ($38.b),Y		; B1 38
	adc [$7C.b],Y		; 77 7C
	adc [$74.b]		; 67 74
	adc $70.b,S		; 63 70
	rti		; 40

	bvs   3.b		; 70 03
	adc ($04.b,S),Y		; 73 04
	pea $2B43.w		; F4 43 2B
	ora ($47.b,S),Y		; 13 47
	ora $57.b,S		; 03 57
	and $17.b,S		; 23 17
	and ($13.b,X)		; 21 13
	bit $11.b		; 24 11
	rol $90.b		; 26 90
	asl $D0.b		; 06 D0
	tsb $F7.b		; 04 F7
	ora $FB.b,S		; 03 FB
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	rti		; 40

	and $482448.l,X		; 3F 48 24 48
	bit $40.b		; 24 40
	bit $40.b		; 24 40
	bit $5C.b		; 24 5C
	jsl $47204F.l		; 22 4F 20 47
	jsr $0F70.w		; 20 70 0F
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $1F1C.w		; 1C 1C 1F
	ora $001F1F.l,X		; 1F 1F 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jsr $E000.w		; 20 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	lsr $D1.b		; 46 D1
	lsr $C1.b		; 46 C1
	adc ($F1.b)		; 72 F1
	bmi 120.b		; 30 78
	bmi 127.b		; 30 7F
	sec		; 38
	tda		; 7B
	sec		; 38
	adc $3918.w,Y		; 79 18 39
	rti		; 40

	and $703F40.l,X		; 3F 40 3F 70
	ora $790F78.l		; 0F 78 0F 79
	ora ($79.b,X)		; 01 79
	eor ($38.b,X)		; 41 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $7C.b		; 00 7C
	bpl  -4.b		; 10 FC
	sed		; F8
	inc $FFDC.w,X		; FE DC FF
	bvc  -1.b		; 50 FF
	inx		; E8
	ror $00.b,X		; 76 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $FC.b		; 00 FC
	stz $06FE.w		; 9C FE 06
	asl $00.b		; 06 00
	brk $10.b		; 00 10
	pea $BC6A.w		; F4 6A BC
	plp		; 28
	bne  24.b		; D0 18
	beq  24.b		; F0 18
	bvs  24.b		; 70 18
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $08.b		; 00 08
	pha		; 48
	php		; 08
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$C0.b		; E0 C0
	cpx #$00.b		; E0 00
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $0E.b		; 04 0E
	asl $1C1B.w		; 0E 1B 1C
	bmi  58.b		; 30 3A
	adc $75.b,S		; 63 75
	lsr $6A.b		; 46 6A
	sty $98D4.w		; 8C D4 98
	ora ($0F.b,X)		; 01 0F
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	ora $001C00.l		; 0F 00 1C 00
	sec		; 38
	brk $70.b		; 00 70
	ora ($60.b,X)		; 01 60
	ora $89.b,S		; 03 89
	ldx $80.b		; A6 80
	dec $4118.w,X		; DE 18 41
	ora $1F21.w,Y		; 19 21 1F
	adc ($41.b,X)		; 61 41
	sbc ($42.b,X)		; E1 42
	jsr ($618C.w,X)		; FC 8C 61
	ora ($FE.b,X)		; 01 FE
	brk $E1.b		; 00 E1
	asl $1FFE.w,X		; 1E FE 1F
	dec $9E1F.w,X		; DE 1F 9E
	ora $C303DE.l,X		; 1F DE 03 C3
	asl $90DE.w,X		; 1E DE 90
	phd		; 0B
	txa		; 8A
	adc ($18.b,S),Y		; 73 18
	cpy #$5D.b		; C0 5D
	cmp $FC.b,S		; C3 FC
	cpy #$41.b		; C0 41
	mvp $86,$BA		; 44 BA 86
	ora $3FC0C1.l,X		; 1F C1 C0 3F
	rep #$47		; C2 47
	sec		; 38
	and $F83B79.l,X		; 3F 79 3B F8
	tyx		; BB
	xce		; FB
	sed		; F8
	sbc ($60.b,X)		; E1 60
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	sed		; F8
	bvs -12.b		; 70 F4
	sei		; 78
	tya		; 98
	jmp ($3CC8.w,X)		; 7C C8 3C
	dec $5C3C.w,X		; DE 3C 5C
	rol $6000.w,X		; 3E 00 60
	rts		; 60

	beq 112.b		; F0 70
	sed		; F8
	bvs  -4.b		; 70 FC
	bpl  -4.b		; 10 FC
	bra 124.b		; 80 7C
	iny		; C8
	rol $3EC8.w,X		; 3E C8 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	eor $CF.b,S		; 43 CF
	lda [$97.b],Y		; B7 97
	sta [$87.b],Y		; 97 87
	rti		; 40

	sbc $00FC0F.l,X		; FF 0F FC 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bcc  -1.b		; 90 FF
	sec		; 38
	sbc $FBFF7B.l,X		; FF 7B FF FB
	wai		; CB
	dey		; 88
	bit $0230.w,X		; 3C 30 02
	ora $040F06.l		; 0F 06 0F 04
	ora $0C1F0C.l,X		; 1F 0C 1F 0C
	rol $3E18.w,X		; 3E 18 3E
	clc		; 18
	ror $7C38.w,X		; 7E 38 7C
	ora [$00.b]		; 07 00
	ora $010F09.l		; 0F 09 0F 01
	asl $1E12.w,X		; 1E 12 1E
	cop $3C.b		; 02 3C
	jsr $043C.w		; 20 3C 04
	jmp ($0544.w,X)		; 7C 44 05
	dey		; 88
	ora $08.b		; 05 08
	asl A		; 0A
	ora ($0A.b),Y		; 11 0A
	ora ($18.b),Y		; 11 18
	and $15.b,S		; 23 15
	jsl $050215.l		; 22 15 02 05
	cop $00.b		; 02 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $1C1F00.l,X		; 3F 00 1F 1C
	trb $886A.w		; 1C 6A 88
	rol $80.b,X		; 36 80
	ldy $12.b		; A4 12
	lda $12.b		; A5 12
	mvp $46,$33		; 44 33 46
	and ($46.b),Y		; 31 46
	and ($14.b),Y		; 31 14
	sbc $00FF08.l,X		; FF 08 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	jsr $6040.w		; 20 40 60
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bvs -16.b		; 70 F0
	bmi -16.b		; 30 F0
	bmi -16.b		; 30 F0
	bpl 112.b		; 10 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bpl  16.b		; 10 10
	clc		; 18
	bpl   2.b		; 10 02
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	asl $01.b		; 06 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $E1.b		; 00 E1
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora ($F0.b,X)		; 01 F0
	ora ($F0.b),Y		; 11 F0
	ora ($C0.b),Y		; 11 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	jsr $00F0.w		; 20 F0 00
	sbc ($01.b),Y		; F1 01
	sbc ($01.b),Y		; F1 01
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	beq   8.b		; F0 08
	sei		; 78
	php		; 08
	sed		; F8
	dey		; 88
	beq -124.b		; F0 84
	bmi -124.b		; 30 84
	sei		; 78
	cpy $5C.b		; C4 5C
	dec $14.b		; C6 14
	dec $F8.b		; C6 F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $F8.b		; 00 F8
	bra -68.b		; 80 BC
	sty $38.b		; 84 38
	brk $78.b		; 00 78
	rti		; 40

	tsb $01.b		; 04 01
	bpl   0.b		; 10 00
	brk $12.b		; 00 12
	brk $02.b		; 00 02
	bit $00.b		; 24 00
	tsb $20.b		; 04 20
	tsb $4800.w		; 0C 00 48
	brk $0E.b		; 00 0E
	asl $0E0E.w		; 0E 0E 0E
	tsb $1C0C.w		; 0C 0C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $3C1C.w		; 1C 1C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	trb $5921.w		; 1C 21 59
	brk $58.b		; 00 58
	cop $30.b		; 02 30
	mvp $04,$30		; 44 30 04
	ldy #$08.b		; A0 08
	cpx #$08.b		; E0 08
	rti		; 40

	bcc  30.b		; 90 1E
	asl $3E3E.w,X		; 1E 3E 3E
	bit $383C.w,X		; 3C 3C 38
	sec		; 38
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	tsb $F8.b		; 04 F8
	cpy $0813.w		; CC 13 08
	cpx $BD.b		; E4 BD
	rol $7F7F.w,X		; 3E 7F 7F
	adc $7F3F7F.l,X		; 7F 7F 3F 7F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cpx #$E0.b		; E0 E0
	ora ($13.b)		; 12 13
	bcs  -2.b		; B0 FE
	jmp ($7FFF.w,X)		; 7C FF 7F
	sbc $00FF0F.l,X		; FF 0F FF 00
	sbc $733341.l,X		; FF 41 33 73
	ora $A17F3F.l		; 0F 3F 7F A1
	adc $9E6E.w		; 6D 6E 9E
	inc $FEFE.w,X		; FE FE FE
	inc $FF3D.w,X		; FE 3D FF
	tsb $03CD.w		; 0C CD 03
	sbc ($1F.b,S),Y		; F3 1F
	sbc $0E7F00.l,X		; FF 00 7F 0E
	sbc $DEFF1E.l,X		; FF 1E FF DE
	sbc $C9FF00.l,X		; FF 00 FF C9
	bra -32.b		; 80 E0
	bne -128.b		; D0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  48.b		; 80 30
	bcs   0.b		; B0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$9C.b		; C0 9C
	ldx $1EBC.w,Y		; BE BC 1E
	trb $181E.w		; 1C 1E 18
	jmp $3000.w		; 4C 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $7F5C7F.l		; 5C 7F 5C 7F
	jmp $3E287F.l		; 5C 7F 28 3E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $02.b,S		; 03 02
	ora $031D.w		; 0D 1D 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	brk $0F.b		; 00 0F
	php		; 08
	cop $0F.b		; 02 0F
	tsb $141F.w		; 0C 1F 14
	plx		; FA
	phd		; 0B
	inc $08.b,X		; F6 08
	adc ($05.b),Y		; 71 05
	bit $1C05.w,X		; 3C 05 1C
	.db $62, $16, $81		; 62 16 81
	adc $44.b,S		; 63 44
	bmi 120.b		; 30 78
	eor $6A.b,S		; 43 6A
	.db $42, $2E		; 42 2E
	and ($13.b,X)		; 21 13
	bpl   3.b		; 10 03
	brk $1D.b		; 00 1D
	jmp ($F60E.w,X)		; 7C 0E F6
	ora [$FB.b]		; 07 FB
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bvs -16.b		; 70 F0
	bvs -16.b		; 70 F0
	sei		; 78
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	ora $00.b,S		; 03 00
	brk $0E.b		; 00 0E
	ora $0F.b,S		; 03 0F
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $0F.b		; 00 0F
	asl $07.b		; 06 07
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	lsr $30.b		; 46 30
	rts		; 60

	ora ($81.b),Y		; 11 81
	sta [$22.b]		; 87 22
	rol $1EC2.w,X		; 3E C2 1E
	sbc ($16.b)		; F2 16
	beq  22.b		; F0 16
	sbc ($03.b,X)		; E1 03
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	asl $7E.b		; 06 7E
	cmp $14.b,X		; D5 14
	sbc $14.b,X		; F5 14
	sbc ($00.b,X)		; E1 00
	sbc $02.b,S		; E3 02
	sbc ($02.b)		; F2 02
	rti		; 40

	cpx #$A0.b		; E0 A0
	bcs   0.b		; B0 00
	bpl  96.b		; 10 60
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	php		; 08
	beq   8.b		; F0 08
	ldy #$A0.b		; A0 A0
	rti		; 40

	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	clc		; 18
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	tsb $0E.b		; 04 0E
	asl $0E.b		; 06 0E
	cop $06.b		; 02 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $16.b		; 06 16
	ora $271F0F.l		; 0F 0F 1F 27
	ora ($2E.b),Y		; 11 2E
	bpl  76.b		; 10 4C
	jsr $015C.w		; 20 5C 01
	eor $0300.w,Y		; 59 00 03
	cop $03.b		; 02 03
	ora $0E1F06.l		; 0F 06 1F 0E
	ora $1F0F0F.l,X		; 1F 0F 0F 1F
	ora $3E3E3E.l,X		; 1F 3E 3E 3E
	rol $2080.w,X		; 3E 80 20
	rti		; 40

	rts		; 60

	brk $C0.b		; 00 C0
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $64.b		; 26 64
	dec A		; 3A
	bvs  60.b		; 70 3C
	ror $3E5C.w		; 6E 5C 3E
	jmp $204C32.l		; 5C 32 4C 20
	jmp $4C20.w		; 4C 20 4C
	jsr $4058.w		; 20 58 40
	tsb $04.b		; 04 04
	tsb $0C0E.w		; 0C 0E 0C
	asl $3E0C.w,X		; 1E 0C 3E
	asl $1E3E.w,X		; 1E 3E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	eor $204720.l		; 4F 20 47 20
	lsr $31.b		; 46 31
	rol $11.b		; 26 11
	rol $10.b		; 26 10
	jsl $180210.l		; 22 10 02 18
	ora ($08.b,S),Y		; 13 08
	asl $1E1E.w,X		; 1E 1E 1E
	asl $0E0E.w,X		; 1E 0E 0E
	asl $0F0E.w		; 0E 0E 0F
	ora $070F0F.l		; 0F 0F 0F 07
	ora [$07.b]		; 07 07
	ora [$88.b]		; 07 88
	rti		; 40

	tsb $4460.w		; 0C 60 44
	jsr $2440.w		; 20 40 24
	cop $30.b		; 02 30
	rol $2C10.w		; 2E 10 2C
	cop $2D.b		; 02 2D
	brk $38.b		; 00 38
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	tsb $0C0C.w		; 0C 0C 0C
	tsb $1C1C.w		; 0C 1C 1C
	asl $261E.w,X		; 1E 1E 26
	brk $23.b		; 00 23
	bpl  25.b		; 10 19
	tsb $04.b		; 04 04
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $030F0F.l,X		; 1F 0F 0F 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	bpl  38.b		; 10 26
	ora ($2F.b,X)		; 01 2F
	brk $2D.b		; 00 2D
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $1E1E1E.l		; 0F 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	bpl  -4.b		; 10 FC
	sed		; F8
	inc $FFDC.w,X		; FE DC FF
	bvc  -1.b		; 50 FF
	dey		; 88
	lsr $00.b,X		; 56 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $FC.b		; 00 FC
	stz $06FE.w		; 9C FE 06
	asl $00.b		; 06 00
	jsr $B410.w		; 20 10 B4
	cop $BC.b		; 02 BC
	brk $D0.b		; 00 D0
	php		; 08
	beq  24.b		; F0 18
	ldy #$18.b		; A0 18
	cpy #$10.b		; C0 10
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	rts		; 60

	php		; 08
	rts		; 60

	bcc  96.b		; 90 60
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bvs -32.b		; 70 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	jsr $3080.w		; 20 80 30
	rol $B6.b		; 26 B6
	sta $37DF07.l		; 8F 07 DF 37
	cmp #$DC07.w		; C9 07 DC
	ora $2D.b,S		; 03 2D
	adc $B5.b,S		; 63 B5
	eor ($00.b,S),Y		; 53 00
	inc $26.b,X		; F6 26
	sbc $977F07.l,X		; FF 07 7F 97
	lda $B8BF81.l,X		; BF 81 BF B8
	sta [$9C.b]		; 87 9C
	sta $0C.b,S		; 83 0C
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$E0.b		; C0 E0
	cpy #$C0.b		; C0 C0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpx #$80.b		; E0 80
	cpx #$06.b		; E0 06
	asl $06.b		; 06 06
	asl $0C.b		; 06 0C
	asl $0C08.w		; 0E 08 0C
	php		; 08
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0C00.w		; 0E 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	asl $14.b		; 06 14
	ora $471F2F.l		; 0F 2F 1F 47
	and $0E.b,S		; 23 0E
	eor ($9C.b,X)		; 41 9C
	ora ($39.b,X)		; 01 39
	.db $82, $07, $04		; 82 07 04
	ora [$06.b]		; 07 06
	ora $0F.b,S		; 03 0F
	ora [$1F.b]		; 07 1F
	ora $3F3E1F.l,X		; 1F 1F 3E 3F
	ror $7C7E.w,X		; 7E 7E 7C
	jmp ($2CE5.w,X)		; 7C E5 2C
	sbc $26.b,S		; E3 26
	cpy #$06.b		; C0 06
	cmp ($03.b,X)		; C1 03
	cpy #$03.b		; C0 03
	cpx #$21.b		; E0 21
	cpx #$21.b		; E0 21
	cpy #$20.b		; C0 20
	cmp $00.b,S		; C3 00
	cmp $04.b		; C5 04
	sbc $02.b,S		; E3 02
	cpx #$00.b		; E0 00
	sbc ($01.b,X)		; E1 01
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$10.b		; C0 10
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$08.b		; E0 08
	rts		; 60

	php		; 08
	sei		; 78
	php		; 08
	clv		; B8
	dey		; 88
	sec		; 38
	sty $10F0.w		; 8C F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	bvs 112.b		; 70 70
	tay		; A8
	jsr $00DA.w		; 20 DA 00
	sta ($48.b,S),Y		; 93 48
	sta $48.b,X		; 95 48
	ora ($CC.b),Y		; 11 CC
	clc		; 18
	cpy $18.b		; C4 18
	cmp $50.b		; C5 50
	inc $FF20.w,X		; FE 20 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 120.b		; 30 78
	clc		; 18
	sei		; 78
	clc		; 18
	jmp ($7C18.w,X)		; 7C 18 7C
	php		; 08
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	bit $1C08.w,X		; 3C 08 1C
	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	clc		; 18
	brk $1C.b		; 00 1C
	trb $1C.b		; 14 1C
	bpl  13.b		; 10 0D
	rti		; 40

	eor ($70.b,X)		; 41 70
	rti		; 40

	ror $7F67.w,X		; 7E 67 7F
	bit $3C.b		; 24 3C
	and $3C.b		; 25 3C
	ora $1C.b		; 05 1C
	ora $1C.b		; 05 1C
	rti		; 40

	and $6C0F60.l,X		; 3F 60 0F 6C
	ora $0868.w		; 0D 68 08
	pld		; 2B
	php		; 08
	tsa		; 3B
	php		; 08
	tas		; 1B
	php		; 08
	ora ($00.b,S),Y		; 13 00
	clc		; 18
	inc A		; 1A
	pha		; 48
	sbc $B4E1.w		; ED E1 B4
	cmp ($02.b,X)		; C1 02
	lda ($36.b,X)		; A1 36
	mvn $A4,$6E		; 54 6E A4
	cmp $108648.l		; CF 48 86 10
	sbc $411E00.l,X		; FF 00 1E 41
	ora $C10DF1.l		; 0F F1 0D C1
	ora #$0D81.w		; 09 81 0D
	brk $1C.b		; 00 1C
	ora ($3D.b,X)		; 01 3D
	sta $1460.w,Y		; 99 60 14
	sbc [$81.b]		; E7 81
	trb $1C95.w		; 1C 95 1C
	sbc $14141C.l,X		; FF 1C 14 14
	pld		; 2B
	iny		; C8
	cmp ($1C.b,X)		; C1 1C
	tsb $00F3.w		; 0C F3 00
	clc		; 18
	sbc $E3.b,S		; E3 E3
	sbc [$E3.b],Y		; F7 E3
	sbc $EFFFEB.l,X		; FF EB FF EF
	rol $E336.w,X		; 3E 36 E3
	sbc $00.b,S		; E3 00
	trb $3F00.w		; 1C 00 3F
	php		; 08
	adc $7216.w,Y		; 79 16 72
	ora ($70.b)		; 12 70
	php		; 08
	adc $627F01.l,X		; 7F 01 7F 62
	sbc $1E0000.l,X		; FF 00 00 1E
	ora ($3F.b)		; 12 3F
	and [$3F.b]		; 27 3F
	ora $191F3F.l		; 0F 3F 1F 19
	ora ($27.b),Y		; 11 27
	asl $6F.b		; 06 6F
	php		; 08
	brk $07.b		; 00 07
	brk $EF.b		; 00 EF
	.db $62, $FF, $FF		; 62 FF FF
	sbc $0AFFFB.l,X		; FF FB FF 0A
	sbc $968AF1.l,X		; FF F1 8A 96
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$00.b],Y		; F7 00
	sbc $60FF73.l,X		; FF 73 FF 60
	rts		; 60

	brk $84.b		; 00 84
	cop $0C.b		; 02 0C
	adc ($18.b,X)		; 61 18
	rti		; 40

	trb $4C40.w		; 1C 40 4C
	jsr $204C.w		; 20 4C 20
	jmp $0C20.w		; 4C 20 0C
	jsr $1024.w		; 20 24 10
	rol $10.b		; 26 10
	rol $3E3E.w,X		; 3E 3E 3E
	rol $1E1E.w,X		; 3E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $0E0E.w		; 0E 0E 0E
	asl $0F06.w		; 0E 06 0F
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	ora ($1F.b,X)		; 01 1F
	ora $3E.b,S		; 03 3E
	ora [$3C.b]		; 07 3C
	asl $38.b		; 06 38
	ora $0F79.w		; 0D 79 0F
	php		; 08
	ora $121E01.l		; 0F 01 1E 12
	trb $1904.w		; 1C 04 19
	php		; 08
	and ($20.b,S),Y		; 33 20
	and [$30.b],Y		; 37 30
	rol $20.b		; 26 20
	cmp $8B0B.w,Y		; D9 0B 8B
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora [$05.b]		; 07 05
	ora [$05.b]		; 07 05
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq -64.b		; F0 C0
	beq -64.b		; F0 C0
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $32.b,S		; 03 32
	tsb $60.b		; 04 60
	tsb $0860.w		; 0C 60 08
	cpy #$10.b		; C0 10
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	jmp.w [$FC5C]		; DC 5C FC
	sec		; 38
	jsr ($E238.w,X)		; FC 38 E2
	tya		; 98
	.db $42, $98		; 42 98
	.db $42, $98		; 42 98
	.db $42, $98		; 42 98
	rti		; 40

	jsr $1800.w		; 20 00 18
	trb $3C18.w		; 1C 18 3C
	trb $3C7C.w		; 1C 7C 3C
	jmp ($3C3C.w,X)		; 7C 3C 3C
	bit $3E3C.w,X		; 3C 3C 3E
	rol $C319.w,X		; 3E 19 C3
	.db $82, $46, $05		; 82 46 05
	trb $F88B.w		; 1C 8B F8
	eor $78CF78.l		; 4F 78 CF 78
	sta $38.b,S		; 83 38
	sbc [$3C.b]		; E7 3C
	cop $FE.b		; 02 FE
	ora $FC.b		; 05 FC
	phd		; 0B
	inx		; E8
	eor [$40.b]		; 47 40
	lda [$20.b]		; A7 20
	lda [$20.b]		; A7 20
	sbc $08CB28.l		; EF 28 CB 08
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	cpx #$30.b		; E0 30
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bne  16.b		; D0 10
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $0C.b		; 04 0C
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	tsb $06.b		; 04 06
	tsb $0C00.w		; 0C 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0408.w		; 0C 08 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $05.b		; 00 05
	tsb $0C05.w		; 0C 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $040F04.l		; 0F 04 0F 04
	phd		; 0B
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $44.b		; 04 44
	sta $C7.b,S		; 83 C7
	bmi -125.b		; 30 83
	eor [$DA.b]		; 47 DA
	inc $F6.b		; E6 F6
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $1F03FF.l,X		; FF FF 03 1F
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	and ($3F.b,X)		; 21 3F
	brk $E7.b		; 00 E7
	cpy #$FF.b		; C0 FF
	sbc ($FF.b),Y		; F1 FF
	sbc $00FF.w,X		; FD FF 00
	sbc $3E381C.l,X		; FF 1C 38 3E
	sbc $FCF8.w,X		; FD F8 FC
	bpl -40.b		; 10 D8
	cpx #$E8.b		; E0 E8
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cld		; D8
	sed		; F8
	cmp $DB.b,S		; C3 DB
	bmi  60.b		; 30 3C
	beq  -4.b		; F0 FC
	brk $FC.b		; 00 FC
	cpx #$FC.b		; E0 FC
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	php		; 08
	jsr ($FEC1.w,X)		; FC C1 FE
	sta ($EE.b,X)		; 81 EE
	brk $C7.b		; 00 C7
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	asl $19.b		; 06 19
	eor ($4C.b)		; 52 4C
	lda #$EDA6.w		; A9 A6 ED
	php		; 08
	sbc $24.b		; E5 24
	rep #$42		; C2 42
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	ora ($1F.b,X)		; 01 1F
	rti		; 40

	sbc $77FF80.l,X		; FF 80 FF 77
	cpy #$1A.b		; C0 1A
	and ($BE.b,X)		; 21 BE
	sta $B4.b,S		; 83 B4
	sta $58.b,S		; 83 58
.ACCU 16
	rep #$20		; C2 20
	stz $04.b		; 64 04
	clc		; 18
	stz $11.b,X		; 74 11
	jmp $CC52.w		; 4C 52 CC
	jsr $007C.w		; 20 7C 00
	ror $BC0E.w,X		; 7E 0E BC
	bra -40.b		; 80 D8
	cpy #$E0.b		; C0 E0
	rts		; 60

	rts		; 60

	sta $0C7F00.l		; 8F 00 7F 0C
	adc ($10.b),Y		; 71 10
	ror $F30B.w		; 6E 0B F3
	ora [$E7.b],Y		; 17 E7
	ora [$E7.b]		; 07 E7
	eor $F7.b,S		; 43 F7
	rti		; 40

	beq  96.b		; F0 60
	rts		; 60

	ror $514E.w		; 6E 4E 51
	ora ($4B.b),Y		; 11 4B
	ora $D71F57.l		; 0F 57 1F D7
	sta $F08FE0.l,X		; 9F E0 8F F0
	ora $60F860.l,X		; 1F 60 F8 60
	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	beq  16.b		; F0 10
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -127.b		; F0 81
	sed		; F8
	bit #$0878.w		; 89 78 08
	sei		; 78
	brk $14.b		; 00 14
	jsr $2215.w		; 20 15 22
	plp		; 28
	lsr $2A.b		; 46 2A
	mvp $8C,$62		; 44 62 8C
	eor $88.b,X		; 55 88
	eor $08.b,X		; 55 08
	ora $08.b,X		; 15 08
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	rol A		; 2A
	brk $00.b		; 00 00
	bit $44.b		; 24 44
	brk $04.b		; 00 04
	rti		; 40

	php		; 08
	rti		; 40

	bcc   0.b		; 90 00
	bpl -128.b		; 10 80
	bmi   8.b		; 30 08
	trb $181C.w		; 1C 1C 18
	clc		; 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	beq -16.b		; F0 F0
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	asl $0F.b		; 06 0F
	tsb $1F.b		; 04 1F
	tsb $183F.w		; 0C 3F 18
	rol $7F19.w,X		; 3E 19 7F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $021E01.l		; 0F 01 1E 02
	bit $3D21.w,X		; 3C 21 3D
	ora [$38.b]		; 07 38
	bra -112.b		; 80 90
	pha		; 48
	bcc  64.b		; 90 40
	bpl  64.b		; 10 40
	cli		; 58
	bit $58.b		; 24 58
	jsr $224C.w		; 20 4C 22
	lsr $7020.w		; 4E 20 70
	bvs  48.b		; 70 30
	bmi  56.b		; 30 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $1E1E.w		; 1C 1E 1E
	jmp $5E02.w		; 4C 02 5E
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $3C3C.w,X		; 3C 3C 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs  64.b		; B0 40
	tya		; 98
	mvp $40,$9C		; 44 9C 40
	stx $4060.w		; 8E 60 40
	bmi  31.b		; 30 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $1E3C.w,X		; 3C 3C 1E
	asl $0F0F.w,X		; 1E 0F 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	phd		; 0B
	sei		; 78
	phd		; 0B
	sec		; 38
	ora $0C.b		; 05 0C
	.db $42, $96		; 42 96
	jsr $96C1.w		; 20 C1 96
	rts		; 60

	lsr $6831.w		; 4E 31 68
	bpl  39.b		; 10 27
	jsr $0007.w		; 20 07 00
	tas		; 1B
	clc		; 18
	ora $0EFC.w,X		; 1D FC 0E
	inc $07.b,X		; F6 07
	sed		; F8
	ora [$F9.b]		; 07 F9
	cop $FD.b		; 02 FD
	cpx #$30.b		; E0 30
	rti		; 40

	bmi -128.b		; 30 80
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rti		; 40

	clc		; 18
	sta ($5B.b,S),Y		; 93 5B
	cpy #$00.b		; C0 00
	cpx #$E0.b		; E0 E0
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FB.b		; 00 FB
	ora ($FF.b,S),Y		; 13 FF
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	ora [$1F.b]		; 07 1F
	asl $1C3F.w		; 0E 3F 1C
	adc $387E18.l,X		; 7F 18 7E 38
	jsr ($FC70.w,X)		; FC 70 FC
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $111F08.l		; 0F 08 1F 11
	rol $7C20.w,X		; 3E 20 7C
	rti		; 40

	jmp ($F804.w,X)		; 7C 04 F8
	bra   0.b		; 80 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   1.b		; 80 01
	brk $04.b		; 00 04
	asl $3B18.w		; 0E 18 3B
	tsb $05.b		; 04 05
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $1F.b		; 04 1F
	clc		; 18
	adc $9F7F00.l,X		; 7F 00 7F 9F
	ror $FEFC.w,X		; 7E FC FE
	php		; 08
	jmp ($F470.w)		; 6C 70 F4
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx $38FC.w		; EC FC 38
	sec		; 38
	clc		; 18
	stz $FEF8.w,X		; 9E F8 FE
	brk $FE.b		; 00 FE
	bvs  -2.b		; 70 FE
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	tsb $FE.b		; 04 FE
	plp		; 28
	sbc $008000.l,X		; FF 00 80 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	and [$06.b]		; 27 06
	asl $3C05.w		; 0E 05 3C
	and ($3C.b,X)		; 21 3C
	cmp $1E.b,S		; C3 1E
	sbc ($1E.b)		; F2 1E
	sbc ($0F.b,X)		; E1 0F
	beq  11.b		; F0 0B
	brk $F8.b		; 00 F8
	ora ($F0.b,X)		; 01 F0
	sbc $20.b,S		; E3 20
	cmp [$14.b],Y		; D7 14
	sbc $14.b,X		; F5 14
	sbc $04.b		; E5 04
	plx		; FA
	asl A		; 0A
	sbc $4009.w,Y		; F9 09 40
	rts		; 60

	cpy #$20.b		; C0 20
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	sei		; 78
	tsb $84B0.w		; 0C B0 84
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($4004.w,X)		; 7C 04 40
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	rts		; 60

	brk $60.b		; 00 60
	jsr $2060.w		; 20 60 20
	bvs  48.b		; 70 30
	bvs  48.b		; 70 30
	bmi -32.b		; 30 E0
	ldy #$60.b		; A0 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	rti		; 40

	jsr $3000.w		; 20 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	iny		; C8
	php		; 08
	cmp [$05.b],Y		; D7 05
	cmp $930B.w,Y		; D9 0B 93
	ora $93.b,S		; 03 93
	ora ($8B.b,X)		; 01 8B
	brk $80.b		; 00 80
	ora $87.b,S		; 03 87
	cmp [$47.b]		; C7 47
	iny		; C8
	pha		; 48
	sta $07.b		; 85 07
	phb		; 8B
	ora $800F89.l		; 0F 89 0F 80
	sta [$80.b]		; 87 80
	sta [$07.b]		; 87 07
	tsb $63.b		; 04 63
	tya		; 98
	eor ($23.b,X)		; 41 23
	sbc $FBF3.w		; ED F3 FB
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $0F01FF.l,X		; FF FF 01 0F
	txa		; 8A
	bcc   0.b		; 90 00
	ora [$90.b]		; 07 90
	sta $E0F380.l,X		; 9F 80 F3 E0
	sbc $7EFFF8.l,X		; FF F8 FF 7E
	sbc $80FF00.l,X		; FF 00 FF 80
	and $000000.l,X		; 3F 00 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bcc   0.b		; 90 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	rts		; 60

	bpl 104.b		; 10 68
	brk $72.b		; 00 72
	tsb $7D.b		; 04 7D
	.db $82, $FF, $00		; 82 FF 00
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jmp ($007C.w,X)		; 7C 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sbc ($C0.b,S),Y		; F3 C0
	asl $0ECA.w		; 0E CA 0E
	sbc $0A0A0E.l,X		; FF 0E 0A 0A
	ora $E4.b,X		; 15 E4
	rts		; 60

	asl $9C0E.w		; 0E 0E 9C
	cop $0E.b		; 02 0E
	sbc ($F1.b),Y		; F1 F1
	xce		; FB
	sbc ($FF.b),Y		; F1 FF
	sbc $FF.b,X		; F5 FF
	sbc [$1F.b],Y		; F7 1F
	tas		; 1B
	sbc ($F1.b),Y		; F1 F1
	adc ($6D.b,X)		; 61 6D
	adc [$83.b]		; 67 83
	sbc $03E41B.l		; EF 1B E4 03
	inc $3601.w		; EE 01 36
	ora ($DA.b),Y		; 11 DA
	ora #$058C.w		; 09 8C 05
	ora $00.b		; 05 00
	ora $1F.b,S		; 03 1F
	wai		; CB
	cmp $DCDFC0.l,X		; DF C0 DF DC
	cmp $CE.b,S		; C3 CE
	cmp ($06.b,X)		; C1 06
	ora ($82.b,X)		; 01 82
	sta $82.b,S		; 83 82
	sta $70.b,S		; 83 70
	sed		; F8
	cpx #$F8.b		; E0 F8
	cpx #$F1.b		; E0 F1
	cmp ($F3.b,X)		; C1 F3
	cmp $E6.b,S		; C3 E6
	cmp [$E4.b]		; C7 E4
	stx $EC.b		; 86 EC
	bra -49.b		; 80 CF
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sbc ($00.b,X)		; E1 00
	sbc $20.b,S		; E3 20
	cmp $00.b,S		; C3 00
	cmp $03.b,S		; C3 03
	jsr $7062.w		; 20 62 70
	dec $E8.b		; C6 E8
	sta $1BD0.w		; 8D D0 1B
	tax		; AA
	and [$52.b],Y		; 37 52
	adc [$A4.b]		; 67 A4
	cmp $22.b,S		; C3 22
	cmp ($18.b,X)		; C1 18
	ora [$38.b]		; 07 38
	ora $70.b,S		; 03 70
	cop $E8.b		; 02 E8
	tsb $16D0.w		; 0C D0 16
	ldy #$2E.b		; A0 2E
	rti		; 40

	lsr $8E80.w,X		; 5E 80 8E
	pei ($10.b)		; D4 10
	adc $4900.w		; 6D 00 49
	bit $4A.b		; 24 4A
	bit $88.b		; 24 88
	ror $8C.b		; 66 8C
	.db $62, $8C, $62		; 62 8C 62
	sty $1061.w		; 8C 61 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	ora #$08F8.w		; 09 F8 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	bvs -128.b		; 70 80
	bvs -128.b		; 70 80
	sec		; 38
	dey		; 88
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	bra 120.b		; 80 78
	brk $70.b		; 00 70
	brk $7C.b		; 00 7C
	dec $18.b		; C6 18
.ACCU 16
	rep #$2E		; C2 2E
	adc $14.b,S		; 63 14
	and ($07.b),Y		; 31 07
	and ($0F.b),Y		; 31 0F
	tas		; 1B
	ora $1C0C0F.l,X		; 1F 0F 0C 1C
	clv		; B8
	bra 126.b		; 80 7E
	.db $42, $1C		; 42 1C
	brk $2F.b		; 00 2F
	and ($1E.b,X)		; 21 1E
	bpl   6.b		; 10 06
	ora $06.b,S		; 03 06
	ora [$07.b]		; 07 07
	ora $103010.l,X		; 1F 10 30 10
	bmi   0.b		; 30 00
	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $4000.w		; 20 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	php		; 08
	asl $10.b		; 06 10
	tsb $0811.w		; 0C 11 08
	and $10.b,S		; 23 10
	asl $20.b		; 06 20
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	ora $87.b,S		; 03 87
	ora ($87.b,X)		; 01 87
	ora ($87.b,X)		; 01 87
	ora ($83.b,X)		; 01 83
	ora ($83.b,X)		; 01 83
	ora ($83.b,X)		; 01 83
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sta $82.b,S		; 83 82
	sta $82.b,S		; 83 82
	sta ($80.b,X)		; 81 80
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	txa		; 8A
	sta ($94.b),Y		; 91 94
	lda $95.b,S		; A3 95
	ldx #$31.b		; A2 31
	lsr $2A.b		; 46 2A
	mvp $84,$AA		; 44 AA 84
	dex		; CA
	cpy $C6.b		; C4 C6
	cpy #$80.b		; C0 80
	and $807F80.l,X		; 3F 80 7F 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $C07F80.l,X		; FF 80 7F C0
	and $001FC0.l,X		; 3F C0 1F 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	inc $0101.w,X		; FE 01 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	trb $781C.w		; 1C 1C 78
	pha		; 48
	eor $CF.b,S		; 43 CF
	lda [$97.b],Y		; B7 97
	sta [$87.b],Y		; 97 87
	rti		; 40

	sbc $14FC0F.l,X		; FF 0F FC 14
	plx		; FA
	phd		; 0B
	inc $08.b,X		; F6 08
	adc ($FF.b),Y		; 71 FF
	sec		; 38
	sbc $FBFF7B.l,X		; FF 7B FF FB
	wai		; CB
	dey		; 88
	bit $7830.w,X		; 3C 30 78
	eor $6A.b,S		; 43 6A
	.db $42, $2E		; 42 2E
	and ($4C.b,X)		; 21 4C
	and ($18.b,X)		; 21 18
	.db $42, $90		; 42 90
	tsb $20.b		; 04 20
	dey		; 88
	rti		; 40

	bpl -128.b		; 10 80
	jsr $4020.w		; 20 20 40
	rti		; 40

	brk $1E.b		; 00 1E
	asl $3C3C.w,X		; 1E 3C 3C
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora $080F08.l		; 0F 08 0F 08
	ora $000F00.l		; 0F 00 0F 00
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $000F00.l		; 0F 00 0F 00
	ora $080F00.l		; 0F 00 0F 08
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	bra -127.b		; 80 81
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpx #$81.b		; E0 81
	ora ($80.b,X)		; 01 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$E8.b		; C0 E8
	rti		; 40

	sbc $22EF63.l		; EF 63 EF 22
	inc $7612.w,X		; FE 12 76
	asl A		; 0A
	rol $1E00.w,X		; 3E 00 1E
	brk $0E.b		; 00 0E
	cpx #$07.b		; E0 07
	inc $06.b		; E6 06
	cpx $84.b		; E4 84
	adc $04.b,X		; 75 04
	and $04.b,X		; 35 04
	ora $0B00.w,Y		; 19 00 0B
	cop $07.b		; 02 07
	cop $40.b		; 02 40
	iny		; C8
	beq  -8.b		; F0 F8
	cpy #$F8.b		; C0 F8
	rts		; 60

	bpl -48.b		; 10 D0
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	sec		; 38
	php		; 08
	pla		; 68
	inx		; E8
	iny		; C8
	sed		; F8
	cpx #$F0.b		; E0 F0
	cpx #$F0.b		; E0 F0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	ldy #$C0.b		; A0 C0
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpx #$F0.b		; E0 F0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpx #$40.b		; E0 40
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	beq -64.b		; F0 C0
	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	beq -32.b		; F0 E0
	sed		; F8
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	rti		; 40

	beq   0.b		; F0 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($30.b,S),Y		; 53 30
	eor $30.b,S		; 43 30
	eor [$30.b]		; 47 30
	eor [$30.b]		; 47 30
	asl $31.b		; 06 31
	rol $11.b		; 26 11
	rol $11.b		; 26 11
	jsl $7E0E10.l		; 22 10 0E 7E
	asl $0E4E.w		; 0E 4E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	ora $09000F.l		; 0F 0F 00 09
	ora ($00.b),Y		; 11 00
	ora [$10.b]		; 07 10
	and $0C00.w		; 2D 00 0C
	jsl $5E005E.l		; 22 5E 00 5E
	brk $7C.b		; 00 7C
	brk $06.b		; 00 06
	asl $0E.b		; 06 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $1C1E.w,X		; 1E 1E 1C
	trb $3C3C.w		; 1C 3C 3C
	bit $003C.w,X		; 3C 3C 00
	brk $08.b		; 00 08
	rti		; 40

	tsb $4E60.w		; 0C 60 4E
	jsr $204E.w		; 20 4E 20
	asl $20.b		; 06 20
	bit $12.b		; 24 12
	bit $12.b		; 24 12
	tsb $10.b		; 04 10
	bit $1C3C.w,X		; 3C 3C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $0C0C.w		; 1C 0C 0C
	tsb $0E0C.w		; 0C 0C 0E
	asl $0401.w		; 0E 01 04
	asl A		; 0A
	brk $04.b		; 00 04
	ora #$0211.w		; 09 11 02
	jsl $240010.l		; 22 10 00 24
	mvp $1C,$00		; 44 00 1C
	rti		; 40

	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	tsb $0C0C.w		; 0C 0C 0C
	tsb $1818.w		; 0C 18 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  -4.b		; 10 FC
	sed		; F8
	inc $FFDC.w,X		; FE DC FF
	bvc  -1.b		; 50 FF
	dey		; 88
	lsr $B4.b,X		; 56 B4
	cop $BC.b		; 02 BC
	brk $D0.b		; 00 D0
	php		; 08
	clv		; B8
	brk $FC.b		; 00 FC
	stz $06FE.w		; 9C FE 06
	asl $00.b		; 06 00
	jsr $6010.w		; 20 10 60
	php		; 08
	rts		; 60

	bcc  96.b		; 90 60
	brk $1D.b		; 00 1D
	eor [$7C.b]		; 47 7C
	lsr $70.b		; 46 70
	dec $71.b		; C6 71
	dec $33.b		; C6 33
	stx $39.b		; 86 39
	sty $8C39.w		; 8C 39 8C
	sbc $8C.b,S		; E3 8C
	ply		; 7A
	.db $42, $39		; 42 39
	brk $3D.b		; 00 3D
	tsb $3F.b		; 04 3F
	asl $FD.b		; 06 FD
	sty $F3.b		; 84 F3
	bra -13.b		; 80 F3
	bra 123.b		; 80 7B
	php		; 08
	inx		; E8
	tsb $0CE0.w		; 0C E0 0C
	bne  24.b		; D0 18
	cpy #$18.b		; C0 18
	ldy #$30.b		; A0 30
	ldy #$30.b		; A0 30
	bra  48.b		; 80 30
	bra  32.b		; 80 20
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	jsr $47FF.w		; 20 FF 47
	sta $1CBF8F.l,X		; 9F 8F BF 1C
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	brk $EF.b		; 00 EF
	stz $DF.b		; 64 DF
	lsr $BE.b		; 46 BE
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	php		; 08
	inc $F3C4.w,X		; FE C4 F3
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	bcs  -1.b		; B0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp.w [$EE00]		; DC 00 EE
	sty $C4F6.w		; 8C F6 C4
	plx		; FA
	jsr $0701.w		; 20 01 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	tsb $0F.b		; 04 0F
	tsb $1E.b		; 04 1E
	php		; 08
	asl $3C08.w,X		; 1E 08 3C
	clc		; 18
	bit $0003.w,X		; 3C 03 00
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	asl $0E08.w		; 0E 08 0E
	cop $1C.b		; 02 1C
	bpl  28.b		; 10 1C
	tsb $38.b		; 04 38
	jsr $8000.w		; 20 00 80
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	tsb $09.b		; 04 09
	ora #$02.b		; 09 02
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	bra   1.b		; 80 01
	bra -125.b		; 80 83
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	eor $575D.w,Y		; 59 5D 57
	wai		; CB
	rol $9CA6.w		; 2E A6 9C
	trb $2A88.w		; 1C 88 2A
	jsl $4C2244.l		; 22 44 22 4C
	ror $88.b		; 66 88
	brk $FF.b		; 00 FF
	eor $FF.b,S		; 43 FF
	rol $FF.b		; 26 FF
	tsb $08FF.w		; 0C FF 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $80FF00.l,X		; FF 00 FF 80
	dec $06.b		; C6 06
	lda #$20.b		; A9 20
	ora ($30.b),Y		; 11 30
	bit #$58.b		; 89 58
	sty $5C.b		; 84 5C
	.db $82, $6E, $80		; 82 6E 80
	stz $80.b		; 64 80
	php		; 08
	sed		; F8
	asl $F6.b		; 06 F6
	asl $FE.b		; 06 FE
	cop $FE.b		; 02 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$0B.b]		; 07 0B
	ora [$0B.b]		; 07 0B
	ora $09.b,S		; 03 09
	brk $18.b		; 00 18
	php		; 08
	ora $0100.w,X		; 1D 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	tsb $07.b		; 04 07
	asl $07.b		; 06 07
	inc A		; 1A
	ora ($2C.b)		; 12 2C
	ora ($14.b)		; 12 14
	asl A		; 0A
	php		; 08
	asl $04.b		; 06 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($0D.b,X)		; 01 0D
	ora $0505.w		; 0D 05 05
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	brk $C8.b		; 00 C8
	bpl -56.b		; 10 C8
	bpl -60.b		; 10 C4
	clc		; 18
	cpy $18.b		; C4 18
.INDEX 16
	rep #$14		; C2 14
	cmp ($00.b)		; D2 00
	sta ($20.b),Y		; 91 20
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E8E8.w		; E0 E8 E8
	cpx $CEEC.w		; EC EC CE
	dec $0000.w		; CE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$08.b]		; 07 08
	asl $08.b		; 06 08
	tsb $1810.w		; 0C 10 18
	and $71.b,S		; 23 71
	asl $84.b		; 06 84
	php		; 08
	sed		; F8
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $781C1C.l		; 0F 1C 1C 78
	sei		; 78
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	ora ($48.b,X)		; 01 48
	cop $48.b		; 02 48
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	stx $86.b		; 86 86
	stx $84.b		; 86 84
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	sbc ($F9.b),Y		; F1 F9
	beq -13.b		; F0 F3
	inx		; E8
	cpx #$C3DC.w		; E0 DC C3
	lda [$81.b],Y		; B7 81
	and $01.b,S		; 23 01
	eor ($01.b,X)		; 41 01
	.db $82, $32, $FE		; 82 32 FE
	sbc [$FF.b]		; E7 FF
	cmp $F7.b,S		; C3 F7
	sta ($E7.b,X)		; 81 E7
	ora ($C7.b,X)		; 01 C7
	brk $C3.b		; 00 C3
	brk $83.b		; 00 83
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora $0D.b		; 05 0D
	ora [$0F.b]		; 07 0F
	phd		; 0B
	tas		; 1B
	ora #$1F.b		; 09 1F
	ora $37.b,X		; 15 37
	asl $2F.b		; 06 2F
	ora ($01.b,X)		; 01 01
	ora $01.b		; 05 01
	ora $03.b		; 05 03
	ora $0903.w		; 0D 03 09
	ora [$19.b]		; 07 19
	ora [$11.b]		; 07 11
	ora $E31F20.l		; 0F 20 1F E3
	sty $8C23.w		; 8C 23 8C
	and $8C.b,S		; 23 8C
	eor $CA.b		; 45 CA
	and $FBF7F3.l		; 2F F3 F7 FB
	beq  98.b		; F0 62
	cli		; 58
	jsl $FB087B.l		; 22 7B 08 FB
	dey		; 88
	xce		; FB
	dey		; 88
	and ($01.b),Y		; 31 01
	ora $3B.b,S		; 03 3B
	adc ($FF.b,X)		; 61 FF
	and $1D7D.w,X		; 3D 7D 1D
	ora $60C0.w,X		; 1D C0 60
	cpy #$4060.w		; C0 60 40
	rts		; 60

	jsr $3020.w		; 20 20 30
	jsr $E0D0.w		; 20 D0 E0
	bne -32.b		; D0 E0
	cld		; D8
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bra -128.b		; 80 80
	cpy #$E080.w		; C0 80 E0
	cpy #$21E0.w		; C0 E0 21
	sbc $0E7F01.l,X		; FF 01 7F 0E
	tda		; 7B
	tsb $2F78.w		; 0C 78 2F
	sei		; 78
	adc $F046F8.l		; 6F F8 46 F0
	and $B8.b,S		; 23 B8
	bit $3100.w		; 2C 00 31
	brk $20.b		; 00 20
	php		; 08
	eor $4C.b,S		; 43 4C
	rtl		; 6B

	php		; 08
	adc [$00.b]		; 67 00
	sbc $68AF93.l,X		; FF 93 AF 68
	brk $FE.b		; 00 FE
	jsr $D0FE.w		; 20 FE D0
	ldy $9CF0.w,X		; BC F0 9C
	mvn $14,$3C		; 54 3C 14
	asl $1604.w,X		; 1E 04 16
	mvp $58,$67		; 44 67 58
	brk $08.b		; 00 08
	jsr $3404.w		; 20 04 34
	tsb $50.b		; 04 50
	sty $30.b,X		; 94 30
	cpx $00.b		; E4 00
	inc $02.b		; E6 02
	stx $00.b		; 86 00
	bpl  60.b		; 10 3C
	bpl 120.b		; 10 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	jsr $60F8.w		; 20 F8 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  56.b		; F0 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	pha		; 48
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	beq -112.b		; F0 90
	beq  16.b		; F0 10
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	lsr $98.b		; 46 98
	lsr $0E90.w		; 4E 90 0E
	bpl   0.b		; 10 00
	rts		; 60

	sta [$3C.b]		; 87 3C
	sta $308738.l		; 8F 38 87 30
	sta [$30.b]		; 87 30
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  31.b		; 80 1F
	xba		; EB
	plp		; 28
	sbc [$20.b]		; E7 20
	sbc $30FF20.l		; EF 20 FF 30
	bvs -128.b		; 70 80
	rts		; 60

	dey		; 88
	brk $18.b		; 00 18
	cpx #$E030.w		; E0 30 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $60.b		; 00 60
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	bpl -16.b		; 10 F0
	bne  16.b		; D0 10
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$8840.w		; C0 40 88
	sta $8CC0.w,Y		; 99 C0 8C
	ldx #$DDC1.w		; A2 C1 DD
	rep #$C0		; C2 C0
	cmp ($94.b)		; D2 94
	jmp.w [$9C5C]		; DC 5C 9C
	bvs  17.b		; 70 11
	stx $D0.b,Y		; 96 D0
	ora ($F3.b)		; 12 F3
	stx $DCFD.w		; 8E FD DC
	sbc $C9.b,S		; E3 C9
	sbc $17.b		; E5 17
	sbc $3F.b,S		; E3 3F
	sbc $70.b,S		; E3 70
	inc $8068.w		; EE 68 80
	jmp $869C.w		; 4C 9C 86
	asl $38.b		; 06 38
	ply		; 7A
	tsb $F4.b		; 04 F4
	bvc -62.b		; 50 C2
	sec		; 38
	sty $8EF8.w		; 8C F8 8E
	brk $14.b		; 00 14
	brk $FE.b		; 00 FE
	tsb $FF.b		; 04 FF
	php		; 08
	sbc $380F00.l,X		; FF 00 0F 38
	ora [$70.b]		; 07 70
	cop $72.b		; 02 72
	brk $60.b		; 00 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	bvs  32.b		; 70 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi -16.b		; 30 F0
	bpl -16.b		; 10 F0
	bcc -16.b		; 90 F0
	bcc 112.b		; 90 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	rti		; 40

	bmi  32.b		; 30 20
	bpl   0.b		; 10 00
	cop $07.b		; 02 07
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	php		; 08
	clc		; 18
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl $04.b		; 06 04
	asl $04.b		; 06 04
	tsb $0C04.w		; 0C 04 0C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	tsb $0C00.w		; 0C 00 0C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora ($09.b)		; 12 09
	ora ($09.b)		; 12 09
	ora ($09.b)		; 12 09
	ora ($09.b)		; 12 09
	ora ($01.b)		; 12 01
	ora ($01.b)		; 12 01
	inc A		; 1A
	php		; 08
	ora ($0C.b,S),Y		; 13 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $040C.w		; 0C 0C 04
	tsb $0C.b		; 04 0C
	tsb $800C.w		; 0C 0C 80
	.db $82, $44, $41		; 82 44 41
	asl $01.b		; 06 01
	jsl $020221.l		; 22 21 02 02
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $70.b		; 00 70
	bvs  56.b		; 70 38
	sec		; 38
	sec		; 38
	sec		; 38
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $181C.w		; 1C 1C 18
	clc		; 18
	and [$B4.b],Y		; 37 B4
	tda		; 7B
	sed		; F8
	ldy $1F7C.w,X		; BC 7C 1F
	and $E3C7C7.l,X		; 3F C7 C7 E3
	sbc $E0F6E0.l		; EF E0 F6 E0
	sbc ($33.b),Y		; F1 33
	sei		; 78
	tsa		; 3B
	jmp ($FF9C.w,X)		; 7C 9C FF
	txa		; 8A
	sbc $E0FFC3.l,X		; FF C3 FF E0
	sbc $C0FFE0.l,X		; FF E0 FF C0
	sbc $807800.l,X		; FF 00 78 80
	sed		; F8
	brk $FC.b		; 00 FC
	php		; 08
	jmp $247E08.l		; 5C 08 7E 24
	asl $1F44.w,X		; 1E 44 1F
	cop $1F.b		; 02 1F
	beq  64.b		; F0 40
	sec		; 38
	php		; 08
	clv		; B8
	ldy #$841C.w		; A0 1C 84
	trb $6E80.w		; 1C 80 6E
.ACCU 8
	sep #$6E		; E2 6E
	inx		; E8
	adc [$E1.b]		; 67 E1
	rti		; 40

	beq  32.b		; F0 20
	beq  32.b		; F0 20
	sei		; 78
	bpl 120.b		; 10 78
	bpl  56.b		; 10 38
	clc		; 18
	bit $1C08.w,X		; 3C 08 1C
	php		; 08
	trb $80E0.w		; 1C E0 80
	bvs  16.b		; 70 10
	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	sec		; 38
	jsr $0018.w		; 20 18 00
	trb $1C04.w		; 1C 04 1C
	bpl  12.b		; 10 0C
	asl $0E04.w,X		; 1E 04 0E
	tsb $0E.b		; 04 0E
	asl $0E.b		; 06 0E
	asl $07.b		; 06 07
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	tsb $0E00.w		; 0C 00 0E
	cop $0E.b		; 02 0E
	php		; 08
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	ora [$05.b]		; 07 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $7F.b		; 00 7F
	jsr $47FF.w		; 20 FF 47
	sta $1CBF8F.l,X		; 9F 8F BF 1C
	sbc $00FF21.l,X		; FF 21 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	brk $EF.b		; 00 EF
	stz $DF.b		; 64 DF
	lsr $BE.b		; 46 BE
	php		; 08
	bit $0000.w		; 2C 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $04.b		; 05 04
	ora [$3E.b]		; 07 3E
	adc $071F0F.l,X		; 7F 0F 1F 07
	ora $010101.l		; 0F 01 01 01
	brk $01.b		; 00 01
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	asl $1C.b		; 06 1C
	adc $073F06.l,X		; 7F 06 3F 07
	ora $F0D3A0.l,X		; 1F A0 D3 F0
	ldy #$8477.w		; A0 77 84
	tsa		; 3B
	sbc ($78.b,S),Y		; F3 78
	ply		; 7A
	adc $7A.b,X		; 75 7A
	pld		; 2B
	ldx $EECE.w,Y		; BE CE EE
	cmp [$67.b]		; C7 67
	lda [$7B.b]		; A7 7B
	sta $78.b,S		; 83 78
	ldy #$32FC.w		; A0 FC 32
	sbc $0AF530.l,X		; FF 30 F5 0A
	sbc ($8F.b,X)		; E1 8F
	sbc ($18.b),Y		; F1 18
	jmp ($7C10.w,X)		; 7C 10 7C
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	rts		; 60

	sed		; F8
	rts		; 60

	beq  64.b		; F0 40
	beq -64.b		; F0 C0
	cpx #$043C.w		; E0 3C 04
	sei		; 78
	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	php		; 08
	beq -128.b		; F0 80
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	and ($1F.b,X)		; 21 1F
	asl $0D0F.w,X		; 1E 0F 0D
	inc A		; 1A
	ora $191614.l,X		; 1F 14 16 19
	bit $6110.w		; 2C 10 61
	bit $49.b		; 24 49
	stz $89.b		; 64 89
	asl $0D3F.w		; 0E 3F 0D
	and $143F12.l,X		; 3F 12 3F 14
	adc $007F08.l,X		; 7F 08 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $84E090.l,X		; FF 90 E0 84
	cpy #$802A.w		; C0 2A 80
	rol $48.b		; 26 48
	trb $60.b		; 14 60
	sta ($24.b)		; 92 24
	phb		; 8B
	bmi  73.b		; 30 49
	sta ($06.b)		; 92 06
	inc $FA02.w,X		; FE 02 FA
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	jsr $30F8.w		; 20 F8 30
	sei		; 78
	bpl 120.b		; 10 78
	clc		; 18
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	asl $1E04.w,X		; 1E 04 1E
	tsb $0F.b		; 04 0F
	bvs   0.b		; 70 00
	sei		; 78
	pha		; 48
	sec		; 38
	brk $38.b		; 00 38
	jsr $041C.w		; 20 1C 04
	trb $0E10.w		; 1C 10 0E
	.db $82, $0E, $88		; 82 0E 88
	ora $28A3.w,X		; 1D A3 28
	bpl  18.b		; 10 12
	jsl $564D2D.l		; 22 2D 4D 56
	stz $37AB.w,X		; 9E AB 37
	ora $3823.w,X		; 1D 23 38
	eor $43.b,S		; 43 43
	rti		; 40

	cpy #$809F.w		; C0 9F 80
	adc $0EFF01.l,X		; 7F 01 FF 0E
	sbc $DEE70F.l,X		; FF 0F E7 DE
	cmp $BE.b,S		; C3 BE
	sta $00.b,S		; 83 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cop $7F.b		; 02 7F
	stx $DF.b		; 86 DF
	asl $02DF.w		; 0E DF 02
	sta ($01.b,S),Y		; 93 01
	sta ($08.b),Y		; 91 08
	clc		; 18
	tsb $0C.b		; 04 0C
	cop $0E.b		; 02 0E
	cmp $195D.w,X		; DD 5D 19
	ora $9191.w,Y		; 19 91 91
	ora $0E11.w,X		; 1D 11 0E
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	php		; 08
	ora $04.b		; 05 04
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	jsr $3040.w		; 20 40 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra  64.b		; 80 40
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	rts		; 60

	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($08.b,X)		; 01 08
	ora [$00.b]		; 07 00
	rol $7F00.w,X		; 3E 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$3F.b]		; 07 3F
	and $007F7F.l,X		; 3F 7F 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl -64.b		; 10 C0
	bpl -112.b		; 10 90
	jsr $2010.w		; 20 10 20
	bpl  96.b		; 10 60
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	ora $100718.l		; 0F 18 07 10
	ora $200F10.l,X		; 1F 10 0F 20
	asl $3D20.w,X		; 1E 20 3D
	and ($1E.b,X)		; 21 1E
	eor $0F.b,S		; 43 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F10.l,X		; 1F 10 0F 00
	ora $203F00.l,X		; 1F 00 3F 20
	asl $3D00.w,X		; 1E 00 3D
	ora ($E0.b,X)		; 01 E0
	bit $3CA0.w,X		; 3C A0 3C
	cpy #$407C.w		; C0 7C 40
	jmp ($FC80.w,X)		; 7C 80 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	ldy #$8820.w		; A0 20 88
	php		; 08
	cli		; 58
	cli		; 58
	tya		; 98
	tya		; 98
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
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
	ora ($7F.b,X)		; 01 7F
	asl $0C7B.w		; 0E 7B 0C
	sei		; 78
	and $F86F78.l		; 2F 78 6F F8
	mvp $43,$F0		; 44 F0 43
	sed		; F8
	bra -12.b		; 80 F4
	and ($00.b),Y		; 31 00
	jsr $4308.w		; 20 08 43
	jmp $086B.w		; 4C 6B 08
	adc [$00.b]		; 67 00
	sbc $28EF93.l,X		; FF 93 EF 28
	cmp [$04.b]		; C7 04
	ora $01001F.l,X		; 1F 1F 00 01
	asl $1E0E.w		; 0E 0E 1E
	ora $0B2E1D.l		; 0F 1D 2E 0B
	bit $3006.w		; 2C 06 30
	php		; 08
	sei		; 78
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	asl $1F.b,X		; 16 1F
	trb $181F.w		; 1C 1F 18
	ora $381F10.l,X		; 1F 10 1F 38
	and $F22638.l		; 2F 38 26 F2
	xce		; FB
	jsr ($3FFE.w,X)		; FC FE 3F
	adc $8E3F9E.l,X		; 7F 9E 3F 8E
	ora $10260E.l,X		; 1F 0E 26 10
	bmi  28.b		; 30 1C
	bit $FCE2.w,X		; 3C E2 FC
	and $1EFF.w,Y		; 39 FF 1E
	sbc $06FF0E.l,X		; FF 0E FF 06
	sbc $01FF00.l,X		; FF 00 FF 01
	and $C03F0C.l,X		; 3F 0C 3F C0
	cpx #$C180.w		; E0 80 C1
	sta ($C0.b,X)		; 81 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$C001.w		; C0 01 C0
	ora $C0.b,S		; 03 C0
	eor $80.b,S		; 43 80
	ora ($80.b,X)		; 01 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	sta $19C4.w,Y		; 99 C4 19
	sty $8C31.w		; 8C 31 8C
	and ($0C.b),Y		; 31 0C
	bmi   0.b		; 30 00
	brk $03.b		; 00 03
	clc		; 18
	ora [$30.b],Y		; 17 30
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	ora $000F08.l		; 0F 08 0F 00
	eor $98.b		; 45 98
	bit $C8.b		; 24 C8
	bit $C8.b		; 24 C8
	brk $C0.b		; 00 C0
	brk $08.b		; 00 08
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	bvs   0.b		; 70 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	beq -96.b		; F0 A0
	jsr $20A0.w		; 20 A0 20
	ldy #$0220.w		; A0 20 02
	ora $000702.l		; 0F 02 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bra   7.b		; 80 07
	sta $03.b		; 85 03
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	stx $E1.b		; 86 E1
	eor $39E1.w		; 4D E1 39
	cpy #$8C31.w		; C0 31 8C
	and #$10.b		; 29 10
	ora $0E00.w,Y		; 19 00 0E
	asl $28.b,X		; 16 28
	jmp ($B905.w,X)		; 7C 05 B9
	txa		; 8A
	cmp ($D4.b),Y		; D1 D4
	sbc ($E8.b,X)		; E1 E8
	cmp [$DF.b]		; C7 DF
	dec $F6.b		; C6 F6
	bra -16.b		; 80 F0
	asl $F6.b		; 06 F6
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$F0C0.w		; E0 C0 F0
	rts		; 60

	beq  96.b		; F0 60
	beq -64.b		; F0 C0
	rti		; 40

	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $00E0.w		; 20 E0 00
	cpx #$F000.w		; E0 00 F0
	bpl -16.b		; 10 F0
	bra   0.b		; 80 00
	tsb $0F07.w		; 0C 07 0F
	ora $07.b,S		; 03 07
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0B.b,S		; 03 0B
	ora $0F.b,S		; 03 0F
	ora ($07.b,X)		; 01 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bvs -116.b		; 70 8C
	bne -60.b		; D0 C4
	dey		; 88
	sep #$04		; E2 04
	adc ($00.b)		; 72 00
	and $1982.w,Y		; 39 82 19
	rti		; 40

	tsb $8021.w		; 0C 21 80
	cpx #$E020.w		; E0 20 E0
	bvs -16.b		; 70 F0
	sed		; F8
	sed		; F8
	jsr ($7CFC.w,X)		; FC FC 7C
	jmp ($3E3E.w,X)		; 7C 3E 3E
	asl $241E.w,X		; 1E 1E 24
	dey		; 88
	brk $44.b		; 00 44
	cop $64.b		; 02 64
	ora ($2A.b,X)		; 01 2A
	ora ($3A.b,X)		; 01 3A
	brk $13.b		; 00 13
	brk $19.b		; 00 19
	brk $19.b		; 00 19
	bvs 112.b		; 70 70
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	trb $14.b		; 14 14
	tsb $04.b		; 04 04
	tsb $060C.w		; 0C 0C 06
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	and ($00.b,X)		; 21 00
	ora [$00.b]		; 07 00
	dey		; 88
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F0F0F.l		; 0F 0F 0F 0F
	asl $781E.w,X		; 1E 1E 78
	sei		; 78
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $FC.b		; 00 FC
	php		; 08
	inc $F3C4.w,X		; FE C4 F3
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	bcs  -1.b		; B0 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp.w [$EE00]		; DC 00 EE
	sty $C4F6.w		; 8C F6 C4
	plx		; FA
	jsr $0058.w		; 20 58 00
	jsr $D0FE.w		; 20 FE D0
	ldy $9CF0.w,X		; BC F0 9C
	mvn $14,$3C		; 54 3C 14
	asl $1604.w,X		; 1E 04 16
	mvp $84,$67		; 44 67 84
	sbc [$08.b]		; E7 08
	jsr $3404.w		; 20 04 34
	tsb $50.b		; 04 50
	sty $30.b,X		; 94 30
	cpx $00.b		; E4 00
	inc $02.b		; E6 02
	stx $00.b		; 86 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$00.b		; E0 00
	rts		; 60

	jsr $0030.w		; 20 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	php		; 08
	cpy #$C0.b		; C0 C0
	rts		; 60

	brk $40.b		; 00 40
	rti		; 40

	bmi   0.b		; 30 00
	jsr $1000.w		; 20 00 10
	bpl  16.b		; 10 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0404.w		; 0C 04 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora [$01.b]		; 07 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	ora ($04.b,X)		; 01 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $07.b		; 06 07
	ora ($06.b,X)		; 01 06
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	cop $04.b		; 02 04
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	cop $00.b		; 02 00
	cop $04.b		; 02 04
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	php		; 08
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	tsb $04.b		; 04 04
	php		; 08
	brk $1C.b		; 00 1C
	ora $310655.l		; 0F 55 06 31
	lsr $32.b		; 46 32
	tsb $32.b		; 04 32
	tsb $E0.b		; 04 E0
	tsb $8864.w		; 0C 64 88
	pla		; 68
	brk $38.b		; 00 38
	bit $3F38.w,X		; 3C 38 3F
	sec		; 38
	tsa		; 3B
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	beq -16.b		; F0 F0
	ora [$08.b]		; 07 08
	ora $100608.l		; 0F 08 06 10
	ora $311E11.l		; 0F 11 1E 31
	jmp $736671.l		; 5C 71 66 73
	bmi 122.b		; 30 7A
	ora $000708.l		; 0F 08 07 00
	ora $101E00.l		; 0F 00 1E 10
	ora $400E01.l		; 0F 01 0E 40
	bit $3660.w		; 2C 60 36
	and ($29.b)		; 32 29
	cop $1A.b		; 02 1A
	jsr $0412.w		; 20 12 04
	mvn $24,$00		; 54 00 24
	pha		; 48
	jsr $4008.w		; 20 08 40
	tya		; 98
	pha		; 48
	bpl  28.b		; 10 1C
	trb $1C1C.w		; 1C 1C 1C
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FE.b		; 00 FE
	stx $9F.b		; 86 9F
	adc $0F2F2F.l		; 6F 2F 2F 0F
	bra  -1.b		; 80 FF
	ora $0000F8.l,X		; 1F F8 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	sbc $F7FF70.l,X		; FF 70 FF F7
	sbc $1096F6.l,X		; FF F6 96 10
	sei		; 78
	rts		; 60

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	ora ($06.b,X)		; 01 06
	brk $0E.b		; 00 0E
	tsb $0F.b		; 04 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	tsb $01.b		; 04 01
	asl $420A.w		; 0E 0A 42
	sta $F021.w,Y		; 99 21 F0
	ora ($60.b,X)		; 01 60
	brk $01.b		; 00 01
	sbc ($61.b)		; F2 61
	inc $FFF9.w,X		; FE F9 FF
	adc $F01F3F.l,X		; 7F 3F 1F F0
	sta [$40.b],Y		; 97 40
	eor [$80.b]		; 47 80
	sta $00.b,S		; 83 00
	sbc ($00.b,S),Y		; F3 00
	sbc $FF70.w,Y		; F9 70 FF
	and $FF03FF.l,X		; 3F FF 03 FF
	rol $C6.b		; 26 C6
	ora $DA0C.w		; 0D 0C DA
	clc		; 18
	eor ($80.b)		; 52 80
	eor ($88.b)		; 52 88
	and ($89.b)		; 32 89
	ldx #$19.b		; A2 19
	.db $62, $19, $02		; 62 19 02
	sbc $08FF04.l,X		; FF 04 FF 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	jsr $8020.w		; 20 20 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	rti		; 40

	and $9420.w,Y		; 39 20 94
	brk $78.b		; 00 78
	rts		; 60

	ora $65.b		; 05 65
	sta [$7F.b]		; 87 7F
	sta [$05.b]		; 87 05
	sta $0A.b		; 85 0A
	sbc ($0E.b)		; F2 0E
	sed		; F8
	ora $FF.b		; 05 FF
	ora $84.b,S		; 03 84
	ply		; 7A
	sed		; F8
	adc $7F78.w,X		; 7D 78 7F
	ply		; 7A
	adc $0D0F7B.l,X		; 7F 7B 0F 0D
	rts		; 60

	jsr $9030.w		; 20 30 90
	bmi -40.b		; 30 D8
	rts		; 60

	clc		; 18
	rts		; 60

	brk $DC.b		; 00 DC
	trb $1E0E.w		; 1C 0E 1E
	inc $3E.b		; E6 3E
	jsr $10E0.w		; 20 E0 10
	bvs   0.b		; 70 00
	clc		; 18
	cpx #$E0.b		; E0 E0
	cpx #$FC.b		; E0 FC
	cld		; D8
	inc $FFCC.w,X		; FE CC FF
	ldx $BF.b		; A6 BF
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	ora $03.b		; 05 03
	tsb $03.b		; 04 03
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	ora $02.b		; 05 02
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne  24.b		; D0 18
	bne  24.b		; D0 18
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	pla		; 68
	tsb $8CF8.w		; 0C F8 8C
	bmi -124.b		; 30 84
	bvs -60.b		; 70 C4
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	inx		; E8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	jsr ($3C84.w,X)		; FC 84 3C
	tsb $11.b		; 04 11
	asl A		; 0A
	ora ($12.b,X)		; 01 12
	jsl $102210.l		; 22 10 22 10
	brk $30.b		; 00 30
	rti		; 40

	jsr $2042.w		; 20 42 20
	rti		; 40

	jsr $0404.w		; 20 04 04
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $1C0C.w		; 0C 0C 1C
	trb $1C1C.w		; 1C 1C 1C
	asl $9C1E.w,X		; 1E 1E 9C
	rti		; 40

	tya		; 98
	mvp $00,$58		; 44 58 00
	pha		; 48
	jsr $200E.w		; 20 0E 20
	bit $2D12.w		; 2C 12 2D
	bpl  28.b		; 10 1C
	ora ($38.b,X)		; 01 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $1C3C.w,X		; 3C 3C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $0E0C.w		; 0C 0C 0E
	asl $0E0E.w		; 0E 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	rts		; 60

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	beq -64.b		; F0 C0
	beq  64.b		; F0 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bmi   0.b		; 30 00
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	trb $1C0C.w		; 1C 0C 1C
	tsb $0C.b		; 04 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	clc		; 18
	bpl  24.b		; 10 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	tsb $08.b		; 04 08
	tsb $08.b		; 04 08
	tsb $08.b		; 04 08
	tsb $18.b		; 04 18
	tsb $10.b		; 04 10
	ora #$10.b		; 09 10
	ora #$03.b		; 09 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $06.b,S		; 03 06
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	and ($20.b,X)		; 21 20
	eor $02.b,S		; 43 02
	eor ($42.b,X)		; 41 42
	sta ($02.b,X)		; 81 02
	sta ($80.b,X)		; 81 80
	ora ($81.b,X)		; 01 81
	brk $01.b		; 00 01
	brk $C0.b		; 00 C0
	rep #$80		; C2 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $090F00.l		; 0F 00 0F 09
	asl $0202.w		; 0E 02 02
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $0E0A.w		; 0E 0A 0E
	cop $0E.b		; 02 0E
	ora $29.b,S		; 03 29
	pea $EC17.w		; F4 17 EC
	ora ($E2.b),Y		; 11 E2
	phd		; 0B
	sei		; 78
	phd		; 0B
	sec		; 38
	ora ($18.b,X)		; 01 18
	cop $06.b		; 02 06
	bcc  96.b		; 90 60
	beq -122.b		; F0 86
	pei ($85.b)		; D4 85
	jmp $202742.l		; 5C 42 27 20
	ora [$10.b],Y		; 17 10
	ora $1C1D08.l		; 0F 08 1D 1C
	ora $1F04E7.l		; 0F E7 04 1F
	tsb $081E.w		; 0C 1E 08
	rol $3E18.w,X		; 3E 18 3E
	bpl 124.b		; 10 7C
	bmi 124.b		; 30 7C
	jsr $60FC.w		; 20 FC 60
	sed		; F8
	asl $1E02.w		; 0E 02 1E
	ora ($1C.b)		; 12 1C
	brk $3C.b		; 00 3C
	bit $3C.b		; 24 3C
	tsb $78.b		; 04 78
	rti		; 40

	sei		; 78
	php		; 08
	sed		; F8
	dey		; 88
	ora ($10.b,X)		; 01 10
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	ora $00.b		; 05 00
	phd		; 0B
	brk $1A.b		; 00 1A
	ora ($34.b,X)		; 01 34
	ora $34.b,S		; 03 34
	ora $08.b,S		; 03 08
	ora $000F0C.l		; 0F 0C 0F 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $621962.l,X		; 7F 62 19 62
	ora $0132.w,Y		; 19 32 01
	cop $C0.b		; 02 C0
	bvs  -7.b		; 70 F9
	jmp ($42FF.w,X)		; 7C FF 42
	cmp $5A.b,S		; C3 5A
	cmp $00.b,S		; C3 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $88FFC0.l,X		; FF C0 FF 88
	stx $8282.w		; 8E 82 82
	lda $3D81.w,X		; BD 81 3D
	ora ($20.b,X)		; 01 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	sta [$07.b]		; 87 07
	dec $3FCF.w		; CE CF 3F
	inc $FCFF.w,X		; FE FF FC
	asl $EEDC.w,X		; 1E DC EE
	jmp.w [$9AED]		; DC ED 9A
	sbc $307878.l		; EF 78 78 30
	rol $0C.b,X		; 36 0C
	cmp $1CFF7C.l		; CF 7C FF 1C
	sbc $CCFFCC.l,X		; FF CC FF CC
	sbc $41FF88.l,X		; FF 88 FF 41
	asl $23.b		; 06 23
	ora $81.b,S		; 03 81
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sbc $01DFC1.l,X		; FF C1 DF 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   5.b		; 80 05
	cop $09.b		; 02 09
	asl $1B.b		; 06 1B
	tsb $1F.b		; 04 1F
	brk $20.b		; 00 20
	clc		; 18
	adc $6D1E.w		; 6D 1E 6D
	asl $6201.w,X		; 1E 01 62
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	trb $9C1C.w		; 1C 1C 9C
	lsr $B8.b		; 46 B8
	.db $62, $C8, $22		; 62 C8 22
	bne  48.b		; D0 30
	dec $3E.b		; C6 3E
	dec $8E3F.w		; CE 3F 8E
	and $1126.w,Y		; 39 26 11
	sei		; 78
	rti		; 40

	trb $3E00.w		; 1C 00 3E
	jsl $17060E.l		; 22 0E 06 17
	ora [$06.b],Y		; 17 06
	ora $0E1F06.l		; 0F 06 1F 0E
	rol $0000.w,X		; 3E 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	jsr $F0F8.w		; 20 F8 F0
	jsr ($FEB8.w,X)		; FC B8 FE
	ldy #$FE.b		; A0 FE
	bpl -84.b		; 10 AC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sed		; F8
	sec		; 38
	jsr ($0C0C.w,X)		; FC 0C 0C
	brk $40.b		; 00 40
	jsr $0468.w		; 20 68 04
	sei		; 78
	brk $A0.b		; 00 A0
	bpl -32.b		; 10 E0
	bmi  64.b		; 30 40
	bmi -128.b		; 30 80
	jsr $4000.w		; 20 00 40
	brk $00.b		; 00 00
	cpy #$10.b		; C0 10
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$E0.b		; E0 E0
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	ora $0D.b		; 05 0D
	asl $06.b		; 06 06
	cop $13.b		; 02 13
	tsb $1C25.w		; 0C 25 1C
	bit $10.b		; 24 10
	eor $21.b		; 45 21
	eor $049B31.l		; 4F 31 9B 04
	ora $081F04.l		; 0F 04 1F 08
	ora [$18.b]		; 07 18
	ora $38.b,S		; 03 38
	and $3C.b,S		; 23 3C
	asl $78.b		; 06 78
	phk		; 4B
	rts		; 60

	ora [$0C.b]		; 07 0C
	ora $0E.b,S		; 03 0E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	rts		; 60

	adc ($10.b,X)		; 61 10
	bpl   8.b		; 10 08
	php		; 08
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $0E0E.w		; 1C 0E 0E
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3D.b		; 00 3D
	brk $2E.b		; 00 2E
	brk $27.b		; 00 27
	bpl  25.b		; 10 19
	tsb $0F.b		; 04 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $1F1F.w,X		; 1E 1F 1F
	ora $03030F.l		; 0F 0F 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bne   0.b		; D0 00
	bne  32.b		; D0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $28.b		; 00 28
	brk $30.b		; 00 30
	php		; 08
	bmi -120.b		; 30 88
	bmi -128.b		; 30 80
	bpl -128.b		; 10 80
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	tsb $0C1F.w		; 0C 1F 0C
	ora $1C3E1C.l,X		; 1F 1C 3E 1C
	rol $3E1C.w,X		; 3E 1C 3E
	trb $1C3E.w		; 1C 3E 1C
	bit $3C1C.w,X		; 3C 1C 3C
	asl $1E02.w,X		; 1E 02 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	jsr $003C.w		; 20 3C 00
	bit $3C00.w,X		; 3C 00 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	bit $3C08.w,X		; 3C 08 3C
	php		; 08
	bit $1C00.w,X		; 3C 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	bit $3C20.w,X		; 3C 20 3C
	jsr $101C.w		; 20 1C 10
	trb $0C10.w		; 1C 10 0C
	php		; 08
	tsb $0408.w		; 0C 08 04
	tsb $06.b		; 04 06
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	sty $30.b		; 84 30
	sty $34.b		; 84 34
	bra 100.b		; 80 64
	php		; 08
	pla		; 68
	brk $68.b		; 00 68
	bpl -64.b		; 10 C0
	bpl -48.b		; 10 D0
	brk $78.b		; 00 78
	sed		; F8
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $FD.b		; 00 FD
	tsb $DF3F.w		; 0C 3F DF
	eor $011F5F.l,X		; 5F 5F 1F 01
	sbc $00F13E.l,X		; FF 3E F1 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	inc $FFE0.w,X		; FE E0 FF
	inc $ECFF.w		; EE FF EC
	bit $F020.w		; 2C 20 F0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq  64.b		; F0 40
	beq -32.b		; F0 E0
	sed		; F8
	bvs  -4.b		; 70 FC
	rti		; 40

	jsr ($5820.w,X)		; FC 20 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq 112.b		; F0 70
	sed		; F8
	clc		; 18
	clc		; 18
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	bpl  63.b		; 10 3F
	jsr $407C.w		; 20 7C 40
	sed		; F8
	bra -16.b		; 80 F0
	bra -32.b		; 80 E0
	ora [$C4.b]		; 07 C4
	ora $1D0D.w		; 0D 0D 1D
	ora $38.b,X		; 15 38
	plp		; 28
	bvs  64.b		; 70 40
	beq -112.b		; F0 90
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	sty $0F.b		; 84 0F
	bra 114.b		; 80 72
	rti		; 40

	and #$00.b		; 29 00
	sbc ($C0.b),Y		; F1 C0
	asl A		; 0A
	dex		; CA
	asl $0EFF.w		; 0E FF 0E
	asl A		; 0A
	asl A		; 0A
	and $B4.b,X		; 35 B4
	trb $0AF1.w		; 1C F1 0A
	inc $0806.w,X		; FE 06 08
	sbc $F1.b,X		; F5 F1
	xce		; FB
	sbc ($FF.b),Y		; F1 FF
	sbc $CF.b,X		; F5 CF
	sbc [$07.b],Y		; F7 07
	tda		; 7B
	cpy #$40.b		; C0 40
	rts		; 60

	jsr $B060.w		; 20 60 B0
	cpy #$30.b		; C0 30
	cpy #$30.b		; C0 30
	cpx #$30.b		; E0 30
	ora [$17.b]		; 07 17
	cmp $13.b,S		; C3 13
	rti		; 40

	cpy #$20.b		; C0 20
	cpx #$00.b		; E0 00
	bmi -64.b		; 30 C0
	beq -64.b		; F0 C0
	cpy #$C0.b		; C0 C0
	cpy #$E7.b		; C0 E7
	cmp [$23.b]		; C7 23
	ora [$10.b]		; 07 10
	jmp ($7D10.w,X)		; 7C 10 7D
	bmi 121.b		; 30 79
	bmi 121.b		; 30 79
	bmi  -8.b		; 30 F8
	rts		; 60

	sed		; F8
	rts		; 60

	sbc $F860.w,Y		; F9 60 F8
	sec		; 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	pha		; 48
	sei		; 78
	php		; 08
	adc $7909.w,Y		; 79 09 79
	ora #$F8.b		; 09 F8
	dey		; 88
	beq -128.b		; F0 80
	jmp $E093.w		; 4C 93 E0
	bcs  75.b		; B0 4B
	adc [$3F.b]		; 67 3F
	adc $79FE7C.l,X		; 7F 7C FE 79
	sbc $70A3.w,X		; FD A3 70
	rti		; 40

	sta [$70.b]		; 87 70
	asl $40.b,X		; 16 40
	ora $9F3FA1.l		; 0F A1 3F 9F
	sbc $20FF38.l,X		; FF 38 FF 20
	sbc $40FF80.l,X		; FF 80 FF 40
	adc $7AFDEC.l,X		; 7F EC FD 7A
	sei		; 78
	ora ($90.b,S),Y		; 13 90
	jsr $2481.w		; 20 81 24
	sta ($24.b),Y		; 91 24
	sta ($44.b)		; 92 44
	and ($44.b)		; 32 44
	and ($44.b,S),Y		; 33 44
	inc $FF28.w,X		; FE 28 FF
	bpl  -1.b		; 10 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	brk $80.b		; 00 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$30.b		; E0 30
	jsr ($7C30.w,X)		; FC 30 7C
	sec		; 38
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	jmp ($3E18.w,X)		; 7C 18 3E
	php		; 08
	rol $3E08.w,X		; 3E 08 3E
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	rti		; 40

	sec		; 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	bit $1C.b		; 24 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	bpl   4.b		; 10 04
	trb $1C04.w		; 1C 04 1C
	tsb $1C.b		; 04 1C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	tsb $0C0E.w		; 0C 0E 0C
	asl $0C08.w		; 0E 08 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $B4.b		; 00 B4
	stx $8E30.w		; 8E 30 8E
	bvs -50.b		; 70 CE
	cop $FC.b		; 02 FC
	sta ($44.b)		; 92 44
	sei		; 78
	jsr ($F8FC.w,X)		; FC FC F8
	pea $7A80.w		; F4 80 7A
	asl A		; 0A
	jsr ($B48C.w,X)		; FC 8C B4
	sty $40.b		; 84 40
	rti		; 40

	sec		; 38
	sec		; 38
	bmi 120.b		; 30 78
	bmi  -8.b		; 30 F8
	sei		; 78
	sed		; F8
	asl $01.b		; 06 01
	asl $0A00.w		; 0E 00 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($D0.b,X)		; 01 D0
	jsr $2080.w		; 20 80 20
	bra  32.b		; 80 20
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	cpx #$00.b		; E0 00
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	eor ($E8.b)		; 52 E8
	rol $23D8.w		; 2E D8 23
	cpy $17.b		; C4 17
	beq  22.b		; F0 16
	bvs   3.b		; 70 03
	bmi   4.b		; 30 04
	tsb $C020.w		; 0C 20 C0
	sbc ($0C.b,X)		; E1 0C
	lda #$0A.b		; A9 0A
	lda $4F84.w,Y		; B9 84 4F
	rti		; 40

	and $101F21.l		; 2F 21 1F 10
	tsa		; 3B
	sec		; 38
	asl $D0CE.w,X		; 1E CE D0
	php		; 08
	beq   0.b		; F0 00
	rti		; 40

	jsr $60C0.w		; 20 C0 60
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $07.b,S		; 03 07
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	tsb $1F.b		; 04 1F
	tsb $081E.w		; 0C 1E 08
	rol $3E18.w,X		; 3E 18 3E
	bpl  60.b		; 10 3C
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $000E09.l		; 0F 09 0E 00
	asl $1C12.w,X		; 1E 12 1C
	brk $1C.b		; 00 1C
	tsb $3C.b		; 04 3C
	bit $0A.b		; 24 0A
	txs		; 9A
	tsb $048D.w		; 0C 8D 04
	rol $10.b,X		; 36 10
	dec A		; 3A
	bpl  73.b		; 10 49
	bmi  75.b		; 30 4B
	.db $62, $4F, $32		; 62 4F 32
	sta $089F88.l,X		; 9F 88 9F 08
	and $281F10.l,X		; 3F 10 1F 28
	and $300E38.l		; 2F 38 0E 30
	tsb $30.b		; 04 30
	asl $60.b		; 06 60
	asl $78.b		; 06 78
	ply		; 7A
	sbc ($F8.b)		; F2 F8
	sbc $FA.b,S		; E3 FA
	asl $86.b		; 06 86
	jmp ($F87E.w,X)		; 7C 7E F8
	jsr ($78F8.w,X)		; FC F8 78
	ldy $FE.b,X		; B4 FE
	and ($FD.b),Y		; 31 FD
	adc ($FD.b),Y		; 71 FD
	cpy #$FE.b		; C0 FE
	brk $FE.b		; 00 FE
	sec		; 38
	inc $FF78.w,X		; FE 78 FF
	sei		; 78
	sbc $E7FF30.l,X		; FF 30 FF E7
	and $07.b,X		; 35 07
	and ($C3.b)		; 32 C3
	inx		; E8
	sty $189C.w		; 8C 9C 18
	sec		; 38
	bmi 120.b		; 30 78
	jsr $0070.w		; 20 70 00
	rts		; 60

	sta $87.b		; 85 87
	rep #$87		; C2 87
	brk $1F.b		; 00 1F
	jmp $987E.w		; 4C 7E 98
	jsr ($FC30.w,X)		; FC 30 FC
	jsr $00F8.w		; 20 F8 00
	beq  96.b		; F0 60
	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	dey		; 88
	sed		; F8
	dey		; 88
	sei		; 78
	php		; 08
	ora ($61.b,X)		; 01 61
	tsb $40.b		; 04 40
	ora #$24.b		; 09 24
	ora ($0C.b),Y		; 11 0C
	and ($08.b,S),Y		; 33 08
	.db $62, $19, $6C		; 62 19 6C
	ora $1C.b,S		; 03 1C
	ora $18.b,S		; 03 18
	ora $003F30.l,X		; 1F 30 3F 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $C47F00.l,X		; FF 00 7F C4
	and ($C5.b,S),Y		; 33 C5
	and ($E7.b)		; 32 E7
	bpl   6.b		; 10 06
	brk $80.b		; 00 80
	sbc ($68.b,X)		; E1 68
	adc $31A6.w,Y		; 79 A6 31
	dec $11.b,X		; D6 11
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $1E.b		; 00 1E
	stx $00.b		; 86 00
	dec $EF00.w		; CE 00 EF
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	trb $0C10.w		; 1C 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0408.w		; 0C 08 04
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $01.b		; 04 01
	tsb $0603.w		; 0C 03 06
	cop $06.b		; 02 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$20.b		; C0 20
	bne   0.b		; D0 00
	inx		; E8
	bpl 112.b		; 10 70
	php		; 08
	bmi -120.b		; 30 88
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	cpx #$F0.b		; E0 F0
	beq 112.b		; F0 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora $020E02.l		; 0F 02 0E 02
	asl $0701.w		; 0E 01 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora $02.b,S		; 03 02
	tsb $04.b		; 04 04
	inc $FE11.w,X		; FE 11 FE
	ora ($FE.b),Y		; 11 FE
	ora ($EE.b),Y		; 11 EE
	ora ($E4.b,X)		; 01 E4
	ora ($70.b,X)		; 01 70
	ora ($7A.b,X)		; 01 7A
	phd		; 0B
	inc $8F.b,X		; F6 8F
	sbc $01EF01.l		; EF 01 EF 01
	sbc $01FF01.l		; EF 01 FF 01
	sbc $00FE01.l,X		; FF 01 FE 00
	pea $7800.w		; F4 00 78
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	jsr $2060.w		; 20 60 20
	bvs  48.b		; 70 30
	bvs  48.b		; 70 30
	bvs  16.b		; 70 10
	bmi  16.b		; 30 10
	bmi   1.b		; 30 01
	jsr $4060.w		; 20 60 40
	rts		; 60

	rti		; 40

	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $0600.w		; 20 00 06
	bpl  30.b		; 10 1E
	and ($1C.b),Y		; 31 1C
	and ($08.b),Y		; 31 08
	jsl $182604.l		; 22 04 26 18
	ror $10.b		; 66 10
	cpy $08.b		; C4 08
	jmp.w [$101F]		; DC 1F 10
	ora $000E01.l		; 0F 01 0E 00
	asl $3802.w,X		; 1E 02 38
	jsr $243C.w		; 20 3C 24
	jmp ($3044.w,X)		; 7C 44 30
	bmi   7.b		; 30 07
	bmi  39.b		; 30 27
	bpl  34.b		; 10 22
	ora $1922.w,Y		; 19 22 19
	cop $19.b		; 02 19
	ora ($09.b)		; 12 09
	ora ($09.b)		; 12 09
	cop $08.b		; 02 08
	asl $0E0E.w		; 0E 0E 0E
	asl $0606.w		; 0E 06 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	cop $0F.b		; 02 0F
	asl $1F.b		; 06 1F
	tsb $001F.w		; 0C 1F 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $07.b		; 02 07
	tsb $07.b		; 04 07
	brk $0F.b		; 00 0F
	ora ($1E.b,X)		; 01 1E
	bpl  48.b		; 10 30
	adc $FB60.w,Y		; 79 60 FB
	cpy #$F2.b		; C0 F2
	sta ($E7.b,X)		; 81 E7
	ora ($C9.b,X)		; 01 C9
	brk $8E.b		; 00 8E
	brk $9E.b		; 00 9E
	ora $1E.b,S		; 03 1E
	bvs   0.b		; 70 00
	beq  16.b		; F0 10
	cpx #$21.b		; E0 21
	cmp ($43.b,X)		; C1 43
	sta ($87.b,X)		; 81 87
	php		; 08
	ora #$0B.b		; 09 0B
	asl A		; 0A
	ora #$00.b		; 09 00
	jsr $18F6.w		; 20 F6 18
	sbc ($E4.b,X)		; E1 E4
	tya		; 98
	bvc  78.b		; 50 4E
	dey		; 88
	lda $80.b		; A5 80
	dec $4118.w,X		; DE 18 41
	ora $63A1.w,Y		; 19 A1 63
	cop $07.b		; 02 07
	ora $03F983.l,X		; 1F 83 F9 03
	inc $FF01.w,X		; FE 01 FF
	brk $E1.b		; 00 E1
	asl $9FFE.w,X		; 1E FE 9F
	dec $0860.w,X		; DE 60 08
	bra -112.b		; 80 90
	brk $00.b		; 00 00
	clc		; 18
	pha		; 48
	tsb $0C24.w		; 0C 24 0C
	rol $18.b,X		; 36 18
	lsr $58.b		; 46 58
	dec $F0.b		; C6 F0
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	cpy #$88.b		; C0 88
	sec		; 38
	mvp $C0,$DC		; 44 DC C0
	asl $B8.b		; 06 B8
	rol $3878.w,X		; 3E 78 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	eor $CF.b,S		; 43 CF
	lda [$97.b],Y		; B7 97
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -112.b		; F0 90
	sbc $7BFF38.l,X		; FF 38 FF 7B
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cpy #$E1.b		; C0 E1
	cpy #$E3.b		; C0 E3
	bra -29.b		; 80 E3
	bra -61.b		; 80 C3
	bra -61.b		; 80 C3
	bra -61.b		; 80 C3
	bra -61.b		; 80 C3
	bra -61.b		; 80 C3
	sbc ($21.b,X)		; E1 21
	cmp ($01.b,X)		; C1 01
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	cmp ($40.b,X)		; C1 40
	cmp ($40.b,X)		; C1 40
	cmp ($40.b,X)		; C1 40
	ora $CC9EDE.l,X		; 1F DE 9E CC
	dey		; 88
	cpx #$C0.b		; E0 C0
	sed		; F8
	cpy #$FC.b		; C0 FC
	cmp ($E4.b,X)		; C1 E4
	cmp $E0.b,S		; C3 E0
	dec $E1.b		; C6 E1
	ldy $A83F.w		; AC 3F A8
	and $E01FD0.l,X		; 3F D0 1F E0
	ora [$E0.b]		; 07 E0
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora [$E0.b]		; 07 E0
	ora $5E3F3E.l		; 0F 3E 3F 5E
	ror $FF2D.w,X		; 7E 2D FF
	tsa		; 3B
	and $A50E8E.l,X		; 3F 8E 0E A5
	trb $25.b		; 14 25
	bcc 101.b		; 90 65
	bpl  62.b		; 10 3E
	sbc $0CFF1E.l,X		; FF 1E FF 0C
	sbc $0AFF11.l,X		; FF 11 FF 0A
	sbc $00FF04.l,X		; FF 04 FF 00
	sbc $26FF00.l,X		; FF 00 FF 26
	ora ($0C.b,X)		; 01 0C
	jsr $220C.w		; 20 0C 22
	tsb $5800.w		; 0C 00 58
	brk $58.b		; 00 58
	tsb $10.b		; 04 10
	rti		; 40

	bpl  64.b		; 10 40
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1C1C.w,X		; 1E 1C 1C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3838.w,X		; 3C 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	brk $48.b		; 00 48
	tay		; A8
	bpl -104.b		; 10 98
	brk $80.b		; 00 80
	php		; 08
	bit $80.b,X		; 34 80
	dec A		; 3A
	bra   2.b		; 80 02
	bra   0.b		; 80 00
	inc $3030.w,X		; FE 30 30
	rts		; 60

	rts		; 60

	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	sei		; 78
	sei		; 78
	jmp ($7C7C.w,X)		; 7C 7C 7C
	jmp ($0000.w,X)		; 7C 00 00
	ora $40.b,S		; 03 40
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	brk $04.b		; 00 04
	ora #$04.b		; 09 04
	ora #$04.b		; 09 04
	rti		; 40

	eor ($00.b,X)		; 41 00
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $70.b,S		; 03 70
	cpx $F8.b		; E4 F8
	jsr ($1878.w,X)		; FC 78 18
	rts		; 60

	php		; 08
	cpx #$10.b		; E0 10
	cpy #$00.b		; C0 00
	cpy #$20.b		; C0 20
	bra   0.b		; 80 00
	sec		; 38
	sed		; F8
	bvs  -4.b		; 70 FC
	beq  -8.b		; F0 F8
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $08.b		; 00 08
	cop $08.b		; 02 08
	phd		; 0B
	tsb $0B.b		; 04 0B
	tsb $09.b		; 04 09
	tsb $08.b		; 04 08
	tsb $08.b		; 04 08
	ora [$07.b]		; 07 07
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	bra  32.b		; 80 20
	cpy #$30.b		; C0 30
	beq  12.b		; F0 0C
	brk $02.b		; 00 02
	cpy #$3E.b		; C0 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	jsr ($00FC.w,X)		; FC FC 00
	brk $0C.b		; 00 0C
	rol $3E18.w,X		; 3E 18 3E
	clc		; 18
	jmp ($7C30.w,X)		; 7C 30 7C
	bmi  -8.b		; 30 F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	beq  30.b		; F0 1E
	cop $3C.b		; 02 3C
	jsr $043C.w		; 20 3C 04
	sei		; 78
	rti		; 40

	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	beq  16.b		; F0 10
	ora ($1C.b,X)		; 01 1C
	ora $3C.b,S		; 03 3C
	ora [$39.b]		; 07 39
	tsb $79.b		; 04 79
	php		; 08
	ply		; 7A
	php		; 08
	adc $F703.w,Y		; 79 03 F7
	ora [$EF.b],Y		; 17 EF
	tas		; 1B
	bpl  31.b		; 10 1F
	tsb $16.b		; 04 16
	brk $37.b		; 00 37
	and ($36.b,X)		; 21 36
	ora $60.b,S		; 03 60
	eor [$61.b]		; 47 61
	eor $851F53.l		; 4F 53 1F 85
	cmp $DE0E.w		; CD 0E DE
	trb $38BC.w		; 1C BC 38
	sei		; 78
	and ($F1.b,X)		; 21 F1
	sta $E7.b,S		; 83 E7
	sta $BF8FDF.l		; 8F DF 8F BF
	ora ($3E.b,X)		; 01 3E
	sty $18BF.w		; 8C BF 18
	adc $00FF30.l,X		; 7F 30 FF 00
	sbc $8FFF83.l,X		; FF 83 FF 8F
	sbc $F8FF0F.l,X		; FF 0F FF F8
	cpy $44.b		; C4 44
	rti		; 40

	ldy $1C82.w,X		; BC 82 1C
	rep #$C8		; C2 C8
	sty $E0.b		; 84 E0
	pei ($90.b)		; D4 90
	sed		; F8
	ora ($B8.b),Y		; 11 B8
	plx		; FA
	clv		; B8
	inc $E6F8.w,X		; FE F8 E6
	.db $62, $34, $30		; 62 34 30
	bit $B4.b,X		; 34 B4
	php		; 08
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cmp [$00.b]		; C7 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $081F04.l		; 0F 04 1F 08
	rol $7C10.w,X		; 3E 10 7C
	bmi  -7.b		; 30 F9
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora [$05.b]		; 07 05
	asl $1C08.w		; 0E 08 1C
	bpl  56.b		; 10 38
	jsr $0070.w		; 20 70 00
	sta [$87.b],Y		; 97 87
	rti		; 40

	sbc $14FC0F.l,X		; FF 0F FC 14
	plx		; FA
	phd		; 0B
	ror $08.b,X		; 76 08
	adc ($05.b),Y		; 71 05
	jsr ($FC25.w,X)		; FC 25 FC
	sbc $88CBFB.l,X		; FF FB CB 88
	bit $7830.w,X		; 3C 30 78
	eor $6A.b,S		; 43 6A
	.db $42, $2E		; 42 2E
	and ($13.b,X)		; 21 13
	bpl 107.b		; 10 6B
	php		; 08
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bra -63.b		; 80 C1
	bra -63.b		; 80 C1
	bra -63.b		; 80 C1
	bra -63.b		; 80 C1
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$E0.b		; C0 E0
	rti		; 40

	cpx #$C1.b		; E0 C1
	eor ($C1.b,X)		; 41 C1
	eor ($C0.b,X)		; 41 C0
	rti		; 40

	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy $D8E3.w		; CC E3 D8
	dec $D0.b		; C6 D0
	dec $EC61.w		; CE 61 EC
	adc ($F4.b,X)		; 61 F4
	and ($F0.b,X)		; 21 F0
	bmi -16.b		; 30 F0
	bpl 123.b		; 10 7B
	cpx #$1F.b		; E0 1F
	cpy #$3F.b		; C0 3F
	cpy #$3F.b		; C0 3F
	cpx #$1F.b		; E0 1F
	beq -113.b		; F0 8F
	beq -121.b		; F0 87
	bvs  67.b		; 70 43
	adc $6541.w,Y		; 79 41 65
	bpl -60.b		; 10 C4
	and ($C8.b)		; 32 C8
	rol $C8.b		; 26 C8
	and [$88.b]		; 27 88
	adc [$98.b]		; 67 98
	eor [$18.b]		; 47 18
	lsr $00.b		; 46 00
	bra   0.b		; 80 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $08FF80.l,X		; FF 80 FF 08
	trb $1C08.w		; 1C 08 1C
	tsb $1C.b		; 04 1C
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	trb $1C00.w		; 1C 00 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	asl A		; 0A
	asl $0608.w		; 0E 08 06
	tsb $06.b		; 04 06
	tsb $40.b		; 04 40
	bpl  96.b		; 10 60
	bpl 112.b		; 10 70
	clc		; 18
	ldy #$88.b		; A0 88
	bcs -120.b		; B0 88
	cli		; 58
	cpy $C450.w		; CC 50 C4
	plp		; 28
	cpx $E0.b		; E4 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	bcs -128.b		; B0 80
	clv		; B8
	bra  92.b		; 80 5C
	mvp $E4,$2C		; 44 2C E4
	bpl 114.b		; 10 72
	trb $72.b		; 14 72
	tsb $0A3A.w		; 0C 3A 0A
	tsa		; 3B
	asl $003F.w		; 0E 3F 00
	and $583900.l,X		; 3F 00 39 58
	rti		; 40

	bit $2C20.w		; 2C 20 2C
	jsr $1216.w		; 20 16 12
	trb $10.b		; 14 10
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	asl $16.b,X		; 16 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E.b		; 06 0E
	tas		; 1B
	ora $F80B39.l		; 0F 39 0B F8
	adc $E0.b		; 65 E0
	beq -128.b		; F0 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $1F0B.w		; 0E 0B 1F
	ora #$7F.b		; 09 7F
	brk $FF.b		; 00 FF
	cpy #$FE.b		; C0 FE
	brk $E0.b		; 00 E0
	ora $7E1F7E.l		; 0F 7E 1F 7E
	eor [$30.b],Y		; 57 30
	eor [$30.b]		; 47 30
	eor [$30.b]		; 47 30
	eor [$30.b]		; 47 30
	eor [$30.b]		; 47 30
	eor [$30.b]		; 47 30
	tsb $0E.b		; 04 0E
	tsb $3E.b		; 04 3E
	asl $0E7E.w		; 0E 7E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $0E0E.w		; 0E 0E 0E
	ora ($F7.b),Y		; 11 F7
	cop $7E.b		; 02 7E
	ora $3C.b		; 05 3C
	ora $1C.b		; 05 1C
	ora $08.b,S		; 03 08
	phd		; 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora [$10.b]		; 07 10
	ror $46.b,X		; 76 46
	and $24.b,X		; 35 24
	ora ($00.b,S),Y		; 13 00
	phd		; 0B
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora $3F2110.l,X		; 1F 10 21 3F
	lda ($3F.b,X)		; A1 3F
	lda ($37.b,X)		; A1 37
	bra  35.b		; 80 23
	bra  35.b		; 80 23
	bra  65.b		; 80 41
	brk $41.b		; 00 41
	brk $80.b		; 00 80
	cmp ($12.b)		; D2 12
	cmp ($12.b)		; D2 12
	rep #$02		; C2 02
	sbc ($21.b,X)		; E1 21
	cmp ($01.b,X)		; C1 01
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	bpl  -4.b		; 10 FC
	sed		; F8
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	brk $FC.b		; 00 FC
	stz $FFDC.w		; 9C DC FF
	bvc  -1.b		; 50 FF
	dey		; 88
	lsr $B4.b,X		; 56 B4
	cop $BC.b		; 02 BC
	brk $D0.b		; 00 D0
	php		; 08
	beq  24.b		; F0 18
	ldy #$18.b		; A0 18
	inc $0606.w,X		; FE 06 06
	brk $20.b		; 00 20
	bpl  96.b		; 10 60
	php		; 08
	rts		; 60

	bcc  96.b		; 90 60
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bvs  15.b		; 70 0F
	adc [$1F.b]		; 67 1F
	cmp $0CCE9C.l		; CF 9C CE 0C
	rti		; 40

	brk $70.b		; 00 70
	rti		; 40

	jsr $A000.w		; 20 00 A0
	jsr $0390.w		; 20 90 03
	sta $A0BF26.l,X		; 9F 26 BF A0
	lda $00BE20.l,X		; BF 20 BE 00
	cpy $F000.w		; CC 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	plp		; 28
	bcc  24.b		; 90 18
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	jsr $0040.w		; 20 40 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	bcs -104.b		; B0 98
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bvs -112.b		; 70 90
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	tsb $00.b		; 04 00
	ora $203F10.l,X		; 1F 10 3F 20
	jmp ($F840.w,X)		; 7C 40 F8
	bra -16.b		; 80 F0
	bra -32.b		; 80 E0
	ora [$C4.b]		; 07 C4
	asl A		; 0A
	txs		; 9A
	ora $3815.w,X		; 1D 15 38
	plp		; 28
	bvs  64.b		; 70 40
	beq -112.b		; F0 90
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	sty $0F.b		; 84 0F
	dey		; 88
	sta $23D82E.l,X		; 9F 2E D8 23
	cpy $17.b		; C4 17
	beq  22.b		; F0 16
	bvs   3.b		; 70 03
	bmi   4.b		; 30 04
	tsb $C020.w		; 0C 20 C0
	bra 114.b		; 80 72
	lda #$0A.b		; A9 0A
	lda $4F84.w,Y		; B9 84 4F
	rti		; 40

	and $101F21.l		; 2F 21 1F 10
	tsa		; 3B
	sec		; 38
	asl $1CCE.w,X		; 1E CE 1C
	sbc ($F0.b),Y		; F1 F0
	brk $40.b		; 00 40
	jsr $60C0.w		; 20 C0 60
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$10.b		; C0 10
	adc $7930.w,X		; 7D 30 79
	bmi 121.b		; 30 79
	bmi  -8.b		; 30 F8
	rts		; 60

	sed		; F8
	rts		; 60

	sbc $F860.w,Y		; F9 60 F8
	rts		; 60

	sed		; F8
	sec		; 38
	brk $78.b		; 00 78
	pha		; 48
	sei		; 78
	php		; 08
	adc $7909.w,Y		; 79 09 79
	ora #$F8.b		; 09 F8
	dey		; 88
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	cpx #$B0.b		; E0 B0
	phk		; 4B
	adc [$3F.b]		; 67 3F
	adc $79FE7C.l,X		; 7F 7C FE 79
	sbc $70A3.w,X		; FD A3 70
	rti		; 40

	sta [$01.b]		; 87 01
	adc ($40.b,X)		; 61 40
	ora $9F3FA1.l		; 0F A1 3F 9F
	sbc $20FF38.l,X		; FF 38 FF 20
	sbc $40FF80.l,X		; FF 80 FF 40
	adc $F21F18.l,X		; 7F 18 1F F2
	sed		; F8
	sbc $FA.b,S		; E3 FA
	asl $86.b		; 06 86
	jmp ($F87E.w,X)		; 7C 7E F8
	jsr ($78F8.w,X)		; FC F8 78
	ldy $FE.b,X		; B4 FE
	cpx $71FD.w		; EC FD 71
	sbc $FEC0.w,X		; FD C0 FE
	brk $FE.b		; 00 FE
	sec		; 38
	inc $FF78.w,X		; FE 78 FF
	sei		; 78
	sbc $44FF30.l,X		; FF 30 FF 44
	inc $3207.w,X		; FE 07 32
	cmp $E8.b,S		; C3 E8
	sty $189C.w		; 8C 9C 18
	sec		; 38
	bmi 120.b		; 30 78
	jsr $0070.w		; 20 70 00
	rts		; 60

	brk $00.b		; 00 00
	rep #$87		; C2 87
	brk $1F.b		; 00 1F
	jmp $987E.w		; 4C 7E 98
	jsr ($FC30.w,X)		; FC 30 FC
	jsr $00F8.w		; 20 F8 00
	beq -128.b		; F0 80
	cpx #$02.b		; E0 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $0B.b,S		; 03 0B
	ora [$03.b]		; 07 03
	ora $130811.l		; 0F 11 08 13
	php		; 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($07.b,X)		; 01 07
	ora ($0F.b,X)		; 01 0F
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	.db $62, $1C, $62		; 62 1C 62
	trb $2834.w		; 1C 34 28
	trb $F4E0.w		; 1C E0 F4
	inx		; E8
	cpx $D8.b		; E4 D8
	jsr $4048.w		; 20 48 40
	plp		; 28
	sed		; F8
	clc		; 18
	inx		; E8
	php		; 08
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	bra -64.b		; 80 C0
	bcc -112.b		; 90 90
	bcc -112.b		; 90 90
	asl $40.b,X		; 16 40
	ldx #$48.b		; A2 48
	ldx #$48.b		; A2 48
	tax		; AA
	brk $22.b		; 00 22
	bra   2.b		; 80 02
	bra  34.b		; 80 22
	php		; 08
	adc ($08.b)		; 72 08
	and $3139.w,Y		; 39 39 31
	and ($31.b),Y		; 31 31
	and ($71.b),Y		; 31 71
	adc ($71.b),Y		; 71 71
	adc ($71.b),Y		; 71 71
	adc ($F1.b),Y		; 71 F1
	sbc ($F1.b),Y		; F1 F1
	sbc ($20.b),Y		; F1 20
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	jsr $20C0.w		; 20 C0 20
	cpy #$10.b		; C0 10
	jsr $1008.w		; 20 08 10
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	ora $18.b,S		; 03 18
	ora $40.b,S		; 03 40
	php		; 08
	jmp ($7303.w,X)		; 7C 03 73
	ora ($31.b,X)		; 01 31
	asl $30.b		; 06 30
	ora [$30.b]		; 07 30
	ora [$10.b]		; 07 10
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	trb $17.b		; 14 17
	trb $1E10.w		; 1C 10 1E
	bpl  31.b		; 10 1F
	bpl  31.b		; 10 1F
	bpl  15.b		; 10 0F
	brk $14.b		; 00 14
	iny		; C8
	stz $1840.w		; 9C 40 18
	brk $00.b		; 00 00
	sty $A0.b		; 84 A0
	cpx $98.b		; E4 98
	cpy $58.b		; C4 58
	mvp $44,$F8		; 44 F8 44
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	bra  -8.b		; 80 F8
	clc		; 18
	brk $38.b		; 00 38
	brk $BC.b		; 00 BC
	tsb $BC.b		; 04 BC
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1E00.w,X		; 1E 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	tsb $0C00.w		; 0C 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $0408.w		; 0C 08 04
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	ora $040F06.l		; 0F 06 0F 04
	ora $081E0C.l,X		; 1F 0C 1E 08
	rol $3E18.w,X		; 3E 18 3E
	bpl  60.b		; 10 3C
	bpl 124.b		; 10 7C
	ora [$00.b]		; 07 00
	ora $000E09.l		; 0F 09 0E 00
	asl $1C12.w,X		; 1E 12 1C
	brk $1C.b		; 00 1C
	tsb $3C.b		; 04 3C
	bit $38.b		; 24 38
	brk $0C.b		; 00 0C
	sta $3604.w		; 8D 04 36
	bpl  58.b		; 10 3A
	bpl  73.b		; 10 49
	bmi  75.b		; 30 4B
	.db $62, $4F, $32		; 62 4F 32
	sta $08934C.l,X		; 9F 4C 93 08
	and $281F10.l,X		; 3F 10 1F 28
	and $300E38.l		; 2F 38 0E 30
	tsb $30.b		; 04 30
	asl $60.b		; 06 60
	asl $70.b		; 06 70
	asl $40.b,X		; 16 40
	and #$00.b		; 29 00
	sbc ($C0.b),Y		; F1 C0
	asl A		; 0A
	dex		; CA
	asl $0EFF.w		; 0E FF 0E
	asl A		; 0A
	asl A		; 0A
	and $B4.b,X		; 35 B4
	sei		; 78
	ply		; 7A
	asl A		; 0A
	inc $0806.w,X		; FE 06 08
	sbc $F1.b,X		; F5 F1
	xce		; FB
	sbc ($FF.b),Y		; F1 FF
	sbc $CF.b,X		; F5 CF
	sbc [$07.b],Y		; F7 07
	tda		; 7B
	and ($FD.b),Y		; 31 FD
	rts		; 60

	jsr $B060.w		; 20 60 B0
	cpy #$30.b		; C0 30
	cpy #$30.b		; C0 30
	cpx #$30.b		; E0 30
	ora [$17.b]		; 07 17
	cmp $13.b,S		; C3 13
	sbc [$35.b]		; E7 35
	jsr $00E0.w		; 20 E0 00
	bmi -64.b		; 30 C0
	beq -64.b		; F0 C0
	cpy #$C0.b		; C0 C0
	cpy #$E7.b		; C0 E7
	cmp [$23.b]		; C7 23
	ora [$85.b]		; 07 85
	sta [$60.b]		; 87 60
	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bmi  -4.b		; 30 FC
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	dey		; 88
	sed		; F8
	bit #$78.b		; 89 78
	php		; 08
	sei		; 78
	brk $04.b		; 00 04
	rti		; 40

	ora #$24.b		; 09 24
	ora ($0C.b),Y		; 11 0C
	and ($08.b,S),Y		; 33 08
	.db $62, $19, $6C		; 62 19 6C
	ora $1C.b,S		; 03 1C
	ora $18.b,S		; 03 18
	asl $30.b		; 06 30
	and $001F00.l,X		; 3F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $7A7F00.l,X		; FF 00 7F 7A
	sei		; 78
	ora ($90.b,S),Y		; 13 90
	jsr $2481.w		; 20 81 24
	sta ($24.b),Y		; 91 24
	sta ($44.b)		; 92 44
	and ($44.b)		; 32 44
	and ($C4.b,S),Y		; 33 C4
	and ($28.b,S),Y		; 33 28
	sbc $00FF10.l,X		; FF 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$23.b		; E0 23
	bpl  38.b		; 10 26
	bpl   6.b		; 10 06
	and ($0D.b,X)		; 21 0D
	jsr $220D.w		; 20 0D 22
	lsr A		; 4A
	ora ($5A.b,X)		; 01 5A
	ora $12.b		; 05 12
	eor $0F.b		; 45 0F
	ora $1E0F0F.l		; 0F 0F 0F 1E
	asl $1E1E.w,X		; 1E 1E 1E
	trb $3C1C.w		; 1C 1C 3C
	bit $3838.w,X		; 3C 38 38
	sec		; 38
	sec		; 38
	rti		; 40

	tya		; 98
	dey		; 88
	bvc -128.b		; 50 80
	bvc   0.b		; 50 00
	bne  16.b		; D0 10
	ldy #$00.b		; A0 00
	ldy #$00.b		; A0 00
	jsr $6000.w		; 20 00 60
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	adc ($88.b)		; 72 88
	tsx		; BA
	tsb $39.b		; 04 39
	.db $42, $48		; 42 48
	cop $3C.b		; 02 3C
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $71.b		; 00 71
	adc ($79.b),Y		; 71 79
	adc $3C3C.w,Y		; 79 3C 3C
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	php		; 08
	ora ($02.b,X)		; 01 02
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	jsr ($00FC.w,X)		; FC FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	brk $06.b		; 00 06
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	sed		; F8
	mvp $44,$F0		; 44 F0 44
	bcs   4.b		; B0 04
	bcc   4.b		; 90 04
	dey		; 88
	tsb $2CA8.w		; 0C A8 2C
	bcc  60.b		; 90 3C
	cpy $38.b		; C4 38
	ldy $BC04.w,X		; BC 04 BC
	tsb $FC.b		; 04 FC
	tsb $FC.b		; 04 FC
	tsb $F0.b		; 04 F0
	brk $D0.b		; 00 D0
	brk $E8.b		; 00 E8
	plp		; 28
	sed		; F8
	sec		; 38
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	tsb $0C0E.w		; 0C 0E 0C
	asl $0C08.w		; 0E 08 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	jmp ($7C38.w,X)		; 7C 38 7C
	clc		; 18
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	rol $3E08.w,X		; 3E 08 3E
	php		; 08
	rol $1E08.w,X		; 3E 08 1E
	sei		; 78
	brk $78.b		; 00 78
	rti		; 40

	sec		; 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	bit $1C.b		; 24 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	cpx #$00.b		; E0 00
	sbc $B7CF43.l,X		; FF 43 CF B7
	sta [$97.b],Y		; 97 97
	sta [$40.b]		; 87 40
	sbc $14FC0F.l,X		; FF 0F FC 14
	plx		; FA
	brk $00.b		; 00 00
	beq -112.b		; F0 90
	sbc $7BFF38.l,X		; FF 38 FF 7B
	sbc $88CBFB.l,X		; FF FB CB 88
	bit $7830.w,X		; 3C 30 78
	eor $00.b,S		; 43 00
	sec		; 38
	brk $7C.b		; 00 7C
	bpl  -4.b		; 10 FC
	sed		; F8
	inc $FFDC.w,X		; FE DC FF
	bvc  -1.b		; 50 FF
	dey		; 88
	lsr $B4.b,X		; 56 B4
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $FC.b		; 00 FC
	stz $06FE.w		; 9C FE 06
	asl $00.b		; 06 00
	jsr $6010.w		; 20 10 60
	php		; 08
	brk $02.b		; 00 02
	tsb $02.b		; 04 02
	ora #$04.b		; 09 04
	ora ($08.b),Y		; 11 08
	jsl $210610.l		; 22 10 06 21
	ora $1D20.w		; 0D 20 1D
	jsl $010101.l		; 22 01 01 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora $1E1E1E.l		; 0F 1E 1E 1E
	asl $1C1C.w,X		; 1E 1C 1C
	cmp #$16.b		; C9 16
	bcc  42.b		; 90 2A
	jsl $A44050.l		; 22 50 40 A4
	sty $8040.w		; 8C 40 80
	rti		; 40

	bcc   8.b		; 90 08
	clc		; 18
	bra -32.b		; 80 E0
	cpx #$C4.b		; E0 C4
	cpy $8C.b		; C4 8C
	sty $1818.w		; 8C 18 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora ($0C.b,X)		; 01 0C
	brk $1E.b		; 00 1E
	bpl  35.b		; 10 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora $101D.w,X		; 1D 1D 10
	bvs  10.b		; 70 0A
	dex		; CA
	ora $E5.b,X		; 15 E5
	jmp $046CC5.l		; 5C C5 6C 04
	ldx #$39.b		; A2 39
	sta ($FB.b,X)		; 81 FB
	ora $E3.b		; 05 E3
	bvs  79.b		; 70 4F
	rti		; 40

	and $B43F24.l,X		; 3F 24 3F B4
	sta $D80FF0.l		; 8F F0 0F D8
	ora $806760.l,X		; 1F 60 67 80
	sta [$C8.b]		; 87 C8
	and $0660.w,Y		; 39 60 06
	and ($50.b,X)		; 21 50
	ora ($28.b,S),Y		; 13 28
	clc		; 18
	tsb $80.b		; 04 80
	ldx $C281.w,Y		; BE 81 C2
	lda ($C3.b)		; B2 C3
	asl $D0.b,X		; 16 D0
	php		; 08
	sbc $FF06.w,Y		; F9 06 FF
	ora $FC.b,S		; 03 FC
	ora ($FE.b,X)		; 01 FE
	brk $C3.b		; 00 C3
	ldy $BEBC.w,X		; BC BC BE
	ldy $0000.w,X		; BC 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rts		; 60

	rti		; 40

	ldy #$40.b		; A0 40
	brk $A0.b		; 00 A0
	cpy #$90.b		; C0 90
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$60.b		; E0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	cop $1E.b		; 02 1E
	ora $1C.b		; 05 1C
	tsb $1C.b		; 04 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $030F09.l		; 0F 09 0F 03
	ora $000007.l		; 0F 07 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	clc		; 18
	adc $BEBFBF.l,X		; 7F BF BF BE
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -3.b		; 80 FD
	cpy #$FF.b		; C0 FF
	jmp.w [$D8FF]		; DC FF D8
	ora ($3C.b,X)		; 01 3C
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	cop $05.b		; 02 05
	ora [$04.b]		; 07 04
	phd		; 0B
	asl A		; 0A
	ora $05.b		; 05 05
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cpx #$08.b		; E0 08
	inx		; E8
	tsb $0470.w		; 0C 70 04
	bit $5886.w,X		; 3C 86 58
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	sep #$0C		; E2 0C
	sbc ($1C.b,X)		; E1 1C
	sbc ($F8.b),Y		; F1 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	bra  62.b		; 80 3E
	cop $5C.b		; 02 5C
	rti		; 40

	rol $6E20.w,X		; 3E 20 6E
	rts		; 60

	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	cop $1F.b		; 02 1F
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	tsb $073F.w		; 0C 3F 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	ora ($0F.b,X)		; 01 0F
	asl A		; 0A
	ora $090F04.l		; 0F 04 0F 09
	ora $001E11.l,X		; 1F 11 1E 00
	ora $9E0EBF.l,X		; 1F BF 0E 9E
	ora ($AC.b,X)		; 01 AC
	ora $A0.b		; 05 A0
	asl A		; 0A
	ldy #$2012.w		; A0 12 20
	ora ($20.b)		; 12 20
	cop $20.b		; 02 20
	stz $8C7F.w,X		; 9E 7F 8C
	lda $109F80.l,X		; BF 80 9F 10
	tas		; 1B
	bpl  23.b		; 10 17
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	ora $1E8739.l,X		; 1F 39 87 1E
	eor ($07.b,S),Y		; 53 07
	eor #$8A11.w		; 49 11 8A
	bvc -107.b		; 50 95
	pha		; 48
	sta ($4C.b)		; 92 4C
	sta $0846.w,Y		; 99 46 08
	sbc $01FF02.l,X		; FF 02 FF 01
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $84FF00.l,X		; FF 00 FF 84
	sty $CE.b		; 84 CE
	stx $5FCF.w		; 8E CF 5F
	lda [$8F.b]		; A7 8F
	bcs -122.b		; B0 86
	rts		; 60

	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $84.b		; 00 84
	jsr ($FE0E.w,X)		; FC 0E FE
	ora [$FF.b]		; 07 FF
	sta $DF.b,S		; 83 DF
	brk $EF.b		; 00 EF
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	bvs 112.b		; 70 70
	jsr $0020.w		; 20 20 00
	brk $30.b		; 00 30
	jmp ($7C30.w,X)		; 7C 30 7C
	bmi 124.b		; 30 7C
	bpl 120.b		; 10 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	jmp ($7844.w,X)		; 7C 44 78
	rti		; 40

	sei		; 78
	pha		; 48
	sec		; 38
	php		; 08
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	tas		; 1B
	rti		; 40

	ora $1544.w,Y		; 19 44 15
	rti		; 40

	bpl  65.b		; 10 41
	bpl  73.b		; 10 49
	pha		; 48
	and ($20.b,X)		; 21 20
	ora ($00.b),Y		; 11 00
	brk $3C.b		; 00 3C
	bit $3838.w,X		; 3C 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	jsr $2080.w		; 20 80 20
	bcc 112.b		; 90 70
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ldy #$2000.w		; A0 00 20
	rti		; 40

	jsr $7070.w		; 20 70 70
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	cpx #$E0E0.w		; E0 E0 E0
	cpx #$4040.w		; E0 40 40
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0120.w		; C0 20 01
	asl $1F0E.w		; 0E 0E 1F
	ora $071F0F.l		; 0F 0F 1F 07
	ora $030307.l		; 0F 07 03 03
	ora $1C01.w,Y		; 19 01 1C
	bmi  62.b		; 30 3E
	bit $3F.b		; 24 3F
	asl $073F.w		; 0E 3F 07
	and $011F03.l,X		; 3F 03 1F 01
	ora $0C0F08.l		; 0F 08 0F 0C
	phd		; 0B
	brk $E3.b		; 00 E3
	cop $C5.b		; 02 C5
	sta $48.b		; 85 48
	dey		; 88
	eor ($D0.b),Y		; 51 D0
	sta ($A0.b,X)		; 81 A0
	cmp ($C8.b,X)		; C1 C8
	sbc ($7C.b),Y		; F1 7C
	sed		; F8
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	tsb $87.b		; 04 87
	tsb $1C8F.w		; 0C 8F 1C
	cmp $80FF9C.l,X		; DF 9C FF 80
	sbc $BBFF78.l,X		; FF 78 FF BB
	cmp $3A.b,S		; C3 3A
	rep #$0F		; C2 0F
	sbc ($A0.b),Y		; F1 A0
	eor $DB.b,S		; 43 DB
	sbc [$E7.b]		; E7 E7
	sbc $FEFF7E.l,X		; FF 7E FF FE
	ora $3FBD3F.l,X		; 1F 3F BD 3F
	lda $8001.w,X		; BD 01 80
	bit $18BD.w,X		; 3C BD 18
	stp		; DB
	cop $E7.b		; 02 E7
	rol $0EFF.w,X		; 3E FF 0E
	sbc $8090C0.l,X		; FF C0 90 80
	bcc -64.b		; 90 C0
	bmi  64.b		; 30 40
	ldy #$C000.w		; A0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E060.w		; E0 60 E0
	cpx #$0000.w		; E0 00 00
	rti		; 40

	rti		; 40

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	cop $1F.b		; 02 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	php		; 08
	and $103C08.l,X		; 3F 08 3C 10
	jmp ($0406.w,X)		; 7C 06 04
	ora ($01.b,X)		; 01 01
	phd		; 0B
	asl A		; 0A
	phd		; 0B
	asl A		; 0A
	ora $1C15.w,X		; 1D 15 1C
	tsb $38.b		; 04 38
	jsr $0838.w		; 20 38 08
	cop $FF.b		; 02 FF
	jmp ($A5E2.w,X)		; 7C E2 A5
	bne  93.b		; D0 5D
	bcs  70.b		; B0 46
	dey		; 88
	eor $E02DC0.l		; 4F C0 2D E0
	asl $E0.b		; 06 E0
	cli		; 58
	rti		; 40

	sbc ($80.b,X)		; E1 80
	cmp $18.b,S		; C3 18
	eor ($14.b,S),Y		; 53 14
	adc ($08.b,S),Y		; 73 08
	lda $031F80.l,X		; BF 80 1F 03
	and $000720.l,X		; 3F 20 07 00
	ora $040800.l		; 0F 00 08 04
	ora ($08.b),Y		; 11 08
	ora $10.b,S		; 03 10
	and [$10.b]		; 27 10
	asl $4C20.w		; 0E 20 4C
	and ($00.b,X)		; 21 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora $1F0F0F.l		; 0F 0F 0F 1F
	ora $BC1E1E.l,X		; 1F 1E 1E BC
	ror $FE7C.w,X		; 7E 7C FE
	cpx $C408.w		; EC 08 C4
	clc		; 18
	dey		; 88
	bmi  16.b		; 30 10
	rts		; 60

	rts		; 60

	bra -96.b		; 80 A0
	rti		; 40

	tsb $18FC.w		; 0C FC 18
	jsr ($F8F0.w,X)		; FC F0 F8
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $183F.w		; 0C 3F 18
	rol $7E18.w,X		; 3E 18 7E
	clc		; 18
	ror $7C30.w,X		; 7E 30 7C
	bmi 124.b		; 30 7C
	bmi  -4.b		; 30 FC
	rts		; 60

	sed		; F8
	asl $3E00.w,X		; 1E 00 3E
	jsl $3C003C.l		; 22 3C 00 3C
	brk $7C.b		; 00 7C
	mvp $00,$78		; 44 78 00
	sei		; 78
	brk $78.b		; 00 78
	php		; 08
	and ($04.b,X)		; 21 04
	and ($04.b,X)		; 21 04
	ora ($04.b),Y		; 11 04
	ora $0100.w		; 0D 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	dec $0F.b		; C6 0F
	cpx #$E00C.w		; E0 0C E0
	clc		; 18
	sbc $93.b,S		; E3 93
	adc [$C4.b]		; 67 C4
	bit $188B.w		; 2C 8B 18
	phd		; 0B
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	tsb $FC.b		; 04 FC
	phd		; 0B
	sed		; F8
	ora [$70.b],Y		; 17 70
	ora [$10.b],Y		; 17 10
	ldy #$8000.w		; A0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	rts		; 60

	ldy #$0030.w		; A0 30 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	rts		; 60

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$C020.w		; A0 20 C0
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	bpl  56.b		; 10 38
	bmi 112.b		; 30 70
	bmi 112.b		; 30 70
	bmi  48.b		; 30 30
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	clc		; 18
	php		; 08
	sec		; 38
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -32.b		; 80 E0
	cpy #$E0F0.w		; C0 F0 E0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpx #$30F0.w		; E0 F0 30
	bra -16.b		; 80 F0
	rti		; 40

	bcs -96.b		; B0 A0
	bpl -32.b		; 10 E0
	brk $80.b		; 00 80
	rts		; 60

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	bvs  32.b		; 70 20
	bvs   0.b		; 70 00
	bvs   8.b		; 70 08
	php		; 08
	php		; 08
	php		; 08
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	cop $08.b		; 02 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	ora ($0A.b,X)		; 01 0A
	ora ($21.b,X)		; 01 21
	ora ($47.b),Y		; 11 47
	jsr $801F.w		; 20 1F 80
	adc $03F000.l,X		; 7F 00 F0 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $07.b		; 04 07
	asl $1F0F.w		; 0E 0F 1F
	ora $FF7F7F.l,X		; 1F 7F 7F FF
	sbc $3EFCFC.l,X		; FF FC FC 3E
	sbc ($0E.b,X)		; E1 0E
	cpx #$C09E.w		; E0 9E C0
	dec $6CC0.w,X		; DE C0 6C
	sbc ($B0.b,X)		; E1 B0
	adc ($E7.b,S),Y		; 73 E7
	sec		; 38
	jsr ($5F00.w,X)		; FC 00 5F
	eor ($3F.b,X)		; 41 3F
	jsr $C07F.w		; 20 7F C0
	adc $E17FC0.l,X		; 7F C0 7F E1
	ldx $C0F2.w,Y		; BE F2 C0
	sed		; F8
	brk $00.b		; 00 00
	ora ($27.b,S),Y		; 13 27
	bpl  33.b		; 10 21
	plp		; 28
	mvp $A5,$48		; 44 48 A5
	dey		; 88
	and $48.b		; 25 48
	and $92.b		; 25 92
	eor #$4893.w		; 49 93 48
	cmp ($CF.b,X)		; C1 CF
	cpy #$80CF.w		; C0 CF 80
	sta $003F00.l,X		; 9F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $C5FF00.l,X		; FF 00 FF C5
	sbc $05C701.l		; EF 01 C7 05
	ora $06.b,S		; 03 06
	rti		; 40

	brk $48.b		; 00 48
	pha		; 48
	bit $4C.b		; 24 4C
	jsl $819126.l		; 22 26 91 81
	sbc $00FF01.l,X		; FF 01 FF 00
	xce		; FB
	brk $F9.b		; 00 F9
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	ora $1E.b		; 05 1E
	asl A		; 0A
	and $0000.w,X		; 3D 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	asl $1D02.w		; 0E 02 1D
	ora ($00.b),Y		; 11 00
	sbc ($07.b),Y		; F1 07
	cpy #$993A.w		; C0 3A 99
	adc #$726C.w		; 69 6C 72
	trb $AA.b		; 14 AA
	pla		; 68
	and $8E.b,S		; 23 8E
	lsr $1F.b,X		; 56 1F
	rts		; 60

	rol $7FC0.w		; 2E C0 7F
	bpl 127.b		; 10 7F
	jsr $10FF.w		; 20 FF 10
	sbc $5D48.w,X		; FD 48 5D
	sbc ($86.b)		; F2 86
	sep #$06		; E2 06
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $FF.b		; 00 FF
	and ($E7.b,X)		; 21 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	pha		; 48
	sbc $3C189C.l,X		; FF 9C 18 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	php		; 08
	bit $3C08.w,X		; 3C 08 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bit $3C00.w,X		; 3C 00 3C
	tsb $3C.b		; 04 3C
	tsb $3C.b		; 04 3C
	bit $18.b		; 24 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $C0.b		; 00 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$E0C0.w		; E0 C0 E0
	cpy #$00E0.w		; C0 E0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	rts		; 60

	bra -64.b		; 80 C0
	cpx #$F0E0.w		; E0 E0 F0
	beq  24.b		; F0 18
	sei		; 78
	tsb $84BC.w		; 0C BC 84
	jmp $C000C2.l		; 5C C2 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $2E.b		; 00 2E
.INDEX 8
	sep #$14		; E2 14
	sbc ($08.b),Y		; F1 08
	sbc $DF3E.w,Y		; F9 3E DF
	bpl -18.b		; 10 EE
	sec		; 38
	bit $F8.b,X		; 34 F8
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	rti		; 40

	ldx $96A0.w		; AE A0 96
	bcc -128.b		; 90 80
	cpy #$0C.b		; C0 0C
	jmp ($F0C0.w)		; 6C C0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	ora $0F.b		; 05 0F
	cop $1F.b		; 02 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora $020F03.l		; 0F 03 0F 02
	ora $0C1F06.l,X		; 1F 06 1F 0C
	and $183E0C.l,X		; 3F 0C 3E 18
	rol $0103.w,X		; 3E 03 01
	ora [$02.b]		; 07 02
	ora $080F0C.l		; 0F 0C 0F 08
	ora $101E11.l,X		; 1F 11 1E 10
	rol $3C22.w,X		; 3E 22 3C
	jsr $3000.w		; 20 00 30
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	tsb $01.b		; 04 01
	tsb $05.b		; 04 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $0E.b		; 00 0E
	and ($40.b),Y		; 31 40
	sta $40.b,S		; 83 40
	cop $C2.b		; 02 C2
	brk $81.b		; 00 81
	rti		; 40

	bra  64.b		; 80 40
	brk $40.b		; 00 40
	cpy #$00.b		; C0 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rts		; 60

	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $93.b		; 00 93
	pha		; 48
	ora ($48.b),Y		; 11 48
	brk $4F.b		; 00 4F
	tsb $0B1C.w		; 0C 1C 0B
	sec		; 38
	ora $1C.b		; 05 1C
	cop $0E.b		; 02 0E
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $70.b		; 00 70
	ora ($70.b,S),Y		; 13 70
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	rol $90.b		; 26 90
	bmi -119.b		; 30 89
	bmi  11.b		; 30 0B
	eor ($47.b,X)		; 41 47
	sbc ($0F.b,X)		; E1 0F
	sbc ($07.b),Y		; F1 07
	sed		; F8
	ora $FC.b,S		; 03 FC
	sta ($00.b,X)		; 81 00
	sbc $01FE00.l,X		; FF 00 FE 01
	sbc $3A82.w,X		; FD 82 3A
	plx		; FA
	asl A		; 0A
	jsr ($FE04.w,X)		; FC 04 FE
	cop $7F.b		; 02 7F
	ora ($14.b,X)		; 01 14
	dec A		; 3A
	bit $78.b		; 24 78
	pha		; 48
	beq -125.b		; F0 83
	sbc ($43.b,S),Y		; F3 43
	sbc $08FB81.l,X		; FF 81 FB 08
	cpx $11.b		; E4 11
.ACCU 16
.INDEX 16
	rep #$39		; C2 39
	jsr $5777.w		; 20 77 57
	cpy $AB8F.w		; CC 8F AB
	ora $E01771.l		; 0F 71 17 E0
	and [$C8.b]		; 27 C8
	phk		; 4B
	stz $A69C.w		; 9C 9C A6
	and $14F74A.l,X		; 3F 4A F7 14
	pld		; 2B
	dec $F6DF.w		; CE DF F6
	sbc $7FF0FE.l		; EF FE F0 7F
	sbc $D27F3F.l,X		; FF 3F 7F D2
	asl $20.b,X		; 16 20
	rol $DE00.w		; 2E 00 DE
	stx $FE.b		; 86 FE
	cpy #$E0FE.w		; C0 FE E0
	sbc $1EFF37.l,X		; FF 37 FF 1E
	sbc $000100.l,X		; FF 00 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $5B.b		; 00 5B
	wai		; CB
	phk		; 4B
	cmp $20.b,S		; C3 20
	sbc $0AFE07.l,X		; FF 07 FE 0A
	sbc $FB05.w,X		; FD 05 FB
	tsb $F8.b		; 04 F8
	tsb $FC.b		; 04 FC
	sbc $7DFF3D.l,X		; FF 3D FF 7D
	adc $44.b		; 65 44
	asl $3C18.w,X		; 1E 18 3C
	and ($B5.b,X)		; 21 B5
	lda ($D7.b,X)		; A1 D7
	bvc -117.b		; 50 8B
	dey		; 88
	phy		; 5A
	cmp ($0C.b,X)		; C1 0C
	cmp ($90.b,X)		; C1 90
	adc ($40.b)		; 72 40
	ldy $4C80.w,X		; BC 80 4C
	lsr $00.b,X		; 56 00
	bit $C2.b		; 24 C2
	trb $3D.b		; 14 3D
	and $407E07.l,X		; 3F 07 7E 40
	bit $18A0.w		; 2C A0 18
	cld		; D8
	bmi -16.b		; 30 F0
	bpl -20.b		; 10 EC
	brk $38.b		; 00 38
	dec $C2.b,X		; D6 C2
	dec $D61D.w,X		; DE 1D D6
	ora $C8.b,X		; 15 C8
	ora #$0238.w		; 09 38 02
	sec		; 38
	ora ($6C.b,X)		; 01 6C
	ora ($00.b)		; 12 00
	jmp ($7824.w,X)		; 7C 24 78
	inc $FEEA.w,X		; FE EA FE
	inc $F6FE.w		; EE FE F6
	cpy $C4.b		; C4 C4
	inc $C4EE.w		; EE EE C4
	pei ($00.b)		; D4 00
	bcs   0.b		; B0 00
	plx		; FA
	.db $82, $F0, $82		; 82 F0 82
	cpx #$C002.w		; E0 02 C0
	brk $82.b		; 00 82
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $23.b,S		; E3 23
	cmp $43.b,S		; C3 43
	sta $83.b,S		; 83 83
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $FE.b		; 00 FE
	dey		; 88
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DC.b		; 00 DC
	brk $FC.b		; 00 FC
	sbc $28FFEE.l,X		; FF EE FF 28
	inc $2AC4.w,X		; FE C4 2A
	phy		; 5A
	brk $DE.b		; 00 DE
	brk $6A.b		; 00 6A
	sty $F8.b		; 84 F8
	tsb $CEFE.w		; 0C FE CE
	sbc $008283.l,X		; FF 83 82 00
	bpl   8.b		; 10 08
	bmi -124.b		; 30 84
	bmi  72.b		; 30 48
	bmi -128.b		; 30 80
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	tsb $30FF.w		; 0C FF 30
	sbc $C0FFE1.l,X		; FF E1 FF C0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $FB617D.l		; 0F 7D 61 FB
	.db $82, $F7, $00		; 82 F7 00
	jsr ($0014.w,X)		; FC 14 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $38FF0F.l,X		; 3F 0F FF 38
	sbc $0EFCE0.l,X		; FF E0 FC 0E
	inc $831F.w		; EE 1F 83
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $607F0C.l		; 0F 0C 7F 60
	sbc $0BF883.l,X		; FF 83 F8 0B
	cpy $5F.b		; C4 5F
	cop $3F.b		; 02 3F
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	sbc $FFE0FF.l,X		; FF FF E0 FF
	ora [$F8.b]		; 07 F8
	ora #$8907.w		; 09 07 89
	ora [$50.b],Y		; 17 50
	ora $FE0000.l		; 0F 00 00 FE
	stx $FF.b		; 86 FF
	brk $FF.b		; 00 FF
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	.db $82, $07, $E4		; 82 07 E4
	ora ($E0.b,X)		; 01 E0
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora ($CC.b,X)		; 01 CC
	bpl -93.b		; 10 A3
	adc ($80.b,X)		; 61 80
	adc ($80.b)		; 72 80
	ora #$2500.w		; 09 00 25
	cop $4A.b		; 02 4A
	tsb $15.b		; 04 15
	php		; 08
	sta $03.b,S		; 83 03
	stz $389C.w		; 9C 9C 38
	rol $0D00.w,X		; 3E 00 0D
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	lda #$314E.w		; A9 4E 31
	ldx $13DC.w		; AE DC 13
	jmp.w [$BC10]		; DC 10 BC
	ora ($7C.b,S),Y		; 13 7C
	brk $D2.b		; 00 D2
	ora ($26.b,X)		; 01 26
	sta ($83.b,X)		; 81 83
	tsx		; BA
	ora $7A.b,S		; 03 7A
	brk $38.b		; 00 38
	ora $FB.b,S		; 03 FB
	brk $D8.b		; 00 D8
	ora $D3.b,S		; 03 D3
	brk $EC.b		; 00 EC
	brk $F9.b		; 00 F9
	cpy $1C63.w		; CC 63 1C
	stz $38.b		; 64 38
	sta ($DE.b,X)		; 81 DE
	jsr $9420.w		; 20 20 94
	jmp.w [$6612]		; DC 12 66
	sbc ($F0.b,X)		; E1 F0
	sbc $1898.w,Y		; F9 98 18
	cmp [$53.b],Y		; D7 53
	lsr $46.b		; 46 46
	bra -128.b		; 80 80
	cli		; 58
	bvc -116.b		; 50 8C
	ldy #$700E.w		; A0 0E 70
	rol $F0.b		; 26 F0
	and $0A.b		; 25 0A
	eor $22.b		; 45 22
	asl A		; 0A
	mvp $44,$9A		; 44 9A 44
	clv		; B8
	tsb $BC.b		; 04 BC
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $10.b		; 00 10
	bpl  24.b		; 10 18
	clc		; 18
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	pha		; 48
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$E000.w		; A0 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$C080.w		; E0 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ply		; 7A
	tsb $02.b		; 04 02
	ora $00.b		; 05 00
	phd		; 0B
	tsb $0A.b		; 04 0A
	brk $11.b		; 00 11
	php		; 08
	ora ($09.b)		; 12 09
	jsl $010119.l		; 22 19 01 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $70.b		; 00 70
	bpl  -8.b		; 10 F8
	php		; 08
	stz $8C48.w		; 9C 48 8C
	sty $0E.b		; 84 0E
	tsb $84FE.w		; 0C FE 84
	sbc $00FF0E.l,X		; FF 0E FF 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	rts		; 60

	sei		; 78
	bvs 116.b		; 70 74
	bvs -116.b		; 70 8C
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	asl $C2.b		; 06 C2
	and $F1DFA7.l,X		; 3F A7 DF F1
	ora $D48B21.l		; 0F 21 8B D4
	ora [$E8.b]		; 07 E8
	ora [$74.b]		; 07 74
	phd		; 0B
	sta ($70.b,X)		; 81 70
	and ($02.b,S),Y		; 33 02
	ora $0009C0.l		; 0F C0 09 00
	ora $F9C8.w,X		; 1D C8 F9
	brk $E3.b		; 00 E3
	bpl -63.b		; 10 C1
	bra -64.b		; 80 C0
	cpy #$0DFC.w		; C0 FC 0D
	cmp $10A610.l		; CF 10 A6 10
	jmp $40B020.l		; 5C 20 B0 40
	jsr $4080.w		; 20 80 40
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	sbc $CCE2E2.l		; EF E2 E2 CC
	cpy $9090.w		; CC 90 90
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0F.b]		; 07 0F
	asl $0C1F.w		; 0E 1F 0C
	and $103F18.l,X		; 3F 18 3F 10
	ror $7D20.w,X		; 7E 20 7D
	jsr $407A.w		; 20 7A 40
	sbc ($0F.b)		; F2 0F
	php		; 08
	ora $011F10.l,X		; 1F 10 1F 01
	rol $3C22.w,X		; 3E 22 3C
	tsb $78.b		; 04 78
	pha		; 48
	adc ($01.b),Y		; 71 01
	adc ($01.b,X)		; 61 01
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	ora ($B1.b,X)		; 01 B1
	ora ($C9.b,X)		; 01 C9
	and $0B.b,S		; 23 0B
	sbc $0B.b,S		; E3 0B
	sbc $0A.b,S		; E3 0A
	beq 112.b		; F0 70
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	and ($33.b),Y		; 31 33
	sbc ($F3.b)		; F2 F3
	sbc ($F7.b)		; F2 F7
	beq  -9.b		; F0 F7
	ora $425F3D.l,X		; 1F 3D 5F 42
	bne  -6.b		; D0 FA
	bcs -28.b		; B0 E4
	sta ($40.b,S),Y		; 93 40
	adc $C4.b,X		; 75 C4
	tsa		; 3B
	sty $8C63.w		; 8C 63 8C
	tsb $407F.w		; 0C 7F 40
	inc $EFA8.w,X		; FE A8 EF
	trb $7C87.w		; 1C 87 7C
	cmp ($3A.b,X)		; C1 3A
	cop $72.b		; 02 72
	cop $FA.b		; 02 FA
	txa		; 8A
	bvc   9.b		; 50 09
	eor ($0A.b,S),Y		; 53 0A
	and $58.b,S		; 23 58
	plb		; AB
	cli		; 58
	rtl		; 6B

	clv		; B8
	adc $A0.b,S		; 63 A0
	sbc ($64.b)		; F2 64
	sbc $0600.w		; ED 00 06
	cpx #$E005.w		; E0 05 E0
	ora $C007C8.l		; 0F C8 07 C0
	ora [$80.b]		; 07 80
	ora $8D0F90.l,X		; 1F 90 0F 8D
	ora $11.b,S		; 03 11
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $0804.w		; 0C 04 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $19.b		; 04 19
	jsl $192219.l		; 22 19 22 19
	cop $01.b		; 02 01
	ora ($08.b),Y		; 11 08
	trb $0C.b		; 14 0C
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $06.b		; 00 06
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rol $80.b,X		; 36 80
	ora $825F80.l		; 0F 80 5F 82
	ror $8485.w		; 6E 85 84
	phd		; 0B
	trb $1A.b		; 14 1A
	plp		; 28
	bit $C9.b,X		; 34 C9
	pea $F902.w		; F4 02 F9
	asl $F0.b		; 06 F0
	tsb $18E0.w		; 0C E0 18
	bra 120.b		; 80 78
	php		; 08
	sbc ($01.b,X)		; E1 01
	cmp $03.b,S		; C3 03
	ora $03.b,S		; 03 03
	jsr ($78F7.w,X)		; FC F7 78
	adc $1F3B3C.l,X		; 7F 3C 3B 1F
	stz $0E0E.w		; 9C 0E 0E
	and [$0F.b]		; 27 0F
	sbc [$37.b],Y		; F7 37
	sbc [$37.b],Y		; F7 37
	adc ($FA.b)		; 72 FA
	and ($F9.b),Y		; 31 F9
	ora $0CFD.w,Y		; 19 FD 0C
	ror $FFC4.w,X		; 7E C4 FF
	cpy #$83DF.w		; C0 DF 83
	lda $18BF83.l,X		; BF 83 BF 18
	sta [$3C.b]		; 87 3C
	cli		; 58
	cpx #$0004.w		; E0 04 00
	stz $00.b		; 64 00
	stz $14.b		; 64 14
	rol $10.b,X		; 36 10
	and ($00.b)		; 32 00
	tsx		; BA
	brk $60.b		; 00 60
	dey		; 88
	stz $6018.w		; 9C 18 60
	sec		; 38
	jsr $2038.w		; 20 38 20
	php		; 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ror $88.b		; 66 88
	ldx $04.b,Y		; B6 04
	ply		; 7A
	jsr $F0FA.w		; 20 FA F0
	jsr ($6070.w,X)		; FC 70 60
	ldy #$8080.w		; A0 80 80
	bra -104.b		; 80 98
	clc		; 18
	php		; 08
	pha		; 48
	tsb $F4.b		; 04 F4
	tsb $F4.b		; 04 F4
	brk $F8.b		; 00 F8
	rts		; 60

	sed		; F8
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	ora $CA.b,S		; 03 CA
	and ($81.b),Y		; 31 81
	clc		; 18
	rti		; 40

	php		; 08
	and ($00.b,S),Y		; 33 00
	clc		; 18
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$60.b]		; 07 60
	adc [$30.b]		; 67 30
	and [$18.b],Y		; 37 18
	ora $C30F08.l,X		; 1F 08 0F C3
	and $D11763.l		; 2F 63 17 D1
	ora $308369.l		; 0F 69 83 30
	cmp $9C.b,S		; C3 9C
	adc ($0C.b,X)		; 61 0C
	ora ($04.b,X)		; 01 04
	sbc $F007.w,Y		; F9 07 F0
	ora [$FC.b]		; 07 FC
	ora $F8.b,S		; 03 F8
	ora $FE.b,S		; 03 FE
	ora ($FC.b,X)		; 01 FC
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	ply		; 7A
	bra  59.b		; 80 3B
	cpy #$C2B9.w		; C0 B9 C2
	sta $C3E2.w,Y		; 99 E2 C3
	sed		; F8
	iny		; C8
	sbc [$E5.b],Y		; F7 E5
	sbc ($60.b)		; F2 60
	sbc ($80.b)		; F2 80
	sty $80.b,X		; 94 80
	asl $C0.b,X		; 16 C0
	lsr $C0.b,X		; 56 C0
	asl $E0.b		; 06 E0
	bit $E8.b		; 24 E8
	php		; 08
	sbc $FD0D.w		; ED 0D FD
	ora $7C18.w,X		; 1D 18 7C
	clc		; 18
	rol $3E18.w,X		; 3E 18 3E
	tsb $0C3E.w		; 0C 3E 0C
	inc $3ECC.w,X		; FE CC 3E
	tsb $0C3E.w		; 0C 3E 0C
	adc $3C043C.l,X		; 7F 3C 04 3C
	jsr $203C.w		; 20 3C 20
	trb $1C00.w		; 1C 00 1C
	bpl -34.b		; 10 DE
	cmp ($CE.b)		; D2 CE
	rep #$8E		; C2 8E
	bra  53.b		; 80 35
	rti		; 40

	ora $41.b,X		; 15 41
	eor $20.b,X		; 55 20
	asl $20.b		; 06 20
	and $17.b,S		; 23 17
	and $1D.b,S		; 23 1D
	tsb $1C.b		; 04 1C
	asl A		; 0A
	sec		; 38
	sec		; 38
	tsa		; 3B
	sec		; 38
	tsa		; 3B
	clc		; 18
	tas		; 1B
	clc		; 18
	tas		; 1B
	php		; 08
	phd		; 0B
	tsb $07.b		; 04 07
	asl A		; 0A
	ora #$1017.w		; 09 17 10
	sta $BD9FFD.l,X		; 9F FD 9F BD
	and $6D7F.w		; 2D 7F 6D
	inc $7E6D.w,X		; FE 6D 7E
	lda $C5BE.w		; AD BE C5
	dec $5EE5.w,X		; DE E5 5E
	trb $1DC1.w		; 1C C1 1D
	cmp ($1C.b,X)		; C1 1C
	sbc ($3C.b,X)		; E1 3C
	beq  44.b		; F0 2C
	sbc ($8C.b,X)		; E1 8C
	sbc ($4C.b,X)		; E1 4C
	sbc ($0C.b,X)		; E1 0C
	sbc $0000.w,Y		; F9 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $00F8.w		; 20 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$F040.w		; C0 40 F0
	jsr $10F8.w		; 20 F8 10
	jmp ($3E09.w,X)		; 7C 09 3E
	stz $1F.b		; 64 1F
	asl $4F.b,X		; 16 4F
	cmp $2F.b,S		; C3 2F
	bra   0.b		; 80 00
	cpx #$7020.w		; E0 20 70
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	rts		; 60

	ora [$70.b]		; 07 70
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$7C00.w		; C0 00 7C
	brk $6A.b		; 00 6A
	sty $2A.b		; 84 2A
	cpy $01.b		; C4 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$5C00.w		; C0 00 5C
	bra  28.b		; 80 1C
	bra -32.b		; 80 E0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	bmi  -8.b		; 30 F8
	bmi 124.b		; 30 7C
	clc		; 18
	jmp ($7E18.w,X)		; 7C 18 7E
	clc		; 18
	rol $00C0.w,X		; 3E C0 00
	cpx #$F000.w		; E0 00 F0
	bra 120.b		; 80 78
	php		; 08
	sei		; 78
	rti		; 40

	bit $3C04.w,X		; 3C 04 3C
	jsr $001C.w		; 20 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	tsb $033F.w		; 0C 3F 03
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	beq   6.b		; F0 06
	and $000700.l,X		; 3F 00 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $1E.b		; 00 1E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	sbc $E8EFCC.l		; EF CC EF E8
	inc $0EF8.w		; EE F8 0E
	iny		; C8
	asl $0EC8.w		; 0E C8 0E
	iny		; C8
	asl $0EC8.w		; 0E C8 0E
	asl $CEF0.w		; 0E F0 CE
	beq  14.b		; F0 0E
	sbc ($0E.b)		; F2 0E
	cop $0C.b		; 02 0C
	beq  12.b		; F0 0C
	beq  12.b		; F0 0C
	beq  12.b		; F0 0C
	beq   8.b		; F0 08
	tsb $0C08.w		; 0C 08 0C
	sed		; F8
	tsb $0CE0.w		; 0C E0 0C
	jsr $10CC.w		; 20 CC 10
	cpx $F800.w		; EC 00 F8
	jsr $0CF8.w		; 20 F8 0C
	pea $F40C.w		; F4 0C F4
	php		; 08
	brk $08.b		; 00 08
	brk $C8.b		; 00 C8
	brk $68.b		; 00 68
	brk $F0.b		; 00 F0
	bcc -80.b		; 90 B0
	brk $08.b		; 00 08
	ora [$05.b]		; 07 05
	cop $00.b		; 02 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	bra  -2.b		; 80 FE
	brk $A5.b		; 00 A5
	clc		; 18
	inc A		; 1A
	ora ($27.b,X)		; 01 27
	eor ($8E.b,X)		; 41 8E
	and ($46.b)		; 32 46
	tya		; 98
	lda [$08.b]		; A7 08
	brk $FD.b		; 00 FD
	brk $81.b		; 00 81
	brk $7E.b		; 00 7E
	brk $FD.b		; 00 FD
	bra -101.b		; 80 9B
	cpy #$60C3.w		; C0 C3 60
	adc ($70.b,X)		; 61 70
	adc ($60.b),Y		; 71 60
	sbc $30FA70.l,X		; FF 70 FA 30
	plx		; FA
	bmi  -6.b		; 30 FA
	sec		; 38
	adc $1B7FBB.l,X		; 7F BB 7F 1B
	sbc $F0FC1B.l,X		; FF 1B FC F0
	bra 117.b		; 80 75
	ora $7D.b		; 05 7D
	ora $C57D.w		; 0D 7D C5
	sec		; 38
	sta [$3B.b]		; 87 3B
	sta $3D.b,S		; 83 3D
	cmp [$3C.b]		; C7 3C
	sbc $7C.b,S		; E3 7C
	sta $FC0FFC.l		; 8F FC 0F FC
	ora $0C0F1C.l		; 0F 1C 0F 0C
	sbc $CCCF8C.l		; EF 8C CF CC
	cmp $6E0FCC.l		; CF CC 0F 6E
	rts		; 60

	inc $EEE0.w		; EE E0 EE
	cpx #$E0EE.w		; E0 EE E0
	asl $0E00.w		; 0E 00 0E
	cpx #$E08E.w		; E0 8E E0
	asl $17E0.w		; 0E E0 17
	adc ($2E.b),Y		; 71 2E
	adc $1D.b,S		; 63 1D
	eor [$00.b]		; 47 00
	bit $0400.w,X		; 3C 00 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rol $1C20.w		; 2E 20 1C
	brk $38.b		; 00 38
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A4.b		; 00 A4
	lsr $0EA4.w,X		; 5E A4 0E
	and $CE.b,X		; 35 CE
	ldy $DF.b,X		; B4 DF
	ldy $EF.b,X		; B4 EF
	bvc -113.b		; 50 8F
	ora $6F.b,S		; 03 6F
	ora $FF.b,S		; 03 FF
	tsb $04F9.w		; 0C F9 04
	eor ($C4.b),Y		; 51 C4
	cpy #$4145.w		; C0 45 41
	ora [$01.b],Y		; 17 01
	and [$00.b],Y		; 37 00
	ora [$00.b],Y		; 17 00
	adc [$20.b]		; 67 20
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$FF.b]		; 07 FF
	and [$FF.b]		; 27 FF
	adc ($FF.b,X)		; 61 FF
	brk $FF.b		; 00 FF
	clc		; 18
	sbc $007F18.l,X		; FF 18 7F 00
	and $6F1800.l,X		; 3F 00 18 6F
	and ($EF.b,X)		; 21 EF
	ora ($EF.b,X)		; 01 EF
	brk $E7.b		; 00 E7
	jsl $3DC2DB.l		; 22 DB C2 3D
	ora ($18.b,X)		; 01 18
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	brk $FC.b		; 00 FC
	php		; 08
	jsr ($FC00.w,X)		; FC 00 FC
	brk $D8.b		; 00 D8
	brk $00.b		; 00 00
	beq  96.b		; F0 60
	sed		; F8
	pla		; 68
	sed		; F8
	pha		; 48
	beq  80.b		; F0 50
	inx		; E8
	ldy #$C0D8.w		; A0 D8 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $09.b		; 04 09
	tsb $1911.w		; 0C 11 19
	jsl $614631.l		; 22 31 46 61
	stx $00.b		; 86 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	asl $0E.b		; 06 0E
	asl $1C1C.w		; 0E 1C 1C
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	brk $C0.b		; 00 C0
	bmi -64.b		; 30 C0
	jsr $20D0.w		; 20 D0 20
	bne  32.b		; D0 20
	bne  64.b		; D0 40
	bcs -48.b		; B0 D0
	bit $74.b		; 24 74
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $20.b		; 00 20
	rts		; 60

	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	cpy #$C080.w		; C0 80 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $03.b		; 02 03
	tsb $07.b		; 04 07
	tsb $06.b		; 04 06
	tsb $06.b		; 04 06
	tsb $080E.w		; 0C 0E 08
	tsb $1C08.w		; 0C 08 1C
	brk $1C.b		; 00 1C
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	tsb $0C00.w		; 0C 00 0C
	tsb $08.b		; 04 08
	brk $08.b		; 00 08
	brk $07.b		; 00 07
	tsb $06.b		; 04 06
	tsb $0F.b		; 04 0F
	and ($00.b,S),Y		; 33 00
	adc $037F1F.l,X		; 7F 1F 7F 03
	sbc $48FF00.l,X		; FF 00 FF 48
	beq   0.b		; F0 00
	ora $020F00.l		; 0F 00 0F 02
	ora [$30.b]		; 07 30
	brk $3F.b		; 00 3F
	jsr $101F.w		; 20 1F 10
	rts		; 60

	brk $70.b		; 00 70
	ora [$54.b]		; 07 54
	tad		; 5B
	rts		; 60

	eor $3FFF07.l,X		; 5F 07 FF 3F
	sbc $80FFFC.l,X		; FF FC FF 80
	sbc $3FFB05.l,X		; FF 05 FB 3F
	tda		; 7B
	brk $FC.b		; 00 FC
	ora $C2.b,S		; 03 C2
	ora $80FF10.l,X		; 1F 10 FF 80
	sbc $19F800.l,X		; FF 00 F8 19
	brk $1F.b		; 00 1F
	ora ($FF.b,X)		; 01 FF
	bit $F0FF.w,X		; 3C FF F0
	inc $FCC2.w,X		; FE C2 FC
	ora ($E2.b,X)		; 01 E2
	tsb $1E81.w		; 0C 81 1E
	bra  63.b		; 80 3F
	bra -114.b		; 80 8E
	cmp ($FE.b,X)		; C1 FE
	bra  -7.b		; 80 F9
	ora ($F1.b,X)		; 01 F1
	ora ($DC.b,X)		; 01 DC
	trb $7E7E.w		; 1C 7E 7E
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	ldx $D1BE.w,Y		; BE BE D1
	asl A		; 0A
	.db $82, $54, $84		; 82 54 84
	pha		; 48
	txs		; 9A
	eor ($BE.b,X)		; 41 BE
	eor ($82.b,X)		; 41 82
	adc $04FB.w,X		; 7D FB 04
	sed		; F8
	tsb $00.b		; 04 00
	lda $80BF80.l,X		; BF 80 BF 80
	lda $00BF80.l,X		; BF 80 BF 00
	ora [$00.b],Y		; 17 00
	ora $18.b,S		; 03 18
	tas		; 1B
	clc		; 18
	tas		; 1B
	sep #$04		; E2 04
	cpy $08.b		; C4 08
	dey		; 88
	sta ($D0.b,X)		; 81 D0
	xba		; EB
	sbc $0E0E.w,Y		; F9 0E 0E
	beq -121.b		; F0 87
	sed		; F8
	sbc ($9E.b,X)		; E1 9E
	sbc $F3F9.w,Y		; F9 F9 F3
	sbc ($F6.b,S),Y		; F3 F6
	inc $84.b,X		; F6 84
	cpx $0E00.w		; EC 00 0E
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	bpl  16.b		; 10 10
	bmi  64.b		; 30 40
	jsr $40C0.w		; 20 C0 40
	sta ($81.b,X)		; 81 81
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	ora $C41F02.l		; 0F 02 1F C4
	rol $8080.w,X		; 3E 80 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	asl $1E08.w		; 0E 08 1E
	bpl   0.b		; 10 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	tsb $06.b		; 04 06
	php		; 08
	tsb $1810.w		; 0C 10 18
	and ($38.b,X)		; 21 38
	eor ($71.b,X)		; 41 71
	.db $82, $00, $00		; 82 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $1E1E0F.l		; 0F 0F 1E 1E
	rol $7C3E.w,X		; 3E 3E 7C
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora [$03.b]		; 07 03
	ora ($0E.b,X)		; 01 0E
	asl $17.b		; 06 17
	ora $13.b,S		; 03 13
	ora $0671.w		; 0D 71 06
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	cop $09.b		; 02 09
	ora ($1C.b,X)		; 01 1C
	bpl  30.b		; 10 1E
	bpl 127.b		; 10 7F
	bvs   0.b		; 70 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	sed		; F8
	brk $FC.b		; 00 FC
	lda ($36.b,X)		; A1 36
	sta ($32.b,X)		; 81 32
	cmp ($70.b,X)		; C1 70
	sta $0370.w		; 8D 70 03
	jmp $809F.w		; 4C 9F 80
	ora $C4C708.l		; 0F 08 C7 C4
	rep #$02		; C2 02
	cpx #$A020.w		; E0 20 A0
	jsr $40C0.w		; 20 C0 40
	bcs  48.b		; B0 30
	brk $60.b		; 00 60
	tsb $007F.w		; 0C 7F 00
	inc $FC00.w,X		; FE 00 FC
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $7C90.w,X		; 1E 90 7C
	bvs  48.b		; 70 30
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -62.b		; 80 C2
	ora $8F.b,X		; 15 8F
	bpl  17.b		; 10 11
	jsl $464423.l		; 22 23 44 46
	dey		; 88
	sty $9810.w		; 8C 10 98
	jsr $2010.w		; 20 10 20
	inx		; E8
	inx		; E8
	cpx #$CCE0.w		; E0 E0 CC
	cpy $9898.w		; CC 98 98
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	cpy #$64C0.w		; C0 C0 64
	sty $C4.b		; 84 C4
	tsb $0C84.w		; 0C 84 0C
	tsb $0C.b		; 04 0C
	bpl  28.b		; 10 1C
	bpl  24.b		; 10 18
	bmi  48.b		; 30 30
	jsr $0430.w		; 20 30 04
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	tsb $18.b		; 04 18
	php		; 08
	bmi   0.b		; 30 00
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $8F.b,S		; 03 8F
	stx $1F.b		; 86 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $C2.b,S		; 03 C2
	ora [$C4.b]		; 07 C4
	ora $3800C8.l		; 0F C8 00 38
	brk $78.b		; 00 78
	jsr $40F0.w		; 20 F0 40
	beq -64.b		; F0 C0
	cpx #$E080.w		; E0 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bpl  16.b		; 10 10
	bmi  32.b		; 30 20
	rts		; 60

	rti		; 40

	cpx #$C080.w		; E0 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	sei		; 78
	ora $78.b		; 05 78
	asl A		; 0A
	bit $3C0A.w,X		; 3C 0A 3C
	ora $1E.b		; 05 1E
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	ora $18.b,S		; 03 18
	ora $1C.b,S		; 03 1C
	ora ($1C.b,X)		; 01 1C
	ora ($0E.b,X)		; 01 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	and $1EEF.w,X		; 3D EF 1E
	sbc [$0F.b],Y		; F7 0F
	tda		; 7B
	ora [$3C.b]		; 07 3C
	brk $C2.b		; 00 C2
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	lda $03DF06.l,X		; BF 06 DF 03
	sbc $00F700.l		; EF 00 F7 00
	xce		; FB
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($F2.b,X)		; C1 F2
	sbc ($FC.b)		; F2 FC
	mvp $03,$68		; 44 68 03
	php		; 08
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $61CC.w		; CC CC 61
	sbc ($03.b),Y		; F1 03
	sbc ($07.b,S),Y		; F3 07
	sbc [$03.b]		; E7 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	tsb $60.b		; 04 60
	trb $20C0.w		; 1C C0 20
	bra  32.b		; 80 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	cld		; D8
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$08.b],Y		; F7 08
	plx		; FA
	brk $1E.b		; 00 1E
	sbc ($2C.b,X)		; E1 2C
	ora ($C8.b,S),Y		; 13 C8
	ora [$E1.b],Y		; 17 E1
	ora $0E3F40.l,X		; 1F 40 3F 0E
	sbc $006808.l,X		; FF 08 68 00
	sbc [$00.b],Y		; F7 00
	plx		; FA
	ora ($F9.b,X)		; 01 F9
	ora $3A.b,S		; 03 3A
	ora [$C4.b]		; 07 C4
	ora $203FC8.l		; 0F C8 3F 20
	tsb $187E.w		; 0C 7E 18
	inc $FC30.w,X		; FE 30 FC
	rts		; 60

	sed		; F8
	cpy $F0.b		; C4 F0
	sty $F1.b		; 84 F1
	php		; 08
	sbc $4A.b		; E5 4A
	sta ($3C.b,X)		; 81 3C
	ldy #$407C.w		; A0 7C 40
	sed		; F8
	bra -16.b		; 80 F0
	tsb $E0.b		; 04 E0
	ora $801FC0.l		; 0F C0 1F 80
	and $E03F00.l,X		; 3F 00 3F E0
	cpy #$00F8.w		; C0 F8 00
	inc $FFF0.w,X		; FE F0 FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $5E0000.l,X		; FF 00 00 5E
	ldy $E080.w,X		; BC 80 E0
	brk $F8.b		; 00 F8
	cpy #$FCFF.w		; C0 FF FC
	sbc $00FFFF.l,X		; FF FF FF 00
	sbc $88FF00.l,X		; FF 00 FF 88
	lda $0000.w,X		; BD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq  48.b		; F0 30
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$F880.w		; E0 80 F8
	rts		; 60

	sed		; F8
	bmi  -8.b		; 30 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	eor ($CF.b,X)		; 41 CF
	lda ($97.b,S),Y		; B3 97
	lda [$87.b],Y		; B7 87
	sta $CF.b,S		; 83 CF
	and ($FC.b,S),Y		; 33 FC
	stz $FA.b		; 64 FA
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	sbc [$34.b],Y		; F7 34
	sbc $FBFF79.l,X		; FF 79 FF FB
	lda [$30.b],Y		; B7 30
	sec		; 38
	brk $78.b		; 00 78
	phd		; 0B
	inc A		; 1A
	rol $7D19.w,X		; 3E 19 7D
	ora ($7D.b),Y		; 11 7D
	bmi 125.b		; 30 7D
	bmi 124.b		; 30 7C
	jsr $207C.w		; 20 7C 20
	jmp ($7C00.w,X)		; 7C 00 7C
	bit $3C23.w,X		; 3C 23 3C
	ora [$3C.b]		; 07 3C
	ora [$7C.b]		; 07 7C
	eor [$7C.b]		; 47 7C
	eor $447C.w		; 4D 7C 44
	jmp ($7C14.w,X)		; 7C 14 7C
	trb $90.b		; 14 90
	stz $417D.w,X		; 9E 7D 41
	adc $606E40.l,X		; 7F 40 6E 60
	ora $04F9.w,Y		; 19 F9 04
	ora $30.b,S		; 03 30
	bvs   5.b		; 70 05
	ora $3EC928.l		; 0F 28 C9 3E
	bra  63.b		; 80 3F
	bra  31.b		; 80 1F
	bra   6.b		; 80 06
	cpy #$F800.w		; C0 00 F8
	bpl  -1.b		; 10 FF
	brk $7F.b		; 00 7F
	bit $19.b		; 24 19
	and $18.b		; 25 18
	lda $7B10.w		; AD 10 7B
	brk $37.b		; 00 37
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$FE00.w		; C0 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	tda		; 7B
	sty $FB.b		; 84 FB
	tsb $EB.b		; 04 EB
	brk $CB.b		; 00 CB
	brk $0B.b		; 00 0B
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$03.b]		; 07 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $B4.b		; 00 B4
	php		; 08
	ldy #$F008.w		; A0 08 F0
	php		; 08
	bpl -120.b		; 10 88
	bpl -104.b		; 10 98
	ldy #$4030.w		; A0 30 40
	rts		; 60

	rts		; 60

	ldy $8860.w		; AC 60 88
	pla		; 68
	clc		; 18
	beq   0.b		; F0 00
	bvs  96.b		; 70 60
	rts		; 60

	rts		; 60

	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	bmi -27.b		; 30 E5
	ora [$03.b]		; 07 03
	jsr ($5729.w,X)		; FC 29 57
	sta $D7.b,S		; 83 D7
	ora $D7.b,S		; 03 D7
	brk $AF.b		; 00 AF
	brk $F0.b		; 00 F0
	bra -33.b		; 80 DF
	inc A		; 1A
	cmp $84.b,S		; C3 84
	sta [$E8.b]		; 87 E8
	rtl		; 6B

	adc #$E96B.w		; 69 6B E9
	xba		; EB
	bvc  87.b		; 50 57
	brk $0F.b		; 00 0F
	jsr $00A0.w		; 20 A0 00
	sta ($01.b,S),Y		; 93 01
	ora [$02.b],Y		; 17 02
	sbc $CBCC45.l,X		; FF 45 CC CB
	dey		; 88
	adc [$C0.b]		; 67 C0
	and [$60.b]		; 27 60
	sta $6D6D20.l		; 8F 20 6D 6D
	nop		; EA
	nop		; EA
	ora $05.b		; 05 05
	lsr A		; 4A
	sed		; F8
	stx $F0.b		; 86 F0
	lsr $2EF0.w		; 4E F0 2E
	beq  14.b		; F0 0E
	beq  49.b		; F0 31
	plx		; FA
	bmi  -7.b		; 30 F9
	bmi 124.b		; 30 7C
	bpl 124.b		; 10 7C
	clc		; 18
	jmp ($3E08.w,X)		; 7C 08 3E
	php		; 08
	rol $1E0C.w,X		; 3E 0C 1E
	adc $7849.w,Y		; 79 49 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	bit $1C.b		; 24 1C
	brk $1C.b		; 00 1C
	bpl -42.b		; 10 D6
	brk $15.b		; 00 15
	cop $14.b		; 02 14
	phb		; 8B
	ora ($49.b)		; 12 49
	ora ($08.b),Y		; 11 08
	trb $08.b		; 14 08
	ora ($0C.b)		; 12 0C
	ora $C006.w,Y		; 19 06 C0
	sbc $40FFC0.l,X		; FF C0 FF 40
	adc $003F00.l,X		; 7F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $8D3F00.l,X		; 3F 00 3F 8D
	brk $8B.b		; 00 8B
	cop $55.b		; 02 55
	stx $49.b		; 86 49
	stx $DE11.w		; 8E 11 DE
	sta ($5E.b,X)		; 81 5E
	ora ($3E.b,X)		; 01 3E
	ora #$0E76.w		; 09 76 0E
	beq  12.b		; F0 0C
	beq  26.b		; F0 1A
.INDEX 8
	sep #$16		; E2 16
	inc $0C.b		; E6 0C
	cpx $F818.w		; EC 18 F8
	bmi -16.b		; 30 F0
	rts		; 60

	cpx #$69.b		; E0 69
	brk $69.b		; 00 69
	cop $68.b		; 02 68
	cop $42.b		; 02 42
	php		; 08
	eor ($04.b)		; 52 04
	bvc   4.b		; 50 04
	bne   4.b		; D0 04
	cpy $10.b		; C4 10
	inc $F6.b,X		; F6 F6
	pea $F4F4.w		; F4 F4 F4
	pea $F4F4.w		; F4 F4 F4
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	inx		; E8
	bpl 124.b		; 10 7C
	php		; 08
	bit $3E0C.w,X		; 3C 0C 3E
	tsb $1E.b		; 04 1E
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	sec		; 38
	brk $38.b		; 00 38
	jsr $101C.w		; 20 1C 10
	tsb $0600.w		; 0C 00 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9E.b		; 00 9E
	jmp ($4193.w,X)		; 7C 93 41
	and ($81.b,S),Y		; 33 81
	bmi -125.b		; 30 83
	bit $82.b,X		; 34 82
	bit $82.b,X		; 34 82
	bit $81.b,X		; 34 81
	rts		; 60

	ora $08.b		; 05 08
	adc $3D3C.w,X		; 7D 3C 3D
	jmp ($7C7D.w,X)		; 7C 7D 7C
	ror $7979.w,X		; 7E 79 79
	adc $7A79.w,Y		; 79 79 7A
	ply		; 7A
	plx		; FA
	plx		; FA
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	rti		; 40

	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $020F02.l		; 0F 02 0F 02
	ora $041F06.l,X		; 1F 06 1F 04
	ora $0C3F0C.l,X		; 1F 0C 3F 0C
	rol $3D0B.w,X		; 3E 0B 3D
	ora [$05.b]		; 07 05
	ora $000E09.l		; 0F 09 0E 00
	asl $1F00.w		; 0E 00 1F
	ora ($1F.b),Y		; 11 1F
	ora ($1E.b),Y		; 11 1E
	ora $3D.b,S		; 03 3D
	and $47.b,S		; 23 47
	plx		; FA
	cop $F3.b		; 02 F3
	cop $70.b		; 02 70
	ora $38.b,S		; 03 38
	ora [$1C.b]		; 07 1C
	ora $0E.b,S		; 03 0E
	lda #$40A7.w		; A9 A7 40
	eor ($72.b),Y		; 51 72
	ora ($2E.b)		; 12 2E
	ora $0F.b,S		; 03 0F
	brk $0F.b		; 00 0F
	php		; 08
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ldx #$F2.b		; A2 F2
	brk $EE.b		; 00 EE
	bpl  -8.b		; 10 F8
	bpl  -8.b		; 10 F8
	bmi  -8.b		; 30 F8
	bmi  -8.b		; 30 F8
	bmi  -7.b		; 30 F9
	bmi  -6.b		; 30 FA
	and ($FA.b),Y		; 31 FA
	and ($FA.b),Y		; 31 FA
	sei		; 78
	jsr $2078.w		; 20 78 20
	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	sei		; 78
	php		; 08
	adc $7909.w,Y		; 79 09 79
	ora #$0979.w		; 09 79 09
	asl $1E3F.w,X		; 1E 3F 1E
	ora $0F5F0E.l,X		; 1F 0E 5F 0F
	tay		; A8
	eor $20C027.l		; 4F 27 C0 20
	cmp $00.b		; C5 00
	dec $00.b,X		; D6 00
	tsb $7F.b		; 04 7F
	asl $3E.b		; 06 3E
	asl $3E.b		; 06 3E
	rti		; 40

	eor $C0DFC1.l,X		; 5F C1 DF C0
	cmp $C0FFC0.l,X		; DF C0 FF C0
	sbc $007000.l,X		; FF 00 70 00
	bit $1F07.w,X		; 3C 07 1F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bit $1F2C.w,X		; 3C 2C 1F
	bpl   7.b		; 10 07
	tsb $03.b		; 04 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $FE30.w,X		; 3C 30 FE
	jsr ($F8FF.w,X)		; FC FF F8
	inc $FFDC.w,X		; FE DC FF
	asl $FF.b		; 06 FF
	bcc  30.b		; 90 1E
	dey		; 88
	mvn $00,$00		; 54 00 00
	jsr ($FE04.w,X)		; FC 04 FE
	bmi  -4.b		; 30 FC
	cpy $04FE.w		; CC FE 04
	ldx $6404.w		; AE 04 64
	brk $20.b		; 00 20
	bpl  16.b		; 10 10
	rti		; 40

	bvc   0.b		; 50 00
	bvc   0.b		; 50 00
	pha		; 48
	bpl -88.b		; 10 A8
	brk $A4.b		; 00 A4
	php		; 08
	cmp ($04.b)		; D2 04
	adc $A000.w,Y		; 79 00 A0
	ldy #$A0.b		; A0 A0
	ldy #$A0.b		; A0 A0
	ldy #$A0.b		; A0 A0
	ldy #$D0.b		; A0 D0
	bne -48.b		; D0 D0
	bne -24.b		; D0 E8
	inx		; E8
	inc $F6.b,X		; F6 F6
	lda $7E00.w,X		; BD 00 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7A.b		; 00 7A
	ply		; 7A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	tsb $0C.b		; 04 0C
	tsb $0E.b		; 04 0E
	asl $0E.b		; 06 0E
	ora $06.b,S		; 03 06
	bpl  16.b		; 10 10
	clc		; 18
	bpl   8.b		; 10 08
	php		; 08
	tsb $0C08.w		; 0C 08 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	iny		; C8
	phd		; 0B
	sei		; 78
	cop $78.b		; 02 78
	eor #$1C3D.w		; 49 3D 1C
	adc $997E95.l,X		; 7F 95 7E 99
	ply		; 7A
	rol A		; 2A
	tya		; 98
	eor [$40.b]		; 47 40
	adc [$40.b]		; 67 40
	and $2C3E28.l		; 2F 28 3E 2C
	tsa		; 3B
	eor $3C4638.l		; 4F 38 46 3C
	asl $7C.b		; 06 7C
	stz $18.b		; 64 18
	adc $307D38.l,X		; 7F 38 7D 30
	adc $7D30.w,X		; 7D 30 7D
	adc ($FB.b),Y		; 71 FB
	adc ($FB.b),Y		; 71 FB
	adc ($FB.b),Y		; 71 FB
	adc ($FB.b),Y		; 71 FB
	bit $7D00.w,X		; 3C 00 7D
	eor $79.b		; 45 79
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	php		; 08
	sbc ($82.b,S),Y		; F3 82
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	adc ($FC.b,X)		; 61 FC
	sbc $F8.b,S		; E3 F8
	dec $F1.b		; C6 F1
	cpy #$F9.b		; C0 F9
	dec $C8FE.w		; CE FE C8
	sed		; F8
	wai		; CB
	sed		; F8
	wai		; CB
	sed		; F8
	beq   7.b		; F0 07
	beq  31.b		; F0 1F
	cpx #$0F.b		; E0 0F
	inx		; E8
	ora $D731F0.l		; 0F F0 31 D7
	bpl -41.b		; 10 D7
	bpl -41.b		; 10 D7
	bpl -116.b		; 10 8C
	.db $62, $19, $C5		; 62 19 C5
	and ($8B.b),Y		; 31 8B
	.db $62, $16, $04		; 62 16 04
	tsb $F889.w		; 0C 89 F8
	phd		; 0B
	sei		; 78
	wai		; CB
	cli		; 58
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	cop $FE.b		; 02 FE
	ora $FC.b		; 05 FC
	phd		; 0B
	sed		; F8
	eor [$50.b],Y		; 57 50
	cmp [$50.b],Y		; D7 50
	sta [$00.b]		; 87 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($3B.b,X)		; 01 3B
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	ora ($7F.b,X)		; 01 7F
	php		; 08
	sbc $00FF19.l,X		; FF 19 FF 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $1F.b		; 02 1F
	trb $37.b		; 14 37
	bit $2F.b		; 24 2F
	bit $7F.b		; 24 7F
	eor $7F.b,S		; 43 7F
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$80.b		; C0 80
	beq  96.b		; F0 60
	sed		; F8
	beq  -8.b		; F0 F8
	pla		; 68
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpx #$60.b		; E0 60
	beq -128.b		; F0 80
	sed		; F8
	rts		; 60

	jsr ($0114.w,X)		; FC 14 01
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora [$02.b]		; 07 02
	ora [$02.b]		; 07 02
	ora $040F06.l		; 0F 06 0F 04
	ora $031E0D.l		; 0F 0D 1E 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $07.b		; 04 07
	ora ($0E.b,X)		; 01 0E
	php		; 08
	asl $0F00.w		; 0E 00 0F
	ora $F6.b,S		; 03 F6
	sta $4C8F46.l		; 8F 46 8F 4C
	sta $0D9E4C.l,X		; 9F 4C 9E 0D
	lda $18BF19.l,X		; BF 19 BF 18
	jsr ($7CB8.w,X)		; FC B8 7C
	sbc $70FE79.l,X		; FF 79 FE 70
	ror $7E61.w		; 6E 61 7E
	adc ($5E.b),Y		; 71 5E
	eor $7C.b,S		; 43 7C
	adc ($3C.b,X)		; 61 3C
	ora $BC.b,S		; 03 BC
	sta [$98.b]		; 87 98
	rti		; 40

	tya		; 98
	rti		; 40

	stz $8E40.w,X		; 9E 40 8E
	rti		; 40

	sty $4C62.w		; 8C 62 4C
	jsl $44204C.l		; 22 4C 20 44
	jsr $3C3C.w		; 20 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	trb $1C1C.w		; 1C 1C 1C
	trb $1E1E.w		; 1C 1E 1E
	asl $081E.w,X		; 1E 1E 08
	rts		; 60

	jmp $4420.w		; 4C 20 44
	jsr $3006.w		; 20 06 30
	jsl $122010.l		; 22 10 20 12
	ora ($18.b,X)		; 01 18
	ora [$08.b],Y		; 17 08
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0C0C.w		; 0C 0C 0C
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	bit $00.b		; 24 00
	tsb $4C20.w		; 0C 20 4C
	cop $5E.b		; 02 5E
	brk $5A.b		; 00 5A
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $3C1E.w,X		; 1E 1E 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	eor $80.b,S		; 43 80
	sta $00.b,S		; 83 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $01.b		; 00 01
	ora ($81.b,X)		; 01 81
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	clc		; 18
	bvc  24.b		; 50 18
	tya		; 98
	bcc -24.b		; 90 E8
	cpy #$F0.b		; C0 F0
	clv		; B8
	bvs  -8.b		; 70 F8
	bvs -56.b		; 70 C8
	bmi -128.b		; 30 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	sec		; 38
	bmi 120.b		; 30 78
	bmi  -8.b		; 30 F8
	sei		; 78
	sed		; F8
	asl $01.b,X		; 16 01
	asl $00.b,X		; 16 00
	ora ($00.b,S),Y		; 13 00
	ora ($08.b),Y		; 11 08
	tsb $0202.w		; 0C 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $0F0F.w		; 0E 0F 0F
	ora $07070F.l		; 0F 0F 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	adc ($0C.b)		; 72 0C
	stz $00.b		; 64 00
	cpx #$08.b		; E0 08
	iny		; C8
	brk $C0.b		; 00 C0
	bpl -128.b		; 10 80
	jsr $2080.w		; 20 80 20
	brk $40.b		; 00 40
	sed		; F8
	beq  -8.b		; F0 F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	adc ($F3.b),Y		; 71 F3
	adc ($F3.b),Y		; 71 F3
	adc ($F3.b),Y		; 71 F3
	bmi -13.b		; 30 F3
	bmi -13.b		; 30 F3
	bpl 113.b		; 10 71
	brk $71.b		; 00 71
	brk $30.b		; 00 30
	sbc ($00.b,S),Y		; F3 00
	sbc ($00.b,S),Y		; F3 00
	sbc ($82.b,S),Y		; F3 82
	sbc ($82.b,S),Y		; F3 82
	adc ($41.b),Y		; 71 41
	adc ($41.b),Y		; 71 41
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	wai		; CB
	cld		; D8
	wai		; CB
	cld		; D8
	wai		; CB
	cld		; D8
	wai		; CB
	iny		; C8
	cmp $C8.b,S		; C3 C8
	eor $C8.b,S		; 43 C8
	ora $C8.b,S		; 03 C8
	ora $C8.b,S		; 03 C8
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	cmp $08CF08.l		; CF 08 CF 08
	cmp [$80.b]		; C7 80
	cmp [$80.b]		; C7 80
	cmp $58.b,S		; C3 58
	sta [$0C.b]		; 87 0C
	sta [$0C.b]		; 87 0C
	sta ($0C.b,X)		; 81 0C
	sta $06.b,S		; 83 06
	cmp $46.b,S		; C3 46
	cpy #$46.b		; C0 46
	ora ($43.b,X)		; 01 43
	sta $08CB08.l		; 8F 08 CB 08
	cmp $00.b,S		; C3 00
	cmp [$04.b]		; C7 04
	cmp $04.b		; C5 04
	sta ($00.b,X)		; 81 00
	sta $02.b,S		; 83 02
	rep #$42		; C2 42
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpx #$20.b		; E0 20
	cpx #$20.b		; E0 20
	cpy #$10.b		; C0 10
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	ora ($FF.b)		; 12 FF
	ora ($FE.b),Y		; 11 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	bpl  -2.b		; 10 FE
	ora ($7C.b,S),Y		; 13 7C
	and ($7E.b),Y		; 31 7E
	adc $4E7E4D.l,X		; 7F 4D 7E 4E
	adc $153D57.l,X		; 7F 57 3D 15
	and $3D24.w,X		; 3D 24 3D
	bit $38.b		; 24 38
	brk $38.b		; 00 38
	sta $102CC0.l		; 8F C0 2C 10
	dey		; 88
	cpy #$90.b		; C0 90
	rts		; 60

	dey		; 88
	cpx #$08.b		; E0 08
	cpx #$00.b		; E0 00
	ora ($01.b,X)		; 01 01
	eor ($56.b)		; 52 56
	bit $2024.w,X		; 3C 24 20
	cpy #$A0.b		; C0 A0
	cpy #$30.b		; C0 30
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	bpl   0.b		; 10 00
	sbc $0DFC55.l,X		; FF 55 FC 0D
	asl $3E08.w,X		; 1E 08 3E
	clc		; 18
	bit $7D10.w,X		; 3C 10 7D
	bmi 125.b		; 30 7D
	bmi  -5.b		; 30 FB
	adc ($FB.b,X)		; 61 FB
	adc ($FF.b,X)		; 61 FF
	ora $1D11.w,X		; 1D 11 1D
	ora ($3D.b,X)		; 01 3D
	and [$3C.b]		; 27 3C
	asl $79.b		; 06 79
	eor $79.b,S		; 43 79
	php		; 08
	sbc ($82.b,S),Y		; F3 82
	sbc ($00.b,S),Y		; F3 00
	lda ($7C.b),Y		; B1 7C
	and ($F8.b,S),Y		; 33 F8
	ror $F9.b		; 66 F9
	jmp ($C8F3.w)		; 6C F3 C8
	inc $D1.b,X		; F6 D1
	cpx $F883.w		; EC 83 F8
	stx $F1.b		; 86 F1
	sed		; F8
	cmp $78.b,S		; C3 78
	ora $F087F0.l		; 0F F0 87 F0
	ora $E00FE0.l,X		; 1F E0 0F E0
	and $C01FC0.l,X		; 3F C0 1F C0
	ora $000100.l,X		; 1F 00 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	ora $000E04.l		; 0F 04 0E 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	ora $06.b		; 05 06
	brk $0E.b		; 00 0E
	phd		; 0B
	brk $1E.b		; 00 1E
	php		; 08
	trb $1D08.w		; 1C 08 1D
	ora ($38.b,S),Y		; 13 38
	bpl  57.b		; 10 39
	bpl 123.b		; 10 7B
	jsr $2073.w		; 20 73 20
	sbc [$0C.b],Y		; F7 0C
	ora $18.b		; 05 18
	ora ($18.b,S),Y		; 13 18
	ora $18.b,S		; 03 18
	tsb $2730.w		; 0C 30 27
	bmi   6.b		; 30 06
	adc ($4F.b,X)		; 61 4F
	adc ($0C.b,X)		; 61 0C
	and ($7C.b)		; 32 7C
	and $79.b		; 25 79
	pla		; 68
	sbc ($6A.b)		; F2 6A
	beq  88.b		; F0 58
	cpx #$DC.b		; E0 DC
	cpx $DF.b		; E4 DF
	sbc [$9F.b]		; E7 9F
	xce		; FB
	bvs -57.b		; 70 C7
	bvs -121.b		; 70 87
	bvs  31.b		; 70 1F
	cpx #$87.b		; E0 87
	cpx #$07.b		; E0 07
	cpx #$27.b		; E0 27
	cmp $1F.b,S		; C3 1F
	cmp ($3F.b,X)		; C1 3F
	lda [$A0.b]		; A7 A0
	eor $A12140.l		; 4F 40 21 A1
	clc		; 18
	lda $403C00.l,X		; BF 00 3C 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$AF.b		; C0 AF
	beq  31.b		; F0 1F
	cpx #$1E.b		; E0 1E
	cpy #$26.b		; C0 26
	inc $00.b		; E6 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $24.b		; 00 24
	bpl -110.b		; 10 92
	inx		; E8
	sei		; 78
	tsb $F0.b		; 04 F0
	tsb $98.b		; 04 98
	trb $F880.w		; 1C 80 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $060C.w		; 0C 0C 06
	inc $FA.b		; E6 FA
	cop $FA.b		; 02 FA
	cop $E2.b		; 02 E2
	cop $64.b		; 02 64
	stz $00.b		; 64 00
	brk $1C.b		; 00 1C
	ora ($08.b,X)		; 01 08
	ora ($08.b)		; 12 08
	cop $20.b		; 02 20
	brk $00.b		; 00 00
	bit $00.b		; 24 00
	tsb $48.b		; 04 48
	brk $08.b		; 00 08
	rti		; 40

	asl $0C0E.w		; 0E 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	trb $181C.w		; 1C 1C 18
	clc		; 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bpl   0.b		; 10 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FDF6.w,X)		; FC F6 FD
	sed		; F8
	beq  -6.b		; F0 FA
	rts		; 60

	bvs -128.b		; 70 80
	ldy #$80.b		; A0 80
	cpy #$40.b		; C0 40
	cpx #$A0.b		; E0 A0
	bvs  96.b		; 70 60
	sbc $C0FEE0.l,X		; FF E0 FE C0
	jsr ($F800.w,X)		; FC 00 F8
	bra  -8.b		; 80 F8
	brk $F0.b		; 00 F0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	bcc  48.b		; 90 30
	jsr $2090.w		; 20 90 20
	brk $48.b		; 00 48
	bit $C8.b		; 24 C8
	bit $88.b		; 24 88
	stz $10.b		; 64 10
	iny		; C8
	bmi -118.b		; 30 8A
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	brk $C0.b		; 00 C0
	brk $FE.b		; 00 FE
	stx $9F.b		; 86 9F
	adc $0F2F2F.l		; 6F 2F 2F 0F
	bra  -1.b		; 80 FF
	ora $F429F8.l,X		; 1F F8 29 F4
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	sbc $F7FF70.l,X		; FF 70 FF F7
	sbc $1096F6.l,X		; FF F6 96 10
	sei		; 78
	rts		; 60

	beq -122.b		; F0 86
	ora ($81.b,X)		; 01 81
	asl $8E.b		; 06 8E
	ora $1F.b,S		; 03 1F
	ora $1E13.w		; 0D 13 1E
	and ($08.b,S),Y		; 33 08
	and $3C.b,S		; 23 3C
	adc [$10.b]		; 67 10
	lsr $80.b		; 46 80
	ora $029F82.l,X		; 1F 82 9F 02
	and $1C.b,S		; 23 1C
	and ($0C.b),Y		; 31 0C
	brk $3E.b		; 00 3E
	jsl $7C0018.l		; 22 18 00 7C
	eor $4E.b		; 45 4E
	bmi -68.b		; 30 BC
	cmp $20.b,S		; C3 20
	.db $42, $32		; 42 32
	cmp $12.b,S		; C3 12
	sbc $32.b,S		; E3 32
	lda $F8FB78.l,X		; BF 78 FB F8
	plx		; FA
	cop $FD.b		; 02 FD
	cop $BE.b		; 02 BE
	and $3FBD.w,X		; 3D BD 3F
	ldy $9C1F.w,X		; BC 1F 9C
	and ($F0.b,S),Y		; 33 F0
	adc $FC.b,X		; 75 FC
	adc $10FD.w,X		; 7D FD 10
	tya		; 98
	ora ($40.b,X)		; 01 40
	ora #$0924.w		; 09 24 09
	tsb $13.b		; 04 13
	tsb $0813.w		; 0C 13 08
	ora ($08.b,S),Y		; 13 08
	ora $00.b,S		; 03 00
	rts		; 60

	adc $003F20.l,X		; 7F 20 3F 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	and $943F00.l,X		; 3F 00 3F 94
	eor ($94.b,X)		; 41 94
	.db $42, $14		; 42 14
	dex		; CA
	and ($89.b)		; 32 89
	and ($89.b)		; 32 89
	and ($8C.b),Y		; 31 8C
	clc		; 18
	cpy $18.b		; C4 18
	cmp $00.b		; C5 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $02FF01.l,X		; FF 01 FF 02
	asl $02.b		; 06 02
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	cop $05.b		; 02 05
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $F2.b		; 02 F2
	asl $F1.b,X		; 16 F1
	ora ($E0.b,S),Y		; 13 E0
	ora $E0.b,S		; 03 E0
	ora ($E0.b,X)		; 01 E0
	ora ($F0.b,X)		; 01 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	bpl -31.b		; 10 E1
	brk $E2.b		; 00 E2
	cop $F1.b		; 02 F1
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl  12.b		; 10 0C
	rol $1E04.w,X		; 3E 04 1E
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	trb $1C10.w		; 1C 10 1C
	bpl  12.b		; 10 0C
	brk $0E.b		; 00 0E
	asl A		; 0A
	asl $0608.w		; 0E 08 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	tsb $02.b		; 04 02
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $06.b,S		; 03 06
	ora [$06.b]		; 07 06
	tsb $02.b		; 04 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $99.b		; 00 99
	cop $30.b		; 02 30
	stx $30.b		; 86 30
	tsb $60.b		; 04 60
	php		; 08
	rti		; 40

	bpl -128.b		; 10 80
	jsr $00A0.w		; 20 A0 00
	brk $40.b		; 00 40
	jmp ($787C.w,X)		; 7C 7C 78
	sei		; 78
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	tsb $0E20.w		; 0C 20 0E
	jsr $1026.w		; 20 26 10
	rol $10.b		; 26 10
	rol $10.b		; 26 10
	asl $10.b		; 06 10
	ora ($08.b)		; 12 08
	ora ($08.b,S),Y		; 13 08
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora $0F0F0F.l		; 0F 0F 0F 0F
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $0F0608.l		; 0F 08 06 0F
	asl $0C1F.w		; 0E 1F 0C
	asl $1E0C.w,X		; 1E 0C 1E
	trb $1C3E.w		; 1C 3E 1C
	rol $3E1C.w,X		; 3E 1C 3E
	bit $0F3C.w,X		; 3C 3C 0F
	brk $0F.b		; 00 0F
	ora ($1E.b,X)		; 01 1E
	bpl  30.b		; 10 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $023E.w		; 20 3E 02
	bit $3C00.w,X		; 3C 00 3C
	jmp ($7C3C.w,X)		; 7C 3C 7C
	bit $387C.w,X		; 3C 7C 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	jmp ($003C.w,X)		; 7C 3C 00
	bit $7C00.w,X		; 3C 00 7C
	rti		; 40

	jmp ($7C04.w,X)		; 7C 04 7C
	tsb $7C.b		; 04 7C
	tsb $78.b		; 04 78
	brk $78.b		; 00 78
	brk $0C.b		; 00 0C
	ora $303E18.l,X		; 1F 18 3E 30
	jmp ($F860.w,X)		; 7C 60 F8
	rti		; 40

	beq -64.b		; F0 C0
	sbc ($81.b,X)		; E1 81
	cpy #$82.b		; C0 82
	dec $0E.b		; C6 0E
	brk $1E.b		; 00 1E
	cop $3C.b		; 02 3C
	tsb $78.b		; 04 78
	php		; 08
	beq  16.b		; F0 10
	cpx #$21.b		; E0 21
	cpy #$07.b		; C0 07
	rep #$4F		; C2 4F
	ora [$EC.b],Y		; 17 EC
	ora ($E2.b),Y		; 11 E2
	phd		; 0B
	sei		; 78
	phd		; 0B
	sec		; 38
	ora $0C.b		; 05 0C
	.db $42, $86		; 42 86
	jsr $93C1.w		; 20 C1 93
	adc ($D4.b,X)		; 61 D4
	sta $5C.b		; 85 5C
	.db $42, $27		; 42 27
	jsr $0007.w		; 20 07 00
	tas		; 1B
	clc		; 18
	ora $0EEC.w,X		; 1D EC 0E
	inc $06.b,X		; F6 06
	sed		; F8
	adc $23CD.w,Y		; 79 CD 23
	phb		; 8B
	ora [$B7.b]		; 07 B7
	and $9F5ECF.l		; 2F CF 5E 9F
	rol $3CBF.w,X		; 3E BF 3C
	ldx $BC38.w,Y		; BE 38 BC
	bmi   3.b		; 30 03
	adc $430F.w,Y		; 79 0F 43
	ora $4E3F26.l		; 0F 26 3F 4E
	adc $587F5C.l,X		; 7F 5C 7F 58
	adc $787F50.l,X		; 7F 50 7F 78
	inc $F279.w,X		; FE 79 F2
	bra -62.b		; 80 C2
	sec		; 38
	clv		; B8
	clc		; 18
	jmp ($6C30.w,X)		; 7C 30 6C
	bit $CC14.w,X		; 3C 14 CC
	php		; 08
	adc ($F9.b),Y		; 71 F9
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	bpl  -2.b		; 10 FE
	bpl  -2.b		; 10 FE
	jsr $10FE.w		; 20 FE 10
	inc $FF08.w,X		; FE 08 FF
	ora ($38.b,X)		; 01 38
	jsr $213E.w		; 20 3E 21
	and $123F33.l,X		; 3F 33 3F 12
	asl $1E12.w,X		; 1E 12 1E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	jsr $3007.w		; 20 07 30
	ora ($36.b,X)		; 01 36
	asl $34.b		; 06 34
	tsb $15.b		; 04 15
	tsb $1D.b		; 04 1D
	tsb $0D.b		; 04 0D
	tsb $09.b		; 04 09
	brk $00.b		; 00 00
	cmp $01.b,S		; C3 01
	ora $C5FEC2.l,X		; 1F C2 FE C5
	jsr ($3C27.w,X)		; FC 27 3C
	sbc [$3C.b]		; E7 3C
	cmp ($1C.b,X)		; C1 1C
	sbc ($1E.b,S),Y		; F3 1E
	ora $FF.b,S		; 03 FF
	asl $E6.b		; 06 E6
	and $24.b		; 25 24
	and $20.b,S		; 23 20
	cmp ($10.b,S),Y		; D3 10
	cmp ($10.b,S),Y		; D3 10
	sbc [$14.b],Y		; F7 14
	sbc $04.b		; E5 04
	brk $02.b		; 00 02
	tsb $03.b		; 04 03
	asl A		; 0A
	ora [$17.b]		; 07 17
	ora $071123.l		; 0F 23 11 07
	jsr $004E.w		; 20 4E 00
	trb $0341.w		; 1C 41 03
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $1F0F0F.l		; 0F 0F 0F 1F
	ora $3E3F3F.l,X		; 1F 3F 3F 3E
	rol $1060.w,X		; 3E 60 10
	rts		; 60

	bpl   0.b		; 10 00
	bra -128.b		; 80 80
	ldy #$80.b		; A0 80
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	jmp ($3C18.w,X)		; 7C 18 3C
	tsb $0C3C.w		; 0C 3C 0C
	rol $0078.w,X		; 3E 78 00
	sei		; 78
	rti		; 40

	jmp ($3C44.w,X)		; 7C 44 3C
	tsb $3C.b		; 04 3C
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	trb $0000.w		; 1C 00 00
	bvs   0.b		; 70 00
	sed		; F8
	jsr $F0F8.w		; 20 F8 F0
	jsr ($FEB8.w,X)		; FC B8 FE
	ldy #$FE.b		; A0 FE
	bpl -84.b		; 10 AC
	pla		; 68
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	sec		; 38
	jsr ($0C0C.w,X)		; FC 0C 0C
	brk $40.b		; 00 40
	jsr $10C0.w		; 20 C0 10
	sei		; 78
	brk $A0.b		; 00 A0
	bpl -32.b		; 10 E0
	bmi  64.b		; 30 40
	bmi -128.b		; 30 80
	jsr $7030.w		; 20 30 70
	clc		; 18
	clv		; B8
	jmp $C07C.w		; 4C 7C C0
	jsr $00C0.w		; 20 C0 00
	cpy #$00.b		; C0 00
	cpx #$E0.b		; E0 E0
	cpy #$00.b		; C0 00
	bcs  56.b		; B0 38
	clc		; 18
	jmp ($FE4C.w,X)		; 7C 4C FE
	jsr $583C.w		; 20 3C 58
	bra  32.b		; 80 20
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	jsr $00FE.w		; 20 FE 00
	jmp ($B880.w,X)		; 7C 80 B8
	bra -80.b		; 80 B0
	bra -96.b		; 80 A0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	cpy #$60.b		; C0 60
	ldy #$20.b		; A0 20
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	inx		; E8
	php		; 08
	cpx #$08.b		; E0 08
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	beq -124.b		; F0 84
	bmi -124.b		; 30 84
	bit $5C84.w,X		; 3C 84 5C
	cpy $1C.b		; C4 1C
	lsr $F8.b		; 46 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $FC.b		; 00 FC
	sty $78.b		; 84 78
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	jsr $2E6E.w		; 20 6E 2E
	ror $7E1C.w,X		; 7E 1C 7E
	trb $4C71.w		; 1C 71 4C
	and ($4C.b,X)		; 21 4C
	and ($4C.b,X)		; 21 4C
	and ($4C.b,X)		; 21 4C
	jsr $0010.w		; 20 10 00
	tsb $0C0E.w		; 0C 0E 0C
	asl $3E0E.w,X		; 1E 0E 3E
	asl $1E3E.w,X		; 1E 3E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	ora $10011F.l,X		; 1F 1F 01 10
	cop $10.b		; 02 10
	bit $00.b		; 24 00
	tsb $20.b		; 04 20
	tsb $4C02.w		; 0C 02 4C
	cop $5E.b		; 02 5E
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $3C3C.w,X		; 1E 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $0000.w,X		; 3C 00 00
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	brk $02.b		; 00 02
	php		; 08
	tsb $09.b		; 04 09
	ora $00.b,X		; 15 00
	brk $12.b		; 00 12
	jsl $030300.l		; 22 00 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	asl $0C0E.w		; 0E 0E 0C
	tsb $1C1C.w		; 0C 1C 1C
	trb $4840.w		; 1C 40 48
	bit $48.b		; 24 48
	jsr $2008.w		; 20 08 20
	bit $2C12.w		; 2C 12 2C
	bpl  38.b		; 10 26
	ora ($27.b),Y		; 11 27
	bpl  56.b		; 10 38
	sec		; 38
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $0C0C.w		; 1C 0C 0C
	asl $0E0E.w		; 0E 0E 0E
	asl $0F0F.w		; 0E 0F 0F
	eor [$30.b]		; 47 30
	jsr $0F18.w		; 20 18 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $000707.l		; 0F 07 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	trb $1C0C.w		; 1C 0C 1C
	rts		; 60

	rti		; 40

	jsr $3020.w		; 20 20 30
	jsr $1010.w		; 20 10 10
	clc		; 18
	bpl  24.b		; 10 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $03.b		; 00 03
	php		; 08
	ora $08.b,S		; 03 08
	phd		; 0B
	clc		; 18
	jsl $3D5918.l		; 22 18 59 3D
	bit $9D7F.w,X		; 3C 7F 9D
	lsr $B9.b		; 46 B9
	.db $42, $07		; 42 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	asl $1B3C.w		; 0E 3C 1B
	adc $3C7E38.l,X		; 7F 38 7E 3C
	rol $180E.w,X		; 3E 0E 18
	bpl  32.b		; 10 20
	and [$4F.b]		; 27 4F
	ora $5F1F5F.l		; 0F 5F 1F 5F
	asl $2F.b		; 06 2F
	brk $10.b		; 00 10
	brk $1F.b		; 00 1F
	ora [$00.b]		; 07 00
	clc		; 18
	ora $273F33.l,X		; 1F 33 3F 27
	and $003F2F.l,X		; 3F 2F 3F 00
	ora $0C0F00.l,X		; 1F 00 0F 0C
	tsb $C480.w		; 0C 80 C4
	asl $1F1F.w		; 0E 1F 1F
	sbc $FEFFBF.l,X		; FF BF FF FE
	sbc $009D6D.l,X		; FF 6D 9D 00
	ora ($4F.b,X)		; 01 4F
	ora [$03.b]		; 07 03
	tsa		; 3B
	brk $FE.b		; 00 FE
	asl $FF.b		; 06 FF
	stx $1CFF.w		; 8E FF 1C
	inc $FF01.w,X		; FE 01 FF
	brk $FF.b		; 00 FF
	ora [$FF.b]		; 07 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	tsb $3C.b		; 04 3C
	phd		; 0B
	and $0000.w,Y		; 39 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $131F09.l		; 0F 09 1F 13
	ora $000007.l,X		; 1F 07 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $F7.b		; 00 F7
	and ($FF.b),Y		; 31 FF
	adc $00007F.l,X		; 7F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	bra  -1.b		; 80 FF
	lda $1F0C.w,Y		; B9 0C 1F
	tsb $1C3F.w		; 0C 3F 1C
	rol $3E18.w,X		; 3E 18 3E
	clc		; 18
	rol $7C38.w,X		; 3E 38 7C
	sec		; 38
	jmp ($7C38.w,X)		; 7C 38 7C
	asl $1E10.w,X		; 1E 10 1E
	cop $3E.b		; 02 3E
	jsl $3C003C.l		; 22 3C 00 3C
	tsb $3C.b		; 04 3C
	tsb $78.b		; 04 78
	rti		; 40

	sei		; 78
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	asl $0F03.w		; 0E 03 0F
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	asl $07.b		; 06 07
	tsb $04.b		; 04 04
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	mvp $46,$33		; 44 33 46
	and ($46.b),Y		; 31 46
	and ($46.b),Y		; 31 46
	bmi  96.b		; 30 60
	ora ($81.b),Y		; 11 81
	sta [$22.b]		; 87 22
	rol $1EC2.w,X		; 3E C2 1E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	asl $7E.b		; 06 7E
	cmp $14.b,X		; D5 14
	sbc $14.b,X		; F5 14
	rti		; 40

	brk $00.b		; 00 00
	jsr $6040.w		; 20 40 60
	rti		; 40

	cpx #$A0.b		; E0 A0
	bcs   0.b		; B0 00
	bpl  96.b		; 10 60
	bpl -16.b		; 10 F0
	bpl   0.b		; 10 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra -96.b		; 80 A0
	ldy #$40.b		; A0 40
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
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
	brk $E0.b		; 00 E0
	bpl 112.b		; 10 70
	clc		; 18
	bvc  24.b		; 50 18
	tya		; 98
	bcc -24.b		; 90 E8
	cpy #$F0.b		; C0 F0
	clv		; B8
	bvs  -8.b		; 70 F8
	bvs -56.b		; 70 C8
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	sec		; 38
	bmi 120.b		; 30 78
	bmi  -8.b		; 30 F8
	plp		; 28
	plp		; 28
	eor [$90.b],Y		; 57 90
	sta $38.b,S		; 83 38
	and $7C70.w,Y		; 39 70 7C
	plx		; FA
	beq  -8.b		; F0 F8
	jsr $C0B0.w		; 20 B0 C0
	cpx #$FF.b		; E0 FF
	cmp $C66C7C.l,X		; DF 7C 6C C6
	dec $86.b		; C6 86
	ldx $60.b,Y		; B6 60
	sei		; 78
	cpx #$F8.b		; E0 F8
	brk $F8.b		; 00 F8
	bra -16.b		; 80 F0
	cpy #$E0.b		; C0 E0
	cpy #$E0.b		; C0 E0
	jsr $40E0.w		; 20 E0 40
	cpy #$A0.b		; C0 A0
	bra 104.b		; 80 68
	brk $4C.b		; 00 4C
	jsr $2054.w		; 20 54 20
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	bra  -4.b		; 80 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  72.b		; 80 48
	tsb $60.b		; 04 60
	jmp $045820.l		; 5C 20 58 04
	phy		; 5A
	brk $4C.b		; 00 4C
	brk $47.b		; 00 47
	jsr $0833.w		; 20 33 08
	bmi  48.b		; 30 30
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	bit $3E3C.w,X		; 3C 3C 3E
	rol $1E1E.w,X		; 3E 1E 1E
	ora [$07.b]		; 07 07
	plp		; 28
	cop $38.b		; 02 38
	cop $10.b		; 02 10
	bit $10.b		; 24 10
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	pha		; 48
	brk $08.b		; 00 08
	bcc   0.b		; 90 00
	trb $1C1C.w		; 1C 1C 1C
	trb $1818.w		; 1C 18 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	ora $0C.b		; 05 0C
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $32.b,S		; 03 32
	bra 114.b		; 80 72
	tsb $64.b		; 04 64
	brk $E0.b		; 00 E0
	php		; 08
	iny		; C8
	brk $C0.b		; 00 C0
	bpl -128.b		; 10 80
	jsr $2080.w		; 20 80 20
	jmp ($F87C.w,X)		; 7C 7C F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	bpl 124.b		; 10 7C
	bmi 120.b		; 30 78
	jsr $60F8.w		; 20 F8 60
	sed		; F8
	rts		; 60

	beq  28.b		; F0 1C
	trb $141C.w		; 1C 1C 14
	sec		; 38
	jsr $0938.w		; 20 38 09
	sei		; 78
	eor #$0170.w		; 49 70 01
	beq -109.b		; F0 93
	beq  19.b		; F0 13
	and ($43.b,S),Y		; 33 43
	and $467D.w,X		; 3D 7D 46
	sta $568351.l		; 8F 51 83 56
	dey		; 88
	lda $18.b,S		; A3 18
	tax		; AA
	ora ($8A.b),Y		; 11 8A
	and ($03.b),Y		; 31 03
	sbc $06FF0D.l,X		; FF 0D FF 06
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $09FF00.l,X		; FF 00 FF 09
	sec		; 38
	tsb $3F.b		; 04 3F
	brk $3F.b		; 00 3F
	ora ($3F.b,X)		; 01 3F
	bpl 127.b		; 10 7F
	bpl 119.b		; 10 77
	bpl 115.b		; 10 73
	bmi -15.b		; 30 F1
	ora $080C0F.l,X		; 1F 0F 0C 08
	ora ($13.b,S),Y		; 13 13
	and [$24.b],Y		; 37 24
	rol $04.b,X		; 36 04
	adc ($42.b)		; 72 42
	adc ($41.b),Y		; 71 41
	bvs   0.b		; 70 00
	adc $057F.w,X		; 7D 7F 05
	sbc $4BC5F8.l,X		; FF F8 C5 4B
	ldy #$BB.b		; A0 BB
	rts		; 60

	sta $5F10.w		; 8D 10 5F
	cmp ($5A.b,X)		; C1 5A
	cmp ($FF.b,X)		; C1 FF
	bcs -80.b		; B0 B0
	bra -62.b		; 80 C2
	ora ($86.b,X)		; 01 86
	bmi -90.b		; 30 A6
	and #$10E6.w		; 29 E6 10
	rol $3F00.w,X		; 3E 00 3F
	ora [$38.b]		; 07 38
	jmp ($7838.w,X)		; 7C 38 78
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	clc		; 18
	sei		; 78
	clc		; 18
	sei		; 78
	php		; 08
	sec		; 38
	brk $38.b		; 00 38
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	jsr $2038.w		; 20 38 20
	clc		; 18
	bpl   2.b		; 10 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $05.b		; 02 05
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $F2.b		; 00 F2
	asl $F0.b,X		; 16 F0
	asl $E1.b,X		; 16 E1
	ora $E1.b,S		; 03 E1
	ora $E0.b,S		; 03 E0
	ora $E0.b,S		; 03 E0
	ora ($F0.b,X)		; 01 F0
	ora ($F0.b),Y		; 11 F0
	ora ($E1.b),Y		; 11 E1
	brk $E3.b		; 00 E3
	cop $F2.b		; 02 F2
	cop $F0.b		; 02 F0
	brk $F1.b		; 00 F1
	ora ($F1.b,X)		; 01 F1
	ora ($E0.b,X)		; 01 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	php		; 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	sei		; 78
	php		; 08
	sed		; F8
	dey		; 88
	beq -124.b		; F0 84
	bmi -124.b		; 30 84
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $F8.b		; 00 F8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $0E0800.l		; 0F 00 08 0E
	clc		; 18
	ora $0031.w,X		; 1D 31 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $C0E018.l,X		; FF 18 E0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $FFFF7F.l,X		; 7F 7F FF FF
	sbc $00FFF8.l,X		; FF F8 FF 00
	inc $F000.w,X		; FE 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FE00.w,X)		; FC 00 FE
	jsr ($FEFF.w,X)		; FC FF FE
	lda [$6E.b],Y		; B7 6E
	rol $1C14.w,X		; 3E 14 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($20FF.w,X)		; FC FF 20
	sbc $003E00.l,X		; FF 00 3E 00
	trb $4088.w		; 1C 88 40
	php		; 08
	rts		; 60

	jmp $4420.w		; 4C 20 44
	jsr $3006.w		; 20 06 30
	jsl $122010.l		; 22 10 20 12
	ora ($18.b,X)		; 01 18
	bit $1C3C.w,X		; 3C 3C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $0C1C.w		; 1C 1C 0C
	tsb $0C0C.w		; 0C 0C 0C
	tsb $060C.w		; 0C 0C 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	rts		; 60

	rti		; 40

	jsr $00C0.w		; 20 C0 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpx #$60.b		; E0 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	sbc ($71.b),Y		; F1 71
	jmp $A628.w		; 4C 28 A6
	sty $D3.b		; 84 D3
	brk $6F.b		; 00 6F
	tsb $8C80.w		; 0C 80 8C
	cpy #$0F.b		; C0 0F
	cpy #$F1.b		; C0 F1
	sta [$41.b]		; 87 41
	inc $FF00.w,X		; FE 00 FF
	bra  -1.b		; 80 FF
	brk $F0.b		; 00 F0
	ora $3F0F7F.l		; 0F 7F 0F 3F
	ora $612C7F.l		; 0F 7F 2C 61
	bpl  50.b		; 10 32
	bra  24.b		; 80 18
	wai		; CB
	tsb $47.b		; 04 47
	sec		; 38
	ora $AFE0.w		; 0D E0 AF
	sbc $FC.b,S		; E3 FC
	cpx #$DE.b		; E0 DE
	cpy #$EC.b		; C0 EC
	rts		; 60

	sbc $64.b,S		; E3 64
	sbc $1C.b,S		; E3 1C
	adc $A0.b,S		; 63 A0
	ora $1CBC1C.l,X		; 1F 1C BC 1C
	jsr ($005C.w,X)		; FC 5C 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	sbc $10ED.w,Y		; F9 ED 10
	sbc $11E311.l		; EF 11 E3 11
	jsl $0E0131.l		; 22 31 01 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $36.b,X		; 36 36
	inc $EC0F.w		; EE 0F EC
	ora $CC0FEC.l		; 0F EC 0F CC
	ora $680100.l		; 0F 00 01 68
	brk $30.b		; 00 30
	brk $1C.b		; 00 1C
	bra -50.b		; 80 CE
	jsr $1021.w		; 20 21 10
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	sei		; 78
	sei		; 78
	trb $0E1C.w		; 1C 1C 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $4C20.w		; 4C 20 4C
	jsr $204C.w		; 20 4C 20
	eor $204720.l		; 4F 20 47 20
	lsr $31.b		; 46 31
	rol $11.b		; 26 11
	rol $10.b		; 26 10
	asl $1E3E.w,X		; 1E 3E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $0E0E.w,X		; 1E 0E 0E
	asl $0F0E.w		; 0E 0E 0F
	ora $061002.l		; 0F 02 10 06
	brk $24.b		; 00 24
	brk $0C.b		; 00 0C
	jsr $024C.w		; 20 4C 02
	lsr $5A00.w,X		; 5E 00 5A
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	asl $1E1E.w		; 0E 1E 1E
	asl $1E1E.w,X		; 1E 1E 1E
	asl $3C3C.w,X		; 1E 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $0000.w,X		; 3C 00 00
	ora ($43.b,X)		; 01 43
	ora ($43.b,X)		; 01 43
	bra -125.b		; 80 83
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	rep #$42		; C2 42
	bra   0.b		; 80 00
	ora ($01.b,X)		; 01 01
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  -4.b		; 70 FC
	rts		; 60

	jsr ($FC60.w,X)		; FC 60 FC
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	jsr $7CF8.w		; 20 F8 7C
	tsb $FC.b		; 04 FC
	sty $F8.b		; 84 F8
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	ora ($04.b,X)		; 01 04
	ora ($18.b,X)		; 01 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	ora ($18.b,X)		; 01 18
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora $06.b,S		; 03 06
	brk $3F.b		; 00 3F
	php		; 08
	ora $0F090E.l		; 0F 0E 09 0F
	php		; 08
	ora $000308.l		; 0F 08 03 00
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	sta ($48.b)		; 92 48
	bcc  73.b		; 90 49
	brk $04.b		; 00 04
	eor [$78.b]		; 47 78
	lda $18CB38.l		; AF 38 CB 18
	cmp $1C.b		; C5 1C
.INDEX 8
	sep #$1E		; E2 1E
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	ora [$FC.b]		; 07 FC
	lda $00C728.l		; AF 28 C7 00
	sbc [$00.b]		; E7 00
	xba		; EB
	php		; 08
	sbc $04.b		; E5 04
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	bra  48.b		; 80 30
	cpx #$30.b		; E0 30
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3B.b		; 00 3B
	php		; 08
	adc $29F715.l,X		; 7F 15 F7 29
	xba		; EB
	and #$01E3.w		; 29 E3 01
	sbc [$03.b],Y		; F7 03
	sbc $00FA05.l,X		; FF 05 FA 00
	brk $3B.b		; 00 3B
	jsl $7D487D.l		; 22 7D 48 7D
	ora $1D7F.w,X		; 1D 7F 1D
	tsa		; 3B
	php		; 08
	lda $18BEA0.l,X		; BF A0 BE 18
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	cop $0F.b		; 02 0F
	tsb $0F.b		; 04 0F
	tsb $1F.b		; 04 1F
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $010F09.l		; 0F 09 0F 01
	sta [$F3.b]		; 87 F3
	ora [$E3.b]		; 07 E3
	ora $EB.b,S		; 03 EB
	ora $C1.b		; 05 C1
	asl $D2.b		; 06 D2
	ora $E1.b,S		; 03 E1
	ora ($88.b,X)		; 01 88
	ora ($88.b)		; 12 88
	sbc #$D92F.w		; E9 2F D9
	eor $B057D0.l,X		; 5F D0 57 B0
	lda $00AFA0.l,X		; BF A0 AF 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $080400.l,X		; 3F 00 04 08
	brk $02.b		; 00 02
	php		; 08
	ora ($01.b)		; 12 01
	asl $11.b		; 06 11
	and [$00.b]		; 27 00
	and $003E00.l		; 2F 00 3E 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	asl $0E0E.w		; 0E 0E 0E
	asl $1E1E.w		; 0E 1E 1E
	asl $001E.w,X		; 1E 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	sed		; F8
	ldy #$FC.b		; A0 FC
	sed		; F8
	jsr ($FEB4.w,X)		; FC B4 FE
	sty $FF.b,X		; 94 FF
	cpx #$17.b		; E0 17
	lsr A		; 4A
	sty $00.b		; 84 00
	brk $E0.b		; 00 E0
	jsr $08F8.w		; 20 F8 08
	jsr ($FE34.w,X)		; FC 34 FE
	rol A		; 2A
	dec $1C08.w,X		; DE 08 1C
	bpl  16.b		; 10 10
	ldy #$E4.b		; A0 E4
	dey		; 88
	bcs  68.b		; B0 44
	beq   4.b		; F0 04
	rts		; 60

	tsb $A0.b		; 04 A0
	dey		; 88
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc -96.b		; 90 A0
	tya		; 98
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	clc		; 18
	bvs  16.b		; 70 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora $22.b		; 05 22
	ora $22.b		; 05 22
	ora $72.b		; 05 72
	bit $73.b		; 24 73
	and ($F3.b,X)		; 21 F3
	eor ($F7.b,X)		; 41 F7
	cop $3E.b		; 02 3E
	brk $7C.b		; 00 7C
	ora ($1D.b,X)		; 01 1D
	and ($3D.b,X)		; 21 3D
	and ($0D.b),Y		; 31 0D
	bvs  78.b		; 70 4E
	bvs  15.b		; 70 0F
	beq -101.b		; F0 9B
	cpy #$19.b		; C0 19
	lda $FFFF5F.l		; AF 5F FF FF
	sbc $FCFBFF.l,X		; FF FF FB FC
	jmp ($7EF0.w)		; 6C F0 7E
	sta $F0F7FE.l		; 8F FE F7 F0
	ora [$80.b],Y		; 17 80
	lda $7FFF7F.l,X		; BF 7F FF 7F
	sbc $00FF70.l,X		; FF 70 FF 00
	adc $067E0E.l,X		; 7F 0E 7E 06
	inc $0000.w,X		; FE 00 00
	cld		; D8
	cpx #$FC.b		; E0 FC
	jsr ($FEFE.w,X)		; FC FE FE
	rol $101E.w,X		; 3E 1E 10
	tay		; A8
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $FC.b		; 00 FC
	stz $BEFE.w		; 9C FE BE
	sbc $40FF0E.l,X		; FF 0E FF 40
	lsr $C0C0.w,X		; 5E C0 C0
	cpy #$C0.b		; C0 C0
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
	jsr $00F8.w		; 20 F8 00
	sei		; 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $0204.w		; 0C 04 02
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	brk $03.b		; 00 03
	cop $03.b		; 02 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($E1.b,X)		; 01 E1
	ora [$E0.b],Y		; 17 E0
	ora ($E0.b,S),Y		; 13 E0
	ora ($70.b),Y		; 11 70
	bpl 112.b		; 10 70
	bpl  96.b		; 10 60
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	bra -30.b		; 80 E2
	cop $F1.b		; 02 F1
	ora ($F0.b),Y		; 11 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	tsb $8CB8.w		; 0C B8 8C
	bvc -58.b		; 50 C6
	bit $18E6.w		; 2C E6 18
	adc ($04.b,S),Y		; 73 04
	and ($0C.b),Y		; 31 0C
	and $1B08.w,Y		; 39 08 1B
	sed		; F8
	php		; 08
	bvs   0.b		; 70 00
	ldy $5884.w,X		; BC 84 58
	rti		; 40

	rol $1E22.w		; 2E 22 1E
	bpl  23.b		; 10 17
	ora ($06.b),Y		; 11 06
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $03.b,S		; 03 03
	ora [$02.b]		; 07 02
	ora [$00.b]		; 07 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($04.b,X)		; 01 04
	ora [$00.b]		; 07 00
	ora $841F01.l		; 0F 01 1F 84
	xce		; FB
	.db $82, $FA, $02		; 82 FA 02
	plx		; FA
	cop $CE.b		; 02 CE
	sec		; 38
	and $887574.l,X		; 3F 74 75 88
	nop		; EA
	cpy #$94.b		; C0 94
	ldx $00.b,Y		; B6 00
	sta $00.b,X		; 95 00
	sta $8508.w		; 8D 08 85
	ldy $33.b,X		; B4 33
	xce		; FB
	brk $FE.b		; 00 FE
	rts		; 60

	sbc $081F70.l,X		; FF 70 1F 08
	ora $183F08.l,X		; 1F 08 3F 18
	rol $7C11.w,X		; 3E 11 7C
	and ($7C.b),Y		; 31 7C
	and ($FC.b),Y		; 31 FC
	rts		; 60

	jsr ($FC60.w,X)		; FC 60 FC
	asl $1E12.w,X		; 1E 12 1E
	cop $3C.b		; 02 3C
	and ($3C.b,X)		; 21 3C
	ora [$7C.b]		; 07 7C
	eor [$78.b]		; 47 78
	ora $F8.b,S		; 03 F8
	sta ($F8.b,X)		; 81 F8
	php		; 08
	bit $12.b		; 24 12
	stz $12.b		; 64 12
	cpy $CC22.w		; CC 22 CC
	jsl $994499.l		; 22 99 44 99
	mvp $44,$99		; 44 99 44
	and ($08.b,S),Y		; 33 08
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	inc A		; 1A
	rti		; 40

	inc A		; 1A
	rti		; 40

	clc		; 18
	mvp $40,$14		; 44 14 40
	trb $40.b		; 14 40
	bpl  64.b		; 10 40
	bpl  64.b		; 10 40
	bpl  64.b		; 10 40
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3838.w,X		; 3C 38 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bpl  64.b		; 10 40
	brk $40.b		; 00 40
	tsb $40.b		; 04 40
	inc A		; 1A
	rti		; 40

	ora $0E40.w,X		; 1D 40 0E
	rts		; 60

	tsa		; 3B
	mvp $00,$03		; 44 03 00
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bit $3E3C.w,X		; 3C 3C 3E
	rol $1F1F.w,X		; 3E 1F 1F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -96.b		; 80 A0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $5C.b		; 00 5C
	and ($18.b,X)		; 21 18
	.db $42, $B0		; 42 B0
	tsb $60.b		; 04 60
	dey		; 88
	rti		; 40

	bpl -128.b		; 10 80
	jsr $40A0.w		; 20 A0 40
	rti		; 40

	brk $1E.b		; 00 1E
	asl $3C3C.w,X		; 1E 3C 3C
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	jsr ($FCF2.w,X)		; FC F2 FC
	sbc $F8FCFC.l,X		; FF FC FC F8
	sed		; F8
	sed		; F8
	sei		; 78
	bcs -112.b		; B0 90
	cpx #$E0.b		; E0 E0
	bvs  48.b		; 70 30
	sbc ($FD.b,X)		; E1 FD
	beq  -4.b		; F0 FC
	sed		; F8
	inc $FE78.w,X		; FE 78 FE
	bmi  -4.b		; 30 FC
	bra  -8.b		; 80 F8
	rts		; 60

	sed		; F8
	bmi  -8.b		; 30 F8
	bpl   0.b		; 10 00
	bra  64.b		; 80 40
	bra  80.b		; 80 50
	bra  84.b		; 80 54
	sty $52.b		; 84 52
	bit $92.b		; 24 92
	bit $92.b		; 24 92
	bit $92.b		; 24 92
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	asl $08.b		; 06 08
	trb $01.b		; 14 01
	php		; 08
	ora ($2A.b)		; 12 2A
	tsb $44.b		; 04 44
	jsr $4800.w		; 20 00 48
	dey		; 88
	brk $28.b		; 00 28
	bra   7.b		; 80 07
	ora [$0E.b]		; 07 0E
	asl $0C0C.w		; 0E 0C 0C
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	brk $70.b		; 00 70
	jsr $6070.w		; 20 70 60
	bvs  97.b		; 70 61
	rts		; 60

	.db $42, $61		; 42 61
	cop $40.b		; 02 40
	tsb $02.b		; 04 02
	ora ($04.b,X)		; 01 04
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	and $B83F5D.l,X		; 3F 5D 3F B8
	adc $3A8300.l,X		; 7F 00 83 3A
	brk $74.b		; 00 74
	brk $E0.b		; 00 E0
	php		; 08
	cpy #$10.b		; C0 10
	tsb $04.b		; 04 04
	asl $197E.w		; 0E 7E 19
	sbc $FC7E7C.l,X		; FF 7C 7E FC
	inc $F8F8.w,X		; FE F8 F8
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora ($80.b,X)		; 01 80
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	jsr ($BC5A.w,X)		; FC 5A BC
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	.db $82, $64, $30		; 82 64 30
	sty $74.b		; 84 74
	brk $74.b		; 00 74
	brk $70.b		; 00 70
	php		; 08
	pha		; 48
	cli		; 58
	php		; 08
	jmp ($E400.w,X)		; 7C 00 E4
	clc		; 18
	tya		; 98
	sei		; 78
	sei		; 78
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($FB.b)		; 72 FB
	bit $FF.b,X		; 34 FF
	and ($FD.b),Y		; 31 FD
	and ($7B.b,S),Y		; 33 7B
	ora ($7B.b,S),Y		; 13 7B
	ora ($7B.b),Y		; 11 7B
	bpl  63.b		; 10 3F
	bpl  63.b		; 10 3F
	sbc $F889.w,X		; FD 89 F8
	dey		; 88
	ply		; 7A
	phd		; 0B
	adc $47.b,X		; 75 47
	adc $47.b,X		; 75 47
	and $380F.w,X		; 3D 0F 38
	and ($3C.b,X)		; 21 3C
	bit $F7.b		; 24 F7
	and $F8FE71.l,X		; 3F 71 FE F8
	beq -13.b		; F0 F3
	sbc [$F2.b],Y		; F7 F2
	cpx #$C2E8.w		; E0 E8 C2
	bvc -118.b		; 50 8A
	ora ($89.b)		; 12 89
	asl $3F.b,X		; 16 3F
	bmi  -1.b		; 30 FF
	cpx #$E1FF.w		; E0 FF E1
	sbc $80FFC0.l,X		; FF C0 FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $6060F0.l,X		; 7F F0 60 60
	bvc -32.b		; 50 E0
	bcs -32.b		; B0 E0
	cpx #$C364.w		; E0 64 C3
	lda ($08.b,S),Y		; B3 08
	tya		; 98
	mvp $22,$4C		; 44 4C 22
	rti		; 40

	sed		; F8
	rti		; 40

	sed		; F8
	bra  -4.b		; 80 FC
	cpy #$40FE.w		; C0 FE 40
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $2FFF00.l,X		; FF 00 FF 2F
	ora $020709.l,X		; 1F 09 07 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$30C0.w		; C0 C0 30
	brk $00.b		; 00 00
	ora [$3F.b]		; 07 3F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $86.b		; 02 86
	brk $86.b		; 00 86
	brk $82.b		; 00 82
	ora ($83.b,X)		; 01 83
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	sta ($00.b,X)		; 81 00
	sta $02.b,S		; 83 02
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 124.b		; 30 7C
	bmi 124.b		; 30 7C
	bmi 120.b		; 30 78
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	bvs  -8.b		; 70 F8
	adc ($FB.b),Y		; 71 FB
	bvs  -8.b		; 70 F8
	sei		; 78
	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	php		; 08
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	sed		; F8
	phb		; 8B
	sed		; F8
	sta $0487F8.l		; 8F F8 87 04
	sec		; 38
	cop $1E.b		; 02 1E
	cop $3E.b		; 02 3E
	ora ($03.b,X)		; 01 03
	pha		; 48
	and ($25.b),Y		; 31 25
	ora $CC92.w,Y		; 19 92 CC
	and ($0E.b),Y		; 31 0E
	ora [$10.b],Y		; 17 10
	ora #$0108.w		; 09 08 01
	brk $06.b		; 00 06
	dec A		; 3A
	ora $FD.b,S		; 03 FD
	brk $FE.b		; 00 FE
	bra  -1.b		; 80 FF
	brk $E1.b		; 00 E1
	cpy #$E080.w		; C0 80 E0
	cpy #$E0F0.w		; C0 F0 E0
	cpx #$F0F0.w		; E0 F0 F0
	beq -16.b		; F0 F0
	bcs  48.b		; B0 30
	bcc  16.b		; 90 10
	bpl -128.b		; 10 80
	cpy #$E0C0.w		; C0 C0 E0
	rti		; 40

	beq -32.b		; F0 E0
	beq -96.b		; F0 A0
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	bcs   0.b		; B0 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	bra -64.b		; 80 C0
	bmi -128.b		; 30 80
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	jsr $7020.w		; 20 20 70
	bvs -32.b		; 70 E0
	php		; 08
	inx		; E8
	tsb $04F0.w		; 0C F0 04
	bvs   4.b		; 70 04
	sei		; 78
	tsb $BC.b		; 04 BC
	sty $38.b		; 84 38
	.db $82, $78, $C2		; 82 78 C2
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	tsb $FC.b		; 04 FC
	tsb $78.b		; 04 78
	brk $FC.b		; 00 FC
	bra  60.b		; 80 3C
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
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
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	dey		; 88
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	.db $42, $18		; 42 18
	.db $42, $3A		; 42 3A
	.db $62, $CA, $62		; 62 CA 62
	cpx #$60F2.w		; E0 F2 60
	inc $3468.w,X		; FE 68 34
	pla		; 68
	trb $7E.b		; 14 7E
	.db $42, $3E		; 42 3E
	cop $1C.b		; 02 1C
	brk $7C.b		; 00 7C
	cpx #$F25E.w		; E0 5E F2
	jmp $C07C.w		; 4C 7C C0
	sed		; F8
	cpx #$00F8.w		; E0 F8 00
	sbc $B7CF43.l,X		; FF 43 CF B7
	sta [$97.b],Y		; 97 97
	sta [$40.b]		; 87 40
	sbc $14FC0F.l,X		; FF 0F FC 14
	plx		; FA
	phd		; 0B
	inc $F0.b,X		; F6 F0
	bcc  -1.b		; 90 FF
	sec		; 38
	sbc $FBFF7B.l,X		; FF 7B FF FB
	wai		; CB
	dey		; 88
	bit $7830.w,X		; 3C 30 78
	eor $6A.b,S		; 43 6A
	.db $42, $00		; 42 00
	jmp ($FC10.w,X)		; 7C 10 FC
	sed		; F8
	inc $FFDC.w,X		; FE DC FF
	bvc  -1.b		; 50 FF
	dey		; 88
	lsr $B4.b,X		; 56 B4
	cop $BC.b		; 02 BC
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $FC.b		; 00 FC
	stz $06FE.w		; 9C FE 06
	asl $00.b		; 06 00
	jsr $6010.w		; 20 10 60
	php		; 08
	rts		; 60

	bcc   8.b		; 90 08
	and $0C1F0C.l,X		; 3F 0C 1F 0C
	ora $060F06.l,X		; 1F 06 0F 06
	ora $060F06.l		; 0F 06 0F 06
	ora [$03.b]		; 07 03
	ora [$1E.b]		; 07 1E
	cop $1E.b		; 02 1E
	bpl  14.b		; 10 0E
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora #$0007.w		; 09 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora ($09.b)		; 12 09
	ora $28.b,S		; 03 28
	ora #$2924.w		; 09 24 29
	tsb $28.b		; 04 28
	tsb $08.b		; 04 08
	sta $00.b,S		; 83 00
	stx $02.b		; 86 02
	stx $7F00.w		; 8E 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	ora ($3D.b,X)		; 01 3D
	sta $9A.b,S		; 83 9A
	sta $84.b		; 85 84
	ror $11.b		; 66 11
	and ($88.b,S),Y		; 33 88
	bcc  76.b		; 90 4C
	tya		; 98
	lsr $0D.b		; 46 0D
	ora ($20.b,X)		; 01 20
	and ($C0.b,S),Y		; 33 C0
	clc		; 18
	beq  24.b		; F0 18
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	cmp ($0D.b,X)		; C1 0D
	beq  16.b		; F0 10
	inx		; E8
	php		; 08
	rts		; 60

	sei		; 78
	stz $06.b,X		; 74 06
	plx		; FA
	ora $FD.b,S		; 03 FD
	ora ($9E.b,X)		; 01 9E
	bra  38.b		; 80 26
	cpx #$7808.w		; E0 08 78
	brk $0F.b		; 00 0F
	clc		; 18
	tya		; 98
	ply		; 7A
	.db $82, $FD, $01		; 82 FD 01
	inc $7F00.w,X		; FE 00 7F
	brk $DF.b		; 00 DF
	cpy #$1017.w		; C0 17 10
	ora $03.b,S		; 03 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	php		; 08
	tsb $0808.w		; 0C 08 08
	clc		; 18
	clc		; 18
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	tsb $04.b		; 04 04
	php		; 08
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $73.b		; 00 73
	tda		; 7B
	sei		; 78
	adc $797F79.l,X		; 7F 79 7F 79
	jmp ($7C3F.w,X)		; 7C 3F 7C
	and $7C3B7C.l,X		; 3F 7C 3B 7C
	dec A		; 3A
	jmp ($0779.w,X)		; 7C 79 07
	jmp ($7E04.w,X)		; 7C 04 7E
	asl $7F.b		; 06 7F
	tsb $7F.b		; 04 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	tsb $7F.b		; 04 7F
	mvp $D0,$80		; 44 80 D0
	eor $C0AC80.l		; 4F 80 AC C0
	pla		; 68
	rti		; 40

	.db $42, $71		; 42 71
	ora $7B.b		; 05 7B
	tas		; 1B
	adc [$97.b]		; 67 97
	sbc $1FEF8F.l		; EF 8F EF 1F
	adc $9F1F1F.l,X		; 7F 1F 1F 9F
	ora $C10D8C.l,X		; 1F 8C 0D C1
	eor ($C3.b,S),Y		; 53 C3
	eor [$43.b],Y		; 57 43
	eor $101810.l		; 4F 10 18 10
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bpl   8.b		; 10 08
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	rts		; 60

	php		; 08
	cpy #$C010.w		; C0 10 C0
	bpl -128.b		; 10 80
	jsr $2080.w		; 20 80 20
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	beq -16.b		; F0 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	ora ($08.b)		; 12 08
	cop $11.b		; 02 11
	jsr $0411.w		; 20 11 04
	jsr $0204.w		; 20 04 02
	jmp $5E02.w		; 4C 02 5E
	brk $3C.b		; 00 3C
	brk $07.b		; 00 07
	ora [$0E.b]		; 07 0E
	asl $0E0E.w		; 0E 0E 0E
	asl $3C1E.w,X		; 1E 1E 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $003C.w,X		; 3C 3C 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	bne  32.b		; D0 20
	bvc   4.b		; 50 04
	sty $86.b		; 84 86
	lsr $C7.b		; 46 C7
	ora $5F1FCF.l		; 0F CF 1F 5F
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bne  16.b		; D0 10
	beq  60.b		; F0 3C
	bvs  62.b		; 70 3E
	ldy $BF.b,X		; B4 BF
	ror $0F7F.w		; 6E 7F 0F
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	php		; 08
	adc $307D10.l,X		; 7F 10 7D 30
	jsr ($F830.w,X)		; FC 30 F8
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $223E10.l,X		; 1F 10 3E 22
	adc $7845.w,X		; 7D 45 78
	php		; 08
	sed		; F8
	dey		; 88
	pla		; 68
	sty $F8.b		; 84 F8
	tsb $0CD0.w		; 0C D0 0C
	rts		; 60

	php		; 08
	sty $94.b		; 84 94
	bra -28.b		; 80 E4
	sty $15A2.w		; 8C A2 15
	eor $30.b,S		; 43 30
	bra -16.b		; 80 F0
	brk $F8.b		; 00 F8
	sec		; 38
	beq   0.b		; F0 00
	rts		; 60

	tsb $1E00.w		; 0C 00 1E
	trb $3C5C.w		; 1C 5C 3C
	ldy $E205.w,X		; BC 05 E2
	sbc ($A2.b,X)		; E1 A2
	sbc ($E6.b)		; F2 E6
	lda ($BF.b,X)		; A1 BF
	bvc -25.b		; 50 E7
	stx $E1.b		; 86 E1
	ldy $F8.b		; A4 F8
	clv		; B8
	beq  29.b		; F0 1D
	trb $1CBD.w		; 1C BD 1C
	sbc #$E208.w		; E9 08 E2
	.db $42, $59		; 42 59
	sta $DE9E.w,Y		; 99 9E DE
	ldx $E6.b		; A6 E6
	ldy #$09FC.w		; A0 FC 09
	bit $19.b		; 24 19
	tsb $19.b		; 04 19
	tsb $18.b		; 04 18
	tsb $00.b		; 04 00
	ora #$0B01.w		; 09 01 0B
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	ora ($1F.b,X)		; 01 1F
	cop $1E.b		; 02 1E
	ora ($08.b,X)		; 01 08
	ora $08.b,S		; 03 08
	bmi -120.b		; 30 88
	sec		; 38
	sty $80.b		; 84 80
	rti		; 40

	brk $3C.b		; 00 3C
	cpx #$10FC.w		; E0 FC 10
	clc		; 18
	cpx #$E008.w		; E0 08 E0
	php		; 08
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	sec		; 38
	sed		; F8
	clc		; 18
	clc		; 18
	inx		; E8
	php		; 08
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bpl  16.b		; 10 10
	php		; 08
	clc		; 18
	tsb $0C1C.w		; 0C 1C 0C
	trb $0C04.w		; 1C 04 0C
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	brk $05.b		; 00 05
	bpl   0.b		; 10 00
	clc		; 18
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	php		; 08
	tsb $00.b		; 04 00
	tsb $05.b		; 04 05
	clc		; 18
	.db $42, $1C		; 42 1C
	lsr $3C.b		; 46 3C
	ror $20.b		; 66 20
	ror $08.b		; 66 08
	ror $7E78.w,X		; 7E 78 7E
	ply		; 7A
	jsr ($04F2.w,X)		; FC F2 04
	ror $7A42.w,X		; 7E 42 7A
	.db $42, $58		; 42 58
	rti		; 40

	trb $3404.w		; 1C 04 34
	bit $30.b,X		; 34 30
	jmp ($FE30.w,X)		; 7C 30 FE
	sei		; 78
	plx		; FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $0002.w		; 0C 02 00
	clc		; 18
	and $10.b,S		; 23 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $00003F.l		; 0F 3F 00 00
	asl $01.b		; 06 01
	bpl   8.b		; 10 08
	cmp ($20.b,X)		; C1 20
	php		; 08
	.db $82, $30, $07		; 82 30 07
	cpx #$C00C.w		; E0 0C C0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $F87D7D.l,X		; 1F 7D 7D F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$C0E0.w		; E0 E0 C0
	bpl  96.b		; 10 60
	bra  56.b		; 80 38
	cpy #$60A4.w		; C0 A4 60
	.db $82, $68, $04		; 82 68 04
	cmp $2180.w,Y		; D9 80 21
	ora ($9D.b,X)		; 01 9D
	beq  16.b		; F0 10
	beq -128.b		; F0 80
	sei		; 78
	pha		; 48
	sty $9C.b,X		; 94 9C
	.db $82, $9E, $00		; 82 9E 00
	rol $FF01.w,X		; 3E 01 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	ora [$70.b],Y		; 17 70
	eor $80BEC0.l,X		; 5F C0 BE 80
	xce		; FB
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($05.b,X)		; 01 05
	tsb $2F.b		; 04 2F
	jsr $80BF.w		; 20 BF 80
	adc $00FC00.l,X		; 7F 00 FC 00
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$01.b]		; 07 01
	ora [$03.b]		; 07 03
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	brk $FF.b		; 00 FF
	tsb $DF3F.w		; 0C 3F DF
	eor $011F5F.l,X		; 5F 5F 1F 01
	sbc $52F13E.l,X		; FF 3E F1 52
	inx		; E8
	rol $CD18.w		; 2E 18 CD
	eor $E0FF.w		; 4D FF E0
	sbc $ECFFEE.l,X		; FF EE FF EC
	bit $F020.w		; 2C 20 F0
	cpy #$0CE1.w		; C0 E1 0C
	and #$2FCA.w		; 29 CA 2F
	adc $2EEF2E.l		; 6F 2E EF 2E
	sbc $5CDE5D.l,X		; FF 5D DE 5C
	dec $DE5C.w,X		; DE 5C DE
	pha		; 48
	cmp $64CD60.l,X		; DF 60 CD 64
	ora $6C1F64.l,X		; 1F 64 1F 6C
	ora $CCBFCC.l,X		; 1F CC BF CC
	lda $C83FCC.l,X		; BF CC 3F C8
	bit $B2F2.w,X		; 3C F2 B2
	clc		; 18
	asl $00.b		; 06 00
	bra  99.b		; 80 63
	brk $DC.b		; 00 DC
	bpl -96.b		; 10 A0
	sec		; 38
	rti		; 40

	bvs -128.b		; 70 80
	sbc $00.b,S		; E3 00
	cmp ($00.b,X)		; C1 00
	sbc $E3BFC0.l,X		; FF C0 BF E3
	ora $D70FEF.l,X		; 1F EF 0F D7
	ora [$A3.b],Y		; 17 A3
	and $804040.l		; 2F 40 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $04.b		; 00 04
	jsr ($3C02.w,X)		; FC 02 3C
	ora ($00.b,X)		; 01 00
	sbc ($00.b,X)		; E1 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $1E1E.w,X		; FE 1E 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	bit $3C08.w,X		; 3C 08 3C
	tsb $041E.w		; 0C 1E 04
	asl $0E04.w,X		; 1E 04 0E
	brk $0E.b		; 00 0E
	sec		; 38
	brk $3C.b		; 00 3C
	bit $1C.b		; 24 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	bpl  14.b		; 10 0E
	cop $0E.b		; 02 0E
	php		; 08
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	beq  24.b		; F0 18
	cpy #$C010.w		; C0 10 C0
	bpl -32.b		; 10 E0
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	rti		; 40

	rts		; 60

	cpx #$F000.w		; E0 00 F0
	bpl -16.b		; 10 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   6.b		; 70 06
	bvs   6.b		; 70 06
	bvs   4.b		; 70 04
	rts		; 60

	tsb $60.b		; 04 60
	php		; 08
	rts		; 60

	php		; 08
	rti		; 40

	bpl  64.b		; 10 40
	bpl  -8.b		; 10 F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$582F.w		; E0 2F 58
	rol $B6EC.w		; 2E EC B6
	sta [$E0.b]		; 87 E0
	asl $1C80.w		; 0E 80 1C
	rti		; 40

	bvs -128.b		; 70 80
	cpx #$8000.w		; E0 00 80
	ora [$3F.b]		; 07 3F
	eor [$4F.b],Y		; 57 4F
	ror $F806.w,X		; 7E 06 F8
	tsb $10F0.w		; 0C F0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	rts		; 60

	sbc $89C0.w,X		; FD C0 89
	.db $82, $81, $B3		; 82 81 B3
	ldy #$309B.w		; A0 9B 30
	phb		; 8B
	sec		; 38
	cop $18.b		; 02 18
	bra  65.b		; 80 41
	inc $FE81.w,X		; FE 81 FE
	ora $FE.b,S		; 03 FE
	cop $FE.b		; 02 FE
	cop $FE.b		; 02 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	pea $D807.w		; F4 07 D8
	asl $38A0.w,X		; 1E A0 38
	dey		; 88
	sed		; F8
	sec		; 38
	cld		; D8
	sec		; 38
	sec		; 38
	sei		; 78
	sec		; 38
	sec		; 38
	sei		; 78
	plx		; FA
	cop $E4.b		; 02 E4
	tsb $D0.b		; 04 D0
	bpl   0.b		; 10 00
	clc		; 18
	clc		; 18
	sec		; 38
	sec		; 38
	sei		; 78
	plp		; 28
	sei		; 78
	plp		; 28
	sei		; 78
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	ora ($1B.b,X)		; 01 1B
	ora $3B.b,S		; 03 3B
	ora $3F.b,S		; 03 3F
	ora [$77.b]		; 07 77
	ora $77.b,X		; 15 77
	asl $7F.b,X		; 16 7F
	tsb $0C09.w		; 0C 09 0C
	phd		; 0B
	clc		; 18
	ora [$19.b],Y		; 17 19
	ora [$3B.b],Y		; 17 3B
	and [$30.b]		; 27 30
	and $744F70.l		; 2F 70 4F 74
	eor $E7C443.l		; 4F 43 C4 E7
	cpx #$E0E7.w		; E0 E7 E0
	wai		; CB
	cld		; D8
	sty $8C.b		; 84 8C
	php		; 08
	brk $07.b		; 00 07
	clc		; 18
	and ($0D.b),Y		; 31 0D
	ora $4FE4.w,Y		; 19 E4 4F
	beq -17.b		; F0 EF
	sbc ($D7.b),Y		; F1 D7
	beq  11.b		; F0 0B
	cld		; D8
	ora $9F.b,S		; 03 9F
	ora $BC.b,S		; 03 BC
	brk $FE.b		; 00 FE
	sei		; 78
	sbc $70.b,S		; E3 70
	inc $70.b,X		; F6 70
	sed		; F8
	bvs 120.b		; 70 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	bmi 120.b		; 30 78
	sec		; 38
	jmp ($9CFC.w,X)		; 7C FC 9C
	sed		; F8
	dey		; 88
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	sei		; 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	php		; 08
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	rts		; 60

	rti		; 40

	bmi  16.b		; 30 10
	bmi  32.b		; 30 20
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	tsb $0C01.w		; 0C 01 0C
	cop $28.b		; 02 28
	cop $28.b		; 02 28
	cop $08.b		; 02 08
	jsl $002008.l		; 22 08 20 00
	tsb $40.b		; 04 40
	tsb $1E.b		; 04 1E
	asl $1C1C.w,X		; 1E 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $381C.w		; 1C 1C 38
	sec		; 38
	sec		; 38
	sec		; 38
	rti		; 40

	tsb $4400.w		; 0C 00 44
	clc		; 18
	mvp $04,$08		; 44 08 04
	clc		; 18
	tsb $B8.b		; 04 B8
	tsb $FC.b		; 04 FC
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	bmi  56.b		; 30 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0B.b,X)		; 01 0B
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rti		; 40

	beq -32.b		; F0 E0
	sed		; F8
	bvs  -4.b		; 70 FC
	rti		; 40

	jsr ($5820.w,X)		; FC 20 58
	bne   8.b		; D0 08
	beq   0.b		; F0 00
	cpy #$E0C0.w		; C0 C0 E0
	brk $F0.b		; 00 F0
	bvs  -8.b		; 70 F8
	clc		; 18
	clc		; 18
	brk $80.b		; 00 80
	rti		; 40

	bra  32.b		; 80 20
	bra  64.b		; 80 40
	rti		; 40

	jsr $60C0.w		; 20 C0 60
	ora $69.b,X		; 15 69
	lda $49.b,X		; B5 49
	ora [$8A.b],Y		; 17 8A
	phk		; 4B
	bvc -60.b		; 50 C4
	eor ($88.b),Y		; 51 88
	cmp ($80.b,X)		; C1 80
	brk $80.b		; 00 80
	ora $81DFC1.l,X		; 1F C1 DF 81
	ora $827F40.l,X		; 1F 40 7F 82
	lda $4E3E86.l,X		; BF 86 3E 4E
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C040.w		; C0 40 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	rti		; 40

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$20E0.w		; C0 E0 20
	php		; 08
	cmp #$1918.w		; C9 18 19
	inx		; E8
	adc $003C3B.l,X		; 7F 3B 3C 00
	bit $5F0C.w,X		; 3C 0C 5F
	lsr $8F9F.w		; 4E 9F 8F
	ora $1EF6CE.l,X		; 1F CE F6 1E
	inc $E8.b		; E6 E8
	bra  -5.b		; 80 FB
	cmp $C3.b,S		; C3 C3
	cmp $AC.b,S		; C3 AC
	ldy $6F6C.w		; AC 6C 6F
	inc $0FEF.w		; EE EF 0F
	lda $191E27.l,X		; BF 27 1E 19
	asl $0F.b,X		; 16 0F
	bit $2747.w		; 2C 47 27
	cmp ($29.b,X)		; C1 29
	.db $82, $48, $03		; 82 48 03
	tay		; A8
	eor [$5F.b]		; 47 5F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	tsb $7F.b		; 04 7F
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bpl -118.b		; 10 8A
	bpl -54.b		; 10 CA
	bit $92.b		; 24 92
	bit $12.b		; 24 12
	stz $12.b		; 64 12
	ror $11.b		; 66 11
	ror $11.b		; 66 11
	adc ($08.b,S),Y		; 73 08
	rti		; 40

	adc $003F00.l,X		; 7F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000F00.l,X		; FF 00 0F 00
	bra  32.b		; 80 20
	bcc  48.b		; 90 30
	sty $4599.w		; 8C 99 45
	sty $4261.w		; 8C 61 42
	and $44.b,S		; 23 44
	tsb $9803.w		; 0C 03 98
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($FD.b,X)		; 01 FD
	phd		; 0B
	sed		; F8
	ora $0100F8.l,X		; 1F F8 00 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	ora $0F.b		; 05 0F
	ora $1F.b,S		; 03 1F
	asl $3F.b		; 06 3F
	tsb $187F.w		; 0C 7F 18
	ror $0000.w,X		; 7E 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora $081F04.l		; 0F 04 1F 08
	rol $7C30.w,X		; 3E 30 7C
	rts		; 60

	bvs  -4.b		; 70 FC
	cpx #$C0F8.w		; E0 F8 C0
	sbc ($82.b),Y		; F1 82
	inc $05.b		; E6 05
	cpy $B017.w		; CC 17 B0
	asl $6070.w		; 0E 70 60
	sta $F000F8.l		; 8F F8 00 F0
	ora ($E0.b,X)		; 01 E0
	cop $C1.b		; 02 C1
	brk $83.b		; 00 83
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $77.b		; 00 77
	adc [$00.b],Y		; 77 00
	ora $3F04.w,X		; 1D 04 3F
	asl A		; 0A
	tda		; 7B
	trb $75.b		; 14 75
	trb $71.b		; 14 71
	brk $FB.b		; 00 FB
	ora ($FF.b,X)		; 01 FF
	cop $FD.b		; 02 FD
	brk $00.b		; 00 00
	ora $3E11.w,X		; 1D 11 3E
	bit $3E.b		; 24 3E
	asl $0E3F.w		; 0E 3F 0E
	eor $DF44.w,X		; 5D 44 DF
	bne -33.b		; D0 DF
	cpy $F000.w		; CC 00 F0
	brk $FC.b		; 00 FC
	bne  -2.b		; D0 FE
	jsr ($DAFF.w,X)		; FC FF DA
	sbc $F0FFCA.l,X		; FF CA FF F0
	phb		; 8B
	ldy $43.b		; A4 43
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	jsr ($FE04.w,X)		; FC 04 FE
	txs		; 9A
	sbc $04EF95.l,X		; FF 95 EF 04
	stx $0808.w		; 8E 08 08
	bvc -27.b		; 50 E5
	ora $C0.b		; 05 C0
	ora $80.b,X		; 15 80
	dec A		; 3A
	ora ($E1.b,X)		; 01 E1
	ora ($8F.b,S),Y		; 13 8F
	adc [$1F.b]		; 67 1F
	adc $1DAE03.l,X		; 7F 03 AE 1D
	beq  15.b		; F0 0F
	beq  31.b		; F0 1F
	cpx #$C02F.w		; E0 2F C0
	cmp $037F01.l,X		; DF 01 7F 03
	sbc $00FF03.l,X		; FF 03 FF 00
	adc $504020.l,X		; 7F 20 40 50
	jsr $1060.w		; 20 60 10
	bcs -124.b		; B0 84
	pei ($C8.b)		; D4 C8
	cpx $E4E0.w		; EC E0 E4
	cpx #$8064.w		; E0 64 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	sty $F4.b		; 84 F4
	cpy $8CFC.w		; CC FC 8C
	jsr ($FC0C.w,X)		; FC 0C FC
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	jsr $1038.w		; 20 38 10
	clc		; 18
	bpl  24.b		; 10 18
	brk $18.b		; 00 18
	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	rts		; 60

	rts		; 60

	rts		; 60

	rti		; 40

	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	asl $3C10.w,X		; 1E 10 3C
	bmi  60.b		; 30 3C
	jsr $2038.w		; 20 38 20
	sec		; 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	trb $1C04.w		; 1C 04 1C
	tsb $38.b		; 04 38
	php		; 08
	sec		; 38
	php		; 08
	bmi   0.b		; 30 00
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bne -48.b		; D0 D0
	cpx #$00F0.w		; E0 F0 00
	cpx #$C080.w		; E0 80 C0
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	beq -48.b		; F0 D0
	sed		; F8
	brk $F8.b		; 00 F8
	bra -80.b		; 80 B0
	rti		; 40

	rts		; 60

	ldy #$A020.w		; A0 20 A0
	bmi -48.b		; 30 D0
	clc		; 18
	inx		; E8
	tsb $0634.w		; 0C 34 06
	.db $42, $C3		; 42 C3
	tsb $BEE1.w		; 0C E1 BE
	tda		; 7B
	and $D0FE.w,Y		; 39 FE D0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $BC.b		; 00 BC
	bra  62.b		; 80 3E
	jsr $791D.w		; 20 1D 79
	clc		; 18
	adc $000000.l,X		; 7F 00 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora $181F0C.l		; 0F 0C 1F 18
	and $007E30.l,X		; 3F 30 7E 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($1E.b,X)		; 01 1E
	cop $7C.b		; 02 7C
	tsb $24.b		; 04 24
	ora ($20.b),Y		; 11 20
	brk $4C.b		; 00 4C
	cop $80.b		; 02 80
	brk $F0.b		; 00 F0
	tsb $B0.b		; 04 B0
	tsb $D4.b		; 04 D4
	brk $F4.b		; 00 F4
	brk $0E.b		; 00 0E
	asl $1E1E.w		; 0E 1E 1E
	bit $7C3C.w,X		; 3C 3C 7C
	jmp ($7878.w,X)		; 7C 78 78
	sei		; 78
	sei		; 78
	sec		; 38
	sec		; 38
	clc		; 18
	clc		; 18
	ora [$03.b]		; 07 03
	ora $03.b		; 05 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	asl $07.b		; 06 07
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	asl $0F.b		; 06 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora $000C00.l,X		; 1F 00 0C 00
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	phd		; 0B
	clv		; B8
	ora #$C438.w		; 09 38 C4
	jsr ($3F61.w,X)		; FC 61 3F
	bvc  27.b		; 50 1B
	rts		; 60

	php		; 08
	bvs   8.b		; 70 08
	adc $370C.w,Y		; 79 0C 37
	beq  23.b		; F0 17
	bne  43.b		; D0 2B
	plp		; 28
	dec $16.b,X		; D6 16
	sbc ($01.b,X)		; E1 01
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	bmi  -4.b		; 30 FC
	rts		; 60

	sed		; F8
	sta ($F8.b,X)		; 81 F8
	ora ($F1.b,X)		; 01 F1
	ora ($E1.b,X)		; 01 E1
	ora $C1.b,S		; 03 C1
	ora $83.b,S		; 03 83
	ora $83.b,S		; 03 83
	sei		; 78
	rti		; 40

	beq -127.b		; F0 81
	beq  81.b		; F0 51
	cpx #$C1A1.w		; E0 A1 C1
	eor $81.b,S		; 43 81
	ora $81.b,S		; 03 81
	sta $00.b,S		; 83 00
	ora [$08.b]		; 07 08
	asl $70.b		; 06 70
	beq -16.b		; F0 F0
	sbc $F1.b,X		; F5 F1
	sbc ($E0.b)		; F2 E0
	pea $E4C0.w		; F4 C0 E4
	bra -60.b		; 80 C4
	eor ($86.b,X)		; 41 86
	clc		; 18
	sed		; F8
	bit $70FC.w		; 2C FC 70
	sed		; F8
	sbc ($F9.b,X)		; E1 F9
	cmp $FB.b,S		; C3 FB
	sta $F3.b,S		; 83 F3
	ora $E3.b,S		; 03 E3
	brk $C0.b		; 00 C0
	cop $FD.b		; 02 FD
	ora ($DD.b,X)		; 01 DD
	ora ($8D.b,X)		; 01 8D
	ora ($0F.b,X)		; 01 0F
	brk $03.b		; 00 03
	trb $14.b		; 14 14
	asl A		; 0A
	ror A		; 6A
	cmp ($9A.b)		; D2 9A
	stp		; DB
	cpy #$808A.w		; C0 8A 80
	asl $04.b		; 06 04
	cop $02.b		; 02 02
	tsb $150C.w		; 0C 0C 15
	sbc $609F02.l,X		; FF 02 9F 60
	ora $58C670.l		; 0F 70 C6 58
	jsl $300278.l		; 22 78 02 30
	cop $50.b		; 02 50
	cpy #$F800.w		; C0 00 F8
	brk $40.b		; 00 40
	ldy #$4840.w		; A0 40 48
	bvc -52.b		; 50 CC
	jsr $00FC.w		; 20 FC 00
	jsr ($BC0C.w,X)		; FC 0C BC
	sty $0000.w		; 8C 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $3F9FBE.l,X		; 1F BE 9F 3F
	and $3F731F.l		; 2F 1F 73 3F
	lda $8F7F.w,X		; BD 7F 8F
	adc $000703.l,X		; 7F 03 07 00
	lda #$7F0C.w		; A9 0C 7F
	stx $8FFF.w		; 8E FF 8F
	sbc $0DFF83.l,X		; FF 83 FF 0D
	adc $81FF8E.l,X		; 7F 8E FF 81
	sbc $C87F00.l,X		; FF 00 7F C8
	trb $00.b		; 14 00
	tya		; 98
	bpl -120.b		; 10 88
	ldy #$0090.w		; A0 90 00
	cpx #$4000.w		; E0 00 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	php		; 08
	inx		; E8
	jsr $30E0.w		; 20 E0 30
	beq  32.b		; F0 20
	cpx #$8000.w		; E0 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	ora ($86.b,X)		; 01 86
	bra -122.b		; 80 86
	bra -50.b		; 80 CE
	brk $DE.b		; 00 DE
	bpl -65.b		; 10 BF
	jsr $407E.w		; 20 7E 40
	sed		; F8
	sta ($F0.b,X)		; 81 F0
	ora ($C1.b,X)		; 01 C1
	sta $C5.b		; 85 C5
	sta $C5.b		; 85 C5
	ora $1CC5.w		; 0D C5 1C
	cpy $38.b		; C4 38
	bit #$1370.w		; 89 70 13
	cpx #$5923.w		; E0 23 59
.INDEX 16
	rep #$1A		; C2 1A
	cmp ($3C.b,X)		; C1 3C
	adc $0C.b,S		; 63 0C
	ror A		; 6A
	ora $0374.w,Y		; 19 74 03
	sei		; 78
	asl $60.b,X		; 16 60
	bit $51.b		; 24 51
	bit $7C00.w,X		; 3C 00 7C
	rti		; 40

	cli		; 58
	rti		; 40

	and ($21.b),Y		; 31 21
	and $23.b,S		; 23 23
	ora [$17.b],Y		; 17 17
	ora $0E0E0F.l		; 0F 0F 0E 0E
	ora $38C6.w,X		; 1D C6 38
	.db $82, $70, $04		; 82 70 04
	cpx #$C008.w		; E0 08 C0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	and $F87C7C.l,X		; 3F 7C 7C F8
	sed		; F8
	beq -16.b		; F0 F0
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $0F.b		; 02 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	cop $3F.b		; 02 3F
	tsb $7F.b		; 04 7F
	tsb $017E.w		; 0C 7E 01
	ora ($03.b,X)		; 01 03
	cop $07.b		; 02 07
	ora $0F.b		; 05 0F
	asl A		; 0A
	ora $191F14.l,X		; 1F 14 1F 19
	rol $3E30.w,X		; 3E 30 3E
	jsl $18FE18.l		; 22 18 FE 18
	jsr ($FC30.w,X)		; FC 30 FC
	bmi  -4.b		; 30 FC
	rts		; 60

	sed		; F8
	rts		; 60

	sed		; F8
	cpx #$C0F8.w		; E0 F8 C0
	sed		; F8
	jmp ($7C40.w,X)		; 7C 40 7C
	mvp $80,$F8		; 44 F8 80
	sed		; F8
	dey		; 88
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpy #$40F0.w		; C0 F0 40
	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq  64.b		; F0 40
	beq   0.b		; F0 00
	cpx #$6000.w		; E0 00 60
	brk $60.b		; 00 60
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpx #$E000.w		; E0 00 E0
	bra -32.b		; 80 E0
	bra  96.b		; 80 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	rti		; 40

	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	asl $010A.w		; 0E 0A 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $5E.b		; 00 5E
	jsr $304E.w		; 20 4E 30
	eor [$18.b]		; 47 18
	ora ($4C.b,S),Y		; 13 4C
	sta ($4C.b,S),Y		; 93 4C
	bcc  76.b		; 90 4C
	sty $48.b,X		; 94 48
	sty $48.b,X		; 94 48
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	jsr $3020.w		; 20 20 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi   0.b		; 30 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $94.b		; 00 94
	pha		; 48
	bcc  72.b		; 90 48
	bcc  72.b		; 90 48
	bpl  72.b		; 10 48
	tsb $40.b		; 04 40
	rti		; 40

	tsb $70.b		; 04 70
	brk $72.b		; 00 72
	brk $30.b		; 00 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  56.b		; 30 38
	sec		; 38
	sec		; 38
	sec		; 38
	tsb $0C0C.w		; 0C 0C 0C
	tsb $0A70.w		; 0C 70 0A
	sei		; 78
	brk $78.b		; 00 78
	tsb $3C.b		; 04 3C
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $06.b		; 04 06
	asl $02.b		; 06 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	ora $203F0C.l,X		; 1F 0C 3F 20
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $111F08.l		; 0F 08 1F 11
	jmp ($0044.w,X)		; 7C 44 00
	brk $01.b		; 00 01
	ora $7FFF1F.l,X		; 1F 1F FF 7F
	sbc $80FFF8.l,X		; FF F8 FF 80
	sbc ($00.b),Y		; F1 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	php		; 08
	adc $00FF40.l,X		; 7F 40 FF 00
	sbc $20E000.l,X		; FF 00 E0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	php		; 08
	and $297715.l,X		; 3F 15 77 29
	rtl		; 6B

	and #$0163.w		; 29 63 01
	sbc [$03.b],Y		; F7 03
	sbc $00FB04.l,X		; FF 04 FB 00
	brk $3B.b		; 00 3B
	jsl $7D487D.l		; 22 7D 48 7D
	ora $1D7F.w,X		; 1D 7F 1D
	tda		; 7B
	pha		; 48
	and $99BF20.l,X		; 3F 20 BF 99
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	ldy #$F8FC.w		; A0 FC F8
	inc $FFB4.w,X		; FE B4 FF
	sty $FF.b,X		; 94 FF
	rts		; 60

	sta [$48.b],Y		; 97 48
	stx $00.b		; 86 00
	brk $E0.b		; 00 E0
	jsr $08F8.w		; 20 F8 08
	jsr ($FE34.w,X)		; FC 34 FE
	rol A		; 2A
	dec $9C08.w,X		; DE 08 9C
	bcc  16.b		; 90 10
	ldy #$589F.w		; A0 9F 58
	tsa		; 3B
	ldy $7C79.w,X		; BC 79 7C
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	beq  -6.b		; F0 FA
	dec $2E31.w		; CE 31 2E
	bne   0.b		; D0 00
	adc $3AFB00.l,X		; 7F 00 FB 3A
	xce		; FB
	tda		; 7B
	xce		; FB
	adc ($FB.b,S),Y		; 73 FB
	ora $F5.b		; 05 F5
	asl $0FEE.w		; 0E EE 0F
	sbc $808000.l		; EF 00 80 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	jsr $1060.w		; 20 60 10
	bmi  72.b		; 30 48
	asl $2A41.w,X		; 1E 41 2A
	sbc $80.b		; E5 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	ldy #$F0C0.w		; A0 C0 F0
	cpy #$C2FE.w		; C0 FE C2
	phy		; 5A
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	ora [$18.b]		; 07 18
	and $007E20.l,X		; 3F 20 7E 00
	sei		; 78
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	and $0C7C03.l,X		; 3F 03 7C 0C
	bvs  48.b		; 70 30
	bra   0.b		; 80 00
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	jsr $C020.w		; 20 20 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C023.w		; C0 23 C0
	ora $1C7F00.l,X		; 1F 00 7F 1C
	sbc $68F330.l,X		; FF 30 F3 68
.INDEX 8
	sep #$58		; E2 58
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $03, $FF		; 82 03 FF
	brk $E0.b		; 00 E0
	rol $62BE.w,X		; 3E BE 62
	.db $62, $4E, $42		; 62 4E 42
	asl $3E02.w,X		; 1E 02 3E
	cop $FC.b		; 02 FC
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cpy #$00F3.w		; C0 F3 00
	ora $04.b,S		; 03 04
	ora $FC.b,S		; 03 FC
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $FCFC3F.l,X		; 3F 3F FC FC
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $FC00.w		; 1C 00 FC
	cop $7E.b		; 02 7E
	brk $78.b		; 00 78
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($8080.w,X)		; FC 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	eor $18.b,S		; 43 18
	eor $38.b,S		; 43 38
	.db $42, $30		; 42 30
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	tsb $30.b		; 04 30
	sty $30.b		; 84 30
	sty $3C.b		; 84 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $383C.w,X		; 3C 3C 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	jsr $2088.w		; 20 88 20
	dey		; 88
	jsr $2088.w		; 20 88 20
	dey		; 88
	brk $88.b		; 00 88
	brk $88.b		; 00 88
	php		; 08
	bra   8.b		; 80 08
	bra 112.b		; 80 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 120.b		; 70 78
	sei		; 78
	sei		; 78
	sei		; 78
	inx		; E8
	tsb $E4.b		; 04 E4
	bpl -16.b		; 10 F0
	asl A		; 0A
	sei		; 78
	tsb $3C.b		; 04 3C
	ora $3F.b,S		; 03 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	tsb $040C.w		; 0C 0C 04
	tsb $02.b		; 04 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $0000FF.l,X		; 7F FF 00 00
	brk $00.b		; 00 00
	adc $1CFE01.l,X		; 7F 01 FE 1C
	cpx #$00C0.w		; E0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $7F.b		; 00 7F
	sed		; F8
	sbc $C0FFF0.l,X		; FF F0 FF C0
	sbc $F8E000.l,X		; FF 00 E0 F8
	ora [$72.b]		; 07 72
	php		; 08
	ora $03.b,S		; 03 03
	and $01FF22.l,X		; 3F 22 FF 01
	sbc $06FE03.l,X		; FF 03 FE 06
	cpy #$00DF.w		; C0 DF 00
	brk $07.b		; 00 07
	brk $80.b		; 00 80
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	beq  16.b		; F0 10
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	trb $7B01.w		; 1C 01 7B
	ora ($F7.b,S),Y		; 13 F7
	adc [$FF.b]		; 67 FF
	sta $DF0EFF.l		; 8F FF 0E DF
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $380F.w		; 0C 0F 38
	and $F3CFF1.l,X		; 3F F1 CF F3
	ora $CC3FE6.l,X		; 1F E6 3F CC
	adc $02FA04.l,X		; 7F 04 FA 02
	plx		; FA
	cop $FA.b		; 02 FA
	cop $1E.b		; 02 1E
	beq -41.b		; F0 D7
	tay		; A8
	lda #$AA2C.w		; A9 2C AA
	rol $D7E1.w		; 2E E1 D7
	cpy #$1015.w		; C0 15 10
	ora $0508.w		; 0D 08 05
	cpx $51.b		; E4 51
	sbc $7C2A.w,Y		; F9 2A 7C
	sta $FA.b,S		; 83 FA
	ora ($77.b,X)		; 01 77
	cpx #$B08C.w		; E0 8C B0
	mvp $04,$F0		; 44 F0 04
	rts		; 60

	tsb $A0.b		; 04 A0
	dey		; 88
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc -96.b		; 90 A0
	tya		; 98
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	clc		; 18
	bvs  16.b		; 70 10
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	dey		; 88
	sbc ($68.b),Y		; F1 68
	sbc ($78.b)		; F2 78
	beq 112.b		; F0 70
	beq -48.b		; F0 D0
	beq  56.b		; F0 38
	bvs   0.b		; 70 00
	sta $91.b,S		; 83 91
	jmp $EE8E.w		; 4C 8E EE
	jmp ($6C6D.w)		; 6C 6D 6C
	ror $7C60.w,X		; 7E 60 7C
	brk $FC.b		; 00 FC
	bpl  -1.b		; 10 FF
	brk $7F.b		; 00 7F
	bra -65.b		; 80 BF
	ora ($F5.b)		; 12 F5
	php		; 08
	and $1E00.w,X		; 3D 00 1E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $EE.b		; 02 EE
	cmp $1C.b		; C5 1C
	rol A		; 2A
	jsl $091212.l		; 22 12 12 09
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	ora $0BFC.w		; 0D FC 0B
	inx		; E8
	eor $31.b		; 45 31
	lsr A		; 4A
	and $E4.b,S		; 23 E4
	ora [$89.b],Y		; 17 89
	asl $9C42.w,X		; 1E 42 9C
	jmp.w [$E3A1]		; DC A1 E3
	sta $FE01.w,Y		; 99 01 FE
	asl $DD10.w,X		; 1E 10 DD
	cmp ($EA.b,X)		; C1 EA
.ACCU 8
	sep #$64		; E2 64
	cpx $28.b		; E4 28
	sbc #$00.b		; E9 00
	cmp $00.b,S		; C3 00
	sta [$00.b]		; 87 00
	sta $00.b,S		; 83 00
	adc $35CD32.l,X		; 7F 32 CD 35
	iny		; C8
	bit $48.b,X		; 34 48
	tsb $28.b		; 04 28
	brk $08.b		; 00 08
	brk $09.b		; 00 09
	brk $1F.b		; 00 1F
	brk $83.b		; 00 83
	and ($33.b)		; 32 33
	and [$37.b],Y		; 37 37
	and [$37.b],Y		; 37 37
	ora [$17.b],Y		; 17 17
	ora [$17.b],Y		; 17 17
	asl $16.b,X		; 16 16
	brk $00.b		; 00 00
	ora ($24.b,S),Y		; 13 24
	brk $24.b		; 00 24
	brk $2E.b		; 00 2E
	brk $36.b		; 00 36
	php		; 08
	and [$08.b]		; 27 08
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	cop $1B.b		; 02 1B
	tas		; 1B
	tas		; 1B
	tas		; 1B
	ora ($15.b),Y		; 11 15
	ora ($0D.b,X)		; 01 0D
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3F.b		; 00 3F
	tsb $0C02.w		; 0C 02 0C
	cop $0C.b		; 02 0C
	ora ($00.b,X)		; 01 00
	ora [$11.b]		; 07 11
	ora $060F03.l		; 0F 03 0F 06
	asl $0C05.w		; 0E 05 0C
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1E.b		; 00 1E
	ora $1B.b,S		; 03 1B
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sec		; 38
	and $C07C60.l,X		; 3F 60 7C C0
	sed		; F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and $087807.l,X		; 3F 07 78 08
	beq  16.b		; F0 10
	cpy #$0000.w		; C0 00 00
	ora $02.b,S		; 03 02
	ora $007F10.l		; 0F 10 7F 00
	sed		; F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	and $10F021.l,X		; 3F 21 F0 10
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tsb $07.b		; 04 07
	php		; 08
	asl $1800.w		; 0E 00 18
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	tsb $1000.w		; 0C 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $0C1F04.l		; 0F 04 1F 0C
	asl $3C08.w,X		; 1E 08 3C
	bpl  56.b		; 10 38
	jsr $0070.w		; 20 70 00
	rts		; 60

	brk $C1.b		; 00 C1
	ora $000E08.l		; 0F 08 0E 00
	trb $3810.w		; 1C 10 38
	and ($30.b,X)		; 21 30
	ora ($60.b,X)		; 01 60
	eor ($40.b,X)		; 41 40
	ora ($80.b,X)		; 01 80
	ora ($1C.b,X)		; 01 1C
	stz $3D18.w,X		; 9E 18 3D
	brk $78.b		; 00 78
	cpx #$E0F0.w		; E0 F0 E0
	cpx #$E080.w		; E0 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	clc		; 18
	and $007E10.l,X		; 3F 10 7E 00
	jsr ($F8E0.w,X)		; FC E0 F8
	cpy #$80F0.w		; C0 F0 80
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	tsb $1E00.w		; 0C 00 1E
	tsb $0E1E.w		; 0C 1E 0E
	and $023F16.l,X		; 3F 16 3F 02
	sty $F878.w		; 8C 78 F8
	sed		; F8
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $0E1E.w		; 0C 1E 0E
	asl $3F16.w,X		; 1E 16 3F
	brk $3F.b		; 00 3F
	brk $FE.b		; 00 FE
	rts		; 60

	jsr ($413C.w,X)		; FC 3C 41
	rol $3C43.w,X		; 3E 43 3C
	.db $42, $78		; 42 78
	.db $42, $78		; 42 78
	.db $42, $7C		; 42 7C
	mvp $84,$34		; 44 34 84
	sec		; 38
	sty $407E.w		; 8C 7E 40
	jmp ($7E40.w,X)		; 7C 40 7E
	.db $42, $3C		; 42 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $74.b		; 00 74
	tsb $18.b		; 04 18
	lsr $0C.b		; 46 0C
	adc $26.b,S		; 63 26
	eor ($33.b),Y		; 51 33
	pha		; 48
	clc		; 18
	mvp $C3,$10		; 44 10 C3
	brk $CF.b		; 00 CF
	brk $3C.b		; 00 3C
	bra -65.b		; 80 BF
	bra -65.b		; 80 BF
	bra -65.b		; 80 BF
	bra -65.b		; 80 BF
	bra -65.b		; 80 BF
	ora $7F.b,S		; 03 7F
	asl $30FE.w		; 0E FE 30
	beq  11.b		; F0 0B
	sec		; 38
	ora [$B0.b],Y		; 17 B0
	brk $80.b		; 00 80
	jmp ($007F.w,X)		; 7C 7F 00
	inc $F000.w,X		; FE 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora [$D0.b],Y		; 17 D0
	and $C03FE0.l		; 2F E0 3F C0
	ora $83.b,S		; 03 83
	sed		; F8
	sed		; F8
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	ora $7E3FDF.l		; 0F DF 3F 7E
	inc $FCF0.w,X		; FE F0 FC
	cpx #$F0F8.w		; E0 F8 F0
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	cpy #$1F00.w		; C0 00 1F
	tsb $38FF.w		; 0C FF 38
	sbc $60FE70.l,X		; FF 70 FE 60
	jsr ($F800.w,X)		; FC 00 F8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	and ($3E.b),Y		; 31 3E
	clc		; 18
	clc		; 18
	jsr ($F00C.w,X)		; FC 0C F0
	ora $01333C.l		; 0F 3C 33 01
	sbc ($00.b)		; F2 00
	cpy #$0000.w		; C0 00 00
	and ($31.b),Y		; 31 31
	sbc [$1F.b]		; E7 1F
	sbc ($0F.b,S),Y		; F3 0F
	beq  12.b		; F0 0C
	cpy #$E00C.w		; C0 0C E0
	cpx $0000.w		; EC 00 00
	asl A		; 0A
	and $04.b,S		; 23 04
	ror $04.b		; 66 04
	ror $78.b		; 66 78
	inc $FCF8.w,X		; FE F8 FC
	bvs -124.b		; 70 84
	bvs -124.b		; 70 84
	rts		; 60

	tsb $1C.b		; 04 1C
	brk $3A.b		; 00 3A
	jsl $342038.l		; 22 38 20 34
	jmp ($FC30.w,X)		; 7C 30 FC
	sei		; 78
	jsr ($7878.w,X)		; FC 78 78
	sed		; F8
	sed		; F8
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	brk $1F.b		; 00 1F
	php		; 08
	adc $B1FF14.l,X		; 7F 14 FF B1
	sbc $00FF81.l,X		; FF 81 FF 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	brk $1C.b		; 00 1C
	brk $76.b		; 00 76
	brk $BB.b		; 00 BB
	brk $87.b		; 00 87
	brk $00.b		; 00 00
	sta ($80.b,X)		; 81 80
	cmp [$C0.b]		; C7 C0
	sbc $00FF80.l,X		; FF 80 FF 00
	jsr ($F000.w,X)		; FC 00 F0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	sta $02.b,S		; 83 02
	cmp $1FDF08.l		; CF 08 DF 1F
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $18.b		; 00 18
	brk $2C.b		; 00 2C
	brk $62.b		; 00 62
	brk $F9.b		; 00 F9
	mvn $56,$FE		; 54 FE 56
	adc $2BAB6B.l,X		; 7F 6B AB 2B
	sta $CB.b,S		; 83 CB
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	bvc  -1.b		; 50 FF
	phk		; 4B
	sbc $417F83.l,X		; FF 83 7F 41
	adc $041F0C.l,X		; 7F 0C 1F 04
	ora $F61F24.l,X		; 1F 24 1F F6
	ora $C60F96.l		; 0F 96 0F C6
	sbc $C6FFC6.l,X		; FF C6 FF C6
	sbc $0EF21E.l,X		; FF 1E F2 0E
	cpx #$E10F.w		; E0 0F E1
	ora $E007F8.l		; 0F F8 07 E0
	sta [$F0.b]		; 87 F0
	sta [$F0.b]		; 87 F0
	sta $FF00F8.l		; 8F F8 00 FF
	brk $FE.b		; 00 FE
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	brk $0D.b		; 00 0D
	tsb $09.b		; 04 09
	ror $0166.w,X		; 7E 66 01
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l,X		; 1F 00 1F 00
	cmp #$C9.b		; C9 C9
	trb $C5.b		; 14 C5
	rol A		; 2A
	tsb $EB.b		; 04 EB
	lsr $88.b		; 46 88
	lsr $98.b		; 46 98
	wai		; CB
	bpl -57.b		; 10 C7
	bpl  54.b		; 10 36
	rol $E3.b,X		; 36 E3
	xba		; EB
	cmp ($DD.b,X)		; C1 DD
	brk $1C.b		; 00 1C
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	php		; 08
	trb $1800.w		; 1C 00 18
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3F7F07.l		; 0F 07 7F 3F
	sbc $00FFF8.l,X		; FF F8 FF 00
	jsr ($C000.w,X)		; FC 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$06.b]		; 07 06
	and $80FF20.l,X		; 3F 20 FF 80
	sbc $18F801.l,X		; FF 01 F8 18
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora [$FF.b]		; 07 FF
	cpx #$80FF.w		; E0 FF 80
	sbc $00C000.l,X		; FF 00 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $F9.b		; 00 F9
	ora $8080.w,Y		; 19 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$F0F8.w		; C0 F8 F0
	jsr ($FE18.w,X)		; FC 18 FE
	tsb $04FF.w		; 0C FF 04
	and $041F04.l,X		; 3F 04 1F 04
	ora $F08080.l,X		; 1F 80 80 F0
	bpl  -8.b		; 10 F8
	php		; 08
	jsr ($3E84.w,X)		; FC 84 3E
	jsl $1E101E.l		; 22 1E 10 1E
	bpl  30.b		; 10 1E
	bpl  12.b		; 10 0C
	rol $7E18.w,X		; 3E 18 7E
	bmi  -4.b		; 30 FC
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3C22.w,X		; 3E 22 3C
	brk $78.b		; 00 78
	brk $E0.b		; 00 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   1.b		; 50 01
	ldy #$C001.w		; A0 01 C0
	ora ($00.b,X)		; 01 00
	lda ($40.b,X)		; A1 40
	bcc  32.b		; 90 20
	dey		; 88
	eor ($C4.b,S),Y		; 53 C4
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	rti		; 40

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $3B.b		; 00 3B
	ora $28.b,S		; 03 28
	sbc $10.b,S		; E3 10
	sbc [$46.b],Y		; F7 46
	lda $9661.w,Y		; B9 61 96
	adc ($89.b,S),Y		; 73 89
	adc $037F83.l,X		; 7F 83 7F 03
	lda ($03.b,S),Y		; B3 03
	jmp $202840.l		; 5C 40 28 20
	asl $16.b,X		; 16 16
	php		; 08
	ora #$04.b		; 09 04
	ora [$01.b]		; 07 01
	ora [$81.b]		; 07 81
	sta [$C0.b]		; 87 C0
	cmp [$A3.b]		; C7 A3
	ora ($A0.b,X)		; 01 A0
	ora ($11.b,X)		; 01 11
	jsr $E000.w		; 20 00 E0
	ldy #$A800.w		; A0 00 A8
	rti		; 40

	trb $C0.b		; 14 C0
	pei ($00.b)		; D4 00
	cpy #$C0C7.w		; C0 C7 C0
	cmp $C0.b,S		; C3 C0
	cmp ($00.b,X)		; C1 00
	ora ($C0.b),Y		; 11 C0
	bne -128.b		; D0 80
	bcs   0.b		; B0 00
	sec		; 38
	brk $B8.b		; 00 B8
	pei ($00.b)		; D4 00
	stz $00.b,X		; 74 00
	ldy $7040.w		; AC 40 70
	rti		; 40

	ldy #$0080.w		; A0 80 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	brk $98.b		; 00 98
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	bpl 112.b		; 10 70
	jsr $60E0.w		; 20 E0 60
	cpx #$0000.w		; E0 00 00
	ora ($01.b,X)		; 01 01
	ora $101808.l		; 0F 08 18 10
	bmi  32.b		; 30 20
	bvs  64.b		; 70 40
	cpx #$E080.w		; E0 80 E0
	brk $80.b		; 00 80
	sbc $03FF1E.l,X		; FF 1E FF 03
	sbc $00FF61.l,X		; FF 61 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	asl $0004.w		; 0E 04 00
	lda $7E00.w,Y		; B9 00 7E
	brk $87.b		; 00 87
	brk $F3.b		; 00 F3
	brk $67.b		; 00 67
	ora $1C.b,S		; 03 1C
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora $80.b,S		; 03 80
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq  32.b		; F0 20
	sed		; F8
	bpl 124.b		; 10 7C
	ora #$3E.b		; 09 3E
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	sta [$78.b]		; 87 78
	cmp $3C.b,S		; C3 3C
	cpx #$C713.w		; E0 13 C7
	php		; 08
	sta [$07.b]		; 87 07
	brk $02.b		; 00 02
	ora [$00.b]		; 07 00
	ora $01.b,S		; 03 01
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	and $00BF80.l,X		; 3F 80 BF 00
	ora $000F00.l,X		; 1F 00 0F 00
	asl $0600.w		; 0E 00 06
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $EF9608.l		; 0F 08 96 EF
	stz $8F.b,X		; 74 8F
	ldy $585F.w		; AC 5F 58
	lda $617EB1.l,X		; BF B1 7E 61
	jsr ($F881.w,X)		; FC 81 F8
	brk $FE.b		; 00 FE
	ora $E10FF0.l		; 0F F0 0F E1
	asl $3ED0.w,X		; 1E D0 3E
	jsl $F3457D.l		; 22 7D 45 F3
	sta $E7.b,S		; 83 E7
	and [$C1.b]		; 27 C1
	eor ($04.b,X)		; 41 04
	ora $100D.w,Y		; 19 0D 10
	ora $1F10.w		; 0D 10 1F
	brk $3F.b		; 00 3F
	ora $33.b,S		; 03 33
	php		; 08
	ora ($08.b)		; 12 08
	ora ($08.b,X)		; 01 08
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $32.b		; 00 32
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cmp $1FFA07.l		; CF 07 FA 1F
	plx		; FA
	rol $FDF0.w,X		; 3E F0 FD
	beq -117.b		; F0 8B
	rti		; 40

	jmp ($7840.w,X)		; 7C 40 78
	ldy #$0238.w		; A0 38 02
	sbc [$10.b],Y		; F7 10
	ora $013F30.l,X		; 1F 30 3F 01
	sbc $B07C00.l,X		; FF 00 7C B0
	bmi -80.b		; 30 B0
	bmi -48.b		; 30 D0
	bpl -64.b		; 10 C0
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	ora $3C.b,S		; 03 3C
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $FC.b,S		; 03 FC
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $FEFE.w,X		; FE FE FE
	brk $00.b		; 00 00
	ora $00F0E0.l,X		; 1F E0 F0 00
	cpx #$8080.w		; E0 80 80
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$C0C0.w		; E0 C0 C0
	cpx #$E0E0.w		; E0 E0 E0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	cpy #$40E0.w		; C0 E0 40
	cpx #$E0F0.w		; E0 F0 E0
	rts		; 60

	beq -16.b		; F0 F0
	bvs  92.b		; 70 5C
	sei		; 78
	asl $3C7C.w,X		; 1E 7C 3C
	sei		; 78
	sec		; 38
	bmi  48.b		; 30 30
	brk $60.b		; 00 60
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq  24.b		; F0 18
	jsr ($FE1C.w,X)		; FC 1C FE
	sec		; 38
	ror $7C30.w,X		; 7E 30 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($B200.w,X)		; 7C 00 B2
	jmp $C639.w		; 4C 39 C6
	adc $00F080.l,X		; 7F 80 F0 00
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
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	clc		; 18
	cop $75.b		; 02 75
	bit $78EB.w,X		; 3C EB 78
	ora [$F1.b],Y		; 17 F1
	lsr $9CA3.w		; 4E A3 9C
	and [$08.b]		; 27 08
	rol $0000.w,X		; 3E 00 00
	ora ($18.b,X)		; 01 18
	ora ($70.b,S),Y		; 13 70
	and [$E0.b]		; 27 E0
	asl $1DE0.w		; 0E E0 1D
	cmp ($5A.b,X)		; C1 5A
.INDEX 16
	rep #$D4		; C2 D4
	pei ($00.b)		; D4 00
	trb $8800.w		; 1C 00 88
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	tsb $1C.b		; 04 1C
	cpx #$70E0.w		; E0 E0 70
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	php		; 08
	tsb $1A00.w		; 0C 00 1A
	sta $3E.b,S		; 83 3E
	sta $3E.b,S		; 83 3E
	sta $3E.b,S		; 83 3E
	sta $7E.b,S		; 83 7E
	eor $7E.b,S		; 43 7E
	eor $3E.b,S		; 43 3E
	.db $42, $1E		; 42 1E
	.db $42, $7D		; 42 7D
	ora ($7D.b,X)		; 01 7D
	ora ($7D.b,X)		; 01 7D
	ora ($7C.b,X)		; 01 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($7C40.w,X)		; 7C 40 7C
	cpy $1C.b		; C4 1C
	cpy $28.b		; C4 28
	stz $20.b		; 64 20
	ror $10.b		; 66 10
	ror $18.b,X		; 76 18
	and $003F00.l,X		; 3F 00 3F 00
	and $780038.l,X		; 3F 38 00 78
	rti		; 40

	jmp $041C44.l		; 5C 44 1C 04
	bit $2624.w		; 2C 24 26
	rol $1E.b		; 26 1E
	asl $0100.w,X		; 1E 00 01
	jmp ($7D7E.w,X)		; 7C 7E 7D
	ror $0219.w,X		; 7E 19 02
	ora $1902.w,Y		; 19 02 19
	cop $19.b		; 02 19
	.db $42, $19		; 42 19
	.db $42, $19		; 42 19
	.db $42, $18		; 42 18
	ror $7C18.w,X		; 7E 18 7C
	jmp ($7C7C.w,X)		; 7C 7C 7C
	jmp ($7C7C.w,X)		; 7C 7C 7C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	ora $1842.w,Y		; 19 42 18
	.db $42, $18		; 42 18
	cop $1A.b		; 02 1A
	brk $1A.b		; 00 1A
	brk $0A.b		; 00 0A
	jsr $200A.w		; 20 0A 20
	asl A		; 0A
	jsr $3C3C.w		; 20 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $3C3C.w,X		; 3C 3C 3C
	bit $1C3C.w,X		; 3C 3C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $0A1C.w		; 1C 1C 0A
	jsr $200A.w		; 20 0A 20
	cop $20.b		; 02 20
	rol $3200.w		; 2E 00 32
	tsb $1C22.w		; 0C 22 1C
	ror $7E00.w,X		; 7E 00 7E
	brk $1C.b		; 00 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $101C.w		; 1C 1C 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	clc		; 18
	lsr $38.b		; 46 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $FF3F7F.l		; 0F 7F 3F FF
	sed		; F8
	sbc $00FEC0.l,X		; FF C0 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	asl $3F.b		; 06 3F
	jsr $80FF.w		; 20 FF 80
	sbc $0CFC01.l,X		; FF 01 FC 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	inc $FFFF.w,X		; FE FF FF
	sbc $00FF80.l,X		; FF 80 FF 00
	beq   0.b		; F0 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	adc $FF00FF.l,X		; 7F FF 00 FF
	brk $FF.b		; 00 FF
	ora [$E0.b]		; 07 E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FE.b		; 00 FE
	cpx #$01FF.w		; E0 FF 01
	sbc $CF1F27.l,X		; FF 27 1F CF
	and $000000.l,X		; 3F 00 00 00
	brk $80.b		; 00 80
	bra  -8.b		; 80 F8
	sei		; 78
	inc $0F06.w,X		; FE 06 0F
	php		; 08
	ora $031F11.l,X		; 1F 11 1F 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bmi  -8.b		; 30 F8
	cpy #$E0FC.w		; C0 FC E0
	jsr ($FCF0.w,X)		; FC F0 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	iny		; C8
	brk $F0.b		; 00 F0
	cpy #$A0F8.w		; C0 F8 A0
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
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($1F.b,X)		; 01 1F
	asl $3F.b		; 06 3F
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $101F08.l		; 0F 08 1F 10
	and $447C21.l,X		; 3F 21 7C 44
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	sec		; 38
	tsb $47.b		; 04 47
	jsr $400F.w		; 20 0F 40
	ora $038040.l,X		; 1F 40 80 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	and $7C7C3F.l,X		; 3F 3F 7C 7C
	ora $3C.b		; 05 3C
	sbc ($0E.b)		; F2 0E
	tda		; 7B
	dey		; 88
	ora ($68.b,S),Y		; 13 68
	sbc $FE34.w,X		; FD 34 FE
	clc		; 18
	sbc $807F0E.l,X		; FF 0E 7F 80
	tas		; 1B
	clc		; 18
	ora $04.b		; 05 04
	ora [$60.b]		; 07 60
	sta $F0C3E8.l		; 8F E8 C3 F0
	sbc $F0F8.w,Y		; F9 F8 F0
	inc $0000.w,X		; FE 00 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ror $7281.w,X		; 7E 81 72
	cmp $C910.w		; CD 10 C9
	bpl 115.b		; 10 73
	sbc $1C.b,S		; E3 1C
	jsr ($0FE3.w,X)		; FC E3 0F
	php		; 08
	cmp $E8.b,S		; C3 E8
	cmp $80B281.l,X		; DF 81 B2 80
	ror $44.b,X		; 76 44
	and $00A1.w		; 2D A1 00
	sbc $E0.b,S		; E3 E0
	sbc $C7FF08.l,X		; FF 08 FF C7
	sbc [$38.b],Y		; F7 38
	jsr ($7810.w,X)		; FC 10 78
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($7884.w,X)		; FC 84 78
	pha		; 48
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora $1F.b,S		; 03 1F
	asl $3F.b		; 06 3F
	brk $7F.b		; 00 7F
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $101F08.l		; 0F 08 1F 10
	and $4C7C21.l,X		; 3F 21 7C 4C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	bpl 112.b		; 10 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	tsb $0808.w		; 0C 08 08
	php		; 08
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi  32.b		; 30 20
	bmi  48.b		; 30 30
	brk $0C.b		; 00 0C
	ora $13.b		; 05 13
	cop $31.b		; 02 31
	and ($78.b),Y		; 31 78
	beq 125.b		; F0 7D
	inx		; E8
	sbc ($D0.b)		; F2 D0
	cpx #$C0A0.w		; E0 A0 C0
	ora $00.b,S		; 03 00
	tsb $0E0C.w		; 0C 0C 0E
	rol $7737.w		; 2E 37 77
	.db $62, $FA, $C0		; 62 FA C0
	jsr ($F880.w,X)		; FC 80 F8
	brk $F0.b		; 00 F0
	lda $C0.b,S		; A3 C0
	and ($C7.b,S),Y		; 33 C7
	bpl -95.b		; 10 A1
	asl $A0.b		; 06 A0
	bit $3801.w		; 2C 01 38
	ora $50.b,S		; 03 50
	asl $50.b		; 06 50
	asl $18.b		; 06 18
	ora $408F81.l,X		; 1F 81 8F 40
	eor $005F40.l		; 4F 40 5F 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $FC3F00.l,X		; 3F 00 3F FC
	jmp ($9CFC.w,X)		; 7C FC 9C
	plx		; FA
	nop		; EA
	bpl  56.b		; 10 38
	ora ($12.b),Y		; 11 12
	ora ($48.b,X)		; 01 48
	sta ($48.b)		; 92 48
	bit #$64.b		; 89 64
	trb $88FE.w		; 1C FE 88
	inc $FF60.w,X		; FE 60 FF
	bpl  -1.b		; 10 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $0F.b		; 00 0F
	ora [$FF.b]		; 07 FF
	ora $FF38FF.l,X		; 1F FF 38 FF
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	cpx #$0060.w		; E0 60 00
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	beq  -1.b		; F0 FF
	rti		; 40

	sbc $04FC80.l,X		; FF 80 FC 04
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	cop $FE.b		; 02 FE
	cpy #$00FE.w		; C0 FE 00
	sbc $00C001.l,X		; FF 01 C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $C3.b		; 02 C3
	cmp ($FB.b,X)		; C1 FB
	ora #$F1.b		; 09 F1
	bpl -128.b		; 10 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $9B.b		; 00 9B
	sbc $C83F19.l,X		; FF 19 3F C8
	eor $001F40.l,X		; 5F 40 1F 00
	and $A4F01E.l,X		; 3F 1E F0 A4
	sei		; 78
	eor $DF3A.w		; 4D 3A DF
	ora #$FF.b		; 09 FF
	cpy $E2FB.w		; CC FB E2
	inc $CCF0.w,X		; FE F0 CC
	cpy $0031.w		; CC 31 00
	and ($0A.b,X)		; 21 0A
	ora #$0A.b		; 09 0A
	sei		; 78
	jsr ($FC08.w,X)		; FC 08 FC
	phd		; 0B
	sbc $4FDF23.l,X		; FF 23 DF 4F
	lda [$00.b],Y		; B7 00
	eor $D014B3.l		; 4F B3 14 D0
	bmi 124.b		; 30 7C
	plp		; 28
	trb $4F00.w		; 1C 00 4F
	eor $CB.b,S		; 43 CB
	cmp $80.b,S		; C3 80
	lda [$90.b]		; A7 90
	adc [$C0.b]		; 67 C0
	ora $000CC0.l		; 0F C0 0C 00
	ora $3FFF0F.l		; 0F 0F FF 3F
	sbc $F0FFFE.l,X		; FF FE FF F0
	sbc $00FF00.l,X		; FF 00 FF 00
	stz $1C00.w,X		; 9E 00 1C
	ora [$04.b]		; 07 04
	adc $00FF40.l,X		; 7F 40 FF 00
	sbc $03FF00.l,X		; FF 00 FF 03
	sbc [$14.b],Y		; F7 14
	stx $0C88.w		; 8E 88 0C
	brk $FF.b		; 00 FF
	sbc $E0FFFC.l,X		; FF FC FF E0
	sbc $00FF00.l,X		; FF 00 FF 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	asl $F8.b		; 06 F8
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $88.b,X		; 34 88
	pla		; 68
	bcc  96.b		; 90 60
	bcc -16.b		; 90 F0
	brk $B0.b		; 00 B0
	brk $90.b		; 00 90
	brk $50.b		; 00 50
	brk $20.b		; 00 20
	brk $70.b		; 00 70
	bvs  96.b		; 70 60
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $02.b		; 00 02
	bmi   4.b		; 30 04
	jsr $2008.w		; 20 08 20
	plp		; 28
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1818.w		; 0C 18 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $08.b,S		; 03 08
	cop $08.b		; 02 08
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $080F08.l		; 0F 08 0F 08
	jsr $00F8.w		; 20 F8 00
	stz $5C.b,X		; 74 5C
	ror $5FDE.w		; 6E DE 5F
	sta $4F205F.l		; 8F 5F 20 4F
	sta $CF.b,S		; 83 CF
	ora $C7.b,S		; 03 C7
	and [$37.b]		; 27 37
	cmp $5B.b,S		; C3 5B
	sta $1D.b		; 85 1D
	stx $3E.b		; 86 3E
	cmp $7F.b,S		; C3 7F
	cpy #$215F.w		; C0 5F 21
	and $00BFB1.l,X		; 3F B1 BF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	cmp $7C.b		; C5 7C
	txs		; 9A
	rol $A8.b		; 26 A8
	rol $A7.b,X		; 36 A7
	tsa		; 3B
	.db $42, $7D		; 42 7D
	sta $E6.b,S		; 83 E6
	adc $008080.l,X		; 7F 80 80 00
	phb		; 8B
	php		; 08
	sbc $24.b		; E5 24
	cmp $02.b,S		; C3 02
	cpy #$A108.w		; C0 08 A1
	and $58.b		; 25 58
	phy		; 5A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $FEF8.w		; F4 F8 FE
	jsr ($FEBF.w,X)		; FC BF FE
	sbc $0A1F16.l,X		; FF 16 1F 0A
	tsb $0006.w		; 0C 06 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr ($FEF8.w,X)		; FC F8 FE
	bit $16FF.w,X		; 3C FF 16
	sbc $001F0A.l,X		; FF 0A 1F 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	and $2D3F00.l,X		; 3F 00 3F 2D
	and [$27.b]		; 27 27
	bvc  83.b		; 50 53
	rol $002C.w		; 2E 2C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $277F2D.l,X		; 3F 2D 7F 27
	sbc $00FF40.l,X		; FF 40 FF 00
	adc $002C00.l,X		; 7F 00 2C 00
	bra   0.b		; 80 00
	rti		; 40

	cpy #$8040.w		; C0 40 80
	jsr $2080.w		; 20 80 20
	cpy #$0020.w		; C0 20 00
	jsr $C000.w		; 20 00 C0
	bra -128.b		; 80 80
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -90.b		; 80 A6
	php		; 08
	ldx $08.b		; A6 08
	ldy #$4008.w		; A0 08 40
	brk $22.b		; 00 22
	asl $19.b		; 06 19
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	adc $007F00.l,X		; 7F 00 7F 00
	adc $053E01.l,X		; 7F 01 3E 05
	trb $0202.w		; 1C 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	bit #$64.b		; 89 64
	cpy $32.b		; C4 32
	jsl $1C1018.l		; 22 18 10 1C
	beq   7.b		; F0 07
	sei		; 78
	ora $BC.b,S		; 03 BC
	sta ($2E.b,X)		; 81 2E
	cpx #$FF00.w		; E0 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	inx		; E8
	phd		; 0B
	jsr ($FE04.w,X)		; FC 04 FE
	cop $7F.b		; 02 7F
	ora ($5F.b,X)		; 01 5F
	rti		; 40

	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $E8.b		; 00 E8
	bvs -124.b		; 70 84
	sec		; 38
	.db $82, $5C, $C1		; 82 5C C1
	rol $17E0.w		; 2E E0 17
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	tya		; 98
	sei		; 78
	pla		; 68
	jsr ($FE84.w,X)		; FC 84 FE
	.db $82, $BF, $81		; 82 BF 81
	eor $A0AF40.l,X		; 5F 40 AF A0
	brk $1E.b		; 00 1E
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	jsr $1EE4.w		; 20 E4 1E
	asl $18.b,X		; 16 18
	clc		; 18
	bmi  48.b		; 30 30
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	brk $E4.b		; 00 E4
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bvc -128.b		; 50 80
	bvc  64.b		; 50 40
	bmi   0.b		; 30 00
	bmi -92.b		; 30 A4
	bpl   4.b		; 10 04
	bne -28.b		; D0 E4
	clc		; 18
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	dey		; 88
	pla		; 68
	dey		; 88
	pla		; 68
	tsb $0CEC.w		; 0C EC 0C
	cpx $E4E4.w		; EC E4 E4
	tsb $080A.w		; 0C 0A 08
	asl $0C0A.w		; 0E 0A 0C
	asl $FC.b		; 06 FC
	ldx #$28C0.w		; A2 C0 28
	iny		; C8
	pha		; 48
	dey		; 88
	php		; 08
	sed		; F8
	jsr ($FCF4.w,X)		; FC F4 FC
	beq  -2.b		; F0 FE
	sbc ($06.b)		; F2 06
	cop $B6.b		; 02 B6
	ldx $BE36.w,Y		; BE 36 BE
	sei		; 78
	jmp ($0C08.w,X)		; 7C 08 0C
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	cpy #$00FF.w		; C0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	and $000000.l,X		; 3F 00 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	bmi  -1.b		; 30 FF
	ora [$FF.b]		; 07 FF
	brk $7F.b		; 00 7F
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$7FFF.w		; C0 FF 7F
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $000300.l,X		; 7F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	tsb $00FF.w		; 0C FF 00
	adc $000070.l,X		; 7F 70 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $08.b,S		; 03 08
	brk $17.b		; 00 17
	ora [$1F.b]		; 07 1F
	ora $0F070F.l		; 0F 0F 07 0F
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	php		; 08
	php		; 08
	ora [$07.b]		; 07 07
	ora [$1F.b]		; 07 1F
	ora $1F.b,S		; 03 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	stx $31.b		; 86 31
	tsb $F3.b		; 04 F3
	tsb $52.b		; 04 52
	ora ($44.b,X)		; 01 44
	ora #$46.b		; 09 46
	stx $8F.b,Y		; 96 8F
	cmp [$D7.b]		; C7 D7
	sbc [$E7.b]		; E7 E7
	cpx #$402F.w		; E0 2F 40
	lsr $ADA1.w		; 4E A1 AD
	and $BB.b,S		; 23 BB
	ora ($BD.b,X)		; 01 BD
	bra  -2.b		; 80 FE
	eor $FF.b,S		; 43 FF
	sbc $FF.b,S		; E3 FF
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	clc		; 18
	tsb $00.b		; 04 00
	jsl $36015C.l		; 22 5C 01 36
	rti		; 40

	and [$40.b],Y		; 37 40
	and #$04.b		; 29 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3E1C.w		; 1C 1C 3E
	rol $3F3F.w,X		; 3E 3F 3F
	and $73733F.l,X		; 3F 3F 73 73
	inc $E101.w,X		; FE 01 E1
	asl $1E6D.w,X		; 1E 6D 1E
	jsl $112D13.l		; 22 13 2D 11
	rol $0790.w		; 2E 90 07
	bvc -113.b		; 50 8F
	sec		; 38
	brk $01.b		; 00 01
	tsb $120C.w		; 0C 0C 12
	ora ($1D.b)		; 12 1D
	ora ($1E.b),Y		; 11 1E
	bpl  31.b		; 10 1F
	bpl -113.b		; 10 8F
	bra -57.b		; 80 C7
	cpy #$FC00.w		; C0 00 FC
	bmi  -2.b		; 30 FE
	jmp ($FEFF.w,X)		; 7C FF FE
	sbc $7BFFFA.l,X		; FF FA FF 7B
	lda $04DF20.l,X		; BF 20 DF 04
	sta $7C0060.l,X		; 9F 60 00 7C
	brk $FE.b		; 00 FE
	and ($FF.b)		; 32 FF
	adc $32FF.w,Y		; 79 FF 32
	and $C01912.l,X		; 3F 12 19 C0
	ora ($E1.b,X)		; 01 E1
	brk $38.b		; 00 38
	jsr $2038.w		; 20 38 20
	sec		; 38
	jsr $1038.w		; 20 38 10
	trb $0E08.w		; 1C 08 0E
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	sec		; 38
	php		; 08
	sec		; 38
	php		; 08
	trb $0E04.w		; 1C 04 0E
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $061F07.l		; 0F 07 1F 06
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	tsb $0F.b		; 04 0F
	php		; 08
	ora $101F00.l		; 0F 00 1F 10
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $FF7CFF.l,X		; 1F FF 7C FF
	cpx #$C0FF.w		; E0 FF C0
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	adc $00FF40.l,X		; 7F 40 FF 00
	inc $F006.w,X		; FE 06 F0
	bpl -64.b		; 10 C0
	rti		; 40

	bra -128.b		; 80 80
	bmi -121.b		; 30 87
	inx		; E8
	ora $F0.b,S		; 03 F0
	ora [$00.b],Y		; 17 00
	trb $3000.w		; 1C 00 30
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsa		; 3B
	.db $42, $F1		; 42 F1
	ora $0AE2.w		; 0D E2 0A
	beq -48.b		; F0 D0
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	tsb $083F.w		; 0C 3F 08
	rol $3C18.w,X		; 3E 18 3C
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	bpl  56.b		; 10 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	asl $3C00.w,X		; 1E 00 3C
	jsr $043C.w		; 20 3C 04
	sec		; 38
	brk $38.b		; 00 38
	php		; 08
	bmi   0.b		; 30 00
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $68.b		; 00 68
	brk $58.b		; 00 58
	dey		; 88
	jmp ($C418.w)		; 6C 18 C4
	bit $1C66.w		; 2C 66 1C
	and ($00.b)		; 32 00
	rts		; 60

	brk $70.b		; 00 70
	bra -80.b		; 80 B0
	tya		; 98
	clv		; B8
	bcs -96.b		; B0 A0
	jmp ($1844.w,X)		; 7C 44 18
	brk $2E.b		; 00 2E
	jsl $003000.l		; 22 00 30 00
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bvs  48.b		; 70 30
	bvs  48.b		; 70 30
	bvs  16.b		; 70 10
	bmi  24.b		; 30 18
	clc		; 18
	bmi  48.b		; 30 30
	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $00.b		; 00 00
	ora $7FFF07.l,X		; 1F 07 FF 7F
	sbc $80FFFF.l,X		; FF FF FF 80
	sbc $00C000.l,X		; FF 00 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	rti		; 40

	sbc $00FF00.l,X		; FF 00 FF 00
	beq  48.b		; F0 30
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $00FF07.l,X		; FF 07 FF 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bmi  -1.b		; 30 FF
	ora ($FF.b,X)		; 01 FF
	brk $7F.b		; 00 7F
	bvs   7.b		; 70 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $80FF7E.l,X		; 7F 7E FF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	inc $F302.w,X		; FE 02 F3
	ora #$ED.b		; 09 ED
	tsb $C6.b		; 04 C6
	dec A		; 3A
	.db $42, $70		; 42 70
	sta $E2.b,S		; 83 E2
	ora #$C0.b		; 09 C0
	ora $F9F8.w,Y		; 19 F8 F9
	sbc ($3F.b)		; F2 3F
	inx		; E8
	sbc $383F04.l,X		; FF 04 3F 38
	ora [$78.b]		; 07 78
	asl $F8.b		; 06 F8
	asl $16F0.w		; 0E F0 16
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	asl $08.b		; 06 08
	tsb $3911.w		; 0C 11 39
	cop $19.b		; 02 19
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $000F00.l,X		; 3F 00 0F 00
	ora [$EB.b]		; 07 EB
	xba		; EB
	cmp $CD.b		; C5 CD
	ldx #$2186.w		; A2 86 21
	eor #$50.b		; 49 50
	txa		; 8A
	ldy #$621A.w		; A0 1A 62
	ora $1962.w,Y		; 19 62 19
	phb		; 8B
	sbc $02FF04.l,X		; FF 04 FF 02
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $E4FF00.l,X		; FF 00 FF E4
	asl A		; 0A
	dex		; CA
	ora ($C1.b),Y		; 11 C1
	bpl -112.b		; 10 90
	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($71.b),Y		; 71 71
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($08.b,S),Y		; D3 08
	adc [$0C.b]		; 67 0C
	and ($8C.b),Y		; 31 8C
	sta ($4E.b,S),Y		; 93 4E
	eor ($2E.b)		; 52 2E
	jsr $790E.w		; 20 0E 79
	ora [$95.b]		; 07 95
	eor [$EF.b]		; 47 EF
	inx		; E8
	sbc ($F0.b,S),Y		; F3 F0
	adc [$74.b],Y		; 77 74
	and ($30.b),Y		; 31 30
	ora ($18.b),Y		; 11 18
	ora ($1A.b,S),Y		; 13 1A
	php		; 08
	tsb $2C28.w		; 0C 28 2C
	brk $39.b		; 00 39
	brk $FF.b		; 00 FF
	sbc $FF.b,S		; E3 FF
	cop $FF.b		; 02 FF
	ora $F9.b,S		; 03 F9
	ora ($FB.b,X)		; 01 FB
	brk $18.b		; 00 18
	ora $0C.b		; 05 0C
	asl $06.b,X		; 16 06
	sbc #$C0.b		; E9 C0
	sbc $60EF00.l		; EF 00 EF 60
	tsb $0F00.w		; 0C 00 0F
	ora $0F.b,S		; 03 0F
	inx		; E8
	ora $F0.b,S		; 03 F0
	ora ($8C.b,X)		; 01 8C
	ora #$E6.b		; 09 E6
	and ($87.b,X)		; 21 87
	stz $13.b		; 64 13
	ror $01.b		; 66 01
	bit $06.b,X		; 34 06
	bmi -123.b		; 30 85
	bit $0F8C.w		; 2C 8C 0F
	jsr ($920B.w,X)		; FC 0B 92
	stz $7C.b		; 64 7C
	inc $EA.b		; E6 EA
	inc $F8.b,X		; F6 F8
	sed		; F8
	sbc $7A78.w,Y		; F9 78 7A
	adc $5C1C73.l,X		; 7F 73 1C 5C
	txy		; 9B
	sec		; 38
	sta $5C.b,S		; 83 5C
	rti		; 40

	sbc [$C0.b],Y		; F7 C0
	sbc ($E0.b)		; F2 E0
	jsr ($E0C0.w,X)		; FC C0 E0
	brk $00.b		; 00 00
	lda $C7DFA3.l,X		; BF A3 DF C7
	lda $A3.b,S		; A3 A3
	php		; 08
	pha		; 48
	tsb $C0EC.w		; 0C EC C0
	beq -128.b		; F0 80
	sed		; F8
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -96.b		; 80 A0
	brk $D0.b		; 00 D0
	bra 104.b		; 80 68
	mvp $20,$30		; 44 30 20
	tya		; 98
	bmi -116.b		; 30 8C
	bpl -56.b		; 10 C8
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	rts		; 60

	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	cpy $6608.w		; CC 08 66
	asl A		; 0A
	and $04.b,X		; 35 04
	and $1308.w,Y		; 39 08 13
	ora ($0F.b,X)		; 01 0F
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	bvs  64.b		; 70 40
	sec		; 38
	jsr $121A.w		; 20 1A 12
	asl $06.b		; 06 06
	tsb $000D.w		; 0C 0D 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$E0F0.w		; C0 F0 E0
	sed		; F8
	beq 124.b		; F0 7C
	sed		; F8
	rol $1E3C.w,X		; 3E 3C 1E
	asl $0000.w,X		; 1E 00 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	beq 112.b		; F0 70
	sed		; F8
	sec		; 38
	jsr ($FE1C.w,X)		; FC 1C FE
	asl $0B3F.w		; 0E 3F 0B
	and $59.b		; 25 59
	cop $5A.b		; 02 5A
	tsb $74.b		; 04 74
	brk $60.b		; 00 60
	php		; 08
	pha		; 48
	brk $40.b		; 00 40
	bmi  48.b		; 30 30
	brk $18.b		; 00 18
	ora $3C3C.w,Y		; 19 3C 3C
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs  -2.b		; B0 FE
	cpx #$00F0.w		; E0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cpy #$E0E0.w		; C0 E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bmi  -8.b		; 30 F8
	pha		; 48
	cmp $9197B0.l		; CF B0 97 91
	sta [$00.b]		; 87 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	bmi  -5.b		; 30 FB
	sei		; 78
	xce		; FB
	sei		; 78
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	tsb $183F.w		; 0C 3F 18
	rol $3C10.w,X		; 3E 10 3C
	brk $38.b		; 00 38
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $010F08.l		; 0F 08 0F 01
	asl $1C02.w,X		; 1E 02 1C
	tsb $38.b		; 04 38
	php		; 08
	bmi  16.b		; 30 10
	ror $11.b		; 66 11
	jsl $08B299.l		; 22 99 B2 08
	tsx		; BA
	brk $4A.b		; 00 4A
	bcs -124.b		; B0 84
	plx		; FA
	jmp $827E.w		; 4C 7E 82
	and ($00.b)		; 32 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $804C00.l,X		; FF 00 4C 80
	sty $48.b		; 84 48
	pha		; 48
	ldx #$EC22.w		; A2 22 EC
	jsr $328E.w		; 20 8E 32
	ldx $EE32.w		; AE 32 EE
	and ($EE.b)		; 32 EE
	and ($CA.b)		; 32 CA
	ora ($C4.b)		; 12 C4
	asl $28.b,X		; 16 28
	rol $FCE0.w,X		; 3E E0 FC
	cpx $CC20.w		; EC 20 CC
	brk $DC.b		; 00 DC
	bpl -36.b		; 10 DC
	bpl -20.b		; 10 EC
	brk $EA.b		; 00 EA
	cop $C4.b		; 02 C4
	tsb $08.b		; 04 08
	php		; 08
	beq -16.b		; F0 F0
	sec		; 38
	sei		; 78
	trb $1E3C.w		; 1C 3C 1E
	asl $0E0F.w,X		; 1E 0F 0E
	ora $0A.b,S		; 03 0A
	ora $06.b		; 05 06
	brk $00.b		; 00 00
	bvs  -8.b		; 70 F8
	bmi  -4.b		; 30 FC
	tsb $0E7E.w		; 0C 7E 0E
	and $021F0A.l,X		; 3F 0A 1F 02
	ora $000F00.l,X		; 1F 00 0F 00
	asl $01.b		; 06 01
	ora $02.b		; 05 02
	brk $07.b		; 00 07
	php		; 08
	asl $10.b		; 06 10
	sta $E1BCB1.l,X		; 9F B1 BC E1
	jmp ($7AC1.w,X)		; 7C C1 7A
	sta $03.b,S		; 83 03
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	bra  31.b		; 80 1F
	sta ($3F.b,X)		; 81 3F
	ora ($FC.b,X)		; 01 FC
	bra -52.b		; 80 CC
	bne -104.b		; D0 98
	cpx #$4020.w		; E0 20 40
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $00E0.w		; 20 E0 00
	cpx #$F000.w		; E0 00 F0
	brk $60.b		; 00 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1E.b		; 00 1E
	trb $217D.w		; 1C 7D 21
	sbc $FB43.w,X		; FD 43 FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bit $7C03.w,X		; 3C 03 7C
	ora $F2.b,S		; 03 F2
	ora [$78.b],Y		; 17 78
	sbc ($70.b,S),Y		; F3 70
	sbc [$F6.b],Y		; F7 F6
	adc [$EC.b]		; 67 EC
	adc $606EC0.l		; 6F C0 6E 60
	cmp ($C0.b,X)		; C1 C0
	cmp ($20.b,X)		; C1 20
	lda ($61.b,X)		; A1 61
	sbc $F867.w,X		; FD 67 F8
	eor [$F8.b]		; 47 F8
	eor $F040F1.l		; 4F F1 40 F0
	brk $E0.b		; 00 E0
	cpy #$20E0.w		; C0 E0 20
	beq   0.b		; F0 00
	sta ($10.b),Y		; 91 10
	sbc $21.b		; E5 21
	tsb $61.b		; 04 61
	trb $C1.b		; 14 C1
	trb $A1.b		; 14 A1
	trb $49.b		; 14 49
	bit $49.b		; 24 49
	bit $60.b		; 24 60
	adc $E00F00.l		; 6F 00 0F E0
	sbc $80DFC0.l,X		; FF C0 DF 80
	lda $007F00.l,X		; BF 00 7F 00
	sbc $18FF00.l,X		; FF 00 FF 18
	lsr $4C.b		; 46 4C
	jsl $329026.l		; 22 26 90 32
	dey		; 88
	tya		; 98
	mvp $40,$9C		; 44 9C 40
	iny		; C8
	jsr $24C0.w		; 20 C0 24
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	bne  28.b		; D0 1C
	ldy #$413D.w		; A0 3D 41
	tda		; 7B
	and $87.b,S		; 23 87
	and [$07.b]		; 27 07
	and $0E2507.l,X		; 3F 07 25 0E
	ora $CB.b,X		; 15 CB
	inx		; E8
	phd		; 0B
	cld		; D8
	tas		; 1B
	ldy #$0127.w		; A0 27 01
	adc $047F03.l,X		; 7F 03 7F 04
	adc [$00.b]		; 67 00
	eor $083F00.l,X		; 5F 00 3F 08
	pla		; 68
	cpy #$D0EC.w		; C0 EC D0
	nop		; EA
	cmp $EB.b,X		; D5 EB
	cmp ($EB.b,X)		; C1 EB
	sta ($D7.b,X)		; 81 D7
	sta ($5B.b,X)		; 81 5B
	cpy #$10FF.w		; C0 FF 10
	bne  16.b		; D0 10
	bne  20.b		; D0 14
	pei ($94.b)		; D4 94
	cmp $D4.b,X		; D5 D4
	cmp $28.b,X		; D5 28
	lda #$24.b		; A9 24
	lda $00.b		; A5 00
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora ($FF.b,X)		; 01 FF
	sbc $FF00FF.l,X		; FF FF 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	and $00FF30.l,X		; 3F 30 FF 00
	sbc $0F0001.l,X		; FF 01 00 0F
	cop $1F.b		; 02 1F
	ora $1D.b		; 05 1D
	asl A		; 0A
	ply		; 7A
	asl A		; 0A
	sed		; F8
	cpx #$80FD.w		; E0 FD 80
	sbc $00FE01.l,X		; FF 01 FE 00
	brk $0E.b		; 00 0E
	php		; 08
	ora $071F12.l,X		; 1F 12 1F 07
	sbc $02EE87.l,X		; FF 87 EE 02
	sbc $868F28.l		; EF 28 8F 86
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	ora $3F.b,S		; 03 3F
	ora $FF3CFF.l		; 0F FF 3C FF
	beq  -1.b		; F0 FF
	cpy #$00F8.w		; C0 F8 00
	cpx #$0000.w		; E0 00 00
	ora $02.b,S		; 03 02
	ora $203F08.l		; 0F 08 3F 20
	sbc $04FC81.l,X		; FF 81 FC 04
	beq  16.b		; F0 10
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$1C.b]		; 07 1C
	ora #$24.b		; 09 24
	brk $7A.b		; 00 7A
	bpl  69.b		; 10 45
	php		; 08
	and ($30.b)		; 32 30
	ror $78.b,X		; 76 78
	sed		; F8
	bvs  -8.b		; 70 F8
	ora $00.b,S		; 03 00
	tas		; 1B
	clc		; 18
	ora $04.b		; 05 04
	dec A		; 3A
	dec A		; 3A
	tsb $004C.w		; 0C 4C 00
	sei		; 78
	bmi  -4.b		; 30 FC
	bvs  -4.b		; 70 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	pla		; 68
	sbc $6DFF7E.l,X		; FF 7E FF 6D
	sbc $D8FF65.l,X		; FF 65 FF D8
	sbc $12.b		; E5 12
	sbc ($00.b,X)		; E1 00
	brk $F8.b		; 00 F8
	dey		; 88
	ror $7F02.w,X		; 7E 02 7F
	eor $4AFF.w		; 4D FF 4A
	sbc [$02.b],Y		; F7 02
	sbc [$24.b]		; E7 24
	cpy $68.b		; C4 68
	sec		; 38
	lda $AC.b,S		; A3 AC
	sta ($BC.b),Y		; 91 BC
	sta ($98.b,X)		; 81 98
	sta ($28.b,X)		; 81 28
	sep #$00		; E2 00
	jsr ($0000.w,X)		; FC 00 00
	rts		; 60

	rts		; 60

	cpx $28.b		; E4 28
	ror $10.b		; 66 10
	ror $7E00.w,X		; 7E 00 7E
	asl $5C.b		; 06 5C
	mvp $00,$00		; 44 00 00
	rts		; 60

	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora $1F.b,S		; 03 1F
	asl $3F.b		; 06 3F
	tsb $183F.w		; 0C 3F 18
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora $101F08.l		; 0F 08 1F 10
	rol $3C20.w,X		; 3E 20 3C
	brk $FC.b		; 00 FC
	asl $F0.b		; 06 F0
	tsb $E8.b		; 04 E8
	ora $19D0.w		; 0D D0 19
	ldy #$4039.w		; A0 39 40
	bvs -128.b		; 70 80
	cpx #$C000.w		; E0 00 C0
	sed		; F8
	ora ($FC.b,X)		; 01 FC
	ora [$F0.b]		; 07 F0
	ora $E8.b,S		; 03 E8
	phd		; 0B
	bne  19.b		; D0 13
	ldy #$4020.w		; A0 20 40
	rti		; 40

	bra -128.b		; 80 80
	cpy #$60C0.w		; C0 C0 60
	rts		; 60

	jsr $20A0.w		; 20 A0 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpx #$F060.w		; E0 60 F0
	jsr $00F0.w		; 20 F0 00
	beq   0.b		; F0 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $82, $F3, $05		; 82 F3 05
	sbc $00.b		; E5 00
	cpy $00.b		; C4 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E2.b		; 00 E2
	and $804FC1.l		; 2F C1 4F 80
	sta $000400.l		; 8F 00 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0100.w		; 20 00 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$24.b		; 09 24
	ora #$04.b		; 09 04
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $06.b		; 00 06
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cpx #$C00C.w		; E0 0C C0
	trb $3C18.w		; 1C 18 3C
	jsr $44E4.w		; 20 E4 44
	cpy $BC.b		; C4 BC
	stx $B8.b		; 86 B8
	.db $82, $BC, $82		; 82 BC 82
	brk $F0.b		; 00 F0
	php		; 08
	inx		; E8
	brk $C0.b		; 00 C0
	jmp.w [$B8C4]		; DC C4 B8
	bra 120.b		; 80 78
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $1F.b		; 00 1F
	cmp [$17.b]		; C7 17
	sbc $0FCF07.l		; EF 07 CF 0F
	stx $0B.b		; 86 0B
	ora $06.b		; 05 06
	sbc $04.b,S		; E3 04
	asl $70.b,X		; 16 70
	tsb $C1.b		; 04 C1
	and $835FC3.l,X		; 3F C3 5F 83
	sta $010F00.l,X		; 9F 00 0F 01
	ora $E00F02.l		; 0F 02 0F E0
	sbc $E6FFF0.l		; EF F0 FF E6
	sbc ($E4.b),Y		; F1 E4
	cpx #$E0E8.w		; E0 E8 E0
	cpx $00.b		; E4 00
	cpx $1CE0.w		; EC E0 1C
	bpl   1.b		; 10 01
	ldy #$9E20.w		; A0 20 9E
	cmp ($F9.b,X)		; C1 F9
	sbc ($F2.b,X)		; E1 F2
	sbc ($F6.b,X)		; E1 F6
	ora ($FE.b,X)		; 01 FE
	sbc ($FE.b,X)		; E1 FE
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $1C.b		; 05 1C
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tas		; 1B
	clc		; 18
	ora ($1E.b,X)		; 01 1E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	php		; 08
	ora $3634.w		; 0D 34 36
	bit #$AA.b		; 89 AA
	cmp ($14.b,X)		; C1 14
	ora $0500.w		; 0D 00 05
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	ora $3E00.w		; 0D 00 3E
	bpl 127.b		; 10 7F
	rti		; 40

	ora $100FE0.l,X		; 1F E0 0F 10
	jmp ($7830.w,X)		; 7C 30 78
	jsr $20F8.w		; 20 F8 20
	beq  32.b		; F0 20
	beq  32.b		; F0 20
	bvs  32.b		; 70 20
	bvs   0.b		; 70 00
	sec		; 38
	sei		; 78
	rti		; 40

	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
	bvs  16.b		; 70 10
	bmi  16.b		; 30 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cpy #$80FF.w		; C0 FF 80
	sbc $00E000.l,X		; FF 00 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	jsr $12F3.w		; 20 F3 12
	sbc $18F801.l,X		; FF 01 F8 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $2E12.w		; 0C 12 2E
	brk $28.b		; 00 28
	brk $08.b		; 00 08
	jsr $2440.w		; 20 40 24
	pha		; 48
	tsb $9C.b		; 04 9C
	rti		; 40

	stz $0C00.w		; 9C 00 0C
	tsb $1C1C.w		; 0C 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $1818.w		; 1C 18 18
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	tya		; 98
	brk $5E.b		; 00 5E
	brk $2C.b		; 00 2C
	brk $17.b		; 00 17
	brk $0B.b		; 00 0B
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $7C.b		; 00 7C
	jmp ($3C3C.w,X)		; 7C 3C 3C
	asl $0E1E.w,X		; 1E 1E 0E
	asl $0707.w		; 0E 07 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($08.b),Y		; 31 08
	jsl $112610.l		; 22 10 26 11
	eor $20.b		; 45 20
	jmp $4A22.w		; 4C 22 4A
	brk $58.b		; 00 58
	tsb $14.b		; 04 14
	rti		; 40

	ora [$07.b]		; 07 07
	ora $0E0E0F.l		; 0F 0F 0E 0E
	asl $1C1E.w,X		; 1E 1E 1C
	trb $3C3C.w		; 1C 3C 3C
	sec		; 38
	sec		; 38
	sec		; 38
	sec		; 38
	cop $0F.b		; 02 0F
	tsb $1F.b		; 04 1F
	php		; 08
	ora $003E00.l,X		; 1F 00 3E 00
	bit $3800.w,X		; 3C 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	ora [$00.b]		; 07 00
	ora $121E01.l		; 0F 01 1E 12
	trb $1804.w		; 1C 04 18
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	brk $3C.b		; 00 3C
	tsb $1E.b		; 04 1E
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	tsb $0200.w		; 0C 00 02
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	php		; 08
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	trb $00.b		; 14 00
	bpl   4.b		; 10 04
	inc A		; 1A
	brk $1A.b		; 00 1A
	brk $38.b		; 00 38
	cop $38.b		; 02 38
	brk $11.b		; 00 11
	rti		; 40

	ora ($86.b,X)		; 01 86
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	trb $1C1C.w		; 1C 1C 1C
	trb $3C3C.w		; 1C 3C 3C
	rol $3E3E.w,X		; 3E 3E 3E
	rol $7878.w,X		; 3E 78 78
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	ora $08.b,S		; 03 08
	asl $10.b		; 06 10
	asl $1C20.w		; 0E 20 1C
	ora ($79.b,X)		; 01 79
	.db $62, $00, $00		; 62 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $1F1F0F.l		; 0F 0F 1F 1F
	rol $7C7E.w,X		; 3E 7E 7C
	jsr ($2846.w,X)		; FC 46 28
	dey		; 88
	bmi -112.b		; 30 90
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $D0.b		; 00 D0
	bne -64.b		; D0 C0
	cpy #$C0C0.w		; C0 C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3EC1.w,X		; 1E C1 3E
	adc ($1F.b,X)		; 61 1F
	adc ($0F.b,X)		; 61 0F
	adc ($0E.b,X)		; 61 0E
	and ($16.b,X)		; 21 16
	and ($06.b),Y		; 31 06
	and ($0E.b),Y		; 31 0E
	and $417F.w,Y		; 39 7F 41
	eor $203E41.l,X		; 5F 41 3E 20
	rol $3F20.w,X		; 3E 20 3F
	and ($2F.b,X)		; 21 2F
	and ($1F.b,X)		; 21 1F
	ora ($16.b),Y		; 11 16
	bpl   4.b		; 10 04
	and $1F26.w,X		; 3D 26 1F
	ror $BE1E.w,X		; 7E 1E BE
	ror $6082.w,X		; 7E 82 60
	dey		; 88
	mvp $80,$14		; 44 14 80
	bmi -120.b		; 30 88
	asl A		; 0A
	php		; 08
	php		; 08
	php		; 08
	tsb $0C3E.w		; 0C 3E 0C
	ror $1C1C.w,X		; 7E 1C 1C
	sec		; 38
	sec		; 38
	sei		; 78
	sei		; 78
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $3F.b,S		; 03 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $030010.l,X		; 1F 10 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	tsb $003F.w		; 0C 3F 00
	sbc $FFFF0F.l,X		; FF 0F FF FF
	sbc $030001.l,X		; FF 01 00 03
	brk $0F.b		; 00 0F
	php		; 08
	ora $223E11.l,X		; 1F 11 3E 22
	ora $80FF0F.l		; 0F 0F FF 80
	sbc $C25800.l,X		; FF 00 58 C2
	rol $16E3.w		; 2E E3 16
	adc ($08.b,S),Y		; 73 08
	tsa		; 3B
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	tsb $02.b		; 04 02
	cop $81.b		; 02 81
	ldx $5C82.w,Y		; BE 82 5C
	rti		; 40

	bit $1620.w		; 2C 20 16
	ora ($0D.b)		; 12 0D
	ora $0101.w		; 0D 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B4.b		; 00 B4
	sta [$B8.b]		; 87 B8
	.db $82, $B8, $82		; 82 B8 82
	rol $7C83.w,X		; 3E 83 7C
	cmp ($1E.b,X)		; C1 1E
	eor ($3F.b,X)		; 41 3F
	adc ($0F.b,X)		; 61 0F
	and ($78.b,X)		; 21 78
	brk $7E.b		; 00 7E
	cop $7E.b		; 02 7E
	cop $FC.b		; 02 FC
	bra  62.b		; 80 3E
	brk $7F.b		; 00 7F
	eor ($1E.b,X)		; 41 1E
	brk $3E.b		; 00 3E
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $3F.b,S		; 03 3F
	ora $0000FF.l,X		; 1F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $407F10.l,X		; 1F 10 7F 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F800.w		; C0 00 F8
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$FCE0.w		; E0 E0 FC
	jsr ($50DF.w,X)		; FC DF 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $60.b		; 00 60
	rts		; 60

	beq -128.b		; F0 80
	sed		; F8
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	cpx #$9001.w		; E0 01 90
	brk $49.b		; 00 49
	beq  27.b		; F0 1B
	stz $0F.b,X		; 74 0F
	bmi  14.b		; 30 0E
	ora $0D06.w,Y		; 19 06 0D
	ora ($07.b,X)		; 01 07
	trb OAMADDH.w		; 1C 03 21
	asl $1443.w,X		; 1E 43 14
	ora ($14.b,S),Y		; 13 14
	tas		; 1B
	bpl   6.b		; 10 06
	brk $02.b		; 00 02
	bpl   2.b		; 10 02
	dec A		; 3A
	brk $3C.b		; 00 3C
	brk $7F.b		; 00 7F
	adc [$32.b]		; 67 32
	lda $75.b		; A5 75
	dex		; CA
	jsl $00B149.l		; 22 49 B1 00
	bit $05.b,X		; 34 05
	ror A		; 6A
	plp		; 28
	sta ($E0.b),Y		; 91 E0
	adc ($82.b),Y		; 71 82
	ora [$85.b]		; 07 85
	ora $403FE2.l		; 0F E2 3F 40
	ora $A49BC0.l,X		; 1F C0 9B A4
	bit $4E.b,X		; 34 4E
	asl $0E0E.w		; 0E 0E 0E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	asl $1F07.w		; 0E 07 1F
	ora $001E3F.l		; 0F 3F 1E 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $00.b		; 05 00
	asl $1F06.w		; 0E 06 1F
	tsb $38BF.w		; 0C BF 38
	sty $0CA0.w		; 8C A0 0C
	bcc  28.b		; 90 1C
	ldy #$607C.w		; A0 7C 60
	asl $00.b,X		; 16 00
	bit $00.b		; 24 00
	cmp #$01.b		; C9 01
	asl A		; 0A
	adc ($03.b)		; 72 03
	xce		; FB
	phb		; 8B
	sbc $83.b,S		; E3 83
	sta ($93.b)		; 92 93
	cpx #$C2E1.w		; E0 E1 C2
	cmp $04.b,S		; C3 04
	ora [$00.b]		; 07 00
	sta [$BF.b]		; 87 BF
	adc $7D1F7E.l,X		; 7F 7E 1F 7D
	ror $F57B.w		; 6E 7B F5
	asl $451A.w		; 0E 1A 45
	sty $2091.w		; 8C 91 20
	and ($4A.b,X)		; 21 4A
	asl $1EFF.w,X		; 1E FF 1E
	sbc $31FF0C.l,X		; FF 0C FF 31
	sbc $04FF0A.l,X		; FF 0A FF 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $800000.l,X		; FF 00 00 80
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	rti		; 40

	plp		; 28
	rti		; 40

	rol A		; 2A
	rti		; 40

	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	ora $FF7FFF.l,X		; 1F FF 7F FF
	cpy #$00FF.w		; C0 FF 00
	sbc $000300.l,X		; FF 00 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $407F.w		; 0E 7F 40
	sbc $10F000.l,X		; FF 00 F0 10
	cpy #$0340.w		; C0 40 03
	cop $06.b		; 02 06
	asl $06.b		; 06 06
	tsb $0C.b		; 04 0C
	tsb $FFFF.w		; 0C FF FF
	bra  -1.b		; 80 FF
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $03FF00.l,X		; FF 00 FF 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0630.w,X		; 1E 30 06
	bpl  15.b		; 10 0F
	ora $073A.w,Y		; 19 3A 07
	jmp $5F9C3B.l		; 5C 3B 9C 5F
	tsb $388E.w		; 0C 8E 38
	tsb $000F.w		; 0C 0F 00
	ora $000610.l,X		; 1F 10 06 00
	ora $05.b		; 05 05
	tas		; 1B
	tda		; 7B
	rol $783E.w,X		; 3E 3E 78
	jmp ($FCF0.w,X)		; 7C F0 FC
	jsr ($E0FF.w,X)		; FC FF E0
	jsr ($E080.w,X)		; FC 80 E0
	brk $80.b		; 00 80
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	sbc $FFF0FF.l,X		; FF FF F0 FF
	sbc $10F003.l,X		; FF 03 F0 10
	cpy #$0040.w		; C0 40 00
	brk $03.b		; 00 03
	ora $FF.b,S		; 03 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	ora ($00.b,X)		; 01 00
	sbc $030601.l,X		; FF 01 06 03
	ora $06.b,S		; 03 06
	and $00FE05.l,X		; 3F 05 FE 00
	inc $F300.w,X		; FE 00 F3
	brk $C1.b		; 00 C1
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $04.b		; 06 04
	sbc $F1.b,X		; F5 F1
	sbc $31.b,X		; F5 31
.ACCU 8
	sep #$60		; E2 60
	sta ($80.b,X)		; 81 80
	cmp $7F9F3F.l		; CF 3F 9F 7F
	rol $FF.b,X		; 36 FF
	and ($7F.b)		; 32 7F
	bcc -65.b		; 90 BF
	bra  63.b		; 80 3F
	brk $7F.b		; 00 7F
	bit $3FE0.w,X		; 3C E0 3F
	and $3F.b,S		; 23 3F
	ora [$BE.b]		; 07 BE
	ora ($FE.b)		; 12 FE
	tya		; 98
	inc $C4.b,X		; F6 C4
	sbc $99E1.w,X		; FD E1 99
	sta $00E3.w,Y		; 99 E3 00
	cpy #$E0F8.w		; C0 F8 E0
	sed		; F8
	beq  -4.b		; F0 FC
	bpl  -4.b		; 10 FC
	bpl  -4.b		; 10 FC
	rti		; 40

	clv		; B8
	bcc  96.b		; 90 60
	cop $90.b		; 02 90
	cpx #$F080.w		; E0 80 F0
	rti		; 40

	sed		; F8
	bvc  56.b		; 50 38
	brk $98.b		; 00 98
	bra -112.b		; 80 90
	bra   0.b		; 80 00
	rti		; 40

	jsr $40C3.w		; 20 C3 40
	ora ($E1.b,X)		; 01 E1
	ror $18B6.w,X		; 7E B6 18
	bvs  96.b		; 70 60
	rts		; 60

	inc $22.b		; E6 22
	sta $F68BE5.l		; 8F E5 8B F6
	sta $FE00.w,Y		; 99 00 FE
	and ($F1.b,X)		; 21 F1
	ora [$F7.b]		; 07 F7
	and [$FF.b]		; 27 FF
	ora ($19.b,X)		; 01 19
	beq -122.b		; F0 86
	sei		; 78
	ora $080B68.l		; 0F 68 0B 08
	sbc $38EF.w,Y		; F9 EF 38
	sec		; 38
	sec		; 38
	sec		; 38
	clc		; 18
	rti		; 40

	ora $0E1E88.l,X		; 1F 88 1E 0E
	stz $FE0E.w,X		; 9E 0E FE
	asl $EF06.w		; 0E 06 EF
	cmp [$FF.b]		; C7 FF
	cmp [$FF.b]		; C7 FF
	sbc [$E0.b]		; E7 E0
	cpx #$EFE8.w		; E0 E8 EF
	jmp ($0C6F.w)		; 6C 6F 0C
	ora $FCBCBE.l		; 0F BE BC FC
	sed		; F8
	bvs -32.b		; 70 E0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	sbc $00FE70.l,X		; FF 70 FE 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	tsb $09.b		; 04 09
	ora #$02.b		; 09 02
	ora $04.b,S		; 03 04
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	lsr A		; 4A
	bcc -110.b		; 90 92
	bit $A6.b		; 24 A6
	php		; 08
	rol $48.b		; 26 48
	rts		; 60

	sta ($E0.b,X)		; 81 E0
	ora $241FCC.l		; 0F CC 1F 24
	and [$00.b]		; 27 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $10FD0D.l,X		; FF 0D FD 10
	beq  26.b		; F0 1A
.ACCU 16
	rep #$6A		; C2 6A
	bra  66.b		; 80 42
	bra   2.b		; 80 02
	clc		; 18
	sec		; 38
	jsr ($CE4C.w,X)		; FC 4C CE
	mvn $5A,$C6		; 54 C6 5A
	cmp $1E.b,S		; C3 1E
	cmp $00.b,S		; C3 00
	jsr ($FC00.w,X)		; FC 00 FC
	clc		; 18
	jsr ($4444.w,X)		; FC 44 44
	bcs -128.b		; B0 80
	tsx		; BA
	.db $82, $BC, $80		; 82 BC 80
	sbc $00C1.w,X		; FD C1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	ora $1F.b,S		; 03 1F
	brk $3F.b		; 00 3F
	brk $78.b		; 00 78
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $161E08.l		; 0F 08 1E 16
	bmi  16.b		; 30 10
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$60C0.w		; C0 C0 60
	cpx #$7070.w		; E0 70 70
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E080.w		; E0 80 E0
	brk $E0.b		; 00 E0
	jsr $30F0.w		; 20 F0 30
	sed		; F8
	bit $3E78.w,X		; 3C 78 3E
	jmp ($3E1F.w,X)		; 7C 1F 3E
	trb $021B.w		; 1C 1B 02
	php		; 08
	brk $1F.b		; 00 1F
	asl $3C33.w,X		; 1E 33 3C
	sbc [$18.b]		; E7 18
	jsr ($7E1C.w,X)		; FC 1C 7E
	php		; 08
	adc $073C00.l,X		; 7F 00 3C 07
	ora [$00.b],Y		; 17 00
	brk $2C.b		; 00 2C
	jsr $021A.w		; 20 1A 02
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($801C.w,X)		; FC 1C 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	lsr $1C70.w		; 4E 70 1C
	ldy #$80B8.w		; A0 B8 80
	bcs   0.b		; B0 00
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $84.b,X		; 34 84
	pla		; 68
	dey		; 88
	bpl -48.b		; 10 D0
	jsr $00E0.w		; 20 E0 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	ora ($04.b,X)		; 01 04
	ora #$0300.w		; 09 00 03
	php		; 08
	asl $00.b,X		; 16 00
	bit $11.b		; 24 11
	rti		; 40

	jsl $030101.l		; 22 01 01 03
	ora $03.b,S		; 03 03
	ora $07.b,S		; 03 07
	ora [$07.b]		; 07 07
	ora [$0F.b]		; 07 0F
	ora $1C0E0E.l		; 0F 0E 0E 1C
	trb $0874.w		; 1C 74 08
	inx		; E8
	brk $C0.b		; 00 C0
	bpl -128.b		; 10 80
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  -4.b		; F0 FC
	beq  -8.b		; F0 F8
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $01.b		; 04 01
	php		; 08
	ora [$00.b],Y		; 17 00
	ora $1C0200.l,X		; 1F 00 02 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	ora $000E0E.l		; 0F 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	tsb $0800.w		; 0C 00 08
	brk $18.b		; 00 18
	bpl  24.b		; 10 18
	bpl  56.b		; 10 38
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	php		; 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	bit $3C08.w,X		; 3C 08 3C
	tsb $041C.w		; 0C 1C 04
	tsb $0400.w		; 0C 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $1C00.w		; 1C 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	tsb $10.b		; 04 10
	php		; 08
	jsr $401D.w		; 20 1D 40
	rol $80.b		; 26 80
	mvp $88,$14		; 44 14 88
	plp		; 28
	bpl -16.b		; 10 F0
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora [$02.b]		; 07 02
	cop $18.b		; 02 18
	clc		; 18
	sec		; 38
	sec		; 38
	bvs 112.b		; 70 70
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$0C00.w		; E0 00 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	php		; 08
	clc		; 18
	php		; 08
	trb $080C.w		; 1C 0C 08
	tsb $1808.w		; 0C 08 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	bpl  28.b		; 10 1C
	bpl  12.b		; 10 0C
	tsb $0E04.w		; 0C 04 0E
	tsb $06.b		; 04 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	tsb $0E00.w		; 0C 00 0E
	php		; 08
	asl $00.b		; 06 00
	asl $04.b		; 06 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora [$05.b]		; 07 05
	asl $06.b		; 06 06
	asl A		; 0A
	ora #$0505.w		; 09 05 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $0F.b		; 05 0F
	tsb $1F.b		; 04 1F
	php		; 08
	ora $000F00.l,X		; 1F 00 0F 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $06.b		; 00 06
	brk $80.b		; 00 80
	rti		; 40

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	beq   0.b		; F0 00
	sed		; F8
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$1000.w		; E0 00 10
	brk $0C.b		; 00 0C
	tsb $0303.w		; 0C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($3F.b,X)		; 01 3F
	ora $FF3EFF.l		; 0F FF 3E FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $607F0C.l		; 0F 0C 7F 60
	sbc $707000.l,X		; FF 00 70 70
	brk $1F.b		; 00 1F
	asl $7F.b		; 06 7F
	ora $FF00FF.l		; 0F FF 00 FF
	cpy #$01FF.w		; C0 FF 01
	beq   3.b		; F0 03
	cpy $06.b		; C4 06
	ora $3F0000.l		; 0F 00 00 3F
	bmi 127.b		; 30 7F
	rti		; 40

	cmp [$C6.b]		; C7 C6
	beq  16.b		; F0 10
	cpy #$8040.w		; C0 40 80
	bra   7.b		; 80 07
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cpy #$F180.w		; C0 80 F1
	brk $FF.b		; 00 FF
	sta [$7F.b]		; 87 7F
	sta $FF3F7F.l,X		; 9F 7F 3F FF
	adc $00FF.w		; 6D FF 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $18F9.w		; 20 F9 18
	and $477F20.l,X		; 3F 20 7F 47
	adc $247D0E.l,X		; 7F 0E 7D 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	cpy #$00F8.w		; C0 F8 00
	sed		; F8
	bra -12.b		; 80 F4
	cpy #$E0FC.w		; C0 FC E0
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	jsr $C000.w		; 20 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	ldy #$2094.w		; A0 94 20
	tax		; AA
	bmi -55.b		; 30 C9
	ora ($54.b)		; 12 54
	sta $C924.w,Y		; 99 24 C9
	lda #$36CC.w		; A9 CC 36
	eor ($15.b,X)		; 41 15
	adc $00.b,S		; 63 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	sbc $FA02.w,Y		; F9 02 FA
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	bvs  96.b		; 70 60
	jsr ($1F18.w,X)		; FC 18 1F
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	tya		; 98
	inc $06.b		; E6 06
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	phd		; 0B
	ora [$17.b]		; 07 17
	ora $F43F46.l		; 0F 46 3F F4
	ror $0000.w,X		; 7E 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	asl $1F.b		; 06 1F
	tsb $7F.b		; 04 7F
	bvs  -1.b		; 70 FF
	trb $813D.w		; 1C 3D 81
	ora ($96.b,X)		; 01 96
	sty $B4.b		; 84 B4
	stx $95.b		; 86 95
	ldx $1D.b		; A6 1D
	ldx $29.b		; A6 29
	lsr $60.b		; 46 60
	dey		; 88
	dey		; 88
	sbc $007F00.l,X		; FF 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $72FF00.l,X		; FF 00 FF 72
	cmp ($1C.b,X)		; C1 1C
	eor ($10.b,X)		; 41 10
	and ($11.b,S),Y		; 33 11
	tsb $0017.w		; 0C 17 00
	ora $28.b,S		; 03 28
	php		; 08
	jmp $3F4E2C.l		; 5C 2C 4E 3F
	ora $407E.w		; 0D 7E 40
	and $0321.w		; 2D 21 03
	ora ($03.b,S),Y		; 13 03
	tas		; 1B
	ora [$17.b]		; 07 17
	pld		; 2B
	and $3D.b,S		; 23 3D
	and ($36.b),Y		; 31 36
	lsr $35.b,X		; 56 35
	eor $90.b,X		; 55 90
	rtl		; 6B

	txa		; 8A
	bmi -98.b		; 30 9E
	bit $1C2E.w		; 2C 2E 1C
	lsr $241C.w		; 4E 1C 24
	ora $BC15.w,Y		; 19 15 BC
	bra -66.b		; 80 BE
	bra -66.b		; 80 BE
	cpy #$C8DF.w		; C0 DF C8
	cmp $A8CFC8.l,X		; DF C8 CF A8
	lda $0DEEE0.l		; AF E0 EE 0D
	ora $3E1E3D.l		; 0F 3D 1E 3E
	jmp ($F8FC.w,X)		; 7C FC F8
	sed		; F8
	beq -24.b		; F0 E8
	beq -48.b		; F0 D0
	cpx #$C080.w		; E0 80 C0
	tsb $1F.b		; 04 1F
	tsb $183F.w		; 0C 3F 18
	ror $FC70.w,X		; 7E 70 FC
	cpx #$C0F8.w		; E0 F8 C0
	sed		; F8
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $7F.b,S		; 03 7F
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $040718.l,X		; 1F 18 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E040.w		; C0 40 E0
	jsr $0000.w		; 20 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1C20.w,X		; 1E 20 1C
	eor ($3A.b,X)		; 41 3A
	eor $34.b,S		; 43 34
	eor [$48.b]		; 47 48
	eor $067F31.l		; 4F 31 7F 06
	tda		; 7B
	trb $3F22.w		; 1C 22 3F
	jsr $013F.w		; 20 3F 01
	jmp ($7A40.w,X)		; 7C 40 7A
	eor $36.b,S		; 43 36
	ora [$4C.b]		; 07 4C
	eor $003B38.l		; 4F 38 3B 00
	cop $30.b		; 02 30
	sbc $077F0F.l,X		; FF 0F 7F 07
	and $000F01.l,X		; 3F 01 0F 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	.db $82, $3F, $20		; 82 3F 20
	ora $040710.l,X		; 1F 10 07 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	beq  -1.b		; F0 FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	ora [$3F.b]		; 07 3F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $101F00.l,X		; FF 00 1F 10
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $FF.b,S		; 03 FF
	ora $FFFFFF.l,X		; 1F FF FF FF
	inc $00FF.w,X		; FE FF 00
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $00FF10.l,X		; 1F 10 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	php		; 08
	brk $00.b		; 00 00
	tsb $0B7E.w		; 0C 7E 0B
	sbc $FCC1.w,X		; FD C1 FC
	cpy #$80FE.w		; C0 FE 80
	sbc $00C100.l,X		; FF 00 C1 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	ora #$23EB.w		; 09 EB 23
	xba		; EB
	ora $F5.b,S		; 03 F5
	ora ($E1.b),Y		; 11 E1
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $FF.b		; 64 FF
	jsr $007F.w		; 20 7F 00
	adc $78FE01.l,X		; 7F 01 FE 78
	cmp ($92.b,X)		; C1 92
	cpx #$E837.w		; E0 37 E8
	and $30FC60.l,X		; 3F 60 FC 30
	sbc $FB89.w		; ED 89 FB
	cmp $32.b,S		; C3 32
	and ($C6.b)		; 32 C6
	ora ($87.b,X)		; 01 87
	plp		; 28
	and [$28.b]		; 27 28
	ora [$00.b],Y		; 17 00
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	bra 112.b		; 80 70
	jsr $03C0.w		; 20 C0 03
	plp		; 28
	bra  48.b		; 80 30
	cop $B6.b		; 02 B6
	sta $007005.l		; 8F 05 70 00
	bmi   0.b		; 30 00
	jsr $0000.w		; 20 00 00
	sta $40.b,S		; 83 40
	sty $1F40.w		; 8C 40 1F
	rti		; 40

	ora $523FC5.l,X		; 1F C5 3F 52
	ror $45.b		; 66 45
	jmp ($0C15.w)		; 6C 15 0C
	sec		; 38
	cmp [$1F.b]		; C7 1F
	cpx #$E910.w		; E0 10 E9
	jsr $48D0.w		; 20 D0 48
	ldy #$FC05.w		; A0 05 FC
	phd		; 0B
	sed		; F8
	phd		; 0B
	inx		; E8
	ora [$07.b]		; 07 07
	bra -128.b		; 80 80
	stx $86.b		; 86 86
	sta $1F1F8F.l		; 8F 8F 1F 1F
	sep #$03		; E2 03
	jsr ($FF00.w,X)		; FC 00 FF
	brk $8F.b		; 00 8F
	bra  33.b		; 80 21
	cpx #$8F71.w		; E0 71 8F
	eor ($80.b,X)		; 41 80
	rti		; 40

	bra  -3.b		; 80 FD
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $DF.b		; 00 DF
	cpy #$0E0E.w		; C0 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	bne -48.b		; D0 D0
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($F0.b,X)		; 01 F0
	jsr ($F880.w,X)		; FC 80 F8
	bra  -8.b		; 80 F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	ora [$0E.b]		; 07 0E
	ora $1D3111.l,X		; 1F 11 31 1D
	eor ($3D.b,X)		; 41 3D
	eor ($3C.b,X)		; 41 3C
	sta ($78.b,X)		; 81 78
	sta $70.b,S		; 83 70
	asl $00.b		; 06 00
	beq   1.b		; F0 01
	and ($0E.b,X)		; 21 0E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	rti		; 40

	adc $82FE01.l,X		; 7F 01 FE 82
	sbc $0605.w,X		; FD 05 06
	eor $3F00.w		; 4D 00 3F
	ora ($37.b,X)		; 01 37
	phd		; 0B
	ora [$0B.b],Y		; 17 0B
	ora [$02.b],Y		; 17 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($34.b,X)		; 01 34
	and ($00.b)		; 32 00
	ora $08.b,S		; 03 08
	phd		; 0B
	ora #$090B.w		; 09 0B 09
	phd		; 0B
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phx		; DA
	and $FD3A.w,X		; 3D 3A FD
	plx		; FA
	jsr ($FCFA.w,X)		; FC FA FC
	xce		; FB
	sbc $F67E.w,X		; FD 7E F6
	bit $5C74.w,X		; 3C 74 5C
	sta $C0.b		; 85 C0
	dec $3E10.w,X		; DE 10 3E
	bmi  -1.b		; 30 FF
	beq  -1.b		; F0 FF
	sbc ($FF.b),Y		; F1 FF
	bit $FF.b,X		; 34 FF
	tsb $FF.b		; 04 FF
	tsb $3F.b		; 04 3F
	brk $00.b		; 00 00
	bmi -64.b		; 30 C0
	sec		; 38
	bra  56.b		; 80 38
	bra  24.b		; 80 18
	bra   0.b		; 80 00
	cpy #$6090.w		; C0 90 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	jsr $C33F.w		; 20 3F C3
	ora $FD.b,S		; 03 FD
	brk $BF.b		; 00 BF
	sta $83.b		; 85 83
	adc $000F.w,X		; 7D 0F 00
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	cld		; D8
	clc		; 18
	jsr ($FE00.w,X)		; FC 00 FE
	brk $79.b		; 00 79
	ora ($7D.b,X)		; 01 7D
	adc $0000.w,X		; 7D 00 00
	tsb $18E0.w		; 0C E0 18
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	tya		; 98
	bvs 112.b		; 70 70
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $88.b,X		; 74 88
	bra 119.b		; 80 77
	inc $FFE0.w,X		; FE E0 FF
	cpy #$C0FF.w		; C0 FF C0
	cpy #$03F8.w		; C0 F8 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   8.b		; 30 08
	sei		; 78
	ora $FFFFFF.l,X		; 1F FF FF FF
	sbc $C707FF.l,X		; FF FF 07 C7
	brk $00.b		; 00 00
	pla		; 68
	brk $70.b		; 00 70
	php		; 08
	bmi   0.b		; 30 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs  48.b		; 70 30
	bmi  24.b		; 30 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$C000.w		; A0 00 C0
	ora ($41.b,X)		; 01 41
	and ($F1.b,X)		; 21 F1
	ora $70.b		; 05 70
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $01.b		; 00 01
	ora ($83.b,X)		; 01 83
	xce		; FB
	ora $FA.b,S		; 03 FA
	ora $20.b,S		; 03 20
	bmi -64.b		; 30 C0
	sbc $FE00.w,Y		; F9 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	jsr $0FCC.w		; 20 CC 0F
	rol $36.b,X		; 36 36
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40C0.w		; C0 C0 40
	jsr $1020.w		; 20 20 10
	bmi   0.b		; 30 00
	bne -52.b		; D0 CC
	bra -126.b		; 80 82
	pla		; 68
	rti		; 40

	sty $20.b,X		; 94 20
	tax		; AA
	bmi -64.b		; 30 C0
	cpy #$E0E0.w		; C0 E0 E0
	jsr $40E0.w		; 20 E0 40
	cpx #$FC8C.w		; E0 8C FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra   0.b		; 80 00
	jsr $8C40.w		; 20 40 8C
	bpl -16.b		; 10 F0
	ora $7E.b,S		; 03 7E
	brk $80.b		; 00 80
	adc $031C.w,Y		; 79 1C 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$FCE0.w		; E0 E0 FC
	jsr ($FFFF.w,X)		; FC FF FF
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $3C.b		; 00 3C
	bpl 126.b		; 10 7E
	sec		; 38
	dec A		; 3A
	bit $2026.w		; 2C 26 20
	rol A		; 2A
	plp		; 28
	jmp ($E878.w)		; 6C 78 E8
	beq   0.b		; F0 00
	clc		; 18
	bpl  60.b		; 10 3C
	sec		; 38
	ror $7E28.w,X		; 7E 28 7E
	jsr $007E.w		; 20 7E 00
	ror $FC20.w,X		; 7E 20 FC
	rts		; 60

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 0BFFFE. Skipping.
	.db $71		; Opcode 71 overrunning bank boundry at 0BFFFF. Skipping.
.ENDS
