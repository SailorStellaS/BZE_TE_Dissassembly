.BANK 34 SLOT 0
.ORG $0000

.SECTION "Bank34" FORCE

	cmp $BE.b,X		; D5 BE
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($F8FF.w,X)		; FC FF F8
	sta ($1C.b,S),Y		; 93 1C
	inc $09F8.w,X		; FE F8 09
	lda [$1D.b],Y		; B7 1D
	tya		; 98
	eor $B0D3.w,X		; 5D D3 B0
	pea $B8FE.w		; F4 FE B8
	ora $29FA.w,X		; 1D FA 29
	asl $2AEE.w,X		; 1E EE 2A
	asl $3F07.w,X		; 1E 07 3F
	dec $09F8.w,X		; DE F8 09
	pld		; 2B
	asl $F22C.w,X		; 1E 2C F2
	cpy #$16F8.w		; C0 F8 16
	lda $BA1D.w,Y		; B9 1D BA
	ora $FFBB.w,X		; 1D BB FF
	sbc ($CA.b),Y		; F1 CA
	ldy $BD1D.w,X		; BC 1D BD
	ora $1DBE.w,X		; 1D BE 1D
	lda $1E2DF4.l,X		; BF F4 2D 1E
	sbc $1E2EF8.l,X		; FF F8 2E 1E
	and $1E301E.l		; 2F 1E 30 1E
	and ($1E.b),Y		; 31 1E
	and ($BA.b)		; 32 BA
	tya		; 98
	ora $FD33.w,X		; 1D 33 FD
	sta $C0341E.l		; 8F 1E 34 C0
	sed		; F8
	asl $C0.b,X		; 16 C0
	ora $1DC1.w,X		; 1D C1 1D
.INDEX 16
	rep #$1D		; C2 1D
	cmp $1D.b,S		; C3 1D
	cpy $FF.b		; C4 FF
	sbc $1DC5CA.l,X		; FF CA C5 1D
	dec $1D.b		; C6 1D
	cmp [$1D.b]		; C7 1D
	iny		; C8
	ora $1DC9.w,X		; 1D C9 1D
	and $1E.b,X		; 35 1E
	rol $1E.b,X		; 36 1E
	and [$1F.b],Y		; 37 1F
	lda $1E381E.l,X		; BF 1E 38 1E
	and $3A1E.w,Y		; 39 1E 3A
	cpy #$1E3B.w		; C0 3B 1E
	bit $3D1E.w,X		; 3C 1E 3D
	sbc $F8C0FF.l,X		; FF FF C0 F8
	asl $CA.b,X		; 16 CA
	ora $1DCB.w,X		; 1D CB 1D
	cpy $CD1D.w		; CC 1D CD
	ora $1DCE.w,X		; 1D CE 1D
	cmp $1DD01D.l		; CF 1D D0 1D
	cmp ($FF.b),Y		; D1 FF
	sbc $1DD21D.l,X		; FF 1D D2 1D
	cmp ($1D.b,S),Y		; D3 1D
	pei ($1D.b)		; D4 1D
	and $1E401E.l,X		; 3F 1E 40 1E
	eor ($1E.b,X)		; 41 1E
	.db $42, $1E		; 42 1E
	eor $F1.b,S		; 43 F1
	xce		; FB
	asl $C044.w,X		; 1E 44 C0
	eor $1E.b		; 45 1E
	lsr $1E.b		; 46 1E
	eor [$C0.b]		; 47 C0
	sed		; F8
	ora $19D518.l		; 0F 18 D5 19
	sbc $19D6FF.l,X		; FF FF D6 19
	tya		; 98
	eor $1DD7.w,Y		; 59 D7 1D
	cld		; D8
	ora $1DD9.w,X		; 1D D9 1D
	phx		; DA
	ora $1DDB.w,X		; 1D DB 1D
	jmp.w [$8F1D]		; DC 1D 8F
	ora $DE1DDD.l,X		; 1F DD 1D DE
	ora $78DF.w,X		; 1D DF 78
	cpx #$491D.w		; E0 1D 49
	asl $3F4A.w,X		; 1E 4A 3F
	ror $4BC8.w,X		; 7E C8 4B
	asl $1E4C.w,X		; 1E 4C 1E
	eor $4EF8.w		; 4D F8 4E
	asl $1E4F.w,X		; 1E 4F 1E
	bvc  -1.b		; 50 FF
	sbc ($C0.b,X)		; E1 C0
	sed		; F8
	asl $1998.w		; 0E 98 19
	sbc ($19.b,X)		; E1 19
.INDEX 8
	sep #$19		; E2 19
	sbc $19.b,S		; E3 19
	clv		; B8
	cpx $1D.b		; E4 1D
	xce		; FB
	cmp [$E5.b]		; C7 E5
	ora $C0E4.w,X		; 1D E4 C0
	sbc ($E6.b),Y		; F1 E6
	ora $1DE7.w,X		; 1D E7 1D
	inx		; E8
	ora $C0E9.w,X		; 1D E9 C0
	sta $1DEA1F.l		; 8F 1F EA 1D
	eor ($1E.b)		; 52 1E
	eor ($C8.b,S),Y		; 53 C8
	mvn $55,$1E		; 54 1E 55
	asl $BF56.w,X		; 1E 56 BF
	adc $1E57F8.l,X		; 7F F8 57 1E
	cli		; 58
	asl $C059.w,X		; 1E 59 C0
	sed		; F8
	asl $19EB.w		; 0E EB 19
	cpx $ED19.w		; EC 19 ED
	ora $FCEE.w,Y		; 19 EE FC
	sbc $1DEFC0.l,X		; FF C0 EF 1D
	beq  29.b		; F0 1D
	sbc $1DF15D.l		; EF 5D F1 1D
	sbc ($1D.b)		; F2 1D
	sbc ($1D.b,S),Y		; F3 1D
	sbc $C7.b,S		; E3 C7
	pea $F51D.w		; F4 1D F5
	cpy #$F6.b		; C0 F6
	ora $1E5A.w,X		; 1D 5A 1E
	tad		; 5B
	iny		; C8
	sta $1E5CDF.l		; 8F DF 5C 1E
	eor $5E1E.w,X		; 5D 1E 5E
	sed		; F8
	eor $1E601E.l,X		; 5F 1E 60 1E
	adc ($C0.b,X)		; 61 C0
	sed		; F8
	asl $BFFF.w		; 0E FF BF
	sbc [$19.b],Y		; F7 19
	sed		; F8
	ora $19F9.w,Y		; 19 F9 19
	plx		; FA
	ora $19FB.w,Y		; 19 FB 19
	jsr ($FD1D.w,X)		; FC 1D FD
	ora $07FC.w,X		; 1D FC 07
	jsr ($F340.w,X)		; FC 40 F3
	inc $FF1D.w,X		; FE 1D FF
.INDEX 16
	rep #$D0		; C2 D0
	ora ($1E.b,X)		; 01 1E
	adc $1E.b		; 65 1E
	sed		; F8
	sbc ($66.b),Y		; F1 66
	sed		; F8
	adc [$1E.b]		; 67 1E
	pla		; 68
	asl $F869.w,X		; 1E 69 F8
	ror A		; 6A
	asl $FFFB.w,X		; 1E FB FF
	rtl		; 6B

	asl $C06C.w,X		; 1E 6C C0
	sed		; F8
	asl $1A02.w		; 0E 02 1A
	ora $1A.b,S		; 03 1A
	tsb $1A.b		; 04 1A
	ora $1A.b		; 05 1A
	asl $1A.b		; 06 1A
	ora [$4F.b]		; 07 4F
	ora $1E081E.l,X		; 1F 1E 08 1E
	ora [$5E.b]		; 07 5E
	cpy #$1E09.w		; C0 09 1E
	asl A		; 0A
	asl $BF0B.w,X		; 1E 0B BF
	cmp [$D0.b]		; C7 D0
	tsb $711E.w		; 0C 1E 71
	asl $0272.w,X		; 1E 72 02
	sbc ($73.b,S),Y		; F3 73
	asl $F874.w,X		; 1E 74 F8
	sbc $1E75FF.l		; EF FF 75 1E
	ror $1E.b,X		; 76 1E
	adc [$C0.b],Y		; 77 C0
	sed		; F8
	asl $1A0D.w		; 0E 0D 1A
	asl $0F1A.w		; 0E 1A 0F
	inc A		; 1A
	bpl  26.b		; 10 1A
	ora ($F1.b),Y		; 11 F1
	clc		; 18
	inc A		; 1A
	ora ($DE.b)		; 12 DE
	ora ($5E.b)		; 12 5E
	ora ($FA.b,S),Y		; 13 FA
	trb $E3.b		; 14 E3
	sbc [$FC.b]		; E7 FC
	ora $FC.b,X		; 15 FC
	asl $1E.b,X		; 16 1E
	jmp ($7D1E.w,X)		; 7C 1E 7D
	cpy #$F7E3.w		; C0 E3 F7
	ror $7F1E.w,X		; 7E 1E 7F
	sed		; F8
	bra  30.b		; 80 1E
	sta ($1E.b,X)		; 81 1E
	.db $82, $C0, $F8		; 82 C0 F8
	asl $1A17.w		; 0E 17 1A
	sta [$E3.b]		; 87 E3
	clc		; 18
	inc A		; 1A
	ora $FF1A.w,Y		; 19 1A FF
	tas		; 1B
	asl $DE1C.w,X		; 1E 1C DE
	trb $F00F.w		; 1C 0F F0
	lsr $5E1B.w,X		; 5E 1B 5E
	ora $FF1E.w,X		; 1D 1E FF
	inc $1F.b,X		; F6 1F
	asl $FF20.w,X		; 1E 20 FF
	ora $1E211E.l,X		; 1F 1E 21 1E
	sta [$1E.b]		; 87 1E
	dey		; 88
	asl $1E23.w,X		; 1E 23 1E
	bit #$8A1E.w		; 89 1E 8A
	asl $BF8B.w,X		; 1E 8B BF
	tax		; AA
	cpx $1E8C.w		; EC 8C 1E
	sta $8E1E.w		; 8D 1E 8E
	rti		; 40

	beq  15.b		; F0 0F
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	jsr ($BD7A.w,X)		; FC 7A BD
	sbc $FFFCF8.l,X		; FF F8 FC FF
	sed		; F8
	jsr ($C80C.w,X)		; FC 0C C8
	ora #$1D9D.w		; 09 9D 1D
	stz $C290.w,X		; 9E 90 C2
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	bmi -97.b		; 30 9F
	ora $70A0.w,X		; 1D A0 70
	beq  88.b		; F0 58
	cmp $FE.b,S		; C3 FE
	lda ($1D.b,X)		; A1 1D
	ldx #$C0F6.w		; A2 F6 C0
	sed		; F8
	bmi -93.b		; 30 A3
	ora $DBFF.w,X		; 1D FF DB
	ldy $1D.b		; A4 1D
	lda $1D.b		; A5 1D
	ldx $1D.b		; A6 1D
	lda [$1D.b]		; A7 1D
	tay		; A8
	ora $C0A9.w,X		; 1D A9 C0
	sed		; F8
	bmi  62.b		; 30 3E
	inc $FFCB.w		; EE CB FF
	inc $AA.b		; E6 AA
	ora $1DAB.w,X		; 1D AB 1D
	ldy $AD1D.w		; AC 1D AD
	ora $C0AE.w,X		; 1D AE C0
	sed		; F8
	bmi  72.b		; 30 48
	cpy #$F6FF.w		; C0 FF F6
	tya		; 98
	sta $1DAF.w,X		; 9D AF 1D
	bcs  29.b		; B0 1D
	lda ($1D.b),Y		; B1 1D
	lda ($C0.b)		; B2 C0
	sed		; F8
	bmi  81.b		; 30 51
	bmi -67.b		; 30 BD
	lda ($1D.b,S),Y		; B3 1D
	sbc $1DB4BE.l		; EF BE B4 1D
	lda $1D.b,X		; B5 1D
	ldx $C0.b,Y		; B6 C0
	sed		; F8
	bmi -64.b		; 30 C0
	cmp $C506.w,X		; DD 06 C5
	ora $1D9B.w,X		; 1D 9B 1D
	stz $FD7E.w		; 9C 7E FD
	bra -16.b		; 80 F0
	bit $F9.b,X		; 34 F9
	jsr ($1E63.w,X)		; FC 63 1E
	stz $1E.b		; 64 1E
	.db $62, $A0, $B1		; 62 A0 B1
	cpy #$37F8.w		; C0 F8 37
	adc $1E701E.l		; 6F 1E 70 1E
	xce		; FB
	sbc [$6D.b],Y		; F7 6D
	asl $F06E.w,X		; 1E 6E F0
	cpy #$7A38.w		; C0 38 7A
	asl $1E7B.w,X		; 1E 7B 1E
	sei		; 78
	asl $C079.w,X		; 1E 79 C0
	sed		; F8
	sec		; 38
	sta $1E.b		; 85 1E
	lda $1E867F.l		; AF 7F 86 1E
	sta $1E.b,S		; 83 1E
	sty $C0.b		; 84 C0
	sed		; F8
	and ($40.b),Y		; 31 40
	sbc $1E91.w,X		; FD 91 1E
	sta ($1E.b)		; 92 1E
	sta $55901E.l		; 8F 1E 90 55
	brk $30.b		; 00 30
	cpy #$FFFC.w		; C0 FC FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	inc $00.b,X		; F6 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	lda $020C01.l,X		; BF 01 0C 02
	tsb $0C03.w		; 0C 03 0C
	tsb $FE.b		; 04 FE
	sed		; F8
	asl $0C05.w		; 0E 05 0C
	asl $0C.b		; 06 0C
	ora [$10.b]		; 07 10
	inc $EA.b,X		; F6 EA
	sed		; F8
	bpl  -2.b		; 10 FE
	adc $FE.b,X		; 75 FE
	jmp $FE04.w		; 4C 04 FE
	sed		; F8
	tsb $0C08.w		; 0C 08 0C
	ora $0C0984.l,X		; 1F 84 09 0C
	asl A		; 0A
	tsb $0C0B.w		; 0C 0B 0C
	sed		; F8
	inc $0DF8.w,X		; FE F8 0D
	sbc $0DC01B.l,X		; FF 1B C0 0D
	tsb $EA0E.w		; 0C 0E EA
	sed		; F8
	bpl 118.b		; 10 76
	inc $FECE.w,X		; FE CE FE
	sed		; F8
	tsb $7AFD.w		; 0C FD 7A
	ora $FCFE0C.l		; 0F 0C FE FC
	bpl  12.b		; 10 0C
	ora ($0C.b),Y		; 11 0C
	ora ($F4.b)		; 12 F4
	sbc $FEFE.w,X		; FD FE FE
	ora ($0C.b,S),Y		; 13 0C
	trb $03.b		; 14 03
	sei		; 78
	inc $0EF8.w		; EE F8 0E
	adc [$FE.b],Y		; 77 FE
	dec $F8FE.w		; CE FE F8
	tsb $0C15.w		; 0C 15 0C
	asl $0F.b,X		; 16 0F
	ora [$FE.b],Y		; 17 FE
	sbc $0C17.w,X		; FD 17 0C
	clc		; 18
	inc $17CC.w,X		; FE CC 17
	cpy $FEF0.w		; CC F0 FE
	asl $FE42.w		; 0E 42 FE
	ora $1A0C.w,Y		; 19 0C 1A
	jsr ($F8F0.w,X)		; FC F0 F8
	asl A		; 0A
	inc $E878.w,X		; FE 78 E8
	cmp $F04CFE.l,X		; DF FE 4C F0
	sed		; F8
	phd		; 0B
	ora $1B8C.w,Y		; 19 8C 1B
	tsb $0C1C.w		; 0C 1C 0C
	ora $FFFE.w,X		; 1D FE FF
	sbc $0C1E37.l		; EF 37 1E 0C
	ora $F0200C.l,X		; 1F 0C 20 F0
	sed		; F8
	asl A		; 0A
	and ($0C.b,X)		; 21 0C
	adc $7A0C.w,Y		; 79 0C 7A
	beq  -8.b		; F0 F8
	asl A		; 0A
	tda		; 7B
	cpx $FE1F.w		; EC 1F FE
	jmp $FE1D.w		; 4C 1D FE
	sbc $794C7A.l,X		; FF 7A 4C 79
	jmp $0C22.w		; 4C 22 0C
	and $FF.b,S		; 23 FF
	tsb $24FE.w		; 0C FE 24
	tsb $0C25.w		; 0C 25 0C
	rol $0C.b		; 26 0C
	and [$F4.b]		; 27 F4
	cmp $28FE2F.l,X		; DF 2F FE 28
	tsb $0C29.w		; 0C 29 0C
	rol A		; 2A
	pea $7CFD.w		; F4 FD 7C
	tsb $0C7D.w		; 0C 7D 0C
	ror $FDF4.w,X		; 7E F4 FD
	sty $FD.b		; 84 FD
	inc $FE7F.w,X		; FE 7F FE
	jmp $FE23.w		; 4C 23 FE
	sbc $4C7E.w,X		; FD 7E 4C
	adc $FF4C.w,X		; 7D 4C FF
	sed		; F8
	jmp ($2B4C.w,X)		; 7C 4C 2B
	tsb $0C2C.w		; 0C 2C 0C
	and $2E0C.w		; 2D 0C 2E
	inc $0C2F.w,X		; FE 2F 0C
	bmi -25.b		; 30 E7
	cmp $0C310C.l		; CF 0C 31 0C
	and ($F4.b)		; 32 F4
	and ($0C.b,S),Y		; 33 0C
	bit $0C.b,X		; 34 0C
	and $F0.b,X		; 35 F0
	ora $FEF6.w		; 0D F6 FE
	bra  12.b		; 80 0C
	sta ($0C.b,X)		; 81 0C
	.db $82, $F4, $FD		; 82 F4 FD
	sta $F3.b,S		; 83 F3
	cmp [$FE.b]		; C7 FE
	jmp $FE2E.w		; 4C 2E FE
	.db $82, $4C, $81		; 82 4C 81
	jmp $F880.w		; 4C 80 F8
	sbc $0C36FF.l,X		; FF FF 36 0C
	and [$0C.b],Y		; 37 0C
	sec		; 38
	tsb $0C39.w		; 0C 39 0C
	dec A		; 3A
	tsb $0C3B.w		; 0C 3B 0C
	bit $3D0C.w,X		; 3C 0C 3D
	tsb $7E3F.w		; 0C 3F 7E
	rol $3F0C.w,X		; 3E 0C 3F
	tsb $0C40.w		; 0C 40 0C
	eor ($F6.b,X)		; 41 F6
	.db $42, $0C		; 42 0C
	eor $0C.b,S		; 43 0C
	mvp $CF,$84		; 44 84 CF
	sed		; F8
	inc $0C84.w,X		; FE 84 0C
	sta $0C.b		; 85 0C
	stx $61.b		; 86 61
	jsr ($87F6.w,X)		; FC F6 87
	inc $3D4C.w,X		; FE 4C 3D
	inc $4C86.w,X		; FE 86 4C
	sta $4C.b		; 85 4C
	jsr ($84FF.w,X)		; FC FF 84
	inc $45.b,X		; F6 45
	tsb $0C46.w		; 0C 46 0C
	eor [$0C.b]		; 47 0C
	pha		; 48
	tsb $1449.w		; 0C 49 14
	lsr A		; 4A
	sbc $143F.w,X		; FD 3F 14
	phk		; 4B
	inc $4CFD.w,X		; FE FD 4C
	trb $4D.b		; 14 4D
	trb $4E.b		; 14 4E
	trb $4F.b		; 14 4F
	trb $50.b		; 14 50
	trb $51.b		; 14 51
	sty $A1.b		; 84 A1
	inc $FA54.w,X		; FE 54 FA
	eor $88F054.l		; 4F 54 F0 88
	lda ($7E.b,X)		; A1 7E
	beq  -8.b		; F0 F8
	tsb $EE88.w		; 0C 88 EE
	mvn $FC,$F0		; 54 F0 FC
	cpy #$09F8.w		; C0 F8 09
	eor ($14.b)		; 52 14
	eor ($14.b,S),Y		; 53 14
	mvn $7F,$8E		; 54 8E 7F
	jsr ($C055.w,X)		; FC 55 C0
	lsr $14.b,X		; 56 14
	eor [$14.b],Y		; 57 14
	cli		; 58
	trb $59.b		; 14 59
	php		; 08
	lda ($FE.b),Y		; B1 FE
	mvn $57,$FA		; 54 FA 57
	cpy #$5189.w		; C0 89 51
	adc $0CF8F0.l		; 6F F0 F8 0C
	bit #$F0C0.w		; 89 C0 F0
	jsr ($F8C0.w,X)		; FC C0 F8
	ora #$145A.w		; 09 5A 14
	tad		; 5B
	jsr ($5CFD.w,X)		; FC FD 5C
	inc $C063.w,X		; FE 63 C0
	eor $5E14.w,X		; 5D 14 5E
	trb $5F.b		; 14 5F
	trb $8A.b		; 14 8A
	inc $048B.w,X		; FE 8B 04
	sed		; F8
	beq -64.b		; F0 C0
	sed		; F8
	sty $8D14.w		; 8C 14 8D
	trb $0F.b		; 14 0F
	sec		; 38
	stx $8F14.w		; 8E 14 8F
	trb $90.b		; 14 90
	sbc ($C0.b)		; F2 C0
	phb		; 8B
	mvn $F3,$79		; 54 79 F3
	cpx $C0.b		; E4 C0
	sed		; F8
	ora #$1460.w		; 09 60 14
	adc ($FC.b,X)		; 61 FC
	sbc $C062.w,X		; FD 62 C0
	adc $FF.b,S		; 63 FF
	sbc $6414.w,X		; FD 14 64
	trb $65.b		; 14 65
	trb $91.b		; 14 91
	trb $92.b		; 14 92
	trb $93.b		; 14 93
	cpy #$94FD.w		; C0 FD 94
	trb $95.b		; 14 95
	trb $CF.b		; 14 CF
	lda $971496.l,X		; BF 96 14 97
	trb $98.b		; 14 98
	cpy #$5493.w		; C0 93 54
	sta ($54.b)		; 92 54
	sta ($54.b),Y		; 91 54
	sbc [$BF.b],Y		; F7 BF
	cpy #$09F8.w		; C0 F8 09
	ror $14.b		; 66 14
	adc [$FC.b]		; 67 FC
	sbc $1468.w,X		; FD 68 14
	adc #$6A14.w		; 69 14 6A
	trb $6B.b		; 14 6B
	trb $6C.b		; 14 6C
	ora $FEE0.w,Y		; 19 E0 FE
	sbc $C099.w,X		; FD 99 C0
	sed		; F8
	cpy #$089A.w		; C0 9A 08
	and $9B0A.w,X		; 3D 0A 9B
	php		; 08
	cpy #$99FE.w		; C0 FE 99
	mvn $FE,$6C		; 54 6C FE
	cpy #$09F8.w		; C0 F8 09
	pea $46FF.w		; F4 FF 46
	inc $146D.w,X		; FE 6D 14
	ror $6F14.w		; 6E 14 6F
	trb $70.b		; 14 70
	trb $71.b		; 14 71
	trb $72.b		; 14 72
	sbc $7314F9.l,X		; FF F9 14 73
	trb $74.b		; 14 74
	trb $9C.b		; 14 9C
	trb $9D.b		; 14 9D
	trb $9E.b		; 14 9E
	cpy #$149F.w		; C0 9F 14
	sbc $08A0E7.l		; EF E7 A0 08
	lda ($08.b,X)		; A1 08
	ldx #$FFC0.w		; A2 C0 FF
	stz $9D54.w,X		; 9E 54 9D
	mvn $C0,$9C		; 54 9C C0
	sbc $10A3FF.l,X		; FF FF A3 10
	ldy $10.b		; A4 10
	lda $14.b		; A5 14
	ldx $14.b		; A6 14
	lda [$14.b]		; A7 14
	tay		; A8
	trb $A9.b		; 14 A9
	trb $AA.b		; 14 AA
	trb $FF.b		; 14 FF
	sbc $AC14AB.l,X		; FF AB 14 AC
	trb $AD.b		; 14 AD
	trb $AE.b		; 14 AE
	trb $AF.b		; 14 AF
	trb $B0.b		; 14 B0
	trb $4B.b		; 14 4B
	ora $4C.b,X		; 15 4C
	ora $FF.b,X		; 15 FF
	sbc $4E154D.l,X		; FF 4D 15 4E
	ora $4F.b,X		; 15 4F
	ora $50.b,X		; 15 50
	ora $51.b,X		; 15 51
	ora #$0952.w		; 09 52 09
	eor ($09.b,S),Y		; 53 09
	mvn $C3,$09		; 54 09 C3
	sta $561555.l,X		; 9F 55 15 56
	inc $4D55.w		; EE 55 4D
	eor $4C.b,X		; 55 4C
	eor $4B.b,X		; 55 4B
	eor $FE.b,X		; 55 FE
	sbc $10B1C0.l,X		; FF C0 B1 10
	lda ($10.b)		; B2 10
	lda ($14.b,S),Y		; B3 14
	ldy $14.b,X		; B4 14
	lda $14.b,X		; B5 14
	ldx $14.b,Y		; B6 14
	lda [$14.b],Y		; B7 14
	sbc $14B8FF.l,X		; FF FF B8 14
	lda $BA14.w,Y		; B9 14 BA
	trb $BB.b		; 14 BB
	trb $BC.b		; 14 BC
	trb $BD.b		; 14 BD
	trb $BE.b		; 14 BE
	trb $57.b		; 14 57
	ora $FF.b,X		; 15 FF
	sbc $591558.l,X		; FF 58 15 59
	ora $5A.b,X		; 15 5A
	ora $5B.b,X		; 15 5B
	ora $5C.b,X		; 15 5C
	ora $5D.b,X		; 15 5D
	ora #$095E.w		; 09 5E 09
	eor $FFC309.l,X		; 5F 09 C3 FF
	rts		; 60

	ora #$F261.w		; 09 61 F2
	eor $5A.b,X		; 55 5A
	eor $59.b,X		; 55 59
	eor $58.b,X		; 55 58
	eor $57.b,X		; 55 57
	eor $DF.b,X		; 55 DF
	sta $C00CBF.l		; 8F BF 0C C0
	tsb $14C1.w		; 0C C1 14
	inc $C2FC.w,X		; FE FC C2
	trb $C3.b		; 14 C3
	trb $C4.b		; 14 C4
	sbc $C5FEFF.l,X		; FF FF FE C5
	trb $C6.b		; 14 C6
	trb $C7.b		; 14 C7
	trb $C8.b		; 14 C8
	trb $C9.b		; 14 C9
	trb $CA.b		; 14 CA
	trb $62.b		; 14 62
	ora ($63.b),Y		; 11 63
	sbc $640DFF.l,X		; FF FF 0D 64
	ora $1165.w		; 0D 65 11
	ror $11.b		; 66 11
	adc [$09.b]		; 67 09
	pla		; 68
	ora #$0969.w		; 09 69 09
	ror A		; 6A
	ora #$FF6B.w		; 09 6B FF
	adc $496709.l,X		; 7F 09 67 49
	ror $51.b		; 66 51
	adc $51.b		; 65 51
	stz $4D.b		; 64 4D
	adc $4D.b,S		; 63 4D
	.db $62, $51, $CB		; 62 51 CB
	tsb $FDCC.w		; 0C CC FD
	sbc $80FFC0.l,X		; FF C0 FF 80
	sed		; F8
	ora #$14CD.w		; 09 CD 14
	dec $CF14.w		; CE 14 CF
	trb $D0.b		; 14 D0
	bpl -47.b		; 10 D1
	bpl 108.b		; 10 6C
	ora ($FF.b),Y		; 11 FF
	sbc $6E0D6D.l,X		; FF 6D 0D 6E
	ora $096F.w		; 0D 6F 09
	bvs   9.b		; 70 09
	adc ($09.b),Y		; 71 09
	adc ($09.b)		; 72 09
	adc ($09.b,S),Y		; 73 09
	stz $09.b,X		; 74 09
	beq  -1.b		; F0 FF
	adc $F6.b,X		; 75 F6
	eor #$4970.w		; 49 70 49
	adc $4D6E49.l		; 6F 49 6E 4D
	adc $6C4D.w		; 6D 4D 6C
	eor ($FB.b),Y		; 51 FB
	cmp [$D2.b]		; C7 D2
	tsb $C0D3.w		; 0C D3 C0
	sbc $D514D4.l,X		; FF D4 14 D5
	trb $D6.b		; 14 D6
	trb $D7.b		; 14 D7
	bra  -1.b		; 80 FF
	sbc $D914D8.l,X		; FF D8 14 D9
	trb $DA.b		; 14 DA
	bpl -37.b		; 10 DB
	bpl -36.b		; 10 DC
	tsb $0D76.w		; 0C 76 0D
	adc [$0D.b],Y		; 77 0D
	sei		; 78
	ora $1FE3.w		; 0D E3 1F
	adc $7A09.w,Y		; 79 09 7A
	cpy #$097B.w		; C0 7B 09
	jmp ($7D09.w,X)		; 7C 09 7D
	ora #$FF7E.w		; 09 7E FF
	lda $497AC0.l,X		; BF C0 7A 49
	adc $7849.w,Y		; 79 49 78
	eor $4D77.w		; 4D 77 4D
	ror $4D.b,X		; 76 4D
	cmp $DE0C.w,X		; DD 0C DE
	sbc $FFC0FF.l,X		; FF FF C0 FF
	cmp $14E014.l,X		; DF 14 E0 14
	sbc ($14.b,X)		; E1 14
.INDEX 8
	sep #$14		; E2 14
	sbc $14.b,S		; E3 14
	cpx $14.b		; E4 14
	sbc $10.b		; E5 10
	inc $FF.b		; E6 FF
	sbc $0CE710.l,X		; FF 10 E7 0C
	inx		; E8
	tsb $0D7F.w		; 0C 7F 0D
	bra  13.b		; 80 0D
	sta ($0D.b,X)		; 81 0D
	.db $82, $09, $83		; 82 09 83
	ora #$8784.w		; 09 84 87
	beq   9.b		; F0 09
	sta $09.b		; 85 09
	stx $FE.b		; 86 FE
	eor #$84FA.w		; 49 FA 84
	eor #$FF83.w		; 49 83 FF
	sbc $498249.l,X		; FF 49 82 49
	sta ($4D.b,X)		; 81 4D
	bra  77.b		; 80 4D
	adc $0CE94D.l,X		; 7F 4D E9 0C
	nop		; EA
	tsb $0CEB.w		; 0C EB 0C
	cpx $FFFF.w		; EC FF FF
	tsb $0CED.w		; 0C ED 0C
	inc $EF0C.w		; EE 0C EF
	tsb $0CF0.w		; 0C F0 0C
	sbc ($0C.b),Y		; F1 0C
	sbc ($0C.b)		; F2 0C
	sbc ($0C.b,S),Y		; F3 0C
	pea $0FFF.w		; F4 FF 0F
	tsb $0CF5.w		; 0C F5 0C
	inc $0C.b,X		; F6 0C
	sbc [$0C.b],Y		; F7 0C
	sed		; F8
	tsb $0D87.w		; 0C 87 0D
	dey		; 88
	ora $F0F0.w		; 0D F0 F0
	cpx #$F0.b		; E0 F0
	bit #$8A0D.w		; 89 0D 8A
	ora $8BF0.w		; 0D F0 8B
	ora $FF8B.w		; 0D 8B FF
	sbc $4CF74D.l,X		; FF 4D F7 4C
	txa		; 8A
	eor $4D89.w		; 4D 89 4D
	pea $EB4C.w		; F4 4C EB
	jmp $4D88.w		; 4C 88 4D
	sta [$4D.b]		; 87 4D
	sbc $FFFF.w,Y		; F9 FF FF
	tsb $0CFA.w		; 0C FA 0C
	xce		; FB
	tsb $0CFC.w		; 0C FC 0C
	sbc $FE0C.w,X		; FD 0C FE
	tsb $0CFF.w		; 0C FF 0C
	brk $0D.b		; 00 0D
	ora ($FF.b,X)		; 01 FF
	beq  13.b		; F0 0D
	cop $0D.b		; 02 0D
	ora $0D.b,S		; 03 0D
	tsb $0D.b		; 04 0D
	ora $0D.b		; 05 0D
	beq   6.b		; F0 06
	ora $FF07.w		; 0D 07 FF
	bmi  13.b		; 30 0D
	sty $8D0D.w		; 8C 0D 8D
	ora $0D8E.w		; 0D 8E 0D
	sta $90D80D.l		; 8F 0D D8 90
	ora $F87D.w		; 0D 7D F8
	beq   7.b		; F0 07
	eor $4D06.w		; 4D 06 4D
	bcc -54.b		; 90 CA
	jmp $4D8F.w		; 4C 8F 4D
	stx $3FFF.w		; 8E FF 3F
	eor $4D8D.w		; 4D 8D 4D
	sty $084D.w		; 8C 4D 08
	ora $0D09.w		; 0D 09 0D
	asl A		; 0A
	ora $0D0B.w		; 0D 0B 0D
	tsb $FC0D.w		; 0C 0D FC
	sbc $0D0EFF.l,X		; FF FF 0E 0D
	ora $0D100D.l		; 0F 0D 10 0D
	ora ($0D.b),Y		; 11 0D
	ora ($0D.b)		; 12 0D
	ora ($0D.b,S),Y		; 13 0D
	trb $F1.b		; 14 F1
	tya		; 98
	ora $E815.w		; 0D 15 E8
	asl $0D.b,X		; 16 0D
	sta ($F0.b),Y		; 91 F0
	sta ($F3.b)		; 92 F3
	sbc $D893E8.l,X		; FF E8 93 D8
	phd		; 0B
	eor $4D0A.w		; 4D 0A 4D
	sta ($4D.b,S),Y		; 93 4D
	bpl  77.b		; 10 4D
	ora $4DFFFF.l		; 0F FF FF 4D
	sta ($4D.b)		; 92 4D
	ora ($4D.b),Y		; 11 4D
	sta ($4D.b),Y		; 91 4D
	ora [$0D.b],Y		; 17 0D
	clc		; 18
	ora $0D19.w		; 0D 19 0D
	inc A		; 1A
	ora $FF1B.w		; 0D 1B FF
	lda $0D1C0D.l,X		; BF 0D 1C 0D
	ora $1E0D.w,X		; 1D 0D 1E
	ora $0D1F.w		; 0D 1F 0D
	jsr $210D.w		; 20 0D 21
	ora $0D22.w		; 0D 22 0D
	cmp ($08.b),Y		; D1 08
	inx		; E8
	jsr ($F023.w,X)		; FC 23 F0
	inx		; E8
	inc $F094.w,X		; FE 94 F0
	sbc $22E81F.l,X		; FF 1F E8 22
	eor $4D19.w		; 4D 19 4D
	sty $4D.b,X		; 94 4D
	ora $4D1E4D.l,X		; 1F 4D 1E 4D
	ora $1C4D.w,X		; 1D 4D 1C
	sbc $24F8FF.l,X		; FF FF F8 24
	ora $0D25.w		; 0D 25 0D
	rol $0D.b		; 26 0D
	and [$0D.b]		; 27 0D
	plp		; 28
	ora $0D29.w		; 0D 29 0D
	rol A		; 2A
	ora $01FF.w		; 0D FF 01
	pld		; 2B
	ora $0D2C.w		; 0D 2C 0D
	and $2E0D.w		; 2D 0D 2E
	ora $0D2F.w		; 0D 2F 0D
	inx		; E8
	asl A		; 0A
	sbc $30F8.w,X		; FD F8 30
	inx		; E8
	sbc $E895F8.l,X		; FF F8 95 E8
	sbc $4D2F.w,X		; FD 2F 4D
	rol $FF4D.w		; 2E 4D FF
	sbc $954D2D.l,X		; FF 2D 4D 95
	eor $4D27.w		; 4D 27 4D
	rol A		; 2A
	eor $4D29.w		; 4D 29 4D
	plp		; 28
	eor $0D31.w		; 4D 31 0D
	and ($0D.b)		; 32 0D
	sbc $0D33FF.l,X		; FF FF 33 0D
	bit $0D.b,X		; 34 0D
	and $0D.b,X		; 35 0D
	rol $0D.b,X		; 36 0D
	and [$0D.b],Y		; 37 0D
	sec		; 38
	ora $0D39.w		; 0D 39 0D
	dec A		; 3A
	ora $A5E3.w		; 0D E3 A5
	tsa		; 3B
	ora $F83C.w		; 0D 3C F8
	and $3E0D.w,X		; 3D 0D 3E
	inx		; E8
	sbc $FEE0.w,X		; FD E0 FE
	sbc $FDE896.l,X		; FF 96 E8 FD
	bit $3B4D.w,X		; 3C 4D 3B
	eor $4D3A.w		; 4D 3A 4D
	stx $4D.b,Y		; 96 4D
	bit $4D.b,X		; 34 4D
	and ($4D.b,S),Y		; 33 4D
	rol $FF.b,X		; 36 FF
	cmp $4D.b,S		; C3 4D
	and $4D.b,X		; 35 4D
	and $0D400D.l,X		; 3F 0D 40 0D
	eor ($0D.b,X)		; 41 0D
	.db $42, $0D		; 42 0D
	sed		; F8
	eor $FF.b,S		; 43 FF
	sbc ($0D.b),Y		; F1 0D
	mvp $45,$0D		; 44 0D 45
	ora $0D46.w		; 0D 46 0D
	eor [$0D.b]		; 47 0D
	pha		; 48
	sed		; F8
	eor #$DA0D.w		; 49 0D DA
	sbc $FDE84A.l,X		; FF 4A E8 FD
	cpx #$FC.b		; E0 FC
	sta [$E8.b],Y		; 97 E8
	sbc $4D45.w,X		; FD 45 4D
	pha		; 48
	eor $4D47.w		; 4D 47 4D
	sta [$4D.b],Y		; 97 4D
	ora $4D42AB.l		; 0F AB 42 4D
	eor ($4D.b,X)		; 41 4D
	rti		; 40

	rep #$4D		; C2 4D
	brk $FF.b		; 00 FF
	sed		; F8
	jsr ($F8FF.w,X)		; FC FF F8
	eor ($5F.b,X)		; 41 5F
	sed		; F8
	bit $07C2.w,X		; 3C C2 07
	jmp $4C06.w		; 4C 06 4C
	ora $28.b		; 05 28
	cpy #$0E.b		; C0 0E
	inc $4C03.w,X		; FE 03 4C
	cop $4C.b		; 02 4C
	sbc $010B.w,X		; FD 0B 01
	jmp $F8C0.w		; 4C C0 F8
	ora $0E4C08.l,X		; 1F 08 4C 0E
	jmp $4C0D.w		; 4C 0D 4C
	tsb $C02A.w		; 0C 2A C0
	asl $BD1F.w		; 0E 1F BD
	inc $4C0B.w,X		; FE 0B 4C
	asl A		; 0A
	jmp $F809.w		; 4C 09 F8
	cpy #$F8.b		; C0 F8
	ora $134C14.l,X		; 1F 14 4C 13
	eor $C02EBF.l,X		; 5F BF 2E C0
	asl $4C12.w		; 0E 12 4C
	ora ($4C.b),Y		; 11 4C
	bpl -14.b		; 10 F2
	sbc $1FF8C0.l,X		; FF C0 F8 1F
	inc A		; 1A
	jmp $4C19.w		; 4C 19 4C
	asl $07.b,X		; 16 07
	bcs  -2.b		; B0 FE
	sbc $188C17.l,X		; FF 17 8C 18
	inc $F0FA.w,X		; FE FA F0
	sbc $5EFD15.l,X		; FF 15 FD 5E
	cpy #$F8.b		; C0 F8
	jsr $3021.w		; 20 21 30
	cpy #$0A.b		; C0 0A
	jsr $1F4C.w		; 20 4C 1F
	jmp $F01E.w		; 4C 1E F0
	sed		; F8
	asl A		; 0A
	trb $1B4C.w		; 1C 4C 1B
	cpy #$F8.b		; C0 F8
	jsr $7FBF.w		; 20 BF 7F
	bit $C4.b,X		; 34 C4
	rol A		; 2A
	jmp $4C29.w		; 4C 29 4C
	plp		; 28
	plp		; 28
	cmp $27.b		; C5 27
	jmp $4C26.w		; 4C 26 4C
	and $4C.b		; 25 4C
	bit $AE.b		; 24 AE
	cmp $C022F4.l,X		; DF F4 22 C0
	sed		; F8
	jsr $C234.w		; 20 34 C2
	and $4C.b,X		; 35 4C
	bit $4C.b,X		; 34 4C
	and ($2A.b,S),Y		; 33 2A
	cmp $3F.b,S		; C3 3F
	adc $314C32.l,X		; 7F 32 4C 31
	jmp $4C30.w		; 4C 30 4C
	and $4C2DF4.l		; 2F F4 2D 4C
	bit $2B4C.w		; 2C 4C 2B
	lda $F8C07F.l,X		; BF 7F C0 F8
	jsr $4C44.w		; 20 44 4C
	eor $4C.b,S		; 43 4C
	.db $42, $38		; 42 38
	cmp ($41.b,X)		; C1 41
	jmp $4C40.w		; 4C 40 4C
	and $FC3E4C.l,X		; 3F 4C 3E FC
	sbc $4C3CF6.l,X		; FF F6 3C 4C
	tsa		; 3B
	jmp $4C3A.w		; 4C 3A 4C
	and $384C.w,Y		; 39 4C 38
	jmp $4C37.w		; 4C 37 4C
	plx		; FA
	dec $C036.w,X		; DE 36 C0
	sed		; F8
	jsr $C130.w		; 20 30 C1
	mvn $54,$4F		; 54 4F 54
	lsr $C970.w		; 4E 70 C9
	jmp $4B54.w		; 4C 54 4B
	inc $FFFD.w,X		; FE FD FF
	xba		; EB
	lsr A		; 4A
	mvn $54,$49		; 54 49 54
	pha		; 48
	jmp $4C47.w		; 4C 47 4C
	lsr $4C.b		; 46 4C
	eor $C0.b		; 45 C0
	sed		; F8
	jsr $C130.w		; 20 30 C1
	mvn $90,$E3		; 54 E3 90
	eor [$54.b],Y		; 57 54
	lsr $C0.b,X		; 56 C0
	eor $54.b,X		; 55 54
	sbc $F9FB53.l,X		; FF 53 FB F9
	jsr ($C052.w,X)		; FC 52 C0
	sed		; F8
	rol A		; 2A
	eor $545E54.l,X		; 5F 54 5E 54
	eor $5CC0.w,X		; 5D C0 5C
	mvn $E7,$EB		; 54 EB E7
	phy		; 5A
	mvn $FC,$5B		; 54 5B FC
	sbc $F8C0.w,X		; FD C0 F8
	and #$5465.w		; 29 65 54
	stz $54.b		; 64 54
	adc $C0.b,S		; 63 C0
	lda $5462FE.l		; AF FE 62 54
	rts		; 60

	mvn $FC,$61		; 54 61 FC
	sbc $F8C0.w,X		; FD C0 F8
	and #$C23C.w		; 29 3C C2
	rtl		; 6B

	mvn $54,$6A		; 54 6A 54
	adc #$FF5F.w		; 69 5F FF
	mvn $54,$68		; 54 68 54
	ror $54.b		; 66 54
	adc [$FC.b]		; 67 FC
	sbc $F8C0.w,X		; FD C0 F8
	and #$5474.w		; 29 74 54
	adc ($54.b,S),Y		; 73 54
	adc ($54.b)		; 72 54
	sbc $547148.l,X		; FF 48 71 54
	bvs  84.b		; 70 54
	adc $546E54.l		; 6F 54 6E 54
	adc $FE42.w		; 6D 42 FE
	sbc $F8C0FE.l,X		; FF FE C0 F8
	and #$54B0.w		; 29 B0 54
	lda $54AE54.l		; AF 54 AE 54
	lda $AC54.w		; AD 54 AC
	mvn $54,$AB		; 54 AB 54
	tax		; AA
	sbc $A954BF.l,X		; FF BF 54 A9
	mvn $54,$A8		; 54 A8 54
	lda [$54.b]		; A7 54
	ldx $54.b		; A6 54
	lda $54.b		; A5 54
	ldy $50.b		; A4 50
	lda $50.b,S		; A3 50
	sbc $F8C0FF.l,X		; FF FF C0 F8
	and $BE.b,S		; 23 BE
	mvn $54,$BD		; 54 BD 54
	ldy $BB54.w,X		; BC 54 BB
	mvn $54,$BA		; 54 BA 54
	lda $B854.w,Y		; B9 54 B8
	mvn $FF,$B7		; 54 B7 FF
	sbc [$54.b],Y		; F7 54
	ldx $54.b,Y		; B6 54
	lda $54.b,X		; B5 54
	ldy $54.b,X		; B4 54
	lda ($54.b,S),Y		; B3 54
	lda ($50.b)		; B2 50
	lda ($C0.b),Y		; B1 C0
	sed		; F8
	bit $CA.b		; 24 CA
	mvn $E3,$FF		; 54 FF E3
	cmp #$C854.w		; C9 54 C8
	mvn $54,$C7		; 54 C7 54
	dec $54.b		; C6 54
	cmp $54.b		; C5 54
	cpy $FE.b		; C4 FE
	cmp $F7.b,S		; C3 F7
	inc $C254.w,X		; FE 54 C2
	mvn $FE,$C1		; 54 C1 FE
	sbc $4CC0.w,X		; FD C0 4C
	lda $20F8C0.l,X		; BF C0 F8 20
	cmp ($50.b),Y		; D1 50
	bne  80.b		; D0 50
	cmp $54FBD7.l		; CF D7 FB 54
	dec $CD54.w		; CE 54 CD
	bra  -8.b		; 80 F8
	asl A		; 0A
	cpy #$FE.b		; C0 FE
	cpy $CB4C.w		; CC 4C CB
	cpy #$F8.b		; C0 F8
	jsr $4CDC.w		; 20 DC 4C
	stp		; DB
	ora $DA50FF.l,X		; 1F FF 50 DA
	bvc -39.b		; 50 D9
	mvn $80,$D8		; 54 D8 80
	cmp [$54.b],Y		; D7 54
	dec $54.b,X		; D6 54
	cmp $54.b,X		; D5 54
	dec $D4FF.w,X		; DE FF D4
	cpy #$FF.b		; C0 FF
	cmp ($4C.b,S),Y		; D3 4C
	cmp ($C0.b)		; D2 C0
	sed		; F8
	jsr $4CE8.w		; 20 E8 4C
	sbc [$4C.b]		; E7 4C
	inc $50.b		; E6 50
	sbc $50.b		; E5 50
	sbc $54E47B.l,X		; FF 7B E4 54
	sbc $54.b,S		; E3 54
.INDEX 8
	sep #$54		; E2 54
	sbc ($54.b,X)		; E1 54
	cpx #$54.b		; E0 54
	cmp $DEFFC0.l,X		; DF C0 FF DE
	jmp $FFDD.w		; 4C DD FF
	sbc $20F8C0.l,X		; FF C0 F8 20
	sed		; F8
	jmp $4CF7.w		; 4C F7 4C
	inc $4C.b,X		; F6 4C
	sbc $4C.b,X		; F5 4C
	pea $F34C.w		; F4 4C F3
	jmp $4CF2.w		; 4C F2 4C
	sbc $4CF17B.l,X		; FF 7B F1 4C
	beq  76.b		; F0 4C
	sbc $4CEE4C.l		; EF 4C EE 4C
	sbc $EC4C.w		; ED 4C EC
	jsr $EAC1.w		; 20 C1 EA
	jmp $FDE9.w		; 4C E9 FD
	sbc $20F8C0.l,X		; FF C0 F8 20
	bmi -62.b		; 30 C2
	inc $054C.w,X		; FE 4C 05
	eor $4D04.w		; 4D 04 4D
	ora $4D.b,S		; 03 4D
	cop $4D.b		; 02 4D
	ora ($4D.b,X)		; 01 4D
	sta [$FF.b]		; 87 FF
	brk $4D.b		; 00 4D
	sbc $FDF04C.l,X		; FF 4C F0 FD
	jmp $4CFC.w		; 4C FC 4C
	xce		; FB
	jmp $4CFA.w		; 4C FA 4C
	inc $AF.b,X		; F6 AF
	sbc $F8C0.w,Y		; F9 C0 F8
	jsr $3016.w		; 20 16 30
	cmp ($15.b,X)		; C1 15
	eor $4D14.w		; 4D 14 4D
	ora ($4D.b,S),Y		; 13 4D
	ora ($30.b)		; 12 30
	cmp ($BF.b,X)		; C1 BF
	lda [$28.b],Y		; B7 28
	rep #$0E		; C2 0E
	eor $4D0D.w		; 4D 0D 4D
	tsb $184D.w		; 0C 4D 18
	rep #$09		; C2 09
	eor $2008.w		; 4D 08 20
	iny		; C8
	jsr $FF23.w		; 20 23 FF
	lda $C130.w,X		; BD 30 C1
	clc		; 18
	eor $4D17.w		; 4D 17 4D
	jsl $4D214D.l		; 22 4D 21 4D
	jsr $C728.w		; 20 28 C7
	tas		; 1B
	eor $DE1A.w		; 4D 1A DE
	lda $FDE8.w,X		; BD E8 FD
	cpy #$F8.b		; C0 F8
	ora $304D27.l,X		; 1F 27 4D 30
	bmi -63.b		; 30 C1
	bit $4D.b		; 24 4D
	plp		; 28
	cpy $2C.b		; C4 2C
	eor $702B.w		; 4D 2B 70
	pea $C528.w		; F4 28 C5
	inx		; E8
	rol $4D.b		; 26 4D
	and $E8.b		; 25 E8
	cpy #$F8.b		; C0 F8
	ora $5F4D34.l,X		; 1F 34 4D 5F
	clv		; B8
	rol $3D4D.w,X		; 3E 4D 3D
	eor $4D39.w		; 4D 39 4D
	plp		; 28
	cpy $F8.b		; C4 F8
	sec		; 38
	eor $5E37.w		; 4D 37 5E
	cmp $20C328.l,X		; DF 28 C3 20
.ACCU 16
.INDEX 16
	rep #$32		; C2 32
	eor $C031.w		; 4D 31 C0
	sed		; F8
	jsr $C238.w		; 20 38 C2
	lsr A		; 4A
	eor $4D49.w		; 4D 49 4D
	plp		; 28
	cpy $78.b		; C4 78
	eor $46.b,X		; 55 46
	sed		; F8
	mvp $43,$4D		; 44 4D 43
	plp		; 28
	cmp ($20.b,X)		; C1 20
	cpy #$FFFC.w		; C0 FC FF
	sed		; F8
	ror A		; 6A
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $1000FE.l,X		; 3F FE 00 10
	bpl  28.b		; 10 1C
	asl $17.b		; 06 17
	plx		; FA
	and ($40.b),Y		; 31 40
	dec $04.b		; C6 04
	mvp $1F,$E3		; 44 E3 1F
	brk $22.b		; 00 22
	brk $FF.b		; 00 FF
	php		; 08
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $38.b		; 00 38
	cmp $FF.b,S		; C3 FF
	inc $F31C.w,X		; FE 1C F3
	jsr $7020.w		; 20 20 70
	brk $90.b		; 00 90
	clc		; 18
	ora $316222.l,X		; 1F 22 62 31
	sbc $A404.w,X		; FD 04 A4
	sbc $24.b		; E5 24
	cpx #$0060.w		; E0 60 00
	cpx #$9C00.w		; E0 00 9C
	ora ($FC.b),Y		; 11 FC
	brk $18.b		; 00 18
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	sbc $1C0AF8.l,X		; FF F8 0A 1C
	tsb $050F.w		; 0C 0F 05
	.db $42, $F8		; 42 F8
	ora $F8EF.w		; 0D EF F8
	phd		; 0B
	sbc $04FD02.l,X		; FF 02 FD 04
	brk $06.b		; 00 06
	tsb $FF.b		; 04 FF
	tda		; 7B
	asl $0F06.w		; 0E 06 0F
	ora #$19.b		; 09 19
	php		; 08
	sec		; 38
	clc		; 18
	clv		; B8
	lda $E3.b,S		; A3 E3
	inc $FE.b		; E6 FE
	asl $00.b		; 06 00
	ora [$44.b]		; 07 44
	cpy $FE.b		; C4 FE
	ldy #$9E.b		; A0 9E
	stz $7EFF.w		; 9C FF 7E
	adc ($61.b,X)		; 61 61
	sbc [$67.b],Y		; F7 67
	adc $C01818.l,X		; 7F 18 18 C0
	cpy #$C4.b		; C0 C4
	sed		; F8
	ora #$80.b		; 09 80
	brk $E7.b		; 00 E7
	brk $3F.b		; 00 3F
	ora $FCF580.l,X		; 1F 80 F5 FC
	rti		; 40

	brk $C0.b		; 00 C0
	bra -26.b		; 80 E6
	plx		; FA
	bit $71.b		; 24 71
	inc $F8E0.w,X		; FE E0 F8
	asl A		; 0A
	inc $F8FF.w,X		; FE FF F8
	asl A		; 0A
	stx $02.b,Y		; 96 02
	ora ($EF.b,X)		; 01 EF
	sta $0BF8F1.l,X		; 9F F1 F8 0B
	.db $82, $00, $43		; 82 00 43
	sbc ($FF.b)		; F2 FF
	sta ($01.b,X)		; 81 01
	eor ($01.b,X)		; 41 01
	jsr $1042.w		; 20 42 10
	sta $3B.b		; 85 3B
	jsr $FCC2.w		; 20 C2 FC
	lda $63.b,X		; B5 63
	brk $33.b		; 00 33
	cmp ($F8.b,X)		; C1 F8
	asl A		; 0A
	rti		; 40

	rti		; 40

	bit $7941.w		; 2C 41 79
	bpl  16.b		; 10 10
	sbc ($FE.b)		; F2 FE
	lda [$F3.b],Y		; B7 F3
	php		; 08
	asl $00.b		; 06 00
	pea $B4FA.w		; F4 FA B4
	rol $38.b,X		; 36 38
	ora ($EE.b,S),Y		; 13 EE
	.db $42, $02		; 42 02
	and ($A0.b,X)		; 21 A0
	beq  92.b		; F0 5C
	sta [$40.b]		; 87 40
	sta $00.b,S		; 83 00
	cmp ($F6.b,X)		; C1 F6
	sbc ($DA.b),Y		; F1 DA
	jsr ($1014.w,X)		; FC 14 10
	beq  15.b		; F0 0F
	sei		; 78
	asl A		; 0A
	php		; 08
	sta ($00.b,X)		; 81 00
	adc $E7.b		; 65 E7
	beq  24.b		; F0 18
	brk $0C.b		; 00 0C
	and $F1C003.l,X		; 3F 03 C0 F1
	stx $00.b		; 86 00
	cmp [$00.b]		; C7 00
	xba		; EB
	cmp ($F2.b)		; D2 F2
	cmp ($19.b,X)		; C1 19
	beq  -2.b		; F0 FE
	asl A		; 0A
	brk $8A.b		; 00 8A
	sep #$80		; E2 80
	inc $FE0A.w		; EE 0A FE
	beq  15.b		; F0 0F
	brk $8F.b		; 00 8F
	sta ($F8.b),Y		; 91 F8
	ora #$02.b		; 09 02
	and $060422.l		; 2F 22 04 06
	php		; 08
	tsb $AF10.w		; 0C 10 AF
	sbc $F1.b,X		; F5 F1
	stz $2660.w,X		; 9E 60 26
	dex		; CA
	sbc ($20.b),Y		; F1 20
	eor ($B9.b,S),Y		; 53 B9
	ora [$6D.b],Y		; 17 6D
	sta [$F1.b]		; 87 F1
	bra -125.b		; 80 83
	sbc ($F8.b),Y		; F1 F8
	tsb $FF7C.w		; 0C 7C FF
	sed		; F8
	ora #$07.b		; 09 07
	cmp ($F1.b)		; D2 F1
	sbc $81E48D.l,X		; FF 8D E4 81
	beq  13.b		; F0 0D
	sbc $7F0AF8.l,X		; FF F8 0A 7F
	cpx $FE.b		; E4 FE
	sbc $2410F8.l,X		; FF F8 10 24
	sta [$27.b]		; 87 27
	tsb $26.b		; 04 26
	ora ($11.b),Y		; 11 11
	php		; 08
	cop $1E.b		; 02 1E
	brk $31.b		; 00 31
	sbc ($00.b),Y		; F1 00
	sbc ($8E.b)		; F2 8E
	inc $B766.w,X		; FE 66 B7
	sbc [$14.b],Y		; F7 14
	brk $FF.b		; 00 FF
	sta $84.b		; 85 84
	bra -126.b		; 80 82
	asl $1F.b,X		; 16 1F
	jsr $8030.w		; 20 30 80
	ldy #$40.b		; A0 40
	jmp ($88F1.w,X)		; 7C F1 88
	plb		; AB
	bmi  56.b		; 30 38
	brk $7C.b		; 00 7C
	brk $F1.b		; 00 F1
	adc ($F2.b),Y		; 71 F2
	txs		; 9A
	sbc ($0E.b,S),Y		; F3 0E
	tsb $02.b		; 04 02
	brk $FE.b		; 00 FE
	eor $51.b,X		; 55 51
	inc $0E02.w,X		; FE 02 0E
	tsb $033C.w		; 0C 3C 03
	brk $C2.b		; 00 C2
	brk $FE.b		; 00 FE
	cpy $FE.b		; C4 FE
	inc $48F4.w,X		; FE F4 48
	sta [$1A.b]		; 87 1A
	eor $403820.l		; 4F 20 38 40
	eor [$40.b],Y		; 57 40
	rti		; 40

	sbc ($4F.b),Y		; F1 4F
	sbc ($B0.b,S),Y		; F3 B0
	adc $C62A.w,X		; 7D 2A C6
	pha		; 48
	beq  11.b		; F0 0B
	bpl -16.b		; 10 F0
	tsb $1C.b		; 04 1C
	cpy #$01.b		; C0 01
	cmp #$FD.b		; C9 FD
	tay		; A8
	brk $86.b		; 00 86
	sbc [$FC.b],Y		; F7 FC
	cli		; 58
	sbc [$06.b],Y		; F7 06
	sbc ($BE.b,S),Y		; F3 BE
	eor [$00.b],Y		; 57 00
	bra  16.b		; 80 10
	clc		; 18
	clc		; 18
	stz $06E9.w,X		; 9E E9 06
	inc $EB.b,X		; F6 EB
	jmp ($30F8.w,X)		; 7C F8 30
	inc $00F0.w,X		; FE F0 00
	phd		; 0B
	cop $0C.b		; 02 0C
	jsr ($0508.w,X)		; FC 08 05
	brk $5F.b		; 00 5F
	jmp ($CBBE.w,X)		; 7C BE CB
	and #$00.b		; 29 00
	ora $F1F6.w,X		; 1D F6 F1
	sbc ($FF.b)		; F2 FF
	ldy $FCFF.w,X		; BC FF FC
	clc		; 18
	ldx #$85.b		; A2 85
	eor ($74.b,S),Y		; 53 74
	ora $992E80.l		; 0F 80 2E 99
	ora [$FF.b]		; 07 FF
	adc $4C.b,S		; 63 4C
	cop $46.b		; 02 46
	eor ($0C.b,X)		; 41 0C
	tsb $00BB.w		; 0C BB 00
	dec $FA00.w,X		; DE 00 FA
	jsr ($A3FE.w,X)		; FC FE A3
	clv		; B8
	pea $3FF1.w		; F4 F1 3F
	cld		; D8
	sty $F1.b,X		; 94 F1
	cmp $03.b,X		; D5 03
	ora $00.b,S		; 03 00
	rti		; 40

.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	sbc $FA73B2.l,X		; FF B2 73 FA
	sbc $FEFFEA.l,X		; FF EA FF FE
	sbc $08E9.w		; ED E9 08
	tya		; 98
	sty $48.b		; 84 48
	lsr $A4.b		; 46 A4
	lda $CE.b,S		; A3 CE
	cmp #$686B.w		; C9 6B 68
	sbc $3C353F.l,X		; FF 3F 35 3C
	sei		; 78
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $9F.b		; 00 9F
	brk $4F.b		; 00 4F
	brk $37.b		; 00 37
	brk $17.b		; 00 17
	inc $D6FF.w,X		; FE FF D6
	ldx $86.b,Y		; B6 86
	lsr $C6.b,X		; 56 C6
	and $67.b		; 25 67
	jmp $243F.w		; 4C 3F 24
	ora $488F10.l,X		; 1F 10 8F 48
	adc $94C7FC.l,X		; 7F FC C7 94
	eor ($79.b,S),Y		; 53 79
	brk $B9.b		; 00 B9
	brk $58.b		; 00 58
	pla		; 68
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	sbc $EF00BE.l,X		; FF BE 00 EF
	brk $D5.b		; 00 D5
	tsb $64.b		; 04 64
	trb $66.b		; 14 66
	asl $A6.b,X		; 16 A6
	stz $CF57.w,X		; 9E 57 CF
	php		; 08
	inc $FF.b		; E6 FF
	eor ($18.b,X)		; 41 18
	sty $18.b,X		; 94 18
	asl $DB.b,X		; 16 DB
	brk $FB.b		; 00 FB
	brk $F9.b		; 00 F9
	brk $DA.b		; 00 DA
	ldy $E2.b		; A4 E2
	sbc $EAFCF0.l,X		; FF F0 FC EA
	and $2B.b,S		; 23 2B
	tsb $4E.b		; 04 4E
	tsb $131C.w		; 0C 1C 13
	lda $21.b,X		; B5 21
	ora ($03.b,X)		; 01 03
	beq -120.b		; F0 88
	asl $85.b		; 06 85
	brk $2B.b		; 00 2B
	brk $4E.b		; 00 4E
	inc $88.b		; E6 88
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	ldy $F1.b		; A4 F1
	cmp [$E1.b],Y		; D7 E1
	asl $C0.b		; 06 C0
	and $80E060.l		; 2F 60 E0 80
	bra  32.b		; 80 20
	lda ($E4.b),Y		; B1 E4
	sbc ($63.b,X)		; E1 63
	cpx $BC30.w		; EC 30 BC
	pla		; 68
	php		; 08
	bra   0.b		; 80 00
	lda ($FE.b),Y		; B1 FE
	sbc ($F1.b),Y		; F1 F1
	rol A		; 2A
	sbc $7F.b,X		; F5 7F
	mvn $6C,$55		; 54 55 6C
	ora $E8.b		; 05 E8
	asl A		; 0A
	sbc $E00AF8.l,X		; FF F8 0A E0
	jsr ($FCFE.w,X)		; FC FE FC
	plp		; 28
	sed		; F8
	phd		; 0B
	phx		; DA
	sed		; F8
	ora [$1F.b],Y		; 17 1F
	ror $F8E0.w,X		; 7E E0 F8
	and $600101.l		; 2F 01 01 60
	rts		; 60

	ror $8B.b		; 66 8B
	phb		; 8B
	sta $95.b,X		; 95 95
	bcc -112.b		; 90 90
	clc		; 18
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	bpl  16.b		; 10 10
	ply		; 7A
	rts		; 60

	ror $8B.b		; 66 8B
	sta $950410.l		; 8F 10 04 95
	php		; 08
	bcc   8.b		; 90 08
	sbc ($F4.b),Y		; F1 F4
	cpy #$FE.b		; C0 FE
	ora $2626E0.l,X		; 1F E0 26 26
	ora $03.b,S		; 03 03
	sta ($91.b),Y		; 91 91
	sec		; 38
	sec		; 38
	tsb $040C.w		; 0C 0C 04
	tsb $20.b		; 04 20
	inc $E0E4.w,X		; FE E4 E0
	rol $76.b		; 26 76
	sta ($60.b),Y		; 91 60
	sec		; 38
	cpy #$0C.b		; C0 0C
	plx		; FA
	and $E1D180.l,X		; 3F 80 D1 E1
	sty $1EF3.w		; 8C F3 1E
	asl $28.b		; 06 28
	brk $14.b		; 00 14
	trb $56.b		; 14 56
	bvc  25.b		; 50 19
	ora ($FF.b),Y		; 11 FF
	cmp $060EEF.l,X		; DF EF 0E 06
	and $7800.w,Y		; 39 00 78
	trb $CB.b		; 14 CB
	bvc -113.b		; 50 8F
	ora ($8C.b),Y		; 11 8C
	ply		; 7A
	sbc $53.b,X		; F5 53
	and ($20.b,X)		; 21 20
	php		; 08
	php		; 08
	cpy $EC.b		; C4 EC
	beq  -4.b		; F0 FC
	sbc ($18.b),Y		; F1 18
.ACCU 16
.INDEX 16
	rep #$FA		; C2 FA
	sbc ($F8.b),Y		; F1 F8
	cpy #$7F8C.w		; C0 8C 7F
.ACCU 8
.INDEX 8
	sep #$BB		; E2 BB
	sbc #$10.b		; E9 10
	rol $BF02.w,X		; 3E 02 BF
	.db $82, $23, $12		; 82 23 12
	tsa		; 3B
	jsr $407A.w		; 20 7A 40
	phx		; DA
	adc ($DF.b,S),Y		; 73 DF
	jmp $E1FEE1.l		; 5C E1 FE E1
	ora $51.b,X		; 15 51
	cmp $EA5A.w,Y		; D9 5A EA
	cop $2B.b		; 02 2B
	bpl  55.b		; 10 37
	and #$E9.b		; 29 E9
	bit $E3.b		; 24 E3
	ldy #$F4.b		; A0 F4
	inc $14EA.w		; EE EA 14
	plp		; 28
	sbc $FF.b		; E5 FF
	bcc -128.b		; 90 80
	php		; 08
	sbc $A0180F.l,X		; FF 0F 18 A0
	clv		; B8
	sta ($89.b),Y		; 91 89
	jsl $5C22AF.l		; 22 AF 22 5C
	txy		; 9B
	sty $11.b		; 84 11
	and ($FF.b)		; 32 FF
	and $91D9.w		; 2D D9 91
	brk $5D.b		; 00 5D
	brk $7E.b		; 00 7E
	brk $DC.b		; 00 DC
	brk $EE.b		; 00 EE
	tax		; AA
	sbc ($0F.b),Y		; F1 0F
	pld		; 2B
	sbc #$C0.b		; E9 C0
	pld		; 2B
	mvp $13,$FC		; 44 FC 13
	tas		; 1B
	phd		; 0B
	ora $DADAA4.l		; 0F A4 DA DA
	cpx $7C28.w		; EC 28 7C
	tad		; 5B
	inc $9ADA.w,X		; FE DA 9A
	nop		; EA
	sbc $0D1E1A.l,X		; FF 1A 1E 0D
	ora $FFD004.l		; 0F 04 D0 FF
	sbc $83.b,X		; F5 83
	sbc [$7A.b],Y		; F7 7A
	beq  15.b		; F0 0F
	nop		; EA
	ora #$6D.b		; 09 6D
	tsb $86B6.w		; 0C B6 86
	eor [$C7.b],Y		; 57 C7
	ora $E323AE.l,X		; 1F AE 23 E3
	and $0C39.w,Y		; 39 39 0C
	tsb $F7C0.w		; 0C C0 F7
	brk $F3.b		; 00 F3
	cop $F5.b		; 02 F5
	sbc $EC98FF.l,X		; FF FF 98 EC
	php		; 08
	stx $14.b,Y		; 96 14
	sbc ($9C.b)		; F2 9C
	rtl		; 6B

	phy		; 5A
	and #$BE.b		; 29 BE
	sta $CCDD.w		; 8D DD CC
	dec $E6CE.w		; CE CE E6
	ora $E8.b		; 05 E8
	inc $CE.b		; E6 CE
	cpy $DCE9.w		; CC E9 DC
	inc $6473.w,X		; FE 73 64
	cmp $D531.w,Y		; D9 31 D5
	sbc $4E1900.l,X		; FF 00 19 4E
	beq  24.b		; F0 18
.ACCU 16
	rep #$E5		; C2 E5
	plx		; FA
	inc $0420.w,X		; FE 20 04
	pha		; 48
	brk $B0.b		; 00 B0
	bvc 120.b		; 50 78
	cpx #$FE.b		; E0 FE
	ora $E0.b,S		; 03 E0
	beq  -4.b		; F0 FC
	jsr $4C20.w		; 20 20 4C
	pha		; 48
	bcs -80.b		; B0 B0
	sei		; 78
	plp		; 28
	sbc ($C4.b),Y		; F1 C4
	sbc $EF0958.l,X		; FF 58 09 EF
	ora ($20.b,S),Y		; 13 20
	pla		; 68
	lsr $10.b		; 46 10
	sec		; 38
	rts		; 60

	adc ($E9.b,X)		; 61 E9
	sbc $F0F0C8.l,X		; FF C8 F0 F0
	bpl  16.b		; 10 10
	and ($20.b,S),Y		; 33 20
	ror $3806.w		; 6E 06 38
	plp		; 28
	adc ($01.b,X)		; 61 01
	eor $F8.b,X		; 55 F8
	sed		; F8
	bmi -32.b		; 30 E0
	inx		; E8
	phd		; 0B
	cop $F0.b		; 02 F0
	ora ($E0.b,S),Y		; 13 E0
	sed		; F8
	ora $26262C.l,X		; 1F 2C 26 26
	pha		; 48
	pha		; 48
	adc $9090F8.l,X		; 7F F8 90 90
	rep #$C2		; C2 C2
	lda ($B3.b,S),Y		; B3 B3
	and ($21.b,X)		; 21 21
	dey		; 88
	tsb $2603.w		; 0C 03 26
	ora $0FBF.w,Y		; 19 BF 0F
	pha		; 48
	jsr $4890.w		; 20 90 48
.INDEX 16
	rep #$10		; C2 10
	lda ($3C.b,S),Y		; B3 3C
	sbc #$0020.w		; E9 20 00
	sty $84.b		; 84 84
	bmi  -4.b		; 30 FC
.ACCU 8
.INDEX 8
	sep #$76		; E2 76
	rts		; 60

	rts		; 60

	cpx $61.b		; E4 61
	adc ($C3.b,X)		; 61 C3
	cmp $0E.b,S		; C3 0E
	adc $840EBC.l,X		; 7F BC 0E 84
	brk $48.b		; 00 48
	sty $B0.b		; 84 B0
	pha		; 48
	rts		; 60

	cpx $61.b		; E4 61
	brk $C3.b		; 00 C3
	beq   2.b		; F0 02
	brk $E9.b		; 00 E9
	sbc $410405.l,X		; FF 05 04 41
	eor ($82.b,X)		; 41 82
	cmp ($F8.b)		; D2 F8
	cpx #$11.b		; E0 11
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	tya		; 98
	tsb $D3.b		; 04 D3
	sbc ($4E.b),Y		; F1 4E
	cmp [$F0.b]		; C7 F0
	tsb $04.b		; 04 04
	eor $F1.b,S		; 43 F1
	ldx #$A082.w		; A2 82 A0
	plx		; FA
	sbc $80C087.l		; EF 87 C0 80
.ACCU 8
	sep #$22		; E2 22
	sty $EA11.w		; 8C 11 EA
	brk $82.b		; 00 82
	stz $00.b		; 64 00
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	lda $628000.l		; AF 00 80 62
	jsl $D40CC4.l		; 22 C4 0C D4
	wai		; CB
	brk $F0.b		; 00 F0
	brk $4D.b		; 00 4D
	ora [$00.b]		; 07 00
	sbc $FB04FC.l,X		; FF FC 04 FB
	rti		; 40

	brk $A0.b		; 00 A0
	sbc $30C7.w,X		; FD C7 30
	sbc $010EF8.l,X		; FF F8 0E 01
	ora ($FB.b,X)		; 01 FB
	jsr $51FF.w		; 20 FF 51
	cmp $0800.w,Y		; D9 00 08
	jsr ($F1F8.w,X)		; FC F8 F1
	inx		; E8
	inc $8FFE.w,X		; FE FE 8F
	sbc $FF.b,X		; F5 FF
	jsr ($1212.w,X)		; FC 12 12
	rti		; 40

	rti		; 40

	cpx #$A0.b		; E0 A0
	.db $42, $42		; 42 42
	bpl  16.b		; 10 10
	trb $BB0B.w		; 1C 0B BB
	tsx		; BA
	ldy #$B8.b		; A0 B8
	lda ($C0.b,X)		; A1 C0
	sbc $E200F0.l,X		; FF F0 00 E2
	jsr ($A1A1.w,X)		; FC A1 A1
	phk		; 4B
	asl A		; 0A
	jsr ($590B.w,X)		; FC 0B 59
	sed		; F8
	pha		; 48
	pha		; 48
	txs		; 9A
	jsr ($F1FE.w,X)		; FC FE F1
	plx		; FA
	sbc $AC0FF8.l,X		; FF F8 0F AC
	sbc $EB08BD.l,X		; FF BD 08 EB
	sed		; F8
	bpl  -1.b		; 10 FF
	sbc $3030.w,X		; FD 30 30
	cli		; 58
	sei		; 78
	cpy $74.b		; C4 74
	sec		; 38
	cop $FC.b		; 02 FC
	iny		; C8
	cpx $0BF8.w		; EC F8 0B
	cmp ($8F.b,S),Y		; D3 8F
	tas		; 1B
	tas		; 1B
	asl $1E.b,X		; 16 1E
	ora $FF.b,X		; 15 FF
	sbc $2234.w,Y		; F9 34 22
	bmi  38.b		; 30 26
	jsr $6024.w		; 20 24 60
	pha		; 48
	rti		; 40

	eor $AB.b		; 45 AB
	asl A		; 0A
	brk $C3.b		; 00 C3
	eor $0C.b,S		; 43 0C
	brk $19.b		; 00 19
	inc $00.b		; E6 00
	and [$00.b],Y		; 37 00
	rol $02F3.w,X		; 3E F3 02
	sei		; 78
	sed		; F8
	sbc ($38.b,S),Y		; F3 38
	sec		; 38
	rts		; 60

	rts		; 60

	sbc [$23.b],Y		; F7 23
	ora $CE.b,S		; 03 CE
	asl $C74C.w		; 0E 4C C7
	sty $5E.b		; 84 5E
	sbc $8000C0.l,X		; FF C0 00 80
	plx		; FA
	ldx $D8.b		; A6 D8
	sec		; 38
	lda [$FD.b],Y		; B7 FD
	bra  -2.b		; 80 FE
	bpl  -2.b		; 10 FE
	bcc -120.b		; 90 88
	sed		; F8
	ora $0EAF85.l		; 0F 85 AF 0E
	asl $F3FE.w		; 0E FE F3
	bne -64.b		; D0 C0
	bvs 112.b		; 70 70
	ora $FCF41F.l,X		; 1F 1F F4 FC
	and $F8FF16.l		; 2F 16 FF F8
	ora $FEF8.w		; 0D F8 FE
	brk $03.b		; 00 03
	cmp $F4.b,X		; D5 F4
	phx		; DA
	sed		; F8
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $81D1A0.l		; 0F A0 D1 81
	sbc $FCF598.l,X		; FF 98 F5 FC
	bra 123.b		; 80 7B
	sbc $9110F8.l,X		; FF F8 10 91
	bvs  32.b		; 70 20
	and ($08.b,X)		; 21 08
	ora [$06.b]		; 07 06
	cop $06.b		; 02 06
	ora $B650.w		; 0D 50 B6
	sbc $F8FF.w,X		; FD FF F8
	asl A		; 0A
	bra  89.b		; 80 59
	eor $62.b,X		; 55 62
	sbc $F1.b		; E5 F1
	tay		; A8
	cmp $26.b,S		; C3 26
	jsl $09F082.l		; 22 82 F0 09
	sbc $3F0DF8.l,X		; FF F8 0D 3F
	and $0F3EE7.l,X		; 3F E7 3E 0F
	rol $7D01.w		; 2E 01 7D
	ora $01.b,S		; 03 01
	adc $FDEFFE.l,X		; 7F FE EF FD
	and $FDFF7F.l,X		; 3F 7F FF FD
	sbc $F11F.w,X		; FD 1F F1
	sei		; 78
	pea $DCFC.w		; F4 FC DC
	inc $FCFC.w,X		; FE FC FC
	inc $FFFF.w		; EE FF FF
	inc $0430.w,X		; FE 30 04
	mvn $CC,$FF		; 54 FF CC
	sbc $FE.b,X		; F5 FE
	inc $8F84.w,X		; FE 84 8F
	sbc $42FFEF.l,X		; FF EF FF 42
	brk $05.b		; 00 05
	cop $28.b		; 02 28
	cpy #$5C.b		; C0 5C
	ror $F8FF.w,X		; 7E FF F8
	ora $0E.b,X		; 15 0E
	ror A		; 6A
	ora ($AB.b,X)		; 01 AB
	tda		; 7B
	and ($20.b,X)		; 21 20
	adc ($0F.b),Y		; 71 0F
	sbc ($20.b)		; F2 20
	pea $F87B.w		; F4 7B F8
	ora $8EC484.l		; 0F 84 C4 8E
	sbc ($0A.b),Y		; F1 0A
	bit $20.b		; 24 20
	bpl  32.b		; 10 20
	jsr ($FEDE.w,X)		; FC DE FE
	xce		; FB
	inc $D31F.w,X		; FE 1F D3
	beq  -6.b		; F0 FA
	sbc $242222.l,X		; FF 22 22 24
	trb $8814.w		; 1C 14 88
	cpy #$58.b		; C0 58
	dey		; 88
	sed		; F8
	and ($FF.b)		; 32 FF
	trb $46.b		; 14 46
	sbc ($90.b),Y		; F1 90
	inc $A0FC.w,X		; FE FC A0
	sbc $40FE.w,X		; FD FE 40
	and $23.b,S		; 23 23
	ora $04.b		; 05 04
	ora [$37.b]		; 07 37
	dec $04.b		; C6 04
	phb		; 8B
	dey		; 88
	ora $03F700.l		; 0F 00 F7 03
	inc $FE07.w,X		; FE 07 FE
	sbc $8A4227.l,X		; FF 27 42 8A
	cpy $F404.w		; CC 04 F4
	pea $0C78.w		; F4 78 0C
	sbc $FE05.w,Y		; F9 05 FE
	cop $FE.b		; 02 FE
	brk $F8.b		; 00 F8
	ldy $FE52.w		; AC 52 FE
	sbc ($00.b)		; F2 00
	plx		; FA
	brk $FC.b		; 00 FC
	sbc $2DFEFD.l,X		; FF FD FE 2D
	brk $B8.b		; 00 B8
	jsr $70DB.w		; 20 DB 70
	ldx $3F50.w,Y		; BE 50 3F
	bne -82.b		; D0 AE
	sbc $BCD0A5.l,X		; FF A5 D0 BC
	cpy #$BF.b		; C0 BF
	cpy #$7E.b		; C0 7E
	brk $5F.b		; 00 5F
	brk $0F.b		; 00 0F
	inc $0AF8.w,X		; FE F8 0A
	rol $FF82.w,X		; 3E 82 FF
	adc ($AA.b,S),Y		; 73 AA
	sbc ($87.b),Y		; F1 87
	sbc $EA.b		; E5 EA
	cmp ($01.b,X)		; C1 01
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	sty $1C03.w		; 8C 03 1C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	inc $00F8.w		; EE F8 00
	inc $C03E.w,X		; FE 3E C0
	plx		; FA
	bcc  96.b		; 90 60
	rts		; 60

	rti		; 40

	rti		; 40

	lsr $4446.w,X		; 5E 46 44
	cmp [$2F.b],Y		; D7 2F
	mvp $42,$42		; 44 42 42
	and ($72.b,X)		; 21 72
	sbc ($5C.b),Y		; F1 5C
	beq  18.b		; F0 12
	jsr $1818.w		; 20 18 18
	asl $640E.w		; 0E 0E 64
	beq  17.b		; F0 11
	ora $3A.b		; 05 3A
	sbc $A31718.l,X		; FF 18 17 A3
	rts		; 60

	php		; 08
	bpl 110.b		; 10 6E
	plb		; AB
	plx		; FA
	jsr $B80C.w		; 20 0C B8
	beq  18.b		; F0 12
	.db $62, $24, $ED		; 62 24 ED
	tsb $E80E.w		; 0C 0E E8
	ora ($FF.b)		; 12 FF
	sbc ($00.b,S),Y		; F3 00
	and $F101.w,X		; 3D 01 F1
	ora #$FE.b		; 09 FE
	ora $7E.b		; 05 7E
	beq  22.b		; F0 16
	tsb $20.b		; 04 20
	ora ($F6.b)		; 12 F6
	ora ($C6.b)		; 12 C6
	jsr $F05D.w		; 20 5D F0
	asl $03.b,X		; 16 03
	adc $F13A03.l,X		; 7F 03 3A F1
	sbc $F8CA90.l,X		; FF 90 CA F8
	inc $F8FF.w,X		; FE FF F8
	bpl  26.b		; 10 1A
	sbc ($FF.b,S),Y		; F3 FF
	sed		; F8
	ora $AD18.w,Y		; 19 18 AD
	cpy $7DBB.w		; CC BB 7D
	inc $E9C1.w,X		; FE C1 E9
	ora ($E8.b,X)		; 01 E8
	inc $0B12.w,X		; FE 12 0B
	cpy #$EE.b		; C0 EE
	tyx		; BB
	sbc $FFB8.w,X		; FD B8 FF
	lda $F8.b		; A5 F8
	ora $02F7.w		; 0D F7 02
	sbc $1F0707.l,X		; FF 07 07 1F
	inc $00F2.w,X		; FE F2 00
	and $E99500.l,X		; 3F 00 95 E9
	sbc $F50C.w,X		; FD 0C F5
	inc $0007.w,X		; FE 07 00
	sbc $E97F1F.l		; EF 1F 7F E9
	ror $EFED.w,X		; 7E ED EF
	sbc ($FF.b,X)		; E1 FF
	sta [$F7.b]		; 87 F7
	sbc $5F1E2F.l		; EF 2F 1E 5F
	and $BF3FDF.l,X		; 3F DF 3F BF
	adc $FEFF3F.l,X		; 7F 3F FF FE
	pla		; 68
	ora $FFFE1E.l,X		; 1F 1E FE FF
	sed		; F8
	phd		; 0B
	brk $FE.b		; 00 FE
	sbc $AAAA55.l,X		; FF 55 AA AA
	eor $04.b,X		; 55 04
	sbc $54FC.w,X		; FD FC 54
	sed		; F8
	tas		; 1B
	adc ($71.b,S),Y		; 73 71
	sbc $F8FF.w,X		; FD FF F8
	asl A		; 0A
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	sbc [$FF.b],Y		; F7 FF
	adc ($73.b,S),Y		; 73 73
	jsr $8530.w		; 20 30 85
	sbc #$62.b		; E9 62
	tsb $63.b		; 04 63
	.db $82, $B1, $00		; 82 B1 00
	ora ($34.b,X)		; 01 34
	and [$14.b],Y		; 37 14
	cmp $FF.b,S		; C3 FF
	adc [$37.b],Y		; 77 37
	and [$68.b],Y		; 37 68
	adc [$67.b]		; 67 67
	sbc [$E7.b]		; E7 E7
	adc ($F3.b,S),Y		; 73 F3
	php		; 08
	php		; 08
	sei		; 78
	sbc $B888FF.l,X		; FF FF 88 B8
	cpy #$BC.b		; C0 BC
	cpy #$78.b		; C0 78
	jmp ($7870.w,X)		; 7C 70 78
	cpx #$F9.b		; E0 F9
	cpy #$E1.b		; C0 E1
	beq  -8.b		; F0 F8
	pea $7E11.w		; F4 11 7E
	jsr ($FE7C.w,X)		; FC 7C FE
	sbc $F9F8F8.l,X		; FF F8 F8 F9
	sbc $E1E1.w,Y		; F9 E1 E1
	ora $F0B544.l,X		; 1F 44 B5 F0
	asl A		; 0A
	ora [$01.b]		; 07 01
	ora $F14201.l		; 0F 01 42 F1
	sed		; F8
	ora #$26.b		; 09 26
	sbc $FC24DF.l,X		; FF DF 24 FC
	tsb $1206.w		; 0C 06 12
	cop $0C.b		; 02 0C
	tsb $8080.w		; 0C 80 80
	.db $82, $81, $87		; 82 81 87
	cpy #$EC.b		; C0 EC
	jmp.w [$8787]		; DC 87 87
	asl $121E.w,X		; 1E 1E 12
	asl $83F0.w,X		; 1E F0 83
	sta $CF.b,S		; 83 CF
	cmp $1F7FE8.l		; CF E8 7F 1F
	asl $1E0F.w,X		; 1E 0F 1E
	asl $0E.b		; 06 0E
	asl $0C.b		; 06 0C
	asl $F570.w		; 0E 70 F5
	ora $1A1F11.l		; 0F 11 1F 1A
	nop		; EA
	sta $E1.b,S		; 83 E1
	asl $E9D0.w,X		; 1E D0 E9
	ora $0202F7.l,X		; 1F F7 02 02
	ora [$03.b]		; 07 03
	lda $00.b,S		; A3 00
	ora ($C7.b,X)		; 01 C7
	inc $50.b		; E6 50
	eor $A304.w		; 4D 04 A3
	trb $EF04.w		; 1C 04 EF
	lda [$E0.b],Y		; B7 E0
	tsb $040C.w		; 0C 0C 04
	ldx $F0.b,Y		; B6 F0
	sed		; F8
	tsb $26F2.w		; 0C F2 26
	and $F0.b,S		; 23 F0
	jsr $E08C.w		; 20 8C E0
	ora #$02.b		; 09 02
	rep #$80		; C2 80
	bcs  -3.b		; B0 FD
	cpx $FEC4.w		; EC C4 FE
	ldx $03.b		; A6 03
	trb $BB.b		; 14 BB
	pld		; 2B
	inc $0DF8.w,X		; FE F8 0D
	ora [$18.b]		; 07 18
	inc $0DF8.w,X		; FE F8 0D
	cpy #$28.b		; C0 28
	inc $0DF8.w,X		; FE F8 0D
	cpx #$18.b		; E0 18
	inc $0DF8.w,X		; FE F8 0D
	adc #$FE.b		; 69 FE
	mvp $16,$10		; 44 10 16
	ora $466AFF.l		; 0F FF 6A 46
	sbc ($10.b)		; F2 10
	ldy $08FF.w		; AC FF 08
	inc $E2C1.w,X		; FE C1 E2
	ora [$C8.b]		; 07 C8
	cmp $EA21.w,Y		; D9 21 EA
	sbc $FF78FC.l,X		; FF FC 78 FF
	bcs  -1.b		; B0 FF
	tsb $EFF2.w		; 0C F2 EF
	jsr ($FFF8.w,X)		; FC F8 FF
	ora $78F8.w,X		; 1D F8 78
	sed		; F8
	bvs -16.b		; 70 F0
	eor $7F.b,X		; 55 7F
	tax		; AA
	adc $F37655.l,X		; 7F 55 76 F3
	tax		; AA
	sbc $F88354.l,X		; FF 54 83 F8
	eor ($F0.b,X)		; 41 F0
	ora ($4E.b),Y		; 11 4E
	sbc ($4A.b)		; F2 4A
	beq  17.b		; F0 11
	sbc $AA09F8.l,X		; FF F8 09 AA
	lda $C982F4.l,X		; BF F4 82 C9
	xba		; EB
	inc $002A.w,X		; FE 2A 00
	ora $00.b,X		; 15 00
	sty $E8.b		; 84 E8
	phd		; 0B
	sbc $BABACE.l,X		; FF CE BA BA
	sbc #$0A.b		; E9 0A
	pea $BF7F.w		; F4 7F BF
	inc $E9BD.w,X		; FE BD E9
	sbc $C10EF8.l,X		; FF F8 0E C1
	bne  31.b		; D0 1F
	stx $38.b		; 86 38
	sbc ($30.b,X)		; E1 30
	cpx #$70.b		; E0 70
	cmp ($E2.b,S),Y		; D3 E2
	mvp $03,$0F		; 44 0F 03
	sbc $318787.l,X		; FF 87 87 31
	sbc ($E0.b),Y		; F1 E0
	cpx #$66.b		; E0 66
	beq -16.b		; F0 F0
	sbc ($F3.b),Y		; F1 F3
	mvp $FF,$FD		; 44 FD FF
	tsb $4E0F.w		; 0C 0F 4E
	cmp ($80.b),Y		; D1 80
	ora ($10.b),Y		; 11 10
	bpl   4.b		; 10 04
	brk $08.b		; 00 08
	sta ($01.b,X)		; 81 01
	cmp ($01.b,X)		; C1 01
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	and $C0C3E0.l,X		; 3F E0 C3 C0
	sta ($81.b,X)		; 81 81
	ora $1C1D.w		; 0D 1D 1C
	trb $0808.w		; 1C 08 08
	cpy #$E2C1.w		; C0 C1 E2
	sbc $0C.b,S		; E3 0C
	brk $FF.b		; 00 FF
	cmp $CACECF.l		; CF CF CE CA
	brk $00.b		; 00 00
	dec $C2.b		; C6 C2
	ldx $00BA.w,Y		; BE BA 00
	brk $B6.b		; 00 B6
	lda ($CE.b)		; B2 CE
	dex		; CA
	brk $00.b		; 00 00
	dec $C2.b		; C6 C2
	ldx $00BA.w,Y		; BE BA 00
	brk $B6.b		; 00 B6
	lda ($CE.b)		; B2 CE
	dex		; CA
	brk $00.b		; 00 00
	dec $C2.b		; C6 C2
	ldx $00BA.w,Y		; BE BA 00
	brk $B6.b		; 00 B6
	lda ($CE.b)		; B2 CE
	dex		; CA
	rts		; 60

	bra -58.b		; 80 C6
.ACCU 16
	rep #$2C		; C2 2C
	cmp $B61C.w,Y		; D9 1C B6
	lda ($5F.b)		; B2 5F
	sta $281418.l		; 8F 18 14 28
	php		; 08
	sec		; 38
	clc		; 18
	bvs -15.b		; 70 F1
	adc $2CF5.w		; 6D F5 2C
	bit $2838.w,X		; 3C 38 28
	jsr ($F2FF.w,X)		; FC FF F2
	jmp $E0FFF7.l		; 5C F7 FF E0
	bra -128.b		; 80 80
	ldy #$A560.w		; A0 60 A5
	ora ($60.b,X)		; 01 60
	cpy #$EBC4.w		; C0 C4 EB
	sbc $FEE060.l,X		; FF 60 E0 FE
	mvp $FF,$04		; 44 04 FF
	beq  -8.b		; F0 F8
	ora #$D2D7.w		; 09 D7 D2
	tsx		; BA
	brk $89.b		; 00 89
	ldx $B2.b,Y		; B6 B2
	tsb $B0F4.w		; 0C F4 B0
	rti		; 40

	brk $B8.b		; 00 B8
	lda ($84.b)		; B2 84
	cpy $BEC2.w		; CC C2 BE
	bmi -112.b		; 30 90
	tsx		; BA
	mvp $C0,$CF		; 44 CF C0
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	inc $B2EE.w		; EE EE B2
	xba		; EB
	brk $F0.b		; 00 F0
	rol $2C0B.w,X		; 3E 0B 2C
	inc $0DF8.w,X		; FE F8 0D
	ora $F8FE30.l		; 0F 30 FE F8
	ora $34D0.w		; 0D D0 34
	inc $0DF8.w,X		; FE F8 0D
	beq -18.b		; F0 EE
	inc $FE0C.w		; EE 0C FE
	sed		; F8
	ora $5817.w		; 0D 17 58
	inc $0DF8.w,X		; FE F8 0D
	ora $F8FE60.l,X		; 1F 60 FE F8
	ora $1AE8.w		; 0D E8 1A
	inc $0DF8.w,X		; FE F8 0D
	sed		; F8
	inc $06EE.w		; EE EE 06
	inc $0DF8.w,X		; FE F8 0D
	eor [$98.b],Y		; 57 98
	inc $0DF8.w,X		; FE F8 0D
	ora $F8FEE0.l,X		; 1F E0 FE F8
	ora $19EA.w		; 0D EA 19
	inc $0DF8.w,X		; FE F8 0D
	sed		; F8
	ldx $07EE.w		; AE EE 07
	inc $0DF8.w,X		; FE F8 0D
	ora ($02.b,X)		; 01 02
	inc $0DF8.w,X		; FE F8 0D
	cmp [$CB.b]		; C7 CB
	inc $0AF8.w,X		; FE F8 0A
	eor $F8FE70.l		; 4F 70 FE F8
	ora $AE7F.w		; 0D 7F AE
	clv		; B8
	bra  -2.b		; 80 FE
	sed		; F8
	ora $0804.w		; 0D 04 08
	inc $0DF8.w,X		; FE F8 0D
	cmp $C8.b,S		; C3 C8
	tsb $CFFE.w		; 0C FE CF
	beq -14.b		; F0 F2
	ldx $F8FE.w		; AE FE F8
	ora $D84F.w		; 0D 4F D8
	asl A		; 0A
	inc $2313.w,X		; FE 13 23
	inc $0DF8.w,X		; FE F8 0D
	ora $3C.b,S		; 03 3C
	inc $0DF8.w,X		; FE F8 0D
	nop		; EA
	tsx		; BA
	bmi  -8.b		; 30 F8
	ora $0FF8C0.l		; 0F C0 F8 0F
	sbc $F8FEC4.l,X		; FF C4 FE F8
	ora $1F9A.w,Y		; 19 9A 1F
	inc $0DF8.w,X		; FE F8 0D
	bcs  -8.b		; B0 F8
	ora $AEA05F.l		; 0F 5F A0 AE
	tax		; AA
	inc $0DF8.w,X		; FE F8 0D
	ldy #$0FF8.w		; A0 F8 0F
	plx		; FA
	ora $FE.b		; 05 FE
	sed		; F8
	ora $F8E0.w		; 0D E0 F8
	ora $FCF000.l		; 0F 00 F0 FC
	brk $F0.b		; 00 F0
	jsr ($FCFE.w,X)		; FC FE FC
	xba		; EB
	tsx		; BA
	brk $F8.b		; 00 F8
	ora $FEFDD2.l,X		; 1F D2 FD FE
	sed		; F8
	ora $F8C0.w		; 0D C0 F8
	ora $FE40BF.l		; 0F BF 40 FE
	sed		; F8
	ora $F8E0.w		; 0D E0 F8
	ora $EE02FD.l		; 0F FD 02 EE
	ldx $F8FE.w		; AE FE F8
	ora $F8E0.w		; 0D E0 F8
	ora $FE8F4D.l		; 0F 4D 8F FE
	sed		; F8
	ora $F00F.w		; 0D 0F F0
	inc $0DF8.w,X		; FE F8 0D
	asl $E9.b,X		; 16 E9
	inc $0DF8.w,X		; FE F8 0D
	plx		; FA
	pld		; 2B
	cpy #$0FF8.w		; C0 F8 0F
	inc $3FF8.w,X		; FE F8 3F
	txs		; 9A
	lda [$03.b]		; A7 03
	ora $1F.b,S		; 03 1F
	ora ($70.b,S),Y		; 13 70
	eor $96D36C.l,X		; 5F 6C D3 96
	ldx $0C.b,Y		; B6 0C
	brk $01.b		; 00 01
	and $EAEE00.l,X		; 3F 00 EE EA
	ldy #$E6A0.w		; A0 A0 E6
.INDEX 8
	sep #$1A		; E2 1A
	txs		; 9A
	bit $9A.b,X		; 34 9A
	inc $AAAC.w		; EE AC AA
	inc $3801.w,X		; FE 01 38
	stz $AB20.w		; 9C 20 AB
	cpy #$C0.b		; C0 C0
	sed		; F8
	iny		; C8
	asl $03FA.w		; 0E FA 03
	inc $2AE4.w,X		; FE E4 2A
	plx		; FA
	cop $A1.b		; 02 A1
	cpy #$F0.b		; C0 F0
	ldy #$A9.b		; A0 A9
	stz $5BAA.w,X		; 9E AA 5B
	sta $751A.w,X		; 9D 1A 75
	jmp.w [$AB08]		; DC 08 AB
	asl $98.b		; 06 98
	jmp $FFD3.w		; 4C D3 FF
	sed		; F8
	ora ($C0.b),Y		; 11 C0
	inc $D0.b		; E6 D0
	eor [$FE.b],Y		; 57 FE
	ror $17A0.w,X		; 7E A0 17
	sta $404297.l		; 8F 97 42 40
	mvp $00,$48		; 44 48 00
	tya		; 98
	tsb $A072.w		; 0C 72 A0
	ora #$0555.w		; 09 55 05
	ldx #$AA.b		; A2 AA
	adc $A4AB.w,Y		; 79 AB A4
	sed		; F8
	ora ($4E.b,S),Y		; 13 4E
	bcc  14.b		; 90 0E
	ldx #$A8.b		; A2 A8
	asl $F000.w		; 0E 00 F0
	jsr ($68FE.w,X)		; FC FE 68
	adc $36060F.l,X		; 7F 0F 06 36
	sbc ($30.b),Y		; F1 30
	bit #$18F0.w		; 89 F0 18
	sbc $FEFC.w,X		; FD FC FE
	inc $7E7E.w,X		; FE 7E 7E
	and $7658.w,X		; 3D 58 76
	tsx		; BA
	pea $03AC.w		; F4 AC 03
	sbc $53FE01.l,X		; FF 01 FE 53
	tsx		; BA
	and $D4B1DE.l,X		; 3F DE B1 D4
	rtl		; 6B

	sbc $E4B3F3.l,X		; FF F3 B3 E4
	lda ($78.b),Y		; B1 78
	bmi -96.b		; 30 A0
	rts		; 60

	cmp $E0.b,S		; C3 E0
	ldx $F8.b,Y		; B6 F8
	adc $E451.w,X		; 7D 51 E4
	lda ($F4.b),Y		; B1 F4
	xba		; EB
	cpy #$D0.b		; C0 D0
	bcs -72.b		; B0 B8
	ldy $B9.b,X		; B4 B9
	sbc $B8A98B.l		; EF 8B A9 B8
	lda ($E5.b)		; B2 E5
	bmi -16.b		; 30 F0
	sei		; 78
	iny		; C8
	lda ($7E.b),Y		; B1 7E
	ldy $A8D4.w		; AC D4 A8
	jsl $FEA6A8.l		; 22 A8 A6 FE
	xce		; FB
	jsr ($A09A.w,X)		; FC 9A A0
	asl $FDED.w		; 0E ED FD
	cld		; D8
	.db $82, $D4, $C2		; 82 D4 C2
	sbc $0BA084.l,X		; FF 84 A0 0B
	sbc $FF562A.l,X		; FF 2A 56 FF
	ora [$E1.b]		; 07 E1
	asl A		; 0A
	asl A		; 0A
	ora $05.b		; 05 05
	jsr ($B640.w,X)		; FC 40 B6
	sbc $7F1F15.l,X		; FF 15 1F 7F
	cpy #$0A.b		; C0 0A
	ora $FF0F05.l		; 0F 05 0F FF
	and $F11F7F.l,X		; 3F 7F 1F F1
	sbc $0F8FBF.l		; EF BF 8F 0F
	sta $4F4F8F.l,X		; 9F 8F 4F 4F
	lda $B066A7.l		; AF A7 66 B0
	phd		; 0B
	lda $FF5FFF.l,X		; BF FF 5F FF
	tsb $31.b		; 04 31
	lsr $FD.b,X		; 56 FD
	.db $62, $F8, $5B		; 62 F8 5B
	beq  72.b		; F0 48
	mvn $22,$FF		; 54 FF 22
	ldx $3E.b,Y		; B6 3E
	sbc $EC44C0.l,X		; FF C0 44 EC
	jmp.w [$FFD6]		; DC D6 FF
	trb $5C14.w		; 1C 14 5C
	txa		; 8A
	rti		; 40

	beq  -1.b		; F0 FF
	tsb $B1BA.w		; 0C BA B1
	beq -120.b		; F0 88
	phd		; 0B
	xba		; EB
	ora $2060.w,Y		; 19 60 20
	rti		; 40

	sta ($EB.b,X)		; 81 EB
	php		; 08
	ldx $E0E0.w,Y		; BE E0 E0
	jsr $15F0.w		; 20 F0 15
	rti		; 40

	dec $FFCC.w		; CE CC FF
	sei		; 78
	.db $82, $AE, $EE		; 82 AE EE
	sta $83.b,S		; 83 83
	jmp $61FF86.l		; 5C 86 FF 61
	adc ($3E.b,X)		; 61 3E
	lda #$DED0.w		; A9 D0 DE
	cmp $A5.b,S		; C3 A5
	rts		; 60

	rti		; 40

	ldy #$BE.b		; A0 BE
	rti		; 40

	ora $07.b		; 05 07
	bpl -86.b		; 10 AA
	sbc $A0A02A.l		; EF 2A A0 A0
	jmp.w [$8EB1]		; DC B1 8E
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sta ($CF.b,X)		; 81 CF
	ldy $7F83.w,X		; BC 83 7F
	cop $B8.b		; 02 B8
	ora #$C4.b		; 09 C4
	cpy $FC.b		; C4 FC
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	ora #$2030.w		; 09 30 20
	inx		; E8
	cpx #$7070.w		; E0 70 70
	bvc  40.b		; 50 28
	ror $60F9.w,X		; 7E F9 60
	cmp #$C4B1.w		; C9 B1 C4
	clc		; 18
	sec		; 38
	clc		; 18
	sed		; F8
	bpl -120.b		; 10 88
	lda ($EF.b,X)		; A1 EF
	bvs -108.b		; 70 94
	ora ($A3.b,X)		; 01 A3
	cop $B0.b		; 02 B0
	adc $71.b		; 65 71
	sbc $80BA.w,X		; FD BA 80
	rti		; 40

	rol $82A1.w,X		; 3E A1 82
	cmp $A0A9.w,X		; DD A9 A0
	ldy #$F425.w		; A0 25 F4
	rol $84.b		; 26 84
	stx $B3.b		; 86 B3
	ldx #$05B2.w		; A2 B2 05
	cmp ($5E.b)		; D2 5E
	lda ($62.b),Y		; B1 62
	lda $CA.b		; A5 CA
	beq  94.b		; F0 5E
	lda ($20.b)		; B2 20
	sta ($6E.b,S),Y		; 93 6E
	adc [$24.b],Y		; 77 24
	inc $1DF8.w,X		; FE F8 1D
	bit $FE66.w,X		; 3C 66 FE
	sed		; F8
	asl $FE42.w		; 0E 42 FE
	sed		; F8
	ora $A518.w		; 0D 18 A5
	inc $0DF8.w,X		; FE F8 0D
	bit $05C3.w,X		; 3C C3 05
	brk $FE.b		; 00 FE
	sed		; F8
	ora $F000.w		; 0D 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($FF.b),Y		; F1 FF
	brk $FF.b		; 00 FF
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	phd		; 0B
	ora [$0E.b]		; 07 0E
	ora [$4E.b]		; 07 4E
	ora [$09.b]		; 07 09
	sta $F077AA.l		; 8F AA 77 F0
	sbc $0F0007.l		; EF 07 00 0F
	sbc $7FFEFF.l,X		; FF FF FE 7F
	brk $FF.b		; 00 FF
	ora ($00.b,X)		; 01 00
	sbc ($01.b)		; F2 01
	sta $F937F1.l		; 8F F1 37 F9
	lsr $A5C9.w		; 4E C9 A5
	sta ($0F.b)		; 92 0F
	ora ($8D.b,X)		; 01 8D
	tyx		; BB
	dec $8A.b		; C6 8A
	brk $EF.b		; 00 EF
	sbc ($EA.b,S),Y		; F3 EA
	inc $FEFF.w,X		; FE FF FE
	bmi  -1.b		; 30 FF
	sei		; 78
	sbc $71FF70.l,X		; FF 70 FF 71
	sbc $AB97CB.l,X		; FF CB 97 AB
	rol $AD.b,X		; 36 AD
	bit $FF.b,X		; 34 FF
	and $B43C25.l,X		; 3F 25 3C B4
	lda $DE5F.w,X		; BD 5F DE
	sbc $921E.w		; ED 1E 92
	cmp ($60.b,X)		; C1 60
	sbc $C3FFC1.l,X		; FF C1 FF C3
	asl $FEE1.w,X		; 1E E1 FE
	.db $42, $FF		; 42 FF
	jsr $FEDA.w		; 20 DA FE
	beq  24.b		; F0 18
	sbc $58807F.l,X		; FF 7F 80 58
	ora $9F6FA0.l,X		; 1F A0 6F 9F
	lda ($63.b)		; B2 63
	adc #$D6CE.w		; 69 CE D6
	sta $332D.w,Y		; 99 2D 33
	cpx #$88FC.w		; E0 FC 88
	ora ($FE.b),Y		; 11 FE
	cpy #$1CE8.w		; C0 E8 1C
	ldx $E910.w,Y		; BE 10 E9
	pei ($F6.b)		; D4 F6
	lda $0F0490.l		; AF 90 04 0F
	ora $1E19FF.l,X		; 1F FF 19 1E
	and ($3C.b)		; 32 3C
	adc ($78.b,X)		; 61 78
	beq   1.b		; F0 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $0FFFFF.l		; 0F FF FF 0F
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	adc $AC79.w,Y		; 79 79 AC
	jmp $C020.w		; 4C 20 C0
	pha		; 48
	bcc  81.b		; 90 51
	lda ($A2.b,X)		; A1 A2
	sbc $DC40FF.l,X		; FF FF 40 DC
	brk $60.b		; 00 60
	sec		; 38
	bne -32.b		; D0 E0
	sbc ($FE.b)		; F2 FE
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	beq -15.b		; F0 F1
	sbc [$F9.b],Y		; F7 F9
	sta [$F7.b]		; 87 F7
	inc $A0F6.w,X		; FE F6 A0
	jsr $04F4.w		; 20 F4 04
	and ($21.b,X)		; 21 21
	dex		; CA
	ora $80807E.l,X		; 1F 7E 80 80
	stz $60.b		; 64 60
	cop $30.b		; 02 30
	ldy $C0.b,X		; B4 C0
	cpx #$FCF8.w		; E0 F8 FC
	asl $FC3F.w,X		; 1E 3F FC
	beq  60.b		; F0 3C
	bra -122.b		; 80 86
	inc $03.b		; E6 03
	and ($B4.b,S),Y		; 33 B4
	bpl  24.b		; 10 18
	php		; 08
	brk $07.b		; 00 07
	asl $EAF4.w		; 0E F4 EA
	tsb $07.b		; 04 07
	cop $9A.b		; 02 9A
	sei		; 78
	trb $40FF.w		; 1C FF 40
	jsr $0038.w		; 20 38 00
	beq   0.b		; F0 00
	cpx #$7E11.w		; E0 11 7E
	asl $E7F0.w,X		; 1E F0 E7
	eor ($43.b,X)		; 41 43
	.db $82, $C2, $84		; 82 C2 84
	sty $FC.b		; 84 FC
	sbc ($EE.b,X)		; E1 EE
	brk $04.b		; 00 04
	tsb $1C.b		; 04 1C
	bpl -80.b		; 10 B0
	sed		; F8
	eor $00.b,S		; 43 00
	ora $C260.w,Y		; 19 60 C2
	brk $F0.b		; 00 F0
	tda		; 7B
	adc $B232.w,X		; 7D 32 B2
	ldy $CC4F.w,X		; BC 4F CC
	php		; 08
	bpl  16.b		; 10 10
	nop		; EA
	pea $0604.w		; F4 04 06
	php		; 08
	php		; 08
	ora $F066.w,X		; 1D 66 F0
	brk $F0.b		; 00 F0
	sbc $0600.w,X		; FD 00 06
	pea $0202.w		; F4 02 02
	pea $0828.w		; F4 28 08
	sbc $FCF90C.l,X		; FF 0C F9 FC
	jmp.w [$FEF0]		; DC F0 FE
	rep #$04		; C2 04
	sty $F7.b		; 84 F7
	jsr ($069C.w,X)		; FC 9C 06
	ora [$F4.b]		; 07 F4
	sta $205E91.l		; 8F 91 5E 20
	jsr $4C48.w		; 20 48 4C
	sbc $F084C0.l		; EF C0 84 F0
	ora ($E4.b,X)		; 01 E4
	ror A		; 6A
	bmi 124.b		; 30 7C
	asl A		; 0A
	tsb $02B9.w		; 0C B9 02
	and $93.b,S		; 23 93
	ldy #$9FEC.w		; A0 EC 9F
	sbc #$1010.w		; E9 10 10
	.db $62, $EF, $60		; 62 EF 60
	sbc $D80127.l,X		; FF 27 01 D8
	tsb $8C.b		; 04 8C
	sta $0BF8.w,X		; 9D F8 0B
	sbc $0A24.w,Y		; F9 24 0A
	inx		; E8
	sbc $6FD4FC.l,X		; FF FC D4 6F
	tsb $38BF.w		; 0C BF 38
	bit $81.b		; 24 81
	sta ($01.b,X)		; 81 01
	adc ($00.b,X)		; 61 00
	bmi -41.b		; 30 D7
	inc $8312.w,X		; FE 12 83
	brk $C3.b		; 00 C3
	cmp $F0.b,S		; C3 F0
	txy		; 9B
	rts		; 60

	bvs   4.b		; 70 04
	clc		; 18
	rtl		; 6B

	rti		; 40

	and $E8801E.l,X		; 3F 1E 80 E8
	beq -126.b		; F0 82
	jsr ($6748.w,X)		; FC 48 67
	.db $82, $70, $00		; 82 70 00
	trb $FFE1.w		; 1C E1 FF
	lsr $F8.b		; 46 F8
	sed		; F8
	brk $FE.b		; 00 FE
	brk $6F.b		; 00 6F
	tsb $BB.b		; 04 BB
	tas		; 1B
	jmp ($FFAC.w,X)		; 7C AC FF
	adc $ED34E5.l,X		; 7F E5 34 ED
	sta $7A78.w,X		; 9D 78 7A
	bra -43.b		; 80 D5
	sta $3165.w,Y		; 99 65 31
	rti		; 40

	sbc $18FF80.l,X		; FF 80 FF 18
	pea $FEFF.w		; F4 FF FE
	asl $F1.b		; 06 F1
	sbc $0AFF22.l,X		; FF 22 FF 0A
	sbc $F7F4E8.l,X		; FF E8 F4 F7
	ora $C7FF50.l		; 0F 50 FF C7
	bne -109.b		; D0 93
	txy		; 9B
	cpx $14.b		; E4 14
	cmp ($E1.b),Y		; D1 E1
	bit $39F7.w,X		; 3C F7 39
	bcc   3.b		; 90 03
	inc $42.b		; E6 42
	sty $20.b		; 84 20
	lsr $F1.b		; 46 F1
	sed		; F8
	asl $F6.b		; 06 F6
	sed		; F8
	sbc $DD8B7F.l,X		; FF 7F 8B DD
	ora ($B1.b,S),Y		; 13 B1
	eor ($25.b)		; 52 25
	ora $8E.b		; 05 8E
	cmp ($E8.b,X)		; C1 E8
	ror $A587.w,X		; 7E 87 A5
	dec A		; 3A
	eor $286A.w		; 4D 6A 28
	cmp ($EC.b,X)		; C1 EC
	php		; 08
	php		; 08
	sbc ($E2.b,S),Y		; F3 E2
	ldy $90.b,X		; B4 90
	sbc $5AFFFF.l,X		; FF FF FF 5A
	ror $5D.b		; 66 5D
	stz $D5.b		; 64 D5
	cpx $FCC5.w		; EC C5 FC
	.db $62, $FE, $DD		; 62 FE DD
	and $2747BB.l,X		; 3F BB 47 27
	eor [$00.b]		; 47 00
	tya		; 98
	sta ($FF.b,X)		; 81 FF
	sta $C4.b,S		; 83 C4
	inc $FAA2.w,X		; FE A2 FA
	jmp ($78DA.w,X)		; 7C DA 78
	sbc $06E1E3.l,X		; FF E3 E1 06
	and ($01.b)		; 32 01
	ora ($07.b,X)		; 01 07
	dec $F8A7.w,X		; DE A7 F8
	cmp $E3.b,S		; C3 E3
	sed		; F8
	jsr ($0303.w,X)		; FC 03 03
	ora $7FEA0F.l		; 0F 0F EA 7F
	sed		; F8
	bcs -64.b		; B0 C0
	jsl $003E02.l		; 22 02 3E 00
	and $79.b,X		; 35 79
	.db $42, $17		; 42 17
	clv		; B8
	trb $FF3F.w		; 1C 3F FF
	ora $F0F8F6.l,X		; 1F F6 F8 F0
	beq -15.b		; F0 F1
	sbc ($7F.b,S),Y		; F3 7F
	adc $FCFFFE.l,X		; 7F FE FF FC
	jsr ($FFFF.w,X)		; FC FF FF
	cpy #$F841.w		; C0 41 F8
	jsr ($F4F9.w,X)		; FC F9 F4
	sta ($80.b,X)		; 81 80
	ora $21F23E.l,X		; 1F 3E F2 21
	jsr $F472.w		; 20 72 F4
	dec $03.b		; C6 03
	cop $F0.b		; 02 F0
	inc $EFBF.w,X		; FE BF EF
	asl $40.b		; 06 40
	rts		; 60

	rts		; 60

	bvs -48.b		; 70 D0
	bne -62.b		; D0 C2
	eor $21.b,S		; 43 21
	and ($10.b,X)		; 21 10
	sbc $F3E20B.l,X		; FF 0B E2 F3
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	brk $D0.b		; 00 D0
	bra -61.b		; 80 C3
	cpy #$D2E1.w		; C0 E1 D2
	pea $8020.w		; F4 20 80
	dec $E8DB.w		; CE DB E8
	nop		; EA
	ldx $0CBA.w,Y		; BE BA 0C
	bit $40.b		; 24 40
	sbc $F0.b,X		; F5 F0
	ldx $FF80.w,Y		; BE 80 FF
	jsr ($0000.w,X)		; FC 00 00
	dec $C2.b		; C6 C2
	ldx $00BA.w,Y		; BE BA 00
	ora [$B6.b]		; 07 B6
	lda ($EF.b)		; B2 EF
	bmi -62.b		; 30 C2
	cpy #$BE00.w		; C0 00 BE
	tsx		; BA
	beq -78.b		; F0 B2
	sbc ($1D.b,S),Y		; F3 1D
	sbc $18.b,S		; E3 18
	trb $18DC.w		; 1C DC 18
	tsb $AA1E.w		; 0C 1E AA
	sbc ($00.b),Y		; F1 00
	jsr $FE58.w		; 20 58 FE
	tax		; AA
	beq -104.b		; F0 98
	sbc #$3CF0.w		; E9 F0 3C
	and $3F3110.l,X		; 3F 10 31 3F
	cpy $14.b		; C4 14
	clc		; 18
	php		; 08
	jmp $107E60.l		; 5C 60 7E 10
	inc $610C.w		; EE 0C 61
	cmp $47.b,S		; C3 47
	and $DE3100.l,X		; 3F 00 31 DE
	bra -36.b		; 80 DC
	brk $7E.b		; 00 7E
	brk $F0.b		; 00 F0
	cpy #$8142.w		; C0 42 81
	sta $80.b,X		; 95 80
	ora $02BCF6.l,X		; 1F F6 BC 02
	rtl		; 6B

	mvn $F2,$1D		; 54 1D F2
	cpy #$E99E.w		; C0 9E E9
	sbc $2518FC.l,X		; FF FC 18 25
	sta $ECB6FC.l		; 8F FC B6 EC
	and $F9.b,S		; 23 F9
	xce		; FB
	inc $C420.w,X		; FE 20 C4
	sbc $04EBCA.l,X		; FF CA EB 04
	sty $01.b		; 84 01
	beq 111.b		; F0 6F
	ora ($3A.b,X)		; 01 3A
	php		; 08
	ora $254447.l		; 0F 47 44 25
	rol $0A.b		; 26 0A
	phd		; 0B
	sbc ($E9.b)		; F2 E9
	sty $87FF.w		; 8C FF 87
	bcc -23.b		; 90 E9
	ora $00.b,S		; 03 00
	ora $186720.l		; 0F 20 67 18
	and $110F04.l,X		; 3F 04 0F 11
	pei ($F0.b)		; D4 F0
	and ($10.b,S),Y		; 33 10
	lda ($80.b),Y		; B1 80
	bra -64.b		; 80 C0
.INDEX 16
	rep #$90		; C2 90
	adc ($CC.b,X)		; 61 CC
	mvp $82,$B8		; 44 B8 82
	bpl -96.b		; 10 A0
	tsx		; BA
	rep #$00		; C2 00
	sbc ($07.b),Y		; F1 07
	and $FD9A.w		; 2D 9A FD
	rti		; 40

	cpy #$BC82.w		; C0 82 BC
	jmp ($74F4.w,X)		; 7C F4 74
	sbc ($40.b,S),Y		; F3 40
	inc $0BE3.w,X		; FE E3 0B
	brk $EF.b		; 00 EF
	stx $EC.b,Y		; 96 EC
	sbc $CB9F.w,Y		; F9 9F CB
	bvs -103.b		; 70 99
	rti		; 40

	dey		; 88
	adc $A0EFFC.l,X		; 7F FC EF A0
	tsb $00.b		; 04 00
	iny		; C8
	sbc $FDF0C5.l,X		; FF C5 F0 FD
	bmi   1.b		; 30 01
	adc ($81.b,X)		; 61 81
	sta ($02.b,X)		; 81 02
	ora $08.b,S		; 03 08
	adc ($ED.b,X)		; 61 ED
	eor ($07.b,S),Y		; 53 07
	inc $0261.w,X		; FE 61 02
	sta $04.b,S		; 83 04
	dec $F0.b		; C6 F0
	pha		; 48
	adc [$82.b]		; 67 82
	jsr ($C3C1.w,X)		; FC C1 C3
	inx		; E8
	beq  28.b		; F0 1C
	lda #$18F1.w		; A9 F1 18
	rts		; 60

	bvs 121.b		; 70 79
	brk $46.b		; 00 46
	pla		; 68
	adc $F8E98A.l		; 6F 8A E9 F8
	lsr $EF.b		; 46 EF
	trb $E976.w		; 1C 76 E9
	cpy #$95C2.w		; C0 C2 95
	lda $08B3.w,X		; BD B3 08
	php		; 08
	ldy $6DE3.w		; AC E3 6D
	sep #$01		; E2 01
	trb $A2.b		; 14 A2
	php		; 08
	tsb $EF.b		; 04 EF
	sbc $FEFF.w,X		; FD FF FE
	rti		; 40

	tsb $4B.b		; 04 4B
	tsx		; BA
	sbc ($F8.b)		; F2 F8
	ora #$A0C0.w		; 09 C0 A0
	adc ($F0.b,X)		; 61 F0
	brk $FB.b		; 00 FB
	sbc $4D8189.l,X		; FF 89 81 4D
	dex		; CA
	phx		; DA
	ora $04.b		; 05 04
	ora ($8E.b,X)		; 01 8E
	sty $FACA.w		; 8C CA FA
	stz $48.b,X		; 74 48
	cmp #$FE40.w		; C9 40 FE
	sbc $E9BDEF.l,X		; FF EF BD E9
	ora [$07.b]		; 07 07
	cmp $18B828.l		; CF 28 B8 18
	clv		; B8
	pla		; 68
	jmp ($9CB0.w)		; 6C B0 9C
	rts		; 60

	sec		; 38
	sbc $78581F.l,X		; FF 1F 58 78
	eor #$A049.w		; 49 49 A0
	cpx #$F8C0.w		; E0 C0 F8
	cmp ($F9.b,X)		; C1 F9
	bcc  -4.b		; 90 FC
	rts		; 60

	jsr ($FDFE.w,X)		; FC FE FD
	sed		; F8
	bra  -8.b		; 80 F8
	bcs  -7.b		; B0 F9
	brk $E0.b		; 00 E0
	jsr $BC20.w		; 20 20 BC
	jsr ($3E3E.w,X)		; FC 3E 3E
	pla		; 68
	pla		; 68
	and ($F2.b),Y		; 31 F2
	bvc  80.b		; 50 50
	iny		; C8
	jsr $EFFC.w		; 20 FC EF
	bpl -113.b		; 10 8F
	sbc $702078.l,X		; FF 78 20 70
	jsr $F260.w		; 20 60 F2
	clc		; 18
	bcc -80.b		; 90 B0
	and $32.b,S		; 23 32
	ora ($41.b,S),Y		; 13 41
	ora $2602FF.l,X		; 1F FF 02 26
	adc $09.b		; 65 09
	inc A		; 1A
	pld		; 2B
	tda		; 7B
	tya		; 98
	brk $B0.b		; 00 B0
	ora ($33.b,X)		; 01 33
	and [$BF.b]		; 27 BF
	sta $77.b		; 85 77
	eor $7F5E6F.l		; 4F 6F 5E 7F
	jmp $FC5E7F.l		; 5C 7F 5E FC
	ora #$E314.w		; 09 14 E3
	pei ($25.b)		; D4 25
	ldy #$4041.w		; A0 41 40
	stx $F1.b		; 86 F1
	mvn $FF,$EF		; 54 EF FF
	beq  -1.b		; F0 FF
	eor ($FE.b,X)		; 41 FE
	and ($A7.b)		; 32 A7
	and [$6B.b],Y		; 37 6B
	lda $33E7.w		; AD E7 33
	cmp [$5D.b],Y		; D7 5D
	lda ($8A.b,S),Y		; B3 8A
	sbc $97ADC7.l,X		; FF C7 AD 97
	sta [$C1.b],Y		; 97 C1
	bit #$BF9F.w		; 89 9F BF
	ora $FF1F7F.l,X		; 1F 7F 1F FF
	ora $FF87FE.l		; 0F FE 87 FF
	ora [$BF.b],Y		; 17 BF
	phd		; 0B
	sta $0F0760.l,X		; 9F 60 07 0F
	dec A		; 3A
	and $9E9C.w,Y		; 39 9C 9E
	sbc ($63.b,S),Y		; F3 63
	sbc $8C8CFF.l,X		; FF FF 8C 8C
	jsr $0663.w		; 20 63 06
	stx $71.b		; 86 71
	adc ($00.b),Y		; 71 00
	ora $7F3F07.l		; 0F 07 3F 7F
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $9CFFF3.l,X		; FF F3 FF 9C
	sbc $8EFF79.l,X		; FF 79 FF 8E
	sbc $180282.l,X		; FF 82 02 18
	cpx #$7F60.w		; E0 60 7F
	ora $FC.b		; 05 FC
	sbc $E8D27B.l,X		; FF 7B D2 E8
	adc $5883.w,X		; 7D 83 58
	adc [$3D.b]		; 67 3D
	cmp $01.b,S		; C3 01
	sta $FF.b,S		; 83 FF
	lsr $03E1.w,X		; 5E E1 03
	sbc $FFC107.l,X		; FF 07 C1 FF
.ACCU 16
	rep #$E1		; C2 E1
	sed		; F8
	sei		; 78
	cmp ($20.b),Y		; D1 20
	cpy $C4.b		; C4 C4
	cop $E6.b		; 02 E6
	jmp ($50E8.w)		; 6C E8 50
	sbc $8C597F.l,X		; FF 7F 59 8C
	sbc $971A.w,Y		; F9 1A 97
	ldy $C0CA.w		; AC CA C0
	beq   0.b		; F0 00
	cpy $00.b		; C4 00
	inc $F2.b		; E6 F2
	inc $EFBE.w,X		; FE BE EF
	phd		; 0B
	ror $60E1.w,X		; 7E E1 60
	sbc $E3E011.l,X		; FF 11 E0 E3
	bpl  16.b		; 10 10
	pha		; 48
	cli		; 58
	sbc ($E2.b,S),Y		; F3 E2
	sbc ($C3.b,S),Y		; F3 C3
	sed		; F8
	asl A		; 0A
	asl A		; 0A
	cli		; 58
	bvc   0.b		; 50 00
	cli		; 58
	php		; 08
	sbc $1FFF0C.l,X		; FF 0C FF 1F
	tsb $141C.w		; 0C 1C 14
	asl $0B0A.w,X		; 1E 0A 0B
	and $26.b		; 25 26
	eor [$44.b]		; 47 44
	php		; 08
	ora $FC0202.l		; 0F 02 02 FC
	ora ($51.b,X)		; 01 51
	plx		; FA
	nop		; EA
	tsb $0F.b		; 04 0F
	clc		; 18
	and $7A6720.l,X		; 3F 20 67 7A
	dec $386F.w,X		; DE 6F 38
	asl $07.b		; 06 07
	php		; 08
	sty $F4E4.w		; 8C E4 F4
	bcc  97.b		; 90 61
	cpy #$80C2.w		; C0 C2 80
	phy		; 5A
	nop		; EA
	bpl -87.b		; 10 A9
	sbc $E9B2.w		; ED B2 E9
	sbc $E9DEF1.l,X		; FF F1 DE E9
	bra  -8.b		; 80 F8
	cmp ($31.b,S),Y		; D3 31
	ror $F2.b,X		; 76 F2
	tsb $4BD5.w		; 0C D5 4B
	asl $5210.w,X		; 1E 10 52
	sbc ($F6.b,S),Y		; F3 F6
	sbc ($3A.b,X)		; E1 3A
	sbc ($06.b)		; F2 06
	brk $1E.b		; 00 1E
	cop $E9.b		; 02 E9
	sbc [$FF.b],Y		; F7 FF
	sbc $30201C.l,X		; FF 1C 20 30
	ora $100CE9.l,X		; 1F E9 0C 10
	sec		; 38
	rts		; 60

	ror $5C08.w,X		; 7E 08 5C
	trb $18.b		; 14 18
	bpl -37.b		; 10 DB
	cop $31.b		; 02 31
	bit $0E3F.w,X		; 3C 3F 0E
	sbc #$420C.w		; E9 0C 42
	sbc #$FE7E.w		; E9 7E FE
	sbc ($D2.b,X)		; E1 D2
	tsb $C22A.w		; 0C 2A C2
	and $16E202.l,X		; 3F 02 E2 16
	pea $F620.w		; F4 20 F6
	asl $F6.b		; 06 F6
	lda #$EF02.w		; A9 02 EF
	jsr $9BF3.w		; 20 F3 9B
	sbc $F006.w		; ED 06 F0
	ora #$F40A.w		; 09 0A F4
	ldy $0E1D.w,X		; BC 1D 0E
	stz $80.b,X		; 74 80
	.db $42, $41		; 42 41
	lsr $03.b		; 46 03
	cop $06.b		; 02 06
	inc A		; 1A
	bvs -116.b		; 70 8C
	tad		; 5B
	sbc #$D3CD.w		; E9 CD D3
	eor [$46.b]		; 47 46
	inc $0307.w,X		; FE 07 03
	rti		; 40

	and ($FC.b,X)		; 21 FC
	sbc $C0F26C.l,X		; FF 6C F2 C0
	bcc  32.b		; 90 20
	eor ($FD.b)		; 52 FD
	tyx		; BB
	xce		; FB
	plx		; FA
	cpy #$A238.w		; C0 38 A2
	plx		; FA
	bpl -112.b		; 10 90
	cpy #$F2FA.w		; C0 FA F2
	tsb $00.b		; 04 00
	bcs -19.b		; B0 ED
	cld		; D8
	tsx		; BA
	eor $F0.b		; 45 F0
	sbc $20B987.l,X		; FF 87 B9 20
	jsr $1010.w		; 20 10 10
	bmi  49.b		; 30 31
	jsl $222022.l		; 22 22 20 22
	sec		; 38
	sbc $1C38FF.l,X		; FF FF 38 1C
	trb $0E0E.w		; 1C 0E 0E
	and $3F.b,X		; 35 3F
	mvn $5A,$5F		; 54 5F 5A
	ora $4906.w		; 0D 06 49
	lsr A		; 4A
	eor ($51.b,X)		; 41 51
	adc $0744FE.l,X		; 7F FE 44 07
	lsr A		; 4A
	ora $5807.w		; 0D 07 58
	adc $3CFE38.l,X		; 7F 38 FE 3C
	adc $107F3E.l,X		; 7F 3E 7F 10
	ora $3F.b,X		; 15 3F
	inc $C53F.w,X		; FE 3F C5
	clc		; 18
	cmp $F7.b,X		; D5 F7
	cpy $F079.w		; CC 79 F0
	ldy $F0.b,X		; B4 F0
	tsb $04.b		; 04 04
	ror $EB3F.w,X		; 7E 3F EB
	lsr $E2.b		; 46 E2
	and $B444F8.l,X		; 3F F8 44 B4
	and [$56.b]		; 27 56
	tas		; 1B
	bit $590E.w		; 2C 0E 59
	adc #$0CE1.w		; 69 E1 0C
	sta ($C7.b,X)		; 81 C7
	sbc $E783FD.l,X		; FF FD 83 E7
	cmp ($F7.b,X)		; C1 F7
	rts		; 60

	adc $0C3F31.l,X		; 7F 31 3F 0C
	ora $02C29A.l		; 0F 9A C2 02
	cmp $18.b,S		; C3 18
	clv		; B8
	sbc $E7A4BF.l,X		; FF BF A4 E7
	eor $DC.b,S		; 43 DC
	sbc #$9571.w		; E9 71 95
	ror $2C.b,X		; 76 2C
	pla		; 68
	inc $C6.b		; E6 C6
	bit $47FF.w,X		; 3C FF 47
	sbc $82FF.w		; ED FF 82
	cmp ($20.b),Y		; D1 20
	.db $42, $F1		; 42 F1
	php		; 08
.INDEX 16
	rep #$D1		; C2 D1
	sbc $2EFF.w,Y		; F9 FF 2E
	and ($99.b),Y		; 31 99
	inc $FD.b		; E6 FD
	ora $8E.b,S		; 03 8E
	cmp $6B.b,S		; C3 6B
	ora ($96.b,X)		; 01 96
	sbc ($A0.b,X)		; E1 A0
	trb $33.b		; 14 33
	ply		; 7A
	bit $C2C4.w,X		; 3C C4 C2
	inc $01FC.w,X		; FE FC 01
	sbc ($FF.b,X)		; E1 FF
	ldy $FFE9.w,X		; BC E9 FF
	lsr $E8.b,X		; 56 E8
	ldy $4968.w,X		; BC 68 49
	lda $92.b,X		; B5 92
	sbc $2C.b,S		; E3 2C
	stx $FA1F.w		; 8E 1F FA
	sta ($5C.b)		; 92 5C
	and $B9.b		; 25 B9
	sty $EAF0.w		; 8C F0 EA
	ora $4A.b,S		; 03 4A
	cmp ($1C.b),Y		; D1 1C
	sbc $83FF70.l,X		; FF 70 FF 83
	inc $FEE0.w,X		; FE E0 FE
	cpy #$00FD.w		; C0 FD 00
	jsr ($0804.w,X)		; FC 04 08
	asl $14.b,X		; 16 14
	dec $00.b		; C6 00
	eor $6DEB2C.l,X		; 5F 2C EB 6D
	sbc $1E160C.l,X		; FF 0C 16 1E
	jsl $D1DA36.l		; 22 36 DA D1
	clv		; B8
	sbc $8040EF.l,X		; FF EF 40 80
	sty $3C.b		; 84 3C
	sbc ($0C.b,X)		; E1 0C
	and $8E71FF.l,X		; 3F FF 71 8E
	cld		; D8
	cpx #$52FF.w		; E0 FF 52
	and $F9.b,X		; 35 F9
	lda ($C0.b,X)		; A1 C0
	cpx #$BAFF.w		; E0 FF BA
	jsr ($A2E3.w,X)		; FC E3 A2
	sbc #$FEFF.w		; E9 FF FE
	sbc $F9FF.w,X		; FD FF F9
	jsr ($E978.w,X)		; FC 78 E9
	phx		; DA
	sbc $99.b,S		; E3 99
	ora $84787A.l,X		; 1F 7A 78 84
	sta $6695.w,Y		; 99 95 66
	eor ($9F.b),Y		; 51 9F
	ora [$F8.b]		; 07 F8
	iny		; C8
	sbc $E3EA.w,Y		; F9 EA E3
	inc $87D8.w		; EE D8 87
	sbc $08FF7E.l,X		; FF 7E FF 08
	beq  -8.b		; F0 F8
	sed		; F8
	jmp $E01E98.l		; 5C 98 1E E0
	bit $FFFF.w		; 2C FF FF
	eor ($DE.b)		; 52 DE
	ldx #$44B8.w		; A2 B8 44
	plp		; 28
	pei ($6C.b)		; D4 6C
	sty $54.b,X		; 94 54
	ldy $6BAA.w,X		; BC AA 6B
	brk $FE.b		; 00 FE
	bra -48.b		; 80 D0
	sta [$FE.b],Y		; 97 FE
	jsr ($FE02.w,X)		; FC 02 FE
	sbc $FF14.w,X		; FD 14 FF
	rti		; 40

	pha		; 48
	jmp ($FED2.w)		; 6C D2 FE
	lda $80.b		; A5 80
	rti		; 40

	mvp $46,$02		; 44 02 46
	.db $82, $86, $00		; 82 86 00
	pha		; 48
	cmp [$F3.b],Y		; D7 F3
	bra -65.b		; 80 BF
	ora $C680C4.l		; 0F C4 80 C6
	brk $86.b		; 00 86
	.db $62, $C2, $C4		; 62 C2 C4
	cmp $4202.w,Y		; D9 02 42
	.db $42, $0C		; 42 0C
	sbc $0457E1.l,X		; FF E1 57 04
	ora $07.b,S		; 03 07
	asl $010F.w		; 0E 0F 01
	sbc $00.b,S		; E3 00
	sta ($DE.b,X)		; 81 DE
	tsb $46.b		; 04 46
	sbc $4C48FF.l,X		; FF FF 48 4C
	php		; 08
	tsb $0F08.w		; 0C 08 0F
	bra -113.b		; 80 8F
	lda $5599.w,X		; BD 99 55
	ror $11E1.w		; 6E E1 11
	dec $A7.b,X		; D6 A7
	adc $98BC88.l,X		; 7F 88 BC 98
	stx $0F.b,Y		; 96 0F
	eor [$00.b]		; 47 00
	phb		; 8B
	lda ($86.b,S),Y		; B3 86
	lda $62FF8B.l,X		; BF 8B FF 62
	sei		; 78
	sbc $FFD105.l,X		; FF 05 D1 FF
	jmp ($F4FF.w,X)		; 7C FF F4
	sed		; F8
	eor #$9E70.w		; 49 70 9E
	sbc $28F1C3.l,X		; FF C3 F1 28
	xba		; EB
	asl $7A0E.w		; 0E 0E 7A
	tsx		; BA
	rol $32.b,X		; 36 32
	inx		; E8
	sep #$0E		; E2 0E
	bra -61.b		; 80 C3
	ora $FF00F9.l,X		; 1F F9 00 FF
	dey		; 88
	beq  -2.b		; F0 FE
	cpy $FE.b		; C4 FE
	cpy $1CFE.w		; CC FE 1C
	ldy #$74AE.w		; A0 AE 74
	sta [$C0.b],Y		; 97 C0
	pha		; 48
	cmp $22E1F6.l,X		; DF F6 E1 22
	.db $62, $C0, $E9		; 62 C0 E9
	ldx $76F8.w,Y		; BE F8 76
	cmp ($1A.b,X)		; C1 1A
	sbc $10.b		; E5 10
	rts		; 60

	rts		; 60

	asl $DE48.w		; 0E 48 DE
	sep #$03		; E2 03
	ora $1F.b,S		; 03 1F
	sbc $DF.b,X		; F5 DF
	adc $D70803.l,X		; 7F 03 08 D7
	and ($E9.b)		; 32 E9
	ora $2F.b,S		; 03 2F
	ora $FF07.w,X		; 1D 07 FF
	cmp $1836C7.l		; CF C7 36 18
	sbc #$FF07.w		; E9 07 FF
	ora $03.b		; 05 03
	asl $560A.w		; 0E 0A 56
	inc $F2.b		; E6 F2
	and $3F0FFF.l,X		; 3F FF 0F 3F
	ora [$07.b]		; 07 07
	bmi  -4.b		; 30 FC
	tsb $FE.b		; 04 FE
	asl $3084.w		; 0E 84 30
	brk $E0.b		; 00 E0
	ldy #$F9C9.w		; A0 C9 F9
	sbc $FEF2FD.l,X		; FF FD F2 FE
	adc $2ECF.w,X		; 7D CF 2E
	ror $A6.b		; 66 A6
	sbc [$AB.b]		; E7 AB
	xba		; EB
	adc ($E9.b,X)		; 61 E9
	cpx #$F9F0.w		; E0 F0 F9
	jsr ($A504.w,X)		; FC 04 A5
	inc $5CD8.w,X		; FE D8 5C
	adc [$80.b],Y		; 77 80
	sbc $11.b,S		; E3 11
	cmp $20307F.l,X		; DF 7F 30 20
	trb $8014.w		; 1C 14 80
	dey		; 88
	rol $D6.b		; 26 D6
	jsr $1860.w		; 20 60 18
	sec		; 38
	php		; 08
	trb $8C0C.w		; 1C 0C 8C
	bvs -38.b		; 70 DA
	sbc $A5FCF0.l,X		; FF F0 FC A5
	sta $FA.b,S		; 83 FA
	ora ($11.b)		; 12 11
	sta [$FE.b]		; 87 FE
	lda $60FF.w,Y		; B9 FF 60
	sbc [$F9.b]		; E7 F9
	ora ($A3.b,S),Y		; 13 A3
	nop		; EA
	asl A		; 0A
	ora #$4344.w		; 09 44 43
	bit $3D.b		; 24 3D
	inc A		; 1A
	lda $0B09F0.l,X		; BF F0 09 0B
	sec		; 38
	ror $F0.b,X		; 76 F0
	eor $41.b		; 45 41
	pld		; 2B
	cmp $7F83.w,Y		; D9 83 7F
	cmp $FF.b,S		; C3 FF
	adc $1F07B5.l,X		; 7F B5 07 1F
	ora [$3F.b]		; 07 3F
	ora $7F3EFF.l		; 0F FF 3E 7F
	sta [$EA.b]		; 87 EA
	sty $38EC.w		; 8C EC 38
	dex		; CA
	php		; 08
	tax		; AA
	sta $8E.b		; 85 8E
	cmp #$D97E.w		; C9 7E D9
	jmp ($38EC.w,X)		; 7C EC 38
	dex		; CA
	trb $B9.b		; 14 B9
	rts		; 60

	rol $FFE9.w		; 2E E9 FF
	adc $481801.l,X		; 7F 01 18 48
	cli		; 58
	pha		; 48
	cld		; D8
	iny		; C8
	bvs -48.b		; 70 D0
	pea $EFF1.w		; F4 F1 EF
	stx $73FF.w		; 8E FF 73
	bmi  48.b		; 30 30
	sei		; 78
	inc $20F8.w,X		; FE F8 20
	beq -33.b		; F0 DF
	sbc [$F2.b]		; E7 F2
	jmp ($2FFF.w,X)		; 7C FF 2F
	beq -96.b		; F0 A0
	ror $F8.b,X		; 76 F8
	lsr $983F.w,X		; 5E 3F 98
	bra -61.b		; 80 C3
	cmp $A1.b,S		; C3 A1
	rol $06F8.w		; 2E F8 06
	sbc $FD.b,X		; F5 FD
	sbc $FF3C42.l,X		; FF 42 3C FF
	eor $0635FF.l,X		; 5F FF 35 06
	phy		; 5A
	ora $2E20.w,X		; 1D 20 2E
	eor ($1E.b,S),Y		; 53 1E
	txa		; 8A
	ora $E039FE.l		; 0F FE 39 E0
	cpx #$8182.w		; E0 82 81
	lda ($08.b),Y		; B1 08
	sbc ($D1.b)		; F2 D1
	sbc $C7FFE1.l,X		; FF E1 FF C7
	sbc $FFC3.w,X		; FD C3 FF
	ora $5AF37C.l,X		; 1F 7C F3 5A
	stp		; DB
	beq -110.b		; F0 92
	ldy #$1060.w		; A0 60 10
	and $2C.b		; 25 2C
	sbc $76A2FB.l,X		; FF FB A2 76
	brk $A4.b		; 00 A4
	sty $CC.b		; 84 CC
	bit $FF.b		; 24 FF
	jmp ($DCFE.w)		; 6C FE DC
	lsr $FCB2.w,X		; 5E B2 FC
	cpy #$1FF6.w		; C0 F6 1F
	lsr A		; 4A
.ACCU 16
	rep #$E6		; C2 E6
	cop $CE.b		; 02 CE
	asl $06.b		; 06 06
	pla		; 68
	php		; 08
	trb $AEE4.w		; 1C E4 AE
	sbc $D9E270.l,X		; FF 70 E2 D9
	jsr $FE24.w		; 20 24 FE
	cmp $FFF0.w,Y		; D9 F0 FF
	tsb $040F.w		; 0C 0F 04
	ora [$0B.b]		; 07 0B
	phd		; 0B
	tsb $6B.b		; 04 6B
	sed		; F8
	tsb $4743.w		; 0C 43 47
	tsa		; 3B
	lda ($43.b),Y		; B1 43
	cmp $08.b,S		; C3 08
	inc $830F.w		; EE 0F 83
	sta $FFFD80.l		; 8F 80 FD FF
	cmp [$60.b]		; C7 60
	bvc -53.b		; 50 CB
	eor $14CE.w,X		; 5D CE 14
	sbc ($EF.b,S),Y		; F3 EF
	sbc $9C.b,S		; E3 9C
	adc $BE80BF.l,X		; 7F BF 80 BE
	adc $2917.w,X		; 7D 17 29
	jmp ($1E63.w)		; 6C 63 1E
	bpl -124.b		; 10 84
	sbc ($86.b),Y		; F1 86
	.db $62, $03, $FC		; 62 03 FC
	sbc $2F7FF8.l,X		; FF F8 7F 2F
	and $541220.l,X		; 3F 20 12 54
	inc $B0.b		; E6 B0
	cpy $D921.w		; CC 21 D9
	cmp ($79.b),Y		; D1 79
	sbc $F3A3F0.l,X		; FF F0 A3 F3
	.db $42, $63		; 42 63
	.db $82, $E2, $FC		; 82 E2 FC
	inc $FEF8.w,X		; FE F8 FE
	jsr ($F9F0.w,X)		; FC F0 F9
	adc $F9E055.l,X		; 7F 55 E0 F9
	cpy #$80F3.w		; C0 F3 80
	sbc $00.b,S		; E3 00
	sep #$CA		; E2 CA
	cld		; D8
	asl A		; 0A
	rep #$C8		; C2 C8
	phd		; 0B
	beq  -8.b		; F0 F8
	tsb $B656.w		; 0C 56 B6
	adc $FF7F.w,X		; 7D 7F FF
	sbc $0AF8F0.l,X		; FF F0 F8 0A
	sty $04.b		; 84 04
	pha		; 48
	eor #$B1A4.w		; 49 A4 B1
	and $22.b,S		; 23 22
	.db $62, $46, $C6		; 62 46 C6
	php		; 08
	jmp ($4A3F.w,X)		; 7C 3F 4A
	cpy #$80C4.w		; C0 C4 80
	cmp #$E95E.w		; C9 5E E9
	and $01.b,S		; 23 01
	adc $00.b,S		; 63 00
	dec $FD.b		; C6 FD
	sbc $EB8B3A.l,X		; FF 3A 8B EB
	txs		; 9A
	stp		; DB
	rtl		; 6B

	rol A		; 2A
	cpy $9B5A.w		; CC 5A 9B
	sta $4A46.w,X		; 9D 46 4A
	bit $FFFF.w,X		; 3C FF FF
	bit $F9.b		; 24 F9
	cmp #$FF77.w		; C9 77 FF
	adc [$FF.b]		; 67 FF
	cmp [$EF.b]		; C7 EF
	sta [$DF.b]		; 87 DF
	asl $9F.b		; 06 9F
	bit $187E.w,X		; 3C 7E 18
	cmp [$EF.b],Y		; D7 EF
	bit $F930.w,X		; 3C 30 F9
	tsb $D909.w		; 0C 09 D9
	dey		; 88
	phx		; DA
	bpl  16.b		; 10 10
	jsr $C060.w		; 20 60 C0
	lsr $D9.b		; 46 D9
	dey		; 88
	sta $889CF7.l		; 8F F7 9C 88
	tya		; 98
	clc		; 18
	tya		; 98
	sbc ($30.b)		; F2 30
	brk $60.b		; 00 60
	rol $DA.b,X		; 36 DA
	ora $03.b		; 05 03
	beq -35.b		; F0 DD
	ldx $18D8.w,Y		; BE D8 18
	sta $83.b,S		; 83 83
	beq  -8.b		; F0 F8
	sta $0107FD.l		; 8F FD 07 01
	bit $F1.b		; 24 F1
	sbc $0F.b		; E5 0F
	jmp ($DCFF.w,X)		; 7C FF DC
	cmp ($FF.b,X)		; C1 FF
	txs		; 9A
	.db $82, $68, $08		; 82 68 08
	rts		; 60

	asl $D614.w,X		; 1E 14 D6
	txs		; 9A
	ldx $7C00.w		; AE 00 7C
	inc $8AD6.w,X		; FE D6 8A
	lda $FFF0.w,Y		; B9 F0 FF
	sbc $0143BA.l,X		; FF BA 43 01
	asl $073E.w,X		; 1E 3E 07
	ora [$0C.b]		; 07 0C
	asl $ADCC.w		; 0E CC AD
	tsb $F1.b		; 04 F1
	ora ($3F.b,X)		; 01 3F
	rol $A639.w,X		; 3E 39 A6
	cmp $FDF0.w,Y		; D9 F0 FD
	bcc -112.b		; 90 90
	ldy #$80A0.w		; A0 A0 80
	ldx $EF.b		; A6 EF
	beq  64.b		; F0 40
	sed		; F8
	rol $F0E8.w,X		; 3E E8 F0
	sed		; F8
	asl A		; 0A
	jsr $10B0.w		; 20 B0 10
	bit $C21B.w,X		; 3C 1B C2
	ora $06.b		; 05 06
	tsb $7E08.w		; 0C 08 7E
	sbc $30.b,X		; F5 30
	bpl  64.b		; 10 40
	beq   0.b		; F0 00
	bit $A106.w,X		; 3C 06 A1
	sty $AA.b		; 84 AA
	phy		; 5A
	sbc ($10.b)		; F2 10
	brk $BB.b		; 00 BB
	lda $40.b,X		; B5 40
	bmi  48.b		; 30 30
	ror $08AC.w,X		; 7E AC 08
	pha		; 48
	dec $40D3.w		; CE D3 40
	adc $D1.b,X		; 75 D1
	dec $48E4.w		; CE E4 48
	eor $D2AD5F.l,X		; 5F 5F AD D2
	bit $20.b		; 24 20
	cop $20.b		; 02 20
	tsb $B948.w		; 0C 48 B9
	adc $00AE.w		; 6D AE 00
	bit $10.b		; 24 10
	and ($26.b)		; 32 26
	cmp ($D0.b),Y		; D1 D0
	eor [$82.b],Y		; 57 82
	trb $B1AC.w		; 1C AC B1
	tyx		; BB
	rti		; 40

	and ($21.b,X)		; 21 21
	and ($24.b),Y		; 31 24
	lda $F110.w,Y		; B9 10 F1
	lda #$0050.w		; A9 50 00
	cmp ($EF.b,X)		; C1 EF
	adc ($06.b,X)		; 61 06
	cmp ($A4.b),Y		; D1 A4
	dec $7A.b		; C6 7A
	sbc ($55.b)		; F2 55
	sta $84.b		; 85 84
	sbc $41.b,X		; F5 41
	cmp ($30.b,X)		; C1 30
	cmp ($84.b,S),Y		; D3 84
	inc $FC.b,X		; F6 FC
	tsx		; BA
	ror $C5.b		; 66 C5
	ora $3F.b,X		; 15 3F
	asl A		; 0A
	cop $84.b		; 02 84
	sty $8C.b		; 84 8C
	php		; 08
	clc		; 18
	rti		; 40

	beq -94.b		; F0 A2
	cmp $C7.b,S		; C3 C7
	ror $86EF.w,X		; 7E EF 86
	brk $8C.b		; 00 8C
	cpy #$A163.w		; C0 63 A1
	cmp ($06.b)		; D2 06
	brk $09.b		; 00 09
	asl $09.b		; 06 09
	sbc $8BE0.w		; ED E0 8B
	lda $0B.b,S		; A3 0B
	nop		; EA
	adc ($82.b),Y		; 71 82
	dex		; CA
	ora $EF4002.l		; 0F 02 40 EF
	sbc $E1DFA9.l,X		; FF A9 DF E1
	bmi -56.b		; 30 C8
	adc ($99.b,X)		; 61 99
	eor $71.b,S		; 43 71
	lda [$A3.b]		; A7 A3
	asl $FC04.w		; 0E 04 FC
	rti		; 40

	xce		; FB
	eor $FB10FC.l,X		; 5F FC 10 FB
	bmi  -1.b		; 30 FF
	brk $77.b		; 00 77
	stz $FEBB.w		; 9C BB FE
	lsr $3A23.w		; 4E 23 3A
	ora ($10.b,X)		; 01 10
	jsr ($4B19.w,X)		; FC 19 4B
	clc		; 18
	eor #$CC89.w		; 49 89 CC
	clc		; 18
	adc $703B00.l,X		; 7F 00 3B 70
	sbc $3DEF00.l,X		; FF 00 EF 3D
	php		; 08
	and $CC78.w,X		; 3D 78 CC
	cmp #$D3B6.w		; C9 B6 D3
	sbc $FF1CE4.l		; EF E4 1C FF
	pld		; 2B
	dex		; CA
	sbc $F94B.w,Y		; F9 4B F9
	sta $72.b,X		; 95 72
	adc [$1F.b]		; 67 1F
	ora $866000.l,X		; 1F 00 60 86
	cmp ($82.b),Y		; D1 82
	rep #$04		; C2 04
	sed		; F8
	inc $F60F.w,X		; FE 0F F6
	pei ($1F.b)		; D4 1F
	sta $D2.b		; 85 D2
	tay		; A8
	adc $7467DD.l,X		; 7F DD 67 74
	ora $C0.b,S		; 03 C0
	eor ($41.b,X)		; 41 41
	cpy #$9720.w		; C0 20 97
	cmp $C969.w,Y		; D9 69 C9
	sbc $C16810.l,X		; FF 10 68 C1
	ora [$FF.b],Y		; 17 FF
	bra -25.b		; 80 E7
	bra -31.b		; 80 E1
	phy		; 5A
	sbc ($EF.b),Y		; F1 EF
	ldx #$9A9B.w		; A2 9B 9A
	sta $C5.b,S		; 83 C5
	dec $2D.b		; C6 2D
	inx		; E8
	ror $F8.b,X		; 76 F8
	and ($F6.b,X)		; 21 F6
	jmp ($D94C.w,X)		; 7C 4C D9
	jmp.w [$B3FC]		; DC FC B3
	adc $B8ED.w,Y		; 79 ED B8
	sbc $34C06F.l,X		; FF 6F C0 34
	sed		; F8
	txs		; 9A
	jmp ($FEFD.w,X)		; 7C FD FE
	ora $06F70E.l		; 0F 0E F7 06
	sta $A36866.l,X		; 9F 66 68 A3
	jsr ($F85C.w,X)		; FC 5C F8
	cpx #$F0FF.w		; E0 FF F0
	stz $FED1.w		; 9C D1 FE
	eor $56E6.w,X		; 5D E6 56
	cpx $2E.b		; E4 2E
	rol $BBEA.w,X		; 3E EA BB
	sbc #$E0D8.w		; E9 D8 E0
	and ($F4.b,X)		; 21 F4
	cpx $F0FE.w		; EC FE F0
	inc $80E0.w,X		; FE E0 80
.INDEX 16
	rep #$DE		; C2 DE
	phx		; DA
	sec		; 38
	sbc ($36.b)		; F2 36
	beq  10.b		; F0 0A
	ora $FB14.w,X		; 1D 14 FB
	plx		; FA
	ora $3A361D.l		; 0F 1D 36 3A
	inx		; E8
	asl A		; 0A
	ora $083F00.l		; 0F 00 3F 08
	cpx #$FFDA.w		; E0 DA FF
	sbc $00F0.w,X		; FD F0 00
	tsb $0C41.w		; 0C 41 0C
	beq 122.b		; F0 7A
	iny		; C8
	sbc $980BF8.l		; EF F8 0B 98
	bvc  -9.b		; 50 F7
.ACCU 16
.INDEX 16
	rep #$F8		; C2 F8
	.db $42, $02		; 42 02
	.db $62, $60, $F1		; 62 60 F1
	sec		; 38
	tsb $3C1E.w		; 0C 1E 3C
	sbc ($EF.b,S),Y		; F3 EF
	.db $42, $95		; 42 95
	eor $00.b,X		; 55 00
	.db $62, $60, $F1		; 62 60 F1
	rti		; 40

	tax		; AA
	sbc $2AB1DE.l		; EF DE B1 2A
.INDEX 16
	rep #$DE		; C2 DE
	sta ($55.b)		; 92 55
	sed		; F8
	tya		; 98
	sta $AB82.w,Y		; 99 82 AB
	beq  -3.b		; F0 FD
	ply		; 7A
	sbc ($F0.b),Y		; F1 F0
	cop $00.b		; 02 00
	ora $02.b		; 05 02
	lda ($3F.b,X)		; A1 3F
	asl $14.b		; 06 14
	sbc [$10.b]		; E7 10
.ACCU 8
	sep #$E1		; E2 E1
	tsb $00.b		; 04 00
	asl A		; 0A
	ora ($03.b,X)		; 01 03
	cop $C4.b		; 02 C4
	lda $FE16CA.l,X		; BF CA 16 FE
	ora ($00.b,S),Y		; 13 00
	clc		; 18
	php		; 08
	tsb $0E04.w		; 0C 04 0E
	rol $BCFB.w,X		; 3E FB BC
	lda $B326.w,Y		; B9 26 B3
	tsb $24.b		; 04 24
	jsl $F0F623.l		; 22 23 F6 F0
	sbc $2400.w,X		; FD 00 24
	brk $04.b		; 00 04
	phx		; DA
	lda $F6.b,S		; A3 F6
	cpy $62.b		; C4 62
	inx		; E8
	phd		; 0B
	bit $06D9.w,X		; 3C D9 06
	cli		; 58
	cpx #$C10C.w		; E0 0C C1
	adc [$04.b]		; 67 04
	bpl 118.b		; 10 76
	.db $82, $EB, $20		; 82 EB 20
	bit $44.b		; 24 44
	cpy $F6.b		; C4 F6
	lda ($FF.b),Y		; B1 FF
	beq  -3.b		; F0 FD
	cpy #$B2C5.w		; C0 C5 B2
	dec $01.b,X		; D6 01
	ora ($05.b,X)		; 01 05
	ora ($0A.b,X)		; 01 0A
	ora $1A.b,S		; 03 1A
	ora [$84.b]		; 07 84
	cop $24.b		; 02 24
	asl $54.b,X		; 16 54
	nop		; EA
	sbc ($73.b)		; F2 73
	sbc $0706B5.l,X		; FF B5 06 07
	tsb $1C0F.w		; 0C 0F 1C
	asl $3E38.w,X		; 1E 38 3E
	adc $307D.w,Y		; 79 7D 30
	sta ($44.b),Y		; 91 44
	nop		; EA
	php		; 08
	rti		; 40

	sty $99E4.w		; 8C E4 99
	ldx $42.b		; A6 42
	beq  68.b		; F0 44
	beq -58.b		; F0 C6
	stx $F0.b,Y		; 96 F0
	inc $06.b		; E6 06
	and [$27.b]		; 27 27
	lda ($BD.b),Y		; B1 BD
	ora $DD1D.w,Y		; 19 1D DD
	sty $B9E4.w		; 8C E4 B9
	ldy #$8BD0.w		; A0 D0 8B
	and [$20.b]		; 27 20
	and $4570.w,X		; 3D 70 45
	sbc ($E9.b),Y		; F1 E9
	lsr $C0.b,X		; 56 C0
	brk $A0.b		; 00 A0
	eor ($E9.b)		; 52 E9
	sei		; 78
	xba		; EB
	ror $05.b		; 66 05
	eor $B0.b,X		; 55 B0
	tyx		; BB
	beq  -2.b		; F0 FE
	sbc $2AF1F4.l		; EF F4 F1 2A
	sta ($97.b)		; 92 97
	txy		; 9B
	tay		; A8
	cld		; D8
	tsb $2F0D.w		; 0C 0D 2F
	jmp.w [$FF9C]		; DC 9C FF
	sed		; F8
	ora #$82.b		; 09 82
	cld		; D8
	jsr $1040.w		; 20 40 10
	jsr $BE29.w		; 20 29 BE
	lda ($82.b,X)		; A1 82
	beq -36.b		; F0 DC
	cld		; D8
	sta $F22A.w,X		; 9D 2A F2
	adc ($0F.b,S),Y		; 73 0F
	bit $CB.b		; 24 CB
	phb		; 8B
	bra  32.b		; 80 20
	cpy #$A450.w		; C0 50 A4
	sbc $58921E.l		; EF 1E 92 58
	.db $82, $DC, $FA		; 82 DC FA
	txa		; 8A
	bvs -45.b		; 70 D3
	pea $C9FA.w		; F4 FA C9
	phx		; DA
	tax		; AA
	sta ($EC.b,X)		; 81 EC
	stz $F8EF.w		; 9C EF F8
	ora #$C1.b		; 09 C1
	brk $FE.b		; 00 FE
	asl $F0.b		; 06 F0
	cld		; D8
	ora #$00.b		; 09 00
	xce		; FB
	lsr $8D.b,X		; 56 8D
	ldx $D681.w,Y		; BE 81 D6
	sbc $B126.w,X		; FD 26 B1
	tsb $0C.b		; 04 0C
	ora $B16C30.l		; 0F 30 6C B1
	rts		; 60

	ldy $A556.w		; AC 56 A5
	dec $01.b		; C6 01
	ora $20.b,S		; 03 20
	.db $82, $5C, $B2		; 82 5C B2
	plb		; AB
	cpx $F3DE.w		; EC DE F3
	plx		; FA
	ldy $212C.w,X		; BC 2C 21
	mvp $F0,$F0		; 44 F0 F0
	eor ($E9.b),Y		; 51 E9
	beq -84.b		; F0 AC
	bit #$EE.b		; 89 EE
	jsr $14E6.w		; 20 E6 14
	trb $BE.b		; 14 BE
	dex		; CA
	tsb $9B08.w		; 0C 08 9B
	adc $E3.b,S		; 63 E3
	jmp ($EF58.w,X)		; 7C 58 EF
	trb $1808.w		; 1C 08 18
	tsb $AD1C.w		; 0C 1C AD
	asl $06.b		; 06 06
	.db $42, $E4		; 42 E4
	bne   5.b		; D0 05
	sbc $A09A7E.l		; EF 7E 9A A0
	sbc ($04.b),Y		; F1 04
	and ($E4.b,X)		; 21 E4
	pea $B1C4.w		; F4 C4 B1
	lda $F0E230.l,X		; BF 30 E2 F0
	ora ($2B.b,X)		; 01 2B
	cmp ($2E.b),Y		; D1 2E
	jsr $809C.w		; 20 9C 80
	bvc 112.b		; 50 70
	inc $9C2F.w,X		; FE 2F 9C
	sta ($F1.b,X)		; 81 F1
	lda ($0E.b,S),Y		; B3 0E
	asl $3F1F.w		; 0E 1F 3F
	ror $8EFE.w,X		; 7E FE 8E
	inc $8703.w,X		; FE 03 87
	cpx $FCD2.w		; EC D2 FC
	xce		; FB
	beq  51.b		; F0 33
	and ($1C.b),Y		; 31 1C
	clc		; 18
	bvs 112.b		; 70 70
	cpy #$72C8.w		; C0 C8 72
	lda #$04.b		; A9 04
	bra -102.b		; 80 9A
	ora $0A061F.l		; 0F 1F 06 0A
	asl $043F.w		; 0E 3F 04
	ldx #$2078.w		; A2 78 20
	inx		; E8
	bra -116.b		; 80 8C
	ora $9EEE60.l,X		; 1F 60 EE 9E
	trb $021E.w		; 1C 1E 02
	ldx $42.b		; A6 42
	ora $03.b		; 05 03
	bit $AA.b,X		; 34 AA
	lda ($30.b,X)		; A1 30
	ldy $07.b,X		; B4 07
	sbc $1AB2B7.l,X		; FF B7 B2 1A
	cmp $1EB1DE.l		; CF DE B1 1E
	cmp $AA2A.w,Y		; D9 2A AA
	cpy #$30C0.w		; C0 C0 30
	cmp $42A9.w,X		; DD A9 42
	.db $42, $83		; 42 83
	tya		; 98
	sec		; 38
	tsb $E119.w		; 0C 19 E1
	sbc $FB7040.l		; EF 40 70 FB
	sta ($C3.b,X)		; 81 C3
	rtl		; 6B

	lda ($D8.b,X)		; A1 D8
	ora ($0C.b)		; 12 0C
	ldx $52EA.w		; AE EA 52
	sbc ($04.b),Y		; F1 04
	tsb $F8C3.w		; 0C C3 F8
	asl $D2E2.w,X		; 1E E2 D2
	stz $3EEB.w,X		; 9E EB 3E
	txs		; 9A
	beq -95.b		; F0 A1
	cpy #$817F.w		; C0 7F 81
	sbc ($86.b),Y		; F1 86
	lda $104F.w		; AD 4F 10
	and ($B8.b)		; 32 B8
	cmp $E1.b,S		; C3 E1
	inc $F1.b		; E6 F1
	ply		; 7A
	adc $8700.w,Y		; 79 00 87
	ora ($33.b,X)		; 01 33
	lda $129E87.l,X		; BF 87 9E 12
	cpx #$9980.w		; E0 80 99
	ora $29.b		; 05 29
	mvn $08,$C1		; 54 C1 08
	sta ($09.b,X)		; 81 09
	sbc $BFFE.w,X		; FD FE BF
	ora ($F1.b)		; 12 F1
	adc ($60.b),Y		; 71 60
	sbc $3D10.w,Y		; F9 10 3D
	ora ($1D.b,X)		; 01 1D
	ora ($0D.b,X)		; 01 0D
	brk $89.b		; 00 89
	brk $99.b		; 00 99
	ror $5E14.w		; 6E 14 5E
.ACCU 16
	rep #$A0		; C2 A0
	sta ($88.b),Y		; 91 88
	brk $E4.b		; 00 E4
	sta ($80.b)		; 92 80
	ora $00.b,S		; 03 00
	plx		; FA
	mvp $2A,$5D		; 44 5D 2A
	beq  -3.b		; F0 FD
	sbc ($F0.b)		; F2 F0
	pea $EBDD.w		; F4 DD EB
	rti		; 40

	cpy #$8B96.w		; C0 96 8B
	lda $CF.b		; A5 CF
	beq  -1.b		; F0 FF
	dec $E9.b,X		; D6 E9
	beq   2.b		; F0 02
	brk $21.b		; 00 21
	php		; 08
	clc		; 18
	ldx #$4E0A.w		; A2 0A 4E
	asl $DC.b		; 06 DC
	beq   8.b		; F0 08
	sta $F0.b,X		; 95 F0
	sbc $E5F1.w,X		; FD F1 E5
	eor [$D0.b]		; 47 D0
	jsl $804001.l		; 22 01 40 80
	cmp $A6EFE0.l		; CF E0 EF A6
	ora ($79.b,S),Y		; 13 79
	ora $00.b		; 05 00
	brk $04.b		; 00 04
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $00F7.w,X		; BD F7 00
	sbc $0817F8.l,X		; FF F8 17 08
	brk $06.b		; 00 06
	sbc ($F8.b),Y		; F1 F8
	phd		; 0B
	cop $00.b		; 02 00
	ora ($F5.b,X)		; 01 F5
	inc $0020.w,X		; FE 20 00
	sta $0018F7.l		; 8F F7 18 00
	asl $0500.w		; 0E 00 05
	sbc $0011.w		; ED 11 00
	ora $0AF8DD.l		; 0F DD F8 0A
	cpy #$FB50.w		; C0 50 FB
	ora $0A3A38.l,X		; 1F 38 3A 0A
	sbc ($F8.b)		; F2 F8
	ora #$3800.w		; 09 00 38
	brk $86.b		; 00 86
	tsb $C1.b		; 04 C1
	ora $01.b,S		; 03 01
	ora $4C16.w		; 0D 16 4C
	sbc $0300.w,X		; FD 00 03
	ldx #$0FF8.w		; A2 F8 0F
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	jsr ($FF80.w,X)		; FC 80 FF
	adc $00CEFB.l		; 6F FB CE 00
	sbc $02.b,X		; F5 02
	ror A		; 6A
	and [$E9.b],Y		; 37 E9
	and $31F7D7.l		; 2F D7 F7 31
	and ($DD.b),Y		; 31 DD
	sed		; F8
	ora #$10.b		; 09 10
	tsb $FF.b		; 04 FF
	adc $D9E6.w,X		; 7D E6 D9
	inc $8060.w,X		; FE 60 80
	tya		; 98
	cpx #$26.b		; E0 26
	sec		; 38
	and $8D52.w,X		; 3D 52 8D
	stx $F8BB.w		; 8E BB F8
	ora $0070.w		; 0D 70 00
	cpx #$D8.b		; E0 D8
	sbc $280512.l,X		; FF 12 05 28
	rts		; 60

	sed		; F8
	ora #$FF.b		; 09 FF
	sed		; F8
	asl $BC.b,X		; 16 BC
	bne  96.b		; D0 60
	inc $F8.b		; E6 F8
	trb $90.b		; 14 90
	eor [$C6.b]		; 47 C6
	and $F8FF.w		; 2D FF F8
	ora $1F.b,X		; 15 1F
	ora [$07.b]		; 07 07
	plx		; FA
	dey		; 88
	bpl  64.b		; 10 40
	and $3E133A.l,X		; 3F 3A 13 3E
	tsb $F5.b		; 04 F5
	php		; 08
	dec $F8.b		; C6 F8
	asl $80FE.w		; 0E FE 80
	jsr ($F81E.w,X)		; FC 1E F8
	bpl  -1.b		; 10 FF
	sbc $0083.w,X		; FD 83 00
	jsr ($40A1.w,X)		; FC A1 40
	cmp [$08.b],Y		; D7 08
	bpl   4.b		; 10 04
	asl $B502.w		; 0E 02 B5
	trb $FFF0.w		; 1C F0 FF
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	ora $32CA.w		; 0D CA 32
	bmi -55.b		; 30 C9
	iny		; C8
	cpx #$60.b		; E0 60
	jsr ($F1FC.w,X)		; FC FC F1
	beq -57.b		; F0 C7
	adc $8C4040.l,X		; 7F 40 40 8C
	sty $7878.w		; 8C 78 78
	cmp $8C3700.l		; CF 00 37 8C
	inx		; E8
	sed		; F8
	sed		; F8
	sty $3F.b,X		; 94 3F
	brk $73.b		; 00 73
	brk $87.b		; 00 87
	lsr $1C80.w		; 4E 80 1C
	sed		; F8
	sbc $430303.l,X		; FF 03 03 43
	bit $07F8.w,X		; 3C F8 07
	trb $4003.w		; 1C 03 40
	and $3A06F9.l,X		; 3F F9 06 3A
	jmp $FC0E15.l		; 5C 15 0E FC
	brk $FF.b		; 00 FF
	inc $70FF.w,X		; FE FF 70
	sed		; F8
	ora $0DF8F2.l		; 0F F2 F8 0D
	ror A		; 6A
	inc $0CFE.w,X		; FE FE 0C
	sta [$10.b]		; 87 10
	ora $BF3F4F.l		; 0F 4F 3F BF
	adc $50CF7F.l,X		; 7F 7F CF 50
	ora $F2.b,X		; 15 F2
	stz $C07F.w,X		; 9E 7F C0
	sed		; F8
	trb $20.b		; 14 20
	sbc $B5.b,X		; F5 B5
	sed		; F8
	asl A		; 0A
	plp		; 28
	sbc $F74421.l,X		; FF 21 44 F7
	sbc $FA05.w		; ED 05 FA
	tsb $F6.b		; 04 F6
	bra  -8.b		; 80 F8
	dec $0CFC.w,X		; DE FC 0C
	sbc ($06.b),Y		; F1 06
	brk $08.b		; 00 08
	sbc $04CCFF.l,X		; FF FF CC 04
	and ($FE.b)		; 32 FE
	ora $FF031F.l		; 0F 1F 03 FF
	ror $78FE.w,X		; 7E FE 78
	php		; 08
	tsa		; 3B
	sbc $11FFE7.l,X		; FF E7 FF 11
	bcs   3.b		; B0 03
	bmi -57.b		; 30 C7
	eor $07E3.w,X		; 5D E3 07
	sbc $F32400.l,X		; FF 00 24 F3
	bra -128.b		; 80 80
	bit $3720.w,X		; 3C 20 37
	tsb $EC.b		; 04 EC
	cpx #$32.b		; E0 32
	ora $8F1E47.l		; 0F 47 1E 8F
	bra  22.b		; 80 16
	bpl  47.b		; 10 2F
	cpy #$00.b		; C0 00
	sed		; F8
	bra   0.b		; 80 00
	sed		; F8
	stx $1E.b		; 86 1E
	jmp ($00EF.w,X)		; 7C EF 00
	rep #$C0		; C2 C0
	sbc ($0F.b,S),Y		; F3 0F
	lda ($70.b),Y		; B1 70
	tda		; 7B
	plb		; AB
	ora $00.b		; 05 00
	phd		; 0B
	brk $3C.b		; 00 3C
	tsb $4000.w		; 0C 00 40
	cld		; D8
	inx		; E8
	rts		; 60

	sbc ($F4.b)		; F2 F4
	sbc ($44.b,X)		; E1 44
	sed		; F8
	ora $02.b,S		; 03 02
	and ($00.b),Y		; 31 00
	cmp $02D8.w,X		; DD D8 02
	phx		; DA
	and $342044.l,X		; 3F 44 20 34
	cpy #$8F.b		; C0 8F
	rts		; 60

	cmp $0421.w,X		; DD 21 04
	inc $00FE.w,X		; FE FE 00
	dey		; 88
	plx		; FA
	inc $F0BA.w,X		; FE BA F0
	trb $F5.b		; 14 F5
	inc $FF.b,X		; F6 FF
	cmp ($6F.b,X)		; C1 6F
	rts		; 60

	inx		; E8
	asl A		; 0A
	sbc $780CF8.l,X		; FF F8 0C 78
	brk $A7.b		; 00 A7
	brk $3F.b		; 00 3F
	tsb $030F.w		; 0C 0F 03
	dec A		; 3A
	sta [$7E.b]		; 87 7E
	lda $8E87.w		; AD 87 8E
	ora $F8DE.w,Y		; 19 DE F8
	ora ($C3.b),Y		; 11 C3
	ora [$F8.b]		; 07 F8
	asl A		; 0A
	plx		; FA
	inx		; E8
	ora ($FF.b),Y		; 11 FF
	sec		; 38
	sbc $037C.w,Y		; F9 7C 03
	rti		; 40

	ora ($07.b,X)		; 01 07
	ora $4E.b,S		; 03 4E
	bcc  -1.b		; 90 FF
	eor [$E1.b]		; 47 E1
	and $14E0D9.l,X		; 3F D9 E0 14
	rol $C0F0.w		; 2E F0 C0
	ldy $CE30.w,X		; BC 30 CE
	cpy $62E3.w		; CC E3 62
	pea $E178.w		; F4 78 E1
	adc $FDFF.w		; 6D FF FD
	rti		; 40

	brk $30.b		; 00 30
	ora ($F1.b,S),Y		; 13 F1
	bit $02.b,X		; 34 02
	asl $A1.b		; 06 A1
	nop		; EA
	asl $BF3E.w		; 0E 3E BF
	eor ($BB.b,X)		; 41 BB
	nop		; EA
	jmp ($CEEB.w,X)		; 7C EB CE
	nop		; EA
	sbc $E30BF8.l,X		; FF F8 0B E3
	sbc $CE6003.l,X		; FF 03 60 CE
	cpy #$1C.b		; C0 1C
	trb $84FD.w		; 1C FD 84
	sta $3F09.w,Y		; 99 09 3F
	trb $402C.w		; 1C 2C 40
	rti		; 40

	ldx $98.b,Y		; B6 98
	and $FF08EC.l,X		; 3F EC 08 FF
	and $83.b		; 25 83
	inc $F2.b		; E6 F2
	ora $3248.w		; 0D 48 32
	cpx #$0C.b		; E0 0C
	adc ($50.b,X)		; 61 50
	cmp $D004E6.l		; CF E6 04 D0
	bmi -101.b		; 30 9B
	lda $F3.b		; A5 F3
	pla		; 68
	cpx $01.b		; E4 01
	inc $0305.w,X		; FE 05 03
	stz $FE01.w		; 9C 01 FE
	ora $07.b,S		; 03 07
	phd		; 0B
	inc $8097.w,X		; FE 97 80
	bra  -2.b		; 80 FE
	txa		; 8A
	inc $AAB6.w,X		; FE B6 AA
	sbc $FFFFFE.l,X		; FF FE FF FF
	sed		; F8
	ora $0AE8C4.l		; 0F C4 E8 0A
	brk $F4.b		; 00 F4
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	phd		; 0B
	php		; 08
	trb $BF.b		; 14 BF
	mvp $29,$10		; 44 10 29
	jsr $2136.w		; 20 36 21
	eor $0542.w,X		; 5D 42 05
	pea $F0BC.w		; F4 BC F0
	sbc $7C74C2.l,X		; FF C2 74 7C
	jmp ($8888.w,X)		; 7C 88 88
	sta [$17.b],Y		; 97 17
	and $0538.w,Y		; 39 38 05
	cop $92.b		; 02 92
	ora $480CF6.l		; 0F F6 0C 48
	bmi -100.b		; 30 9C
	adc $E2.b,S		; 63 E2
	sty $C7E2.w		; 8C E2 C7
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	and $161F3F.l,X		; 3F 3F 1F 16
	iny		; C8
	iny		; C8
	bcs  48.b		; B0 30
	adc $8C7D7F.l,X		; 7F 7F 7D 8C
	bvs  35.b		; 70 23
	sbc ($01.b),Y		; F1 01
	rti		; 40

	sbc $5EF906.l,X		; FF 06 F9 5E
	phy		; 5A
	cpx $7EFB.w		; EC FB 7E
	sbc $E6F0FE.l,X		; FF FE F0 E6
	sbc ($E0.b),Y		; F1 E0
	cpx #$78.b		; E0 78
	sei		; 78
	jmp ($0FE0.w)		; 6C E0 0F
	cmp ($C1.b,X)		; C1 C1
	jsr $2470.w		; 20 70 24
	lda $F589FD.l		; AF FD 89 F5
	inc A		; 1A
	trb $B006.w		; 1C 06 B0
	cld		; D8
	phd		; 0B
	adc $81EC.w,Y		; 79 EC 81
	cpy #$E2.b		; C0 E2
	php		; 08
	php		; 08
	cop $0C.b		; 02 0C
	nop		; EA
	cmp $04.b,X		; D5 04
	tsa		; 3B
	sbc ($08.b),Y		; F1 08
	sed		; F8
	ora #$7E.b		; 09 7E
	beq  10.b		; F0 0A
	bpl   4.b		; 10 04
	php		; 08
	lda $DF.b,X		; B5 DF
	cpx #$F8.b		; E0 F8
	trb $31.b		; 14 31
	sbc $40FF0A.l		; EF 0A FF 40
	stz $E3.b,X		; 74 E3
	sbc $160CF8.l,X		; FF F8 0C 16
	tsa		; 3B
	ora [$E8.b]		; 07 E8
	and #$93.b		; 29 93
	sbc #$03.b		; E9 03
	ora $DF90E0.l,X		; 1F E0 90 DF
	adc $97.b,X		; 75 97
	.db $42, $BF		; 42 BF
	pei ($EF.b)		; D4 EF
	sec		; 38
	asl $87.b		; 06 87
	sbc $0004D0.l		; EF D0 04 00
	rts		; 60

	ror $0A.b,X		; 76 0A
	bit $4E11.w		; 2C 11 4E
	and ($CA.b,X)		; 21 CA
	phx		; DA
	cpx #$FF.b		; E0 FF
	and $80.b,S		; 23 80
	rts		; 60

	bra -80.b		; 80 B0
	jsr $10F8.w		; 20 F8 10
	sed		; F8
	rti		; 40

	jmp ($99A8.w,X)		; 7C A8 99
	sty $8F.b		; 84 8F
	tyx		; BB
	jsr $40E1.w		; 20 E1 40
	bcc -32.b		; 90 E0
	php		; 08
	bmi 102.b		; 30 66
	ldy $85.b,X		; B4 85
	and ($F6.b)		; 32 F6
	cop $FA.b		; 02 FA
	and [$EF.b],Y		; 37 EF
	sed		; F8
	asl $058C.w		; 0E 8C 05
	mvn $ED,$34		; 54 34 ED
	asl $E976.w		; 0E 76 E9
	lda $EB.b		; A5 EB
	sbc $EA01FE.l		; EF FE 01 EA
	tad		; 5B
	lda $09E91F.l,X		; BF 1F E9 09
	sei		; 78
	sbc $FC5AC1.l,X		; FF C1 5A FC
	sbc $C40EF8.l		; EF F8 0E C4
	brk $8D.b		; 00 8D
	brk $F2.b		; 00 F2
	lda $FA16.w,X		; BD 16 FA
	cmp $4288.w,Y		; D9 88 42
	sbc #$C7.b		; E9 C7
	brk $98.b		; 00 98
	adc $E9FDE9.l		; 6F E9 FD E9
	sbc $E341.w,X		; FD 41 E3
	ldx $F8D0.w		; AE D0 F8
	sed		; F8
	brk $E7.b		; 00 E7
	bpl -32.b		; 10 E0
	ora $F0C1.w		; 0D C1 F0
	asl $0EEF.w		; 0E EF 0E
	eor $2FFFE1.l		; 4F E1 FF 2F
	cop $0B.b		; 02 0B
	tsb $0F.b		; 04 0F
	tsb $1E.b		; 04 1E
	php		; 08
	sec		; 38
	ora #$D6.b		; 09 D6
	sec		; 38
	and $EF.b,S		; 23 EF
	and ($E9.b,S),Y		; 33 E9
	jsr ($4C87.w,X)		; FC 87 4C
	asl A		; 0A
	brk $0B.b		; 00 0B
	ora ($16.b,X)		; 01 16
	asl $20.b		; 06 20
	ora ($C0.b,X)		; 01 C0
	ora ($FF.b),Y		; 11 FF
	sta $724659.l		; 8F 59 46 72
	eor $A59FA4.l		; 4F A4 9F A5
	sta $CFBF8F.l,X		; 9F 8F BF CF
	lda $EF05DF.l,X		; BF DF 05 EF
	inc $0C3F.w,X		; FE 3F 0C
	sbc ($A3.b),Y		; F1 A3
	inc $09F8.w,X		; FE F8 09
	ora ($FF.b),Y		; 11 FF
	adc [$C0.b]		; 67 C0
	inx		; E8
	trb $FF81.w		; 1C 81 FF
	cmp ($FE.b),Y		; D1 FE
	ldx $F8.b,Y		; B6 F8
	sbc ($FE.b,X)		; E1 FE
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $E0FCF8.l,X		; FF F8 FC E0
	sed		; F8
	ora ($FF.b),Y		; 11 FF
	sta [$C6.b]		; 87 C6
	asl $18.b		; 06 18
	clc		; 18
	iny		; C8
	php		; 08
	sty $320C.w		; 8C 0C 32
	rep #$CF		; C2 CF
	ora $A0A1FC.l		; 0F FC A1 A0
	wai		; CB
	sbc ($4D.b,S),Y		; F3 4D
	cpx #$40.b		; E0 40
	sbc #$FE.b		; E9 FE
	dec A		; 3A
	nop		; EA
	ora [$7C.b]		; 07 7C
	dec A		; 3A
	sep #$40		; E2 40
	rts		; 60

	bpl 120.b		; 10 78
	ora #$24.b		; 09 24
	sec		; 38
	asl A		; 0A
	tsb $BD.b		; 04 BD
	tda		; 7B
	.db $42, $F0		; 42 F0
	ora ($24.b,S),Y		; 13 24
	sbc ($40.b)		; F2 40
	bra  32.b		; 80 20
	eor [$F2.b]		; 47 F2
	asl $02.b		; 06 02
	ora $18D0.w,X		; 1D D0 18
	php		; 08
	bmi  20.b		; 30 14
	ldy $D8B2.w		; AC B2 D8
	bra  -4.b		; 80 FC
	inx		; E8
	ora ($33.b)		; 12 33
	jmp.w [$F671]		; DC 71 F6
	clv		; B8
	sbc $F8FFFF.l,X		; FF FF FF F8
	tsb $D137.w		; 0C 37 D1
	adc [$0C.b],Y		; 77 0C
	lda $9A72.w		; AD 72 9A
	eor $04.b,X		; 55 04
	cmp $6939.w,X		; DD 39 69
	stz $43C2.w		; 9C C2 43
	ora $0E80FE.l,X		; 1F FE 80 0E
	jsr $C003.w		; 20 03 C0
	ora ($90.b,X)		; 01 90
	bra  34.b		; 80 22
	brk $86.b		; 00 86
	brk $01.b		; 00 01
	sbc $003CFF.l,X		; FF FF 3C 00
	and $EE608C.l,X		; 3F 8C 60 EE
	stz $D6.b,X		; 74 D6
	tya		; 98
	inc $28.b		; E6 28
	xba		; EB
	jmp $53807F.l		; 5C 7F 80 53
	sbc $B1A0FF.l,X		; FF FF A0 B1
	rti		; 40

	clc		; 18
	sty $08.b		; 84 08
	.db $82, $24, $42		; 82 24 42
	sty $42.b,X		; 94 42
	.db $82, $21, $42		; 82 21 42
	and $9340.w,X		; 3D 40 93
	asl $13.b		; 06 13
	jsr $4B91.w		; 20 91 4B
	sty $DA.b		; 84 DA
	txy		; 9B
	nop		; EA
	sta $12.b,S		; 83 12
	stz $BC.b,X		; 74 BC
	eor $0CF8EF.l		; 4F EF F8 0C
	cmp [$06.b]		; C7 06
	sbc $E10078.l		; EF 78 00 E1
	ora ($6D.b),Y		; 11 6D
	inc $E9.b		; E6 E9
	ora $5F7A0E.l		; 0F 0E 7A 5F
.ACCU 8
.INDEX 8
	sep #$7F		; E2 7F
	mvp $1F,$F1		; 44 F1 1F
	pea $EF36.w		; F4 36 EF
	cmp $0012F1.l,X		; DF F1 12 00
	jmp $D39C.w		; 4C 9C D3
	rts		; 60

	lda ($D3.b),Y		; B1 D3
	sta $F7085C.l,X		; 9F 5C 08 F7
	ora ($00.b,S),Y		; 13 00
	eor $D6FFEF.l		; 4F EF FF D6
	sta $EC0885.l,X		; 9F 85 08 EC
	jsr ($E1B0.w,X)		; FC B0 E1
	sbc ($8D.b,S),Y		; F3 8D
	plx		; FA
	rol A		; 2A
	bne -55.b		; D0 C9
	tyx		; BB
	sbc ($AB.b,X)		; E1 AB
	sbc ($5D.b)		; F2 5D
	sbc ($BE.b)		; F2 BE
	inc $F0.b,X		; F6 F0
	sbc $033C3F.l,X		; FF 3F 3C 03
	cmp ($0E.b),Y		; D1 0E
	stx $01.b		; 86 01
	stz $7803.w		; 9C 03 78
	ora [$14.b]		; 07 14
	phd		; 0B
	and $5B06.w,Y		; 39 06 5B
	rti		; 40

	cmp ($93.b,X)		; C1 93
	cmp $E8E0.w,Y		; D9 E0 E8
	sbc #$FC.b		; E9 FC
	cmp [$CA.b],Y		; D7 CA
	sbc $00C0FF.l,X		; FF FF C0 00
	ldy #$06.b		; A0 06
	sbc $FC1E.w,X		; FD 1E FC
	bit $F2.b,X		; 34 F2
	ora $7E99FF.l		; 0F FF 99 7E
	ldy #$7E.b		; A0 7E
	phb		; 8B
	plb		; AB
	lda ($77.b,X)		; A1 77
	ora ($EE.b,S),Y		; 13 EE
	xba		; EB
	nop		; EA
	sta $B3EC.w,X		; 9D EC B3
	sbc ($01.b,S),Y		; F3 01
	adc $C23B.w,Y		; 79 3B C2
	ora ($BB.b,X)		; 01 BB
	sbc #$69.b		; E9 69
	dex		; CA
	plb		; AB
	inc A		; 1A
	ora ($6A.b,X)		; 01 6A
	sta ($62.b),Y		; 91 62
	inc $C4CA.w,X		; FE CA C4
	eor ($E3.b,S),Y		; 53 E3
	ldx #$FC.b		; A2 FC
	ora ($F0.b,X)		; 01 F0
	adc ($FF.b,S),Y		; 73 FF
	ora $12AF8D.l,X		; 1F 8D AF 12
	adc $AB04.w,Y		; 79 04 AB
	trb $38DE.w		; 1C DE 38
	ldx $B16B.w		; AE 6B B1
	.db $82, $FF, $FE		; 82 FF FE
	sbc $02A0.w,X		; FD A0 02
	ora ($44.b,X)		; 01 44
	ora $98.b,S		; 03 98
	ora $60.b,S		; 03 60
	ora $C4.b,S		; 03 C4
	sbc #$78.b		; E9 78
	ora $F8.b		; 05 F8
	ora $FF.b,S		; 03 FF
	sbc $0BCA35.l,X		; FF 35 CA 0B
	inc $A4.b,X		; F6 A4
	eor $6F.b,X		; 55 6F
	sta $BE.b,X		; 95 BE
	cpy $D3.b		; C4 D3
	bit $FD.b		; 24 FD
	bra -68.b		; 80 BC
	.db $62, $E1, $FF		; 62 E1 FF
	brk $F9.b		; 00 F9
	inc $E802.w,X		; FE 02 E8
	cop $40.b		; 02 40
	ora $20.b,S		; 03 20
	ora $D8.b,S		; 03 D8
	ora $38.b,S		; 03 38
	lda $AF.b		; A5 AF
	ora ($0C.b,X)		; 01 0C
	ror $E4.b		; 66 E4
	inc $8040.w,X		; FE 40 80
	cpy #$80.b		; C0 80
	ldy #$80.b		; A0 80
	pea $FFFE.w		; F4 FE FF
	sbc $F227FD.l		; EF FD 27 F2
	pld		; 2B
	cpx $AE.b		; E4 AE
	pea $287F.w		; F4 7F 28
	lda $BD8A.w,X		; BD 8A BD
	ora ($E8.b)		; 12 E8
	ldx $DE.b		; A6 DE
	sbc [$FF.b],Y		; F7 FF
	mvp $AC,$F5		; 44 F5 AC
	bpl 100.b		; 10 64
	sbc #$80.b		; E9 80
	trb $00.b		; 14 00
	mvn $68,$00		; 54 00 68
	bpl  73.b		; 10 49
	jsr $FF91.w		; 20 91 FF
	sta [$40.b]		; 87 40
	ora ($24.b)		; 12 24
	bra -24.b		; 80 E8
	brk $C8.b		; 00 C8
	jsr $6010.w		; 20 10 60
	bmi  64.b		; 30 40
	cpy $43.b		; C4 43
	sty $20.b		; 84 20
	cpy #$60.b		; C0 60
	dex		; CA
	jmp $98FE62.l		; 5C 62 FE 98
	jsr ($FE90.w,X)		; FC 90 FE
	jsr $20FE.w		; 20 FE 20
	sbc #$01.b		; E9 01
	phd		; 0B
	ora ($0F.b,X)		; 01 0F
	adc $1E0010.l,X		; 7F 10 00 1E
	ora ($38.b,X)		; 01 38
	asl $D6.b,X		; 16 D6
	ora [$27.b]		; 07 27
	dec $B6.b		; C6 B6
	wai		; CB
	brk $FE.b		; 00 FE
	eor $EC1C.w,Y		; 59 1C EC
	and $FB00.w,Y		; 39 00 FB
	brk $59.b		; 00 59
	and $DEFFFF.l,X		; 3F FF FF DE
	pld		; 2B
	plb		; AB
	pha		; 48
	cpy #$1A.b		; C0 1A
	lda $BB9A.w		; AD 9A BB
	tsb $C44F.w		; 0C 4F C4
	eor $D8.b		; 45 D8
	dec $00.b		; C6 00
	adc $FF.b,S		; 63 FF
	bit $00.b,X		; 34 00
	adc [$25.b],Y		; 77 25
	ror $B4.b,X		; 76 B4
	sbc ($B8.b),Y		; F1 B8
	brk $BA.b		; 00 BA
	brk $37.b		; 00 37
	asl $3FFF.w		; 0E FF 3F
	adc [$B3.b],Y		; 77 B3
	lda $9A0D.w		; AD 0D 9A
	rol A		; 2A
	tsb $22.b		; 04 22
	and $9C96.w,Y		; 39 96 9C
	and ($43.b,X)		; 21 43
	jmp ($1EDF.w,X)		; 7C DF 1E
	phd		; 0B
	iny		; C8
	adc ($00.b,S),Y		; 73 00
	adc $DE.b,X		; 75 DE
	sbc $FFC9E6.l		; EF E6 C9 FF
	sbc $188C91.l,X		; FF 91 8C 18
	inc $D608.w		; EE 08 D6
	bit $E6.b		; 24 E6
	sty $EB.b,X		; 94 EB
	.db $82, $7F, $42		; 82 7F 42
	eor ($40.b,S),Y		; 53 40
	lda ($1F.b),Y		; B1 1F
	lda $007820.l		; AF 20 78 00
	jmp ($BC00.w,X)		; 7C 00 BC
	inc $00DE.w,X		; FE DE 00
.INDEX 16
	rep #$D5		; C2 D5
	sbc ($AD.b),Y		; F1 AD
	ror $BAB0.w,X		; 7E B0 BA
	ora ($CA.b,X)		; 01 CA
	cmp $224C.w		; CD 4C 22
	sbc ($FA.b),Y		; F1 FA
	clv		; B8
	ora ($0D.b),Y		; 11 0D
	cmp ($03.b,X)		; C1 03
	cpx #$7E1F.w		; E0 1F 7E
	ora ($80.b,X)		; 01 80
	sbc [$F8.b],Y		; F7 F8
	lsr $0F70.w,X		; 5E 70 0F
	bra 127.b		; 80 7F
	cpx #$0FF8.w		; E0 F8 0F
	sta [$7F.b]		; 87 7F
	inc $1FEF.w,X		; FE EF 1F
	wai		; CB
	sbc ($01.b,X)		; E1 01
	sbc $073FCE.l,X		; FF CE 3F 07
	sbc $33FF1E.l,X		; FF 1E FF 33
	jsr ($F8E0.w,X)		; FC E0 F8
	ora $3FFF8A.l		; 0F 8A FF 3F
	txa		; 8A
	and ($30.b,S),Y		; 33 30
	sbc $CDE1.w		; ED E1 CD
	dec $F8F6.w		; CE F6 F8
	lda $D5C4.w,X		; BD C4 D5
	and ($57.b,S),Y		; 33 57
	cmp $66FD04.l		; CF 04 FD 66
	cmp $F11BB6.l		; CF B6 1B F1
	lda $3FDC.w,X		; BD DC 3F
	brk $DD.b		; 00 DD
	dec $FF.b		; C6 FF
	and $CB0C3F.l,X		; 3F 3F 0C CB
	ora $185E.w,X		; 1D 5E 18
	sbc $3A.b,X		; F5 3A
	ror $A2.b,X		; 76 A2
	bit #$E5.b		; 89 E5
	plx		; FA
	dec $2E.b		; C6 2E
	rol $86.b,X		; 36 86
	ror $3C.b		; 66 3C
	cmp $FED9D9.l,X		; DF D9 D9 FE
	cmp ($5E.b)		; D2 5E
	sbc $C201FF.l,X		; FF FF 01 C2
	bcc 102.b		; 90 66
	bit $9C.b,X		; 34 9C
	sec		; 38
	pei ($78.b)		; D4 78
	sec		; 38
	bvs -24.b		; 70 E8
	bcs -104.b		; B0 98
	rts		; 60

	sec		; 38
	eor [$80.b],Y		; 57 80
	bne 108.b		; D0 6C
	brk $C8.b		; 00 C8
	.db $62, $D3, $D6		; 62 D3 D6
	inc $6A.b		; E6 6A
	ldx $FF.b,Y		; B6 FF
	phy		; 5A
	rts		; 60

	ora ($0D.b,X)		; 01 0D
	brk $E6.b		; 00 E6
	brk $DA.b		; 00 DA
	ora ($16.b,X)		; 01 16
	dec $A8F1.w		; CE F1 A8
	xba		; EB
	stz $D98D.w,X		; 9E 8D D9
	bra  -1.b		; 80 FF
	sbc $B9.b,X		; F5 B9
	sbc $BAC700.l		; EF 00 C7 BA
	sta ($DF.b,X)		; 81 DF
	and ($7D.b)		; 32 7D
	sbc $9E89FF.l,X		; FF FF 89 9E
	rts		; 60

	adc [$08.b],Y		; 77 08
	ora $B1E6.w,Y		; 19 E6 B1
	adc $7C3ECD.l,X		; 7F CD 3E 7C
	ora $0C.b,S		; 03 0C
	cmp ($06.b,X)		; C1 06
	ldy #$30FF.w		; A0 FF 30
	xce		; FB
	bit $E9.b		; 24 E9
	rol $F3.b,X		; 36 F3
	xba		; EB
	sta $20ED.w,Y		; 99 ED 20
	ror $DB9A.w,X		; 7E 9A DB
	cmp $58.b,S		; C3 58
	and #$FB.b		; 29 FB
	asl $1E.b		; 06 1E
	ora ($10.b,X)		; 01 10
	inx		; E8
	asl $3E.b		; 06 3E
	sbc #$28.b		; E9 28
	inx		; E8
	lda $7CC4.w		; AD C4 7C
	sbc #$EF.b		; E9 EF
	cpx #$D7A9.w		; E0 A9 D7
	cmp ($A0.b),Y		; D1 A0
	sbc $50C9C1.l,X		; FF C1 C9 50
	adc [$98.b],Y		; 77 98
	phx		; DA
	stz $F6.b		; 64 F6
	txa		; 8A
	sbc #$11.b		; E9 11
	bvc  53.b		; 50 35
	sbc ($FF.b,X)		; E1 FF
	cmp $10.b,S		; C3 10
	jsr $0089.w		; 20 89 00
	adc [$01.b]		; 67 01
	inc A		; 1A
	ora ($04.b,X)		; 01 04
	asl $E0.b		; 06 E0
	sty $B8.b,X		; 94 B8
	sbc $EC0DFF.l,X		; FF FF 0D EC
	eor $1873.w,Y		; 59 73 18
	phx		; DA
	bcs -89.b		; B0 A7
	bmi -35.b		; 30 DD
	jsr $4033.w		; 20 33 40
	eor [$20.b]		; 47 20
	cpy #$6FE1.w		; C0 E1 6F
	jsl $44FE80.l		; 22 80 FE 44
	brk $45.b		; 00 45
	brk $C9.b		; 00 C9
	brk $8B.b		; 00 8B
	sbc ($E1.b),Y		; F1 E1
	lda $FFD5.w,X		; BD D5 FF
	dex		; CA
	sbc #$28.b		; E9 28
	cpx #$CA0D.w		; E0 0D CA
	sbc #$EF.b		; E9 EF
	sed		; F8
	phd		; 0B
	ror $EE2E.w		; 6E 2E EE
	and $36.b,S		; 23 36
	and $FF6475.l		; 2F 75 64 FF
.ACCU 16
	rep #$27		; C2 27
	and [$CC.b]		; 27 CC
	ora $08EB.w		; 0D EB 08
	phd		; 0B
	php		; 08
	cmp ($D2.b),Y		; D1 D2
	lda $9B06.w,Y		; B9 06 9B
	sbc $D800FF.l,X		; FF FF 00 D8
	brk $F3.b		; 00 F3
	brk $F7.b		; 00 F7
	brk $F6.b		; 00 F6
	brk $2B.b		; 00 2B
	ora ($AE.b),Y		; 11 AE
	ora ($7F.b,X)		; 01 7F
	cmp $BD.b,S		; C3 BD
	sbc $BD61C3.l,X		; FF C3 61 BD
	cmp $E8.b		; C5 E8
	ora ($DE.b),Y		; 11 DE
	pld		; 2B
	sbc $43.b,X		; F5 43
	pea $FE00.w		; F4 00 FE
	tay		; A8
	sbc $00FF.w,X		; FD FF 00
	txa		; 8A
	bne -87.b		; D0 A9
	ldx $00.b,Y		; B6 00
	stz $00.b		; 64 00
	cpx $2400.w		; EC 00 24
	sei		; 78
	inx		; E8
	beq -56.b		; F0 C8
	bne  15.b		; D0 0F
	ora ($10.b)		; 12 10
	bra  48.b		; 80 30
	ldy #$65A0.w		; A0 A0 65
	and #$A7D1.w		; 29 D1 A7
	and ($5D.b)		; 32 5D
	sed		; F8
	sta $7186.w,Y		; 99 86 71
	jsr $1E30.w		; 20 30 1E
	lda $05.b,X		; B5 05
	txa		; 8A
	bcs -40.b		; B0 D8
	ora $D09D.w		; 0D 9D D0
	ora #$ECDA.w		; 09 DA EC
	ora #$FF06.w		; 09 06 FF
	ora ($7E.b),Y		; 11 7E
	iny		; C8
	ora ($FE.b,S),Y		; 13 FE
	ora $B9C4.w,Y		; 19 C4 B9
	cpx #$F81F.w		; E0 1F F8
	ora [$0F.b]		; 07 0F
	brk $EB.b		; 00 EB
	and $380106.l		; 2F 06 01 38
	sed		; F8
	lda $F8E0.w,X		; BD E0 F8
	asl A		; 0A
	sbc $0BFF1F.l,X		; FF 1F FF 0B
	sbc $D1C475.l,X		; FF 75 C4 D1
	jmp.w [$F8FF]		; DC FF F8
	adc $83FF.w,X		; 7D FF 83
	adc $F510B0.l		; 6F B0 10 F5
	ora $CE.b,S		; 03 CE
	beq -13.b		; F0 F3
	sbc ($FC.b)		; F2 FC
	jsr ($807F.w,X)		; FC 7F 80
	inc $50FE.w,X		; FE FE 50
	bcs -75.b		; B0 B5
	cpy $F2EE.w		; CC EE F2
	tsx		; BA
	stx $FD02.w		; 8E 02 FD
	tsb $CBBD.w		; 0C BD CB
	inc $FA.b,X		; F6 FA
	cmp ($E0.b),Y		; D1 E0
	sed		; F8
	rts		; 60

	sbc $FFFF.w		; ED FF FF
	bmi -13.b		; 30 F3
	sta $203D.w,Y		; 99 3D 20
	asl $B708.w,X		; 1E 08 B7
	and ($69.b)		; 32 69
	tsb $0EE0.w		; 0C E0 0E
	beq   7.b		; F0 07
	sei		; 78
	lda $0287.w,X		; BD 87 02
	trb $D976.w		; 1C 76 D9
	sbc ($00.b),Y		; F1 00
	cpy $F1FC.w		; CC FC F1
	tay		; A8
	jsr $1C58.w		; 20 58 1C
	sbc $7C507F.l,X		; FF 7F 50 7C
	bvc -12.b		; 50 F4
	cld		; D8
	txs		; 9A
	cli		; 58
	inc $E538.w		; EE 38 E5
	sty $4010.w		; 8C 10 40
	bmi -128.b		; 30 80
	clv		; B8
	phd		; 0B
	eor $06.b,X		; 55 06
	sbc #$2138.w		; E9 38 21
	sbc ($DA.b),Y		; F1 DA
	asl $F84F.w,X		; 1E 4F F8
	ora ($3D.b),Y		; 11 3D
	inc $B124.w		; EE 24 B1
	lda $EFF4.w,Y		; B9 F4 EF
	ldy #$DC15.w		; A0 15 DC
	eor [$2F.b]		; 47 2F
	cmp #$60F8.w		; C9 F8 60
	inc A		; 1A
	ror $7A87.w,X		; 7E 87 7A
	adc #$8311.w		; 69 11 83
	adc [$23.b]		; 67 23
	tsb $EA6B.w		; 0C 6B EA
	beq -14.b		; F0 F2
	bra   2.b		; 80 02
	sty $AF.b		; 84 AF
	adc $F0E1EF.l,X		; 7F EF E1 F0
	brk $21.b		; 00 21
	eor $A1.b,S		; 43 A1
	eor ($D9.b),Y		; 51 D9
	adc $8660.w		; 6D 60 86
	sty $2C.b		; 84 2C
	jsr $AB80.w		; 20 80 AB
	rol A		; 2A
	sbc $F7.b		; E5 F7
	stz $D1F2.w,X		; 9E F2 D1
	cmp $D9.b		; C5 D9
	and #$55A9.w		; 29 A9 55
	ldy #$BC1A.w		; A0 1A BC
	cmp ($D6.b)		; D2 D6
	phx		; DA
	clv		; B8
	eor $DB5B9C.l,X		; 5F 9C 5B DB
	rts		; 60

	clc		; 18
	cpy $A2.b		; C4 A2
	ror $1D.b		; 66 1D
	clc		; 18
	ora [$F0.b]		; 07 F0
	ora $E10AC8.l,X		; 1F C8 0A E1
	sbc [$00.b],Y		; F7 00
	nop		; EA
	adc ($CC.b,S),Y		; 73 CC
	ora $E1.b,S		; 03 E1
	asl $708F.w,X		; 1E 8F 70
	cpx $C2.b		; E4 C2
	jsr ($6B83.w,X)		; FC 83 6B
	sed		; F8
	lda ($00.b,S),Y		; B3 00
	lsr $EE.b		; 46 EE
	sbc ($E6.b,X)		; E1 E6
	ldy #$FF0E.w		; A0 0E FF
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
	cmp $C9.b,S		; C3 C9
	asl $87.b		; 06 87
	txa		; 8A
	and $06FB01.l,X		; 3F 01 FB 06
	and $E20C.w		; 2D 0C E2
	sbc $FFACC6.l,X		; FF C6 AC FF
	rol A		; 2A
	sta $F9.b,X		; 95 F9
	ora $FC.b,S		; 03 FC
	and ($DE.b,X)		; 21 DE
	beq  79.b		; F0 4F
	rti		; 40

	eor $A9FD.w,X		; 5D FD A9
	pei ($63.b)		; D4 63
	sed		; F8
	asl A		; 0A
	jsr ($E85F.w,X)		; FC 5F E8
	rti		; 40

	rti		; 40

	bcc  16.b		; 90 10
	inx		; E8
	brk $F4.b		; 00 F4
	php		; 08
	sty $4880.w		; 8C 80 48
	rol $AA.b		; 26 AA
	eor ($81.b,X)		; 41 81
	lda [$D2.b]		; A7 D2
	and [$E3.b]		; 27 E3
	sbc ($3D.b)		; F2 3D
	sed		; F8
	trb $9B.b		; 14 9B
	trb $7E.b		; 14 7E
	jmp $ECD9.w		; 4C D9 EC
	ldx $0A90.w,Y		; BE 90 0A
	and $07.b,X		; 35 07
	brk $73.b		; 00 73
	ora ($2F.b,X)		; 01 2F
	ora ($F5.b),Y		; 11 F5
	cmp $AFEBCD.l,X		; DF CD EB AF
	inx		; E8
	phd		; 0B
	sbc $7818FD.l,X		; FF FD 18 78
	asl A		; 0A
	asl A		; 0A
	ora $05.b		; 05 05
	ora $FB7B.w,Y		; 19 7B FB
	beq  11.b		; F0 0B
	inc $022E.w,X		; FE 2E 02
	cmp ($CA.b,S),Y		; D3 CA
	ora $FBFF0F.l,X		; 1F 0F FF FB
	sbc $E07C.w,X		; FD 7C E0
	sbc #$0F.b		; E9 0F
	lda $29E2F5.l,X		; BF F5 E2 29
	cmp ($0C.b,X)		; C1 0C
	jmp $ACEEFC.l		; 5C FC EE AC
	jmp ($80B1.w,X)		; 7C B1 80
	adc $040CED.l,X		; 7F ED 0C 04
	sbc [$23.b]		; E7 23
	adc [$55.b],Y		; 77 55
	cmp $7FD6.w,X		; DD D6 7F
	cmp #$FF.b		; C9 FF
	sed		; F8
	ora #$22.b		; 09 22
	tsa		; 3B
	sbc ($28.b,X)		; E1 28
	sbc $CA203D.l,X		; FF 3D 20 CA
	tsb $4D.b		; 04 4D
	and ($B0.b)		; 32 B0
	sta $037B04.l		; 8F 04 7B 03
	txy		; 9B
	lda ($02.b,X)		; A1 02
	ora $DF.b		; 05 DF
	xba		; EB
	sbc $BB85C4.l,X		; FF C4 85 BB
	ldy $04DB.w,X		; BC DB 04
	phd		; 0B
	ora $30.b,S		; 03 30
	and ($CF.b,S),Y		; 33 CF
	asl $70FF.w,X		; 1E FF 70
	lda $07FFE2.l,X		; BF E2 FF 07
	sed		; F8
	trb $01E3.w		; 1C E3 01
	adc $BCB206.l,X		; 7F 06 B2 BC
	beq   9.b		; F0 09
	ldx #$99.b		; A2 99
	sbc $FF.b,X		; F5 FF
	brk $23.b		; 00 23
	txs		; 9A
	inc $90A9.w,X		; FE A9 90
	ora $80.b,X		; 15 80
	cpx #$60.b		; E0 60
	sei		; 78
	tya		; 98
	asl $01C0.w,X		; 1E C0 01
	ldy $B741.w,X		; BC 41 B7
	pea $31CE.w		; F4 CE 31
	jsl $FC6CDD.l		; 22 DD 6C FC
	cpx #$5A.b		; E0 5A
	lda $FE.b,S		; A3 FE
	bpl -19.b		; 10 ED
	bit $FF.b		; 24 FF
	ora [$FA.b]		; 07 FA
	iny		; C8
	pea $EF70.w		; F4 70 EF
	jsl $FFFFFC.l		; 22 FC FF FF
	sec		; 38
	sbc $FD3861.l,X		; FF 61 38 FD
	bvc  70.b		; 50 46
	lda $9E.b		; A5 9E
	inc $E71B.w,X		; FE 1B E7
	rts		; 60

	stz $EB82.w,X		; 9E 82 EB
	sta $D4.b,S		; 83 D4
	sbc ($49.b)		; F2 49
	sbc $ECEAE9.l,X		; FF E9 EA EC
	ora $0BC0.w,Y		; 19 C0 0B
	sta ($F1.b,X)		; 81 F1
	cpy #$B0.b		; C0 B0
	bne -24.b		; D0 E8
	sed		; F8
	jsr ($205F.w,X)		; FC 5F 20
	pea $8484.w		; F4 84 84
	pha		; 48
	iny		; C8
	cpx #$80.b		; E0 80
	beq  10.b		; F0 0A
	inc $826A.w,X		; FE 6A 82
	ror A		; 6A
	jsr ($02D0.w,X)		; FC D0 02
	dec $AFE9.w		; CE E9 AF
	inx		; E8
	ora $A18C.w,Y		; 19 8C A1
	cop $D5.b		; 02 D5
	tax		; AA
	ora $F1.b		; 05 F1
	plb		; AB
	sbc $8815.w		; ED 15 88
	ora ($FF.b,S),Y		; 13 FF
	sed		; F8
	asl $2540.w,X		; 1E 40 25
	xba		; EB
	lda $88.b		; A5 88
	inc A		; 1A
	tay		; A8
	tsx		; BA
	ldx $AA.b,Y		; B6 AA
	eor ($B8.b,X)		; 41 B8
	trb $E2.b		; 14 E2
	jsr ($C441.w,X)		; FC 41 C4
	pea $E401.w		; F4 01 E4
	cpx $8862.w		; EC 62 88
	asl $42.b,X		; 16 42
	clv		; B8
	asl $F8EF.w		; 0E EF F8
	tsb $FFBE.w		; 0C BE FF
	bit $A5C9.w		; 2C C9 A5
	cmp ($39.b),Y		; D1 39
	asl A		; 0A
	bne  52.b		; D0 34
	sbc $0304FF.l		; EF FF 04 03
	php		; 08
	tsb $30.b		; 04 30
	phd		; 0B
	cpy #$FF.b		; C0 FF
	sbc $DEC059.l,X		; FF 59 C0 DE
	trb $AB.b		; 14 AB
	and [$C0.b],Y		; 37 C0
	sbc $AD.b		; E5 AD
	stz $BB.b		; 64 BB
	beq  79.b		; F0 4F
	sec		; 38
	eor $22.b		; 45 22
	sbc $2006BE.l,X		; FF BE 06 20
	jsr $40C1.w		; 20 C1 40
	bra  26.b		; 80 1A
	brk $12.b		; 00 12
	adc $980392.l,X		; 7F 92 03 98
	ora $71.b		; 05 71
	asl $AC.b,X		; 16 AC
	adc #$E1.b		; 69 E1
	rti		; 40

	cld		; D8
	tsb $EF51.w		; 0C 51 EF
	sed		; F8
	ora $64E0.w		; 0D E0 64
	tax		; AA
	and [$4D.b],Y		; 37 4D
	sbc ($D4.b,X)		; E1 D4
	txa		; 8A
	lda $F1.b		; A5 F1
	sbc $F15F8E.l,X		; FF 8E 5F F1
	sbc ($9B.b),Y		; F1 9B
	cmp #$BC.b		; C9 BC
	tsx		; BA
	lda $76FF50.l		; AF 50 FF 76
	ora $B4019E.l		; 0F 9E 01 B4
	sbc $E8.b,S		; E3 E8
	dec $7CEA.w,X		; DE EA 7C
	lda $E3.b,S		; A3 E3
	sbc $15A5.w,X		; FD A5 15
	iny		; C8
	tsb $C28C.w		; 0C 8C C2
	tsb $3907.w		; 0C 07 39
	ora $D0.b		; 05 D0
	phd		; 0B
	inc $09F8.w		; EE F8 09
	tay		; A8
	inc $3FBF.w,X		; FE BF 3F
	ldy #$A2.b		; A0 A2
	brk $E8.b		; 00 E8
	asl $93.b,X		; 16 93
	asl $03.b,X		; 16 03
	jmp ($80DF.w)		; 6C DF 80
	sta [$AC.b],Y		; 97 AC
	lda $2FBF70.l,X		; BF 70 BF 2F
	sta ($EE.b,X)		; 81 EE
	and $3EED00.l		; 2F 00 ED 3E
	sbc ($75.b),Y		; F1 75
	brk $6E.b		; 00 6E
	brk $5E.b		; 00 5E
	sbc $826A5F.l,X		; FF 5F 6A 82
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	brk $B0.b		; 00 B0
	rti		; 40

	sed		; F8
	cpx #$F8.b		; E0 F8
	bcs 124.b		; B0 7C
	bvc   5.b		; 50 05
	inc $5280.w,X		; FE 80 52
	inc $70DE.w		; EE DE 70
	cli		; 58
	cmp $48F2.w,Y		; D9 F2 48
	jsr ($F8F5.w,X)		; FC F5 F8
	pei ($08.b)		; D4 08
	ldy $88.b,X		; B4 88
	jmp $7C70.w		; 4C 70 7C
	sta ($36.b)		; 92 36
	sty $28.b		; 84 28
	brk $FC.b		; 00 FC
	sbc $F9E258.l,X		; FF 58 E2 F9
	php		; 08
	and ($F0.b,S),Y		; 33 F0
	txs		; 9A
	sei		; 78
	and $F1.b,X		; 35 F1
	sbc ($E1.b,X)		; E1 E1
	cpx $2F.b		; E4 2F
	cpy #$E4.b		; C0 E4
	cmp #$C8.b		; C9 C8
	dec A		; 3A
	sed		; F8
	rti		; 40

	nop		; EA
	jsr ($1E86.w,X)		; FC 86 1E
	ora ($34.b),Y		; 11 34
	brk $1B.b		; 00 1B
	rol A		; 2A
	inc $2C.b,X		; F6 2C
	sty $B5.b,X		; 94 B5
	lda ($08.b)		; B2 08
	phy		; 5A
	bra  -6.b		; 80 FA
	jmp.w [$11E8]		; DC E8 11
	adc $E8D16A.l,X		; 7F 6A D1 E8
	and $8342BF.l		; 2F BF 42 83
	adc $C20F70.l,X		; 7F 70 0F C2
	and $3F3C.w,X		; 3D 3C 3F
	cpy #$10.b		; C0 10
	cmp #$EA.b		; C9 EA
	cpx #$67.b		; E0 67
	ldx $F48F.w		; AE 8F F4
	and [$6D.b]		; 27 6D
	lda $37.b,S		; A3 37
	sei		; 78
	asl $BF3F.w		; 0E 3F BF
	rti		; 40

	cmp $94FFBF.l		; CF BF FF 94
	bit $03.b		; 24 03
	php		; 08
	ora [$20.b]		; 07 20
	ora $1180B0.l,X		; 1F B0 80 11
	and $3FD8DF.l		; 2F DF D8 3F
	lda ($7F.b,X)		; A1 7F
	ora [$AD.b]		; 07 AD
	sbc $A00CFF.l,X		; FF FF 0C A0
	sbc ($78.b,X)		; E1 78
	sbc $09D0.w,Y		; F9 D0 09
	sbc $FCFBFF.l,X		; FF FF FB FC
	ror $F7FF.w,X		; 7E FF F7
	sed		; F8
	clv		; B8
	plx		; FA
	eor [$C0.b]		; 47 C0
	jsr $FF96.w		; 20 96 FF
	sed		; F8
	ora $F783B5.l		; 0F B5 83 F7
	asl $FB.b,X		; 16 FB
	ora $06.b,S		; 03 06
	rti		; 40

	tad		; 5B
	sbc $7CFCFF.l,X		; FF FF FC 7C
	stx $C9.b,Y		; 96 C9
	tsb $B9.b		; 04 B9
	nop		; EA
	cpy $5B95.w		; CC 95 5B
	bit $6C.b		; 24 6C
	sbc ($F6.b)		; F2 F6
	and #$1F.b		; 29 1F
	stx $B0DB.w		; 8E DB B0
	dec $3F0C.w,X		; DE 0C 3F
	ora $06.b,S		; 03 06
	ora $CE06.w,Y		; 19 06 CE
	lda $D602.w		; AD 02 D6
	cmp ($74.b,S),Y		; D3 74
	lda $7033.w,Y		; B9 33 70
	nop		; EA
	lda $00F1.w,Y		; B9 F1 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($FF.b),Y		; F1 FF
	brk $FF.b		; 00 FF
	cpy #$C0.b		; C0 C0
	clv		; B8
	sed		; F8
	cmp [$DF.b],Y		; D7 DF
	and ($83.b)		; 32 83
	sbc $FF0900.l,X		; FF 00 09 FF
	stp		; DB
	rti		; 40

	beq -18.b		; F0 EE
	brk $58.b		; 00 58
	ldy #$03.b		; A0 03
	jsr ($0B00.w,X)		; FC 00 0B
	sbc $BF40FF.l,X		; FF FF 40 BF
	beq  -4.b		; F0 FC
	sbc $D7FEFE.l,X		; FF FE FE D7
	and $3B.b,X		; 35 3B
	ora $FD.b,S		; 03 FD
.ACCU 16
	rep #$E1		; C2 E1
	ora ($F0.b,X)		; 01 F0
	inc $F6FF.w,X		; FE FF F6
	php		; 08
	cop $DE.b		; 02 DE
	inc $4E03.w,X		; FE 03 4E
	sbc $FCF203.l,X		; FF 03 F2 FC
	ora ($01.b,X)		; 01 01
	inc $11.b,X		; F6 11
	php		; 08
	jsr $0171.w		; 20 71 01
	adc $00.b,S		; 63 00
	jsr ($C1FF.w,X)		; FC FF C1
	sbc $20E0.w		; ED E0 20
	adc $3F19.w,Y		; 79 19 3F
	sbc $85F0.w,X		; FD F0 85
	rti		; 40

	and $FFFF40.l		; 2F 40 FF FF
	cmp ($A3.b,S),Y		; D3 A3
	and $DCDF2E.l		; 2F 2E DF DC
	and $477F38.l,X		; 3F 38 7F 47
	ora $9A0F.w		; 0D 0F 9A
	sbc $FFFF70.l,X		; FF 70 FF FF
	ora $1E7C23.l,X		; 1F 23 7C 1E
	cmp ($14.b),Y		; D1 14
	ora $08.b,S		; 03 08
	cmp [$84.b]		; C7 84
	clv		; B8
	ora #$020A.w		; 09 0A 02
	ora $FE.b,S		; 03 FE
	ora $0406C4.l		; 0F C4 06 04
	sta [$86.b]		; 87 86
	jsr $1202.w		; 20 02 12
	ora $0010.w		; 0D 10 00
	asl $FF.b		; 06 FF
	sbc $0C3CF3.l,X		; FF F3 3C 0C
	asl $8F02.w,X		; 1E 02 8F
	ora ($E1.b,X)		; 01 E1
	adc $FD.b,S		; 63 FD
	ora $3E107E.l,X		; 1F 7E 10 3E
	and ($C0.b),Y		; 31 C0
	sbc $02FDFF.l,X		; FF FF FD 02
	lda $7869E0.l		; AF E0 69 78
	stp		; DB
	lda [$E3.b],Y		; B7 E3
	trb $ECAB.w		; 1C AB EC
	stz $4C.b,X		; 74 4C
	sbc $8FFF3F.l,X		; FF 3F FF 8F
	ora ($FF.b,X)		; 01 FF
	rts		; 60

	ora $4F8718.l,X		; 1F 18 87 4F
	rts		; 60

	clv		; B8
	sbc $3D1F66.l,X		; FF 66 1F 3D
	sbc $808C3F.l,X		; FF 3F 8C 80
	bra  96.b		; 80 60
	rts		; 60

	bcs -80.b		; B0 B0
	pha		; 48
	pha		; 48
	rol $36.b		; 26 36
	and ($2B.b,S),Y		; 33 2B
	tas		; 1B
	trb $EFFF.w		; 1C FF EF
	stx $80.b		; 86 80
	jsr $0042.w		; 20 42 00
	and ($10.b),Y		; 31 10
	php		; 08
	inc A		; 1A
	tsb $0F.b		; 04 0F
	eor ($F8.b),Y		; 51 F8
	ora #$6100.w		; 09 00 61
	sbc ($40.b,X)		; E1 40
	rti		; 40

	dec $F0.b,X		; D6 F0
	cpx #$F1.b		; E0 F1
	sbc $10F062.l,X		; FF 62 F0 10
	sbc $10787F.l,X		; FF 7F 78 10
	clc		; 18
	sta ($81.b,X)		; 81 81
	jmp.w [$CF5C]		; DC 5C CF
	wai		; CB
	lda $7F.b,X		; B5 7F
	tax		; AA
	and $0ECE.w,Y		; 39 CE 0E
	adc $0FFFFC.l,X		; 7F FC FF 0F
	brk $03.b		; 00 03
	bra   1.b		; 80 01
	sty $00.b		; 84 00
	eor $8C.b,S		; 43 8C
	rol $C7.b,X		; 36 C7
	ora $81F3.w		; 0D F3 81
	sbc ($80.b,X)		; E1 80
	sbc $AFC6FE.l,X		; FF FE C6 AF
	cpy #$80.b		; C0 80
	bvs -128.b		; 70 80
	cpx #$D1.b		; E0 D1
	tay		; A8
	plp		; 28
	jmp.w [$BB5F]		; DC 5F BB
	ora $40C0FF.l		; 0F FF C0 40
	cpx #$40.b		; E0 40
	rts		; 60

	cmp ($E0.b,X)		; C1 E0
	cpx #$30.b		; E0 30
	pei ($1C.b)		; D4 1C
	sbc $3F00EF.l		; EF EF 00 3F
	sta ($71.b),Y		; 91 71
	stp		; DB
	ldx $7C51.w		; AE 51 7C
	plb		; AB
	sbc $880C04.l,X		; FF 04 0C 88
	sed		; F8
	sbc $BD06.w,X		; FD 06 BD
	cpy $F847.w		; CC 47 F8
	sbc $FF97.w		; ED 97 FF
	php		; 08
	sed		; F8
	inc $807F.w,X		; FE 7F 80
	pld		; 2B
	tsb $827F.w		; 0C 7F 82
	jsr ($6D80.w,X)		; FC 80 6D
	bit #$0BC7.w		; 89 C7 0B
	plx		; FA
	ora $EF.b,S		; 03 EF
	sbc $A5F0.w,X		; FD F0 A5
	beq -101.b		; F0 9B
	sbc $0CF08E.l,X		; FF 8E F0 0C
	beq -96.b		; F0 A0
	sbc ($EF.b)		; F2 EF
	sbc $00C0DF.l,X		; FF DF C0 00
	clv		; B8
	brk $57.b		; 00 57
	ldy #$B2.b		; A0 B2
	jsr ($FFFF.w,X)		; FC FF FF
	stp		; DB
	lda $711BAD.l,X		; BF AD 1B 71
	sbc ($41.b,S),Y		; F3 41
	sbc $F3F8F8.l,X		; FF F8 F8 F3
	sbc $F582FD.l,X		; FF FD 82 F5
	brk $D7.b		; 00 D7
	dex		; CA
	tsa		; 3B
	jsr ($C1FD.w,X)		; FC FD C1
	sta ($FE.b,X)		; 81 FE
	sbc $FDEFCC.l,X		; FF CC EF FD
	bit $F3FF.w,X		; 3C FF F3
	inc $FEC1.w,X		; FE C1 FE
	ldx $F774.w		; AE 74 F7
	inc A		; 1A
	xce		; FB
	ora $867D.w		; 0D 7D 86
	inc $FF.b,X		; F6 FF
	jsr ($F0BF.w,X)		; FC BF F0
	sei		; 78
	inc $FF1C.w,X		; FE 1C FF
	asl $87FF.w		; 0E FF 87
	cpy #$F8.b		; C0 F8
	asl A		; 0A
	ora $001E.w		; 0D 1E 00
	adc $17.b		; 65 17
	asl A		; 0A
	sei		; 78
	sbc ($7E.b),Y		; F1 7E
	adc [$B0.b],Y		; 77 B0
	inc $FE47.w,X		; FE 47 FE
	cmp ($FE.b)		; D2 FE
	sbc $ADFFC7.l,X		; FF C7 FF AD
	cpx $F3.b		; E4 F3
	sbc ($0C.b)		; F2 0C
	tsb $0100.w		; 0C 00 01
	php		; 08
	php		; 08
	ora ($FF.b,X)		; 01 FF
	ora $C4C482.l,X		; 1F 82 C4 C4
	cpx $1B.b		; E4 1B
	tsb $09.b		; 04 09
	sbc $09.b,X		; F5 09
	sbc $97FFFF.l		; EF FF FF 97
	sbc $03FF.w,X		; FD FF 03
	and $5A23.w		; 2D 23 5A
	cmp ($1A.b)		; D2 1A
	asl $94.b,X		; 16 94
	sty $08.b,X		; 94 08
	brk $58.b		; 00 58
	pha		; 48
	bvc 127.b		; 50 7F
	sei		; 78
	bvc   2.b		; 50 02
	jsr ($8C52.w,X)		; FC 52 8C
	bra  12.b		; 80 0C
	sty $F3.b		; 84 F3
	php		; 08
	clc		; 18
	brk $10.b		; 00 10
	jsr ($E0FA.w,X)		; FC FA E0
	cop $04.b		; 02 04
	ora ($05.b,X)		; 01 05
	phd		; 0B
	ply		; 7A
	sbc ($D0.b,S),Y		; F3 D0
	jsr ($1F06.w,X)		; FC 06 1F
	tsb $FF.b		; 04 FF
	pea $181E.w		; F4 1E 18
	jmp ($F860.w,X)		; 7C 60 F8
	brk $E1.b		; 00 E1
	brk $87.b		; 00 87
	beq -99.b		; F0 9D
	sty $E9.b		; 84 E9
	bne  -1.b		; D0 FF
	inc $D8.b		; E6 D8
	jsr $FFE0.w		; 20 E0 FF
	adc $0F7B.w,Y		; 79 7B 0F
	ora $303F10.l,X		; 1F 10 3F 30
	sed		; F8
	cmp ($1A.b),Y		; D1 1A
	rti		; 40

	beq   7.b		; F0 07
	sbc $FE03FD.l,X		; FF FD 03 FE
	sbc #$E9C4.w		; E9 C4 E9
	cop $46.b		; 02 46
	plx		; FA
	adc $2121.w,Y		; 79 21 21
	plb		; AB
	lda #$60E0.w		; A9 E0 60
	sbc ($13.b,S),Y		; F3 13
	sbc $0C7FFF.l,X		; FF FF 7F 0C
	and $397C10.l,X		; 3F 10 7C 39
	and [$D7.b],Y		; 37 D7
	beq 127.b		; F0 7F
	brk $8F.b		; 00 8F
	cpy #$30.b		; C0 30
	sec		; 38
	ora [$7F.b]		; 07 7F
	sed		; F8
	trb $DF.b		; 14 DF
	cpx #$77.b		; E0 77
	php		; 08
	ora $FD3000.l		; 0F 00 30 FD
	sbc $4D3F43.l,X		; FF 43 3F 4D
	sbc $30C78F.l,X		; FF 8F C7 30
	sbc $081F30.l		; EF 30 1F 08
	sbc $0D1813.l,X		; FF 13 18 0D
	ora $104353.l		; 0F 53 43 10
.ACCU 16
.INDEX 16
	rep #$71		; C2 71
	cpy $7904.w		; CC 04 79
	trb $07EE.w		; 1C EE 07
	sbc ($1F.b,X)		; E1 1F
	ora $70.b,S		; 03 70
	ldx #$7F0B.w		; A2 0B 7F
	php		; 08
	ora $071F0C.l,X		; 1F 0C 1F 07
	ora $EEFFFE.l		; 0F FE FF EE
	ldy $EFC4.w		; AC C4 EF
	ora $72.b,S		; 03 72
	ldx $A3.b		; A6 A3
	cmp $5B.b		; C5 5B
	bvc -97.b		; 50 9F
	rts		; 60

	adc $FF20.w		; 6D 20 FF
	sbc $F8681D.l,X		; FF 1D 68 F8
	clc		; 18
	tsb $8FF8.w		; 0C F8 8F
	jmp ($3E5D.w,X)		; 7C 5D 3E
	stx $BF.b		; 86 BF
.INDEX 8
	sep #$9F		; E2 9F
	.db $42, $DF		; 42 DF
	sbc $C77AF7.l,X		; FF F7 7A C7
	sbc #$7E8D.w		; E9 8D 7E
	jsr $10DF.w		; 20 DF 10
	xce		; FB
	tsb $605F.w		; 0C 5F 60
	cop $F1.b		; 02 F1
	brk $FB.b		; 00 FB
	eor $7006E9.l,X		; 5F E9 06 70
	inc $FF40.w,X		; FE 40 FF
	jsr $F168.w		; 20 68 F1
	dec A		; 3A
	sbc ($FE.b)		; F2 FE
	lda $FFBF88.l		; AF 88 BF FF
	inc $E4.b,X		; F6 E4
	xce		; FB
	sbc ($7D.b)		; F2 7D
	adc $F1FE.w,Y		; 79 FE F1
	jsr ($0F00.w,X)		; FC 00 0F
	adc ($07.b,S),Y		; 73 07
	ora $0C03.w,Y		; 19 03 0C
	ora $01FE.w,X		; 1D FE 01
	stx $F1.b		; 86 F1
	sbc $77FF.w,X		; FD FF 77
	sbc $FE22.w,X		; FD 22 FE
	.db $42, $AF		; 42 AF
	lda $8FC270.l,X		; BF 70 C2 8F
	bvs  52.b		; 70 34
	jsr ($1C6E.w,X)		; FC 6E 1C
	sbc $70FF21.l,X		; FF 21 FF 70
	cpy #$F4.b		; C0 F4
	sta $00FE10.l,X		; 9F 10 FE 00
	inc $E701.w,X		; FE 01 E7
	asl $C5.b		; 06 C5
	lda [$D3.b]		; A7 D3
	and $8A.b,S		; 23 8A
	lda $710FE4.l,X		; BF E4 0F 71
	nop		; EA
	cpy $D83B.w		; CC 3B D8
	beq  -8.b		; F0 F8
	brk $F0.b		; 00 F0
	ora $E8.b,S		; 03 E8
	bne  -4.b		; D0 FC
	sbc ($0D.b,S),Y		; F3 0D
	lda ($CB.b,S),Y		; B3 CB
	sta $F1.b,S		; 83 F1
	stx $C4F1.w		; 8E F1 C4
	lda $7E00E2.l,X		; BF E2 00 7E
	sty $09.b		; 84 09
	sbc $810D09.l,X		; FF 09 0D 81
	sbc ($7F.b),Y		; F1 7F
	sbc ($EF.b)		; F2 EF
	cpy #$7F.b		; C0 7F
	sed		; F8
	inc $DC2D.w,X		; FE 2D DC
	phy		; 5A
	tsb $881A.w		; 0C 1A 88
	sty $DE.b,X		; 94 DE
	clc		; 18
	cli		; 58
	bpl  80.b		; 10 50
	sbc $A000FF.l,X		; FF FF 00 A0
	brk $8E.b		; 00 8E
	sbc $0CDE8C.l,X		; FF 8C DE 0C
	stz $9C08.w,X		; 9E 08 9C
	brk $18.b		; 00 18
	brk $58.b		; 00 58
	brk $FB.b		; 00 FB
	cmp [$50.b],Y		; D7 50
	rti		; 40

	cpx #$3C.b		; E0 3C
	sbc ($FC.b)		; F2 FC
	sbc $C7F6ED.l,X		; FF ED F6 C7
	pea $BEFA.w		; F4 FA BE
	sbc #$FEFF.w		; E9 FF FE
	inx		; E8
	ora $FFFEF8.l		; 0F F8 FE FF
	jsr ($FBFC.w,X)		; FC FC FB
	lda $D8.b,S		; A3 D8
	eor [$98.b],Y		; 57 98
	brk $67.b		; 00 67
	sta ($FF.b),Y		; 91 FF
	sta $E5C0AE.l		; 8F AE C0 E5
	sbc #$85C8.w		; E9 C8 85
	wai		; CB
	brk $EF.b		; 00 EF
	beq  -8.b		; F0 F8
	sbc #$FFF9.w		; E9 F9 FF
	ora [$70.b]		; 07 70
	rts		; 60

	tad		; 5B
	jmp ($4709.w,X)		; 7C 09 47
	rti		; 40

	rti		; 40

	bvc  96.b		; 50 60
	tsb $18.b		; 04 18
	sei		; 78
	sty $18.b		; 84 18
	inx		; E8
	rol $7F.b,X		; 36 7F
	inc $7F60.w,X		; FE 60 7F
	sed		; F8
	sed		; F8
	bit $1D00.w,X		; 3C 00 1D
	brk $40.b		; 00 40
	cpy #$FE.b		; C0 FE
	cpy #$A0.b		; C0 A0
	eor [$23.b]		; 47 23
	lda $4958F1.l,X		; BF F1 58 49
	and [$3E.b]		; 27 3E
	ldx $3151.w,Y		; BE 51 31
	sbc ($E1.b,S),Y		; F3 E1
	cpy #$FE.b		; C0 FE
	sbc [$07.b]		; E7 07
	ora $1E7FFF.l,X		; 1F FF 7F 1E
	adc $EFFF45.l,X		; 7F 45 FF EF
	cpy #$02.b		; C0 02
	brk $0E.b		; 00 0E
	ora [$16.b]		; 07 16
	inx		; E8
	adc $10C801.l,X		; 7F 01 C8 10
	jsr $F4F6.w		; 20 F6 F4
	sbc $DCDA.w,Y		; F9 DA DC
	and ($F2.b),Y		; 31 F2
	ora [$FE.b],Y		; 17 FE
	inc $E009.w,X		; FE 09 E0
	sed		; F8
	iny		; C8
	inc $FFCE.w,X		; FE CE FF
	lda $C0EA90.l,X		; BF 90 EA C0
	cpx #$00.b		; E0 00
	bmi  16.b		; 30 10
	lda $1810F8.l		; AF F8 10 18
	cop $14.b		; 02 14
	jsr $E9D9.w		; 20 D9 E9
	bit $F2.b		; 24 F2
	inc $00F9.w,X		; FE F9 00
	and $C031.w,X		; 3D 31 C0
	brk $37.b		; 00 37
	adc $ECE0.w		; 6D E0 EC
	and [$0C.b],Y		; 37 0C
	eor [$40.b]		; 47 40
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	cmp #$81FE.w		; C9 FE 81
	ora $FDEF14.l,X		; 1F 14 EF FD
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	inc $EF79.w,X		; FE 79 EF
	pld		; 2B
	sep #$06		; E2 06
	sta [$6D.b]		; 87 6D
	bra -104.b		; 80 98
	ror A		; 6A
	sbc $800AF8.l		; EF F8 0A 80
	cpx #$9A.b		; E0 9A
	ora $00495F.l		; 0F 5F 49 00
	stz $00.b,X		; 74 00
	rol $0259.w,X		; 3E 59 02
	ora #$0506.w		; 09 06 05
	cop $75.b		; 02 75
	stp		; DB
	jsr ($EF01.w,X)		; FC 01 EF
	bpl  62.b		; 10 3E
	asl A		; 0A
	ora $BE0F06.l,X		; 1F 06 0F BE
	sbc ($FF.b,X)		; E1 FF
	lda $90C4B1.l		; AF B1 C4 90
	.db $62, $6A, $32		; 62 6A 32
	sec		; 38
	bpl -100.b		; 10 9C
	php		; 08
	asl $FFC3.w		; 0E C3 FF
	mvp $22,$07		; 44 07 22
	lda $E4C0.w		; AD C0 E4
	rts		; 60

	sbc ($30.b)		; F2 30
	ply		; 7A
	bpl  56.b		; 10 38
	php		; 08
	ora $049C7F.l		; 0F 7F 9C 04
	lsr $2702.w		; 4E 02 27
	stz $06D9.w,X		; 9E D9 06
	and $8A02.w,X		; 3D 02 8A
	ora ($E7.b,X)		; 01 E7
	and $7C.b,S		; 23 7C
	stz $C1E1.w,X		; 9E E1 C1
	and #$0F23.w		; 29 23 0F
	cmp $F7FFC7.l,X		; DF C7 FF F7
	eor $F1DCC0.l,X		; 5F C0 DC F1
	sta ($FF.b,X)		; 81 FF
	bra -63.b		; 80 C1
	asl A		; 0A
	sbc ($FE.b,X)		; E1 FE
	cpx $1B1B.w		; EC 1B 1B
	ldy #$00.b		; A0 00
	bne -49.b		; D0 CF
	sbc ($CC.b),Y		; F1 CC
	eor #$3740.w		; 49 40 37
	nop		; EA
	cpy #$FE.b		; C0 FE
	bra  47.b		; 80 2F
	cpx #$F0.b		; E0 F0
	bra  -8.b		; 80 F8
	bra -52.b		; 80 CC
	rti		; 40

	sbc $70AFF8.l		; EF F8 AF 70
	pla		; 68
	brk $28.b		; 00 28
	bpl  23.b		; 10 17
	brk $0A.b		; 00 0A
	brk $05.b		; 00 05
	pea $41F1.w		; F4 F1 41
	trb $57.b		; 14 57
	jsr ($A000.w,X)		; FC 00 A0
	.db $82, $EA, $3C		; 82 EA 3C
	eor ($F8.b),Y		; 51 F8
	ora #$F7AE.w		; 09 AE F7
	ldx #$B0.b		; A2 B0
	brk $E4.b		; 00 E4
	eor $EFE9.w,Y		; 59 E9 EF
	sed		; F8
	ora #$F0C0.w		; 09 C0 F0
	beq  48.b		; F0 30
	sbc $04.b,S		; E3 04
	tsb $F0.b		; 04 F0
	sbc [$06.b]		; E7 06
	eor ($05.b),Y		; 51 05
	adc $7F04.w,X		; 7D 04 7F
	cop $2E.b		; 02 2E
	ora ($E6.b)		; 12 E6
	inc $04FF.w,X		; FE FF 04
	brk $F9.b		; 00 F9
	ora $3D7F0B.l		; 0F 0B 7F 3D
	adc $883F19.l,X		; 7F 19 3F 88
	dey		; 88
	iny		; C8
	iny		; C8
	stx $FF8E.w		; 8E 8E FF
	sbc $9FECAC.l,X		; FF AC EC 9F
	cmp $97EEAE.l,X		; DF AE EE 97
	adc [$97.b],Y		; 77 97
	adc $048800.l,X		; 7F 00 88 04
	cpy $CE44.w		; CC 44 CE
	and [$1E.b],Y		; 37 1E
	lsr $EE.b		; 46 EE
	ror $FF.b		; 66 FF
	bmi -26.b		; 30 E6
	cop $FF.b		; 02 FF
	ora $03.b,S		; 03 03
	.db $42, $BE		; 42 BE
	php		; 08
	sbc $636343.l,X		; FF 43 63 63
	adc ($53.b,S),Y		; 73 53
	adc $FEE2.w		; 6D E2 FE
	sbc ($86.b),Y		; F1 86
	ora [$43.b],Y		; 17 43
	inc $2163.w,X		; FE 63 21
	adc ($87.b,S),Y		; 73 87
	sbc ($18.b),Y		; F1 18
	jsr ($EC38.w,X)		; FC 38 EC
	trb $9AFF.w		; 1C FF 9A
	stz $5DFF.w,X		; 9E FF 5D
	cmp $18E1A2.l,X		; DF A2 E1 18
	bpl -122.b		; 10 86
	php		; 08
	inc $FE1C.w,X		; FE 1C FE
	tsb $FE9E.w		; 0C 9E FE
	bmi  -4.b		; 30 FC
	stx $02F0.w		; 8E F0 02
	ora ($D2.b,X)		; 01 D2
	ora $02.b		; 05 02
	ora $03.b		; 05 03
	ora $FF.b		; 05 FF
	sta ($41.b,X)		; 81 41
	rtl		; 6B

.INDEX 8
	sep #$9E		; E2 9E
	eor $0187.w,Y		; 59 87 01
	ora $480701.l		; 0F 01 07 48
	inc $FEFB.w		; EE FB FE
	ora [$6F.b]		; 07 6F
	ora ($54.b,X)		; 01 54
	sbc #$79BB.w		; E9 BB 79
	adc $E9B3FC.l,X		; 7F FC B3 E9
	sbc $F3FF.w,Y		; F9 FF F3
	eor $C7F93F.l,X		; 5F 3F F9 C7
	sec		; 38
	ora $9C1F6E.l,X		; 1F 6E 1F 9C
	inx		; E8
	ora #$FCFF.w		; 09 FF FC
	ora $FE1E.w,X		; 1D 1E FE
	and $F7FCFF.l,X		; 3F FF FC F7
	inc $3F37.w,X		; FE 37 3F
	sbc ($3D.b,S),Y		; F3 3D
	cmp $CCBE.w,Y		; D9 BE CC
	asl $E0F0.w		; 0E F0 E0
	sed		; F8
	ora $FE4000.l		; 0F 00 40 FE
	sta $80.b,S		; 83 80
	lda $A040F1.l,X		; BF F1 40 A0
	cmp ($A2.b,X)		; C1 A2
	sty $D2.b		; 84 D2
	ldx #$D0.b		; A2 D0
	inc $B8FF.w,X		; FE FF B8
	ldy $C0F2.w		; AC F2 C0
	cpx #$C0.b		; E0 C0
	sbc ($C0.b,X)		; E1 C0
	sbc [$E0.b],Y		; F7 E0
	inc $F6FE.w,X		; FE FE F6
	ora ($F0.b,X)		; 01 F0
	eor $2BE9F5.l,X		; 5F F5 E9 2B
	bit $1B03.w,X		; 3C 03 1B
	tsb $0D.b		; 04 0D
	cop $06.b		; 02 06
	ora ($83.b,X)		; 01 83
	lda [$C9.b],Y		; B7 C9
	sed		; F8
	inc $38EF.w,X		; FE EF 38
	adc $0E3F1F.l,X		; 7F 1F 3F 0E
	cpy #$F4.b		; C0 F4
	sta $C8.b,S		; 83 C8
	bmi 124.b		; 30 7C
	bcc   3.b		; 90 03
	sed		; F8
	jmp $2C88.w		; 4C 88 2C
	cpy $7E07.w		; CC 07 7E
	sbc ($60.b),Y		; F1 60
	sty $F0.b		; 84 F0
	lda $D0F843.l,X		; BF 43 F8 D0
	jsr ($CC88.w,X)		; FC 88 CC
	cpy #$EC.b		; C0 EC
	lda ($F1.b),Y		; B1 F1
	dey		; 88
	bra  -8.b		; 80 F8
	cpx $E1.b		; E4 E1
	stp		; DB
	sta ($EA.b),Y		; 91 EA
	eor ($09.b,X)		; 41 09
	asl $1D.b		; 06 1D
	cop $3E.b		; 02 3E
	inc $E9.b,X		; F6 E9
	eor #$DBB1.w		; 49 B1 DB
	and $070287.l,X		; 3F 87 02 07
	asl $0F.b		; 06 0F
	asl A		; 0A
	ora $03EF10.l,X		; 1F 10 EF 03
	and ($FF.b),Y		; 31 FF
	ora $440E22.l,X		; 1F 22 0E 44
	stz $3808.w		; 9C 08 38
	bpl 106.b		; 10 6A
	and ($90.b)		; 32 90
	.db $62, $20, $C4		; 62 20 C4
	ora ($FE.b,X)		; 01 FE
	ora $0427E2.l		; 0F E2 27 04
	lsr $9C08.w		; 4E 08 9C
	bpl  56.b		; 10 38
	bmi 122.b		; 30 7A
	rts		; 60

	sbc ($3D.b)		; F2 3D
	mvn $A0,$C0		; 54 C0 A0
	jsl $4020F1.l		; 22 F1 20 40
	rts		; 60

	jsr ($8710.w,X)		; FC 10 87
	jmp.w [$D124]		; DC 24 D1
	lda ($51.b,X)		; A1 51
	rol A		; 2A
	sbc ($FE.b)		; F2 FE
	bmi 118.b		; 30 76
	jmp.w [$FB20]		; DC 20 FB
	phk		; 4B
	beq  11.b		; F0 0B
	and $FC.b,S		; 23 FC
	sbc $810FF8.l		; EF F8 0F 81
	ora $20D021.l,X		; 1F 21 D0 20
	pha		; 48
	bmi  36.b		; 30 24
	ora $3218F4.l		; 0F F4 18 32
	tsb $0C13.w		; 0C 13 0C
	sbc $F06020.l		; EF 20 60 F0
	bmi  15.b		; 30 0F
	and ($78.b),Y		; 31 78
	clc		; 18
	bit $3E1C.w,X		; 3C 1C 3E
	dec A		; 3A
	ror $50A0.w,X		; 7E A0 50
	dec $86.b		; C6 86
	ldx #$18.b		; A2 18
	wai		; CB
	tsb $0B.b		; 04 0B
	sbc ($FE.b)		; F2 FE
	ldy #$D1.b		; A0 D1
	sbc $A27020.l,X		; FF 20 70 A2
	sbc $3149FD.l		; EF FD 49 31
	dey		; 88
	bvs -76.b		; 70 B4
	phy		; 5A
	lsr $430B.w,X		; 5E 0B 43
	sed		; F8
	ora $12090F.l,X		; 1F 0F 09 12
	cop $02.b		; 02 02
	bmi 121.b		; 30 79
	bvs  -8.b		; 70 F8
	eor $FE58FF.l,X		; 5F FF 58 FE
	asl A		; 0A
	eor $761F0F.l,X		; 5F 0F 1F 76
	sbc ($00.b),Y		; F1 00
	sbc #$3F4F.w		; E9 4F 3F
	sbc $3F3BDF.l		; EF DF 3B 3F
	sbc $CF077B.l,X		; FF 7B 07 CF
	iny		; C8
	sbc $9EFFFB.l,X		; FF FB FF 9E
	sbc $FF9E00.l		; EF 00 9E FF
	sta ($F1.b,S),Y		; 93 F1
	ora [$3F.b]		; 07 3F
	brk $C3.b		; 00 C3
	sbc $FFFCF0.l,X		; FF F0 FC FF
	beq  26.b		; F0 1A
	phd		; 0B
	and #$AD39.w		; 29 39 AD
	lda $93.b,X		; B5 93
	txy		; 9B
	cmp $FFFF.w,Y		; D9 FF FF
	cmp $E9.b,X		; D5 E9
	lda $FC5EF9.l		; AF F9 5E FC
	phk		; 4B
	and ($3B.b),Y		; 31 3B
	bpl  57.b		; 10 39
	clc		; 18
	lda $9F0C.w,X		; BD 0C 9F
	asl $187F.w		; 0E 7F 18
	cmp $A7EF46.l,X		; DF 46 EF A7
	sbc $BFFFB7.l,X		; FF B7 FF BF
	sbc $9EDEFF.l,X		; FF FF DE 9E
	and $CB.b,S		; 23 CB
	sbc $7FFFEF.l		; EF EF FF 7F
	inc $FECE.w,X		; FE CE FE
	sed		; F8
	sbc $F8FFF4.l,X		; FF F4 FF F8
	ora #$43DC.w		; 09 DC 43
	jsr ($A923.w,X)		; FC 23 A9
	and [$18.b]		; 27 18
	ora [$14.b],Y		; 17 14
	ora ($8A.b,S),Y		; 13 8A
	ora $75090F.l		; 0F 0F 09 75
	sty $53.b		; 84 53
	lda $D2.b,S		; A3 D2
	sta $BF1FFF.l,X		; 9F FF 1F BF
	beq -125.b		; F0 83
	.db $82, $FE, $07		; 82 FE 07
	sta $A0F783.l		; 8F 83 F7 A0
	sbc ($CE.b,S),Y		; F3 CE
	bcc -63.b		; 90 C1
	and ($F2.b,X)		; 21 F2
	nop		; EA
	cmp $2072C2.l,X		; DF C2 72 20
	beq  16.b		; F0 10
	sbc $1D0087.l,X		; FF 87 00 1D
	trb $0C03.w		; 1C 03 0C
	tsb $4B.b		; 04 4B
	eor #$3326.w		; 49 26 33
	tsb $F832.w		; 0C 32 F8
	sbc $1818FF.l,X		; FF FF 18 18
	and $3F00.w,X		; 3D 00 3F
	ora ($DF.b,X)		; 01 DF
	eor $FF.b,S		; 43 FF
	ror $EF.b		; 66 EF
	rol $3C7F.w		; 2E 7F 3C
	ror $BE18.w,X		; 7E 18 BE
	beq  60.b		; F0 3C
	tsx		; BA
	cmp $D000.w,Y		; D9 00 D0
	plp		; 28
	dey		; 88
	iny		; C8
	cmp ($05.b,X)		; C1 05
	rts		; 60

	rts		; 60

	jsr $7BFF.w		; 20 FF 7B
	jsr $F000.w		; 20 00 F0
	cpx #$F0.b		; E0 F0
	bcc  -8.b		; 90 F8
	php		; 08
	sta $CE00.w,X		; 9D 00 CE
	lda ($E1.b),Y		; B1 E1
	jsr ($7C18.w,X)		; FC 18 7C
	sbc $B6E9.w		; ED E9 B6
	beq   9.b		; F0 09
	cmp $E5.b,X		; D5 E5
	tsb $F7.b		; 04 F7
	sbc $030F.w,X		; FD 0F 03
	ora [$F6.b],Y		; 17 F6
	tsb $0B00.w		; 0C 00 0B
	ora $0406E6.l,X		; 1F E6 06 04
	inc $F1.b		; E6 F1
	sbc $EF.b,X		; F5 EF
	ora $3F.b,S		; 03 3F
	ora [$07.b]		; 07 07
	pea $E9F8.w		; F4 F8 E9
	adc ($E9.b,S),Y		; 73 E9
	adc $01D2.w,Y		; 79 D2 01
	sbc $E3.b,S		; E3 E3
	.db $82, $1F, $FF		; 82 1F FF
	asl $FC3F.w		; 0E 3F FC
	asl $0012.w		; 0E 12 00
	bit $F880.w,X		; 3C 80 F8
	bmi -87.b		; 30 A9
	inc $9E.b		; E6 9E
	sty $C01C.w		; 8C 1C C0
	cmp $FF.b,S		; C3 FF
	brk $01.b		; 00 01
	sta $FC1804.l,X		; 9F 04 18 FC
	bmi  -8.b		; 30 F8
	cpx #$FE.b		; E0 FE
	bra  -1.b		; 80 FF
	ora $1B.b,S		; 03 1B
	eor ($FF.b,X)		; 41 FF
	sta ($DF.b,X)		; 81 DF
	.db $42, $C2		; 42 C2
	trb $FCBA.w		; 1C BA FC
	phk		; 4B
	sbc ($FD.b)		; F2 FD
	bpl -117.b		; 10 8B
	cmp ($A2.b),Y		; D1 A2
	cmp ($38.b,X)		; C1 38
	jsr ($3C08.w,X)		; FC 08 3C
	php		; 08
	sbc $FFB4C8.l		; EF C8 B4 FF
	inc $78.b,X		; F6 78
	cmp ($FF.b),Y		; D1 FF
	sed		; F8
	ora [$01.b],Y		; 17 01
	sei		; 78
	jsr ($F8D8.w,X)		; FC D8 F8
	lda $A3.b,S		; A3 A3
	tsb $3B0F.w		; 0C 0F 3B
	pld		; 2B
	lsr A		; 4A
	and [$E8.b],Y		; 37 E8
	inx		; E8
	ora ($F6.b,X)		; 01 F6
	cmp $B0B9.w,X		; DD B9 B0
	pei ($EA.b)		; D4 EA
	ora $7EFFFF.l		; 0F FF FF 7E
	ply		; 7A
	cmp $CF711D.l		; CF 1D 71 CF
	tya		; 98
	phx		; DA
	sed		; F8
	lda #$DEEB.w		; A9 EB DE
	bvs  -8.b		; 70 F8
	dec $01.b,X		; D6 01
	mvp $16,$80		; 44 80 16
	plp		; 28
	sbc $602758.l,X		; FF 58 27 60
	cmp ($1F.b,S),Y		; D3 1F
	ora [$C2.b]		; 07 C2
	tsb $8E.b		; 04 8E
	ldy #$E0.b		; A0 E0
	jsr $A0A0.w		; 20 A0 A0
	rts		; 60

	rti		; 40

	mvn $FF,$FD		; 54 FD FF
	inc $B4CA.w		; EE CA B4
	ldy $B977.w,X		; BC 77 B9
	sbc ($C7.b),Y		; F1 C7
	plb		; AB
	sbc $4010.w,X		; FD 10 40
	inx		; E8
	jsr $FFEF.w		; 20 EF FF
	inc A		; 1A
	tsx		; BA
	adc $C5.b		; 65 C5
	lda ($C6.b),Y		; B1 C6
	lda ($60.b)		; B2 60
	rts		; 60

	beq  80.b		; F0 50
	sed		; F8
	iny		; C8
	jmp.w [$44E4]		; DC E4 44
	ora [$50.b]		; 07 50
	stx $7A.b		; 86 7A
	bra 127.b		; 80 7F
	sbc ($0B.b),Y		; F1 0B
	sep #$C2		; E2 C2
	sbc $952CF8.l,X		; FF F8 2C 95
	sbc $1DF8D0.l,X		; FF D0 F8 1D
.INDEX 8
	sep #$D9		; E2 D9
	ldx #$CB.b		; A2 CB
	sbc $CBC067.l,X		; FF 67 C0 CB
	sta [$BD.b]		; 87 BD
	eor [$3F.b]		; 47 3F
	jsr ($6CF7.w,X)		; FC F7 6C
	nop		; EA
	bit $70FD.w,X		; 3C FD 70
	sbc ($5B.b),Y		; F1 5B
	brk $C0.b		; 00 C0
	sbc [$87.b]		; E7 87
	cmp $47E1FF.l		; CF FF E1 47
	sbc $3CFF6C.l,X		; FF 6C FF 3C
	inc $FD70.w,X		; FE 70 FD
	rti		; 40

	sbc ($F1.b),Y		; F1 F1
	inx		; E8
	sbc [$FF.b]		; E7 FF
	and $411F9F.l,X		; 3F 9F 1F 41
	bra -93.b		; 80 A3
	cmp ($D6.b,X)		; C1 D6
	adc $FD.b,S		; 63 FD
	inc $6A.b,X		; F6 6A
	stz $009C.w		; 9C 9C 00
	ora $13FFFC.l,X		; 1F FC FF 13
	sta $C1C180.l,X		; 9F 80 C1 C1
	sbc $63.b,S		; E3 63
	sbc [$F6.b],Y		; F7 F6
	sbc $00FE9C.l,X		; FF 9C FE 00
	stz $0C2B.w		; 9C 2B 0C
	trb $3400.w		; 1C 00 34
	cop $B3.b		; 02 B3
	sta $D4.b,S		; 83 D4
	xce		; FB
	sec		; 38
	jmp ($1ED5.w,X)		; 7C D5 1E
	inc $4218.w,X		; FE 18 42
	sbc ($FC.b,X)		; E1 FC
	cmp #$D12F.w		; C9 2F D1
	ora $7F.b,S		; 03 7F
	lda ($04.b,S),Y		; B3 04
	brk $0C.b		; 00 0C
	plx		; FA
	sbc $F69811.l,X		; FF 11 98 F6
	sbc #$80C0.w		; E9 C0 80
	clc		; 18
	tsb $063E.w		; 0C 3E 06
	ora $0C8E04.l		; 0F 04 8E 0C
	inc $2B5F.w,X		; FE 5F 2B
	clc		; 18
	jsr ($F870.w,X)		; FC 70 F8
	cpy #$FB.b		; C0 FB
	sta $FFA9.w		; 8D A9 FF
	sbc $0D06.w,X		; FD 06 0D
	cmp #$F6AC.w		; C9 AC F6
	cmp ($40.b,X)		; C1 40
	sbc ($DA.b),Y		; F1 DA
	ora $FBB81F.l		; 0F 1F B8 FB
	ora $0404ED.l,X		; 1F ED 04 04
	ora $C9.b,S		; 03 C9
	sec		; 38
	brk $1C.b		; 00 1C
	bra   1.b		; 80 01
	rts		; 60

	ora $F6003C.l,X		; 1F 3C 00 F6
	eor $08A6.w,X		; 5D A6 08
	asl $E126.w,X		; 1E 26 E1
	jmp ($BF00.w,X)		; 7C 00 BF
	sta ($00.b,X)		; 81 00
	sbc ($3C.b),Y		; F1 3C
	adc $82D260.l,X		; 7F 60 D2 82
	stx $88.b		; 86 88
	sei		; 78
	bpl  36.b		; 10 24
	lda ($40.b)		; B2 40
	stz $FF.b		; 64 FF
	beq  64.b		; F0 40
	cmp ($01.b,X)		; C1 01
	eor [$07.b]		; 47 07
	ora $FCFF1C.l,X		; 1F 1C FF FC
	.db $62, $FC, $00		; 62 FC 00
	cpx #$02.b		; E0 02
	plp		; 28
	bmi  78.b		; 30 4E
	sbc ($2A.b),Y		; F1 2A
	sbc $E7.b		; E5 E7
	tax		; AA
	bra -30.b		; 80 E2
	bit $8A3E.w		; 2C 3E 8A
	cpx #$F0.b		; E0 F0
	rti		; 40

	cmp ($20.b),Y		; D1 20
	clc		; 18
	bit $1E04.w,X		; 3C 04 1E
	rol A		; 2A
	dey		; 88
	bit #$F0C2.w		; 89 C2 F0
	bit $F049.w		; 2C 49 F0
	tsb $B6B1.w		; 0C B1 B6
	sbc ($8A.b)		; F2 8A
	adc $F09304.l,X		; 7F 04 93 F0
	tas		; 1B
	cpx #$B9.b		; E0 B9
	inc $04FC.w,X		; FE FC 04
	lda $27.b,S		; A3 27
	eor [$67.b],Y		; 57 67
	sed		; F8
	sbc $92FC.w,X		; FD FC 92
	nop		; EA
	dex		; CA
	tyx		; BB
	tsb $FB.b		; 04 FB
	and [$D8.b]		; 27 D8
	sei		; 78
	ldy $F0.b,X		; B4 F0
	beq -82.b		; F0 AE
	ora [$0E.b],Y		; 17 0E
	rol $07E5.w,X		; 3E E5 07
	sbc $D195.w,X		; FD 95 D1
	ora ($F2.b,S),Y		; 13 F2
	plx		; FA
	and $FB87BF.l		; 2F BF 87 FB
	brk $30.b		; 00 30
	cpy #$06.b		; C0 06
	sed		; F8
	ora ($91.b,X)		; 01 91
	tyx		; BB
	asl A		; 0A
	ora $18.b		; 05 18
	cpx #$FF.b		; E0 FF
	asl $3F10.w,X		; 1E 10 3F
	sbc $751FAF.l,X		; FF AF 1F 75
	ora ($DF.b,S),Y		; 13 DF
	rti		; 40

	asl $E2.b		; 06 E2
	lda [$1F.b]		; A7 1F
	ora $0A185F.l		; 0F 5F 18 0A
	adc $7F0FFF.l,X		; 7F FF 0F 7F
	adc [$E4.b],Y		; 77 E4
	inc $74.b,X		; F6 74
	ora ($00.b,S),Y		; 13 00
	ror $FAE2.w,X		; 7E E2 FA
	sbc $1A1CEC.l,X		; FF EC 1C 1A
	ora ($63.b,X)		; 01 63
	ora $F48200.l		; 0F 00 82 F4
	inc $F2.b		; E6 F2
	sbc $03F007.l,X		; FF 07 F0 03
	sbc $E71F07.l,X		; FF 07 1F E7
	pea $A9CC.w		; F4 CC A9
	brk $0D.b		; 00 0D
	and $130004.l,X		; 3F 04 00 13
	ora [$6E.b]		; 07 6E
	trb $6097.w		; 1C 97 60
	stx $ABC0.w		; 8E C0 AB
	bit $A81C.w		; 2C 1C A8
	ora $A4.b,S		; 03 A4
	sbc ($E4.b),Y		; F1 E4
	sei		; 78
	sbc $FF84C0.l,X		; FF C0 84 FF
	bvs 124.b		; 70 7C
	lda ($77.b,S),Y		; B3 77
	cpx #$00.b		; E0 00
	ldy $EF20.w,X		; BC 20 EF
	pea $7D7A.w		; F4 7A 7D
	adc $BF61.w,X		; 7D 61 BF
	rol $C595.w,X		; 3E 95 C5
	cpx #$C0.b		; E0 C0
	jsr ($A2F8.w,X)		; FC F8 A2
	lda #$CFC0.w		; A9 C0 CF
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	tda		; 7B
	dec $67CF.w		; CE CF 67
	phx		; DA
	ora [$A9.b]		; 07 A9
	tsb $DE.b		; 04 DE
	asl $20B1.w		; 0E B1 20
	brk $F4.b		; 00 F4
	sty $DF.b		; 84 DF
	ldy $84.b		; A4 84
	adc [$FF.b]		; 67 FF
	dec $EF.b		; C6 EF
	brk $DE.b		; 00 DE
	bit $AFD9.w,X		; 3C D9 AF
	dec $20.b,X		; D6 20
	jsr $A040.w		; 20 40 A0
	bra  29.b		; 80 1D
	cmp ($E7.b)		; D2 E7
	inc $24.b,X		; F6 24
	cmp ($E0.b),Y		; D1 E0
	trb $EFD2.w		; 1C D2 EF
	inc $FFEA.w,X		; FE EA FF
	ora [$B1.b]		; 07 B1
	beq  15.b		; F0 0F
	sbc $2A0EF8.l		; EF F8 0E 2A
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	rti		; 40

	pha		; 48
	bmi  38.b		; 30 26
	php		; 08
	and ($14.b,S),Y		; 33 14
	tas		; 1B
	ldy #$032F.w		; A0 2F 03
	cli		; 58
	rol A		; 2A
	rep #$C2		; C2 C2
	cmp ($3E.b,S),Y		; D3 3E
	asl $0C3F.w		; 0E 3F 0C
	ply		; 7A
	cmp $1F08.w,Y		; D9 08 1F
	mvp $DC,$F1		; 44 F1 DC
	lsr $1866.w,X		; 5E 66 18
	ora $0604.w,X		; 1D 04 06
	pea $F2C1.w		; F4 C1 F2
	tay		; A8
	nop		; EA
	sbc $027EFC.l		; EF FC 7E 02
	ora $99D001.l,X		; 1F 01 D0 99
	lda ($FF.b,S),Y		; B3 FF
	sta $80DE.w,Y		; 99 DE 80
	cmp $80B506.l		; CF 06 B5 80
	ldx $CCC0.w		; AE C0 CC
	sbc ($AD.b,S),Y		; F3 AD
	sta $C3EF86.l		; 8F 86 EF C3
	sbc [$F1.b],Y		; F7 F1
	mvn $FC,$93		; 54 93 FC
	ora $C8A489.l,X		; 1F 89 A4 C8
	cop $F6.b		; 02 F6
	adc ($E9.b),Y		; 71 E9
	sbc $5EC6FD.l		; EF FD C6 5E
	bit $EF.b		; 24 EF
	pei ($F2.b)		; D4 F2
	sbc $BEFE.w,X		; FD FE BE
	wai		; CB
	pea $FF10.w		; F4 10 FF
	sbc ($0C.b,X)		; E1 0C
.ACCU 8
	sep #$A0		; E2 A0
	ora #$FF.b		; 09 FF
	sbc ($2F.b),Y		; F1 2F
	and $708F.w,X		; 3D 8F 70
	eor [$FC.b],Y		; 57 FC
	ror $3B.b,X		; 76 3B
	ora [$7F.b],Y		; 17 7F
	brk $E9.b		; 00 E9
	ora $3F.b,S		; 03 3F
	sbc $F1BAFC.l		; EF FC BA F1
	bne  10.b		; D0 0A
	inc $C8.b,X		; F6 C8
	sbc $FEFF.w,X		; FD FF FE
	lda $0EF8F0.l,X		; BF F0 F8 0E
	rti		; 40

	ldy $B1.b		; A4 B1
	plp		; 28
	sta [$06.b],Y		; 97 06
	eor #$38.b		; 49 38
	stz $0AE8.w,X		; 9E E8 0A
	.db $82, $EF, $FD		; 82 EF FD
	sbc $DC43.w,X		; FD 43 DC
	cmp $3FDFFF.l		; CF FF DF 3F
	rol $757F.w,X		; 3E 7F 75
	sed		; F8
	rti		; 40

	beq  22.b		; F0 16
	dec $FFF0.w,X		; DE F0 FF
	jsr ($F07A.w,X)		; FC 7A F0
	inc $F000.w,X		; FE 00 F0
	adc $6ADA.w,Y		; 79 DA 6A
	bcc  13.b		; 90 0D
	eor [$E9.b],Y		; 57 E9
	cmp $E1.b,S		; C3 E1
	sta [$97.b],Y		; 97 97
	cop $C4.b		; 02 C4
	sbc $F60AF8.l		; EF F8 0A F6
	eor $0F.b		; 45 0F
	cpy #$5C80.w		; C0 80 5C
	lda $B880.w,Y		; B9 80 B8
	bne -36.b		; D0 DC
	phy		; 5A
	jmp.w [$FFEF]		; DC EF FF
	nop		; EA
	jmp $F8E0BA.l		; 5C BA E0 F8
	beq  -4.b		; F0 FC
	ora $02.b		; 05 02
	trb $D27D.w		; 1C 7D D2
	bra -16.b		; 80 F0
	phd		; 0B
	sbc $5F0CF8.l		; EF F8 0C 5F
	sta [$FF.b]		; 87 FF
	and $2F1F5F.l,X		; 3F 5F 1F 2F
	pld		; 2B
	ora [$7C.b],Y		; 17 7C
	sbc ($9F.b,S),Y		; F3 9F
	and $1A0F63.l,X		; 3F 63 0F 1A
	cmp $DE.b,S		; C3 DE
	ora ($3F.b,X)		; 01 3F
	adc $3F1FFE.l,X		; 7F FE 1F 3F
	txs		; 9A
	cpx $7F1F.w		; EC 1F 7F
	ora [$10.b]		; 07 10
	cmp ($2F.b,X)		; C1 2F
	bvc -31.b		; 50 E1
	sbc $E3805D.l,X		; FF 5D 80 E3
	sbc [$E5.b]		; E7 E5
	cmp $66.b,S		; C3 66
	sbc $50.b,S		; E3 50
	sbc $FFEF2A.l,X		; FF 2A EF FF
	ldy #$F0E9.w		; A0 E9 F0
	sbc #$F2.b		; E9 F2
	ora $2B.b		; 05 2B
	brk $5C.b		; 00 5C
	brk $0B.b		; 00 0B
	and $0240A1.l,X		; 3F A1 40 02
	rti		; 40

	sbc $1CC0.w,X		; FD C0 1C
	and $007C20.l,X		; 3F 20 7C 00
	sbc ($54.b,X)		; E1 54
	sei		; 78
	mvn $66,$1B		; 54 1B 66
.INDEX 8
	sep #$D3		; E2 D3
	sbc $02FE.w,X		; FD FE 02
	ora ($0C.b,X)		; 01 0C
	ora $EF7601.l,X		; 1F 01 76 EF
	sed		; F8
	phd		; 0B
	cpx #$60.b		; E0 60
	asl $1F00.w		; 0E 00 1F
	sbc ($10.b,X)		; E1 10
	bmi  61.b		; 30 3D
	mvn $C1,$8D		; 54 8D C1
	tsx		; BA
	nop		; EA
	cop $07.b		; 02 07
	tsb $EF.b		; 04 EF
	tsb $E9A6.w		; 0C A6 E9
	sbc $5088FD.l		; EF FD 88 50
	sbc $05.b,X		; F5 05
	txa		; 8A
	jsr ($9303.w,X)		; FC 03 93
	sbc ($92.b,X)		; E1 92
	mvn $EA,$BE		; 54 BE EA
	tsx		; BA
	inc $ADE2.w,X		; FE E2 AD
	sty $E0.b		; 84 E0
	ora $05DEBD.l		; 0F BD DE 05
	ora $E9.b,X		; 15 E9
	phx		; DA
	bit $B8C2.w,X		; 3C C2 B8
	lsr $C0.b		; 46 C0
	phd		; 0B
	tas		; 1B
.ACCU 16
	rep #$E4		; C2 E4
	sbc ($B5.b),Y		; F1 B5
	dec $1EFE.w,X		; DE FE 1E
.ACCU 16
.INDEX 16
	rep #$7A		; C2 7A
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	cmp ($DB.b,X)		; C1 DB
	ora $E0.b,S		; 03 E0
	phd		; 0B
	cmp $00.b,S		; C3 00
	eor ($EC.b,X)		; 41 EC
	sed		; F8
	tsb $5410.w		; 0C 10 54
	bra  -1.b		; 80 FF
	rti		; 40

	beq  69.b		; F0 45
	lda #$B739.w		; A9 39 B7
	lda ($DA.b),Y		; B1 DA
	eor $ED.b,X		; 55 ED
	ldy $FC.b		; A4 FC
	rol $2EC1.w,X		; 3E C1 2E
	cmp #$A309.w		; C9 09 A3
	lda [$D3.b]		; A7 D3
	ora ($B2.b,X)		; 01 B2
	bvs -92.b		; 70 A4
	lda #$411C.w		; A9 1C 41
	sta ($04.b),Y		; 91 04
	asl $803A.w,X		; 1E 3A 80
	lda #$A97E.w		; A9 7E A9
	cpy $40.b		; C4 40
	ora $CA87B2.l,X		; 1F B2 87 CA
	ldx $8988.w,Y		; BE 88 89
	jsr $2070.w		; 20 70 20
	sei		; 78
	ldx $FEF0.w		; AE F0 FE
	bmi 124.b		; 30 7C
	clc		; 18
	asl $89.b,X		; 16 89
	plb		; AB
	jsr ($171A.w,X)		; FC 1A 17
	php		; 08
	eor [$6F.b],Y		; 57 6F
	sbc $48B708.l,X		; FF 08 B7 48
	sta [$68.b],Y		; 97 68
	txs		; 9A
	sbc $040C.w,X		; FD 0C 04
	sbc #$4F5F.w		; E9 5F 4F
	sbc $4CFF68.l,X		; FF 68 FF 4C
	sbc $5C30DF.l,X		; FF DF 30 5C
	jsr $7088.w		; 20 88 70
	sbc #$2610.w		; E9 10 26
	ora $1F20.w,Y		; 19 20 1F
	and $1C.b,S		; 23 1C
	bit $D3A0.w,X		; 3C A0 D3
	sbc $F87017.l,X		; FF 17 70 F8
	bpl  -7.b		; 10 F9
	ora $1F3F.w,Y		; 19 3F 1F
	and $003F1C.l,X		; 3F 1C 3F 00
	bit $F000.w,X		; 3C 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($36.b,X)		; 21 36
	brk $FF.b		; 00 FF
	rti		; 40

	sbc $F810.w,X		; FD 10 F8
	jsr ($5209.w,X)		; FC 09 52
.ACCU 16
.INDEX 16
	rep #$F9		; C2 F9
	sbc [$E0.b],Y		; F7 E0
	sbc ($FF.b,S),Y		; F3 FF
	bit $7F63.w,X		; 3C 63 7F
	plx		; FA
	ora ($01.b,X)		; 01 01
	sbc $FFFF.w,Y		; F9 FF FF
	dec $FA51.w		; CE 51 FA
	jsr $03FA.w		; 20 FA 03
	sbc ($F0.b)		; F2 F0
	jsr ($5E98.w,X)		; FC 98 5E
	sbc $F08080.l,X		; FF 80 80 F0
	ora $07F800.l		; 0F 00 F8 07
	beq  -4.b		; F0 FC
	brk $D0.b		; 00 D0
	iny		; C8
	sbc [$F2.b],Y		; F7 F2
	cpx #$09F8.w		; E0 F8 09
	cpy $FC.b		; C4 FC
	phd		; 0B
	mvp $3F,$C0		; 44 C0 3F
	ora $A0FDEF.l,X		; 1F EF FD A0
	cpx $FF.b		; E4 FF
	sbc $2729FE.l,X		; FF FE 29 27
	ora $0F.b,S		; 03 0F
	eor [$4F.b]		; 47 4F
	asl $0F.b,X		; 16 0F
	tsb $1F.b		; 04 1F
	ora $5313.w		; 0D 13 53
	eor ($05.b,X)		; 41 05
	eor [$20.b]		; 47 20
	ora $1F.b,S		; 03 1F
	brk $3F.b		; 00 3F
	inc $FEC0.w,X		; FE C0 FE
	plx		; FA
	eor [$F6.b],Y		; 57 F6
	sbc #$F4F0.w		; E9 F0 F4
	xce		; FB
	xce		; FB
	sbc $FFFF3F.l,X		; FF 3F FF FF
	sbc $FFFFC6.l,X		; FF C6 FF FF
	ora $02FCFE.l,X		; 1F FE FC 02
	ora ($02.b,X)		; 01 02
	asl $0D.b		; 06 0D
	tsb $02.b		; 04 02
	ora #$0B18.w		; 09 18 0B
	ora $13.b		; 05 13
	lsr $84.b		; 46 84
	inc $1335.w,X		; FE 35 13
	eor ($76.b)		; 52 76
	.db $82, $D3, $FF		; 82 D3 FF
	ora [$80.b]		; 07 80
	ora $E8C0FE.l		; 0F FE C0 E8
	beq 100.b		; F0 64
	asl $12.b		; 06 12
	sbc $7D.b,S		; E3 7D
	sta ($7F.b,X)		; 81 7F
	bra -122.b		; 80 86
	sei		; 78
	adc ($FC.b)		; 72 FC
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	dec $F8.b		; C6 F8
	cpx #$FD.b		; E0 FD
	phd		; 0B
	sbc ($FC.b),Y		; F1 FC
	brk $FE.b		; 00 FE
	cpy #$FF.b		; C0 FF
	sbc $27D006.l,X		; FF 06 D0 27
	tya		; 98
	sbc $FFBE91.l,X		; FF 91 BE FF
	cmp $C3.b,S		; C3 C3
	stz $4380.w		; 9C 80 43
	bit $9C00.w,X		; 3C 00 9C
	lda $FFE801.l,X		; BF 01 E8 FF
	sbc $7E.b,X		; F5 7E
	cpx #$02.b		; E0 02
	brk $FF.b		; 00 FF
	cmp [$84.b]		; C7 84
	brk $48.b		; 00 48
	bra -96.b		; 80 A0
	rti		; 40

	bne -96.b		; D0 A0
	ldy #$D0.b		; A0 D0
	sei		; 78
	bvc -45.b		; 50 D3
	jsr $04FC.w		; 20 FC 04
	sbc ($FD.b),Y		; F1 FD
	sbc $08.b,X		; F5 08
	ora ($6B.b,X)		; 01 6B
	and [$15.b]		; 27 15
	and ($FF.b,S),Y		; 33 FF
	adc $331928.l,X		; 7F 28 19 33
	ora $553353.l		; 0F 53 33 55
	and ($2E.b),Y		; 31 2E
	clc		; 18
	bit $1E1C.w		; 2C 1C 1E
	brk $0E.b		; 00 0E
	rti		; 40

	bra   0.b		; 80 00
	ldx $0CFF.w		; AE FF 0C
	sed		; F8
	sbc ($FF.b,X)		; E1 FF
	jmp ($D340.w,X)		; 7C 40 D3
	lda ($7F.b),Y		; B1 7F
	mvn $B9,$3B		; 54 3B B9
	sta $65.b,S		; 83 65
	sbc $AE.b,S		; E3 AE
	sta $009F.w,Y		; 99 9F 00
	ldy $88.b,X		; B4 88
	inc A		; 1A
	sta $45.b,S		; 83 45
	cmp [$8C.b]		; C7 8C
	tay		; A8
	inx		; E8
	sbc $7C201A.l,X		; FF 1A 20 7C
	brk $38.b		; 00 38
	brk $E6.b		; 00 E6
	sed		; F8
	php		; 08
	beq  62.b		; F0 3E
	cmp ($FF.b,X)		; C1 FF
	sta $FFC4.w		; 8D C4 FF
	xce		; FB
	jsr ($708C.w,X)		; FC 8C 70
	ldx $87.b,Y		; B6 87
	eor $2421.w,Y		; 59 21 24
	sed		; F8
	phd		; 0B
	sei		; 78
	sbc $6A58FF.l,X		; FF FF 58 6A
	tsb $5894.w		; 0C 94 58
	stz $B8.b,X		; 74 B8
	tay		; A8
	bmi  80.b		; 30 50
	rts		; 60

	ldy #$C0.b		; A0 C0
	clc		; 18
	brk $88.b		; 00 88
	sta $0012.w		; 8D 12 00
	beq -60.b		; F0 C4
	sbc ($C0.b),Y		; F1 C0
	inc $F18F.w,X		; FE 8F F1
	sbc $74C308.l,X		; FF 08 C3 74
	sbc $064BFD.l,X		; FF FD 4B 06
	ora ($8E.b,X)		; 01 8E
	bpl  44.b		; 10 2C
	brk $08.b		; 00 08
	sta $32.b		; 85 32
	sbc ($49.b)		; F2 49
	pea $7F08.w		; F4 08 7F
	sed		; F8
	cli		; 58
	sbc $E1FF.w,X		; FD FF E1
	brk $68.b		; 00 68
	beq  36.b		; F0 24
	clc		; 18
	tas		; 1B
	brk $02.b		; 00 02
	cpx $6D.b		; E4 6D
	sbc $A000E2.l,X		; FF E2 00 A0
	cpx $C4.b		; E4 C4
	plx		; FA
	dec $FF.b		; C6 FF
	ora ($10.b,X)		; 01 10
	ora ($11.b,S),Y		; 13 11
	and #$28.b		; 29 28
	mvp $28,$D6		; 44 D6 28
	plp		; 28
	bpl -20.b		; 10 EC
	sbc ($B3.b,X)		; E1 B3
	dec $B6.b		; C6 B6
	ora [$00.b]		; 07 00
	ora ($00.b),Y		; 11 00
	and $38BB.w,Y		; 39 BB 38
	ora #$1A.b		; 09 1A
	sbc $1DB5.w,X		; FD B5 1D
	ora #$A5.b		; 09 A5
	dec A		; 3A
	sbc ($00.b)		; F2 00
	cmp ($BF.b),Y		; D1 BF
	.db $82, $F4, $1C		; 82 F4 1C
	jsr ($EBFA.w,X)		; FC FA EB
	adc [$89.b]		; 67 89
	sbc $0F07F8.l,X		; FF F8 07 0F
	plb		; AB
	jsr ($E0EA.w,X)		; FC EA E0
	brk $FC.b		; 00 FC
	inc $BCEE.w,X		; FE EE BC
	cpy $EC.b		; C4 EC
	sbc $FF1FFF.l,X		; FF FF 1F FF
	ora $E8.b,X		; 15 E8
	cpy #$3F.b		; C0 3F
	sed		; F8
	inx		; E8
	ora #$22.b		; 09 22
	sed		; F8
	ora #$38.b		; 09 38
	sbc $FF2325.l,X		; FF 25 23 FF
	adc $15.b,S		; 63 15
	ora ($05.b,S),Y		; 13 05
	ora $08.b,S		; 03 08
	phd		; 0B
	cop $01.b		; 02 01
	asl $05.b		; 06 05
	cop $70.b		; 02 70
	ora $C40024.l,X		; 1F 24 00 C4
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	ldy $7FFD.w		; AC FD 7F
	adc [$F2.b],Y		; 77 F2
	ora $FDF2.w		; 0D F2 FD
	sbc $75FDFA.l,X		; FF FA FD 75
	sed		; F8
	asl A		; 0A
	sbc ($95.b)		; F2 95
	adc $88.b		; 65 88
	dey		; 88
	xce		; FB
	sbc $09F8C0.l,X		; FF C0 F8 09
	sbc $F136.w,X		; FD 36 F1
	bvs   0.b		; 70 00
	eor ($31.b)		; 52 31
	phy		; 5A
	and $3C0D.w,Y		; 39 0D 3C
	and ($0F.b,S),Y		; 33 0F
	bit $FF.b		; 24 FF
	ora [$1C.b],Y		; 17 1C
	ora ($30.b)		; 12 30
	stz $32.b,X		; 74 32
	ror A		; 6A
	rol $0F.b		; 26 0F
	bra   7.b		; 80 07
	bra   3.b		; 80 03
	eor $E9.b,S		; 43 E9
	cop $FE.b		; 02 FE
	jsr ($FE0F.w,X)		; FC 0F FE
	lda ($C5.b)		; B2 C5
	sed		; F8
	xba		; EB
	jsr ($FF08.w,X)		; FC 08 FF
	xce		; FB
	sbc $4F1F2C.l,X		; FF 2C 1F 4F
	and $A77FAF.l,X		; 3F AF 7F A7
	adc $C07FB3.l,X		; 7F B3 7F C0
	inx		; E8
	ora $E61F28.l		; 0F 28 1F E6
	ora $261FC2.l,X		; 1F C2 1F 26
	sbc $9EFFE6.l,X		; FF E6 FF 9E
	txs		; 9A
	inc $FBFE.w,X		; FE FE FB
	inc $FCFF.w,X		; FE FF FC
	cpx #$0FF8.w		; E0 F8 0F
	bvc 120.b		; 50 78
	tya		; 98
	bit $3490.w,X		; 3C 90 34
	sbc $34.b,X		; F5 34
	sbc $26B524.l		; EF 24 B5 26
	ldy $7F.b,X		; B4 7F
	tya		; 98
	rol $7A.b		; 26 7A
	jmp $0180.w		; 4C 80 01
	cpy #$C801.w		; C0 01 C8
	inc $D800.w,X		; FE 00 D8
	lda $B0FE00.l,X		; BF 00 FE B0
	brk $18.b		; 00 18
	ora [$0E.b]		; 07 0E
	ldx $47E9.w,Y		; BE E9 47
	dec $7E.b,X		; D6 7E
	inc $EDC9.w,X		; FE C9 ED
	jsr $F1C3.w		; 20 C3 F1
	pla		; 68
	sbc ($05.b)		; F2 05
	sbc $BDFC.w		; ED FC BD
	adc $06053A.l,X		; 7F 3A 05 06
	sta $FB.b,X		; 95 FB
	lda $E7BDE1.l,X		; BF E1 BD E7
	tya		; 98
	sbc $CF.b,S		; E3 CF
	sta ($FD.b),Y		; 91 FD
	sbc ($74.b)		; F2 74
	sec		; 38
	clv		; B8
	sbc $C5807B.l,X		; FF 7B 80 C5
	cmp $8F.b		; C5 8F
	sbc $FB3A.w,X		; FD 3A FB
	bit #$247E.w		; 89 7E 24
	clc		; 18
	cpx #$7FF2.w		; E0 F2 7F
	brk $3A.b		; 00 3A
	ldy $55.b,X		; B4 55
	sbc $27.b,S		; E3 27
	sbc ($42.b,S),Y		; F3 42
	lda #$80F3.w		; A9 F3 80
	lda $F5.b		; A5 F5
	asl $48F6.w		; 0E F6 48
	sbc ($70.b)		; F2 70
	bra  -2.b		; 80 FE
	sbc $20FD.w		; ED FD 20
	bpl -113.b		; 10 8F
	lda $440218.l		; AF 18 02 44
	xba		; EB
	tsb $08FC.w		; 0C FC 08
	inc $0C7F.w,X		; FE 7F 0C
	ldy #$0023.w		; A0 23 00
	sta $00.b,S		; 83 00
	dex		; CA
	dec $FF90.w,X		; DE 90 FF
	sta $0E05FE.l		; 8F FE 05 0E
	phd		; 0B
	asl $07.b		; 06 07
	cop $05.b		; 02 05
	cop $04.b		; 02 04
	cop $0A.b		; 02 0A
	tsb $AA.b		; 04 AA
	ora $31A1.w		; 0D A1 31
	pea $ECCF.w		; F4 CF EC
.ACCU 16
	rep #$EF		; C2 EF
	sbc $88EC.w		; ED EC 88
	clc		; 18
	sbc #$2082.w		; E9 82 20
	cpy $EE.b		; C4 EE
.ACCU 8
.INDEX 8
	sep #$3C		; E2 3C
.ACCU 8
	sep #$AB		; E2 AB
	tya		; 98
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$B0		; C2 B0
	lsr A		; 4A
	sbc $EDDC.w,Y		; F9 DC ED
	ldy #$9940.w		; A0 40 99
	php		; 08
	bpl  45.b		; 10 2D
	ora $F50D.w,X		; 1D 0D F5
	cpy #$F189.w		; C0 89 F1
	ora $D9D5.w,Y		; 19 D5 D9
	ror $04.b,X		; 76 04
	trb $FE08.w		; 1C 08 FE
	ora $0C08FE.l		; 0F FE 08 0C
	asl $0C.b		; 06 0C
	asl $0304.w		; 0E 04 03
	asl $05.b		; 06 05
	ora $02.b,S		; 03 02
	dey		; 88
	sta ($AA.b)		; 92 AA
	eor ($88.b)		; 52 88
	cmp $EA.b,S		; C3 EA
	cmp ($42.b)		; D2 42
	and $80.b		; 25 80
	xba		; EB
.ACCU 8
.INDEX 8
	sep #$F6		; E2 F6
	sbc [$D0.b]		; E7 D0
	phd		; 0B
	pea $FC82.w		; F4 82 FC
	lsr $F0.b,X		; 56 F0
	sta [$4B.b],Y		; 97 4B
	adc ($EC.b),Y		; 71 EC
	ora ($F9.b,X)		; 01 F9
	ora [$C6.b]		; 07 C6
	and $F81A1C.l,X		; 3F 1C 1A F8
	phd		; 0B
	cpx #$FF.b		; E0 FF
	sbc $660038.l,X		; FF 38 00 66
	bmi  50.b		; 30 32
	stz $F2.b		; 64 F2
	rts		; 60

.ACCU 16
	rep #$E0		; C2 E0
	ldx #$F5.b		; A2 F5
	sbc $51C2C0.l,X		; FF C0 C2 51
	sbc $F8FE.w		; ED FE F8
	tsb $2603.w		; 0C 03 26
	brk $33.b		; 00 33
	brk $1B.b		; 00 1B
	brk $0D.b		; 00 0D
	bpl -122.b		; 10 86
	and $0188FD.l,X		; 3F FD 88 01
	ora $5650.w		; 0D 50 56
	ldy #$3F.b		; A0 3F
	beq -101.b		; F0 9B
	brk $DD.b		; 00 DD
	brk $6F.b		; 00 6F
	sbc $7E00FF.l,X		; FF FF 00 7E
	brk $2E.b		; 00 2E
	brk $87.b		; 00 87
	brk $76.b		; 00 76
	brk $2D.b		; 00 2D
	brk $B2.b		; 00 B2
	ora ($5F.b)		; 12 5F
	ora $E108F0.l,X		; 1F F0 08 E1
	beq  48.b		; F0 30
	inc $F024.w,X		; FE 24 F0
	and $FAB200.l,X		; 3F 00 B2 FA
	lda $EB84.w		; AD 84 EB
	sbc ($60.b),Y		; F1 60
	cld		; D8
	asl A		; 0A
	ldy $FD.b		; A4 FD
	sbc $010EF8.l,X		; FF F8 0E 01
	ora [$03.b]		; 07 03
	sbc $171807.l,X		; FF 07 18 17
	bmi  47.b		; 30 2F
	adc ($6F.b,X)		; 61 6F
	sbc ($5F.b,X)		; E1 5F
	cmp $DF.b,S		; C3 DF
	cmp $9F.b,S		; C3 9F
	lda $260FA3.l		; AF A3 0F 26
	stp		; DB
	ora $DC58FE.l,X		; 1F FE 58 DC
	asl $0E.b		; 06 0E
	asl $E31E.w		; 0E 1E E3
	cmp [$FE.b],Y		; D7 FE
	tsb $FF1C.w		; 0C 1C FF
	bit $3C14.w,X		; 3C 14 3C
	bit $34.b,X		; 34 34
	adc #$FEFD.w		; 69 FD FE
	sbc $7FD5A1.l,X		; FF A1 D5 7F
	ora [$FE.b]		; 07 FE
	sbc $0FFCFE.l,X		; FF FE FC 0F
	sbc $E1.b,X		; F5 E1
	inc $E1.b,X		; F6 E1
	inc $0DF8.w,X		; FE F8 0D
	sbc ($D5.b),Y		; F1 D5
	asl $FE4E.w		; 0E 4E FE
	asl $0C0C.w		; 0E 0C 0C
	php		; 08
	inc $9EFC.w,X		; FE FC 9E
	pea $F8FF.w		; F4 FF F8
	asl A		; 0A
	ora [$A2.b],Y		; 17 A2
	sbc $FB06.w,Y		; F9 06 FB
	tsb $FE.b		; 04 FE
	jsr ($EFD4.w,X)		; FC D4 EF
	inc $43E4.w,X		; FE E4 43
	cpy $F8.b		; C4 F8
	phd		; 0B
	beq  71.b		; F0 47
	inc $0102.w,X		; FE 02 01
	tsb $03.b		; 04 03
	inc $FD08.w,X		; FE 08 FD
	sbc $FFD580.l,X		; FF 80 D5 FF
	sed		; F8
	ora #$030C.w		; 09 0C 03
	rol $0E.b,X		; 36 0E
	iny		; C8
	sec		; 38
	ora ($F1.b),Y		; 11 F1
	and ($E1.b,X)		; 21 E1
	and $E3.b,S		; 23 E3
	cmp [$5F.b],Y		; D7 5F
	eor $C3.b,S		; 43 C3
	cmp [$47.b]		; C7 47
	jsr $3EE4.w		; 20 E4 3E
	sed		; F8
	ora #$0684.w		; 09 84 06
	tsb $06.b		; 04 06
	cop $04.b		; 02 04
	lda $AADF.w,Y		; B9 DF AA
	inc $81E1.w,X		; FE E1 81
	eor $BAF3.w		; 4D F3 BA
	jmp.w [$F311]		; DC 11 F3
	bmi  64.b		; 30 40
	pha		; 48
	bmi  36.b		; 30 24
	beq -86.b		; F0 AA
	clc		; 18
	inc $3814.w,X		; FE 14 38
	asl $30.b,X		; 16 30
	ror $F3.b		; 66 F3
	adc ($EE.b),Y		; 71 EE
	adc $110AF1.l		; 6F F1 0A 11
	cmp $ECC0F2.l		; CF F2 C0 EC
	sbc $1CDEFD.l,X		; FF FD DE 1C
	cpy $22.b		; C4 22
	jsr ($209D.w,X)		; FC 9D 20
	cpy #$F8.b		; C0 F8
	asl $80.b		; 06 80
	adc $8A304F.l,X		; 7F 4F 30 8A
	bit $6BF0.w		; 2C F0 6B
	sed		; F8
	ora $FAC9D7.l		; 0F D7 C9 FA
	mvn $EC,$EF		; 54 EF EC
	dey		; 88
	brk $09.b		; 00 09
	sbc [$EE.b]		; E7 EE
	dex		; CA
	sta $A84491.l		; 8F 91 44 A8
	asl $BA.b		; 06 BA
	cmp #$F070.w		; C9 70 F0
	bpl -26.b		; 10 E6
	brk $C3.b		; 00 C3
	inc $D8A8.w,X		; FE A8 D8
	pea $7640.w		; F4 40 76
	cpx #$1F.b		; E0 1F
	adc $7213.w,X		; 7D 13 72
	ora ($38.b,X)		; 01 38
	ora ($1D.b,X)		; 01 1D
	lda $EBE2.w		; AD E2 EB
	brk $E3.b		; 00 E3
	brk $73.b		; 00 73
	ora #$44F8.w		; 09 F8 44
	cmp $A1F0.w,Y		; D9 F0 A1
	cmp $B4.b,S		; C3 B4
	brk $FF.b		; 00 FF
	and $96.b,X		; 35 96
	brk $DE.b		; 00 DE
	brk $FE.b		; 00 FE
	ldy $5B.b		; A4 5B
	cmp ($09.b)		; D2 09
	ora $F8F1.w		; 0D F1 F8
	ora #$F5BE.w		; 09 BE F5
	and $DC6984.l,X		; 3F 84 69 DC
	ora $FE.b,S		; 03 FE
	ora $07.b,S		; 03 07
	inc $0E06.w,X		; FE 06 0E
	ora ($86.b)		; 12 86
	inc $E8F3.w,X		; FE F3 E8
	ora $BFFE.w		; 0D FE BF
	sta [$FE.b]		; 87 FE
	eor ($D6.b,X)		; 41 D6
	and $38FE07.l,X		; 3F 07 FE 38
	sbc ($FE.b)		; F2 FE
	nop		; EA
	wai		; CB
	inc $09F8.w,X		; FE F8 09
	eor $F8.b,S		; 43 F8
	bit $34.b		; 24 34
	bit $FF.b		; 24 FF
	stz $FE.b		; 64 FE
	ora $65.b		; 05 65
	ora $45.b		; 05 45
	eor ($C9.b,X)		; 41 C9
	tsb $44.b		; 04 44
	inc $F608.w,X		; FE 08 F6
	tsb $FEEA.w		; 0C EA FE
	tsb $D3F1.w		; 0C F1 D3
	sta $0F.b,S		; 83 0F
	inc $FE07.w,X		; FE 07 FE
	jsr ($FD07.w,X)		; FC 07 FD
	asl $FE.b		; 06 FE
	ror A		; 6A
	trb $F000.w		; 1C 00 F0
	ora $FEF10E.l		; 0F 0E F1 FE
	sed		; F8
	ora #$F8FF.w		; 09 FF F8
	ora ($C7.b)		; 12 C7
	inc $20E7.w,X		; FE E7 20
	plx		; FA
	asl $FC.b,X		; 16 FC
	cmp $2D.b,S		; C3 2D
	sbc ($8B.b,X)		; E1 8B
	php		; 08
	wai		; CB
	pha		; 48
	tsb $CFF2.w		; 0C F2 CF
	inc $FEFD.w,X		; FE FD FE
	sbc $0087EA.l,X		; FF EA 87 00
	ora #$1206.w		; 09 06 12
	tsb $0C10.w		; 0C 10 0C
	and $18.b		; 25 18
	jsr $2919.w		; 20 19 29
	ora ($6B.b),Y		; 11 6B
	php		; 08
	adc $11.b,S		; 63 11
	eor ($CE.b),Y		; 51 CE
	sbc ($FF.b,X)		; E1 FF
	sed		; F8
	ora $FF47.w		; 0D 47 FF
	cmp [$0D.b]		; C7 0D
	cmp ($FF.b)		; D2 FF
	sta [$FF.b]		; 87 FF
	sbc $3407.w,X		; FD 07 34
	ldy #$C0.b		; A0 C0
	asl A		; 0A
	inc $FF43.w,X		; FE 43 FF
	eor $036323.l,X		; 5F 23 63 03
	dec $03.b		; C6 03
	cmp $06.b,S		; C3 06
	dec $06.b		; C6 06
	sty $06.b		; 84 06
	stx $8404.w		; 8E 04 84
	bvs -27.b		; 70 E5
	cmp ($5F.b,X)		; C1 5F
	sbc $CD09F8.l,X		; FF F8 09 CD
	sbc $8F0FFE.l,X		; FF FE 0F 8F
	sta $BFBF9F.l,X		; 9F 9F BF BF
	dec $F8.b		; C6 F8
	ora #$DB55.w		; 09 55 DB
	inc $FFFC.w,X		; FE FC FF
	sed		; F8
	asl $BAC5.w,X		; 1E C5 BA
	lda [$F3.b],Y		; B7 F3
	sbc $3045FC.l,X		; FF FC 45 30
	beq   9.b		; F0 09
	tsb $7F.b		; 04 7F
	sbc $FF.b,S		; E3 FF
	cmp $1F1700.l,X		; DF 00 17 1F
	phd		; 0B
	ora [$13.b],Y		; 17 13
	ora [$0D.b]		; 07 0D
	phd		; 0B
	brk $0B.b		; 00 0B
	asl $0105.w		; 0E 05 01
	adc $E9.b,X		; 75 E9
	sbc ($E0.b),Y		; F1 E0
	ora $00FE20.l		; 0F 20 FE 00
	ora [$10.b]		; 07 10
	inc $F1BA.w,X		; FE BA F1
	php		; 08
	sbc $015F.w,X		; FD 5F 01
	php		; 08
	phd		; 0B
	cpy $7F.b		; C4 7F
	sbc $AFFF6F.l,X		; FF 6F FF AF
	adc $CA6F1E.l,X		; 7F 1E 6F CA
	lda $0DF0C2.l		; AF C2 F0 0D
	sta $7441.w		; 8D 41 74
	sbc ($FF.b),Y		; F1 FF
	sbc $5AFEF7.l,X		; FF F7 FE 5A
	sbc $F0A0.w,X		; FD A0 F0
	asl $F063.w		; 0E 63 F0
	cpx #$F8.b		; E0 F8
	ora #$FEEF.w		; 09 EF FE
	phy		; 5A
	sbc $F8E0.w,X		; FD E0 F8
	asl $0809.w		; 0E 09 08
	sed		; F8
	adc ($0D.b,X)		; 61 0D
	inc $090C.w,X		; FE 0C 09
	brk $05.b		; 00 05
	ora ($FE.b)		; 12 FE
	tsb $16.b		; 04 16
	cpy $10.b		; C4 10
	jmp ($1253.w,X)		; 7C 53 12
	inc $8409.w,X		; FE 09 84
	sbc $D91DFE.l,X		; FF FE 1D D9
	inc $940C.w,X		; FE 0C 94
	sty $8894.w		; 8C 94 88
	bcc -110.b		; 90 92
	tya		; 98
	sbc $98B20F.l,X		; FF 0F B2 98
	and ($18.b,S),Y		; 33 18
	and $081A.w,Y		; 39 1A 08
	pld		; 2B
	ora ($02.b,X)		; 01 02
	ora ($22.b,X)		; 01 22
	ora $0F.b		; 05 0F
	sbc $0520FE.l,X		; FF FE 20 05
	brk $85.b		; 00 85
	inc $9540.w,X		; FE 40 95
	rti		; 40

	bit $49.b		; 24 49
	bit $FF49.w		; 2C 49 FF
	sta $C769CF.l,X		; 9F CF 69 C7
	adc ($73.b,X)		; 61 73
	sbc $7B.b		; E5 7B
	sbc $F1.b		; E5 F1
	sbc $F7EFF5.l		; EF F5 EF F7
	brk $FC.b		; 00 FC
	sbc $E8E0FE.l,X		; FF FE E0 E8
	asl A		; 0A
	sta ($34.b)		; 92 34
	sta ($F3.b)		; 92 F3
	stx $E3.b,Y		; 96 E3
	stx $CE.b		; 86 CE
	lda [$DE.b]		; A7 DE
	lda [$8F.b]		; A7 8F
	plb		; AB
	dec A		; 3A
	sbc [$AF.b],Y		; F7 AF
	sbc [$40.b],Y		; F7 40
	sbc ($3A.b)		; F2 3A
	cpx #$0B.b		; E0 0B
	sty $E8.b,X		; 94 E8
	phd		; 0B
	plp		; 28
	cld		; D8
	asl A		; 0A
	lda $2509F0.l,X		; BF F0 09 25
	and $FE870E.l		; 2F 0E 87 FE
	and $FB27.w		; 2D 27 FB
	ora [$0F.b]		; 07 0F
	eor [$FE.b],Y		; 57 FE
	.db $62, $08, $1F		; 62 08 1F
	pha		; 48
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	rti		; 40

	inc $7E3F.w,X		; FE 3F 7E
	mvn $34,$FE		; 54 FE 34
	sbc ($BF.b)		; F2 BF
	adc $BFFFBF.l,X		; 7F BF FF BF
	sbc $B0E0.w,X		; FD E0 B0
	asl $00.b,X		; 16 00
	sed		; F8
	ora #$7F.b		; 09 7F
	sta $E0.b		; 85 E0
	sed		; F8
	ora $8C.b,X		; 15 8C
	tsb $0C88.w		; 0C 88 0C
	sty $FF08.w		; 8C 08 FF
	jsr ($E87C.w,X)		; FC 7C E8
	ora ($8F.b,S),Y		; 13 8F
	sbc $0F0EDF.l,X		; FF DF 0E 0F
	asl $07.b		; 06 07
	tsb $07.b		; 04 07
	ora $06.b		; 05 06
	eor $46.b		; 45 46
	mvp $02,$46		; 44 46 02
	mvp $FC,$CA		; 44 CA FC
	tya		; 98
	eor $DF.b,X		; 55 DF
	inc $FE9F.w,X		; FE 9F FE
	.db $42, $F8		; 42 F8
	inc A		; 1A
	cpx #$CB.b		; E0 CB
	ror $C9.b		; 66 C9
	sbc $C9619F.l,X		; FF 9F 61 C9
	bvc  68.b		; 50 44
	bpl   4.b		; 10 04
	trb $04.b		; 14 04
	rol $14.b		; 26 14
	adc [$14.b]		; 67 14
	ora ($10.b,X)		; 01 10
	sta [$5F.b]		; 87 5F
	inc $4122.w,X		; FE 22 41
	inc $41A2.w,X		; FE A2 41
	bra  65.b		; 80 41
	dey		; 88
	ora ($CC.b,X)		; 01 CC
	cmp #$15.b		; C9 15
	sbc $0CE01B.l,X		; FF 1B E0 0C
	jsr $03CC.w		; 20 CC 03
	cpy $FF.b		; C4 FF
	and ($9E.b),Y		; 31 9E
	cpy $5A.b		; C4 5A
	tsa		; 3B
	adc ($3F.b,X)		; 61 3F
	inc $2544.w,X		; FE 44 25
	pld		; 2B
	asl $0A04.w		; 0E 04 0A
	asl A		; 0A
	beq 111.b		; F0 6F
	brk $2F.b		; 00 2F
	brk $0E.b		; 00 0E
	sbc $0A80FE.l,X		; FF FE 80 0A
	bcc   0.b		; 90 00
	bne   0.b		; D0 00
	sbc ($00.b),Y		; F1 00
	adc $F5.b,X		; 75 F5
	sbc ($F7.b),Y		; F1 F7
	lda $525A.w		; AD 5A 52
	php		; 08
	sta [$8A.b]		; 87 8A
	lda $52A5.w		; AD A5 52
	sbc [$FD.b],Y		; F7 FD
	eor ($A0.b)		; 52 A0
	tyx		; BB
	bra -14.b		; 80 F2
	pei ($7F.b)		; D4 7F
	inc $34.b,X		; F6 34
	lda $D2DB.w		; AD DB D2
	lda $5A.b,X		; B5 5A
	lsr A		; 4A
	bpl -75.b		; 10 B5
	lda $4A.b		; A5 4A
	sbc $FDA2C8.l		; EF C8 A2 FD
	lsr A		; 4A
	cpx #$80.b		; E0 80
	sbc ($F6.b)		; F2 F6
	adc ($FF.b,X)		; 61 FF
	trb $BA.b		; 14 BA
	lda $F1.b,X		; B5 F1
	tsb $16.b		; 04 16
	phd		; 0B
	sbc ($16.b),Y		; F1 16
	and ($12.b,S),Y		; 33 12
	and ($13.b)		; 32 13
	rol $3F.b,X		; 36 3F
	and $1713.w		; 2D 13 17
	and ($01.b,S),Y		; 33 01
	and $09.b		; 25 09
	jsr $0DFE.w		; 20 FE 0D
	brk $FE.b		; 00 FE
	jsr ($FFFC.w,X)		; FC FC FF
	lda ($04.b,X)		; A1 04
	and $57.b,S		; 23 57
	and $7B.b,S		; 23 7B
	and [$39.b]		; 27 39
	and $75.b		; 25 75
	and $6D37.w		; 2D 37 6D
	cmp $5D4C3F.l		; CF 3F 4C 5D
	sta $9D1F.w		; 8D 1F 9D
	rti		; 40

	sta $FE00.w,X		; 9D 00 FE
	sta $E8F140.l,X		; 9F 40 F1 E8
	tsb $BF.b		; 04 BF
	lda ($E5.b)		; B2 E5
	sbc $A0FEED.l,X		; FF ED FE A0
	beq  25.b		; F0 19
	lda [$51.b]		; A7 51
	lda ($FF.b,X)		; A1 FF
	lda [$FE.b],Y		; B7 FE
	cpx #$F8.b		; E0 F8
	ora $F6CC.w,Y		; 19 CC F6
	sbc $FFCA03.l,X		; FF 03 CA FF
	tsa		; 3B
	cmp ($FE.b),Y		; D1 FE
	lda ($C5.b)		; B2 C5
	cmp $1F37E7.l,X		; DF E7 37 1F
	adc $7F9F1F.l,X		; 7F 1F 9F 7F
	adc $FFAE9F.l,X		; 7F 9F AE FF
	and $3F3FBF.l,X		; 3F BF 3F 3F
	adc $3F40FD.l,X		; 7F FD 40 3F
	bra  62.b		; 80 3E
	cpx $A2.b		; E4 A2
	.db $82, $20, $F0		; 82 20 F0
	and $E0.b		; 25 E0
	sed		; F8
	ora $F8FF8D.l,X		; 1F 8D FF F8
	tsb $C0A1.w		; 0C A1 C0
	ora $8AFE.w		; 0D FE 8A
	tax		; AA
	sta $E1.b		; 85 E1
	inc $0DF8.w,X		; FE F8 0D
	cpy #$F8.b		; C0 F8
	asl $F7.b,X		; 16 F7
	pea $0AE8.w		; F4 E8 0A
	inc $63FD.w,X		; FE FD 63
	lda ($8A.b,X)		; A1 8A
	sbc ($C0.b,X)		; E1 C0
	sed		; F8
	ora $3FF840.l,X		; 1F 40 F8 3F
	cmp $0EFDEC.l		; CF EC FD 0E
	inc $0E28.w,X		; FE 28 0E
	and $2A31.w		; 2D 31 2A
	ora $A7EE.w,X		; 1D EE A7
	jsr $BA84.w		; 20 84 BA
	jmp ($84F7.w)		; 6C F7 84
	sta [$FD.b],Y		; 97 FD
	bvs  -2.b		; 70 FE
	trb $70.b		; 14 70
	mvn $EE,$B8		; 54 B8 EE
	lda [$FF.b]		; A7 FF
	ora $0040C9.l,X		; 1F C9 40 00
	rol A		; 2A
	lda $978F1F.l		; AF 1F 8F 97
	sta [$87.b]		; 87 87
	sta [$6F.b],Y		; 97 6F
	ora [$FE.b],Y		; 17 FE
	txa		; 8A
	inc $1F67.w,X		; FE 67 1F
	sbc [$8F.b],Y		; F7 8F
	eor [$00.b],Y		; 57 00
	adc [$28.b],Y		; 77 28
	stp		; DB
	ldy #$DF.b		; A0 DF
	stz $0F.b		; 64 0F
	jmp $8049.w		; 4C 49 80
	sed		; F8
	clc		; 18
	ora #$F3.b		; 09 F3
	cmp $11.b,S		; C3 11
	asl A		; 0A
	asl A		; 0A
	asl $C9.b		; 06 C9
	lda ($5F.b),Y		; B1 5F
	sbc #$11.b		; E9 11
	sbc ($64.b)		; F2 64
	ldy $6F.b		; A4 6F
	adc $FE.b,X		; 75 FE
	ora $00E084.l,X		; 1F 84 E0 00
	inx		; E8
	beq  -8.b		; F0 F8
	inc $1CFC.w,X		; FE FC 1C
	cpy $02FA.w		; CC FA 02
	tay		; A8
	sed		; F8
	bra -53.b		; 80 CB
	jsr ($0AF8.w,X)		; FC F8 0A
	cmp $EAC4B2.l		; CF B2 C4 EA
	eor $CC.b,X		; 55 CC
	tax		; AA
	ora $E0.b,S		; 03 E0
	asl A		; 0A
	ldx $FFF4.w		; AE F4 FF
	sed		; F8
	ora #$4F.b		; 09 4F
	eor $A06BD6.l		; 4F D6 6B A0
	ora #$79.b		; 09 79
	cmp $00.b,S		; C3 00
	dec $FE.b		; C6 FE
	.db $42, $7D		; 42 7D
	ora ($5E.b),Y		; 11 5E
	rti		; 40

	and ($1E.b,X)		; 21 1E
	beq  -8.b		; F0 F8
	ora #$80.b		; 09 80
	and $8C3F0F.l,X		; 3F 0F 3F 8C
	sta ($00.b)		; 92 00
	bpl -32.b		; 10 E0
	stx $F6.b		; 86 F6
	plx		; FA
	jsr ($FBF8.w,X)		; FC F8 FB
	sbc $5540.w,X		; FD 40 55
	jmp ($F0FE.w,X)		; 7C FE F0
	brk $9B.b		; 00 9B
	inc $FC92.w,X		; FE 92 FC
	cpy $00.b		; C4 00
	beq  63.b		; F0 3F
	eor $59.b,X		; 55 59
	tas		; 1B
	cmp $3C.b,X		; D5 3C
	sbc [$0C.b]		; E7 0C
	sbc ($B2.b),Y		; F1 B2
	bcs  12.b		; B0 0C
.ACCU 16
.INDEX 16
	rep #$F1		; C2 F1
	sbc $51E946.l,X		; FF 46 E9 51
	sbc $D957.w,X		; FD 57 D9
	sbc $D042.w,X		; FD 42 D0
	tsb $D040.w		; 0C 40 D0
	phd		; 0B
	brk $F0.b		; 00 F0
	rol $36.b,X		; 36 36
	and $36.b,X		; 35 36
	ora $16BBFF.l,X		; 1F FF BB 16
	lsr A		; 4A
	ora $63.b,S		; 03 63
	phd		; 0B
	and [$4B.b],Y		; 37 4B
	and $7F6B6B.l,X		; 3F 6B 6B 7F
	lda [$C9.b],Y		; B7 C9
	rti		; 40

	pld		; 2B
	bpl  -2.b		; 10 FE
	inc $D4.b		; E6 D4
	inc $FE80.w,X		; FE 80 FE
	brk $6C.b		; 00 6C
	ldy $F86C.w		; AC 6C F8
	pla		; 68
	sbc $C0527F.l,X		; FF 7F 52 C0
	dec $D0.b		; C6 D0
	cpx $FCD2.w		; EC D2 FC
	dec $D6.b,X		; D6 D6
	inc $00D0.w,X		; FE D0 00
	bne   2.b		; D0 02
	pei ($02.b)		; D4 02
	and ($FC.b),Y		; 31 FC
	inc $FEF2.w,X		; FE F2 FE
	ora ($FE.b,X)		; 01 FE
	sta $6607.w,Y		; 99 07 66
	adc ($59.b,X)		; 61 59
	lda $2638F5.l		; AF F5 38 26
	asl $0719.w,X		; 1E 19 07
	phy		; 5A
	ldx #$8A46.w		; A2 46 8A
	ora $40BEC6.l,X		; 1F C6 BE 40
	sta $FF3F.w,X		; 9D 3F FF
	adc $3FC350.l,X		; 7F 50 C3 3F
	bit $C303.w,X		; 3C 03 C3
	cpy #$FC3C.w		; C0 3C FC
	sed		; F8
	ldx $C6F2.w		; AE F2 C6
	ldx $FFFF.w,Y		; BE FF FF
	asl A		; 0A
	ldy $FEF8.w,X		; BC F8 FE
	xce		; FB
	sbc $F8F4.w,X		; FD F4 F8
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	php		; 08
	beq  32.b		; F0 20
	cpy #$10.b		; C0 10
	bpl   5.b		; 10 05
	lda ($C0.b)		; B2 C0
	cpy #$28.b		; C0 28
	sbc ($FE.b)		; F2 FE
	ldx #$22.b		; A2 22
	pea $0F81.w		; F4 81 0F
	eor ($FE.b,S),Y		; 53 FE
	sbc $185A.w,X		; FD 5A 18
	lda $A5.b		; A5 A5
	sbc $8142.w,Y		; F9 42 81
	pea $2CDB.w		; F4 DB 2C
	jsr ($E7C0.w,X)		; FC C0 E7
	and $A1.b,S		; 23 A1
	inc $C3.b,X		; F6 C3
	brk $A5.b		; 00 A5
	.db $42, $18		; 42 18
	and ($90.b)		; 32 90
	ror $68.b		; 66 68
	lda $FF.b		; A5 FF
	inx		; E8
	ldx #$F0.b		; A2 F0
	eor $0BF8EE.l		; 4F EE F8 0B
	sbc $291252.l,X		; FF 52 12 29
	ora #$1C.b		; 09 1C
	ora [$08.b]		; 07 08
	ora $7F.b,S		; 03 7F
	phk		; 4B
	lsr $0024.w,X		; 5E 24 00
	ora [$00.b],Y		; 17 00
	eor $6600.w		; 4D 00 66
	dec $89.b		; C6 89
	trb $F11E.w		; 1C 1E F1
	lda $447CC2.l,X		; BF C2 7C 44
	tsb $22.b		; 04 22
	cop $11.b		; 02 11
	ora ($95.b,X)		; 01 95
	lda ($CB.b),Y		; B1 CB
	cmp ($FA.b,S),Y		; D3 FA
	eor $15.b,S		; 43 15
	sep #$00		; E2 00
	and ($85.b,X)		; 21 85
	ldy $BB.b,X		; B4 BB
	cmp [$FA.b],Y		; D7 FA
	eor ($EA.b,X)		; 41 EA
	lsr $57.b		; 46 57
	lda $00C600.l		; AF 00 C6 00
	cpy $F8F0.w		; CC F0 F8
	ora ($4F.b)		; 12 4F
	ldx #$87.b		; A2 87
	ldy $20.b,X		; B4 20
	brk $64.b		; 00 64
	beq  -8.b		; F0 F8
	ora ($F1.b)		; 12 F1
	jsr $F8FF.w		; 20 FF F8
	ora $08.b,X		; 15 08
	jmp $600030.l		; 5C 30 00 60
	rol $891C.w,X		; 3E 1C 89
	bit $B050.w,X		; 3C 50 B0
	ora $04.b		; 05 04
	sta $84.b		; 85 84
	inc $8792.w,X		; FE 92 87
	ldx $FE48.w		; AE 48 FE
	sta $00.b,S		; 83 00
	lda $FFB1E2.l		; AF E2 B1 FF
	eor $AD.b		; 45 AD
	dec $FF18.w		; CE 18 FF
	jsr ($FEC8.w,X)		; FC C8 FE
	jsr ($9D84.w,X)		; FC 84 9D
	ora $0A.b		; 05 0A
	sbc #$DF.b		; E9 DF
	sta $80.b,X		; 95 80
	lda #$86.b		; A9 86
	.db $82, $94, $92		; 82 94 92
	bpl  80.b		; 10 50
	sta $009E.w,Y		; 99 9E 00
	inc $BBFC.w,X		; FE FC BB
	tax		; AA
	ldx #$23.b		; A2 23
	inc $FF42.w,X		; FE 42 FF
	sed		; F8
	sta ($00.b,S),Y		; 93 00
	sta ($FF.b,X)		; 81 FF
	tax		; AA
	dec $FB.b		; C6 FB
	ldx $FFF7.w		; AE F7 FF
	sed		; F8
	ora ($AA.b),Y		; 11 AA
	sed		; F8
	ora #$F3.b		; 09 F3
	sed		; F8
	ora #$10.b		; 09 10
	sbc $9081EF.l,X		; FF EF 81 90
	bpl -104.b		; 10 98
	bpl -120.b		; 10 88
	eor [$E1.b],Y		; 57 E1
	ora ($88.b,X)		; 01 88
	ora ($F9.b),Y		; 11 F9
	asl A		; 0A
	bpl  -2.b		; 10 FE
	ora #$0B.b		; 09 0B
	bit #$FE.b		; 89 FE
	cpx $40.b		; E4 40
	asl $FEFE.w,X		; 1E FE FE
	lsr $5D11.w,X		; 5E 11 5D
	ora ($FE.b,S),Y		; 13 FE
	ora ($5F.b),Y		; 11 5F
	ora $4F.b,S		; 03 4F
	cop $4E.b		; 02 4E
	eor ($FC.b,X)		; 41 FC
	pha		; 48
	jmp $4BFE.w		; 4C FE 4B
	wai		; CB
	inc $0014.w,X		; FE 14 00
	ora $80.b,X		; 15 80
	clv		; B8
	sta $7EFE17.l		; 8F 17 FE 7E
	.db $42, $07		; 42 07
	lda #$24.b		; A9 24
	sta ($3C.b,X)		; 81 3C
	lda $C3.b		; A5 C3
	lda #$FE.b		; A9 FE
	bit $BD.b		; 24 BD
	inc $8118.w,X		; FE 18 81
	phy		; 5A
	inc $E100.w,X		; FE 00 E1
	rts		; 60

	inc $0BFE.w,X		; FE FE 0B
	and $070107.l,X		; 3F 07 01 07
	sbc $E907.w,X		; FD 07 E9
	ora $68.b,S		; 03 68
	sty $FD.b		; 84 FD
	cop $48.b		; 02 48
	txa		; 8A
	php		; 08
	inc $AAFA.w,X		; FE FA AA
	.db $62, $04, $B6		; 62 04 B6
	tyx		; BB
	rti		; 40

	inx		; E8
	asl $D9B8.w		; 0E B8 D9
	cpy #$E0.b		; C0 E0
	bpl  21.b		; 10 15
	cmp ($FB.b,S),Y		; D3 FB
	eor [$2C.b]		; 47 2C
	lsr $FE.b		; 46 FE
	rti		; 40

	inc $FFDB.w,X		; FE DB FF
	eor $FE.b		; 45 FE
	.db $82, $F1, $E4		; 82 F1 E4
	tad		; 5B
	eor $17.b		; 45 17
	inc $5200.w,X		; FE 00 52
	adc $5268C0.l,X		; 7F C0 68 52
	adc $7AD752.l,X		; 7F 52 D7 7A
.ACCU 16
	rep #$6F		; C2 6F
	inc $41D5.w		; EE D5 41
	sei		; 78
	plp		; 28
	ora [$FE.b]		; 07 FE
	clc		; 18
	bit #$1794.w		; 89 94 17
	brk $EB.b		; 00 EB
	adc $E70AAD.l,X		; 7F AD 0A E7
	cmp #$BDFC.w		; C9 FC BD
	and $64E298.l,X		; 3F 98 E2 64
	bcs  10.b		; B0 0A
	bra 114.b		; 80 72
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	and $0D0705.l,X		; 3F 05 07 0D
	asl $06.b		; 06 06
	ora $060B1A.l		; 0F 1A 0B 06
	ora ($37.b,S),Y		; 13 37
	ora ($0F.b,S),Y		; 13 0F
	and ($84.b,X)		; 21 84
	ora $F307FE.l		; 0F FE 07 F3
	ora [$0F.b]		; 07 0F
	ora $1B.b,S		; 03 1B
	ora [$21.b]		; 07 21
	stz $33F3.w		; 9C F3 33
	sbc ($1F.b,S),Y		; F3 1F
	inc $003C.w,X		; FE 3C 00
	sbc $FE9DA7.l,X		; FF A7 9D FE
	adc $3FFE80.l,X		; 7F 80 FE 3F
	cpy #$F1.b		; C0 F1
	sbc $80FF.w,X		; FD FF 80
	sbc $C0FEFF.l,X		; FF FF FE C0
	sbc $050102.l,X		; FF 02 01 05
	ora $02.b,S		; 03 02
	asl $0D.b		; 06 0D
	tsb $03.b		; 04 03
	php		; 08
	tas		; 1B
	php		; 08
	sbc ($0F.b,X)		; E1 0F
	ora [$10.b]		; 07 10
	inc $0003.w,X		; FE 03 00
	ora [$00.b]		; 07 00
	asl $01.b		; 06 01
	tsb $3843.w		; 0C 43 38
	sbc ($07.b),Y		; F1 07
	clc		; 18
	sbc ($0F.b,S),Y		; F3 0F
	inc $F0EE.w,X		; FE EE F0
	cmp $FE43EE.l		; CF EE 43 FE
	cmp $FEFEE0.l,X		; DF E0 FE FE
	beq 127.b		; F0 7F
	beq  -1.b		; F0 FF
	inc $0DE0.w,X		; FE E0 0D
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	sbc $1FF8C0.l,X		; FF C0 F8 1F
	stz $8D8A.w,X		; 9E 8A 8D
	inc $FEFE.w,X		; FE FE FE
	inc $010F.w		; EE 0F 01
	sbc ($F8.b),Y		; F1 F8
	tsb $01FF.w		; 0C FF 01
	cpy #$F8.b		; C0 F8
	jsr $839D.w		; 20 9D 83
	jmp ($FC03.w,X)		; 7C 03 FC
	ora $3E.b,S		; 03 3E
	bra -56.b		; 80 C8
	inc $83FE.w,X		; FE FE 83
	adc $FEFF03.l,X		; 7F 03 FF FE
	iny		; C8
	sbc ($3F.b,X)		; E1 3F
	inc $00FE.w,X		; FE FE 00
	rol $20B0.w		; 2E B0 20
	jmp $4310.w		; 4C 10 43
	tsb $0F20.w		; 0C 20 0F
	jsr $1FE1.w		; 20 E1 1F
	cpy #$F1.b		; C0 F1
	rti		; 40

	jmp $4330.w		; 4C 30 43
	bit $1F20.w,X		; 3C 20 1F
	plp		; 28
	jsr ($C0FE.w,X)		; FC FE C0
	brk $FF.b		; 00 FF
	bra   0.b		; 80 00
	rts		; 60

	brk $30.b		; 00 30
	adc $A900FF.l,X		; 7F FF 00 A9
	brk $54.b		; 00 54
	sed		; F8
	cop $DC.b		; 02 DC
	cmp ($F1.b,X)		; C1 F1
	sbc $885410.l,X		; FF 10 54 88
	cop $FC.b		; 02 FC
	cmp ($28.b,X)		; C1 28
	tsb $E03E.w		; 0C 3E E0
	sbc $40E7FE.l,X		; FF FE E7 40
	rti		; 40

	ldx #$87.b		; A2 87
	sbc $F1.b		; E5 F1
	sed		; F8
	phd		; 0B
	dec $FF.b,X		; D6 FF
	sed		; F8
	ora #$01.b		; 09 01
	ora ($02.b,X)		; 01 02
	eor [$0E.b],Y		; 57 0E
	inc $F006.w,X		; FE 06 F0
	sed		; F8
	asl A		; 0A
	brk $02.b		; 00 02
	lsr $F7.b,X		; 56 F7
	jsr ($0C06.w,X)		; FC 06 0C
	tsb $9598.w		; 0C 98 95
	sta $2A30FF.l,X		; 9F FF 30 2A
	adc $1F6350.l,X		; 7F 50 63 1F
	sbc ($00.b),Y		; F1 00
	tsb $9500.w		; 0C 00 95
	php		; 08
	rol A		; 2A
	eor $80.b,S		; 43 80
	ora ($50.b),Y		; 11 50
	and $2F0045.l		; 2F 45 00 2F
	and $FF.b,S		; 23 FF
	bra  50.b		; 80 32
	php		; 08
.ACCU 16
.INDEX 16
	rep #$30		; C2 30
	tsb $F0.b		; 04 F0
	tsb $E0.b		; 04 E0
	php		; 08
	inc $187F.w,X		; FE 7F 18
	sbc ($02.b),Y		; F1 02
	and ($0C.b)		; 32 0C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	tsb $F8.b		; 04 F8
	inc $F008.w,X		; FE 08 F0
	.db $42, $30		; 42 30
	inc $0604.w,X		; FE 04 06
	ora $A6.b,S		; 03 A6
	tax		; AA
	sed		; F8
	ora #$FA04.w		; 09 04 FA
	sbc $F8F1CF.l,X		; FF CF F1 F8
	asl A		; 0A
	brk $22.b		; 00 22
	adc $15.b		; 65 15
	and [$05.b],Y		; 37 05
	adc ($43.b,S),Y		; 73 43
	tda		; 7B
	ora $0B.b,S		; 03 0B
	sbc $1521FF.l,X		; FF FF 21 15
	ora $1402.w,Y		; 19 02 14
	ora $CF23.w		; 0D 23 CF
	ora ($6F.b,S),Y		; 13 6F
	ora [$FF.b]		; 07 FF
	eor $3F.b,S		; 43 3F
	ora $1F.b,S		; 03 1F
	cmp $3F01F1.l,X		; DF F1 01 3F
	brk $3F.b		; 00 3F
	trb $0C3F.w		; 1C 3F 0C
	sbc ($20.b),Y		; F1 20
	and [$08.b],Y		; 37 08
	tas		; 1B
	php		; 08
	and $0C05C6.l,X		; 3F C6 05 0C
	asl A		; 0A
	asl $05.b		; 06 05
	ora $21.b,S		; 03 21
	php		; 08
	bmi   8.b		; 30 08
	sbc $0718C1.l,X		; FF C1 18 07
	tsb $0E03.w		; 0C 03 0E
	ora ($07.b,X)		; 01 07
	brk $BF.b		; 00 BF
	cpy #$48FE.w		; C0 FE 48
	sbc ($E1.b)		; F2 E1
	rtl		; 6B

	sbc $F7FE70.l		; EF 70 FE F7
	sec		; 38
	bit $C038.w,X		; 3C 38 C0
	tsb $48F1.w		; 0C F1 48
	sbc ($70.b)		; F2 70
	jmp ($FE61.w,X)		; 7C 61 FE
	sec		; 38
	sbc $CCFF3C.l,X		; FF 3C FF CC
	sbc ($C4.b)		; F2 C4
	ora $08.b,S		; 03 08
	brk $0B.b		; 00 0B
	tad		; 5B
	and $76.b,S		; 23 76
	sbc ($01.b),Y		; F1 01
	cpy $31F2.w		; CC F2 31
	.db $82, $C4, $08		; 82 C4 08
	rep #$06		; C2 06
.ACCU 16
.INDEX 16
	rep #$74		; C2 74
	ldx $06BB.w		; AE BB 06
	beq   9.b		; F0 09
	sed		; F8
	nop		; EA
	inc $06F0.w		; EE F0 06
	beq   9.b		; F0 09
	sed		; F8
	nop		; EA
	beq 127.b		; F0 7F
	cpy #$0DF8.w		; C0 F8 0D
	asl A		; 0A
	ora #$30E0.w		; 09 E0 30
	cpy #$0DF8.w		; C0 F8 0D
	sbc $F24C.w,Y		; F9 4C F2
	sbc $FE03.w,X		; FD 03 FE
	xce		; FB
	ora [$BC.b]		; 07 BC
	cop $FE.b		; 02 FE
	adc [$0E.b],Y		; 77 0E
	stz $4C8E.w,X		; 9E 8E 4C
	sbc ($3E.b)		; F2 3E
	sbc ($3C.b)		; F2 3C
	jmp $0EFEFD.l		; 5C FD FE 0E
	sbc $F8C09E.l,X		; FF 9E C0 F8
	asl $F880.w		; 0E 80 F8
	ora ($06.b),Y		; 11 06
	beq   9.b		; F0 09
	jsr ($7C03.w,X)		; FC 03 7C
	ora $25.b,S		; 03 25
	sbc $06839D.l,X		; FF 9D 83 06
	beq   9.b		; F0 09
	tsx		; BA
	sbc ($E9.b)		; F2 E9
	eor #$2503.w		; 49 03 25
	ora ($39.b)		; 12 39
	inc A		; 1A
	ora $0E15FF.l		; 0F FF 15 0E
	phd		; 0B
	ora [$04.b]		; 07 04
	cmp ($08.b,X)		; C1 08
	php		; 08
	eor #$2506.w		; 49 06 25
	cop $38.b		; 02 38
	sta $14031F.l		; 8F 1F 03 14
	phd		; 0B
	asl A		; 0A
	ora $F1.b		; 05 F1
	ora ($08.b,X)		; 01 08
	ora ($00.b,X)		; 01 00
	bmi -121.b		; 30 87
	sbc $8081B9.l,X		; FF B9 81 80
	sbc $C04000.l,X		; FF 00 40 C0
	eor ($C1.b,X)		; 41 C1
	lda $62.b,S		; A3 62
	bmi  40.b		; 30 28
	jsr ($F10F.w,X)		; FC 0F F1
	bit $F1.b		; 24 F1
	sbc $8140.w,X		; FD 40 81
	rti		; 40

	sta $21.b,S		; 83 21
	sbc $00C7FF.l,X		; FF FF C7 00
	ldy #$7000.w		; A0 00 70
	rti		; 40

	beq   3.b		; F0 03
	lsr $18.b		; 46 18
	and [$67.b],Y		; 37 67
	cmp $7F7F9F.l,X		; DF 9F 7F 7F
	sed		; F8
	sta $80F1FF.l,X		; 9F FF F1 80
	beq   7.b		; F0 07
	eor ($3F.b,X)		; 41 3F
	ora $FF3FFF.l		; 0F FF 3F FF
	brk $FE.b		; 00 FE
	sbc $2165D7.l,X		; FF D7 65 21
	ora $402EC2.l		; 0F C2 2E 40
	tya		; 98
	adc $A386F8.l,X		; 7F F8 86 A3
	ora $7E5E.w,Y		; 19 5E 7E
	lda $640500.l,X		; BF 00 05 64
	ora ($EE.b,X)		; 01 EE
	.db $82, $FC, $8F		; 82 FC 8F
	ora $84FF80.l,X		; 1F 80 FF 84
	sbc $98DC1F.l,X		; FF 1F DC 98
	jmp ($E060.w)		; 6C 60 E0
	bra  -4.b		; 80 FC
	sbc [$AF.b],Y		; F7 AF
	eor $02F2.w		; 4D F2 02
	bra -126.b		; 80 82
	rep #$46		; C2 46
	tsb $60F0.w		; 0C F0 60
	sbc ($FC.b),Y		; F1 FC
	ora ($02.b,X)		; 01 02
	sbc $0281FF.l,X		; FF FF 81 02
	cmp ($86.b,X)		; C1 86
	sbc ($C0.b,X)		; E1 C0
	sta ($C0.b)		; 92 C0
	ldy $40.b		; A4 40
	trb $28C0.w		; 1C C0 28
	cpy #$8010.w		; C0 10 80
	stz $20FF.w,X		; 9E FF 20
	lda $9290E9.l		; AF E9 90 92
	rts		; 60

	sbc ($D0.b),Y		; F1 D0
	bpl -32.b		; 10 E0
	jsr $40C0.w		; 20 C0 40
	ora $4A.b,X		; 15 4A
	bra -112.b		; 80 90
	asl $F0.b,X		; 16 F0
	asl A		; 0A
	sta $0411E9.l,X		; 9F E9 11 04
	ldy #$0BE8.w		; A0 E8 0B
	and $17F1FC.l,X		; 3F FC F1 17
	ora $071F17.l		; 0F 17 1F 07
	ora $6F0B23.l,X		; 1F 23 0B 6F
	ora $EB.b		; 05 EB
	and $07.b		; 25 07
	plx		; FA
	adc [$02.b],Y		; 77 02
	lda $1F.b		; A5 1F
	ror $FE.b		; 66 FE
	ora $E71F67.l,X		; 1F 67 1F E7
	cmp $731F2A.l		; CF 2A 1F 73
	ora $5B4FA3.l		; 0F A3 4F 5B
	sbc $FC4CFF.l,X		; FF FF 4C FC
	beq  -8.b		; F0 F8
	phd		; 0B
	bra  -6.b		; 80 FA
	rol $FFFE.w		; 2E FE FF
	sed		; F8
	phd		; 0B
	beq  -8.b		; F0 F8
	ora $05FE85.l		; 0F 85 FE 05
	ora $02.b		; 05 02
	sta $78.b,S		; 83 78
	cop $10.b		; 02 10
	brk $5D.b		; 00 5D
	sty $FE.b		; 84 FE
	sbc ($0C.b),Y		; F1 0C
	brk $18.b		; 00 18
	sed		; F8
	sta [$EF.b],Y		; 97 EF
	asl $2200.w		; 0E 00 22
	trb $F028.w		; 1C 28 F0
	cpy #$CDE0.w		; C0 E0 CD
	sbc ($E0.b)		; F2 E0
	sta $FF.b		; 85 FF
	beq  62.b		; F0 3E
	brk $F8.b		; 00 F8
	brk $F1.b		; 00 F1
	sbc $0C61DD.l,X		; FF DD 61 0C
	clc		; 18
	bpl -38.b		; 10 DA
	php		; 08
	jsr $10FF.w		; 20 FF 10
	php		; 08
	clc		; 18
	cmp ($C0.b,X)		; C1 C0
	sbc ($F1.b,S),Y		; F3 F1
	bpl  16.b		; 10 10
	iny		; C8
	sbc ($F1.b,S),Y		; F3 F1
	sbc ($FE.b,S),Y		; F3 FE
	pld		; 2B
	cpx $3DF8.w		; EC F8 3D
	php		; 08
	sbc #$0031.w		; E9 31 00
	eor ($01.b)		; 52 01
	ldy $F1.b		; A4 F1
	sed		; F8
	tsb $A421.w		; 0C 21 A4
	eor $F7.b,S		; 43 F7
	and ($92.b,S),Y		; 33 92
	cop $91.b		; 02 91
	sbc $70.b,S		; E3 70
	cpy #$180C.w		; C0 0C 18
	sbc $D0.b,S		; E3 D0
	bne -59.b		; D0 C5
	ora [$F1.b]		; 07 F1
	bra  12.b		; 80 0C
	beq -64.b		; F0 C0
	sbc ($FF.b,X)		; E1 FF
	cmp [$B7.b],Y		; D7 B7
	tya		; 98
	clc		; 18
	and $23.b,S		; 23 23
	dec A		; 3A
	sbc ($FF.b),Y		; F1 FF
	sbc $23E018.l,X		; FF 18 E0 23
	trb $F8F1.w		; 1C F1 F8
	ora #$3DC0.w		; 09 C0 3D
	bit $35.b		; 24 35
	sbc ($A0.b),Y		; F1 A0
	eor $E1.b,X		; 55 E1
	rts		; 60

	bmi  16.b		; 30 10
	inc $F038.w,X		; FE 38 F0
	bra  32.b		; 80 20
	inc $6060.w,X		; FE 60 60
	cpy #$E11A.w		; C0 1A E1
	jmp ($F1FC.w)		; 6C FC F1
	cop $49.b		; 02 49
	inc $69FD.w,X		; FE FD 69
	inc $0055.w,X		; FE 55 00
	eor $48.b,X		; 55 48
	dec $E1.b		; C6 E1
	ora [$FE.b]		; 07 FE
	jsr ($FE68.w,X)		; FC 68 FE
	mvn $FE,$23		; 54 23 FE
	eor $3E1FBF.l		; 4F BF 1F 3E
	lda $FEFD7F.l,X		; BF 7F FD FE
	inc $F8.b,X		; F6 F8
	trb $20D1.w		; 1C D1 20
	jsl $888241.l		; 22 41 82 88
	sbc $DD57B8.l,X		; FF B8 57 DD
	tas		; 1B
	sbc ($00.b),Y		; F1 00
	adc $00.b,S		; 63 00
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $C693FF.l,X		; FF FF 93 C6
	sed		; F8
	beq  15.b		; F0 0F
	and [$1F.b]		; 27 1F
	sta $01FE7F.l,X		; 9F 7F FE 01
	sta ($91.b,X)		; 81 91
	sta $E0D5.w,Y		; 99 D5 E0
	jsr ($FA3F.w,X)		; FC 3F FA
	sbc $0CF8FF.l		; EF FF F8 0C
	eor $E0.b		; 45 E0
	phd		; 0B
	sbc ($FF.b),Y		; F1 FF
	sbc $010227.l,X		; FF 27 02 01
	phd		; 0B
	ora [$2E.b]		; 07 2E
	ora $953C5A.l,X		; 1F 5A 3C 95
	cli		; 58
	ldy #$23B0.w		; A0 B0 23
	dey		; 88
	and $BF1F44.l,X		; 3F 44 1F BF
	adc $20DF00.l,X		; 7F 00 DF 20
	clv		; B8
	rti		; 40

	jsr ($4EFF.w,X)		; FC FF 4E
	bit $0A18.w,X		; 3C 18 0A
	trb $0E1C.w		; 1C 1C 0E
	asl $0F.b		; 06 0F
	ora #$0405.w		; 09 05 04
	cop $03.b		; 02 03
	ora [$E0.b],Y		; 17 E0
	ora ($7C.b,X)		; 01 7C
	brk $7E.b		; 00 7E
	stz $E0F1.w,X		; 9E F1 E0
	inc $020D.w,X		; FE 0D 02
	asl A		; 0A
	ora [$06.b]		; 07 06
	sbc $D872E9.l		; EF E9 72 D8
	ora #$80FD.w		; 09 FD 80
	cpy #$6040.w		; C0 40 60
	ora ($36.b,X)		; 01 36
	beq  -1.b		; F0 FF
	inc $4018.w,X		; FE 18 40
	bra  52.b		; 80 34
	beq  11.b		; F0 0B
	inc $055A.w,X		; FE 5A 05
	inc $F8F0.w,X		; FE F0 F8
	ora $E8EEFC.l		; 0F FC EE E8
	asl $F8F0.w		; 0E F0 F8
	ora $5BE96C.l		; 0F 6C E9 5B
	sed		; F8
	ora $183082.l		; 0F 82 30 18
	cmp $50.b,S		; C3 50
	and [$A0.b]		; 27 A0
	rti		; 40

	cli		; 58
	sta [$F8.b]		; 87 F8
	adc [$F0.b]		; 67 F0
	sbc ($01.b),Y		; F1 01
	bmi  15.b		; 30 0F
	cmp $3C.b,S		; C3 3C
	ora [$F8.b]		; 07 F8
	trb $108A.w		; 1C 8A 10
	asl $9530.w		; 0E 30 95
	eor $B308C0.l		; 4F C0 08 B3
	lsr $F1F0.w		; 4E F0 F1
	cpy #$21F1.w		; C0 F1 21
	.db $42, $FC		; 42 FC
	sbc ($20.b,S),Y		; F3 20
	cmp ($21.b),Y		; D1 21
	ora $6104FE.l,X		; 1F FE 04 61
	iny		; C8
	cmp $FEE9.w		; CD E9 FE
	ora #$EF01.w		; 09 01 EF
	jsr $FFE9.w		; 20 E9 FF
	sbc ($03.b),Y		; F1 03
	inc $0708.w,X		; FE 08 07
	.db $42, $29		; 42 29
	sta $53.b		; 85 53
	txa		; 8A
	eor [$0D.b],Y		; 57 0D
	sbc [$FF.b]		; E7 FF
	sta [$07.b]		; 87 07
	sbc $0DCF1E.l		; EF 1E CF 0D
	dec $9C2A.w,X		; DE 2A 9C
	plp		; 28
	cmp [$50.b]		; C7 50
	sta $F861FE.l		; 8F FE 61 F8
	rts		; 60

	sta $BF40FE.l,X		; 9F FE 40 BF
	inc $FE00.w,X		; FE 00 FE
	asl $F8.b		; 06 F8
	sbc $7E018F.l,X		; FF 8F 01 7E
	bra  25.b		; 80 19
	jsr $ECC6.w		; 20 C6 EC
	sbc ($7A.b),Y		; F1 7A
	jsr ($7EB5.w,X)		; FC B5 7E
	phy		; 5A
	sta $7EAC55.l		; 8F 55 AC 7E
	sta ($19.b,X)		; 81 19
	cpx #$FEEA.w		; E0 EA FE
	eor #$79CC.w		; 49 CC 79
	cmp ($6B.b,S),Y		; D3 6B
	sbc ($63.b,X)		; E1 63
	tsb $E9CF.w		; 0C CF E9
	sty $11.b		; 84 11
	jsr $80F1.w		; 20 F1 80
	inc $5815.w,X		; FE 15 58
	sbc ($FF.b),Y		; F1 FF
	cpy #$1818.w		; C0 18 18
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	stz $94F1.w		; 9C F1 94
	sbc $10.b,X		; F5 10
	plx		; FA
	inx		; E8
	sbc ($74.b),Y		; F1 74
	asl $EF.b		; 06 EF
	sbc $2D104D.l,X		; FF 4D 10 2D
	sbc $2510E1.l,X		; FF E1 10 25
	ora #$0D20.w		; 09 20 0D
	bpl   2.b		; 10 02
	trb $05.b		; 14 05
	txa		; 8A
	rts		; 60

	jmp $7733.w		; 4C 33 77
	tay		; A8
	bit $2413.w		; 2C 13 24
	tas		; 1B
	cpx $CC.b		; E4 CC
	php		; 08
	sta [$60.b]		; 87 60
	mvp $D9,$E6		; 44 E6 D9
	jmp $EE346B.l		; 5C 6B 34 EE
	sbc $F3A5C4.l,X		; FF C4 A5 F3
	sbc $6306FF.l,X		; FF FF 06 63
	cmp [$F8.b],Y		; D7 F8
	sbc $0507.w,X		; FD 07 05
	sed		; F8
	trb $23F7.w		; 1C F7 23
	inc $0A.b,X		; F6 0A
	clc		; 18
	tsb $1810.w		; 0C 10 18
	rts		; 60

	cpy $71.b		; C4 71
	bmi -55.b		; 30 C9
	sbc ($0C.b),Y		; F1 0C
	sbc ($20.b),Y		; F1 20
	bmi -16.b		; 30 F0
	rts		; 60

	pha		; 48
	adc $E9.b		; 65 E9
	bvc  96.b		; 50 60
	bra  -6.b		; 80 FA
	sbc $700AF8.l,X		; FF F8 0A 70
	sbc $10.b,X		; F5 10
	sbc ($F8.b),Y		; F1 F8
	ora $E8CE.w		; 0D CE E8
	asl $FF.b,X		; 16 FF
	sed		; F8
	ora #$6040.w		; 09 40 60
	jsr $5002.w		; 20 02 50
	brk $00.b		; 00 00
	lda ($9E.b),Y		; B1 9E
	clc		; 18
	and #$0600.w		; 29 00 06
	pld		; 2B
	lda ($02.b),Y		; B1 02
	bvc  32.b		; 50 20
	ldx #$1400.w		; A2 00 14
	stz $1A18.w,X		; 9E 18 1A
	cmp $C1FEEB.l,X		; DF EB FE C1
	sta [$30.b],Y		; 97 30
	brk $27.b		; 00 27
	clc		; 18
	ora ($0F.b,S),Y		; 13 0F
	tsb $C203.w		; 0C 03 C2
	nop		; EA
	nop		; EA
	.db $82, $F5, $F8		; 82 F5 F8
	cmp #$FEF1.w		; C9 F1 FE
	sbc ($C9.b,X)		; E1 C9
	brk $01.b		; 00 01
	dex		; CA
	bne -18.b		; D0 EE
	sec		; 38
	cpy #$2EF7.w		; C0 F7 2E
	sbc $90FE.w,Y		; F9 FE 90
	bvs -16.b		; 70 F0
	inc $00E0.w,X		; FE E0 00
	jsr ($F1A1.w,X)		; FC A1 F1
	beq  15.b		; F0 0F
	sta $E1.b		; 85 E1
	jsr ($FD21.w,X)		; FC 21 FD
	cop $06.b		; 02 06
	cop $07.b		; 02 07
	ora $06.b,S		; 03 06
	ora $FB.b,S		; 03 FB
	phd		; 0B
	php		; 08
	cop $F7.b		; 02 F7
	mvp $0C,$F1		; 44 F1 0C
	sty $D2.b		; 84 D2
	cpy $05.b		; C4 05
	sta $FE.b,X		; 95 FE
	cpy #$F050.w		; C0 50 F0
	sbc ($DA.b)		; F2 DA
	sbc [$A2.b],Y		; F7 A2
.INDEX 8
	sep #$18		; E2 18
	ora ($FE.b,X)		; 01 FE
	xba		; EB
	inc $4011.w,X		; FE 11 40
	tax		; AA
	cmp $3D89.w		; CD 89 3D
	dex		; CA
	stx $60.b		; 86 60
	xce		; FB
	sbc #$878A.w		; E9 8A 87
	lsr A		; 4A
	nop		; EA
	bit $F0CA.w,X		; 3C CA F0
	jsr ($80FA.w,X)		; FC FA 80
	rts		; 60

	rti		; 40

	rts		; 60

	adc $9098FE.l,X		; 7F FE 98 90
	cpy $9648.w		; CC 48 96
	mvp $22,$6B		; 44 6B 22
	nop		; EA
	bra  48.b		; 80 30
	cpy #$98.b		; C0 98
	lda $CC600A.l,X		; BF 0A 60 CC
	bmi -58.b		; 30 C6
	sec		; 38
	adc $1C.b,S		; 63 1C
	trb $F8.b		; 14 F8
	tsb $F1D2.w		; 0C D2 F1
	beq  -8.b		; F0 F8
	phd		; 0B
	lda $70D607.l,X		; BF 07 D6 70
	bra  43.b		; 80 2B
	tas		; 1B
	ora #$EC07.w		; 09 07 EC
	beq  11.b		; F0 0B
	tsa		; 3B
	ora [$0F.b]		; 07 0F
	sty $FF.b,X		; 94 FF
	and $0AF8EF.l,X		; 3F EF F8 0A
	bvc -32.b		; 50 E0
	.db $82, $C0, $C3		; 82 C0 C3
	cpx #$63.b		; E0 63
	beq  50.b		; F0 32
	bvs  38.b		; 70 26
	clc		; 18
	cop $FE.b		; 02 FE
	sbc $83F333.l,X		; FF 33 F3 83
	cmp $C3.b,S		; C3 C3
	sbc $E3.b,S		; E3 E3
	sbc ($F3.b,S),Y		; F3 F3
	adc [$77.b],Y		; 77 77
	and $140C3F.l,X		; 3F 3F 0C 14
	dec $DE0E.w,X		; DE 0E DE
	bpl  22.b		; 10 16
	sty $82.b		; 84 82
	.db $62, $80, $72		; 62 80 72
	sbc ($F7.b),Y		; F1 F7
	ora $28C708.l		; 0F 08 C7 28
	cld		; D8
	ror $70F1.w,X		; 7E F1 70
	sei		; 78
	jsr ($EEEC.w,X)		; FC EC EE
	dec $C6.b		; C6 C6
	and $CFD8FC.l,X		; 3F FC D8 CF
	cpy #$F8.b		; C0 F8
	cmp [$A0.b]		; C7 A0
	cpy #$8C.b		; C0 8C
	ldy #$30.b		; A0 30
	cld		; D8
	bpl -32.b		; 10 E0
	ora $21.b,X		; 15 21
	php		; 08
	cpx $C173.w		; EC 73 C1
	jmp $628CC1.l		; 5C C1 8C 62
	clc		; 18
	tsb $F112.w		; 0C 12 F1
	beq  12.b		; F0 0C
	sbc ($5C.b,S),Y		; F3 5C
	cmp ($EC.b,X)		; C1 EC
	brk $00.b		; 00 00
	inc $F1.b		; E6 F1
	dec $4CDA.w,X		; DE DA 4C
	brk $D6.b		; 00 D6
	tay		; A8
	iny		; C8
	cpx $00E6.w		; EC E6 00
	asl $E2.b,X		; 16 E2
	dec $D6DA.w,X		; DE DA D6
	cmp #$3A18.w		; C9 18 3A
	cmp ($10.b),Y		; D1 10
	inc $9CE7.w,X		; FE E7 9C
	inc $0008.w,X		; FE 08 00
	bmi -48.b		; 30 D0
	plp		; 28
	bmi -113.b		; 30 8F
	sbc ($E0.b),Y		; F1 E0
	cpx #$F0.b		; E0 F0
	beq  48.b		; F0 30
	sbc $E8FF18.l,X		; FF 18 FF E8
	clc		; 18
	sbc $C43CA1.l,X		; FF A1 3C C4
	trb $040E.w		; 1C 0E 04
	ora $03060E.l		; 0F 0E 06 03
	asl $FD.b		; 06 FD
	ora ($30.b,X)		; 01 30
	rti		; 40

	bvs -55.b		; 70 C9
	eor [$1E.b]		; 47 1E
	ora $07FFF1.l		; 0F F1 FF 07
	sty $FF80.w		; 8C 80 FF
	ora $FF.b,S		; 03 FF
	sbc $AC4290.l		; EF 90 42 AC
	cmp #$8418.w		; C9 18 84
	inc $A7.b,X		; F6 A7
	cop $80.b		; 02 80
	pha		; 48
	inc $38AC.w,X		; FE AC 38
	.db $82, $21, $D0		; 82 21 D0
	sty $06.b		; 84 06
	sbc ($FC.b,S),Y		; F3 FC
	inc $7E40.w,X		; FE 40 7E
	sbc [$E1.b],Y		; F7 E1
	.db $42, $82		; 42 82
	sty $2C02.w		; 8C 02 2C
	sbc #$C620.w		; E9 20 C6
	plp		; 28
	rol $F0.b,X		; 36 F0
	trb $E31C.w		; 1C 1C E3
	sbc $6E7E3C.l		; EF 3C 7E 6E
	rti		; 40

	stx $86.b		; 86 86
	inc $06.b		; E6 06
	rol $7FC6.w,X		; 3E C6 7F
	cld		; D8
	asl $5500.w,X		; 1E 00 55
	plx		; FA
	and ($0F.b,S),Y		; 33 0F
	ldy $09D8.w,X		; BC D8 09
	eor ($DC.b,X)		; 41 DC
	cpx $09E8.w		; EC E8 09
	sbc $0C060D.l,X		; FF 0D 06 0C
	asl $5F.b		; 06 5F
	pei ($0A.b)		; D4 0A
	tsb $02.b		; 04 02
	tsb $0814.w		; 0C 14 08
	ora ($D1.b,S),Y		; 13 D1
	beq -122.b		; F0 86
	phx		; DA
	.db $62, $DA, $58		; 62 DA 58
	sbc $3E.b,X		; F5 3E
	inc $DA78.w,X		; FE 78 DA
	sbc #$F8FF.w		; E9 FF F8
	ora $0CE0D4.l		; 0F D4 E0 0C
	bmi -22.b		; 30 EA
	jsr $FF38.w		; 20 38 FF
	rol $10.b,X		; 36 10
	trb $1608.w		; 1C 08 16
	tsb $060F.w		; 0C 0F 06
	ora $01.b		; 05 01
	rti		; 40

	phx		; DA
	bvs -116.b		; 70 8C
	cmp ($1C.b),Y		; D1 1C
	ldy #$F7.b		; A0 F7
	inc A		; 1A
	txs		; 9A
	inc $EC.b,X		; F6 EC
	and $11.b,X		; 35 11
	rol $20.b		; 26 20
	cmp ($0D.b,X)		; C1 0D
	tsb $FF.b		; 04 FF
	phd		; 0B
	ora #$8604.w		; 09 04 86
	cop $C3.b		; 02 C3
	sta ($72.b,X)		; 81 72
	eor ($31.b,X)		; 41 31
	asl $6430.w		; 0E 30 64
	tyx		; BB
	cmp $86FE37.l,X		; DF 37 FE 86
	ora ($C3.b,X)		; 01 C3
	brk $73.b		; 00 73
	lda ($F8.b),Y		; B1 F8
	tsb $0304.w		; 0C 04 03
	trb $0C.b		; 14 0C
	sbc ($C0.b),Y		; F1 C0
	phd		; 0B
	ora [$FC.b]		; 07 FC
	sbc $5003B6.l,X		; FF B6 03 50
	bvs -40.b		; 70 D8
	bmi -80.b		; 30 B0
	sei		; 78
	ldy $3068.w		; AC 68 30
	cpx $76.b		; E4 76
	cpx $21.b		; E4 21
	jsr ($C278.w,X)		; FC 78 C2
	inc $F370.w,X		; FE 70 F3
	beq 120.b		; F0 78
	cpx #$6C.b		; E0 6C
	beq  31.b		; F0 1F
	cpx #$E4.b		; E0 E4
	sed		; F8
	inc $F8.b		; E6 F8
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	inc $F8FB.w,X		; FE FB F8
	.db $82, $FF, $C2		; 82 FF C2
	inc $84.b,X		; F6 84
	beq -124.b		; F0 84
	cpx $D008.w		; EC 08 D0
	clc		; 18
	tay		; A8
	lsr $EEF1.w,X		; 5E F1 EE
	.db $82, $F7, $FE		; 82 F7 FE
	jsr ($F886.w,X)		; FC 86 F8
	sty $5C.b		; 84 5C
	sbc ($18.b),Y		; F1 18
	cpx #$5E38.w		; E0 38 5E
	sbc ($05.b),Y		; F1 05
	ora $20.b,S		; 03 20
	ora ($61.b,X)		; 01 61
	adc $6303FC.l,X		; 7F FC 03 63
	ora [$26.b]		; 07 26
	ora [$32.b]		; 07 32
	tsb $1F20.w		; 0C 20 1F
	adc [$60.b]		; 67 60
	adc ($61.b,X)		; 61 61
	sbc $6363BE.l,X		; FF BE 63 63
	adc [$67.b]		; 67 67
	adc [$77.b],Y		; 77 77
	ror $187E.w,X		; 7E 7E 18
	cmp ($C9.b)		; D2 C9
	ror A		; 6A
	cpx $F0C8.w		; EC C8 F0
	rol $1EA8.w,X		; 3E A8 1E
	xba		; EB
	sbc $F0EEFD.l,X		; FF FD EE F0
	sed		; F8
	cpy #$11FF.w		; C0 FF 11
	sbc #$A8FA.w		; E9 FA A8
	ora #$07E1.w		; 09 E1 07
	dey		; 88
	cmp ($60.b),Y		; D1 60
	sbc $7060.w		; ED 60 70
	rts		; 60

	jsr $38F0.w		; 20 F0 38
	lda $F3F8C0.l		; AF C0 F8 F3
	sbc $70FFE0.l,X		; FF E0 FF 70
	bvs -16.b		; 70 F0
	rts		; 60

	dey		; 88
	bvs 116.b		; 70 74
	txs		; 9A
	lda $4B05.w,Y		; B9 05 4B
	php		; 08
	ora $10FE1F.l		; 0F 1F FE 10
	brk $0C.b		; 00 0C
	phd		; 0B
	rti		; 40

	ora [$07.b]		; 07 07
	ora $FD0C0F.l		; 0F 0F 0C FD
	ora $F200FF.l,X		; 1F FF 00 F2
	ora [$18.b],Y		; 17 18
	bit $D023.w,X		; 3C 23 D0
	cpx #$F0E8.w		; E0 E8 F0
	bne -40.b		; D0 D8
	sta $C49B87.l		; 8F 87 9B C4
	inc $C4.b,X		; F6 C4
	mvn $F0,$C2		; 54 C2 F0
	bra -96.b		; 80 A0
	cmp $FC.b,S		; C3 FC
	cld		; D8
	cpx #$F1CC.w		; E0 CC F1
	sed		; F8
	dec $40.b		; C6 40
	asl A		; 0A
	asl $06.b		; 06 06
	bpl  -5.b		; 10 FB
	ora $C4.b		; 05 C4
	tsb $FE.b		; 04 FE
	asl $F8.b		; 06 F8
	cmp ($02.b,X)		; C1 02
	ora ($1E.b,X)		; 01 1E
	and #$1180.w		; 29 80 11
	phd		; 0B
	cmp ($0C.b,X)		; C1 0C
	sbc #$FFFF.w		; E9 FF FF
	ldy #$EADC.w		; A0 DC EA
	trb $1038.w		; 1C 38 10
	sed		; F8
	sec		; 38
	bmi  96.b		; 30 60
	bmi  -3.b		; 30 FD
	inc $D9.b,X		; F6 D9
	ora $00.b,S		; 03 00
	dec $3CB9.w		; CE B9 3C
	sed		; F8
	sbc ($FF.b),Y		; F1 FF
	sty $0C.b		; 84 0C
	plx		; FA
	sbc $7C6060.l,X		; FF 60 60 7C
	adc [$D1.b],Y		; 77 D1
	sbc $D1.b		; E5 D1
	.db $42, $3C		; 42 3C
	ora [$6A.b],Y		; 17 6A
	sbc $DCF60F.l,X		; FF 0F F6 DC
	ror $BEF3.w		; 6E F3 BE
	cmp #$F11F.w		; C9 1F F1
	sbc $301810.l,X		; FF 10 18 30
	clc		; 18
	bpl  48.b		; 10 30
	cmp $300022.l,X		; DF 22 00 30
	bvc  32.b		; 50 20
	rti		; 40

	jsr $E2A3.w		; 20 A3 E2
	clc		; 18
	rts		; 60

	sbc ($F1.b),Y		; F1 F1
	cop $3D.b		; 02 3D
	phx		; DA
	sbc ($F0.b)		; F2 F0
	txs		; 9A
	ldy $B8DC.w,X		; BC DC B8
	jsr ($FE87.w,X)		; FC 87 FE
	sty $ACF8.w		; 8C F8 AC
	cld		; D8
	ldy $C8.b,X		; B4 C8
	cpx $C8.b		; E4 C8
	inc $FAB0.w		; EE B0 FA
	adc $D9E7FE.l,X		; 7F FE E7 D9
	inc $ECFE.w,X		; FE FE EC
	brk $EE.b		; 00 EE
	ldx $2D1D.w		; AE 1D 2D
	dec $3F5E.w,X		; DE 5E 3F
	rol $F81F.w		; 2E 1F F8
	and [$9E.b],Y		; 37 9E
	ora $07CB07.l		; 0F 07 CB 07
	and [$43.b]		; 27 43
	brk $BF.b		; 00 BF
	ror A		; 6A
	cmp ($3F.b,S),Y		; D3 3F
	rep #$85		; C2 85
	sta $CF8C.w,X		; 9D 8C CF
	brk $67.b		; 00 67
	dec $32F2.w,X		; DE F2 32
	ora [$EE.b],Y		; 17 EE
	ora ($01.b,X)		; 01 01
	stz $4A7C.w		; 9C 7C 4A
	cpx #$C709.w		; E0 09 C7
	ora ($FE.b,X)		; 01 FE
	jsr ($E889.w,X)		; FC 89 E8
	tsb $96D0.w		; 0C D0 96
	ora $8AE0.w,X		; 1D E0 8A
	inx		; E8
	ora $B6F0.w		; 0D F0 B6
	wai		; CB
	rts		; 60

	dex		; CA
	lda $0828.w,Y		; B9 28 08
	brk $BE.b		; 00 BE
	inc $F9FD.w,X		; FE FD F9
	jsr $6828.w		; 20 28 68
	jsr $1B10.w		; 20 10 1B
	eor $E5.b,X		; 55 E5
	lda $1028.w,Y		; B9 28 10
	inc $68FC.w,X		; FE FC 68
	inc $E890.w,X		; FE 90 E8
	ora $10E87F.l		; 0F 7F E8 10
	asl $E8.b		; 06 E8
	asl A		; 0A
	ora ($D4.b,X)		; 01 D4
	tsb $E8.b		; 04 E8
	phd		; 0B
	pea $558E.w		; F4 8E 55
	pei ($34.b)		; D4 34
	lda $91F0.w,Y		; B9 F0 91
	cmp $1E652A.l		; CF 2A 65 1E
	stx $78.b		; 86 78
	sed		; F8
	sbc ($82.b)		; F2 82
.ACCU 16
.INDEX 16
	rep #$7B		; C2 7B
	stz $C21B.w		; 9C 1B C2
	dey		; 88
	asl A		; 0A
	sta [$C2.b]		; 87 C2
	cmp #$3EFD.w		; C9 FD 3E
.ACCU 8
.INDEX 8
	sep #$3A		; E2 3A
	sbc $EC.b,S		; E3 EC
	and $EFFE7F.l,X		; 3F 7F FE EF
	inc $3078.w,X		; FE 78 30
	trb $38.b		; 14 38
	bit $1218.w		; 2C 18 12
	tsb $310C.w		; 0C 0C 31
	inc $040A.w,X		; FE 0A 04
	inc $2406.w,X		; FE 06 24
	ror $C82A.w,X		; 7E 2A C8
	inc $D2A4.w,X		; FE A4 D2
	cld		; D8
.INDEX 8
	sep #$9C		; E2 9C
	sbc $040A98.l		; EF 98 0A 04
	plx		; FA
	sbc $39FEEE.l,X		; FF EE FE 39
	bcs   9.b		; B0 09
.INDEX 8
	sep #$D2		; E2 D2
	sbc ($00.b),Y		; F1 00
	and $300A3F.l		; 2F 3F 0A 30
	eor $F3C1.w,X		; 5D C1 F3
	bmi  -4.b		; 30 FC
	tsb $ECE2.w		; 0C E2 EC
	sbc ($BF.b,X)		; E1 BF
	sbc $C03FF0.l,X		; FF F0 3F C0
	cmp ($3E.b,X)		; C1 3E
	beq  15.b		; F0 0F
	jmp.w [$FFF1]		; DC F1 FF
	stz $42.b,X		; 74 42
	rtl		; 6B

	and ($AE.b),Y		; 31 AE
	bit #$CF.b		; 89 CF
	sbc $ED46D7.l,X		; FF D7 46 ED
	sbc ($C7.b,X)		; E1 C7
	jmp ($8176.w)		; 6C 76 81
	tsa		; 3B
	cpy #$8F.b		; C0 8F
	bvs -57.b		; 70 C7
	xce		; FB
	bmi  56.b		; 30 38
	sbc ($1E.b,X)		; E1 1E
	stx $BC.b,Y		; 96 BC
	inc $06.b		; E6 06
	adc $9001.w,Y		; 79 01 90
	lda $571C80.l,X		; BF 80 1C 57
	inc $405F.w,X		; FE 5F 40
	cmp $F906EF.l,X		; DF EF 06 F9
	inc $C2.b		; E6 C2
	and ($92.b,S),Y		; 33 92
	ora ($54.b),Y		; 11 54
	rep #$C1		; C2 C1
	cpx #$F3.b		; E0 F3
	trb $D2.b		; 14 D2
	lda $0990.w		; AD 90 09
	ldx #$90.b		; A2 90
	phd		; 0B
	plx		; FA
	sbc $80C1FE.l,X		; FF FE C1 80
	ror $41.b		; 66 41
	lda $DE26.w,Y		; B9 26 DE
	bpl -20.b		; 10 EC
	php		; 08
	inc $04.b,X		; F6 04
	lda $02FB7D.l,X		; BF 7D FB 02
	sbc $C101.w,X		; FD 01 C1
	brk $67.b		; 00 67
	plx		; FA
	bit #$1E.b		; 89 1E
	stz $06D9.w,X		; 9E D9 06
	sed		; F8
	ora $FC.b,S		; 03 FC
	sed		; F8
	sbc $E141B4.l,X		; FF B4 41 E1
	rti		; 40

	.db $82, $06, $03		; 82 06 03
	tsb $1806.w		; 0C 06 18
	tsb $1824.w		; 0C 24 18
	lda $2058AD.l,X		; BF AD 58 20
	beq   0.b		; F0 00
	sbc ($00.b,X)		; E1 00
	rep #$88		; C2 88
	sbc ($0E.b,X)		; E1 0E
	bit $3CE1.w,X		; 3C E1 3C
	brk $E1.b		; 00 E1
	rol $14.b,X		; 36 14
	cli		; 58
	sbc ($A2.b),Y		; F1 A2
	cmp #$20.b		; C9 20
	bne -23.b		; D0 E9
	clc		; 18
	inc $3508.w		; EE 08 35
	cmp $5545.w,Y		; D9 45 55
	ora ($F0.b),Y		; 11 F0
	sbc $F02ADA.l,X		; FF DA 2A F0
	ora #$88.b		; 09 88
	cld		; D8
	ora $09F8F0.l		; 0F F0 F8 09
	adc [$C6.b],Y		; 77 C6
	sbc $F0A3.w,X		; FD A3 F0
	sed		; F8
	ora $E0.b,X		; 15 E0
	cpy $20B0.w		; CC B0 20
	cmp $EF10.w,Y		; D9 10 EF
	php		; 08
	sbc [$5E.b],Y		; F7 5E
	ora $CEE0FD.l,X		; 1F FD E0 CE
	ora $0FE0.w,Y		; 19 E0 0F
	beq   7.b		; F0 07
	lsr $FCDA.w,X		; 5E DA FC
	ora ($0F.b,S),Y		; 13 0F
	stz $8D7F.w,X		; 9E 7F 8D
	sta ($08.b),Y		; 91 08
	beq -58.b		; F0 C6
	cpy #$09.b		; C0 09
	ora $D6F825.l,X		; 1F 25 F8 D6
	cpx #$42.b		; E0 42
	sbc $060958.l,X		; FF 58 09 06
	ora [$ED.b]		; 07 ED
	wai		; CB
	adc ($FE.b)		; 72 FE
	eor ($6C.b,X)		; 41 6C
	asl $F0D1.w		; 0E D1 F0
	asl $F6.b		; 06 F6
	beq   1.b		; F0 01
	ldy #$FE.b		; A0 FE
	cld		; D8
	lda $F1FEF2.l		; AF F2 FE F1
	ror $04.b,X		; 76 04
	tda		; 7B
	ldy #$FF.b		; A0 FF
	stz $FED2.w		; 9C D2 FE
	sbc ($7C.b,S),Y		; F3 7C
	cpx #$FF.b		; E0 FF
	sep #$40		; E2 40
	sei		; 78
	jsr $3854.w		; 20 54 38
	and [$14.b]		; 27 14
	inc A		; 1A
	phd		; 0B
	beq  -3.b		; F0 FD
	tsb $7C.b		; 04 7C
	adc $37007D.l,X		; 7F 7D 00 37
	php		; 08
	tas		; 1B
	tsb $A9.b		; 04 A9
	bcs -20.b		; B0 EC
	pha		; 48
	wai		; CB
	sec		; 38
	jmp.w [$048D]		; DC 8D 04
	lda $FD40.w,Y		; B9 40 FD
	sbc $38CC48.l,X		; FF 48 CC 38
	jmp.w [$038C]		; DC 8C 03
	lda $DE81.w,X		; BD 81 DE
	rti		; 40

	sta $206F40.l,X		; 9F 40 6F 20
	lda [$10.b],Y		; B7 10
	sbc $88DBE1.l,X		; FF E1 DB 88
	adc ($48.b,S),Y		; 73 48
	lda $8134.w,X		; BD 34 81
	ror $3FC0.w,X		; 7E C0 3F
	inc $1F60.w,X		; FE 60 1F
	adc $0FB0FB.l,X		; 7F FB B0 0F
	cld		; D8
	ora [$78.b]		; 07 78
	sta [$3C.b]		; 87 3C
	cmp $D0.b,S		; C3 D0
	sbc ($40.b),Y		; F1 40
	dey		; 88
	phx		; DA
	tsb $04.b		; 04 04
	plp		; 28
	sta $606883.l		; 8F 83 68 60
	cpx #$82.b		; E0 82
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	bmi  32.b		; 30 20
	adc $F55F.w,X		; 7D 5F F5
	phk		; 4B
	lda $1068.w,Y		; B9 68 10
	cpx #$C201.w		; E0 01 C2
	cmp #$10F0.w		; C9 F0 10
	lda ($B8.b,X)		; A1 B8
	ora #$F2BC.w		; 09 BC F2
	stp		; DB
	sbc $C0.b,S		; E3 C0
	bmi -25.b		; 30 E7
	lda $38.b,S		; A3 38
	asl $031F.w		; 0E 1F 03
	sbc [$3C.b]		; E7 3C
	jsr ($08C1.w,X)		; FC C1 08
	ora ($FE.b),Y		; 11 FE
	sta ($AA.b,X)		; 81 AA
	ora $FCF81C.l,X		; 1F 1C F8 FC
	ora $68.b,S		; 03 68
	beq  36.b		; F0 24
	pla		; 68
	sbc $3615E1.l,X		; FF E1 15 36
	ora #$8019.w		; 09 19 80
	inx		; E8
	ldy $BC.b		; A4 BC
	jmp $DECC.w		; 4C CC DE
	jsr ($0F00.w,X)		; FC 00 0F
	ora $7710EF.l,X		; 1F EF 10 77
	php		; 08
	sbc $0725.w,Y		; F9 25 07
	ldy $CC43.w,X		; BC 43 CC
	and ($FE.b,S),Y		; 33 FE
	sta $6121DD.l,X		; 9F DD 21 61
	bpl  48.b		; 10 30
	bmi  16.b		; 30 10
	pha		; 48
	tya		; 98
	iny		; C8
	sed		; F8
	clc		; 18
	clc		; 18
	ror $B380.w,X		; 7E 80 B3
	sbc ($1E.b,X)		; E1 1E
	bvs  15.b		; 70 0F
	beq  15.b		; F0 0F
.ACCU 8
.INDEX 8
	sep #$FE		; E2 FE
	cmp $1817.w,X		; DD 17 18
	sbc [$DE.b]		; E7 DE
	xba		; EB
	bra -96.b		; 80 A0
	and $D9.b		; 25 D9
	bpl  24.b		; 10 18
	asl A		; 0A
	tsb $F4BB.w		; 0C BB F4
	phy		; 5A
	ora $D4F106.l,X		; 1F 06 F1 D4
	adc $821F.w,Y		; 79 1F 82
	sbc ($96.b,S),Y		; F3 96
	nop		; EA
	bmi  12.b		; 30 0C
	pha		; 48
	bmi  -6.b		; 30 FA
	ora [$EC.b],Y		; 17 EC
	sta ($28.b,X)		; 81 28
	lda $0201.w,Y		; B9 01 02
	asl $80.b		; 06 80
	ldy $C0.b		; A4 C0
	bit $A302.w,X		; 3C 02 A3
	asl $7A6A.w		; 0E 6A 7A
	sta $00.b,S		; 83 00
	sta [$96.b]		; 87 96
	ldx $D6E1.w,Y		; BE E1 D6
	cmp ($03.b)		; D2 03
	lda ($60.b,X)		; A1 60
	bcc   4.b		; 90 04
	tyx		; BB
	xba		; EB
	tyx		; BB
	sbc $A104.w,X		; FD 04 A1
	sbc ($50.b,S),Y		; F3 50
	lda $DCDC.w		; AD DC DC
	ldy $D021.w,X		; BC 21 D0
	phd		; 0B
	ora $F4.b		; 05 F4
	nop		; EA
	tsx		; BA
	bmi -62.b		; 30 C2
	xba		; EB
	plx		; FA
	jsl $119220.l		; 22 20 92 11
	sbc $C115.w,X		; FD 15 C1
	jsr $0418.w		; 20 18 04
	asl $B979.w		; 0E 79 B9
	sbc $F3FF44.l		; EF 44 FF F3
	beq -102.b		; F0 9A
	txs		; 9A
	sep #$0F		; E2 0F
	brk $A0.b		; 00 A0
	bcs  84.b		; B0 54
	cld		; D8
	sta [$E1.b]		; 87 E1
	bit $66.b		; 24 66
	ora ($33.b)		; 12 33
	asl $0C04.w,X		; 1E 04 0C
	adc $FF0381.l,X		; 7F 81 03 FF
	ora $DE40BC.l,X		; 1F BC 40 DE
	jsr $18E7.w		; 20 E7 18
	adc ($0C.b,S),Y		; 73 0C
	and $1C06.w,Y		; 39 06 1C
	ora $8E.b,S		; 03 8E
	ora ($FC.b,X)		; 01 FC
	and $3D.b,X		; 35 3D
	sbc ($A7.b)		; F2 A7
	cpy #$40.b		; C0 40
	rts		; 60

	plp		; 28
	bmi  24.b		; 30 18
	bcs -69.b		; B0 BB
	trb $E3F2.w		; 1C F2 E3
	asl $3A5E.w		; 0E 5E 3A
	and $3A38C0.l,X		; 3F C0 38 3A
	ldx $39.b,Y		; B6 39
	ora [$F6.b]		; 07 F6
	phx		; DA
	lda #$05.b		; A9 05
	beq  -1.b		; F0 FF
	inc $F2C4.w,X		; FE C4 F2
	mvp $60,$9A		; 44 9A 60
	jsr ($1010.w,X)		; FC 10 10
	ora ($16.b,X)		; 01 16
	pla		; 68
	inx		; E8
	cpy #$1F.b		; C0 1F
	asl $C01E.w		; 0E 1E C0
	txs		; 9A
	sta $0CF0AB.l		; 8F AB F0 0C
	inx		; E8
	bpl -15.b		; 10 F1
	cop $1E.b		; 02 1E
	pei ($D1.b)		; D4 D1
	and ($E8.b),Y		; 31 E8
	ora $1AFE2C.l		; 0F 2C FE 1A
	cmp ($48.b),Y		; D1 48
	eor [$F0.b]		; 47 F0
	ora $E082.w		; 0D 82 E0
	jsr $1470.w		; 20 70 14
	sec		; 38
	cpy #$00.b		; C0 00
	tsb $33CD.w		; 0C CD 33
	bit #$82.b		; 89 82
	ldy $A4.b		; A4 A4
	dec $DA.b,X		; D6 DA
	rol $E3D1.w,X		; 3E D1 E3
	wai		; CB
	mvn $55,$B2		; 54 B2 55
	ora ($A0.b,X)		; 01 A0
	sbc ($70.b,S),Y		; F3 70
	lsr $E0E9.w,X		; 5E E9 E0
.ACCU 16
.INDEX 16
	rep #$BA		; C2 BA
	jsr ($F000.w,X)		; FC 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $001D.w		; 8D 1D 00
	sbc $FC23FF.l,X		; FF FF 23 FC
	cpy #$F8F1.w		; C0 F1 F8
	ora #$3300.w		; 09 00 33
	sbc ($C3.b,S),Y		; F3 C3
	jsr ($F6E0.w,X)		; FC E0 F6
	mvp $01,$00		; 44 00 01
	ora ($FA.b,X)		; 01 FA
	cmp $13.b,S		; C3 13
	cpy $03.b		; C4 03
	ora [$07.b]		; 07 07
	sed		; F8
	sbc $BFFC67.l,X		; FF 67 FC BF
	cmp $07.b,S		; C3 07
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $7E.b		; 00 7E
	pei ($FD.b)		; D4 FD
	jsr $FC20.w		; 20 20 FC
	asl $07.b		; 06 07
	dec $7007.w		; CE 07 70
	adc $FFEDC7.l,X		; 7F C7 ED FF
	rti		; 40

	sbc $FA5F.w,X		; FD 5F FA
	bra -76.b		; 80 B4
	sbc $030201.l,X		; FF 01 02 03
	trb $F10E.w		; 1C 0E F1
	adc $E881.w,X		; 7D 81 E8
	cop $A0.b		; 02 A0
	sed		; F8
	ora #$8638.w		; 09 38 86
	lda $03.b,X		; B5 03
	brk $1E.b		; 00 1E
	bcs  31.b		; B0 1F
	bcs  -1.b		; B0 FF
	ora ($0F.b,S),Y		; 13 0F
	sta [$30.b],Y		; 97 30
	eor $9FBFC7.l,X		; 5F C7 BF 9F
	adc $7FFF3F.l,X		; 7F 3F FF 7F
	inc $3C.b		; E6 3C
	lda [$EE.b]		; A7 EE
	bvs  15.b		; 70 0F
	cmp [$3F.b]		; C7 3F
	sbc ($FF.b),Y		; F1 FF
	jmp ($27FF.w,X)		; 7C FF 27
	tya		; 98
	cpy #$30A4.w		; C0 A4 30
	nop		; EA
	sty $E6F5.w		; 8C F5 E6
	plx		; FA
	sbc ($FC.b)		; F2 FC
	sbc $F8E0.w,Y		; F9 E0 F8
	eor $EE.b,S		; 43 EE
	sec		; 38
	cpy #$F08C.w		; C0 8C F0
	inc $F8.b		; E6 F8
	sbc ($F1.b,S),Y		; F3 F1
	inc $0861.w,X		; FE 61 08
	lda ($FE.b)		; B2 FE
	sty $09.b,X		; 94 09
	ora ($83.b,X)		; 01 83
	and $98.b,S		; 23 98
	sta [$AD.b]		; 87 AD
	sbc $0E3604.l,X		; FF 04 36 0E
	brk $C3.b		; 00 C3
	inc $3C28.w,X		; FE 28 3C
	sta ($F8.b),Y		; 91 F8
	ora #$F13F.w		; 09 3F F1
	inc $7F7C.w,X		; FE 7C 7F
	cpy #$FFB0.w		; C0 B0 FF
	sed		; F8
	ora #$25B9.w		; 09 B9 25
	rts		; 60

	ldx #$0DF8.w		; A2 F8 0D
	sbc $F8A2FD.l,X		; FF FD A2 F8
	ora $A0FD.w		; 0D FD A0
	sbc $A050D2.l,X		; FF D2 50 A0
	inc $FC28.w,X		; FE 28 FC
	ldx $0DF8.w,Y		; BE F8 0D
	sbc $8C5A2B.l,X		; FF 2B 5A 8C
	bpl -120.b		; 10 88
	sbc $F8F0.w,X		; FD F0 F8
	phd		; 0B
	asl $E6.b		; 06 E6
	sbc ($FC.b)		; F2 FC
	ora ($51.b),Y		; 11 51
	txa		; 8A
	jsr ($FC8F.w,X)		; FC 8F FC
	cmp ($F2.b)		; D2 F2
	beq  25.b		; F0 19
	ora ($C2.b),Y		; 11 C2
	jsr ($02CF.w,X)		; FC CF 02
	ora ($0F.b,S),Y		; 13 0F
	jmp.w [$FF01]		; DC 01 FF
	ora $0B030C.l,X		; 1F 0C 03 0B
	asl $1D.b		; 06 1D
	asl $17.b		; 06 17
	tsb $0C3F.w		; 0C 3F 0C
	rtl		; 6B

	ora $223C9B.l,X		; 1F 9B 3C 22
	rti		; 40

	nop		; EA
	ora [$C8.b]		; 07 C8
	mvp $1C,$FE		; 44 FE 1C
	sbc $F1F8FF.l,X		; FF FF F8 F1
	jmp ($6003.w,X)		; 7C 03 60
	bra -112.b		; 80 90
	rti		; 40

	beq   0.b		; F0 00
	bcs   0.b		; B0 00
	inx		; E8
	brk $D8.b		; 00 D8
	brk $01.b		; 00 01
	jsr $E0A8.w		; 20 A8 E0
	lsr $28.b,X		; 56 28
	rts		; 60

	rts		; 60

	dec $E8.b		; C6 E8
	inc $FE30.w,X		; FE 30 FE
	bne  86.b		; D0 56
	ldx $F3.b,Y		; B6 F3
	ora $0F.b,S		; 03 0F
	and [$07.b]		; 27 07
	ora $140F.w		; 0D 0F 14
	ora $0F16FF.l,X		; 1F FF 16 0F
	ora #$F8F0.w		; 09 F0 F8
	and ($BC.b),Y		; 31 BC
	ora $1403.w		; 0D 03 14
	ora $F10F1F.l		; 0F 1F 0F F1
	ora $E5F87C.l,X		; 1F 7C F8 E5
	ora [$13.b],Y		; 17 13
	ora $26FF17.l,X		; 1F 17 FF 26
	lda $FF0F9F.l,X		; BF 9F 0F FF
	cmp $9C.b,S		; C3 9C
	sbc ($FF.b,S),Y		; F3 FF
	cmp $A2.b,S		; C3 A2
	ora ($0F.b,S),Y		; 13 0F
	sbc ($FF.b),Y		; F1 FF
	sbc [$42.b]		; E7 42
	sbc ($FF.b),Y		; F1 FF
	adc $4E.b,S		; 63 4E
	php		; 08
	lsr A		; 4A
	sbc $7BFF.w,X		; FD FF 7B
	sta $5B.b		; 85 5B
	beq  -1.b		; F0 FF
	lda $F3.b,X		; B5 F3
	jmp ($071F.w,X)		; 7C 1F 07
	ora [$FA.b]		; 07 FA
	cpx $041F.w		; EC 1F 04
	sbc ($05.b,S),Y		; F3 05
	iny		; C8
.ACCU 8
.INDEX 8
	sep #$F1		; E2 F1
	tay		; A8
	sbc ($E4.b),Y		; F1 E4
	lsr $1E.b		; 46 1E
	ora $710EFF.l		; 0F FF 0E 71
	ror $FCC3.w,X		; 7E C3 FC
	sbc $FBF9C6.l		; EF C6 F9 FB
	jsr ($FE81.w,X)		; FC 81 FE
	sei		; 78
	eor [$FF.b],Y		; 57 FF
	adc $80FFF0.l,X		; 7F F0 FF 80
	plp		; 28
	sbc ($FE.b),Y		; F1 FE
	jsr ($F4E2.w,X)		; FC E2 F4
	adc [$06.b],Y		; 77 06
	eor $FF84.w,Y		; 59 84 FF
	ora $FF.b		; 05 FF
	and $5F857F.l,X		; 3F 7F 85 5F
	sbc $B8.b		; E5 B8
	adc $3B1FEF.l,X		; 7F EF 1F 3B
	cmp [$FA.b]		; C7 FA
	ora ($E4.b,X)		; 01 E4
	ora $85.b,S		; 03 85
	asl $FEB1.w		; 0E B1 FE
	sbc $03.b,X		; F5 03
	tsx		; BA
	and $4BFFBA.l,X		; 3F BA FF 4B
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sbc $F3BFBF.l,X		; FF BF BF F3
	sed		; F8
	asl A		; 0A
	beq   3.b		; F0 03
	sbc ($FE.b),Y		; F1 FE
	sbc $01A7.w,X		; FD A7 01
	inc $FFFC.w,X		; FE FC FF
	inc $F4FE.w,X		; FE FE F4
	sbc [$CD.b],Y		; F7 CD
	bit $FF3D.w,X		; 3C 3D FF
	sbc ($FF.b),Y		; F1 FF
	sbc $E0F8F7.l,X		; FF F7 F8 E0
	beq   0.b		; F0 00
	ora $01.b		; 05 01
	ora $EA.b,X		; 15 EA
	ror $41.b,X		; 76 41
	sty $F5.b		; 84 F5
	inc $C806.w		; EE 06 C8
	sbc ($F0.b),Y		; F1 F0
	sed		; F8
	ora #$63.b		; 09 63
	bvs  82.b		; 70 52
	jmp ($31D9.w,X)		; 7C D9 31
	rol $ED1C.w,X		; 3E 1C ED
	lsr $CBF7.w		; 4E F7 CB
	sbc ($8D.b)		; F2 8D
	and [$64.b],Y		; 37 64
	inc $FFB1.w		; EE B1 FF
	inc $FDF6.w,X		; FE F6 FD
	jmp ($F179.w,X)		; 7C 79 F1
	sbc $C2FEFF.l,X		; FF FF FE C2
	sbc ($FE.b),Y		; F1 FE
	adc $40FE.w,Y		; 79 FE 40
	bra -64.b		; 80 C0
	inc $F6FD.w,X		; FE FD F6
	rts		; 60

	pld		; 2B
	rti		; 40

	brk $D0.b		; 00 D0
	bra  -6.b		; 80 FA
	nop		; EA
	inc $B8FE.w,X		; FE FE B8
	inc $A9B1.w		; EE B1 A9
	eor ($08.b)		; 52 08
	beq  10.b		; F0 0A
	sbc $F508B9.l,X		; FF B9 08 F5
	ldx $FFF2.w,Y		; BE F2 FF
	jsr ($20AC.w,X)		; FC AC 20
	jsr ($2C38.w,X)		; FC 38 2C
	sbc ($C6.b),Y		; F1 C6
	cpx $C4EA.w		; EC EA C4
	sbc ($00.b)		; F2 00
	sed		; F8
	php		; 08
	beq -58.b		; F0 C6
	beq  -4.b		; F0 FC
	tad		; 5B
	cmp $F81FB7.l,X		; DF B7 1F F8
	lda $F73B73.l,X		; BF 73 3B F7
	adc $FE30F7.l,X		; 7F F7 30 FE
	cmp $AABF23.l,X		; DF 23 BF AA
	lda $C73B43.l,X		; BF 43 3B C7
	adc $FEFFC7.l,X		; 7F C7 FF FE
	sbc $E866.w,X		; FD 66 E8
	ora #$56.b		; 09 56
	jsr ($E866.w,X)		; FC 66 E8
	ora #$FF.b		; 09 FF
	tda		; 7B
	lsr $FC.b,X		; 56 FC
	ora $171F03.l		; 0F 03 1F 17
	adc $2F3F7A.l,X		; 7F 7A 3F 2F
	rtl		; 6B

	bit #$31.b		; 89 31
	sbc ($DF.b),Y		; F1 DF
	adc $1F8C7E.l,X		; 7F 7E 8C 1F
	sbc ($3F.b),Y		; F1 3F
	sbc ($7F.b),Y		; F1 7F
	bit #$7F.b		; 89 7F
	sbc ($7F.b,S),Y		; F3 7F
	sbc $FFF1FF.l,X		; FF FF F1 FF
	sbc $F8D8.w,Y		; F9 D8 F8
	sed		; F8
	plx		; FA
	ply		; 7A
	tyx		; BB
	ora ($87.b,S),Y		; 13 87
	ora [$9E.b]		; 07 9E
	sta $FFFFC9.l,X		; 9F C9 FF FF
	sta $D88F88.l		; 8F 88 8F D8
	sbc $7AFFF8.l,X		; FF F8 FF 7A
	sbc $FC13.w,X		; FD 13 FC
	ora [$F8.b]		; 07 F8
	sta $F08FE0.l,X		; 9F E0 8F F0
	sbc $E0FEF0.l,X		; FF F0 FE E0
	beq -48.b		; F0 D0
	cpy #$FA.b		; C0 FA
	inc A		; 1A
	ldx $FF9E.w,Y		; BE 9E FF
	ldx $38FF.w,Y		; BE FF 38
	jmp $E7BEEB.l		; 5C EB BE E7
	beq  42.b		; F0 2A
	sed		; F8
	inc A		; 1A
	jsr ($FFF1.w,X)		; FC F1 FF
	sbc ($2F.b,X)		; E1 2F
	bne -27.b		; D0 E5
	ora ($C0.b,X)		; 01 C0
	ldy #$E0.b		; A0 E0
	bvc -16.b		; 50 F0
	bvs -32.b		; 70 E0
	cmp $FE3CDD.l,X		; DF DD 3C FE
	sbc $C0A0.w,Y		; F9 A0 C0
	bvc -32.b		; 50 E0
	sbc ($F0.b),Y		; F1 F0
	adc $9FBF68.l,X		; 7F 68 BF 9F
	sbc $B9FFFF.l,X		; FF FF FF B9
	ror $3FFC.w,X		; 7E FC 3F
	rol $1F.b,X		; 36 1F
	ora $0F3F3F.l,X		; 1F 3F 3F 0F
	tsb $68.b		; 04 68
	sbc $1F7F9F.l,X		; FF 9F 7F 1F
	sbc $FC7FB9.l,X		; FF B9 7F FC
	adc $F17F36.l,X		; 7F 36 7F F1
	ora $0C1F04.l,X		; 1F 04 1F 0C
	ora $FC3F98.l		; 0F 98 3F FC
	ora $C78382.l,X		; 1F 82 83 C7
	sta [$8C.b]		; 87 8C
	tsb $FCD3.w		; 0C D3 FC
	cpx #$FE.b		; E0 FE
	iny		; C8
	ora $F0FFFF.l		; 0F FF FF F0
	ora $FC83E0.l,X		; 1F E0 83 FC
	sta [$F8.b]		; 87 F8
	tsb $C0F3.w		; 0C F3 C0
	sbc $C8FFE0.l,X		; FF E0 FF C8
	sbc $FFFF31.l,X		; FF 31 FF FF
	beq   8.b		; F0 08
	sed		; F8
	asl $70FE.w,X		; 1E FE 70
	beq 113.b		; F0 71
	sbc ($D3.b),Y		; F1 D3
	cmp ($87.b,S),Y		; D3 87
	.db $82, $03, $03		; 82 03 03
	beq  15.b		; F0 0F
	lda $07F80F.l,X		; BF 0F F8 07
	inc $FA01.w,X		; FE 01 FA
	sbc ($0F.b),Y		; F1 0F
	cmp ($2F.b,S),Y		; D3 2F
	.db $82, $7F, $7F		; 82 7F 7F
	sed		; F8
	asl $DBF1.w		; 0E F1 DB
	inc $7EED.w,X		; FE ED 7E
	asl $30B8.w		; 0E B8 30
	dec A		; 3A
	sed		; F8
	sec		; 38
	jsr ($F1EC.w,X)		; FC EC F1
	cmp $F1B4F8.l		; CF F8 B4 F1
	inc $FC0E.w,X		; FE 0E FC
	bmi  -4.b		; 30 FC
	sed		; F8
	jsr ($F87F.w,X)		; FC 7F F8
	sbc ($F8.b),Y		; F1 F8
	cop $00.b		; 02 00
	tsb $1E0C.w		; 0C 0C 1E
	asl $5F84.w,X		; 1E 84 5F
	lsr $809E.w		; 4E 9E 80
	sta $0B6BFF.l,X		; 9F FF 6B 0B
	adc ($73.b,S),Y		; 73 73
	brk $02.b		; 00 02
	beq  63.b		; F0 3F
	lsr $803F.w		; 4E 3F 80
	ror $D50B.w,X		; 7E 0B D5
	.db $42, $F7		; 42 F7
	adc ($89.b,S),Y		; 73 89
	sbc ($4D.b,X)		; E1 4D
	sbc ($82.b),Y		; F1 82
	sbc ($04.b),Y		; F1 04
	stx $E1.b		; 86 E1
	sbc [$E4.b],Y		; F7 E4
	cmp #$3F.b		; C9 3F
	and $E9.b,X		; 35 E9
	beq -17.b		; F0 EF
	inc $E4E0.w,X		; FE E0 E4
	sta ($73.b,S),Y		; 93 73
	lda [$79.b],Y		; B7 79
	cop $FC.b		; 02 FC
	and $933CAC.l,X		; 3F AC 3C 93
	bvs 109.b		; 70 6D
	sbc $7E86.w,X		; FD 86 7E
	sbc $F31C.w		; ED 1C F3
	ora $80C6F9.l		; 0F F9 C6 80
	bra  -4.b		; 80 FC
	sei		; 78
	sbc $C3E9.w,X		; FD E9 C3
	ora [$F8.b]		; 07 F8
	iny		; C8
	cpy #$CD.b		; C0 CD
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	sbc $88F8.w,X		; FD F8 88
	sbc $2074C0.l,X		; FF C0 74 20
	cpy #$C8.b		; C0 C8
	sbc ($18.b),Y		; F1 18
	lsr $F0.b,X		; 56 F0
	sbc $2002F2.l		; EF F2 02 20
	pea $D8F2.w		; F4 F2 D8
	phd		; 0B
.INDEX 8
	sep #$D4		; E2 D4
	xce		; FB
	and $11F8F0.l		; 2F F0 F8 11
	bpl -13.b		; 10 F3
	cmp $2A2A.w,Y		; D9 2A 2A
	bcc -112.b		; 90 90
	tsb $04.b		; 04 04
	ror $66.b		; 66 66
	beq  -8.b		; F0 F8
	ora ($FC.b,S),Y		; 13 FC
	cmp [$D8.b],Y		; D7 D8
	cop $03.b		; 02 03
	tsb $07.b		; 04 07
	ora #$0F.b		; 09 0F
	ora ($1F.b,X)		; 01 1F
	bit $58.b		; 24 58
	xba		; EB
	inc $D2.b		; E6 D2
	.db $42, $48		; 42 48
	ora [$E4.b]		; 07 E4
	sbc ($F3.b,X)		; E1 F3
	and $FF4057.l,X		; 3F 57 40 FF
	sbc $E06087.l,X		; FF 87 60 E0
	cpy $C4.b		; C4 C4
	cli		; 58
	cli		; 58
	sed		; F8
	sed		; F8
	ror $F6.b,X		; 76 F6
	rti		; 40

	and $F00EF0.l,X		; 3F F0 0E F0
	sbc $E00CFF.l,X		; FF FF 0C E0
	ora $583BC4.l,X		; 1F C4 3B 58
	ldx $F8.b		; A6 F8
	ora [$F6.b]		; 07 F6
	ora #$16.b		; 09 16
	asl $88.b		; 06 88
	brk $25.b		; 00 25
	ora $2C20FE.l		; 0F FE 20 2C
	brk $30.b		; 00 30
	jsr $4CF6.w		; 20 F6 4C
	sep #$06		; E2 06
	asl $00.b,X		; 16 00
	jmp.w [$FF20]		; DC 20 FF
	sbc $EC00E7.l,X		; FF E7 00 EC
	jsr $0672.w		; 20 72 06
	dec $00.b,X		; D6 00
	cmp $F300.w,Y		; D9 00 F3
	sec		; 38
	sec		; 38
	eor ($41.b,X)		; 41 41
	asl $FF.b,X		; 16 FF
	xce		; FB
	asl $88.b,X		; 16 88
	dey		; 88
	cmp $8A1D.w,X		; DD 1D 8A
	asl A		; 0A
	rol A		; 2A
	jsl $F09191.l		; 22 91 91 F0
	inc $DD1D.w,X		; FE 1D DD
	asl A		; 0A
	and $228AFC.l,X		; 3F FC 8A 22
	dec A		; 3A
	sta ($D1.b),Y		; 91 D1
	sbc $2F98C7.l		; EF C7 98 2F
	and $E7.b		; 25 E7
	cpx $73.b		; E4 73
	adc $20F37F.l,X		; 7F 7F F3 20
	cpx #$19.b		; E0 19
	sed		; F8
	and ($F1.b,S),Y		; 33 F1
	cmp [$AB.b]		; C7 AB
	sbc ($25.b,X)		; E1 25
	cmp $F31FE4.l,X		; DF E4 1F F3
	ora $9CFF80.l		; 0F 80 FF 9C
	ldy #$F1.b		; A0 F1
	ora $F8D0F0.l		; 0F F0 D0 F8
	clv		; B8
	inc $F7DA.w,X		; FE DA F7
	sed		; F8
	jmp.w [$CE54]		; DC 54 CE
	sta $CF.b		; 85 CF
	cmp $FF6F.w,Y		; D9 6F FF
	cmp ($F1.b,S),Y		; D3 F1
	jsr ($FCDA.w,X)		; FC DA FC
	sbc $FE54FF.l,X		; FF FF 54 FE
	sta $FE.b		; 85 FE
	ora $FE6FFE.l		; 0F FE 6F FE
	cmp ($FE.b,S),Y		; D3 FE
	ora $1F09.w		; 0D 09 1F
	trb $170F.w		; 1C 0F 17
	adc $06078E.l		; 6F 8E 07 06
	ora $09020B.l		; 0F 0B 02 09
	nop		; EA
	brk $F1.b		; 00 F1
	ora $F1FFC0.l		; 0F C0 FF F1
	sbc $FE02.w		; ED 02 FE
	dec $FEFF.w,X		; DE FF FE
	cmp $FFFFC6.l,X		; DF C6 FF FF
	tya		; 98
	stx $FF.b,Y		; 96 FF
	sbc $4F697F.l,X		; FF 7F 69 4F
	eor [$07.b]		; 47 07
	ora $3FFFF1.l		; 0F F1 FF 3F
	bit $FFF1.w,X		; 3C F1 FF
	adc #$FF.b		; 69 FF
	eor [$3F.b]		; 47 3F
	sty $7F.b		; 84 7F
	ora ($FF.b),Y		; 11 FF
	eor $EDFAFE.l,X		; 5F FE FA ED
	txa		; 8A
	inc $BA2E.w,X		; FE 2E BA
	txs		; 9A
	inx		; E8
	sta ($F1.b,S),Y		; 93 F1
	sbc ($FD.b),Y		; F1 FD
	sbc $1FFF2E.l,X		; FF 2E FF 1F
	adc $C8FC9A.l,X		; 7F 9A FC C8
	beq -32.b		; F0 E0
	brk $80.b		; 00 80
	sed		; F8
	beq -24.b		; F0 E8
	beq  80.b		; F0 50
	rti		; 40

	tyx		; BB
	sbc $00E4CF.l,X		; FF CF E4 00
	sbc ($FD.b),Y		; F1 FD
	cpx #$60.b		; E0 60
	and $F317E5.l,X		; 3F E5 17 F3
	tyx		; BB
	sei		; 78
	eor [$F0.b],Y		; 57 F0
	sta ($FF.b,S),Y		; 93 FF
	brk $71.b		; 00 71
	rol $E6.b		; 26 E6
	eor $E7DC.w,X		; 5D DC E7
	adc $B95B.w,X		; 7D 5B B9
	pha		; 48
	inc $4A21.w,X		; FE 21 4A
.ACCU 16
	rep #$EA		; C2 EA
	inc $19.b		; E6 19
	jmp.w [$FD23]		; DC 23 FD
	ora $F9.b,S		; 03 F9
	pea $7CE0.w		; F4 E0 7C
	bpl -48.b		; 10 D0
	lda ($90.b)		; B2 90
	cpx #$C0.b		; E0 C0
	cpy #$B6.b		; C0 B6
	tsa		; 3B
	sbc #$A7FC.w		; E9 FC A7
	sbc $90F235.l,X		; FF 35 F2 90
	sbc ($C0.b)		; F2 C0
	inx		; E8
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	beq  -1.b		; F0 FF
	adc $7E7093.l,X		; 7F 93 70 7E
	ldx $FC04.w,Y		; BE 04 FC
	wai		; CB
	and $3E1FE7.l,X		; 3F E7 1F 3E
	inc $B053.w,X		; FE 53 B0
	bit #$5078.w		; 89 78 50
	sbc ($C4.b,X)		; E1 C4
	asl A		; 0A
	sbc ($A6.b)		; F2 A6
	phx		; DA
	ply		; 7A
	nop		; EA
	ldy $F8.b,X		; B4 F8
	sec		; 38
	sbc $2C7DFF.l,X		; FF FF 7D 2C
	jsr ($3C0C.w,X)		; FC 0C 3C
	bit $80B8.w		; 2C B8 80
	sei		; 78
	clc		; 18
	jmp ($F938.w,X)		; 7C 38 F9
	sec		; 38
	sec		; 38
	sed		; F8
	sta [$0B.b]		; 87 0B
	bit $0CFD.w		; 2C FD 0C
	jsr ($80ED.w,X)		; FC ED 80
	ply		; 7A
	clc		; 18
	adc $FBDFE9.l		; 6F E9 DF FB
	sbc $08040C.l		; EF 0C 04 08
	brk $1A.b		; 00 1A
	ora ($D1.b)		; 12 D1
	asl $02.b		; 06 02
	ora $0AD183.l		; 0F 83 D1 0A
	brk $04.b		; 00 04
	sbc $000CFF.l,X		; FF FF 0C 00
	clc		; 18
	brk $3A.b		; 00 3A
	brk $70.b		; 00 70
	cop $E6.b		; 02 E6
	ora $DD00AF.l		; 0F AF 00 DD
	brk $BA.b		; 00 BA
	sty $FF.b,X		; 94 FF
	and $181894.l,X		; 3F 94 18 18
.ACCU 8
	sep #$E0		; E2 E0
	iny		; C8
	dey		; 88
	and $23.b,S		; 23 23
	stx $06.b		; 86 06
	adc ($41.b),Y		; 71 41
	plp		; 28
	brk $3D.b		; 00 3D
	jsr ($E0F0.w,X)		; FC F0 E0
	sep #$88		; E2 88
	iny		; C8
	beq   6.b		; F0 06
	stx $41.b		; 86 41
	adc ($00.b),Y		; 71 00
	cmp $47.b,S		; C3 47
	plp		; 28
	jmp $9C33.w		; 4C 33 9C
	txa		; 8A
	ora [$08.b]		; 07 08
	ora [$1E.b]		; 07 1E
	cmp #$8A.b		; C9 8A
	sbc $FF.b,X		; F5 FF
	adc $A28F86.l,X		; 7F 86 8F A2
	cmp ($F0.b,S),Y		; D3 F0
	jsr ($FEDE.w,X)		; FC DE FE
	sbc $FE868F.l,X		; FF 8F 86 FE
	ora $EFFD.w		; 0D FD EF
	ora $013F48.l,X		; 1F 48 3F 01
	adc $9345B9.l,X		; 7F B9 45 93
	bmi   0.b		; 30 00
	.db $62, $FE, $FD		; 62 FE FD
	cop $DC.b		; 02 DC
	cld		; D8
	rti		; 40

	sei		; 78
	inc $9FF8.w,X		; FE F8 9F
	sty $08.b		; 84 08
	asl $8200.w		; 0E 00 82
	bit $263E.w,X		; 3C 3E 26
	cmp ($C0.b,X)		; C1 C0
	bra  -1.b		; 80 FF
	rts		; 60

	rts		; 60

	php		; 08
	phx		; DA
	jsr ($47FF.w,X)		; FC FF 47
	bra 115.b		; 80 73
	cpy #$39.b		; C0 39
	cpy #$37.b		; C0 37
	bra 124.b		; 80 7C
	bra 117.b		; 80 75
	rts		; 60

	sta $3C3F10.l,X		; 9F 10 3F 3C
	bpl  22.b		; 10 16
	asl $43.b,X		; 16 43
	ora $96.b,S		; 03 96
	asl $FC.b		; 06 FC
	tsb $04.b		; 04 04
	adc ($01.b),Y		; 71 01
	cpx #$C3.b		; E0 C3
	bra -16.b		; 80 F0
	stx $03.b,Y		; 96 03
	cmp $06.b,S		; C3 06
	jsr ($FF7B.w,X)		; FC 7B FF
	sbc $01B404.l,X		; FF 04 B4 01
	sbc $6800.w,Y		; F9 00 68
	ora [$1F.b]		; 07 1F
	plp		; 28
	ora $4D1966.l,X		; 1F 66 19 4D
	ora $05.b,S		; 03 05
	ora $0F.b,S		; 03 0F
	.db $42, $0E		; 42 0E
	ora ($04.b,X)		; 01 04
	ora $0A.b,S		; 03 0A
	sbc ($8C.b),Y		; F1 8C
	sbc #$A6.b		; E9 A6
	eor $800FA9.l		; 4F A9 0F 80
	xba		; EB
	jsr ($C560.w,X)		; FC 60 C5
	sbc ($F8.b),Y		; F1 F8
	sed		; F8
	bne -16.b		; D0 F0
	sbc $30121B.l,X		; FF 1B 12 30
	beq -96.b		; F0 A0
	rts		; 60

	jmp ($E0FC.w,X)		; 7C FC E0
	ora [$C0.b],Y		; 17 C0
	rol $F19E.w,X		; 3E 9E F1
	ora $E1FF.w		; 0D FF E1
	jsr ($E00E.w,X)		; FC 0E E0
	ora $4C03FC.l,X		; 1F FC 03 4C
	tsb $0B0B.w		; 0C 0B 0B
	brk $02.b		; 00 02
	cmp $0302FF.l,X		; DF FF 02 03
	ora $09.b,S		; 03 09
	ora ($0B.b,X)		; 01 0B
	asl $0CF1.w		; 0E F1 0C
	jmp $00EB0A.l		; 5C 0A EB 00
	cpx $B202.w		; EC 02 B2
	ora $EB031F.l		; 0F 1F 03 EB
	ora ($D9.b,X)		; 01 D9
	ora ($F6.b,X)		; 01 F6
	dec $8484.w,X		; DE 84 84
	jsl $77FE22.l		; 22 22 FE 77
	pla		; 68
	ror A		; 6A
	.db $62, $56, $56		; 62 56 56
	bcc -112.b		; 90 90
	eor $43.b,S		; 43 43
	php		; 08
	php		; 08
	beq  -4.b		; F0 FC
	.db $62, $6A, $07		; 62 6A 07
	sed		; F8
	beq  -2.b		; F0 FE
	clc		; 18
	ora [$88.b]		; 07 88
	jsr ($033C.w,X)		; FC 3C 03
	ora $0B03.w		; 0D 03 0B
	cop $38.b		; 02 38
	ora [$3E.b]		; 07 3E
	stx $F1.b		; 86 F1
	bra   8.b		; 80 08
	cpx $00FA.w		; EC FA 00
	jsr ($FEFC.w,X)		; FC FC FE
	clc		; 18
	rol $8CFE.w,X		; 3E FE 8C
	jmp ($FF1F.w,X)		; 7C 1F FF
	phd		; 0B
	sbc $77FF31.l,X		; FF 31 FF 77
	sbc $0FFC1C.l,X		; FF 1C FC 0F
	sbc $629F61.l,X		; FF 61 9F 62
	inc $3E.b,X		; F6 3E
	jmp.w [$F8FE]		; DC FE F8
	jsr ($1014.w,X)		; FC 14 10
	asl A		; 0A
	php		; 08
	bcs -126.b		; B0 82
	.db $82, $03, $BA		; 82 03 BA
	sbc ($FF.b,X)		; E1 FF
	sta [$03.b]		; 87 03
	cop $C5.b		; 02 C5
	cpy #$10.b		; C0 10
	pea $BA08.w		; F4 08 BA
	bra 108.b		; 80 6C
	.db $82, $7A, $E5		; 82 7A E5
	sbc $E50187.l,X		; FF 87 01 E5
	cop $FF.b		; 02 FF
	cpy #$35.b		; C0 35
	bit $24.b		; 24 24
	adc $C06D.w		; 6D 6D C0
	rti		; 40

	.db $62, $87, $69		; 62 87 69
	iny		; C8
	pha		; 48
	stz $74.b,X		; 74 74
	sed		; F8
	nop		; EA
	ror A		; 6A
	beq  64.b		; F0 40
	cpy #$18.b		; C0 18
	cpx #$F0.b		; E0 F0
	pha		; 48
	iny		; C8
	beq  -8.b		; F0 F8
	ror A		; 6A
	nop		; EA
	sbc $9CEB56.l,X		; FF 56 EB 9C
	ror $F8.b,X		; 76 F8
	jmp.w [$70E0]		; DC E0 70
	bra -64.b		; 80 C0
	inc $BECD.w		; EE CD BE
	lsr $FCD1.w		; 4E D1 FC
	cmp ($1F.b),Y		; D1 1F
	ror $E038.w,X		; 7E 38 E0
	tsb $00E0.w		; 0C E0 00
	jmp $6BAB00.l		; 5C 00 AB 6B
	sty $FD.b		; 84 FD
	.db $82, $F9, $86		; 82 F9 86
	ora $FEEEE0.l,X		; 1F E0 EE FE
	jmp ($9E00.w,X)		; 7C 00 9E
	brk $F3.b		; 00 F3
	inc $1F1E.w,X		; FE 1E 1F
	cmp [$FF.b],Y		; D7 FF
	jsr ($07FF.w,X)		; FC FF 07
	ora [$D4.b]		; 07 D4
	sed		; F8
	phd		; 0B
	sbc $7C0DF8.l,X		; FF F8 0D 7C
	.db $82, $0D, $F1		; 82 0D F1
	stx $F9.b		; 86 F9
	ora $1C.b,S		; 03 1C
	asl $F5.b		; 06 F5
	ora ($06.b,X)		; 01 06
	lda $5A02.w,X		; BD 02 5A
	cpx $C3.b		; E4 C3
	sbc $E1E8FE.l,X		; FF FE E8 E1
	and $7ABFBF.l,X		; 3F BF BF 7A
	sta $97C75F.l,X		; 9F 5F C7 97
	bmi 103.b		; 30 67
	ora $EAE203.l		; 0F 03 E2 EA
	cmp ($BE.b,X)		; C1 BE
	cmp ($C7.b),Y		; D1 C7
	and $7FF670.l,X		; 3F 70 F6 7F
	sbc ($C0.b)		; F2 C0
	cmp #$FD.b		; C9 FD
	plx		; FA
	sbc ($F5.b)		; F2 F5
	inc $EA.b		; E6 EA
	sty $30A4.w		; 8C A4 30
	tya		; 98
	sbc ($3F.b,X)		; E1 3F
	ror $D9.b,X		; 76 D9
	sbc $F302FD.l,X		; FF FD 02 F3
	jsr ($F8E6.w,X)		; FC E6 F8
	sty $38F0.w		; 8C F0 38
	cmp $FF.b,S		; C3 FF
	sbc ($FF.b)		; F2 FF
	inc A		; 1A
	ora [$1E.b]		; 07 1E
	sbc $79.b,S		; E3 79
	sta $FB.b,S		; 83 FB
	ora $7E.b		; 05 7E
	ora ($78.b,S),Y		; 13 78
	sta $FF.b		; 85 FF
	ora $FE.b		; 05 FE
	adc $FE.b,X		; 75 FE
	jsr ($0205.w,X)		; FC 05 02
	ora $E1.b		; 05 E1
	lda $FEF12C.l,X		; BF 2C F1 FE
	sbc $7B04.w,Y		; F9 04 7B
	.db $82, $1C, $E2		; 82 1C E2
	ora $0611.w		; 0D 11 06
	sta $17.b,S		; 83 17
	adc ($DD.b,S),Y		; 73 DD
	tsb $03.b		; 04 03
	inc $7C.b,X		; F6 7C
	sed		; F8
	phd		; 0B
	bpl  15.b		; 10 0F
	sec		; 38
	ror $E0F1.w,X		; 7E F1 E0
	lda $EA.b,S		; A3 EA
	dec $0F.b,X		; D6 0F
	brk $3C.b		; 00 3C
	ora $71.b,S		; 03 71
	txa		; 8A
	cpx $FF.b		; E4 FF
	sty $F2.b		; 84 F2
	ldx $F27E.w,Y		; BE 7E F2
	adc $FEC600.l,X		; 7F 00 C6 FE
	tsb $9CFC.w		; 0C FC 9C
	jmp ($FF30.w,X)		; 7C 30 FF
	asl A		; 0A
	beq -66.b		; F0 BE
	inc $DC24.w,X		; FE 24 DC
	asl $7BFE.w		; 0E FE 7B
	sbc $E2F280.l,X		; FF 80 F2 E2
	cmp ($08.b),Y		; D1 08
	ror $F8F5.w,X		; 7E F5 F8
	jsr ($CAE1.w,X)		; FC E1 CA
	asl A		; 0A
	cop $04.b		; 02 04
	tsb $12.b		; 04 12
	and #$FC.b		; 29 FC
	.db $82, $F1, $AE		; 82 F1 AE
	ora $E9FD.w		; 0D FD E9
	cop $AE.b		; 02 AE
	tsb $F4.b		; 04 F4
	cmp $BA00FF.l,X		; DF FF 00 BA
	ora ($E1.b,X)		; 01 E1
	brk $FB.b		; 00 FB
	eor $52FDB9.l,X		; 5F B9 FD 52
	eor ($C6.b)		; 52 C6
	asl $50.b		; 06 50
	bpl 106.b		; 10 6A
	sbc $600AF0.l,X		; FF F0 0A 60
	rts		; 60

	sta ($92.b)		; 92 92
	lsr A		; 4A
	lsr A		; 4A
	dey		; 88
	bra -16.b		; 80 F0
	asl $C6.b		; 06 C6
	bpl  59.b		; 10 3B
	tsb $0A50.w		; 0C 50 0A
	ror A		; 6A
	beq  -4.b		; F0 FC
	bra -120.b		; 80 88
	tsx		; BA
	rol $8301.w,X		; 3E 01 83
	ror A		; 6A
	ror $030D.w,X		; 7E 0D 03
	sty $F6.b		; 84 F6
	cpx $BAEA.w		; EC EA BA
	cop $F4.b		; 02 F4
	inc $EC.b,X		; F6 EC
	adc ($EF.b,X)		; 61 EF
	and $1CB949.l		; 2F 49 B9 1C
	jsr ($FE77.w,X)		; FC 77 FE
	sbc #$1F.b		; E9 1F
	sbc $3E7C8C.l,X		; FF 8C 7C 3E
	inc $F006.w,X		; FE 06 F0
	ora #$C1.b		; 09 C1
	ora ($F8.b,X)		; 01 F8
	ror $C0C5.w,X		; 7E C5 C0
	ora $31.b,S		; 03 31
	sbc $82302F.l,X		; FF 2F 30 82
	.db $82, $80, $80		; 82 80 80
	asl A		; 0A
	php		; 08
	trb $10.b		; 14 10
	cpy #$35.b		; C0 35
	cop $06.b		; 02 06
	sbc ($FC.b),Y		; F1 FC
	sbc $7A82E3.l,X		; FF E3 82 7A
	bra 108.b		; 80 6C
	php		; 08
	tsx		; BA
	bpl -12.b		; 10 F4
	nop		; EA
	ror A		; 6A
	cpy #$40.b		; C0 40
	stz $0F.b,X		; 74 0F
	sbc $48C874.l,X		; FF 74 C8 48
	ora $03.b,S		; 03 03
	sed		; F8
	adc $246D.w		; 6D 6D 24
	bit $6A.b		; 24 6A
	nop		; EA
	rti		; 40

	bmi   0.b		; 30 00
	cpy #$F0.b		; C0 F0
	pha		; 48
	iny		; C8
	beq  -8.b		; F0 F8
	eor $58.b		; 45 58
	beq -32.b		; F0 E0
	tad		; 5B
	sty $E7.b,X		; 94 E7
	and $6BAE7E.l		; 2F 7E AE 6B
	ora $3E.b		; 05 3E
	sbc ($F0.b)		; F2 F0
	ror $0AA8.w,X		; 7E A8 0A
	phx		; DA
	pea $CF04.w		; F4 04 CF
	cmp #$E0.b		; C9 E0
	ldx #$1C.b		; A2 1C
	ora $DE.b,X		; 15 DE
	plp		; 28
	lda ($F0.b)		; B2 F0
	jsr ($A2E0.w,X)		; FC E0 A2
	beq  -1.b		; F0 FF
	adc $4EFF7F.l,X		; 7F 7F FF 4E
	sbc ($B7.b),Y		; F1 B7
	sec		; 38
	cmp $CFFFDF.l,X		; DF DF FF CF
	cmp ($C1.b)		; D2 C1
	sbc ($4E.b,S),Y		; F3 4E
	lda #$FD.b		; A9 FD
	and $FC00DF.l,X		; 3F DF 00 FC
	sbc $4751.w		; ED 51 47
	sta [$FF.b]		; 87 FF
	cmp $F9.b,S		; C3 F9
	sbc $FCBFE0.l,X		; FF E0 BF FC
	dec $F01E.w,X		; DE 1E F0
	asl A		; 0A
	sbc $F07FE1.l,X		; FF E1 7F F0
	and $7C9FF8.l,X		; 3F F8 9F 7C
	rol $1E7C.w,X		; 3E 7C 1E
	inc $16.b,X		; F6 16
.ACCU 8
.INDEX 8
	sep #$39		; E2 39
	asl $37.b		; 06 37
	php		; 08
	inc $0817.w,X		; FE 17 08
	ora ($0C.b,S),Y		; 13 0C
	trb $1629.w		; 1C 29 16
	ldx $E9.b,Y		; B6 E9
	asl A		; 0A
	trb $0CFE.w		; 1C FE 0C
	jsr ($FEA9.w,X)		; FC A9 FE
	ora [$F4.b]		; 07 F4
	dec A		; 3A
	sbc ($95.b)		; F2 95
	inc $6B.b		; E6 6B
	pea $3CDB.w		; F4 DB 3C
	sta $CE.b,X		; 95 CE
	ora ($FF.b)		; 12 FF
	cmp ($99.b,X)		; C1 99
	nop		; EA
	sbc ($3C.b,S),Y		; F3 3C
	inc $18.b		; E6 18
	jsr ($7E00.w,X)		; FC 00 7E
	bra 103.b		; 80 67
	phb		; 8B
	cpx $4186.w		; EC 86 41
	bcs -28.b		; B0 E4
	ldy $FE20.w		; AC 20 FE
	sec		; 38
	cpy #$48.b		; C0 48
	cpx $A8.b		; E4 A8
	ora #$20.b		; 09 20
	sbc $66F2F4.l,X		; FF F4 F2 66
	lda $01.b,S		; A3 01
	rol $303F.w,X		; 3E 3F 30
	and $82BF0C.l,X		; 3F 0C BF 82
	ora $387F70.l		; 0F 70 7F 38
	and $787E41.l,X		; 3F 41 7E 78
	tsx		; BA
	jsl $AAE2EA.l		; 22 EA E2 AA
	tsb $40.b		; 04 40
	tsx		; BA
	tsb $26EC.w		; 0C EC 26
	ldy $BC16.w		; AC 16 BC
	ora ($A8.b)		; 12 A8
	phd		; 0B
	inc $07C3.w,X		; FE C3 07
	dex		; CA
	clc		; 18
	ora $1F1EFC.l,X		; 1F FC 1E 1F
	php		; 08
	ora $0173CE.l		; 0F CE 73 01
	dey		; 88
	ora $EEF1.w,X		; 1D F1 EE
	tax		; AA
	jsr ($EFB4.w,X)		; FC B4 EF
	stz $AC32.w,X		; 9E 32 AC
	bvc -53.b		; 50 CB
	tsb $A222.w		; 0C 22 A2
	trb $7BE2.w		; 1C E2 7B
	.db $82, $22, $A0		; 82 22 A0
	phd		; 0B
	cop $97.b		; 02 97
	stx $01.b		; 86 01
	asl $01.b		; 06 01
	adc $B102.w,Y		; 79 02 B1
	inc $C53F.w,X		; FE 3F C5
	inc $57.b,X		; F6 57
	sta [$FB.b]		; 87 FB
	cop $3C.b		; 02 3C
.INDEX 16
	rep #$96		; C2 96
	nop		; EA
	inc $76FC.w,X		; FE FC 76
	cpx $01FD.w		; EC FD 01
	dec $55.b		; C6 55
	lda $0807.w,X		; BD 07 08
	inc $09E0.w		; EE E0 09
.ACCU 8
	sep #$E0		; E2 E0
	ora $F8FF.w		; 0D FF F8
	ora $0AA030.l		; 0F 30 A0 0A
	sbc $1F07FD.l,X		; FF FD 07 1F
	ora $E3.b		; 05 E3
	eor ($FD.b,X)		; 41 FD
	lda ($06.b),Y		; B1 06
	asl $07FA.w,X		; 1E FA 07
	ora $0F.b,S		; 03 0F
	plx		; FA
	.db $82, $FE, $0F		; 82 FE 0F
	lda ($E0.b,X)		; A1 E0
	sbc $07010F.l,X		; FF 0F 01 07
	plb		; AB
	cop $95.b		; 02 95
	ora $E4.b,S		; 03 E4
	sbc $F8A8.w,X		; FD A8 F8
	phd		; 0B
	pea $FCF0.w		; F4 F0 FC
	asl $0B1E.w		; 0E 1E 0B
	cmp ($B1.b)		; D2 B1
	and $3F0F7F.l,X		; 3F 7F 0F 3F
	eor $7E1AD2.l,X		; 5F D2 1A 7E
	and $FC7CFF.l		; 2F FF 7C FC
	phx		; DA
	sed		; F8
	ora #$F6.b		; 09 F6
	jsr ($A7A4.w,X)		; FC A4 A7
	cmp $0BF0.w,Y		; D9 F0 0B
	asl $98.b		; 06 98
	inc A		; 1A
	adc $D3.b		; 65 D3
	tsb $132C.w		; 0C 2C 13
	jmp $FF85FC.l		; 5C FC 85 FF
	lda ($1F.b),Y		; B1 1F
	lsr $D3.b,X		; 56 D3
	inc $0073.w,X		; FE 73 00
	inc $E1.b		; E6 E1
	cpy $37C3.w		; CC C3 37
	brk $3F.b		; 00 3F
	tax		; AA
	lda ($80.b,X)		; A1 80
	lsr $C1.b		; 46 C1
	jmp.w [$30C3]		; DC C3 30
	inc $E2BE.w		; EE BE E2
	rts		; 60

	cmp ($C3.b)		; D2 C3
	sbc $8BDC40.l,X		; FF 40 DC 8B
	dey		; 88
	cpx #$031C.w		; E0 1C 03
	ldy #$2380.w		; A0 80 23
	jsr $818E.w		; 20 8E 81
	and $47.b,X		; 35 47
	tax		; AA
	cop $DB.b		; 02 DB
	brk $77.b		; 00 77
	cpx #$DFE2.w		; E0 E2 DF
	cpy #$1EFD.w		; C0 FD 1E
	tsb $91.b		; 04 91
	sed		; F8
	tsb $F8FF.w		; 0C FF F8
	trb $0B.b		; 14 0B
	brk $69.b		; 00 69
	.db $82, $12, $F1		; 82 12 F1
	plx		; FA
	bne -11.b		; D0 F5
	inc $E0.b,X		; F6 E0
	phx		; DA
	inc $0DF8.w,X		; FE F8 0D
	bcc -112.b		; 90 90
	lda ($BA.b)		; B2 BA
	tax		; AA
	dex		; CA
	bra -128.b		; 80 80
	sbc [$7F.b],Y		; F7 7F
	jsr $0920.w		; 20 20 09
	ora #$F0.b		; 09 F0
	sed		; F8
	ora $25C8C8.l		; 0F C8 C8 25
	and $88.b		; 25 88
	dey		; 88
	tsb $04.b		; 04 04
	jsr $7800.w		; 20 00 78
	and [$FC.b]		; 27 FC
	and #$29.b		; 29 29
	bra   0.b		; 80 00
	beq  -2.b		; F0 FE
	brk $20.b		; 00 20
	beq -11.b		; F0 F5
	ldx #$ECFF.w		; A2 FF EC
	sta $F8.b		; 85 F8
	ora $0BF8F0.l		; 0F F0 F8 0B
	asl $06.b		; 06 06
	cop $4C.b		; 02 4C
	bcc  10.b		; 90 0A
	beq  14.b		; F0 0E
	plb		; AB
	jmp $CFF1.w		; 4C F1 CF
	sed		; F8
	ora $D4D4.w		; 0D D4 D4
	jsr ($5050.w,X)		; FC 50 50
	lda $A5B1.w		; AD B1 A5
	sbc #$0A.b		; E9 0A
	brk $A4.b		; 00 A4
	lda ($F0.b)		; B2 F0
	sed		; F8
	ora $F000.w		; 0D 00 F0
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora $07010A.l		; 0F 0A 01 07
	brk $05.b		; 00 05
	tsb $02.b		; 04 02
	cop $0D.b		; 02 0D
	ora $0003.w		; 0D 03 00
	sbc $06FF21.l,X		; FF 21 FF 06
	ora ($0F.b,X)		; 01 0F
	ora $030707.l		; 0F 07 07 03
	ora [$01.b]		; 07 01
	sbc ($0D.b,S),Y		; F3 0D
	cpy $FF.b		; C4 FF
	sed		; F8
	ora ($F2.b,X)		; 01 F2
	inx		; E8
	iny		; C8
	rti		; 40

	bra  98.b		; 80 62
	.db $82, $C4, $40		; 82 C4 40
	sbc $7028FF.l,X		; FF FF 28 70
	cpx #$DE40.w		; E0 40 DE
	asl $C0A2.w,X		; 1E A2 C0
	beq  -8.b		; F0 F8
	sbc ($F2.b)		; F2 F2
	sbc ($E3.b,X)		; E1 E3
	inc $F6.b,X		; F6 F6
	adc $FCFC14.l,X		; 7F 14 FC FC
	beq -16.b		; F0 F0
	cpx #$FFFE.w		; E0 FE FF
	sbc $FDFFCB.l,X		; FF CB FF FD
	lsr $BC80.w,X		; 5E 80 BC
	cop $01.b		; 02 01
	ora $F00B.w		; 0D 0B F0
	sed		; F8
	ora #$BC.b		; 09 BC
	ldx $DFFD.w,Y		; BE FD DF
	ora [$0F.b]		; 07 0F
	pea $0AFC.w		; F4 FC 0A
	ora $9FAF.w,Y		; 19 AF 9F
	lda ($7C.b,S),Y		; B3 7C
	stp		; DB
	sbc $5E.b,S		; E3 5E
	sta $FCF0.w,X		; 9D F0 FC
	cmp $FF.b,S		; C3 FF
	ora [$1F.b]		; 07 1F
	adc $FCFFC5.l,X		; 7F C5 FF FC
	sbc $58FFE3.l,X		; FF E3 FF 58
	and ($05.b,S),Y		; 33 05
	and ($FF.b),Y		; 31 FF
	sbc ($2D.b,X)		; E1 2D
	inc A		; 1A
	ora ($09.b)		; 12 09
	asl A		; 0A
	asl $15.b		; 06 15
	ora [$09.b],Y		; 17 09
	ora #$76.b		; 09 76
	tsb $437F.w		; 0C 7F 43
	sei		; 78
	asl $073F.w		; 0E 3F 07
	inc $851F.w,X		; FE 1F 85
	brk $17.b		; 00 17
	asl $0F.b		; 06 0F
	sed		; F8
	sbc $7F9EBD.l,X		; FF BD 9E 7F
	ora $77C3.w,X		; 1D C3 77
	bvs -92.b		; 70 A4
	cmp $E9.b,S		; C3 E9
	bvs  46.b		; 70 2E
	ora $FD2387.l,X		; 1F 87 23 FD
	sta $F7.b,S		; 83 F7
	beq -54.b		; F0 CA
	and $C48FFF.l,X		; 3F FF 8F C4
	eor ($1E.b,X)		; 41 1E
	sbc $800FBC.l,X		; FF BC 0F 80
	phk		; 4B
	cmp [$FE.b]		; C7 FE
	ora #$B6.b		; 09 B6
	and $C7C1.w,Y		; 39 C1 C7
	brk $1E.b		; 00 1E
	adc [$1F.b]		; 67 1F
	stz $00F0.w		; 9C F0 00
	eor [$DE.b]		; 47 DE
	sbc $F8FF65.l,X		; FF 65 FF F8
	ldy #$7F82.w		; A0 82 7F
	beq -12.b		; F0 F4
	cpy $800E.w		; CC 0E 80
	cpx #$0CC8.w		; E0 C8 0C
	brk $80.b		; 00 80
	mvp $FC,$F8		; 44 F8 FC
	sbc $FEF0E6.l,X		; FF E6 F0 FE
	brk $E0.b		; 00 E0
	ora ($31.b,X)		; 01 31
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	sbc $13FECC.l,X		; FF CC FE 13
	phy		; 5A
	eor $1E0EC0.l		; 4F C0 0E 1E
	rol $067F.w,X		; 3E 7F 06
	asl $D0F0.w,X		; 1E F0 D0
	lda $9B.b,S		; A3 9B
	ldy $1F01.w,X		; BC 01 1F
	brk $7F.b		; 00 7F
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $18D0FD.l,X		; FF FD D0 18
	sei		; 78
	brk $2E.b		; 00 2E
	sep #$4B		; E2 4B
	adc #$F0.b		; 69 F0
	inc $F8E0.w,X		; FE E0 F8
	jsr ($1CFC.w,X)		; FC FC 1C
	sbc $86FEFF.l,X		; FF FF FE 86
	sbc $82E1D9.l		; EF D9 E1 82
	cop $0C.b		; 02 0C
	tsb $90.b		; 04 90
	rts		; 60

	bvc -112.b		; 50 90
	php		; 08
	php		; 08
	jsr $0FC3.w		; 20 C3 0F
	plp		; 28
	rti		; 40

	bcc -108.b		; 90 94
	cpx $E6.b		; E4 E6
	clc		; 18
	trb $F8F8.w		; 1C F8 F8
	ora $80A130.l		; 0F 30 A1 80
	dey		; 88
	bpl  56.b		; 10 38
	plx		; FA
	stz $3010.w		; 9C 10 30
	jsr ($D203.w,X)		; FC 03 D2
	sec		; 38
	bvs   4.b		; 70 04
	brk $44.b		; 00 44
	cpx #$1014.w		; E0 14 10
	cmp $FF0C.w,X		; DD 0C FF
	beq   0.b		; F0 00
	bmi -42.b		; 30 D6
	tsb $1C7C.w		; 0C 7C 1C
	trb $EC0C.w		; 1C 0C EC
	bit $FF87.w		; 2C 87 FF
	bit $3C1C.w,X		; 3C 1C 3C
	adc ($7C.b,X)		; 61 7C
	sbc $DE7FBF.l,X		; FF BF 7F DE
	cpx #$78B4.w		; E0 B4 78
	jmp ($7D10.w,X)		; 7C 10 7D
	sta $68.b,S		; 83 68
	asl $FF20.w		; 0E 20 FF
	sed		; F8
	ora $7F8F.w		; 0D 8F 7F
	sbc $F8FE.w,Y		; F9 FE F8
	sta $060724.l,X		; 9F 24 07 06
	rol $0F.b,X		; 36 0F
	xce		; FB
	jsr ($8272.w,X)		; FC 72 82
	.db $62, $7E, $20		; 62 7E 20
	sbc $F99CEC.l,X		; FF EC 9C F9
	cpx $FC.b		; E4 FC
	inc $FF81.w,X		; FE 81 FF
	bit $FF.b,X		; 34 FF
	brk $27.b		; 00 27
	pla		; 68
	pha		; 48
	rts		; 60

	cpx $7A.b		; E4 7A
	cmp ($28.b,S),Y		; D3 28
	pla		; 68
	txs		; 9A
	sbc $11A8FF.l,X		; FF FF A8 11
	ora ($18.b),Y		; 11 18
	and $387830.l,X		; 3F 30 78 38
	jsr ($FF3C.w,X)		; FC 3C FF
	bpl 120.b		; 10 78
	ora ($01.b,X)		; 01 01
	ora ($FF.b),Y		; 11 FF
	sbc $312019.l,X		; FF 19 20 31
	ply		; 7A
	sbc $1713.w,Y		; F9 13 17
	ora $0C.b		; 05 0C
	and ($39.b,S),Y		; 33 39
	dec $42CB.w		; CE CB 42
	.db $42, $DE		; 42 DE
	sbc $3F1E3E.l,X		; FF 3E 1E 3F
	brk $07.b		; 00 07
	sbc $031F0F.l,X		; FF 0F 1F 03
	ora $CFF19E.l		; 0F 9E F1 CF
	sta ($C3.b,X)		; 81 C3
	sbc ($FE.b,X)		; E1 FE
	lsr $BC.b		; 46 BC
	asl $06.b		; 06 06
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	brk $F1.b		; 00 F1
	phd		; 0B
	sed		; F8
	phd		; 0B
	and [$FD.b]		; 27 FD
	sbc #$09.b		; E9 09
	brk $F2.b		; 00 F2
	sbc $0F0703.l		; EF 03 07 0F
	plx		; FA
	sed		; F8
	ora [$BC.b]		; 07 BC
	cpx $7870.w		; EC 70 78
	dey		; 88
	ldy #$E820.w		; A0 20 E8
	iny		; C8
	eor #$80.b		; 49 80
	and $C0FC1E.l,X		; 3F 1E FC C0
	rti		; 40

	inc $F0FE.w,X		; FE FE F0
	sed		; F8
	cpy #$C200.w		; C0 00 C2
	and #$FC.b		; 29 FC
	xce		; FB
	jsr ($FF80.w,X)		; FC 80 FF
	sbc $1307C0.l,X		; FF C0 07 13
	dec A		; 3A
	ora [$0E.b],Y		; 17 0E
	and [$4F.b]		; 27 4F
	rol $3B.b		; 26 3B
	ror $36.b,X		; 76 36
	adc ($2F.b,S),Y		; 73 2F
	adc $7021.w		; 6D 21 70
	clc		; 18
	stz $A2.b		; 64 A2
	ora $FE1F3F.l		; 0F 3F 1F FE
	adc $FFFF0F.l,X		; 7F 0F FF FF
	inc $7F13.w,X		; FE 13 7F
	tas		; 1B
	adc $5130BC.l,X		; 7F BC 30 51
	rts		; 60

	stz $2ED8.w,X		; 9E D8 2E
	inc $8B.b,X		; F6 8B
	inx		; E8
	sbc $78D4FF.l,X		; FF FF D4 78
	adc #$B9.b		; 69 B9
	cpx $CFF4.w		; EC F4 CF
	sbc $27FF9F.l,X		; FF 9F FF 27
	sbc $17FF09.l,X		; FF 09 FF 17
	sbc $87941F.l,X		; FF 1F 94 87
	sbc $FBFFC6.l,X		; FF C6 FF FB
	sbc $ECD486.l,X		; FF 86 D4 EC
	dex		; CA
	inx		; E8
	ora #$FD.b		; 09 FD
	sbc $FFF0F9.l,X		; FF F9 F0 FF
	sbc $8CB30F.l		; EF 0F B3 8C
	trb $33.b		; 14 33
	eor $4C.b		; 45 4C
	bcs -128.b		; B0 80
	pld		; 2B
	and [$EF.b]		; 27 EF
	ora ($06.b,X)		; 01 06
	ora $1010.w		; 0D 10 10
	beq  10.b		; F0 0A
	sbc ($3F.b)		; F2 3F
	sta $CF.b,S		; 83 CF
	plx		; FA
	brk $FE.b		; 00 FE
	txs		; 9A
	sec		; 38
	sta ($3D.b)		; 92 3D
	ora ($DF.b,X)		; 01 DF
	asl $606E.w,X		; 1E 6E 60
	sbc ($1F.b,X)		; E1 1F
	inc $07.b,X		; F6 07
	eor $E0EE.w,Y		; 59 EE E0
	ror $07.b,X		; 76 07
	cld		; D8
	trb $FFFE.w		; 1C FE FF
	cpx #$2AE3.w		; E0 E3 2A
	stz $FFF8.w,X		; 9E F8 FF
	bra  -8.b		; 80 F8
	ora $F0E0FA.l,X		; 1F FA E0 F0
	brk $FC.b		; 00 FC
	eor $07E6.w,Y		; 59 E6 07
	rts		; 60

	bvs -87.b		; 70 A9
	eor $88.b,S		; 43 88
	ldx $40.b,Y		; B6 40
	rts		; 60

	plx		; FA
	and ($F6.b,S),Y		; 33 F6
	cpx #$8069.w		; E0 69 80
	cpx $F0.b		; E4 F0
	beq -128.b		; F0 80
	cpx #$5CFA.w		; E0 FA 5C
	ora ($FE.b,X)		; 01 FE
	jsr $FA27.w		; 20 27 FA
	jmp ($9090.w,X)		; 7C 90 90
	rol $26.b		; 26 26
	phd		; 0B
	ora $D7BF.w,Y		; 19 BF D7
	dec $CF.b,X		; D6 CF
	tda		; 7B
	jsr ($3F18.w,X)		; FC 18 3F
	asl $02.b		; 06 02
	sbc #$61.b		; E9 61
	sbc ($19.b),Y		; F1 19
	jmp ($B8E9.w,X)		; 7C E9 B8
	nop		; EA
	sbc $2425FF.l,X		; FF FF 25 24
	lda ($90.b),Y		; B1 90
	sta $A4.b		; 85 A4
	tad		; 5B
	and #$AE.b		; 29 AE
	eor $C4.b,S		; 43 C4
	stx $A0.b		; 86 A0
	bmi  64.b		; 30 40
	rti		; 40

	lda $E7C3FF.l,X		; BF FF C3 E7
	adc $F3.b,S		; 63 F3
	adc ($F7.b,S),Y		; 73 F7
	inc $44.b,X		; F6 44
	sbc #$F8.b		; E9 F8
	inc $F0C0.w,X		; FE C0 F0
	bra -64.b		; 80 C0
	bra  15.b		; 80 0F
	cmp $20.b,S		; C3 20
	ora ($01.b,X)		; 01 01
	phd		; 0B
	php		; 08
	phd		; 0B
	ora [$02.b]		; 07 02
	sbc $C352.w,X		; FD 52 C3
	and ($4C.b,X)		; 21 4C
	asl $901E.w,X		; 1E 1E 90
	bra -127.b		; 80 81
	ora [$5F.b]		; 07 5F
	and $657FC2.l,X		; 3F C2 7F 65
	cpy #$007F.w		; C0 7F 00
	asl $142C.w,X		; 1E 2C 14
	bvc  32.b		; 50 20
	pla		; 68
	iny		; C8
	php		; 08
	ora ($D9.b,X)		; 01 D9
	ldy #$8080.w		; A0 80 80
	sbc $8A7C3E.l,X		; FF 3E 7C 8A
	sei		; 78
	jmp ($F8F8.w,X)		; 7C F8 F8
	beq  -2.b		; F0 FE
	beq -32.b		; F0 E0
	cpx #$C0C0.w		; E0 C0 C0
	cmp $E9F487.l,X		; DF 87 F4 E9
	brk $27.b		; 00 27
	ora [$10.b]		; 07 10
	bvs -23.b		; 70 E9
	dec $0B3F.w,X		; DE 3F 0B
	tsb $AE.b		; 04 AE
	ora [$E1.b]		; 07 E1
	cmp $CCF1.w		; CD F1 CC
	tsb $FF62.w		; 0C 62 FF
	sed		; F8
	ora #$34.b		; 09 34
	sbc ($FF.b,S),Y		; F3 FF
	sbc $C3CC7F.l,X		; FF 7F CC C3
	dec $E83C.w,X		; DE 3C E8
	beq -127.b		; F0 81
	ora ($F6.b,X)		; 01 F6
	asl $BC.b		; 06 BC
	bit $E2E2.w,X		; 3C E2 E2
	sta ($21.b,X)		; 81 21
	sta $EB24FF.l		; 8F FF 24 EB
	inc $F9F8.w,X		; FE F8 F9
	.db $82, $FC, $04		; 82 FC 04
	inc $C6.b		; E6 C6
	sbc [$69.b]		; E7 69
	eor $58805F.l		; 4F 5F 80 58
	rti		; 40

	and $090A20.l		; 2F 20 0A 09
	clv		; B8
	sbc ($76.b)		; F2 76
	jsr ($4001.w,X)		; FC 01 40
	bmi 127.b		; 30 7F
	txa		; 8A
	sta [$7E.b]		; 87 7E
	clv		; B8
	sbc ($FC.b,S),Y		; F3 FC
	bvs -16.b		; 70 F0
	sty $3E80.w		; 8C 80 3E
	ora ($C7.b,X)		; 01 C7
	sbc $71FF.w		; ED FF 71
	asl $7D78.w		; 0E 78 7D
	adc $C44405.l		; 6F 05 44 C4
	sta $88.b,S		; 83 88
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	jsr ($1F00.w,X)		; FC 00 1F
	sta $C7.b,S		; 83 C7
	sed		; F8
	sta [$F2.b]		; 87 F2
	sbc $C1.b		; E5 C1
	mvn $2C,$88		; 54 88 2C
	pea $C4F0.w		; F4 F0 C4
	adc ($1F.b,S),Y		; 73 1F
	jsr $0838.w		; 20 38 08
	cmp $2C18.w,Y		; D9 18 2C
	and $8C.b,S		; 23 8C
	ldx #$FB.b		; A2 FB
	php		; 08
	sbc [$24.b],Y		; F7 24
	jsl $E75AE1.l		; 22 E1 5A E7
	sbc $E3C0DF.l,X		; FF DF C0 E3
	bne  16.b		; D0 10
	sbc $84B4FD.l,X		; FF FD B4 84
	lsr A		; 4A
	eor ($AA.b)		; 52 AA
	sta ($B4.b)		; 92 B4
	stz $D8.b,X		; 74 D8
	inx		; E8
	tsb $EB.b		; 04 EB
	beq 120.b		; F0 78
	jsr ($013C.w,X)		; FC 3C 01
	plx		; FA
	ror $7A7C.w,X		; 7E 7C 7A
	phx		; DA
	sed		; F8
	cpy #$D8.b		; C0 D8
	and $8B084B.l,X		; 3F 4B 08 8B
	ora $450BC3.l		; 0F C3 0B 45
	tsb $38.b		; 04 38
	brk $86.b		; 00 86
	ora ($11.b)		; 12 11
	clv		; B8
	adc $C3.b,S		; 63 C3
	eor ($67.b),Y		; 51 67
	cmp [$CF.b]		; C7 CF
	inc $E7E3.w,X		; FE E3 E7
	adc $E9583C.l,X		; 7F 3C 58 E9
	php		; 08
	sbc $C06F39.l,X		; FF 39 6F C0
	eor $85.b		; 45 85
	cpx $C4.b		; E4 C4
	cmp $B90C.w		; CD 0C B9
	sbc $C338FF.l,X		; FF FF 38 C3
	.db $82, $85, $C4		; 82 85 C4
	and $B2.b		; 25 B2
	cpx #$E8.b		; E0 E8
	beq -11.b		; F0 F5
	sbc ($E5.b,X)		; E1 E5
	sbc ($ED.b,X)		; E1 ED
	cmp ($43.b,X)		; C1 43
	sbc $F1F9.w,X		; FD F9 F1
	sbc ($D8.b,S),Y		; F3 D8
	cmp $FCD880.l		; CF 80 D8 FC
	bra -40.b		; 80 D8
	eor $CF.b,S		; 43 CF
	and $FFFF7E.l,X		; 3F 7E FF FF
	and [$FA.b],Y		; 37 FA
	jsr ($E090.w,X)		; FC 90 E0
	sty $00.b		; 84 00
	rol A		; 2A
	ora ($95.b)		; 12 95
	stz $DC.b		; 64 DC
	txy		; 9B
	stx $ED.b		; 86 ED
	inc $FFF4.w,X		; FE F4 FF
	ldx #$FD.b		; A2 FD
	.db $62, $E1, $E7		; 62 E1 E7
	sbc $D0D0B0.l,X		; FF B0 D0 D0
	bvc -48.b		; 50 D0
	cpy #$50.b		; C0 50
	brk $7F.b		; 00 7F
	sec		; 38
	rti		; 40

	jsr $50B0.w		; 20 B0 50
	rts		; 60

	ldy #$E0.b		; A0 E0
	rts		; 60

	ldx $F0A0.w		; AE A0 F0
	bpl -36.b		; 10 DC
	cpx #$ED.b		; E0 ED
	bvc 112.b		; 50 70
	bvs   0.b		; 70 00
	sbc ($E0.b,X)		; E1 E0
	rol A		; 2A
	cpy #$D8.b		; C0 D8
	and $FF0F8D.l,X		; 3F 8D 0F FF
	phb		; 8B
	cpy $85.b		; C4 85
	and $1C.b,S		; 23 1C
	wai		; CB
	ora $04.b		; 05 04
	and [$23.b]		; 27 23
	inc A		; 1A
	ora ($05.b),Y		; 11 05
	eor [$FF.b],Y		; 57 FF
	ora $47.b,S		; 03 47
	cmp $F20263.l		; CF 63 02 F2
	tsb $F1.b		; 04 F1
	inc $0FEA.w,X		; FE EA 0F
	ora $3665EB.l		; 0F EB 65 36
	inc A		; 1A
	ora $75E5BE.l,X		; 1F BE E5 75
	dey		; 88
	iny		; C8
	tya		; 98
	brk $BC.b		; 00 BC
	bit $30.b,X		; 34 30
	sed		; F8
	brk $9E.b		; 00 9E
	cmp [$43.b]		; C7 43
	asl A		; 0A
	cmp $FDF8.w,Y		; D9 F8 FD
	inc $60.b,X		; F6 60
	sbc ($FA.b)		; F2 FA
	cpy $FCFB.w		; CC FB FC
	and $7D.b,X		; 35 7D
	bra -40.b		; 80 D8
	jsr ($D880.w,X)		; FC 80 D8
	.db $42, $80		; 42 80
	iny		; C8
	and $A02810.l,X		; 3F 10 28 A0
	ply		; 7A
.ACCU 16
	rep #$28		; C2 28
	pla		; 68
	inx		; E8
	sbc $901978.l,X		; FF 78 19 90
	cmp #$3838.w		; C9 38 38
	bmi 112.b		; 30 70
	sei		; 78
	sed		; F8
	bit $10FE.w,X		; 3C FE 10
	sed		; F8
	sta [$78.b]		; 87 78
	trb $0019.w		; 1C 19 00
	and ($0A.b),Y		; 31 0A
	ora $C74B.w,Y		; 19 4B C7
	sbc [$FF.b],Y		; F7 FF
	sbc #$7163.w		; E9 63 71
	stx $C38B.w		; 8E 8B C3
	eor [$DC.b]		; 47 DC
	trb $80BF.w		; 1C BF 80
	rol A		; 2A
	ora $03.b,S		; 03 03
	lda $77076F.l,X		; BF 6F 07 77
	eor [$CF.b]		; 47 CF
	bra -57.b		; 80 C7
	sbc $B4.b,S		; E3 B4
	sbc ($E4.b),Y		; F1 E4
	cpy #$55.b		; C0 55
	bit #$D980.w		; 89 80 D9
	cmp ($9F.b,X)		; C1 9F
	ldy $DA80.w		; AC 80 DA
	cmp ($1E.b)		; D2 1E
	ror $61.b		; 66 61
	ldx #$80.b		; A2 80
	cmp $80F9.w,Y		; D9 F9 80
	phx		; DA
	brk $FF.b		; 00 FF
	ldx $F2.b,Y		; B6 F2
	asl $D05A.w,X		; 1E 5A D0
	clc		; 18
	bcs -124.b		; B0 84
	jmp $1FAC46.l		; 5C 46 AC 1F
	sbc $76A496.l,X		; FF 96 A4 76
	cli		; 58
	cpx $F000.w		; EC 00 F0
	cpx #$F8.b		; E0 F8
	sei		; 78
	jsr ($7E38.w,X)		; FC 38 7E
	ora [$FE.b],Y		; 17 FE
	sei		; 78
	inc $FEF8.w,X		; FE F8 FE
	cpy #$E2.b		; C0 E2
	dey		; 88
	cop $02.b		; 02 02
	tsb $05.b		; 04 05
	asl $14.b,X		; 16 14
	cmp $2421FF.l,X		; DF FF 21 24
	eor ($42.b)		; 52 42
	eor $3D49.w,Y		; 59 49 3D
	sbc ($01.b)		; F2 01
	ora $02.b,S		; 03 02
	ora [$03.b]		; 07 03
	ora [$13.b],Y		; 17 13
	and [$FF.b],Y		; 37 FF
	ora $307331.l		; 0F 31 73 30
	adc $4F53.w,Y		; 79 53 4F
	inc A		; 1A
	ora $475B.w,Y		; 19 5B 47
	phd		; 0B
	clc		; 18
	stx $7F.b		; 86 7F
	cpy $FF.b		; C4 FF
	ora ($CF.b,X)		; 01 CF
	and $3F0F72.l,X		; 3F 72 0F 3F
	adc $FDFC7E.l,X		; 7F 7E FC FD
	sbc $208701.l,X		; FF 01 87 20
	jsr ($9E6D.w,X)		; FC 6D 9E
	pea $0AF8.w		; F4 F8 0A
	sbc ($9C.b),Y		; F1 9C
	ror $B9.b		; 66 B9
	adc $F0E9.w,X		; 7D E9 F0
	cmp [$05.b],Y		; D7 05
	lda $C2.b,X		; B5 C2
	cmp ($0C.b)		; D2 0C
	sty $D0.b		; 84 D0
	ora #$FCFF.w		; 09 FF FC
	cpx #$A0.b		; E0 A0
	stp		; DB
	sbc ($8D.b),Y		; F1 8D
	rep #$8B		; C2 8B
	xce		; FB
	sbc $3020.w,Y		; F9 20 30
	rti		; 40

	iny		; C8
	sbc ($FE.b),Y		; F1 FE
	lda ($F2.b,X)		; A1 F2
	beq  -3.b		; F0 FD
	cpy #$F0.b		; C0 F0
	tay		; A8
	dey		; 88
	bit $64.b		; 24 64
	asl $07B2.w		; 0E B2 07
	adc $EED0F9.l,X		; 7F F9 D0 EE
	bvs  -8.b		; 70 F8
	clc		; 18
	jmp ($1F00.w,X)		; 7C 00 1F
	brk $F0.b		; 00 F0
	sbc $D000D9.l,X		; FF D9 00 D0
	cmp ($FB.b,X)		; C1 FB
	cpx #$82.b		; E0 82
	nop		; EA
	sbc $F00BF8.l		; EF F8 0B F0
	brk $FE.b		; 00 FE
	sbc $FC.b,X		; F5 FC
	cld		; D8
	tya		; 98
	ldy $FFFF.w		; AC FF FF
	stz $5B70.w,X		; 9E 70 5B
	pha		; 48
	jmp $2C2C.w		; 4C 2C 2C
	asl $17.b,X		; 16 17
	phd		; 0B
	phd		; 0B
	ora [$07.b]		; 07 07
	rts		; 60

	sed		; F8
	rts		; 60

	sbc $20FE4B.l,X		; FF 4B FE 20
	tda		; 7B
	bmi 124.b		; 30 7C
	bpl  60.b		; 10 3C
	php		; 08
	ora $B80F04.l,X		; 1F 04 0F B8
	jsr ($7AFF.w,X)		; FC FF 7A
	sta ($20.b,S),Y		; 93 20
	bpl  16.b		; 10 10
	tsb $E0C0.w		; 0C C0 E0
	brk $08.b		; 00 08
	cpy #$FD.b		; C0 FD
	ora [$D1.b],Y		; 17 D1
	brk $1C.b		; 00 1C
	brk $84.b		; 00 84
	sbc $0486F0.l,X		; FF F0 86 04
	trb $19.b		; 14 19
	ora #$5070.w		; 09 70 50
	cop $33.b		; 02 33
	ora $3101FE.l,X		; 1F FE 01 31
	adc ($51.b,X)		; 61 51
	bmi  81.b		; 30 51
	dec $1C08.w		; CE 08 1C
	bmi  57.b		; 30 39
	and ($71.b,X)		; 21 71
	sta $7361FF.l		; 8F FF 61 73
	adc $73.b,S		; 63 73
	and $FE.b,S		; 23 FE
	and [$7F.b]		; 27 7F
	stz $7CFF.w,X		; 9E FF 7C
	inc $E9.b		; E6 E9
	sbc $CACD0B.l,X		; FF 0B CD CA
	dec $AEAA.w		; CE AA AE
	ldx #$AE.b		; A2 AE
	lda ($B7.b)		; B2 B7
	ora $DA067F.l,X		; 1F 7F 06 DA
	cmp [$ED.b]		; C7 ED
	jsl $DCFEFC.l		; 22 FC FE DC
	inc $FFCC.w,X		; FE CC FF
	bra -56.b		; 80 C8
	and $CB8068.l,X		; 3F 68 80 CB
	ora ($6B.b)		; 12 6B
	sbc [$11.b],Y		; F7 11
	cop $06.b		; 02 06
	bmi  -4.b		; 30 FC
	bra -52.b		; 80 CC
	ora $4CF7EE.l		; 0F EE F7 4C
	cpy #$80.b		; C0 80
	cpy $0C73.w		; CC 73 0C
	sta $1F03EC.l,X		; 9F EC 03 1F
	bit #$2488.w		; 89 88 24
	sta $C0.b,S		; 83 C0
	bra -50.b		; 80 CE
	eor [$BA.b]		; 47 BA
	sbc ($67.b,X)		; E1 67
	beq  -1.b		; F0 FF
	ora $FCFA9A.l,X		; 1F 9A FA FC
	stx $E6.b,Y		; 96 E6
	trb $AA18.w		; 1C 18 AA
	sta ($97.b)		; 92 97
	stz $AF.b		; 64 AF
	rep #$85		; C2 85
	cmp $E4.b,S		; C3 E4
	jsr ($E4A2.w,X)		; FC A2 E4
	jsr ($F87D.w,X)		; FC 7D F8
	sbc #$FFFF.w		; E9 FF FF
	ora $A0D8B0.l,X		; 1F B0 D8 A0
	bmi -112.b		; 30 90
	bcs  32.b		; B0 20
	rti		; 40

	cpy #$A0.b		; C0 A0
	bcs  80.b		; B0 50
	ldy #$E0.b		; A0 E0
	inc $F917.w,X		; FE 17 F9
	cpx #$F8.b		; E0 F8
	cpy #$F0.b		; C0 F0
	brk $B0.b		; 00 B0
	bmi 112.b		; 30 70
	bvs -16.b		; 70 F0
	bra -38.b		; 80 DA
	dec $E0.b,X		; D6 E0
	inc $6028.w		; EE 28 60
	cpy $04D2.w		; CC D2 04
	cmp ($02.b),Y		; D1 02
	xce		; FB
	brk $CA.b		; 00 CA
	trb $FEA5.w		; 1C A5 FE
	jmp ($BC00.w,X)		; 7C 00 BC
	cmp ($F2.b)		; D2 F2
	ora $9A.b,S		; 03 9A
.ACCU 8
	sep #$6D		; E2 6D
	sbc $17.b,S		; E3 17
	ora $1FFF2A.l		; 0F 2A FF 1F
	stz $2F36.w		; 9C 36 2F
	lda $81869F.l		; AF 9F 86 81
	asl $5E1E.w,X		; 1E 1E 5E
	eor ($1F.b,X)		; 41 1F
	sbc $F87D3F.l,X		; FF 3F 7D F8
	adc ($FD.b)		; 72 FD
	sbc #$FF.b		; E9 FF
	ora $F4E18F.l		; 0F 8F E1 F4
	adc $A8F048.l,X		; 7F 48 F0 A8
	bmi  -4.b		; 30 FC
	iny		; C8
	clv		; B8
	adc [$87.b]		; 67 87
	cop $66.b		; 02 66
	sed		; F8
	sec		; 38
	bit $9624.w,X		; 3C 24 96
	brk $C6.b		; 00 C6
	pla		; 68
	cmp #$F8.b		; C9 F8
	jmp $1EFFE2.l		; 5C E2 FF 1E
	inc $7897.w,X		; FE 97 78
	pha		; 48
	cpy $1414.w		; CC 14 14
	bit $3024.w		; 2C 24 30
	tsb $D0.b		; 04 D0
	clc		; 18
	clc		; 18
	sbc #$86.b		; E9 86
	sta $20.b,S		; 83 20
	jsr ($5508.w,X)		; FC 08 55
	bit $FCF8.w,X		; 3C F8 FC
	cmp $FFFE.w,X		; DD FE FF
	rti		; 40

	sbc ($93.b,X)		; E1 93
	nop		; EA
	php		; 08
	ora ($13.b)		; 12 13
	bmi  34.b		; 30 22
	mvp $40,$44		; 44 44 40
	mvp $80,$94		; 44 94 80
	cpy #$90.b		; C0 90
	sbc $90D0E1.l,X		; FF E1 D0 90
	brk $09.b		; 00 09
	brk $13.b		; 00 13
	tsb $36.b		; 04 36
	jsr $FE64.w		; 20 64 FE
	rts		; 60

	pea $0561.w		; F4 61 05
	rts		; 60

	beq  -2.b		; F0 FE
	jsr $D5C0.w		; 20 C0 D5
	cpx $FFFF.w		; EC FF FF
	dex		; CA
	cmp $57.b,X		; D5 57
	sbc $860CF8.l		; EF F8 0C 86
	cld		; D8
	ora #$FF.b		; 09 FF
	sbc $F8F0.w,X		; FD F0 F8
	asl $8080.w		; 0E 80 80
	rts		; 60

	cpx #$E1.b		; E0 E1
	cmp ($C4.b,X)		; C1 C4
	inx		; E8
	phd		; 0B
	plp		; 28
	jsr ($3CBE.w,X)		; FC BE 3C
	cmp ($F8.b),Y		; D1 F8
	asl A		; 0A
	asl $20.b,X		; 16 20
	ora ($11.b),Y		; 11 11
	php		; 08
	clc		; 18
	cmp [$FF.b]		; C7 FF
	tsb $0C.b		; 04 0C
	brk $04.b		; 00 04
	asl A		; 0A
	ora ($31.b,X)		; 01 31
	and ($11.b,S),Y		; 33 11
	and ($08.b),Y		; 31 08
	ora $FD00.w,Y		; 19 00 FD
	sbc $F00018.l,X		; FF 18 00 F0
	sbc $B9AD.w,X		; FD AD B9
	adc [$B5.b]		; 67 B5
	lda ($72.b)		; B2 72
	cpy $A4.b		; C4 A4
	sei		; 78
	pha		; 48
	rol $FF26.w,X		; 3E 26 FF
	sbc $071119.l,X		; FF 19 11 07
	ora $C6.b,S		; 03 C6
	sbc $C1F7C2.l,X		; FF C2 F7 C1
	sbc ($78.b,S),Y		; F3 78
	jsr ($7830.w,X)		; FC 30 78
	clc		; 18
	rol $FFFF.w,X		; 3E FF FF
	asl $041F.w		; 0E 1F 04
	ora [$EC.b]		; 07 EC
	inc $E1.b,X		; F6 E1
	asl $0626.w,X		; 1E 26 06
	cli		; 58
	tya		; 98
	cpx #$A0.b		; E0 A0
	sta ($85.b,X)		; 81 85
	ora [$F8.b]		; 07 F8
	.db $42, $41		; 42 41
	bit $24.b		; 24 24
	asl $F908.w		; 0E 08 F9
	sbc $7FF860.l,X		; FF 60 F8 7F
	tyx		; BB
	rti		; 40

	cpx #$42.b		; E0 42
	cmp [$06.b]		; C7 06
	eor [$02.b]		; 47 02
	rol $48.b		; 26 48
	phx		; DA
	cpx $34.b		; E4 34
	sbc ($10.b),Y		; F1 10
	cpx #$AA.b		; E0 AA
	dec A		; 3A
	ror $E1.b,X		; 76 E1
	adc $F1E2FC.l,X		; 7F FC E2 F1
	tad		; 5B
	dex		; CA
	ror $E1.b,X		; 76 E1
	sta ($E3.b,S),Y		; 93 E3
	sta $F1.b,S		; 83 F1
	asl $06.b		; 06 06
	jsr ($9403.w,X)		; FC 03 94
	phk		; 4B
	php		; 08
	lsr A		; 4A
	eor #$4A.b		; 49 4A
	pha		; 48
	phk		; 4B
	cop $40.b		; 02 40
	cpy $F9.b		; C4 F9
	txa		; 8A
	asl $EE.b		; 06 EE
	eor $C1FE07.l		; 4F 07 FE C1
	cmp ($DF.b,X)		; C1 DF
	sbc $187060.l,X		; FF 60 70 18
	jmp $281606.l		; 5C 06 16 28
	jsr ($20A0.w,X)		; FC A0 20
	brk $C1.b		; 00 C1
	bra -16.b		; 80 F0
	jsr $097C.w		; 20 7C 09
	stx $08.b		; 86 08
	asl $24F0.w,X		; 1E F0 24
	cpy #$E0.b		; C0 E0
	dec $C2.b,X		; D6 C2
	tsb $0C04.w		; 0C 04 0C
	wai		; CB
	beq  34.b		; F0 22
	trb $4EB0.w		; 1C B0 4E
	sbc $FDF094.l,X		; FF 94 F0 FD
	brk $3E.b		; 00 3E
	sbc $8383.w,Y		; F9 83 83
	asl $0E.b		; 06 0E
	clc		; 18
	dec A		; 3A
	rts		; 60

	stx $2F.b		; 86 2F
	pla		; 68
	sta ($FC.b)		; 92 FC
	ora $98.b		; 05 98
	sta $01.b,S		; 83 01
	ora $A23E04.l		; 0F 04 3E A2
	cmp $61FA.w,Y		; D9 FA 61
	beq  23.b		; F0 17
	sbc ($07.b,X)		; E1 07
	tsb $0E.b		; 04 0E
	.db $82, $06, $EC		; 82 06 EC
	rti		; 40

	sta ($F8.b,X)		; 81 F8
	ora $60C0F0.l,X		; 1F F0 C0 60
	jsr $4060.w		; 20 60 40
	bpl   0.b		; 10 00
	asl $8600.w		; 0E 00 86
	brk $87.b		; 00 87
	beq -102.b		; F0 9A
	cpx #$E0.b		; E0 E0
	brk $EE.b		; 00 EE
	ora [$8B.b]		; 07 8B
	bvs   0.b		; 70 00
	clc		; 18
	asl A		; 0A
	cpy $D904.w		; CC 04 D9
	bpl  66.b		; 10 42
	sbc ($11.b,S),Y		; F3 11
	brk $FF.b		; 00 FF
	clc		; 18
	dec $E2FF.w,X		; DE FF E2
	cpy $0F.b		; C4 0F
	inc $C8.b		; E6 C8
	ldx $05BA.w,Y		; BE BA 05
	asl $0C16.w		; 0E 16 0C
	php		; 08
	sta ($20.b),Y		; 91 20
	bra  20.b		; 80 14
	inc $7C86.w,X		; FE 86 7C
	ora $7AC406.l		; 0F 06 C4 7A
	trb $ECEE.w		; 1C EE EC
	asl $23.b		; 06 23
	ldy #$01.b		; A0 01
	bra   3.b		; 80 03
	inc A		; 1A
	inc $08FA.w,X		; FE FA 08
	.db $82, $AE, $E9		; 82 AE E9
	asl $92.b		; 06 92
	bit $CA.b		; 24 CA
	cld		; D8
	tax		; AA
	cpy $9E.b		; C4 9E
	sbc #$40.b		; E9 40
	iny		; C8
	and $ECF51B.l,X		; 3F 1B F5 EC
	xba		; EB
	tay		; A8
	cld		; D8
	ora #$EE.b		; 09 EE
	asl $35.b		; 06 35
	sbc ($83.b)		; F2 83
	stp		; DB
	sty $C9.b		; 84 C9
	lda ($D8.b),Y		; B1 D8
	ora $FCCA.w		; 0D CA FC
	rol $BC.b		; 26 BC
	asl A		; 0A
	bcs -63.b		; B0 C1
	stx $6A.b,Y		; 96 6A
	sbc ($ED.b)		; F2 ED
	tsb $22.b		; 04 22
	beq  -1.b		; F0 FF
	asl $010F.w		; 0E 0F 01
	cmp $0C0CF1.l,X		; DF F1 0C 0C
	jsr ($C808.w,X)		; FC 08 C8
	jsr $8720.w		; 20 20 87
	ora ($39.b,X)		; 01 39
	rts		; 60

	jsr $FEA0.w		; 20 A0 FE
	bvs   3.b		; 70 03
	rol $FE.b		; 26 FE
	inc $4A.b,X		; F6 4A
	iny		; C8
	bpl  48.b		; 10 30
	rts		; 60

	bvs -64.b		; 70 C0
	cpx #$D4.b		; E0 D4
	cmp #$F0.b		; C9 F0
	jmp $89C1.w		; 4C C1 89
	dey		; 88
	sta $C68CC7.l		; 8F C7 8C C6
	dec $21.b		; C6 21
	and ($A7.b,S),Y		; 33 A7
	cpx $02.b		; E4 02
	.db $82, $E2, $1F		; 82 E2 1F
	cmp $8C0089.l,X		; DF 89 00 8C
	brk $C6.b		; 00 C6
	brk $F0.b		; 00 F0
	brk $E4.b		; 00 E4
	ora ($83.b,X)		; 01 83
	sta ($DD.b)		; 92 DD
	eor $FE.b,X		; 55 FE
	brk $90.b		; 00 90
	ora ($EB.b)		; 12 EB
	.db $82, $DF, $FA		; 82 DF FA
	sbc ($FF.b)		; F2 FF
	tsb $0F.b		; 04 0F
	asl $25.b		; 06 25
	sbc ($FF.b,X)		; E1 FF
	jsr $8825.w		; 20 25 88
	bvc  82.b		; 50 52
	ora ($09.b,X)		; 01 09
	plp		; 28
	bit $1414.w		; 2C 14 14
	eor $4F.b,S		; 43 4F
	sbc ($F7.b,X)		; E1 F7
	eor $67.b,S		; 43 67
	inc $6361.w,X		; FE 61 63
	and ($73.b,X)		; 21 73
	bmi  57.b		; 30 39
	bit $1CD9.w,X		; 3C D9 1C
	mvp $FF,$87		; 44 87 FF
	sty $49.b		; 84 49
	adc $88B0.w,Y		; 79 B0 88
	sec		; 38
	dec $441F.w,X		; DE 1F 44
	tsb $B3.b		; 04 B3
	sta $2C.b,S		; 83 2C
	sbc $F820AD.l,X		; FF AD 20 F8
	jsr ($FF86.w,X)		; FC 86 FF
	cpy #$F0.b		; C0 F0
	cpy #$F8.b		; C0 F8
	cpx #$9C.b		; E0 9C
	lda #$7C.b		; A9 7C
	sei		; 78
	sbc ($6C.b,X)		; E1 6C
	sty $80.b,X		; 94 80
	sbc ($54.b)		; F2 54
	ror $F3.b,X		; 76 F3
	eor $E5FEF0.l,X		; 5F F0 FE E5
	cpx #$FF.b		; E0 FF
	sbc $227FF6.l		; EF F6 7F 22
	and ($92.b,X)		; 21 92
	stz $040D.w,X		; 9E 0D 04
	ora $1C.b		; 05 1C
	tda		; 7B
	and $22F80C.l,X		; 3F 0C F8 22
	jsr $C1CD.w		; 20 CD C1
	bit $04.b,X		; 34 04
	dec $FF61.w		; CE 61 FF
	cmp [$F8.b]		; C7 F8
	bit $1F03.w,X		; 3C 03 1F
	ora [$C4.b]		; 07 C4
	rol $20BC.w,X		; 3E BC 20
	plp		; 28
	bpl  67.b		; 10 43
	ora $1A0934.l,X		; 1F 34 09 1A
	inc $C804.w		; EE 04 C8
	sbc $10.b		; E5 10
	sec		; 38
	php		; 08
	bit $5EF4.w,X		; 3C F4 5E
	stp		; DB
	rti		; 40

	sbc ($80.b),Y		; F1 80
	cmp $1C20.w,X		; DD 20 1C
	asl $F4.b		; 06 F4
	lda ($40.b,X)		; A1 40
	bra  12.b		; 80 0C
	bvc  -3.b		; 50 FD
	lda $C497.w		; AD 97 C4
	sbc ($FE.b,X)		; E1 FE
	sbc ($C0.b)		; F2 C0
	ldy $E1F6.w,X		; BC F6 E1
	sbc #$0D.b		; E9 0D
	ora $07.b,S		; 03 07
	jmp ($27FC.w,X)		; 7C FC 27
	lda $1E30.w,X		; BD 30 1E
	cop $C4.b		; 02 C4
	beq -72.b		; F0 B8
	ora #$08.b		; 09 08
	pei ($C0.b)		; D4 C0
	sty $78.b		; 84 78
	plx		; FA
	eor #$EF.b		; 49 EF
	sed		; F8
	asl A		; 0A
	jmp ($C0E2.w,X)		; 7C E2 C0
	sbc $3020.w,X		; FD 20 30
	.db $82, $83, $4F		; 82 83 4F
	lsr A		; 4A
	sbc $5000FD.l,X		; FF FD 00 50
	bit $2A.b		; 24 2A
	lsr A		; 4A
	bit $0DE0.w,X		; 3C E0 0D
	adc ($F6.b),Y		; 71 F6
	tay		; A8
	brk $98.b		; 00 98
	rol $EB1C.w		; 2E 1C EB
	sbc $FFFAFD.l		; EF FD FA FF
	sbc $043E98.l,X		; FF 98 3E 04
	rti		; 40

	asl $91.b		; 06 91
	ora [$11.b],Y		; 17 11
	and [$21.b]		; 27 21
	mvp $FE,$41		; 44 41 FE
	sbc ($28.b)		; F2 28
	ldx #$FF.b		; A2 FF
	beq  84.b		; F0 54
	mvp $4E,$0E		; 44 0E 4E
	asl $0E9F.w		; 0E 9F 0E
	ora $7F241E.l,X		; 1F 1E 24 7F
	tsb $0BFE.w		; 0C FE 0B
	dex		; CA
	trb $38BE.w		; 1C BE 38
	dex		; CA
	wai		; CB
	.db $82, $DC, $D8		; 82 DC D8
	asl $F074.w		; 0E 74 F0
	ora #$95.b		; 09 95
	xba		; EB
	sbc $B9F808.l,X		; FF 08 F8 B9
	eor $FFCE.w,X		; 5D CE FF
	sed		; F8
	phx		; DA
.INDEX 16
	rep #$98		; C2 98
	cld		; D8
	ora #$10.b		; 09 10
	ora $28E0B7.l,X		; 1F B7 E0 28
	bmi  20.b		; 30 14
	clc		; 18
	tsb $10FE.w		; 0C FE 10
	clc		; 18
	mvp $38,$F5		; 44 F5 38
	pea $C223.w		; F4 23 C2
	cmp #$FE.b		; C9 FE
	clc		; 18
	tsb $49.b		; 04 49
	adc #$2C.b		; 69 2C
	plp		; 28
	inc $1FC0.w,X		; FE C0 1F
	sbc $58B9.w,X		; FD B9 58
	bpl  32.b		; 10 20
	bvs  48.b		; 70 30
	adc $D210.w,X		; 7D 10 D2
	sbc ($FE.b,X)		; E1 FE
	bit $30FE.w,X		; 3C FE 30
	sec		; 38
	jsr $700C.w		; 20 0C 70
	bra 127.b		; 80 7F
	ora $0870.w,Y		; 19 70 08
	trb $0E14.w		; 1C 14 0E
	ora [$0E.b]		; 07 0E
	asl A		; 0A
	ora $FEA1.w,Y		; 19 A1 FE
	ldy #$C427.w		; A0 27 C4
	dex		; CA
	asl $F1BC.w,X		; 1E BC F1
	ora $FE0702.l		; 0F 02 07 FE
	sbc $E1.b,X		; F5 E1
	bra -96.b		; 80 A0
	asl A		; 0A
	ldy $36F7.w,X		; BC F7 36
	cld		; D8
	phd		; 0B
	phd		; 0B
	asl $06.b		; 06 06
	asl $28C0.w		; 0E C0 28
	trb $3885.w		; 1C 85 38
	php		; 08
	bvs  58.b		; 70 3A
	sbc $0EC6.w,X		; FD C6 0E
	cpy #$003C.w		; C0 3C 00
	clv		; B8
	phy		; 5A
	ldy $3A.b		; A4 3A
	sed		; F8
	asl A		; 0A
	txs		; 9A
	jmp ($9B4E.w,X)		; 7C 4E 9B
	and $FCFFD2.l,X		; 3F D2 FF FC
	inc $F35A.w,X		; FE 5A F3
	sbc ($FF.b,X)		; E1 FF
	bcc -29.b		; 90 E3
	and ($44.b,S),Y		; 33 44
	sec		; 38
	inc A		; 1A
	tsb $8645.w		; 0C 45 86
	lda [$C2.b]		; A7 C2
	eor ($62.b),Y		; 51 62
	cmp $20BF.w,Y		; D9 BF 20
	lda ($22.b)		; B2 22
	trb $C7D2.w		; 1C D2 C7
	brk $E7.b		; 00 E7
	bra -13.b		; 80 F3
	rti		; 40

	sbc ($00.b)		; F2 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cmp $001E00.l		; CF 00 1E 00
	adc $20.b,S		; 63 20
	adc $F741.w,X		; 7D 41 F7
	eor ($E3.b,X)		; 41 E3
	brk $A2.b		; 00 A2
	beq -17.b		; F0 EF
	inc $1CFF.w,X		; FE FF 1C
	jsr $4126.w		; 20 26 41
	adc ($41.b,X)		; 61 41
	eor ($00.b,X)		; 41 00
	inc $FBFC.w,X		; FE FC FB
	sbc $8E0019.l,X		; FF 19 00 8E
	.db $82, $F7, $04		; 82 F7 04
	sbc $00EF04.l,X		; FF 04 EF 00
	xba		; EB
	inc $85FE.w,X		; FE FE 85
	sbc $9A8271.l,X		; FF 71 82 9A
	tsb $86.b		; 04 86
	tsb $45.b		; 04 45
	brk $FE.b		; 00 FE
	jsr ($FFE8.w,X)		; FC E8 FF
	tsb $0838.w		; 0C 38 08
	cmp $10FF10.l,X		; DF 10 FF 10
	ldx $AE00.w,Y		; BE 00 AE
	inc $42FF.w,X		; FE FF 42
	sbc $6908C7.l,X		; FF C7 08 69
	bpl  24.b		; 10 18
	bpl  20.b		; 10 14
	brk $FE.b		; 00 FE
	jsr ($E3E8.w,X)		; FC E8 E3
	trb $A032.w		; 1C 32 A0
	sbc $BAB841.l,X		; FF 41 B8 BA
	inc $F5C5.w,X		; FE C5 F5
	ldy #$A0A6.w		; A0 A6 A0
	eor ($00.b),Y		; 51 00
	inc $A0FC.w,X		; FE FC A0
	sed		; F8
	ora $0F00F8.l,X		; 1F F8 00 0F
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	brk $D6.b		; 00 D6
	brk $EE.b		; 00 EE
	phx		; DA
	inc $FFFD.w,X		; FE FD FF
	cld		; D8
	cmp [$2F.b],Y		; D7 2F
	brk $6C.b		; 00 6C
	brk $04.b		; 00 04
	inc $FFFF.w,X		; FE FF FF
	sbc $030101.l,X		; FF 01 01 03
	cop $06.b		; 02 06
	beq  -8.b		; F0 F8
	asl A		; 0A
	bit $EFFD.w,X		; 3C FD EF
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	sbc [$0F.b],Y		; F7 0F
	ora $EF333B.l		; 0F 3B 33 EF
	and $BFCFFF.l,X		; 3F FF CF BF
	and $A77F47.l,X		; 3F 47 7F A7
	cmp $E6.b,S		; C3 E6
	ora $0F3C03.l		; 0F 03 3C 0F
	sbc [$FF.b],Y		; F7 FF
	sbc $47CF3F.l,X		; FF 3F CF 47
	lda $187F83.l,X		; BF 83 7F 18
	brk $34.b		; 00 34
	brk $7E.b		; 00 7E
	clc		; 18
	plx		; FA
	sec		; 38
	tsx		; BA
	sec		; 38
	sbc $FF.b,S		; E3 FF
	.db $62, $00, $3E		; 62 00 3E
	sbc $18.b		; E5 18
	clc		; 18
	bit $3C.b		; 24 3C
	ply		; 7A
	ror $BA.b		; 66 BA
	dec $C7BA.w		; CE BA C7
	adc $7E42DE.l,X		; 7F DE 42 7E
	rol $38EF.w,X		; 3E EF 38
	brk $58.b		; 00 58
	bpl -72.b		; 10 B8
	bmi  -8.b		; 30 F8
	bvs  32.b		; 70 20
	sed		; F8
	adc $87F4.w,Y		; 79 F4 87
	sec		; 38
	sec		; 38
	cli		; 58
	pla		; 68
	sta $E8B8B0.l		; 8F B0 B8 E8
	sed		; F8
	dey		; 88
	sed		; F8
	sbc $7C44F4.l		; EF F4 44 7C
	pei ($C1.b)		; D4 C1
	bcc  -8.b		; 90 F8
	asl A		; 0A
	cmp $F8F128.l,X		; DF 28 F1 F8
	tsb $2838.w		; 0C 38 28
	inc $FEFF.w		; EE FF FE
	.db $82, $83, $1C		; 82 83 1C
	pea $FCF1.w		; F4 F1 FC
	sbc ($F8.b),Y		; F1 F8
	ora #$141C.w		; 09 1C 14
	sbc $0D10.w,X		; FD 10 0D
	beq  -2.b		; F0 FE
	cli		; 58
	cop $FC.b		; 02 FC
	sbc $2003FF.l,X		; FF FF 03 20
	cpy #$FD37.w		; C0 37 FD
	beq  -2.b		; F0 FE
	and #$82E4.w		; 29 E4 82
	sbc [$F7.b],Y		; F7 F7
	brk $81.b		; 00 81
	brk $80.b		; 00 80
	sbc ($FF.b),Y		; F1 FF
	ora $82.b,S		; 03 82
	sta $81.b,S		; 83 81
	sta ($80.b,X)		; 81 80
	beq  -3.b		; F0 FD
	bvs -24.b		; 70 E8
	clv		; B8
	jsr ($FEE0.w,X)		; FC E0 FE
	bra   8.b		; 80 08
	cld		; D8
	sbc ($FF.b),Y		; F1 FF
	inx		; E8
	tya		; 98
	inx		; E8
	ora [$FB.b]		; 07 FB
	sec		; 38
	inx		; E8
	sei		; 78
	php		; 08
	adc ($F0.b,X)		; 61 F0
	sbc $5E00.w,X		; FD 00 5E
	sed		; F8
	ora #$5070.w		; 09 70 50
	dey		; 88
	tsa		; 3B
	ldy $B438.w,X		; BC 38 B4
	jmp ($FFF0.w,X)		; 7C F0 FF
	bvs 112.b		; 70 70
	tsa		; 3B
	ldy $CC.b,X		; B4 CC
	brk $D3.b		; 00 D3
	sbc $F17CF1.l,X		; FF F1 7C F1
	eor $2900.w,Y		; 59 00 29
	brk $16.b		; 00 16
	brk $09.b		; 00 09
	brk $06.b		; 00 06
	sbc #$0061.w		; E9 61 00
	and $00201C.l		; 2F 1C 20 00
	bmi   0.b		; 30 00
	bpl -14.b		; 10 F2
	sbc $6DFF.w,X		; FD FF 6D
	brk $65.b		; 00 65
	sbc $A6FE18.l,X		; FF 18 FE A6
	brk $DB.b		; 00 DB
	brk $24.b		; 00 24
	brk $18.b		; 00 18
	beq -122.b		; F0 86
	pld		; 2B
	trb $C372.w		; 1C 72 C3
	inx		; E8
	sbc #$FCF2.w		; E9 F2 FC
	sbc $9600B6.l,X		; FF B6 00 96
	adc $34.b,S		; 63 34
	inc $D89A.w,X		; FE 9A D8
	sta ($C4.b)		; 92 C4
	lda $5400F1.l,X		; BF F1 00 54
	brk $74.b		; 00 74
	tsb $F168.w		; 0C 68 F1
	sbc ($FC.b)		; F2 FC
	sbc $1880C8.l,X		; FF C8 80 18
	ldx #$69FE.w		; A2 FE 69
	cld		; D8
	eor #$E355.w		; 49 55 E3
	cpy $A0.b		; C4 A0
	sed		; F8
	ora #$FCF2.w		; 09 F2 FC
	ldy #$21F8.w		; A0 F8 21
	tsb $9CF2.w		; 0C F2 9C
	inc $4768.w,X		; FE 68 47
	ora ($00.b,X)		; 01 00
	bcc   0.b		; 90 00
	rts		; 60

	beq  12.b		; F0 0C
	sbc ($9E.b)		; F2 9E
	jsr ($FEFF.w,X)		; FC FF FE
	sbc ($FC.b)		; F2 FC
	brk $05.b		; 00 05
	ora $0E.b		; 05 0E
	phd		; 0B
	ora #$0C0A.w		; 09 0A 0C
	asl $161C.w		; 0E 1C 16
	ora [$F1.b],Y		; 17 F1
	sbc $FF1F16.l,X		; FF 16 1F FF
	ora ($06.b,X)		; 01 06
	cop $0D.b		; 02 0D
	brk $0F.b		; 00 0F
	tsb $0B.b		; 04 0B
	tsb $1B.b		; 04 1B
	sta [$3F.b]		; 87 3F
	asl $1F.b		; 06 1F
	ora $9DFE17.l		; 0F 17 FE 9D
	cmp $FD3D.w,X		; DD 3D FD
	adc $0FFF7F.l,X		; 7F 7F FF 0F
	sbc $3F3FFF.l,X		; FF FF 3F 3F
	jsr ($E39D.w,X)		; FC 9D E3
	and $7FDB.w,X		; 3D DB 7F
	sta $08FF.w,X		; 9D FF 08
	cmp ($7D.b,X)		; C1 7D
	inc $C7F1.w,X		; FE F1 C7
	beq -39.b		; F0 D9
	nop		; EA
	ora [$F0.b]		; 07 F0
	adc ($00.b,S),Y		; 73 00
	adc ($20.b)		; 72 20
	jsr ($9EF8.w,X)		; FC F8 9E
	inc $72.b,X		; F6 72
	adc ($01.b,S),Y		; 73 01
	tay		; A8
	adc ($53.b)		; 72 53
	jsr ($F2F8.w,X)		; FC F8 F2
	lsr $100F.w,X		; 5E 0F 10
	cpx $E9.b		; E4 E9
	ply		; 7A
	sei		; 78
	plx		; FA
	sed		; F8
	inc $FE69.w,X		; FE 69 FE
	sbc $5AF01F.l,X		; FF 1F F0 5A
	ror $FA.b		; 66 FA
	dec $7A.b,X		; D6 7A
	stx $FA.b,Y		; 96 FA
	ror $1EFA.w,X		; 7E FA 1E
	cop $FE.b		; 02 FE
	pea $FF7D.w		; F4 7D FF
	tsb $FFF3.w		; 0C F3 FF
	sed		; F8
	ora #$4060.w		; 09 60 40
	bcc  56.b		; 90 38
	beq  -8.b		; F0 F8
	asl A		; 0A
	rts		; 60

	rts		; 60

	bcc -16.b		; 90 F0
	lda $F00FFF.l,X		; BF FF 0F F0
	ora #$2C08.w		; 09 08 2C
	clc		; 18
	jmp $F78238.l		; 5C 38 82 F7
	trb $2C1C.w		; 1C 1C 2C
	bit $5C.b,X		; 34 5C
	stz $7C.b,X		; 74 7C
	asl $443D.w,X		; 1E 3D 44
	sbc ($FD.b),Y		; F1 FD
	asl $0A00.w		; 0E 00 0A
	jsr ($FFFF.w,X)		; FC FF FF
	asl $0A0E.w		; 0E 0E 0A
	sed		; F8
	ora [$FD.b]		; 07 FD
	beq  -2.b		; F0 FE
	ora $01.b,S		; 03 01
	ora $03.b		; 05 03
	phd		; 0B
	ora [$0F.b]		; 07 0F
	rol A		; 2A
	sbc $EEE2FE.l,X		; FF FE E2 EE
	ora $06.b		; 05 06
	phd		; 0B
	asl $080F.w		; 0E 0F 08
	ora $03FCF0.l		; 0F F0 FC 03
	cop $84.b		; 02 84
	ora ($85.b,X)		; 01 85
	wai		; CB
	ora $018503.l		; 0F 03 85 01
	jmp.w [$E2EA]		; DC EA E2
	sty $87.b		; 84 87
	sta $86.b		; 85 86
	dec A		; 3A
	txy		; 9B
	inc $EADC.w,X		; FE DC EA
	inc A		; 1A
	sbc ($F4.b,S),Y		; F3 F4
	beq  -2.b		; F0 FE
	dex		; CA
	sbc ($FC.b),Y		; F1 FC
	inc $F007.w,X		; FE 07 F0
	pea $F4AC.w		; F4 AC F4
	bit $FCF4.w		; 2C F4 FC
	pea $043C.w		; F4 3C 04
	jsr ($0FFF.w,X)		; FC FF 0F
	asl $F846.w		; 0E 46 F8
	asl A		; 0A
	cpx #$A040.w		; E0 40 A0
	jsr ($F8F1.w,X)		; FC F1 F8
	asl A		; 0A
	cpx #$1EA0.w		; E0 A0 1E
	bit $F0FD.w,X		; 3C FD F0
	jsr ($2070.w,X)		; FC 70 20
	bvc  -4.b		; 50 FC
	inc $F8.b		; E6 F8
	ora #$7070.w		; 09 70 70
	bvc -120.b		; 50 88
	ora ($FD.b)		; 12 FD
	beq  -8.b		; F0 F8
	asl A		; 0A
	plp		; 28
	plp		; 28
	inx		; E8
	ora $E870.w,Y		; 19 70 E8
	cpx #$7C88.w		; E0 88 7C
	sbc $FF.b,S		; E3 FF
	inc $0704.w,X		; FE 04 07
	sbc $0BF8F0.l,X		; FF F0 F8 0B
	bra  11.b		; 80 0B
	sta $40.b,S		; 83 40
	brk $C0.b		; 00 C0
	asl $E8.b,X		; 16 E8
	ora #$4025.w		; 09 25 40
	cpy #$0AFF.w		; C0 FF 0A
	brk $F1.b		; 00 F1
	sed		; F8
	asl A		; 0A
	jmp ($FFEC.w,X)		; 7C EC FF
	jsr ($D4E8.w,X)		; FC E8 D4
	asl $20.b		; 06 20
	inc $F8F1.w,X		; FE F1 F8
	ora #$D4C0.w		; 09 C0 D4
	inc $F8F6.w,X		; FE F6 F8
	sbc $060BDB.l		; EF DB 0B 06
	ora ($03.b),Y		; 11 03
	bpl   3.b		; 10 03
	ora $3F0B.w,Y		; 19 0B 3F
	ldy $FE.b		; A4 FE
	tsb $8F.b		; 04 8F
	ora ($0C.b),Y		; 11 0C
	asl $0C.b		; 06 0C
	ora [$04.b]		; 07 04
	rep #$80		; C2 80
	inc $F7FE.w,X		; FE FE F7
	wai		; CB
	eor $04F200.l		; 4F 00 F2 04
	sep #$44		; E2 44
	jsl $889C0C.l		; 22 0C 9C 88
.ACCU 16
.INDEX 16
	rep #$FE		; C2 FE
	php		; 08
	tsb $17.b		; 04 17
	inc $0C18.w,X		; FE 18 0C
	beq  28.b		; F0 1C
	and [$FC.b],Y		; 37 FC
	wai		; CB
	ora $1F3F07.l,X		; 1F 07 3F 1F
	rol $D71E.w,X		; 3E 1E D7
	sbc $7F3F7F.l,X		; FF 7F 3F 7F
	and ($C1.b),Y		; 31 C1
	cld		; D8
	phd		; 0B
	jmp $E000FF.l		; 5C FF 00 E0
	bra -16.b		; 80 F0
	cpx #$2073.w		; E0 73 20
	tsa		; 3B
	adc $3B.b		; 65 3B
	bpl  -2.b		; 10 FE
	mvn $71,$FE		; 54 FE 71
	cmp $B103F4.l,X		; DF F4 03 B1
	cmp $0F1F.w,Y		; D9 1F 0F
	brk $AC.b		; 00 AC
	inc $FEBE.w,X		; FE BE FE
	and [$17.b],Y		; 37 17
	beq -40.b		; F0 D8
	tsb $C3F4.w		; 0C F4 C3
	eor $D8E9.w,Y		; 59 E9 D8
	beq -64.b		; F0 C0
	sed		; F8
	beq  56.b		; F0 38
	bpl -124.b		; 10 84
	cpx $E845.w		; EC 45 E8
	inx		; E8
	jsr ($E66A.w,X)		; FC 6A E6
	cpy $84.b		; C4 84
	bpl -12.b		; 10 F4
	sbc $7F73.w,X		; FD 73 7F
	ldy $00.b,X		; B4 00
	jmp $7931.w		; 4C 31 79
	and $7F.b		; 25 7F
	and $CABE7F.l		; 2F 7F BE CA
	sbc $30.b,X		; F5 30
	sec		; 38
	asl $F3.b		; 06 F3
	inx		; E8
	asl A		; 0A
	ldx $80B0.w,Y		; BE B0 80
	ldx $BE90.w,Y		; BE 90 BE
	cmp $C0FA.w,X		; DD FA C0
	inc $F2F9.w,X		; FE F9 F2
	rts		; 60

	bra 121.b		; 80 79
	beq  10.b		; F0 0A
	jsr $F404.w		; 20 04 F4
	dex		; CA
	dec $6040.w,X		; DE 40 60
	rti		; 40

	dec $97.b,X		; D6 97
	lsr $C8.b		; 46 C8
	sbc #$C402.w		; E9 02 C4
	cmp $FFFF.w,Y		; D9 FF FF
	asl $1F3E.w,X		; 1E 3E 1F
	sbc $7FEDCC.l,X		; FF CC ED 7F
	eor [$F1.b],Y		; 57 F1
	asl $1F3D.w,X		; 1E 3D 1F
	sbc $99F70F.l		; EF 0F F7 99
	sed		; F8
	phd		; 0B
	bra  64.b		; 80 40
	adc ($F1.b)		; 72 F1
	ldy #$0FF0.w		; A0 F0 0F
	sed		; F8
	ror $6847.w,X		; 7E 47 68
	bpl -56.b		; 10 C8
	bvs -120.b		; 70 88
	ldy #$38DE.w		; A0 DE 38
	sec		; 38
	pha		; 48
	sei		; 78
	dey		; 88
	sta $15.b,X		; 95 15
	ora ($DA.b,X)		; 01 DA
	rol $FF.b,X		; 36 FF
	cpy $E8.b		; C4 E8
	inc A		; 1A
	cmp $1EF8C0.l		; CF C0 F8 1E
	cpx #$1EE8.w		; E0 E8 1E
	eor $F5.b		; 45 F5
	ora $8C.b,X		; 15 8C
	beq  10.b		; F0 0A
	sbc ($E0.b),Y		; F1 E0
	sbc $8AFCFF.l		; EF FF FC 8A
	sbc ($16.b,S),Y		; F3 16
	and ($07.b,S),Y		; 33 07
	cmp $0B1F16.l,X		; DF 16 1F 0B
	ora $FD0123.l,X		; 1F 23 01 FD
	asl A		; 0A
	cop $0E.b		; 02 0E
	cop $F7.b		; 02 F7
	dec $3C3F.w		; CE 3F 3C
	cpx $DCE8.w		; EC E8 DC
	cld		; D8
	pea $B4F8.w		; F4 F8 B4
	sta ($A0.b),Y		; 91 A0
	sed		; F8
	beq -80.b		; F0 B0
	inc $C5F7.w,X		; FE F7 C5
	bpl   0.b		; 10 00
	jsr $8820.w		; 20 20 88
	bra -40.b		; 80 D8
	bcc  80.b		; 90 50
	lda $7FF5.w,Y		; B9 F5 7F
	rol $56E1.w		; 2E E1 56
	adc ($12.b,S),Y		; 73 12
	cpy #$092F.w		; C0 2F 09
	rol $FF89.w,X		; 3E 89 FF
	tsb $F14A.w		; 0C 4A F1
	ror $F1.b		; 66 F1
	sbc ($2F.b,X)		; E1 2F
	ora ($F5.b,X)		; 01 F5
	iny		; C8
	cpx $E408.w		; EC 08 E4
	ldy #$C0FC.w		; A0 FC C0
	cpx #$D68F.w		; E0 8F D6
	nop		; EA
	xce		; FB
	cpx $67.b		; E4 67
	jmp.w [$FCFF]		; DC FF FC
	and [$17.b],Y		; 37 17
	tsa		; 3B
	phd		; 0B
	lsr $F1.b		; 46 F1
	and ($5F.b,S),Y		; 33 5F
	bpl   2.b		; 10 02
	plp		; 28
	sbc ($3B.b)		; F2 3B
	cmp ($FE.b),Y		; D1 FE
	cpy $86.b		; C4 86
	jsr ($F36F.w,X)		; FC 6F F3
	stx $F8.b		; 86 F8
	sbc $F086FC.l,X		; FF FC 86 F0
	inc $F0C0.w,X		; FE C0 F0
	jsr $AFD5.w		; 20 D5 AF
	bcs  32.b		; B0 20
	eor $F827DB.l		; 4F DB 27 F8
	asl A		; 0A
	cpy #$77FC.w		; C0 FC 77
	ora [$DB.b],Y		; 17 DB
	phd		; 0B
	cmp $82FF44.l,X		; DF 44 FF 82
	cmp $25.b,X		; D5 25
	phx		; DA
	tsa		; 3B
	iny		; C8
	phd		; 0B
	cpy #$FCBE.w		; C0 BE FC
	beq   9.b		; F0 09
	sed		; F8
	ora $C80A.w		; 0D 0A C8
	asl A		; 0A
	php		; 08
	cmp #$1BFF.w		; C9 FF 1B
	ora $0F.b,S		; 03 0F
	ora $1F7F3F.l,X		; 1F 3F 7F 1F
	cmp $092707.l,X		; DF 07 27 09
	ora $F10C.w		; 0D 0C F1
	ora $FE.b,S		; 03 FE
	sbc [$35.b],Y		; F7 35
	and $5F3F37.l		; 2F 37 3F 5F
	ora $3B07EF.l,X		; 1F EF 07 3B
	ora ($1E.b),Y		; 11 1E
	php		; 08
	phx		; DA
	sbc $FFFD.w,X		; FD FD FF
	cmp [$F8.b]		; C7 F8
	plx		; FA
	cpy #$F0C8.w		; C0 C8 F0
	sbc ($FC.b,S),Y		; F3 FC
	jsr ($FEFE.w,X)		; FC FE FE
	sbc $FFF167.l,X		; FF 67 F1 FF
	xce		; FB
	inc $FFF8.w,X		; FE F8 FF
	dec $BF.b		; C6 BF
	beq -17.b		; F0 EF
	sbc $FEFF.w,X		; FD FF FE
	sbc $F8B6.w,X		; FD B6 F8
	ora #$2C0C.w		; 09 0C 2C
	ora $1F4BFB.l,X		; 1F FB 4B 1F
	lda $F778BF.l,X		; BF BF 78 F7
	trb $3B0C.w		; 1C 0C 3B
	eor $E0BFFF.l,X		; 5F FF BF E0
	cmp ($EF.b),Y		; D1 EF
.ACCU 16
	rep #$6B		; C2 6B
	clc		; 18
	sec		; 38
	bvs -16.b		; 70 F0
	tya		; 98
	cmp #$D0E0.w		; C9 E0 D0
	tda		; 7B
	jsr ($20F0.w,X)		; FC F0 20
	sbc $B87011.l,X		; FF 11 70 B8
	cpx #$E878.w		; E0 78 E8
	cld		; D8
	iny		; C8
	sed		; F8
	asl $06.b		; 06 06
	bcc  32.b		; 90 20
	tsb $8042.w		; 0C 42 80
	and $4707C2.l,X		; 3F C2 07 47
	ora [$F4.b]		; 07 F4
	sbc ($00.b)		; F2 00
	ora [$05.b]		; 07 05
	sta ($F0.b,X)		; 81 F0
	adc #$29F1.w		; 69 F1 29
	ora [$3F.b]		; 07 3F
	rti		; 40

	tda		; 7B
	asl $59.b		; 06 59
	ror $FD7F.w,X		; 7E 7F FD
	jsr ($FF8F.w,X)		; FC 8F FF
	cmp $FFC3FC.l,X		; DF FC C3 FF
	sta $5F1F9F.l,X		; 9F 9F 1F 5F
	ror $FCBD.w,X		; 7E BD FC
	adc $1C3FEE.l,X		; 7F EE 3F 1C
	sbc $DFCF.w,X		; FD CF DF
	sbc $AFDF.w		; ED DF AF
	sta $3DFF4C.l,X		; 9F 4C FF 3D
	and $FC32.w,X		; 3D 32 FC
	cpx $FB.b		; E4 FB
	sbc $CFCF58.l,X		; FF 58 CF CF
	sta [$97.b]		; 87 97
	and $E10F.w,X		; 3D 0F E1
	dec $7AFD.w,X		; DE FD 7A
	xce		; FB
	jsr ($FBF3.w,X)		; FC F3 FB
	adc $DD.b,S		; 63 DD
	cmp $FF8C3F.l		; CF 3F 8C FF
	sta [$7B.b]		; 87 7B
	cld		; D8
	cpx #$D08C.w		; E0 8C D0
	adc ($80.b,S),Y		; 73 80
	.db $82, $FF, $FF		; 82 FF FF
	inc $A080.w,X		; FE 80 A0
	ldy #$4020.w		; A0 20 40
	cpy #$A038.w		; C0 38 A0
	jmp ($CC48.w,X)		; 7C 48 CC
	sty $46.b		; 84 46
	bra -62.b		; 80 C2
	cmp $E0A025.l,X		; DF 25 A0 E0
	bra  96.b		; 80 60
	ora $E3.b,S		; 03 E3
	eor ($FC.b)		; 52 FC
	ora $05.b		; 05 05
	jsr ($89F2.w,X)		; FC F2 89
	and $F5EAF8.l		; 2F F8 EA F5
	asl $03.b		; 06 03
	ora $D102.w		; 0D 02 D1
	sbc ($10.b),Y		; F1 10
	xba		; EB
	cop $03.b		; 02 03
	sbc ($BF.b,X)		; E1 BF
	asl $C1E5.w,X		; 1E E5 C1
	sbc ($C0.b,X)		; E1 C0
	cpx #$C1C0.w		; E0 C0 C1
	lsr $D7D3.w		; 4E D3 D7
	sbc ($E1.b,X)		; E1 E1
	inc $C0.b,X		; F6 C0
	inc $FE.b,X		; F6 FE
	beq -96.b		; F0 A0
	cpy #$FB00.w		; C0 00 FB
	asl $BF6F.w		; 0E 6F BF
	inx		; E8
	cmp #$C333.w		; C9 33 C3
	ora ($1C.b)		; 12 1C
	ora $E3.b		; 05 E3
	and ($06.b,X)		; 21 06
	cop $43.b		; 02 43
	beq 113.b		; F0 71
	and $03E7DF.l,X		; 3F DF E7 03
	rti		; 40

	ora $B4E6.w,X		; 1D E6 B4
	ora [$76.b]		; 07 76
	cmp #$EA2E.w		; C9 2E EA
	beq 112.b		; F0 70
	inc $11FC.w,X		; FE FC 11
	clv		; B8
	jsr ($9CBC.w,X)		; FC BC 9C
	dec $5CBC.w,X		; DE BC 5C
	beq -48.b		; F0 D0
	bvs -24.b		; 70 E8
	adc $74B80D.l,X		; 7F 0D B8 74
	ldy $9C58.w,X		; BC 58 9C
	ror $FE1C.w,X		; 7E 1C FE
	stz $D6D9.w		; 9C D9 D6
	sbc #$E118.w		; E9 18 E1
	ora ($FF.b),Y		; 11 FF
	bit $1CFD.w,X		; 3C FD 1C
	trb $1E1E.w		; 1C 1E 1E
	cpy $F086.w		; CC 86 F0
	beq   8.b		; F0 08
	clc		; 18
	inc $EE2C.w,X		; FE 2C EE
	trb $1E3A.w		; 1C 3A 1E
	sbc $003DEB.l,X		; FF EB 3D 00
	jmp ($CE84.w)		; 6C 84 CE
	sty $96.b		; 84 96
	bpl -79.b		; 10 B1
	jsr $B9E1.w		; 20 E1 B9
	cmp $F155.w,Y		; D9 55 F1
	brk $10.b		; 00 10
	stx $FF.b		; 86 FF
	inc $FC08.w,X		; FE 08 FC
	sbc ($00.b),Y		; F1 00
	beq  -2.b		; F0 FE
	ora $BA5E81.l		; 0F 81 5E BA
	cpx #$CCC4.w		; E0 C4 CC
	cpx $B0.b		; E4 B0
	tay		; A8
	cpy #$1090.w		; C0 90 10
	bvc  14.b		; 50 0E
	ora $EA9D25.l,X		; 1F 25 9D EA
	cpy #$FEBC.w		; C0 BC FE
	bra 120.b		; 80 78
	bra  80.b		; 80 50
	brk $BA.b		; 00 BA
	ldx $C00A.w,Y		; BE 0A C0
	tsb $20C2.w		; 0C C2 20
	bmi  24.b		; 30 18
	cpy $DCB3.w		; CC B3 DC
	php		; 08
	php		; 08
	jsr $F010.w		; 20 10 F0
	ora $0AF8F0.l,X		; 1F F0 F8 0A
	sbc ($1C.b),Y		; F1 1C
	ora $01.b,S		; 03 01
	ora $0C1F07.l		; 0F 07 1F 0C
	ora [$13.b],Y		; 17 13
	cpx #$8EFF.w		; E0 FF 8E
	sbc [$03.b]		; E7 03
	cop $05.b		; 02 05
	ora #$0201.w		; 09 01 02
	ora [$08.b]		; 07 08
	tsb $5013.w		; 0C 13 50
	sed		; F8
	bpl   8.b		; 10 08
	clc		; 18
	eor [$E9.b],Y		; 57 E9
	sbc $0E.b,S		; E3 0E
	cpx #$FEA0.w		; E0 A0 FE
	tsa		; 3B
	rol $FFE6.w,X		; 3E E6 FF
	bit $ECC3.w,X		; 3C C3 EC
	jmp ($9D64.w)		; 6C 64 9D
	rts		; 60

	cpx #$3C1E.w		; E0 1E 3C
	beq -32.b		; F0 E0
	rol A		; 2A
	beq  96.b		; F0 60
	stz $E6F2.w		; 9C F2 E6
	cpy $EF.b		; C4 EF
	sbc $4FEFFC.l,X		; FF FC EF 4F
	eor $00AD0D.l		; 4F 0D AD 00
	ror $A220.w		; 6E 20 A2
	sbc ($F7.b),Y		; F1 F7
	sbc $EDFFF7.l		; EF F7 FF ED
	eor $FE0DBF.l		; 4F BF 0D FE
	bra  -1.b		; 80 FF
	jsr $D0DF.w		; 20 DF D0
	cpy #$E133.w		; C0 33 E1
	cpx #$E18B.w		; E0 8B E1
	bne 127.b		; D0 7F
	bra -32.b		; 80 E0
	beq  -8.b		; F0 F8
	inx		; E8
	beq -104.b		; F0 98
	cpy #$F8B0.w		; C0 B0 F8
	inc $3F00.w,X		; FE 00 3F
	cpy #$F8FE.w		; C0 FE F8
	bpl -32.b		; 10 E0
	clc		; 18
	bcc 104.b		; 90 68
	rti		; 40

	jsr ($56E7.w,X)		; FC E7 56
	php		; 08
	cop $0D.b		; 02 0D
	bra -117.b		; 80 8B
	brk $8C.b		; 00 8C
	cpy #$6AC6.w		; C0 C6 6A
	xce		; FB
	sbc $105F.w,X		; FD 5F 10
	ora $8FC180.l,X		; 1F 80 C1 8F
	ora $8F.b,S		; 03 8F
	ora ($C7.b,X)		; 01 C7
	beq -53.b		; F0 CB
	jmp.w [$DA18]		; DC 18 DA
	bpl -21.b		; 10 EB
	sbc $A400D5.l,X		; FF D5 00 A4
	sta $C9B1.w,Y		; 99 B1 C9
	sbc $1C.b,S		; E3 1C
	xce		; FB
	clc		; 18
	sbc [$12.b],Y		; F7 12
	sbc $C0FD41.l,X		; FF 41 FD C0
	eor $F8.b		; 45 F8
	jsr ($CE24.w,X)		; FC 24 CE
	sbc ($EF.b),Y		; F1 EF
	jsr $0079.w		; 20 79 00
	adc $FC2B00.l,X		; 7F 00 2B FC
	cpx $C800.w		; EC 00 C8
	rol A		; 2A
	sbc $F1E0.w,X		; FD E0 F1
	inc $FC10.w,X		; FE 10 FC
	bit $FC.b,X		; 34 FC
	sei		; 78
	ldx $7838.w,Y		; BE 38 78
	clv		; B8
	sbc $80.b,S		; E3 80
	brk $A0.b		; 00 A0
	jsr $E6B3.w		; 20 B3 E6
	sbc $18E141.l,X		; FF 41 E1 18
	sbc ($F0.b),Y		; F1 F0
	lda $E4.b,S		; A3 E4
	bpl  -1.b		; 10 FF
	bcs  60.b		; B0 3C
	dec A		; 3A
	sbc $171CFF.l,X		; FF FF 1C 17
	tas		; 1B
	ora [$1F.b],Y		; 17 1F
	and [$0F.b]		; 27 0F
	ora $3B2B2F.l,X		; 1F 2F 2B 3B
	ora #$1C19.w		; 09 19 1C
	tsa		; 3B
	clc		; 18
	and $1337BC.l,X		; 3F BC 37 13
	and $2B17.w		; 2D 17 2B
	ora [$3B.b]		; 07 3B
	inc $3D03.w,X		; FE 03 3D
	ora ($1E.b,X)		; 01 1E
	inc $0CF6.w,X		; FE F6 0C
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	jsr ($DFDF.w,X)		; FC DF DF
	cmp $88DD.w,X		; DD DD 88
	tay		; A8
	bit $F1.b		; 24 F1
	ora $FDFDF0.l		; 0F F0 FD FD
	cmp $410F.w,X		; DD 0F 41
	lda $817F88.l		; AF 88 7F 81
	sta ($22.b,X)		; 81 22
	beq  -1.b		; F0 FF
	sta $08FFE1.l,X		; 9F E1 FF 08
	adc $F8D9.w		; 6D D9 F8
	iny		; C8
	cpy $6180.w		; CC 80 61
	cpx #$1FD0.w		; E0 D0 1F
	sbc $FCF0FF.l,X		; FF FF F0 FC
	sed		; F8
	jmp.w [$CCF8]		; DC F8 CC
	iny		; C8
	pea $DF3E.w		; F4 3E DF
	lsr $3A9F.w,X		; 5E 9F 3A
	ldx $7EFA.w,Y		; BE FA 7E
	sbc $73F2E1.l,X		; FF E1 F2 73
	bvs 120.b		; 70 78
	bne  -6.b		; D0 FA
	bpl  80.b		; 10 50
	asl $FEFF.w,X		; 1E FF FE
	dec A		; 3A
	cmp $7AC3FF.l,X		; DF FF C3 7A
	lda $70BB72.l,X		; BF 72 BB 70
	plx		; FA
	bne 122.b		; D0 7A
	bpl 112.b		; 10 70
	ora $FF0F89.l,X		; 1F 89 0F FF
	adc $172F0F.l,X		; 7F 0F 2F 17
	ora [$07.b]		; 07 07
	ora [$03.b],Y		; 17 03
	tas		; 1B
	cop $0C.b		; 02 0C
	brk $03.b		; 00 03
	ora $3F0F2E.l,X		; 1F 2E 0F 3F
	sei		; 78
	bne  -2.b		; D0 FE
	ora [$1F.b]		; 07 1F
	ora [$1E.b]		; 07 1E
	sbc $4E.b,X		; F5 4E
	cmp ($2B.b,X)		; C1 2B
.ACCU 8
.INDEX 8
	sep #$F5		; E2 F5
	tsa		; 3B
	rti		; 40

	bcs  17.b		; B0 11
	cmp $E17A.w,Y		; D9 7A E1
	jsr ($9CA4.w,X)		; FC A4 9C
	cop $86.b		; 02 86
	bit $C0F1.w		; 2C F1 C0
	bra  -4.b		; 80 FC
	sbc $E7F1.w,X		; FD F1 E7
	sbc $3BFCFE.l,X		; FF FE FC 3B
	bra  -4.b		; 80 FC
	lda $04BA.w		; AD BA 04
	tsb $23.b		; 04 23
	ora $3F.b,S		; 03 3F
	cmp ($E1.b,X)		; C1 E1
	bit $C2.b		; 24 C2
	cmp $40.b,S		; C3 40
	cpy #$02.b		; C0 02
	cmp ($F1.b)		; D2 F1
	ora $5F.b,S		; 03 5F
	jmp ($2503.w,X)		; 7C 03 25
	brk $E7.b		; 00 E7
	bra  67.b		; 80 43
	jmp $3AF0F1.l		; 5C F1 F0 3A
	ply		; 7A
	jmp ($F87C.w,X)		; 7C 7C F8
	tsa		; 3B
	cmp $FC.b,X		; D5 FC
	rol $B034.w,X		; 3E 34 B0
	brk $98.b		; 00 98
	jsr $D1AA.w		; 20 AA D1
	sec		; 38
	lsr $F43E.w,X		; 5E 3E F4
	sbc ($EE.b),Y		; F1 EE
	bit $30DA.w,X		; 3C DA 30
	cpy $F8.b		; C4 F8
	txa		; 8A
	cmp ($0B.b)		; D2 0B
	ora ($FF.b,S),Y		; 13 FF
	sbc $1C1607.l,X		; FF 07 16 1C
	and $2C0C.w		; 2D 0C 2C
	bit $371C.w,X		; 3C 1C 37
	asl $1E.b,X		; 16 1E
	rol $26.b,X		; 36 26
	rol A		; 2A
	ora $1C.b,S		; 03 1C
	sbc $190661.l,X		; FF 61 06 19
	tsb $0C33.w		; 0C 33 0C
	and ($1C.b)		; 32 1C
	jsl $FE2916.l		; 22 16 29 FE
	cop $3D.b		; 02 3D
	sbc $4AEF.w,X		; FD EF 4A
	phx		; DA
	tsb $00D9.w		; 0C D9 00
	beq -96.b		; F0 A0
	lda ($31.b,X)		; A1 31
	sbc ($C2.b,X)		; E1 C2
	lda ($A2.b,X)		; A1 A2
	clv		; B8
	plb		; AB
	clc		; 18
	sbc $30005F.l,X		; FF 5F 00 30
	jsr $20D0.w		; 20 D0 20
	cmp ($C0.b),Y		; D1 C0
	and $80.b,S		; 23 80
	adc $10.b,S		; 63 10
	ora $D70503.l,X		; 1F 03 05 D7
	tyx		; BB
	cmp $FF.b,X		; D5 FF
	sbc $B1BEFE.l,X		; FF FE BE B1
	ldx $BC.b,Y		; B6 BC
	plx		; FA
	dec $D0C0.w		; CE C0 D0
	bcs  48.b		; B0 30
	bit $085C.w,X		; 3C 5C 08
	plp		; 28
	eor $FC.b,S		; 43 FC
	rol $042E.w,X		; 3E 2E 04
	stx $16.b,Y		; 96 16
	sbc $C83030.l		; EF 30 30 C8
	clc		; 18
	cmp $70.b,S		; C3 70
	stz $08.b		; 64 08
	bit $9C.b,X		; 34 9C
	tsb $1A.b		; 04 1A
	inc $0402.w,X		; FE 02 04
	ora ($F7.b)		; 12 F7
	ora $01E988.l,X		; 1F 88 E9 01
	ora ($5C.b,X)		; 01 5C
	sbc ($20.b)		; F2 20
	bvs  48.b		; 70 30
	rts		; 60

	brk $17.b		; 00 17
	brk $13.b		; 00 13
	and $84.b,S		; 23 84
	pha		; 48
	ora ($8D.b,X)		; 01 8D
	sbc $FE50.w		; ED 50 FE
	sta [$7F.b]		; 87 7F
	sta ($82.b,X)		; 81 82
	bra -127.b		; 80 81
	sbc $6040C0.l,X		; FF C0 40 60
	ldy #$70.b		; A0 70
	bvc  56.b		; 50 38
	jsr $E180.w		; 20 80 E1
	and $28.b,S		; 23 28
	bra  65.b		; 80 41
	inc $A040.w,X		; FE 40 A0
	eor $80.b,S		; 43 80
	jsr $10C0.w		; 20 C0 10
	pei ($38.b)		; D4 38
	ora ($D7.b)		; 12 D7
	sbc $0301FD.l,X		; FF FD 01 03
	sta $81.b,S		; 83 81
	ora [$03.b]		; 07 03
	ora [$06.b]		; 07 06
	tsb $0A.b		; 04 0A
	ora #$C6.b		; 09 C6
	ora ($82.b,X)		; 01 82
	ora $04.b,S		; 03 04
	eor [$BD.b],Y		; 57 BD
	asl $01.b		; 06 01
	bpl  30.b		; 10 1E
	adc $830AC0.l,X		; 7F C0 0A 83
	dec $F0.b,X		; D6 F0
	sed		; F8
	ora $FF.b,X		; 15 FF
	jsr ($0007.w,X)		; FC 07 00
	ora $A5.b		; 05 A5
	lda $0BC8B4.l,X		; BF B4 C8 0B
	ora [$76.b]		; 07 76
	phx		; DA
	beq  28.b		; F0 1C
	bpl  36.b		; 10 24
	bmi  84.b		; 30 54
	brk $44.b		; 00 44
	sbc $A6F65A.l,X		; FF 5A F6 A6
	trb $241C.w		; 1C 1C 24
	bit $6C54.w,X		; 3C 54 6C
	mvp $F6,$7C		; 44 7C F6
	ldy #$09.b		; A0 09
	jmp $3828C9.l		; 5C C9 28 38
	bcs  11.b		; B0 0B
	cmp $DA.b,X		; D5 DA
	pha		; 48
	ldx #$38.b		; A2 38
	lda [$22.b],Y		; B7 22
	iny		; C8
	ora #$B0.b		; 09 B0
	txs		; 9A
	asl $22.b		; 06 22
	iny		; C8
	ora #$60.b		; 09 60
	tsx		; BA
	tsb $90.b		; 04 90
	sbc $0CA0AA.l,X		; FF AA A0 0C
	phd		; 0B
	plb		; AB
	sta ($C0.b),Y		; 91 C0
	asl A		; 0A
	cmp ($CF.b)		; D2 CF
	sbc ($A2.b),Y		; F1 A2
	inc $F8FF.w,X		; FE FF F8
	tya		; 98
	ldx $CA24.w,Y		; BE 24 CA
	sta ($49.b),Y		; 91 49
	jsr ($60A0.w,X)		; FC A0 60
	bvc -48.b		; 50 D0
	ror $1AD9.w,X		; 7E D9 1A
	and $FCFC.w,Y		; 39 FC FC
	adc $00D01A.l,X		; 7F 1A D0 00
	bra  16.b		; 80 10
	txs		; 9A
	txa		; 8A
	lsr A		; 4A
	lsr $22.b		; 46 22
	tsb $20.b		; 04 20
	brk $24.b		; 00 24
	lda $E57AC0.l,X		; BF C0 7A E5
	stz $CE00.w,X		; 9E 00 CE
	brk $66.b		; 00 66
	.db $62, $A1, $FE		; 62 A1 FE
	sbc $30F0DF.l,X		; FF DF F0 30
	sei		; 78
	bvc  80.b		; 50 50
	sec		; 38
	clc		; 18
	plp		; 28
	plp		; 28
	ora $070D.w,X		; 1D 0D 07
	phd		; 0B
	ora [$47.b]		; 07 47
	cmp #$DF.b		; C9 DF
	cmp ($30.b,X)		; C1 30
	pha		; 48
	bpl 104.b		; 10 68
	clc		; 18
	jsr $E9E2.w		; 20 E2 E9
	ora ($03.b,S),Y		; 13 03
	phd		; 0B
	adc ($F0.b)		; 72 F0
	asl A		; 0A
	cmp $0404FB.l,X		; DF FB 04 04
	cpx #$63.b		; E0 63
	rti		; 40

	cmp ($17.b,X)		; C1 17
	cpy #$0B.b		; C0 0B
	brk $E3.b		; 00 E3
	brk $F0.b		; 00 F0
	sbc $2F0402.l,X		; FF 02 04 2F
	cmp [$E2.b],Y		; D7 E2
	and [$0B.b],Y		; 37 0B
	tsb $6243.w		; 0C 43 62
	sty $43.b,X		; 94 43
	pea $C238.w		; F4 38 C2
	sbc ($F0.b,X)		; E1 F0
	php		; 08
	sbc $10083D.l		; EF 3D 08 10
	php		; 08
	bvs  88.b		; 70 58
	stx $D9.b		; 86 D9
	bcc -80.b		; 90 B0
	bvs  58.b		; 70 3A
	stp		; DB
	php		; 08
	brk $18.b		; 00 18
	jmp ($9E05.w)		; 6C 05 9E
	cpx #$18.b		; E0 18
	ora $B9.b,S		; 03 B9
	beq -26.b		; F0 E6
	tsx		; BA
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EB.b		; 00 EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	eor [$D8.b]		; 47 D8
	bit $9F.b,X		; 34 9F
	bit $9B.b,X		; 34 9B
	plx		; FA
	inc $349C.w,X		; FE 9C 34
	phx		; DA
	sed		; F8
	ora ($FF.b),Y		; 11 FF
	adc $E12DE0.l,X		; 7F E0 2D E1
	and $2DE2.w		; 2D E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $2D.b		; E5 2D
	inc $2D.b		; E6 2D
	sbc [$2D.b]		; E7 2D
	sbc $F8E63F.l,X		; FF 3F E6 F8
	ora #$C0.b		; 09 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $AB.b,X		; 34 AB
	.db $42, $FF		; 42 FF
	plx		; FA
	inc $C0AC.w,X		; FE AC C0
	sed		; F8
	ora ($F0.b)		; 12 F0
	and $2DF1.w		; 2D F1 2D
	sbc ($2D.b)		; F2 2D
	sbc $2DF3FA.l,X		; FF FA F3 2D
	pea $F52D.w		; F4 2D F5
	and $2DF6.w		; 2D F6 2D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	asl A		; 0A
	inc $7FF8.w,X		; FE F8 7F
	rti		; 40

	and $F186.w		; 2D 86 F1
	bmi  45.b		; 30 2D
	eor $2270.w		; 4D 70 22
	and $FA80.w		; 2D 80 FA
	and $FD46.w		; 2D 46 FD
	cpx $2D66.w		; EC 66 2D
	ora [$2D.b]		; 07 2D
	phd		; 0B
	and $EA84.w		; 2D 84 EA
	inc $21F8.w,X		; FE F8 21
	bvc -57.b		; 50 C7
	and $2D962D.l,X		; 3F 2D 96 2D
	eor $32D6.w,X		; 5D D6 32
	and $2D90.w		; 2D 90 2D
	bpl  45.b		; 10 2D
	lsr $C2.b,X		; 56 C2
	adc [$F6.b]		; 67 F6
	plx		; FA
	ora [$2D.b],Y		; 17 2D
	tas		; 1B
	and $EA94.w		; 2D 94 EA
	sbc $F8FEFF.l,X		; FF FF FE F8
	and $A4.b		; 25 A4
	and $2DA5.w		; 2D A5 2D
	ldx $2D.b		; A6 2D
	lda [$2D.b]		; A7 2D
	tay		; A8
	and $2DA9.w		; 2D A9 2D
	tax		; AA
	and $EFFF.w		; 2D FF EF
	plb		; AB
	and $2DC4.w		; 2D C4 2D
	cmp $2D.b		; C5 2D
	dex		; CA
	and $2DCB.w		; 2D CB 2D
.ACCU 16
	rep #$2D		; C2 2D
	cmp $BC.b,S		; C3 BC
	sed		; F8
	bit $B4.b		; 24 B4
	sbc $B52DFF.l,X		; FF FF 2D B5
	and $2DB6.w		; 2D B6 2D
	lda [$2D.b],Y		; B7 2D
	clv		; B8
	and $2DB9.w		; 2D B9 2D
	tsx		; BA
	and $2DBB.w		; 2D BB 2D
	pei ($FF.b)		; D4 FF
	sbc $2D.b,X		; F5 2D
	cmp $2D.b,X		; D5 2D
	phx		; DA
	and $2DDB.w		; 2D DB 2D
	cmp ($2D.b)		; D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	jsr $FE00.w		; 20 00 FE
	tsb $1B2D.w		; 0C 2D 1B
	adc $6A.b,S		; 63 6A
	and $0001.w		; 2D 01 00
	sbc $F448.w,Y		; F9 48 F4
	and #$23EC.w		; 29 EC 23
	lda $F3F6DF.l		; AF DF F6 F3
	ora $F2852D.l		; 0F 2D 85 F2
	sbc ($00.b),Y		; F1 00
	sed		; F8
	and $1C.b,S		; 23 1C
	and $2D7A.w		; 2D 7A 2D
	ora ($00.b),Y		; 11 00
	sbc $7B18.w,Y		; F9 18 7B
	cli		; 58
	pea $EC39.w		; F4 39 EC
	and ($F6.b,S),Y		; 33 F6
	sbc ($1F.b,S),Y		; F3 1F
	and $FD95.w		; 2D 95 FD
	cmp $7CF1F2.l,X		; DF F2 F1 7C
	sed		; F8
	ora $AD2DAC.l,X		; 1F AC 2D AD
	and $2DAE.w		; 2D AE 2D
	ldy #$2D.b		; A0 2D
	lda ($2D.b,X)		; A1 2D
	inc $F2.b,X		; F6 F2
	adc $6DA7FF.l,X		; 7F FF A7 6D
	ldx $6D.b		; A6 6D
	lda #$A86D.w		; A9 6D A8
	adc $F0F6.w		; 6D F6 F0
	and #$2DBC.w		; 29 BC 2D
	lda $BE2D.w,X		; BD 2D BE
	and $DFF7.w		; 2D F7 DF
	bcs  45.b		; B0 2D
	lda ($2D.b),Y		; B1 2D
	inc $F2.b,X		; F6 F2
	lda [$6D.b],Y		; B7 6D
	ldx $6D.b,Y		; B6 6D
	lda $B86D.w,Y		; B9 6D B8
	adc $F0F6.w		; 6D F6 F0
	and $0B.b		; 25 0B
	bne  14.b		; D0 0E
	and $1C25.w		; 2D 25 1C
	sbc $02FC.w,X		; FD FC 02
	ora ($66.b,X)		; 01 66
	inx		; E8
	bmi  11.b		; 30 0B
	bvc  30.b		; 50 1E
	and $1C35.w		; 2D 35 1C
	sbc $02FC.w,X		; FD FC 02
	ora ($26.b),Y		; 11 26
	inx		; E8
	bit $3A.b,X		; 34 3A
	jsr ($C80A.w,X)		; FC 0A C8
	and $42C9.w		; 2D C9 42
	lda $ADB5.w		; AD B5 AD
	tsx		; BA
	lda $7FFD.w		; AD FD 7F
	tyx		; BB
	lda $F000.w		; AD 00 F0
	and ($D8.b,S),Y		; 33 D8
	and $2DD9.w		; 2D D9 2D
	ldy $AD.b		; A4 AD
	lda $AD.b		; A5 AD
	tax		; AA
	lda $ADAB.w		; AD AB AD
	eor $01.b,X		; 55 01
	brk $F0.b		; 00 F0
	pld		; 2B
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $BFF8.w,X		; FE F8 BF
	brk $F0.b		; 00 F0
	brk $EB.b		; 00 EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	ora $9F348F.l,X		; 1F 8F 34 9F
	bit $9B.b,X		; 34 9B
	bit $94.b,X		; 34 94
	plx		; FA
	sta ($34.b)		; 92 34
	lda ($FB.b)		; B2 FB
	sbc $34B5FA.l,X		; FF FA B5 34
	phx		; DA
	sed		; F8
	phd		; 0B
	cpx #$2D.b		; E0 2D
	sbc ($2D.b,X)		; E1 2D
.ACCU 8
	sep #$2D		; E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $EF.b		; E5 EF
	sbc $2DE62D.l,X		; FF 2D E6 2D
	sbc [$2D.b]		; E7 2D
	inc $F8.b		; E6 F8
	ora #$C0.b		; 09 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	ora $AF348F.l,X		; 1F 8F 34 AF
	bit $AB.b,X		; 34 AB
	bit $A4.b,X		; 34 A4
	plx		; FA
	ldx #$34.b		; A2 34
.ACCU 16
.INDEX 16
	rep #$FD		; C2 FD
	sbc $C0C5FA.l,X		; FF FA C5 C0
	sed		; F8
	tsb $2DF0.w		; 0C F0 2D
	sbc ($2D.b),Y		; F1 2D
	sbc ($2D.b)		; F2 2D
	sbc ($2D.b,S),Y		; F3 2D
	pea $F52D.w		; F4 2D F5
	and $1FEB.w		; 2D EB 1F
	inc $2D.b,X		; F6 2D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	asl A		; 0A
	inc $7FF8.w,X		; FE F8 7F
	phd		; 0B
	and $2D82.w		; 2D 82 2D
	adc #$4D2D.w		; 69 2D 4D
	sbc $0C6EFE.l,X		; FF FE 6E 0C
	and $2D6C.w		; 2D 6C 2D
	eor #$862D.w		; 49 2D 86
	stz $F8.b		; 64 F8
	rol $2D1B.w		; 2E 1B 2D
	sta ($2D.b)		; 92 2D
	adc $EFF1.w,Y		; 79 F1 EF
	and $CA5D.w		; 2D 5D CA
	trb $7C2D.w		; 1C 2D 7C
	and $2D59.w		; 2D 59 2D
	stx $24.b,Y		; 96 24
	sed		; F8
	and ($A9.b)		; 32 A9
	sbc $A86DFF.l,X		; FF FF 6D A8
	adc $2DC8.w		; 6D C8 2D
	cmp #$A82D.w		; C9 2D A8
	and $2DA9.w		; 2D A9 2D
	tax		; AA
	and $2DAB.w		; 2D AB 2D
	cpy $FF.b		; C4 FF
	sbc $C52D.w,X		; FD 2D C5
	and $2DCA.w		; 2D CA 2D
	wai		; CB
	and $2DC2.w		; 2D C2 2D
	cmp $B2.b,S		; C3 B2
	sed		; F8
	bit $B9.b		; 24 B9
	adc $6DB8.w		; 6D B8 6D
	sbc $2DD8FF.l,X		; FF FF D8 2D
	cmp $B82D.w,Y		; D9 2D B8
	and $2DB9.w		; 2D B9 2D
	tsx		; BA
	and $2DBB.w		; 2D BB 2D
	pei ($2D.b)		; D4 2D
	cmp $2D.b,X		; D5 2D
	lda $2DDAF1.l,X		; BF F1 DA 2D
	stp		; DB
	and $2DD2.w		; 2D D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	jsr $0E2E.w		; 20 2E 0E
	asl $2D.b		; 06 2D
	tsa		; 3B
	cpx #$2D83.w		; E0 83 2D
	eor [$06.b]		; 47 06
	jsr ($072D.w,X)		; FC 2D 07
	plx		; FA
	sed		; F8
	and $2D3631.l		; 2F 31 36 2D
	lsr $F0.b		; 46 F0
	adc ($E8.b,X)		; 61 E8
	asl $F8C0.w		; 0E C0 F8
	asl $7E3E.w,X		; 1E 3E 7E
	ror $160E.w,X		; 7E 0E 16
	and $2D93.w		; 2D 93 2D
	eor [$06.b],Y		; 57 06
	bpl  45.b		; 10 2D
	ora [$2D.b],Y		; 17 2D
	bra  99.b		; 80 63
	jsr ($3FF8.w,X)		; FC F8 3F
	and $F056.w		; 2D 56 F0
	adc ($EC.b),Y		; 71 EC
	cmp $401EE8.l,X		; DF E8 1E 40
	sed		; F8
	jsl $A52DA4.l		; 22 A4 2D A5
	and $2DA6.w		; 2D A6 2D
	lda [$00.b]		; A7 00
	xce		; FB
	sbc [$B0.b],Y		; F7 B0
	ldx $AD.b,Y		; B6 AD
	lda [$AD.b],Y		; B7 AD
	jsr ($2FF0.w,X)		; FC F0 2F
	ldy $2D.b,X		; B4 2D
	lda $C8.b,X		; B5 C8
	and $2FB7.w		; 2D B7 2F
	cpy $00.b		; C4 00
	xce		; FB
	ldx $AD.b		; A6 AD
	lda [$AD.b]		; A7 AD
	jsr ($2BF0.w,X)		; FC F0 2B
	php		; 08
	ror $16.b		; 66 16
	cld		; D8
	ply		; 7A
	tsb $68DC.w		; 0C DC 68
	cop $F1.b		; 02 F1
	ora ($00.b,X)		; 01 00
	plx		; FA
	inc $E9.b,X		; F6 E9
	jsl $85852D.l		; 22 2D 85 85
	clc		; 18
	sbc ($E9.b)		; F2 E9
	sty $F0.b		; 84 F0
	and $08.b,S		; 23 08
	ror $16.b,X		; 76 16
	trb $AF5B.w		; 1C 5B AF
	pei ($78.b)		; D4 78
	cop $F1.b		; 02 F1
	ora ($00.b),Y		; 11 00
	sbc $EAF6.w,Y		; F9 F6 EA
	and ($2D.b)		; 32 2D
	sta $F2.b,X		; 95 F2
	sbc #$9D2F.w		; E9 2F 9D
	brk $F0.b		; 00 F0
	and [$B8.b]		; 27 B8
	lda $ADB9.w		; AD B9 AD
	jsr ($04F6.w,X)		; FC F6 04
	cpy #$C12D.w		; C0 2D C1
	sbc $C6044B.l		; EF 4B 04 C6
	and $BCC7.w		; 2D C7 BC
	sed		; F8
	bit $A8.b		; 24 A8
	lda $ADA9.w		; AD A9 AD
	jsr ($E7F6.w,X)		; FC F6 E7
	plb		; AB
	tsb $D0.b		; 04 D0
	and $04D1.w		; 2D D1 04
	dec $2D.b,X		; D6 2D
	cmp [$96.b],Y		; D7 96
	cpx #$FE8A.w		; E0 8A FE
	sed		; F8
	jsr ($000A.w,X)		; FC 0A 00
	inc $FCF8.w,X		; FE F8 FC
	inc $55F8.w,X		; FE F8 55
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xba		; EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	eor [$00.b]		; 47 00
	bit $9F.b,X		; 34 9F
	bit $9B.b,X		; 34 9B
	pea $EEFA.w		; F4 FA EE
	sbc $F8DAFF.l,X		; FF FF DA F8
	ora ($E0.b),Y		; 11 E0
	and $2DE1.w		; 2D E1 2D
.ACCU 8
	sep #$2D		; E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $2D.b		; E5 2D
	inc $2D.b		; E6 2D
	sbc $E7FF.w,X		; FD FF E7
	and $F8E6.w		; 2D E6 F8
	ora #$C0.b		; 09 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $08.b,X		; 34 08
	cpx #$F4AB.w		; E0 AB F4
	plx		; FA
	inc $F8C0.w		; EE C0 F8
	ora ($F0.b),Y		; 11 F0
	sbc $F12D5F.l,X		; FF 5F 2D F1
	and $2DF2.w		; 2D F2 2D
	sbc ($2D.b,S),Y		; F3 2D
	pea $F52D.w		; F4 2D F5
	and $2DF6.w		; 2D F6 2D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	asl A		; 0A
	sbc $F8FEE3.l,X		; FF E3 FE F8
	adc $872D2B.l,X		; 7F 2B 2D 87
	and $2D01.w		; 2D 01 2D
	eor $2D.b,S		; 43 2D
	stx $6C.b		; 86 6C
	asl $D8C7.w		; 0E C7 D8
	and $2D02.w		; 2D 02 2D
	pha		; 48
	sed		; F8
	ror $F2.b		; 66 F2
	adc $5C.b		; 65 5C
	sed		; F8
	rol $FF.b		; 26 FF
	sed		; F8
	tsa		; 3B
	and $2D97.w		; 2D 97 2D
	ora ($2D.b),Y		; 11 2D
	eor ($2D.b,S),Y		; 53 2D
	stx $D0.b,Y		; 96 D0
	asl $122D.w,X		; 1E 2D 12
	and ($F6.b),Y		; 31 F6
	and $F858.w		; 2D 58 F8
	ror $F2.b,X		; 76 F2
	adc $1C.b,X		; 75 1C
	sed		; F8
	rol A		; 2A
	lda #$6D.b		; A9 6D
	sbc $6DA8F0.l,X		; FF F0 A8 6D
	lda [$6D.b]		; A7 6D
	ldx $6D.b		; A6 6D
	lda $6D.b		; A5 6D
	ldy $FA.b		; A4 FA
	and $2DA7.w		; 2D A7 2D
	sbc $2DA8FF.l,X		; FF FF A8 2D
	lda #$2D.b		; A9 2D
	tax		; AA
	and $2DAB.w		; 2D AB 2D
	cpy $2D.b		; C4 2D
	cmp $2D.b		; C5 2D
	dex		; CA
	and $2DCB.w		; 2D CB 2D
	xce		; FB
	adc $C32DC2.l,X		; 7F C2 2D C3
	lda ($F8.b)		; B2 F8
	trb $6DB9.w		; 1C B9 6D
	clv		; B8
	adc $6DB7.w		; 6D B7 6D
	ldx $6D.b,Y		; B6 6D
	lda $6D.b,X		; B5 6D
	ldy $F8.b,X		; B4 F8
	sbc $B72DFA.l,X		; FF FA 2D B7
	and $2DB8.w		; 2D B8 2D
	lda $BA2D.w,Y		; B9 2D BA
	and $2DBB.w		; 2D BB 2D
	pei ($FF.b)		; D4 FF
	sta $D52D.w		; 8D 2D D5
	and $2DDA.w		; 2D DA 2D
	stp		; DB
	and $2DD2.w		; 2D D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	clc		; 18
	rol $46F1.w		; 2E F1 46
	trb $62.b		; 14 62
	sep #$0C		; E2 0C
	and $F827.w		; 2D 27 F8
	sbc ($07.b),Y		; F1 07
	inc $27.b,X		; F6 27
	adc $EE.b,S		; 63 EE
	beq   9.b		; F0 09
	asl $FE20.w		; 0E 20 FE
	mvp $1D,$F8		; 44 F8 1D
	rol $7214.w,X		; 3E 14 72
	ldy $CAD1.w,X		; BC D1 CA
	trb $372D.w		; 1C 2D 37
	sed		; F8
	sbc ($17.b),Y		; F1 17
	inc $EE.b,X		; F6 EE
	beq   9.b		; F0 09
	cmp #$F7.b		; C9 F7
	asl $FE20.w,X		; 1E 20 FE
	brk $F8.b		; 00 F8
	and #$A4.b		; 29 A4
	and $2DA5.w		; 2D A5 2D
	brk $F8.b		; 00 F8
	phd		; 0B
	cpy #$DE2D.w		; C0 2D DE
	sbc [$C1.b],Y		; F7 C1
	brk $FB.b		; 00 FB
	dec $2D.b		; C6 2D
	cmp [$00.b]		; C7 00
	sed		; F8
	bit $B4.b		; 24 B4
	and $2DB5.w		; 2D B5 2D
	brk $F8.b		; 00 F8
	phd		; 0B
	bne  45.b		; D0 2D
	lsr $D1A3.w,X		; 5E A3 D1
	brk $FB.b		; 00 FB
	dec $2D.b,X		; D6 2D
	cmp [$C0.b],Y		; D7 C0
	sed		; F8
	clc		; 18
	brk $F0.b		; 00 F0
	phd		; 0B
	rol A		; 2A
	plx		; FA
	adc $F2008D.l,X		; 7F 8D 00 F2
	adc $2D.b		; 65 2D
	lsr A		; 4A
	and $2D85.w		; 2D 85 2D
	jmp ($F03E.w)		; 6C 3E F0
	bit $00.b		; 24 00
	beq  11.b		; F0 0B
	dec A		; 3A
	inc $FA25.w,X		; FE 25 FA
	brk $F2.b		; 00 F2
	adc $2D.b,X		; 75 2D
	phy		; 5A
	and $2D95.w		; 2D 95 2D
	jmp ($E8FE.w,X)		; 7C FE E8
	plp		; 28
	php		; 08
	adc $0025.w,X		; 7D 25 00
	plx		; FA
	sed		; F8
	sbc ($BA.b)		; F2 BA
	lda $ADBB.w		; AD BB AD
	php		; 08
	sed		; F8
	and [$FE.b]		; 27 FE
	inc $7D08.w,X		; FE 08 7D
	eor $00.b,X		; 55 00
	plx		; FA
	sed		; F8
	sbc ($AA.b)		; F2 AA
	lda $ADAB.w		; AD AB AD
	php		; 08
	sed		; F8
	and $FE.b,S		; 23 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	jsr ($F8FE.w,X)		; FC FE F8
	cmp [$01.b]		; C7 01
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xba		; EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	adc $9F343C.l,X		; 7F 3C 34 9F
	bit $99.b,X		; 34 99
	bit $B2.b,X		; 34 B2
	bit $9E.b,X		; 34 9E
	sbc ($B1.b)		; F2 B1
	bit $94.b,X		; 34 94
	plx		; FA
	sbc $F8DAF2.l,X		; FF F2 DA F8
	phd		; 0B
	cpx #$E12D.w		; E0 2D E1
	and $2DE2.w		; 2D E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $EF.b		; E5 EF
	sbc $2DE62D.l,X		; FF 2D E6 2D
	sbc [$2D.b]		; E7 2D
	inc $F8.b		; E6 F8
	ora #$C0.b		; 09 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	adc $AF343C.l,X		; 7F 3C 34 AF
	bit $A9.b,X		; 34 A9
	bit $C2.b,X		; 34 C2
	bit $AE.b,X		; 34 AE
	sbc ($C1.b)		; F2 C1
	bit $A4.b,X		; 34 A4
	plx		; FA
	sbc $F8C0F2.l,X		; FF F2 C0 F8
	phd		; 0B
	beq  45.b		; F0 2D
	sbc ($2D.b),Y		; F1 2D
	sbc ($2D.b)		; F2 2D
	sbc ($2D.b,S),Y		; F3 2D
	pea $F52D.w		; F4 2D F5
	cmp [$FF.b],Y		; D7 FF
	and $2DF6.w		; 2D F6 2D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	asl A		; 0A
	inc $7FF8.w,X		; FE F8 7F
	phd		; 0B
	and $2D83.w		; 2D 83 2D
	stx $2D.b		; 86 2D
	jmp ($182D.w)		; 6C 2D 18
	and $40FA47.l,X		; 3F 47 FA 40
	pla		; 68
	asl A		; 0A
	and $2D4D.w		; 2D 4D 2D
	adc $C2.b,S		; 63 C2
	eor [$F4.b]		; 47 F4
	inc $65.b,X		; F6 65
	and $2D46.w		; 2D 46 2D
	rts		; 60

	sbc ($FF.b)		; F2 FF
	adc $C0.b,S		; 63 C0
	sed		; F8
	ora $2D1B.w,X		; 1D 1B 2D
	sta ($2D.b,S),Y		; 93 2D
	stx $2D.b,Y		; 96 2D
	jmp ($572D.w,X)		; 7C 2D 57
	plx		; FA
	bvc  -4.b		; 50 FC
	php		; 08
	pei ($1A.b)		; D4 1A
	and $2D5D.w		; 2D 5D 2D
	adc ($F4.b,S),Y		; 73 F4
	ora $75F6FD.l,X		; 1F FD F6 75
	and $2D56.w		; 2D 56 2D
	bvs -14.b		; 70 F2
	jmp ($21F8.w,X)		; 7C F8 21
	lda #$6D.b		; A9 6D
	tay		; A8
	adc $FFFF.w		; 6D FF FF
	iny		; C8
	and $2DC9.w		; 2D C9 2D
	tay		; A8
	and $2DA9.w		; 2D A9 2D
	tax		; AA
	and $2DAB.w		; 2D AB 2D
	cpy $2D.b		; C4 2D
	cmp $2D.b		; C5 2D
	lda $2DCAFF.l,X		; BF FF CA 2D
	wai		; CB
	and $2DC2.w		; 2D C2 2D
	cmp $D6.b,S		; C3 D6
	beq  36.b		; F0 24
	lda $B86D.w,Y		; B9 6D B8
	adc $2DD8.w		; 6D D8 2D
	cmp $FFFF.w,Y		; D9 FF FF
	and $2DB8.w		; 2D B8 2D
	lda $BA2D.w,Y		; B9 2D BA
	and $2DBB.w		; 2D BB 2D
	pei ($2D.b)		; D4 2D
	cmp $2D.b,X		; D5 2D
	phx		; DA
	and $B7DB.w		; 2D DB B7
	cmp [$2D.b]		; C7 2D
	cmp ($2D.b)		; D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	jsr $0061.w		; 20 61 00
	sbc $2D6B.w,Y		; F9 6B 2D
	ora $EF870E.l		; 0F 0E 87 EF
	asl $0920.w		; 0E 20 09
	and $24FE.w		; 2D FE 24
	and $2D85.w		; 2D 85 2D
	and ($F8.b,X)		; 21 F8
	sbc ($01.b,S),Y		; F3 01
	lda [$47.b],Y		; B7 47
	and $2D07.w		; 2D 07 2D
	lsr A		; 4A
	brk $F8.b		; 00 F8
	jsr $0071.w		; 20 71 00
	sbc $2D7B.w,Y		; F9 7B 2D
	ora $BE180E.l,X		; 1F 0E 18 BE
	cpy #$2D19.w		; C0 19 2D
	inc $2D34.w,X		; FE 34 2D
	sta $2D.b,X		; 95 2D
	and ($DF.b),Y		; 31 DF
	sbc $11F3F8.l,X		; FF F8 F3 11
	and $2D17.w		; 2D 17 2D
	phy		; 5A
	brk $F8.b		; 00 F8
	bit $AC.b		; 24 AC
	and $2DAD.w		; 2D AD 2D
	ldx $A02D.w		; AE 2D A0
	and $FDFE.w		; 2D FE FD
	lda ($FE.b,X)		; A1 FE
	sbc ($A6.b,S),Y		; F3 A6
	and $2DA7.w		; 2D A7 2D
	ldy $2D.b		; A4 2D
	lda $F6.b		; A5 F6
	beq  42.b		; F0 2A
	ldy $BD2D.w,X		; BC 2D BD
	and $5FEF.w		; 2D EF 5F
	ldx $B02D.w,Y		; BE 2D B0
	and $FEB1.w		; 2D B1 FE
	sbc ($B6.b,S),Y		; F3 B6
	and $2DB7.w		; 2D B7 2D
	ldy $2D.b,X		; B4 2D
	lda $F6.b,X		; B5 F6
	beq  38.b		; F0 26
	sbc ($13.b,X)		; E1 13
	brk $F8.b		; 00 F8
	ora #$F4.b		; 09 F4
	adc $2D.b,S		; 63 2D
	pla		; 68
	and $D848.w		; 2D 48 D8
	lsr $E1.b,X		; 56 E1
	asl $0D.b		; 06 0D
	inc $FC.b,X		; F6 FC
	inc $20F8.w,X		; FE F8 20
	brk $F8.b		; 00 F8
	ora #$F4.b		; 09 F4
	adc ($2D.b,S),Y		; 73 2D
	adc $CC.b,S		; 63 CC
	sei		; 78
	and $F858.w		; 2D 58 F8
	bpl   6.b		; 10 06
	ora $7912.w,X		; 1D 12 79
	inc $FE.b,X		; F6 FE
	sed		; F8
	and $12.b		; 25 12
	asl A		; 0A
	brk $F6.b		; 00 F6
	cpy #$C12D.w		; C0 2D C1
	ldx $0A44.w,Y		; BE 44 0A
	dec $2D.b		; C6 2D
	cmp [$BC.b]		; C7 BC
	sed		; F8
	bit $12.b		; 24 12
	stz $0A6F.w,X		; 9E 6F 0A
	brk $F6.b		; 00 F6
	bne  45.b		; D0 2D
	cmp ($0A.b),Y		; D1 0A
	dec $2D.b,X		; D6 2D
	cmp [$00.b],Y		; D7 00
	beq  34.b		; F0 22
	.db $82, $E1, $18		; 82 E1 18
	asl $F1.b,X		; 16 F1
	asl $2D4D.w		; 0E 4D 2D
	and $D4.b,S		; 23 D4
	tsb $17A1.w		; 0C A1 17
	pea $4FF6.w		; F4 F6 4F
	rts		; 60

	cpx #$712A.w		; E0 2A 71
	and $1692.w		; 2D 92 16
	sbc ($8E.b),Y		; F1 8E
	ora ($0E.b),Y		; 11 0E
	eor $332D.w,X		; 5D 2D 33
	dex		; CA
	trb $7AF4.w		; 1C F4 7A
	clv		; B8
	inc $5F.b,X		; F6 5F
	jsr $2EE0.w		; 20 E0 2E
	ldx #$A32D.w		; A2 2D A3
	asl A		; 0A
	adc $6DAA.w		; 6D AA 6D
	asl $08AE.w,X		; 1E AE 08
	inx		; E8
	and $B2FEFE.l		; 2F FE FE B2
	and $0AB3.w		; 2D B3 0A
	adc $6DBA.w		; 6D BA 6D
	php		; 08
	inx		; E8
	pld		; 2B
	asl A		; 0A
	brk $FE.b		; 00 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	cpy $00.b		; C4 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xba		; EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	sbc $9F3483.l,X		; FF 83 34 9F
	bit $B3.b,X		; 34 B3
	bit $94.b,X		; 34 94
	bit $9C.b,X		; 34 9C
	bit $B2.b,X		; 34 B2
	bit $EC.b,X		; 34 EC
	sbc $F8DAFF.l,X		; FF FF DA F8
	ora $E12DE0.l		; 0F E0 2D E1
	and $2DE2.w		; 2D E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $2D.b		; E5 2D
	inc $2D.b		; E6 2D
	sbc [$FE.b]		; E7 FE
	sbc $F8E62D.l,X		; FF 2D E6 F8
	ora #$C0.b		; 09 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $C3.b,X		; 34 C3
	and $A434F8.l,X		; 3F F8 34 A4
	bit $AC.b,X		; 34 AC
	bit $C2.b,X		; 34 C2
	bit $EC.b,X		; 34 EC
	cpy #$0FF8.w		; C0 F8 0F
	beq  45.b		; F0 2D
	sbc ($FF.b),Y		; F1 FF
	cmp [$2D.b],Y		; D7 2D
	sbc ($2D.b)		; F2 2D
	sbc ($2D.b,S),Y		; F3 2D
	pea $F52D.w		; F4 2D F5
	and $2DF6.w		; 2D F6 2D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	asl A		; 0A
	inc $7FF8.w,X		; FE F8 7F
	sbc $2D07E3.l,X		; FF E3 07 2D
	eor #$2D.b		; 49 2D
	sta $2D.b		; 85 2D
	ora $4D2D.w		; 0D 2D 4D
	and $6A23.w		; 2D 23 6A
	adc [$F7.b]		; 67 F7
	sbc $2D862D.l,X		; FF 2D 86 2D
	rti		; 40

	.db $62, $F8, $2C		; 62 F8 2C
	ora [$2D.b],Y		; 17 2D
	eor $952D.w,Y		; 59 2D 95
	and $2D1D.w		; 2D 1D 2D
	eor $F82D.w,X		; 5D 2D F8
	sbc $C833.w,X		; FD 33 C8
	adc [$2D.b],Y		; 77 2D
	stx $2D.b,Y		; 96 2D
	bvc  34.b		; 50 22
	sed		; F8
	bmi -92.b		; 30 A4
	and $2DA5.w		; 2D A5 2D
	sbc $2DA6FF.l,X		; FF FF A6 2D
	lda [$2D.b]		; A7 2D
	tay		; A8
	and $2DA9.w		; 2D A9 2D
	tax		; AA
	and $2DAB.w		; 2D AB 2D
	cpy $2D.b		; C4 2D
	cmp $2D.b		; C5 2D
	lda $2DCAFF.l,X		; BF FF CA 2D
	wai		; CB
	and $2DC2.w		; 2D C2 2D
	cmp $B4.b,S		; C3 B4
	sed		; F8
	bit $B4.b		; 24 B4
	and $2DB5.w		; 2D B5 2D
	ldx $2D.b,Y		; B6 2D
	lda [$FF.b],Y		; B7 FF
	sbc $2DB82D.l,X		; FF 2D B8 2D
	lda $BA2D.w,Y		; B9 2D BA
	and $2DBB.w		; 2D BB 2D
	pei ($2D.b)		; D4 2D
	cmp $2D.b,X		; D5 2D
	phx		; DA
	and $F7DB.w		; 2D DB F7
	sed		; F8
	and $2DD2.w		; 2D D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	jsr $2D6D.w		; 20 6D 2D
	bra  12.b		; 80 0C
	bit $2D.b		; 24 2D
	tsb $E3C7.w		; 0C C7 E3
	and $200E.w		; 2D 0E 20
	cop $F4.b		; 02 F4
	eor $072D.w		; 4D 2D 07
	cpy $1120.w		; CC 20 11
	jsr $812D.w		; 20 2D 81
	nop		; EA
	pea $0EF6.w		; F4 F6 0E
	inc $78.b,X		; F6 78
	sed		; F8
	adc $BA.b		; 65 BA
	sed		; F8
	inc A		; 1A
	adc $902D.w,X		; 7D 2D 90
	tsb $2D34.w		; 0C 34 2D
	trb $C78C.w		; 1C 8C C7
	cpy #$F412.w		; C0 12 F4
	eor $172D.w,X		; 5D 2D 17
	cmp ($23.b)		; D2 23
	rti		; 40

	bmi  45.b		; 30 2D
	sta ($EA.b),Y		; 91 EA
	pea $1EF6.w		; F4 F6 1E
	ldy $F8FF.w		; AC FF F8
	adc $7A.b,X		; 75 7A
	sed		; F8
	asl $FA00.w,X		; 1E 00 FA
	iny		; C8
	and $2DC9.w		; 2D C9 2D
	ldy $AD.b,X		; B4 AD
	lda $FE.b,X		; B5 FE
	xce		; FB
	lda $F800.w		; AD 00 F8
	and [$D8.b],Y		; 37 D8
	and $2DD9.w		; 2D D9 2D
	ldy $AD.b		; A4 AD
	lda $AD.b		; A5 AD
	brk $F8.b		; 00 F8
	tsa		; 3B
	lsr $2D.b		; 46 2D
	pla		; 68
	eor ($FD.b),Y		; 51 FD
	and $F22F.w		; 2D 2F F2
	brk $F8.b		; 00 F8
	phd		; 0B
	inc $1FF8.w,X		; FE F8 1F
	brk $F8.b		; 00 F8
	phd		; 0B
	lsr $2D.b,X		; 56 2D
	sei		; 78
	and $AAA8.w		; 2D A8 AA
	and $F800F2.l,X		; 3F F2 00 F8
	phd		; 0B
	inc $23F8.w,X		; FE F8 23
	php		; 08
	sbc ($FC.b)		; F2 FC
	inc $F800.w		; EE 00 F8
	and ($AA.b,S),Y		; 33 AA
	asl A		; 0A
	php		; 08
	sbc ($FC.b)		; F2 FC
	inc $F800.w		; EE 00 F8
	and $FCF8FE.l		; 2F FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $BFF8.w,X		; FE F8 BF
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xba		; EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	eor [$88.b]		; 47 88
	bit $9F.b,X		; 34 9F
	bit $B2.b,X		; 34 B2
	jsr ($9CF2.w,X)		; FC F2 9C
	cpx #$F8FF.w		; E0 FF F8
	nop		; EA
	phx		; DA
	sed		; F8
	ora $2DE0.w		; 0D E0 2D
	sbc ($2D.b,X)		; E1 2D
.ACCU 8
	sep #$2D		; E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $BF.b		; E4 BF
	sbc $2DE52D.l,X		; FF 2D E5 2D
	inc $2D.b		; E6 2D
	sbc [$2D.b]		; E7 2D
	inc $F8.b		; E6 F8
	ora #$C0.b		; 09 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	ora $AD3421.l,X		; 1F 21 34 AD
	bit $AF.b,X		; 34 AF
	bit $C2.b,X		; 34 C2
	jsr ($ACF2.w,X)		; FC F2 AC
	.db $82, $FF, $F8		; 82 FF F8
	nop		; EA
	cpy #$0DF8.w		; C0 F8 0D
	beq  45.b		; F0 2D
	sbc ($2D.b),Y		; F1 2D
	sbc ($2D.b)		; F2 2D
	sbc ($7F.b,S),Y		; F3 7F
	sbc $F42D.w,X		; FD 2D F4
	and $2DF5.w		; 2D F5 2D
	inc $2D.b,X		; F6 2D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	asl A		; 0A
	inc $7FF8.w,X		; FE F8 7F
	phk		; 4B
	and $2D86.w		; 2D 86 2D
	sbc $FF.b,S		; E3 FF
	pha		; 48
	and $6E65.w		; 2D 65 6E
	phd		; 0B
	and $2D81.w		; 2D 81 2D
	ora ($2D.b,X)		; 01 2D
	asl $2D.b		; 06 2D
	eor $E3FD.w		; 4D FD E3
	and $604F.w		; 2D 4F 60
	sed		; F8
	rol A		; 2A
	tad		; 5B
	and $2D96.w		; 2D 96 2D
	cli		; 58
	and $CE75.w		; 2D 75 CE
	tas		; 1B
	sbc $912DFD.l,X		; FF FD 2D 91
	and $2D11.w		; 2D 11 2D
	asl $2D.b,X		; 16 2D
	eor $5F2D.w,X		; 5D 2D 5F
	jsr $2EF8.w		; 20 F8 2E
	tay		; A8
	and $2DA9.w		; 2D A9 2D
	sbc $2DA6FF.l,X		; FF FF A6 2D
	lda [$2D.b]		; A7 2D
	ldy $2D.b		; A4 2D
	lda $2D.b		; A5 2D
	tax		; AA
	and $2DAB.w		; 2D AB 2D
	cpy $2D.b		; C4 2D
	cmp $2D.b		; C5 2D
	lda $2DCAFF.l,X		; BF FF CA 2D
	wai		; CB
	and $2DC2.w		; 2D C2 2D
	cmp $B6.b,S		; C3 B6
	sed		; F8
	bit $B8.b		; 24 B8
	and $2DB9.w		; 2D B9 2D
	ldx $2D.b,Y		; B6 2D
	lda [$FF.b],Y		; B7 FF
	sbc $2DB42D.l,X		; FF 2D B4 2D
	lda $2D.b,X		; B5 2D
	tsx		; BA
	and $2DBB.w		; 2D BB 2D
	pei ($2D.b)		; D4 2D
	cmp $2D.b,X		; D5 2D
	phx		; DA
	and $37DB.w		; 2D DB 37
	inc $2D.b		; E6 2D
	cmp ($2D.b)		; D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	jsr $0C63.w		; 20 63 0C
	adc [$0C.b]		; 67 0C
	adc $FC.b,S		; 63 FC
	asl $4E20.w		; 0E 20 4E
	pea $CE00.w		; F4 00 CE
	ora [$2D.b]		; 07 2D
	lsr $2D.b		; 46 2D
	adc $2D85CC.l		; 6F CC 85 2D
	phd		; 0B
	and $8283.w		; 2D 83 82
	sed		; F8
	jsl $770C73.l		; 22 73 0C 77
	bpl -29.b		; 10 E3
	tsb $5EC0.w		; 0C C0 5E
	pea $CC10.w		; F4 10 CC
	ora [$7F.b],Y		; 17 7F
	ora $2D562D.l		; 0F 2D 56 2D
	sta $2D.b,X		; 95 2D
	tas		; 1B
	and $F893.w		; 2D 93 F8
	beq  38.b		; F0 26
	ldx #$A32D.w		; A2 2D A3
	and $6D0ADF.l,X		; 3F DF 0A 6D
	tax		; AA
	adc $2DC0.w		; 6D C0 2D
	cmp ($08.b,X)		; C1 08
	dec $2D.b		; C6 2D
	cmp [$BE.b]		; C7 BE
	beq  44.b		; F0 2C
	cmp $CF.b,S		; C3 CF
	lda ($2D.b)		; B2 2D
	lda ($0A.b,S),Y		; B3 0A
	adc $6DBA.w		; 6D BA 6D
	bne  45.b		; D0 2D
	cmp ($57.b),Y		; D1 57
	eor $08.b,X		; 55 08
	dec $2D.b,X		; D6 2D
	cmp [$9E.b],Y		; D7 9E
	inx		; E8
	txa		; 8A
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $60F8.w,X		; FE F8 60
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EB.b		; 00 EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	sbc $9F3467.l,X		; FF 67 34 9F
	bit $9C.b,X		; 34 9C
	bit $94.b,X		; 34 94
	bit $9E.b,X		; 34 9E
	bit $B1.b,X		; 34 B1
	bit $B2.b,X		; 34 B2
	inc $FF.b,X		; F6 FF
	sbc $0BF8DA.l,X		; FF DA F8 0B
	cpx #$E12D.w		; E0 2D E1
	and $2DE2.w		; 2D E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $2D.b		; E5 2D
	inc $2D.b		; E6 2D
	sbc $E7FF.w,X		; FD FF E7
	and $F8E6.w		; 2D E6 F8
	ora #$C0.b		; 09 C0
	bit $A0.b,X		; 34 A0
	bit $A8.b,X		; 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $FF.b,X		; 34 FF
	cpx $34AC.w		; EC AC 34
	ldy $34.b		; A4 34
	ldx $C134.w		; AE 34 C1
	bit $C2.b,X		; 34 C2
	inc $C0.b,X		; F6 C0
	sed		; F8
	phd		; 0B
	beq  -1.b		; F0 FF
	eor $2DF12D.l,X		; 5F 2D F1 2D
	sbc ($2D.b)		; F2 2D
	sbc ($2D.b,S),Y		; F3 2D
	pea $F52D.w		; F4 2D F5
	and $2DF6.w		; 2D F6 2D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	asl A		; 0A
	sbc $F8FEF8.l,X		; FF F8 FE F8
	adc $802D64.l,X		; 7F 64 2D 80
	and $2D86.w		; 2D 86 2D
	jmp ($0A6E.w)		; 6C 6E 0A
	and $B168.w		; 2D 68 B1
	adc $F42E2D.l,X		; 7F 2D 2E F4
	adc ($62.b,X)		; 61 62
	sed		; F8
	bit $2D74.w		; 2C 74 2D
	bcc  45.b		; 90 2D
	stx $2D.b,Y		; 96 2D
	jmp ($D8FC.w,X)		; 7C FC D8
	cpy $2D1A.w		; CC 1A 2D
	sei		; 78
	and $F43E.w		; 2D 3E F4
	adc ($22.b),Y		; 71 22
	sed		; F8
	bmi  -1.b		; 30 FF
	sbc $A46DA5.l,X		; FF A5 6D A4
	adc $6DA7.w		; 6D A7 6D
	ldx $6D.b		; A6 6D
	lda #$6D.b		; A9 6D
	tay		; A8
	adc $2DAA.w		; 6D AA 2D
	plb		; AB
	and $FBFF.w		; 2D FF FB
	cpy $2D.b		; C4 2D
	cmp $2D.b		; C5 2D
	dex		; CA
	and $2DCB.w		; 2D CB 2D
.ACCU 16
	rep #$2D		; C2 2D
	cmp $B4.b,S		; C3 B4
	sed		; F8
	bit $B5.b		; 24 B5
	adc $FFB4.w		; 6D B4 FF
	sbc $6DB76D.l,X		; FF 6D B7 6D
	ldx $6D.b,Y		; B6 6D
	lda $B86D.w,Y		; B9 6D B8
	adc $2DBA.w		; 6D BA 2D
	tyx		; BB
	and $2DD4.w		; 2D D4 2D
	cmp $7F.b,X		; D5 7F
	sbc $2D.b,S		; E3 2D
	phx		; DA
	and $2DDB.w		; 2D DB 2D
	cmp ($2D.b)		; D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	jsr $040C.w		; 20 0C 04
	lsr $1F.b		; 46 1F
	lda $2D.b,S		; A3 2D
	sta $2D.b		; 85 2D
	phd		; 0B
	and $D483.w		; 2D 83 D4
	ora $F6.b,S		; 03 F6
	sbc ($8F.b),Y		; F1 8F
	brk $F8.b		; 00 F8
	and $041C.w		; 2D 1C 04
	lsr $2D.b,X		; 56 2D
	sta $2D.b,X		; 95 2D
	tas		; 1B
	and $D193.w		; 2D 93 D1
	sbc $F613C8.l,X		; FF C8 13 F6
	brk $F8.b		; 00 F8
	and ($A8.b),Y		; 31 A8
	and $2DA9.w		; 2D A9 2D
	ldy $2D.b		; A4 2D
	lda $2D.b		; A5 2D
	sbc [$FF.b],Y		; F7 FF
	ldx $2D.b		; A6 2D
	lda [$2D.b]		; A7 2D
	brk $F8.b		; 00 F8
	and ($B8.b,S),Y		; 33 B8
	and $2DB9.w		; 2D B9 2D
	ldy $2D.b,X		; B4 2D
	lda $2D.b,X		; B5 2D
	ldx $2D.b,Y		; B6 2D
	eor $15.b,X		; 55 15
	lda [$2D.b],Y		; B7 2D
	brk $F8.b		; 00 F8
	and $FCF8FE.l		; 2F FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $C2F8.w,X		; FE F8 C2
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xba		; EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	cmp [$A3.b]		; C7 A3
	bit $9F.b,X		; 34 9F
	bit $9E.b,X		; 34 9E
	sed		; F8
	lda ($34.b)		; B2 34
	lda ($F4.b),Y		; B1 F4
	sbc $F8DAFF.l,X		; FF FF DA F8
	ora $E12DE0.l		; 0F E0 2D E1
	and $2DE2.w		; 2D E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $2D.b		; E5 2D
	inc $2D.b		; E6 2D
	sbc [$FE.b]		; E7 FE
	adc $F8E62D.l,X		; 7F 2D E6 F8
	ora #$34C0.w		; 09 C0 34
	ldy #$A834.w		; A0 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $AE.b,X		; 34 AE
	bit $F8FA.w,X		; 3C FA F8
.ACCU 16
.INDEX 16
	rep #$34		; C2 34
	cmp ($F4.b,X)		; C1 F4
	cpy #$0FF8.w		; C0 F8 0F
	beq  45.b		; F0 2D
	sbc ($FF.b),Y		; F1 FF
	cmp [$2D.b],Y		; D7 2D
	sbc ($2D.b)		; F2 2D
	sbc ($2D.b,S),Y		; F3 2D
	pea $F52D.w		; F4 2D F5
	and $2DF6.w		; 2D F6 2D
	sbc [$C0.b],Y		; F7 C0
	sed		; F8
	asl A		; 0A
	inc $7FF8.w,X		; FE F8 7F
	sta $2D64FF.l		; 8F FF 64 2D
	sta $2D.b		; 85 2D
	adc $70.b		; 65 70
	tsb $072D.w		; 0C 2D 07
	and $2D47.w		; 2D 47 2D
	stx $FD.b		; 86 FD
	sed		; F8
	and $6440.w		; 2D 40 64
	sed		; F8
	rol $2D74.w		; 2E 74 2D
	sta $2D.b,X		; 95 2D
	adc $CC.b,X		; 75 CC
	trb $172D.w		; 1C 2D 17
	cmp $572DFF.l,X		; DF FF 2D 57
	and $2D96.w		; 2D 96 2D
	bvc  36.b		; 50 24
	sed		; F8
	and ($A9.b)		; 32 A9
	adc $6DA8.w		; 6D A8 6D
	lda [$6D.b]		; A7 6D
	ldx $6D.b		; A6 6D
	cmp $FF.b,S		; C3 FF
	lda $6D.b		; A5 6D
	ldy $FA.b		; A4 FA
	and $2DA7.w		; 2D A7 2D
	tay		; A8
	and $2DA9.w		; 2D A9 2D
	tax		; AA
	and $EFFF.w		; 2D FF EF
	plb		; AB
	and $2DC4.w		; 2D C4 2D
	cmp $2D.b		; C5 2D
	dex		; CA
	and $2DCB.w		; 2D CB 2D
.ACCU 16
	rep #$2D		; C2 2D
	cmp $AA.b,S		; C3 AA
	sed		; F8
	trb $FFB9.w		; 1C B9 FF
	sbc ($6D.b,X)		; E1 6D
	clv		; B8
	adc $6DB7.w		; 6D B7 6D
	ldx $6D.b,Y		; B6 6D
	lda $6D.b,X		; B5 6D
	ldy $FA.b,X		; B4 FA
	and $FFB7.w		; 2D B7 FF
	sbc $2DB82D.l,X		; FF 2D B8 2D
	lda $BA2D.w,Y		; B9 2D BA
	and $2DBB.w		; 2D BB 2D
	pei ($2D.b)		; D4 2D
	cmp $2D.b,X		; D5 2D
	phx		; DA
	and $17DB.w		; 2D DB 17
	jsl $2DD22D.l		; 22 2D D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	clc		; 18
	php		; 08
	and $08.b,S		; 23 08
	brk $DD.b		; 00 DD
	tsb $FA.b		; 04 FA
	pea $2D02.w		; F4 02 2D
	bra  -4.b		; 80 FC
	sbc ($42.b),Y		; F1 42
	tsb $6C.b		; 04 6C
	bit $2AF8.w,X		; 3C F8 2A
	php		; 08
	and ($08.b,S),Y		; 33 08
	tsb $A0.b		; 04 A0
	tad		; 5B
	plx		; FA
	pea $2D12.w		; F4 12 2D
	bcc  -4.b		; 90 FC
	sbc ($7C.b),Y		; F1 7C
	jsr ($2EF0.w,X)		; FC F0 2E
	sbc $FA00F9.l		; EF F9 00 FA
	iny		; C8
	and $08C9.w		; 2D C9 08
	sbc $C12DC0.l,X		; FF C0 2D C1
	php		; 08
	dec $2D.b		; C6 2D
	ply		; 7A
	cmp $F8B6C7.l		; CF C7 B6 F8
	bit $00.b		; 24 00
	plx		; FA
	cld		; D8
	and $08D9.w		; 2D D9 08
	sbc $D12DD0.l,X		; FF D0 2D D1
	eor [$55.b],Y		; 57 55
	php		; 08
	dec $2D.b,X		; D6 2D
	cmp [$96.b],Y		; D7 96
	inx		; E8
	txa		; 8A
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $58F8.w,X		; FE F8 58
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	xba		; EB
	sbc $FE2000.l,X		; FF 00 20 FE
	sed		; F8
	jsr ($F8FE.w,X)		; FC FE F8
	lsr $B0.b		; 46 B0
	bit $90.b,X		; 34 90
	bit $98.b,X		; 34 98
	bit $9A.b,X		; 34 9A
	bit $9D.b,X		; 34 9D
	ora $9F3463.l,X		; 1F 63 34 9F
	bit $92.b,X		; 34 92
	bit $97.b,X		; 34 97
	pea $FC91.w		; F4 91 FC
	txy		; 9B
	sty $FD.b		; 84 FD
	beq  -2.b		; F0 FE
	stz $DA34.w		; 9C 34 DA
	inc $2DE0.w,X		; FE E0 2D
	sbc ($2D.b,X)		; E1 2D
	sbc $2DE2F7.l,X		; FF F7 E2 2D
	sbc $2D.b,S		; E3 2D
	cpx $2D.b		; E4 2D
	sbc $2D.b		; E5 2D
	inc $2D.b		; E6 2D
	sbc [$2D.b]		; E7 2D
	cpy #$09F8.w		; C0 F8 09
	cpy #$FF34.w		; C0 34 FF
	sta $A834A0.l		; 8F A0 34 A8
	bit $AA.b,X		; 34 AA
	bit $AD.b,X		; 34 AD
	bit $AF.b,X		; 34 AF
	bit $A2.b,X		; 34 A2
	bit $A7.b,X		; 34 A7
	and ($42.b),Y		; 31 42
	pea $FCA1.w		; F4 A1 FC
	plb		; AB
	beq  -2.b		; F0 FE
	ldy $FFFF.w		; AC FF FF
	cpy #$F0FF.w		; C0 FF F0
	and $2DF1.w		; 2D F1 2D
	sbc ($2D.b)		; F2 2D
	sbc ($2D.b,S),Y		; F3 2D
	pea $F52D.w		; F4 2D F5
	and $2DF6.w		; 2D F6 2D
	plx		; FA
	sbc ($F7.b),Y		; F1 F7
	cpy #$0AF8.w		; C0 F8 0A
	inc $7FF8.w,X		; FE F8 7F
	rtl		; 6B

	and $2D4D.w		; 2D 4D 2D
	ora [$70.b]		; 07 70
	phd		; 0B
	and $318F.w		; 2D 8F 31
	sta $2D.b,S		; 83 2D
	lsr $862D.w		; 4E 2D 86
	inc $29.b,X		; F6 29
	plx		; FA
	and $3D.b,S		; 23 3D
	xce		; FB
	lsr $0F2D.w,X		; 5E 2D 0F
	and $E485.w		; 2D 85 E4
	inc $1BF8.w,X		; FE F8 1B
	tda		; 7B
	and $F15D.w		; 2D 5D F1
	sta $DC172D.l		; 8F 2D 17 DC
	tas		; 1B
	and $2D93.w		; 2D 93 2D
	lsr $962D.w,X		; 5E 2D 96
	and ($7E.b),Y		; 31 7E
	inc $39.b,X		; F6 39
	plx		; FA
	and ($F8.b,S),Y		; 33 F8
	bpl  45.b		; 10 2D
	ora $F6952D.l,X		; 1F 2D 95 F6
	sbc $F8FEE4.l,X		; FF E4 FE F8
	ora $A86DA9.l,X		; 1F A9 6D A8
	adc $2DC8.w		; 6D C8 2D
	cmp #$A82D.w		; C9 2D A8
	and $FFFF.w		; 2D FF FF
	lda #$AA2D.w		; A9 2D AA
	and $2DAB.w		; 2D AB 2D
	cpy $2D.b		; C4 2D
	cmp $2D.b		; C5 2D
	dex		; CA
	and $2DCB.w		; 2D CB 2D
.ACCU 16
	rep #$2D		; C2 2D
	inc $C3FF.w,X		; FE FF C3
	dec $F0.b,X		; D6 F0
	bit $B9.b		; 24 B9
	adc $6DB8.w		; 6D B8 6D
	cld		; D8
	and $2DD9.w		; 2D D9 2D
	clv		; B8
	and $2DB9.w		; 2D B9 2D
	tsx		; BA
	sbc $BB2DDF.l,X		; FF DF 2D BB
	and $2DD4.w		; 2D D4 2D
	cmp $2D.b,X		; D5 2D
	phx		; DA
	and $2DDB.w		; 2D DB 2D
	cmp ($2D.b)		; D2 2D
	cmp ($C0.b,S),Y		; D3 C0
	sed		; F8
	jsr $8C6F.w		; 20 6F 8C
	tsb $022D.w		; 0C 2D 02
	and $FC80.w		; 2D 80 FC
	sbc ($8A.b),Y		; F1 8A
	jsr ($0B4F.w,X)		; FC 4F 0B
	sbc $2ED2.w,X		; FD D2 2E
	and $F2F6.w		; 2D F6 F2
	plx		; FA
	lsr A		; 4A
	jmp $1C26F0.l		; 5C F0 26 1C
	and $2D12.w		; 2D 12 2D
	dec $B8.b		; C6 B8
	bcc  -4.b		; 90 FC
	sbc ($9A.b),Y		; F1 9A
	jsr ($CC5F.w,X)		; FC 5F CC
	rol $D02D.w,X		; 3E 2D D0
	sbc $FAF2F6.l,X		; FF F6 F2 FA
	phy		; 5A
	trb $2AF0.w		; 1C F0 2A
	ldy $AD2D.w		; AC 2D AD
	and $2DAE.w		; 2D AE 2D
	ldy #$EF2D.w		; A0 2D EF
	lda $2DA1.w,X		; BD A1 2D
	ldy $2D.b		; A4 2D
	lda $FE.b		; A5 FE
	sbc ($C0.b,S),Y		; F3 C0
	and $FEC1.w		; 2D C1 FE
	sbc ($C6.b,S),Y		; F3 C6
	and $FFC7.w		; 2D C7 FF
	cmp $22F8B8.l,X		; DF B8 F8 22
	ldy $BD2D.w,X		; BC 2D BD
	and $2DBE.w		; 2D BE 2D
	bcs  45.b		; B0 2D
	lda ($2D.b),Y		; B1 2D
	ldy $2D.b,X		; B4 2D
	lda $FE.b,X		; B5 FE
	sbc ($7B.b,S),Y		; F3 7B
	eor $D0.b,X		; 55 D0
	and $FED1.w		; 2D D1 FE
	sbc ($D6.b,S),Y		; F3 D6
	and $94D7.w		; 2D D7 94
	inx		; E8
	txa		; 8A
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	ora $00.b		; 05 00
	inc $56F8.w,X		; FE F8 56
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($D0.b,S),Y		; F3 D0
	and $57D1.w		; 2D D1 57
	eor $FE.b,X		; 55 FE
	sbc ($D6.b,S),Y		; F3 D6
	and $94D7.w		; 2D D7 94
	inx		; E8
	txa		; 8A
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $FCF8.w,X		; FE F8 FC
	inc $56F8.w,X		; FE F8 56
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0642.w		; 0C 42 06
	bcc -54.b		; 90 CA
	tya		; 98
	ora [$10.b]		; 07 10
	sec		; 38
	ora $41.b		; 05 41
	ora #$4240.w		; 09 40 42
	ora ($00.b,X)		; 01 00
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0C.b		; 00 0C
	cpy #$F511.w		; C0 11 F5
	sty $20.b		; 84 20
	plp		; 28
	brk $0D.b		; 00 0D
	rts		; 60

	dey		; 88
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $41A1.w		; 20 A1 41
	lda [$62.b],Y		; B7 62
	plp		; 28
	brk $00.b		; 00 00
	inx		; E8
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	rti		; 40

	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	cop $00.b		; 02 00
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
	brk $27.b		; 00 27
	cpy $00.b		; C4 00
	asl $98.b		; 06 98
	php		; 08
	bcc   8.b		; 90 08
	mvp $08,$02		; 44 02 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2A.b		; 00 2A
	bcs  34.b		; B0 22
	bit #$0842.w		; 89 42 08
	lda [$22.b],Y		; B7 22
	ora ($80.b),Y		; 11 80
	phd		; 0B
	jsr $8044.w		; 20 44 80
	ora #$0000.w		; 09 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $02.b		; 00 02
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	jsr $0000.w		; 20 00 00
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $4A.b		; 00 4A
	ora ($BC.b)		; 12 BC
	tay		; A8
	.db $62, $04, $22		; 62 04 22
	.db $42, $10		; 42 10
	.db $82, $84, $00		; 82 84 00
	rti		; 40

	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	sty $0080.w		; 8C 80 00
	brk $04.b		; 00 04
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	lda $FFBFFF.l,X		; BF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	dec $FFFF.w,X		; DE FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
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
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFE.l,X		; FF FE FF FD
	sbc [$FF.b],Y		; F7 FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc [$FF.b],Y		; F7 FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFEFF.l,X		; FF FF FE FF
	lda $FFFF5F.l,X		; BF 5F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFEFFF.l,X		; FF FF EF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFBF.l,X		; FF BF DF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FE77FD.l,X		; FF FD 77 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $EFFFDF.l,X		; FF DF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFE7FF.l		; EF FF E7 FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFDFFF.l,X		; FF FF DF DF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFB.l,X		; 7F FB FF FF
	inc $EFFF.w,X		; FE FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc [$F7.b],Y		; F7 F7
	xce		; FB
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEEFF.l,X		; FF FF EE FF
	cmp $FFDFFB.l,X		; DF FB DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	cmp $FFFFFF.l,X		; DF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFCF.l,X		; FF CF FF FF
	sbc $EFFFFF.l		; EF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFF7.l,X		; FF F7 EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFE.l,X		; FF FE BF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	plx		; FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFDF.l,X		; FF DF FF EF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $7FBF.w,X		; FE BF 7F
	sbc $F7DFFF.l,X		; FF FF DF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	lda $FFFFFF.l		; AF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $7F5FFF.l,X		; FF FF 5F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	dec $FEFF.w,X		; DE FF FE
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFBEF.l,X		; 7F EF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFD.l,X		; FF FD FE FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFEF.l,X		; FF EF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CFFFFF.l,X		; FF FF FF CF
	sbc [$FF.b],Y		; F7 FF
	sbc [$BF.b]		; E7 BF
	lda $7FFFFF.l,X		; BF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFED7F.l,X		; FF 7F ED FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc [$FF.b],Y		; F7 FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFF.w,X		; BD FF FF
	sbc $F7FFBF.l,X		; FF BF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $7FFF.w,X		; FE FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFCFF.l,X		; FF FF FC FF
	sbc $FFFF6F.l,X		; FF 6F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	dec $FFFF.w,X		; DE FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $FDFB.w,X		; FD FB FD
	xce		; FB
	sbc $BFFFBF.l,X		; FF BF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C100FF.l,X		; FF FF 00 C1
	cop $06.b		; 02 06
	ldy #$0108.w		; A0 08 01
	jsl $C0C2E1.l		; 22 E1 C2 C0
	brk $02.b		; 00 02
	tsb $0020.w		; 0C 20 00
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $91.b		; 00 91
	brk $6B.b		; 00 6B
	rti		; 40

	sta ($80.b,X)		; 81 80
	jsr $0094.w		; 20 94 00
	.db $82, $10, $80		; 82 10 80
	asl A		; 0A
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$60A7.w		; A0 A7 60
	ora $022D.w		; 0D 2D 02
	ora ($38.b)		; 12 38
	sta ($80.b,X)		; 81 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $90.b		; 04 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
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
	brk $AD.b		; 00 AD
	tsb $50.b		; 04 50
	.db $42, $2A		; 42 2A
	sty $1443.w		; 8C 43 14
	jsr $8004.w		; 20 04 80
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
	ora ($08.b,X)		; 01 08
	cop $82.b		; 02 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $06.b		; E4 06
	.db $82, $8D, $C1		; 82 8D C1
	eor #$1481.w		; 49 81 14
	cop $22.b		; 02 22
	tsb $C1.b		; 04 C1
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	brk $40.b		; 00 40
	ora ($41.b,X)		; 01 41
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $04.b		; 00 04
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	bra   0.b		; 80 00
	.db $82, $00, $40		; 82 00 40
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
	brk $08.b		; 00 08
	brk $42.b		; 00 42
	bit $98.b		; 24 98
	sta ($02.b,X)		; 81 02
	ora ($F1.b,X)		; 01 F1
	ldx #$4D0D.w		; A2 0D 4D
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	tsb $21.b		; 04 21
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	cop $02.b		; 02 02
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($20.b)		; 12 20
	and ($90.b)		; 32 90
	jsr $4201.w		; 20 01 42
	ora ($04.b,X)		; 01 04
	ora ($00.b,X)		; 01 00
	dey		; 88
	cop $04.b		; 02 04
	rti		; 40

	ora ($00.b,X)		; 01 00
	php		; 08
	eor ($00.b,X)		; 41 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $A8C4.w		; 0C C4 A8
	bne  68.b		; D0 44
	brk $80.b		; 00 80
	cli		; 58
	jmp $00B082.l		; 5C 82 B0 00
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	tsb $80.b		; 04 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	tsb $20.b		; 04 20
	jmp ($2282.w)		; 6C 82 22
	ora #$2000.w		; 09 00 20
	brk $20.b		; 00 20
	bne   0.b		; D0 00
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	jsr $0604.w		; 20 04 06
	cpx #$0A10.w		; E0 10 0A
	txa		; 8A
	ldy $02.b,X		; B4 02
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	rts		; 60

	brk $21.b		; 00 21
	ora ($02.b),Y		; 11 02
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	jsr $0000.w		; 20 00 00
	cop $00.b		; 02 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0200.w		; 09 00 02
	tsb $00.b		; 04 00
	rti		; 40

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
	bpl -128.b		; 10 80
	bvc  43.b		; 50 2B
	sta $01.b,S		; 83 01
	php		; 08
	rti		; 40

	mvp $00,$22		; 44 22 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	brk $01.b		; 00 01
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	jsr $1008.w		; 20 08 10
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $16.b		; 02 16
	beq  64.b		; F0 40
	rol A		; 2A
	cpy #$0442.w		; C0 42 04
	brk $14.b		; 00 14
	.db $62, $00, $08		; 62 00 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  65.b		; 80 41
	stx $1D.b,Y		; 96 1D
	trb $1C.b		; 14 1C
	dec $A000.w,X		; DE 00 A0
	plp		; 28
	mvp $88,$20		; 44 20 88
	bra   8.b		; 80 08
	pha		; 48
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	phd		; 0B
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	php		; 08
	brk $40.b		; 00 40
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
	cpy $E2.b		; C4 E2
	trb $00.b		; 14 00
	.db $82, $C0, $10		; 82 C0 10
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	.db $82, $0C, $05		; 82 0C 05
	sty $93.b		; 84 93
	bvc   4.b		; 50 04
	lda $3442.w		; AD 42 34
	stz $01.b		; 64 01
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	rti		; 40

	ora ($08.b,X)		; 01 08
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0040.w		; 20 40 00
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bne  12.b		; D0 0C
	cop $12.b		; 02 12
	tsb $89.b		; 04 89
	bvc -128.b		; 50 80
	eor ($00.b,X)		; 41 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $20.b		; 00 20
	bra  66.b		; 80 42
	bpl   0.b		; 10 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $FBFF9F.l,X		; FF 9F FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FA.b,X		; F6 FA
	sbc $FFFFFB.l,X		; FF FB FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFEFFB.l,X		; FF FB EF FF
	cmp $FFDEFF.l,X		; DF FF DE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFB.l,X		; FF FB FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $EFFDFF.l,X		; FF FF FD EF
	sbc $FFFEFE.l,X		; FF FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc [$7F.b],Y		; F7 7F
	xba		; EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	cmp $F77FFF.l,X		; DF FF 7F F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $7EFD.w,X		; BD FD 7E
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFDD.l,X		; FF DD FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FE5DB7.l,X		; FF B7 5D FE
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FEF7F.l,X		; FF 7F EF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FF7FF7.l,X		; FF F7 7F FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FF7FFC.l,X		; FF FC 7F FF
	inc $FDFF.w,X		; FE FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFF.w,X		; FD FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FF.b,X		; F5 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDDFFF.l,X		; FF FF DF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $F7FFEF.l,X		; FF EF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $2BFF.w,Y		; BE FF 2B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FF7.l,X		; FF F7 7F FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FB7FFF.l,X		; FF FF 7F FB
	adc $BFFFF7.l,X		; 7F F7 FF BF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFCFF.l,X		; FF FF FC FF
	inc $FBBF.w		; EE BF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FDF7FF.l,X		; FF FF F7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFEFFB.l,X		; FF FB EF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFD7EF.l,X		; FF EF D7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEF7FF.l,X		; FF FF F7 EE
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFEFFF.l,X		; FF FF EF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $AFFF.w,X		; FD FF AF
	sbc $FBFDFF.l,X		; FF FF FD FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	adc [$FF.b],Y		; 77 FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $DFFFFE.l,X		; FF FE FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b]		; E7 FF
	sbc $FFF9.w		; ED F9 FF
	lda $FFFDFF.l,X		; BF FF FD FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FEBFFF.l,X		; FF FF BF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b]		; E7 FF
	sbc $FFFFDB.l		; EF DB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFBFFD.l,X		; FF FD BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFA.l,X		; FF FA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $7FFDFB.l,X		; FF FB FD 7F
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
	lda $FBFFFF.l,X		; BF FF FF FB
	sbc $FFFFAF.l,X		; FF AF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $2002FF.l,X		; FF FF 02 20
	rol A		; 2A
	brk $1C.b		; 00 1C
	dec $73.b		; C6 73
	cpy $65.b		; C4 65
	ora $0004.w,Y		; 19 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	adc ($42.b)		; 72 42
	sbc ($20.b,X)		; E1 20
	ora $0280.w		; 0D 80 02
	beq  96.b		; F0 60
	php		; 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -128.b		; 30 80
	asl $A4.b		; 06 A4
	eor ($00.b)		; 52 00
	tsb $4A.b		; 04 4A
	pla		; 68
	tsb $A0.b		; 04 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc  33.b		; 90 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$0004.w		; A0 04 00
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
	and $4122.w		; 2D 22 41
	cmp $02.b,S		; C3 02
	brk $03.b		; 00 03
	bpl -124.b		; 10 84
	ora ($09.b),Y		; 11 09
	eor ($00.b,X)		; 41 00
	brk $02.b		; 00 02
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $50.b		; 24 50
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
	.db $82, $05, $25		; 82 05 25
	bvc   4.b		; 50 04
	bra   8.b		; 80 08
	ldy $9800.w		; AC 00 98
	ora #$0110.w		; 09 10 01
	tsb $22.b		; 04 22
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($5A.b,X)		; 81 5A
	eor ($53.b,S),Y		; 53 53
	cpx #$0410.w		; E0 10 04
	cop $20.b		; 02 20
	brk $01.b		; 00 01
	rti		; 40

	php		; 08
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	ora ($10.b,X)		; 01 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	cli		; 58
	bvs -57.b		; 70 C7
	eor $91.b,S		; 43 91
	lda ($91.b,X)		; A1 91
	and $28.b		; 25 28
	rti		; 40

	cpy #$C301.w		; C0 01 C3
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	eor ($CC.b,S),Y		; 53 CC
	ora $90.b,X		; 15 90
	adc ($01.b,X)		; 61 01
	pha		; 48
	brk $A2.b		; 00 A2
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1004.w		; 20 04 10
	bvc   1.b		; 50 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $10.b		; 00 10
	cpy #$0230.w		; C0 30 02
	dey		; 88
	php		; 08
	asl $60.b		; 06 60
	bcc   8.b		; 90 08
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jmp $0000.w		; 4C 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($20.b,X)		; 21 20
	bit #$8503.w		; 89 03 85
	ora ($08.b,X)		; 01 08
	ora $2000.w,X		; 1D 00 20
	pha		; 48
	php		; 08
	ora ($40.b)		; 12 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $05.b		; 04 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($00.b),Y		; 51 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	php		; 08
	tsb $16.b		; 04 16
	trb $10.b		; 14 10
	bvc   6.b		; 50 06
	clc		; 18
	lda ($04.b),Y		; B1 04
	tsb $1A.b		; 04 1A
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	bpl   0.b		; 10 00
	rti		; 40

	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	jsr $2008.w		; 20 08 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $22.b,S		; A3 22
	tsb $10.b		; 04 10
	lda #$0010.w		; A9 10 00
	cop $62.b		; 02 62
	jsr $0482.w		; 20 82 04
	jsr $0840.w		; 20 40 08
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

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
	ora ($26.b)		; 12 26
	brk $50.b		; 00 50
	sec		; 38
	stp		; DB
	bcs  32.b		; B0 20
	brk $00.b		; 00 00
	lsr $08.b,X		; 56 08
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $91.b		; 00 91
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
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
	brk $00.b		; 00 00
	plp		; 28
	rep #$02		; C2 02
	sta $2E.b,S		; 83 2E
	and ($06.b,X)		; 21 06
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra -118.b		; 80 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($04.b)		; 52 04
	php		; 08
	cop $18.b		; 02 18
	bpl  40.b		; 10 28
	brk $8A.b		; 00 8A
	clc		; 18
	dey		; 88
	brk $0A.b		; 00 0A
	bit $02.b		; 24 02
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	ora ($00.b,X)		; 01 00
	ora ($80.b,X)		; 01 80
	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	rts		; 60

	bne  80.b		; D0 50
	tay		; A8
	sty $74.b		; 84 74
	ldy #$4800.w		; A0 00 48
	brk $10.b		; 00 10
	sec		; 38
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBDFEF.l,X		; FF EF DF FB
	sbc $FFFF9F.l,X		; FF 9F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDBE.l,X		; FF BE FD FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BFEFF.l,X		; FF FF FE 7B
	sbc $FBFFFE.l,X		; FF FE FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFE.l,X		; FF FE FF 7F
	adc $FFFDF5.l		; 6F F5 FD FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFF7F.l,X		; FF 7F FF BF
	xce		; FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFDF.l,X		; FF DF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFA.l,X		; FF FA FF FF
	sbc [$FF.b],Y		; F7 FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $DFFFFF.l,X		; DF FF FF DF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFBFFD.l,X		; FF FD BF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $7FFF.w,X		; FD FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFB.l,X		; FF FB FF F7
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xba		; EB
	sbc $F7FF.w,X		; FD FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7DFEFF.l,X		; FF FF FE 7D
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFF3F.l,X		; FF 3F FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l		; CF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEDFDF.l,X		; FF DF DF FE
	sbc $FFDBFF.l,X		; FF FF DB FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFBF.l,X		; FF BF FF FF
	inc $BF.b,X		; F6 BF
	sbc [$FF.b]		; E7 FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	inc $FBFF.w,X		; FE FF FB
	sbc $FFFB.w,X		; FD FB FF
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	inc $F7FD.w,X		; FE FD F7
	sbc $EFFFBA.l,X		; FF BA FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF7FF.l,X		; FF FF F7 7F
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $EFEFFD.l,X		; 7F FD EF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFB.w,X		; FE FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF9FF.l,X		; FF FF F9 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFDFF.l		; EF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	lda $FDFFFF.l,X		; BF FF FF FD
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFBFBF.l,X		; FF BF BF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FE.l,X		; FF FE F7 FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFEFD.l,X		; FF FD FE FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEDC.l,X		; FF DC FE FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFBFFF.l,X		; FF FF BF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3FEFFF.l,X		; FF FF EF 3F
	cmp $FEDFFF.l,X		; DF FF DF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7BF.l,X		; FF BF F7 FF
	cmp $FFFFFD.l,X		; DF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sta [$FF.b],Y		; 97 FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFBF.l,X		; FF BF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $79FFFE.l,X		; FF FE FF 79
	sbc $FBDFFF.l		; EF FF DF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDDF.l,X		; FF DF FD FF
	sbc $FF9FFF.l		; EF FF 9F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $064420.l,X		; FF 20 44 06
	asl $60.b		; 06 60
	adc #$2048.w		; 69 48 20
	mvn $00,$24		; 54 24 00
	.db $42, $02		; 42 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	rti		; 40

	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cmp $20.b		; C5 20
	sty $28.b		; 84 28
	ora $4496.w		; 0D 96 44
	sty $07.b,X		; 94 07
	ora $0023.w		; 0D 23 00
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	rep #$00		; C2 00
	ora #$0C30.w		; 09 30 0C
	iny		; C8
	cop $81.b		; 02 81
	jsr $0409.w		; 20 09 04
	dey		; 88
	asl $32.b		; 06 32
	rts		; 60

	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	eor ($80.b,X)		; 41 80
	trb $22.b		; 14 22
	sty $0472.w		; 8C 72 04
	bpl   0.b		; 10 00
	bcc   0.b		; 90 00
	brk $80.b		; 00 80
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	plp		; 28
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0021.w		; 20 21 00
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
	brk $40.b		; 00 40
	lsr A		; 4A
	inc A		; 1A
	ldx $06.b,Y		; B6 06
	brk $04.b		; 00 04
	asl $43.b,X		; 16 43
	brk $07.b		; 00 07
	and ($80.b,X)		; 21 80
	tsb $10.b		; 04 10
	cop $01.b		; 02 01
	rti		; 40

	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	tsb $00.b		; 04 00
	phd		; 0B
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bcc   0.b		; 90 00
	lda $4C0840.l,X		; BF 40 08 4C
	sbc $27.b,S		; E3 27
	adc $0021.w,Y		; 79 21 00
	bra  20.b		; 80 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra   4.b		; 80 04
	php		; 08
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
	brk $20.b		; 00 20
	rti		; 40

	jsr $7E00.w		; 20 00 7E
	cpy $0606.w		; CC 06 06
	cmp #$004B.w		; C9 4B 00
	jsl $040811.l		; 22 11 08 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $09.b		; 00 09
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $40.b		; 00 40
	mvp $11,$64		; 44 64 11
	trb $688B.w		; 1C 8B 68
	brk $02.b		; 00 02
	bra   1.b		; 80 01
	and ($29.b,X)		; 21 29
	jsr $00C0.w		; 20 C0 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($C6.b),Y		; 11 C6
	pla		; 68
	ora $0806.w,Y		; 19 06 08
	bit $0401.w,X		; 3C 01 04
	lsr A		; 4A
	txa		; 8A
	rti		; 40

	rti		; 40

	rti		; 40

	pha		; 48
	php		; 08
	bra   0.b		; 80 00
	brk $60.b		; 00 60
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
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
	brk $09.b		; 00 09
	.db $82, $28, $50		; 82 28 50
	bmi 101.b		; 30 65
	sty $48.b		; 84 48
	php		; 08
	ldy #$0100.w		; A0 00 01
	jsr $0600.w		; 20 00 06
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4800.w		; 20 00 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cop $40.b		; 02 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	ora ($40.b)		; 12 40
	brk $C5.b		; 00 C5
	ora $00.b		; 05 00
	ora $B8.b		; 05 B8
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	brk $0A.b		; 00 0A
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
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	adc $AD.b,X		; 75 AD
	lda ($A6.b)		; B2 A6
	cop $34.b		; 02 34
	eor ($38.b,X)		; 41 38
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	tsb $80.b		; 04 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rti		; 40

	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	plp		; 28
	lda ($29.b)		; B2 29
	.db $42, $40		; 42 40
	rts		; 60

	bra   6.b		; 80 06
	sta [$08.b]		; 87 08
	jsr $0400.w		; 20 00 04
	php		; 08
	plp		; 28
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
	brk $04.b		; 00 04
	tsb $40.b		; 04 40
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	tsb $CA.b		; 04 CA
	eor $07.b,S		; 43 07
	.db $42, $20		; 42 20
	brk $8C.b		; 00 8C
	jsr $4084.w		; 20 84 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bpl   0.b		; 10 00
	brk $42.b		; 00 42
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $8238.w		; 2C 38 82
	pla		; 68
	sta ($24.b)		; 92 24
	jmp ($0804.w,X)		; 7C 04 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora $24.b,S		; 03 24
	brk $40.b		; 00 40
	bra   8.b		; 80 08
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
	brk $23.b		; 00 23
	dey		; 88
	bvc  64.b		; 50 40
	asl $01.b		; 06 01
	rts		; 60

	and #$8210.w		; 29 10 82
	cop $06.b		; 02 06
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFBF.w,X		; FE BF FF
	cmp $FDFFEF.l,X		; DF EF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFD.l,X		; FF FD FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFD7.l,X		; FF D7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $F7FF.w,X		; FE FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFB.l,X		; FF FB 7F FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	ldx $FEEF.w,Y		; BE EF FE
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $7FFBFF.l,X		; FF FF FB 7F
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFD.l,X		; FF FD FE FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFBFDF.l,X		; FF DF BF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFD.l,X		; FF FD FF EF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $DFFFFF.l,X		; FF FF FF DF
	inc $B7FB.w,X		; FE FB B7
	adc $FFFBFF.l,X		; 7F FF FB FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $7FFFFF.l		; EF FF FF 7F
	sbc $FFF7F7.l,X		; FF F7 F7 FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFF9BF.l,X		; FF BF F9 FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFB.l,X		; FF FB EF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FDFB.w,X		; FE FB FD
	lda $FFFF7B.l,X		; BF 7B FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEDFF.l,X		; FF FF ED FF
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FBFD.w,X		; FD FD FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFA.l,X		; FF FA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $F7FFFF.l		; EF FF FF F7
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAFFFF.l,X		; FF FF FF FA
	sbc $FFBEFF.l,X		; FF FF BE FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFDFF.l,X		; FF FF FD BF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	lda $FFFEFF.l,X		; BF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF4.l,X		; FF F4 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFCFFE.l,X		; FF FE CF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFECE.l,X		; FF CE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	xce		; FB
	sbc $FFF7FF.l,X		; FF FF F7 FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7AFF.l,X		; FF FF 7A FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F9FFFF.l,X		; FF FF FF F9
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFF7DF.l,X		; FF DF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	xba		; EB
	sbc $FBDFFF.l,X		; FF FF DF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFF7F.l		; EF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFE7.l,X		; FF E7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFEFE.l,X		; FF FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDF6.l,X		; FF F6 FD FF
	sbc $FFADFF.l,X		; FF FF AD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	tyx		; BB
	sbc $FFFF.w,X		; FD FF FF
	sbc $FB7FEF.l,X		; FF EF 7F FB
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFB7.l,X		; FF B7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FD7FFF.l,X		; FF FF 7F FD
	sbc $FFFDFE.l,X		; FF FE FD FF
	and $FFFFFE.l,X		; 3F FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFEF.l,X		; FF EF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFEF.l,X		; FF EF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5D3008.l,X		; FF 08 30 5D
	bpl  25.b		; 10 19
	brk $04.b		; 00 04
	cmp ($16.b,X)		; C1 16
	brk $18.b		; 00 18
	tsb $41.b		; 04 41
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	jsr $0004.w		; 20 04 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	plp		; 28
	jsr $0402.w		; 20 02 04
	cli		; 58
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0202.w		; 20 02 02
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $40.b		; 00 40
	and $4709.w		; 2D 09 47
	bne   2.b		; D0 02
	bit #$A008.w		; 89 08 A0
	eor ($42.b,X)		; 41 42
	pha		; 48
	brk $02.b		; 00 02
	sty $40.b		; 84 40
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	tsb $80.b		; 04 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	php		; 08
	brk $40.b		; 00 40
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
	brk $2E.b		; 00 2E
	brk $20.b		; 00 20
	and $0208.w,X		; 3D 08 02
	.db $62, $80, $00		; 62 80 00
	clc		; 18
	mvn $00,$08		; 54 08 00
	mvn $80,$50		; 54 50 80
	brk $B0.b		; 00 B0
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
	bpl  32.b		; 10 20
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $80.b,X		; 15 80
	brk $83.b		; 00 83
	plp		; 28
	and ($24.b),Y		; 31 24
	lsr $C293.w,X		; 5E 93 C2
	tsb $01.b		; 04 01
	brk $08.b		; 00 08
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	cpy #$0204.w		; C0 04 02
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	brk $2C.b		; 00 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $04.b		; 00 04
	rep #$84		; C2 84
	ora ($A0.b,X)		; 01 A0
	sta $10.b		; 85 10
	beq   1.b		; F0 01
	brk $70.b		; 00 70
	cpx #$0000.w		; E0 00 00
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
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
	ora #$2000.w		; 09 00 20
	asl $04.b		; 06 04
	bit $040C.w		; 2C 0C 04
	rti		; 40

	brk $2C.b		; 00 2C
	bpl   1.b		; 10 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	php		; 08
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   8.b		; 30 08
	mvp $32,$08		; 44 08 32
	stz $00.b		; 64 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	php		; 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $48.b		; 00 48
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0040.w		; 20 40 00
	bit $08.b		; 24 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	trb $18.b		; 14 18
	ldy #$C714.w		; A0 14 C7
	bra  14.b		; 80 0E
	ora ($83.b)		; 12 83
	brk $28.b		; 00 28
	bit $02.b		; 24 02
	ora ($20.b),Y		; 11 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
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
	brk $B4.b		; 00 B4
	ora #$5C00.w		; 09 00 5C
	rti		; 40

	cmp ($05.b,X)		; C1 05
	asl $0040.w		; 0E 40 00
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	txa		; 8A
	trb $12.b		; 14 12
	trb $A0.b		; 14 A0
	sty $40.b		; 84 40
	ora #$4000.w		; 09 00 40
	bpl   2.b		; 10 02
	bpl   2.b		; 10 02
	php		; 08
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bit $20.b		; 24 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $51.b		; 00 51
	tsb $40.b		; 04 40
	dey		; 88
	asl A		; 0A
	tay		; A8
	asl $1800.w		; 0E 00 18
	pha		; 48
	bpl   2.b		; 10 02
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	tsb $10.b		; 04 10
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2004.w		; 20 04 20
	ora ($60.b,X)		; 01 60
	lda $40.b,S		; A3 40
	bit $7C.b,X		; 34 7C
	asl A		; 0A
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	jmp $8241.w		; 4C 41 82
	ldy $02.b		; A4 02
	pha		; 48
	sty $04.b		; 84 04
	jsl $000A00.l		; 22 00 0A 00
	tsb $50.b		; 04 50
	brk $40.b		; 00 40
	cpx #$0001.w		; E0 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	.db $82, $00, $15		; 82 00 15
	clv		; B8
	ora ($24.b),Y		; 11 24
	brk $09.b		; 00 09
	stx $02.b,Y		; 96 02
	cop $0A.b		; 02 0A
	ldy #$0011.w		; A0 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	txa		; 8A
	php		; 08
	brk $76.b		; 00 76
	stx $06.b		; 86 06
	rti		; 40

	tsb $10.b		; 04 10
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	inc $FFFD.w,X		; FE FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FF7FBF.l,X		; FF BF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FF7FFD.l,X		; FF FD 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $F7FF7E.l,X		; FF 7E FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7D.l,X		; FF 7D FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFBE.l,X		; FF BE FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	xce		; FB
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FEFEFE.l,X		; FF FE FE FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $EFFFFF.l,X		; BF FF FF EF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $F3FFDF.l,X		; DF DF FF F3
	adc $FEDE7F.l,X		; 7F 7F DE FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BDFBFF.l,X		; FF FF FB BD
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFDF.l,X		; FF DF FF EF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	inc $EFFF.w,X		; FE FF EF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFBFDF.l,X		; FF DF BF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FDBFFF.l,X		; FF FF BF FD
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	cmp $FFFFED.l,X		; DF ED FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DBFFFF.l,X		; FF FF FF DB
	sbc $FFFF.w,X		; FD FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFF.w,X		; FD FF BF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc [$FF.b],Y		; F7 FF
	inc $FFD7.w,X		; FE D7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFF7.l,X		; FF F7 BF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $BFFFFD.l		; EF FD FF BF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EDFFFF.l,X		; FF FF FF ED
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda [$FF.b],Y		; B7 FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	inc $FEEB.w,X		; FE EB FE
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $F7EFFF.l,X		; FF FF EF F7
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFD.l,X		; FF FD FE FF
	lda $FFFEFF.l,X		; BF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDDFFD.l,X		; FF FD DF FD
	sbc $FDFFFE.l,X		; FF FE FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FEFFEF.l,X		; FF EF FF FE
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFF7E.l,X		; FF 7E FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l		; EF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFAFE.l,X		; FF FE FA FF
	sbc $FFFEFE.l,X		; FF FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $F9DFFF.l,X		; FF FF DF F9
	xba		; EB
	sbc $FFFF7F.l		; EF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A4C004.l,X		; FF 04 C0 A4
	brk $04.b		; 00 04
	bpl  71.b		; 10 47
	asl A		; 0A
	tay		; A8
	bcc   8.b		; 90 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
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
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	sta $0E21.w		; 8D 21 0E
	pha		; 48
	plp		; 28
	adc [$12.b]		; 67 12
	brk $01.b		; 00 01
	brk $81.b		; 00 81
	bpl  17.b		; 10 11
	brk $40.b		; 00 40
	brk $04.b		; 00 04
	brk $58.b		; 00 58
	ora ($10.b),Y		; 11 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b),Y		; 11 04
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $48.b		; 00 48
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	rti		; 40

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
	brk $90.b		; 00 90
	tsb $02.b		; 04 02
	ora ($09.b,X)		; 01 09
	ora ($00.b),Y		; 11 00
	asl A		; 0A
	trb $0C.b		; 14 0C
	ora $030402.l		; 0F 02 04 03
	php		; 08
	php		; 08
	tsb $80.b		; 04 80
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	cop $00.b		; 02 00
	tsb $0004.w		; 0C 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cpx #$0201.w		; E0 01 02
	cpy $4030.w		; CC 30 40
	jsl $904203.l		; 22 03 42 90
	cop $00.b		; 02 00
	jsr $0000.w		; 20 00 00
	brk $08.b		; 00 08
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $02C0.w		; 20 C0 02
	cop $00.b		; 02 00
	php		; 08
	jsl $084080.l		; 22 80 40 08
	brk $2A.b		; 00 2A
	brk $40.b		; 00 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bpl   0.b		; 10 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plb		; AB
	sta $8A18.w,Y		; 99 18 8A
	rti		; 40

	trb $30.b		; 14 30
	cli		; 58
	cpx $0400.w		; EC 00 04
	brk $02.b		; 00 02
	cmp ($00.b,X)		; C1 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	bpl -124.b		; 10 84
	eor ($04.b),Y		; 51 04
	stz $8A.b		; 64 8A
	ora ($80.b)		; 12 80
	plp		; 28
	tsb $82.b		; 04 82
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	bpl   0.b		; 10 00
	cop $10.b		; 02 10
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	sta ($08.b,X)		; 81 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bcc   0.b		; 90 00
	inc A		; 1A
	ldy $34.b		; A4 34
	bit $03.b		; 24 03
	rti		; 40

	bit $00.b		; 24 00
	bra  19.b		; 80 13
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	pla		; 68
	bra  12.b		; 80 0C
	jsl $8090C0.l		; 22 C0 90 80
	eor $82.b,S		; 43 82
	.db $42, $40		; 42 40
	ldy #$0004.w		; A0 04 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	jsr $1000.w		; 20 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $22.b		; 02 22
	lsr A		; 4A
	ora $BA.b		; 05 BA
	ldy $08.b		; A4 08
	ora ($40.b,X)		; 01 40
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	mvp $81,$80		; 44 80 81
	ldx #$7814.w		; A2 14 78
	bcc   4.b		; 90 04
	ror $02.b		; 66 02
	cop $41.b		; 02 41
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
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
	and $10.b		; 25 10
	rti		; 40

	brk $90.b		; 00 90
	jmp $1242.w		; 4C 42 12
	jsr $2020.w		; 20 20 20
	rti		; 40

	cop $00.b		; 02 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $14.b		; 04 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	bpl -104.b		; 10 98
	ora #$2239.w		; 09 39 22
	bit $00.b		; 24 00
	dey		; 88
	.db $42, $06		; 42 06
	jsr $C080.w		; 20 80 C0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -96.b		; 10 A0
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rep #$C8		; C2 C8
	bpl   0.b		; 10 00
	jsl $00C204.l		; 22 04 C2 00
	rti		; 40

	and $00.b,S		; 23 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	trb $44.b		; 14 44
	bmi  16.b		; 30 10
	brk $10.b		; 00 10
	bra -118.b		; 80 8A
	.db $82, $10, $04		; 82 10 04
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ldx #$0800.w		; A2 00 08
	php		; 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	cop $12.b		; 02 12
	rol $12.b		; 26 12
	cpy #$4240.w		; C0 40 42
	bpl -124.b		; 10 84
	sty $00.b		; 84 00
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFE.l		; EF FE FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFE.l,X		; FF FE FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFEFFB.l,X		; 7F FB EF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $EFFFDF.l,X		; FF DF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $F7FFFD.l,X		; FF FD FF F7
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l		; EF FF EF FF
	sbc $DFDFFF.l,X		; FF FF DF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAFFFF.l,X		; FF FF FF FA
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $BFFFDF.l,X		; FF DF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFDBF.l,X		; FF BF FD DF
	sbc $FFFF.w		; ED FF FF
	sbc $FFEFFD.l,X		; FF FD EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFDEFF.l,X		; FF FF DE FF
	xce		; FB
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc #$FFFF.w		; E9 FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFEFF.l,X		; FF FF FE EF
	sbc $F9FFFE.l,X		; FF FE FF F9
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFEFF.l,X		; FF FF FE BF
	xce		; FB
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFD7FF.l,X		; FF FF D7 FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDBFFF.l,X		; FF FF BF FD
	sbc $BBFFFF.l,X		; FF FF FF BB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFED.l,X		; FF ED FF FF
	lda $FFFFFD.l,X		; BF FD FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFCB.l,X		; FF CB FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FF7F.l,X		; FF 7F FF F7
	ldx $FFFB.w,Y		; BE FB FF
	sbc $FFBBDF.l,X		; FF DF BB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	xce		; FB
	sbc $BF7FFF.l		; EF FF 7F BF
	sbc $FFFF.w,X		; FD FF FF
	sbc $EFFF.w,X		; FD FF EF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	tsx		; BA
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	adc [$FF.b],Y		; 77 FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	xce		; FB
	adc $FFFFFF.l		; 6F FF FF FF
	tyx		; BB
	dec $FFFF.w,X		; DE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $7EFFFB.l		; 6F FB FF 7E
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFBE.w,X		; FE BE FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFFFF.l,X		; FF FF FF AF
	sbc [$FF.b],Y		; F7 FF
	inc $FFFD.w,X		; FE FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D7FFFF.l,X		; FF FF FF D7
	sbc $FBFFFB.l,X		; FF FB FF FB
	sbc $FFDFFF.l,X		; FF FF DF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DBFFEF.l,X		; FF EF FF DB
	sbc $FFFDF7.l,X		; FF F7 FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFDFC.l,X		; 7F FC FD FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FECFFF.l,X		; FF FF CF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $8AC4FF.l,X		; FF FF C4 8A
	bpl -113.b		; 10 8F
	bvc -61.b		; 50 C3
	mvp $1B,$00		; 44 00 1B
	brk $88.b		; 00 88
	brk $40.b		; 00 40
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($D2.b)		; 12 D2
	rti		; 40

	bne  16.b		; D0 10
	rts		; 60

	bit $42.b		; 24 42
	rti		; 40

	.db $42, $04		; 42 04
	ora $00.b		; 05 00
	tsb $0006.w		; 0C 06 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	brk $30.b		; 00 30
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($44.b)		; 32 44
	plp		; 28
	stx $044C.w		; 8E 4C 04
	bmi  17.b		; 30 11
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $28.b		; 00 28
	brk $04.b		; 00 04
	plp		; 28
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3129.w		; 20 29 31
	bpl -107.b		; 10 95
	dec A		; 3A
	bpl -128.b		; 10 80
	ora $1280.w,X		; 1D 80 12
	bpl  96.b		; 10 60
	brk $04.b		; 00 04
	brk $10.b		; 00 10
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   2.b		; 10 02
	cpx $4A.b		; E4 4A
	tya		; 98
	bpl -96.b		; 10 A0
	rti		; 40

	ora [$40.b]		; 07 40
	sty $90.b		; 84 90
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	brk $02.b		; 00 02
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	eor ($65.b,X)		; 41 65
	cmp ($24.b)		; D2 24
	brk $41.b		; 00 41
	asl $0C.b		; 06 0C
	jsr $2202.w		; 20 02 22
	brk $04.b		; 00 04
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	ora ($41.b),Y		; 11 41
	sta $014381.l,X		; 9F 81 43 01
	tsb $0A.b		; 04 0A
	tsb $01.b		; 04 01
	bra  70.b		; 80 46
	tsb $10.b		; 04 10
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	jsr $0800.w		; 20 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	dey		; 88
	bpl   8.b		; 10 08
	clc		; 18
	nop		; EA
	brk $86.b		; 00 86
	brk $00.b		; 00 00
	.db $42, $10		; 42 10
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	sta ($80.b,X)		; 81 80
	cmp ($28.b)		; D2 28
	tsb $1041.w		; 0C 41 10
	jsl $202019.l		; 22 19 20 20
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $A0.b		; 04 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0000.w		; 1C 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$0640.w		; A0 40 06
	rts		; 60

	.db $62, $62, $08		; 62 62 08
	rep #$00		; C2 00
	cop $20.b		; 02 20
	ldy #$4801.w		; A0 01 48
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	sec		; 38
	cpy #$8120.w		; C0 20 81
	jsr $0003.w		; 20 03 00
	tsb $80.b		; 04 80
	eor ($09.b,X)		; 41 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $44.b		; 00 44
	cop $B1.b		; 02 B1
	and ($05.b,X)		; 21 05
	brk $20.b		; 00 20
	ora ($20.b,X)		; 01 20
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	lda ($50.b,X)		; A1 50
	php		; 08
	bra  70.b		; 80 46
	rti		; 40

	jsr $0040.w		; 20 40 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	brk $04.b		; 00 04
	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	jsr $1000.w		; 20 00 10
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
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($90.b,X)		; 01 90
	asl A		; 0A
	bra  32.b		; 80 20
	ora ($90.b,X)		; 01 90
	rti		; 40

	ora ($00.b,X)		; 01 00
	bvc  32.b		; 50 20
	php		; 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $94.b		; 00 94
	bcc   0.b		; 90 00
	phd		; 0B
	rol A		; 2A
	ora ($0E.b,X)		; 01 0E
	sty $02.b		; 84 02
	jsr $0440.w		; 20 40 04
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
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
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	.db $82, $80, $48		; 82 80 48
	ora ($D1.b,X)		; 01 D1
	ora ($04.b,S),Y		; 13 04
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	.db $42, $00		; 42 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CEFFFF.l,X		; FF FF FF CE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $A1FFFF.l,X		; FF FF FF A1
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $16FFFF.l,X		; FF FF FF 16
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $B7FFFF.l,X		; FF FF FF B7
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFDFE.l,X		; FF FE FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFCD.l,X		; FF CD FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	adc [$FF.b],Y		; 77 FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l		; EF FD FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	adc [$F7.b],Y		; 77 F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFF.w,X		; DD FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FF.b,X		; F5 FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFF.w,X		; FD FF FF
	sbc [$DF.b],Y		; F7 DF
	sbc $F6FFFF.l,X		; FF FF FF F6
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FE7DFF.l,X		; FF FF 7D FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $7EFFFF.l,X		; FF FF FF 7E
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFAFFF.l,X		; FF FF AF FF
	sbc $FFFFB7.l,X		; FF B7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDAFEF.l		; EF EF AF FD
	inc $FFF7.w,X		; FE F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFF7FE.l,X		; FF FE F7 FF
	sbc $7FDFFF.l,X		; FF FF DF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDBFEF.l,X		; FF EF BF FD
	sbc $DBF7FF.l,X		; FF FF F7 DB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFEDBF.l		; EF BF ED FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDE.l,X		; FF DE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFEFDF.l,X		; FF DF EF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF.b,X		; F5 FF
	sbc $FBEF.w,X		; FD EF FB
	inc $FFFF.w		; EE FF FF
	sbc $5FFFFF.l,X		; FF FF FF 5F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFEDFF.l,X		; 7F FF ED FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	cmp $FFFFB7.l,X		; DF B7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FFDFFF.l		; 6F FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FD7FFF.l,X		; FF FF 7F FD
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FF7F.l,X		; FF 7F FF F7
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $7FFEFF.l,X		; BF FF FE 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	lda $FFFFFE.l,X		; BF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $F7FEFF.l,X		; 7F FF FE F7
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFEEF.l,X		; FF EF FE FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $BFFFFF.l,X		; 7F FF FF BF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDDFFE.l,X		; FF FE DF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DDFFFF.l,X		; FF FF FF DD
	sbc $EFFFBF.l,X		; FF BF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFF7.l,X		; FF F7 FF DF
	lda $FFFFF5.l,X		; BF F5 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFEFF.l,X		; FF FF FE FE
	sbc $FFFFFB.l,X		; FF FB FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDF7FF.l,X		; FF FF F7 FD
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFD.l,X		; FF FD 7F FF
	sbc $FBFFFB.l,X		; FF FB FF FB
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFB.l,X		; FF FB EF FF
	sbc $FFFDED.l,X		; FF ED FD FF
	xce		; FB
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	adc $FFFFFF.l		; 6F FF FF FF
	sbc $7BFDFD.l,X		; FF FD FD 7B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDBFF.l,X		; FF FF DB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFBFF.l,X		; BF FF FB FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	cmp $FFF7FF.l,X		; DF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F8FFFF.l,X		; FF FF FF F8
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFDF.l,X		; FF DF FF DF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DF7FFF.l,X		; FF FF 7F DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	lda $FFFFFF.l,X		; BF FF FF FF
	cmp $FFFFFB.l,X		; DF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF77FD.l,X		; FF FD 77 FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $022104.l,X		; FF 04 21 02
	ldy $5301.w		; AC 01 53
	bpl -96.b		; 10 A0
	jsr $6101.w		; 20 01 61
	and ($05.b,X)		; 21 05
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $60.b		; 00 60
	ldy $81.b		; A4 81
	lda ($04.b,X)		; A1 04
	brk $97.b		; 00 97
	asl A		; 0A
	phb		; 8B
	ldy #$4024.w		; A0 24 40
	php		; 08
	tsb $0008.w		; 0C 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $04.b		; 00 04
	bra   0.b		; 80 00
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
	brk $03.b		; 00 03
	.db $82, $6A, $03		; 82 6A 03
	bpl   4.b		; 10 04
	tsb $A1.b		; 04 A1
	clc		; 18
	ora ($04.b),Y		; 11 04
	jsl $280200.l		; 22 00 02 28
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $01.b		; 00 01
	.db $82, $62, $03		; 82 62 03
	dey		; 88
	rts		; 60

	txs		; 9A
	ora $2200.w,Y		; 19 00 22
	.db $42, $40		; 42 40
	brk $01.b		; 00 01
	bra   4.b		; 80 04
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	ora #$0000.w		; 09 00 00
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
	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A9.b		; 00 A9
	brk $5E.b		; 00 5E
	wai		; CB
	mvn $E0,$9B		; 54 9B E0
	tsb $004C.w		; 0C 4C 00
	jsr $8004.w		; 20 04 80
	cop $80.b		; 02 80
	cop $00.b		; 02 00
	brk $86.b		; 00 86
	bra   0.b		; 80 00
	bra   8.b		; 80 08
	brk $80.b		; 00 80
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	php		; 08
	brk $20.b		; 00 20
	bra   0.b		; 80 00
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
	ldy #$A045.w		; A0 45 A0
	brk $52.b		; 00 52
	brk $C2.b		; 00 C2
	php		; 08
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	jsr $0040.w		; 20 40 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	.db $42, $00		; 42 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	adc ($08.b,X)		; 61 08
	rti		; 40

	asl $8402.w		; 0E 02 84
	eor $0A.b,X		; 55 0A
	tsb $0A01.w		; 0C 01 0A
	brk $30.b		; 00 30
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	rol $02.b		; 26 02
	brk $4C.b		; 00 4C
	jsr $0240.w		; 20 40 02
	jsr $0420.w		; 20 20 04
	tsb $0240.w		; 0C 40 02
	trb $10.b		; 14 10
	php		; 08
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $201209.l		; 22 09 12 20
	mvp $84,$00		; 44 00 84
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	php		; 08
	cop $00.b		; 02 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	brk $06.b		; 00 06
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	.db $42, $0C		; 42 0C
	mvp $00,$91		; 44 91 00
	jsr $C0A0.w		; 20 A0 C0
	jsl $000020.l		; 22 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldy $40.b		; A4 40
	ldy #$D070.w		; A0 70 D0
	sta ($E0.b),Y		; 91 E0
	tsb $00.b		; 04 00
	rti		; 40

	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0000.w		; 09 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	ldy $99A6.w		; AC A6 99
	bit $47.b		; 24 47
	rti		; 40

	pha		; 48
	bpl -128.b		; 10 80
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  18.b		; 80 12
	eor ($80.b,X)		; 41 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cpy $64.b		; C4 64
	ora #$3CF0.w		; 09 F0 3C
	bpl   1.b		; 10 01
	brk $24.b		; 00 24
	sty $400A.w		; 8C 0A 40
	cop $00.b		; 02 00
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	bra   3.b		; 80 03
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $C4.b		; 04 C4
	cpy #$4A88.w		; C0 88 4A
	adc $80.b,S		; 63 80
	brk $05.b		; 00 05
	php		; 08
	brk $02.b		; 00 02
	bpl  34.b		; 10 22
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4A.b		; 00 4A
	php		; 08
	plp		; 28
	sty $0C.b,X		; 94 0C
	adc $0244.w,Y		; 79 44 02
	brk $C4.b		; 00 C4
	jsr $1804.w		; 20 04 18
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bpl   0.b		; 10 00
	jsr $1010.w		; 20 10 10
	ldy #$0000.w		; A0 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	pha		; 48
	bpl   0.b		; 10 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	php		; 08
	eor ($00.b,X)		; 41 00
	rts		; 60

	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$40		; 44 40 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	brk $80.b		; 00 80
	ora ($24.b,X)		; 01 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l		; EF FF FF FE
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFE.l,X		; DF FE FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	plx		; FA
	xce		; FB
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFDFFE.l,X		; FF FE DF DF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF5FFF.l,X		; FF FF 5F FF
	sbc [$BF.b],Y		; F7 BF
	sbc $BFFFFF.l		; EF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFDFEF.l,X		; FF EF DF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	xce		; FB
	sbc $FFFFCE.l,X		; FF CE FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
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
	sbc $EFFEFF.l,X		; FF FF FE EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	cmp $FFFF7F.l,X		; DF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7EFF.l,X		; FF FF 7E FF
	lda $FFF7FF.l,X		; BF FF F7 FF
	sbc $FFF7FB.l,X		; FF FB F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $BEFEFF.l,X		; FF FF FE BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5FFFF.l,X		; FF FF FF F5
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF7FF.l,X		; FF FF F7 7F
	ldx $F7FF.w,Y		; BE FF F7
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	lda $FFFFFF.l,X		; BF FF FF FF
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
	sbc $FBBFFF.l,X		; FF FF BF FB
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $D7F7FF.l,X		; FF FF F7 D7
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xba		; EB
	sbc $FFEFFF.l		; EF FF EF FF
	sbc $FFFFEE.l,X		; FF EE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7F7BF.l,X		; FF BF F7 F7
	sbc $EFFFFD.l,X		; FF FD FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FDFAFF.l,X		; FF FF FA FD
	sbc $FFFDFE.l,X		; FF FE FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $97FEFF.l,X		; FF FF FE 97
	sbc $FFBF7F.l,X		; FF 7F BF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $7FFEFF.l,X		; FF FF FE 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	xce		; FB
	sbc $FFD7FF.l,X		; FF FF D7 FF
	cmp [$FF.b],Y		; D7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FEFFEF.l,X		; FF EF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FF7F7F.l,X		; FF 7F 7F FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFEE.l,X		; FF EE DF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFBFFF.l,X		; DF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EDFFFF.l,X		; FF FF FF ED
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $EFFF9F.l,X		; FF 9F FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $BBFFFF.l,X		; FF FF FF BB
	inc $FFFF.w,X		; FE FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFE.l,X		; FF FE FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	adc $FFFF7F.l,X		; 7F 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FB7FFF.l,X		; FF FF 7F FB
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FDFBFF.l,X		; FF FF FB FD
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp [$FD.b],Y		; D7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $404249.l,X		; FF 49 42 40
	cpx $1CAB.w		; EC AB 1C
	eor $40.b,S		; 43 40
	adc ($05.b,S),Y		; 73 05
	bra  20.b		; 80 14
	brk $40.b		; 00 40
	brk $42.b		; 00 42
	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	rep #$80		; C2 80
	ora ($E0.b)		; 12 E0
	ora ($80.b)		; 12 80
	brk $14.b		; 00 14
	cop $00.b		; 02 00
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $C1.b		; 00 C1
	adc ($80.b)		; 72 80
	ora ($82.b,X)		; 01 82
	ora ($28.b,X)		; 01 28
	and ($80.b,X)		; 21 80
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $11.b		; 00 11
	cop $40.b		; 02 40
	tsb $21D4.w		; 0C D4 21
	sbc $8822.w,Y		; F9 22 88
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$0468.w		; A0 68 04
	lda ($0A.b,X)		; A1 0A
	trb $11.b		; 14 11
	jsr $81CC.w		; 20 CC 81
	jsr $0000.w		; 20 00 00
	cop $04.b		; 02 04
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	bpl  72.b		; 10 48
	asl A		; 0A
	ora #$4054.w		; 09 54 40
	php		; 08
	trb $49.b		; 14 49
	brk $84.b		; 00 84
	brk $80.b		; 00 80
	cpy #$0004.w		; C0 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ora ($0E.b,X)		; 01 0E
	iny		; C8
	brk $B4.b		; 00 B4
	ldy $82.b		; A4 82
	and $84.b		; 25 84
	cpx #$0A30.w		; E0 30 0A
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sty $63.b		; 84 63
	bra  87.b		; 80 57
	brk $50.b		; 00 50
	dec $08.b		; C6 08
	cop $08.b		; 02 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $4E.b		; 00 4E
	dey		; 88
	.db $82, $25, $A8		; 82 25 A8
	tsb $9480.w		; 0C 80 94
	bra  10.b		; 80 0A
	cop $31.b		; 02 31
	brk $02.b		; 00 02
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	brk $21.b		; 00 21
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cop $04.b		; 02 04
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
	brk $04.b		; 00 04
	mvp $00,$04		; 44 04 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	ora $208F01.l,X		; 1F 01 8F 20
	ora ($0B.b,S),Y		; 13 0B
	rti		; 40

	brk $A3.b		; 00 A3
	rti		; 40

	ora ($92.b)		; 12 92
	brk $00.b		; 00 00
	ora $20.b,S		; 03 20
	brk $10.b		; 00 10
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	pha		; 48
	bra 108.b		; 80 6C
	ora #$C074.w		; 09 74 C0
	bra -72.b		; 80 B8
	jsl $012004.l		; 22 04 20 01
	brk $8C.b		; 00 8C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$02		; 44 02 00
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
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
	tsb $82.b		; 04 82
	bpl   0.b		; 10 00
	bit $16.b,X		; 34 16
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	tsb $02.b		; 04 02
	ora ($08.b,X)		; 01 08
	ora ($08.b,X)		; 01 08
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$5004.w		; C0 04 50
	lda [$4A.b]		; A7 4A
	jmp $20F0.w		; 4C F0 20
	pha		; 48
	tsb $80.b		; 04 80
	and #$0800.w		; 29 00 08
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $14C0.w		; 20 C0 14
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cop $24.b		; 02 24
	bvc  80.b		; 50 50
	.db $82, $08, $A2		; 82 08 A2
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	sty $00.b		; 84 00
	eor ($28.b,X)		; 41 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	sta ($00.b,X)		; 81 00
	php		; 08
	brk $00.b		; 00 00
	php		; 08
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$4081.w		; C0 81 40
	stx $20.b		; 86 20
	tay		; A8
	plp		; 28
	jsr $0410.w		; 20 10 04
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $0200.w		; 20 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $08.b		; 45 08
	sty $0088.w		; 8C 88 00
	brk $E0.b		; 00 E0
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	sty $00.b		; 84 00
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	rti		; 40

	ora ($00.b,X)		; 01 00
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
	brk $10.b		; 00 10
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
	.db $00		; Opcode 00 overrunning bank boundry at 22FFFF. Skipping.
.ENDS
