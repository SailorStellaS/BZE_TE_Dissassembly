.BANK 27 SLOT 0
.ORG $0000

.SECTION "Bank27" FORCE

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $0800.w		; 0E 00 08
	php		; 08
	bpl   4.b		; 10 04
	bpl   0.b		; 10 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	php		; 08
	brk $14.b		; 00 14
	brk $10.b		; 00 10
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpx $A0.b		; E4 A0
	asl $1C.b		; 06 1C
	pld		; 2B
	bit $27.b,X		; 34 27
	and [$27.b]		; 27 27
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	jsr $F000.w		; 20 00 F0
	brk $F5.b		; 00 F5
	brk $3F.b		; 00 3F
	brk $2F.b		; 00 2F
	rol $3CFF.w,X		; 3E FF 3C
	lda $000000.l,X		; BF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	ora [$2C.b]		; 07 2C
	ora $903847.l,X		; 1F 47 38 90
	rts		; 60

	cmp ($00.b,X)		; C1 00
	asl $01.b		; 06 01
	tas		; 1B
	ora [$2C.b]		; 07 2C
	ora $1F0007.l,X		; 1F 07 00 1F
	brk $38.b		; 00 38
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $C0.b		; 00 C0
	sbc $3CFE01.l,X		; FF 01 FE 3C
	cmp $6E.b,S		; C3 6E
	ora $7F82.w,X		; 1D 82 7F
	adc $82FE.w,Y		; 79 FE 82
	sbc $F807.w,X		; FD 07 F8
	sbc $00FE00.l,X		; FF 00 FE 00
	cmp $00.b,S		; C3 00
	ora $7F00.w,X		; 1D 00 7F
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $30.b		; 00 30
	sbc $7B3FC0.l,X		; FF C0 3F 7B
	stx $37.b		; 86 37
	cpy $986E.w		; CC 6E 98
	ldy $5D61.w		; AC 61 5D
	dec $BA.b		; C6 BA
	ora $00FE.w		; 0D FE 00
	and $8101.w,X		; 3D 01 81
	brk $CB.b		; 00 CB
	php		; 08
	sta [$10.b],Y		; 97 10
	asl $B800.w,X		; 1E 00 B8
	bra 112.b		; 80 70
	ora ($7D.b,X)		; 01 7D
	.db $82, $BC, $43		; 82 BC 43
	stz $1F22.w		; 9C 22 1F
	rts		; 60

	and $61FEC0.l,X		; 3F C0 FE 61
	eor $B8C7F0.l		; 4F F0 C7 B8
	cop $02.b		; 02 02
	sta $03.b,S		; 83 03
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	jsr $7060.w		; 20 60 70
	beq -120.b		; F0 88
	dey		; 88
	inc A		; 1A
	wai		; CB
	sty $4062.w		; 8C 62 40
	ldx $30.b,Y		; B6 30
	jmp $40B0.w		; 4C B0 40
	bmi  64.b		; 30 40
	clv		; B8
	cpy #$F8.b		; C0 F8
	bra 116.b		; 80 74
	mvp $20,$3C		; 44 3C 20
	stz $C094.w		; 9C 94 C0
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	phd		; 0B
	jmp ($F27E.w,X)		; 7C 7E F2
	sbc $E984.w,X		; FD 84 E9
	clc		; 18
	adc $60F7EC.l		; 6F EC F7 60
	sbc $00FF60.l,X		; FF 60 FF 00
	php		; 08
	sbc $80FF72.l,X		; FF 72 FF 80
	inc $DE00.w,X		; FE 00 DE
	tsb $32FC.w		; 0C FC 32
	ply		; 7A
	adc #$69.b		; 69 69
	bit $24.b		; 24 24
	lda [$17.b]		; A7 17
	lsr $CF.b		; 46 CF
	ldx $9C5E.w		; AE 5E 9C
	lsr $1CD8.w,X		; 5E D8 1C
	cpx #$08.b		; E0 08
	jsr ($F800.w,X)		; FC 00 F8
	brk $73.b		; 00 73
	sta $4C1F26.l,X		; 9F 26 1F 4C
	eor $003F08.l,X		; 5F 08 3F 00
	rol $1E00.w,X		; 3E 00 1E
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	and $2DDE.w		; 2D DE 2D
	dec $9C6A.w,X		; DE 6A 9C
	jmp ($FF9F.w)		; 6C 9F FF
	ora $1F0F1F.l		; 0F 1F 0F 1F
	sbc $CCEFEF.l		; EF EF EF CC
	asl $1EC8.w,X		; 1E C8 1E
	bra  31.b		; 80 1F
	dey		; 88
	ora $0F1F0C.l,X		; 1F 0C 1F 0F
	sbc $E3FF0F.l,X		; FF 0F FF E3
	sbc $A030CC.l,X		; FF CC 30 A0
	eor $23.b,S		; 43 23
	ora $6C6C0F.l,X		; 1F 0F 6C 6C
	adc $7B.b,S		; 63 7B
	sty $FF.b		; 84 FF
	lsr $FF.b		; 46 FF
	lsr $00.b		; 46 00
	ora $40.b,S		; 03 40
	eor $0CDF03.l,X		; 5F 03 DF 0C
	sbc $10FF60.l,X		; FF 60 FF 10
	inc $10.b,X		; F6 10
	dec $56.b,X		; D6 56
	dec $02.b,X		; D6 02
	ora ($05.b,X)		; 01 05
	ora $0A.b,S		; 03 0A
	ora [$34.b]		; 07 34
	ora $3E3ED9.l		; 0F D9 3E 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	sbc $3FFF00.l,X		; FF 00 FF 3F
	cpy #$FC.b		; C0 FC
	ora $F0.b,S		; 03 F0
	ora $581E27.l		; 0F 27 1E 58
	sec		; 38
	bra  67.b		; 80 43
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy #$00.b		; C0 00
	ora $00.b,S		; 03 00
	ora $001E00.l		; 0F 00 1E 00
	sec		; 38
	ora [$40.b]		; 07 40
	ora $2FC05E.l		; 0F 5E C0 2F
	cpx #$17.b		; E0 17
	bvs  15.b		; 70 0F
	sec		; 38
	ora $18.b,S		; 03 18
	ora [$0C.b]		; 07 0C
	and $F304.w,Y		; 39 04 F3
	asl $80BF.w		; 0E BF 80
	eor $202F40.l,X		; 5F 40 2F 20
	ora [$10.b],Y		; 17 10
	ora $000308.l		; 0F 08 03 00
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	brk $78.b		; 00 78
	bra 120.b		; 80 78
	cpy #$7C.b		; C0 7C
	bra  60.b		; 80 3C
	bra  60.b		; 80 3C
	cpx #$3C.b		; E0 3C
	ldy #$A0.b		; A0 A0
	bmi  48.b		; 30 30
	bcs  48.b		; B0 30
	cld		; D8
	cli		; 58
	tya		; 98
	clc		; 18
	cld		; D8
	clc		; 18
	inx		; E8
	plp		; 28
	cpy $060C.w		; CC 0C 06
	phd		; 0B
	ora ($08.b)		; 12 08
	asl A		; 0A
	ora #$09.b		; 09 09
	brk $06.b		; 00 06
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $081B01.l		; 0F 01 1B 08
	phd		; 0B
	brk $09.b		; 00 09
	tsb $06.b		; 04 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $41.b,S		; 03 41
	cmp #$CA.b		; C9 CA
	tsb $02.b		; 04 02
	asl A		; 0A
	php		; 08
	php		; 08
	tsb $70F0.w		; 0C F0 70
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	clv		; B8
	xce		; FB
	cpy #$CB.b		; C0 CB
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	php		; 08
	jmp ($F000.w,X)		; 7C 00 F0
	rts		; 60

	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora $70.b,S		; 03 70
	ora $000001.l		; 0F 01 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	adc $00FFC0.l,X		; 7F C0 FF 00
	sbc $F8F807.l,X		; FF 07 F8 F8
	ora [$27.b]		; 07 27
	ora $703FDF.l,X		; 1F DF 3F 70
	sbc $FF007F.l,X		; FF 7F 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	beq  15.b		; F0 0F
	beq  27.b		; F0 1B
	inc $9F.b		; E6 9F
	adc $3FCF2F.l		; 6F 2F CF 3F
	cmp $2FDFAE.l		; CF AE DF 2F
	dec $06F6.w,X		; DE F6 06
	sbc ($01.b),Y		; F1 01
	cpx #$0E.b		; E0 0E
	ror $CE0F.w		; 6E 0F CE
	ora $CE1FCE.l,X		; 1F CE 1F CE
	ora $D51FCC.l,X		; 1F CC 1F D5
	ora $11ED.w,Y		; 19 ED 11
	cpx $FC11.w		; EC 11 FC
	brk $7C.b		; 00 7C
	cop $F4.b		; 02 F4
	phd		; 0B
	cmp $3B.b		; C5 3B
	sta $7B.b		; 85 7B
	ldy #$83.b		; A0 83
	rti		; 40

	eor $B0.b,S		; 43 B0
	lda $40.b,S		; A3 40
	eor $00.b,S		; 43 00
	sta $08.b,S		; 83 08
	phd		; 0B
	bmi  51.b		; 30 33
	rti		; 40

	eor $81.b,S		; 43 81
	ror $7E81.w,X		; 7E 81 7E
	cmp [$B8.b]		; C7 B8
	jmp ($8C80.w,X)		; 7C 80 8C
	bvs -124.b		; 70 84
	sei		; 78
	sta $63.b,S		; 83 63
	sta $8B.b,S		; 83 8B
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora $83.b,S		; 03 83
	adc ($73.b,S),Y		; 73 73
	php		; 08
	phd		; 0B
	brk $1F.b		; 00 1F
	sta $FF.b,S		; 83 FF
	pla		; 68
	bcc -55.b		; 90 C9
	bmi  27.b		; 30 1B
	sbc ($B3.b,X)		; E1 B3
	eor $83.b,S		; 43 83
	phd		; 0B
	tsb $7D7D.w		; 0C 7D 7D
	adc ($73.b),Y		; 71 73
	phd		; 0B
	bcc -112.b		; 90 90
	jsr $C023.w		; 20 23 C0
	cmp [$01.b]		; C7 01
	ora $0C7F01.l		; 0F 01 7F 0C
	sbc $01FF70.l,X		; FF 70 FF 01
	sbc [$FF.b],Y		; F7 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $97.b		; 00 97
	clc		; 18
	rtl		; 6B

	tsb $0774.w		; 0C 74 07
	ply		; 7A
	ora $BD.b,S		; 03 BD
	sta ($24.b,X)		; 81 24
	bit $12.b		; 24 12
	ora ($82.b)		; 12 82
	.db $82, $61, $01		; 82 61 01
	beq   0.b		; F0 00
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($7E.b,X)		; 01 7E
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	rti		; 40

	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	sbc [$83.b],Y		; F7 83
	sbc $7C.b,S		; E3 7C
	sta $FC03F0.l		; 8F F0 03 FC
	ora ($FE.b),Y		; 11 FE
	eor ($3E.b),Y		; 51 3E
	adc ($3C.b,S),Y		; 73 3C
	ror $38.b		; 66 38
	bra  -1.b		; 80 FF
	jmp ($F183.w,X)		; 7C 83 F1
	ora ($FD.b,X)		; 01 FD
	ora ($FE.b,X)		; 01 FE
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $FF.b		; 00 FF
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($BC.b,X)		; 01 BC
	eor $AC.b,S		; 43 AC
	eor ($CC.b,S),Y		; 53 CC
	adc ($26.b,S),Y		; 73 26
	ldx $22.b		; A6 22
	jsl $222323.l		; 22 23 23 22
	jsl $612525.l		; 22 25 25 61
	and ($51.b,X)		; 21 51
	ora ($70.b,X)		; 01 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $DA.b		; 02 DA
	cop $F9.b		; 02 F9
	trb $6060.w		; 1C 60 60
	rti		; 40

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $37.b		; 00 37
	cop $FF.b		; 02 FF
	brk $FD.b		; 00 FD
	rts		; 60

	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	ora $17.b,S		; 03 17
	ora [$D4.b],Y		; 17 D4
	cmp [$CB.b]		; C7 CB
	jsr ($300F.w,X)		; FC 0F 30
	ora $CC3C63.l,X		; 1F 63 3C CC
	bvs -80.b		; 70 B0
	cpy #$03.b		; C0 03
	sta $CBFF14.l,X		; 9F 14 FF CB
	pea $E00F.w		; F4 0F E0
	ora $003C00.l,X		; 1F 00 3C 00
	bvs   0.b		; 70 00
	cpy #$00.b		; C0 00
	sta ($0E.b),Y		; 91 0E
	sbc [$0C.b],Y		; F7 0C
	sbc $6C.b,X		; F5 6C
	plx		; FA
	rol $FD.b		; 26 FD
	ora ($FF.b,S),Y		; 13 FF
	php		; 08
	sbc $EB03.w,X		; FD 03 EB
	ora [$0F.b]		; 07 0F
	ror $680B.w		; 6E 0B 68
	phd		; 0B
	pla		; 68
	lda $A4.b		; A5 A4
	eor ($52.b)		; 52 52
	jsr $0028.w		; 20 28 00
	ora $01.b,S		; 03 01
	ora [$C0.b]		; 07 C0
	asl $1EC0.w,X		; 1E C0 1E
	ldy #$3E.b		; A0 3E
	rti		; 40

	ror $FC80.w,X		; 7E 80 FC
	cpx #$1C.b		; E0 1C
	cpx #$D8.b		; E0 D8
	beq -24.b		; F0 E8
	cpx $F40C.w		; EC 0C F4
	trb $D4.b		; 14 D4
	trb $A4.b		; 14 A4
	bit $48.b		; 24 48
	pha		; 48
	php		; 08
	php		; 08
	cpy #$C0.b		; C0 C0
	cpy #$E0.b		; C0 E0
	cpy $9970.w		; CC 70 99
	cpx #$21.b		; E0 21
	cpy #$83.b		; C0 83
	ora ($06.b,X)		; 01 06
	ora $3E.b,S		; 03 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C8.b		; 00 C8
	adc ($90.b),Y		; 71 90
	cpx #$A0.b		; E0 A0
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
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
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	php		; 08
	ror $19.b		; 66 19
	iny		; C8
	and $00DF3D.l,X		; 3F 3D DF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $19.b		; 00 19
	brk $3F.b		; 00 3F
	brk $DF.b		; 00 DF
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $007E00.l,X		; 7F 00 7E 00
	ror $7C00.w,X		; 7E 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $06.b		; 04 06
	asl $36.b		; 06 36
	bvs -80.b		; 70 B0
	sed		; F8
	cpy #$E0.b		; C0 E0
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	tsb $FE.b		; 04 FE
	bmi  -1.b		; 30 FF
	cpy #$F8.b		; C0 F8
	jsr $00E0.w		; 20 E0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $08.b		; 02 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	jsr $00FF.w		; 20 FF 00
	jsr ($F000.w,X)		; FC 00 F0
	brk $C0.b		; 00 C0
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
	brk $0B.b		; 00 0B
	tsb $0F.b		; 04 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	tsb $1000.w		; 0C 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	beq  32.b		; F0 20
	cpy #$20.b		; C0 20
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$EF.b		; E0 EF
	sbc $E0EEEE.l		; EF EE EE E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $EF.b		; 00 EF
	rts		; 60

	sbc $C0FFEE.l,X		; FF EE FF C0
	inc $0000.w,X		; FE 00 00
	brk $01.b		; 00 01
	ora ($0F.b,X)		; 01 0F
	ora $B1BF7E.l		; 0F 7E BF B1
	lda $4BC3.w,Y		; B9 C3 4B
	tas		; 1B
	sec		; 38
	sec		; 38
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	ora ($7F.b,X)		; 01 7F
	asl $B17F.w		; 0E 7F B1
	sbc $0BFB81.l,X		; FF 81 FB 0B
	tad		; 5B
	sec		; 38
	sec		; 38
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
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $1C1C0F.l		; 0F 0F 1C 1C
	bmi  48.b		; 30 30
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	tsb $7B03.w		; 0C 03 7B
	ora [$CC.b]		; 07 CC
	and $FFFF38.l,X		; 3F 38 FF FF
	sbc $02FF0C.l,X		; FF 0C FF 02
	sbc $033CC3.l,X		; FF C3 3C 03
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3C.b		; 00 3C
	brk $2B.b		; 00 2B
	sbc $827DA3.l,X		; FF A3 7D 82
	adc $6996.w,X		; 7D 96 69
	lsr A		; 4A
	ldx #$19.b		; A2 19
	inx		; E8
	sbc [$1F.b]		; E7 1F
	sbc [$0C.b]		; E7 0C
	sbc $007D00.l,X		; FF 00 7D 00
	adc $6800.w,X		; 7D 00 68
	brk $B7.b		; 00 B7
	ora $F6.b,S		; 03 F6
	brk $08.b		; 00 08
	php		; 08
	tas		; 1B
	clc		; 18
	cpy #$E0.b		; C0 E0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $0626.w		; 0C 26 06
	ldx $F0.b		; A6 F0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	tsb $FF.b		; 04 FF
	brk $FE.b		; 00 FE
	cpy #$E0.b		; C0 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	trb $6F03.w		; 1C 03 6F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $23.b		; 00 23
	trb $071B.w		; 1C 1B 07
	tsb $F3F3.w		; 0C F3 F3
	jsr ($FFFC.w,X)		; FC FC FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0700.w		; 1C 00 07
	brk $F3.b		; 00 F3
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

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
	cpy #$00.b		; C0 00
	trb $92E0.w		; 1C E0 92
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	jsr ($8900.w,X)		; FC 00 89
	inc $DF2C.w,X		; FE 2C DF
	adc $9E.b		; 65 9E
	lda $924E.w,Y		; B9 4E 92
	jmp ($601C.w)		; 6C 1C 60
	dey		; 88
	bmi -32.b		; 30 E0
	bmi  -2.b		; 30 FE
	brk $DF.b		; 00 DF
	brk $9E.b		; 00 9E
	brk $0E.b		; 00 0E
	brk $4C.b		; 00 4C
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	sei		; 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sed		; F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $2EE1.w		; 2E E1 2E
	adc ($0E.b,X)		; 61 0E
	adc ($0F.b,X)		; 61 0F
	adc ($1F.b,X)		; 61 1F
	and ($1F.b),Y		; 31 1F
	and ($07.b),Y		; 31 07
	and ($07.b),Y		; 31 07
	ora ($5F.b),Y		; 11 5F
	eor ($5F.b,X)		; 41 5F
	eor ($3F.b,X)		; 41 3F
	and ($3E.b,X)		; 21 3E
	jsr $202E.w		; 20 2E 20
	asl $1E00.w		; 0E 00 1E
	bpl  30.b		; 10 1E
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $0E.b		; 00 0E
	ora ($31.b,X)		; 01 31
	ora $BC3F4F.l		; 0F 4F 3F BC
	adc $98F966.l,X		; 7F 66 F9 98
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $F9.b		; 00 F9
	brk $E7.b		; 00 E7
	brk $88.b		; 00 88
	adc ($F0.b)		; 72 F0
	asl $0CF0.w		; 0E F0 0C
	rts		; 60

	stz $4F30.w,X		; 9E 30 4F
	clv		; B8
	tsb $1C.b		; 04 1C
	brk $5E.b		; 00 5E
	ldy #$77.b		; A0 77
	tsb $0F.b		; 04 0F
	asl $0407.w		; 0E 07 04
	sta $82.b,S		; 83 82
	cmp #$49.b		; C9 49
	cpy $04.b		; C4 04
	cpy #$20.b		; C0 20
	bra -96.b		; 80 A0
	beq   8.b		; F0 08
	cpx #$10.b		; E0 10
	cpy #$70.b		; C0 70
	rti		; 40

	jsr $C080.w		; 20 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	tsb $03.b		; 04 03
	asl $03.b		; 06 03
	ora #$06.b		; 09 06
	.db $62, $04, $7C		; 62 04 7C
	ora ($79.b,X)		; 01 79
	adc $6641.w,X		; 7D 41 66
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $80.b		; 06 80
	tsb $F9.b		; 04 F9
	brk $FF.b		; 00 FF
	adc ($FF.b,X)		; 61 FF
	asl $F9.b		; 06 F9
	bit $CF.b,X		; 34 CF
	tay		; A8
	ora $513F98.l,X		; 1F 98 3F 51
	rol $7F30.w,X		; 3E 30 7F
	bcc   4.b		; 90 04
	brk $6B.b		; 00 6B
	rtl		; 6B

	rtl		; 6B

	cmp $001F00.l		; CF 00 1F 00
	and $003E00.l,X		; 3F 00 3E 00
	adc $6B0400.l,X		; 7F 00 04 6B
	brk $FF.b		; 00 FF
	rtl		; 6B

	sbc $79FEFD.l,X		; FF FD FE 79
	jsr ($E047.w,X)		; FC 47 E0
	adc [$78.b],Y		; 77 78
	adc $80FFE0.l,X		; 7F E0 FF 80
	sbc $007F00.l,X		; FF 00 7F 00
	sei		; 78
	inc $FE30.w,X		; FE 30 FE
	brk $F8.b		; 00 F8
	and $FB.b,S		; 23 FB
	jmp ($23EC.w)		; 6C EC 23
	lda $50.b,S		; A3 50
	bvc  72.b		; 50 48
	iny		; C8
	sec		; 38
	cpy $7C.b		; C4 7C
	bcs  -4.b		; B0 FC
	tad		; 5B
	cpx $1C.b		; E4 1C
	xba		; EB
	clc		; 18
	sbc [$10.b]		; E7 10
	sbc $10EE10.l		; EF 10 EE 10
	bra -128.b		; 80 80
	bpl  48.b		; 10 30
	eor ($59.b),Y		; 51 59
	wai		; CB
	iny		; C8
	ora [$00.b]		; 07 00
	ora $F0FF10.l,X		; 1F 10 FF F0
	ora $000010.l,X		; 1F 10 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	trb $E303.w		; 1C 03 E3
	ora $F0FF3E.l,X		; 1F 3E FF F0
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	ora ($0D.b,X)		; 01 0D
	ora $32.b,S		; 03 32
	ora $733ECD.l		; 0F CD 3E 73
	inc $FEC5.w,X		; FE C5 FE
	tas		; 1B
	jsr ($FF70.w,X)		; FC 70 FF
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $003E00.l		; 0F 00 3E 00
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $DA.b		; 00 DA
	and $13.b,S		; 23 13
	sbc [$17.b]		; E7 17
	sbc $2EEF8F.l		; EF 8F EF 2E
	cmp $2DCE2E.l		; CF 2E CE 2D
	dec $9C6D.w		; CE 6D 9C
	jsl $0FE307.l		; 22 07 E3 0F
	sbc $0F.b,S		; E3 0F
	inc $1F.b		; E6 1F
	dec $CC1F.w		; CE 1F CC
	ora $881ECC.l,X		; 1F CC 1E 88
	asl $3148.w,X		; 1E 48 31
	adc ($83.b),Y		; 71 83
	adc $7883.w,Y		; 79 83 78
	ora $FC.b,S		; 03 FC
	brk $FC.b		; 00 FC
	ora ($FC.b,X)		; 01 FC
	ora ($FE.b,X)		; 01 FE
	brk $20.b		; 00 20
	lda [$00.b]		; A7 00
	sta $008700.l		; 8F 00 87 00
	sta [$00.b]		; 87 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($DF.b,X)		; 01 DF
	jsr $F40B.w		; 20 0B F4
	rol A		; 2A
	sbc $B2.b,X		; F5 B2
	adc $79B6.w,X		; 7D B6 79
	rol $79.b		; 26 79
	adc $E15BF1.l		; 6F F1 5B E1
	jsr $F400.w		; 20 00 F4
	brk $F5.b		; 00 F5
	brk $7D.b		; 00 7D
	brk $79.b		; 00 79
	brk $79.b		; 00 79
	brk $F1.b		; 00 F1
	brk $E1.b		; 00 E1
	brk $FF.b		; 00 FF
	brk $1D.b		; 00 1D
.INDEX 8
	sep #$9F		; E2 9F
	inc $9F.b		; E6 9F
	inc $9F.b		; E6 9F
	inc $9F.b		; E6 9F
	cpx #$9F.b		; E0 9F
	cpx #$9F.b		; E0 9F
	cpx #$00.b		; E0 00
	stp		; DB
	cpx $07.b		; E4 07
	cpx #$06.b		; E0 06
	inc $06.b		; E6 06
	inc $EA0E.w		; EE 0E EA
	asl A		; 0A
	nop		; EA
	asl A		; 0A
	nop		; EA
	asl A		; 0A
	ora $0D19.w		; 0D 19 0D
	ora $190D.w,Y		; 19 0D 19
	ora ($19.b,X)		; 01 19
	ora ($19.b,X)		; 01 19
	cop $1B.b		; 02 1B
	ora $3E.b		; 05 3E
	rti		; 40

	bit $0006.w,X		; 3C 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0E08.w		; 0E 08 0E
	php		; 08
	trb $1818.w		; 1C 18 18
	clc		; 18
	clc		; 18
	tas		; 1B
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	ora ($05.b,X)		; 01 05
	cop $02.b		; 02 02
	tsb $0C.b		; 04 0C
	brk $08.b		; 00 08
	brk $11.b		; 00 11
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($01.b,X)		; 01 01
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $73.b		; 00 73
	sta $581FAE.l		; 8F AE 1F 58
	and $E67E31.l,X		; 3F 31 7E E6
	adc $F34C.w,Y		; 79 4C F3
	sta $B2E7.w,Y		; 99 E7 B2
	cmp $1F008F.l		; CF 8F 00 1F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $79.b		; 00 79
	brk $F3.b		; 00 F3
	brk $E7.b		; 00 E7
	brk $CF.b		; 00 CF
	brk $BF.b		; 00 BF
	sei		; 78
	ror $FEFD.w,X		; 7E FD FE
	sbc $C6FFFE.l,X		; FF FE FF C6
	inc $FF78.w,X		; FE 78 FF
	jsr ($FEFF.w,X)		; FC FF FE
	inc $7810.w,X		; FE 10 78
	and $7DFD.w,Y		; 39 FD 7D
	sbc $C0FFFD.l,X		; FF FD FF C0
	sbc $70FF20.l,X		; FF 20 FF 70
	sbc $20FF78.l,X		; FF 78 FF 20
	cpy #$10.b		; C0 10
	cpx #$0C.b		; E0 0C
	beq  10.b		; F0 0A
	beq  26.b		; F0 1A
	cpx #$2E.b		; E0 2E
	bvc  74.b		; 50 4A
	bit $8A.b,X		; 34 8A
	stz $C0.b,X		; 74 C0
	cpy #$20.b		; C0 20
	jsr $0000.w		; 20 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $80.b		; 00 80
	jsr $40A0.w		; 20 A0 40
	rti		; 40

	cop $01.b		; 02 01
	ora $03.b		; 05 03
	asl A		; 0A
	ora [$14.b]		; 07 14
	ora $633F58.l		; 0F 58 3F 63
	jsr ($F00F.w,X)		; FC 0F F0
	sed		; F8
	brk $01.b		; 00 01
	bra   3.b		; 80 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	bra  28.b		; 80 1C
	sbc $3D.b,S		; E3 3D
	cmp $79.b,S		; C3 79
	sta [$EA.b]		; 87 EA
	ora [$D6.b]		; 07 D6
	ora $5B1E2D.l		; 0F 2D 1E 5B
	bit $6B80.w,X		; 3C 80 6B
	sbc $00.b,S		; E3 00
	cmp $00.b,S		; C3 00
	sta [$00.b]		; 87 00
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	bit $0000.w,X		; 3C 00 00
	bra -128.b		; 80 80
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	bra -101.b		; 80 9B
	stz $FF.b		; 64 FF
	jmp ($6CFF.w)		; 6C FF 6C
	sbc $FF0060.l,X		; FF 60 00 FF
	bra  -1.b		; 80 FF
	adc $FF00FF.l,X		; 7F FF 00 FF
	dey		; 88
	inc $EC80.w,X		; FE 80 EC
	ror $606E.w		; 6E 6E 60
	rts		; 60

	sbc ($03.b,S),Y		; F3 03
	brk $00.b		; 00 00
	rts		; 60

	sbc $EF6F6F.l		; EF 6F 6F EF
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	sbc $6FFF00.l		; EF 00 FF 6F
	adc $006F00.l,X		; 7F 00 6F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sbc $8CFFFF.l,X		; FF FF FF 8C
	sbc ($E3.b,S),Y		; F3 E3
	ora $F2FF0C.l,X		; 1F 0C FF F2
	sbc $FB85.w,X		; FD 85 FB
	ora $00FFF0.l		; 0F F0 FF 00
	sbc $00F300.l,X		; FF 00 F3 00
	ora $00FF00.l,X		; 1F 00 FF 00
	jsr ($FA00.w,X)		; FC 00 FA
	cop $F0.b		; 02 F0
	brk $C1.b		; 00 C1
	inc $FB14.w,X		; FE 14 FB
	adc #$F7.b		; 69 F7
	lda $DC.b		; A5 DC
	sta [$70.b],Y		; 97 70
	eor $69C1.w,X		; 5D C1 69
	asl $18C6.w		; 0E C6 18
	inc $F900.w,X		; FE 00 F9
	ora ($F2.b,X)		; 01 F2
	cop $CB.b		; 02 CB
	php		; 08
	and $80BE20.l		; 2F 20 BE 80
	pea $7004.w		; F4 04 70
	ora ($E9.b),Y		; 11 E9
	trb $9C79.w		; 1C 79 9C
	sta $5E5D3C.l,X		; 9F 3C 5D 5E
	pld		; 2B
	tax		; AA
	sta $252C.w		; 8D 2C 25
	ora $008F.w		; 0D 8F 00
	php		; 08
	asl $1E88.w,X		; 1E 88 1E
	clc		; 18
	adc $2AFF1C.l,X		; 7F 1C FF 2A
	sbc $01FF04.l,X		; FF 04 FF 01
	sbc $FEFF00.l,X		; FF 00 FF FE
	brk $FE.b		; 00 FE
	brk $76.b		; 00 76
	dey		; 88
	inc $88.b,X		; F6 88
	cmp [$A8.b],Y		; D7 A8
	bit $00.b		; 24 00
	brk $DB.b		; 00 DB
	stp		; DB
	stp		; DB
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	dey		; 88
	ora ($88.b,X)		; 01 88
	ora ($A8.b,X)		; 01 A8
	ora ($00.b,X)		; 01 00
	stp		; DB
	brk $FF.b		; 00 FF
	stp		; DB
	sbc $65C3B1.l,X		; FF B1 C3 65
	sta $83.b,S		; 83 83
	ora [$0A.b]		; 07 0A
	ora [$04.b]		; 07 04
	ora $141E09.l		; 0F 09 1E 14
	sec		; 38
	beq   0.b		; F0 00
	cmp $00.b,S		; C3 00
	sta $00.b,S		; 83 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $001E00.l		; 0F 00 1E 00
	sec		; 38
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	cpx #$2F.b		; E0 2F
	cpy #$27.b		; C0 27
	cpy #$47.b		; C0 47
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E5.b		; 00 E5
	ora $C5.b		; 05 C5
	ora $C5.b		; 05 C5
	ora $80.b		; 05 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cpy #$7F.b		; C0 7F
	cpx #$FF.b		; E0 FF
	bcs 127.b		; B0 7F
	cli		; 58
	ora ($EC.b,S),Y		; 13 EC
	phd		; 0B
	pea $300F.w		; F4 0F 30
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	trb $34.b		; 14 34
	.db $82, $1A, $E1		; 82 1A E1
	sbc $7571.w		; ED 71 75
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $C0C0FF.l,X		; FF FF C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000E00.l,X		; FF 00 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($F1.b),Y		; F1 F1
	ora $00000F.l		; 0F 0F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $38.b		; 04 38
	sec		; 38
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $02.b		; 06 02
	tsb $01.b		; 04 01
	asl $06.b		; 06 06
	ora ($08.b,X)		; 01 08
	asl $0B.b,X		; 16 0B
	inc A		; 1A
	clc		; 18
	trb $02.b		; 14 02
	phd		; 0B
	ora #$02.b		; 09 02
	asl $00.b		; 06 00
	ora $06.b		; 05 06
	asl $00.b		; 06 00
	phd		; 0B
	brk $1F.b		; 00 1F
	ora $011B.w,Y		; 19 1B 01
	ora [$09.b],Y		; 17 09
	phd		; 0B
	cpx #$00.b		; E0 00
	clc		; 18
	trb $08.b		; 14 08
	php		; 08
	ora $0C.b,S		; 03 0C
	ora [$1A.b],Y		; 17 1A
	and ($E6.b,X)		; 21 E6
	ora [$46.b]		; 07 46
	lda $A3.b,S		; A3 A3
	brk $FC.b		; 00 FC
	brk $1E.b		; 00 1E
	brk $0D.b		; 00 0D
	brk $1F.b		; 00 1F
	brk $D7.b		; 00 D7
	sec		; 38
	tyx		; BB
	ldx $98FF.w,Y		; BE FF 98
	tyx		; BB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	sec		; 38
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
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
	brk $38.b		; 00 38
	bra   6.b		; 80 06
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $00.b		; 00 00
	sed		; F8
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	bra  -1.b		; 80 FF
	sbc $007F7F.l,X		; FF 7F 7F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	adc $7F00FF.l,X		; 7F FF 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	ldx $78.b,Y		; B6 78
	cmp $C2E0.w,Y		; D9 E0 C2
	ora ($05.b,X)		; 01 05
	ora $0A.b,S		; 03 0A
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $E0.b		; 00 E0
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	ora ($FC.b,X)		; 01 FC
	ora $FA.b,S		; 03 FA
	ora [$E4.b]		; 07 E4
	ora $39C8.w,X		; 1D C8 39
	ora ($F1.b)		; 12 F1
	rol $E1.b		; 26 E1
	rol $20E1.w		; 2E E1 20
	jsr $1212.w		; 20 12 12
	trb $14.b		; 14 14
	txa		; 8A
	dey		; 88
	asl $10.b,X		; 16 10
	and $415F21.l		; 2F 21 5F 41
	eor $003E41.l,X		; 5F 41 3E 00
	rol $7C00.w,X		; 3E 00 7C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $04.b		; 00 04
	tsb $0C.b		; 04 0C
	tsb $0808.w		; 0C 08 08
	php		; 08
	php		; 08
	pha		; 48
	pha		; 48
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr ($FC00.w,X)		; FC 00 FC
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $3020.w		; 20 20 30
	bmi  24.b		; 30 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $007F00.l,X		; 7F 00 7F 00
	ror $7E00.w,X		; 7E 00 7E
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	asl $2000.w		; 0E 00 20
	brk $33.b		; 00 33
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	ora $000C00.l,X		; 1F 00 0C 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $06.b		; 02 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	bra -120.b		; 80 88
	xba		; EB
	xba		; EB
	adc $02006F.l,X		; 7F 6F 00 02
	asl $0E.b		; 06 0E
	asl $0000.w		; 0E 00 00
	brk $80.b		; 00 80
	brk $EB.b		; 00 EB
	dey		; 88
	sbc $00FF6B.l,X		; FF 6B FF 00
	adc $0E0602.l		; 6F 02 06 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	.db $82, $FD, $FF		; 82 FD FF
	adc $AC007F.l,X		; 7F 7F 00 AC
	cpx $6060.w		; EC 60 60
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	adc $00FF.w,X		; 7D FF 00
	adc $60ECAC.l,X		; 7F AC EC 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	lda $B6.b		; A5 B6
	ror $006F.w		; 6E 6F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	lda [$80.b],Y		; B7 80
	sbc $007F4C.l,X		; FF 4C 7F 00
	ror $0000.w		; 6E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	rts		; 60

	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rti		; 40

	sed		; F8
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	tsb $04.b		; 04 04
	asl A		; 0A
	tsb $0606.w		; 0C 06 06
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
	asl $0704.w		; 0E 04 07
	asl $07.b		; 06 07
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$12.b],Y		; 17 12
	asl A		; 0A
	tsb $10.b		; 04 10
	trb $D0.b		; 14 D0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0C.b		; 00 0C
	ora $00.b,S		; 03 00
	ora [$00.b],Y		; 17 00
	asl $FC00.w,X		; 1E 00 FC
	rti		; 40

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $35.b		; 00 35
	tda		; 7B
	tsa		; 3B
	sbc [$17.b]		; E7 17
	sbc $46FF8B.l		; EF 8B FF 46
	lda $817E99.l,X		; BF 99 7E 81
	jmp ($7984.w,X)		; 7C 84 79
	tda		; 7B
	brk $E7.b		; 00 E7
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7B.b		; 00 7B
	brk $CD.b		; 00 CD
	inc $FEEF.w,X		; FE EF FE
	sbc $7EEDFE.l,X		; FF FE ED 7E
	cmp $EE.b,X		; D5 EE
	mvn $4A,$BA		; 54 BA 4A
	pei ($F0.b)		; D4 F0
	cld		; D8
	inc $FE00.w,X		; FE 00 FE
	brk $FE.b		; 00 FE
	brk $7E.b		; 00 7E
	brk $EE.b		; 00 EE
	brk $8A.b		; 00 8A
	brk $F4.b		; 00 F4
	stz $00.b,X		; 74 00
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	pha		; 48
	cmp $FE01F9.l		; CF F9 01 FE
	brk $FF.b		; 00 FF
	brk $C6.b		; 00 C6
	ora [$60.b]		; 07 60
	adc $000000.l,X		; 7F 00 00 00
	brk $B4.b		; 00 B4
	sty $FE.b		; 84 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	ora ($9C.b,X)		; 01 9C
	trb $0000.w		; 1C 00 00
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
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F800.w,X		; FE 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	bmi  96.b		; 30 60
	rts		; 60

	cpy #$C0.b		; C0 C0
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
	brk $05.b		; 00 05
	brk $77.b		; 00 77
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $03.b		; 04 03
	cop $05.b		; 02 05
	ora ($03.b,X)		; 01 03
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$0F.b],Y		; 17 0F
	bit $331F.w,X		; 3C 1F 33
	jmp ($F069.w,X)		; 7C 69 F0
	eor ($E0.b,S),Y		; 53 E0
	lda [$C1.b]		; A7 C1
	lsr $9C83.w		; 4E 83 9C
	ora [$0F.b]		; 07 0F
	brk $1F.b		; 00 1F
	brk $7C.b		; 00 7C
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C1.b		; 00 C1
	brk $83.b		; 00 83
	brk $07.b		; 00 07
	brk $60.b		; 00 60
	and $323D22.l,X		; 3F 22 3D 32
	ora $1837.w,X		; 1D 37 18
	ora [$08.b],Y		; 17 08
	inc A		; 1A
	tsb $040A.w		; 0C 0A 04
	asl $3F04.w		; 0E 04 3F
	brk $3D.b		; 00 3D
	brk $1D.b		; 00 1D
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $65.b		; 00 65
	tsx		; BA
	adc $BA.b		; 65 BA
	adc $BA.b		; 65 BA
	mvn $54,$BB		; 54 BB 54
	tyx		; BB
	lda ($59.b)		; B2 59
	lda #$58.b		; A9 58
	cli		; 58
	plp		; 28
	tsx		; BA
	brk $BA.b		; 00 BA
	brk $BA.b		; 00 BA
	brk $BB.b		; 00 BB
	brk $BB.b		; 00 BB
	brk $59.b		; 00 59
	brk $58.b		; 00 58
	brk $28.b		; 00 28
	brk $DC.b		; 00 DC
	adc $FF.b,S		; 63 FF
	rti		; 40

	lda $40BF40.l,X		; BF 40 BF 40
	lda $00FF40.l,X		; BF 40 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	bvs  16.b		; 70 10
	bvc  16.b		; 50 10
	eor ($11.b),Y		; 51 11
	adc ($21.b,X)		; 61 21
	adc ($21.b,X)		; 61 21
	and ($21.b,X)		; 21 21
	cmp ($C1.b,X)		; C1 C1
	ora $C03F1F.l,X		; 1F 1F 3F C0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $06FA00.l,X		; FF 00 FA 06
	beq  12.b		; F0 0C
	ora ($12.b)		; 12 12
	ora ($11.b),Y		; 11 11
	ora #$09.b		; 09 09
	ora #$09.b		; 09 09
	ora $08080F.l		; 0F 0F 08 08
	adc ($70.b),Y		; 71 70
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2D00.w		; 1C 00 2D
	asl $3956.w,X		; 1E 56 39
	adc $3B.b		; 65 3B
	dex		; CA
	and [$00.b],Y		; 37 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $39.b		; 00 39
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $67.b		; 00 67
	brk $18.b		; 00 18
	sbc [$E5.b]		; E7 E5
	inc $FF39.w,X		; FE 39 FF
	adc ($FF.b,X)		; 61 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$00.b]		; E7 00
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $38.b		; 00 38
	ora [$C0.b]		; 07 C0
	and $E0FF1F.l,X		; 3F 1F FF E0
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	cop $0C.b		; 02 0C
	ora $E0.b,S		; 03 E0
	ora $01FF3F.l,X		; 1F 3F FF 01
	sbc $F0FF00.l,X		; FF 00 FF F0
	sbc $02FF00.l,X		; FF 00 FF 02
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	and $C27FE1.l,X		; 3F E1 7F C2
	sbc $8CFFC4.l,X		; FF C4 FF 8C
	sbc $19FE99.l,X		; FF 99 FE 19
	inc $FD33.w,X		; FE 33 FD
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FD00.w,X		; FE 00 FD
	brk $88.b		; 00 88
	sbc [$14.b],Y		; F7 14
	sbc $D39E69.l		; EF 69 9E D3
	bit $79A6.w,X		; 3C A6 79
	cmp $DA73.w		; CD 73 DA
	sbc [$94.b]		; E7 94
	sbc $EF00F7.l		; EF F7 00 EF
	brk $9E.b		; 00 9E
	brk $3C.b		; 00 3C
	brk $79.b		; 00 79
	brk $73.b		; 00 73
	brk $E7.b		; 00 E7
	brk $EF.b		; 00 EF
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$00.b		; C0 00
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
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora #$7B.b		; 09 7B
	sei		; 78
	adc ($70.b,S),Y		; 73 70
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $097F01.l		; 0F 01 7F 09
	sbc $00FF70.l,X		; FF 70 FF 00
	sbc ($00.b,S),Y		; F3 00
	ora $00.b,S		; 03 00
	ora $05.b,S		; 03 05
	adc $D4.b,X		; 75 D4
	pei ($D8.b)		; D4 D8
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra   0.b		; 80 00
	cpy #$C0.b		; C0 C0
	bra -64.b		; 80 C0
	bra   5.b		; 80 05
	sbc $C0FED4.l,X		; FF D4 FE C0
	sed		; F8
	cpy #$E0.b		; C0 E0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	tsb $03.b		; 04 03
	ora $02.b		; 05 02
	tsb $02.b		; 04 02
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora $311F30.l		; 0F 30 1F 31
	asl $3E71.w,X		; 1E 71 3E
	adc $3D.b,S		; 63 3D
	adc $3D.b,S		; 63 3D
	sbc $7D.b,S		; E3 7D
	cmp $7F.b,S		; C3 7F
	ora $001F00.l		; 0F 00 1F 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3D.b		; 00 3D
	brk $3D.b		; 00 3D
	brk $7D.b		; 00 7D
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	cop $03.b		; 02 03
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	tsb $041C.w		; 0C 1C 04
	stx $C702.w		; 8E 02 C7
	ora ($31.b,X)		; 01 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $05.b		; 00 05
	trb $180B.w		; 1C 0B 18
	ora [$30.b]		; 07 30
	cmp [$30.b]		; C7 30
	ora $301F30.l,X		; 1F 30 1F 30
	ora $000060.l		; 0F 60 00 00
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora $101F10.l,X		; 1F 10 1F 10
	ora $202F00.l		; 0F 00 2F 20
	and $3CA120.l,X		; 3F 20 A1 3C
	and $3C.b		; 25 3C
	and $3C.b		; 25 3C
	and $3C.b		; 25 3C
	.db $42, $7E		; 42 7E
	eor ($67.b,X)		; 41 67
	brk $63.b		; 00 63
	bra -63.b		; 80 C1
	eor [$14.b],Y		; 57 14
	cmp ($10.b,S),Y		; D3 10
	cmp ($10.b,S),Y		; D3 10
	cmp $00.b,S		; C3 00
	lda $24.b		; A5 24
	.db $82, $02, $C1		; 82 02 C1
	eor ($00.b,X)		; 41 00
	brk $1C.b		; 00 1C
	sbc [$38.b]		; E7 38
	cmp [$EC.b]		; C7 EC
	ora ($06.b,S),Y		; 13 06
	sbc $FEC1.w,Y		; F9 C1 FE
	and ($FE.b),Y		; 31 FE
	clc		; 18
	sbc $E7FF00.l,X		; FF 00 FF E7
	brk $C7.b		; 00 C7
	brk $13.b		; 00 13
	brk $F9.b		; 00 F9
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8A.b		; 00 8A
	sbc $F71A.w,X		; FD 1A F7
	lda #$5A.b		; A9 5A
	asl $0FBB.w,X		; 1E BB 0F
	ldy #$0E.b		; A0 0E
	cmp ($0C.b,X)		; C1 0C
	cmp [$44.b]		; C7 44
	.db $82, $FD, $00		; 82 FD 00
	sbc ($00.b),Y		; F1 00
	lsr $E00E.w,X		; 5E 0E E0
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	rti		; 40

	sed		; F8
	rti		; 40

	ldy $0000.w,X		; BC 00 00
	sbc $1E8F73.l,X		; FF 73 8F 1E
	sbc $CEFE71.l,X		; FF 71 FE CE
	sbc ($1B.b),Y		; F1 1B
	sbc [$3C.b]		; E7 3C
	cmp $FF9F78.l		; CF 78 9F FF
	brk $8F.b		; 00 8F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F1.b		; 00 F1
	brk $E7.b		; 00 E7
	brk $CF.b		; 00 CF
	brk $9F.b		; 00 9F
	brk $01.b		; 00 01
	sbc $67FFFF.l,X		; FF FF FF 67
	sta $C07FB8.l,X		; 9F B8 7F C0
	sbc $22FE01.l,X		; FF 01 FE 22
	sbc $FB44.w,X		; FD 44 FB
	sbc $00FF00.l,X		; FF 00 FF 00
	sta $007F00.l,X		; 9F 00 7F 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $FB00.w,X		; FD 00 FB
	brk $33.b		; 00 33
	sbc $FB37.w,X		; FD 37 FB
	and [$FB.b],Y		; 37 FB
	rol $FB.b		; 26 FB
	ror $BB.b		; 66 BB
	ror $BB.b		; 66 BB
	adc [$BA.b]		; 67 BA
	adc [$BA.b]		; 67 BA
	sbc $FB00.w,X		; FD 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $BB.b		; 00 BB
	brk $BB.b		; 00 BB
	brk $BA.b		; 00 BA
	brk $BA.b		; 00 BA
	brk $AC.b		; 00 AC
	cmp $72DE39.l,X		; DF 39 DE 72
	sta $B877.w,X		; 9D 77 B8
	stz $BB.b		; 64 BB
	inx		; E8
	and [$F8.b],Y		; 37 F8
	adc [$D8.b]		; 67 D8
	adc [$DF.b]		; 67 DF
	brk $DE.b		; 00 DE
	brk $9C.b		; 00 9C
	brk $B8.b		; 00 B8
	brk $B9.b		; 00 B9
	ora ($30.b,X)		; 01 30
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $A8.b		; 00 A8
	pei ($8C.b)		; D4 8C
	jmp ($8ECE.w)		; 6C CE 8E
	ror $66.b		; 66 66
	rts		; 60

	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	trb $2C40.w		; 1C 40 2C
	asl $668E.w		; 0E 8E 66
	ror $60.b		; 66 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora [$0F.b]		; 07 0F
	rol $0F.b,X		; 36 0F
	sbc $030006.l,X		; FF 06 00 03
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	cop $1F.b		; 02 1F
	asl $3F.b		; 06 3F
	tsb $0F.b		; 04 0F
	jsr $FC27.w		; 20 27 FC
	sbc $00FFE0.l,X		; FF E0 FF 00
	sbc $84FF00.l,X		; FF 00 FF 84
	tda		; 7B
	php		; 08
	sbc [$11.b],Y		; F7 11
	inc $CE30.w		; EE 30 CE
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	tda		; 7B
	brk $F7.b		; 00 F7
	brk $EE.b		; 00 EE
	brk $CE.b		; 00 CE
	ora ($5C.b,X)		; 01 5C
	lda $73.b,S		; A3 73
	sty $9067.w		; 8C 67 90
	cmp $07C620.l		; CF 20 C6 07
	sbc ($3E.b),Y		; F1 3E
	.db $62, $1C, $BE		; 62 1C BE
	stz $A1.b		; 64 A1
	and ($87.b,X)		; 21 87
	tsb $8F.b		; 04 8F
	brk $1F.b		; 00 1F
	brk $39.b		; 00 39
	ora ($0C.b,X)		; 01 0C
	tsb $C000.w		; 0C 00 C0
	tsb $E4.b		; 04 E4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $0804.w		; 0C 04 08
	clc		; 18
	brk $00.b		; 00 00
	bit $1C.b		; 24 1C
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $58.b		; 00 58
	brk $35.b		; 00 35
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs  32.b		; B0 20
	bpl   0.b		; 10 00
	jsr $2060.w		; 20 60 20
	plp		; 28
	mvn $2C,$08		; 54 08 2C
	cpx $0000.w		; EC 00 00
	brk $00.b		; 00 00
	jsr $00B0.w		; 20 B0 00
	bpl  32.b		; 10 20
	rts		; 60

	jsr $0028.w		; 20 28 00
	jsr ($EC0C.w,X)		; FC 0C EC
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ply		; 7A
	sta $F8.b,S		; 83 F8
	.db $82, $FC, $86		; 82 FC 86
	bvs   4.b		; 70 04
	sed		; F8
	tsb $08E0.w		; 0C E0 08
	beq  24.b		; F0 18
	cpy #$10.b		; C0 10
	jsr ($7E80.w,X)		; FC 80 7E
	cop $78.b		; 02 78
	brk $FC.b		; 00 FC
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clv		; B8
	.db $82, $58, $C2		; 82 58 C2
	rol $06E3.w		; 2E E3 06
	adc ($03.b,X)		; 61 03
	and ($0A.b),Y		; 31 0A
	sec		; 38
	ora [$70.b],Y		; 17 70
	rol $7C60.w		; 2E 60 7C
	brk $BE.b		; 00 BE
	.db $82, $5C, $40		; 82 5C 40
	and $101E21.l,X		; 3F 21 1E 10
	and [$30.b],Y		; 37 30
	and $405F20.l		; 2F 20 5F 40
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	cmp $7F.b,S		; C3 7F
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	dec $7B.b		; C6 7B
	dec $7B.b		; C6 7B
	lsr $7B.b		; 46 7B
	lsr $7B.b		; 46 7B
	lsr $3B.b		; 46 3B
	ror $3B.b		; 66 3B
	adc $007F00.l,X		; 7F 00 7F 00
	tda		; 7B
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $7B.b		; 00 7B
	brk $3B.b		; 00 3B
	brk $3B.b		; 00 3B
	brk $88.b		; 00 88
	sei		; 78
	brk $F0.b		; 00 F0
	tsb $1EF0.w		; 0C F0 1E
	cpx #$00FF.w		; E0 FF 00
	adc $807F80.l,X		; 7F 80 7F 80
	and $3C28C0.l,X		; 3F C0 28 3C
	bpl  28.b		; 10 1C
	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	asl A		; 0A
	asl A		; 0A
	bit #$8489.w		; 89 89 84
	sty $42.b		; 84 42
	.db $42, $F0		; 42 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $60.b		; 00 60
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$3840.w		; C0 40 38
	sta ($FD.b,X)		; 81 FD
	ora ($FE.b,X)		; 01 FE
	brk $20.b		; 00 20
	and $00E000.l,X		; 3F 00 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sta ($FE.b,X)		; 81 FE
	brk $FF.b		; 00 FF
	brk $D8.b		; 00 D8
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($3E82.w,X)		; 7C 82 3E
	cpy #$C0BC.w		; C0 BC C0
	sec		; 38
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  19.b		; 10 13
	bcc -109.b		; 90 93
	bvc  82.b		; 50 52
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $9C.b,S		; 63 9C
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	sta $7B.b		; 85 7B
	lsr A		; 4A
	sbc ($97.b),Y		; F1 97
	inc $2F.b		; E6 2F
	dec $8D4E.w		; CE 4E 8D
	sta ($40.b,S),Y		; 93 40
	stz $3C01.w		; 9C 01 3C
	ora $78.b,S		; 03 78
	ora $F0.b,S		; 03 F0
	ora [$E0.b]		; 07 E0
	ora $841EC2.l		; 0F C2 1E 84
	bit $7C40.w,X		; 3C 40 7C
	ror $FAF8.w,X		; 7E F8 FA
	pea $EED1.w		; F4 D1 EE
	rts		; 60

	sta $271FE0.l,X		; 9F E0 1F 27
	cld		; D8
	clc		; 18
	cpx #$E010.w		; E0 10 E0
	sec		; 38
	sed		; F8
	stz $F4.b		; 64 F4
	cop $E2.b		; 02 E2
	ora ($C1.b,X)		; 01 C1
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $72.b		; 00 72
	pld		; 2B
	rti		; 40

	and ($39.b),Y		; 31 39
	and $92B2.w,Y		; 39 B2 92
	stz $0990.w		; 9C 90 09
	ora $02.b		; 05 02
	ora $00.b		; 05 00
	brk $06.b		; 00 06
	inc $0E.b,X		; F6 0E
	sbc $80FF1E.l		; EF 1E FF 80
	sbc ($00.b)		; F2 00
	dec $4F00.w,X		; DE 00 4F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	bit $00.b,X		; 34 00
	stz $64.b,X		; 74 64
	php		; 08
	php		; 08
	tsb $0C.b		; 04 0C
	tsb $780C.w		; 0C 0C 78
	sei		; 78
	bcs -80.b		; B0 B0
	brk $00.b		; 00 00
	cpy #$64F4.w		; C0 F4 64
	stz $00.b,X		; 74 00
	php		; 08
	tsb $0C.b		; 04 0C
	tsb $FC.b		; 04 FC
	php		; 08
	sed		; F8
	bcs -80.b		; B0 B0
	brk $00.b		; 00 00
	ora ($7E.b,X)		; 01 7E
	sbc $9B08.w,Y		; F9 08 9B
	ror $BC.b,X		; 76 BC
	tda		; 7B
	inc $FC0D.w,X		; FE 0D FC
	tsb $F8.b		; 04 F8
	brk $E0.b		; 00 E0
	brk $1F.b		; 00 1F
	asl $0007.w,X		; 1E 07 00
	ora $F4.b		; 05 F4
	ora $0C79.w,Y		; 19 79 0C
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$8030.w		; E0 30 80
	jsr $60C0.w		; 20 C0 60
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	cmp ($3E.b,X)		; C1 3E
	sta ($FC.b,X)		; 81 FC
	rol $F07C.w,X		; 3E 7C F0
	jsr ($F880.w,X)		; FC 80 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $3E.b		; 00 3E
	brk $CC.b		; 00 CC
	sty $3F18.w		; 8C 18 3F
	jsr $18F0.w		; 20 F0 18
	tya		; 98
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	rti		; 40

	rts		; 60

	ldy #$C030.w		; A0 30 C0
	clc		; 18
	beq  28.b		; F0 1C
	inx		; E8
	tsb $0674.w		; 0C 74 06
	clv		; B8
	sta $5D.b,S		; 83 5D
	cmp ($A0.b,X)		; C1 A0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	inx		; E8
	php		; 08
	pea $F804.w		; F4 04 F8
	brk $7E.b		; 00 7E
	cop $BE.b		; 02 BE
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora ($06.b,X)		; 01 06
	lda $A0A0A0.l		; AF A0 A0 A0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $005F01.l		; 0F 01 5F 00
	sbc $80F6A0.l,X		; FF A0 F6 80
	ldy #$8000.w		; A0 00 80
	beq   0.b		; F0 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $0E.b		; 00 0E
	asl $1818.w		; 0E 18 18
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	ror $7F00.w,X		; 7E 00 7F
	brk $7F.b		; 00 7F
	brk $6F.b		; 00 6F
	brk $27.b		; 00 27
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $06.b		; 04 06
	asl $03.b		; 06 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
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
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	ora $E3.b,S		; 03 E3
	tas		; 1B
	xce		; FB
	cld		; D8
	ldy $00C0.w,X		; BC C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tas		; 1B
	ora $1F.b,S		; 03 1F
	cld		; D8
	ora $001CC0.l,X		; 1F C0 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	ora ($08.b,X)		; 01 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $06.b,S		; 03 06
	asl $06.b		; 06 06
	asl $0C.b		; 06 0C
	tsb $00E0.w		; 0C E0 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $7C00.w,X		; 7E 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	tsb $0808.w		; 0C 08 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $003F00.l,X		; 3F 00 3F 00
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	cmp $00DF00.l,X		; DF 00 DF 00
	cmp $00CF00.l		; CF 00 CF 00
	cmp $008700.l		; CF 00 87 00
	sta [$00.b]		; 87 00
	sta [$00.b]		; 87 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	and $003F00.l,X		; 3F 00 3F 00
	and $003E00.l,X		; 3F 00 3E 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  12.b		; 10 0C
	asl $0C.b		; 06 0C
	asl $0C.b		; 06 0C
	asl $08.b		; 06 08
	tsb $06.b		; 04 06
	asl $28.b		; 06 28
	bit $2C.b		; 24 2C
	rol $3C.b,X		; 36 3C
	rol $04.b,X		; 36 04
	ora $040F04.l		; 0F 04 0F 04
	ora $060E00.l		; 0F 00 0E 06
	ora [$20.b]		; 07 20
	rol $3F24.w		; 2E 24 3F
	bit $3F.b,X		; 34 3F
	tsb $2C06.w		; 0C 06 2C
	rol $2C.b		; 26 2C
	rol $3C.b,X		; 36 3C
	rol $0C.b,X		; 36 0C
	asl $1C.b		; 06 1C
	asl $1E.b,X		; 16 1E
	trb $0C.b		; 14 0C
	asl $04.b		; 06 04
	ora $242F24.l		; 0F 24 2F 24
	and $043F34.l,X		; 3F 34 3F 04
	ora $101F14.l		; 0F 14 1F 10
	ora $0C0F04.l,X		; 1F 04 0F 0C
	asl $00.b		; 06 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	asl $00.b		; 06 00
	brk $06.b		; 00 06
	asl $04.b		; 06 04
	asl $06.b		; 06 06
	tsb $04.b		; 04 04
	ora $040600.l		; 0F 00 06 04
	ora $000F00.l		; 0F 00 0F 00
	asl $04.b		; 06 04
	ora $000F04.l		; 0F 04 0F 00
	ora $000402.l		; 0F 02 04 00
	brk $0E.b		; 00 0E
	asl $0C.b		; 06 0C
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $04.b		; 06 04
	ora $000F00.l		; 0F 00 0F 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $08.b		; 04 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001E00.l,X		; 1F 00 1E 00
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	sei		; 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	php		; 08
	php		; 08
	php		; 08
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora $001F00.l,X		; 1F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $3900.w,Y		; 19 00 39
	asl $39.b		; 06 39
	ora $593F26.l,X		; 1F 26 3F 59
	lsr $5F31.w,X		; 5E 31 5F
	jsr $007E.w		; 20 7E 00
	asl $0F08.w		; 0E 08 0F
	ora #$0909.w		; 09 09 09
	asl $06.b		; 06 06
	php		; 08
	ora $7100.w,Y		; 19 00 71
	brk $61.b		; 00 61
	bpl -47.b		; 10 D1
	brk $D8.b		; 00 D8
	brk $F8.b		; 00 F8
	rts		; 60

	tya		; 98
	bvs -24.b		; 70 E8
	sed		; F8
	bvs -16.b		; 70 F0
	clc		; 18
	pea $FC08.w		; F4 08 FC
	brk $B0.b		; 00 B0
	bcc  16.b		; 90 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bvs   0.b		; 70 00
	clc		; 18
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	sed		; F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	sei		; 78
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $00FE00.l,X		; 7F 00 FE 00
	inc $FC00.w,X		; FE 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $20.b		; 00 20
	ldy #$4040.w		; A0 40 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr ($FE00.w,X)		; FC 00 FE
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $1C.b		; 02 1C
	asl $070E.w		; 0E 0E 07
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $1F0300.l		; 0F 00 03 1F
	tsb $061F.w		; 0C 1F 06
	ora $000701.l		; 0F 01 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	cpy #$E070.w		; C0 70 E0
	sec		; 38
	ply		; 7A
	ora [$07.b],Y		; 17 07
	sbc $8000.w,Y		; F9 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	rti		; 40

	sed		; F8
	jsr $16FC.w		; 20 FC 16
	adc ($F9.b,S),Y		; 73 F9
	ora ($24.b,X)		; 01 24
	sbc [$5A.b]		; E7 5A
	cmp $5D.b,S		; C3 5D
	cmp ($5E.b,X)		; C1 5E
	cpy #$E02F.w		; C0 2F E0
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sei		; 78
	ora $3C.b		; 05 3C
	phy		; 5A
	.db $42, $BD		; 42 BD
	sta ($BE.b,X)		; 81 BE
	bra -65.b		; 80 BF
	bra  95.b		; 80 5F
	rti		; 40

	and $101720.l		; 2F 20 17 10
	phd		; 0B
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	cpy #$C060.w		; C0 60 C0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $E0.b		; 00 E0
	jsr $0100.w		; 20 00 01
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($0C.b,X)		; 01 0C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	tsb $87.b		; 04 87
	ldy $87.b		; A4 87
	stz $07.b		; 64 07
	cpx $07.b		; E4 07
	inx		; E8
	ora $E00CE8.l		; 0F E8 0C E0
	tsb $18F0.w		; 0C F0 18
	plx		; FA
	.db $82, $7A, $02		; 82 7A 02
	plx		; FA
	cop $F8.b		; 02 F8
	brk $F4.b		; 00 F4
	tsb $F0.b		; 04 F0
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$0900.w		; E0 00 09
	sbc [$24.b],Y		; F7 24
	xce		; FB
	ora ($FD.b)		; 12 FD
	ora $FC.b,S		; 03 FC
	ora #$39FE.w		; 09 FE 39
	inc $7E89.w		; EE 89 7E
	adc #$F0DE.w		; 69 DE F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $7E.b		; 00 7E
	brk $DF.b		; 00 DF
	brk $77.b		; 00 77
	asl $3E66.w		; 0E 66 3E
	bit $1E96.w		; 2C 96 1E
	cpx #$00FC.w		; E0 FC 00
	sed		; F8
	brk $E0.b		; 00 E0
	bmi -16.b		; 30 F0
	clc		; 18
	inc $07.b,X		; F6 07
	cpy $07.b		; C4 07
	stz $06.b		; 64 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $01.b		; 00 01
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	sbc $E0FFFF.l,X		; FF FF FF E0
	sbc $FEFF01.l,X		; FF 01 FF FE
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $0F.b		; 00 0F
	brk $E5.b		; 00 E5
	tas		; 1B
	rol $FCC7.w,X		; 3E C7 FC
	and $32FED9.l,X		; 3F D9 FE 32
	sbc $FB44.w,X		; FD 44 FB
	txa		; 8A
	sbc [$55.b],Y		; F7 55
	ldx $001B.w		; AE 1B 00
	cmp [$00.b]		; C7 00
	and $00FE00.l,X		; 3F 00 FE 00
	sbc $FB00.w,X		; FD 00 FB
	brk $F7.b		; 00 F7
	brk $AE.b		; 00 AE
	brk $F1.b		; 00 F1
	inc $FDC2.w,X		; FE C2 FD
	tsb $FB.b		; 04 FB
	bmi -49.b		; 30 CF
	sbc ($1F.b,X)		; E1 1F
	dec $3F.b		; C6 3F
	ora $F3FE.w,X		; 1D FE F3
	jsr ($00FE.w,X)		; FC FE 00
	sbc $FB00.w,X		; FD 00 FB
	brk $CF.b		; 00 CF
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $16.b		; 00 16
	sbc $F32C.w,Y		; F9 2C F3
	cli		; 58
	sbc [$B1.b]		; E7 B1
	cmp $C59F62.l		; CF 62 9F C5
	rol $788F.w,X		; 3E 8F 78
	ora [$F8.b],Y		; 17 F8
	sbc $F300.w,Y		; F9 00 F3
	brk $E7.b		; 00 E7
	brk $CF.b		; 00 CF
	brk $9F.b		; 00 9F
	brk $3E.b		; 00 3E
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0C0.w		; E0 C0 F0
	cpx #$E0F0.w		; E0 F0 E0
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
	brk $30.b		; 00 30
	rts		; 60

	bit $1930.w,X		; 3C 30 19
	clc		; 18
	tas		; 1B
	ora $0706.w,Y		; 19 06 07
	ora [$07.b]		; 07 07
	tsb $04.b		; 04 04
	php		; 08
	tsb $00.b		; 04 00
	sei		; 78
	brk $7F.b		; 00 7F
	clc		; 18
	and $021F08.l,X		; 3F 08 1F 02
	ora $010701.l		; 0F 01 07 01
	ora $01.b		; 05 01
	ora $0000.w		; 0D 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	txs		; 9A
	bne -109.b		; D0 93
	bvc  33.b		; 50 21
	jsr $2020.w		; 20 20 20
	brk $31.b		; 00 31
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	brk $9C.b		; 00 9C
	brk $FF.b		; 00 FF
	brk $B3.b		; 00 B3
	cpy #$E0E1.w		; C0 E1 E0
	beq -64.b		; F0 C0
	cmp #$9F6F.w		; C9 6F 9F
	dec $2F.b,X		; D6 2F
	sbc $752F.w,X		; FD 2F 75
	sta $BE9F6C.l		; 8F 6C 9F BE
	eor $9943BE.l		; 4F BE 43 99
	sbc $9F.b		; E5 9F
	brk $2F.b		; 00 2F
	brk $2F.b		; 00 2F
	brk $8F.b		; 00 8F
	brk $9F.b		; 00 9F
	brk $4D.b		; 00 4D
	brk $41.b		; 00 41
	brk $E2.b		; 00 E2
	cop $EF.b		; 02 EF
	beq -49.b		; F0 CF
	inc $FECD.w,X		; FE CD FE
	ora $EE.b,X		; 15 EE
	eor $BB.b,X		; 55 BB
	eor $DFF3D1.l		; 4F D1 F3 DF
	plx		; FA
	sta [$F0.b]		; 87 F0
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $8B.b		; 00 8B
	ora ($F1.b,X)		; 01 F1
	adc ($02.b),Y		; 71 02
	ora [$7A.b]		; 07 7A
	ora $02.b,S		; 03 02
	asl $0701.w,X		; 1E 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E030.w		; E0 30 E0
	clc		; 18
	bvs  24.b		; 70 18
	sed		; F8
	bcc  56.b		; 90 38
	dey		; 88
	sei		; 78
	cld		; D8
	sei		; 78
	bcs -72.b		; B0 B8
	rts		; 60

	cpy #$F000.w		; C0 00 F0
	bpl -32.b		; 10 E0
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	dey		; 88
	bcc -104.b		; 90 98
	bcc -80.b		; 90 B0
	brk $60.b		; 00 60
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora [$18.b]		; 07 18
	ora $180F18.l		; 0F 18 0F 18
	asl $70.b		; 06 70
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $18D010.l,X		; 1F 10 D0 18
	cpy #$E010.w		; C0 10 E0
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$0040.w		; C0 40 00
	brk $80.b		; 00 80
	bra  41.b		; 80 29
	cmp $51FF98.l,X		; DF 98 FF 51
	lda $337F93.l,X		; BF 93 7F 33
	sbc $28F72B.l,X		; FF 2B F7 28
	inc $58.b,X		; F6 58
	sbc $DE.b		; E5 DE
	brk $FE.b		; 00 FE
	brk $BE.b		; 00 BE
	ora ($7D.b,X)		; 01 7D
	ora $FD.b,S		; 03 FD
	ora $F4.b,S		; 03 F4
	ora $F4.b,S		; 03 F4
	ora $E4.b,S		; 03 E4
	cop $F8.b		; 02 F8
	php		; 08
	beq -124.b		; F0 84
	jmp ($BEC6.w,X)		; 7C C6 BE
	sbc $9E.b,S		; E3 9E
	lda ($0F.b),Y		; B1 0F
	clc		; 18
	eor [$8C.b]		; 47 8C
	eor ($86.b,X)		; 41 86
	beq   0.b		; F0 00
	sei		; 78
	brk $38.b		; 00 38
	brk $9C.b		; 00 9C
	bra -113.b		; 80 8F
	cmp ($07.b,X)		; C1 07
	cpy #$0003.w		; C0 03 00
	cop $02.b		; 02 02
	adc ($FE.b),Y		; 71 FE
	dec $F9.b		; C6 F9
	bit $F0C3.w,X		; 3C C3 F0
	ora $C11FE0.l		; 0F E0 1F C1
	and $1C7F86.l,X		; 3F 86 7F 1C
	sbc $F900FE.l,X		; FF FE 00 F9
	brk $C3.b		; 00 C3
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $88.b		; 00 88
	adc $24FD12.l,X		; 7F 12 FD 24
	xce		; FB
	eor #$82F7.w		; 49 F7 82
	sbc $25CE31.l,X		; FF 31 CE 25
	dec $7C8B.w,X		; DE 8B 7C
	adc $00FD00.l,X		; 7F 00 FD 00
	xce		; FB
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $CE.b		; 00 CE
	brk $DE.b		; 00 DE
	brk $7C.b		; 00 7C
	brk $C6.b		; 00 C6
	sbc $C739.w,Y		; F9 39 C7
	cmp [$3F.b]		; C7 3F
	adc $07FE.w,Y		; 79 FE 07
	sed		; F8
	sbc $000300.l,X		; FF 00 03 00
	brk $01.b		; 00 01
	sbc $C700.w,Y		; F9 00 C7
	brk $3F.b		; 00 3F
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	trb $0303.w		; 1C 03 03
	brk $00.b		; 00 00
	adc $E0DFF0.l		; 6F F0 DF E0
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $0601.w,X		; FE 01 06
	sta [$F4.b]		; 87 F4
	tsb $E2.b		; 04 E2
	cop $A1.b		; 02 A1
	and ($11.b,X)		; 21 11
	ora ($10.b),Y		; 11 10
	bpl   9.b		; 10 09
	ora #$FFFF.w		; 09 FF FF
	sbc $E081.w,Y		; F9 81 E0
	cpy #$9040.w		; C0 40 90
	bra   8.b		; 80 08
	php		; 08
	php		; 08
	tsb $07.b		; 04 07
	asl $0402.w		; 0E 02 04
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sed		; F8
	brk $F4.b		; 00 F4
	brk $FC.b		; 00 FC
	php		; 08
	sta $021704.l,X		; 9F 04 17 02
	ora $000500.l		; 0F 00 05 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  96.b		; 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $F0.b		; 00 F0
	ora [$09.b]		; 07 09
	cop $02.b		; 02 02
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	cop $03.b		; 02 03
	brk $01.b		; 00 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $B9.b		; 85 B9
	bit $24.b		; 24 24
	clc		; 18
	ora ($1B.b,S),Y		; 13 1B
	cop $02.b		; 02 02
	cop $D8.b		; 02 D8
	clv		; B8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	ora ($BD.b,X)		; 01 BD
	sec		; 38
	bit $1B10.w,X		; 3C 10 1B
	cop $9B.b		; 02 9B
	cop $C2.b		; 02 C2
	php		; 08
	sed		; F8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora ($0F.b),Y		; 11 0F
	rol $631F.w		; 2E 1F 63
	brk $84.b		; 00 84
	phd		; 0B
	ora $000010.l		; 0F 10 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l		; 0F 00 1F 00
	brk $00.b		; 00 00
	phd		; 0B
	brk $10.b		; 00 10
	brk $0F.b		; 00 0F
	brk $F0.b		; 00 F0
	ora $FFFF0F.l		; 0F 0F FF FF
	sbc $1FFF00.l,X		; FF 00 FF 1F
	cpx #$8778.w		; E0 78 87
	cmp [$3F.b]		; C7 3F
	brk $00.b		; 00 00
	ora $00FF00.l		; 0F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cpx #$8700.w		; E0 00 87
	brk $3F.b		; 00 3F
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	ora ($0D.b,X)		; 01 0D
	ora $30.b,S		; 03 30
	ora $0000FF.l		; 0F FF 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	and $E0FF3C.l,X		; 3F 3C FF E0
	sbc $C3E01C.l,X		; FF 1C E0 C3
	brk $0C.b		; 00 0C
	ora $77.b,S		; 03 77
	ora $3FFF00.l		; 0F 00 FF 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	clv		; B8
	beq  28.b		; F0 1C
	sei		; 78
	asl $F7CE.w		; 0E CE F7
	dec $DA.b		; C6 DA
	txa		; 8A
	sty $19.b		; 84 19
	trb $3838.w		; 1C 38 38
	jsr $10FC.w		; 20 FC 10
	inc $FF08.w,X		; FE 08 FF
	stx $FF.b		; 86 FF
.INDEX 16
	rep #$DF		; C2 DF
	bra -113.b		; 80 8F
	bpl  29.b		; 10 1D
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpy #$A0C0.w		; C0 C0 A0
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E080.w		; E0 80 E0
	cpy #$20F8.w		; C0 F8 20
	jsr ($007E.w,X)		; FC 7E 00
	rol $3E00.w,X		; 3E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	ora $1F.b,S		; 03 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $0E.b		; 02 0E
	ora ($1F.b,X)		; 01 1F
	brk $7A.b		; 00 7A
	ora $00.b		; 05 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $5A.b		; 00 5A
	sbc ($B7.b,X)		; E1 B7
	cpy #$C0AC.w		; C0 AC C0
	stz $80.b		; 64 80
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	tsb $C0.b		; 04 C0
	php		; 08
	cpy #$8000.w		; C0 00 80
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	dey		; 88
	dey		; 88
	pha		; 48
	pha		; 48
	eor ($82.b,X)		; 41 82
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
	inc $FF00.w,X		; FE 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	bpl -64.b		; 10 C0
	sec		; 38
	bpl  -4.b		; 10 FC
	plp		; 28
	inc $2424.w		; EE 24 24
	jsl $141422.l		; 22 22 14 14
	clc		; 18
	clc		; 18
	ldy #$D0A0.w		; A0 A0 D0
	bne  40.b		; D0 28
	plp		; 28
	mvn $80,$44		; 54 44 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$6060.w		; C0 60 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	brk $02.b		; 00 02
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bpl 126.b		; 10 7E
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($05.b,X)		; 01 05
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	bvs -16.b		; 70 F0
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra  -8.b		; 80 F8
	rts		; 60

	jsr ($FEB0.w,X)		; FC B0 FE
	ora $413220.l,X		; 1F 20 32 41
	eor $03.b		; 45 03
	php		; 08
	ora [$13.b]		; 07 13
	tsb $102E.w		; 0C 2E 10
	bmi  64.b		; 30 40
	rti		; 40

	bra  32.b		; 80 20
	brk $41.b		; 00 41
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0C.b		; 00 0C
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $1E.b		; 00 1E
	sbc $8FFF78.l,X		; FF 78 FF 8F
	beq 127.b		; F0 7F
	bra -63.b		; 80 C1
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	ora $33.b,S		; 03 33
	ora $FF00FF.l		; 0F FF 00 FF
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0E.b		; 00 0E
	ora ($38.b,X)		; 01 38
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	trb $0E38.w		; 1C 38 0E
	trb $0D06.w		; 1C 06 0D
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($0B.b,X)		; 01 0B
	ora [$10.b]		; 07 10
	ror $3F08.w,X		; 7E 08 3F
	tsb $1F.b		; 04 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $3F.b		; 00 3F
	clv		; B8
	stz $675C.w		; 9C 5C 67
	ror $2663.w		; 6E 63 26
	and ($0B.b,X)		; 21 0B
	tsb $0C0C.w		; 0C 0C 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tya		; 98
	lda $627F44.l,X		; BF 44 7F 62
	adc $082720.l		; 6F 20 27 08
	ora $000C0C.l		; 0F 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$C080.w		; C0 80 C0
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	rti		; 40

	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra -96.b		; 80 A0
	bra 112.b		; 80 70
	bvs  56.b		; 70 38
	sec		; 38
	trb $0000.w		; 1C 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	cpy #$F080.w		; C0 80 F0
	brk $F8.b		; 00 F8
	bmi 126.b		; 30 7E
	clc		; 18
	and $750080.l,X		; 3F 80 00 75
	sta $EF.b,S		; 83 EF
	ora [$DF.b]		; 07 DF
	ora $DF1FDF.l,X		; 1F DF 1F DF
	trb $00E0.w		; 1C E0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ldy #$47AF.w		; A0 AF 47
	eor $9EBF9F.l,X		; 5F 9F BF 9E
	lda $40BF80.l,X		; BF 80 BF 40
	lsr $0000.w,X		; 5E 00 00
	eor $FCFE3E.l,X		; 5F 3E FE FC
	pea $D0F8.w		; F4 F8 D0
	cpx #$8040.w		; E0 40 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $F8FF.w		; 0C FF F8
	sbc $80FEE0.l,X		; FF E0 FE 80
	sed		; F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E00.w,X		; 1E 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $072900.l		; 0F 00 29 07
	xce		; FB
	ora [$FF.b]		; 07 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $E00701.l,X		; 1F 01 07 E0
	cpx #$8080.w		; E0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $98E3.w,X		; 1E E3 98
	.db $82, $BC, $66		; 82 BC 66
	iny		; C8
	ldy $D8E0.w,X		; BC E0 D8
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	cpx #$027E.w		; E0 7E 02
	cli		; 58
	rti		; 40

	bcc -112.b		; 90 90
	cpy #$00C0.w		; C0 C0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $003E00.l,X		; 3F 00 3E 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	rti		; 40

	ora $003F00.l,X		; 1F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F800.w,X		; FE 00 F8
	brk $0C.b		; 00 0C
	tsb $1818.w		; 0C 18 18
	bmi  48.b		; 30 30
	rts		; 60

	rts		; 60

	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rts		; 60

	cpx #$4860.w		; E0 60 48
	bpl   8.b		; 10 08
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	jsr $00F0.w		; 20 F0 00
	ror $1F00.w,X		; 7E 00 1F
	jmp.w [$FE20]		; DC 20 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	rts		; 60

	tsb $44.b		; 04 44
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	inc $7E00.w,X		; FE 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $04.b		; 00 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $1F.b		; 02 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $0C.b		; 00 0C
	tsb $0808.w		; 0C 08 08
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FC00.l,X		; FF 00 FC 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	sec		; 38
	rts		; 60

	rts		; 60

	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	jmp $6CBF.w		; 4C BF 6C
	sta $CC574C.l,X		; 9F 4C 57 CC
	and $4FE6.w		; 2D E6 4F
	dec $DB.b		; C6 DB
	rol $76.b,X		; 36 76
	and ($1C.b,S),Y		; 33 1C
	jmp.w [$EC0C]		; DC 0C EC
	bit $2EEC.w		; 2C EC 2E
	inc $F616.w		; EE 16 F6
	rol $F6.b,X		; 36 F6
	asl $F6.b		; 06 F6
	phd		; 0B
	tda		; 7B
	jmp $402060.l		; 5C 60 20 40
	ldy #$A0C0.w		; A0 C0 A0
	cpy #$C0E0.w		; C0 E0 C0
	.db $62, $40, $20		; 62 40 20
	cop $94.b		; 02 94
	jsl $80FC80.l		; 22 80 FC 80
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra -30.b		; 80 E2
	cpy #$40E2.w		; C0 E2 40
	ror $BB.b,X		; 76 BB
	.db $62, $DD, $26		; 62 DD 26
	ror $FA8C.w,X		; 7E 8C FA
	cpy $C8F4.w		; CC F4 C8
	plx		; FA
	ora $5F.b		; 05 5F
	sbc [$7C.b]		; E7 7C
	sbc ($64.b,X)		; E1 64
	adc [$20.b]		; 67 20
	and [$80.b]		; 27 80
	stx $CEC0.w		; 8E C0 CE
	cpy #$00CC.w		; C0 CC 00
	ora [$E0.b]		; 07 E0
	sbc [$E2.b]		; E7 E2
	sbc $B4.b,S		; E3 B4
	pla		; 68
	sei		; 78
	bpl   8.b		; 10 08
	bpl  24.b		; 10 18
	brk $50.b		; 00 50
	jsr $C0A0.w		; 20 A0 C0
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	cpx $7800.w		; EC 00 78
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ora $03.b		; 05 03
	inc A		; 1A
	asl $15.b		; 06 15
	asl A		; 0A
	tas		; 1B
	brk $13.b		; 00 13
	brk $1A.b		; 00 1A
	ora ($13.b,X)		; 01 13
	ora #$0315.w		; 09 15 03
	brk $07.b		; 00 07
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $1B.b		; 00 1B
	brk $13.b		; 00 13
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	php		; 08
	ora $2F1827.l,X		; 1F 27 18 2F
	trb $8C3F.w		; 1C 3F 8C
	ldx $7F81.w,Y		; BE 81 7F
	brk $6B.b		; 00 6B
	trb $1CFB.w		; 1C FB 1C
	sbc $D818.w,X		; FD 18 D8
	cld		; D8
	jmp.w [$4DDC]		; DC DC 4D
	cmp $C141.w		; CD 41 C1
	bra -128.b		; 80 80
	stz $1C9C.w		; 9C 9C 1C
	trb $1A1A.w		; 1C 1A 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$2100.w		; C0 00 21
	cpy #$A0D9.w		; C0 D9 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E1.b		; 00 E1
	brk $B9.b		; 00 B9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	and $385F02.l,X		; 3F 02 5F 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $3E.b		; 00 3E
	brk $78.b		; 00 78
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bvc  32.b		; 50 20
	cpx #$B040.w		; E0 40 B0
	bra -48.b		; 80 D0
	jsr $00F0.w		; 20 F0 00
	sei		; 78
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	cpx #$F040.w		; E0 40 F0
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	cli		; 58
	bmi  63.b		; 30 3F
	php		; 08
	sec		; 38
	bpl  31.b		; 10 1F
	brk $1F.b		; 00 1F
	php		; 08
	ora $000004.l,X		; 1F 04 00 00
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $2F.b		; 00 2F
	ora [$37.b]		; 07 37
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	stz $04.b		; 64 04
	lsr $BF20.w		; 4E 20 BF
	rts		; 60

	adc $007FC0.l,X		; 7F C0 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $1B01.w,X		; FE 01 1B
	adc $007111.l,X		; 7F 11 71 00
	cpx #$C000.w		; E0 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	adc $04FF05.l,X		; 7F 05 FF 04
	xce		; FB
	ora [$FD.b]		; 07 FD
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $67.b		; 00 67
	tya		; 98
	sta $85.b		; 85 85
	tsb $04.b		; 04 04
	ora [$07.b]		; 07 07
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	stz $FF9C.w		; 9C 9C FF
	mvn $44,$FF		; 54 FF 44
	xce		; FB
	jsr ($08F7.w,X)		; FC F7 08
	sbc $10FF00.l,X		; FF 00 FF 10
	sbc $00FFE0.l,X		; FF E0 FF 00
	mvn $E4,$54		; 54 54 E4
	cpx $FC.b		; E4 FC
	jsr ($0808.w,X)		; FC 08 08
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	cpx $E608.w		; EC 08 E6
	tsb $E6.b		; 04 E6
	tsb $F1.b		; 04 F1
	cop $FF.b		; 02 FF
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $10.b		; 00 10
	trb $1E18.w		; 1C 18 1E
	clc		; 18
	asl $0F0C.w,X		; 1E 0C 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$7040.w		; A0 40 70
	jsr $2071.w		; 20 71 20
	stz $0051.w,X		; 9E 51 00
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora [$FB.b]		; 07 FB
	trb $E000.w		; 1C 00 E0
	brk $70.b		; 00 70
	brk $71.b		; 00 71
	jsr $FFFF.w		; 20 FF FF
	sbc $000000.l,X		; FF 00 00 00
	ora [$00.b]		; 07 00
	ora $C72365.l,X		; 1F 65 23 C7
	rti		; 40

	ldx #$3B51.w		; A2 51 3B
	bit #$0992.w		; 89 92 09
	phd		; 0B
	brk $09.b		; 00 09
	brk $0D.b		; 00 0D
	tsb $1B.b		; 04 1B
	tda		; 7B
	sec		; 38
	sed		; F8
	ora $05FD.w		; 0D FD 05
	lda $9D05.w,X		; BD 05 9D
	tsb $0C.b		; 04 0C
	asl $0E.b		; 06 0E
	cop $0E.b		; 02 0E
	tax		; AA
	bit $D6.b,X		; 34 D6
	trb $8442.w		; 1C 42 84
	xba		; EB
	cpy $58F6.w		; CC F6 58
	pea $FAA8.w		; F4 A8 FA
	mvn $A4,$7E		; 54 7E A4
	rti		; 40

	ror $3E20.w,X		; 7E 20 3E
	clv		; B8
	ldx $DFD0.w,Y		; BE D0 DF
	rti		; 40

	lsr $ACA0.w,X		; 5E A0 AC
	bvc  86.b		; 50 56
	ldy #$FDA6.w		; A0 A6 FD
	adc ($BE.b,X)		; 61 BE
	rts		; 60

	inc $7E30.w		; EE 30 7E
	bmi -34.b		; 30 DE
	bcs  -9.b		; B0 F7
	tya		; 98
	sbc $D86FD8.l,X		; FF D8 6F D8
	.db $62, $63, $71		; 62 63 71
	adc ($71.b),Y		; 71 71
	adc ($B1.b),Y		; 71 B1
	lda ($39.b),Y		; B1 39
	lda $B838.w,Y		; B9 38 B8
	clc		; 18
	cld		; D8
	trb $80DC.w		; 1C DC 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	bra  32.b		; 80 20
	rti		; 40

	bvc  96.b		; 50 60
	jsr $0038.w		; 20 38 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	cpy #$13F8.w		; C0 F8 13
	asl $1B.b		; 06 1B
	asl A		; 0A
	ora ($08.b),Y		; 11 08
	ora $0B04.w		; 0D 04 0B
	tsb $17.b		; 04 17
	tsb $30D3.w		; 0C D3 30
	tsa		; 3B
	php		; 08
	php		; 08
	asl $1E04.w,X		; 1E 04 1E
	asl $1E.b		; 06 1E
	cop $0E.b		; 02 0E
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	tsb $04FC.w		; 0C FC 04
	bit $18F4.w,X		; 3C F4 18
	jmp.w [$FA30]		; DC 30 FA
	and ($ED.b)		; 32 ED
	and [$BE.b],Y		; 37 BE
	adc $F3.b		; 65 F3
	stz $D5.b		; 64 D5
	.db $62, $75, $C0		; 62 75 C0
	tsa		; 3B
	tsa		; 3B
	tsa		; 3B
	tsa		; 3B
	and $37.b,X		; 35 37
	bvs 119.b		; 70 77
	bvs 119.b		; 70 77
	pla		; 68
	adc $E8EFE8.l		; 6F E8 EF E8
	sbc $0001.w		; ED 01 00
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	ora $02.b		; 05 02
	asl $00.b		; 06 00
	cop $04.b		; 02 04
	ora $0A06.w		; 0D 06 0A
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	ora $F60F04.l		; 0F 04 0F F6
	cmp $C47C.w,Y		; D9 7C C4
	lda $7F60.w,X		; BD 60 7F
	jsr $206F.w		; 20 6F 20
	sta $418E40.l		; 8F 40 8E 41
	eor $DF00C1.l,X		; 5F C1 00 DF
	ora $C7.b,S		; 03 C7
	cop $E2.b		; 02 E2
	brk $60.b		; 00 60
	bpl 112.b		; 10 70
	and ($F1.b),Y		; 31 F1
	and ($F1.b),Y		; 31 F1
	and ($E1.b,X)		; 21 E1
	eor $40BF20.l,X		; 5F 20 BF 40
	sei		; 78
	cpy #$80B0.w		; C0 B0 80
	clv		; B8
	rti		; 40

	jmp ($5F20.w,X)		; 7C 20 5F
	bmi -81.b		; 30 AF
	bpl   0.b		; 10 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$C000.w		; C0 00 C0
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $B0.b		; 00 B0
	pla		; 68
	bpl -12.b		; 10 F4
	clc		; 18
	cpx $7C08.w		; EC 08 7C
	php		; 08
	bit $7408.w,X		; 3C 08 74
	php		; 08
	plx		; FA
	tsb $0EED.w		; 0C ED 0E
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	bpl  31.b		; 10 1F
	asl $0101.w		; 0E 01 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($04.b,X)		; 01 04
	cop $00.b		; 02 00
	ora $000100.l		; 0F 00 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora [$9D.b]		; 07 9D
	sta $4D.b,S		; 83 4D
	cmp $A7.b,S		; C3 A7
	adc ($77.b,X)		; 61 77
	sta ($7E.b,X)		; 81 7E
	sta ($FF.b,X)		; 81 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $63.b		; 00 63
	sbc $33.b,S		; E3 33
	sbc ($1B.b,S),Y		; F3 1B
	xce		; FB
	ora #$0189.w		; 09 89 01
	sta ($01.b,X)		; 81 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	lda $FFB1DF.l,X		; BF DF B1 FF
	sta [$FF.b],Y		; 97 FF
	tya		; 98
	sbc $97FF90.l,X		; FF 90 FF 97
	lda $C97FD9.l		; AF D9 7F C9
	lda $B1B1BF.l,X		; BF BF B1 B1
	sta [$97.b],Y		; 97 97
	stz $909C.w		; 9C 9C 90
	bcc -41.b		; 90 D7
	cmp [$DD.b],Y		; D7 DD
	cmp $C9C9.w,X		; DD C9 C9
	lda $FF46.w,X		; BD 46 FF
	sed		; F8
	sbc $CEBDC0.l,X		; FF C0 BD CE
	sbc $9EFDD8.l,X		; FF D8 FD 9E
	sbc $52EF1E.l		; EF 1E EF 52
	lsr $F84E.w		; 4E 4E F8
	sed		; F8
	cpy #$CEC0.w		; C0 C0 CE
	dec $D8D8.w		; CE D8 D8
	stz $1E9E.w,X		; 9E 9E 1E
	asl $5252.w,X		; 1E 52 52
	cmp $30FC30.l		; CF 30 FC 30
	sbc #$B931.w		; E9 31 B9
	rts		; 60

	sbc $FB60.w,Y		; F9 60 FB
	.db $62, $DF, $66		; 62 DF 66
	sbc $3042.w,X		; FD 42 30
	bmi  51.b		; 30 33
	and ($76.b,S),Y		; 33 76
	adc [$76.b],Y		; 77 76
	adc [$66.b],Y		; 77 66
	adc [$64.b]		; 67 64
	adc [$60.b]		; 67 60
	adc [$E0.b]		; 67 E0
	sbc $AC.b,S		; E3 AC
	bmi -80.b		; 30 B0
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	jmp ($F000.w,X)		; 7C 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	asl $0D.b		; 06 0D
	tsb $09.b		; 04 09
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	tsb $0F.b		; 04 0F
	tsb $0B.b		; 04 0B
	tsb $17.b		; 04 17
	php		; 08
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	asl $0E.b		; 06 0E
	tsb $0C.b		; 04 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp $009F00.l,X		; DF 00 9F 00
	lda $705F30.l,X		; BF 30 5F 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $6020.w		; 20 20 60
	rts		; 60

	rti		; 40

	bvs -128.b		; 70 80
	beq   9.b		; F0 09
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $1B.b		; 02 1B
	tsb $17.b		; 04 17
	php		; 08
	asl $0E02.w		; 0E 02 0E
	brk $00.b		; 00 00
	ora #$0300.w		; 09 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	ora ($0B.b,X)		; 01 0B
	ora ($0F.b,X)		; 01 0F
	lda $80FF00.l,X		; BF 00 FF 80
	sbc $00FB00.l,X		; FF 00 FB 00
	cmp ($30.b,S),Y		; D3 30
	tyx		; BB
	cpy #$84EF.w		; C0 EF 84
	sta $C04004.l		; 8F 04 40 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $043C.w		; 0C 3C 04
	jsr ($EC00.w,X)		; FC 00 EC
	brk $8C.b		; 00 8C
	sbc [$4E.b],Y		; F7 4E
	cmp $73BD61.l,X		; DF 61 BD 73
	dec $FF23.w,X		; DE 23 FF
	asl $ED.b		; 06 ED
	asl $1CEB.w,X		; 1E EB 1C
	ldx $EE41.w,Y		; BE 41 EE
	inc $6161.w		; EE 61 61
	adc ($73.b,S),Y		; 73 73
	adc $63.b,S		; 63 63
	ora $1E1E0F.l		; 0F 0F 1E 1E
	trb $411C.w		; 1C 1C 41
	eor ($BF.b,X)		; 41 BF
	cpy #$80FF.w		; C0 FF 80
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $70BF00.l,X		; FF 00 BF 70
	sbc $7BB719.l,X		; FF 19 B7 7B
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	tas		; 1B
	tas		; 1B
	tda		; 7B
	tda		; 7B
	ror $FFC1.w,X		; 7E C1 FF
	cpy #$C0FF.w		; C0 FF C0
	lda $FAC3.w,Y		; B9 C3 FA
	sta ($FB.b,X)		; 81 FB
	brk $FA.b		; 00 FA
	bra 126.b		; 80 7E
	sty $C0.b		; 84 C0
	cmp ($C0.b,X)		; C1 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy $C7.b		; C4 C7
	cpy $C7.b		; C4 C7
	tsb $07.b		; 04 07
	cpy $C6.b		; C4 C6
	bra -122.b		; 80 86
	cpy #$E000.w		; C0 00 E0
	bra -40.b		; 80 D8
	rts		; 60

	pea $FA38.w		; F4 38 FA
	cpy $00FF.w		; CC FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $CE.b		; 00 CE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $C0FFC0.l,X		; FF C0 FF C0
	sbc $C0FFC0.l,X		; FF C0 FF C0
	sbc $E05FC0.l,X		; FF C0 5F E0
	eor $60FFE0.l,X		; 5F E0 FF 60
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$E0E0.w		; E0 E0 E0
	cpx #$30FF.w		; E0 FF 30
	sbc $30EF30.l,X		; FF 30 EF 30
	sbc $60BF20.l,X		; FF 20 BF 60
	sbc $60DF60.l,X		; FF 60 DF 60
	sbc $383840.l,X		; FF 40 38 38
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	bvs 112.b		; 70 70
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	cmp [$04.b]		; C7 04
	sbc ($21.b,X)		; E1 21
	sbc [$38.b]		; E7 38
	cpx $E830.w		; EC 30 E8
	bpl  -8.b		; 10 F8
	bpl -12.b		; 10 F4
	clc		; 18
	cpx $08.b		; E4 08
	sec		; 38
	bit $3F1E.w,X		; 3C 1E 3F
	brk $3F.b		; 00 3F
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	plx		; FA
	tsb $9F.b		; 04 9F
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0D04.w		; 09 04 0D
	tsb $13.b		; 04 13
	ora #$09DB.w		; 09 DB 09
	lda [$5A.b]		; A7 5A
	eor $226F35.l,X		; 5F 35 6F 22
	eor $0E0224.l		; 4F 24 02 0E
	cop $0E.b		; 02 0E
	ora $1D.b		; 05 1D
	ora $DD.b		; 05 DD
	cop $FA.b		; 02 FA
	ora $75.b		; 05 75
	ora ($72.b)		; 12 72
	trb $74.b		; 14 74
	inc $3408.w,X		; FE 08 34
	cld		; D8
	pea $B8D8.w		; F4 D8 B8
	bvc -24.b		; 50 E8
	bcc -56.b		; 90 C8
	bpl  84.b		; 10 54
	tya		; 98
	cmp $86.b		; C5 86
	brk $0E.b		; 00 0E
	cpy #$C0DC.w		; C0 DC C0
	jmp.w [$5840]		; DC 40 58
	bra -104.b		; 80 98
	jsr $A038.w		; 20 38 A0
	ldy $BFB8.w,X		; BC B8 BF
	pea $CC58.w		; F4 58 CC
	dey		; 88
	ldx $5330.w		; AE 30 53
	cpx #$60D0.w		; E0 D0 60
	ldy #$0040.w		; A0 40 00
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	jmp $40BCB0.l		; 5C B0 BC 40
	ror $F300.w,X		; 7E 00 F3
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($08.b,S),Y		; 13 08
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0E.b		; 00 0E
	ora $0F.b		; 05 0F
	ora $17.b		; 05 17
	ora $1BAD.w		; 0D AD 1B
	ldx $53.b,Y		; B6 53
	tsb $1C.b		; 04 1C
	tsb $0C.b		; 04 0C
	ora $0D.b		; 05 0D
	ora ($0D.b,X)		; 01 0D
	ora ($0D.b,X)		; 01 0D
	ora ($1D.b,X)		; 01 1D
	ora $BB.b,S		; 03 BB
	phd		; 0B
	xce		; FB
	asl $08.b,X		; 16 08
	asl $1D08.w,X		; 1E 08 1D
	ora #$0A1F.w		; 09 1F 0A
	asl $140C.w,X		; 1E 0C 14
	php		; 08
	bpl   8.b		; 10 08
	php		; 08
	brk $01.b		; 00 01
	ora $1901.w,Y		; 19 01 19
	cop $1B.b		; 02 1B
	brk $1B.b		; 00 1B
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	and $90FF50.l,X		; 3F 50 FF 90
	cmp [$30.b],Y		; D7 30
	ror $21.b		; 66 21
	eor [$01.b]		; 47 01
	adc $214E01.l		; 6F 01 4E 21
	sta $F08040.l,X		; 9F 40 80 F0
	brk $F0.b		; 00 F0
	php		; 08
	sed		; F8
	ora $3979.w,Y		; 19 79 39
	adc $7111.w,Y		; 79 11 71
	ora ($71.b),Y		; 11 71
	and ($E1.b,X)		; 21 E1
	ora #$1001.w		; 09 01 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$1000.w		; 09 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phk		; 4B
	bra 115.b		; 80 73
	pha		; 48
	ora ($30.b,S),Y		; 13 30
	and ($18.b,X)		; 21 18
	ora $0B04.w,X		; 1D 04 0B
	asl $0B.b		; 06 0B
	asl $37.b		; 06 37
	tsb $CC04.w		; 0C 04 CC
	tsb $7C.b		; 04 7C
	tsb $063C.w		; 0C 3C 06
	rol $1E02.w,X		; 3E 02 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $3C.b		; 00 3C
	sbc $63FF7F.l,X		; FF 7F FF 63
	sbc $A37F23.l,X		; FF 23 7F A3
	lda $CEF5DF.l,X		; BF DF F5 CE
	sbc $C0FFC0.l,X		; FF C0 FF C0
	adc $67677F.l,X		; 7F 7F 67 67
	and $23.b,S		; 23 23
	lda ($B3.b,S),Y		; B3 B3
	cmp $CECEDF.l,X		; DF DF CE CE
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$77FA.w		; C0 FA 77
	bit #$FF76.w		; 89 76 FF
	brk $FF.b		; 00 FF
	cpy #$DCEB.w		; C0 EB DC
	tda		; 7B
	jmp.w [$18FF]		; DC FF 18
	cmp [$38.b],Y		; D7 38
	adc [$77.b],Y		; 77 77
	ror $76.b,X		; 76 76
	brk $00.b		; 00 00
	cpy #$DCC0.w		; C0 C0 DC
	jmp.w [$DCDC]		; DC DC DC
	bit $383C.w,X		; 3C 3C 38
	sec		; 38
	sbc $FD06.w,X		; FD 06 FD
	cop $FF.b		; 02 FF
	cop $FF.b		; 02 FF
	cop $BE.b		; 02 BE
	ora $BF.b,S		; 03 BF
	ora ($9F.b,X)		; 01 9F
	brk $9F.b		; 00 9F
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $40.b,S		; 03 40
	eor $40.b,S		; 43 40
	eor ($60.b,X)		; 41 60
	rts		; 60

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	bra -104.b		; 80 98
	rts		; 60

	cpx $18.b		; E4 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	brk $1C.b		; 00 1C
	sbc $60FF60.l,X		; FF 60 FF 60
	sbc $62FD60.l,X		; FF 60 FD 62
	sbc $63FE62.l,X		; FF 62 FE 63
	adc $26DBE3.l,X		; 7F E3 DB 26
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	.db $62, $62, $62		; 62 62 62
	.db $62, $62, $62		; 62 62 62
	sbc [$E7.b]		; E7 E7
	sbc [$E7.b]		; E7 E7
	adc [$67.b]		; 67 67
	jsr ($BC40.w,X)		; FC 40 BC
	rti		; 40

	jsr ($FF00.w,X)		; FC 00 FF
	ora ($FE.b,X)		; 01 FE
	ora ($EE.b,X)		; 01 EE
	ora ($CF.b,X)		; 01 CF
	php		; 08
	cmp [$1C.b]		; C7 1C
	eor $43.b,S		; 43 43
	eor $43.b,S		; 43 43
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bpl  17.b		; 10 11
	bmi  56.b		; 30 38
	jsr $EC3C.w		; 20 3C EC
	php		; 08
	pea $7700.w		; F4 00 77
	tsb $7E.b		; 04 7E
	ora $7F.b,S		; 03 7F
	rti		; 40

	ora $80F818.l,X		; 1F 18 F8 80
	rti		; 40

	bra  16.b		; 80 10
	trb $0C08.w		; 1C 08 0C
	dey		; 88
	sta $808380.l		; 8F 80 83 80
	cpy #$FFE0.w		; C0 E0 FF
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	beq  -8.b		; F0 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$F000.w		; C0 00 F0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and [$12.b],Y		; 37 12
	rol A		; 2A
	clc		; 18
	ora ($09.b),Y		; 11 09
	inc A		; 1A
	phd		; 0B
	ora ($04.b,S),Y		; 13 04
	rol $2818.w		; 2E 18 28
	bpl  48.b		; 10 30
	brk $0A.b		; 00 0A
	dec A		; 3A
	ora $3D.b		; 05 3D
	asl $1F.b		; 06 1F
	tsb $1F.b		; 04 1F
	php		; 08
	ora $003E00.l,X		; 1F 00 3E 00
	sec		; 38
	brk $30.b		; 00 30
	dex		; CA
	jmp $D09C.w		; 4C 9C D0
	pla		; 68
	bcs -48.b		; B0 D0
	jsr $0070.w		; 20 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi 126.b		; 30 7E
	jsr $00FC.w		; 20 FC 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $F4C8.w		; EC C8 F4
	cld		; D8
	ldy $C7.b		; A4 C7
	cmp $B0E990.l,X		; DF 90 E9 B0
	adc ($A0.b),Y		; 71 A0
	tya		; 98
	bpl -108.b		; 10 94
	sec		; 38
	bne -36.b		; D0 DC
	cpy #$D8DC.w		; C0 DC D8
	cmp $80BFA0.l,X		; DF A0 BF 80
	lda $B180.w,Y		; B9 80 B1
	rts		; 60

	sei		; 78
	rti		; 40

	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	bpl   0.b		; 10 00
	plp		; 28
	bpl -10.b		; 10 F6
	clc		; 18
	and $E6.b		; 25 E6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	brk $38.b		; 00 38
	brk $FE.b		; 00 FE
	clc		; 18
	sbc $FD83FA.l,X		; FF FA 83 FD
	ora ($FE.b,X)		; 01 FE
	brk $FE.b		; 00 FE
	brk $BB.b		; 00 BB
	jmp ($FE7D.w,X)		; 7C 7D FE
	inc $FFFF.w,X		; FE FF FF
	ora ($04.b),Y		; 11 04
	sta [$02.b]		; 87 02
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	ora ($FE.b,X)		; 01 FE
	inc $FFFF.w,X		; FE FF FF
	sbc $1111FF.l,X		; FF FF 11 11
	inc $4C10.w,X		; FE 10 4C
	ldy #$A1EC.w		; A0 EC A1
	ora $43DE42.l,X		; 1F 42 DE 43
	cmp $FC01.w,X		; DD 01 FC
	ora ($FB.b,X)		; 01 FB
	cop $01.b		; 02 01
	sbc ($13.b),Y		; F1 13
	sbc ($12.b,S),Y		; F3 12
	sbc ($A0.b,S),Y		; F3 A0
	sbc $20.b,S		; E3 20
	adc $22.b,S		; 63 22
	and $02.b,S		; 23 02
	ora $04.b,S		; 03 04
	ora [$28.b]		; 07 28
	bmi -16.b		; 30 F0
	cpy #$0080.w		; C0 80 00
	brk $00.b		; 00 00
	cpy #$4000.w		; C0 00 40
	bra -96.b		; 80 A0
	rti		; 40

	bmi   0.b		; 30 00
	cpy #$00F8.w		; C0 F8 00
	beq   0.b		; F0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($8800.w,X)		; FC 00 88
	bcc  80.b		; 90 50
	rts		; 60

	ldy #$C040.w		; A0 40 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F860.w,X)		; FC 60 F8
	bra -16.b		; 80 F0
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	and [$12.b]		; 27 12
	ora $0E0A0C.l,X		; 1F 0C 0A 0E
	ora [$18.b]		; 07 18
	ora $0000.w,Y		; 19 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	dec A		; 3A
	brk $1C.b		; 00 1C
	ora ($0F.b,X)		; 01 0F
	brk $1F.b		; 00 1F
	brk $19.b		; 00 19
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	ora ($0E.b,X)		; 01 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	jsr $D2DB.w		; 20 DB D2
	cpx $748C.w		; EC 8C 74
	sta ($63.b,S),Y		; 93 63
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$30C0.w		; C0 C0 30
	beq  83.b		; F0 53
	sbc ($6F.b,S),Y		; F3 6F
	sta $969FDF.l		; 8F DF 9F 96
	and $7619.w,Y		; 39 19 76
	and $1BFFC1.l,X		; 3F C1 FF 1B
	cmp $FAE539.l,X		; DF 39 E5 FA
	sbc $16FFC1.l,X		; FF C1 FF 16
	cmp ($18.b,X)		; C1 18
	stx $30.b,Y		; 96 30
	rti		; 40

	and $7F19.w,Y		; 39 19 7F
	php		; 08
	sbc $00FF40.l,X		; FF 40 FF 00
	sbc $C016.w,Y		; F9 16 C0
	bcs  66.b		; B0 42
	cmp $B728.w,Y		; D9 28 B7
	cmp $EAD7.w		; CD D7 EA
	cmp $E2.b,X		; D5 E2
	sbc ($E0.b,S),Y		; F3 E0
	sed		; F8
	bvc  -4.b		; 50 FC
	tay		; A8
	jmp $2600.w		; 4C 00 26
	brk $81.b		; 00 81
	cpy #$F082.w		; C0 82 F0
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	rti		; 40

	sbc ($00.b),Y		; F1 00
	beq -88.b		; F0 A8
	cpx #$60F0.w		; E0 F0 60
	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $006000.l,X		; FF 00 60 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	trb $1436.w		; 1C 36 14
	.db $42, $24		; 42 24
	.db $42, $24		; 42 24
	jmp ($6C28.w)		; 6C 28 6C
	plp		; 28
	mvn $58,$18		; 54 18 58
	bpl  28.b		; 10 1C
	brk $14.b		; 00 14
	php		; 08
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	plp		; 28
	bpl  40.b		; 10 28
	bpl  24.b		; 10 18
	jsr $2010.w		; 20 10 20
	ldy $FC78.w,X		; BC 78 FC
	sei		; 78
	ldy $BC78.w,X		; BC 78 BC
	sei		; 78
	jmp ($5C38.w,X)		; 7C 38 5C
	sec		; 38
	jmp $183C38.l		; 5C 38 3C 18
	sec		; 38
	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	sec		; 38
	php		; 08
	mvp $94,$28		; 44 28 94
	stz $9A.b,X		; 74 9A
	brk $FF.b		; 00 FF
	bpl  12.b		; 10 0C
	trb $12.b		; 14 12
	txa		; 8A
	eor $0000.w,Y		; 59 00 00
	sec		; 38
	sec		; 38
	pha		; 48
	sei		; 78
	mvn $0C,$7C		; 54 7C 0C
	tsb $F3.b		; 04 F3
	sbc ($FD.b,S),Y		; F3 FD
	sbc $AEAE.w,X		; FD AE AE
	lsr A		; 4A
	sbc $12.b,X		; F5 12
	sta $8F60.w,X		; 9D 60 8F
	inx		; E8
	sta [$B0.b],Y		; 97 B0
	ora $70.b		; 05 70
	trb $10.b		; 14 10
	stz $18.b		; 64 18
	jmp ($2E2E.w)		; 6C 2E 2E
	ror $06.b		; 66 06
	stz $04.b,X		; 74 04
	rts		; 60

	brk $68.b		; 00 68
	brk $E8.b		; 00 E8
	bra  -8.b		; 80 F8
	rts		; 60

	beq  96.b		; F0 60
	plp		; 28
	cmp ($28.b),Y		; D1 28
	cmp ($0A.b),Y		; D1 0A
	adc ($0A.b),Y		; 71 0A
	and ($05.b),Y		; 31 05
	clc		; 18
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $2E2E.w		; 2E 2E 2E
	rol $2E2E.w		; 2E 2E 2E
	asl $070E.w		; 0E 0E 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	tsb $0701.w		; 0C 01 07
	asl $1901.w		; 0E 01 19
	php		; 08
	and $993F80.l,X		; 3F 80 3F 99
	tas		; 1B
	eor $410E.w		; 4D 0E 41
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	php		; 08
	asl $00.b		; 06 00
	bmi   9.b		; 30 09
	bit $1C21.w,X		; 3C 21 1C
	and ($0C.b),Y		; 31 0C
	bcc 120.b		; 90 78
	rti		; 40

	ora ($10.b,S),Y		; 13 10
	sbc [$BC.b]		; E7 BC
	bcc -66.b		; 90 BE
	bpl  -2.b		; 10 FE
	sty $8C56.w		; 8C 56 8C
	adc ($8D.b)		; 72 8D
	cpx #$E160.w		; E0 60 E1
	ora ($00.b,X)		; 01 00
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	brk $8C.b		; 00 8C
	brk $AC.b		; 00 AC
	jsr $20AC.w		; 20 AC 20
	brk $E0.b		; 00 E0
	rti		; 40

	sec		; 38
	bpl  12.b		; 10 0C
	pha		; 48
	stx $24.b		; 86 24
.INDEX 16
	rep #$90		; C2 90
	adc $D2.b,S		; 63 D2
	and ($CA.b,X)		; 21 CA
	and ($00.b),Y		; 31 00
	brk $E0.b		; 00 E0
	cpx #$F8F8.w		; E0 F8 F8
	jmp ($BC7C.w,X)		; 7C 7C BC
	ldy $DEDE.w,X		; BC DE DE
	dec $EEDE.w,X		; DE DE EE
	inc $916A.w		; EE 6A 91
	jmp ($6C93.w)		; 6C 93 6C
	sta ($68.b)		; 92 68
	stx $50.b,Y		; 96 50
	ldy $7880.w		; AC 80 78
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	inc $6EEE.w		; EE EE 6E
	ror $6C6C.w		; 6E 6C 6C
	jmp ($586C.w)		; 6C 6C 58
	cli		; 58
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	tsb $0E.b		; 04 0E
	brk $0D.b		; 00 0D
	tsb $0A.b		; 04 0A
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	ora $08.b,S		; 03 08
	and ($22.b),Y		; 31 22
	eor ($08.b,X)		; 41 08
	cmp [$14.b]		; C7 14
	txa		; 8A
	plp		; 28
	sty $90.b,X		; 94 90
	bit $2855.w		; 2C 55 28
	ldy #$0E59.w		; A0 59 0E
	asl $3E3E.w		; 0E 3E 3E
	sei		; 78
	sei		; 78
	adc $75.b,X		; 75 75
	xba		; EB
	xba		; EB
	cmp [$D7.b],Y		; D7 D7
	cmp [$D7.b],Y		; D7 D7
	lda $6191AF.l		; AF AF 91 61
	and ($C4.b)		; 32 C4
	and #$A356.w		; 29 56 A3
	jmp $0EF105.l		; 5C 05 F1 0E
	ldy #$B017.w		; A0 17 B0
	ora $98.b,S		; 03 98
	cmp $3B3BDF.l,X		; DF DF 3B 3B
	lda $A0BD.w,X		; BD BD A0
	ldy #$808A.w		; A0 8A 80
	ora $000F01.l,X		; 1F 01 0F 00
	ora [$00.b]		; 07 00
	rtl		; 6B

	and ($FB.b)		; 32 FB
	adc #$60B2.w		; 69 B2 60
	adc ($00.b)		; 72 00
	rol $1F00.w,X		; 3E 00 1F
	bit $3312.w,X		; 3C 12 33
	asl A		; 0A
	and $32.b,S		; 23 32
	tsb $69.b		; 04 69
	tsb $60.b		; 04 60
	ora $0D00.w		; 0D 00 0D
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $1C00.w		; 0C 00 1C
	brk $FE.b		; 00 FE
	mvn $B6,$FB		; 54 FB B6
	sbc $486EAA.l		; EF AA 6E 48
	stz $42.b		; 64 42
	jsr ($3802.w,X)		; FC 02 38
	ror $6624.w,X		; 7E 24 66
	mvn $B6,$40		; 54 40 B6
	brk $AA.b		; 00 AA
	bpl  72.b		; 10 48
	bcc  64.b		; 90 40
	tya		; 98
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	clc		; 18
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $FF.b		; 00 FF
	asl $7F.b		; 06 7F
	inc $35.b,X		; F6 35
	inc $00FE.w,X		; FE FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $7F.b		; 06 7F
	jsl $FF00FF.l		; 22 FF 00 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C23.w		; 0E 23 0C
	and $1C.b,S		; 23 1C
	jsl $302618.l		; 22 18 26 30
	stz $38.b,X		; 74 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $1C78.w,X		; BC 78 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	asl $1A0C.w,X		; 1E 0C 1A
	tsb $182C.w		; 0C 2C 18
	bit $10.b,X		; 34 10
	stz $20.b		; 64 20
	stz $20.b		; 64 20
	jmp ($3C38.w,X)		; 7C 38 3C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	php		; 08
	jsr $2018.w		; 20 18 20
	clc		; 18
	sec		; 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cpy $6420.w		; CC 20 64
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $4070.w		; 2E 70 40
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $14.b		; 00 14
	asl $06.b,X		; 16 06
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
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
	brk $C1.b		; 00 C1
	ora ($22.b,X)		; 01 22
	sta ($52.b,X)		; 81 52
	cpy #$107F.w		; C0 7F 10
	cpx #$C727.w		; E0 27 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($C1.b,X)		; C1 C1
	and ($E1.b,X)		; 21 E1
	brk $E0.b		; 00 E0
	cmp $3F3F1F.l,X		; DF 1F 3F 3F
	brk $70.b		; 00 70
	brk $88.b		; 00 88
	rti		; 40

	and $9068C4.l		; 2F C4 68 90
	pla		; 68
	brk $FF.b		; 00 FF
	sty $2773.w		; 8C 73 27
	clc		; 18
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bcc -16.b		; 90 F0
	ora [$F7.b],Y		; 17 F7
	adc [$97.b],Y		; 77 97
	rts		; 60

	brk $8E.b		; 00 8E
	stx $EFEF.w		; 8E EF EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rti		; 40

	sec		; 38
	bpl  12.b		; 10 0C
	dey		; 88
	asl $24.b		; 06 24
.INDEX 16
	rep #$50		; C2 50
	lda $00.b,S		; A3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F8F8.w		; E0 F8 F8
	jsr ($3CFC.w,X)		; FC FC 3C
	bit $5E5E.w,X		; 3C 5E 5E
	cpx #$E0C0.w		; E0 C0 E0
	rti		; 40

	cpx #$6080.w		; E0 80 60
	rti		; 40

	cpy #$8080.w		; C0 80 80
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpy #$4000.w		; C0 00 40
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	asl A		; 0A
	and $3D18.w,X		; 3D 18 3D
	trb $1B.b		; 14 1B
	cop $0B.b		; 02 0B
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	asl $03.b		; 06 03
	ora [$0A.b]		; 07 0A
	brk $18.b		; 00 18
	cop $14.b		; 02 14
	cop $02.b		; 02 02
	tsb $02.b		; 04 02
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	lsr $FF.b,X		; 56 FF
	plb		; AB
	ror $54.b,X		; 76 54
	and ($11.b,S),Y		; 33 11
	tsa		; 3B
	rol A		; 2A
	and $FF28.w,Y		; 39 28 FF
	ora ($C7.b,X)		; 01 C7
	sbc $AB7056.l		; EF 56 70 AB
	jsr $8954.w		; 20 54 89
	ora ($CC.b),Y		; 11 CC
	rol A		; 2A
	cpy $28.b		; C4 28
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $54.b		; 00 54
	bit #$8954.w		; 89 54 89
	brk $CD.b		; 00 CD
	jsl $6A144C.l		; 22 4C 14 6A
	asl A		; 0A
	and $01.b,X		; 35 01
	asl $0700.w,X		; 1E 00 07
	ror $76.b,X		; 76 76
	ror $76.b,X		; 76 76
	adc ($72.b)		; 72 72
	and ($33.b,S),Y		; 33 33
	and $35.b,X		; 35 35
	inc A		; 1A
	inc A		; 1A
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($4C.b,S),Y		; 13 4C
	and ($6C.b,S),Y		; 33 6C
	ora $0031.w,X		; 1D 31 00
	sta $9E8709.l,X		; 9F 09 87 9E
	mvp $A8,$5A		; 44 5A A8
	ora $0C3FC0.l,X		; 1F C0 3F 0C
	ora $000E0C.l,X		; 1F 0C 0E 00
	ora [$07.b]		; 07 07
	ora $00.b,S		; 03 00
	sta $80.b		; 85 80
	eor #$2044.w		; 49 44 20
	brk $40.b		; 00 40
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	inc $5780.w,X		; FE 80 57
	txs		; 9A
	sbc $FB46.w,X		; FD 46 FB
	and $BC.b,X		; 35 BC
	bvs -128.b		; 70 80
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	brk $02.b		; 00 02
	txs		; 9A
	and $40.b,S		; 23 40
	ora [$30.b]		; 07 30
	asl $73.b		; 06 73
	tsb $00.b		; 04 00
	beq   0.b		; F0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $04.b,X		; 16 04
	asl $1A0C.w,X		; 1E 0C 1A
	tsb $182C.w		; 0C 2C 18
	bit $10.b,X		; 34 10
	stz $20.b		; 64 20
	stz $20.b		; 64 20
	jmp ($0438.w,X)		; 7C 38 04
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	php		; 08
	jsr $2018.w		; 20 18 20
	clc		; 18
	sec		; 38
	brk $5E.b		; 00 5E
	bit $3C5E.w,X		; 3C 5E 3C
	ror $34.b,X		; 76 34
	.db $62, $24, $6C		; 62 24 6C
	plp		; 28
	jmp ($4428.w)		; 6C 28 44
	php		; 08
	cli		; 58
	bpl   8.b		; 10 08
	bit $3C.b,X		; 34 3C
	brk $34.b		; 00 34
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  40.b		; 10 28
	bpl   8.b		; 10 08
	bmi  16.b		; 30 10
	jsr $4614.w		; 20 14 46
	trb $1C46.w		; 1C 46 1C
	lsr $1C.b		; 46 1C
	lsr $18.b		; 46 18
	mvp $4C,$08		; 44 08 4C
	sec		; 38
	stz $7C.b		; 64 7C
	clc		; 18
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	pha		; 48
	cpy $CC08.w		; CC 08 CC
	brk $46.b		; 00 46
	bit $66.b		; 24 66
	bit $66.b		; 24 66
	brk $62.b		; 00 62
	ora [$30.b],Y		; 17 30
	ora $003036.l		; 0F 36 30 00
	bvs  64.b		; 70 40
	bit $1804.w,X		; 3C 04 18
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	jsr $0008.w		; 20 08 00
	trb $16.b		; 14 16
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	cop $1D.b		; 02 1D
	asl A		; 0A
	and $10.b,X		; 35 10
	adc $22.b,S		; 63 22
	eor $49.b		; 45 49
	sty $55.b		; 84 55
	dey		; 88
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	inc A		; 1A
	inc A		; 1A
	bit $3B3C.w,X		; 3C 3C 3B
	tsa		; 3B
	tda		; 7B
	tda		; 7B
	adc [$77.b],Y		; 77 77
	cop $02.b		; 02 02
	bcc -84.b		; 90 AC
	lda #$12FC.w		; A9 FC 12
	eor $BF.b		; 45 BF
	stz $6F.b		; 64 6F
	.db $82, $3F, $E0		; 82 3F E0
	adc ($CC.b,S),Y		; 73 CC
	sbc $D3D3FF.l,X		; FF FF D3 D3
	sta $83.b,S		; 83 83
	tsx		; BA
	.db $82, $98, $80		; 82 98 80
	ora $1F00.w,Y		; 19 00 1F
	brk $3F.b		; 00 3F
	tsb $1C03.w		; 0C 03 1C
	ora ($8E.b),Y		; 11 8E
	bpl -87.b		; 10 A9
	bpl -87.b		; 10 A9
	ldy #$8058.w		; A0 58 80
	sec		; 38
	bne  24.b		; D0 18
	bra  48.b		; 80 30
	sbc [$F7.b],Y		; F7 F7
	sbc ($F1.b),Y		; F1 F1
	bvs 112.b		; 70 70
	bvc  80.b		; 50 50
	bmi  48.b		; 30 30
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	jsr $51AA.w		; 20 AA 51
	ldx #$D659.w		; A2 59 D6
	and #$29D6.w		; 29 D6 29
	mvn $54,$AB		; 54 AB 54
	tax		; AA
	plp		; 28
	pei ($20.b)		; D4 20
	cld		; D8
	ldx $AEAE.w		; AE AE AE
	ldx $D6D6.w		; AE D6 D6
	dec $D6.b,X		; D6 D6
	lsr $56.b,X		; 56 56
	mvn $28,$54		; 54 54 28
	plp		; 28
	jsr $0020.w		; 20 20 00
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	tsb $FF.b		; 04 FF
	asl A		; 0A
	sbc $E6D9FE.l,X		; FF FE D9 E6
	sbc [$00.b],Y		; F7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $0E.b		; 04 0E
	cop $FF.b		; 02 FF
	adc ($FF.b)		; 72 FF
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $00.b		; 00 00
	asl $11.b		; 06 11
	and $276F00.l,X		; 3F 00 6F 27
	inc $FB47.w,X		; FE 47 FB
	bit $708C.w,X		; 3C 8C 70
	bvs   0.b		; 70 00
	ora ($00.b,X)		; 01 00
	ora $0000.w		; 0D 00 00
	ora [$27.b]		; 07 27
	ora $103F40.l,X		; 1F 40 3F 10
	and $00FC00.l,X		; 3F 00 FC 00
	bvs   0.b		; 70 00
	brk $D1.b		; 00 D1
	stx $807F.w		; 8E 7F 80
	sed		; F8
	ora [$96.b]		; 07 96
	adc #$1EFF.w		; 69 FF 1E
	cmp $4EBF3F.l,X		; DF 3F BF 4E
	cmp $20AE35.l,X		; DF 35 AE 20
	ldy #$0720.w		; A0 20 07
	bra  97.b		; 80 61
	dey		; 88
	tsb $1E.b		; 04 1E
	asl $06FF.w		; 0E FF 06
	sbc $4E3F05.l,X		; FF 05 3F 4E
	iny		; C8
	plb		; AB
	rts		; 60

	sta $23.b,X		; 95 23
	jmp.w [$AF0B]		; DC 0B AF
	rti		; 40

	ldy #$6040.w		; A0 40 60
	bra -40.b		; 80 D8
	jsr $0030.w		; 20 30 00
	bpl   5.b		; 10 05
	brk $0B.b		; 00 0B
	php		; 08
	ora $40.b,S		; 03 40
	sta [$40.b]		; 87 40
	bra   0.b		; 80 00
	bra  32.b		; 80 20
	brk $7C.b		; 00 7C
	clv		; B8
	ldy $BC78.w,X		; BC 78 BC
	sei		; 78
	ply		; 7A
	bit $3C5A.w,X		; 3C 5A 3C
	rol $2E1C.w,X		; 3E 1C 2E
	trb $0C1E.w		; 1C 1E 0C
	clc		; 18
	jsr $4038.w		; 20 38 40
	sei		; 78
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $1D.b		; 00 1D
	asl $0E15.w		; 0E 15 0E
	ora $060F06.l		; 0F 06 0F 06
	ora $060E07.l		; 0F 07 0E 06
	ora $000F05.l		; 0F 05 0F 00
	asl $0E00.w		; 0E 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	ora ($05.b,X)		; 01 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $1C.b		; 02 1C
	php		; 08
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $101C00.l,X		; 1F 00 1C 10
	jsl $0C250A.l		; 22 0A 25 0C
	and [$1D.b]		; 27 1D
	rol $19.b		; 26 19
	inc $50.b		; E6 50
	and $001C22.l		; 2F 22 1C 00
	brk $1C.b		; 00 1C
	trb $1E1A.w		; 1C 1A 1E
	bpl  30.b		; 10 1E
	ora $1F.b,X		; 15 1F
	ora [$19.b],Y		; 17 19
	jmp.w [$E3D0]		; DC D0 E3
	sbc $20.b,S		; E3 20
	cmp ($20.b)		; D2 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $09.b,X		; 74 09
	bit $03.b,X		; 34 03
	ora $0503.w		; 0D 03 05
	ora [$0C.b]		; 07 0C
	bit $2C2C.w		; 2C 2C 2C
	bit $2C2C.w		; 2C 2C 2C
	plp		; 28
	plp		; 28
	php		; 08
	ora #$0300.w		; 09 00 03
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ply		; 7A
	asl $179C.w		; 0E 9C 17
	adc [$A2.b]		; 67 A2
	sbc $7F88.w,X		; FD 88 7F
	lda ($0F.b),Y		; B1 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	ora ($62.b)		; 12 62
	jsr $8A98.w		; 20 98 8A
	bra  49.b		; 80 31
	bra   0.b		; 80 00
	ora [$02.b]		; 07 02
	ora #$1205.w		; 09 05 12
	asl $93.b		; 06 93
	asl $0993.w		; 0E 93 09
	inc $10.b,X		; F6 10
	ora $008B8C.l		; 0F 8C 8B 00
	brk $07.b		; 00 07
	ora [$0D.b]		; 07 0D
	ora $0A0F08.l		; 0F 08 0F 0A
	ora $F3090F.l		; 0F 0F 09 F3
	sbc ($FC.b),Y		; F1 FC
	jsr ($0000.w,X)		; FC 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc 101.b		; 90 65
	brk $E9.b		; 00 E9
	jsr $0031.w		; 20 31 00
	sbc ($E1.b,X)		; E1 E1
.ACCU 16
	rep #$E2		; C2 E2
	ora $C0.b		; 05 C0
	lda [$C0.b]		; A7 C0
	ldy #$60F8.w		; A0 F8 60
	beq -32.b		; F0 E0
	cpy #$0000.w		; C0 00 00
	brk $C1.b		; 00 C1
	ora ($02.b,X)		; 01 02
	cop $80.b		; 02 80
	brk $80.b		; 00 80
	brk $E2.b		; 00 E2
	ora ($C0.b),Y		; 11 C0
	and ($D4.b,S),Y		; 33 D4
	jsl $306688.l		; 22 88 66 30
	cpy $B840.w		; CC 40 B8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	inc $EEEE.w		; EE EE EE
	inc $DCDC.w		; EE DC DC
	jmp.w [$B8DC]		; DC DC B8
	clv		; B8
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $FC78.w,X		; BC 78 FC
	sei		; 78
	ldy $BC78.w,X		; BC 78 BC
	sei		; 78
	jmp ($5C38.w,X)		; 7C 38 5C
	sec		; 38
	jmp $183C38.l		; 5C 38 3C 18
	sec		; 38
	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	clc		; 18
	bit $18.b,X		; 34 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	iny		; C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	sec		; 38
	jmp ($8428.w)		; 6C 28 84
	pha		; 48
	sty $48.b		; 84 48
	cld		; D8
	bvc -40.b		; 50 D8
	bvc -88.b		; 50 A8
	bmi -80.b		; 30 B0
	jsr $0038.w		; 20 38 00
	plp		; 28
	bpl  72.b		; 10 48
	bmi  72.b		; 30 48
	bmi  80.b		; 30 50
	jsr $2050.w		; 20 50 20
	bmi  64.b		; 30 40
	jsr $6E40.w		; 20 40 6E
	and ($FB.b,S),Y		; 33 FB
	pla		; 68
	lda ($60.b,S),Y		; B3 60
	ror $04.b,X		; 76 04
	asl $1F20.w,X		; 1E 20 1F
	bit $3312.w,X		; 3C 12 33
	asl A		; 0A
	and $30.b,S		; 23 30
	ora $600768.l		; 0F 68 07 60
	ora $0904.w		; 0D 04 09
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $1C00.w		; 0C 00 1C
	brk $FE.b		; 00 FE
	cpx $FB.b		; E4 FB
	dec $EF.b,X		; D6 EF
	dex		; CA
	inc $40.b		; E6 40
	stz $02.b		; 64 02
	jsr ($3802.w,X)		; FC 02 38
	ror $6624.w,X		; 7E 24 66
	bit $F0.b		; 24 F0
	lsr $E0.b,X		; 56 E0
	lsr A		; 4A
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	clc		; 18
	brk $0E.b		; 00 0E
	and $0C.b,S		; 23 0C
	and $1C.b,S		; 23 1C
	jsl $302618.l		; 22 18 26 30
	stz $38.b,X		; 74 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $1C78.w,X		; BC 78 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	php		; 08
	cpy $6420.w		; CC 20 64
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $4070.w		; 2E 70 40
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $14.b		; 00 14
	asl $06.b,X		; 16 06
	php		; 08
	cop $61.b		; 02 61
	bit $43.b		; 24 43
	ora #$52C6.w		; 09 C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($3F.b),Y		; D1 3F
	and $793C3C.l,X		; 3F 3C 3C 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $052E.w		; 2E 2E 05
	sbc $B048.w,Y		; F9 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1F3017.l,X		; BF 17 30 1F
	bmi  15.b		; 30 0F
	ora $DFDFDF.l		; 0F DF DF DF
	cmp $9ADADA.l,X		; DF DA DA 9A
	txs		; 9A
	brk $00.b		; 00 00
	php		; 08
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	ora #$190C.w		; 09 0C 19
	tsb $13.b		; 04 13
	and $103300.l,X		; 3F 00 33 10
	and $3F12.w,X		; 3D 12 3F
	ora $06071F.l		; 0F 1F 07 06
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	ora ($00.b,X)		; 01 00
	ora ($10.b,X)		; 01 10
	ora $0310.w		; 0D 10 03
	asl $0F.b		; 06 0F
	ora $0F.b,S		; 03 0F
	nop		; EA
	and ($CE.b),Y		; 31 CE
	lda ($75.b),Y		; B1 75
	txa		; 8A
	cpy $7733.w		; CC 33 77
	dey		; 88
	jsr ($FC70.w,X)		; FC 70 FC
	plp		; 28
	ldx $35C4.w,Y		; BE C4 35
	sty $35.b		; 84 35
	sty $0A.b		; 84 0A
	bra  51.b		; 80 33
	brk $00.b		; 00 00
	dey		; 88
	jsr $00FC.w		; 20 FC 00
	sed		; F8
	tsb $F8.b		; 04 F8
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($2A.b)		; B2 2A
	stz $95.b,X		; 74 95
	lsr $C730.w		; 4E 30 C7
	rol $FA81.w		; 2E 81 FA
	eor $07F0.w		; 4D F0 07
	inc $CFFE.w,X		; FE FE CF
	cmp $B18B8B.l		; CF 8B 8B B1
	sta ($3D.b,X)		; 81 3D
	ora $F2.b		; 05 F2
	.db $82, $22, $02		; 82 22 02
	sed		; F8
	brk $80.b		; 00 80
	sec		; 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	trb $62.b		; 14 62
	brk $73.b		; 00 73
	cop $F1.b		; 02 F1
	.db $62, $91, $62		; 62 91 62
	sta ($E0.b),Y		; 91 E0
	cpx #$7878.w		; E0 78 78
	ldy $9CBC.w,X		; BC BC 9C
	stz $8E8E.w		; 9C 8E 8E
	ldx $6EAE.w		; AE AE 6E
	ror $EEEE.w		; 6E EE EE
	rti		; 40

	ldy #$30A0.w		; A0 A0 30
	bra  16.b		; 80 10
	tya		; 98
	brk $7F.b		; 00 7F
	cld		; D8
	tsa		; 3B
	eor [$2A.b],Y		; 57 2A
	eor [$1F.b],Y		; 57 1F
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	ora $11.b,S		; 03 11
	ora [$10.b]		; 07 10
	ora [$00.b]		; 07 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	bvs  -4.b		; 70 FC
	cpy #$C87C.w		; C0 7C C8
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($FC30.w,X)		; 7C 30 FC
	rti		; 40

	jsr ($FC08.w,X)		; FC 08 FC
	brk $FC.b		; 00 FC
	sbc $3FDE4F.l,X		; FF 4F DE 3F
	adc $06FB80.l,X		; 7F 80 FB 06
	and $3AF7C9.l,X		; 3F C9 F7 3A
	sbc $69DB76.l		; EF 76 DB 69
	eor [$0F.b]		; 47 0F
	brk $3F.b		; 00 3F
	bra 127.b		; 80 7F
	brk $07.b		; 00 07
	iny		; C8
	ora ($3A.b,X)		; 01 3A
	brk $76.b		; 00 76
	brk $69.b		; 00 69
	tsb $B3.b		; 04 B3
	inc $48F6.w		; EE F6 48
	sbc $E403.w,X		; FD 03 E4
	cmp $40F8.w,Y		; D9 F8 40
	jsr ($FFA8.w,X)		; FC A8 FF
	mvn $A6,$EF		; 54 EF A6
	asl $49F0.w		; 0E F0 49
	beq   0.b		; F0 00
	cpx #$C058.w		; E0 58 C0
	brk $C0.b		; 00 C0
	dey		; 88
	cpx #$4054.w		; E0 54 40
	ldx $10.b		; A6 10
	rol A		; 2A
	lda $31A6.w,Y		; B9 A6 31
	dex		; CA
	and $54.b		; 25 54
	pld		; 2B
	ora ($7E.b,X)		; 01 7E
	ora ($82.b,X)		; 01 82
	ora ($02.b,X)		; 01 02
	ora ($82.b,X)		; 01 82
	lsr $CE0E.w		; 4E 0E CE
	asl $1E1E.w		; 0E 1E 1E
	sta $15.b,X		; 95 15
	sta ($01.b,X)		; 81 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	bpl -120.b		; 10 88
	brk $CC.b		; 00 CC
	dey		; 88
	mvp $46,$A0		; 44 A0 46
	ldy $42.b		; A4 42
	ldy $42.b		; A4 42
	ldy $42.b		; A4 42
	ldy $7042.w,X		; BC 42 70
	bvs -72.b		; 70 B8
	clv		; B8
	clv		; B8
	clv		; B8
	ldy $BCBC.w,X		; BC BC BC
	ldy $BCBC.w,X		; BC BC BC
	ldy $84BC.w,X		; BC BC 84
	ldy $A952.w,X		; BC 52 A9
	plp		; 28
	dec $20.b,X		; D6 20
	cld		; D8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	lsr $56.b,X		; 56 56
	plp		; 28
	plp		; 28
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	tsb $1130.w		; 0C 30 11
	adc ($03.b,X)		; 61 03
	cmp $43.b,S		; C3 43
	sta $31.b,S		; 83 31
	cmp $0A.b		; C5 0A
	pea $FE61.w		; F4 61 FE
	bpl  16.b		; 10 10
	ora $3F3F0F.l		; 0F 0F 3F 3F
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	adc $0B0B7F.l,X		; 7F 7F 0B 0B
	ora ($01.b,X)		; 01 01
	asl $0C.b,X		; 16 0C
	asl $0C.b,X		; 16 0C
	inc A		; 1A
	php		; 08
	and ($10.b)		; 32 10
	and ($10.b)		; 32 10
	rol $1E1C.w,X		; 3E 1C 1E
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	tsb $10.b		; 04 10
	tsb $0C10.w		; 0C 10 0C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	bit $62.b,X		; 34 62
	bit $62.b		; 24 62
	bit $6C.b		; 24 6C
	plp		; 28
	jmp ($6428.w)		; 6C 28 64
	plp		; 28
	stz $28.b		; 64 28
	sei		; 78
	bmi  52.b		; 30 34
	php		; 08
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	plp		; 28
	bpl  40.b		; 10 28
	bpl  40.b		; 10 28
	bpl  40.b		; 10 28
	bpl  48.b		; 10 30
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	ora $01.b,S		; 03 01
	asl $1008.w		; 0E 08 10
	bpl  32.b		; 10 20
	tsb $63.b		; 04 63
	ora ($4D.b)		; 12 4D
	and $1892.w		; 2D 92 18
	ldy $00.b		; A4 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $3C1F1F.l		; 0F 1F 1F 3C
	bit $3232.w,X		; 3C 32 32
	adc $5B6D.w		; 6D 6D 5B
	tad		; 5B
	brk $F8.b		; 00 F8
	bpl  12.b		; 10 0C
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	brk $F1.b		; 00 F1
	brk $FD.b		; 00 FD
	php		; 08
	ora [$02.b]		; 07 02
	ora ($00.b,X)		; 01 00
	brk $F8.b		; 00 F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $1E1E.w,X		; FE 1E 1E
	asl $06.b		; 06 06
	sed		; F8
	sed		; F8
	inc $00FE.w,X		; FE FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $4224.w,X		; 3C 24 42
	sec		; 38
	.db $82, $70, $3A		; 82 70 3A
	dey		; 88
	stz $18.b,X		; 74 18
	cpx $00.b		; E4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $7C4C.w,X		; 3C 4C 7C
	sty $FC.b,X		; 94 FC
	inx		; E8
	tya		; 98
	sed		; F8
	tya		; 98
	bpl -23.b		; 10 E9
	rti		; 40

	and ($D1.b)		; 32 D1
	cpy $0D03.w		; CC 03 0D
	dey		; 88
	ora [$40.b]		; 07 40
	sta [$94.b]		; 87 94
	adc $4A.b,S		; 63 4A
	sbc $3030.w,Y		; F9 30 30
	cmp ($C1.b,X)		; C1 C1
	sbc ($F3.b)		; F2 F3
	pea $FBF7.w		; F4 F7 FB
	sed		; F8
	xce		; FB
	sed		; F8
	sta $0E9D.w,X		; 9D 9D 0E
	asl $E000.w		; 0E 00 E0
	jsr $C010.w		; 20 10 C0
	bpl -96.b		; 10 A0
	bne  64.b		; D0 40
	ldy #$4080.w		; A0 80 40
	brk $E0.b		; 00 E0
	jsr $0010.w		; 20 10 00
	brk $E0.b		; 00 E0
	cpx #$E060.w		; E0 60 E0
	jsr $40E0.w		; 20 E0 40
	cpy #$8080.w		; C0 80 80
	brk $00.b		; 00 00
	cpx #$E0E0.w		; E0 E0 E0
	cpy #$E050.w		; C0 50 E0
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $00C000.l,X		; FF 00 C0 00
	cpx #$6000.w		; E0 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $70.b		; 00 70
	cpy $18.b		; C4 18
	mvp $44,$18		; 44 18 44
	brk $44.b		; 00 44
	sec		; 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $FC78.w,X		; BC 78 FC
	sei		; 78
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	sei		; 78
	brk $B6.b		; 00 B6
	mvn $04,$66		; 54 66 04
	rol $3F60.w,X		; 3E 60 3F
	jmp ($6624.w,X)		; 7C 24 66
	sec		; 38
	.db $62, $38, $62		; 62 38 62
	sec		; 38
	.db $62, $54, $09		; 62 54 09
	tsb $19.b		; 04 19
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	clc		; 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $ED.b		; 00 ED
	tax		; AA
	ror $40.b		; 66 40
	stz $40.b		; 64 40
	jsr ($7000.w,X)		; FC 00 70
	jsr ($CE48.w,X)		; FC 48 CE
	bit $66.b		; 24 66
	brk $63.b		; 00 63
	tax		; AA
	bpl  64.b		; 10 40
	tya		; 98
	rti		; 40

	tya		; 98
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	bit $04.b,X		; 34 04
	clc		; 18
	brk $3E.b		; 00 3E
	jsl $59C281.l		; 22 81 C2 59
	ror $3E.b		; 66 3E
	ora ($DF.b),Y		; 11 DF
	lda [$BE.b],Y		; B7 BE
	adc $00007F.l		; 6F 7F 00 00
	and $010000.l,X		; 3F 00 00 01
	ora ($82.b,X)		; 01 82
	ora $D0.b,S		; 03 D0
	ora [$37.b]		; 07 37
	ora [$60.b]		; 07 60
	ora $001F00.l		; 0F 00 1F 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	rol $DC.b,X		; 36 DC
	rts		; 60

	jsr ($74E8.w,X)		; FC E8 74
	inx		; E8
	jsr ($0000.w,X)		; FC 00 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ldy $FC.b,X		; B4 FC
	rti		; 40

	jsr ($FC60.w,X)		; FC 60 FC
	jsr $00FC.w		; 20 FC 00
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0D1700.l		; 0F 00 17 0D
	ora $200F16.l		; 0F 16 0F 20
	ora ($46.b),Y		; 11 46
	rol $8D.b,X		; 36 8D
	eor $000080.l		; 4F 80 00 00
	brk $0C.b		; 00 0C
	ora ($1E.b,X)		; 01 1E
	cop $0E.b		; 02 0E
	clc		; 18
	asl $38.b		; 06 38
	cop $41.b		; 02 41
	tsb $00.b		; 04 00
	and [$5E.b],Y		; 37 5E
	cmp ($7A.b,S),Y		; D3 7A
	cpy #$C03F.w		; C0 3F C0
	sta $C146.w,Y		; 99 46 C1
	ldx $DDE1.w		; AE E1 DD
	beq  15.b		; F0 0F
	sbc $0020E6.l,X		; FF E6 20 00
	and $3F00.w,X		; 3D 00 3F
	brk $3F.b		; 00 3F
	asl $9F.b		; 06 9F
	asl $0CCE.w		; 0E CE 0C
	brk $E0.b		; 00 E0
	ldx $F0.b		; A6 F0
	brk $8C.b		; 00 8C
	pha		; 48
	cpy $C400.w		; CC 00 C4
	tsb $66.b		; 04 66
	ora [$30.b],Y		; 17 30
	ora $2E1F36.l		; 0F 36 1F 2E
	and $88F81E.l		; 2F 1E F8 88
	bmi   0.b		; 30 00
	sei		; 78
	rti		; 40

	sec		; 38
	jsr $0008.w		; 20 08 00
	trb $16.b		; 14 16
	asl $08.b		; 06 08
	asl $7E10.w		; 0E 10 7E
	bit $3C5E.w,X		; 3C 5E 3C
	and $2D1E.w,X		; 3D 1E 2D
	asl $0E1F.w,X		; 1E 1F 0E
	ora [$0E.b],Y		; 17 0E
	ora $070A06.l		; 0F 06 0A 07
	bit $3C00.w,X		; 3C 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	php		; 08
	asl $09.b		; 06 09
	ora [$09.b]		; 07 09
	ora $04.b,S		; 03 04
	ora $1C.b,S		; 03 1C
	ora ($62.b),Y		; 11 62
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	tsb $07.b		; 04 07
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	ora $001D.w,X		; 1D 1D 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	adc ($40.b,X)		; 61 40
	lda [$A4.b],Y		; B7 A4
	cld		; D8
	clc		; 18
	inx		; E8
	and [$C6.b]		; 27 C6
	jsl $0000C3.l		; 22 C3 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rts		; 60

	cpx #$E7A7.w		; E0 A7 E7
	cmp $3FBF1F.l,X		; DF 1F BF 3F
	ldx $8CBE.w,Y		; BE BE 8C
	tsa		; 3B
	and $33CC40.l,X		; 3F 40 CC 33
	sbc $ECFFC0.l,X		; FF C0 FF EC
	adc $1CEFFD.l		; 6F FD EF 1C
	eor $18C320.l,X		; 5F 20 C3 18
	bra  28.b		; 80 1C
	and ($48.b,S),Y		; 33 48
	bra  -2.b		; 80 FE
	jmp $04FF.w		; 4C FF 04
	sbc $20FE00.l,X		; FF 00 FE 20
	trb $1BE6.w		; 1C E6 1B
	eor $E7A4.w,X		; 5D A4 E7
	inc A		; 1A
	lda $FFC2.w,X		; BD C2 FF
	beq  -1.b		; F0 FF
	adc ($FD.b,S),Y		; 73 FD
	ldx $FF.b		; A6 FF
	bvc  88.b		; 50 58
	rti		; 40

	ldx #$1800.w		; A2 00 18
	brk $00.b		; 00 00
	cpy #$FC60.w		; C0 60 FC
	and $FC.b,S		; 23 FC
	asl $F8.b		; 06 F8
	rti		; 40

	bvs  16.b		; 70 10
	dey		; 88
	bvc  40.b		; 50 28
	inx		; E8
	bit $00.b,X		; 34 00
	sbc $281820.l,X		; FF 20 18 28
	bit $14.b		; 24 14
	lda ($94.b,S),Y		; B3 94
	xba		; EB
	bvs 112.b		; 70 70
	bcc -16.b		; 90 F0
	tay		; A8
	sed		; F8
	clc		; 18
	php		; 08
	sbc [$E7.b]		; E7 E7
	xce		; FB
	xce		; FB
	jmp $5D5D5C.l		; 5C 5C 5D 5D
	and $3A.b		; 25 3A
	cmp ($1E.b,X)		; C1 1E
	cmp ($2E.b),Y		; D1 2E
	rts		; 60

	phd		; 0B
	cpx #$2029.w		; E0 29 20
	cmp #$D930.w		; C9 30 D9
	jsr $CDF1.w		; 20 F1 CD
	ora $09E9.w		; 0D E9 09
	cmp ($01.b,X)		; C1 01
	cmp ($01.b),Y		; D1 01
	bne   0.b		; D0 00
	beq -64.b		; F0 C0
	cpx #$C0C0.w		; E0 C0 C0
	cpy #$A250.w		; C0 50 A2
	trb $E2.b		; 14 E2
	trb $62.b		; 14 62
	asl A		; 0A
	and ($00.b),Y		; 31 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $5C.b		; 00 5C
	jmp $1C5C5C.l		; 5C 5C 5C 1C
	trb $0E0E.w		; 1C 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $0E.b		; 02 0E
	brk $07.b		; 00 07
	ora $021301.l		; 0F 01 13 02
	bit $3B04.w,X		; 3C 04 3B
	trb $4917.w		; 1C 17 49
	pld		; 2B
	sta $01.b		; 85 01
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	tsb $3304.w		; 0C 04 33
	php		; 08
	bit $1C21.w,X		; 3C 21 1C
	adc ($0C.b),Y		; 71 0C
	sta ($26.b,X)		; 81 26
	brk $CF.b		; 00 CF
	bra -64.b		; 80 C0
	sed		; F8
	cpy #$18BC.w		; C0 BC 18
	ldx $FE00.w		; AE 00 FE
	sty $8D56.w		; 8C 56 8D
	cmp $03.b,S		; C3 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$5800.w		; C0 00 58
	brk $40.b		; 00 40
	bpl -116.b		; 10 8C
	brk $AC.b		; 00 AC
	jsr $C000.w		; 20 00 C0
	bra 112.b		; 80 70
	jsr $9018.w		; 20 18 90
	tsb $8448.w		; 0C 48 84
	jsr $A4C6.w		; 20 C6 A4
	.db $42, $94		; 42 94
	.db $62, $00, $00		; 62 00 00
	cpy #$F0C0.w		; C0 C0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	sei		; 78
	sei		; 78
	ldy $BCBC.w,X		; BC BC BC
	ldy $DCDC.w,X		; BC DC DC
	pei ($22.b)		; D4 22
	cld		; D8
	rol $D8.b		; 26 D8
	bit $D0.b		; 24 D0
	bit $58A0.w		; 2C A0 58
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$D8D8]		; DC D8 D8
	cld		; D8
	cld		; D8
	bcs -80.b		; B0 B0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	asl $02.b		; 06 02
	ora $00.b		; 05 00
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $02.b		; 00 02
	cop $00.b		; 02 00
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
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ror $CF01.w,X		; 7E 01 CF
	ror $66E7.w,X		; 7E E7 66
	plb		; AB
	tas		; 1B
	txy		; 9B
	and [$AE.b]		; 27 AE
	and ($79.b),Y		; 31 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	cop $66.b		; 02 66
	inc A		; 1A
	tas		; 1B
	eor $26.b		; 45 26
	eor ($31.b,X)		; 41 31
	rti		; 40

	brk $00.b		; 00 00
	ldy #$3088.w		; A0 88 30
	dey		; 88
	sei		; 78
	cpy $C410.w		; CC 10 C4
	tya		; 98
	mvp $64,$D8		; 44 D8 64
	sei		; 78
	ldy $38C0.w,X		; BC C0 38
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	bmi   0.b		; 30 00
	clv		; B8
	bra  56.b		; 80 38
	brk $38.b		; 00 38
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	cmp $46FF06.l		; CF 06 FF 46
	xce		; FB
	ldx $66.b,Y		; B6 66
	clv		; B8
	cpy #$9038.w		; C0 38 90
	stz $0E.b,X		; 74 0E
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $801F42.l		; 0F 42 1F 80
	and $003E80.l,X		; 3F 80 3E 00
	rti		; 40

	plp		; 28
	jsr $00F0.w		; 20 F0 00
	mvp $10,$83		; 44 83 10
	stx $1429.w		; 8E 29 14
	bvc  41.b		; 50 29
	jsr $AA59.w		; 20 59 AA
	eor ($40.b),Y		; 51 40
	lda ($50.b,S),Y		; B3 50
	ldx #$7C7C.w		; A2 7C 7C
	sbc ($F1.b),Y		; F1 F1
	xba		; EB
	xba		; EB
	cmp [$D7.b],Y		; D7 D7
	ldx $AEAE.w		; AE AE AE
	ldx $5E5E.w		; AE 5E 5E
	jmp $89645C.l		; 5C 5C 64 89
	eor ($AD.b)		; 52 AD
	eor [$B9.b]		; 47 B9
	phd		; 0B
.INDEX 8
	sep #$1C		; E2 1C
	rti		; 40

	rol $0660.w		; 2E 60 06
	bmi  11.b		; 30 0B
	clc		; 18
	ror $76.b,X		; 76 76
	ply		; 7A
	ply		; 7A
	rti		; 40

	rti		; 40

	trb $00.b		; 14 00
	and $001F03.l,X		; 3F 03 1F 00
	ora $000700.l		; 0F 00 07 00
	eor $1A372A.l,X		; 5F 2A 37 1A
	and $3914.w		; 2D 14 39
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	ora $2A.b,S		; 03 2A
	brk $1A.b		; 00 1A
	brk $14.b		; 00 14
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($F9.b,X)		; 01 F9
	tay		; A8
	adc $113646.l		; 6F 46 36 11
	lda ($A1.b)		; B2 A1
	stz $F888.w		; 9C 88 F8
	brk $E0.b		; 00 E0
	beq -80.b		; F0 B0
	tya		; 98
	tay		; A8
	rol $46.b		; 26 46
	bcc  17.b		; 90 11
	cmp #$4CA0.w		; C9 A0 4C
	dey		; 88
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $1E.b		; 00 1E
	jmp $5C3E.w		; 4C 3E 5C
	dec $7ABC.w,X		; DE BC 7A
	ldy $BC7A.w,X		; BC 7A BC
	stz $38.b,X		; 74 38
	ldy $78.b,X		; B4 78
	tay		; A8
	bvs -20.b		; 70 EC
	jmp $108C.w		; 4C 8C 10
	trb $BC20.w		; 1C 20 BC
	bra  60.b		; 80 3C
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $E8.b		; 00 E8
	bvs -16.b		; 70 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $007000.l,X		; FF 00 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	tsb $01.b		; 04 01
	tsb $0904.w		; 0C 04 09
	cop $09.b		; 02 09
	ora $0A.b		; 05 0A
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	asl $06.b		; 06 06
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	ora ($04.b,X)		; 01 04
	cop $09.b		; 02 09
	ora $89.b,S		; 03 89
	ora $F60991.l		; 0F 91 09 F6
	bpl  15.b		; 10 0F
	sty $008B.w		; 8C 8B 00
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	ora [$04.b]		; 07 04
	ora [$0D.b]		; 07 0D
	ora $F3090F.l		; 0F 0F 09 F3
	sbc ($FC.b),Y		; F1 FC
	jsr ($8000.w,X)		; FC 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc 101.b		; 90 65
	brk $E9.b		; 00 E9
	ldy #$31.b		; A0 31
	brk $E1.b		; 00 E1
	adc ($82.b),Y		; 71 82
	sbc ($65.b)		; F2 65
	bcs 111.b		; B0 6F
	txy		; 9B
	jmp ($60F8.w)		; 6C F8 60
	beq -32.b		; F0 E0
	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	ora ($01.b,X)		; 01 01
	.db $62, $02, $60		; 62 02 60
	brk $60.b		; 00 60
	brk $E2.b		; 00 E2
	ora ($C0.b),Y		; 11 C0
	and ($DE.b,S),Y		; 33 DE
	jsr $6E9F.w		; 20 9F 6E
	and $A45ACE.l,X		; 3F CE 5A A4
	rol A		; 2A
	jmp.w [$38F4]		; DC F4 38
	inc $EEEE.w		; EE EE EE
	inc $DEC0.w		; EE C0 DE
	dec $ACDF.w		; CE DF AC
	lda $007E60.l,X		; BF 60 7E 00
	rol $7C10.w,X		; 3E 10 7C
	rts		; 60

	bra  56.b		; 80 38
	jsr $080E.w		; 20 0E 08
	eor $C6.b		; 45 C6
	inc $0E.b,X		; F6 0E
	ora $000101.l		; 0F 01 01 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	jsr $08C0.w		; 20 C0 08
	beq -58.b		; F0 C6
	sec		; 38
	asl $0101.w		; 0E 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	bmi -16.b		; 30 F0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	trb $3008.w		; 1C 08 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1C001F.l,X		; 1F 1F 00 1C
	bpl  34.b		; 10 22
	asl A		; 0A
	and $0C.b		; 25 0C
	and [$1D.b]		; 27 1D
	rol $19.b		; 26 19
	inc $50.b		; E6 50
	and $001C22.l		; 2F 22 1C 00
	brk $1C.b		; 00 1C
	trb $1E1A.w		; 1C 1A 1E
	bpl  30.b		; 10 1E
	ora $1F.b,X		; 15 1F
	ora [$19.b],Y		; 17 19
	jmp.w [$E3D0]		; DC D0 E3
	sbc $20.b,S		; E3 20
	cmp ($20.b)		; D2 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $09.b,X		; 74 09
	bit $03.b,X		; 34 03
	ora $0401.w		; 0D 01 04
	cop $08.b		; 02 08
	bit $2C2C.w		; 2C 2C 2C
	bit $2C2C.w		; 2C 2C 2C
	plp		; 28
	plp		; 28
	php		; 08
	ora #$0300.w		; 09 00 03
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	brk $0E.b		; 00 0E
	inc $FD07.w,X		; FE 07 FD
	lda $C07F.w,Y		; B9 7F C0
	inc $0F0C.w,X		; FE 0C 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($81.b,X)		; 01 81
	tsx		; BA
	cpy #$00.b		; C0 00
	cpy #$0D.b		; C0 0D
	sbc ($7D.b,X)		; E1 7D
	eor #$2734.w		; 49 34 27
	lda $C49F.w,Y		; B9 9F C4
	ldy $7F80.w,X		; BC 80 7F
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $80.b		; 46 80
	plp		; 28
	cpy #$82.b		; C0 82
	.db $42, $83		; 42 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $9F.b		; 00 9F
	rts		; 60

	sbc $163F15.l,X		; FF 15 3F 16
	tsa		; 3B
	ora ($2B.b)		; 12 2B
	ora ($19.b)		; 12 19
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $15.b		; 00 15
	brk $16.b		; 00 16
	brk $12.b		; 00 12
	tsb $12.b		; 04 12
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -106.b		; F0 96
	tya		; 98
	ora [$02.b]		; 07 02
	eor [$63.b]		; 47 63
	ora $0B05FB.l		; 0F FB 05 0B
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rts		; 60

	brk $F8.b		; 00 F8
	cop $BB.b		; 02 BB
	jsl $010201.l		; 22 01 02 01
	cop $01.b		; 02 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B6.b		; 00 B6
	sta $CB.b		; 85 CB
	lda ($20.b)		; B2 20
	jmp ($5C89.w,X)		; 7C 89 5C
	jsr $2AC5.w		; 20 C5 2A
	sta $FA.b		; 85 FA
	eor $07F0.w		; 4D F0 07
	inc $CFFE.w,X		; FE FE CF
	cmp $B38B8B.l		; CF 8B 8B B3
	sta ($3B.b,S),Y		; 93 3B
	ora $F2.b,S		; 03 F2
	.db $82, $22, $02		; 82 22 02
	sed		; F8
	brk $80.b		; 00 80
	sec		; 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	trb $62.b		; 14 62
	brk $73.b		; 00 73
	cop $F1.b		; 02 F1
	.db $62, $91, $62		; 62 91 62
	sta ($E0.b),Y		; 91 E0
	cpx #$78.b		; E0 78
	sei		; 78
	ldy $9CBC.w,X		; BC BC 9C
	stz $8E8E.w		; 9C 8E 8E
	ldx $6EAE.w		; AE AE 6E
	ror $EEEE.w		; 6E EE EE
	sbc ($01.b,S),Y		; F3 01
	ora [$ED.b],Y		; 17 ED
	sbc ($05.b)		; F2 05
	cpy #$83.b		; C0 83
	tsx		; BA
	dec $FD.b		; C6 FD
	sty $CB.b,X		; 94 CB
	rti		; 40

	inc $0D20.w		; EE 20 0D
	brk $E1.b		; 00 E1
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cpy #$81.b		; C0 81
	cpx #$13.b		; E0 13
	cpy #$47.b		; C0 47
	bmi  39.b		; 30 27
	bpl -24.b		; 10 E8
	bvs -112.b		; 70 90
	rts		; 60

	stx $4F70.w		; 8E 70 4F
	dec $FF.b		; C6 FF
	ora [$DE.b]		; 07 DE
	asl $4B.b,X		; 16 4B
	adc [$87.b],Y		; 77 87
	cpy #$20.b		; C0 20
	sei		; 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	and ($04.b)		; 32 04
	sbc [$04.b],Y		; F7 04
	sep #$05		; E2 05
	sta $04.b,S		; 83 04
	brk $00.b		; 00 00
	ldy #$C0.b		; A0 C0
	beq -32.b		; F0 E0
	jsr ($BAF0.w,X)		; FC F0 BA
	jmp ($1E6F.w,X)		; 7C 6F 1E
	inc A		; 1A
	asl $07.b		; 06 07
	cop $07.b		; 02 07
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $7C.b		; 00 7C
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $78.b		; 00 78
	rti		; 40

	jsr ($F8F0.w,X)		; FC F0 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -16.b		; 80 F0
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	adc ($24.b,X)		; 61 24
	eor $09.b,S		; 43 09
	dec $52.b		; C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($3F.b),Y		; D1 3F
	and $793C3C.l,X		; 3F 3C 3C 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $052E.w		; 2E 2E 05
	sbc $B048.w,Y		; F9 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1F3017.l,X		; BF 17 30 1F
	bmi  15.b		; 30 0F
	ora $DFDFDF.l		; 0F DF DF DF
	cmp $9ADADA.l,X		; DF DA DA 9A
	txs		; 9A
	brk $00.b		; 00 00
	php		; 08
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	ora ($0B.b),Y		; 11 0B
	bpl  31.b		; 10 1F
	asl A		; 0A
	tas		; 1B
	asl $0F.b		; 06 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora $08.b		; 05 08
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	tsb $ECF3.w		; 0C F3 EC
	sbc $F3D2.w,X		; FD D2 F3
	cmp $01FF.w		; CD FF 01
	lda [$5F.b]		; A7 5F
	ror $9701.w,X		; 7E 01 97
	ror $E10D.w		; 6E 0D E1
	cpx $42E0.w		; EC E0 42
	beq  12.b		; F0 0C
	sbc ($01.b,X)		; E1 01
	sbc ($41.b,X)		; E1 41
	and $601F00.l,X		; 3F 00 1F 60
	ora $80A040.l,X		; 1F 40 A0 80
	cli		; 58
	brk $AC.b		; 00 AC
	clc		; 18
	cpy $CF30.w		; CC 30 CF
	ora ($FE.b,X)		; 01 FE
	rol $C0.b		; 26 C0
	and $F1.b,X		; 35 F1
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bpl  24.b		; 10 18
	jsr $2838.w		; 20 38 28
	bcs   3.b		; B0 03
	sta $BF.b,S		; 83 BF
	and $003FBF.l,X		; 3F BF 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $90A0.w		; 20 A0 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $1402.w		; 0E 02 14
	tsb $1F3F.w		; 0C 3F 1F
	adc $003E.w,X		; 7D 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($0C.b,X)		; 01 0C
	ora $1F.b,S		; 03 1F
	brk $18.b		; 00 18
	rol $1427.w,X		; 3E 27 14
	cmp $D05F3E.l,X		; DF 3E 5F D0
	bmi  32.b		; 30 20
	rts		; 60

	rti		; 40

	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	trb $08.b		; 14 08
	rol $D000.w,X		; 3E 00 D0
	jsr $C020.w		; 20 20 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	tsa		; 3B
	ora $1FF2.w,X		; 1D F2 1F
	ora $112F.w		; 0D 2F 11
	and ($02.b),Y		; 31 02
	mvp $64,$33		; 44 33 64
	and ($64.b),Y		; 31 64
	and $C0C4.w,Y		; 39 C4 C0
	brk $0C.b		; 00 0C
	ora $1C.b		; 05 1C
	ora ($3C.b,X)		; 01 3C
	tsb $2C10.w		; 0C 10 2C
	ora ($2E.b,X)		; 01 2E
	brk $36.b		; 00 36
	brk $38.b		; 00 38
	sta ($F7.b,X)		; 81 F7
	clc		; 18
	dec $88.b,X		; D6 88
	dec A		; 3A
	cpy $3E.b		; C4 3E
	cpy #$EF.b		; C0 EF
	ora $CF.b,X		; 15 CF
	ldy $7F.b,X		; B4 7F
	iny		; C8
	brk $00.b		; 00 00
	clc		; 18
	brk $A8.b		; 00 A8
	and ($D4.b,X)		; 21 D4
	ora ($C0.b),Y		; 11 C0
	ora ($11.b,X)		; 01 11
	tsb $34.b		; 04 34
	sty $00.b		; 84 00
	wai		; CB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($02.b,X)		; 01 02
	cop $0C.b		; 02 0C
	php		; 08
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $0F.b,S		; 03 0F
	ora $000000.l		; 0F 00 00 00
	rti		; 40

	brk $40.b		; 00 40
	rti		; 40

	ldy #$40.b		; A0 40
	ldy #$C0.b		; A0 C0
	jsr $6000.w		; 20 00 60
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	stz $1C.b,X		; 74 1C
	beq  60.b		; F0 3C
	adc ($5D.b),Y		; 71 5D
	adc ($0F.b,S),Y		; 73 0F
	cmp ($8F.b)		; D2 8F
	bcc  15.b		; 90 0F
	bmi  46.b		; 30 2E
	plx		; FA
	mvn $00,$E3		; 54 E3 00
	phd		; 0B
	php		; 08
	lsr A		; 4A
	dey		; 88
	php		; 08
	dey		; 88
	dey		; 88
	plp		; 28
	asl A		; 0A
	ror A		; 6A
	jsr $50C0.w		; 20 C0 50
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
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
	brk $EA.b		; 00 EA
	bit $8A.b		; 24 8A
	tsb $FC.b		; 04 FC
	brk $D0.b		; 00 D0
	cpx #$F0.b		; E0 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	bcc   4.b		; 90 04
	beq   0.b		; F0 00
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $05.b		; 02 05
	brk $0D.b		; 00 0D
	tsb $0B.b		; 04 0B
	cop $1B.b		; 02 1B
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	tsb $02.b		; 04 02
	cop $04.b		; 02 04
	asl A		; 0A
	tsb $11.b		; 04 11
	ror $532C.w		; 6E 2C 53
	bpl  47.b		; 10 2F
	ora ($20.b,S),Y		; 13 20
	php		; 08
	bpl   1.b		; 10 01
	asl $0300.w		; 0E 00 03
	brk $00.b		; 00 00
	ora ($13.b,S),Y		; 13 13
	bit $102C.w		; 2C 2C 10
	bpl  31.b		; 10 1F
	ora $030F0F.l,X		; 1F 0F 0F 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	asl $FA04.w		; 0E 04 FA
	trb $E2.b		; 14 E2
	bra   4.b		; 80 04
	asl A		; 0A
	tsb $E1.b		; 04 E1
	inc A		; 1A
	ora ($F2.b,X)		; 01 F2
	brk $01.b		; 00 01
	sbc $F5.b,X		; F5 F5
	ora $05.b		; 05 05
	ora $FB1D.w,X		; 1D 1D FB
	xce		; FB
	xce		; FB
	xce		; FB
	sbc ($F1.b),Y		; F1 F1
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bvs  32.b		; 70 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4000.w		; 20 00 40
	cmp [$0B.b]		; C7 0B
	ora [$10.b],Y		; 17 10
	jmp $700E.w		; 4C 0E 70
	jmp $C15EC8.l		; 5C C8 5E C1
	sty $D661.w		; 8C 61 D6
	bmi 120.b		; 30 78
	sei		; 78
	inx		; E8
	inx		; E8
	lda ($B0.b,S),Y		; B3 B0
	sta ($80.b,X)		; 81 80
	and [$00.b]		; 27 00
	rol $9E00.w,X		; 3E 00 9E
	bra -49.b		; 80 CF
	cpy #$60.b		; C0 60
	bvc   0.b		; 50 00
	bcs  64.b		; B0 40
	lda ($80.b,X)		; A1 80
	cmp ($00.b,X)		; C1 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	sta ($E0.b,X)		; 81 E0
	cpx #$40.b		; E0 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $0800.w,X		; 7E 00 08
	sty $9890.w		; 8C 90 98
	jsr $E030.w		; 20 30 E0
	and ($C1.b),Y		; 31 C1
	tas		; 1B
.INDEX 16
	rep #$1E		; C2 1E
	pei ($1C.b)		; D4 1C
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bpl -15.b		; 10 F1
	bpl -29.b		; 10 E3
	brk $03.b		; 00 03
	brk $3C.b		; 00 3C
	ora $3F.b,S		; 03 3F
	eor $80CF5F.l,X		; 5F 5F CF 80
	sta $003827.l		; 8F 27 38 00
	jsr $6040.w		; 20 40 60
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $082710.l,X		; 1F 10 27 08
	adc ($04.b,S),Y		; 73 04
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $73.b		; 00 73
	php		; 08
	ora $08.b		; 05 08
	ora $000706.l		; 0F 06 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $02.b		; 00 02
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FF7B03.l,X		; FF 03 7B FF
	sbc $00FFFF.l,X		; FF FF FF 00
	eor #$4C36.w		; 49 36 4C
	and ($33.b,S),Y		; 33 33
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sbc $78FF31.l,X		; FF 31 FF 78
	sbc $36FF00.l,X		; FF 00 FF 36
	brk $33.b		; 00 33
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bvc   0.b		; 50 00
	bvc  16.b		; 50 10
	iny		; C8
	jsr $08C8.w		; 20 C8 08
	cpx $04.b		; E4 04
	sbc $11.b,S		; E3 11
	cpx #$5824.w		; E0 24 58
	jsr $2020.w		; 20 20 20
	jsr $3030.w		; 20 30 30
	bmi  48.b		; 30 30
	sec		; 38
	sec		; 38
	jmp $5F5F5C.l		; 5C 5C 5F 5F
	and $27102F.l		; 2F 2F 10 27
	bit $49.b		; 24 49
	cop $49.b		; 02 49
	ora $49.b,S		; 03 49
	and [$49.b]		; 27 49
	ora ($AD.b)		; 12 AD
	cop $FD.b		; 02 FD
	sei		; 78
	ora [$18.b]		; 07 18
	clc		; 18
	rol $36.b,X		; 36 36
	bit $37.b,X		; 34 37
	bit $37.b,X		; 34 37
	and $37.b,X		; 35 37
	ora ($12.b,S),Y		; 13 12
	phb		; 8B
	txa		; 8A
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	inc $7F02.w,X		; FE 02 7F
	sbc $CEFEF9.l,X		; FF F9 FE CE
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($FF.b,X)		; 01 FF
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rts		; 60

	ldy #$6080.w		; A0 80 60
	rti		; 40

	rts		; 60

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	inc A		; 1A
	ora ($6C.b)		; 12 6C
	adc ($9D.b,X)		; 61 9D
	asl $BB.b,X		; 16 BB
	bmi -120.b		; 30 88
	bpl  73.b		; 10 49
	ora ($38.b,X)		; 01 38
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tas		; 1B
	tas		; 1B
	rtl		; 6B

	adc ($56.b,S),Y		; 73 56
	ror $47.b,X		; 76 47
	adc [$36.b],Y		; 77 36
	rol $07.b,X		; 36 07
	ora [$00.b]		; 07 00
	cpx #$20C0.w		; E0 C0 20
	brk $FF.b		; 00 FF
	sta ($61.b),Y		; 91 61
	eor $833CD4.l		; 4F D4 3C 83
	ldy $83.b,X		; B4 83
	clc		; 18
	beq   0.b		; F0 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	stx $2380.w		; 8E 80 23
	brk $FF.b		; 00 FF
	sta $7F.b,S		; 83 7F
	ora $07.b,S		; 03 07
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	bra -103.b		; 80 99
	dec $913E.w		; CE 3E 91
	tad		; 5B
	ldy #$319E.w		; A0 9E 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $D100.w		; 0E 00 D1
	bra -58.b		; 80 C6
	stx $E1.b		; 86 E1
	jsr $0000.w		; 20 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cmp $8A7F03.l		; CF 03 7F 8A
	adc $7AFFB5.l		; 6F B5 FF 7A
	tda		; 7B
	lda $0000.w,X		; BD 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	.db $82, $38, $85		; 82 38 85
	bit $7E62.w,X		; 3C 62 7E
	lda ($3F.b),Y		; B1 3F
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$D080.w		; E0 80 D0
	eor $EC043C.l		; 4F 3C 04 EC
	bit $0F.b		; 24 0F
	ora [$FC.b]		; 07 FC
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	jsr $C003.w		; 20 03 C0
	and $10.b,S		; 23 10
	brk $F0.b		; 00 F0
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $F8.b		; 04 F8
	stx $1788.w		; 8E 88 17
	ora ($46.b)		; 12 46
	adc ($0F.b,S),Y		; 73 0F
	xce		; FB
	ora [$8B.b]		; 07 8B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	inx		; E8
	cop $AB.b		; 02 AB
	jsl $018283.l		; 22 83 82 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
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
	brk $F0.b		; 00 F0
	brk $4F.b		; 00 4F
	bvs   1.b		; 70 01
	ora ($EB.b,X)		; 01 EB
	tas		; 1B
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -128.b		; 70 80
	ora ($FE.b,X)		; 01 FE
	tas		; 1B
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$D000.w		; C0 00 D0
	cpx #$00F8.w		; E0 F8 00
	cmp $8784F0.l		; CF F0 84 87
	bra -128.b		; 80 80
	jmp ($FFFC.w,X)		; 7C FC FF
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $87.b		; 00 87
	sei		; 78
	bra 127.b		; 80 7F
	jmp ($0083.w,X)		; 7C 83 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	sta $32.b,S		; 83 32
	sty $7800.w		; 8C 00 78
	php		; 08
	bpl   4.b		; 10 04
	php		; 08
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $737D.w		; 4D 7D 73
	adc ($0F.b,S),Y		; 73 0F
	ora $070F0F.l		; 0F 0F 0F 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	sed		; F8
	ora #$0006.w		; 09 06 00
	ora ($22.b,X)		; 01 22
	trb $6280.w		; 1C 80 62
	ora ($82.b,X)		; 01 82
	cop $05.b		; 02 05
	brk $0F.b		; 00 0F
	ora [$07.b]		; 07 07
	sbc $FEF9.w,Y		; F9 F9 FE
	inc $E3E3.w,X		; FE E3 E3
	sta ($81.b,X)		; 81 81
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	brk $41.b		; 00 41
	bra  64.b		; 80 40
	rti		; 40

	ldy #$A040.w		; A0 40 A0
	rti		; 40

	ldy #$C000.w		; A0 00 C0
	brk $80.b		; 00 80
	ora ($00.b,X)		; 01 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	lda $5FFF1F.l,X		; BF 1F FF 5F
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $405F.w		; 1C 5F 40
	ora $001F00.l,X		; 1F 00 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	cpy #$F0FC.w		; C0 FC F0
	jsr ($7C78.w,X)		; FC 78 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	beq 112.b		; F0 70
	jsr ($FC78.w,X)		; FC 78 FC
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($39.b,X)		; 01 39
	ora $29.b,X		; 15 29
	ora ($2E.b)		; 12 2E
	cop $1C.b		; 02 1C
	ora $1A.b		; 05 1A
	php		; 08
	ora [$04.b],Y		; 17 04
	and $172C07.l		; 2F 07 2C 17
	ora [$17.b],Y		; 17 17
	ora [$1B.b],Y		; 17 1B
	tas		; 1B
	ora $03.b,S		; 03 03
	ora $0A0D.w		; 0D 0D 0A
	tsb $1C17.w		; 0C 17 1C
	ora ($1F.b),Y		; 11 1F
	tyx		; BB
	dey		; 88
	eor [$20.b],Y		; 57 20
	asl $2470.w		; 0E 70 24
	ora ($C2.b),Y		; 11 C2
	tsa		; 3B
	bvs -114.b		; 70 8E
	brk $FF.b		; 00 FF
	tya		; 98
	rts		; 60

	sbc [$E4.b]		; E7 E4
	cmp $A0A7C0.l		; CF C0 A7 A0
	inc $E4E0.w		; EE E0 E4
	cpx #$7070.w		; E0 70 70
	bra -128.b		; 80 80
	lda $6EB9BF.l,X		; BF BF B9 6E
	and $AF4E.w,X		; 3D 4E AF
	cmp ($2F.b,X)		; C1 2F
	bit #$163F.w		; 89 3F 16
	inc A		; 1A
	tsb $05.b		; 04 05
	bra   0.b		; 80 00
	rep #$CE		; C2 CE
	rti		; 40

	stx $0000.w		; 8E 00 00
	ora ($08.b),Y		; 11 08
	ora ($12.b,S),Y		; 13 12
	ora [$01.b]		; 07 01
	asl $0403.w		; 0E 03 04
	sta ($80.b,X)		; 81 80
	adc [$BA.b],Y		; 77 BA
	adc $34EFB4.l,X		; 7F B4 EF 34
	mvn $37,$E8		; 54 E8 37
	cmp #$D62F.w		; C9 2F D6
	stx $2B.b,Y		; 96 2B
	sbc $3EA200.l		; EF 00 A2 3E
	ldy $3C.b		; A4 3C
	brk $3C.b		; 00 3C
	brk $FB.b		; 00 FB
	ora ($F8.b,X)		; 01 F8
	asl $00.b,X		; 16 00
	wai		; CB
	brk $C0.b		; 00 C0
	ora [$08.b],Y		; 17 08
	ora [$CB.b]		; 07 CB
	cpy #$34FD.w		; C0 FD 34
	ror $1706.w,X		; 7E 06 17
	ora $F0EFF0.l		; 0F F0 EF F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	beq -57.b		; F0 C7
	bmi  51.b		; 30 33
	brk $01.b		; 00 01
	bra   8.b		; 80 08
	inx		; E8
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	beq   5.b		; F0 05
	sbc $A3.b,S		; E3 A3
	bit $03FF.w,X		; 3C FF 03
	ora [$03.b]		; 07 03
	cmp $FE01FD.l		; CF FD 01 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	cpy #$FA00.w		; C0 00 FA
	ora $FB.b,S		; 03 FB
	cop $30.b		; 02 30
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ldy $40.b		; A4 40
	ldy $48.b		; A4 48
	ldy $01.b		; A4 01
	inx		; E8
	ora ($69.b)		; 12 69
	ora $19.b,S		; 03 19
	ora ($0A.b,X)		; 01 0A
	brk $02.b		; 00 02
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	bvc  80.b		; 50 50
	bpl  19.b		; 10 13
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $100734.l		; 0F 34 07 10
	sbc $CCC418.l		; EF 18 C4 CC
	clv		; B8
	ora [$FF.b]		; 07 FF
	tya		; 98
	adc $D8.b,X		; 75 D8
	sbc [$18.b]		; E7 18
	trb $0F14.w		; 1C 14 0F
	brk $07.b		; 00 07
	brk $C3.b		; 00 C3
	bmi   3.b		; 30 03
	eor $98.b,S		; 43 98
	bra  26.b		; 80 1A
.INDEX 16
	rep #$1A		; C2 1A
.INDEX 16
	rep #$D8		; C2 D8
	ora [$E1.b]		; 07 E1
	asl A		; 0A
	ora ($D2.b,X)		; 01 D2
	eor ($62.b),Y		; 51 62
	and ($C2.b),Y		; 31 C2
	sbc ($C5.b)		; F2 C5
	stz $DB.b		; 64 DB
	jsr $E1DF.w		; 20 DF E1
	ora ($F1.b,X)		; 01 F1
	ora ($A1.b,X)		; 01 A1
	sta ($81.b,X)		; 81 81
	ora ($01.b,X)		; 01 01
	ora ($C3.b),Y		; 11 C3
	ora ($C4.b,S),Y		; 13 C4
	tsb $C0.b		; 04 C0
	brk $C4.b		; 00 C4
	jsl $8022C4.l		; 22 C4 22 80
	ror $A8.b		; 66 A8
	mvp $DC,$00		; 44 00 DC
	trb $F6.b		; 14 F6
	eor $B69FC8.l		; 4F C8 9F B6
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$DCDC]		; DC DC DC
	clv		; B8
	clv		; B8
	ldy #$08A0.w		; A0 A0 08
	brk $30.b		; 00 30
	brk $66.b		; 00 66
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	trb $3008.w		; 1C 08 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1C001F.l,X		; 1F 1F 00 1C
	bpl  34.b		; 10 22
	asl A		; 0A
	and $0C.b		; 25 0C
	and [$1D.b]		; 27 1D
	rol $19.b		; 26 19
	inc $50.b		; E6 50
	and $001C22.l		; 2F 22 1C 00
	brk $1C.b		; 00 1C
	trb $1E1A.w		; 1C 1A 1E
	bpl  30.b		; 10 1E
	ora $1F.b,X		; 15 1F
	ora [$19.b],Y		; 17 19
	jmp.w [$E3D0]		; DC D0 E3
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	tsb $02.b		; 04 02
	ora #$8903.w		; 09 03 89
	ora $F60991.l		; 0F 91 09 F6
	bpl  15.b		; 10 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $07.b		; 06 07
	tsb $07.b		; 04 07
	ora $0F0F.w		; 0D 0F 0F
	ora #$F1F3.w		; 09 F3 F1
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	inc A		; 1A
	ora [$3F.b]		; 07 3F
	asl $003F.w,X		; 1E 3F 00
	ora $01.b,S		; 03 01
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	ora ($00.b,X)		; 01 00
	xce		; FB
	ora ($BB.b),Y		; 11 BB
	ora ($AD.b)		; 12 AD
	trb $9D.b		; 14 9D
	tsb $FE.b		; 04 FE
	ora ($E4.b,X)		; 01 E4
	jmp ($9818.w,X)		; 7C 18 98
	and $841130.l		; 2F 30 11 84
	ora ($84.b)		; 12 84
	trb $82.b		; 14 82
	tsb $82.b		; 04 82
	ora ($80.b,X)		; 01 80
	jmp ($9803.w,X)		; 7C 03 98
	adc [$30.b]		; 67 30
	cpy #$2264.w		; C0 64 22
	ror $BE57.w,X		; 7E 57 BE
	dey		; 88
	sbc $1C.b,S		; E3 1C
	adc $3CE8.w,Y		; 79 E8 3C
	bmi 123.b		; 30 7B
	adc ($F8.b,S),Y		; 73 F8
	ora [$20.b]		; 07 20
	tya		; 98
	bvc -128.b		; 50 80
	sta [$40.b]		; 87 40
	ora [$04.b]		; 07 04
	cmp [$20.b]		; C7 20
	and [$D0.b],Y		; 37 D0
	stz $90.b		; 64 90
	brk $00.b		; 00 00
	asl $160C.w,X		; 1E 0C 16
	tsb $8C16.w		; 0C 16 8C
	sta $4C9C4E.l,X		; 9F 4E 9C 4C
	sta $801FCB.l,X		; 9F CB 1F 80
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $0C.b		; 00 0C
	brk $8E.b		; 00 8E
	brk $8C.b		; 00 8C
	ora $0B.b,S		; 03 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	rti		; 40

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	brk $E0.b		; 00 E0
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
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $03.b		; 02 03
	brk $06.b		; 00 06
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	tsb $01.b		; 04 01
	ora [$BF.b]		; 07 BF
	rts		; 60

	lda $5C.b,S		; A3 5C
	ldx $AF43.w,Y		; BE 43 AF
	bvc  -9.b		; 50 F7
	ora $BF205F.l		; 0F 5F 20 BF
	eor $BB.b,X		; 55 BB
	eor ($80.b),Y		; 51 80
	jsr $009C.w		; 20 9C 00
	bra   3.b		; 80 03
	bra  63.b		; 80 3F
	brk $1F.b		; 00 1F
	jsr $5580.w		; 20 80 55
	brk $51.b		; 00 51
	sty $C7.b		; 84 C7
	ora ($3E.b),Y		; 11 3E
	cpy $FE.b		; C4 FE
	trb $4CBA.w		; 1C BA 4C
	sbc $D1F341.l		; EF 41 F3 D1
	plx		; FA
	ora #$A2EC.w		; 09 EC A2
	jsr $C500.w		; 20 00 C5
	brk $1D.b		; 00 1D
	brk $0D.b		; 00 0D
	cpy #$D000.w		; C0 00 D0
	bvc -52.b		; 50 CC
	php		; 08
	tsb $A0.b		; 04 A0
	bpl  31.b		; 10 1F
	rol $5E6F.w		; 2E 6F 5E
	adc $DEFF5E.l,X		; 7F 5E FF DE
	lda $2DDE.w,X		; BD DE 2D
	stz $1C2E.w,X		; 9E 2E 1C
	rol $C61C.w		; 2E 1C C6
	php		; 08
	stx $9E10.w		; 8E 10 9E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $02.b		; 00 02
	adc ($24.b,X)		; 61 24
	eor $09.b,S		; 43 09
	dec $52.b		; C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($3F.b),Y		; D1 3F
	and $793C3C.l,X		; 3F 3C 3C 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $052E.w		; 2E 2E 05
	sbc $B048.w,Y		; F9 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1B3017.l,X		; BF 17 30 1B
	rol $0F.b,X		; 36 0F
	ora $DFDFDF.l		; 0F DF DF DF
	cmp $9ADADA.l,X		; DF DA DA 9A
	txs		; 9A
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	asl $8C.b		; 06 8C
	phb		; 8B
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($20.b)		; B2 20
	jmp ($5C89.w,X)		; 7C 89 5C
	bmi -59.b		; 30 C5
	tax		; AA
	eor $36.b,X		; 55 36
	sta $FCFC.w,Y		; 99 FC FC
	inc $CFFE.w,X		; FE FE CF
	cmp $B38B8B.l		; CF 8B 8B B3
	sta ($3B.b,S),Y		; 93 3B
	ora $72.b,S		; 03 72
	eor ($62.b)		; 52 62
	txa		; 8A
	brk $E0.b		; 00 E0
	bra  56.b		; 80 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	trb $62.b		; 14 62
	brk $73.b		; 00 73
	cop $F1.b		; 02 F1
	.db $62, $91, $00		; 62 91 00
	brk $E0.b		; 00 E0
	cpx #$7878.w		; E0 78 78
	ldy $9CBC.w,X		; BC BC 9C
	stz $8E8E.w		; 9C 8E 8E
	ldx $6EAE.w		; AE AE 6E
	ror $D87A.w		; 6E 7A D8
	and $3B5A.w,Y		; 39 5A 3B
	phy		; 5A
	and #$1918.w		; 29 18 19
	php		; 08
	bpl   9.b		; 10 09
	ora $1805.w,X		; 1D 05 18
	tsb $18.b		; 04 18
	trb $0A.b		; 14 0A
	trb $0A.b		; 14 0A
	trb $08.b		; 14 08
	asl $08.b,X		; 16 08
	asl $09.b		; 06 09
	asl $05.b		; 06 05
	cop $04.b		; 02 04
	ora $00.b,S		; 03 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	ora ($2F.b),Y		; 11 2F
	and ($54.b,X)		; 21 54
	and #$1544.w		; 29 44 15
	jmp.w [$DB12]		; DC 12 DB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	pld		; 2B
	plp		; 28
	dec A		; 3A
	sec		; 38
	and ($30.b)		; 32 30
	bit $30.b,X		; 34 30
	brk $3A.b		; 00 3A
	phd		; 0B
	ror $E613.w		; 6E 13 E6
	ora ($C6.b),Y		; 11 C6
	beq   7.b		; F0 07
	sbc ($05.b)		; F2 05
	sbc ($85.b)		; F2 85
	sbc ($25.b)		; F2 25
	ora ($00.b,X)		; 01 00
	bpl   0.b		; 10 00
	bit $7E24.w,X		; 3C 24 7E
	lsr $FC.b		; 46 FC
	tsb $FA.b		; 04 FA
	cop $7A.b		; 02 7A
	cop $1A.b		; 02 1A
	cop $FF.b		; 02 FF
	ora $7B.b		; 05 7B
	lsr $7D.b		; 46 7D
	inc A		; 1A
	cmp $02F8B0.l,X		; DF B0 F8 02
	tsb $0221.w		; 0C 21 02
	bpl   5.b		; 10 05
	tsb $0700.w		; 0C 00 07
	rti		; 40

	sta $90BF08.l,X		; 9F 08 BF 90
	adc $1E300C.l,X		; 7F 0C 30 1E
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $73.b		; 00 73
	ldx #$A959.w		; A2 59 A9
	jmp.w [$3624]		; DC 24 36
	asl A		; 0A
	tas		; 1B
	ora $864D.w		; 0D 4D 86
	lda [$00.b]		; A7 00
	sei		; 78
	rti		; 40

	cop $EC.b		; 02 EC
	ora #$04E6.w		; 09 E6 04
	sbc $0A.b,S		; E3 0A
	ora ($0D.b,X)		; 01 0D
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	eor ($40.b,X)		; 41 40
	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  96.b		; 80 60
	cpx #$C878.w		; E0 78 C8
	lsr $0000.w		; 4E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	asl $1900.w		; 0E 00 19
	asl $081F.w		; 0E 1F 08
	tas		; 1B
	brk $3E.b		; 00 3E
	ora ($3C.b),Y		; 11 3C
	ora [$3E.b],Y		; 17 3E
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $08.b		; 00 08
	brk $06.b		; 00 06
	asl $11.b		; 06 11
	brk $17.b		; 00 17
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$00FF.w		; C0 FF 00
	and $9FDE.w,Y		; 39 DE 9F
	adc $AD5F.w		; 6D 5F AD
	adc $00009A.l,X		; 7F 9A 00 00
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	and $691FC0.l,X		; 3F C0 1F 69
	ora $900FA9.l		; 0F A9 0F 90
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FB00.w,X)		; FC 00 FB
	ldy $4FFF.w,X		; BC FF 4F
	dec $F343.w		; CE 43 F3
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BC.b		; 00 BC
	bra  79.b		; 80 4F
	brk $43.b		; 00 43
	bmi -112.b		; 30 90
	tsb $8F93.w		; 0C 93 8F
	sed		; F8
	rtl		; 6B

	inc $7788.w,X		; FE 88 77
	bvc -45.b		; 50 D3
	bcs -124.b		; B0 84
	jmp ($77B8.w,X)		; 7C B8 77
	bvs   0.b		; 70 00
	bra  96.b		; 80 60
	stz $00.b		; 64 00
	sta [$00.b]		; 87 00
	eor $20AF80.l		; 4F 80 AF 20
	ora $00.b,S		; 03 00
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	jsr $9030.w		; 20 30 90
	tya		; 98
	lsr $2EC8.w		; 4E C8 2E
	stz $9E.b		; 64 9E
	bit $24FA.w		; 2C FA 24
	dec $3E88.w,X		; DE 88 3E
	stz $00C0.w		; 9C C0 00
	rts		; 60

	brk $30.b		; 00 30
	brk $94.b		; 00 94
	tsb $C4.b		; 04 C4
	php		; 08
	cpy $00.b		; C4 00
	rts		; 60

	php		; 08
	jmp $006018.l		; 5C 18 60 00
	sed		; F8
	rts		; 60

	sed		; F8
	beq  -8.b		; F0 F8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	jsr $70F8.w		; 20 F8 70
	sed		; F8
	bmi  -8.b		; 30 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $19.b		; 06 19
	brk $0F.b		; 00 0F
	ora ($06.b,X)		; 01 06
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E.b		; 06 0E
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($E6.b),Y		; 31 E6
	adc ($85.b)		; 72 85
	eor $88.b		; 45 88
	.db $82, $7C, $49		; 82 7C 49
	rol $84.b,X		; 36 84
	tas		; 1B
	bmi -49.b		; 30 CF
	brk $3F.b		; 00 3F
	ora #$5A79.w		; 09 79 5A
	ply		; 7A
	adc [$77.b],Y		; 77 77
	phb		; 8B
	phb		; 8B
	cmp $E6DD.w,X		; DD DD E6
	inc $39.b		; E6 39
	and $0000.w,Y		; 39 00 00
	tay		; A8
	mvp $63,$94		; 44 94 63
	pha		; 48
	lda ($83.b),Y		; B1 83
	jmp ($1F20.w,X)		; 7C 20 1F
	bra   0.b		; 80 00
	jsl $3F00C1.l		; 22 C1 00 3F
	clv		; B8
	clv		; B8
	ldy $5FBC.w,X		; BC BC 5F
	eor $E08787.l,X		; 5F 87 87 E0
	cpx #$FFFF.w		; E0 FF FF
	and $00003F.l,X		; 3F 3F 00 00
	asl $0A.b,X		; 16 0A
	phd		; 0B
	ora $0E.b		; 05 0E
	ora $0D.b		; 05 0D
	asl $0F.b		; 06 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	ora ($05.b,X)		; 01 05
	brk $05.b		; 00 05
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra  96.b		; 80 60
	rti		; 40

	bcs -96.b		; B0 A0
	cld		; D8
	bne -20.b		; D0 EC
	tay		; A8
	inc $0F0C.w,X		; FE 0C 0F
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	rti		; 40

	bne  32.b		; D0 20
	tay		; A8
	bpl  12.b		; 10 0C
	brk $00.b		; 00 00
	brk $25.b		; 00 25
	dec $640A.w		; CE 0A 64
	ora ($21.b),Y		; 11 21
	asl $66.b,X		; 16 66
	cop $1C.b		; 02 1C
	tsb $1B.b		; 04 1B
	asl $19.b		; 06 19
	asl $7119.w		; 0E 19 71
	adc ($3B.b),Y		; 71 3B
	tsa		; 3B
	ora $1F1F1F.l,X		; 1F 1F 1F 1F
	ora $03.b,S		; 03 03
	php		; 08
	tsb $0B.b		; 04 0B
	ora [$03.b]		; 07 03
	ora $44CD0A.l		; 0F 0A CD 44
	tyx		; BB
	tsb $02.b		; 04 02
	bpl  15.b		; 10 0F
	sty $78.b		; 84 78
	cop $FC.b		; 02 FC
	php		; 08
	sbc [$31.b],Y		; F7 31
	inc $32.b		; E6 32
	cop $56.b		; 02 56
	lsr $FC.b,X		; 56 FC
	jsr ($F0F0.w,X)		; FC F0 F0
	sta [$87.b]		; 87 87
	tda		; 7B
	phk		; 4B
	sec		; 38
	pha		; 48
	pld		; 2B
	tda		; 7B
	ora ($06.b,X)		; 01 06
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	jsr $9010.w		; 20 10 90
	php		; 08
	rti		; 40

	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$F0E0.w		; E0 E0 F0
	beq 112.b		; F0 70
	bvs 118.b		; 70 76
	sec		; 38
	sbc $EEBE.w,X		; FD BE EE
	ora $03031C.l,X		; 1F 1C 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	ldx $3F98.w,Y		; BE 98 3F
	tsb $7F.b		; 04 7F
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $1C.b		; 00 1C
	bpl -24.b		; 10 E8
	ldy #$4058.w		; A0 58 40
	bcs -128.b		; B0 80
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bcs -80.b		; B0 B0
	rts		; 60

	rts		; 60

	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $12.b		; 00 12
	tsb $081C.w		; 0C 1C 08
	ora $1708.w,X		; 1D 08 17
	ora $10.b		; 05 10
	cop $12.b		; 02 12
	cop $31.b		; 02 31
	bpl   0.b		; 10 00
	ora $001E00.l		; 0F 00 1E 00
	trb $1D00.w		; 1C 00 1D
	php		; 08
	ora $0D1F0D.l,X		; 1F 0D 1F 0D
	ora $083E0E.l,X		; 1F 0E 3E 08
	brk $59.b		; 00 59
	brk $B3.b		; 00 B3
	bpl -89.b		; 10 A7
	lda ($07.b,X)		; A1 07
	ora ($06.b,X)		; 01 06
	ora ($7F.b,X)		; 01 7F
	brk $FF.b		; 00 FF
	brk $07.b		; 00 07
	ora $4C5E06.l		; 0F 06 5E 4C
	jsr ($F959.w,X)		; FC 59 F9
	sbc $F9F9.w,Y		; F9 F9 F9
	sbc $8080.w,Y		; F9 80 80
	brk $00.b		; 00 00
	ora $109001.l,X		; 1F 01 90 10
	cpy #$E000.w		; C0 00 E0
	brk $60.b		; 00 60
	bra -15.b		; 80 F1
	cpy #$C0FF.w		; C0 FF C0
	sbc $FFE000.l,X		; FF 00 E0 FF
	adc $3F3F7F.l		; 6F 7F 3F 3F
	sta $9F9F9F.l,X		; 9F 9F 9F 9F
	dec $C0CE.w		; CE CE C0
	cpy #$0000.w		; C0 00 00
	ora $02.b,S		; 03 02
	and $7C01.w,Y		; 39 01 7C
	brk $FE.b		; 00 FE
	bpl -34.b		; 10 DE
	bmi -18.b		; 30 EE
	bvs  -1.b		; 70 FF
	rts		; 60

	sbc $FFFC00.l,X		; FF 00 FC FF
	dec $C7.b		; C6 C7
	sta $83.b,S		; 83 83
	and ($31.b),Y		; 31 31
	and ($31.b),Y		; 31 31
	adc ($71.b),Y		; 71 71
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	stz $6C01.w,X		; 9E 01 6C
	trb $3030.w		; 1C 30 30
	ora ($01.b,X)		; 01 01
	cpx #$F901.w		; E0 01 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	sta $CFFF83.l,X		; 9F 83 FF CF
	sbc $1EFFFE.l,X		; FF FE FF 1E
	ora $000706.l,X		; 1F 06 07 00
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	.db $82, $00, $9C		; 82 00 9C
	brk $68.b		; 00 68
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	brk $82.b		; 00 82
	brk $9C.b		; 00 9C
	brk $78.b		; 00 78
	beq -64.b		; F0 C0
	cld		; D8
	rts		; 60

	clv		; B8
	rts		; 60

	cpx $DC30.w		; EC 30 DC
	bmi -12.b		; 30 F4
	clc		; 18
	ror $3A08.w,X		; 7E 08 3A
	tsb $CFCF.w		; 0C CF CF
	sbc [$E7.b]		; E7 E7
	adc [$67.b]		; 67 67
	adc ($73.b,S),Y		; 73 73
	and ($33.b,S),Y		; 33 33
	tas		; 1B
	tas		; 1B
	sta $CD99.w,Y		; 99 99 CD
	cmp $30E8.w		; CD E8 30
	beq -128.b		; F0 80
	rts		; 60

	brk $F0.b		; 00 F0
	ldy #$20F0.w		; A0 F0 20
	asl $0B00.w,X		; 1E 00 0B
	tsb $3834.w		; 0C 34 38
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bra -32.b		; 80 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cpx #$F0FE.w		; E0 FE F0
	sbc $03FCC0.l,X		; FF C0 FC 03
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $1D.b		; 00 1D
	brk $0B.b		; 00 0B
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $0F00.w,X		; 1D 00 0F
	sta [$81.b]		; 87 81
	adc $CE23.w		; 6D 23 CE
	ora $5B.b,S		; 03 5B
	asl $DD.b		; 06 DD
	asl $17.b		; 06 17
	sty $88BF.w		; 8C BF 88
	rol $7918.w		; 2E 18 79
	sbc $F393.w,Y		; F9 93 F3
	and ($F3.b,S),Y		; 33 F3
	and [$67.b]		; 27 67
	rol $E6.b		; 26 E6
	jmp ($4CEC.w)		; 6C EC 4C
	cpy $D9D9.w		; CC D9 D9
	and $000402.l,X		; 3F 02 04 00
	tsb $00.b		; 04 00
	tsb $0804.w		; 0C 04 08
	brk $1A.b		; 00 1A
	asl A		; 0A
	asl $00.b,X		; 16 00
	and $18.b,X		; 35 18
	brk $3E.b		; 00 3E
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	ora [$0F.b]		; 07 0F
	ora $1F.b		; 05 1F
	ora #$001F.w		; 09 1F 00
	and $00FF.w,X		; 3D FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $9E.b		; 00 9E
	bra -121.b		; 80 87
	rti		; 40

	bvc  48.b		; 50 30
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($81.b,X)		; 81 81
	cmp ($C1.b,X)		; C1 C1
	adc ($E1.b,X)		; 61 E1
	sec		; 38
	sed		; F8
	ora $00E97F.l		; 0F 7F E9 00
	cld		; D8
	bpl -56.b		; 10 C8
	bpl -98.b		; 10 9E
	brk $31.b		; 00 31
	rol $487F.w		; 2E 7F 48
	tsb $3808.w		; 0C 08 38
	bmi  16.b		; 30 10
	ora $3820.w,Y		; 19 20 38
	jsr $6038.w		; 20 38 60
	ror $FFC0.w,X		; 7E C0 FF
	bra  -1.b		; 80 FF
	beq  -4.b		; F0 FC
	cpy #$40F8.w		; C0 F8 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	adc $01.b,S		; 63 01
	bit $00.b		; 24 00
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	brk $63.b		; 00 63
	ora $27.b,S		; 03 27
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	adc [$0F.b],Y		; 77 0F
	adc $087F08.l,X		; 7F 08 7F 08
	and [$0F.b],Y		; 37 0F
	rol $3B01.w,X		; 3E 01 3B
	tsb $0C1F.w		; 0C 1F 0C
	cmp [$0C.b],Y		; D7 0C
	sta $88888F.l		; 8F 8F 88 88
	sty $CF8C.w		; 8C 8C CF
	cmp $CCC1C1.l		; CF C1 C1 CC
	cpy $ECEC.w		; CC EC EC
	rol $F3EE.w		; 2E EE F3
	bpl  39.b		; 10 27
	brk $07.b		; 00 07
	brk $4F.b		; 00 4F
	rti		; 40

	sbc $00AF20.l		; EF 20 AF 00
	adc $40CF20.l		; 6F 20 CF 40
	tsb $D8FC.w		; 0C FC D8
	sed		; F8
	sed		; F8
	sed		; F8
	bcs -16.b		; B0 F0
	bpl -16.b		; 10 F0
	bpl -80.b		; 10 B0
	bpl 112.b		; 10 70
	bmi -16.b		; 30 F0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00F800.l,X		; FF 00 F8 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	sbc $0EFF00.l,X		; FF 00 FF 0E
	cmp $7FBF3F.l,X		; DF 3F BF 7F
	sbc $55FF44.l,X		; FF 44 FF 55
	inc $FF55.w		; EE 55 FF
	mvp $00,$00		; 44 00 00
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	adc $44447F.l,X		; 7F 7F 44 44
	eor $55.b,X		; 55 55
	eor $55.b,X		; 55 55
	mvp $FF,$44		; 44 44 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra -65.b		; 80 BF
	cpy #$40FF.w		; C0 FF 40
	sbc $40FF40.l,X		; FF 40 FF 40
	sbc ($40.b,S),Y		; F3 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$40C0.w		; C0 C0 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jmp $FD4C.w		; 4C 4C FD
	brk $FF.b		; 00 FF
	ora ($FE.b,X)		; 01 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	bvc -111.b		; 50 91
	bra  49.b		; 80 31
	jsr $0023.w		; 20 23 00
	ora $02.b,X		; 15 02
	ora $3502.w		; 0D 02 35
	asl $7A.b,X		; 16 7A
	jmp $F820.w		; 4C 20 F8
	rts		; 60

	sbc ($C0.b),Y		; F1 C0
	sbc ($C0.b),Y		; F1 C0
	sbc $E0.b,S		; E3 E0
	sbc [$F0.b],Y		; F7 F0
	sbc $80FFC8.l,X		; FF C8 FF 80
	inc $849F.w,X		; FE 9F 84
	cmp #$8F06.w		; C9 06 8F
	brk $C6.b		; 00 C6
	eor $85.b,S		; 43 85
	sta $E7.b,S		; 83 E7
	and ($47.b,X)		; 21 47
	and ($21.b,X)		; 21 21
	brk $6C.b		; 00 6C
	cpx $F636.w		; EC 36 F6
	bvs -16.b		; 70 F0
	tsa		; 3B
	xce		; FB
	tda		; 7B
	xce		; FB
	ora $19F9.w,Y		; 19 F9 19
	adc $3E1E.w,Y		; 79 1E 3E
	sei		; 78
	rti		; 40

	jsr $B400.w		; 20 00 B4
	jsr $049A.w		; 20 9A 04
	dec $5504.w,X		; DE 04 55
	stx $CF.b		; 86 CF
	txa		; 8A
	cmp $F88002.l		; CF 02 80 F8
	cpy #$40E0.w		; C0 E0 40
	stz $60.b,X		; 74 60
	ror $3E20.w,X		; 7E 20 3E
	tay		; A8
	lda $30BFB0.l,X		; BF B0 BF 30
	and $060205.l,X		; 3F 05 02 06
	cop $06.b		; 02 06
	cop $E2.b		; 02 E2
	brk $5F.b		; 00 5F
	jsl $111C2D.l		; 22 2D 1C 11
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	sbc $00.b,S		; E3 00
	ror $3E02.w,X		; 7E 02 3E
	asl $021E.w		; 0E 1E 02
	asl $107C.w		; 0E 7C 10
	pha		; 48
	bmi  -8.b		; 30 F8
	brk $B1.b		; 00 B1
	adc ($D1.b,X)		; 61 D1
	rts		; 60

	adc ($C2.b,S),Y		; 73 C2
	sbc ($C0.b)		; F2 C0
	rep #$00		; C2 00
	txy		; 9B
	txy		; 9B
	lda [$B7.b],Y		; B7 B7
	ora [$07.b]		; 07 07
	ror $6E6F.w		; 6E 6F 6E
	adc $CCCFCC.l		; 6F CC CF CC
	dec $3E3C.w		; CE 3C 3E
	pld		; 2B
	bpl 115.b		; 10 73
	ora ($C1.b,X)		; 01 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsa		; 3B
	brk $73.b		; 00 73
	brk $C1.b		; 00 C1
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$0020.w		; E0 20 00
	brk $B3.b		; 00 B3
	bcc -37.b		; 90 DB
	pla		; 68
	adc $AC20.w,Y		; 79 20 AC
	mvp $40,$A6		; 44 A6 40
	lda ($40.b,X)		; A1 40
	ora $FFFFFF.l,X		; 1F FF FF FF
	jmp $04FF.w		; 4C FF 04
	sbc $037F06.l,X		; FF 06 7F 03
	sbc $00E701.l		; EF 01 E7 00
	sbc ($F0.b,X)		; E1 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	asl $03.b		; 06 03
	tsb $3A06.w		; 0C 06 3A
	tsb $000D.w		; 0C 0D 00
	sbc ($00.b,X)		; E1 00
	eor ($20.b),Y		; 51 20
	and $143C11.l		; 2F 11 3C 14
	brk $07.b		; 00 07
	ora ($0F.b,X)		; 01 0F
	ora ($3F.b,X)		; 01 3F
	brk $0D.b		; 00 0D
	brk $E1.b		; 00 E1
	brk $71.b		; 00 71
	brk $3F.b		; 00 3F
	ora $3F.b,S		; 03 3F
	cmp $DF06.w,X		; DD 06 DF
	asl $5F.b		; 06 5F
	asl $0B.b		; 06 0B
	asl $0F.b		; 06 0F
	brk $9B.b		; 00 9B
	stx $39.b		; 86 39
	asl $7F.b		; 06 7F
	brk $2E.b		; 00 2E
	inc $E626.w		; EE 26 E6
	ldx $E6.b		; A6 E6
	inc $F6.b,X		; F6 F6
	beq -16.b		; F0 F0
	ror $E6.b		; 66 E6
	dec $C6.b		; C6 C6
	bcc -112.b		; 90 90
	ora $011E07.l,X		; 1F 07 1E 01
	phd		; 0B
	tsb $0F.b		; 04 0F
	ora $1F.b,S		; 03 1F
	ora $3D.b,S		; 03 3D
	phd		; 0B
	adc $2A7D00.l,X		; 7F 00 7D 2A
	sbc $E5E5EF.l		; EF EF E5 E5
	pea $F3F4.w		; F4 F4 F3
	sbc ($E3.b,S),Y		; F3 E3
	sbc $CB.b,S		; E3 CB
	wai		; CB
	bra -128.b		; 80 80
	tax		; AA
	tax		; AA
	inc $BEF0.w,X		; FE F0 BE
	cpy #$10EC.w		; C0 EC 10
	sed		; F8
	rts		; 60

	jsr ($DE60.w,X)		; FC 60 DE
	pla		; 68
	sbc $AADF00.l,X		; FF 00 DF AA
	sbc $D1F9.w,Y		; F9 F9 D1
	cmp ($13.b),Y		; D1 13
	ora ($67.b,S),Y		; 13 67
	adc [$63.b]		; 67 63
	adc $69.b,S		; 63 69
	adc #$0000.w		; 69 00 00
	tax		; AA
	tax		; AA
	sbc [$78.b],Y		; F7 78
	sbc $88FF88.l,X		; FF 88 FF 88
	inc $F8.b,X		; F6 F8
	ldx $EEC0.w,Y		; BE C0 EE
	clc		; 18
	jsr ($F418.w,X)		; FC 18 F4
	clc		; 18
	sed		; F8
	sed		; F8
	dey		; 88
	dey		; 88
	tya		; 98
	tya		; 98
	sbc $C1F9.w,Y		; F9 F9 C1
	cmp ($19.b,X)		; C1 19
	ora $1B1B.w,Y		; 19 1B 1B
	tsa		; 3B
	tsa		; 3B
	cld		; D8
	bcs 124.b		; B0 7C
	brk $40.b		; 00 40
	brk $41.b		; 00 41
	brk $62.b		; 00 62
	eor ($14.b,X)		; 41 14
	ora $6F.b,S		; 03 6F
	adc ($7B.b)		; 72 7B
	inc A		; 1A
	brk $F8.b		; 00 F8
	bra  -4.b		; 80 FC
	bra -64.b		; 80 C0
	bra -63.b		; 80 C1
	bra -29.b		; 80 E3
	cpx #$80F7.w		; E0 F7 80
	sbc $12FF84.l,X		; FF 84 FF 12
	bpl 127.b		; 10 7F
	lsr $C6.b		; 46 C6
	ora ($01.b,X)		; 01 01
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	bra -48.b		; 80 D0
	rts		; 60

	sei		; 78
	brk $EC.b		; 00 EC
	inc $FF80.w,X		; FE 80 FF
	brk $C7.b		; 00 C7
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $04.b		; 64 04
	bit $3B08.w		; 2C 08 3B
	bpl  28.b		; 10 1C
	php		; 08
	tsb $0500.w		; 0C 00 05
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $1B.b		; 00 1B
	adc $003F13.l,X		; 7F 13 3F 00
	tsa		; 3B
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $05.b		; 00 05
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	stz $48.b,X		; 74 48
	bit $08.b,X		; 34 08
	tax		; AA
	sty $E7.b		; 84 E7
	rti		; 40

	ldy #$4040.w		; A0 40 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr ($FCC0.w,X)		; FC C0 FC
	rti		; 40

	inc $E700.w		; EE 00 E7
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $6605.w,X		; 1D 05 66
	clc		; 18
	tas		; 1B
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	ora $007F01.l,X		; 1F 01 7F 00
	tas		; 1B
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	phb		; 8B
	cop $F9.b		; 02 F9
	.db $82, $12, $10		; 82 12 10
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $8F.b		; 04 8F
	tsb $FF.b		; 04 FF
	cpx $02FE.w		; EC FE 02
	ora ($05.b,X)		; 01 05
	cop $09.b		; 02 09
	ora [$47.b]		; 07 47
	brk $60.b		; 00 60
	brk $5F.b		; 00 5F
	jsr $1030.w		; 20 30 10
	bit $0C.b,X		; 34 0C
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $47.b		; 00 47
	brk $60.b		; 00 60
	brk $7F.b		; 00 7F
	ora $3F033F.l		; 0F 3F 03 3F
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	beq -128.b		; F0 80
	cli		; 58
	bne -20.b		; D0 EC
	plp		; 28
	stx $84.b		; 86 84
	and $002020.l,X		; 3F 20 20 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	jsr $10F8.w		; 20 F8 10
	jsr ($FE78.w,X)		; FC 78 FE
	cpy #$C0FF.w		; C0 FF C0
	cpx #$0018.w		; E0 18 00
	and $08.b,X		; 35 08
	phk		; 4B
	tsb $0A.b		; 04 0A
	tsb $0E.b		; 04 0E
	tsb $07.b		; 04 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $3D.b		; 00 3D
	brk $4F.b		; 00 4F
	ora ($0F.b,X)		; 01 0F
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	asl $80E3.w,X		; 1E E3 80
	sbc $00.b,S		; E3 00
	sbc $00.b,S		; E3 00
	cmp $CD04.w		; CD 04 CD
	brk $8C.b		; 00 8C
	php		; 08
	brk $00.b		; 00 00
	and $9C20.w,Y		; 39 20 9C
	stz $9C9C.w		; 9C 9C 9C
	trb $321C.w		; 1C 1C 32
	rol $3E32.w,X		; 3E 32 3E
	adc ($7F.b,S),Y		; 73 7F
	sbc $FFC6FF.l,X		; FF FF C6 FF
	adc $5544.w		; 6D 44 55
	brk $7A.b		; 00 7A
	bpl 104.b		; 10 68
	bmi  53.b		; 30 35
	plp		; 28
	pea $4C48.w		; F4 48 4C
	brk $04.b		; 00 04
	brk $82.b		; 00 82
	sbc $80D782.l		; EF 82 D7 80
	plx		; FA
	bra  -8.b		; 80 F8
	cpy #$00FD.w		; C0 FD 00
	jsr ($4C00.w,X)		; FC 00 4C
	brk $04.b		; 00 04
	adc $325F22.l,X		; 7F 22 5F 32
	and $162B12.l,X		; 3F 12 2B 16
	and $0C3700.l,X		; 3F 00 37 0C
	adc $86F900.l,X		; 7F 00 F9 86
	lda ($B2.b)		; B2 B2
	lda ($B2.b)		; B2 B2
	dec $D6.b,X		; D6 D6
	dec $D6.b,X		; D6 D6
	cpy #$CCC0.w		; C0 C0 CC
	cpy $8080.w		; CC 80 80
	asl $86.b		; 06 86
	adc $26FDA2.l,X		; 7F A2 FD 26
	inc $6AA4.w,X		; FE A4 6A
	ldy $FE.b,X		; B4 FE
	brk $F6.b		; 00 F6
	tya		; 98
	adc $30CF80.l,X		; 7F 80 CF 30
	ldx $A6.b		; A6 A6
	rol $26.b		; 26 26
	lda $B5.b,X		; B5 B5
	lda $B5.b,X		; B5 B5
	ora ($01.b,X)		; 01 01
	sta $8099.w,Y		; 99 99 80
	bra  48.b		; 80 30
	bmi -36.b		; 30 DC
	bmi  -4.b		; 30 FC
	bmi  -4.b		; 30 FC
	bmi -24.b		; 30 E8
	bmi  -8.b		; 30 F8
	brk $EC.b		; 00 EC
	bmi  78.b		; 30 4E
	bmi 127.b		; 30 7F
	brk $3B.b		; 00 3B
	tsa		; 3B
	and ($33.b,S),Y		; 33 33
	and ($33.b,S),Y		; 33 33
	and [$37.b],Y		; 37 37
	ora [$07.b]		; 07 07
	and ($33.b,S),Y		; 33 33
	lda ($B1.b),Y		; B1 B1
	sty $84.b		; 84 84
	ror $04.b,X		; 76 04
	jmp ($6808.w)		; 6C 08 68
	brk $E8.b		; 00 E8
	bra -56.b		; 80 C8
	brk $19.b		; 00 19
	brk $06.b		; 00 06
	ora ($01.b,X)		; 01 01
	ora ($88.b,X)		; 01 88
	inc $FC90.w,X		; FE 90 FC
	bcc  -8.b		; 90 F8
	bpl  -8.b		; 10 F8
	bmi  -8.b		; 30 F8
	cpx #$F8F9.w		; E0 F9 F8
	sbc $08FFFE.l,X		; FF FE FF 08
	brk $1C.b		; 00 1C
	php		; 08
	ora $09.b,X		; 15 09
	and $6500.w,X		; 3D 00 65
	brk $47.b		; 00 47
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $021F03.l		; 0F 03 1F 02
	ora $023F02.l,X		; 1F 02 3F 02
	adc [$00.b]		; 67 00
	eor [$00.b]		; 47 00
	ora $00.b,S		; 03 00
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C1C1.w		; C0 C1 C1
	sta [$87.b]		; 87 87
	sbc $0C0FFF.l,X		; FF FF 0F 0C
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	tda		; 7B
	pha		; 48
	and $002707.l		; 2F 07 27 00
	and ($21.b)		; 32 21
	sta ($80.b),Y		; 91 80
	beq  -1.b		; F0 FF
	sed		; F8
	inc $FEFC.w,X		; FE FC FE
	sty $FF.b		; 84 FF
	cpy #$C0EF.w		; C0 EF C0
	sbc [$C0.b]		; E7 C0
	sbc ($60.b,S),Y		; F3 60
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C000.w		; E0 00 C0
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
	brk $20.b		; 00 20
	brk $31.b		; 00 31
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	ora $06.b		; 05 06
	ora $221E.w,Y		; 19 1E 22
	bit $302A.w,X		; 3C 2A 30
	cli		; 58
	rts		; 60

	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora $84.b,S		; 03 84
	ora [$F8.b]		; 07 F8
	ora $C03F60.l,X		; 1F 60 3F C0
	and $807F40.l,X		; 3F 40 7F 80
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	bcs -80.b		; B0 B0
	pla		; 68
	sed		; F8
	bit $FC.b		; 24 FC
	cmp ($2E.b)		; D2 2E
	sei		; 78
	tsb $69.b		; 04 69
	adc ($00.b,X)		; 61 00
	pea $6C90.w		; F4 90 6C
	bcs  72.b		; B0 48
	sed		; F8
	asl $FC.b		; 06 FC
	ora $FE.b,S		; 03 FE
	ora ($FC.b,X)		; 01 FC
	ora $99.b,S		; 03 99
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $1C.b		; 04 1C
	trb $1C14.w		; 1C 14 1C
	rti		; 40

	jmp $BCF66A.l		; 5C 6A F6 BC
	sep #$00		; E2 00
	cop $00.b		; 02 00
	rol $04.b,X		; 36 04
	ply		; 7A
	trb $1C63.w		; 1C 63 1C
	sbc $5C.b,S		; E3 5C
	lda $FE.b,S		; A3 FE
	ora ($FE.b,X)		; 01 FE
	ora ($58.b,X)		; 01 58
	eor $7FEE.w,Y		; 59 EE 7F
	jmp ($C17F.w)		; 6C 7F C1
	sbc $0CFEE1.l,X		; FF E1 FE 0C
	sbc $F99A.w,X		; FD 9A F9
	inc $F7.b,X		; F6 F7
	ldx $00.b		; A6 00
	bra   0.b		; 80 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	ora $1E00.w		; 0D 00 1E
	brk $1F.b		; 00 1F
	brk $3B.b		; 00 3B
	brk $1C.b		; 00 1C
	cpx $DFA9.w		; EC A9 DF
	sta ($BF.b,X)		; 81 BF
	trb $6B.b		; 14 6B
	trb $11E1.w		; 1C E1 11
	sbc $0AF639.l		; EF 39 F6 0A
	adc $031C.w,X		; 7D 1C 03
	sbc $40A900.l,X		; FF 00 A9 40
	eor $80.b,X		; 55 80
	lsr $5C00.w,X		; 5E 00 5C
	brk $0D.b		; 00 0D
	brk $87.b		; 00 87
	brk $60.b		; 00 60
	adc $68FFB9.l,X		; 7F B9 FF 68
	lda $00EF10.l,X		; BF 10 EF 00
	sbc $243FC0.l,X		; FF C0 3F 24
	stp		; DB
	ora $FB.b		; 05 FB
	bvs -128.b		; 70 80
	sed		; F8
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	brk $28.b		; 00 28
	brk $D0.b		; 00 D0
	brk $EC.b		; 00 EC
	brk $FD.b		; 00 FD
	brk $D4.b		; 00 D4
	sbc ($B4.b)		; F2 B4
	beq   4.b		; F0 04
	cpx $00.b		; E4 00
	cpy #$E058.w		; C0 58 E0
	ora ($D1.b,X)		; 01 D1
	ora ($C1.b,X)		; 01 C1
	ora ($03.b,S),Y		; 13 03
	asl $0C01.w		; 0E 01 0C
	ora $1C.b,S		; 03 1C
	ora $38.b,S		; 03 38
	ora [$18.b]		; 07 18
	ora [$31.b]		; 07 31
	asl $0E31.w		; 0E 31 0E
	ora ($EC.b,S),Y		; 13 EC
	rts		; 60

	cpx #$60A0.w		; E0 A0 60
	.db $82, $42, $F7		; 82 42 F7
	adc [$89.b],Y		; 77 89
	adc $E4659A.l,X		; 7F 9A 65 E4
	ora $08.b,S		; 03 08
	ora [$E0.b]		; 07 E0
	asl $E0.b		; 06 E0
	ora [$C2.b],Y		; 17 C2
	and $08F7.w,X		; 3D F7 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
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
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra  96.b		; 80 60
	brk $E0.b		; 00 E0
	bra  64.b		; 80 40
	cmp $39B0.w		; CD B0 39
	cpy #$00A9.w		; C0 A9 00
	lda ($B1.b),Y		; B1 B1
	sbc $ECFF.w,Y		; F9 FF EC
	sbc $EC6F74.l,X		; FF 74 6F EC
	cmp $FF00FF.l		; CF FF 00 FF
	brk $FF.b		; 00 FF
	brk $CE.b		; 00 CE
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $70.b		; 00 70
	bra -16.b		; 80 F0
	brk $18.b		; 00 18
	cld		; D8
	lda ($1E.b)		; B2 1E
	and $5415.w		; 2D 15 54
	eor $63.b		; 45 63
	ror $CC.b		; 66 CC
	sbc $93FD1E.l,X		; FF 1E FD 93
	inc $27D8.w,X		; FE D8 27
	inc $FD01.w,X		; FE 01 FD
	cop $BD.b		; 02 BD
	cop $9F.b		; 02 9F
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	adc ($98.b),Y		; 71 98
	cmp #$8889.w		; C9 89 88
	stp		; DB
	clc		; 18
	adc #$8978.w		; 69 78 89
	jmp ($FFE1.w,X)		; 7C E1 FF
	cop $7F.b		; 02 7F
	adc $00F780.l,X		; 7F 80 F7 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b]		; E7 00
	sta [$00.b]		; 87 00
	sta $00.b,S		; 83 00
	ora ($00.b,X)		; 01 00
	sta ($00.b,X)		; 81 00
	sta [$97.b],Y		; 97 97
	ora $499F.w,X		; 1D 9F 49
	cmp $99DFC2.l,X		; DF C2 DF 99
	ora $50BFB3.l,X		; 1F B3 BF 50
	bvs  17.b		; 70 11
	plx		; FA
	dey		; 88
	rts		; 60

	bra  96.b		; 80 60
	cpy #$C020.w		; C0 20 C0
	jsr $6080.w		; 20 80 60
	bra  64.b		; 80 40
	tsb $0B83.w		; 0C 83 0B
	tsb $08.b		; 04 08
	ora $263E25.l		; 0F 25 3E 26
	sec		; 38
	bpl  30.b		; 10 1E
	tas		; 1B
	trb $1F1C.w		; 1C 1C 1F
	asl $07.b		; 06 07
	ora $03.b,S		; 03 03
	ora $403FF0.l		; 0F F0 3F 40
	and $601FC0.l,X		; 3F C0 1F 60
	ora $201F60.l,X		; 1F 60 1F 20
	ora [$38.b]		; 07 38
	ora $04.b,S		; 03 04
	jmp.w [$B910]		; DC 10 B9
	and $1F0E.w,Y		; 39 0E 1F
	inx		; E8
	sbc $207FC9.l,X		; FF C9 7F 20
	lda $28BF40.l,X		; BF 40 BF 28
	cmp $C600EF.l		; CF EF 00 C6
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	jsr $2020.w		; 20 20 20
	phk		; 4B
	rtl		; 6B

	dec $F8FF.w,X		; DE FF F8
	cmp $D44DA2.l		; CF A2 4D D4
	eor #$0114.w		; 49 14 01
	jsr $2053.w		; 20 53 20
	stp		; DB
	rtl		; 6B

	sty $FF.b,X		; 94 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $BE.b		; 00 BE
	brk $FE.b		; 00 FE
	brk $36.b		; 00 36
	lsr $A7.b		; 46 A7
	cmp [$4D.b]		; C7 4D
	sta $48EF0C.l		; 8F 0C EF 48
	sbc $60FF60.l,X		; FF 60 FF 60
	cmp $799E66.l,X		; DF 66 9E 79
	bra  -8.b		; 80 F8
	brk $F0.b		; 00 F0
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $EE.b		; 00 EE
	ora ($EB.b,X)		; 01 EB
	sbc $03.b,S		; E3 03
	xce		; FB
	cop $FF.b		; 02 FF
	bmi  -3.b		; 30 FD
	adc ($FC.b),Y		; 71 FC
	eor ($EE.b)		; 52 EE
	and ($CF.b,S),Y		; 33 CF
	.db $82, $FF, $1B		; 82 FF 1B
	tsb $03.b		; 04 03
	tsb $3B.b		; 04 3B
	brk $7B.b		; 00 7B
	brk $FB.b		; 00 FB
	brk $F9.b		; 00 F9
	brk $30.b		; 00 30
	brk $C0.b		; 00 C0
	brk $15.b		; 00 15
	sbc $64.b,S		; E3 64
	sta $A7.b,S		; 83 A7
	brk $05.b		; 00 05
	brk $49.b		; 00 49
	rti		; 40

	rep #$C1		; C2 C1
	pha		; 48
	wai		; CB
	cmp $FFDF.w,Y		; D9 DF FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $3F.b		; 00 3F
	brk $37.b		; 00 37
	brk $27.b		; 00 27
	brk $FE.b		; 00 FE
	inc $FCBC.w,X		; FE BC FC
	ora $810C.w		; 0D 0C 81
	bra -56.b		; 80 C8
	iny		; C8
	pha		; 48
	iny		; C8
	bit $EC.b		; 24 EC
	sta $2BF1.w		; 8D F1 2B
	brk $29.b		; 00 29
	cop $09.b		; 02 09
	sbc ($81.b)		; F2 81
	ror $37C8.w,X		; 7E C8 37
	iny		; C8
	and [$EC.b],Y		; 37 EC
	ora ($FD.b,S),Y		; 13 FD
	cop $02.b		; 02 02
	adc $54BF48.l,X		; 7F 48 BF 54
	lda $13B728.l		; AF 28 B7 13
	stz $3E39.w		; 9C 39 3E
	.db $82, $87, $00		; 82 87 00
	bra -103.b		; 80 99
	brk $51.b		; 00 51
	brk $59.b		; 00 59
	brk $4D.b		; 00 4D
	brk $E3.b		; 00 E3
	brk $01.b		; 00 01
	cpy #$7882.w		; C0 82 78
	bra 127.b		; 80 7F
	bpl -18.b		; 10 EE
	jsr $0ED8.w		; 20 D8 0E
	inc $AE49.w,X		; FE 49 AE
	stp		; DB
	bit $9C1B.w,X		; 3C 1B 9C
	rol $2A31.w		; 2E 31 2A
	and ($F2.b),Y		; 31 F2
	ora ($E8.b,X)		; 01 E8
	ora [$DE.b]		; 07 DE
	ora ($CF.b,X)		; 01 CF
	bpl -33.b		; 10 DF
	brk $9F.b		; 00 9F
	rts		; 60

	and $C03FC0.l,X		; 3F C0 3F C0
	ora $03.b,S		; 03 03
	dec $C7.b		; C6 C7
	bit #$16CE.w		; 89 CE 16
	cld		; D8
	eor $49D0.w,X		; 5D D0 49
	bne -128.b		; D0 80
	bra  34.b		; 80 22
	jsl $C7FC03.l		; 22 03 FC C7
	sec		; 38
	cmp $20DF30.l		; CF 30 DF 20
	cmp $20DF20.l,X		; DF 20 DF 20
	sta $C01D60.l,X		; 9F 60 1D C0
	and $D323.w,X		; 3D 23 D3
	cmp ($84.b,X)		; C1 84
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
	inc $42.b,X		; F6 42
	ror $2C24.w		; 6E 24 2C
	rts		; 60

	rts		; 60

	bcs 112.b		; B0 70
	cmp $003F00.l,X		; DF 00 3F 00
	rol $0E01.w,X		; 3E 01 0E
	ora ($9E.b,X)		; 01 9E
	ora ($FC.b,X)		; 01 FC
	ora $60.b,S		; 03 60
	sta $000CF0.l,X		; 9F F0 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dex		; CA
	sty $2038.w		; 8C 38 20
	tsb $04.b		; 04 04
	ora [$07.b]		; 07 07
	cop $03.b		; 02 03
	asl $130F.w		; 0E 0F 13
	asl $1F18.w,X		; 1E 18 1F
	sbc ($01.b)		; F2 01
	sec		; 38
	cmp [$04.b]		; C7 04
	tda		; 7B
	ora [$38.b]		; 07 38
	ora $FC.b,S		; 03 FC
	ora $601F70.l		; 0F 70 1F 60
	ora $BEA220.l,X		; 1F 20 A2 BE
	and $023F.w,Y		; 39 3F 02
	cop $88.b		; 02 88
	dey		; 88
	sbc $FD.b		; E5 FD
	rol $26F3.w		; 2E F3 26
	cmp $508D.w,Y		; D9 8D 50
	sta ($40.b,X)		; 81 40
	jsr $00C0.w		; 20 C0 00
	sbc $7788.w,X		; FD 88 77
	sbc $FF02.w,X		; FD 02 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $22.b		; 00 22
	adc $29.b,X		; 75 29
	ora [$41.b],Y		; 17 41
	adc $001B00.l,X		; 7F 00 1B 00
	ora $8D84.w,Y		; 19 84 8D
	cpy #$90C0.w		; C0 C0 90
	bne -117.b		; D0 8B
	brk $EB.b		; 00 EB
	brk $ED.b		; 00 ED
	brk $0A.b		; 00 0A
	cpx $10.b		; E4 10
	inc $85.b		; E6 85
	adc ($C0.b)		; 72 C0
	and $012FD0.l,X		; 3F D0 2F 01
	beq  33.b		; F0 21
	beq   2.b		; F0 02
	sbc ($83.b)		; F2 83
	sbc ($61.b,S),Y		; F3 61
	sbc ($00.b),Y		; F1 00
	cpx #$C404.w		; E0 04 C4
	php		; 08
	php		; 08
	sta ($0C.b,S),Y		; 93 0C
	adc [$08.b]		; 67 08
	lda ($0C.b,X)		; A1 0C
	cpy #$E00C.w		; C0 0C E0
	asl $1F40.w		; 0E 40 1F
	sty $3B.b		; 84 3B
	php		; 08
	sbc [$03.b],Y		; F7 03
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	sbc $B4F30A.l		; EF 0A F3 B4
	iny		; C8
	cmp $2CE2.w,X		; DD E2 2C
	and ($0D.b,S),Y		; 33 0D
	ora ($0B.b,S),Y		; 13 0B
	ora [$02.b]		; 07 02
	ora [$F0.b]		; 07 F0
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $3D.b		; 00 3D
	brk $1D.b		; 00 1D
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $DC.b		; 00 DC
	bit $3C44.w,X		; 3C 44 3C
	eor $2D.b,X		; 55 2D
	lda [$9F.b]		; A7 9F
	stx $4A9F.w		; 8E 9F 4A
	cmp $9C21.w,X		; DD 21 9C
	ora $F9.b		; 05 F9
	jsr ($FC03.w,X)		; FC 03 FC
	ora $FD.b,S		; 03 FD
	cop $7F.b		; 02 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	bit $FCD8.w,X		; 3C D8 FC
	clv		; B8
	jsr ($98C8.w,X)		; FC C8 98
	tay		; A8
	trb $4AAA.w		; 1C AA 4A
	stx $DE.b		; 86 DE
	ldx $CE.b,Y		; B6 CE
	bit $FCC3.w,X		; 3C C3 FC
	ora $FC.b,S		; 03 FC
	ora $F8.b,S		; 03 F8
	ora [$FC.b]		; 07 FC
	cop $BA.b		; 02 BA
	ora $3E.b		; 05 3E
	ora ($3E.b,X)		; 01 3E
	ora ($00.b,X)		; 01 00
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
	cpy #$F000.w		; C0 00 F0
	bra 112.b		; 80 70
	cpy #$60C0.w		; C0 C0 60
	cpx #$E000.w		; E0 00 E0
	jsr $40E0.w		; 20 E0 40
	cpy #$E060.w		; C0 60 E0
	rti		; 40

	cpy #$C040.w		; C0 40 C0
	cpy #$E030.w		; C0 30 E0
	clc		; 18
	cpx #$E010.w		; E0 10 E0
	bpl -64.b		; 10 C0
	jsr $10E0.w		; 20 E0 10
	cpy #$C020.w		; C0 20 C0
	jsr $C0C0.w		; 20 C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	cpx #$B0E0.w		; E0 E0 B0
	beq  96.b		; F0 60
	cpx #$38C0.w		; E0 C0 38
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	rts		; 60

	stz $B040.w		; 9C 40 B0
	cpx #$F010.w		; E0 10 F0
	brk $E0.b		; 00 E0
	brk $90.b		; 00 90
	bvs  96.b		; 70 60
	bcc  96.b		; 90 60
	bpl -48.b		; 10 D0
	bne -80.b		; D0 B0
	bcc -64.b		; 90 C0
	ldy #$C0C0.w		; A0 C0 C0
	brk $00.b		; 00 00
	beq   8.b		; F0 08
	beq  12.b		; F0 0C
	beq  14.b		; F0 0E
	bmi  12.b		; 30 0C
	bvs  12.b		; 70 0C
	rts		; 60

	clc		; 18
	rti		; 40

	bmi -128.b		; 30 80
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$8000.w		; E0 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	tsb $0F.b		; 04 0F
	tsb $0C1F.w		; 0C 1F 0C
	ora $001F04.l,X		; 1F 04 1F 00
	ora $070003.l		; 0F 03 00 07
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $9F02.w,X		; 9D 02 9F
	cop $0F.b		; 02 0F
	cop $0F.b		; 02 0F
	ora $0F.b,S		; 03 0F
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	tsb $0E02.w		; 0C 02 0E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$F0C0.w		; C0 C0 F0
	bvs  -8.b		; 70 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$06.b]		; 07 06
	ora [$05.b]		; 07 05
	asl $0D.b		; 06 0D
	asl $1E19.w		; 0E 19 1E
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora [$38.b]		; 07 38
	ora [$08.b]		; 07 08
	ora [$18.b]		; 07 18
	ora $201F30.l		; 0F 30 1F 20
	asl $18.b,X		; 16 18
	ora [$1B.b],Y		; 17 1B
	and $181031.l,X		; 3F 31 10 18
	ora $09.b		; 05 09
	cop $0C.b		; 02 0C
	cop $04.b		; 02 04
	brk $01.b		; 00 01
	ora $601C20.l,X		; 1F 20 1C 60
	rol $1F40.w,X		; 3E 40 1F
	rts		; 60

	asl $0F30.w		; 0E 30 0F
	bpl   7.b		; 10 07
	clc		; 18
	ora ($0E.b,X)		; 01 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	asl $19.b		; 06 19
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	ora $04.b,S		; 03 04
	ora ($0E.b,X)		; 01 0E
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $07.b		; 00 07
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
	brk $10.b		; 00 10
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($CC.b)		; 32 CC
	and $6B91.w		; 2D 91 6B
	ora [$FD.b],Y		; 17 FD
	ora [$F8.b]		; 07 F8
	ora $022FD0.l		; 0F D0 2F 02
	cmp ($08.b,S),Y		; D3 08
	cld		; D8
	and $007E00.l,X		; 3F 00 7E 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $DC.b		; 00 DC
	brk $80.b		; 00 80
	tsb $0689.w		; 0C 89 06
	bcs  -4.b		; B0 FC
	bcc  -4.b		; 90 FC
	inc $EE.b,X		; F6 EE
	tay		; A8
	tya		; 98
	iny		; C8
	tya		; 98
	bne -80.b		; D0 B0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	tsb $0C03.w		; 0C 03 0C
	ora $1E.b,S		; 03 1E
	brk $78.b		; 00 78
	asl $78.b		; 06 78
	tsb $70.b		; 04 70
	tsb $10E0.w		; 0C E0 10
	brk $C0.b		; 00 C0
	rts		; 60

	cpx #$8000.w		; E0 00 80
	brk $C1.b		; 00 C1
	brk $CB.b		; 00 CB
	jsl $C647E2.l		; 22 E2 47 C6
	and [$EE.b]		; 27 EE
	and $6E.b,S		; 23 6E
	sbc ($1E.b,X)		; E1 1E
	sbc $1C.b,S		; E3 1C
	and [$18.b]		; 27 18
	and $190610.l		; 2F 10 06 19
	rol $18.b		; 26 18
	asl $9E00.w,X		; 1E 00 9E
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	clc		; 18
	rti		; 40

	jsr $6080.w		; 20 80 60
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $707B30.l,X		; 1F 30 7B 70
	cmp $75E0.w,Y		; D9 E0 75
	mvn $C4,$C5		; 54 C5 C4
	cmp $DECBDE.l		; CF DE CB DE
	ora $FC.b,S		; 03 FC
	and $807FC0.l,X		; 3F C0 7F 80
	sbc $806B00.l,X		; FF 00 6B 80
	xce		; FB
	brk $E1.b		; 00 E1
	brk $E1.b		; 00 E1
	brk $00.b		; 00 00
	cpy #$60A0.w		; C0 A0 60
	bra  64.b		; 80 40
	ldy #$3060.w		; A0 60 30
	bne  64.b		; D0 40
	ldy #$3050.w		; A0 50 30
	cpy #$C020.w		; C0 20 C0
	bit $1FE0.w,X		; 3C E0 1F
	cpy #$E03F.w		; C0 3F E0
	ora $E00EF0.l,X		; 1F F0 0E E0
	trb $08F0.w		; 1C F0 08
	cpx #$B81C.w		; E0 1C B8
	lda $F070.w,Y		; B9 70 F0
	sed		; F8
	bit $9E61.w,X		; 3C 61 9E
	adc [$C8.b],Y		; 77 C8
	cmp [$C8.b],Y		; D7 C8
	lda $3A91.w		; AD 91 3A
	ora $19.b,S		; 03 19
	lsr $30.b		; 46 30
	ora $7F03FC.l		; 0F FC 03 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	cpy #$E00C.w		; C0 0C E0
	brk $64.b		; 00 64
	trb $BE9A.w		; 1C 9A BE
	sed		; F8
	bit $F3.b,X		; 34 F3
	tsb $F2.b		; 04 F2
	sec		; 38
	cpx $F8.b		; E4 F8
	ora [$FC.b]		; 07 FC
	ora $FC.b,S		; 03 FC
	cop $66.b		; 02 66
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	asl $DF00.w		; 0E 00 DF
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	cpy #$803F.w		; C0 3F 80
	adc $8F58A7.l,X		; 7F A7 58 8F
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	rti		; 40

	clv		; B8
	cpy #$C038.w		; C0 38 C0
	bit $3000.w,X		; 3C 00 30
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	ora ($12.b),Y		; 11 12
	ora $1E.b,X		; 15 1E
	ora ($0E.b,X)		; 01 0E
	ora #$300E.w		; 09 0E 30
	ora $030E01.l		; 0F 01 0E 03
	trb $7C03.w		; 1C 03 7C
	ora ($2C.b,S),Y		; 13 2C
	ora $700F20.l,X		; 1F 20 0F 70
	ora $383810.l		; 0F 10 38 38
	eor $0579.w,Y		; 59 79 05
	and $4630.w,X		; 3D 30 46
	brk $CB.b		; 00 CB
	sep #$0E		; E2 0E
	asl $06.b		; 06 06
	sty $1C.b		; 84 1C
	sec		; 38
	cmp [$79.b]		; C7 79
	stx $3D.b		; 86 3D
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	sta ($F7.b,X)		; 81 F7
	brk $F1.b		; 00 F1
	brk $F9.b		; 00 F9
	brk $E3.b		; 00 E3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $000300.l		; 0F 00 03 00
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	brk $01.b		; 00 01
	asl $1F00.w,X		; 1E 00 1F
	brk $3F.b		; 00 3F
	ora $000070.l		; 0F 70 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $C4.b		; C4 C4
	tsb $0BF4.w		; 0C F4 0B
	sbc ($39.b,S),Y		; F3 39
	cmp ($0F.b,X)		; C1 0F
	cmp [$00.b]		; C7 00
	ora $00FF00.l,X		; 1F 00 FF 00
	sbc $FF3BC4.l,X		; FF C4 3B FF
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $91.b		; 00 91
	adc $264F47.l,X		; 7F 47 4F 26
	ora [$08.b],Y		; 17 08
	ora $020780.l		; 0F 80 07 02
	sta ($02.b,X)		; 81 02
	eor $50.b,S		; 43 50
	and ($FF.b),Y		; 31 FF
	brk $39.b		; 00 39
	bra  40.b		; 80 28
	cpy #$F000.w		; C0 00 F0
	bra 120.b		; 80 78
	.db $82, $7C, $E0		; 82 7C E0
	trb $0EE0.w		; 1C E0 0E
	jsr $4836.w		; 20 36 48
	eor [$E4.b],Y		; 57 E4
	xba		; EB
	pea $F25F.w		; F4 5F F2
	lda $FBD6.w,X		; BD D6 FB
	eor ($FF.b)		; 52 FF
	tsb $FF.b		; 04 FF
	and $58C0.w,Y		; 39 C0 58
	ldy #$1068.w		; A0 68 10
	jsr ($5C00.w,X)		; FC 00 5C
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora [$07.b]		; 07 07
	asl $02.b		; 06 02
	ora $09.b,S		; 03 09
	asl $0E01.w		; 0E 01 0E
	ora [$08.b]		; 07 08
	cop $18.b		; 02 18
	ora $1C.b,S		; 03 1C
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora $0C.b,S		; 03 0C
	ora $100F10.l		; 0F 10 0F 10
	ora $601F30.l		; 0F 30 1F 60
	sta ($86.b,X)		; 81 86
	sta [$46.b]		; 87 46
	stx $64.b		; 86 64
	cmp $39.b,S		; C3 39
	eor $20.b,S		; 43 20
	adc ($48.b,X)		; 61 48
	pla		; 68
	inc $3C.b		; E6 3C
	beq -122.b		; F0 86
	cli		; 58
	dec $38.b		; C6 38
	cpx $19.b		; E4 19
	sbc $FD00.w,X		; FD 00 FD
	brk $BE.b		; 00 BE
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $13.b		; 00 13
	lsr $4E93.w		; 4E 93 4E
	phd		; 0B
	asl $0A.b		; 06 0A
	ora [$0B.b]		; 07 0B
	ora [$09.b]		; 07 09
	ora [$0A.b]		; 07 0A
	ora $0F.b		; 05 0F
	brk $AE.b		; 00 AE
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -16.b		; 80 F0
	cpy #$F078.w		; C0 78 F0
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	ora $C67E53.l,X		; 1F 53 7E C6
	inc $FC87.w,X		; FE 87 FC
	pha		; 48
	xce		; FB
	ora $F3.b,X		; 15 F3
	ora $50FB.w,X		; 1D FB 50
	cpy #$00E0.w		; C0 E0 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000700.l		; 0F 00 07 00
	bmi  15.b		; 30 0F
	cli		; 58
	sec		; 38
	bne  48.b		; D0 30
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	rts		; 60

	cpx #$8080.w		; E0 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	sed		; F8
	tsb $F0.b		; 04 F0
	tsb $7C80.w		; 0C 80 7C
	bra 124.b		; 80 7C
	cpx #$8010.w		; E0 10 80
	bvs -128.b		; 70 80
	rti		; 40

	brk $80.b		; 00 80
	bvs  15.b		; 70 0F
	rol $1D0F.w,X		; 3E 0F 1D
	ora $088F18.l		; 0F 18 8F 08
	wai		; CB
	brk $E0.b		; 00 E0
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   4.b		; F0 04
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	ora ($FE.b,X)		; 01 FE
	sec		; 38
	cpx #$EC60.w		; E0 60 EC
	pha		; 48
	cpy #$E070.w		; C0 70 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	clc		; 18
	tsb $1C.b		; 04 1C
	brk $38.b		; 00 38
	ora [$10.b]		; 07 10
	asl $7E00.w		; 0E 00 7E
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	bra 124.b		; 80 7C
	ora $800380.l		; 0F 80 03 80
	rol $56.b,X		; 36 56
	rol $0E1E.w,X		; 3E 1E 0E
	adc $E80A48.l		; 6F 48 0A E8
	plp		; 28
	rts		; 60

	jsr $609F.w		; 20 9F 60
	sta $806960.l,X		; 9F 60 69 80
	and ($C0.b,X)		; 21 C0
	adc ($80.b),Y		; 71 80
	ror $81.b,X		; 76 81
	bne   7.b		; D0 07
	rti		; 40

	sta $000000.l,X		; 9F 00 00 00
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00C0.w		; C0 C0 00
	cpy #$F800.w		; C0 00 F8
	cpy #$0038.w		; C0 38 00
	sed		; F8
	bra 112.b		; 80 70
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	cpy #$C03E.w		; C0 3E C0
	rol $0700.w,X		; 3E 00 07
	tsb $07.b		; 04 07
	cop $03.b		; 02 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora $1C.b,S		; 03 1C
	ora $04.b,S		; 03 04
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $9C.b		; C5 9C
	eor [$CF.b]		; 47 CF
	rti		; 40

	sta $C94FA0.l		; 8F A0 4F C9
	cmp $19CFC9.l		; CF C9 CF 19
	ora $631F19.l,X		; 1F 19 1F 63
	brk $B0.b		; 00 B0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	jsr $2010.w		; 20 10 20
	asl $05.b		; 06 05
	cop $04.b		; 02 04
	tsb $07.b		; 04 07
	ora $06.b		; 05 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$38.b]		; 07 38
	ora [$38.b]		; 07 38
	asl $08.b		; 06 08
	ora [$08.b]		; 07 08
	ora $0C.b,S		; 03 0C
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	and $28CF.w		; 2D CF 28
	eor $1ACF10.l		; 4F 10 CF 1A
	adc $82.b,S		; 63 82
	and $7C9F48.l,X		; 3F 48 9F 7C
	sta $10.b,S		; 83 10
	.db $62, $F0, $00		; 62 F0 00
	beq   0.b		; F0 00
	bmi   0.b		; 30 00
	stz $C000.w		; 9C 00 C0
	brk $E0.b		; 00 E0
	brk $FC.b		; 00 FC
	brk $72.b		; 00 72
	sta $80F8.w		; 8D F8 80
	sty $8C.b		; 84 8C
	ply		; 7A
	cpx $86.b		; E4 86
	plx		; FA
	asl $16F8.w		; 0E F8 16
	beq  50.b		; F0 32
	bmi   6.b		; 30 06
	brk $78.b		; 00 78
	ora [$7C.b]		; 07 7C
	ora $1E.b,S		; 03 1E
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora ($0E.b,X)		; 01 0E
	ora ($02.b,X)		; 01 02
	cmp $F906.w		; CD 06 F9
	and $080CD0.l		; 2F D0 0C 08
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0F0B1F.l,X		; 1F 1F 0B 0F
	ora $3C3C1F.l,X		; 1F 1F 3C 3C
	bit $0800.w,X		; 3C 00 08
	sbc ($00.b,S),Y		; F3 00
	sbc $1FF807.l,X		; FF 07 F8 1F
	cpx #$F00F.w		; E0 0F F0
	ora $C33CE0.l,X		; 1F E0 3C C3
	and #$0D33.w		; 29 33 0D
	ora ($05.b),Y		; 11 05
	php		; 08
	brk $0F.b		; 00 0F
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1E40.w,X		; 3C 40 1E
	jsr $300F.w		; 20 0F 30
	ora $1D0210.l		; 0F 10 02 1D
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $DEF0.w,X		; 9E F0 DE
	beq -58.b		; F0 C6
	jmp ($3CE4.w,X)		; 7C E4 3C
	plp		; 28
	bpl  12.b		; 10 0C
	tsb $03.b		; 04 03
	ora $00.b,S		; 03 00
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $82.b		; 00 82
	ora ($C0.b,X)		; 01 C0
	ora $28.b,S		; 03 28
	cmp [$0C.b]		; C7 0C
	sbc ($03.b,S),Y		; F3 03
	jmp ($3F00.w,X)		; 7C 00 3F
	beq  12.b		; F0 0C
	lda ($DF.b,X)		; A1 DF
	stx $A9.b,Y		; 96 A9
	rol $BF41.w,X		; 3E 41 BF
	mvp $40,$BF		; 44 BF 40
	sbc $807F20.l,X		; FF 20 7F 80
	trb $FF03.w		; 1C 03 FF
	brk $A9.b		; 00 A9
	rti		; 40

	eor $80.b,X		; 55 80
	phy		; 5A
	brk $58.b		; 00 58
	brk $0D.b		; 00 0D
	brk $A7.b		; 00 A7
	brk $78.b		; 00 78
	bvs  28.b		; 70 1C
	sed		; F8
	asl $44F8.w		; 0E F8 44
	clv		; B8
	pei ($28.b)		; D4 28
	cpx $FE10.w		; EC 10 FE
	brk $FE.b		; 00 FE
	ora ($77.b,X)		; 01 77
	bra  -5.b		; 80 FB
	brk $F8.b		; 00 F8
	ora ($B8.b,X)		; 01 B8
	ora $28.b,S		; 03 28
	ora $D0.b,S		; 03 D0
	ora $EC.b,S		; 03 EC
	ora ($FD.b,X)		; 01 FD
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	asl $0403.w		; 0E 03 04
	ora ($0E.b,X)		; 01 0E
	ora $0C.b,S		; 03 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	iny		; C8
	rol $00.b,X		; 36 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	beq -96.b		; F0 A0
	lsr $E0.b,X		; 56 E0
	ora $0001FE.l,X		; 1F FE 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $4C.b		; 00 4C
	brk $7C.b		; 00 7C
	clc		; 18
	inc $00.b		; E6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$01.b],Y		; 17 01
	rol $7C7C.w,X		; 3E 7C 7C
	inc $F7C6.w,X		; FE C6 F7
	tyx		; BB
	cmp [$78.b]		; C7 78
	sta $E89FF8.l		; 8F F8 9F E8
	sbc $F800.w,Y		; F9 00 F8
	cpy #$837C.w		; C0 7C 83
	dec $01.b		; C6 01
	tyx		; BB
	brk $78.b		; 00 78
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $37.b		; 00 37
	brk $C7.b		; 00 C7
	brk $1B.b		; 00 1B
	ora $3F.b,X		; 15 3F
	jsl $05202D.l		; 22 2D 20 05
	ora $8F8E.w,Y		; 19 8E 8F
	bra -125.b		; 80 83
	bra -63.b		; 80 C1
	rts		; 60

	rts		; 60

	ora $C03FE0.l,X		; 1F E0 3F C0
	and $E01EC0.l,X		; 3F C0 1E E0
	bra 112.b		; 80 70
	bra 124.b		; 80 7C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	sbc ($1E.b,X)		; E1 1E
	asl $1F.b,X		; 16 1F
	tsb $0F.b		; 04 0F
	ora $0D06.w		; 0D 06 0D
	asl $1D.b		; 06 1D
	asl $0E1D.w		; 0E 1D 0E
	ora $0E.b,X		; 15 0E
	ora $001700.l		; 0F 00 17 00
	ora [$10.b]		; 07 10
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	stx $39.b		; 86 39
	dec $C63D.w		; CE 3D C6
	ora $0F02.w,X		; 1D 02 0F
	brk $03.b		; 00 03
	brk $C0.b		; 00 C0
	cpy #$ED21.w		; C0 21 ED
	bit #$D100.w		; 89 00 D1
	brk $D9.b		; 00 D9
	brk $0D.b		; 00 0D
	cpx #$F003.w		; E0 03 F0
	ora ($FC.b,X)		; 01 FC
	cpy #$ED3F.w		; C0 3F ED
	ora ($FE.b)		; 12 FE
	brk $FA.b		; 00 FA
	phd		; 0B
	inc $1B.b,X		; F6 1B
	dec $0B.b		; C6 0B
	stx $1817.w		; 8E 17 18
	ora $030E0C.l		; 0F 0C 0E 03
	ora [$F3.b],Y		; 17 F3
	brk $E8.b		; 00 E8
	tsb $DC.b		; 04 DC
	brk $CC.b		; 00 CC
	bmi -104.b		; 30 98
	rts		; 60

	bpl -32.b		; 10 E0
	ora ($F0.b,X)		; 01 F0
	clc		; 18
	cpx #$0402.w		; E0 02 04
	cop $0C.b		; 02 0C
	ora $0F01.w		; 0D 01 0F
	ora ($1D.b,S),Y		; 13 1D
	cop $19.b		; 02 19
	ora ($07.b)		; 12 07
	asl $8683.w		; 0E 83 86
	ora [$18.b]		; 07 18
	ora $300E30.l		; 0F 30 0E 30
	trb $1C20.w		; 1C 20 1C
	rts		; 60

	trb $0820.w		; 1C 20 08
	bcc -124.b		; 90 84
	cli		; 58
	dec A		; 3A
	ora $06.b		; 05 06
	sta ($0E.b,X)		; 81 0E
	sed		; F8
	inc $911E.w		; EE 1E 91
	cpx $FC81.w		; EC 81 FC
	and $88F8D0.l		; 2F D0 F8 88
	sbc $007F00.l,X		; FF 00 7F 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	sep #$00		; E2 00
	sbc ($00.b)		; F2 00
	beq   0.b		; F0 00
	inx		; E8
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	trb $3008.w		; 1C 08 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1C001F.l,X		; 1F 1F 00 1C
	bpl  34.b		; 10 22
	asl A		; 0A
	and $0C.b		; 25 0C
	and [$1D.b]		; 27 1D
	rol $19.b		; 26 19
	inc $50.b		; E6 50
	and $001C22.l		; 2F 22 1C 00
	brk $1C.b		; 00 1C
	trb $1E1A.w		; 1C 1A 1E
	bpl  30.b		; 10 1E
	ora $1F.b,X		; 15 1F
	ora [$19.b],Y		; 17 19
	jmp.w [$E3D0]		; DC D0 E3
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	tsb $02.b		; 04 02
	ora #$8903.w		; 09 03 89
	ora $F60991.l		; 0F 91 09 F6
	bpl  15.b		; 10 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $07.b		; 06 07
	tsb $07.b		; 04 07
	ora $0F0F.w		; 0D 0F 0F
	ora #$F1F3.w		; 09 F3 F1
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $20D2.w		; 20 D2 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $09.b,X		; 74 09
	bit $03.b,X		; 34 03
	ora $1C09.w		; 0D 09 1C
	cpx $2C00.w		; EC 00 2C
	bit $2C2C.w		; 2C 2C 2C
	bit $282C.w		; 2C 2C 28
	plp		; 28
	php		; 08
	ora #$0300.w		; 09 00 03
	cop $01.b		; 02 01
	ora $180300.l,X		; 1F 00 03 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	cop $0E.b		; 02 0E
	inc $FD07.w,X		; FE 07 FD
	lda $C07F.w,Y		; B9 7F C0
	sbc $0F18.w,X		; FD 18 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($81.b,X)		; 01 81
	tsx		; BA
	cpy #$C000.w		; C0 00 C0
	inc A		; 1A
.ACCU 16
.INDEX 16
	rep #$F0		; C2 F0
	ora [$90.b]		; 07 90
	adc $00.b		; 65 00
	sbc #$3120.w		; E9 20 31
	brk $E1.b		; 00 E1
	sbc ($02.b,X)		; E1 02
	sep #$C5		; E2 C5
	rts		; 60

	cmp [$F8.b],Y		; D7 F8
	brk $F8.b		; 00 F8
	rts		; 60

	beq -32.b		; F0 E0
	cpy #$8000.w		; C0 00 80
	bra   1.b		; 80 01
	ora ($C2.b,X)		; 01 C2
	cop $C0.b		; 02 C0
	brk $62.b		; 00 62
	sta ($E2.b),Y		; 91 E2
	ora ($C0.b),Y		; 11 C0
	and ($D4.b,S),Y		; 33 D4
	jsl $306688.l		; 22 88 66 30
	cpy $B840.w		; CC 40 B8
	brk $E0.b		; 00 E0
	inc $EEEE.w		; EE EE EE
	inc $EEEE.w		; EE EE EE
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$B8B8]		; DC B8 B8
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	ldx $CDA0.w,Y		; BE A0 CD
	lsr $77.b,X		; 56 77
	tyx		; BB
	inc $15.b,X		; F6 15
	and #$1E18.w		; 29 18 1E
	asl A		; 0A
	ora $C02000.l		; 0F 00 20 C0
	ldy #$5640.w		; A0 40 56
	jsr $00BB.w		; 20 BB 00
	ora $08.b,X		; 15 08
	clc		; 18
	asl $0A.b		; 06 0A
	ora ($00.b,X)		; 01 00
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	tsb $F6.b		; 04 F6
	tsb $CC.b		; 04 CC
	iny		; C8
	jsr ($D8E0.w,X)		; FC E0 D8
	bmi -16.b		; 30 F0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	php		; 08
	iny		; C8
	bmi -32.b		; 30 E0
	brk $30.b		; 00 30
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	asl $000F.w		; 0E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F.b		; 06 1F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $0A7F30.l		; 4F 30 7F 0A
	ora $091D0B.l,X		; 1F 0B 1D 09
	ora $09.b,X		; 15 09
	tsb $0300.w		; 0C 00 03
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $0A.b		; 00 0A
	brk $0B.b		; 00 0B
	brk $09.b		; 00 09
	cop $09.b		; 02 09
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	bpl -67.b		; 10 BD
	lda $9E.b		; A5 9E
	ora [$D9.b],Y		; 17 D9
	eor $C05FE0.l		; 4F E0 5F C0
	and $0000F0.l,X		; 3F F0 00 00
	brk $13.b		; 00 13
	php		; 08
	ldx #$1040.w		; A2 40 10
	rts		; 60

	mvp $53,$24		; 44 24 53
	ora ($00.b,S),Y		; 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A3.b		; 00 A3
	sbc ($47.b,X)		; E1 47
	cpy $8A.b		; C4 8A
	sta $7841.w		; 8D 41 78
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3800.w,X		; 1D 00 38
	brk $70.b		; 00 70
	ora ($A0.b,X)		; 01 A0
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
	cop $61.b		; 02 61
	bit $43.b		; 24 43
	ora #$52C6.w		; 09 C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($3F.b),Y		; D1 3F
	and $793C3C.l,X		; 3F 3C 3C 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $052E.w		; 2E 2E 05
	sbc $B048.w,Y		; F9 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1F3017.l,X		; BF 17 30 1F
	bmi  15.b		; 30 0F
	ora $DFDFDF.l		; 0F DF DF DF
	cmp $9ADADA.l,X		; DF DA DA 9A
	txs		; 9A
	brk $00.b		; 00 00
	php		; 08
	brk $0F.b		; 00 0F
	brk $8C.b		; 00 8C
	phb		; 8B
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($20.b)		; B2 20
	jmp ($5C89.w,X)		; 7C 89 5C
	jsr $2AC5.w		; 20 C5 2A
	sta $FA.b		; 85 FA
	eor $FCFC.w		; 4D FC FC
	inc $CFFE.w,X		; FE FE CF
	cmp $B38B8B.l		; CF 8B 8B B3
	sta ($3B.b,S),Y		; 93 3B
	ora $F2.b,S		; 03 F2
	.db $82, $22, $02		; 82 22 02
	brk $E0.b		; 00 E0
	bra  56.b		; 80 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	trb $62.b		; 14 62
	brk $73.b		; 00 73
	cop $F1.b		; 02 F1
	.db $62, $91, $00		; 62 91 00
	brk $E0.b		; 00 E0
	cpx #$7878.w		; E0 78 78
	ldy $9CBC.w,X		; BC BC 9C
	stz $8E8E.w		; 9C 8E 8E
	ldx $6EAE.w		; AE AE 6E
	ror $63F0.w		; 6E F0 63
	sed		; F8
	trb $F8.b		; 14 F8
	rts		; 60

	sbc ($60.b,S),Y		; F3 60
	sbc ($61.b)		; F2 61
	lda ($61.b)		; B2 61
	cmp ($60.b),Y		; D1 60
	plx		; FA
	adc ($6C.b),Y		; 71 6C
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	cpx #$F020.w		; E0 20 F0
	and ($F0.b,X)		; 21 F0
	ora ($F0.b,X)		; 01 F0
	brk $F0.b		; 00 F0
	and ($F8.b),Y		; 31 F8
	and [$98.b],Y		; 37 98
	and [$18.b]		; 27 18
	ply		; 7A
	and $E7.b		; 25 E7
	inc A		; 1A
	adc $BF5E83.l,X		; 7F 83 5E BF
	xce		; FB
	asl $5F.b		; 06 5F
	lda $021A.w,Y		; B9 1A 02
	clc		; 18
	brk $05.b		; 00 05
	rts		; 60

	clc		; 18
	.db $42, $82		; 42 82
	eor $86.b,S		; 43 86
	adc $817F00.l,X		; 7F 00 7F 81
	jmp ($D830.w,X)		; 7C 30 D8
	inx		; E8
	ora $E3C420.l		; 0F 20 C4 E3
	ora $1086.w,Y		; 19 86 10
	sbc $41FC01.l		; EF 01 FC 41
	dec A		; 3A
	ora $C0.b,S		; 03 C0
	brk $10.b		; 00 10
	brk $DB.b		; 00 DB
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	bra  30.b		; 80 1E
	bra  94.b		; 80 5E
	brk $1C.b		; 00 1C
	cpy #$E000.w		; C0 00 E0
	bvs   0.b		; 70 00
	sed		; F8
	bmi 116.b		; 30 74
	sec		; 38
	jmp ($62A8.w)		; 6C A8 62
	ldy $46.b		; A4 46
	bit $73.b		; 24 73
	cmp ($00.b)		; D2 00
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	bmi -72.b		; 30 B8
	jsr $B088.w		; 20 88 B0
	tsb $38.b		; 04 38
	tsb $38.b		; 04 38
	ora ($0C.b)		; 12 0C
	ora $92.b		; 05 92
	asl A		; 0A
	and ($11.b,X)		; 21 11
	eor [$67.b]		; 47 67
	php		; 08
	cmp $1DBF41.l,X		; DF 41 BF 1D
	sbc $7F5F.w,X		; FD 5F 7F
	brk $08.b		; 00 08
	ora [$1C.b]		; 07 1C
	ora $38.b,S		; 03 38
	ora $10.b,S		; 03 10
	ora [$41.b]		; 07 41
	and $405F18.l		; 2F 18 5F 40
	ora $FF3F00.l,X		; 1F 00 3F FF
	adc $D5.b,S		; 63 D5
	adc $9C.b,S		; 63 9C
	adc $EB.b,S		; 63 EB
	trb $DC.b		; 14 DC
	lda $F7.b,S		; A3 F7
	tya		; 98
	inc $FEB8.w,X		; FE B8 FE
	mvn $00,$63		; 54 63 00
	rtl		; 6B

	php		; 08
	rtl		; 6B

	php		; 08
	trb $C0.b		; 14 C0
	lda $C0.b,S		; A3 C0
	bra -40.b		; 80 D8
	bpl  -2.b		; 10 FE
	brk $FC.b		; 00 FC
	brk $1C.b		; 00 1C
	brk $30.b		; 00 30
	jsl $470841.l		; 22 41 08 47
	.db $42, $9C		; 42 9C
	trb $A8.b		; 14 A8
	and ($D8.b,X)		; 21 D8
	pha		; 48
	lda ($07.b),Y		; B1 07
	ora [$1F.b]		; 07 1F
	ora $383F3F.l,X		; 1F 3F 3F 38
	sec		; 38
	adc $63.b,S		; 63 63
	eor [$57.b],Y		; 57 57
	and $6F6F2F.l		; 2F 2F 6F 6F
	bvc  47.b		; 50 2F
	jsl $F8041C.l		; 22 1C 04 F8
	bne  10.b		; D0 0A
	adc ($1A.b,X)		; 61 1A
	sty $7B.b		; 84 7B
	brk $CF.b		; 00 CF
	brk $8A.b		; 00 8A
	jmp.w [$EBD0]		; DC D0 EB
	xba		; EB
	ora [$07.b]		; 07 07
	sbc [$F7.b],Y		; F7 F7
	sbc $F5.b,X		; F5 F5
	cmp $80CD.w		; CD CD 80
	bra   7.b		; 80 07
	cop $88.b		; 02 88
	ora [$82.b]		; 07 82
	sta ($71.b,X)		; 81 71
	adc ($24.b),Y		; 71 24
	rol A		; 2A
	cop $5F.b		; 02 5F
	ldx #$0857.w		; A2 57 08
	sbc ($FA.b,S),Y		; F3 FA
	ora $F9.b		; 05 F9
	sed		; F8
	inc $FFFE.w,X		; FE FE FF
	sbc $E4F5F5.l,X		; FF F5 F5 E4
	cpx $A8.b		; E4 A8
	ldy #$424E.w		; A0 4E 42
	tsb $0004.w		; 0C 04 00
	sed		; F8
	bpl -50.b		; 10 CE
	tsb $43.b		; 04 43
.ACCU 16
	rep #$A1		; C2 A1
	sbc ($90.b,X)		; E1 90
	jsr $A458.w		; 20 58 A4
	cli		; 58
	ora ($EC.b)		; 12 EC
	bra -128.b		; 80 80
	sec		; 38
	sec		; 38
	ldx $DFBE.w,Y		; BE BE DF
	cmp $E7FFFF.l,X		; DF FF FF E7
	sbc [$A7.b]		; E7 A7
	lda [$9B.b]		; A7 9B
	txy		; 9B
	ora $2E1FF6.l		; 0F F6 1F 2E
	and $1E3D1E.l		; 2F 1E 3D 1E
	lsr $5A3C.w,X		; 5E 3C 5A
	bit $387C.w,X		; 3C 7C 38
	stz $38.b,X		; 74 38
	asl $16.b,X		; 16 16
	asl $08.b		; 06 08
	asl $1E10.w		; 0E 10 1E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	php		; 08
	and ($13.b,S),Y		; 33 13
	tda		; 7B
	bit $409C.w,X		; 3C 9C 40
	cld		; D8
	bvc -56.b		; 50 C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $08.b		; 00 08
	ora [$13.b]		; 07 13
	tsb $003C.w		; 0C 3C 00
	rti		; 40

	jsr $2050.w		; 20 50 20
	rti		; 40

	bmi 112.b		; 30 70
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	bvs -16.b		; 70 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $007000.l,X		; FF 00 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sta $40.b,S		; 83 40
	sbc [$83.b]		; E7 83
	sbc $5BFD23.l,X		; FF 23 FD 5B
	lda ($5C.b,S),Y		; B3 5C
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$21.b]		; 07 21
	ora $401F40.l		; 0F 40 1F 40
	ora $003C00.l,X		; 1F 00 3C 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$F080.w		; C0 80 F0
	jsr $0838.w		; 20 38 08
	tsb $808E.w		; 0C 8E 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bne  16.b		; D0 10
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	bcc  72.b		; 90 48
	cpy #$C868.w		; C0 68 C8
	stz $90.b		; 64 90
	adc $000000.l		; 6F 00 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$F030.w		; C0 30 F0
	bvc -16.b		; 50 F0
	clc		; 18
	sed		; F8
	beq -112.b		; F0 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $22.b		; 04 22
	plp		; 28
	.db $42, $38		; 42 38
	lsr A		; 4A
	bit $4A.b,X		; 34 4A
	tsb $FA.b		; 04 FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $341C.w		; 1C 1C 34
	bit $3C2C.w,X		; 3C 2C 3C
	bit $3C.b		; 24 3C
	trb $0004.w		; 1C 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$4080.w		; C0 80 40
	bra  96.b		; 80 60
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$142F.w		; C0 2F 14
	and $0D1B15.l		; 2F 15 1B 0D
	asl $0A.b,X		; 16 0A
	trb $0700.w		; 1C 00 07
	brk $01.b		; 00 01
	ora [$01.b]		; 07 01
	ora [$14.b]		; 07 14
	brk $15.b		; 00 15
	brk $0D.b		; 00 0D
	brk $0A.b		; 00 0A
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $FF.b		; 02 FF
	rol A		; 2A
	sbc $BB53.w,X		; FD 53 BB
	and #$0A9B.w		; 29 9B 0A
	cmp $CF50.w,Y		; D9 50 CF
	eor $FD.b		; 45 FD
	ora $E0.b,S		; 03 E0
	sbc [$22.b],Y		; F7 22
	sec		; 38
	eor ($10.b,S),Y		; 53 10
	and #$0A44.w		; 29 44 0A
	stz $50.b		; 64 50
	rol $44.b		; 26 44
	bmi   2.b		; 30 02
	cop $01.b		; 02 01
	ora ($52.b,X)		; 01 52
	lda ($10.b,X)		; A1 10
	sbc $10.b,S		; E3 10
	.db $62, $10, $62		; 62 10 62
	php		; 08
	and ($04.b)		; 32 04
	inc A		; 1A
	tsb $0A.b		; 04 0A
	brk $06.b		; 00 06
	lsr $5E5E.w,X		; 5E 5E 5E
	lsr $1C1C.w,X		; 5E 1C 1C
	trb $1C1C.w		; 1C 1C 1C
	trb $0C0C.w		; 1C 0C 0C
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	ora [$0E.b]		; 07 0E
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	ora [$00.b]		; 07 00
	ora #$1E01.w		; 09 01 1E
	cop $3B.b		; 02 3B
	trb $0007.w		; 1C 07 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	cop $19.b		; 02 19
	php		; 08
	bit $D16A.w,X		; 3C 6A D1
	inc $EC01.w,X		; FE 01 EC
	ora ($72.b,X)		; 01 72
	phd		; 0B
	jmp $7CE0C6.l		; 5C C6 E0 7C
	lsr $AE0C.w,X		; 5E 0C AE
	brk $CC.b		; 00 CC
	cmp ($CC.b),Y		; D1 CC
	brk $FE.b		; 00 FE
	brk $F4.b		; 00 F4
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	bra   0.b		; 80 00
	bvc  25.b		; 50 19
	ldx $09.b		; A6 09
	rol $0D.b,X		; 36 0D
	ora ($0D.b)		; 12 0D
	ora ($09.b)		; 12 09
	asl $08.b,X		; 16 08
	ora [$10.b],Y		; 17 10
	rol $3800.w		; 2E 00 38
	tas		; 1B
	tas		; 1B
	ora $0D1D.w,X		; 1D 1D 0D
	ora $0D0D.w		; 0D 0D 0D
	ora $0A0D.w		; 0D 0D 0A
	asl A		; 0A
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	rti		; 40

	jsr $2040.w		; 20 40 20
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $7C05.w		; CD 05 7C
	tsb $1F.b		; 04 1F
	bvs  30.b		; 70 1E
	adc $163114.l,X		; 7F 14 31 16
	and ($16.b),Y		; 31 16
	and ($16.b),Y		; 31 16
	and ($05.b),Y		; 31 05
	and ($04.b)		; 32 04
	ora $20.b,S		; 03 20
	jsr $2020.w		; 20 20 20
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	ora ($08.b),Y		; 11 08
	ora $051C.w,Y		; 19 1C 05
	adc $7EBF18.l		; 6F 18 BF 7E
	sta $38368E.l		; 8F 8E 36 38
	clv		; B8
	cpy #$000E.w		; C0 0E 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	brk $18.b		; 00 18
	ror $8C06.w,X		; 7E 06 8C
	adc ($38.b)		; 72 38
	cpy #$00C0.w		; C0 C0 00
	and $0D1B15.l		; 2F 15 1B 0D
	asl $0A.b,X		; 16 0A
	trb $0700.w		; 1C 00 07
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($15.b,X)		; 01 15
	brk $0D.b		; 00 0D
	brk $0A.b		; 00 0A
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $FC.b		; 00 FC
	mvn $23,$B7		; 54 B7 23
	txy		; 9B
	php		; 08
	cmp $CE50.w,Y		; D9 50 CE
	mvp $00,$FC		; 44 FC 00
	beq  -8.b		; F0 F8
	ldy #$5488.w		; A0 88 54
	ora ($23.b,S),Y		; 13 23
	pha		; 48
	php		; 08
	stz $50.b		; 64 50
	rol $44.b		; 26 44
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	clc		; 18
	bpl  32.b		; 10 20
	cop $21.b		; 02 21
	php		; 08
	eor [$15.b]		; 47 15
	lsr A		; 4A
	asl A		; 0A
	mvn $54,$28		; 54 28 54
	trb $68.b		; 14 68
	ora $1F1F0F.l		; 0F 0F 1F 1F
	asl $381E.w,X		; 1E 1E 38
	sec		; 38
	and $35.b,X		; 35 35
	pld		; 2B
	pld		; 2B
	pld		; 2B
	pld		; 2B
	ora [$17.b],Y		; 17 17
	eor $39.b		; 45 39
	dey		; 88
	bvs  32.b		; 70 20
	sty $42.b,X		; 94 42
	bit $49.b,X		; 34 49
	rol $80.b,X		; 36 80
	adc $045481.l,X		; 7F 81 54 04
	cmp ($D7.b),Y		; D1 D7
	cmp [$8F.b],Y		; D7 8F
	sta $EB6F6F.l		; 8F 6F 6F EB
	xba		; EB
	stp		; DB
	stp		; DB
	bra -128.b		; 80 80
	stx $8F84.w		; 8E 84 8F
	sta ($04.b,X)		; 81 04
	ora $E2.b,S		; 03 E2
	sep #$49		; E2 49
	eor $05.b,X		; 55 05
	lda $11AE44.l,X		; BF 44 AE 11
	inc $F4.b		; E6 F4
	phd		; 0B
	pei ($A3.b)		; D4 A3
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $C9EBEB.l,X		; FF EB EB C9
	cmp #$4151.w		; C9 51 41
	sta $1985.w,X		; 9D 85 19
	ora #$A298.w		; 09 98 A2
	jsr $0098.w		; 20 98 00
	sty $4680.w		; 8C 80 46
	cpy $22.b		; C4 22
	rti		; 40

	lda $52.b,S		; A3 52
	lda ($0A.b,X)		; A1 0A
	sbc ($6A.b),Y		; F1 6A
	sta ($60.b),Y		; 91 60
	rts		; 60

	sei		; 78
	sei		; 78
	ldy $FCBC.w,X		; BC BC FC
	jsr ($DEDE.w,X)		; FC DE DE
	lsr $2E5E.w,X		; 5E 5E 2E
	rol $6E6E.w		; 2E 6E 6E
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	cop $09.b		; 02 09
	ora $09.b,S		; 03 09
	ora [$09.b]		; 07 09
	asl $39.b		; 06 39
	inc A		; 1A
	sbc $00.b		; E5 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$04.b]		; 07 04
	ora [$05.b]		; 07 05
	ora [$04.b]		; 07 04
	ora [$07.b]		; 07 07
	asl $3B.b		; 06 3B
	dec A		; 3A
	sta $5EEF2E.l,X		; 9F 2E EF 5E
	and $5EDE.w,X		; 3D DE 5E
	ldy $3C5A.w,X		; BC 5A 3C
	stz $38.b,X		; 74 38
	stz $38.b,X		; 74 38
	tay		; A8
	bvs  70.b		; 70 46
	php		; 08
	asl $DE10.w		; 0E 10 DE
	cpy #$003C.w		; C0 3C 00
	bit $3800.w,X		; 3C 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $A8.b		; 00 A8
	bvs -80.b		; 70 B0
	rts		; 60

	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$2140.w		; C0 40 21
	brk $A1.b		; 00 A1
	jsr $4091.w		; 20 91 40
	lda $00E011.l,X		; BF 11 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C040.w		; C0 40 C0
	rts		; 60

	cpx #$40C0.w		; E0 C0 40
	sta $00001F.l,X		; 9F 1F 00 00
	brk $70.b		; 00 70
	bpl -120.b		; 10 88
	ldy #$E008.w		; A0 08 E0
	plp		; 28
	bne  40.b		; D0 28
	bpl -24.b		; 10 E8
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bne -16.b		; D0 F0
	bcs -16.b		; B0 F0
	bcc -16.b		; 90 F0
	bvs  16.b		; 70 10
	bmi  16.b		; 30 10
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	asl $02.b		; 06 02
	ora $00.b		; 05 00
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	lsr $0B.b,X		; 56 0B
	sty $3F3B.w		; 8C 3B 3F
	rti		; 40

	inc $FF0D.w,X		; FE 0D FF
	cpx $FDEF.w		; EC EF FD
	sbc $A17F02.l,X		; FF 02 7F A1
	sbc $18.b,S		; E3 18
	cmp $18.b,S		; C3 18
	bra  62.b		; 80 3E
	ora $C47E.w		; 0D 7E C4
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	lda ($01.b,X)		; A1 01
	ldy $E71A.w		; AC 1A E7
	inc A		; 1A
	eor $E7A4.w,X		; 5D A4 E7
	ora $C1BE.w,Y		; 19 BE C1
	inc $F4CD.w,X		; FE CD F4
	tya		; 98
	jsr ($5841.w,X)		; FC 41 58
	rti		; 40

	cli		; 58
	rti		; 40

	ldx #$1900.w		; A2 00 19
	brk $01.b		; 00 01
	cpy #$E08C.w		; C0 8C E0
	tas		; 1B
	cpy #$C103.w		; C0 03 C1
	tsb $9E00.w		; 0C 00 9E
	tsb $8CFE.w		; 0C FE 8C
	inc $6C.b,X		; F6 6C
	trb $40E0.w		; 1C E0 40
	bne  56.b		; D0 38
	brk $78.b		; 00 78
	bmi   0.b		; 30 00
	tsb $1E0C.w		; 0C 0C 1E
	sty $3E.b		; 84 3E
	brk $7E.b		; 00 7E
	brk $1C.b		; 00 1C
	ldy #$C080.w		; A0 80 C0
	brk $B0.b		; 00 B0
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($7E.b,X)		; 01 7E
	ora ($CF.b,X)		; 01 CF
	ror $66E7.w,X		; 7E E7 66
	plb		; AB
	tas		; 1B
	txy		; 9B
	and [$AE.b]		; 27 AE
	and ($79.b),Y		; 31 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	cop $66.b		; 02 66
	inc A		; 1A
	tas		; 1B
	eor $26.b		; 45 26
	eor ($31.b,X)		; 41 31
	rti		; 40

	brk $00.b		; 00 00
	bmi -116.b		; 30 8C
	sec		; 38
	sty $C470.w		; 8C 70 C4
	bpl -60.b		; 10 C4
	tya		; 98
	mvp $64,$D8		; 44 D8 64
	sei		; 78
	ldy $38C0.w,X		; BC C0 38
	sed		; F8
	dey		; 88
	bvs   0.b		; 70 00
	sec		; 38
	brk $B8.b		; 00 B8
	bra  56.b		; 80 38
	brk $38.b		; 00 38
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	ora ($68.b),Y		; 11 68
	ora ($28.b),Y		; 11 28
	ora $38.b		; 05 38
	cop $1C.b		; 02 1C
	ora ($0E.b,X)		; 01 0E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$17.b],Y		; 17 17
	ora [$17.b],Y		; 17 17
	ora [$17.b],Y		; 17 17
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $8C019C.l		; 0F 9C 01 8C
	brk $82.b		; 00 82
	asl $9381.w		; 0E 81 93
	.db $42, $1C		; 42 1C
	cpx $77.b		; E4 77
	sec		; 38
	and $000393.l		; 2F 93 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	.db $82, $8C, $04		; 82 8C 04
	ora ($10.b,S),Y		; 13 10
	sei		; 78
	eor $38.b,S		; 43 38
	jsr ($F802.w,X)		; FC 02 F8
	cop $C4.b		; 02 C4
	asl $B8.b,X		; 16 B8
	sty $F8C0.w		; 8C C0 F8
	ldy $5C19.w,X		; BC 19 5C
	ora ($FC.b,X)		; 01 FC
	inc A		; 1A
	tya		; 98
	brk $FC.b		; 00 FC
	brk $E8.b		; 00 E8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	brk $00.b		; 00 00
	ldy #$0018.w		; A0 18 00
	ror $6C91.w		; 6E 91 6C
	sta ($6C.b,S),Y		; 93 6C
	sta ($48.b)		; 92 48
	ldx $40.b,Y		; B6 40
	ldy $7880.w,X		; BC 80 78
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ror $6E6E.w		; 6E 6E 6E
	ror $6C6C.w		; 6E 6C 6C
	jmp ($586C.w)		; 6C 6C 58
	cli		; 58
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $30.b,X		; 15 30
	ora $18.b,S		; 03 18
	adc ($0C.b),Y		; 71 0C
	eor $4F36.w		; 4D 36 4F
	and ($7B.b),Y		; 31 7B
	asl $9F.b		; 06 9F
	adc ($B7.b,X)		; 61 B7
	phy		; 5A
	asl $0600.w		; 0E 00 06
	brk $02.b		; 00 02
	clc		; 18
	bmi  12.b		; 30 0C
	bmi  15.b		; 30 0F
	brk $0F.b		; 00 0F
	rts		; 60

	ora ($5A.b,X)		; 01 5A
	brk $F8.b		; 00 F8
	bvs -24.b		; 70 E8
	bcs  88.b		; B0 58
	jsr $80B8.w		; 20 B8 80
	bne  32.b		; D0 20
	beq -32.b		; F0 E0
	sed		; F8
	bvc  -4.b		; 50 FC
	tay		; A8
	jsr $8078.w		; 20 78 80
	sec		; 38
	brk $B0.b		; 00 B0
	bra  64.b		; 80 40
	brk $30.b		; 00 30
	rti		; 40

	beq   0.b		; F0 00
	beq -88.b		; F0 A8
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	cop $1C.b		; 02 1C
	php		; 08
	bmi   2.b		; 30 02
	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $103F3F.l,X		; 1F 3F 3F 10
	jsl $0C250A.l		; 22 0A 25 0C
	and [$1D.b]		; 27 1D
	rol $19.b		; 26 19
	inc $50.b		; E6 50
	and $051C22.l		; 2F 22 1C 05
	sbc $1C1C.w,Y		; F9 1C 1C
	inc A		; 1A
	asl $1E10.w,X		; 1E 10 1E
	ora $1F.b,X		; 15 1F
	ora [$19.b],Y		; 17 19
	jmp.w [$E3D0]		; DC D0 E3
	sbc $0F.b,S		; E3 0F
	ora $000000.l		; 0F 00 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	sty $01.b		; 84 01
	sty $07.b		; 84 07
	sbc $0F10.w,Y		; F9 10 0F
	sty $008B.w		; 8C 8B 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	ora $05.b,S		; 03 05
	ora [$F3.b]		; 07 F3
	beq  -4.b		; F0 FC
	jsr ($0000.w,X)		; FC 00 00
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	rti		; 40

	ldy #$A0C0.w		; A0 C0 A0
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40C0.w		; C0 C0 40
	cpy #$C040.w		; C0 40 C0
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0C23.w		; 0E 23 0C
	and $1C.b,S		; 23 1C
	jsl $302618.l		; 22 18 26 30
	stz $38.b,X		; 74 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $1C78.w,X		; BC 78 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	bit $3418.w,X		; 3C 18 34
	clc		; 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	iny		; C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	sec		; 38
	jmp ($8428.w)		; 6C 28 84
	pha		; 48
	sty $48.b		; 84 48
	cld		; D8
	bvc -40.b		; 50 D8
	bvc -88.b		; 50 A8
	bmi -80.b		; 30 B0
	jsr $0038.w		; 20 38 00
	plp		; 28
	bpl  72.b		; 10 48
	bmi  72.b		; 30 48
	bmi  80.b		; 30 50
	jsr $2050.w		; 20 50 20
	bmi  64.b		; 30 40
	jsr $2040.w		; 20 40 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $08.b,X		; 74 08
	bit $00.b,X		; 34 00
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $2C2C.w		; 2C 2C 2C
	bit $2828.w		; 2C 28 28
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	ora ($04.b,X)		; 01 04
	trb $6602.w		; 1C 02 66
	ora $B9.b		; 05 B9
	pla		; 68
	inc $49.b,X		; F6 49
	sbc $46.b,S		; E3 46
	sta $0742.w,Y		; 99 42 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	cop $05.b		; 02 05
	eor $E608.w,Y		; 59 08 E6
	eor ($F0.b,X)		; 41 F0
	inc A		; 1A
	cpx #$803C.w		; E0 3C 80
	sbc $2F04.w,Y		; F9 04 2F
	cpy #$2E3F.w		; C0 3F 2E
	ora $7FEE.w,Y		; 19 EE 7F
	bit $5AB7.w		; 2C B7 5A
	pei ($3B.b)		; D4 3B
	sei		; 78
	bmi -32.b		; 30 E0
	ora ($B0.b,X)		; 01 B0
	sta $081FC4.l		; 8F C4 1F 08
	ora $401E80.l,X		; 1F 80 1E 40
	bit $7C10.w,X		; 3C 10 7C
	bcc  -8.b		; 90 F8
.INDEX 8
	sep #$D1		; E2 D1
	cpx #$D3.b		; E0 D3
	pea $E8C2.w		; F4 C2 E8
	lsr $F0.b		; 46 F0
	sty $D8E0.w		; 8C E0 D8
	cpy #$20.b		; C0 20
	brk $00.b		; 00 00
	dec $CEEE.w		; CE EE CE
	inc $FC5C.w		; EE 5C FC
	trb $987C.w		; 1C 7C 98
	sec		; 38
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	cpy $6420.w		; CC 20 64
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $4070.w		; 2E 70 40
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $14.b		; 00 14
	asl $06.b,X		; 16 06
	php		; 08
	adc $316B36.l,X		; 7F 36 6B 31
	ply		; 7A
	plp		; 28
	adc ($00.b)		; 72 00
	rol $1F00.w,X		; 3E 00 1F
	bit $3312.w,X		; 3C 12 33
	asl A		; 0A
	and $36.b,S		; 23 36
	brk $31.b		; 00 31
	tsb $28.b		; 04 28
	ora $00.b		; 05 00
	ora $0100.w		; 0D 00 01
	brk $00.b		; 00 00
	tsb $1C00.w		; 0C 00 1C
	brk $FE.b		; 00 FE
	mvn $B6,$FB		; 54 FB B6
	sbc $486EAA.l		; EF AA 6E 48
	stz $42.b		; 64 42
	jsr ($3802.w,X)		; FC 02 38
	ror $6624.w,X		; 7E 24 66
	mvn $B6,$40		; 54 40 B6
	brk $AA.b		; 00 AA
	bpl  72.b		; 10 48
	bcc  64.b		; 90 40
	tya		; 98
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	clc		; 18
	brk $24.b		; 00 24
	eor $09.b,S		; 43 09
	dec $52.b		; C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($20.b),Y		; D1 20
	cmp ($3C.b)		; D2 3C
	bit $7979.w,X		; 3C 79 79
	adc ($73.b,S),Y		; 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $2C2E.w		; 2E 2E 2C
	bit $B048.w		; 2C 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1F3017.l,X		; BF 17 30 1F
	and ($07.b)		; 32 07
	inc A		; 1A
	cmp $DFDFDF.l,X		; DF DF DF DF
	phx		; DA
	phx		; DA
	txs		; 9A
	txs		; 9A
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	cop $0E.b		; 02 0E
	asl A		; 0A
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($27.b)		; B2 27
	sei		; 78
	sta $C3275B.l		; 8F 5B 27 C3
	ldx #$55.b		; A2 55
	tsa		; 3B
	sty $F5.b,X		; 94 F5
	asl A		; 0A
	inc $CFFE.w,X		; FE FE CF
	cmp $B28F88.l		; CF 88 8F B2
	sta [$3B.b],Y		; 97 3B
	ora [$78.b]		; 07 78
	eor ($62.b,S),Y		; 53 62
	sta $60.b,S		; 83 60
	ora #$3880.w		; 09 80 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	pei ($A2.b)		; D4 A2
	cpy #$B3.b		; C0 B3
	.db $42, $B1		; 42 B1
	ldx #$D1.b		; A2 D1
.INDEX 8
	sep #$D1		; E2 D1
	cpx #$E0.b		; E0 E0
	sei		; 78
	sei		; 78
	bit $1CBC.w,X		; 3C BC 1C
	jmp.w [$CE0E]		; DC 0E CE
	rol $0EEE.w		; 2E EE 0E
	inc $EE8E.w		; EE 8E EE
	and $1E3F1E.l		; 2F 1E 3F 1E
	and $1E2F1E.l		; 2F 1E 2F 1E
	ora $0E170E.l,X		; 1F 0E 17 0E
	ora [$0E.b],Y		; 17 0E
	ora $100E06.l		; 0F 06 0E 10
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	trb $3008.w		; 1C 08 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $1C001F.l,X		; 1F 1F 00 1C
	bpl  34.b		; 10 22
	asl A		; 0A
	and $0C.b		; 25 0C
	and [$1D.b]		; 27 1D
	rol $19.b		; 26 19
	inc $50.b		; E6 50
	and $001C22.l		; 2F 22 1C 00
	brk $1C.b		; 00 1C
	trb $1E1A.w		; 1C 1A 1E
	bpl  30.b		; 10 1E
	ora $1F.b,X		; 15 1F
	ora [$19.b],Y		; 17 19
	jmp.w [$E3D0]		; DC D0 E3
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	sty $01.b		; 84 01
	sty $07.b		; 84 07
	sbc $0F10.w,Y		; F9 10 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	ora $07.b		; 05 07
	sbc ($F0.b,S),Y		; F3 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	rti		; 40

	ldy #$C0.b		; A0 C0
	ldy #$80.b		; A0 80
	rts		; 60

	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra -11.b		; 80 F5
	asl A		; 0A
	sbc $7D04.w,Y		; F9 04 7D
	clv		; B8
	adc $5F38.w,X		; 7D 38 5F
	bcs 106.b		; B0 6A
	and ($7D.b),Y		; 31 7D
	bit $A8.b,X		; 34 A8
	adc [$60.b],Y		; 77 60
	ora #$39C0.w		; 09 C0 39
	tya		; 98
	sbc $7D88.w,X		; FD 88 7D
	bra  -4.b		; 80 FC
	sta $78.b		; 85 78
	jsl $F820F8.l		; 22 F8 20 F8
.INDEX 8
	sep #$91		; E2 91
	ldx #$D1.b		; A2 D1
	cpx #$D3.b		; E0 D3
	pea $68C2.w		; F4 C2 68
	dec $F0.b		; C6 F0
	tsb $D8E0.w		; 0C E0 D8
	cpy #$20.b		; C0 20
	rol $8EEE.w		; 2E EE 8E
	inc $EE8E.w		; EE 8E EE
	jmp $FC1CFC.l		; 5C FC 1C FC
	clc		; 18
	sec		; 38
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ror $CF01.w,X		; 7E 01 CF
	ror $66E7.w,X		; 7E E7 66
	plb		; AB
	tas		; 1B
	txy		; 9B
	and [$AE.b]		; 27 AE
	and ($79.b),Y		; 31 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	cop $66.b		; 02 66
	inc A		; 1A
	tas		; 1B
	eor $26.b		; 45 26
	eor ($31.b,X)		; 41 31
	rti		; 40

	brk $00.b		; 00 00
	bmi -116.b		; 30 8C
	sec		; 38
	sty $C470.w		; 8C 70 C4
	bpl -60.b		; 10 C4
	tya		; 98
	mvp $64,$D8		; 44 D8 64
	sei		; 78
	ldy $38C0.w,X		; BC C0 38
	sed		; F8
	dey		; 88
	bvs   0.b		; 70 00
	sec		; 38
	brk $B8.b		; 00 B8
	bra  56.b		; 80 38
	brk $38.b		; 00 38
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	tay		; A8
	bvs -80.b		; 70 B0
	rts		; 60

	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cmp ($20.b)		; D2 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $08.b,X		; 74 08
	bit $00.b,X		; 34 00
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	bit $2C2C.w		; 2C 2C 2C
	bit $2C2C.w		; 2C 2C 2C
	plp		; 28
	plp		; 28
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1A.b,S		; 03 1A
	ora $08.b,S		; 03 08
	ora $04.b,S		; 03 04
	asl $2602.w,X		; 1E 02 26
	ora $79.b		; 05 79
	brk $5F.b		; 00 5F
	sec		; 38
	adc $0A0E23.l,X		; 7F 23 0E 0A
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora $19.b		; 05 19
	brk $66.b		; 00 66
	bpl 120.b		; 10 78
	ora $78.b,S		; 03 78
	.db $62, $07, $09		; 62 07 09
	jsl $731005.l		; 22 05 10 73
	php		; 08
	eor #$4834.w		; 49 34 48
	and [$7F.b],Y		; 37 7F
	ora ($BF.b,X)		; 01 BF
	mvn $60,$1B		; 54 1B 60
	trb $0E00.w		; 1C 00 0E
	brk $06.b		; 00 06
	bpl  50.b		; 10 32
	php		; 08
	bmi  12.b		; 30 0C
	brk $01.b		; 00 01
	mvn $BF,$00		; 54 00 BF
	eor $6E.b,X		; 55 6E
	bit $5A.b,X		; 34 5A
	plp		; 28
	adc ($01.b,S),Y		; 73 01
	ora $0C0301.l,X		; 1F 01 03 0C
	ora $0F.b,S		; 03 0F
	cop $06.b		; 02 06
	eor $00.b,X		; 55 00
	bit $01.b,X		; 34 01
	plp		; 28
	ora $01.b		; 05 01
	tsb $0001.w		; 0C 01 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	ora ($00.b,X)		; 01 00
	sbc ($50.b)		; F2 50
	cmp $236C8D.l,X		; DF 8D 6C 23
	adc $42.b		; 65 42
	and $F110.w,Y		; 39 10 F1
	brk $C1.b		; 00 C1
	cpx #$82.b		; E0 82
	and ($51.b,X)		; 21 51
	jmp $208C.w		; 4C 8C 20
	and $93.b,S		; 23 93
	rti		; 40

	tya		; 98
	bpl -64.b		; 10 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($00.b,X)		; C1 00
	jmp ($BCB8.w,X)		; 7C B8 BC
	sei		; 78
	pea $7878.w		; F4 78 78
	beq 104.b		; F0 68
	beq -48.b		; F0 D0
	cpx #$D0.b		; E0 D0
	cpx #$A0.b		; E0 A0
	cpy #$18.b		; C0 18
	jsr $4038.w		; 20 38 40
	sei		; 78
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
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
	brk $02.b		; 00 02
	adc ($24.b,X)		; 61 24
	eor $09.b,S		; 43 09
	dec $52.b		; C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($3F.b),Y		; D1 3F
	and $793C3C.l,X		; 3F 3C 3C 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $052E.w		; 2E 2E 05
	sbc $B048.w,Y		; F9 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1F3017.l,X		; BF 17 30 1F
	and ($0F.b)		; 32 0F
	ora $DFDFDF.l		; 0F DF DF DF
	cmp $9ADADA.l,X		; DF DA DA 9A
	txs		; 9A
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	cop $8C.b		; 02 8C
	phb		; 8B
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($20.b)		; B2 20
	jmp ($5C8B.w,X)		; 7C 8B 5C
	and [$C3.b]		; 27 C3
	lda $53.b		; A5 53
	rol $FC91.w,X		; 3E 91 FC
	jsr ($FEFE.w,X)		; FC FE FE
	cmp $8B8BCF.l		; CF CF 8B 8B
	bcs -109.b		; B0 93
	and $7807.w,Y		; 39 07 78
	eor [$60.b],Y		; 57 60
	sta [$00.b]		; 87 00
	cpx #$80.b		; E0 80
	sec		; 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	sty $62.b,X		; 94 62
	cpy #$B3.b		; C0 B3
.ACCU 16
.INDEX 16
	rep #$B1		; C2 B1
	.db $62, $91, $00		; 62 91 00
	brk $E0.b		; 00 E0
	cpx #$7878.w		; E0 78 78
	ldy $1CBC.w,X		; BC BC 1C
	stz $CE8E.w		; 9C 8E CE
	rol $2EEE.w		; 2E EE 2E
	inc $68FC.w		; EE FC 68
	pea $F868.w		; F4 68 F8
	ldy #$0874.w		; A0 74 08
	lda $26FF80.l,X		; BF 80 FF 26
	plx		; FA
	jmp $A0FE.w		; 4C FE A0
	plp		; 28
	beq 104.b		; F0 68
	bvs -128.b		; 70 80
	bmi   8.b		; 30 08
	bcc -128.b		; 90 80
	rti		; 40

	asl $30.b		; 06 30
	ora $81E0.w		; 0D E0 81
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $1CE8.w		; 20 E8 1C
	brk $3C.b		; 00 3C
	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  64.b		; 50 40
	cpx #$D800.w		; E0 00 D8
	tya		; 98
	sty $B68B.w		; 8C 8B B6
	sta $CB.b		; 85 CB
	lda ($20.b)		; B2 20
	jmp ($5C89.w,X)		; 7C 89 5C
	bmi -59.b		; 30 C5
	tax		; AA
	eor $36.b,X		; 55 36
	sta $FCFC.w,Y		; 99 FC FC
	inc $CFFE.w,X		; FE FE CF
	cmp $B38B8B.l		; CF 8B 8B B3
	sta ($3B.b,S),Y		; 93 3B
	ora $72.b,S		; 03 72
	eor ($62.b)		; 52 62
	txa		; 8A
	brk $E0.b		; 00 E0
	bra  56.b		; 80 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	trb $62.b		; 14 62
	brk $73.b		; 00 73
	cop $F1.b		; 02 F1
	.db $62, $91, $00		; 62 91 00
	brk $E0.b		; 00 E0
	cpx #$7878.w		; E0 78 78
	ldy $9CBC.w,X		; BC BC 9C
	stz $8E8E.w		; 9C 8E 8E
	ldx $6EAE.w		; AE AE 6E
	ror $6102.w		; 6E 02 61
	bit $43.b		; 24 43
	ora #$52C6.w		; 09 C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($3F.b),Y		; D1 3F
	and $793C3C.l,X		; 3F 3C 3C 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $052E.w		; 2E 2E 05
	sbc $B048.w,Y		; F9 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1B3017.l,X		; BF 17 30 1B
	rol $0F.b,X		; 36 0F
	ora $DFDFDF.l		; 0F DF DF DF
	cmp $9ADADA.l,X		; DF DA DA 9A
	txs		; 9A
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	asl $00.b		; 06 00
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $07.b		; 04 07
	brk $0C.b		; 00 0C
	tsb $0F.b		; 04 0F
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	brk $3A.b		; 00 3A
	tsb $6C33.w		; 0C 33 6C
	lda $53D2.w		; AD D2 53
	ldy $837E.w		; AC 7E 83
	lda $15FF6E.l,X		; BF 6E FF 15
	sbc $21CD2A.l,X		; FF 2A CD 21
	sta $0221.w		; 8D 21 02
	bmi  12.b		; 30 0C
	rts		; 60

	brk $63.b		; 00 63
	tsb $7F.b		; 04 7F
	bpl  31.b		; 10 1F
	rol A		; 2A
	asl $60F0.w		; 0E F0 60
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cpy $6420.w		; CC 20 64
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $4070.w		; 2E 70 40
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $16.b		; 00 16
	asl $06.b,X		; 16 06
	php		; 08
	and $1E3D1E.l		; 2F 1E 3D 1E
	and $3E1E.w,X		; 3D 1E 3E
	trb $1C2E.w		; 1C 2E 1C
	rol $1E1C.w		; 2E 1C 1E
	tsb $0C1E.w		; 0C 1E 0C
	asl $1E10.w		; 0E 10 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $3C.b		; 00 3C
	clc		; 18
	bit $18.b,X		; 34 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	iny		; C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	rts		; 60

	bcc  96.b		; 90 60
	rts		; 60

	bcc -112.b		; 90 90
	rts		; 60

	beq   0.b		; F0 00
	clv		; B8
	bvs  -8.b		; 70 F8
	brk $F8.b		; 00 F8
	bcs  96.b		; B0 60
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	sec		; 38
	sed		; F8
	bvc  -8.b		; 50 F8
	rts		; 60

	ldy $68.b,X		; B4 68
	pea $4698.w		; F4 98 46
	sec		; 38
	stz $8E7C.w,X		; 9E 7C 8E
	jsr ($605E.w,X)		; FC 5E 60
	bvc  24.b		; 50 18
	rts		; 60

	php		; 08
	rts		; 60

	tsb $1C80.w		; 0C 80 1C
	brk $9E.b		; 00 9E
	jmp $405E.w		; 4C 5E 40
	lsr $1E80.w,X		; 5E 80 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora #$2070.w		; 09 70 20
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7F7F1F.l,X		; 1F 1F 7F 7F
	brk $70.b		; 00 70
	rti		; 40

	dey		; 88
	plp		; 28
	sty $30.b,X		; 94 30
	stz $9A74.w		; 9C 74 9A
	stz $9A.b		; 64 9A
	rti		; 40

	lda $007088.l,X		; BF 88 70 00
	brk $70.b		; 00 70
	bvs 104.b		; 70 68
	sei		; 78
	rti		; 40

	sei		; 78
	mvn $5C,$7C		; 54 7C 5C
	stz $70.b		; 64 70
	rti		; 40

	sta $00008F.l		; 8F 8F 00 00
	brk $0E.b		; 00 0E
	tsb $13.b		; 04 13
	asl A		; 0A
	and $0E.b		; 25 0E
	and $3E.b		; 25 3E
	eor $24.b		; 45 24
	phx		; DA
	rti		; 40

	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	asl $1A0E.w		; 0E 0E 1A
	asl $1E12.w,X		; 1E 12 1E
	rol $3E.b,X		; 36 3E
	bit $CC24.w,X		; 3C 24 CC
	cpy $3F.b		; C4 3F
	trb $3456.w		; 1C 56 34
	.db $62, $24, $6C		; 62 24 6C
	plp		; 28
	sty $48.b		; 84 48
	tya		; 98
	bvc -56.b		; 50 C8
	bvc -48.b		; 50 D0
	rti		; 40

	trb $3400.w		; 1C 00 34
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  72.b		; 10 48
	bmi  80.b		; 30 50
	jsr $2050.w		; 20 50 20
	rti		; 40

	jsr $03EC.w		; 20 EC 03
	beq   5.b		; F0 05
	bra 105.b		; 80 69
	jsr $0031.w		; 20 31 00
	sbc ($F1.b,X)		; E1 F1
	.db $62, $72, $05		; 62 72 05
	beq 103.b		; F0 67
	bvs   0.b		; 70 00
	sed		; F8
	brk $D0.b		; 00 D0
	rti		; 40

	cpy #$8000.w		; C0 00 80
	bra  97.b		; 80 61
	ora ($02.b,X)		; 01 02
	.db $82, $60, $00		; 82 60 00
	.db $62, $91, $E2		; 62 91 E2
	ora ($C0.b),Y		; 11 C0
	and ($D4.b,S),Y		; 33 D4
	jsl $306688.l		; 22 88 66 30
	cpy $B840.w		; CC 40 B8
	brk $E0.b		; 00 E0
	inc $EEEE.w		; EE EE EE
	inc $EEEE.w		; EE EE EE
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$B8B8]		; DC B8 B8
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	jsr $20D2.w		; 20 D2 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $08.b,X		; 74 08
	bit $00.b,X		; 34 00
	tsb $0401.w		; 0C 01 04
	brk $01.b		; 00 01
	bit $2C2C.w		; 2C 2C 2C
	bit $2C2C.w		; 2C 2C 2C
	plp		; 28
	plp		; 28
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora [$1A.b]		; 07 1A
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	rol $4E06.w,X		; 3E 06 4E
	phd		; 0B
	sbc ($11.b,S),Y		; F3 11
	cmp $FFE2.w,X		; DD E2 FF
	bit $0A0E.w		; 2C 0E 0A
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora #$1031.w		; 09 31 10
	cpy $E042.w		; CC 42 E0
	tsb $0BE0.w		; 0C E0 0B
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	ora $030703.l		; 0F 03 07 03
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $DF.b,S		; 03 DF
	eor $BE.b		; 45 BE
	inc A		; 1A
	ldx $6E0A.w		; AE 0A 6E
	tax		; AA
	lsr $FF8A.w		; 4E 8A FF
	bra -29.b		; 80 E3
	cmp [$E2.b],Y		; D7 E2
	dec $45.b,X		; D6 45
	ldy $1A.b		; A4 1A
	cmp ($0A.b,X)		; C1 0A
	cmp ($2A.b),Y		; D1 2A
	cmp ($0A.b),Y		; D1 0A
	sbc ($00.b),Y		; F1 00
	cpx #$E0C0.w		; E0 C0 E0
	cmp ($E0.b,X)		; C1 E0
	rol $0C01.w,X		; 3E 01 0C
	and $18.b,S		; 23 18
	jsl $202218.l		; 22 18 22 20
	stz $38.b		; 64 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $0078.w,X		; BC 78 00
	rol $021E.w,X		; 3E 1E 02
	trb $1C00.w		; 1C 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	ora ($02.b,X)		; 01 02
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora [$00.b]		; 07 00
	tsb $0F04.w		; 0C 04 0F
	brk $0E.b		; 00 0E
	ora [$01.b]		; 07 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	ora $AD6C33.l		; 0F 33 6C AD
	cmp ($53.b)		; D2 53
	ldy $837E.w		; AC 7E 83
	lda $15FF6E.l,X		; BF 6E FF 15
	sbc $45DF2A.l,X		; FF 2A DF 45
	sta $0221.w		; 8D 21 02
	bmi  12.b		; 30 0C
	rts		; 60

	brk $63.b		; 00 63
	tsb $7F.b		; 04 7F
	bpl  31.b		; 10 1F
	rol A		; 2A
	asl $A445.w		; 0E 45 A4
	cop $61.b		; 02 61
	bit $43.b		; 24 43
	ora #$52C6.w		; 09 C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($3F.b),Y		; D1 3F
	and $793C3C.l,X		; 3F 3C 3C 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $052E.w		; 2E 2E 05
	sbc $B048.w,Y		; F9 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1B3017.l,X		; BF 17 30 1B
	rol $0F.b,X		; 36 0F
	ora $DFDFDF.l		; 0F DF DF DF
	cmp $9ADADA.l,X		; DF DA DA 9A
	txs		; 9A
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	asl $8C.b		; 06 8C
	phb		; 8B
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($20.b)		; B2 20
	jmp ($5C89.w,X)		; 7C 89 5C
	bmi -59.b		; 30 C5
	tax		; AA
	eor $36.b,X		; 55 36
	sta $FCFC.w,Y		; 99 FC FC
	inc $CFFE.w,X		; FE FE CF
	cmp $B38B8B.l		; CF 8B 8B B3
	sta ($3B.b,S),Y		; 93 3B
	ora $72.b,S		; 03 72
	eor ($62.b)		; 52 62
	txa		; 8A
	brk $E0.b		; 00 E0
	bra  56.b		; 80 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	trb $62.b		; 14 62
	brk $73.b		; 00 73
	cop $F1.b		; 02 F1
	.db $62, $91, $00		; 62 91 00
	brk $E0.b		; 00 E0
	cpx #$7878.w		; E0 78 78
	ldy $9CBC.w,X		; BC BC 9C
	stz $8E8E.w		; 9C 8E 8E
	ldx $6EAE.w		; AE AE 6E
	ror $1034.w		; 6E 34 10
	bit $18.b,X		; 34 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	iny		; C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $10.b		; 00 10
	php		; 08
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	lsr $18.b		; 46 18
	lsr $18.b		; 46 18
	mvp $64,$20		; 44 20 64
	sec		; 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $F478.w,X		; BC 78 F4
	sei		; 78
	bit $3C04.w,X		; 3C 04 3C
	tsb $38.b		; 04 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	sei		; 78
	brk $90.b		; 00 90
	rts		; 60

	rts		; 60

	bcc -112.b		; 90 90
	rts		; 60

	beq   0.b		; F0 00
	clv		; B8
	bvs  -8.b		; 70 F8
	brk $F8.b		; 00 F8
	bcs -24.b		; B0 E8
	bvc  96.b		; 50 60
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	sec		; 38
	rti		; 40

	clc		; 18
	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	beq -128.b		; F0 80
	bvc  32.b		; 50 20
	tya		; 98
	bvs -104.b		; 70 98
	beq  88.b		; F0 58
	rts		; 60

	brk $30.b		; 00 30
	rts		; 60

	brk $60.b		; 00 60
	brk $80.b		; 00 80
	bpl   0.b		; 10 00
	bcc  64.b		; 90 40
	cli		; 58
	bvc  88.b		; 50 58
	bra  24.b		; 80 18
	cpx #$F020.w		; E0 20 F0
	rts		; 60

	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $006000.l,X		; FF 00 60 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $E6.b		; 00 E6
	jsr ($9816.w,X)		; FC 16 98
	rti		; 40

	cpy $EC28.w		; CC 28 EC
	jsr $0064.w		; 20 64 00
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  20.b		; 30 14
	asl $E0.b,X		; 16 E0
	stx $38.b		; 86 38
	php		; 08
	bvc  64.b		; 50 40
	clc		; 18
	brk $3C.b		; 00 3C
	bit $08.b		; 24 08
	brk $08.b		; 00 08
	brk $0F.b		; 00 0F
	rol $1F.b,X		; 36 1F
	rol $1E2F.w		; 2E 2F 1E
	and $3D1E.w,X		; 3D 1E 3D
	asl $1C3E.w,X		; 1E 3E 1C
	dec A		; 3A
	trb $1C3A.w		; 1C 3A 1C
	asl $16.b,X		; 16 16
	asl $08.b		; 06 08
	asl $1E10.w		; 0E 10 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $17.b		; 00 17
	ora $2B0F1E.l		; 0F 1E 0F 2B
	inc A		; 1A
	and $16.b,X		; 35 16
	.db $42, $24		; 42 24
	jmp ($5428.w)		; 6C 28 54
	clc		; 18
	dey		; 88
	bvc   2.b		; 50 02
	ora $000F.w		; 0D 0F 00
	inc A		; 1A
	tsb $16.b		; 04 16
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  24.b		; 10 18
	jsr $2050.w		; 20 50 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora #$2070.w		; 09 70 20
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7F7F1F.l,X		; 1F 1F 7F 7F
	brk $70.b		; 00 70
	rti		; 40

	dey		; 88
	plp		; 28
	sty $30.b,X		; 94 30
	stz $9A74.w		; 9C 74 9A
	stz $9A.b		; 64 9A
	rti		; 40

	lda $007088.l,X		; BF 88 70 00
	brk $70.b		; 00 70
	bvs 104.b		; 70 68
	sei		; 78
	rti		; 40

	sei		; 78
	mvn $5C,$7C		; 54 7C 5C
	stz $70.b		; 64 70
	rti		; 40

	sta $070E8F.l		; 8F 8F 0E 07
	ora $060F06.l		; 0F 06 0F 06
	ora $0B06.w		; 0D 06 0B
	asl $0F.b		; 06 0F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	brk $06.b		; 00 06
	ora $020F06.l		; 0F 06 0F 02
	ora $000F00.l		; 0F 00 0F 00
	ora $030F03.l		; 0F 03 0F 03
	ora $BE0F00.l		; 0F 00 0F BE
	inc A		; 1A
	ldx $6E8A.w		; AE 8A 6E
	rol A		; 2A
	dec $FF0A.w		; CE 0A FF
	brk $A3.b		; 00 A3
	and [$A0.b],Y		; 37 A0
	rol $E1.b,X		; 36 E1
	and ($1A.b,S),Y		; 33 1A
	cmp ($8A.b,X)		; C1 8A
	eor ($2A.b),Y		; 51 2A
	sta ($0A.b),Y		; 91 0A
	and ($00.b),Y		; 31 00
	bra  64.b		; 80 40
	bra  67.b		; 80 43
	.db $82, $40, $80		; 82 40 80
	jsr $20D2.w		; 20 D2 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $09.b,X		; 74 09
	bit $03.b,X		; 34 03
	ora $0601.w		; 0D 01 06
	brk $04.b		; 00 04
	bit $2C2C.w		; 2C 2C 2C
	bit $2C2C.w		; 2C 2C 2C
	plp		; 28
	plp		; 28
	php		; 08
	ora #$0300.w		; 09 00 03
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	ora [$1A.b]		; 07 1A
	ora $08.b,S		; 03 08
	adc [$0C.b],Y		; 77 0C
	stz $E616.w,X		; 9E 16 E6
	and $BA.b,S		; 23 BA
	cpy $FF.b		; C4 FF
	cli		; 58
	adc $18.b,X		; 75 18
	asl $070A.w		; 0E 0A 07
	brk $03.b		; 00 03
	brk $11.b		; 00 11
	rts		; 60

	and ($99.b,X)		; 21 99
	sty $C1.b		; 84 C1
	clc		; 18
	cpy #$429A.w		; C0 9A 42
	cpx $F003.w		; EC 03 F0
	ora $80.b		; 05 80
	adc #$7100.w		; 69 00 71
	brk $E1.b		; 00 E1
	sbc ($02.b,X)		; E1 02
	sep #$C5		; E2 C5
	rts		; 60

	cmp [$70.b]		; C7 70
	brk $F8.b		; 00 F8
	brk $D0.b		; 00 D0
	rti		; 40

	cpx #$8060.w		; E0 60 80
	bra   1.b		; 80 01
	ora ($C2.b,X)		; 01 C2
	cop $C0.b		; 02 C0
	brk $62.b		; 00 62
	sta ($E2.b),Y		; 91 E2
	ora ($C0.b),Y		; 11 C0
	and ($D4.b,S),Y		; 33 D4
	jsl $306688.l		; 22 88 66 30
	cpy $B840.w		; CC 40 B8
	brk $E0.b		; 00 E0
	inc $EEEE.w		; EE EE EE
	inc $EEEE.w		; EE EE EE
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$B8B8]		; DC B8 B8
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $13.b		; 04 13
	asl A		; 0A
	and $0E.b		; 25 0E
	and $3E.b		; 25 3E
	eor $24.b		; 45 24
	phx		; DA
	rti		; 40

	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	asl $1A0E.w		; 0E 0E 1A
	asl $1E12.w,X		; 1E 12 1E
	rol $3E.b,X		; 36 3E
	bit $CC24.w,X		; 3C 24 CC
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	clc		; 18
	bpl  32.b		; 10 20
	jsl $470841.l		; 22 41 08 47
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	sec		; 38
	sec		; 38
	bit $92.b		; 24 92
	bmi -102.b		; 30 9A
	adc ($99.b)		; 72 99
	stz $9B.b		; 64 9B
	lda ($5E.b,X)		; A1 5E
	eor $39.b		; 45 39
	php		; 08
	beq -96.b		; F0 A0
	trb $4C.b		; 14 4C
	jmp ($7C54.w,X)		; 7C 54 7C
	lsr $7E.b		; 46 7E
	jmp ($B964.w,X)		; 7C 64 B9
	lda ($D7.b,X)		; A1 D7
	cmp [$0F.b],Y		; D7 0F
	ora $65EFEF.l		; 0F EF EF 65
	tya		; 98
	and $D8.b		; 25 D8
	rol $49.b,X		; 36 49
	rol $49.b,X		; 36 49
	bit $5B.b		; 24 5B
	jsr $405E.w		; 20 5E 40
	clv		; B8
	brk $E0.b		; 00 E0
	adc $77776F.l		; 6F 6F 77 77
	and [$37.b],Y		; 37 37
	rol $36.b,X		; 36 36
	rol $36.b,X		; 36 36
	plp		; 28
	plp		; 28
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	sbc $51.b,X		; F5 51
	adc $3905.w		; 6D 05 39
	eor ($3F.b,X)		; 41 3F
	bvs  52.b		; 70 34
	ror $34.b		; 66 34
	ror $18.b		; 66 18
	.db $62, $18, $62		; 62 18 62
	eor ($0A.b),Y		; 51 0A
	ora $12.b		; 05 12
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	clc		; 18
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	jsr $203C.w		; 20 3C 20
	dec $4C.b,X		; D6 4C
	jmp.w [$C850]		; DC 50 C8
	mvp $0C,$F0		; 44 F0 0C
	sec		; 38
	inc $6624.w,X		; FE 24 66
	brk $63.b		; 00 63
	ora ($33.b)		; 12 33
	jmp $5020.w		; 4C 20 50
	jsr $3040.w		; 20 40 30
	php		; 08
	php		; 08
	mvp $18,$44		; 44 44 18
	brk $3E.b		; 00 3E
	jsl $08000C.l		; 22 0C 00 08
	jsl $1C3210.l		; 22 10 32 1C
	and ($3E.b)		; 32 3E
	tsb $3C5E.w		; 0C 5E 3C
	ply		; 7A
	bit $48CC.w,X		; 3C CC 48
	trb $98.b		; 14 98
	trb $0C00.w		; 1C 00 0C
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $3408.w		; 0C 08 34
	bit $4800.w,X		; 3C 00 48
	bmi -104.b		; 30 98
	rts		; 60

	cpy #$E030.w		; C0 30 E0
	sed		; F8
	bcc -104.b		; 90 98
	brk $8C.b		; 00 8C
	pha		; 48
	cpy $6620.w		; CC 20 66
	tsb $66.b		; 04 66
	ora [$30.b],Y		; 17 30
	jsr $1020.w		; 20 20 10
	bpl  96.b		; 10 60
	brk $F8.b		; 00 F8
	dey		; 88
	bmi   0.b		; 30 00
	trb $3804.w		; 1C 04 38
	jsr $0008.w		; 20 08 00
	bit $10.b,X		; 34 10
	bit $18.b,X		; 34 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	iny		; C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $10.b		; 00 10
	php		; 08
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	jmp ($5C3E.w)		; 6C 3E 5C
	lsr $7A3C.w,X		; 5E 3C 7A
	bit $78BC.w,X		; 3C BC 78
	ldy $78.b,X		; B4 78
	sed		; F8
	bvs -24.b		; 70 E8
	bvs  44.b		; 70 2C
	bit $100C.w		; 2C 0C 10
	trb $3C20.w		; 1C 20 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $E8.b		; 00 E8
	bvs -16.b		; 70 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $007000.l,X		; FF 00 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $CF.b		; 00 CF
	mvp $06,$F9		; 44 F9 06
	adc $1F2B38.l,X		; 7F 38 2B 1F
	tas		; 1B
	ora [$0F.b]		; 07 0F
	brk $0F.b		; 00 0F
	cop $0D.b		; 02 0D
	asl $44.b		; 06 44
	and ($06.b,S),Y		; 33 06
	ora ($10.b,X)		; 01 10
	adc $013F03.l,X		; 7F 03 3F 01
	ora $020700.l,X		; 1F 00 07 02
	brk $06.b		; 00 06
	brk $CE.b		; 00 CE
	and ($FB.b),Y		; 31 FB
	sty $3EFD.w		; 8C FD 3E
	sbc $2AFF5C.l,X		; FF 5C FF 2A
	sbc $8ABF55.l,X		; FF 55 BF 8A
	adc $3134.w,X		; 7D 34 31
	bra   0.b		; 80 00
	sty $FF18.w		; 8C 18 FF
	php		; 08
	sbc $55BE20.l,X		; FF 20 BE 55
	stz $488A.w		; 9C 8A 48
	bit $82.b,X		; 34 82
	rti		; 40

	bra -64.b		; 80 C0
	brk $8C.b		; 00 8C
	brk $FE.b		; 00 FE
	sty $AC7E.w		; 8C 7E AC
	nop		; EA
	jmp ($80FC.w,X)		; 7C FC 80
	cpx #$80C0.w		; E0 C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $3E84.w		; 0C 84 3E
	sty $203E.w		; 8C 3E 20
	ror $3C80.w,X		; 7E 80 3C
	cpy #$0B00.w		; C0 00 0B
	ora [$0F.b]		; 07 0F
	ora [$19.b]		; 07 19
	ora #$1322.w		; 09 22 13
	and $16.b,X		; 35 16
	lsr A		; 4A
	bit $2864.w		; 2C 64 28
	dey		; 88
	bvc   1.b		; 50 01
	asl $07.b		; 06 07
	brk $09.b		; 00 09
	asl $13.b		; 06 13
	tsb $0816.w		; 0C 16 08
	bit $2810.w		; 2C 10 28
	bpl  80.b		; 10 50
	jsr $C000.w		; 20 00 C0
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	rti		; 40

	jsr $2040.w		; 20 40 20
	rti		; 40

	jsr $6080.w		; 20 80 60
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$8080.w		; C0 80 80
	brk $F0.b		; 00 F0
	jsr $089C.w		; 20 9C 08
	stx $84.b		; 86 84
	eor $C2.b,S		; 43 C2
	and ($41.b,X)		; 21 41
	bcs  73.b		; B0 49
	bcs  36.b		; B0 24
	cld		; D8
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp ($BE7C.w,X)		; 7C 7C BE
	ldx $FFFF.w,Y		; BE FF FF
	cmp $4F4FCF.l		; CF CF 4F 4F
	and [$37.b],Y		; 37 37
	cop $9C.b		; 02 9C
	trb $A8.b		; 14 A8
	and ($D8.b,X)		; 21 D8
	plp		; 28
	cmp ($42.b),Y		; D1 42
	lda ($50.b),Y		; B1 50
	lda $10.b,S		; A3 10
.INDEX 8
	sep #$14		; E2 14
	.db $62, $63, $63		; 62 63 63
	eor [$57.b],Y		; 57 57
	and $2F2F2F.l		; 2F 2F 2F 2F
	lsr $5E5E.w,X		; 5E 5E 5E
	lsr $5C5C.w,X		; 5E 5C 5C
	trb JOY3L.w		; 1C 1C 42
	bit $89.b,X		; 34 89
	ror $00.b,X		; 76 00
	cmp $049401.l,X		; DF 01 94 04
	ora ($0F.b),Y		; 11 0F
	trb $0C01.w		; 1C 01 0C
	brk $02.b		; 00 02
	xba		; EB
	xba		; EB
	stp		; DB
	stp		; DB
	bra -128.b		; 80 80
	asl $0F04.w		; 0E 04 0F
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	cop $11.b		; 02 11
	trb $21.b		; 14 21
	trb $1A25.w		; 1C 25 1A
	and $02.b		; 25 02
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1A0E.w		; 0E 0E 1A
	asl $1E16.w,X		; 1E 16 1E
	ora ($1E.b)		; 12 1E
	asl $0A02.w		; 0E 02 0A
	bpl  14.b		; 10 0E
	ora ($0D.b)		; 12 0D
	ora ($01.b)		; 12 01
	inc $0F10.w,X		; FE 10 0F
	tsb $03.b		; 04 03
.ACCU 8
	sep #$E2		; E2 E2
	eor #$55.b		; 49 55
	ora $0B0F.w		; 0D 0F 0B
	ora $070F09.l		; 0F 09 0F 07
	ora ($F3.b,X)		; 01 F3
	sbc ($FC.b),Y		; F1 FC
	jsr ($FFFF.w,X)		; FC FF FF
	xba		; EB
	xba		; EB
	ora $BF.b		; 05 BF
	mvp $11,$AE		; 44 AE 11
	inc $F4.b		; E6 F4
	phd		; 0B
	pei ($A3.b)		; D4 A3
	jsr ($D802.w,X)		; FC 02 D8
	cop $E4.b		; 02 E4
	asl $C9.b,X		; 16 C9
	cmp #$51.b		; C9 51
	eor ($9D.b,X)		; 41 9D
	sta $19.b		; 85 19
	ora #$98.b		; 09 98
	ldx #$98.b		; A2 98
	brk $FC.b		; 00 FC
	brk $E8.b		; 00 E8
	brk $0C.b		; 00 0C
	adc ($06.b)		; 72 06
	and $0F00.w,Y		; 39 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	trb $0E1C.w		; 1C 1C 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora #$01.b		; 09 01
	asl $3B82.w,X		; 1E 82 3B
	trb $4917.w		; 1C 17 49
	and $1D4685.l		; 2F 85 46 1D
	cmp $6E.b,X		; D5 6E
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	cop $19.b		; 02 19
	php		; 08
	bit $1C21.w,X		; 3C 21 1C
	adc ($0C.b),Y		; 71 0C
	sbc $0C.b		; E5 0C
	brk $1E.b		; 00 1E
	clv		; B8
	sty $78C4.w		; 8C C4 78
	ror $AE2C.w,X		; 7E 2C AE
	rti		; 40

	inc $568C.w,X		; FE 8C 56
	sty $8C72.w		; 8C 72 8C
	ldy $7050.w		; AC 50 70
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	bra  64.b		; 80 40
	bpl -116.b		; 10 8C
	brk $AC.b		; 00 AC
	jsr $20AC.w		; 20 AC 20
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $18.b		; 05 18
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $E0001F.l,X		; 1F 1F 00 E0
	brk $18.b		; 00 18
	pha		; 48
	bit $60.b		; 24 60
	bit $E4.b,X		; 34 E4
	and ($C8.b)		; 32 C8
	and [$42.b],Y		; 37 42
	ldy $728A.w,X		; BC 8A 72
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	tya		; 98
	sed		; F8
	tay		; A8
	sed		; F8
	sty $F8FC.w		; 8C FC F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	lda $8D28AF.l		; AF AF 28 8D
	sec		; 38
	sty $8C30.w		; 8C 30 8C
	bmi -116.b		; 30 8C
	bmi -120.b		; 30 88
	rti		; 40

	iny		; C8
	bvs -56.b		; 70 C8
	sed		; F8
	bmi 112.b		; 30 70
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	bpl -104.b		; 10 98
	rti		; 40

	cpy $EC28.w		; CC 28 EC
	jsr $0064.w		; 20 64 00
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $E0.b,X		; 36 E0
	bra  56.b		; 80 38
	php		; 08
	bvc  64.b		; 50 40
	clc		; 18
	brk $3C.b		; 00 3C
	bit $08.b		; 24 08
	brk $08.b		; 00 08
	brk $16.b		; 00 16
	asl $FC.b,X		; 16 FC
	tay		; A8
	dec $D64C.w,X		; DE 4C D6
	jmp $50DC.w		; 4C DC 50
	iny		; C8
	mvp $0C,$F0		; 44 F0 0C
	bvs  -4.b		; 70 FC
	php		; 08
	cpy $80A8.w		; CC A8 80
	jmp $4C20.w		; 4C 20 4C
	jsr $2050.w		; 20 50 20
	rti		; 40

	bmi   8.b		; 30 08
	php		; 08
	php		; 08
	php		; 08
	bvs  64.b		; 70 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $0E.b		; 00 0E
	cop $11.b		; 02 11
	trb $21.b		; 14 21
	trb $1A25.w		; 1C 25 1A
	and $02.b		; 25 02
	sbc $1F20.w,X		; FD 20 1F
	php		; 08
	ora [$00.b]		; 07 00
	brk $0E.b		; 00 0E
	asl $1E1A.w		; 0E 1A 1E
	asl $1E.b,X		; 16 1E
	ora ($1E.b)		; 12 1E
	asl $E602.w		; 0E 02 E6
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sed		; F8
	cpy $C5.b		; C4 C5
	sta ($AA.b,S),Y		; 93 AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	jsl $17E8CD.l		; 22 CD E8 17
	tay		; A8
	lsr $F8.b		; 46 F8
	tsb $FE.b		; 04 FE
	inc $D7D7.w,X		; FE D7 D7
	sta ($93.b,S),Y		; 93 93
	lda $83.b,S		; A3 83
	dec A		; 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	bmi   0.b		; 30 00
	bvc -94.b		; 50 A2
	clc		; 18
	sep #$08		; E2 08
	adc ($06.b)		; 72 06
	and $0F00.w,Y		; 39 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $5C5C5C.l		; 5C 5C 5C 5C
	trb $0E1C.w		; 1C 1C 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $18.b,S		; 03 18
	ora ($04.b,X)		; 01 04
	ora $021301.l		; 0F 01 13 02
	bit $7784.w,X		; 3C 84 77
	sec		; 38
	and $935E8B.l,X		; 3F 8B 5E 93
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cop $0C.b		; 02 0C
	tsb $33.b		; 04 33
	bpl 120.b		; 10 78
	eor $38.b,S		; 43 38
	adc $08.b,S		; 63 08
	bcs   4.b		; B0 04
	iny		; C8
	bit $1870.w		; 2C 70 18
	dey		; 88
	beq  -4.b		; F0 FC
	eor $815C.w,Y		; 59 5C 81
	jsr ($AC18.w,X)		; FC 18 AC
	clc		; 18
	sed		; F8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $80.b		; 00 80
	jsr $0018.w		; 20 18 00
	cli		; 58
	rti		; 40

	brk $E0.b		; 00 E0
	rti		; 40

	sec		; 38
	bpl  12.b		; 10 0C
	php		; 08
	stx $84.b		; 86 84
	.db $42, $A4		; 42 A4
	eor $92.b,S		; 43 92
	adc ($0A.b,X)		; 61 0A
	sbc ($00.b),Y		; F1 00
	brk $E0.b		; 00 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	jmp ($FC7C.w,X)		; 7C 7C FC
	jsr ($BEBE.w,X)		; FC BE BE
	stz $5E9E.w,X		; 9E 9E 5E
	lsr $B14A.w,X		; 5E 4A B1
	ror $6C91.w		; 6E 91 6C
	sta ($6C.b,S),Y		; 93 6C
	sta ($68.b)		; 92 68
	stx $40.b,Y		; 96 40
	ldy $7880.w,X		; BC 80 78
	brk $C0.b		; 00 C0
	ror $6E6E.w		; 6E 6E 6E
	ror $6E6E.w		; 6E 6E 6E
	jmp ($6C6C.w)		; 6C 6C 6C
	jmp ($5858.w)		; 6C 58 58
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	tsb $02.b		; 04 02
	asl $02.b		; 06 02
	ora $01.b		; 05 01
	php		; 08
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	cop $05.b		; 02 05
	cop $FB.b		; 02 FB
	plp		; 28
	cmp [$63.b],Y		; D7 63
	sbc $51.b,X		; F5 51
	adc $3905.w		; 6D 05 39
	eor ($3F.b,X)		; 41 3F
	bvs  52.b		; 70 34
	ror $14.b		; 66 14
	lsr $28.b		; 46 28
	tsb $63.b		; 04 63
	php		; 08
	eor ($0A.b),Y		; 51 0A
	ora $12.b		; 05 12
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	clc		; 18
	brk $38.b		; 00 38
	brk $34.b		; 00 34
	bpl  52.b		; 10 34
	clc		; 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	iny		; C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $10.b		; 00 10
	php		; 08
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	eor $10.b,S		; 43 10
	sta $54942A.l		; 8F 2A 94 54
	plp		; 28
	and ($58.b,X)		; 21 58
	tay		; A8
	eor ($42.b),Y		; 51 42
	lda ($50.b),Y		; B1 50
	lda $3E.b,S		; A3 3E
	rol $7171.w,X		; 3E 71 71
	rtl		; 6B

	rtl		; 6B

	cmp [$D7.b],Y		; D7 D7
	lda $AEAEAF.l		; AF AF AE AE
	lsr $5E5E.w,X		; 5E 5E 5E
	lsr $E111.w,X		; 5E 11 E1
	rti		; 40

	plp		; 28
	sty $69.b		; 84 69
	ora ($ED.b)		; 12 ED
	brk $BF.b		; 00 BF
	ora $28.b,S		; 03 28
	ora #$23.b		; 09 23
	ora $1F1F38.l,X		; 1F 38 1F 1F
	cmp $D7D7DF.l,X		; DF DF D7 D7
	rol $36.b,X		; 36 36
	ora ($01.b,X)		; 01 01
	trb $1F08.w		; 1C 08 1F
	ora $07.b,S		; 03 07
	brk $78.b		; 00 78
	beq -24.b		; F0 E8
	beq -80.b		; F0 B0
	ldy #$50.b		; A0 50
	rts		; 60

	jsr $C040.w		; 20 40 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $20.b		; 00 20
	bne -16.b		; D0 F0
	brk $A0.b		; 00 A0
	rti		; 40

	rts		; 60

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	rol $1E2F.w		; 2E 2F 1E
	and $3D1E.w,X		; 3D 1E 3D
	asl $1C3E.w,X		; 1E 3E 1C
	dec A		; 3A
	trb $1C3A.w		; 1C 3A 1C
	bit $0618.w,X		; 3C 18 06
	php		; 08
	asl $1E10.w		; 0E 10 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $F0.b		; 00 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	ror $01.b		; 66 01
	eor $DF0877.l		; 4F 77 08 DF
	lsr $F7.b		; 46 F7
	lsr $3EF5.w,X		; 5E F5 3E
	adc $152B00.l,X		; 7F 00 2B 15
	clc		; 18
	cop $30.b		; 02 30
	ora [$00.b]		; 07 00
	asl $42.b		; 06 42
	and $103F46.l,X		; 3F 46 3F 10
	and $157E00.l,X		; 3F 00 7E 15
	brk $39.b		; 00 39
	dec $D6.b		; C6 D6
	and #$39.b		; 29 39
	dec $EF.b		; C6 EF
	bmi -11.b		; 30 F5
	sed		; F8
	sbc $A9FE71.l,X		; FF 71 FE A9
	sbc $10D654.l,X		; FF 54 D6 10
	plp		; 28
	brk $C6.b		; 00 C6
	brk $00.b		; 00 00
	bmi  98.b		; 30 62
	jsr ($FC21.w,X)		; FC 21 FC
	sta ($F8.b,X)		; 81 F8
	mvn $00,$70		; 54 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	brk $FF.b		; 00 FF
	stx $BF.b		; 86 BF
	ror $B5.b,X		; 76 B5
	ror $00FE.w,X		; 7E FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	.db $82, $3F, $06		; 82 3F 06
	adc $007F10.l,X		; 7F 10 7F 00
	inc $DB74.w,X		; FE 74 DB
	plb		; AB
	trb $134C.w		; 1C 4C 13
	lda [$08.b],Y		; B7 08
	sbc $2DD743.l,X		; FF 43 D7 2D
	sbc $55AF02.l,X		; FF 02 AF 55
	and $00.b,S		; 23 00
	rts		; 60

	tsb $8823.w		; 0C 23 88
	brk $58.b		; 00 58
	eor ($1F.b,X)		; 41 1F
	jsr $029F.w		; 20 9F 02
	ora $55.b,S		; 03 55
	ora ($E4.b,X)		; 01 E4
	clc		; 18
	cli		; 58
	ldy #$E6.b		; A0 E6
	clc		; 18
	lda $E5DFC2.l,X		; BF C2 DF E5
	xce		; FB
	cmp $F7.b		; C5 F7
	ldy #$F8.b		; A0 F8
	bvc  88.b		; 50 58
	rti		; 40

	ldy #$00.b		; A0 00
	clc		; 18
	brk $02.b		; 00 02
	cpy #$84.b		; C0 84
	sbc ($84.b),Y		; F1 84
	sbc ($00.b),Y		; F1 00
	sbc $50.b,S		; E3 50
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$03.b]		; 07 03
	trb $3008.w		; 1C 08 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $E0001F.l,X		; 1F 1F 00 E0
	brk $18.b		; 00 18
	pha		; 48
	bit $60.b		; 24 60
	bit $E4.b,X		; 34 E4
	and ($C8.b)		; 32 C8
	and [$42.b],Y		; 37 42
	ldy $728A.w,X		; BC 8A 72
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	tya		; 98
	sed		; F8
	tay		; A8
	sed		; F8
	sty $F8FC.w		; 8C FC F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	lda $1E2FAF.l		; AF AF 2F 1E
	and $3D1E.w,X		; 3D 1E 3D
	asl $1C3E.w,X		; 1E 3E 1C
	rol $2E1C.w		; 2E 1C 2E
	trb $0C1E.w		; 1C 1E 0C
	asl $0E0C.w,X		; 1E 0C 0E
	bpl  30.b		; 10 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	bmi  -8.b		; 30 F8
	bmi -40.b		; 30 D8
	bcs  48.b		; B0 30
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	sei		; 78
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	php		; 08
	cpy $6420.w		; CC 20 64
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $4070.w		; 2E 70 40
	clc		; 18
	brk $1C.b		; 00 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $16.b		; 00 16
	asl $06.b,X		; 16 06
	php		; 08
	brk $0E.b		; 00 0E
	cop $11.b		; 02 11
	trb $21.b		; 14 21
	trb $1A25.w		; 1C 25 1A
	and $02.b		; 25 02
	sbc $1F20.w,X		; FD 20 1F
	php		; 08
	ora [$00.b]		; 07 00
	brk $0E.b		; 00 0E
	asl $1E1A.w		; 0E 1A 1E
	asl $1E.b,X		; 16 1E
	ora ($1E.b)		; 12 1E
	asl $E602.w		; 0E 02 E6
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sed		; F8
	cpy $C5.b		; C4 C5
	sta ($AA.b,S),Y		; 93 AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	jsl $17E8CD.l		; 22 CD E8 17
	tay		; A8
	eor [$F8.b]		; 47 F8
	ora $FE.b		; 05 FE
	inc $D7D7.w,X		; FE D7 D7
	sta ($93.b,S),Y		; 93 93
	lda $83.b,S		; A3 83
	dec A		; 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	bmi   0.b		; 30 00
	jsl $710A51.l		; 22 51 0A 71
	tsb $39.b		; 04 39
	ora $1C.b,S		; 03 1C
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $2E2E.w		; 2E 2E 2E
	rol $0E0E.w		; 2E 0E 0E
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $18.b,S		; 03 18
	ora ($04.b,X)		; 01 04
	ora $821301.l		; 0F 01 13 82
	bit $77C4.w,X		; 3C C4 77
	sec		; 38
	and $430E4B.l,X		; 3F 4B 0E 43
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cop $0C.b		; 02 0C
	tsb $33.b		; 04 33
	bpl 120.b		; 10 78
	ora $38.b,S		; 03 38
	and ($08.b,S),Y		; 33 08
	bcs   5.b		; B0 05
	iny		; C8
	and $1970.w		; 2D 70 19
	dey		; 88
	sbc ($FD.b),Y		; F1 FD
	phy		; 5A
	jmp $18FC83.l		; 5C 83 FC 18
	ldy $F818.w		; AC 18 F8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora ($80.b,X)		; 01 80
	jsr $0018.w		; 20 18 00
	cli		; 58
	rti		; 40

	asl $00.b		; 06 00
	ora $060F06.l		; 0F 06 0F 06
	phd		; 0B
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $000F02.l		; 0F 02 0F 00
	ora $000700.l		; 0F 00 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bmi   0.b		; 30 00
	clc		; 18
	brk $8C.b		; 00 8C
	dey		; 88
	mvp $46,$80		; 44 80 46
	ldy $42.b		; A4 42
	trb $E2.b		; 14 E2
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	sed		; F8
	sed		; F8
	ldy $BCBC.w,X		; BC BC BC
	ldy $5C5C.w,X		; BC 5C 5C
	pei ($22.b)		; D4 22
	jmp.w [$D822]		; DC 22 D8
	rol $D8.b		; 26 D8
	bit $90.b		; 24 90
	jmp ($7880.w)		; 6C 80 78
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$DCDC]		; DC DC DC
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	bcs -80.b		; B0 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1A0C.w,X		; 1E 0C 1A
	tsb $182C.w		; 0C 2C 18
	bit $10.b,X		; 34 10
	stz $20.b		; 64 20
	stz $20.b		; 64 20
	jmp ($3C38.w,X)		; 7C 38 3C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	php		; 08
	jsr $2018.w		; 20 18 20
	clc		; 18
	sec		; 38
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	plp		; 28
	cmp [$63.b],Y		; D7 63
	sbc $51.b,X		; F5 51
	adc $3905.w		; 6D 05 39
	eor ($3F.b,X)		; 41 3F
	bvs  52.b		; 70 34
	ror $14.b		; 66 14
	lsr $28.b		; 46 28
	tsb $63.b		; 04 63
	php		; 08
	eor ($0A.b),Y		; 51 0A
	ora $12.b		; 05 12
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	clc		; 18
	brk $38.b		; 00 38
	brk $FC.b		; 00 FC
	tay		; A8
	dec $D64C.w,X		; DE 4C D6
	jmp $50DC.w		; 4C DC 50
	iny		; C8
	mvp $0C,$F0		; 44 F0 0C
	bvs  -4.b		; 70 FC
	pha		; 48
	cpy $80A8.w		; CC A8 80
	jmp $4C20.w		; 4C 20 4C
	jsr $2050.w		; 20 50 20
	rti		; 40

	bmi   8.b		; 30 08
	php		; 08
	php		; 08
	php		; 08
	bmi   0.b		; 30 00
	and ($40.b,X)		; 21 40
	tsb $43.b		; 04 43
	bpl -114.b		; 10 8E
	rol A		; 2A
	sty $15.b,X		; 94 15
	tay		; A8
	eor ($A8.b),Y		; 51 A8
	plp		; 28
	cmp ($22.b),Y		; D1 22
	cmp ($3F.b),Y		; D1 3F
	and $713C3C.l,X		; 3F 3C 3C 71
	adc ($6B.b),Y		; 71 6B
	rtl		; 6B

	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	and $2E2E2F.l		; 2F 2F 2E 2E
	ora ($E1.b),Y		; 11 E1
	rti		; 40

	plp		; 28
	sty $69.b		; 84 69
	sta ($6D.b)		; 92 6D
	brk $FF.b		; 00 FF
	ora $A8.b,S		; 03 A8
	ora #$A3.b		; 09 A3
	ora $1F1F38.l,X		; 1F 38 1F 1F
	cmp $D7D7DF.l,X		; DF DF D7 D7
	ldx $B6.b,Y		; B6 B6
	ora ($01.b,X)		; 01 01
	trb $1F08.w		; 1C 08 1F
	ora $07.b,S		; 03 07
	brk $F0.b		; 00 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	trb $3456.w		; 1C 56 34
	.db $62, $24, $6C		; 62 24 6C
	plp		; 28
	sty $48.b		; 84 48
	tya		; 98
	bvc -56.b		; 50 C8
	bvc -48.b		; 50 D0
	rti		; 40

	trb $3400.w		; 1C 00 34
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  72.b		; 10 48
	bmi  80.b		; 30 50
	jsr $2050.w		; 20 50 20
	rti		; 40

	jsr $230E.w		; 20 0E 23
	tsb $1823.w		; 0C 23 18
	jsl $202218.l		; 22 18 22 20
	stz $38.b		; 64 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $1C78.w,X		; BC 78 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $0C.b,S		; 03 0C
	php		; 08
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0F.b]		; 07 0F
	ora $00E000.l		; 0F 00 E0 00
	clc		; 18
	cli		; 58
	bit $6C.b		; 24 6C
	and ($74.b)		; 32 74
	tas		; 1B
	.db $62, $9C, $85		; 62 9C 85
	adc $330B.w,Y		; 79 0B 33
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	tya		; 98
	sed		; F8
	sty $D4FC.w		; 8C FC D4
	jsr ($635B.w,X)		; FC 5B 63
	lda [$A7.b],Y		; B7 A7
	cmp $220CCF.l		; CF CF 0C 22
	trb $4A.b		; 14 4A
	trb $204A.w		; 1C 4A 20
	lsr $FF00.w,X		; 5E 00 FF
	eor ($49.b)		; 52 49
	sta $84.b		; 85 84
	ora ($2A.b)		; 12 2A
	trb $1C.b		; 14 1C
	bit $3C.b		; 24 3C
	bit $3C.b		; 24 3C
	bit $0824.w,X		; 3C 24 08
	brk $F6.b		; 00 F6
	inc $FF.b,X		; F6 FF
	sbc $00D7D7.l,X		; FF D7 D7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	clc		; 18
	php		; 08
	sty $20.b		; 84 20
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$78.b		; E0 78
	sei		; 78
	ldy $19BC.w,X		; BC BC 19
	ora #$19.b		; 09 19
	ora #$19.b		; 09 19
	ora #$11.b		; 09 11
	ora #$11.b		; 09 11
	ora #$09.b		; 09 09
	ora ($09.b,X)		; 01 09
	ora ($0D.b,X)		; 01 0D
	ora $09.b		; 05 09
	asl $09.b		; 06 09
	asl $09.b		; 06 09
	asl $09.b		; 06 09
	asl $09.b		; 06 09
	asl $01.b		; 06 01
	asl $01.b		; 06 01
	asl $05.b		; 06 05
	cop $A8.b		; 02 A8
	bvs -88.b		; 70 A8
	bvs -80.b		; 70 B0
	rts		; 60

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $6B.b		; 00 6B
	and ($7A.b),Y		; 31 7A
	plp		; 28
	rol $02.b,X		; 36 02
	trb $0F20.w		; 1C 20 0F
	sec		; 38
	phd		; 0B
	tsa		; 3B
	asl $0618.w		; 0E 18 06
	bpl  49.b		; 10 31
	tsb $28.b		; 04 28
	ora $02.b		; 05 02
	ora #$00.b		; 09 00
	ora $10.b,S		; 03 10
	bpl  20.b		; 10 14
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	brk $EF.b		; 00 EF
	ldx $EB.b		; A6 EB
	ldx $EE.b		; A6 EE
	tay		; A8
	cpx $A0.b		; E4 A0
	sed		; F8
	brk $30.b		; 00 30
	sed		; F8
	rti		; 40

	cld		; D8
	rti		; 40

	cld		; D8
	ldx $10.b		; A6 10
	ldx $10.b		; A6 10
	tay		; A8
	bpl -96.b		; 10 A0
	clc		; 18
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	trb $E2.b		; 14 E2
	tsb $72.b		; 04 72
	tsb $3B.b		; 04 3B
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	jmp $1C1C5C.l		; 5C 5C 1C 1C
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	asl $031C.w		; 0E 1C 03
	and [$05.b]		; 27 05
	adc $EF08.w,Y		; 79 08 EF
	bvs  95.b		; 70 5F
	pld		; 2B
	ldx $7403.w,Y		; BE 03 74
	phd		; 0B
	ora $04.b		; 05 04
	ora ($01.b,X)		; 01 01
	tsb $18.b		; 04 18
	php		; 08
	ror $20.b		; 66 20
	beq -125.b		; F0 83
	sei		; 78
	cmp $38.b,S		; C3 38
	sta $78.b,S		; 83 78
	rts		; 60

	bne -112.b		; D0 90
	rts		; 60

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  32.b		; F0 20
	bcs  64.b		; B0 40
	beq  96.b		; F0 60
	rts		; 60

	bra  64.b		; 80 40
	cpx #$00.b		; E0 00
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bmi  64.b		; 30 40
	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda ($32.b,X)		; A1 32
	ora ($E2.b,X)		; 01 E2
	lda ($C5.b)		; B2 C5
	sed		; F8
	lda [$BE.b],Y		; B7 BE
	ora $FC.b,S		; 03 FC
	clc		; 18
	lda $E41B.w		; AD 1B E4
	tas		; 1B
	cpy #$01.b		; C0 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	bmi   0.b		; 30 00
	brk $40.b		; 00 40
	tas		; 1B
	brk $5A.b		; 00 5A
	.db $42, $58		; 42 58
	rti		; 40

	cli		; 58
	ldy #$E4.b		; A0 E4
	clc		; 18
	ldy $E8C0.w,X		; BC C0 E8
	beq  -8.b		; F0 F8
	cpx #$F8.b		; E0 F8
	bvc  -4.b		; 50 FC
	tay		; A8
	inc $A054.w,X		; FE 54 A0
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	sed		; F8
	rti		; 40

	sed		; F8
	brk $F0.b		; 00 F0
	tay		; A8
	cpx #$54.b		; E0 54
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
	ora ($20.b),Y		; 11 20
	tsb $23.b		; 04 23
	and #$46.b		; 29 46
	tsb $4A.b		; 04 4A
	asl A		; 0A
	mvn $54,$08		; 54 08 54
	trb $68.b		; 14 68
	ora $68.b,X		; 15 68
	ora $1C1C1F.l,X		; 1F 1F 1C 1C
	and $3539.w,Y		; 39 39 35
	and $2B.b,X		; 35 2B
	pld		; 2B
	pld		; 2B
	pld		; 2B
	ora [$17.b],Y		; 17 17
	ora [$17.b],Y		; 17 17
	brk $F1.b		; 00 F1
	ldy #$15.b		; A0 15
	asl A		; 0A
	and $43.b,X		; 35 43
	bit $5B89.w,X		; 3C 89 5B
	phd		; 0B
	cld		; D8
	ora ($8C.b,X)		; 01 8C
	brk $82.b		; 00 82
	and $EEEE2F.l		; 2F 2F EE EE
	phx		; DA
	phx		; DA
	cpy #$C0.b		; C0 C0
	sta [$83.b]		; 87 83
	sta [$80.b]		; 87 80
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	rol A		; 2A
	adc $224D88.l,X		; 7F 88 4D 22
	cmp $13EC.w		; CD EC 13
	tay		; A8
	eor [$FC.b]		; 47 FC
	cop $F8.b		; 02 F8
	cop $C4.b		; 02 C4
	rol $83.b,X		; 36 83
	sta $B2.b,S		; 83 B2
	.db $82, $BA, $8A		; 82 BA 8A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	bmi   0.b		; 30 00
	jsr ($E800.w,X)		; FC 00 E8
	jsr $6294.w		; 20 94 62
	bra 115.b		; 80 73
	txa		; 8A
	adc ($6A.b),Y		; 71 6A
	sta ($7A.b),Y		; 91 7A
	lda ($7C.b,X)		; A1 7C
	lda $8C.b,S		; A3 8C
	adc ($B8.b)		; 72 B8
	ror $9C.b,X		; 76 9C
	stz $9E9E.w		; 9C 9E 9E
	ldx $0EAE.w		; AE AE 0E
	ror $7E2E.w		; 6E 2E 7E
	asl $047E.w		; 0E 7E 04
	jsr ($FC14.w,X)		; FC 14 FC
	ora $0D05.w		; 0D 05 0D
	ora $17.b		; 05 17
	ora $0D0F17.l		; 0F 17 0F 0D
	ora $0C.b		; 05 0C
	ora $06.b		; 05 06
	cop $03.b		; 02 03
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $0F.b		; 02 0F
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	brk $B0.b		; 00 B0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	bcc  96.b		; 90 60
	cld		; D8
	bmi  -8.b		; 30 F8
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bpl  14.b		; 10 0E
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora [$0B.b]		; 07 0B
	ora $0F1707.l		; 0F 07 17 0F
	ora $000700.l		; 0F 00 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $05.b		; 02 05
	ora [$08.b]		; 07 08
	rti		; 40

	bne  64.b		; D0 40
	bne  64.b		; D0 40
	bne  96.b		; D0 60
	beq 120.b		; F0 78
	cpy #$F8.b		; C0 F8
	bmi -72.b		; 30 B8
	bvs -72.b		; 70 B8
	bvs  32.b		; 70 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bmi  48.b		; 30 30
	rti		; 40

	bvs   0.b		; 70 00
	ora $010B00.l		; 0F 00 0B 01
	asl $0705.w		; 0E 05 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	jmp ($E37C.w)		; 6C 7C E3
	lda [$68.b],Y		; B7 68
	sbc $364B01.l,X		; FF 01 4B 36
	adc $2A5701.l,X		; 7F 01 57 2A
	adc $6014.w,X		; 7D 14 60
	jsr ($F823.w,X)		; FC 23 F8
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	bmi  15.b		; 30 0F
	ora ($01.b,X)		; 01 01
	rol A		; 2A
	brk $14.b		; 00 14
	cop $32.b		; 02 32
	stx $72.b		; 86 72
	dec $5A.b		; C6 5A
	dec $1B.b		; C6 1B
	eor [$3B.b]		; 47 3B
	ror $3F.b		; 66 3F
	eor $3B7D.w,Y		; 59 7D 3B
	lda $797B.w,X		; BD 7B 79
	brk $39.b		; 00 39
	brk $39.b		; 00 39
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora $2A11.w,Y		; 19 11 2A
	tsa		; 3B
	rti		; 40

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1C.b,S		; 03 1C
	php		; 08
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $00E000.l,X		; 1F 00 E0 00
	clc		; 18
	pha		; 48
	bit $60.b		; 24 60
	bit $E4.b,X		; 34 E4
	and ($C8.b)		; 32 C8
	and [$42.b],Y		; 37 42
	ldy $728A.w,X		; BC 8A 72
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	tya		; 98
	sed		; F8
	tay		; A8
	sed		; F8
	sty $F8FC.w		; 8C FC F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	lda $0E00AF.l		; AF AF 00 0E
	cop $11.b		; 02 11
	trb $21.b		; 14 21
	trb $1A25.w		; 1C 25 1A
	and $02.b		; 25 02
	sbc $1F20.w,X		; FD 20 1F
	php		; 08
	ora [$00.b]		; 07 00
	brk $0E.b		; 00 0E
	asl $1E1A.w		; 0E 1A 1E
	asl $1E.b,X		; 16 1E
	ora ($1E.b)		; 12 1E
	asl $E602.w		; 0E 02 E6
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sed		; F8
	cpy $C5.b		; C4 C5
	sta ($AA.b,S),Y		; 93 AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	jsl $17E8CD.l		; 22 CD E8 17
	tay		; A8
	eor [$FF.b]		; 47 FF
	brk $FE.b		; 00 FE
	inc $D7D7.w,X		; FE D7 D7
	sta ($93.b,S),Y		; 93 93
	lda $83.b,S		; A3 83
	dec A		; 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	bmi   7.b		; 30 07
	jsl $710A51.l		; 22 51 0A 71
	tsb $39.b		; 04 39
	ora $1C.b,S		; 03 1C
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	rol $2E2E.w		; 2E 2E 2E
	rol $0E0E.w		; 2E 0E 0E
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $18.b,S		; 03 18
	ora ($04.b,X)		; 01 04
	ora $2603.w,X		; 1D 03 26
	sta $39.b		; 85 39
	iny		; C8
	inc $5F71.w		; EE 71 5F
	rol $BD.b,X		; 36 BD
	asl $07.b		; 06 07
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	ora $2608.w,Y		; 19 08 26
	and ($F0.b,X)		; 21 F0
	stx $70.b		; 86 70
	dec $30.b		; C6 30
	inc $8E07.w,X		; FE 07 8E
	adc #$71.b		; 69 71
	clc		; 18
	ora #$F0.b		; 09 F0
	sbc $FDB6.w,Y		; F9 B6 FD
	lsr $FB.b		; 46 FB
	and ($5D.b)		; 32 5D
	bit $F4.b,X		; 34 F4
	ora $E047D0.l		; 0F D0 47 E0
	ora ($00.b,X)		; 01 00
	ora ($30.b,X)		; 01 30
	ora ($40.b,X)		; 01 40
	ora ($34.b,X)		; 01 34
	ora ($B2.b,X)		; 01 B2
	sta ($6D.b,X)		; 81 6D
	pld		; 2B
	adc $BD2B.w		; 6D 2B BD
	tda		; 7B
	lda $6C7B.w,X		; BD 7B 6C
	pld		; 2B
	ror $29.b		; 66 29
	and [$14.b],Y		; 37 14
	asl $2B00.w,X		; 1E 00 2B
	bpl  43.b		; 10 2B
	bpl 123.b		; 10 7B
	brk $7B.b		; 00 7B
	brk $2B.b		; 00 2B
	bpl  41.b		; 10 29
	bpl  20.b		; 10 14
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
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
	brk $C0.b		; 00 C0
	rti		; 40

	bmi   0.b		; 30 00
	clc		; 18
	brk $8C.b		; 00 8C
	dey		; 88
	mvp $46,$80		; 44 80 46
	ldy $42.b		; A4 42
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	sed		; F8
	sed		; F8
	ldy $BCBC.w,X		; BC BC BC
	ldy $E214.w,X		; BC 14 E2
	pei ($22.b)		; D4 22
	jmp.w [$D822]		; DC 22 D8
	rol $F8.b		; 26 F8
	cpy $F0.b		; C4 F0
	cpy $D860.w		; CC 60 D8
	ldy #$50.b		; A0 50
	jmp $DCDC5C.l		; 5C 5C DC DC
	jmp.w [$1CDC]		; DC DC 1C
	jmp.w [$F818]		; DC 18 F8
	cli		; 58
	sed		; F8
	bpl -16.b		; 10 F0
	brk $E0.b		; 00 E0
	ora ($45.b)		; 12 45
	sbc $0B.b		; E5 0B
	lda $58FF00.l,X		; BF 00 FF 58
	adc $6F1B.w,X		; 7D 1B 6F
	clc		; 18
	and $0A3E01.l,X		; 3F 01 3E 0A
	sec		; 38
	ora $10.b,S		; 03 10
	ora [$00.b]		; 07 00
	lsr $3E58.w,X		; 5E 58 3E
	php		; 08
	and $017C00.l,X		; 3F 00 7C 01
	bit $010A.w,X		; 3C 0A 01
	stz $FF63.w		; 9C 63 FF
	brk $39.b		; 00 39
	dec $EF.b		; C6 EF
	bmi  -4.b		; 30 FC
	bvs  -4.b		; 70 FC
	tay		; A8
	inc $FF54.w,X		; FE 54 FF
	rol A		; 2A
	rtl		; 6B

	php		; 08
	brk $00.b		; 00 00
	dec $00.b		; C6 00
	brk $30.b		; 00 30
	jsr $80FC.w		; 20 FC 80
	sed		; F8
	mvn $2A,$70		; 54 70 2A
	jsr $6CD6.w		; 20 D6 6C
	ldx $DE2C.w,Y		; BE 2C DE
	jmp $64BE.w		; 4C BE 64
	asl $28.b,X		; 16 28
	asl $0C0C.w,X		; 1E 0C 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1E44.w,X		; 1E 44 1E
	bit $1E.b		; 24 1E
	brk $06.b		; 00 06
	php		; 08
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CD.b		; 00 CD
	phk		; 4B
	cmp $CD4B.w		; CD 4B CD
	phk		; 4B
	sta $4B8F4B.l		; 8F 4B 8F 4B
	eor $0B4F0B.l		; 4F 0B 4F 0B
	adc $304B2B.l		; 6F 2B 4B 30
	phk		; 4B
	bmi  75.b		; 30 4B
	bmi  75.b		; 30 4B
	bmi  75.b		; 30 4B
	bmi  11.b		; 30 0B
	bmi  11.b		; 30 0B
	bmi  43.b		; 30 2B
	bpl  64.b		; 10 40
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $21.b		; 00 21
	rti		; 40

	tsb $43.b		; 04 43
	bpl -114.b		; 10 8E
	rol A		; 2A
	sty $15.b,X		; 94 15
	tay		; A8
	eor ($A8.b),Y		; 51 A8
	plp		; 28
	cmp ($22.b),Y		; D1 22
	cmp ($3F.b),Y		; D1 3F
	and $713C3C.l,X		; 3F 3C 3C 71
	adc ($6B.b),Y		; 71 6B
	rtl		; 6B

	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	and $2E2E2F.l		; 2F 2F 2E 2E
	ora ($E1.b),Y		; 11 E1
	rti		; 40

	plp		; 28
	sty $69.b		; 84 69
	sta ($6D.b)		; 92 6D
	brk $FF.b		; 00 FF
	ora $A8.b,S		; 03 A8
	ora #$A3.b		; 09 A3
	ora $1F1F38.l,X		; 1F 38 1F 1F
	cmp $D7D7DF.l,X		; DF DF D7 D7
	ldx $B6.b,Y		; B6 B6
	ora ($01.b,X)		; 01 01
	trb $1F08.w		; 1C 08 1F
	ora $07.b,S		; 03 07
	brk $6B.b		; 00 6B
	and ($7A.b),Y		; 31 7A
	plp		; 28
	rol $02.b,X		; 36 02
	trb $0F20.w		; 1C 20 0F
	sec		; 38
	phd		; 0B
	tsa		; 3B
	asl $0618.w		; 0E 18 06
	bpl  49.b		; 10 31
	tsb $28.b		; 04 28
	ora $02.b		; 05 02
	ora #$00.b		; 09 00
	ora $10.b,S		; 03 10
	bpl  20.b		; 10 14
	bpl   7.b		; 10 07
	brk $0F.b		; 00 0F
	brk $EF.b		; 00 EF
	ldx $EB.b		; A6 EB
	ldx $EE.b		; A6 EE
	tay		; A8
	cpx $A0.b		; E4 A0
	sed		; F8
	brk $30.b		; 00 30
	sed		; F8
	rti		; 40

	cld		; D8
	rti		; 40

	cld		; D8
	ldx $10.b		; A6 10
	ldx $10.b		; A6 10
	tay		; A8
	bpl -96.b		; 10 A0
	clc		; 18
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bmi  16.b		; 30 10
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $8C.b		; 00 8C
	bit $92.b		; 24 92
	bmi -102.b		; 30 9A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp $547C.w		; 4C 7C 54
	jmp ($0000.w,X)		; 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($08.b,X)		; 01 08
	asl A		; 0A
	bpl  14.b		; 10 0E
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0D.b]		; 07 0D
	ora $000F0B.l		; 0F 0B 0F 00
	cmp $079401.l,X		; DF 01 94 07
	ora ($0F.b,S),Y		; 13 0F
	trb $0C01.w		; 1C 01 0C
	brk $06.b		; 00 06
	inc $7303.w,X		; FE 03 73
	cmp ($80.b),Y		; D1 80
	bra  14.b		; 80 0E
	tsb $0C.b		; 04 0C
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	cmp ($50.b,X)		; C1 50
	cpy $E611.w		; CC 11 E6
	pei ($0B.b)		; D4 0B
	bit $43.b,X		; 34 43
	jsr ($FF23.w,X)		; FC 23 FF
	brk $C7.b		; 00 C7
	tsa		; 3B
	txy		; 9B
	ldy $80.b		; A4 80
	stz $9D.b,X		; 74 9D
	sta $39.b		; 85 39
	ora #$98.b		; 09 98
	cop $DA.b		; 02 DA
	cop $F8.b		; 02 F8
	ora $E2.b,S		; 03 E2
	and [$58.b]		; 27 58
	tas		; 1B
	php		; 08
	php		; 08
	cmp $193528.l,X		; DF 28 35 19
	adc $6B35.w,X		; 7D 35 6B
	and ($3B.b)		; 32 3B
	asl A		; 0A
	ora ($00.b)		; 12 00
	asl $0F00.w,X		; 1E 00 0F
	trb $8028.w		; 1C 28 80
	ora $3502.w,Y		; 19 02 35
	cop $32.b		; 02 32
	tsb $0A.b		; 04 0A
	tsb $00.b		; 04 00
	ora $0100.w		; 0D 00 01
	brk $00.b		; 00 00
	jsr ($FCA8.w,X)		; FC A8 FC
	bvc  -2.b		; 50 FE
	bit $6F.b		; 24 6F
	lsr $6F.b		; 46 6F
	lsr A		; 4A
	adc [$40.b]		; 67 40
	stz $40.b		; 64 40
	jsr ($8000.w,X)		; FC 00 80
	jsr ($7050.w,X)		; FC 50 70
	bit $20.b		; 24 20
	lsr $90.b		; 46 90
	lsr A		; 4A
	bcc  64.b		; 90 40
	tya		; 98
	rti		; 40

	tya		; 98
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $18.b		; 04 18
	bpl  32.b		; 10 20
	jsl $470841.l		; 22 41 08 47
	cop $9C.b		; 02 9C
	trb $A8.b		; 14 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	sec		; 38
	sec		; 38
	adc $63.b,S		; 63 63
	eor [$57.b],Y		; 57 57
	and ($D8.b,X)		; 21 D8
	plp		; 28
	cmp ($42.b),Y		; D1 42
	lda ($50.b),Y		; B1 50
	lda $10.b,S		; A3 10
.INDEX 8
	sep #$14		; E2 14
	.db $62, $0D, $72		; 62 0D 72
	asl $39.b		; 06 39
	and $2F2F2F.l		; 2F 2F 2F 2F
	lsr $5E5E.w,X		; 5E 5E 5E
	lsr $5C5C.w,X		; 5E 5C 5C
	trb $1C1C.w		; 1C 1C 1C
	ora $0E0E.w,X		; 1D 0E 0E
	brk $0E.b		; 00 0E
	ora ($04.b,X)		; 01 04
	dec A		; 3A
	brk $34.b		; 00 34
	ora ($34.b),Y		; 11 34
	ora $5C.b,S		; 03 5C
	pld		; 2B
	sbc $ECD370.l		; EF 70 D3 EC
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora ($08.b)		; 12 08
	ora ($28.b,X)		; 01 28
	phd		; 0B
	rts		; 60

	jsr $4CF1.w		; 20 F1 4C
	sbc ($00.b),Y		; F1 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	beq  32.b		; F0 20
	stz $8608.w		; 9C 08 86
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp ($847C.w,X)		; 7C 7C 84
	eor $C2.b,S		; 43 C2
	and ($41.b,X)		; 21 41
	bcs  73.b		; B0 49
	bcs  36.b		; B0 24
	cld		; D8
	and ($4C.b)		; 32 4C
	ora ($6C.b)		; 12 6C
	xce		; FB
	tsb $BE.b		; 04 BE
	ldx $FFFF.w,Y		; BE FF FF
	cmp $4F4FCF.l		; CF CF 4F 4F
	and [$37.b],Y		; 37 37
	and [$37.b],Y		; 37 37
	tsa		; 3B
	tsa		; 3B
	tas		; 1B
	xce		; FB
	tda		; 7B
	cpx $72.b		; E4 72
	sbc $6FB0.w		; ED B0 6F
	ldy #$5C.b		; A0 5C
	rts		; 60

	bne -64.b		; D0 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $0B.b		; 00 0B
	xce		; FB
	pld		; 2B
	xce		; FB
	tsb $F4.b		; 04 F4
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $1F3E03.l,X		; 1F 03 3E 1F
	and $001E1A.l,X		; 3F 1A 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($1F.b,X)		; 01 1F
	php		; 08
	and $003F0A.l,X		; 3F 0A 3F 00
	asl $0000.w,X		; 1E 00 00
	xce		; FB
	rol $FF.b,X		; 36 FF
	ror $DF.b,X		; 76 DF
	lsr $DF.b,X		; 56 DF
	lsr $CF.b,X		; 56 CF
	lsr $8B.b		; 46 8B
	lsr $AB.b		; 46 AB
	ror $6B.b		; 66 6B
	rol $22.b		; 26 22
	rol $36.b,X		; 36 36
	rti		; 40

	lsr $20.b,X		; 56 20
	lsr $20.b,X		; 56 20
	lsr $30.b		; 46 30
	lsr $30.b		; 46 30
	ror $10.b		; 66 10
	rol $10.b		; 26 10
	adc ($99.b)		; 72 99
	stz $9B.b		; 64 9B
	lda ($5E.b,X)		; A1 5E
	eor $39.b		; 45 39
	php		; 08
	beq -96.b		; F0 A0
	trb $42.b		; 14 42
	bit $89.b,X		; 34 89
	ror $46.b,X		; 76 46
	ror $647C.w,X		; 7E 7C 64
	lda $D7A1.w,Y		; B9 A1 D7
	cmp [$0F.b],Y		; D7 0F
	ora $EBEFEF.l		; 0F EF EF EB
	xba		; EB
	stp		; DB
	stp		; DB
	ora $0112.w		; 0D 12 01
	inc $0F10.w,X		; FE 10 0F
	tsb $03.b		; 04 03
.ACCU 8
	sep #$E2		; E2 E2
	eor #$55.b		; 49 55
	ora $BF.b		; 05 BF
	mvp $09,$AE		; 44 AE 09
	ora $F30107.l		; 0F 07 01 F3
	sbc ($FC.b),Y		; F1 FC
	jsr ($FFFF.w,X)		; FC FF FF
	xba		; EB
	xba		; EB
	cmp #$C9.b		; C9 C9
	eor ($41.b),Y		; 51 41
	adc $6C13C2.l,X		; 7F C2 13 6C
	and ($EC.b)		; 32 EC
	sbc ($6C.b,S),Y		; F3 6C
	sbc $9302.w,X		; FD 02 93
	jmp ($21FE.w)		; 6C FE 21
	adc $6002DC.l,X		; 7F DC 02 60
	sty $0D20.w		; 8C 20 0D
	adc ($2D.b,X)		; 61 2D
	sbc ($02.b,X)		; E1 02
	cpx #$0C.b		; E0 0C
	cpx #$00.b		; E0 00
	sbc ($08.b,X)		; E1 08
	sbc $E1CCE1.l,X		; FF E1 CC E1
	bpl -74.b		; 10 B6
	eor $45AB.w,Y		; 59 AB 45
	lda $966B55.l,X		; BF 55 6B 96
	ldx $48.b		; A6 48
	cpx #$00.b		; E0 00
	cpy #$01.b		; C0 01
	brk $01.b		; 00 01
	rti		; 40

	ora $55.b,S		; 03 55
	ora ($44.b,X)		; 01 44
	ora ($86.b,X)		; 01 86
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	tas		; 1B
	cop $08.b		; 02 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	bcc  -8.b		; 90 F8
	jsr $2068.w		; 20 68 20
	pla		; 68
	jsr $2068.w		; 20 68 20
	pla		; 68
	ldy #$68.b		; A0 68
	ldy #$68.b		; A0 68
	bcs  72.b		; B0 48
	jsr $9020.w		; 20 20 90
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	and [$45.b]		; 27 45
	rol A		; 2A
	rol $3118.w,X		; 3E 18 31
	bpl  46.b		; 10 2E
	ora $0619.w,Y		; 19 19 06
	ora ($0C.b,S),Y		; 13 0C
	tsb $2700.w		; 0C 00 27
	bpl  42.b		; 10 2A
	bpl  24.b		; 10 18
	ora ($10.b,X)		; 01 10
	asl $0019.w		; 0E 19 00
	asl $00.b		; 06 00
	tsb $0000.w		; 0C 00 00
	brk $B0.b		; 00 B0
	brk $D0.b		; 00 D0
	jsr $00F0.w		; 20 F0 00
	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	sta ($30.b)		; 92 30
	txs		; 9A
	adc ($99.b)		; 72 99
	stz $9B.b		; 64 9B
	lda ($5E.b,X)		; A1 5E
	eor $39.b		; 45 39
	php		; 08
	beq -96.b		; F0 A0
	trb $4C.b		; 14 4C
	jmp ($7C54.w,X)		; 7C 54 7C
	lsr $7E.b		; 46 7E
	jmp ($B964.w,X)		; 7C 64 B9
	lda ($D7.b,X)		; A1 D7
	cmp [$0F.b],Y		; D7 0F
	ora $0AEFEF.l		; 0F EF EF 0A
	bpl  14.b		; 10 0E
	ora ($0D.b)		; 12 0D
	ora ($01.b)		; 12 01
	inc $0F10.w,X		; FE 10 0F
	tsb $03.b		; 04 03
.ACCU 8
	sep #$E2		; E2 E2
	eor #$55.b		; 49 55
	ora $0B0F.w		; 0D 0F 0B
	ora $070F09.l		; 0F 09 0F 07
	ora ($F3.b,X)		; 01 F3
	sbc ($FC.b),Y		; F1 FC
	jsr ($FFFF.w,X)		; FC FF FF
	xba		; EB
	xba		; EB
	ora [$00.b]		; 07 00
	ora $3E01.w,Y		; 19 01 3E
	txs		; 9A
	tas		; 1B
	bit $411F.w		; 2C 1F 41
	and $8D.b,S		; 23 8D
	lsr $1D.b		; 46 1D
	sta [$2E.b],Y		; 97 2E
	brk $00.b		; 00 00
	ora ($16.b,X)		; 01 16
	asl A		; 0A
	and $1C00.w,Y		; 39 00 1C
	and ($0C.b),Y		; 31 0C
	adc ($04.b),Y		; 71 04
	sbc ($0C.b,X)		; E1 0C
	mvp $B8,$1E		; 44 1E B8
	sty $78C4.w		; 8C C4 78
	ror $AE2C.w,X		; 7E 2C AE
	rti		; 40

	inc $568C.w,X		; FE 8C 56
	sty $8C72.w		; 8C 72 8C
	ldy $7052.w		; AC 52 70
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	bra  64.b		; 80 40
	bpl -116.b		; 10 8C
	brk $AC.b		; 00 AC
	jsr $20AC.w		; 20 AC 20
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $22.b		; 04 22
	plp		; 28
	.db $42, $38		; 42 38
	lsr A		; 4A
	bit $4A.b,X		; 34 4A
	tsb $FA.b		; 04 FA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $341C.w		; 1C 1C 34
	bit $3C2C.w,X		; 3C 2C 3C
	bit $3C.b		; 24 3C
	trb $0F04.w		; 1C 04 0F
	ora ($1B.b,X)		; 01 1B
	ora [$1F.b]		; 07 1F
	ora $331928.l		; 0F 28 19 33
	ora ($66.b)		; 12 66
	bit $AC.b		; 24 AC
	pla		; 68
	cld		; D8
	bvc   1.b		; 50 01
	ora ($01.b,X)		; 01 01
	asl $0F.b		; 06 0F
	brk $19.b		; 00 19
	asl $12.b		; 06 12
	tsb $1824.w		; 0C 24 18
	pla		; 68
	bpl  80.b		; 10 50
	jsr $9810.w		; 20 10 98
	rti		; 40

	cpy $CC08.w		; CC 08 CC
	jsr $1664.w		; 20 64 16
	bvs  15.b		; 70 0F
	rol $1D.b,X		; 36 1D
	rol $1E2F.w		; 2E 2F 1E
	cpx #$80.b		; E0 80
	sec		; 38
	php		; 08
	bvs  64.b		; 70 40
	clc		; 18
	brk $28.b		; 00 28
	jsr $1616.w		; 20 16 16
	asl $08.b		; 06 08
	asl $5E10.w		; 0E 10 5E
	bit $3C5E.w,X		; 3C 5E 3C
	and $2D1E.w,X		; 3D 1E 2D
	asl $0E1F.w,X		; 1E 1F 0E
	ora [$0E.b],Y		; 17 0E
	ora $070A06.l		; 0F 06 0A 07
	bit $3C00.w,X		; 3C 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $13.b		; 00 13
	asl A		; 0A
	asl $3C0C.w,X		; 1E 0C 3C
	clc		; 18
	stz $28.b		; 64 28
	dey		; 88
	rti		; 40

	cld		; D8
	bvc  -8.b		; 50 F8
	bvs 112.b		; 70 70
	brk $0A.b		; 00 0A
	tsb $0C.b		; 04 0C
	brk $18.b		; 00 18
	brk $28.b		; 00 28
	bpl  64.b		; 10 40
	bmi  80.b		; 30 50
	jsr $0070.w		; 20 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $46.b		; 00 46
	ora ($49.b)		; 12 49
	clc		; 18
	eor $4C39.w		; 4D 39 4C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	rol $3E.b		; 26 3E
	rol A		; 2A
	rol $3F23.w,X		; 3E 23 3F
	brk $F0.b		; 00 F0
	jsr $089C.w		; 20 9C 08
	stx $84.b		; 86 84
	eor $C2.b,S		; 43 C2
	and ($41.b,X)		; 21 41
	bcs  73.b		; B0 49
	bcs  36.b		; B0 24
	cld		; D8
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp ($BE7C.w,X)		; 7C 7C BE
	ldx $FFFF.w,Y		; BE FF FF
	cmp $4F4FCF.l		; CF CF 4F 4F
	and [$37.b],Y		; 37 37
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora [$02.b]		; 07 02
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $3E00.w		; CC 00 3E
	cpy $EC7E.w		; CC 7E EC
	dex		; CA
	bit $003C.w,X		; 3C 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	tsb $FE.b		; 04 FE
	bit $00FE.w		; 2C FE 00
	inc $3C00.w,X		; FE 00 3C
	brk $00.b		; 00 00
	trb $3866.w		; 1C 66 38
	stz $08.b		; 64 08
	jmp $C038.w		; 4C 38 C0
	sed		; F8
	bmi 120.b		; 30 78
	beq -16.b		; F0 F0
	cpx #$10.b		; E0 10
	jsr $2038.w		; 20 38 20
	clc		; 18
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	rti		; 40

	bmi  48.b		; 30 30
	jsr $E0D0.w		; 20 D0 E0
	brk $20.b		; 00 20
	cpy #$65.b		; C0 65
	tya		; 98
	and $D8.b		; 25 D8
	rol $49.b,X		; 36 49
	rol $49.b,X		; 36 49
	bit $5B.b		; 24 5B
	jsr $405E.w		; 20 5E 40
	clv		; B8
	brk $E0.b		; 00 E0
	adc $77776F.l		; 6F 6F 77 77
	and [$37.b],Y		; 37 37
	rol $36.b,X		; 36 36
	rol $36.b,X		; 36 36
	plp		; 28
	plp		; 28
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	.db $42, $34		; 42 34
	bit #$76.b		; 89 76
	brk $DF.b		; 00 DF
	ora ($94.b,X)		; 01 94
	tsb $11.b		; 04 11
	ora $0C011C.l		; 0F 1C 01 0C
	brk $02.b		; 00 02
	xba		; EB
	xba		; EB
	stp		; DB
	stp		; DB
	bra -128.b		; 80 80
	asl $0F04.w		; 0E 04 0F
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $05.b		; 00 05
	lda $11AE44.l,X		; BF 44 AE 11
	inc $F4.b		; E6 F4
	phd		; 0B
	pei ($A3.b)		; D4 A3
	jsr ($D802.w,X)		; FC 02 D8
	cop $E4.b		; 02 E4
	asl $C9.b,X		; 16 C9
	cmp #$51.b		; C9 51
	eor ($9D.b,X)		; 41 9D
	sta $19.b		; 85 19
	ora #$98.b		; 09 98
	ldx #$98.b		; A2 98
	brk $FC.b		; 00 FC
	brk $E8.b		; 00 E8
	brk $DE.b		; 00 DE
	lda ($CB.b,X)		; A1 CB
	bit $FF.b,X		; 34 FF
	cmp ($5F.b,X)		; C1 5F
	plx		; FA
	cmp $027F39.l,X		; DF 39 7F 02
	adc $6B14.w,X		; 7D 14 6B
	and ($A1.b),Y		; 31 A1
	trb $4C30.w		; 1C 30 4C
	rti		; 40

	sbc $01FF18.l,X		; FF 18 FF 01
	sbc $3802.w,X		; FD 02 38
	trb $02.b		; 14 02
	and ($04.b),Y		; 31 04
	adc ($8C.b)		; 72 8C
	cmp $F1EB60.l,X		; DF 60 EB F1
	sbc $52FDE2.l,X		; FF E2 FD 52
	sbc $54FEA8.l,X		; FF A8 FE 54
	sbc $008CA6.l		; EF A6 8C 00
	brk $60.b		; 00 60
	cmp $F8.b		; C5 F8
	.db $42, $F8		; 42 F8
	cop $F0.b		; 02 F0
	tay		; A8
	sbc ($54.b,X)		; E1 54
	rti		; 40

	ldx $10.b		; A6 10
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	bvc -32.b		; 50 E0
	beq  96.b		; F0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $00C000.l,X		; FF 00 C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $7A.b		; 00 7A
	plp		; 28
	rol $02.b,X		; 36 02
	trb $1F20.w		; 1C 20 1F
	sec		; 38
	asl A		; 0A
	and $0E.b,S		; 23 0E
	and $0C.b,S		; 23 0C
	and $18.b,S		; 23 18
	jsl $020528.l		; 22 28 05 02
	ora #$00.b		; 09 00
	ora $00.b,S		; 03 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $EB.b		; 00 EB
	ldx $EE.b		; A6 EE
	tay		; A8
	cpx $A2.b		; E4 A2
	sed		; F8
	asl $1C.b		; 06 1C
	adc $023312.l,X		; 7F 12 33 02
	and ($08.b,S),Y		; 33 08
	ora $10A6.w,Y		; 19 A6 10
	tay		; A8
	bpl -96.b		; 10 A0
	clc		; 18
	tsb $04.b		; 04 04
	jsl $000C22.l		; 22 22 0C 00
	trb $0710.w		; 1C 10 07
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	clc		; 18
	bpl  32.b		; 10 20
	jsl $470841.l		; 22 41 08 47
	cop $9C.b		; 02 9C
	trb $A8.b		; 14 A8
	and ($D8.b,X)		; 21 D8
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	sec		; 38
	sec		; 38
	adc $63.b,S		; 63 63
	eor [$57.b],Y		; 57 57
	and $D1282F.l		; 2F 2F 28 D1
	.db $42, $B1		; 42 B1
	bvc -93.b		; 50 A3
	bpl -30.b		; 10 E2
	trb $62.b		; 14 62
	tsb $0672.w		; 0C 72 06
	and $0F00.w,Y		; 39 00 0F
	and $5E5E2F.l		; 2F 2F 5E 5E
	lsr $5C5E.w,X		; 5E 5E 5C
	jmp $1C1C1C.l		; 5C 1C 1C 1C
	trb $0E0E.w		; 1C 0E 0E
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	pha		; 48
	bit $60.b		; 24 60
	bit $E4.b,X		; 34 E4
	and ($C8.b)		; 32 C8
	and [$42.b],Y		; 37 42
	ldy $728A.w,X		; BC 8A 72
	ora ($E1.b),Y		; 11 E1
	cpx #$E0.b		; E0 E0
	tya		; 98
	sed		; F8
	tay		; A8
	sed		; F8
	sty $F8FC.w		; 8C FC F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	lda $1F1FAF.l		; AF AF 1F 1F
	cop $11.b		; 02 11
	trb $21.b		; 14 21
	trb $1A25.w		; 1C 25 1A
	and $02.b		; 25 02
	sbc $1F20.w,X		; FD 20 1F
	php		; 08
	ora [$C4.b]		; 07 C4
	cmp $0E.b		; C5 0E
	asl $1E1A.w		; 0E 1A 1E
	asl $1E.b,X		; 16 1E
	ora ($1E.b)		; 12 1E
	asl $E602.w		; 0E 02 E6
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sed		; F8
	inc $00FE.w,X		; FE FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $0F.b		; 04 0F
	ora ($33.b,X)		; 01 33
	cop $7C.b		; 02 7C
	ldy $37.b,X		; B4 37
	cli		; 58
	and $1B4683.l,X		; 3F 83 46 1B
	sty $033B.w		; 8C 3B 03
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bit $7314.w		; 2C 14 73
	brk $38.b		; 00 38
	adc $18.b,S		; 63 18
	sbc $08.b,S		; E3 08
	cmp $18.b,S		; C3 18
	iny		; C8
	bit $1870.w		; 2C 70 18
	pha		; 48
	beq  -4.b		; F0 FC
	eor $815C.w,Y		; 59 5C 81
	jsr ($AC18.w,X)		; FC 18 AC
	clc		; 18
	cpx $18.b		; E4 18
	bne   0.b		; D0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	clc		; 18
	brk $80.b		; 00 80
	jsr $0018.w		; 20 18 00
	cli		; 58
	rti		; 40

	cli		; 58
	rti		; 40

	brk $07.b		; 00 07
	ora $18.b		; 05 18
	bpl  32.b		; 10 20
	tsb $43.b		; 04 43
	bpl -113.b		; 10 8F
	rol A		; 2A
	sty $54.b,X		; 94 54
	plp		; 28
	and ($58.b,X)		; 21 58
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3E3E1F.l,X		; 1F 1F 3E 3E
	adc ($71.b),Y		; 71 71
	rtl		; 6B

	rtl		; 6B

	cmp [$D7.b],Y		; D7 D7
	lda $51A8AF.l		; AF AF A8 51
	.db $42, $B1		; 42 B1
	bvc -93.b		; 50 A3
	bvc -94.b		; 50 A2
	clc		; 18
	sep #$08		; E2 08
	adc ($06.b)		; 72 06
	and $0F00.w,Y		; 39 00 0F
	ldx $5EAE.w		; AE AE 5E
	lsr $5E5E.w,X		; 5E 5E 5E
	jmp $5C5C5C.l		; 5C 5C 5C 5C
	trb $0E1C.w		; 1C 1C 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora $00.b,S		; 03 00
	tsb $00.b		; 04 00
	ora [$02.b]		; 07 02
	asl $01.b		; 06 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $E0.b		; 00 E0
	rti		; 40

	sec		; 38
	bpl  12.b		; 10 0C
	php		; 08
	stx $84.b		; 86 84
	.db $42, $A4		; 42 A4
	eor $92.b,S		; 43 92
	adc ($0A.b,X)		; 61 0A
	sbc ($00.b),Y		; F1 00
	brk $E0.b		; 00 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	jmp ($FC7C.w,X)		; 7C 7C FC
	jsr ($BEBE.w,X)		; FC BE BE
	stz $5E9E.w,X		; 9E 9E 5E
	lsr $B14A.w,X		; 5E 4A B1
	ror $6C91.w		; 6E 91 6C
	sta ($6C.b,S),Y		; 93 6C
	sta ($68.b)		; 92 68
	stx $40.b,Y		; 96 40
	ldy $7880.w,X		; BC 80 78
	brk $C0.b		; 00 C0
	ror $6E6E.w		; 6E 6E 6E
	ror $6E6E.w		; 6E 6E 6E
	jmp ($6C6C.w)		; 6C 6C 6C
	jmp ($5858.w)		; 6C 58 58
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $160A.w,Y		; 19 0A 16
	tsb $3C.b		; 04 3C
	clc		; 18
	stz $28.b		; 64 28
	dey		; 88
	rti		; 40

	cld		; D8
	bvc  -8.b		; 50 F8
	bvs 112.b		; 70 70
	brk $0A.b		; 00 0A
	tsb $04.b		; 04 04
	php		; 08
	clc		; 18
	brk $28.b		; 00 28
	bpl  64.b		; 10 40
	bmi  80.b		; 30 50
	jsr $0070.w		; 20 70 00
	brk $00.b		; 00 00
	plp		; 28
	jmp ($6600.w)		; 6C 00 66
	tsb $26.b		; 04 26
	ora [$30.b],Y		; 17 30
	ora $2E1F36.l		; 0F 36 1F 2E
	and $1E2F1E.l		; 2F 1E 2F 1E
	bpl   0.b		; 10 00
	bit $1824.w,X		; 3C 24 18
	brk $08.b		; 00 08
	brk $16.b		; 00 16
	asl $06.b,X		; 16 06
	php		; 08
	asl $1E10.w		; 0E 10 1E
	brk $2F.b		; 00 2F
	asl $0E1F.w,X		; 1E 1F 0E
	ora [$0E.b],Y		; 17 0E
	ora [$0E.b],Y		; 17 0E
	ora $060F06.l		; 0F 06 0F 06
	phd		; 0B
	asl $0B.b		; 06 0B
	asl $1E.b		; 06 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  16.b		; 70 10
	dey		; 88
	ldy #$08.b		; A0 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bne -16.b		; D0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	cop $09.b		; 02 09
	ora $09.b,S		; 03 09
	ora [$09.b]		; 07 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	tsb $07.b		; 04 07
	ora $07.b		; 05 07
	tsb $07.b		; 04 07
	ora [$0F.b],Y		; 17 0F
	ora $12210E.l,X		; 1F 0E 21 12
	rol $14.b,X		; 36 14
	.db $42, $24		; 42 24
	jmp ($4428.w)		; 6C 28 44
	php		; 08
	tya		; 98
	bvc   2.b		; 50 02
	ora $000E.w		; 0D 0E 00
	ora ($0C.b)		; 12 0C
	trb $08.b		; 14 08
	bit $18.b		; 24 18
	plp		; 28
	bpl   8.b		; 10 08
	bmi  80.b		; 30 50
	jsr $2840.w		; 20 40 28
	sty $69.b		; 84 69
	ora ($ED.b)		; 12 ED
	brk $BF.b		; 00 BF
	ora $28.b,S		; 03 28
	ora #$23.b		; 09 23
	ora $180338.l,X		; 1F 38 03 18
	cmp $D7D7DF.l,X		; DF DF D7 D7
	rol $36.b,X		; 36 36
	ora ($01.b,X)		; 01 01
	trb $1F08.w		; 1C 08 1F
	ora $07.b,S		; 03 07
	brk $07.b		; 00 07
	brk $93.b		; 00 93
	tax		; AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	jsl $17E8CD.l		; 22 CD E8 17
	tay		; A8
	lsr $F8.b		; 46 F8
	tsb $B0.b		; 04 B0
	tsb $D7.b		; 04 D7
	cmp [$93.b],Y		; D7 93
	sta ($A3.b,S),Y		; 93 A3
	sta $3A.b,S		; 83 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	bmi   0.b		; 30 00
	sed		; F8
	brk $EB.b		; 00 EB
	ora [$3F.b],Y		; 17 3F
	jsr $80FF.w		; 20 FF 80
	lda $1DEF7C.l		; AF 7C EF 1D
	and $152B00.l,X		; 3F 00 2B 15
	rol $010A.w,X		; 3E 0A 01
	ora $80CE20.l		; 0F 20 CE 80
	asl $7F0C.w,X		; 1E 0C 7F
	brk $FF.b		; 00 FF
	brk $1C.b		; 00 1C
	ora $00.b,X		; 15 00
	asl A		; 0A
	ora ($D6.b,X)		; 01 D6
	and #$39.b		; 29 39
	dec $EF.b		; C6 EF
	bmi -11.b		; 30 F5
	sed		; F8
	sbc $A9FE71.l,X		; FF 71 FE A9
	sbc $2AFF54.l,X		; FF 54 FF 2A
	plp		; 28
	brk $C6.b		; 00 C6
	brk $00.b		; 00 00
	bmi 114.b		; 30 72
	jsr ($FC21.w,X)		; FC 21 FC
	sta ($F8.b,X)		; 81 F8
	mvn $2A,$70		; 54 70 2A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	stx $00.b		; 86 00
	sbc $76BF86.l,X		; FF 86 BF 76
	lda $7E.b		; A5 7E
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $82.b		; 06 82
	and $007F16.l,X		; 3F 16 7F 00
	adc $00FE00.l,X		; 7F 00 FE 00
	brk $E0.b		; 00 E0
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	cpy #$D0.b		; C0 D0
	rts		; 60

	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $00C000.l,X		; FF 00 C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rts		; 60

	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $6B.b		; 00 6B
	and ($7A.b),Y		; 31 7A
	plp		; 28
	rol $02.b,X		; 36 02
	trb $1F30.w		; 1C 30 1F
	sec		; 38
	asl A		; 0A
	and $0E.b,S		; 23 0E
	and $0C.b,S		; 23 0C
	and $31.b,S		; 23 31
	tsb $28.b		; 04 28
	ora $02.b		; 05 02
	ora #$00.b		; 09 00
	ora $00.b,S		; 03 00
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $EF.b		; 02 EF
	ldx $ED.b		; A6 ED
	ldx #$E6.b		; A2 E6
	ldy #$E4.b		; A0 E4
	ldx #$FC.b		; A2 FC
	asl $1C.b		; 06 1C
	ror $3310.w,X		; 7E 10 33
	cop $33.b		; 02 33
	ldx $10.b		; A6 10
	ldx #$10.b		; A2 10
	ldy #$18.b		; A0 18
	ldy #$18.b		; A0 18
	brk $00.b		; 00 00
	jsr $0E20.w		; 20 20 0E
	cop $1C.b		; 02 1C
	bpl  24.b		; 10 18
	jsl $18261C.l		; 22 1C 26 18
	ror $20.b		; 66 20
	stz $3C.b		; 64 3C
	rts		; 60

	jsr ($BC18.w,X)		; FC 18 BC
	sei		; 78
	sed		; F8
	bvs  28.b		; 70 1C
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	bit $18.b		; 24 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1C.b,S		; 03 1C
	php		; 08
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $00E000.l,X		; 1F 00 E0 00
	clc		; 18
	pha		; 48
	bit $60.b		; 24 60
	bit $E4.b,X		; 34 E4
	and ($C8.b)		; 32 C8
	and [$42.b],Y		; 37 42
	ldy $728A.w,X		; BC 8A 72
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	tya		; 98
	sed		; F8
	tay		; A8
	sed		; F8
	sty $F8FC.w		; 8C FC F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	lda $1E2FAF.l		; AF AF 2F 1E
	and $3D1E.w,X		; 3D 1E 3D
	asl $1C3E.w,X		; 1E 3E 1C
	rol $2E1C.w		; 2E 1C 2E
	trb $0C1E.w		; 1C 1E 0C
	asl $0E0C.w,X		; 1E 0C 0E
	bpl  30.b		; 10 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	cpy $6620.w		; CC 20 66
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $4070.w		; 2E 70 40
	trb $1C04.w		; 1C 04 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $16.b		; 00 16
	asl $06.b,X		; 16 06
	php		; 08
	brk $0E.b		; 00 0E
	cop $11.b		; 02 11
	trb $21.b		; 14 21
	trb $1A25.w		; 1C 25 1A
	and $02.b		; 25 02
	sbc $1F20.w,X		; FD 20 1F
	php		; 08
	ora [$00.b]		; 07 00
	brk $0E.b		; 00 0E
	asl $1E1A.w		; 0E 1A 1E
	asl $1E.b,X		; 16 1E
	ora ($1E.b)		; 12 1E
	asl $E602.w		; 0E 02 E6
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sed		; F8
	cpy $C5.b		; C4 C5
	sta ($AA.b,S),Y		; 93 AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	jsl $17E8CD.l		; 22 CD E8 17
	tay		; A8
	eor [$F8.b]		; 47 F8
	ora $FE.b		; 05 FE
	inc $D7D7.w,X		; FE D7 D7
	sta ($93.b,S),Y		; 93 93
	lda $83.b,S		; A3 83
	dec A		; 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	bmi   0.b		; 30 00
	jsl $710A51.l		; 22 51 0A 71
	tsb $39.b		; 04 39
	ora $1C.b,S		; 03 1C
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $2E2E.w		; 2E 2E 2E
	rol $0E0E.w		; 2E 0E 0E
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $18.b,S		; 03 18
	ora ($04.b,X)		; 01 04
	ora $823301.l		; 0F 01 33 82
	jmp ($37B4.w,X)		; 7C B4 37
	cli		; 58
	adc $933EC3.l,X		; 7F C3 3E 93
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cop $2C.b		; 02 2C
	trb $73.b		; 14 73
	brk $38.b		; 00 38
	and $18.b,S		; 23 18
	adc $08.b,S		; 63 08
	bcs   5.b		; B0 05
	iny		; C8
	and $1970.w		; 2D 70 19
	dey		; 88
	sbc ($FD.b),Y		; F1 FD
	phy		; 5A
	jmp $18FC83.l		; 5C 83 FC 18
	ldy $F818.w		; AC 18 F8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora ($80.b,X)		; 01 80
	jsr $0018.w		; 20 18 00
	cli		; 58
	rti		; 40

	brk $C0.b		; 00 C0
	rti		; 40

	bmi   0.b		; 30 00
	clc		; 18
	brk $8C.b		; 00 8C
	dey		; 88
	mvp $46,$80		; 44 80 46
	ldy $42.b		; A4 42
	trb $E2.b		; 14 E2
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	sed		; F8
	sed		; F8
	ldy $BCBC.w,X		; BC BC BC
	ldy $5C5C.w,X		; BC 5C 5C
	pei ($22.b)		; D4 22
	jmp.w [$D822]		; DC 22 D8
	rol $D8.b		; 26 D8
	bit $90.b		; 24 90
	jmp ($7880.w)		; 6C 80 78
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$DCDC]		; DC DC DC
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	bcs -80.b		; B0 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $3418.w,X		; 3C 18 34
	clc		; 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	iny		; C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rts		; 60

	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $006000.l,X		; FF 00 60 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $3F.b		; 00 3F
	trb $3456.w		; 1C 56 34
	.db $62, $24, $6C		; 62 24 6C
	plp		; 28
	sty $48.b		; 84 48
	tya		; 98
	bvc -56.b		; 50 C8
	bvc -48.b		; 50 D0
	rti		; 40

	trb $3400.w		; 1C 00 34
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  72.b		; 10 48
	bmi  80.b		; 30 50
	jsr $2050.w		; 20 50 20
	rti		; 40

	jsr $6633.w		; 20 33 66
	ora ($4F.b),Y		; 11 4F
	adc [$08.b],Y		; 77 08
	cmp $1EB746.l,X		; DF 46 B7 1E
	sbc $7F36.w,X		; FD 36 7F
	brk $2B.b		; 00 2B
	ora $18.b,X		; 15 18
	cop $30.b		; 02 30
	ora [$00.b]		; 07 00
	asl $42.b		; 06 42
	and $107F06.l,X		; 3F 06 7F 10
	and $157E00.l,X		; 3F 00 7E 15
	brk $39.b		; 00 39
	dec $D6.b		; C6 D6
	and #$39.b		; 29 39
	dec $EF.b		; C6 EF
	bmi -11.b		; 30 F5
	sed		; F8
	sbc $A9FE71.l,X		; FF 71 FE A9
	sbc $10D654.l,X		; FF 54 D6 10
	plp		; 28
	brk $C6.b		; 00 C6
	brk $00.b		; 00 00
	bmi  98.b		; 30 62
	jsr ($FC21.w,X)		; FC 21 FC
	sta ($F8.b,X)		; 81 F8
	mvn $21,$70		; 54 70 21
	rti		; 40

	tsb $43.b		; 04 43
	bpl -114.b		; 10 8E
	rol A		; 2A
	sty $15.b,X		; 94 15
	tay		; A8
	eor ($A8.b),Y		; 51 A8
	plp		; 28
	cmp ($22.b),Y		; D1 22
	cmp ($3F.b),Y		; D1 3F
	and $713C3C.l,X		; 3F 3C 3C 71
	adc ($6B.b),Y		; 71 6B
	rtl		; 6B

	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	and $2E2E2F.l		; 2F 2F 2E 2E
	ora ($E1.b),Y		; 11 E1
	rti		; 40

	plp		; 28
	sty $69.b		; 84 69
	sta ($6D.b)		; 92 6D
	brk $FF.b		; 00 FF
	ora $A8.b,S		; 03 A8
	ora #$A3.b		; 09 A3
	ora $1F1F38.l,X		; 1F 38 1F 1F
	cmp $D7D7DF.l,X		; DF DF D7 D7
	ldx $B6.b,Y		; B6 B6
	ora ($01.b,X)		; 01 01
	trb $1F08.w		; 1C 08 1F
	ora $07.b,S		; 03 07
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	asl $BF.b		; 06 BF
	asl $F5.b		; 06 F5
	ldx $70AE.w,Y		; BE AE 70
	bcs  64.b		; B0 40
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	cop $0F.b		; 02 0F
	asl $3F.b		; 06 3F
	bcc  63.b		; 90 3F
	brk $7E.b		; 00 7E
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	adc $6B14.w,X		; 7D 14 6B
	and ($7A.b),Y		; 31 7A
	plp		; 28
	rol $02.b,X		; 36 02
	trb $1F20.w		; 1C 20 1F
	sec		; 38
	inc A		; 1A
	and ($0A.b,S),Y		; 33 0A
	and $14.b,S		; 23 14
	cop $31.b		; 02 31
	tsb $28.b		; 04 28
	ora $02.b		; 05 02
	ora #$00.b		; 09 00
	ora $00.b,S		; 03 00
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $FE.b		; 00 FE
	mvn $A6,$EF		; 54 EF A6
	xba		; EB
	ldx $EE.b		; A6 EE
	tay		; A8
	cpx $A2.b		; E4 A2
	sed		; F8
	asl $38.b		; 06 38
	ror $6624.w,X		; 7E 24 66
	mvn $A6,$40		; 54 40 A6
	bpl -90.b		; 10 A6
	bpl -88.b		; 10 A8
	bpl -96.b		; 10 A0
	clc		; 18
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	clc		; 18
	brk $0E.b		; 00 0E
	and $0C.b,S		; 23 0C
	and $18.b,S		; 23 18
	jsl $20261C.l		; 22 1C 26 20
	stz $38.b		; 64 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $1C78.w,X		; BC 78 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1C.b,S		; 03 1C
	php		; 08
	bmi  33.b		; 30 21
	rti		; 40

	tsb $43.b		; 04 43
	bvc -114.b		; 50 8E
	rol A		; 2A
	sty $00.b,X		; 94 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $3C3F3F.l,X		; 1F 3F 3F 3C
	bit $7171.w,X		; 3C 71 71
	rtl		; 6B

	rtl		; 6B

	cpx $32.b		; E4 32
	iny		; C8
	and [$42.b],Y		; 37 42
	ldy $728A.w,X		; BC 8A 72
	ora ($E1.b),Y		; 11 E1
	rti		; 40

	plp		; 28
	sty $69.b		; 84 69
	sta ($6D.b)		; 92 6D
	sty $F8FC.w		; 8C FC F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	lda $1F1FAF.l		; AF AF 1F 1F
	cmp $D7D7DF.l,X		; DF DF D7 D7
	ldx $B6.b,Y		; B6 B6
	inc A		; 1A
	and $02.b		; 25 02
	sbc $1F20.w,X		; FD 20 1F
	php		; 08
	ora [$C4.b]		; 07 C4
	cmp $93.b		; C5 93
	tax		; AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	ora ($1E.b)		; 12 1E
	asl $E602.w		; 0E 02 E6
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sed		; F8
	inc $D7FE.w,X		; FE FE D7
	cmp [$93.b],Y		; D7 93
	sta ($A3.b,S),Y		; 93 A3
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bmi   0.b		; 30 00
	clc		; 18
	brk $8C.b		; 00 8C
	dey		; 88
	mvp $46,$80		; 44 80 46
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	sed		; F8
	sed		; F8
	ldy $9FBC.w,X		; BC BC 9F
	adc $77.b,S		; 63 77
	ora $629F.w		; 0D 9F 62
	lda $28FB55.l		; AF 55 FB 28
	cmp [$63.b],Y		; D7 63
	sbc $51.b,X		; F5 51
	adc $6105.w		; 6D 05 61
	ora $621F00.l,X		; 1F 00 1F 62
	ora $55.b,S		; 03 55
	ora ($28.b,X)		; 01 28
	tsb $63.b		; 04 63
	php		; 08
	eor ($0A.b),Y		; 51 0A
	ora $12.b		; 05 12
	bne -32.b		; D0 E0
	beq -64.b		; F0 C0
	beq -96.b		; F0 A0
	sed		; F8
	bvc  -4.b		; 50 FC
	tay		; A8
	dec $D64C.w,X		; DE 4C D6
	jmp $50DC.w		; 4C DC 50
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	bvc -64.b		; 50 C0
	tay		; A8
	bra  76.b		; 80 4C
	jsr $204C.w		; 20 4C 20
	bvc  32.b		; 50 20
	dec $71.b		; C6 71
	tay		; A8
	adc $7BAA.w,Y		; 79 AA 7B
	bvs  47.b		; 70 2F
	adc ($21.b,S),Y		; 73 21
	and ($01.b,S),Y		; 33 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ror $6600.w		; 6E 00 66
	brk $64.b		; 00 64
	brk $20.b		; 00 20
	ora ($21.b,X)		; 01 21
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $C0.b		; 00 C0
	cpx #$E0.b		; E0 E0
	brk $F0.b		; 00 F0
	cpy #$F0.b		; C0 F0
	cpx #$F0.b		; E0 F0
	cpx #$D0.b		; E0 D0
	cpx #$D0.b		; E0 D0
	cpx #$F0.b		; E0 F0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0.b		; C0 C0
	jsr $00E0.w		; 20 E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$C0.b		; E0 C0
	beq -32.b		; F0 E0
	bcs  96.b		; B0 60
	bvc -32.b		; 50 E0
	cpx #$C0.b		; E0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	rti		; 40

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2204.w		; 1C 04 22
	plp		; 28
	.db $42, $38		; 42 38
	lsr A		; 4A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $341C.w		; 1C 1C 34
	bit $3C2C.w,X		; 3C 2C 3C
	sed		; F8
	and [$FF.b],Y		; 37 FF
	rti		; 40

	iny		; C8
	rti		; 40

	sei		; 78
	ora [$00.b]		; 07 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($30.b,X)		; 01 30
	sec		; 38
	eor [$08.b]		; 47 08
	eor [$30.b]		; 47 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc ($51.b,S),Y		; F3 51
	eor $7F22.w,X		; 5D 22 7F
	bit $CC3A.w		; 2C 3A CC
	eor ($2C.b,S),Y		; 53 2C
	eor $F332.w,X		; 5D 32 F3
	tsb $A35E.w		; 0C 5E A3
	bvc -52.b		; 50 CC
	.db $82, $60, $8C		; 82 60 8C
	rts		; 60

	ora $0D21.w		; 0D 21 0D
	adc ($02.b,X)		; 61 02
	bvs  12.b		; 70 0C
	rts		; 60

	bra  99.b		; 80 63
	sed		; F8
	adc [$7A.b]		; 67 7A
	ora $F8.b,S		; 03 F8
	rts		; 60

	lda $9067.w,Y		; B9 67 90
	adc $60.b,S		; 63 60
	bra -112.b		; 80 90
	rts		; 60

	beq   0.b		; F0 00
	rts		; 60

	php		; 08
	tsb $88.b		; 04 88
	adc [$08.b]		; 67 08
	.db $62, $0A, $60		; 62 0A 60
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	cmp [$7D.b]		; C7 7D
	ldx $2C7A.w		; AE 7A 2C
	jmp ($1850.w)		; 6C 50 18
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $A00F24.l		; 0F 24 0F A0
	asl $0490.w		; 0E 90 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	stz $38.b,X		; 74 38
	stz $38.b,X		; 74 38
	sei		; 78
	bmi 120.b		; 30 78
	bmi 104.b		; 30 68
	bmi -88.b		; 30 A8
	bvs  56.b		; 70 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $A8.b		; 00 A8
	bvs -72.b		; 70 B8
	bvs 120.b		; 70 78
	bmi  88.b		; 30 58
	bmi  56.b		; 30 38
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $15.b		; 00 15
	tay		; A8
	eor ($A8.b),Y		; 51 A8
	pld		; 2B
	bne  39.b		; D0 27
	cmp ($27.b,S),Y		; D3 27
	eor ($0B.b,S),Y		; 53 0B
	stz $0D.b,X		; 74 0D
	rol $1F.b,X		; 36 1F
	asl $5757.w		; 0E 57 57
	eor [$57.b],Y		; 57 57
	bit $2B2F.w		; 2C 2F 2B
	and $202F29.l		; 2F 29 2F 20
	and $040F00.l		; 2F 00 0F 04
	ora $03FF00.l,X		; 1F 00 FF 03
	tay		; A8
	cmp #$23.b		; C9 23
	cmp $98C3B8.l,X		; DF B8 C3 98
	cmp ($04.b,X)		; C1 04
	ora $823301.l		; 0F 01 33 82
	ora ($01.b,X)		; 01 01
	trb $1F08.w		; 1C 08 1F
	cmp $87.b,S		; C3 87
	cpy #$87.b		; C0 87
	cpy #$03.b		; C0 03
	cpy #$00.b		; C0 00
	brk $02.b		; 00 02
	bit $CD22.w		; 2C 22 CD
	inx		; E8
	ora [$A8.b],Y		; 17 A8
	eor [$F8.b]		; 47 F8
	ora $B0.b		; 05 B0
	ora $C8.b		; 05 C8
	and $1970.w		; 2D 70 19
	sty $3AF1.w		; 8C F1 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	bmi   0.b		; 30 00
	sed		; F8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	tsb $A4.b		; 04 A4
	.db $42, $14		; 42 14
.INDEX 8
	sep #$D4		; E2 D4
	jsl $D922DC.l		; 22 DC 22 D9
	rol $D9.b		; 26 D9
	bit $91.b		; 24 91
	jmp ($7881.w)		; 6C 81 78
	ldy $5CBC.w,X		; BC BC 5C
	jmp $DCDCDC.l		; 5C DC DC DC
	jmp.w [$DDDC]		; DC DC DD
	cld		; D8
	cmp $D9D8.w,Y		; D9 D8 D9
	bcs -79.b		; B0 B1
	and $1F41.w,Y		; 39 41 1F
	bvs  22.b		; 70 16
	adc [$1C.b],Y		; 77 1C
	and ($0C.b),Y		; 31 0C
	and ($4C.b,X)		; 21 4C
	and ($DC.b,X)		; 21 DC
	adc ($D6.b),Y		; 71 D6
	adc ($01.b),Y		; 71 01
	asl $20.b		; 06 20
	jsr $2028.w		; 20 28 20
	asl $1E00.w		; 0E 00 1E
	brk $1E.b		; 00 1E
	brk $4E.b		; 00 4E
	brk $4E.b		; 00 4E
	brk $C8.b		; 00 C8
	rti		; 40

	beq   0.b		; F0 00
	rts		; 60

	beq -128.b		; F0 80
	bcs -128.b		; B0 80
	bcs -128.b		; B0 80
	ldy #$80.b		; A0 80
	ldy #$80.b		; A0 80
	ldy #$40.b		; A0 40
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	jsr $2060.w		; 20 60 20
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sty $9224.w		; 8C 24 92
	bmi -102.b		; 30 9A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp $547C.w		; 4C 7C 54
	jmp ($8000.w,X)		; 7C 00 80
	brk $F8.b		; 00 F8
	bpl -114.b		; 10 8E
	mvp $92,$83		; 44 83 92
	adc ($C1.b,X)		; 61 C1
	sec		; 38
	rti		; 40

	ldy $AE50.w,X		; BC 50 AE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	ror $9F7E.w,X		; 7E 7E 9F
	sta $D3C7C7.l,X		; 9F C7 C7 D3
	cmp ($59.b,S),Y		; D3 59
	eor $0000.w,Y		; 59 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $70.b		; 00 70
	brk $8C.b		; 00 8C
	bit $92.b		; 24 92
	bmi -102.b		; 30 9A
	adc ($99.b)		; 72 99
	stz $9B.b		; 64 9B
	lda ($5E.b,X)		; A1 5E
	eor $39.b		; 45 39
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp $547C.w		; 4C 7C 54
	jmp ($7E46.w,X)		; 7C 46 7E
	jmp ($B964.w,X)		; 7C 64 B9
	lda ($D7.b,X)		; A1 D7
	cmp [$00.b],Y		; D7 00
	ora [$01.b]		; 07 01
	php		; 08
	asl A		; 0A
	bpl  14.b		; 10 0E
	ora ($0D.b)		; 12 0D
	ora ($01.b)		; 12 01
	inc $0F10.w,X		; FE 10 0F
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0B0F.w		; 0D 0F 0B
	ora $070F09.l		; 0F 09 0F 07
	ora ($F3.b,X)		; 01 F3
	sbc ($FC.b),Y		; F1 FC
	jsr ($0C01.w,X)		; FC 01 0C
	brk $02.b		; 00 02
	ora [$00.b]		; 07 00
	ora $1E01.w,Y		; 19 01 1E
	asl A		; 0A
	ora $863F60.l		; 0F 60 3F 86
	sbc $000306.l,X		; FF 06 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($16.b,X)		; 01 16
	asl A		; 0A
	ora $0E10.w,Y		; 19 10 0E
	ror $0F.b,X		; 76 0F
	cop $7F.b		; 02 7F
	cld		; D8
	cop $E4.b		; 02 E4
	asl $B8.b,X		; 16 B8
	sty $78C4.w		; 8C C4 78
	ror $AE2C.w,X		; 7E 2C AE
	eor ($FF.b,X)		; 41 FF
	sta $8C56.w		; 8D 56 8C
	jsr ($E800.w,X)		; FC 00 E8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	bra  64.b		; 80 40
	bpl -116.b		; 10 8C
	brk $AD.b		; 00 AD
	jsr $68FB.w		; 20 FB 68
	sbc [$53.b],Y		; F7 53
	sbc $7D29.w		; ED 29 7D
	ora $39.b,X		; 15 39
	eor ($1F.b,X)		; 41 1F
	bvs  22.b		; 70 16
	and [$1D.b],Y		; 37 1D
	and ($68.b),Y		; 31 68
	tsb $53.b		; 04 53
	php		; 08
	and #$12.b		; 29 12
	ora $02.b,X		; 15 02
	ora ($06.b,X)		; 01 06
	jsr $0920.w		; 20 20 09
	ora ($0E.b,X)		; 01 0E
	brk $FE.b		; 00 FE
	tay		; A8
	dec $DE4C.w,X		; DE 4C DE
	mvn $50,$DE		; 54 DE 50
	iny		; C8
	rti		; 40

	beq   8.b		; F0 08
	bmi  -8.b		; 30 F8
	rti		; 40

	cpy $80A8.w		; CC A8 80
	jmp $5420.w		; 4C 20 54
	jsr $2050.w		; 20 50 20
	rti		; 40

	bmi   0.b		; 30 00
	brk $40.b		; 00 40
	rti		; 40

	sec		; 38
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $18.b		; 00 18
	brk $90.b		; 00 90
	sta $577FC0.l,X		; 9F C0 7F 57
	lda $D86797.l,X		; BF 97 67 D8
	trb $0060.w		; 1C 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$93.b]		; 07 93
	ora [$50.b]		; 07 50
	ora [$18.b]		; 07 18
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	bmi 120.b		; 30 78
	bmi -72.b		; 30 B8
	bvs -72.b		; 70 B8
	cpx #$60.b		; E0 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	sei		; 78
	bpl 120.b		; 10 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $18.b		; 04 18
	bpl  32.b		; 10 20
	jsl $470841.l		; 22 41 08 47
	cop $9C.b		; 02 9C
	trb $A8.b		; 14 A8
	and ($D8.b,X)		; 21 D8
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	sec		; 38
	sec		; 38
	adc $63.b,S		; 63 63
	eor [$57.b],Y		; 57 57
	and $D1282F.l		; 2F 2F 28 D1
	.db $42, $B1		; 42 B1
	bvc -94.b		; 50 A2
	bpl -30.b		; 10 E2
	bpl 100.b		; 10 64
	php		; 08
	stz $00.b,X		; 74 00
	bit $0C00.w,X		; 3C 00 0C
	rol $5E2E.w		; 2E 2E 5E
	lsr $5C5C.w,X		; 5E 5C 5C
	jmp $18185C.l		; 5C 5C 18 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0000.w		; 0C 00 00
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
	brk $7A.b		; 00 7A
	bit $78BC.w,X		; 3C BC 78
	ldy $78.b,X		; B4 78
	inx		; E8
	bvs -24.b		; 70 E8
	bvs  80.b		; 70 50
	cpx #$50.b		; E0 50
	cpx #$60.b		; E0 60
	cpy #$3C.b		; C0 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $19.b		; 00 19
	inc $1A.b		; E6 1A
	and $1A.b		; 25 1A
	and $09.b		; 25 09
	rol $0D.b,X		; 36 0D
	ora ($0C.b)		; 12 0C
	ora ($08.b,S),Y		; 13 08
	ora [$08.b],Y		; 17 08
	asl $39.b,X		; 16 39
	and $1A1A.w,Y		; 39 1A 1A
	inc A		; 1A
	inc A		; 1A
	ora $0D1D.w,X		; 1D 1D 0D
	ora $0D0D.w		; 0D 0D 0D
	tsb $080C.w		; 0C 0C 08
	php		; 08
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	php		; 08
	beq -96.b		; F0 A0
	trb $42.b		; 14 42
	bit $89.b,X		; 34 89
	ror $00.b,X		; 76 00
	sta $041401.l,X		; 9F 01 14 04
	ora ($0F.b),Y		; 11 0F
	trb $0F0F.w		; 1C 0F 0F
	sbc $EBEBEF.l		; EF EF EB EB
	txy		; 9B
	txy		; 9B
	brk $00.b		; 00 00
	asl $0F04.w		; 0E 04 0F
	ora ($03.b,X)		; 01 03
	brk $E2.b		; 00 E2
	sep #$49		; E2 49
	eor $05.b,X		; 55 05
	lda $11AE44.l,X		; BF 44 AE 11
	inc $F4.b		; E6 F4
	phd		; 0B
	pei ($A3.b)		; D4 A3
	jsr ($FF02.w,X)		; FC 02 FF
	sbc $C9EBEB.l,X		; FF EB EB C9
	cmp #$51.b		; C9 51
	eor ($9D.b,X)		; 41 9D
	sta $19.b		; 85 19
	ora #$98.b		; 09 98
	ldx #$98.b		; A2 98
	brk $F7.b		; 00 F7
	ror $F8F7.w,X		; 7E F7 F8
	ldx $CBC1.w,Y		; BE C1 CB
	bit $FF.b,X		; 34 FF
	ora $B7.b,S		; 03 B7
	eor $629F.w		; 4D 9F 62
	sbc $7F6015.l		; EF 15 60 7F
	cpy #$FF.b		; C0 FF
	ora ($FC.b,X)		; 01 FC
	bmi -52.b		; 30 CC
	ora ($1F.b,X)		; 01 1F
	rti		; 40

	ora $150362.l,X		; 1F 62 03 15
	ora ($73.b,X)		; 01 73
	sta $51AC.w		; 8D AC 51
	adc ($8C.b)		; 72 8C
	dec $D060.w,X		; DE 60 D0
	cpx #$F8.b		; E0 F8
	cpy #$F4.b		; C0 F4
	tay		; A8
	plx		; FA
	mvn $20,$AC		; 54 AC 20
	bvc   0.b		; 50 00
	sty $0000.w		; 8C 00 00
	rts		; 60

	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	php		; 08
	cpx #$54.b		; E0 54
	cpy #$06.b		; C0 06
	bpl  46.b		; 10 2E
	clc		; 18
	adc $38.b,S		; 63 38
	adc ($38.b,S),Y		; 73 38
	eor $3C.b,X		; 55 3C
	dec A		; 3A
	asl $1B2C.w,X		; 1E 2C 1B
	trb $0F08.w		; 1C 08 0F
	brk $07.b		; 00 07
	brk $2F.b		; 00 2F
	php		; 08
	and [$00.b],Y		; 37 00
	and ($00.b,S),Y		; 33 00
	ora $1800.w,Y		; 19 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	cpy $C400.w		; CC 00 C4
	ldy #$E6.b		; A0 E6
	tsb $66.b		; 04 66
	bcc 114.b		; 90 72
	stz $3EC2.w		; 9C C2 3E
	stz $3C5E.w		; 9C 5E 3C
	bvs  64.b		; 70 40
	clv		; B8
	bra  28.b		; 80 1C
	tsb $B8.b		; 04 B8
	jsr $008C.w		; 20 8C 00
	brk $00.b		; 00 00
	tsb $1C1C.w		; 0C 1C 1C
	jsr $0C1E.w		; 20 1E 0C
	rol $2E1C.w		; 2E 1C 2E
	trb $0C1E.w		; 1C 1E 0C
	asl $0E0C.w,X		; 1E 0C 0E
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	tad		; 5B
	and [$9C.b]		; 27 9C
	jmp ($DF03.w,X)		; 7C 03 DF
	jsr $99FF.w		; 20 FF 99
	cmp $79BFFA.l,X		; DF FA BF 79
	adc $388302.l,X		; 7F 02 83 38
	brk $3C.b		; 00 3C
	ora $18.b,S		; 03 18
	jsr $189C.w		; 20 9C 18
	sbc $09FF18.l,X		; FF 18 FF 09
	sbc $7802.w,X		; FD 02 78
	sed		; F8
	brk $64.b		; 00 64
	tya		; 98
	jsr ($9000.w,X)		; FC 00 90
	cpx #$F0.b		; E0 F0
	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	bvc  -4.b		; 50 FC
	tay		; A8
	rti		; 40

	rti		; 40

	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -64.b		; F0 C0
	beq  64.b		; F0 40
	sed		; F8
	brk $F0.b		; 00 F0
	tay		; A8
	cpx #$00.b		; E0 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	asl $3906.w		; 0E 06 39
	ora ($60.b),Y		; 11 60
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	asl $3F0E.w		; 0E 0E 3F
	and $00C000.l,X		; 3F 00 C0 00
	bmi -112.b		; 30 90
	pha		; 48
	cpy #$68.b		; C0 68
	iny		; C8
	stz $90.b		; 64 90
	adc $147884.l		; 6F 84 78 14
	cpx $00.b		; E4 00
	brk $C0.b		; 00 C0
	cpy #$30.b		; C0 30
	beq  80.b		; F0 50
	beq  24.b		; F0 18
	sed		; F8
	beq -112.b		; F0 90
	sbc [$87.b]		; E7 87
	eor $1C005F.l,X		; 5F 5F 00 1C
	tsb $22.b		; 04 22
	plp		; 28
	.db $42, $38		; 42 38
	lsr A		; 4A
	bit $1E42.w,X		; 3C 42 1E
	cpx $2E5F.w		; EC 5F 2E
	ora $0003.w,X		; 1D 03 00
	brk $1C.b		; 00 1C
	trb $3C34.w		; 1C 34 3C
	bit $203C.w		; 2C 3C 20
	bit $1E0C.w,X		; 3C 0C 1E
	cpy #$DF.b		; C0 DF
	beq  -1.b		; F0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra 112.b		; 80 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$1E.b		; C0 1E
	tsb $0C1A.w		; 0C 1A 0C
	bit $3418.w		; 2C 18 34
	bpl 100.b		; 10 64
	jsr $2064.w		; 20 64 20
	jmp ($3C38.w,X)		; 7C 38 3C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	php		; 08
	jsr $2018.w		; 20 18 20
	clc		; 18
	sec		; 38
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	trb $3456.w		; 1C 56 34
	.db $62, $24, $6C		; 62 24 6C
	plp		; 28
	sty $48.b		; 84 48
	tya		; 98
	bvc -56.b		; 50 C8
	bvc -48.b		; 50 D0
	rti		; 40

	trb $3400.w		; 1C 00 34
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  72.b		; 10 48
	bmi  80.b		; 30 50
	jsr $2050.w		; 20 50 20
	rti		; 40

	jsr $230E.w		; 20 0E 23
	tsb $1823.w		; 0C 23 18
	jsl $20261C.l		; 22 1C 26 20
	stz $38.b		; 64 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $1C78.w,X		; BC 78 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	php		; 08
	cpy $6620.w		; CC 20 66
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $4070.w		; 2E 70 40
	trb $1C04.w		; 1C 04 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $16.b		; 00 16
	asl $06.b,X		; 16 06
	php		; 08
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $F478.w,X		; BC 78 F4
	sei		; 78
	pea $F878.w		; F4 78 F8
	bvs -72.b		; 70 B8
	bvs -72.b		; 70 B8
	bvs 120.b		; 70 78
	bmi 120.b		; 30 78
	bmi  56.b		; 30 38
	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $44.b		; 00 44
	ldx #$14.b		; A2 14
	sep #$08		; E2 08
	adc ($06.b)		; 72 06
	and $0F00.w,Y		; 39 00 0F
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	jmp $5C5C5C.l		; 5C 5C 5C 5C
	trb $0E1C.w		; 1C 1C 0E
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$30.b]		; 07 30
	ora $08.b,S		; 03 08
	asl $3302.w		; 0E 02 33
	ora $7C.b,S		; 03 7C
	ldy $37.b,X		; B4 37
	tya		; 98
	adc $239E03.l,X		; 7F 03 9E 23
	ora $000700.l		; 0F 00 07 00
	ora ($00.b,X)		; 01 00
	cop $2C.b		; 02 2C
	trb $73.b		; 14 73
	rti		; 40

	sec		; 38
	cmp $38.b,S		; C3 38
	cmp $18.b,S		; C3 18
	rts		; 60

	ora #$90.b		; 09 90
	phy		; 5A
	inx		; E8
	bit $1D.b,X		; 34 1D
	sbc $23FE.w,Y		; F9 FE 23
	jsr ($EC1A.w,X)		; FC 1A EC
	clc		; 18
	ldy $18.b		; A4 18
	beq   0.b		; F0 00
	lda ($00.b,X)		; A1 00
	cmp $00.b,S		; C3 00
	inc A		; 1A
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $58.b		; 00 58
	rti		; 40

	adc $6B14.w,X		; 7D 14 6B
	and ($7A.b),Y		; 31 7A
	plp		; 28
	rol $02.b,X		; 36 02
	trb $1F20.w		; 1C 20 1F
	sec		; 38
	inc A		; 1A
	and ($0A.b,S),Y		; 33 0A
	and $14.b,S		; 23 14
	cop $31.b		; 02 31
	tsb $28.b		; 04 28
	ora $02.b		; 05 02
	ora #$00.b		; 09 00
	ora $00.b,S		; 03 00
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	brk $FE.b		; 00 FE
	mvn $A6,$EF		; 54 EF A6
	xba		; EB
	ldx $EE.b		; A6 EE
	tay		; A8
	cpx $A2.b		; E4 A2
	sed		; F8
	asl $38.b		; 06 38
	ror $6624.w,X		; 7E 24 66
	mvn $A6,$40		; 54 40 A6
	bpl -90.b		; 10 A6
	bpl -88.b		; 10 A8
	bpl -96.b		; 10 A0
	clc		; 18
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	clc		; 18
	brk $42.b		; 00 42
	sta ($08.b,X)		; 81 08
	stx $21.b		; 86 21
	trb $2855.w		; 1C 55 28
	rol A		; 2A
	eor ($A2.b),Y		; 51 A2
	eor ($50.b),Y		; 51 50
	lda $44.b,S		; A3 44
	ldx #$7E.b		; A2 7E
	ror $7979.w,X		; 7E 79 79
	sbc $E3.b,S		; E3 E3
	cmp [$D7.b],Y		; D7 D7
	ldx $AEAE.w		; AE AE AE
	ldx $5E5E.w		; AE 5E 5E
	jmp $C3235C.l		; 5C 5C 23 C3
	sta ($51.b,X)		; 81 51
	php		; 08
	cmp ($25.b)		; D2 25
	phx		; DA
	brk $FF.b		; 00 FF
	ora [$50.b]		; 07 50
	ora ($46.b,S),Y		; 13 46
	and $3F3F70.l,X		; 3F 70 3F 3F
	lda $AFAFBF.l,X		; BF BF AF AF
	adc $026D.w		; 6D 6D 02
	cop $38.b		; 02 38
	bpl  62.b		; 10 3E
	asl $0E.b		; 06 0E
	brk $8F.b		; 00 8F
	sta [$2E.b]		; 87 2E
	eor ($16.b),Y		; 51 16
	sbc $BA11.w,X		; FD 11 BA
	eor $9A.b		; 45 9A
	bne  47.b		; D0 2F
	bvc -114.b		; 50 8E
	beq   8.b		; F0 08
	inc $FF.b,X		; F6 FF
	ldy #$AF.b		; A0 AF
	bit $27.b		; 24 27
	lsr $07.b		; 46 07
	stz $15.b,X		; 74 15
	stz $24.b		; 64 24
	rts		; 60

	dey		; 88
	rts		; 60

	brk $60.b		; 00 60
	tya		; 98
	bne -116.b		; D0 8C
	inx		; E8
	dec $F4.b		; C6 F4
.ACCU 16
.INDEX 16
	rep #$F4		; C2 F4
	sbc $FA.b,S		; E3 FA
	adc ($F2.b,X)		; 61 F2
	adc #$09F2.w		; 69 F2 09
	bmi -16.b		; 30 F0
	sec		; 38
	sed		; F8
	stz $DCFC.w		; 9C FC DC
	jsr ($FE4E.w,X)		; FC 4E FE
	ror $26FE.w		; 6E FE 26
	inc $06.b,X		; F6 06
	asl $D4.b,X		; 16 D4
	rtl		; 6B

	stz $2A.b,X		; 74 2A
	ldy $DA.b		; A4 DA
	jsr $40DC.w		; 20 DC 40
	clv		; B8
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $06.b		; 66 06
	ldy $04.b		; A4 04
	bit $34.b,X		; 34 34
	plp		; 28
	plp		; 28
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	asl $1300.w		; 0E 00 13
	cop $1F.b		; 02 1F
	php		; 08
	ora $030F07.l,X		; 1F 07 0F 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	cop $0C.b		; 02 0C
	php		; 08
	ora ($07.b,X)		; 01 07
	ora [$00.b]		; 07 00
	ora $000300.l		; 0F 00 03 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sty $9224.w		; 8C 24 92
	bmi -102.b		; 30 9A
	adc ($99.b)		; 72 99
	stz $9B.b		; 64 9B
	and ($DE.b,X)		; 21 DE
	sta $79.b		; 85 79
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp $547C.w		; 4C 7C 54
	jmp ($7E46.w,X)		; 7C 46 7E
	jmp ($3964.w,X)		; 7C 64 39
	and ($97.b,X)		; 21 97
	sta [$00.b],Y		; 97 00
	ora [$01.b]		; 07 01
	php		; 08
	asl A		; 0A
	bpl  14.b		; 10 0E
	ora ($0D.b)		; 12 0D
	ora ($01.b)		; 12 01
	inc $0F10.w,X		; FE 10 0F
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0B0F.w		; 0D 0F 0B
	ora $070F09.l		; 0F 09 0F 07
	ora ($F3.b,X)		; 01 F3
	sbc ($FC.b),Y		; F1 FC
	jsr ($0C01.w,X)		; FC 01 0C
	brk $02.b		; 00 02
	asl $3301.w		; 0E 01 33
	cop $7C.b		; 02 7C
	ldy $B7.b,X		; B4 B7
	tya		; 98
	cmp $F38E03.l,X		; DF 03 8E F3
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	cop $2C.b		; 02 2C
	trb $73.b		; 14 73
	rti		; 40

	sec		; 38
	sbc $18.b,S		; E3 18
	ora $08.b,S		; 03 08
	cld		; D8
	cop $E4.b		; 02 E4
	asl $B8.b,X		; 16 B8
	sty $F884.w		; 8C 84 F8
	inc $5E59.w,X		; FE 59 5E
	bra  -2.b		; 80 FE
	clc		; 18
	ldx $FC19.w		; AE 19 FC
	brk $E8.b		; 00 E8
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	mvp $02,$18		; 44 18 02
	sta ($22.b,X)		; 81 22
	ora $5802.w,Y		; 19 02 58
	.db $42, $08		; 42 08
	cpy $6620.w		; CC 20 66
	jsr $0466.w		; 20 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $4070.w		; 2E 70 40
	trb $1C04.w		; 1C 04 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $16.b		; 00 16
	asl $06.b,X		; 16 06
	php		; 08
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	jsr $0098.w		; 20 98 00
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	sei		; 78
	sei		; 78
	bra  70.b		; 80 46
	cpy $22.b		; C4 22
	rti		; 40

	lda $52.b,S		; A3 52
	lda ($0A.b,X)		; A1 0A
	sbc ($6A.b),Y		; F1 6A
	sta ($6E.b),Y		; 91 6E
	sta ($6C.b),Y		; 91 6C
	sta ($BC.b,S),Y		; 93 BC
	ldy $FCFC.w,X		; BC FC FC
	dec $5EDE.w,X		; DE DE 5E
	lsr $2E2E.w,X		; 5E 2E 2E
	ror $6E6E.w		; 6E 6E 6E
	ror $6E6E.w		; 6E 6E 6E
	jmp ($4892.w)		; 6C 92 48
	ldx $40.b,Y		; B6 40
	ldy $F800.w,X		; BC 00 F8
	sta $050FF0.l		; 8F F0 0F 05
	eor $F00FC5.l		; 4F C5 0F F0
	jmp ($6C6C.w)		; 6C 6C 6C
	jmp ($5858.w)		; 6C 58 58
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sbc $01.b,X		; F5 01
	lda $81.b,X		; B5 81
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $0F7B04.l		; 0F 04 7B 0F
	sbc $F8F77F.l,X		; FF 7F F7 F8
	clv		; B8
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $0F.b		; 04 0F
	ora #$217F.w		; 09 7F 21
	sbc $00FFC0.l,X		; FF C0 FF 00
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C080.w		; C0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $18.b		; 04 18
	bpl  32.b		; 10 20
	jsl $470841.l		; 22 41 08 47
	cop $9C.b		; 02 9C
	trb $A8.b		; 14 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	sec		; 38
	sec		; 38
	adc $63.b,S		; 63 63
	eor [$57.b],Y		; 57 57
	and ($D8.b,X)		; 21 D8
	plp		; 28
	cmp ($42.b),Y		; D1 42
	lda ($50.b),Y		; B1 50
	lda $10.b,S		; A3 10
.INDEX 8
	sep #$14		; E2 14
	.db $62, $0C, $72		; 62 0C 72
	asl $39.b		; 06 39
	and $2F2F2F.l		; 2F 2F 2F 2F
	lsr $5E5E.w,X		; 5E 5E 5E
	lsr $5C5C.w,X		; 5E 5C 5C
	trb $1C1C.w		; 1C 1C 1C
	trb $0E0E.w		; 1C 0E 0E
	tsb $1A03.w		; 0C 03 1A
	php		; 08
	asl $1F00.w,X		; 1E 00 1F
	tsb $0B1F.w		; 0C 1F 0B
	asl $0F0B.w,X		; 1E 0B 0F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	tsb $01.b		; 04 01
	trb $1F04.w		; 1C 04 1F
	phd		; 0B
	ora $001F02.l,X		; 1F 02 1F 00
	ora $7C0300.l		; 0F 00 03 7C
	clv		; B8
	ldy $F478.w,X		; BC 78 F4
	sei		; 78
	pea $F878.w		; F4 78 F8
	bvs -72.b		; 70 B8
	bvs -72.b		; 70 B8
	bvs 120.b		; 70 78
	bmi  24.b		; 30 18
	jsr $4038.w		; 20 38 40
	sei		; 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $3C.b		; 00 3C
	clc		; 18
	bit $18.b,X		; 34 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	iny		; C8
	rti		; 40

	sed		; F8
	bvs 120.b		; 70 78
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rts		; 60

	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $006000.l,X		; FF 00 60 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $48.b		; 00 48
	bmi   0.b		; 30 00
	pea $14A2.w		; F4 A2 14
	eor #$8036.w		; 49 36 80
	adc $04D401.l,X		; 7F 01 D4 04
	sta ($0F.b),Y		; 91 0F
	trb $CFCF.w		; 1C CF CF
	ora $EBEB0F.l		; 0F 0F EB EB
	stp		; DB
	stp		; DB
	cpy #$C0.b		; C0 C0
	stx $0F84.w		; 8E 84 0F
	ora ($03.b,X)		; 01 03
	brk $E2.b		; 00 E2
	sep #$49		; E2 49
	eor $05.b,X		; 55 05
	lda $11AE44.l,X		; BF 44 AE 11
	inc $F4.b		; E6 F4
	phd		; 0B
	pei ($A3.b)		; D4 A3
	jsr ($FF02.w,X)		; FC 02 FF
	sbc $C9EBEB.l,X		; FF EB EB C9
	cmp #$4151.w		; C9 51 41
	sta $1985.w,X		; 9D 85 19
	ora #$A298.w		; 09 98 A2
	tya		; 98
	brk $AC.b		; 00 AC
	tas		; 1B
	sbc [$9C.b]		; E7 9C
	jmp.w [$BF83]		; DC 83 BF
	pha		; 48
	sta $6D9F63.l,X		; 9F 63 9F 6D
	sbc $55AF02.l,X		; FF 02 AF 55
	ora $B8.b,S		; 03 B8
	bra  -4.b		; 80 FC
	ora $D8.b,S		; 03 D8
	rti		; 40

	tya		; 98
	adc ($9F.b,X)		; 61 9F
	rts		; 60

	ora $550302.l,X		; 1F 02 03 55
	ora ($E4.b,X)		; 01 E4
	clc		; 18
	cli		; 58
	ldy #$E4.b		; A0 E4
	clc		; 18
	ldy $D0C0.w,X		; BC C0 D0
	cpx #$F0.b		; E0 F0
	cpy #$F0.b		; C0 F0
	ldy #$F8.b		; A0 F8
	bvc  88.b		; 50 58
	rti		; 40

	ldy #$00.b		; A0 00
	clc		; 18
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	cpx #$50.b		; E0 50
	cpy #$3F.b		; C0 3F
	trb $3456.w		; 1C 56 34
	.db $62, $24, $6C		; 62 24 6C
	plp		; 28
	sty $48.b		; 84 48
	tya		; 98
	bvc -56.b		; 50 C8
	bvc -48.b		; 50 D0
	rti		; 40

	trb $3400.w		; 1C 00 34
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  72.b		; 10 48
	bmi  80.b		; 30 50
	jsr $2050.w		; 20 50 20
	rti		; 40

	jsr $147D.w		; 20 7D 14
	rtl		; 6B

	and ($7A.b),Y		; 31 7A
	plp		; 28
	rol $02.b,X		; 36 02
	trb $1F20.w		; 1C 20 1F
	sec		; 38
	inc A		; 1A
	and ($0A.b,S),Y		; 33 0A
	and $14.b,S		; 23 14
	cop $31.b		; 02 31
	tsb $28.b		; 04 28
	ora $02.b		; 05 02
	ora #$0300.w		; 09 00 03
	brk $00.b		; 00 00
	tsb $1C00.w		; 0C 00 1C
	brk $FE.b		; 00 FE
	mvn $A6,$EF		; 54 EF A6
	xba		; EB
	ldx $EE.b		; A6 EE
	tay		; A8
	cpx $A2.b		; E4 A2
	sed		; F8
	asl $38.b		; 06 38
	ror $6624.w,X		; 7E 24 66
	mvn $A6,$40		; 54 40 A6
	bpl -90.b		; 10 A6
	bpl -88.b		; 10 A8
	bpl -96.b		; 10 A0
	clc		; 18
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	clc		; 18
	brk $0E.b		; 00 0E
	and $0C.b,S		; 23 0C
	and $18.b,S		; 23 18
	jsl $20261C.l		; 22 1C 26 20
	stz $38.b		; 64 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $1C78.w,X		; BC 78 1C
	brk $1E.b		; 00 1E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	cop $61.b		; 02 61
	bit $43.b		; 24 43
	ora #$52C6.w		; 09 C6 52
	sty $9428.w		; 8C 28 94
	ora $A8.b,X		; 15 A8
	bpl -87.b		; 10 A9
	rol A		; 2A
	cmp ($3F.b),Y		; D1 3F
	and $793C3C.l,X		; 3F 3C 3C 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	rol $052E.w		; 2E 2E 05
	sbc $B048.w,Y		; F9 48 B0
	bpl  37.b		; 10 25
	bvc  37.b		; 50 25
	txa		; 8A
	adc $01.b,X		; 75 01
	lda $1B3017.l,X		; BF 17 30 1B
	rol $0F.b,X		; 36 0F
	ora $DFDFDF.l		; 0F DF DF DF
	cmp $9ADADA.l,X		; DF DA DA 9A
	txs		; 9A
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	asl $8C.b		; 06 8C
	phb		; 8B
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($20.b)		; B2 20
	jmp ($5C89.w,X)		; 7C 89 5C
	bmi -59.b		; 30 C5
	tax		; AA
	eor $36.b,X		; 55 36
	sta $FCFC.w,Y		; 99 FC FC
	inc $CFFE.w,X		; FE FE CF
	cmp $B38B8B.l		; CF 8B 8B B3
	sta ($3B.b,S),Y		; 93 3B
	ora $72.b,S		; 03 72
	eor ($62.b)		; 52 62
	txa		; 8A
	brk $E0.b		; 00 E0
	bra  56.b		; 80 38
	rti		; 40

	sty $46A0.w		; 8C A0 46
	trb $62.b		; 14 62
	brk $73.b		; 00 73
	cop $F1.b		; 02 F1
	.db $62, $91, $00		; 62 91 00
	brk $E0.b		; 00 E0
	cpx #$78.b		; E0 78
	sei		; 78
	ldy $9CBC.w,X		; BC BC 9C
	stz $8E8E.w		; 9C 8E 8E
	ldx $6EAE.w		; AE AE 6E
	ror $469D.w		; 6E 9D 46
	adc $9686.w,Y		; 79 86 96
	adc #$6699.w		; 69 99 66
	sbc $5BAF01.l,X		; FF 01 AF 5B
	sbc $6AFF25.l,X		; FF 25 FF 6A
	asl $90.b		; 06 90
	asl $10.b		; 06 10
	adc ($18.b,X)		; 61 18
	ror $10.b		; 66 10
	brk $11.b		; 00 11
	eor ($1F.b,X)		; 41 1F
	jsr $6A07.w		; 20 07 6A
	ora $78.b,S		; 03 78
	bmi -40.b		; 30 D8
	bmi -56.b		; 30 C8
	bmi -68.b		; 30 BC
	rti		; 40

	eor $85FFB4.l		; 4F B4 FF 85
	xba		; EB
	eor $FF.b		; 45 FF
	ldy #$B0.b		; A0 B0
	bra -80.b		; 80 B0
	bra  48.b		; 80 30
	brk $40.b		; 00 40
	brk $34.b		; 00 34
	sta ($05.b,X)		; 81 05
	cmp ($04.b,X)		; C1 04
	cmp ($A0.b,X)		; C1 A0
	sta ($0C.b,X)		; 81 0C
	ora ($0C.b),Y		; 11 0C
	ora ($0E.b),Y		; 11 0E
	ora ($12.b,S),Y		; 13 12
	and ($1C.b,S),Y		; 33 1C
	ror $7C.b		; 66 7C
	inc A		; 1A
	ldy $F478.w,X		; BC 78 F4
	sei		; 78
	asl $0E00.w		; 0E 00 0E
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $20.b		; 00 20
	jsr $1818.w		; 20 18 18
	bpl 104.b		; 10 68
	sei		; 78
	brk $0F.b		; 00 0F
	ora $0D.b,S		; 03 0D
	asl $0F.b		; 06 0F
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $000F00.l		; 0F 00 0F 00
	ora $000600.l		; 0F 00 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	clc		; 18
	jsr ($FC18.w,X)		; FC 18 FC
	cld		; D8
	cpx $F0F0.w		; EC F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3C18.w		; 1C 18 3C
	clc		; 18
	jsr ($FC88.w,X)		; FC 88 FC
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	bra -120.b		; 80 88
	dey		; 88
	sty $C440.w		; 8C 40 C4
	bit $66.b		; 24 66
	bpl  50.b		; 10 32
	asl A		; 0A
	tas		; 1B
	ora [$18.b]		; 07 18
	ora $007036.l		; 0F 36 70 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	php		; 08
	asl $16.b,X		; 16 16
	inc A		; 1A
	php		; 08
	inc A		; 1A
	tsb $182C.w		; 0C 2C 18
	bit $10.b,X		; 34 10
	stz $20.b		; 64 20
	jmp ($7C28.w)		; 6C 28 7C
	sec		; 38
	sec		; 38
	brk $08.b		; 00 08
	tsb $0C.b		; 04 0C
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	php		; 08
	jsr $2818.w		; 20 18 28
	bpl  56.b		; 10 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $207009.l,X		; 1F 09 70 20
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $007F7F.l,X		; 1F 7F 7F 00
	bvs  64.b		; 70 40
	dey		; 88
	plp		; 28
	sty $30.b,X		; 94 30
	stz $9A74.w		; 9C 74 9A
	stz $9A.b		; 64 9A
	rti		; 40

	lda $007088.l,X		; BF 88 70 00
	brk $70.b		; 00 70
	bvs 104.b		; 70 68
	sei		; 78
	rti		; 40

	sei		; 78
	mvn $5C,$7C		; 54 7C 5C
	stz $70.b		; 64 70
	rti		; 40

	sta $00008F.l		; 8F 8F 00 00
	brk $0E.b		; 00 0E
	tsb $13.b		; 04 13
	asl A		; 0A
	and $0E.b		; 25 0E
	and $3E.b		; 25 3E
	eor $24.b		; 45 24
	phx		; DA
	rti		; 40

	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	asl $1A0E.w		; 0E 0E 1A
	asl $1E12.w,X		; 1E 12 1E
	rol $3E.b,X		; 36 3E
	bit $CC24.w,X		; 3C 24 CC
	cpy $1E.b		; C4 1E
	jmp ($5C3E.w)		; 6C 3E 5C
	lsr $7A3C.w,X		; 5E 3C 7A
	bit $387C.w,X		; 3C 7C 38
	jmp ($7438.w,X)		; 7C 38 74
	sec		; 38
	sei		; 78
	bmi  44.b		; 30 2C
	bit $100C.w		; 2C 0C 10
	trb $3C20.w		; 1C 20 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $A8.b		; 00 A8
	bvs -80.b		; 70 B0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $007000.l,X		; FF 00 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	cmp ($20.b)		; D2 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $08.b,X		; 74 08
	bit $03.b,X		; 34 03
	tsb $0307.w		; 0C 07 03
	ora [$03.b]		; 07 03
	bit $2C2C.w		; 2C 2C 2C
	bit $2C2C.w		; 2C 2C 2C
	plp		; 28
	plp		; 28
	php		; 08
	php		; 08
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora [$1A.b]		; 07 1A
	ora $08.b,S		; 03 08
	ora [$04.b]		; 07 04
	asl $3A02.w,X		; 1E 02 3A
	eor #$14BD.w		; 49 BD 14
	sbc $06BF11.l,X		; FF 11 BF 06
	asl $070A.w		; 0E 0A 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $09.b		; 00 09
	and $54.b		; 25 54
	lda ($41.b)		; B2 41
	bcs  70.b		; B0 46
	bcs -20.b		; B0 EC
	ora $F0.b,S		; 03 F0
	ora $80.b		; 05 80
	adc #$3120.w		; 69 20 31
	brk $E1.b		; 00 E1
	adc $FA42.w,Y		; 79 42 FA
	and $F8.b,X		; 35 F8
	ora [$70.b]		; 07 70
	brk $F8.b		; 00 F8
	brk $D0.b		; 00 D0
	rti		; 40

	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	sta ($01.b,X)		; 81 01
	and ($02.b)		; 32 02
	brk $00.b		; 00 00
	.db $62, $91, $E2		; 62 91 E2
	ora ($C0.b),Y		; 11 C0
	and ($D4.b,S),Y		; 33 D4
	jsl $306688.l		; 22 88 66 30
	cpy $B840.w		; CC 40 B8
	brk $E0.b		; 00 E0
	inc $EEEE.w		; EE EE EE
	inc $EEEE.w		; EE EE EE
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$B8B8]		; DC B8 B8
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	sbc [$51.b],Y		; F7 51
	sbc $024B26.l		; EF 26 4B 02
	tda		; 7B
	asl A		; 0A
	ora ($22.b,S),Y		; 13 22
	ora $3B1A20.l,X		; 1F 20 1A 3B
	tsb $31.b		; 04 31
	eor ($09.b),Y		; 51 09
	rol $10.b		; 26 10
	cop $34.b		; 02 34
	asl A		; 0A
	tsb $02.b		; 04 02
	tsb $0000.w		; 0C 00 00
	tsb $00.b		; 04 00
	asl $F810.w,X		; 1E 10 F8
	bvc -68.b		; 50 BC
	tya		; 98
	ldy $9CA8.w,X		; BC A8 9C
	bra -104.b		; 80 98
	sty $16F4.w		; 8C F4 16
	jsr $22E2.w		; 20 E2 22
	adc $50.b,S		; 63 50
	brk $98.b		; 00 98
	rti		; 40

	tay		; A8
	rti		; 40

	bra  96.b		; 80 60
	bra  96.b		; 80 60
	php		; 08
	brk $5C.b		; 00 5C
	rti		; 40

	trb $1700.w		; 1C 00 17
	ora $2B0F1E.l		; 0F 1E 0F 2B
	inc A		; 1A
	and $16.b,X		; 35 16
	.db $42, $24		; 42 24
	jmp ($5428.w)		; 6C 28 54
	clc		; 18
	dey		; 88
	bvc   2.b		; 50 02
	ora $000F.w		; 0D 0F 00
	inc A		; 1A
	tsb $16.b		; 04 16
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  24.b		; 10 18
	jsr $2050.w		; 20 50 20
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	tsb $08.b		; 04 08
	ora ($18.b,X)		; 01 18
	cop $11.b		; 02 11
	ora $32.b		; 05 32
	ora ($25.b)		; 12 25
	asl A		; 0A
	and $00.b		; 25 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$0F.b]		; 07 0F
	ora $1D0E0E.l		; 0F 0E 0E 1D
	ora $1A1A.w,X		; 1D 1A 1A
	inc A		; 1A
	inc A		; 1A
	and ($CC.b)		; 32 CC
	ora ($2C.b)		; 12 2C
	lsr $38.b		; 46 38
	ora $EA.b		; 05 EA
	sty $4B.b,X		; 94 4B
	brk $9E.b		; 00 9E
	ora ($94.b,X)		; 01 94
	ldx #$16.b		; A2 16
	tsa		; 3B
	and ($DB.b,S),Y		; 33 DB
	stp		; DB
	cmp [$C7.b]		; C7 C7
	ora [$17.b],Y		; 17 17
	ldy $B4.b,X		; B4 B4
	adc ($70.b),Y		; 71 70
	sbc $E0.b,S		; E3 E0
	sbc ($E0.b,X)		; E1 E0
	adc ($6B.b),Y		; 71 6B
	and #$423E.w		; 29 3E 42
	sta ($24.b,S),Y		; 93 24
	cmp ($7F.b),Y		; D1 7F
	dey		; 88
	adc $D2.b		; 65 D2
	sbc $0CE200.l,X		; FF 00 E2 0C
	sbc $F5.b,X		; F5 F5
	sbc $E5.b		; E5 E5
	jmp ($AE60.w)		; 6C 60 AE
	ldy #$04.b		; A0 04
	brk $CC.b		; 00 CC
	cmp ($CC.b)		; D2 CC
	brk $FF.b		; 00 FF
	tsb $3049.w		; 0C 49 30
	mvp $52,$B8		; 44 B8 52
	ldy $E41A.w		; AC 1A E4
	ora $0DE6.w,Y		; 19 E6 0D
	lda ($0D.b)		; B2 0D
	sta ($0D.b)		; 92 0D
	sta ($CF.b)		; 92 CF
	cmp $DBD7D7.l		; CF D7 D7 DB
	stp		; DB
	txy		; 9B
	txy		; 9B
	ora $1D1D.w,X		; 1D 1D 1D
	ora $0D0D.w,X		; 1D 0D 0D
	ora $380D.w		; 0D 0D 38
	.db $62, $18, $42		; 62 18 42
	trb $1C46.w		; 1C 46 1C
	lsr $20.b		; 46 20
	stz $38.b		; 64 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $1C78.w,X		; BC 78 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	bpl 104.b		; 10 68
	rti		; 40

	cpy $00.b		; C4 00
	dec $20.b		; C6 20
	ror $04.b		; 66 04
	ror $14.b		; 66 14
	rol $17.b,X		; 36 17
	bmi  15.b		; 30 0F
	rol $1F.b,X		; 36 1F
	rol $0038.w		; 2E 38 00
	jmp ($1C44.w,X)		; 7C 44 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	php		; 08
	brk $16.b		; 00 16
	asl $06.b,X		; 16 06
	php		; 08
	ora [$03.b]		; 07 03
	asl $03.b		; 06 03
	phd		; 0B
	asl $0D.b		; 06 0D
	tsb $19.b		; 04 19
	php		; 08
	tas		; 1B
	asl A		; 0A
	asl $0E0C.w,X		; 1E 0C 0E
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	cop $08.b		; 02 08
	asl $0A.b		; 06 0A
	tsb $0C.b		; 04 0C
	brk $00.b		; 00 00
	brk $BC.b		; 00 BC
	sei		; 78
	ldy $78.b,X		; B4 78
	pea $F878.w		; F4 78 F8
	bvs  -8.b		; 70 F8
	bvs -24.b		; 70 E8
	bvs -24.b		; 70 E8
	bvs -16.b		; 70 F0
	rts		; 60

	sec		; 38
	rti		; 40

	sei		; 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $F0.b		; 00 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	asl $7D.b		; 06 7D
	bmi 122.b		; 30 7A
	bmi  93.b		; 30 5D
	bmi  55.b		; 30 37
	asl A		; 0A
	asl $0701.w		; 0E 01 07
	brk $05.b		; 00 05
	cop $01.b		; 02 01
	bmi  51.b		; 30 33
	sei		; 78
	ora ($7C.b),Y		; 11 7C
	brk $7A.b		; 00 7A
	cop $38.b		; 02 38
	ora ($0C.b,X)		; 01 0C
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	lda [$D8.b]		; A7 D8
	phy		; 5A
	sbc $67.b		; E5 67
	tya		; 98
	lda $FE46.w,X		; BD 46 FE
	ora $FF6EBF.l,X		; 1F BF 6E FF
	ora $7F.b,X		; 15 7F
	tax		; AA
	inc A		; 1A
	cop $05.b		; 02 05
	rts		; 60

	clc		; 18
	rti		; 40

	brk $C6.b		; 00 C6
	tsb $04FF.w		; 0C FF 04
	sbc $AA1F10.l,X		; FF 10 1F AA
	asl $C620.w		; 0E 20 C6
	cpy #$01.b		; C0 01
	jsr $E0C0.w		; 20 C0 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -63.b		; 80 C1
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $7F.b		; 00 7F
	rol $347E.w		; 2E 7E 34
	jmp ($38B0.w,X)		; 7C B0 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AC.b		; 00 AC
	ora $3006B0.l		; 0F B0 06 30
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	tsb $4C.b		; 04 4C
	plp		; 28
	stz $28.b		; 64 28
	sei		; 78
	bmi 104.b		; 30 68
	bmi -80.b		; 30 B0
	rts		; 60

	bne  64.b		; D0 40
	bcc -128.b		; 90 80
	tsb $18.b		; 04 18
	plp		; 28
	bpl  40.b		; 10 28
	bpl  48.b		; 10 30
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	jsr $6080.w		; 20 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $6B14.w,X		; 7D 14 6B
	and ($7B.b)		; 32 7B
	and #$0032.w		; 29 32 00
	asl $0F24.w,X		; 1E 24 0F
	sec		; 38
	ora ($33.b,S),Y		; 13 33
	ora $1431.w,X		; 1D 31 14
	cop $32.b		; 02 32
	tsb $29.b		; 04 29
	tsb $00.b		; 04 00
	ora $0104.w		; 0D 04 01
	bpl  16.b		; 10 10
	tsb $0E00.w		; 0C 00 0E
	brk $14.b		; 00 14
	pld		; 2B
	ora $1A.b		; 05 1A
	ora $1A.b		; 05 1A
	ora ($0E.b,X)		; 01 0E
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $15.b,X		; 15 15
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	brk $21.b		; 00 21
	ora ($20.b,X)		; 01 20
	.db $42, $20		; 42 20
	eor [$20.b]		; 47 20
	ldx $0717.w		; AE 17 07
	sbc $0801.w,Y		; F9 01 08
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C1.b		; C0 C1
	cpy #$C6.b		; C0 C6
.ACCU 8
	sep #$EF		; E2 EF
	brk $07.b		; 00 07
	asl $01.b		; 06 01
	adc $0D.b,S		; 63 0D
	lda ($8F.b)		; B2 8F
	plp		; 28
	sep #$43		; E2 43
	jmp ($8B9F.w,X)		; 7C 9F 8B
	xba		; EB
	bpl  -1.b		; 10 FF
	adc $D5.b,S		; 63 D5
	adc $FE.b,S		; 63 FE
	tsb $0C7C.w		; 0C 7C 0C
	trb $6000.w		; 1C 00 60
	ldy #$83.b		; A0 83
	rts		; 60

	bpl   4.b		; 10 04
	adc $00.b,S		; 63 00
	rtl		; 6B

	php		; 08
	ora $0A92.w		; 0D 92 0A
	ora $10.b,X		; 15 10
	adc $E0FC00.l		; 6F 00 FC E0
	bvc -32.b		; 50 E0
	jmp $42A1.w		; 4C A1 42
	cmp ($20.b,X)		; C1 20
	ora $0B0D.w		; 0D 0D 0B
	phd		; 0B
	sec		; 38
	sec		; 38
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bvc  96.b		; 50 60
	trb $1E60.w		; 1C 60 1E
	rti		; 40

	inc $EF54.w,X		; FE 54 EF
	ldx $6F.b		; A6 6F
	rol A		; 2A
	ror $6448.w		; 6E 48 64
	.db $42, $F8		; 42 F8
	asl $3C.b		; 06 3C
	inc $E624.w,X		; FE 24 E6
	mvn $A6,$40		; 54 40 A6
	bpl  42.b		; 10 2A
	bcc  72.b		; 90 48
	bcc  64.b		; 90 40
	tya		; 98
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $86.b		; 00 86
	stz $9B.b		; 64 9B
	ply		; 7A
	sta $4E31.w,X		; 9D 31 4E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	sei		; 78
	lsr $7E.b		; 46 7E
	lsr A		; 4A
	ror $312D.w,X		; 7E 2D 31
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($08.b,X)		; 01 08
	ora $12.b		; 05 12
	asl $0013.w		; 0E 13 00
	adc $828142.l,X		; 7F 42 81 82
	.db $82, $00, $00		; 82 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora #$0F.b		; 09 0F
	asl A		; 0A
	ora $7E0001.l		; 0F 01 00 7E
	ror $FFFF.w,X		; 7E FF FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	brk $FC.b		; 00 FC
	php		; 08
	sta [$82.b]		; 87 82
	eor ($00.b,X)		; 41 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra 124.b		; 80 7C
	jmp ($BFBF.w,X)		; 7C BF BF
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	brk $60.b		; 00 60
	rti		; 40

	jsr $2040.w		; 20 40 20
	rti		; 40

	jsr $608E.w		; 20 8E 60
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$CE.b		; C0 CE
	sta $CE1F4E.l,X		; 9F 4E 1F CE
	ora $060B8E.l,X		; 1F 8E 0B 06
	ora $1E06.w		; 0D 06 1E
	tsb $1C3E.w		; 0C 3E 1C
	jsr ($8E38.w,X)		; FC 38 8E
	sta $069F8E.l,X		; 9F 8E 9F 06
	ora $000F00.l,X		; 1F 00 0F 00
	ora $081E04.l		; 0F 04 1E 08
	rol $7C18.w,X		; 3E 18 7C
	and $2C4A1C.l,X		; 3F 1C 4A 2C
	jmp ($8428.w)		; 6C 28 84
	pha		; 48
	cld		; D8
	bvc -120.b		; 50 88
	bpl  48.b		; 10 30
	ldy #$90.b		; A0 90
	ldy #$1C.b		; A0 1C
	brk $2C.b		; 00 2C
	bpl  40.b		; 10 28
	bpl  72.b		; 10 48
	bmi  80.b		; 30 50
	jsr $6010.w		; 20 10 60
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $63.b		; 00 63
	.db $42, $94		; 42 94
	and ($9C.b,X)		; 21 9C
	and ($9C.b),Y		; 31 9C
	tsa		; 3B
	stz $8D7A.w		; 9C 7A 8D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $63.b,S		; 63 63
	.db $62, $73, $52		; 62 73 52
	adc ($52.b,S),Y		; 73 52
	tda		; 7B
	adc $7A.b,S		; 63 7A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	tsb $0BDD.w		; 0C DD 0B
	tya		; 98
	ora ($98.b,X)		; 01 98
	ora $8E.b,S		; 03 8E
	ora $3803.w		; 0D 03 38
	cmp #$BF.b		; C9 BF
	bpl  -5.b		; 10 FB
	ora [$03.b]		; 07 03
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	rol $C0.b		; 26 C0
	bmi   7.b		; 30 07
	beq -32.b		; F0 E0
	sty $2840.w		; 8C 40 28
	inx		; E8
	tsb $38C0.w		; 0C C0 38
	cpy #$10.b		; C0 10
	brk $E0.b		; 00 E0
	beq -96.b		; F0 A0
	sed		; F8
	brk $90.b		; 00 90
	bra -112.b		; 80 90
	jsr $00F0.w		; 20 F0 00
	beq  48.b		; F0 30
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $EF.b		; 00 EF
	and #$9D.b		; 29 9D
	trb $BB.b		; 14 BB
	rol A		; 2A
	adc ($01.b,S),Y		; 73 01
	ora ($61.b,S),Y		; 13 61
	and $672C60.l,X		; 3F 60 2C 67
	tsb $2966.w		; 0C 66 29
	ora ($14.b),Y		; 11 14
	.db $62, $2A, $44		; 62 2A 44
	ora ($0C.b,X)		; 01 0C
	and ($2C.b,X)		; 21 2C
	brk $00.b		; 00 00
	clc		; 18
	brk $38.b		; 00 38
	jsr $60BC.w		; 20 BC 60
	cld		; D8
	bcs 120.b		; B0 78
	bvc  56.b		; 50 38
	brk $30.b		; 00 30
	clc		; 18
	inx		; E8
	bit $C440.w		; 2C 40 C4
	mvp $60,$C6		; 44 C6 60
	tsb $00B0.w		; 0C B0 00
	bvc -128.b		; 50 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bpl   0.b		; 10 00
	clv		; B8
	bra  56.b		; 80 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	trb $3800.w		; 1C 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $60101F.l,X		; 1F 1F 10 60
	plp		; 28
	eor [$00.b]		; 47 00
	cmp $11942A.l,X		; DF 2A 94 11
	tay		; A8
	bit $D3.b		; 24 D3
	eor #$B6.b		; 49 B6
	ora ($EA.b),Y		; 11 EA
	and $3C3C3F.l,X		; 3F 3F 3C 3C
	adc ($71.b),Y		; 71 71
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	bit $592C.w		; 2C 2C 59
	eor $5151.w,Y		; 59 51 51
	ora ($6A.b),Y		; 11 6A
	bpl 105.b		; 10 69
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	trb $1503.w		; 1C 03 15
	brk $1F.b		; 00 1F
	php		; 08
	ora $111107.l,X		; 1F 07 11 11
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08.b,S		; 03 08
	php		; 08
	ora $06.b,S		; 03 06
	ora [$0F.b]		; 07 0F
	ora [$07.b]		; 07 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	jmp $7A3C5E.l		; 5C 5E 3C 7A
	bit $387C.w,X		; 3C 7C 38
	jmp ($7438.w,X)		; 7C 38 74
	sec		; 38
	sei		; 78
	bmi -88.b		; 30 A8
	bvs  12.b		; 70 0C
	bpl  28.b		; 10 1C
	jsr $003C.w		; 20 3C 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $34.b		; 00 34
	bpl  52.b		; 10 34
	clc		; 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $40C8.w		; 20 C8 40
	cld		; D8
	bvc  -8.b		; 50 F8
	bvs 112.b		; 70 70
	brk $10.b		; 00 10
	php		; 08
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  64.b		; 10 40
	bmi  80.b		; 30 50
	jsr $0070.w		; 20 70 00
	brk $00.b		; 00 00
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	ora $2B0F1E.l		; 0F 1E 0F 2B
	inc A		; 1A
	and $16.b,X		; 35 16
	.db $42, $24		; 42 24
	jmp ($5428.w)		; 6C 28 54
	clc		; 18
	dey		; 88
	bvc   2.b		; 50 02
	ora $000F.w		; 0D 0F 00
	inc A		; 1A
	tsb $16.b		; 04 16
	php		; 08
	bit $18.b		; 24 18
	plp		; 28
	bpl  24.b		; 10 18
	jsr $2050.w		; 20 50 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$5F.b		; A0 5F
	ora ($7E.b,X)		; 01 7E
	ora $F9.b		; 05 F9
	cmp #$30.b		; C9 30
	mvn $12,$21		; 54 21 12
	sbc $18.b		; E5 18
	sbc [$51.b]		; E7 51
	ldy $A0B8.w		; AC B8 A0
	lda ($A3.b,S),Y		; B3 A3
	ora $EFEF0F.l		; 0F 0F EF EF
	cmp $1E1EDF.l,X		; DF DF 1E 1E
	sta $529D.w,X		; 9D 9D 52
	bvc   0.b		; 50 00
	cpx #$40.b		; E0 40
	and $648680.l,X		; 3F 80 86 64
	eor [$46.b],Y		; 57 46
	adc $3982.w,X		; 7D 82 39
	bvc -70.b		; 50 BA
	cpx $0A.b		; E4 0A
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	jsr ($FEFC.w,X)		; FC FC FE
	inc $E6E6.w,X		; FE E6 E6
	dec $D6.b,X		; D6 D6
	mvp $14,$44		; 44 44 14
	tsb $7A.b		; 04 7A
	sbc [$FC.b]		; E7 FC
	xba		; EB
	sbc $06F968.l,X		; FF 68 F9 06
	and $1BEFC1.l,X		; 3F C1 EF 1B
	sbc $CAFF65.l,X		; FF 65 FF CA
	adc [$F0.b]		; 67 F0
	adc $F8.b,S		; 63 F8
	plp		; 28
	sed		; F8
	asl $70.b		; 06 70
	cpy #$11.b		; C0 11
	ora ($1F.b,X)		; 01 1F
	stz $07.b		; 64 07
	dex		; CA
	ora $B8.b,S		; 03 B8
	bpl -24.b		; 10 E8
	bpl  -8.b		; 10 F8
	brk $48.b		; 00 48
	bcs  -8.b		; B0 F8
	bra  -4.b		; 80 FC
	bra  -4.b		; 80 FC
	cli		; 58
	jsr ($5098.w,X)		; FC 98 50
	rti		; 40

	bvc  64.b		; 50 40
	brk $00.b		; 00 00
	bmi -128.b		; 30 80
	bra -64.b		; 80 C0
	brk $FC.b		; 00 FC
	php		; 08
	jsr ($9C88.w,X)		; FC 88 9C
	trb $1C26.w		; 1C 26 1C
	rol $1C.b		; 26 1C
	rol $20.b		; 26 20
	stz $38.b		; 64 38
	cpy $34F8.w		; CC F8 34
	sei		; 78
	beq -24.b		; F0 E8
	beq  24.b		; F0 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $40.b		; 00 40
	rti		; 40

	bmi  48.b		; 30 30
	jsr $F0D0.w		; 20 D0 F0
	brk $20.b		; 00 20
	.db $62, $12, $33		; 62 12 33
	php		; 08
	ora $0D05.w,Y		; 19 05 0D
	ora $0C.b,S		; 03 0C
	ora [$1B.b]		; 07 1B
	ora $0F1717.l		; 0F 17 17 0F
	trb $0C00.w		; 1C 00 0C
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	tsb $0B.b		; 04 0B
	phd		; 0B
	ora $04.b,S		; 03 04
	ora [$08.b]		; 07 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	and ($4A.b,X)		; 21 4A
	bpl  78.b		; 10 4E
	clc		; 18
	lsr $0000.w		; 4E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($31.b),Y		; 31 31
	and ($39.b),Y		; 31 39
	and #$39.b		; 29 39
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$0C.b		; C0 0C
	sbc ($A8.b,S),Y		; F3 A8
	lsr $86.b,X		; 56 86
	ror $4C85.w		; 6E 85 4C
	brk $8C.b		; 00 8C
	ora $1F83.w		; 0D 83 1F
	php		; 08
	pld		; 2B
	asl $CE.b		; 06 CE
	dec $A8A9.w		; CE A9 A8
	sta ($80.b,X)		; 81 80
	sta $80.b,S		; 83 80
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	php		; 08
	ora [$00.b]		; 07 00
	ora $F2DD28.l,X		; 1F 28 DD F2
	ora $70.b		; 05 70
	dec $A0.b		; C6 A0
	trb $F4.b		; 14 F4
	asl $E0.b		; 06 E0
	trb $88E0.w		; 1C E0 88
	cpx #$10.b		; E0 10
	ldx #$A2.b		; A2 A2
	asl A		; 0A
	cop $C8.b		; 02 C8
	cpy #$C8.b		; C0 C8
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	clc		; 18
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	phd		; 0B
	ora [$1F.b]		; 07 1F
	ora $331B2B.l		; 0F 2B 1B 33
	ora ($46.b)		; 12 46
	bit $6C.b		; 24 6C
	plp		; 28
	tya		; 98
	bvc -48.b		; 50 D0
	rti		; 40

	ora ($07.b,X)		; 01 07
	ora $051A01.l		; 0F 01 1A 05
	ora ($0C.b)		; 12 0C
	bit $18.b		; 24 18
	plp		; 28
	bpl  80.b		; 10 50
	jsr $2040.w		; 20 40 20
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $0EF706.l		; 0F 06 F7 0E
	sbc $F8E6FE.l,X		; FF FE E6 F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$06.b]		; 07 06
	ora $E0FF02.l		; 0F 02 FF E0
	sbc $00FE00.l,X		; FF 00 FE 00
	sed		; F8
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	tsb $18.b		; 04 18
	bpl  32.b		; 10 20
	bit $43.b		; 24 43
	bpl  79.b		; 10 4F
	rol A		; 2A
	sty $11.b,X		; 94 11
	tay		; A8
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	bit $313C.w,X		; 3C 3C 31
	and ($6B.b),Y		; 31 6B
	rtl		; 6B

	eor [$57.b],Y		; 57 57
	mvn $28,$AB		; 54 AB 28
	cmp $20.b,X		; D5 20
	cmp $5920.w,Y		; D9 20 59
	brk $71.b		; 00 71
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	mvn $28,$54		; 54 54 28
	plp		; 28
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	asl $09.b		; 06 09
	tsb $0B.b		; 04 0B
	ora $070800.l		; 0F 00 08 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($0D.b)		; 12 0D
	rol $3F01.w,X		; 3E 01 3F
	trb $3F.b		; 14 3F
	ora $0A1E.w		; 0D 1E 0A
	trb $0D00.w		; 1C 00 0D
	ora ($0F.b),Y		; 11 0F
	trb $000D.w		; 1C 0D 00
	ora ($00.b,X)		; 01 00
	trb $00.b		; 14 00
	ora $0A00.w		; 0D 00 0A
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	brk $FB.b		; 00 FB
	bpl 124.b		; 10 7C
	dey		; 88
	xce		; FB
	bit $D7.b		; 24 D7
	.db $82, $D7, $44		; 82 D7 44
	sta ($00.b,S),Y		; 93 00
	stz $F401.w,X		; 9E 01 F4
	ora $1810.w		; 0D 10 18
	bra   8.b		; 80 08
	bit $00.b		; 24 00
	.db $82, $28, $44		; 82 28 44
	plp		; 28
	brk $6C.b		; 00 6C
	brk $60.b		; 00 60
	cop $00.b		; 02 00
	inc A		; 1A
	php		; 08
	bit $10.b		; 24 10
	bit $5818.w,X		; 3C 18 58
	bmi 120.b		; 30 78
	bmi -40.b		; 30 D8
	bvc -112.b		; 50 90
	brk $E0.b		; 00 E0
	brk $08.b		; 00 08
	tsb $10.b		; 04 10
	php		; 08
	clc		; 18
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $50.b		; 00 50
	jsr $6000.w		; 20 00 60
	brk $00.b		; 00 00
	tsb $0E11.w		; 0C 11 0E
	ora ($10.b,S),Y		; 13 10
	and ($7C.b)		; 32 7C
	asl $B8.b		; 06 B8
	stz $F8.b,X		; 74 F8
	beq -72.b		; F0 B8
	bcs  48.b		; B0 30
	jsr $000E.w		; 20 0E 00
	tsb $0C00.w		; 0C 00 0C
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bvs -16.b		; 70 F0
	bpl -96.b		; 10 A0
	bvc  32.b		; 50 20
	cpy #$48.b		; C0 48
	cmp $8C38.w		; CD 38 8C
	sec		; 38
	sty $8C30.w		; 8C 30 8C
	rts		; 60

	dey		; 88
	bvs -104.b		; 70 98
	bra -112.b		; 80 90
	cpx #$30.b		; E0 30
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	sty $C440.w		; 8C 40 C4
	brk $C6.b		; 00 C6
	bit $66.b		; 24 66
	bpl  50.b		; 10 32
	php		; 08
	tas		; 1B
	cop $1B.b		; 02 1B
	ora $007000.l,X		; 1F 00 70 00
	sec		; 38
	brk $7C.b		; 00 7C
	mvp $00,$18		; 44 18 00
	tsb $0600.w		; 0C 00 06
	cop $0C.b		; 02 0C
	php		; 08
	brk $00.b		; 00 00
	ora $BDCE.w,X		; 1D CE BD
	lsr $50.b		; 46 50
	and $023F00.l		; 2F 00 3F 02
	jsr ($18E4.w,X)		; FC E4 18
	rol A		; 2A
	bpl   9.b		; 10 09
	sbc ($29.b)		; F2 29
	and $BDB1.w,X		; 3D B1 BD
	jmp.w [$D9D0]		; DC D0 D9
	cmp ($07.b),Y		; D1 07
	ora [$F7.b]		; 07 F7
	sbc [$EF.b],Y		; F7 EF
	sbc $C00F0F.l		; EF 0F 0F C0
	rts		; 60

	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	ldy #$1F.b		; A0 1F
	cpy #$C3.b		; C0 C3
	lda ($2B.b)		; B2 2B
	and $BE.b,S		; 23 BE
	eor ($9C.b,X)		; 41 9C
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	inc $FFFE.w,X		; FE FE FF
	sbc $6BF3F3.l,X		; FF F3 F3 6B
	rtl		; 6B

	rol $BED4.w,X		; 3E D4 BE
	sty $7D.b,X		; 94 7D
	ora $DE.b,S		; 03 DE
	and [$FE.b]		; 27 FE
	ora #$DD.b		; 09 DD
	rol $6DBE.w		; 2E BE 6D
	tsx		; BA
	eor $15.b,X		; 55 15
	asl $0E51.w		; 0E 51 0E
	bra  68.b		; 80 44
	cop $7E.b		; 02 7E
	brk $0F.b		; 00 0F
	plp		; 28
	ora $410E69.l		; 0F 69 0E 41
	asl $4000.w,X		; 1E 00 40
	cpy #$60.b		; C0 60
	lsr $BB10.w		; 4E 10 BB
	bra  59.b		; 80 3B
	sbc #$9F.b		; E9 9F
	rtl		; 6B

	sbc $008000.l		; EF 00 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	rts		; 60

	ora $09.b		; 05 09
	ora $48.b		; 05 48
	sta $00.b,S		; 83 00
	ora $00.b,S		; 03 00
	brk $3F.b		; 00 3F
	asl $1E2F.w		; 0E 2F 1E
	rol $5A1C.w,X		; 3E 1C 5A
	bit $385C.w,X		; 3C 5C 38
	stz $38.b,X		; 74 38
	sei		; 78
	bmi 104.b		; 30 68
	bmi   6.b		; 30 06
	asl $100E.w		; 0E 0E 10
	trb $3C00.w		; 1C 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $B0.b		; 00 B0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$02.b]		; 07 02
	tsb $1008.w		; 0C 08 10
	tsb $23.b		; 04 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $1C1C0F.l		; 0F 0F 1C 1C
	brk $13.b		; 00 13
	cop $15.b		; 02 15
	ora [$12.b]		; 07 12
	ora $19E6F2.l		; 0F F2 E6 19
	asl $09.b,X		; 16 09
	php		; 08
	ora [$01.b]		; 07 01
	inc $0C0C.w,X		; FE 0C 0C
	asl A		; 0A
	asl $0F0B.w		; 0E 0B 0F
	ora #$0F.b		; 09 0F
	sbc $F7EE.w		; ED EE F7
	inc $FA.b,X		; F6 FA
	plx		; FA
	ora ($01.b,X)		; 01 01
	brk $C1.b		; 00 C1
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $1C.b		; 04 1C
	and [$1F.b]		; 27 1F
	and $061D00.l,X		; 3F 00 1D 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora $CD3DC0.l		; 0F C0 3D CD
	eor $B3B9.w,Y		; 59 B9 B3
	adc ($FF.b)		; 72 FF
	ora ($AF.b,X)		; 01 AF
	adc ($FF.b,S),Y		; 73 FF
	ora $6EFD.w		; 0D FD 6E
	bra -128.b		; 80 80
	sta $3982.w		; 8D 82 39
	asl $72.b		; 06 72
	tsb $0100.w		; 0C 00 01
	ora ($FF.b,X)		; 01 FF
	php		; 08
	sta $FD0F6C.l		; 8F 6C 0F FD
	tya		; 98
	jsr ($F854.w,X)		; FC 54 F8
	cmp [$F4.b]		; C7 F4
	inx		; E8
	pei ($E8.b)		; D4 E8
	ldy $C840.w,X		; BC 40 C8
	bmi 120.b		; 30 78
	brk $8B.b		; 00 8B
	bit $7803.w,X		; 3C 03 78
	rti		; 40

	sed		; F8
	iny		; C8
	beq   8.b		; F0 08
	beq   0.b		; F0 00
	cpx #$30.b		; E0 30
	cpy #$00.b		; C0 00
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	tsb $0C1E.w		; 0C 1E 0C
	ror $F41C.w		; 6E 1C F4
	sei		; 78
	sed		; F8
	beq -16.b		; F0 F0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	trb $1E04.w		; 1C 04 1E
	tsb $041E.w		; 0C 1E 04
	ror $FC20.w,X		; 7E 20 FC
	cpx #$F8.b		; E0 F8
	bra -16.b		; 80 F0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	rts		; 60

	bne  64.b		; D0 40
	bne  32.b		; D0 20
	bcc  64.b		; 90 40
	ldy #$80.b		; A0 80
	cpy #$00.b		; C0 00
	brk $C0.b		; 00 C0
	cpy #$E0.b		; C0 E0
	cpx #$60.b		; E0 60
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ora ($80.b,X)		; 01 80
	ora $E51701.l,X		; 1F 01 17 E5
	xba		; EB
	ora ($0B.b,X)		; 01 0B
	brk $0C.b		; 00 0C
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $05.b,S		; 03 05
	ora #$F0.b		; 09 F0
	ora $F0.b		; 05 F0
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bcs 112.b		; B0 70
	tay		; A8
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	.db $42, $81		; 42 81
	bpl  16.b		; 10 10
	bpl  23.b		; 10 17
	phb		; 8B
	and $106020.l		; 2F 20 60 10
	bvs -80.b		; 70 B0
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $FFFF.w,X		; FE FF FF
	jsr ($F8FC.w,X)		; FC FC F8
	sed		; F8
	ora $03.b		; 05 03
	ora $0D1507.l		; 0F 07 15 0D
	and #$19.b		; 29 19
	and ($12.b,S),Y		; 33 12
	ror $24.b		; 66 24
	sty $58.b,X		; 94 58
	cld		; D8
	rti		; 40

	brk $03.b		; 00 03
	ora [$00.b]		; 07 00
	ora $1902.w		; 0D 02 19
	asl $12.b		; 06 12
	tsb $1824.w		; 0C 24 18
	cli		; 58
	jsr $2040.w		; 20 40 20
	ora ($A5.b),Y		; 11 A5
	lsr $0EA0.w,X		; 5E A0 0E
	cld		; D8
	eor $C2.b,X		; 55 C2
	adc $C31CC0.l,X		; 7F C0 1C C3
	inc $EC07.w,X		; FE 07 EC
	txy		; 9B
	phx		; DA
	cld		; D8
	eor ($40.b,X)		; 41 40
	and $3918.w,Y		; 39 18 39
	cop $3F.b		; 02 3F
	brk $3F.b		; 00 3F
	ora $00.b,S		; 03 00
	clc		; 18
	dey		; 88
	bit $3078.w,X		; 3C 78 30
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -60.b		; 70 C4
	rts		; 60

	ply		; 7A
	clc		; 18
	ora $000000.l,X		; 1F 00 00 00
	bmi   0.b		; 30 00
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	clc		; 18
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	brk $34.b		; 00 34
	rti		; 40

	and $6F2E70.l,X		; 3F 70 2E 6F
	jmp $8430C7.l		; 5C C7 30 84
	sec		; 38
	sty $98F0.w		; 8C F0 98
	brk $1B.b		; 00 1B
	brk $0B.b		; 00 0B
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	sec		; 38
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $98.b		; 00 98
	brk $F0.b		; 00 F0
	clc		; 18
	inx		; E8
	jmp ($C440.w)		; 6C 40 C4
	mvp $20,$C6		; 44 C6 20
.INDEX 8
	sep #$12		; E2 12
	adc ($08.b,S),Y		; 73 08
	and $6000.w,Y		; 39 00 60
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clv		; B8
	bra -72.b		; 80 B8
	bra  92.b		; 80 5C
	rti		; 40

	bit $1620.w		; 2C 20 16
	bpl   6.b		; 10 06
	cop $0D.b		; 02 0D
	tsb $1E.b		; 04 1E
	tsb $182C.w		; 0C 2C 18
	sei		; 78
	bmi -40.b		; 30 D8
	bvc -112.b		; 50 90
	brk $E0.b		; 00 E0
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	cop $0C.b		; 02 0C
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $50.b		; 00 50
	jsr $6000.w		; 20 00 60
	brk $00.b		; 00 00
	asl $0F.b,X		; 16 0F
	and $1E2D1E.l		; 2F 1E 2D 1E
	phy		; 5A
	bit $3874.w,X		; 3C 74 38
	tay		; A8
	bvs -16.b		; 70 F0
	rts		; 60

	rts		; 60

	cpy #$07.b		; C0 07
	php		; 08
	asl $1E00.w,X		; 1E 00 1E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $10.b		; 00 10
	and $14542A.l		; 2F 2A 54 14
	pla		; 68
	bpl 107.b		; 10 6B
	plp		; 28
	mvn $58,$20		; 54 20 58
	jsr $0050.w		; 20 50 00
	bvs  16.b		; 70 10
	bpl  43.b		; 10 2B
	pld		; 2B
	ora [$17.b],Y		; 17 17
	trb $14.b		; 14 14
	plp		; 28
	plp		; 28
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	dey		; 88
	asl $12.b		; 06 12
	tsb $7C82.w		; 0C 82 7C
	pld		; 2B
	pei ($13.b)		; D4 13
	cpx $CE31.w		; EC 31 CE
	and ($D2.b,X)		; 21 D2
	jsr $FBD1.w		; 20 D1 FB
	xce		; FB
	sbc ($F3.b,S),Y		; F3 F3
	sta $83.b,S		; 83 83
	pld		; 2B
	pld		; 2B
	tad		; 5B
	tad		; 5B
	and ($31.b),Y		; 31 31
	and ($21.b,X)		; 21 21
	jsr $1120.w		; 20 20 11
	asl $0C13.w		; 0E 13 0C
	and $192600.l,X		; 3F 00 26 19
	and $1A7F00.l,X		; 3F 00 7F 1A
	adc $3D34.w,X		; 7D 34 3D
	trb $0E.b		; 14 0E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	brk $00.b		; 00 00
	brk $1A.b		; 00 1A
	brk $34.b		; 00 34
	cop $14.b		; 02 14
	cop $BD.b		; 02 BD
	ror $1E.b		; 66 1E
	inx		; E8
	rol $FEC4.w,X		; 3E C4 FE
	brk $3E.b		; 00 3E
	pei ($EA.b)		; D4 EA
	brk $EB.b		; 00 EB
.ACCU 16
	rep #$AD		; C2 AD
	dey		; 88
	rts		; 60

	ora $C00EE8.l		; 0F E8 0E C0
	asl $0600.w		; 0E 00 06
	pei ($00.b)		; D4 00
	brk $14.b		; 00 14
.INDEX 16
	rep #$14		; C2 14
	dey		; 88
	eor ($00.b)		; 52 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $3200.w		; CC 00 32
	rol $7651.w		; 2E 51 76
	pld		; 2B
	sbc [$2A.b],Y		; F7 2A
	rts		; 60

	sta $000000.l,X		; 9F 00 00 00
	brk $00.b		; 00 00
	brk $CC.b		; 00 CC
	cpy $EEAA.w		; CC AA EE
	lda ($F6.b)		; B2 F6
	sta ($F7.b),Y		; 91 F7
	stp		; DB
	cpx #$8880.w		; E0 80 88
	pha		; 48
	cpy $E420.w		; CC 20 E4
	trb $76.b		; 14 76
	brk $12.b		; 00 12
	ora $0E3F00.l,X		; 1F 00 3F 0E
	and $701E.w		; 2D 1E 70
	brk $B0.b		; 00 B0
	bra  88.b		; 80 58
	rti		; 40

	php		; 08
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $100E.w		; 0E 0E 10
	ora $190E19.l		; 0F 19 0E 19
	ora ($33.b)		; 12 33
	pea $7806.w		; F4 06 78
	cpx $E8F0.w		; EC F0 E8
	bvs  96.b		; 70 60
	rts		; 60

	rti		; 40

	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $0800.w		; 0C 00 08
	brk $20.b		; 00 20
	cpx #$20E0.w		; E0 E0 20
	rti		; 40

	ldy #$8040.w		; A0 40 80
	rti		; 40

	sta $D902.w,Y		; 99 02 D9
	jsr $105B.w		; 20 5B 10
	ror A		; 6A
	bpl  42.b		; 10 2A
	tsb $3A.b		; 04 3A
	tsb $1A.b		; 04 1A
	tsb $0A.b		; 04 0A
	ror $66.b		; 66 66
	ror $66.b		; 66 66
	rol $26.b		; 26 26
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	plp		; 28
	eor [$07.b],Y		; 57 07
	sei		; 78
	ora $36.b,S		; 03 36
	phd		; 0B
	clc		; 18
	ora $0C.b		; 05 0C
	ora ($07.b,X)		; 01 07
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	asl $0616.w,X		; 1E 16 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $7B.b		; 00 7B
	sty $EB.b		; 84 EB
	asl $7B.b,X		; 16 7B
	stx $0EDB.w		; 8E DB 0E
	sta [$6C.b]		; 87 6C
	sty $1F73.w		; 8C 73 1F
	cpx $8EF9.w		; EC F9 8E
	rts		; 60

	ora $60.b,S		; 03 60
	ora ($62.b,S),Y		; 13 62
	sta $70.b,S		; 83 70
	ora $D4.b,S		; 03 D4
	eor $E0.b,S		; 43 E0
	adc $0C.b,S		; 63 0C
	brk $8E.b		; 00 8E
	brk $0D.b		; 00 0D
	pea $00EF.w		; F4 EF 00
	ora $EE1F06.l		; 0F 06 1F EE
	inc $E40C.w,X		; FE 0C E4
	sei		; 78
	sed		; F8
	bvs  -8.b		; 70 F8
	bvs   4.b		; 70 04
	cop $F0.b		; 02 F0
	brk $F6.b		; 00 F6
	ora $081F04.l		; 0F 04 1F 08
	inc $FC40.w,X		; FE 40 FC
	rts		; 60

	sed		; F8
	bvs  -8.b		; 70 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	asl $3071.w		; 0E 71 30
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $7F7F1F.l,X		; 1F 1F 7F 7F
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	rti		; 40

	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$E0E0.w		; C0 E0 E0
	pld		; 2B
	inc A		; 1A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	ora $1A0A.w,Y		; 19 0A 1A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $11.b		; 04 11
	cop $16.b		; 02 16
	tsb $16.b		; 04 16
	tsb $1E.b		; 04 1E
	tsb $1C2A.w		; 0C 2A 1C
	rol A		; 2A
	tsb $185C.w		; 0C 5C 18
	sei		; 78
	brk $02.b		; 00 02
	tsb $0804.w		; 0C 04 08
	tsb $08.b		; 04 08
	tsb $1C00.w		; 0C 00 1C
	brk $0C.b		; 00 0C
	bpl  24.b		; 10 18
	jsr $0000.w		; 20 00 00
	brk $0F.b		; 00 0F
	asl $39.b		; 06 39
	ora ($60.b),Y		; 11 60
	jsl $C30441.l		; 22 41 04 C3
	eor ($86.b,X)		; 41 86
	php		; 08
	dec $22.b		; C6 22
	jmp $0000.w		; 4C 00 00
	asl $3F0E.w		; 0E 0E 3F
	and $7E3F3F.l,X		; 3F 3F 3F 7E
	ror $7D7D.w,X		; 7E 7D 7D
	adc $3B79.w,Y		; 79 79 3B
	tsa		; 3B
	sei		; 78
	bit $C8.b,X		; 34 C8
	and [$41.b],Y		; 37 41
	ldx $F20A.w,Y		; BE 0A F2
	eor ($B1.b,X)		; 41 B1
	eor ($21.b,S),Y		; 53 21
	tya		; 98
	.db $62, $11, $EA		; 62 11 EA
	tay		; A8
	sed		; F8
	sed		; F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	ora $DFDF0F.l		; 0F 0F DF DF
	cmp $DFDFDF.l,X		; DF DF DF DF
	sta $0A9D.w,X		; 9D 9D 0A
	sbc $30.b,X		; F5 30
	cmp $0B1394.l		; CF 94 13 0B
	php		; 08
	sta $76.b		; 85 76
	eor ($F9.b)		; 52 F9
	bpl -99.b		; 10 9D
	ldx #$0B4D.w		; A2 4D 0B
	phd		; 0B
	bvs 112.b		; 70 70
	inc $FFFE.w,X		; FE FE FF
	sbc $268F8F.l,X		; FF 8F 8F 26
	rol $6A.b		; 26 6A
	asl A		; 0A
	tsx		; BA
	txa		; 8A
	cop $FC.b		; 02 FC
	sei		; 78
	sta [$FE.b]		; 87 FE
	ora ($03.b,X)		; 01 03
	jsr ($8300.w,X)		; FC 00 83
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $03.b,S		; 03 03
	sbc $FEFD.w,X		; FD FD FE
	inc $0303.w,X		; FE 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	rti		; 40

	jsr $A040.w		; 20 40 A0
	jsr $80D0.w		; 20 D0 80
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	bmi   0.b		; 30 00
	bpl -128.b		; 10 80
	bra -64.b		; 80 C0
	cpy #$4040.w		; C0 40 40
	jsr $8020.w		; 20 20 80
	bra  32.b		; 80 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	and $18.b,S		; 23 18
	jsl $006634.l		; 22 34 66 00
	mvp $0C,$F8		; 44 F8 0C
	clv		; B8
	stz $BC.b,X		; 74 BC
	sei		; 78
	ldy $1C78.w,X		; BC 78 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bvs 112.b		; 70 70
	php		; 08
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	jmp $4618.w		; 4C 18 46
	trb $004B.w		; 1C 4B 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  44.b		; 30 2C
	bit $3E2E.w,X		; 3C 2E 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $12.b		; 00 12
	asl $0E21.w		; 0E 21 0E
	and $1E.b		; 25 1E
	and $00.b		; 25 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1E1A.w		; 0C 1A 1E
	asl $1E.b,X		; 16 1E
	ora ($1E.b)		; 12 1E
	brk $07.b		; 00 07
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
	ora $00.b,S		; 03 00
	ora ($80.b,X)		; 01 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $0003.w,X		; 1D 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $BF06D9.l,X		; 1F D9 06 BF
	cpy #$C6B9.w		; C0 B9 C6
	lda [$49.b],Y		; B7 49
	cmp $43BC2D.l,X		; DF 2D BC 43
	plx		; FA
	asl $84F9.w		; 0E F9 84
	rol $20.b		; 26 20
	bne  16.b		; D0 10
	dec $00.b		; C6 00
	eor ($09.b,X)		; 41 09
	bit $0F.b		; 24 0F
	rti		; 40

	trb $3801.w		; 1C 01 38
	ora $C0.b,S		; 03 C0
	ror $F280.w,X		; 7E 80 F2
	tsb $B0FE.w		; 0C FE B0
	sbc ($12.b,S),Y		; F3 12
	lda $FF24.w,X		; BD 24 FF
	.db $82, $CF, $0C		; 82 CF 0C
	sty $7E.b		; 84 7E
	brk $F0.b		; 00 F0
	tsb $3000.w		; 0C 00 30
	bra  18.b		; 80 12
	tsb $4224.w		; 0C 24 42
	cop $00.b		; 02 00
	beq   0.b		; F0 00
	inx		; E8
	pla		; 68
	inc A		; 1A
	ora $0F0E1F.l		; 0F 1F 0E 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $001F0C.l,X		; 1F 0C 1F 00
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B9.b		; 00 B9
	trb $7A.b		; 14 7A
	rol $0370.w		; 2E 70 03
	asl $0F01.w,X		; 1E 01 0F
	trb $3313.w		; 1C 13 33
	php		; 08
	and ($3A.b,X)		; 21 3A
	adc $13.b,S		; 63 13
	bra  41.b		; 80 29
	brk $00.b		; 00 00
	tsb $0001.w		; 0C 01 00
	brk $00.b		; 00 00
	tsb $1E00.w		; 0C 00 1E
	brk $1C.b		; 00 1C
	brk $FC.b		; 00 FC
	cop $FB.b		; 02 FB
	trb $BFFE.w		; 1C FE BF
	sei		; 78
	clv		; B8
	inc $0E.b,X		; F6 0E
	asl $0181.w		; 0E 81 01
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	trb $203F.w		; 1C 3F 20
	clc		; 18
	and [$0E.b]		; 27 0E
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	cpy #$302C.w		; C0 2C 30
	phb		; 8B
	sty $3EDE.w		; 8C DE 3E
	tsa		; 3B
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $30.b		; 00 30
	cpy #$708C.w		; C0 8C 70
	rol $0701.w,X		; 3E 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  32.b		; 80 20
	brk $50.b		; 00 50
	cpy #$00F0.w		; C0 F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	cpy #$0020.w		; C0 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	tax		; AA
	jmp $502FA9.l		; 5C A9 2F 50
	ora $130420.l,X		; 1F 20 04 13
	tsb $8F.b		; 04 8F
	brk $07.b		; 00 07
	ora $4A5E05.l		; 0F 05 5E 4A
	lsr $41.b		; 46 41
	asl $10.b		; 06 10
	ora [$00.b]		; 07 00
	ora $0301.w		; 0D 01 03
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	tsb $0CC8.w		; 0C C8 0C
	cld		; D8
	jmp ($48E7.w)		; 6C E7 48
	cmp $3BAF1C.l		; CF 1C AF 3B
	ora $E07E6A.l,X		; 1F 6A 7E E0
	sbc $30AF.w,X		; FD AF 30
	brk $30.b		; 00 30
	rts		; 60

	bvs  64.b		; 70 40
	cpx $C903.w		; EC 03 C9
	ora [$C8.b]		; 07 C8
	eor [$01.b]		; 47 01
	cop $8C.b		; 02 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	tsb $0A05.w		; 0C 05 0A
	ora [$3A.b]		; 07 3A
	ora [$6A.b],Y		; 17 6A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $07.b		; 05 07
	tsb $07.b		; 04 07
	rol $37.b,X		; 36 37
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($82.b,X)		; 01 82
	brk $43.b		; 00 43
	cop $45.b		; 02 45
.ACCU 16
	rep #$25		; C2 25
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bra -127.b		; 80 81
	.db $82, $83, $C3		; 82 83 C3
	rep #$00		; C2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$1120.w		; E0 20 11
	rti		; 40

	sta [$C2.b],Y		; 97 C2
	stz $98E4.w		; 9C E4 98
	adc #$0090.w		; 69 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$E161.w		; E0 61 E1
	and [$E7.b]		; 27 E7
	lda $6FAFEF.l		; AF EF AF 6F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	cpx #$041C.w		; E0 1C 04
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  -4.b		; F0 FC
	jsr ($FFFF.w,X)		; FC FF FF
	bra -128.b		; 80 80
	tsb $1B.b		; 04 1B
	tsb $0B.b		; 04 0B
	asl $09.b		; 06 09
	cop $05.b		; 02 05
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $060D.w		; 0D 0D 06
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	inc A		; 1A
	pld		; 2B
	inc A		; 1A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	ora $190A.w,Y		; 19 0A 19
	asl A		; 0A
	inc A		; 1A
	tsb $1A.b		; 04 1A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $0A.b		; 04 0A
	tsb $12.b		; 04 12
	brk $16.b		; 00 16
	tsb $16.b		; 04 16
	tsb $1E.b		; 04 1E
	tsb $1C2A.w		; 0C 2A 1C
	ror A		; 6A
	bit $58DC.w		; 2C DC 58
	sed		; F8
	brk $00.b		; 00 00
	tsb $0804.w		; 0C 04 08
	tsb $08.b		; 04 08
	tsb $1C00.w		; 0C 00 1C
	brk $2C.b		; 00 2C
	bpl  88.b		; 10 58
	jsr $0000.w		; 20 00 00
	bra  64.b		; 80 40
	cpy #$9F60.w		; C0 60 9F
	cpx #$0CDC.w		; E0 DC 0C
	jsr ($FF1C.w,X)		; FC 1C FF
	ora $0EEEF1.l,X		; 1F F1 EE 0E
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	cpx $0B.b		; E4 0B
	jmp.w [$CF13]		; DC 13 CF
	bpl   6.b		; 10 06
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	jmp.w [$0020]		; DC 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $46.b		; 00 46
	trb $01FE.w		; 1C FE 01
	lda $DD28.w,Y		; B9 28 DD
	tsb $81DF.w		; 0C DF 81
	xce		; FB
	iny		; C8
	sbc $90.b,X		; F5 90
	sbc $EC68.w,X		; FD 68 EC
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	lsr $0C.b		; 46 0C
	ldx #$A000.w		; A2 00 A0
	cmp #$13C4.w		; C9 C4 13
	inx		; E8
	rtl		; 6B

	bra  -1.b		; 80 FF
	ora $5E.b,S		; 03 5E
	rol A		; 2A
	stz $00.b,X		; 74 00
	ora $1F0E00.l,X		; 1F 00 0E 1F
	ora ($11.b,X)		; 01 11
	tsb $10.b		; 04 10
	ora $31.b		; 05 31
	ora $F8.b,S		; 03 F8
	rol A		; 2A
	ora ($00.b,X)		; 01 00
	phd		; 0B
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $0F00.w		; 0E 00 0F
	brk $1E.b		; 00 1E
	bpl -77.b		; 10 B3
	and $E00790.l		; 2F 90 07 E0
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bit $44.b		; 24 44
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	adc $34.b,S		; 63 34
	ror $10.b		; 66 10
	lsr $20.b		; 46 20
	stz $F8.b		; 64 F8
	tsb $74B8.w		; 0C B8 74
	ldy $BC78.w,X		; BC 78 BC
	sei		; 78
	asl $1802.w,X		; 1E 02 18
	brk $3C.b		; 00 3C
	tsb $18.b		; 04 18
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bvs 112.b		; 70 70
	php		; 08
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $CF.b		; 00 CF
	beq   1.b		; F0 01
	ora ($FF.b,X)		; 01 FF
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $01.b		; 00 01
	inc $00FF.w,X		; FE FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$0C.b],Y		; 17 0C
	ora $18250C.l,X		; 1F 0C 25 18
	bit $3E18.w,X		; 3C 18 3E
	trb $1C3E.w		; 1C 3E 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	asl $1E00.w,X		; 1E 00 1E
	brk $3C.b		; 00 3C
	clc		; 18
	bit $3E1C.w,X		; 3C 1C 3E
	trb $003E.w		; 1C 3E 00
	trb $0000.w		; 1C 00 00
	beq  15.b		; F0 0F
	xba		; EB
	cpy $9C.b		; C4 9C
	sbc $9C.b,S		; E3 9C
	adc $F7.b,S		; 63 F7
	php		; 08
	sbc $7FF763.l,X		; FF 63 F7 7F
	tda		; 7B
	bit $000E.w,X		; 3C 0E 00
	pei ($10.b)		; D4 10
	xba		; EB
	php		; 08
	rts		; 60

	brk $08.b		; 00 08
	sbc $01.b,S		; E3 01
	sbc $30FF33.l,X		; FF 33 FF 30
	adc $60C53A.l,X		; 7F 3A C5 60
	sta $419F40.l		; 8F 40 9F 41
	stz $9D63.w,X		; 9E 63 9D
	bit $D8.b		; 24 D8
	jsl $4A3058.l		; 22 58 30 4A
	tda		; 7B
	ply		; 7A
	adc ($72.b,S),Y		; 73 72
	pla		; 68
	pla		; 68
	adc $65.b		; 65 65
	adc $63.b,S		; 63 63
	adc [$67.b]		; 67 67
	and [$37.b],Y		; 37 37
	and [$37.b],Y		; 37 37
	rti		; 40

	lda $C6C021.l,X		; BF 21 C0 C6
	lsr $B4.b		; 46 B4
	sty $4C.b		; 84 4C
	rol $10.b,X		; 36 10
	plx		; FA
	eor $EA.b		; 45 EA
	ora ($8F.b)		; 12 8F
	cpy #$3F40.w		; C0 40 3F
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $45CFCF.l,X		; FF CF CF 45
	eor $35.b		; 45 35
	and $70.b		; 25 70
	brk $24.b		; 00 24
	cmp ($10.b,S),Y		; D3 10
	sbc $447C82.l		; EF 82 7C 44
	sec		; 38
	and $9F2090.l		; 2F 90 20 9F
	rti		; 40

	bcs   0.b		; B0 00
	beq -20.b		; F0 EC
	bit $1919.w		; 2C 19 19
	cmp [$C7.b]		; C7 C7
	sbc $EFEFEF.l		; EF EF EF EF
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	ora [$F8.b]		; 07 F8
	beq  15.b		; F0 0F
	tsb $6003.w		; 0C 03 60
	trb $E000.w		; 1C 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	sed		; F8
	sed		; F8
	jsr ($E0FC.w,X)		; FC FC E0
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $C6C500.l,X		; FF 00 C5 C6
	dec $F0F0.w		; CE F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	sec		; 38
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	cpy #$0030.w		; C0 30 00
	sed		; F8
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpx #$10E0.w		; E0 E0 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $04.b		; 06 04
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F9.b		; 00 F9
	sta ($7E.b,X)		; 81 7E
	bit $D8.b		; 24 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp #$37C9.w		; C9 C9 37
	and [$04.b],Y		; 37 04
	tas		; 1B
	cop $1C.b		; 02 1C
	asl $66.b,X		; 16 66
	ora ($21.b),Y		; 11 21
	asl $2360.w		; 0E 60 23
	cpy $DF14.w		; CC 14 DF
	ora $DD.b,X		; 15 DD
	php		; 08
	tsb $03.b		; 04 03
	ora $1F.b,S		; 03 1F
	ora $3F1F1F.l,X		; 1F 1F 1F 3F
	and $307373.l,X		; 3F 73 73 30
	bmi  50.b		; 30 32
	bmi   0.b		; 30 00
	jsr ($7B84.w,X)		; FC 84 7B
	bpl  14.b		; 10 0E
	tsb $03.b		; 04 03
	lsr $B9.b		; 46 B9
	asl A		; 0A
	cmp $05F2.w		; CD F2 05
	tyx		; BB
	mvp $4B,$7B		; 44 7B 4B
	sty $84.b		; 84 84
	beq -16.b		; F0 F0
	inc $46FE.w,X		; FE FE 46
	lsr $32.b		; 46 32
	cop $1A.b		; 02 1A
	cop $1A.b		; 02 1A
	.db $42, $80		; 42 80
	rts		; 60

	brk $80.b		; 00 80
	bmi   0.b		; 30 00
	cli		; 58
	bmi  40.b		; 30 28
	bne  94.b		; D0 5E
	cpy #$B6A9.w		; C0 A9 B6
	sbc #$8006.w		; E9 06 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $50.b		; 00 50
	rti		; 40

	jsr $4600.w		; 20 00 46
	brk $06.b		; 00 06
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $AE.b		; 00 AE
	rti		; 40

	and [$CC.b],Y		; 37 CC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $CC.b		; 00 CC
	brk $02.b		; 00 02
	sbc $E21D.w,X		; FD 1D E2
	rti		; 40

	sta $4018A0.l		; 8F A0 18 40
	jsr $4000.w		; 20 00 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	ora $03.b,S		; 03 03
	and $F83D.w,X		; 3D 3D F8
	sed		; F8
	cpx #$C0E0.w		; E0 E0 C0
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	phd		; 0B
	cop $0B.b		; 02 0B
	cop $0D.b		; 02 0D
	asl $0D.b		; 06 0D
	asl $17.b		; 06 17
	asl $2B.b		; 06 2B
	asl $185E.w		; 0E 5E 18
	sei		; 78
	brk $02.b		; 00 02
	tsb $02.b		; 04 02
	tsb $06.b		; 04 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	php		; 08
	asl $1810.w		; 0E 10 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $C600.w,X		; 7E 00 C6
	mvp $B0,$AC		; 44 AC B0
	bcs -64.b		; B0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	sec		; 38
	bcs  64.b		; B0 40
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $00.b		; 46 00
	mvp $44,$00		; 44 00 44
	plp		; 28
	jmp ($0CF0.w)		; 6C F0 0C
	clv		; B8
	stz $FC.b,X		; 74 FC
	sei		; 78
	jsr ($3C78.w,X)		; FC 78 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	php		; 08
	bmi 112.b		; 30 70
	bvs   8.b		; 70 08
	sei		; 78
	brk $DC.b		; 00 DC
	cli		; 58
	jmp.w [$D458]		; DC 58 D4
	cli		; 58
	pei ($58.b)		; D4 58
	cld		; D8
	bvc -40.b		; 50 D8
	bvc -56.b		; 50 C8
	bvc -88.b		; 50 A8
	bmi  88.b		; 30 58
	jsr $2058.w		; 20 58 20
	cli		; 58
	jsr $2058.w		; 20 58 20
	bvc  32.b		; 50 20
	bvc  32.b		; 50 20
	bvc  32.b		; 50 20
	bmi  64.b		; 30 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	bpl  14.b		; 10 0E
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	inc $00FE.w,X		; FE FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E7.b		; 00 E7
	rts		; 60

	cmp $20EC40.l,X		; DF 40 EC 20
	cld		; D8
	lda $E03C40.l,X		; BF 40 3C E0
	cpy #$00E0.w		; C0 E0 00
	cpx #$1F80.w		; E0 80 1F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $A4.b		; 00 A4
	bit $00.b		; 24 00
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	ora $1F0F1F.l		; 0F 1F 0F 1F
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	tsb $0E1F.w		; 0C 1F 0E
	ora $001F04.l,X		; 1F 04 1F 00
	asl $0000.w		; 0E 00 00
	asl A		; 0A
	ora ($00.b),Y		; 11 00
	ora ($04.b,S),Y		; 13 04
	ora ($0A.b,S),Y		; 13 0A
	bit $03.b,X		; 34 03
	jmp ($CF31.w,X)		; 7C 31 CF
	adc ($CF.b),Y		; 71 CF
	bmi -49.b		; 30 CF
	asl $0D0E.w		; 0E 0E 0D
	ora $0C0C.w		; 0D 0C 0C
	tas		; 1B
	tas		; 1B
	asl A		; 0A
	phd		; 0B
	bmi 115.b		; 30 73
	ora $597B.w,Y		; 19 7B 59
	dec A		; 3A
	eor #$D4B0.w		; 49 B0 D4
	and $0A.b,S		; 23 0A
	sbc $34.b		; E5 34
	phk		; 4B
	sta $8A32.w		; 8D 32 8A
	bit $84.b,X		; 34 84
	sec		; 38
	eor ($A0.b),Y		; 51 A0
	sbc $DCDCEF.l		; EF EF DC DC
	phy		; 5A
	phy		; 5A
	lda $B5.b,X		; B5 B5
	cmp $5BCD.w		; CD CD 5B
	stp		; DB
	eor [$C7.b]		; 47 C7
	cmp $4D255F.l,X		; DF 5F 25 4D
	jsl $2B1556.l		; 22 56 15 2B
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($30.b)		; 32 30
	and #$1428.w		; 29 28 14
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DB.b		; 00 DB
	cmp $FA.b		; C5 FA
	tsb $0A.b		; 04 0A
	adc [$00.b],Y		; 77 00
	inc $01.b,X		; F6 01
	ror $0603.w,X		; 7E 03 06
	trb $3600.w		; 1C 00 36
	brk $FD.b		; 00 FD
	cpy $FC.b		; C4 FC
	ora $FC.b		; 05 FC
	stz $3D.b,X		; 74 3D
	bit $01.b,X		; 34 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	plp		; 28
	cmp $34FB60.l,X		; DF 60 FB 34
	and [$0C.b],Y		; 37 0C
	sta $738F2A.l,X		; 9F 2A 8F 73
	phd		; 0B
	adc $53.b,X		; 75 53
	lda $9B66.w		; AD 66 9B
	rti		; 40

	inc $FF00.w,X		; FE 00 FF
	cpy #$C03F.w		; C0 3F C0
	ora $B503B2.l		; 0F B2 03 B5
	ora ($2C.b,X)		; 01 2C
	ora ($58.b,X)		; 01 58
	eor $DE.b,S		; 43 DE
	dec A		; 3A
	jmp ($F3A4.w,X)		; 7C A4 F3
	sta ($EF.b)		; 92 EF
	lda #$46FE.w		; A9 FE 46
	sed		; F8
	tay		; A8
	lda $AF77D0.l,X		; BF D0 77 AF
	dec A		; 3A
	ora ($24.b,X)		; 01 24
	sta $12.b,S		; 83 12
	sty $9029.w		; 8C 29 90
	lsr $C1.b		; 46 C1
	plp		; 28
	sbc [$10.b]		; E7 10
	beq  15.b		; F0 0F
	cpx #$2576.w		; E0 76 25
	xce		; FB
	bvs  -4.b		; 70 FC
	beq -16.b		; F0 F0
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $68.b		; 04 68
	bmi -12.b		; 30 F4
	rts		; 60

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $D82500.l,X		; FF 00 25 D8
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$D8.b]		; 07 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $ED.b		; 00 ED
	eor ($5B.b,S),Y		; 53 5B
	ldy $37EE.w		; AC EE 37
	adc $7D1202.l,X		; 7F 02 12 7D
	plp		; 28
	ror $6624.w		; 6E 24 66
	tsb $46.b		; 04 46
	ora ($C0.b,S),Y		; 13 C0
	ldy $3700.w		; AC 00 37
	brk $02.b		; 00 02
	brk $2C.b		; 00 2C
	bit $0414.w		; 2C 14 04
	clc		; 18
	brk $38.b		; 00 38
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
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
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $FC.b		; 00 FC
	ora $30.b,S		; 03 30
	beq   6.b		; F0 06
	ora [$67.b]		; 07 67
	sei		; 78
	sec		; 38
	cpy #$00C0.w		; C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	beq  15.b		; F0 0F
	ora [$F8.b]		; 07 F8
	sei		; 78
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	ldx $D878.w,Y		; BE 78 D8
	and $0E191F.l,X		; 3F 1F 19 0E
	stz $00E0.w,X		; 9E E0 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	asl $9831.w		; 0E 31 98
	sta [$DF.b],Y		; 97 DF
	clc		; 18
	sep #$0C		; E2 0C
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $1C.b,S		; 03 1C
	brk $38.b		; 00 38
	bpl  96.b		; 10 60
	plp		; 28
	eor [$00.b]		; 47 00
	cmp $11942A.l,X		; DF 2A 94 11
	tay		; A8
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	bit $713C.w,X		; 3C 3C 71
	adc ($6B.b),Y		; 71 6B
	rtl		; 6B

	eor [$57.b],Y		; 57 57
	tsa		; 3B
	stz $8D7A.w		; 9C 7A 8D
	ldy #$015F.w		; A0 5F 01
	ror $F905.w,X		; 7E 05 F9
	cmp #$5430.w		; C9 30 54
	and ($12.b,X)		; 21 12
	sbc $52.b		; E5 52
	tda		; 7B
	adc $7A.b,S		; 63 7A
	clv		; B8
	ldy #$A3B3.w		; A0 B3 A3
	ora $EFEF0F.l		; 0F 0F EF EF
	cmp $1E1EDF.l,X		; DF DF 1E 1E
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($04.b,X)		; 01 04
	cop $08.b		; 02 08
	bit $6C01.w,X		; 3C 01 6C
	rol A		; 2A
	eor $0F3F10.l,X		; 5F 10 3F 0F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	plp		; 28
	bpl  16.b		; 10 10
	and [$0C.b]		; 27 0C
	ora $FF60BF.l		; 0F BF 60 FF
	ldx $2D.b		; A6 2D
	lsr $59.b,X		; 56 59
	ldx $7F.b,Y		; B6 7F
	bmi  82.b		; 30 52
	and $037F.w		; 2D 7F 03
	sbc $F02001.l,X		; FF 01 20 F0
	asl $70.b		; 06 70
	stx $30.b		; 86 30
	asl $70.b		; 06 70
	bpl 112.b		; 10 70
	tsb $0061.w		; 0C 61 00
	adc $01.b,S		; 63 01
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1208.w		; 0C 08 12
	tsb $13.b		; 04 13
	asl $13.b		; 06 13
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C0C.w		; 0C 0C 0C
	asl $0E0A.w		; 0E 0A 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	rti		; 40

	tya		; 98
	bmi -104.b		; 30 98
	bmi -104.b		; 30 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bvs  80.b		; 70 50
	bvs  80.b		; 70 50
	bvs  29.b		; 70 1D
	asl $1C2E.w		; 0E 2E 1C
	rol $3A1C.w		; 2E 1C 3A
	trb $183C.w		; 1C 3C 18
	bit $5418.w,X		; 3C 18 54
	sec		; 38
	sed		; F8
	bvs  14.b		; 70 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	bvs 120.b		; 70 78
	bmi  88.b		; 30 58
	bmi  60.b		; 30 3C
	clc		; 18
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	cop $1E.b		; 02 1E
	ora $550423.l		; 0F 23 04 55
	clc		; 18
	adc $6120.w,Y		; 79 20 61
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($0F.b,X)		; 01 0F
	brk $04.b		; 00 04
	clc		; 18
	clc		; 18
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $B030.w		; 2C 30 B0
	iny		; C8
	sed		; F8
	brk $F8.b		; 00 F8
	bvs 120.b		; 70 78
	beq  -8.b		; F0 F8
	beq -24.b		; F0 E8
	beq -16.b		; F0 F0
	cpx #$C030.w		; E0 30 C0
	cpy #$0000.w		; C0 00 00
	brk $60.b		; 00 60
	bvs  48.b		; 70 30
	cpy #$00F0.w		; C0 F0 00
	beq   0.b		; F0 00
	cpx #$8000.w		; E0 00 80
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	rti		; 40

	and $648680.l,X		; 3F 80 86 64
	eor [$46.b],Y		; 57 46
	adc $3982.w,X		; 7D 82 39
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpx #$FCE0.w		; E0 E0 FC
	jsr ($FEFE.w,X)		; FC FE FE
	inc $E6.b		; E6 E6
	dec $D6.b,X		; D6 D6
	bvc -70.b		; 50 BA
	cpx $0A.b		; E4 0A
	cpx #$408C.w		; E0 8C 40
	plp		; 28
	inx		; E8
	tsb $38C0.w		; 0C C0 38
	cpy #$0010.w		; C0 10 00
	cpx #$4444.w		; E0 44 44
	trb $04.b		; 14 04
	bcc -128.b		; 90 80
	bcc  32.b		; 90 20
	beq   0.b		; F0 00
	beq  48.b		; F0 30
	cpx #$0000.w		; E0 00 00
	brk $F0.b		; 00 F0
	ldy #$00F0.w		; A0 F0 00
	bvs  32.b		; 70 20
	dec $20.b,X		; D6 20
	sbc $669F06.l		; EF 06 9F 66
	adc [$8E.b],Y		; 77 8E
	ror $20BC.w,X		; 7E BC 20
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	bra -96.b		; 80 A0
	stx $06.b		; 86 06
	ora $020F66.l		; 0F 66 0F 02
	sta $ACFE18.l		; 8F 18 FE AC
	bvs -16.b		; 70 F0
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	rti		; 40

	bcs   0.b		; B0 00
	bne  24.b		; D0 18
	bra -122.b		; 80 86
	cop $03.b		; 02 03
	brk $FC.b		; 00 FC
	brk $70.b		; 00 70
	bra   0.b		; 80 00
	rti		; 40

	bra   0.b		; 80 00
	rti		; 40

	jsr $7800.w		; 20 00 78
	brk $FC.b		; 00 FC
	brk $03.b		; 00 03
	adc $1C7F00.l,X		; 7F 00 7F 1C
	and $133312.l,X		; 3F 12 33 13
	bmi  21.b		; 30 15
	and ($1C.b,S),Y		; 33 1C
	bit $39.b,X		; 34 39
	ora #$0C0C.w		; 09 0C 0C
	bmi  48.b		; 30 30
	cop $02.b		; 02 02
	tsb $0C00.w		; 0C 00 0C
	brk $0B.b		; 00 0B
	brk $04.b		; 00 04
	ora $09.b,S		; 03 09
	asl $F4.b		; 06 F4
	sbc $F106.w,Y		; F9 06 F1
	stz $01.b		; 64 01
	lda ($63.b)		; B2 63
	jsr ($38F6.w,X)		; FC F6 38
	bit $78.b,X		; 34 78
	rts		; 60

	rts		; 60

	bra  14.b		; 80 0E
	php		; 08
	asl $1E10.w,X		; 1E 10 1E
	brk $0C.b		; 00 0C
	rts		; 60

	bne  48.b		; D0 30
	bmi -48.b		; 30 D0
	rts		; 60

	bra -128.b		; 80 80
	brk $24.b		; 00 24
	cmp ($49.b,S),Y		; D3 49
	ldx $11.b,Y		; B6 11
	nop		; EA
	ora ($6A.b),Y		; 11 6A
	bpl 105.b		; 10 69
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	bit $592C.w		; 2C 2C 59
	eor $5151.w,Y		; 59 51 51
	ora ($11.b),Y		; 11 11
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	sbc [$51.b]		; E7 51
	ldy $DD0C.w		; AC 0C DD
	phd		; 0B
	tya		; 98
	ora ($98.b,X)		; 01 98
	ora $8E.b,S		; 03 8E
	adc $F807.w,X		; 7D 07 F8
	adc #$9D9D.w		; 69 9D 9D
	eor ($50.b)		; 52 50
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	tsb $60.b		; 04 60
	pha		; 48
	inc $1F.b		; E6 1F
	ora $01010F.l		; 0F 0F 01 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $000F00.l,X		; 1F 00 0F 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	plx		; FA
	lda $36FFF9.l,X		; BF F9 FF 36
	adc $6944.w,X		; 7D 44 69
	and ($C8.b,X)		; 21 C8
	brk $4B.b		; 00 4B
	brk $3F.b		; 00 3F
	ora $9A.b,S		; 03 9A
	sbc $36FD18.l,X		; FF 18 FD 36
	sed		; F8
	mvp $21,$BA		; 44 BA 21
	stx $00.b,Y		; 96 00
	and [$00.b],Y		; 37 00
	bit $00.b,X		; 34 00
	brk $0B.b		; 00 0B
	ora ($0B.b)		; 12 0B
	ora ($0E.b),Y		; 11 0E
	clc		; 18
	ora $13031C.l		; 0F 1C 03 13
	ora $1C31.w		; 0D 31 1C
	and ($0E.b),Y		; 31 0E
	and $02.b,S		; 23 02
	tsb $01.b		; 04 01
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $0C.b		; 00 0C
	brk $1E.b		; 00 1E
	bpl  15.b		; 10 0F
	ora ($1C.b,X)		; 01 1C
	brk $2F.b		; 00 2F
	asl A		; 0A
	ror $40.b		; 66 40
	stz $40.b		; 64 40
	sed		; F8
	tsb $38.b		; 04 38
	jsr ($CC48.w,X)		; FC 48 CC
	pha		; 48
	cpy $CC48.w		; CC 48 CC
	asl A		; 0A
	bne  64.b		; D0 40
	tya		; 98
	rti		; 40

	tya		; 98
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $08.b		; 04 08
	ora $09.b,S		; 03 09
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $07.b		; 05 07
	asl $07.b		; 06 07
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	cpy #$E0B0.w		; C0 B0 E0
	cmp $36F807.l,X		; DF 07 F8 36
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	cpx #$F0B0.w		; E0 B0 F0
	cmp $3FBF0F.l		; CF 0F BF 3F
	mvp $0A,$99		; 44 99 0A
	cmp $28.b,X		; D5 28
	lsr $28.b,X		; 56 28
	lsr $14.b,X		; 56 14
	rol A		; 2A
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ror $66.b		; 66 66
	ror A		; 6A
	ror A		; 6A
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	trb $14.b		; 14 14
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1E.b		; 06 1E
	brk $0F.b		; 00 0F
	asl $02.b		; 06 02
	tsb $0F04.w		; 0C 04 0F
	brk $1D.b		; 00 1D
	asl $801F.w		; 0E 1F 80
	ora ($12.b,X)		; 01 12
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	brk $08.b		; 00 08
	tsb $1E.b		; 04 1E
	brk $1E.b		; 00 1E
	tsb $5E00.w		; 0C 00 5E
	bit $3C7A.w,X		; 3C 7A 3C
	ply		; 7A
	bit $387C.w,X		; 3C 7C 38
	jmp $385C38.l		; 5C 38 5C 38
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	trb $3C20.w		; 1C 20 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bmi  33.b		; 30 21
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bmi  49.b		; 30 31
	bvc -120.b		; 50 88
	sec		; 38
	sty $38.b,X		; 94 38
	sty $48.b,X		; 94 48
	ldy $00.b,X		; B4 00
	jsr ($0688.w,X)		; FC 88 06
	tsb $02.b		; 04 02
	stz $7069.w,X		; 9E 69 70
	bvs  88.b		; 70 58
	sei		; 78
	pha		; 48
	sei		; 78
	sei		; 78
	pha		; 48
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	jsr ($9EFC.w,X)		; FC FC 9E
	stz $F46F.w,X		; 9E 6F F4
	eor ($DA.b),Y		; 51 DA
	trb $C883.w		; 1C 83 C8
	ora [$79.b],Y		; 17 79
	sta [$F8.b]		; 87 F8
	asl $B6C0.w		; 0E C0 B6
	cmp [$30.b]		; C7 30
	asl $260E.w		; 0E 0E 26
	asl $64.b		; 06 64
	tsb $60.b		; 04 60
	bpl  96.b		; 10 60
	bra 113.b		; 80 71
	brk $79.b		; 00 79
	bmi  -8.b		; 30 F8
	and ($67.b,S),Y		; 33 67
	ora $E91B.w		; 0D 1B E9
	stx $05.b,Y		; 96 05
	cmp $06FF88.l,X		; DF 88 FF 06
	xba		; EB
	dec $B9.b		; C6 B9
	dec $3F.b		; C6 3F
	cpy #$01F5.w		; C0 F5 01
	php		; 08
	ora $64.b		; 05 64
	ora #$00A8.w		; 09 A8 00
	asl $00.b		; 06 00
	dec $10.b,X		; D6 10
	dec $10.b,X		; D6 10
	cpy #$D900.w		; C0 00 D9
	rol $37.b		; 26 37
	cld		; D8
	jsr ($FC30.w,X)		; FC 30 FC
	tay		; A8
	inc $FE54.w,X		; FE 54 FE
	bit $FF.b		; 24 FF
	lsr $AF.b,X		; 56 AF
	txa		; 8A
	rol $00.b		; 26 00
	cpy #$2018.w		; C0 18 20
	sec		; 38
	brk $F8.b		; 00 F8
	mvn $24,$70		; 54 70 24
	jsr $0056.w		; 20 56 00
	txa		; 8A
	bvc -32.b		; 50 E0
	brk $F0.b		; 00 F0
	cpx #$E0F0.w		; E0 F0 E0
	beq -32.b		; F0 E0
	bcs  96.b		; B0 60
	bne  96.b		; D0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	brk $E0.b		; 00 E0
	cpy #$E0F0.w		; C0 F0 E0
	beq  96.b		; F0 60
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq  64.b		; F0 40
	beq  96.b		; F0 60
	beq -16.b		; F0 F0
	rts		; 60

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq   0.b		; F0 00
	bvs -32.b		; 70 E0
	beq   0.b		; F0 00
	ldy #$00B0.w		; A0 B0 00
	jsr $F020.w		; 20 20 F0
	jsr $00F0.w		; 20 F0 00
	beq   0.b		; F0 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	jsr $6040.w		; 20 40 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $F0.b		; 00 F0
	rts		; 60

	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	and $18.b,S		; 23 18
	jsl $00261C.l		; 22 1C 26 00
	stz $38.b		; 64 38
	stz $7C.b		; 64 7C
	clc		; 18
	ldy $FC78.w,X		; BC 78 FC
	bvs  30.b		; 70 1E
	cop $1C.b		; 02 1C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $0000.w		; 20 00 00
	clc		; 18
	clc		; 18
	bpl 104.b		; 10 68
	bvs   0.b		; 70 00
	pha		; 48
	cpy $CC48.w		; CC 48 CC
	php		; 08
	cpy $CC08.w		; CC 08 CC
	plp		; 28
	jmp ($602E.w)		; 6C 2E 60
	asl $3E6C.w,X		; 1E 6C 3E
	jmp $300030.l		; 5C 30 00 30
	brk $70.b		; 00 70
	rti		; 40

	bvs  64.b		; 70 40
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bit $0C2C.w		; 2C 2C 0C
	bpl   0.b		; 10 00
	ora $111906.l		; 0F 06 19 11
	jsr $6304.w		; 20 04 63
	and #$0246.w		; 29 46 02
	cpy $8854.w		; CC 54 88
	eor $98.b		; 45 98
	ora ($01.b,X)		; 01 01
	asl $1F0E.w		; 0E 0E 1F
	ora $393E3E.l,X		; 1F 3E 3E 39
	and $7B7B.w,Y		; 39 7B 7B
	adc [$77.b],Y		; 77 77
	adc [$77.b],Y		; 77 77
	lda $41.b		; A5 41
	.db $42, $84		; 42 84
	eor $82.b,X		; 55 82
	eor $8C7390.l		; 4F 90 73 8C
	lda $56.b,S		; A3 56
	rol $D0.b		; 26 D0
	ora $BFBFB8.l		; 0F B8 BF BF
	adc $7D7D7F.l,X		; 7F 7F 7D 7D
	jmp ($707C.w,X)		; 7C 7C 70
	bvs -82.b		; 70 AE
	ldx $2F.b		; A6 2F
	jsr $0007.w		; 20 07 00
	ora [$00.b]		; 07 00
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	ora [$03.b]		; 07 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $12.b		; 85 12
	sta $12.b		; 85 12
	cmp $81F280.l,X		; DF 80 F2 81
	adc $71FFF4.l,X		; 7F F4 FF 71
	adc $341D03.l,X		; 7F 03 1D 34
	tsb $0C80.w		; 0C 80 0C
	bra   0.b		; 80 00
	cpy #$FD80.w		; C0 80 FD
	stz $F0.b,X		; 74 F0
	ora ($F0.b),Y		; 11 F0
	ora $70.b,S		; 03 70
	trb $02.b		; 14 02
	bit $3418.w,X		; 3C 18 34
	clc		; 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $0048.w		; 20 48 00
	cld		; D8
	bvc -16.b		; 50 F0
	rts		; 60

	rts		; 60

	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	bmi  80.b		; 30 50
	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	pld		; 2B
	inc A		; 1A
	and ($12.b),Y		; 31 12
	rol $14.b,X		; 36 14
	.db $42, $24		; 42 24
	.db $42, $24		; 42 24
	jmp $6428.w		; 4C 28 64
	plp		; 28
	pla		; 68
	jsr $041A.w		; 20 1A 04
	ora ($0C.b)		; 12 0C
	trb $08.b		; 14 08
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	plp		; 28
	bpl  40.b		; 10 28
	bpl  32.b		; 10 20
	bpl   0.b		; 10 00
	ora $02.b,S		; 03 02
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	tsb $01.b		; 04 01
	bit $E41B.w,X		; 3C 1B E4
	eor $82.b		; 45 82
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	tsa		; 3B
	tsa		; 3B
	sbc $FDFD.w,X		; FD FD FD
	sbc $1C00.w,X		; FD 00 1C
	bpl -90.b		; 10 A6
	tsb $8CE6.w		; 0C E6 8C
	inc $DC.b		; E6 DC
	inc $D0.b		; E6 D0
	ror $FF00.w		; 6E 00 FF
	asl A		; 0A
	sbc ($00.b),Y		; F1 00
	brk $18.b		; 00 18
	trb $9C14.w		; 1C 14 9C
	sty $9C.b,X		; 94 9C
	bcc -36.b		; 90 DC
	trb $C0D0.w		; 1C D0 C0
	brk $9F.b		; 00 9F
	ora $BFF6F9.l,X		; 1F F9 F6 BF
	sbc ($FF.b),Y		; F1 FF
	ora ($2F.b,X)		; 01 2F
	asl $003F.w,X		; 1E 3F 00
	adc $61F52A.l,X		; 7F 2A F5 61
	inc $52.b,X		; F6 52
	ldx $F8.b,Y		; B6 F8
	bpl  -7.b		; 10 F9
	brk $FF.b		; 00 FF
	asl $3F.b		; 06 3F
	brk $00.b		; 00 00
	rol A		; 2A
	brk $61.b		; 00 61
	asl A		; 0A
	eor ($09.b)		; 52 09
	bcc  96.b		; 90 60
	bvs -128.b		; 70 80
	sed		; F8
	ora ($C9.b,X)		; 01 C9
	eor [$F7.b]		; 47 F7
	brk $3F.b		; 00 3F
	jsr $0191.w		; 20 91 01
	inx		; E8
	sta $000060.l		; 8F 60 00 00
	bra   0.b		; 80 00
	cpy #$3040.w		; C0 40 30
	ora $C02F00.l		; 0F 00 2F C0
	asl $9460.w		; 0E 60 94
	tsb $05.b		; 04 05
	asl A		; 0A
	cop $0D.b		; 02 0D
	cop $0D.b		; 02 0D
	cop $05.b		; 02 05
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $D203.w,X		; 3D 03 D2
	and ($0B.b,S),Y		; 33 0B
	tsb $302C.w		; 0C 2C 30
	bcs -64.b		; B0 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $33.b		; 00 33
	tsb $F00C.w		; 0C 0C F0
	bmi -64.b		; 30 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $30.b		; 00 30
	jsr $30B8.w		; 20 B8 30
	inx		; E8
	bpl -56.b		; 10 C8
	bra -48.b		; 80 D0
	jsr $0050.w		; 20 50 00
	rts		; 60

	brk $00.b		; 00 00
	cpx #$F0E0.w		; E0 E0 F0
	beq  48.b		; F0 30
	bmi -80.b		; 30 B0
	bcs  32.b		; B0 20
	jsr $20A0.w		; 20 A0 20
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	brk $C0.b		; 00 C0
	clc		; 18
	bra 124.b		; 80 7C
	clc		; 18
	jmp.w [$DC78]		; DC 78 DC
	sed		; F8
	sei		; 78
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	clc		; 18
	clc		; 18
	jmp ($FC08.w,X)		; 7C 08 FC
	php		; 08
	jsr ($F800.w,X)		; FC 00 F8
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	ora $1C03.w,X		; 1D 03 1C
	jmp ($CC5C.w)		; 6C 5C CC
	dec $1F.b,X		; D6 1F
	sbc [$38.b]		; E7 38
	rti		; 40

	rts		; 60

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $2C0B.w		; 0C 0B 2C
	phd		; 0B
	sbc [$04.b]		; E7 04
	cpy #$8000.w		; C0 00 80
	brk $1A.b		; 00 1A
	tsb $182C.w		; 0C 2C 18
	jmp ($5C38.w,X)		; 7C 38 5C
	sec		; 38
	bit $2C18.w,X		; 3C 18 2C
	clc		; 18
	asl $0F0C.w,X		; 1E 0C 0F
	brk $0C.b		; 00 0C
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $14.b		; 00 14
	php		; 08
	bit $18.b,X		; 34 18
	inx		; E8
	bmi  72.b		; 30 48
	beq -48.b		; F0 D0
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	ora [$08.b]		; 07 08
	ora $C61B36.l		; 0F 36 1B C6
	adc [$02.b]		; 67 02
	asl $39.b		; 06 39
	sta $8CFF40.l		; 8F 40 FF 8C
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $0E.b		; 04 0E
	and ($0F.b)		; 32 0F
	sed		; F8
	ora [$C0.b]		; 07 C0
	ora [$00.b]		; 07 00
	asl $FE0C.w		; 0E 0C FE
	ora $71DEC0.l		; 0F C0 DE 71
	ldx $F0B8.w		; AE B8 F0
	ora $D760FF.l		; 0F FF 60 D7
	.db $62, $3A, $C5		; 62 3A C5
	sbc $003F00.l,X		; FF 00 3F 00
	eor $40A701.l		; 4F 01 A7 40
	brk $00.b		; 00 00
	rts		; 60

	brk $6A.b		; 00 6A
	php		; 08
	pei ($11.b)		; D4 11
	brk $03.b		; 00 03
	ora ($0C.b,X)		; 01 0C
	trb $3600.w		; 1C 00 36
	ora $2F.b,X		; 15 2F
	cop $3F.b		; 02 3F
	ora $03031D.l		; 0F 1D 03 03
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $14.b		; 00 14
	php		; 08
	brk $13.b		; 00 13
	ora [$0F.b]		; 07 0F
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	ora ($33.b)		; 12 33
	ora ($33.b)		; 12 33
	bpl  50.b		; 10 32
	bpl  50.b		; 10 32
	bpl  50.b		; 10 32
	asl $7E20.w,X		; 1E 20 7E
	trb $3C5E.w		; 1C 5E 3C
	tsb $0C00.w		; 0C 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	trb $300C.w		; 1C 0C 30
	ror $7A3C.w,X		; 7E 3C 7A
	bit $387C.w,X		; 3C 7C 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	stz $38.b,X		; 74 38
	sei		; 78
	bmi 120.b		; 30 78
	bmi  60.b		; 30 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	and $A2F10E.l,X		; 3F 0E F1 A2
	eor ($10.b,X)		; 41 10
	sta $8ABF40.l		; 8F 40 BF 8A
	eor $08.b,X		; 55 08
	stx $08.b,Y		; 96 08
	sty $C0.b,X		; 94 C0
	cpy #$1F1F.w		; C0 1F 1F
	ldx $70BE.w,Y		; BE BE 70
	bvs  76.b		; 70 4C
	jmp $8A8A.w		; 4C 8A 8A
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bit $4BCC.w		; 2C CC 4B
	.db $82, $A2, $0B		; 82 A2 0B
	sty $29.b,X		; 94 29
.ACCU 16
.INDEX 16
	rep #$3D		; C2 3D
	sta $EC6760.l		; 8F 60 67 EC
	phy		; 5A
	cmp ($7F.b,X)		; C1 7F
	adc $FF7F7F.l,X		; 7F 7F 7F FF
	sbc $EAF6F6.l,X		; FF F6 F6 EA
	nop		; EA
	bcc -128.b		; 90 80
	trb $3C0C.w		; 1C 0C 3C
	ora ($E6.b,X)		; 01 E6
	tsb $27.b		; 04 27
	brk $18.b		; 00 18
	and [$00.b]		; 27 00
	and $1E3F1C.l,X		; 3F 1C 3F 1E
	and $123312.l,X		; 3F 12 33 12
	and ($04.b,S),Y		; 33 04
	ora $1800.w,Y		; 19 00 18
	ora [$07.b]		; 07 07
	bpl  16.b		; 10 10
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	tsb $0C00.w		; 0C 00 0C
	brk $70.b		; 00 70
	bit $7880.w,X		; 3C 80 78
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	dey		; 88
	rts		; 60

	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	ora ($04.b,X)		; 01 04
	cop $09.b		; 02 09
	ora ($0A.b,X)		; 01 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	ora $05.b		; 05 05
	trb $3600.w		; 1C 00 36
	ora $7B.b		; 05 7B
	bmi 122.b		; 30 7A
	bmi -68.b		; 30 BC
	adc ($F1.b,S),Y		; 73 F1
	rts		; 60

	lda ($40.b),Y		; B1 40
	plx		; FA
	adc ($00.b),Y		; 71 00
	brk $04.b		; 00 04
	plp		; 28
	ora ($74.b),Y		; 11 74
	and ($74.b),Y		; 31 74
	jsr $00F8.w		; 20 F8 00
	beq   0.b		; F0 00
	beq  49.b		; F0 31
	sed		; F8
	rol $3C01.w,X		; 3E 01 3C
	pei ($DF.b)		; D4 DF
	php		; 08
	ora [$09.b],Y		; 17 09
	asl $2CE3.w,X		; 1E E3 2C
	stp		; DB
	cmp $966928.l,X		; DF 28 69 96
	brk $30.b		; 00 30
	tsb $33.b		; 04 33
	inx		; E8
	clc		; 18
	sbc ($1C.b,X)		; E1 1C
	ora $18.b,S		; 03 18
	wai		; CB
	sec		; 38
	brk $78.b		; 00 78
	stx $70.b		; 86 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $1C.b,S		; 03 1C
	php		; 08
	bmi  16.b		; 30 10
	rts		; 60

	bit $43.b		; 24 43
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	rol $003E.w,X		; 3E 3E 00
	ora #$1001.w		; 09 01 10
	asl $10.b		; 06 10
	ora [$92.b]		; 07 92
	sta $162972.l		; 8F 72 29 16
	bpl  15.b		; 10 0F
	ora ($FE.b,X)		; 01 FE
	asl $06.b		; 06 06
	ora $0F0D0F.l		; 0F 0F 0D 0F
	phd		; 0B
	ora $EF8F89.l		; 0F 89 8F EF
	sbc #$F0F6.w		; E9 F6 F0
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $87.b		; 00 87
	ora ($88.b,X)		; 01 88
	ora [$90.b]		; 07 90
	ora [$92.b]		; 07 92
	ora #$00F6.w		; 09 F6 00
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$0D.b]		; 07 0D
	ora $0F0F0B.l		; 0F 0B 0F 0F
	ora #$F0F2.w		; 09 F2 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $F0.b		; 00 F0
	rts		; 60

	stz $C608.w		; 9C 08 C6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bit $623C.w,X		; 3C 3C 62
	cmp $E0.b		; C5 E0
	dec $E0.b		; C6 E0
	cpy $E0.b		; C4 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	.db $62, $40, $E0		; 62 40 E0
	cpy #$00E0.w		; C0 E0 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $F07FC6.l,X		; 7F C6 7F F0
	phk		; 4B
	cmp $73C772.l		; CF 72 C7 73
	dec $31.b		; C6 31
	lsr $32.b		; 46 32
	mvp $4C,$38		; 44 38 4C
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	and ($00.b,S),Y		; 33 00
	tsa		; 3B
	brk $3A.b		; 00 3A
	brk $3A.b		; 00 3A
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $FD.b		; 00 FD
	bra 114.b		; 80 72
	cmp $C1E6A5.l		; CF A5 E6 C1
	bit $90FC.w,X		; 3C FC 90
	ldy $C818.w		; AC 18 C8
	bmi -72.b		; 30 B8
	rti		; 40

	ror $3400.w,X		; 7E 00 34
	tsb $98.b		; 04 98
	ora ($00.b,X)		; 01 00
	ora ($90.b,X)		; 01 90
	brk $58.b		; 00 58
	rti		; 40

	bcs -128.b		; B0 80
	rti		; 40

	brk $D0.b		; 00 D0
	jsr $00B0.w		; 20 B0 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	rti		; 40

	beq -96.b		; F0 A0
	beq -64.b		; F0 C0
	cpx #$2050.w		; E0 50 20
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	sty $CC48.w		; 8C 48 CC
	brk $C6.b		; 00 C6
	cpy $A6.b		; C4 A6
	cpx #$4026.w		; E0 26 40
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	sei		; 78
	php		; 08
	bmi   0.b		; 30 00
	bit $3884.w,X		; 3C 84 38
	ldy #$041C.w		; A0 1C 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F8C6.w,X)		; FC C6 F8
	tas		; 1B
	jsl $F190E3.l		; 22 E3 90 F1
	cmp #$6079.w		; C9 79 60
	sec		; 38
	sec		; 38
	trb $1C.b		; 14 1C
	tsb $C0.b		; 04 C0
	brk $06.b		; 00 06
	cop $9C.b		; 02 9C
	brk $CF.b		; 00 CF
	ora ($66.b,X)		; 01 66
	brk $27.b		; 00 27
	bpl   7.b		; 10 07
	trb $03.b		; 14 03
	brk $26.b		; 00 26
	trb $32.b		; 14 32
	trb $34.b		; 14 34
	clc		; 18
	cli		; 58
	bmi 104.b		; 30 68
	jsr $1058.w		; 20 58 10
	bvs  32.b		; 70 20
	rts		; 60

	brk $14.b		; 00 14
	php		; 08
	trb $08.b		; 14 08
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	bpl  16.b		; 10 10
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	ora [$09.b]		; 07 09
	asl $1219.w		; 0E 19 12
	and ($3C.b,S),Y		; 33 3C
	cop $5C.b		; 02 5C
	dec A		; 3A
	jmp ($9438.w,X)		; 7C 38 94
	cli		; 58
	cld		; D8
	bvc   6.b		; 50 06
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sec		; 38
	bmi   8.b		; 30 08
	cli		; 58
	jsr $2050.w		; 20 50 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	xce		; FB
	bvs 119.b		; 70 77
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	cop $07.b		; 02 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	cop $10.b		; 02 10
	sed		; F8
	brk $70.b		; 00 70
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FF21.w,X		; FE 21 FF
	ldx $55FE.w		; AE FE 55
	sbc $B4FFCB.l,X		; FF CB FF B4
	sbc $DAFF6A.l,X		; FF 6A FF DA
	sbc $3100DB.l,X		; FF DB 00 31
	sty $3F.b		; 84 3F
	rti		; 40

	ora $B40FCA.l,X		; 1F CA 0F B4
	tsb $6A.b		; 04 6A
	brk $DA.b		; 00 DA
	brk $DB.b		; 00 DB
	brk $00.b		; 00 00
	cmp $15944A.l		; CF 4A 94 15
	tay		; A8
	bvc -85.b		; 50 AB
	plp		; 28
	pei ($20.b)		; D4 20
	cld		; D8
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	adc ($71.b),Y		; 71 71
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	mvn $28,$54		; 54 54 28
	plp		; 28
	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	sta ($0C.b)		; 92 0C
	rol $18.b		; 26 18
	ora $FA.b		; 05 FA
	ora $0A.b		; 05 0A
	brk $0F.b		; 00 0F
	ora $08.b,S		; 03 08
	cop $09.b		; 02 09
	ora $04.b,S		; 03 04
	xce		; FB
	xce		; FB
	sbc [$F7.b],Y		; F7 F7
	ora [$07.b]		; 07 07
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	cli		; 58
	eor [$A5.b]		; 47 A5
	bit $62.b		; 24 62
	ldx #$9D40.w		; A2 40 9D
	jsl $02E9D4.l		; 22 D4 E9 02
	jmp.w [$D9A3]		; DC A3 D9
	rol $FC.b		; 26 FC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $6363FF.l,X		; FF FF 63 63
	pld		; 2B
	and $1D.b,S		; 23 1D
	ora ($98.b,X)		; 01 98
	ldy #$25B8.w		; A0 B8 25
	mvp $60,$A2		; 44 A2 60
	sta ($B2.b,S),Y		; 93 B2
	eor #$6994.w		; 49 94 69
	clc		; 18
	sbc $0A.b		; E5 0A
	lda $08.b,X		; B5 08
	asl $08.b,X		; 16 08
	asl $DC.b,X		; 16 DC
	jmp.w [$6E6E]		; DC 6E 6E
	ldx $B6.b,Y		; B6 B6
	ldx $B6.b,Y		; B6 B6
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	inc A		; 1A
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	rol $19.b		; 26 19
	and $067B00.l,X		; 3F 00 7B 06
	sbc $6CD731.l		; EF 31 D7 6C
	lda $246D5A.l,X		; BF 5A 6D 24
	eor $1914.w,X		; 5D 14 19
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	ora [$31.b]		; 07 31
	ora ($6C.b,X)		; 01 6C
	brk $5A.b		; 00 5A
	brk $24.b		; 00 24
	ora ($14.b)		; 12 14
	jsl $D9C738.l		; 22 38 C7 D9
	rol $F7.b		; 26 F7
	inx		; E8
	sbc ($4C.b)		; F2 4C
	inc $F6B0.w		; EE B0 F6
	mvp $A0,$F9		; 44 F9 A0
	eor $00C710.l,X		; 5F 10 C7 00
	asl $20.b		; 06 20
	pha		; 48
	cpx #$E00C.w		; E0 0C E0
	bra -16.b		; 80 F0
	mvp $A0,$48		; 44 48 A0
	asl $10.b		; 06 10
	ldy #$6000.w		; A0 00 60
	jsr $0090.w		; 20 90 00
	bpl  80.b		; 10 50
	php		; 08
	bne  72.b		; D0 48
	beq  72.b		; F0 48
	bmi -56.b		; 30 C8
	jsr $00D9.w		; 20 D9 00
	brk $60.b		; 00 60
	rts		; 60

	cpx #$B0E0.w		; E0 E0 B0
	beq 112.b		; F0 70
	beq  48.b		; F0 30
	beq -16.b		; F0 F0
	bmi -32.b		; 30 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$A3D9.w		; E0 D9 A3
	pei ($22.b)		; D4 22
	sbc $9886.w,Y		; F9 86 98
	adc [$D0.b]		; 67 D0
	stz $60.b		; 64 60
	php		; 08
	brk $F0.b		; 00 F0
	beq   8.b		; F0 08
	sta $39A1.w,X		; 9D A1 39
	and ($71.b,X)		; 21 71
	ora $F0.b		; 05 F0
	rts		; 60

	tya		; 98
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl -39.b		; 10 D9
	bit $49.b		; 24 49
	ldy $09.b,X		; B4 09
	pei ($0A.b)		; D4 0A
	sta $0A.b,X		; 95 0A
	ora $10.b,X		; 15 10
	rol $7000.w		; 2E 00 70
	brk $00.b		; 00 00
	stp		; DB
	stp		; DB
	tad		; 5B
	tad		; 5B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	asl A		; 0A
	asl A		; 0A
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $1C.b,S		; 03 1C
	php		; 08
	bmi  16.b		; 30 10
	rts		; 60

	plp		; 28
	eor [$21.b]		; 47 21
	lsr $A854.w,X		; 5E 54 A8
	cop $F1.b		; 02 F1
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	sec		; 38
	sec		; 38
	and ($21.b,X)		; 21 21
	eor [$57.b],Y		; 57 57
	rol $002E.w		; 2E 2E 00
	cpx #$19E0.w		; E0 E0 19
	php		; 08
	ora $E4.b		; 05 E4
	cop $0C.b		; 02 0C
	sbc ($11.b)		; F2 11
	asl $0609.w		; 0E 09 06
	trb $E3.b		; 14 E3
	brk $00.b		; 00 00
	cpx #$F8E0.w		; E0 E0 F8
	sed		; F8
	sbc $0DFD.w,X		; FD FD 0D
	ora $F1F1.w		; 0D F1 F1
	sbc $1CFD.w,X		; FD FD 1C
	trb $1436.w		; 1C 36 14
	.db $42, $24		; 42 24
	jmp ($4428.w)		; 6C 28 44
	php		; 08
	tya		; 98
	bvc -104.b		; 50 98
	bvc -56.b		; 50 C8
	bvc -16.b		; 50 F0
	rts		; 60

	trb $08.b		; 14 08
	bit $18.b		; 24 18
	plp		; 28
	bpl   8.b		; 10 08
	bmi  80.b		; 30 50
	jsr $2050.w		; 20 50 20
	bvc  32.b		; 50 20
	rts		; 60

	brk $0F.b		; 00 0F
	ora $190C.w,Y		; 19 0C 19
	cop $13.b		; 02 13
	trb $3C3E.w		; 1C 3E 3C
	asl $7C.b		; 06 7C
	dec A		; 3A
	ldy $C478.w,X		; BC 78 C4
	pha		; 48
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	sec		; 38
	bmi  72.b		; 30 48
	pha		; 48
	bmi   0.b		; 30 00
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
	brk $22.b		; 00 22
	trb $0E1F.w		; 1C 1F 0E
	tas		; 1B
	asl $060B.w		; 0E 0B 06
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $1F04.w,X		; 3E 04 1F
	cop $1F.b		; 02 1F
	cop $0F.b		; 02 0F
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	jsr $0030.w		; 20 30 00
	clc		; 18
	bpl -40.b		; 10 D8
	cpx #$8078.w		; E0 78 80
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	bpl  96.b		; 10 60
	rti		; 40

	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	sei		; 78
	bmi -88.b		; 30 A8
	rts		; 60

	dey		; 88
	rti		; 40

	dey		; 88
	rti		; 40

	pla		; 68
	jsr $2048.w		; 20 48 20
	sec		; 38
	bpl  16.b		; 10 10
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	bpl  64.b		; 10 40
	bmi  64.b		; 30 40
	bmi  32.b		; 30 20
	bpl  32.b		; 10 20
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	tsb $FC.b		; 04 FC
	adc ($B8.b)		; 72 B8
	adc ($78.b),Y		; 71 78
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	cop $05.b		; 02 05
	cop $1E.b		; 02 1E
	ora ($05.b,X)		; 01 05
	beq  49.b		; F0 31
	sed		; F8
	bpl  -8.b		; 10 F8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	adc ($0C.b,S),Y		; 73 0C
	sbc #$F544.w		; E9 44 F5
	eor ($B4.b)		; 52 B4
	.db $42, $CE		; 42 CE
	and $8F.b,X		; 35 8F
	adc ($9F.b),Y		; 71 9F
	rts		; 60

	inc $8301.w,X		; FE 01 83
	rti		; 40

	ora $D0.b,S		; 03 D0
	eor ($C8.b),Y		; 51 C8
	ora ($C8.b,X)		; 01 C8
	bit $80.b,X		; 34 80
	bvs   0.b		; 70 00
	stz $04.b		; 64 04
	ora #$3908.w		; 09 08 39
	brk $09.b		; 00 09
	bmi  15.b		; 30 0F
	sec		; 38
	ora ($33.b)		; 12 33
	asl $0E33.w,X		; 1E 33 0E
	and $18.b,S		; 23 18
	.db $62, $1C, $66		; 62 1C 66
	brk $06.b		; 00 06
	bpl  22.b		; 10 16
	bpl  16.b		; 10 10
	tsb $0C00.w		; 0C 00 0C
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	jsr $2038.w		; 20 38 20
	adc $043C4B.l		; 6F 4B 3C 04
	cpy $3C.b		; C4 3C
	ora ($FF.b,X)		; 01 FF
	cpx $1F1F.w		; EC 1F 1F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	bcc   3.b		; 90 03
	cpy #$080B.w		; C0 0B 08
	sbc ($02.b)		; F2 02
	trb $0200.w		; 1C 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($F0.b)		; F2 F0
	asl $050A.w		; 0E 0A 05
	jmp ($9323.w)		; 6C 23 93
	bvc  80.b		; 50 50
	bcc   2.b		; 90 02
	jsr ($07E5.w,X)		; FC E5 07
	ora ($01.b,X)		; 01 01
	sbc ($F1.b),Y		; F1 F1
	xce		; FB
	plx		; FA
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $437F7F.l,X		; FF 7F 7F 43
	eor $19.b,S		; 43 19
	ora ($40.b,X)		; 01 40
	bpl -32.b		; 10 E0
	bvc  96.b		; 50 60
	jmp.w [$A650]		; DC 50 A6
	pha		; 48
	lda ($A2.b,S),Y		; B3 A2
	eor $6914.w,Y		; 59 14 69
	eor ($2C.b),Y		; 51 2C
	ldy #$60E0.w		; A0 E0 60
	cpx #$60A0.w		; E0 A0 60
	jmp.w [$4E5C]		; DC 5C 4E
	lsr $B6B6.w		; 4E B6 B6
	lda [$B7.b],Y		; B7 B7
	stp		; DB
	stp		; DB
	sei		; 78
	ldy $9774.w		; AC 74 97
	phb		; 8B
	dec A		; 3A
	sta [$0D.b]		; 87 0D
	tsb $03.b		; 04 03
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra  48.b		; 80 30
	dey		; 88
	jsr $0004.w		; 20 04 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	bra -16.b		; 80 F0
	rts		; 60

	sed		; F8
	beq -68.b		; F0 BC
	sei		; 78
	ror $001C.w,X		; 7E 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr $7040.w		; 20 40 70
	rts		; 60

	sed		; F8
	bmi  -4.b		; 30 FC
	php		; 08
	ror $E618.w,X		; 7E 18 E6
	jsr $40D8.w		; 20 D8 40
	ldy #$E000.w		; A0 00 E0
	brk $60.b		; 00 60
	bit $7A00.w,X		; 3C 00 7A
	and ($5A.b),Y		; 31 5A
	bmi  88.b		; 30 58
	cli		; 58
	jsr $4020.w		; 20 20 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bpl 116.b		; 10 74
	ora ($74.b,X)		; 01 74
	tsb $1B.b		; 04 1B
	ora ($06.b,X)		; 01 06
	cop $04.b		; 02 04
	cop $0C.b		; 02 0C
	ora $0A.b		; 05 0A
	brk $0F.b		; 00 0F
	ora $09.b,S		; 03 09
	cop $89.b		; 02 89
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$01.b]		; 07 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $70.b		; 00 70
	brk $8C.b		; 00 8C
	bit $92.b		; 24 92
	bmi -102.b		; 30 9A
	adc ($99.b)		; 72 99
	stz $9B.b		; 64 9B
	lda ($5E.b,X)		; A1 5E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp $547C.w		; 4C 7C 54
	jmp ($7E46.w,X)		; 7C 46 7E
	jmp ($B964.w,X)		; 7C 64 B9
	lda ($00.b,X)		; A1 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	php		; 08
	asl A		; 0A
	bpl  14.b		; 10 0E
	ora ($0D.b)		; 12 0D
	ora ($01.b)		; 12 01
	inc $0F10.w,X		; FE 10 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $0B0F.w		; 0D 0F 0B
	ora $070F09.l		; 0F 09 0F 07
	ora ($F3.b,X)		; 01 F3
	sbc ($0F.b),Y		; F1 0F
	trb $0C31.w		; 1C 31 0C
	jmp ($FF1E.w,X)		; 7C 1E FF
	rts		; 60

	adc $13AE33.l		; 6F 33 AE 13
	ldy $FFCB.w,X		; BC CB FF
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $0000.w,X		; 1D 00 00
	cpx #$78A3.w		; E0 A3 78
	cmp $38.b,S		; C3 38
	phd		; 0B
	sec		; 38
	brk $18.b		; 00 18
	jsr ($D802.w,X)		; FC 02 D8
	cop $E4.b		; 02 E4
	asl $3B.b,X		; 16 3B
	stx $FB07.w		; 8E 07 FB
	lda $18E71B.l		; AF 1B E7 18
	jmp $0098A0.l		; 5C A0 98 00
	jsr ($E800.w,X)		; FC 00 E8
	brk $70.b		; 00 70
	ora $02.b,S		; 03 02
	ora $59.b,S		; 03 59
	eor $58.b,S		; 43 58
	eor $A0.b,S		; 43 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sed		; F8
	bvs -114.b		; 70 8E
	mvp $12,$83		; 44 83 12
	sbc ($00.b,X)		; E1 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	sei		; 78
	ror $1F7E.w,X		; 7E 7E 1F
	ora $000000.l,X		; 1F 00 00 00
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
	ora [$04.b]		; 07 04
	clc		; 18
	bpl  32.b		; 10 20
	jsl $470841.l		; 22 41 08 47
	cop $9C.b		; 02 9C
	trb $A8.b		; 14 A8
	and ($D8.b,X)		; 21 D8
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	sec		; 38
	sec		; 38
	adc $63.b,S		; 63 63
	eor [$57.b],Y		; 57 57
	and $D1282F.l		; 2F 2F 28 D1
	.db $42, $B1		; 42 B1
	bvc -94.b		; 50 A2
	bpl -30.b		; 10 E2
	bpl 100.b		; 10 64
	php		; 08
	adc $19.b,X		; 75 19
	and [$2F.b]		; 27 2F
	php		; 08
	rol $5E2E.w		; 2E 2E 5E
	lsr $5C5C.w,X		; 5E 5C 5C
	jmp $18185C.l		; 5C 5C 18 18
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	phd		; 0B
	bpl   2.b		; 10 02
	ora $02.b		; 05 02
	ora $00.b		; 05 00
	asl $80.b		; 06 80
	tsb $F8.b		; 04 F8
	bra -72.b		; 80 B8
	beq  -8.b		; F0 F8
	bmi 120.b		; 30 78
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	bpl  -8.b		; 10 F8
	bmi  -8.b		; 30 F8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$E000.w		; C0 00 E0
	cpy #$E0D0.w		; C0 D0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cpx #$B400.w		; E0 00 B4
	ora ($B4.b),Y		; 11 B4
	ora ($67.b),Y		; 11 67
	ora $24.b,S		; 03 24
	ora $1C.b,S		; 03 1C
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	pha		; 48
	ora ($49.b,S),Y		; 13 49
	brk $18.b		; 00 18
	ora $1B.b,S		; 03 1B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plx		; FA
	adc $FA.b,X		; 75 FA
	adc $85.b,X		; 75 85
	pha		; 48
	sty $6248.w		; 8C 48 62
	ldy $46.b		; A4 46
	bit $36.b		; 24 36
	trb $29.b		; 14 29
	inc A		; 1A
	stz $45.b,X		; 74 45
	and $44.b,X		; 35 44
	php		; 08
	bvs  72.b		; 70 48
	bmi  36.b		; 30 24
	clc		; 18
	bit $18.b		; 24 18
	trb $08.b		; 14 08
	inc A		; 1A
	tsb $F0.b		; 04 F0
	cpx #$F0E8.w		; E0 E8 F0
	sei		; 78
	beq -68.b		; F0 BC
	sei		; 78
	phy		; 5A
	bit $1C2E.w,X		; 3C 2E 1C
	ora $0E.b,X		; 15 0E
	phd		; 0B
	asl $E0.b		; 06 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $34.b		; 00 34
	brk $7C.b		; 00 7C
	and [$7C.b],Y		; 37 7C
	bmi 120.b		; 30 78
	jsr $385C.w		; 20 5C 38
	jmp ($7830.w,X)		; 7C 30 78
	bmi 120.b		; 30 78
	brk $03.b		; 00 03
	plp		; 28
	trb $70.b		; 14 70
	jsr $0078.w		; 20 78 00
	sei		; 78
	clc		; 18
	jmp ($7C10.w,X)		; 7C 10 7C
	bmi 120.b		; 30 78
	brk $78.b		; 00 78
	cld		; D8
	bvc 120.b		; 50 78
	bmi  84.b		; 30 54
	sec		; 38
	bit $1618.w,X		; 3C 18 16
	tsb $19.b		; 04 19
	php		; 08
	ora $000706.l		; 0F 06 07 00
	bvc  32.b		; 50 20
	bmi   0.b		; 30 00
	sec		; 38
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	php		; 08
	php		; 08
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	clc		; 18
	asl $150C.w,X		; 1E 0C 15
	asl $060F.w		; 0E 0F 06
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	and $F008.w,Y		; 39 08 F0
	ldy #$4214.w		; A0 14 42
	bit $89.b,X		; 34 89
	ror $00.b,X		; 76 00
	sta $041401.l,X		; 9F 01 14 04
	ora ($D7.b),Y		; 11 D7
	cmp [$0F.b],Y		; D7 0F
	ora $EBEFEF.l		; 0F EF EF EB
	xba		; EB
	txy		; 9B
	txy		; 9B
	brk $00.b		; 00 00
	asl $0F04.w		; 0E 04 0F
	ora ($04.b,X)		; 01 04
	ora $E2.b,S		; 03 E2
	sep #$49		; E2 49
	eor $05.b,X		; 55 05
	lda $11AE44.l,X		; BF 44 AE 11
	inc $F4.b		; E6 F4
	phd		; 0B
	pei ($A3.b)		; D4 A3
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $C9EBEB.l,X		; FF EB EB C9
	cmp #$4151.w		; C9 51 41
	sta $1985.w,X		; 9D 85 19
	ora #$A298.w		; 09 98 A2
	stz $9F63.w		; 9C 63 9F
	pla		; 68
	ror $9403.w,X		; 7E 03 94
	ror $42BF.w		; 6E BF 42
	jsr ($DC28.w,X)		; FC 28 DC
	ora #$41D4.w		; 09 D4 41
	adc $18.b,S		; 63 18
	rts		; 60

	clc		; 18
	brk $1E.b		; 00 1E
	adc ($1C.b,X)		; 61 1C
	eor ($00.b,X)		; 41 00
	pld		; 2B
	brk $0B.b		; 00 0B
	and ($42.b,X)		; 21 42
	plp		; 28
	cpx $58.b		; E4 58
	jsr ($30E0.w,X)		; FC E0 30
	inc $2B92.w		; EE 92 2B
	cmp #$C939.w		; C9 39 C9
	clc		; 18
	tsa		; 3B
	asl $B5FB.w		; 0E FB B5
	clc		; 18
	rti		; 40

	rti		; 40

	cpx #$3020.w		; E0 20 30
	cpy $10.b		; C4 10
	dec $00.b		; C6 00
	inc $00.b		; E6 00
	cpy $04.b		; C4 04
	jsr $2531.w		; 20 31 25
	cld		; D8
	lda ($4C.b)		; B2 4C
	cmp $4C26.w,Y		; D9 26 4C
	lda ($46.b,S),Y		; B3 46
	lda #$CD02.w		; A9 02 CD
	cop $05.b		; 02 05
	cop $05.b		; 02 05
	adc [$67.b]		; 67 67
	tyx		; BB
	tyx		; BB
	cmp $CDDD.w,X		; DD DD CD
	cmp $4646.w		; CD 46 46
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora ($7E.b,X)		; 01 7E
	rol $81C1.w,X		; 3E C1 81
	brk $20.b		; 00 20
	ora $027986.l,X		; 1F 86 79 02
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($7E.b,X)		; 01 7E
	ror $FFFF.w,X		; 7E FF FF
	beq -16.b		; F0 F0
	sta $92E18F.l		; 8F 8F E1 92
	cpx #$20D3.w		; E0 D3 20
	cmp $28F806.l,X		; DF 06 F8 28
	iny		; C8
	asl $C5.b		; 06 C5
	eor $6087.w		; 4D 87 60
	txa		; 8A
	sbc ($E1.b,X)		; E1 E1
	ldy #$E1E0.w		; A0 E0 E1
	and ($CF.b,X)		; 21 CF
	ora $7E3F3F.l		; 0F 3F 3F 7E
	ror $7C7C.w,X		; 7E 7C 7C
	adc $007C.w,X		; 7D 7C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $7F.b		; 04 7F
	jsr $375E.w		; 20 5E 37
	bit $3C87.w,X		; 3C 87 3C
	phb		; 8B
	eor [$0C.b],Y		; 57 0C
	sty $8F33.w		; 8C 33 8F
	bvs 127.b		; 70 7F
	brk $20.b		; 00 20
	rts		; 60

	ora [$70.b]		; 07 70
	eor [$30.b]		; 47 30
	adc $18.b,S		; 63 18
	cpx #$D31C.w		; E0 1C D3
	php		; 08
	bmi   8.b		; 30 08
	brk $8F.b		; 00 8F
	sec		; 38
	brk $3C.b		; 00 3C
	clc		; 18
	bit $7C18.w		; 2C 18 7C
	clc		; 18
	cpy $F870.w		; CC 70 F8
	cpx #$80E0.w		; E0 E0 80
	bra   0.b		; 80 00
	brk $38.b		; 00 38
	clc		; 18
	bit $3C08.w,X		; 3C 08 3C
	clc		; 18
	jmp ($FC00.w,X)		; 7C 00 FC
	bra  -8.b		; 80 F8
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	and $050F30.l		; 2F 30 0F 05
	tda		; 7B
	sbc $6B1F.w		; ED 1F 6B
	ora [$08.b],Y		; 17 08
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	ora ($F5.b,X)		; 01 F5
	ora ($0D.b,X)		; 01 0D
	ora ($08.b,X)		; 01 08
	ora $08.b,S		; 03 08
	ora $00.b,S		; 03 00
	brk $18.b		; 00 18
	cpx $E8.b		; E4 E8
	trb $F4.b		; 14 F4
	asl A		; 0A
	dey		; 88
	ror $04.b,X		; 76 04
	dex		; CA
	brk $86.b		; 00 86
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	inx		; E8
	inx		; E8
	pea $C8F4.w		; F4 F4 C8
	iny		; C8
	sty $84.b		; 84 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$E000.w		; C0 00 E0
	cpy #$E0F0.w		; C0 F0 E0
	inx		; E8
	bvs  -8.b		; 70 F8
	bcs -68.b		; B0 BC
	cld		; D8
	ror A		; 6A
	jmp $000000.l		; 5C 00 00 00
	brk $80.b		; 00 80
	cpy #$00E0.w		; C0 E0 00
	bvs   0.b		; 70 00
	bcs   0.b		; B0 00
	cld		; D8
	brk $5C.b		; 00 5C
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	tsb $04.b		; 04 04
	php		; 08
	cop $09.b		; 02 09
	ora $12.b		; 05 12
	cop $15.b		; 02 15
	asl A		; 0A
	ora $00.b,X		; 15 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$06.b]		; 07 06
	asl $0D.b		; 06 0D
	ora $0A0A.w		; 0D 0A 0A
	asl A		; 0A
	asl A		; 0A
	tsb $1A.b		; 04 1A
	ora $1A.b		; 05 1A
	asl A		; 0A
	ora $02.b,X		; 15 02
	ora $0A04.w,X		; 1D 04 0A
	tsb $0A.b		; 04 0A
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $5B.b		; E4 5B
	and $DC.b,S		; 23 DC
	cmp [$38.b]		; C7 38
	eor ($4C.b,S),Y		; 53 4C
	and $1422.w		; 2D 22 14
	stp		; DB
	pha		; 48
	cpx $40.b		; E4 40
	stz $24.b,X		; 74 24
	cpx $2B.b		; E4 2B
	pld		; 2B
	cmp [$C7.b]		; C7 C7
	xce		; FB
	xce		; FB
	sbc $3CFD.w,X		; FD FD 3C
	bit $9898.w,X		; 3C 98 98
	tay		; A8
	plp		; 28
	dey		; 88
	bit $F0.b,X		; 34 F0
	php		; 08
	bne  40.b		; D0 28
	beq  24.b		; F0 18
	bcs  24.b		; B0 18
	asl $1FD0.w		; 0E D0 1F
	jsr ($E01F.w,X)		; FC 1F E0
	inx		; E8
	plp		; 28
	cpy #$C000.w		; C0 00 C0
	jsr $00C0.w		; 20 C0 00
	cpx #$A000.w		; E0 00 A0
	.db $82, $DC, $C1		; 82 DC C1
	jsr $FF21.w		; 20 21 FF
	phx		; DA
	sbc $19A619.l		; EF 19 A6 19
	jsr ($6200.w,X)		; FC 00 62
	stz $60FE.w		; 9C FE 60
	sed		; F8
	beq  24.b		; F0 18
	sbc $180318.l		; EF 18 03 18
	cop $58.b		; 02 58
	.db $42, $40		; 42 40
	rti		; 40

	stz $0000.w		; 9C 00 00
	rts		; 60

	rts		; 60

	sed		; F8
	brk $98.b		; 00 98
	and ($F9.b,X)		; 21 F9
	rtl		; 6B

	asl $016F.w		; 0E 6F 01
	sta $6F3F8E.l,X		; 9F 8E 3F 6F
	trb $6C.b		; 14 6C
	sty $EC.b,X		; 94 EC
	asl A		; 0A
	inc $46.b		; E6 46
	rti		; 40

	beq   0.b		; F0 00
	beq   1.b		; F0 01
	jmp ($C70E.w)		; 6C 0E C7
	pha		; 48
	cpy $4B.b		; C4 4B
	jmp ($0663.w)		; 6C 63 06
	ora ($1C.b,X)		; 01 1C
	tsb $07.b		; 04 07
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora $03.b,S		; 03 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	bcs  52.b		; B0 34
	cli		; 58
	phx		; DA
	cpx $EC76.w		; EC 76 EC
	sta $226756.l,X		; 9F 56 67 22
	and [$10.b],Y		; 37 10
	trb $B000.w		; 1C 00 B0
	brk $58.b		; 00 58
	bra -20.b		; 80 EC
	brk $EC.b		; 00 EC
	brk $56.b		; 00 56
	jsr $1822.w		; 20 22 18
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	ora $61E0.w,Y		; 19 E0 61
	bra -124.b		; 80 84
	ora $40.b,S		; 03 40
	rol $6080.w,X		; 3E 80 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7F7F3F.l,X		; 3F 3F 7F 7F
	inc $E0FE.w,X		; FE FE E0
	cpx #$8080.w		; E0 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $A9.b		; 46 A9
	bvc -81.b		; 50 AF
	ora $6D06F0.l		; 0F F0 06 6D
	ora [$30.b],Y		; 17 30
	phd		; 0B
	clc		; 18
	ora ($0E.b,S),Y		; 13 0E
	bit $761F.w,X		; 3C 1F 76
	ror $50.b,X		; 76 50
	bvc   0.b		; 50 00
	brk $3C.b		; 00 3C
	and $000C.w		; 2D 0C 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	trb $0F00.w		; 1C 00 0F
	asl $1F.b		; 06 1F
	asl $0CFE.w		; 0E FE 0C
	cpx $F878.w		; EC 78 F8
	bvs -16.b		; 70 F0
	rts		; 60

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	cop $0E.b		; 02 0E
	tsb $1F.b		; 04 1F
	php		; 08
	inc $FC60.w,X		; FE 60 FC
	rts		; 60

	sed		; F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	wai		; CB
	lda [$DF.b],Y		; B7 DF
	plp		; 28
	adc $1D08.w,X		; 7D 08 1D
	php		; 08
	ora [$0A.b],Y		; 17 0A
	ora $020702.l,X		; 1F 02 07 02
	ora [$00.b]		; 07 00
	lda ($0F.b),Y		; B1 0F
	plp		; 28
	brk $08.b		; 00 08
	cop $08.b		; 02 08
	cop $0A.b		; 02 0A
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	tya		; 98
	sec		; 38
	sty $00.b		; 84 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	cli		; 58
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $27.b		; 00 27
	ora $1D42.w,X		; 1D 42 1D
	lsr A		; 4A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	and $3D.b,X		; 35 3D
	and $003D.w		; 2D 3D 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  48.b		; 70 30
	cpy $0284.w		; CC 84 02
	sbc ($01.b)		; F2 01
	tsb $F9.b		; 04 F9
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jsr ($FEFC.w,X)		; FC FC FE
	inc $0606.w,X		; FE 06 06
	rti		; 40

	and ($E3.b,S),Y		; 33 E3
	stz $F28A.w		; 9C 8A F2
	sta ($71.b,X)		; 81 71
	sta $61.b,X		; 95 61
	ora ($E4.b)		; 12 E4
	eor $5422.w,Y		; 59 22 54
	pld		; 2B
	cmp ($C1.b,X)		; C1 C1
	sbc $E3.b,S		; E3 E3
	adc $9F5F8F.l		; 6F 8F 5F 9F
	cmp $1F1FDF.l,X		; DF DF 1F 1F
	cmp $D4DD.w,X		; DD DD D4
	pei ($89.b)		; D4 89
	asl $36.b		; 06 36
	and ($0A.b),Y		; 31 0A
	ora #$6590.w		; 09 90 65
	pla		; 68
	sbc ($14.b,S),Y		; F3 14
	txy		; 9B
	bit $7582.w		; 2C 82 75
	txa		; 8A
	sbc $FEFD.w,X		; FD FD FE
	inc $FEFE.w,X		; FE FE FE
	stz $0C9E.w,X		; 9E 9E 0C
	tsb $0464.w		; 0C 64 04
	bvs   0.b		; 70 00
	bmi   8.b		; 30 08
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cmp $3D.b,S		; C3 3D
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C0.b,X)		; 01 C0
	brk $00.b		; 00 00
	trb $1E00.w		; 1C 00 1E
	tsb $0C16.w		; 0C 16 0C
	asl $340C.w,X		; 1E 0C 34
	clc		; 18
	sed		; F8
	bmi  -8.b		; 30 F8
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	trb $1E0C.w		; 1C 0C 1E
	tsb $1E.b		; 04 1E
	tsb $1E.b		; 04 1E
	brk $3C.b		; 00 3C
	bpl 120.b		; 10 78
	rts		; 60

	sei		; 78
	brk $3C.b		; 00 3C
	tsb $0B.b		; 04 0B
	ora $04.b,S		; 03 04
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	cpy #$4020.w		; C0 20 40
	bcs  96.b		; B0 60
	bcc  32.b		; 90 20
	cld		; D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$60C0.w		; C0 C0 60
	rts		; 60

	rts		; 60

	rts		; 60

	bcs -80.b		; B0 B0
	bcc  96.b		; 90 60
	tsb $F8.b		; 04 F8
	rti		; 40

	and $400000.l,X		; 3F 00 00 40
	bra  31.b		; 80 1F
	cpx #$3F00.w		; E0 00 3F
	brk $00.b		; 00 00
	lda $0F0FBF.l,X		; BF BF 0F 0F
	cpx #$FFE0.w		; E0 E0 FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	and $000000.l,X		; 3F 00 00 00
	brk $14.b		; 00 14
	and ($0F.b),Y		; 31 0F
	ora $0C04.w,Y		; 19 04 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	asl $0600.w		; 0E 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$8060.w		; C0 60 80
	jsr $30E0.w		; 20 E0 30
	rti		; 40

	bpl -112.b		; 10 90
	tya		; 98
	jmp $DCBEE0.l		; 5C E0 BE DC
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	jsr $1C18.w		; 20 18 1C
	rol $EF5C.w,X		; 3E 5C EF
	asl $EEFF.w,X		; 1E FF EE
	sbc $F77FEE.l,X		; FF EE 7F F7
	sbc $3B7F7B.l,X		; FF 7B 7F 3B
	and $108C1D.l,X		; 3F 1D 8C 10
	asl $CE10.w		; 0E 10 CE
	cpx #$806E.w		; E0 6E 80
	adc [$80.b],Y		; 77 80
	tda		; 7B
	brk $3B.b		; 00 3B
	brk $1D.b		; 00 1D
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	ora [$1F.b]		; 07 1F
	ora $FC1CFF.l		; 0F FF 1C FC
	bvs -16.b		; 70 F0
	rts		; 60

	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora $001F07.l		; 0F 07 1F 00
	sbc $40FC60.l,X		; FF 60 FC 40
	beq   0.b		; F0 00
	cpx #$0000.w		; E0 00 00
	and [$D8.b]		; 27 D8
	cmp $6E9F2E.l,X		; DF 2E 9F 6E
	sbc $182F06.l,X		; FF 06 2F 18
	eor $287F27.l,X		; 5F 27 7F 28
	cmp $18C06A.l,X		; DF 6A C0 18
	jsr $660F.w		; 20 0F 66
	ora $001F02.l		; 0F 02 1F 00
	ora $280723.l,X		; 1F 23 07 28
	brk $6A.b		; 00 6A
	brk $D8.b		; 00 D8
	bmi 124.b		; 30 7C
	bra  -4.b		; 80 FC
	clv		; B8
	cpx $FC98.w		; EC 98 FC
	ldy #$0ACC.w		; A0 CC 0A
	cpx $A2.b		; E4 A2
	ldy $93.b,X		; B4 93
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	sec		; 38
	bra -104.b		; 80 98
	bra -96.b		; 80 A0
	bra   8.b		; 80 08
	bmi -96.b		; 30 A0
	clc		; 18
	sta ($4A.b)		; 92 4A
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
	wai		; CB
	jsl $792069.l		; 22 69 20 79
	ora ($0F.b,X)		; 01 0F
	bpl   3.b		; 10 03
	ora $010602.l		; 0F 02 06 01
	ora $00.b,S		; 03 00
	ora ($22.b,X)		; 01 22
	trb $20.b		; 14 20
	asl $01.b,X		; 16 01
	asl $00.b		; 06 00
	brk $04.b		; 00 04
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	asl $8390.w		; 0E 90 83
	plx		; FA
	ora ($8C.b,S),Y		; 13 8C
	adc ($27.b),Y		; 71 27
	and ($CA.b),Y		; 31 CA
	clc		; 18
	adc [$1C.b],Y		; 77 1C
	lda #$008C.w		; A9 8C 00
	cpy #$628E.w		; C0 8E 62
	tsb $5E00.w		; 0C 00 5E
	bvc -50.b		; 50 CE
	brk $E7.b		; 00 E7
	brk $E3.b		; 00 E3
	brk $73.b		; 00 73
	brk $09.b		; 00 09
	inc $22.b,X		; F6 22
	ora $2841.w,Y		; 19 41 28
	ora ($C7.b,X)		; 01 C7
	brk $81.b		; 00 81
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	sbc [$E1.b]		; E7 E1
	cmp [$C0.b]		; C7 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $4A.b,X		; B5 4A
	sbc ($82.b),Y		; F1 82
	sbc $6336.w		; ED 36 63
	and $F4FB05.l,X		; 3F 05 FB F4
	sta $FF.b,S		; 83 FF
	rts		; 60

	dec $3871.w		; CE 71 38
	pha		; 48
	ldy $D080.w,X		; BC 80 D0
	bpl -37.b		; 10 DB
	clc		; 18
	ora $00.b,S		; 03 00
	phb		; 8B
	php		; 08
	stz $04.b		; 64 04
	adc ($00.b),Y		; 71 00
	tda		; 7B
	sta ($C3.b,X)		; 81 C3
	sta ($C3.b,X)		; 81 C3
	bit $00C0.w,X		; 3C C0 00
	cpx #$5000.w		; E0 00 50
	ldy #$30C8.w		; A0 C8 30
	rol $3DC0.w,X		; 3E C0 3D
	cpy #$C0BD.w		; C0 BD C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ldy #$3000.w		; A0 00 30
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	rts		; 60

	cpx #$8000.w		; E0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bvs   0.b		; 70 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $62.b		; 00 62
	brk $92.b		; 00 92
	bmi -118.b		; 30 8A
	sec		; 38
	stx $4A.b,Y		; 96 4A
	ldy $4B.b,X		; B4 4B
	ldy $00.b,X		; B4 00
	adc $010101.l,X		; 7F 01 01 01
	ora ($61.b,X)		; 01 61
	adc ($51.b,X)		; 61 51
	adc ($4B.b),Y		; 71 4B
	tda		; 7B
	tda		; 7B
	phk		; 4B
	tda		; 7B
	phk		; 4B
	brk $00.b		; 00 00
	bcs  72.b		; B0 48
	bmi  72.b		; 30 48
	bmi  76.b		; 30 4C
	sec		; 38
	mvp $44,$38		; 44 38 44
	clv		; B8
	mvp $C4,$38		; 44 38 C4
	bvs -116.b		; 70 8C
	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	clv		; B8
	clv		; B8
	clv		; B8
	clv		; B8
	clv		; B8
	clv		; B8
	clv		; B8
	clv		; B8
	sei		; 78
	sei		; 78
	sei		; 78
	sei		; 78
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	bcs  64.b		; B0 40
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bvc  80.b		; 50 50
	plp		; 28
	dec $54.b,X		; D6 54
	lda #$542A.w		; A9 2A 54
	trb $4B.b		; 14 4B
	php		; 08
	and [$12.b]		; 27 12
	and ($08.b,X)		; 21 08
	bpl   2.b		; 10 02
	tsb $2828.w		; 0C 28 28
	lsr $56.b,X		; 56 56
	pld		; 2B
	pld		; 2B
	and $35.b,X		; 35 35
	clc		; 18
	clc		; 18
	ora $0F0F1F.l,X		; 1F 1F 0F 0F
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	cop $21.b		; 02 21
	ora $271C24.l		; 0F 24 1C 27
	tsb $0413.w		; 0C 13 04
	xce		; FB
	bpl  15.b		; 10 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $171E.w,X		; 1E 1E 17
	ora $0A1C13.l,X		; 1F 13 1C 0A
	tsb $0606.w		; 0C 06 06
	sed		; F8
	sed		; F8
	sed		; F8
	bvs  -4.b		; 70 FC
	clv		; B8
	jsr ($FED8.w,X)		; FC D8 FE
	jmp.w [$ECFE]		; DC FE EC
	sbc $367F76.l,X		; FF 76 7F 36
	and $00701B.l,X		; 3F 1B 70 00
	clv		; B8
	brk $D8.b		; 00 D8
	brk $DC.b		; 00 DC
	brk $EC.b		; 00 EC
	brk $76.b		; 00 76
	brk $36.b		; 00 36
	brk $1B.b		; 00 1B
	brk $F8.b		; 00 F8
	bcs  -4.b		; B0 FC
	cld		; D8
	inc $7E6C.w,X		; FE 6C 7E
	bit $367F.w		; 2C 7F 36
	and $081F1A.l,X		; 3F 1A 1F 08
	tsb $B000.w		; 0C 00 B0
	brk $D8.b		; 00 D8
	brk $6C.b		; 00 6C
	brk $2C.b		; 00 2C
	brk $36.b		; 00 36
	brk $1A.b		; 00 1A
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	ora $1B.b,X		; 15 1B
	ora $0A16.w		; 0D 16 0A
	trb $0700.w		; 1C 00 07
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($15.b,X)		; 01 15
	brk $0D.b		; 00 0D
	brk $0A.b		; 00 0A
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $FC.b		; 00 FC
	mvn $23,$B7		; 54 B7 23
	txy		; 9B
	php		; 08
	cmp $CE50.w,Y		; D9 50 CE
	mvp $00,$FC		; 44 FC 00
	beq  -8.b		; F0 F8
	ldy #$5488.w		; A0 88 54
	ora ($23.b,S),Y		; 13 23
	pha		; 48
	php		; 08
	stz $50.b		; 64 50
	rol $44.b		; 26 44
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $08.b		; 00 08
	bmi  33.b		; 30 21
	rti		; 40

	tsb $43.b		; 04 43
	bpl -114.b		; 10 8E
	rol A		; 2A
	sty $15.b,X		; 94 15
	tay		; A8
	eor ($A8.b),Y		; 51 A8
	plp		; 28
	cmp ($1F.b),Y		; D1 1F
	ora $3C3F3F.l,X		; 1F 3F 3F 3C
	bit $7171.w,X		; 3C 71 71
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	and $728A2F.l		; 2F 2F 8A 72
	ora ($E1.b),Y		; 11 E1
	rti		; 40

	plp		; 28
	sty $69.b		; 84 69
	sta ($6D.b)		; 92 6D
	brk $FF.b		; 00 FF
	ora $A8.b,S		; 03 A8
	ora #$AFA3.w		; 09 A3 AF
	lda $DF1F1F.l		; AF 1F 1F DF
	cmp $B6D7D7.l,X		; DF D7 D7 B6
	ldx $01.b,Y		; B6 01
	ora ($1C.b,X)		; 01 1C
	php		; 08
	ora $070803.l,X		; 1F 03 08 07
	cpy $C5.b		; C4 C5
	sta ($AA.b,S),Y		; 93 AA
	phd		; 0B
	ror $5C8B.w,X		; 7E 8B 5C
	and $CD.b,S		; 23 CD
	xba		; EB
	ora $AB.b,X		; 15 AB
	mvp $F8,$F8		; 44 F8 F8
	inc $D7FE.w,X		; FE FE D7
	cmp [$93.b],Y		; D7 93
	sta ($A0.b,S),Y		; 93 A0
	sta $39.b,S		; 83 39
	phd		; 0B
	and ($13.b),Y		; 31 13
	bmi  71.b		; 30 47
	rti		; 40

	bmi   0.b		; 30 00
	clc		; 18
	brk $8C.b		; 00 8C
	dey		; 88
	mvp $46,$80		; 44 80 46
	stz $82.b		; 64 82
	pei ($A2.b)		; D4 A2
	pea $C0C2.w		; F4 C2 C0
	cpy #$F0F0.w		; C0 F0 F0
	sei		; 78
	sei		; 78
	sed		; F8
	sed		; F8
	bit $3CBC.w,X		; 3C BC 3C
	jsr ($DC9C.w,X)		; FC 9C DC
	stz $00FC.w		; 9C FC 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	php		; 08
	cop $09.b		; 02 09
	ora $09.b,S		; 03 09
	ora [$09.b]		; 07 09
	asl $39.b		; 06 39
	inc A		; 1A
	sbc $00.b		; E5 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$04.b]		; 07 04
	ora [$05.b]		; 07 05
	ora [$04.b]		; 07 04
	ora [$07.b]		; 07 07
	asl $3B.b		; 06 3B
	dec A		; 3A
	sta $5EEF2E.l,X		; 9F 2E EF 5E
	and $5EDE.w,X		; 3D DE 5E
	ldy $3C5A.w,X		; BC 5A 3C
	stz $38.b,X		; 74 38
	stz $38.b,X		; 74 38
	tay		; A8
	bvs  70.b		; 70 46
	php		; 08
	asl $DE10.w		; 0E 10 DE
	cpy #$003C.w		; C0 3C 00
	bit $3800.w,X		; 3C 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $A8.b		; 00 A8
	bvs -80.b		; 70 B0
	rts		; 60

	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$2140.w		; C0 40 21
	brk $A1.b		; 00 A1
	jsr $4091.w		; 20 91 40
	lda $00E011.l,X		; BF 11 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C040.w		; C0 40 C0
	rts		; 60

	cpx #$40C0.w		; E0 C0 40
	sta $00001F.l,X		; 9F 1F 00 00
	brk $70.b		; 00 70
	bpl -120.b		; 10 88
	ldy #$E008.w		; A0 08 E0
	plp		; 28
	bne  40.b		; D0 28
	bpl -24.b		; 10 E8
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bne -16.b		; D0 F0
	bcs -16.b		; B0 F0
	bcc -16.b		; 90 F0
	bvs  16.b		; 70 10
	bmi  16.b		; 30 10
	ora $002E04.l,X		; 1F 04 2E 00
	and $0F3E16.l,X		; 3F 16 3E 0F
	asl $0607.w,X		; 1E 07 06
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	asl $14.b,X		; 16 14
	ora [$06.b]		; 07 06
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora ($01.b,X)		; 01 01
	brk $2D.b		; 00 2D
	lsr $59.b,X		; 56 59
	ldx $FE.b,Y		; B6 FE
	ora ($E9.b,X)		; 01 E9
	dec $FF.b,X		; D6 FF
	cmp ($FF.b,X)		; C1 FF
	cmp ($FF.b,S),Y		; D3 FF
	ora $42FF.w		; 0D FF 42
	stx $30.b		; 86 30
	asl $70.b		; 06 70
	ora ($F0.b,X)		; 01 F0
	dec $F0.b		; C6 F0
	cpy #$41F1.w		; C0 F1 41
	sbc $42EF00.l,X		; FF 00 EF 42
	ora $58.b,S		; 03 58
	and ($C8.b),Y		; 31 C8
	bmi -80.b		; 30 B0
	rti		; 40

	iny		; C8
	bmi 124.b		; 30 7C
	sta ($FC.b,X)		; 81 FC
	txy		; 9B
	inx		; E8
	bmi  -8.b		; 30 F8
	.db $82, $B0, $80		; 82 B0 80
	bcs -128.b		; B0 80
	rti		; 40

	brk $30.b		; 00 30
	brk $00.b		; 00 00
	bra  25.b		; 80 19
	cmp ($37.b,X)		; C1 37
	bra   7.b		; 80 07
	.db $82, $38, $C0		; 82 38 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -96.b		; 80 A0
	bvs   0.b		; 70 00
	beq  96.b		; F0 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $60.b		; 00 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ror $CF01.w,X		; 7E 01 CF
	ror $66E7.w,X		; 7E E7 66
	plb		; AB
	tas		; 1B
	txy		; 9B
	and [$AE.b]		; 27 AE
	and ($79.b),Y		; 31 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	cop $66.b		; 02 66
	inc A		; 1A
	tas		; 1B
	eor $26.b		; 45 26
	eor ($31.b,X)		; 41 31
	rti		; 40

	brk $00.b		; 00 00
	bmi -116.b		; 30 8C
	sec		; 38
	sty $C470.w		; 8C 70 C4
	bpl -60.b		; 10 C4
	tya		; 98
	mvp $64,$D8		; 44 D8 64
	sei		; 78
	ldy $38C0.w,X		; BC C0 38
	sed		; F8
	dey		; 88
	bvs   0.b		; 70 00
	sec		; 38
	brk $B8.b		; 00 B8
	bra  56.b		; 80 38
	brk $38.b		; 00 38
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	jsl $5122D1.l		; 22 D1 22 51
	asl A		; 0A
	adc ($04.b),Y		; 71 04
	and $1C03.w,Y		; 39 03 1C
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	rol $2E2E.w		; 2E 2E 2E
	rol $2E2E.w		; 2E 2E 2E
	asl $070E.w		; 0E 0E 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	sec		; 38
	ora $18.b,S		; 03 18
	ora ($04.b,X)		; 01 04
	ora $2703.w,X		; 1D 03 27
	sta $79.b		; 85 79
	dey		; 88
	inc $5F70.w		; EE 70 5F
	rol $07.b		; 26 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	clc		; 18
	php		; 08
	ror $20.b		; 66 20
	sbc ($86.b),Y		; F1 86
	bvs  -5.b		; 70 FB
	ora $F1.b		; 05 F1
	tsb $88.b		; 04 88
	and $0970.w		; 2D 70 09
	tya		; 98
	sbc [$7A.b],Y		; F7 7A
	and ($B8.b,S),Y		; 33 B8
	brk $F9.b		; 00 F9
	and [$31.b],Y		; 37 31
	ora $F8.b,S		; 03 F8
	ora ($D0.b,X)		; 01 D0
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	brk $B4.b		; 00 B4
	brk $07.b		; 00 07
	rti		; 40

	bmi   0.b		; 30 00
	jsr ($B8C2.w,X)		; FC C2 B8
	ror $F8.b		; 66 F8
	stz $B8.b		; 64 B8
	stz $F8.b,X		; 74 F8
	bmi 120.b		; 30 78
	bcc 120.b		; 90 78
	jsr $3058.w		; 20 58 30
	jmp.w [$0CFC]		; DC FC 0C
	jsr ($F828.w,X)		; FC 28 F8
	jsr $B0F8.w		; 20 F8 B0
	sed		; F8
	bpl  24.b		; 10 18
	ldy #$B008.w		; A0 08 B0
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $18.b		; 05 18
	bpl  32.b		; 10 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $E0001F.l,X		; 1F 1F 00 E0
	brk $18.b		; 00 18
	pha		; 48
	bit $60.b		; 24 60
	bit $E4.b,X		; 34 E4
	and ($C8.b)		; 32 C8
	and [$42.b],Y		; 37 42
	ldy $728A.w,X		; BC 8A 72
	brk $00.b		; 00 00
	cpx #$98E0.w		; E0 E0 98
	sed		; F8
	tay		; A8
	sed		; F8
	sty $F8FC.w		; 8C FC F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	lda $3FFBAF.l		; AF AF FB 3F
	tda		; 7B
	ora $27073B.l,X		; 1F 3B 07 27
	clc		; 18
	and $1B.b		; 25 1B
	and $142F00.l,X		; 3F 00 2F 14
	and $3F1B15.l		; 2F 15 1B 3F
	ora $3F.b,S		; 03 3F
	ora ($1F.b,X)		; 01 1F
	clc		; 18
	ora [$18.b]		; 07 18
	ora [$00.b]		; 07 00
	brk $14.b		; 00 14
	brk $15.b		; 00 15
	brk $CE.b		; 00 CE
	and ($B5.b),Y		; 31 B5
	lsr A		; 4A
	dec $7331.w		; CE 31 73
	sty $39FF.w		; 8C FF 39
	inc $FFD3.w,X		; FE D3 FF
	plp		; 28
	jsr ($3554.w,X)		; FC 54 35
	sty $0A.b		; 84 0A
	cpy #$8031.w		; C0 31 80
	brk $8C.b		; 00 8C
	ora ($FC.b),Y		; 11 FC
	ora $F8.b,S		; 03 F8
	jsr $5438.w		; 20 38 54
	ora ($00.b,S),Y		; 13 00
	asl $1102.w		; 0E 02 11
	trb $21.b		; 14 21
	trb $1A25.w		; 1C 25 1A
	and $02.b		; 25 02
	sbc $1F20.w,X		; FD 20 1F
	php		; 08
	ora [$00.b]		; 07 00
	brk $0E.b		; 00 0E
	asl $1E1A.w		; 0E 1A 1E
	asl $1E.b,X		; 16 1E
	ora ($1E.b)		; 12 1E
	asl $E602.w		; 0E 02 E6
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sed		; F8
	cpy $C5.b		; C4 C5
	sta ($AA.b,S),Y		; 93 AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	jsl $17E8CD.l		; 22 CD E8 17
	tay		; A8
	lsr $F8.b		; 46 F8
	tsb $FE.b		; 04 FE
	inc $D7D7.w,X		; FE D7 D7
	sta ($93.b,S),Y		; 93 93
	lda $83.b,S		; A3 83
	dec A		; 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	bmi   0.b		; 30 00
	bvc -94.b		; 50 A2
	clc		; 18
	sep #$08		; E2 08
	adc ($06.b)		; 72 06
	and $0F00.w,Y		; 39 00 0F
	clc		; 18
	ora [$2E.b]		; 07 2E
	brk $3F.b		; 00 3F
	asl $5C.b,X		; 16 5C
	jmp $1C5C5C.l		; 5C 5C 5C 1C
	trb $0E0E.w		; 1C 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($16.b,X)		; 01 16
	trb $07.b		; 14 07
	ora $18.b,S		; 03 18
	ora ($04.b,X)		; 01 04
	ora $2703.w,X		; 1D 03 27
	ora $79.b		; 05 79
	dey		; 88
	inc $DF70.w		; EE 70 DF
	ldy $0CFA.w		; AC FA 0C
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	php		; 08
	ror $20.b		; 66 20
	sbc ($0C.b),Y		; F1 0C
	rts		; 60

	ora $B0E1.w		; 0D E1 B0
	tsb $C8.b		; 04 C8
	bit $1870.w		; 2C 70 18
	bra -16.b		; 80 F0
	sei		; 78
	and ($F8.b),Y		; 31 F8
	ora [$F8.b]		; 07 F8
	pla		; 68
	lda $00F86F.l,X		; BF 6F F8 00
	bne   0.b		; D0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	adc [$00.b]		; 67 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$40.b		; E0 40
	sec		; 38
	bpl  12.b		; 10 0C
	php		; 08
	stx $84.b		; 86 84
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	jmp ($FC7C.w,X)		; 7C 7C FC
	jsr ($42A5.w,X)		; FC A5 42
	sta ($60.b,S),Y		; 93 60
	phd		; 0B
	beq  75.b		; F0 4B
	bcs 111.b		; B0 6F
	bcc 109.b		; 90 6D
	sta ($6C.b)		; 92 6C
	sta ($68.b)		; 92 68
	stx $BE.b,Y		; 96 BE
	ldx $9E9E.w,Y		; BE 9E 9E
	lsr $6E5E.w,X		; 5E 5E 6E
	ror $6E6E.w		; 6E 6E 6E
	ror $6C6E.w		; 6E 6E 6C
	jmp ($6C6C.w)		; 6C 6C 6C
	rti		; 40

	ldy $48B0.w,X		; BC B0 48
	adc $173FB0.l,X		; 7F B0 3F 17
	and $C03F17.l		; 2F 17 3F C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cli		; 58
	cli		; 58
	bra -128.b		; 80 80
	bmi   7.b		; 30 07
	cmp [$07.b],Y		; D7 07
	cmp ($07.b,S),Y		; D3 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $F7.b		; 00 F7
	clc		; 18
	sbc $FEDDFE.l,X		; FF FE DD FE
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	bpl  -1.b		; 10 FF
	dec $88FF.w,X		; DE FF 88
	sbc $00FE00.l,X		; FF 00 FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	lda $400080.l,X		; BF 80 00 40
	bra -64.b		; 80 C0
	trb $BAC8.w		; 1C C8 BA
	sta [$00.b]		; 87 00
	sta $2E9F26.l		; 8F 26 9F 2E
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sty $10.b,X		; 94 10
	sei		; 78
	brk $76.b		; 00 76
	rol $46.b		; 26 46
	php		; 08
	sbc $DE3D5E.l		; EF 5E 3D DE
	lsr $5ABC.w,X		; 5E BC 5A
	bit $3874.w,X		; 3C 74 38
	stz $38.b,X		; 74 38
	tay		; A8
	bvs -88.b		; 70 A8
	bvs  14.b		; 70 0E
	bpl -34.b		; 10 DE
	cpy #$3C.b		; C0 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $04.b		; 00 04
	eor $10.b,S		; 43 10
	sta $54942A.l		; 8F 2A 94 54
	plp		; 28
	and ($58.b,X)		; 21 58
	tay		; A8
	eor ($42.b),Y		; 51 42
	lda ($50.b),Y		; B1 50
	lda $3E.b,S		; A3 3E
	rol $7171.w,X		; 3E 71 71
	rtl		; 6B

	rtl		; 6B

	cmp [$D7.b],Y		; D7 D7
	lda $AEAEAF.l		; AF AF AE AE
	lsr $5E5E.w,X		; 5E 5E 5E
	lsr $E111.w,X		; 5E 11 E1
	rti		; 40

	plp		; 28
	sty $69.b		; 84 69
	ora ($ED.b)		; 12 ED
	brk $FF.b		; 00 FF
	ora $28.b,S		; 03 28
	ora #$23.b		; 09 23
	ora $1F1F38.l,X		; 1F 38 1F 1F
	cmp $D7D7DF.l,X		; DF DF D7 D7
	rol $36.b,X		; 36 36
	ora ($01.b,X)		; 01 01
	trb $1F08.w		; 1C 08 1F
	ora $07.b,S		; 03 07
	brk $1B.b		; 00 1B
	ora $0A16.w		; 0D 16 0A
	trb $0700.w		; 1C 00 07
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($0D.b,X)		; 01 0D
	brk $0A.b		; 00 0A
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	and $9B.b,S		; 23 9B
	php		; 08
	cmp $CE50.w,Y		; D9 50 CE
	mvp $00,$FC		; 44 FC 00
	beq  -8.b		; F0 F8
	ldy #$88.b		; A0 88
	bmi -116.b		; 30 8C
	and $48.b,S		; 23 48
	php		; 08
	stz $50.b		; 64 50
	rol $44.b		; 26 44
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	dey		; 88
	ror $CF01.w,X		; 7E 01 CF
	ror $66E7.w,X		; 7E E7 66
	plb		; AB
	tas		; 1B
	txy		; 9B
	and [$AE.b]		; 27 AE
	and ($79.b),Y		; 31 79
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	cop $66.b		; 02 66
	inc A		; 1A
	tas		; 1B
	eor $26.b		; 45 26
	eor ($31.b,X)		; 41 31
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sty $C470.w		; 8C 70 C4
	bpl -60.b		; 10 C4
	tya		; 98
	mvp $64,$D8		; 44 D8 64
	sei		; 78
	ldy $38C0.w,X		; BC C0 38
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $B8.b		; 00 B8
	bra  56.b		; 80 38
	brk $38.b		; 00 38
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcs  96.b		; B0 60
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $070900.l		; 0F 00 09 07
	bpl   7.b		; 10 07
	ora ($0F.b)		; 12 0F
	sta ($01.b)		; 92 01
	stz $0000.w,X		; 9E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	ora $0B0F.w		; 0D 0F 0B
	ora $010F09.l		; 0F 09 0F 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	beq  96.b		; F0 60
	stz $C628.w		; 9C 28 C6
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	jmp ($007C.w,X)		; 7C 7C 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $1804.w		; 0E 04 18
	ora ($20.b),Y		; 11 20
	bit $43.b		; 24 43
	bpl  79.b		; 10 4F
	pld		; 2B
	sty $00.b,X		; 94 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $3C1F1F.l		; 0F 1F 1F 3C
	bit $3131.w,X		; 3C 31 31
	rtl		; 6B

	rtl		; 6B

	ora $0826.w,Y		; 19 26 08
	sbc [$F1.b],Y		; F7 F1
	asl $0608.w		; 0E 08 06
	cop $FC.b		; 02 FC
	and ($CC.b,S),Y		; 33 CC
	dex		; CA
	ora $0A.b		; 05 0A
	ora $1F.b		; 05 1F
	ora $080E.w,Y		; 19 0E 08
	sbc ($F1.b),Y		; F1 F1
	xce		; FB
	xce		; FB
	sta $83.b,S		; 83 83
	tda		; 7B
	tda		; 7B
	xce		; FB
	xce		; FB
	plx		; FA
	plx		; FA
	bra  96.b		; 80 60
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	cpx #$10.b		; E0 10
	sbc ($9E.b),Y		; F1 9E
	lda ($40.b,X)		; A1 40
	adc $0000DE.l,X		; 7F DE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra  32.b		; 80 20
	lsr $C000.w,X		; 5E 00 C0
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	asl $1B.b		; 06 1B
	asl $FA.b		; 06 FA
	trb $B8FC.w		; 1C FC B8
	sed		; F8
	bcs   0.b		; B0 00
	asl $06.b		; 06 06
	ora $020F06.l		; 0F 06 0F 02
	ora $081F00.l		; 0F 00 1F 08
	rol $3CB0.w,X		; 3E B0 3C
	bra  56.b		; 80 38
	sbc $50FA55.l,X		; FF 55 FA 50
	xba		; EB
	ldx #$C9.b		; A2 C9
	bra -55.b		; 80 C9
	brk $39.b		; 00 39
	brk $0F.b		; 00 0F
	ora ($02.b,X)		; 01 02
	asl $55.b		; 06 55
	brk $50.b		; 00 50
	ora $A2.b		; 05 A2
	trb $80.b		; 14 80
	rol $00.b,X		; 36 00
	rol $00.b,X		; 36 00
	asl $00.b		; 06 00
	brk $01.b		; 00 01
	brk $D5.b		; 00 D5
	phk		; 4B
	sbc ($AD.b)		; F2 AD
	adc ($4C.b),Y		; 71 4C
	bpl   8.b		; 10 08
	ldy #$90.b		; A0 90
	cpy #$20.b		; C0 20
	cpy #$F0.b		; C0 F0
	jsr $4930.w		; 20 30 49
	rol A		; 2A
	lda $480C.w		; AD 0C 48
	dey		; 88
	brk $E0.b		; 00 E0
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	jsr $C020.w		; 20 20 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$50.b		; C0 50
	cpx #$A8.b		; E0 A8
	bvs 124.b		; 70 7C
	sec		; 38
	ror $373C.w,X		; 7E 3C 37
	asl $000F.w		; 0E 0F 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	sec		; 38
	brk $3C.b		; 00 3C
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  38.b		; 10 26
	asl $0F21.w		; 0E 21 0F
	bit $0F.b		; 24 0F
	rol $00.b		; 26 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	asl $1E.b,X		; 16 1E
	ora [$1F.b],Y		; 17 1F
	ora $1F.b,X		; 15 1F
	ror $3781.w,X		; 7E 81 37
	pla		; 68
	lda $5880.w,X		; BD 80 58
	dec $18.b		; C6 18
	adc [$E1.b],Y		; 77 E1
	asl $48CC.w,X		; 1E CC 48
	adc $010680.l,X		; 7F 80 06 01
	inc $68.b		; E6 68
	adc [$00.b]		; 67 00
	and $0E04.w,X		; 3D 04 0E
	asl $00.b		; 06 00
	brk $4B.b		; 00 4B
	bmi   0.b		; 30 00
	bra   0.b		; 80 00
	bmi   0.b		; 30 00
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
	ora ($0C.b,X)		; 01 0C
	asl $10.b		; 06 10
	jmp ($9101.w)		; 6C 01 91
	asl $E9.b		; 06 E9
	rts		; 60

	sbc $F100.w,Y		; F9 00 F1
	rts		; 60

	plx		; FA
	adc ($02.b),Y		; 71 02
	ora ($0F.b,X)		; 01 0F
	brk $1E.b		; 00 1E
	brk $08.b		; 00 08
	rts		; 60

	rts		; 60

	bpl   0.b		; 10 00
	brk $60.b		; 00 60
	beq  33.b		; F0 21
	sed		; F8
	plx		; FA
	stz $1CF3.w		; 9C F3 1C
	lda $5A.b		; A5 5A
	plx		; FA
	ora $53.b		; 05 53
	lda $807F.w		; AD 7F 80
	lda $807F5F.l		; AF 5F 7F 80
	ora $1DC1.w,X		; 1D C1 1D
	cmp ($1A.b,X)		; C1 1A
	cpy #$04.b		; C0 04
	cmp ($8D.b,X)		; C1 8D
	adc ($80.b,X)		; 61 80
	adc $46.b,S		; 63 46
	and $7A0080.l,X		; 3F 80 00 7A
	and ($6D.b),Y		; 31 6D
	bmi  63.b		; 30 3F
	trb $182F.w		; 1C 2F 18
	trb $1C08.w		; 1C 08 1C
	php		; 08
	tsb $0000.w		; 0C 00 00
	brk $21.b		; 00 21
	sei		; 78
	brk $7C.b		; 00 7C
	tsb $083E.w		; 0C 3E 08
	rol $1C08.w,X		; 3E 08 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	bcs -96.b		; B0 A0
	tay		; A8
	bcs  88.b		; B0 58
	bne -68.b		; D0 BC
	sei		; 78
	phy		; 5A
	bit $1C2E.w,X		; 3C 2E 1C
	ora [$0E.b],Y		; 17 0E
	asl A		; 0A
	ora [$A0.b]		; 07 A0
	rti		; 40

	bcs  64.b		; B0 40
	bne  32.b		; D0 20
	sei		; 78
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	sbc $C232.w,Y		; F9 32 C2
	eor ($41.b,X)		; 41 41
	bmi  46.b		; 30 2E
	ror A		; 6A
	and $345302.l,X		; 3F 02 53 34
	eor #$87.b		; 49 87
	sei		; 78
	asl $7F0E.w		; 0E 0E 7F
	adc $F1FFFF.l,X		; 7F FF FF F1
	sbc ($E4.b),Y		; F1 E4
	cpx $ED.b		; E4 ED
	sbc ($B7.b,X)		; E1 B7
	lda ($86.b),Y		; B1 86
	bra  20.b		; 80 14
	sep #$80		; E2 80
	adc ($6A.b,S),Y		; 73 6A
	ora ($A8.b),Y		; 11 A8
	cmp ($4C.b,S),Y		; D3 4C
	and ($18.b)		; 32 18
	ldx $50.b		; A6 50
	ldy $7880.w		; AC 80 78
	bit $DE3C.w,X		; 3C 3C DE
	dec $EEEE.w,X		; DE EE EE
	inc $DCEE.w		; EE EE DC
	jmp.w [$5C5C]		; DC 5C 5C
	cli		; 58
	cli		; 58
	jsr $1420.w		; 20 20 14
	tay		; A8
	eor ($A9.b)		; 52 A9
	bit $D3.b		; 24 D3
	plp		; 28
	pei ($50.b)		; D4 50
	tay		; A8
	bpl -24.b		; 10 E8
	jsr $2050.w		; 20 50 20
	bvc  87.b		; 50 57
	eor [$57.b],Y		; 57 57
	eor [$2C.b],Y		; 57 2C
	bit $2828.w		; 2C 28 28
	bvc  80.b		; 50 50
	bvc  80.b		; 50 50
	jsr $2020.w		; 20 20 20
	jsr $1F20.w		; 20 20 1F
	brk $F3.b		; 00 F3
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	beq -16.b		; F0 F0
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	lda ($5E.b,X)		; A1 5E
	ldy #$5C.b		; A0 5C
	cpy #$22.b		; C0 22
	sta $40.b,S		; 83 40
	eor [$83.b]		; 47 83
	sbc [$93.b],Y		; F7 93
	sbc $1BF75B.l		; EF 5B F7 1B
	rti		; 40

	brk $40.b		; 00 40
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	brk $3A.b		; 00 3A
	sta $0B.b,S		; 83 0B
	.db $82, $51, $12		; 82 51 12
	ora ($02.b,X)		; 01 02
	bvs -128.b		; 70 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	ldy #$C0.b		; A0 C0
	rts		; 60

	rti		; 40

	bra  48.b		; 80 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra 124.b		; 80 7C
	cop $CD.b		; 02 CD
	adc $AF61E2.l,X		; 7F E2 61 AF
	asl $269F.w,X		; 1E 9F 26
	ldy $7B33.w		; AC 33 7B
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $7C.b		; 00 7C
	brk $60.b		; 00 60
	trb JOY4L.w		; 1C 1E 42
	bit $42.b		; 24 42
	and ($41.b)		; 32 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$18.b		; C0 18
	beq  24.b		; F0 18
	rts		; 60

	php		; 08
	bcs -116.b		; B0 8C
	sec		; 38
	sty $4CF8.w		; 8C F8 4C
	clv		; B8
	jmp ($7800.w,X)		; 7C 00 78
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	bmi   0.b		; 30 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	tsb $18.b		; 04 18
	ora #$30.b		; 09 30
	bpl  39.b		; 10 27
	and [$58.b]		; 27 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	clc		; 18
	clc		; 18
	and [$27.b]		; 27 27
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $FA.b		; 00 FA
	bpl  14.b		; 10 0E
	tsb $02.b		; 04 02
	sbc ($02.b,X)		; E1 02
	asl $01E1.w,X		; 1E E1 01
	inc $0000.w,X		; FE 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $FDF9.w,Y		; F9 F9 FD
	sbc $FDFD.w,X		; FD FD FD
	asl $031E.w,X		; 1E 1E 03
	ora $04.b,S		; 03 04
	phb		; 8B
	tsb $6B.b		; 04 6B
.INDEX 8
	sep #$15		; E2 15
	sbc ($4D.b)		; F2 4D
	sbc ($6D.b)		; F2 6D
	bcc 111.b		; 90 6F
	sta $7C.b,S		; 83 7C
	trb $E4.b		; 14 E4
	ora $05.b		; 05 05
	sty $84.b		; 84 84
	.db $62, $E2, $72		; 62 E2 72
	sbc ($52.b)		; F2 52
	sbc ($F0.b)		; F2 F0
	bcc -25.b		; 90 E7
	sta [$1F.b]		; 87 1F
	ora $709800.l,X		; 1F 00 98 70
	php		; 08
	bvs  40.b		; 70 28
	beq  40.b		; F0 28
	bpl -24.b		; 10 E8
	rts		; 60

	stz $2628.w		; 9C 28 26
	asl $11.b,X		; 16 11
	rts		; 60

	rts		; 60

	bne -16.b		; D0 F0
	bcs -16.b		; B0 F0
	bcc -16.b		; 90 F0
	bpl  16.b		; 10 10
	cpx #$E0.b		; E0 E0
	jsr ($FEFC.w,X)		; FC FC FE
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	bit $CC63.w		; 2C 63 CC
	tda		; 7B
	bra -113.b		; 80 8F
	sbc $8CFA2C.l,X		; FF 2C FA 8C
	sbc ($4C.b,S),Y		; F3 4C
	adc $9202.w,X		; 7D 02 92
	adc $021E.w		; 6D 1E 02
	eor [$03.b]		; 47 03
	bra 112.b		; 80 70
	bit $8D00.w		; 2C 00 8D
	cmp ($0D.b,X)		; C1 0D
	sbc ($82.b,X)		; E1 82
	bvs -116.b		; 70 8C
	and ($00.b,X)		; 21 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $DC.b		; 00 DC
	cpx #$1B.b		; E0 1B
	trb $FF3F.w		; 1C 3F FF
	sbc $0303.w,X		; FD 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $1C.b		; 00 1C
	cpx #$FF.b		; E0 FF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	brk $D0.b		; 00 D0
	cpy #$B8.b		; C0 B8
	bvs 120.b		; 70 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	jsr $0070.w		; 20 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	sbc [$80.b]		; E7 80
	sbc $46BF46.l		; EF 46 BF 46
	tyx		; BB
	lsr $987E.w,X		; 5E 7E 98
	clv		; B8
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   7.b		; 80 07
	lsr $0F.b		; 46 0F
	.db $42, $1F		; 42 1F
	bvc  31.b		; 50 1F
	bra  30.b		; 80 1E
	rti		; 40

	clc		; 18
	cpx #$80.b		; E0 80
	jsr ($E440.w,X)		; FC 40 E4
	ldx #$F6.b		; A2 F6
	ora ($BC.b,S),Y		; 13 BC
	ldy $9C.b		; A4 9C
	trb $CA.b		; 14 CA
	lsr $D1.b		; 46 D1
	sta $00E000.l		; 8F 00 E0 00
	cpy #$A0.b		; C0 A0
	tya		; 98
	bpl   8.b		; 10 08
	lda $40.b,S		; A3 40
	ora ($60.b,S),Y		; 13 60
	eor $34.b		; 45 34
	.db $82, $22, $07		; 82 22 07
	cop $0B.b		; 02 0B
	asl $09.b		; 06 09
	asl $3E.b		; 06 3E
	tsb $3C7F.w		; 0C 7F 3C
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	cop $07.b		; 02 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	tsb $3E.b		; 04 3E
	trb $007E.w		; 1C 7E 00
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	stz $20.b		; 64 20
	and $1F6300.l,X		; 3F 00 63 1F
	ldy $67.b		; A4 67
	sbc ($F3.b,S),Y		; F3 F3
	inc $0F.b,X		; F6 0F
	ora $000000.l		; 0F 00 00 00
	jsr $001B.w		; 20 1B 00
	brk $18.b		; 00 18
	brk $64.b		; 00 64
	clc		; 18
	sbc ($0D.b)		; F2 0D
	asl $0001.w		; 0E 01 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora ($90.b,S),Y		; 13 90
	tya		; 98
	pla		; 68
	tsb $84B0.w		; 0C B0 84
	jmp $669CC6.l		; 5C C6 9C 66
	clv		; B8
	ror $FC00.w,X		; 7E 00 FC
	brk $00.b		; 00 00
	rts		; 60

	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	jsr $4444.w		; 20 44 44
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $1138.w		; 20 38 11
	asl $8587.w,X		; 1E 87 85
	and [$E3.b]		; 27 E3
	ora [$3D.b]		; 07 3D
	ora ($06.b,X)		; 01 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	inx		; E8
	php		; 08
	adc $1B01.w,Y		; 79 01 1B
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $DC.b		; 00 DC
	cpx #$9B.b		; E0 9B
	stz $C3C3.w		; 9C C3 C3
	sei		; 78
	sed		; F8
	jsr ($0303.w,X)		; FC 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra -100.b		; 80 9C
	rts		; 60

	cmp $3C.b,S		; C3 3C
	sei		; 78
	sta [$03.b]		; 87 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $013F00.l		; 0F 00 3F 01
	ror $0300.w,X		; 7E 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $030C.w		; 0C 0C 03
	ora $00.b,S		; 03 00
	brk $18.b		; 00 18
	adc [$24.b]		; 67 24
	cli		; 58
	clc		; 18
	sbc [$20.b]		; E7 20
	cld		; D8
	rti		; 40

	ldy #$00.b		; A0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $18.b		; 00 18
	clc		; 18
	and [$27.b]		; 27 27
	cli		; 58
	cli		; 58
	jsr $4020.w		; 20 20 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	sta [$01.b]		; 87 01
	brk $1C.b		; 00 1C
	sbc $00.b,S		; E3 00
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($FFFC.w,X)		; FC FC FF
	sbc $007E7E.l,X		; FF 7E 7E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
.ACCU 8
	sep #$26		; E2 26
	cmp $30.b,S		; C3 30
	cmp $23.b		; C5 23
	mvn $57,$28		; 54 28 57
	ora [$78.b]		; 07 78
	ora $36.b,S		; 03 36
	phd		; 0B
	clc		; 18
	and $BEBE3F.l,X		; 3F 3F BE BE
	rol $3B3E.w,X		; 3E 3E 3B
	tsa		; 3B
	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	asl $0616.w,X		; 1E 16 06
	brk $0A.b		; 00 0A
	sbc $F3A4.w		; ED A4 F3
	jsr $443A.w		; 20 3A 44
	txs		; 9A
	sei		; 78
	sty $E8.b		; 84 E8
	trb $78.b		; 14 78
	sty $0CD8.w		; 8C D8 0C
	asl $4C1E.w,X		; 1E 1E 4C
	jmp $14D4.w		; 4C D4 14
	stz $14.b,X		; 74 14
	rts		; 60

	brk $60.b		; 00 60
	bpl  96.b		; 10 60
	bra 112.b		; 80 70
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	cop $03.b		; 02 03
	brk $06.b		; 00 06
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	ora $07.b,S		; 03 07
	ora $07.b,S		; 03 07
	ora $01.b,S		; 03 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora [$03.b]		; 07 03
	ora [$02.b]		; 07 02
	ora [$BF.b]		; 07 BF
	eor $2F.b,S		; 43 2F
	eor $06FF.w,Y		; 59 FF 06
	adc $6ABF29.l,X		; 7F 29 BF 6A
	sbc $51.b,X		; F5 51
	pea $E450.w		; F4 50 E4
	jsr $2381.w		; 20 81 23
	bra  63.b		; 80 3F
	asl $07.b		; 06 07
	and #$81.b		; 29 81
	ror A		; 6A
	brk $51.b		; 00 51
	txa		; 8A
	bvc -117.b		; 50 8B
	jsr $009B.w		; 20 9B 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	bvs  80.b		; 70 50
	dey		; 88
	tay		; A8
	eor [$00.b]		; 47 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$70.b		; C0 70
	bvs -72.b		; 70 B8
	clv		; B8
	ora $00.b,S		; 03 00
	rol $7B01.w,X		; 3E 01 7B
	bit $B9.b,X		; 34 B9
	ror $FE.b,X		; 76 FE
	adc ($FB.b),Y		; 71 FB
	tsb $13.b		; 04 13
	tsb $0A17.w		; 0C 17 0A
	brk $03.b		; 00 03
	brk $33.b		; 00 33
	bit $79.b,X		; 34 79
	rol $F9.b,X		; 36 F9
	jsr $04FB.w		; 20 FB 04
	beq  12.b		; F0 0C
	brk $0A.b		; 00 0A
	brk $FD.b		; 00 FD
	cop $79.b		; 02 79
	inc $7E.b,X		; F6 7E
	beq  -4.b		; F0 FC
	php		; 08
	sed		; F8
	cpx #$FF.b		; E0 FF
	brk $FB.b		; 00 FB
	ldy $8EDF.w		; AC DF 8E
	cop $F8.b		; 02 F8
	asl $F0.b		; 06 F0
	bmi -16.b		; 30 F0
	brk $FC.b		; 00 FC
	rts		; 60

	sed		; F8
	brk $1C.b		; 00 1C
	ldy #$1E.b		; A0 1E
	sty $3F.b		; 84 3F
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	cop $3D.b		; 02 3D
	pld		; 2B
.INDEX 8
	sep #$DF		; E2 DF
	cpy #$63.b		; C0 63
	php		; 08
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	trb $3E01.w		; 1C 01 3E
	brk $FE.b		; 00 FE
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rtl		; 6B

	sty $2C.b,X		; 94 2C
	ora ($0E.b),Y		; 11 0E
	sbc ($0E.b),Y		; F1 0E
	sbc ($84.b),Y		; F1 84
	ply		; 7A
	mvp $40,$BA		; 44 BA 40
	lda $F14780.l		; AF 80 47 F1
	sbc $8AEFE3.l,X		; FF E3 EF 8A
	stx $4E4E.w		; 8E 4E 4E
	lda $65AC.w		; AD AC 65
	stz $44.b		; 64 44
	mvp $81,$81		; 44 81 81
	bmi  16.b		; 30 10
	bit #$25.b		; 89 25
	cmp $2F.b,X		; D5 2F
	trb $79EE.w		; 1C EE 79
	eor ($E0.b)		; 52 E0
	phd		; 0B
	beq   1.b		; F0 01
	stz $1E.b,X		; 74 1E
	sbc $FBFBFF.l,X		; FF FF FB FB
	cmp ($D1.b),Y		; D1 D1
	ora ($01.b,X)		; 01 01
	sta $01.b		; 85 01
	jsr ($FE08.w,X)		; FC 08 FE
	brk $E0.b		; 00 E0
	tsb $0003.w		; 0C 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora ($02.b,X)		; 01 02
	brk $3E.b		; 00 3E
	asl $42E1.w,X		; 1E E1 42
	sta ($88.b,X)		; 81 88
	ora [$00.b]		; 07 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	ora ($3E.b,X)		; 01 3E
	rol $FEFE.w,X		; 3E FE FE
	sed		; F8
	sed		; F8
	cpy #$03.b		; C0 03
	cpx #$C2.b		; E0 C2
	cpx #$D5.b		; E0 D5
	sbc ($D4.b,X)		; E1 D4
	cmp ($6D.b)		; D2 6D
	beq 111.b		; F0 6F
	lda $B061.w,Y		; B9 61 B0
	rts		; 60

	brk $C0.b		; 00 C0
	sta ($E1.b,X)		; 81 E1
.ACCU 16
	rep #$E3		; C2 E3
	.db $42, $E3		; 42 E3
	ora $F2.b,S		; 03 F2
	brk $F0.b		; 00 F0
	ora $FF0FFF.l		; 0F FF 0F FF
	rti		; 40

	bra -61.b		; 80 C3
	bra 103.b		; 80 67
	.db $42, $BF		; 42 BF
	ldx $FE.b		; A6 FE
	jmp ($387C.w,X)		; 7C 7C 38
	bit $18.b,X		; 34 18
	clc		; 18
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $42.b		; 00 42
	bra -90.b		; 80 A6
	rti		; 40

	jmp ($3800.w,X)		; 7C 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	stx $0FC0.w		; 8E C0 0F
	dec $8F.b		; C6 8F
	adc [$BE.b],Y		; 77 BE
	sta [$00.b]		; 87 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	stx $0F04.w		; 8E 04 0F
	dec $CF.b		; C6 CF
	pea $03FF.w		; F4 FF 03
	trb $3008.w		; 1C 08 30
	ora ($60.b),Y		; 11 60
	bit $43.b		; 24 43
	bpl -50.b		; 10 CE
	adc #$F294.w		; 69 94 F2
	ora #$63F4.w		; 09 F4 63
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	bit $713C.w,X		; 3C 3C 71
	adc ($6B.b),Y		; 71 6B
	rtl		; 6B

	asl $F6.b,X		; 16 F6
	eor $F9FD.w		; 4D FD F9
	ror $E9.b,X		; 76 E9
	adc ($78.b)		; 72 78
	ora ($00.b,X)		; 01 00
	adc ($00.b),Y		; 71 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	brk $61.b		; 00 61
	sbc $F941.w,Y		; F9 41 F9
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -32.b		; F0 E0
	bne -32.b		; D0 E0
	cpx #$00.b		; E0 00
	rti		; 40

	jsr $A000.w		; 20 00 A0
	rti		; 40

	ldy #$00.b		; A0 00
	cpy #$00.b		; C0 00
	bra -64.b		; 80 C0
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	cpx #$C0.b		; E0 C0
	cpy #$C0.b		; C0 C0
	cpy #$40.b		; C0 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $071E03.l		; 0F 03 1E 07
	and $1C.b,S		; 23 1C
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $001F00.l		; 0F 00 1F 00
	and $00FC00.l,X		; 3F 00 FC 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	cop $1F.b		; 02 1F
	asl A		; 0A
	ora $1D08.w,X		; 1D 08 1D
	brk $05.b		; 00 05
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	lsr $113F.w		; 4E 3F 11
	lda ($A1.b,S),Y		; B3 A1
	txy		; 9B
	bit #$038C.w		; 89 8C 03
	iny		; C8
	eor [$70.b]		; 47 70
	tsb $0000.w		; 0C 00 00
	lsr $109F.w		; 4E 9F 10
	dec $4CA0.w		; CE A0 4C
	dey		; 88
	stz $03.b		; 64 03
	adc ($44.b,S),Y		; 73 44
	bit $00.b,X		; 34 00
	brk $00.b		; 00 00
	brk $D3.b		; 00 D3
	ora $3D27.w,Y		; 19 27 3D
	eor $65.b,S		; 43 65
	.db $82, $C1, $01		; 82 C1 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E5.b		; 00 E5
	ora ($C1.b,X)		; 01 C1
	ora ($80.b,X)		; 01 80
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	cpy #$E0.b		; C0 E0
	cpy #$90.b		; C0 90
	ldy #$B0.b		; A0 B0
	ldy #$88.b		; A0 88
	bcc -40.b		; 90 D8
	bvc 108.b		; 50 6C
	plp		; 28
	and [$14.b],Y		; 37 14
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	bcc  96.b		; 90 60
	bvc  32.b		; 50 20
	plp		; 28
	bpl  20.b		; 10 14
	php		; 08
	brk $C3.b		; 00 C3
	ora ($C3.b,X)		; 01 C3
	ora $0B1F40.l		; 0F 40 1F 0B
	and $7B03.w		; 2D 03 7B
	bit $7F.b,X		; 34 7F
	and $811F6F.l		; 2F 6F 1F 81
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	ora $09.b,S		; 03 09
	ora [$01.b]		; 07 01
	ora [$30.b],Y		; 17 30
	ora [$26.b]		; 07 26
	ora $AC1F07.l		; 0F 07 1F AC
	stx $CC48.w		; 8E 48 CC
	bra 127.b		; 80 7F
	sty $07.b		; 84 07
	cld		; D8
	lsr $F800.w,X		; 5E 00 F8
	bcc  96.b		; 90 60
	cpx #$80.b		; E0 80
	jmp ($B00C.w,X)		; 7C 0C B0
	bra   0.b		; 80 00
	bra 122.b		; 80 7A
	.db $82, $24, $84		; 82 24 84
	php		; 08
	php		; 08
	rts		; 60

	brk $00.b		; 00 00
	bra -87.b		; 80 A9
	bne -62.b		; D0 C2
	and ($15.b),Y		; 31 15
	cpx #$53.b		; E0 53
	ldy $54.b		; A4 54
	and $8C.b,S		; 23 8C
	adc ($0C.b)		; 72 0C
	sbc ($06.b)		; F2 06
	sbc $EF0F.w,Y		; F9 0F EF
	ora $1F1FDF.l,X		; 1F DF 1F 1F
	cmp $DCDCDF.l,X		; DF DF DC DC
	cmp $0DDC.w,X		; DD DC 0D
	tsb $CECE.w		; 0C CE CE
	adc $5E.b		; 65 5E
	bcc  57.b		; 90 39
	phy		; 5A
	lda $9670.w,X		; BD 70 96
	bvs  36.b		; 70 24
	inx		; E8
	lsr A		; 4A
	pea $6C1E.w		; F4 1E 6C
	asl $E7E7.w		; 0E E7 E7
	dec $C6.b		; C6 C6
	rep #$C2		; C2 C2
	php		; 08
	brk $88.b		; 00 88
	brk $B4.b		; 00 B4
	brk $E0.b		; 00 E0
	tsb $0CFC.w		; 0C FC 0C
	plp		; 28
	cmp $20.b,X		; D5 20
	cld		; D8
	jsr $0758.w		; 20 58 07
	bvs   7.b		; 70 07
	and ($0F.b,S),Y		; 33 0F
	ora [$0E.b],Y		; 17 0E
	ora [$07.b]		; 07 07
	brk $28.b		; 00 28
	plp		; 28
	jsr $2020.w		; 20 20 20
	jsr $2720.w		; 20 20 27
	ora $07.b,S		; 03 07
	ora $0F.b,S		; 03 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	cpx #$C0.b		; E0 C0
	bcc -96.b		; 90 A0
	bcs -96.b		; B0 A0
	dey		; 88
	bcc -40.b		; 90 D8
	bvc 108.b		; 50 6C
	plp		; 28
	and [$14.b],Y		; 37 14
	ora $00C00F.l,X		; 1F 0F C0 00
	ldy #$40.b		; A0 40
	ldy #$40.b		; A0 40
	bcc  96.b		; 90 60
	bvc  32.b		; 50 20
	plp		; 28
	bpl  20.b		; 10 14
	php		; 08
	ora $000000.l		; 0F 00 00 00
	sec		; 38
	brk $78.b		; 00 78
	bmi  -8.b		; 30 F8
	bvs  -8.b		; 70 F8
	beq 112.b		; F0 70
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	bpl 120.b		; 10 78
	bvs  -8.b		; 70 F8
	cpx #$F8.b		; E0 F8
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra  65.b		; 80 41
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $41.b		; 00 41
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	bne  96.b		; D0 60
	cpx #$40.b		; E0 40
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -32.b		; F0 E0
	beq  96.b		; F0 60
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and $C703.w,X		; 3D 03 C7
	and $0000FF.l,X		; 3F FF 00 00
	brk $00.b		; 00 00
	rol $03EA.w,X		; 3E EA 03
	cmp $030060.l,X		; DF 60 00 03
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0EE0.w		; 1C E0 0E
	beq  17.b		; F0 11
	rts		; 60

	jsl $C60941.l		; 22 41 09 C6
	eor ($8C.b)		; 52 8C
	and #$1494.w		; 29 94 14
	lda #$AB54.w		; A9 54 AB
	plp		; 28
	cmp $3F.b,X		; D5 3F
	and $793E3E.l,X		; 3F 3E 3E 79
	adc $7373.w,Y		; 79 73 73
	rtl		; 6B

	rtl		; 6B

	lsr $56.b,X		; 56 56
	mvn $28,$54		; 54 54 28
	plp		; 28
	sta $0703.w		; 8D 03 07
	brk $1C.b		; 00 1C
	ora $16.b,S		; 03 16
	ora #$0C13.w		; 09 13 0C
	ora $030F00.l,X		; 1F 00 0F 03
	ora [$0B.b],Y		; 17 0B
	brk $83.b		; 00 83
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	php		; 08
	ora $0C.b,S		; 03 0C
	ora $00.b,S		; 03 00
	ora [$02.b]		; 07 02
	ora [$0B.b]		; 07 0B
	ora [$FC.b]		; 07 FC
	beq  -6.b		; F0 FA
	tsb $F2.b		; 04 F2
	cpx $E0FD.w		; EC FD E0
	sed		; F8
	bpl  -8.b		; 10 F8
	cpx #$FF.b		; E0 FF
	brk $F9.b		; 00 F9
	plp		; 28
	cpx #$F0.b		; E0 F0
	tsb $F0.b		; 04 F0
	tsb $60E0.w		; 0C E0 60
	sbc ($00.b,X)		; E1 00
	sed		; F8
	rts		; 60

	sed		; F8
	brk $80.b		; 00 80
	plp		; 28
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $100F.w		; 0E 0F 10
	ora $170F17.l		; 0F 17 0F 17
	asl $7B.b		; 06 7B
	tsa		; 3B
	cpy $00.b		; C4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $030F06.l		; 0F 06 0F 03
	ora $780700.l		; 0F 00 07 78
	tda		; 7B
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  36.b		; 10 24
	tsb $2A.b		; 04 2A
	tsb $1026.w		; 0C 26 10
	lda $927C83.l		; AF 83 7C 92
	.db $62, $00, $00		; 62 00 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	trb $1C.b		; 14 1C
	bpl  28.b		; 10 1C
	clc		; 18
	bpl   7.b		; 10 07
	sta [$3F.b]		; 87 3F
	lda $000000.l,X		; BF 00 00 00
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	trb $5E3F.w		; 1C 3F 5E
	tsa		; 3B
	dec $C5.b		; C6 C5
	cop $2B.b		; 02 2B
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	clc		; 18
	rol $3F10.w,X		; 3E 10 3F
	rts		; 60

	adc $FCFFF8.l,X		; 7F F8 FF FC
	sbc $C38040.l,X		; FF 40 80 C3
	bra 103.b		; 80 67
	.db $42, $BF		; 42 BF
	ldx $FE.b		; A6 FE
	jmp ($387C.w,X)		; 7C 7C 38
	bit $18.b,X		; 34 18
	clc		; 18
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $42.b		; 00 42
	bra -90.b		; 80 A6
	rti		; 40

	jmp ($3800.w,X)		; 7C 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	clc		; 18
	jsr ($DE00.w,X)		; FC 00 DE
	sty $DD.b		; 84 DD
	stx $6EBF.w		; 8E BF 6E
	trb $152D.w		; 1C 2D 15
	ora $040C.w		; 0D 0C 04
	cpx #$00.b		; E0 00
	bvs -128.b		; 70 80
	bmi -60.b		; 30 C4
	ldx $0EC8.w		; AE C8 0E
	dey		; 88
	ora $0A.b		; 05 0A
	ora $0A.b		; 05 0A
	tsb $03.b		; 04 03
	sta ($6D.b)		; 92 6D
	ldy #$5B.b		; A0 5B
	jsr $41D0.w		; 20 D0 41
	ldy #$03.b		; A0 03
	cmp ($05.b,X)		; C1 05
	rti		; 40

	sta [$02.b]		; 87 02
	sta $B2B205.l		; 8F 05 B2 B2
	bcs -80.b		; B0 B0
	ldy #$A0.b		; A0 A0
	rti		; 40

	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	cop $80.b		; 02 80
	tsb $81.b		; 04 81
	bit $86.b,X		; 34 86
	rts		; 60

	jsr ($B000.w,X)		; FC 00 B0
	sed		; F8
	brk $FE.b		; 00 FE
	pla		; 68
	ldx $7A6C.w,Y		; BE 6C 7A
	sty $ECF2.w		; 8C F2 EC
	sed		; F8
	bra  16.b		; 80 10
	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	rts		; 60

	plp		; 28
	cpx #$2C.b		; E0 2C
	cpx #$0C.b		; E0 0C
	cpx #$CC.b		; E0 CC
	cpx #$BE.b		; E0 BE
	jmp $7902FF.l		; 5C FF 02 79
	bpl -19.b		; 10 ED
	eor $EC.b		; 45 EC
	php		; 08
	bit $3E08.w		; 2C 08 3E
	cop $03.b		; 02 03
	brk $48.b		; 00 48
	and $101C02.l,X		; 3F 02 1C 10
	asl $45.b		; 06 45
	ora ($08.b)		; 12 08
	ora ($08.b,S),Y		; 13 08
	ora ($02.b,S),Y		; 13 02
	ora ($00.b,X)		; 01 00
	brk $FF.b		; 00 FF
	sta ($7F.b,S),Y		; 93 7F
	eor $9F.b,S		; 43 9F
	dey		; 88
	phx		; DA
	phk		; 4B
	jsr ($608E.w,X)		; FC 8E 60
	jmp $803840.l		; 5C 40 38 80
	rts		; 60

	sta ($07.b,S),Y		; 93 07
	eor $87.b,S		; 43 87
	bra 103.b		; 80 67
	mvp $80,$20		; 44 20 80
	brk $58.b		; 00 58
	tya		; 98
	jsr $00A0.w		; 20 A0 00
	brk $3F.b		; 00 3F
	tsb $2C.b		; 04 2C
	ora ($2F.b,S),Y		; 13 2F
	bpl  63.b		; 10 3F
	ora ($4B.b,X)		; 01 4B
	rol $7F.b,X		; 36 7F
	ora ($5F.b,X)		; 01 5F
	rol A		; 2A
	adc $19.b,X		; 75 19
	brk $0C.b		; 00 0C
	ora ($08.b,S),Y		; 13 08
	bpl   8.b		; 10 08
	brk $0F.b		; 00 0F
	bmi   7.b		; 30 07
	ora ($01.b,X)		; 01 01
	rol A		; 2A
	brk $19.b		; 00 19
	cop $64.b		; 02 64
	txy		; 9B
	cld		; D8
	jsr $D8A4.w		; 20 A4 D8
	jsr ($F8E0.w,X)		; FC E0 F8
	cpx #$F8.b		; E0 F8
	bvc  -4.b		; 50 FC
	tay		; A8
	jsr ($9848.w,X)		; FC 48 98
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	cpy #$C0.b		; C0 C0
	cpx #$40.b		; E0 40
	sed		; F8
	brk $F0.b		; 00 F0
	tay		; A8
	cpx #$48.b		; E0 48
	rti		; 40

	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	tsb $0C.b		; 04 0C
	ora [$0C.b]		; 07 0C
	ora [$0B.b]		; 07 0B
	ora $000707.l		; 0F 07 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $05.b		; 02 05
	brk $98.b		; 00 98
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	brk $90.b		; 00 90
	bvs -64.b		; 70 C0
	beq  32.b		; F0 20
	beq  96.b		; F0 60
	bvs  16.b		; 70 10
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4020.w		; 20 20 40
	iny		; C8
	bmi  80.b		; 30 50
	lda $D0.b		; A5 D0
	lda $CA.b		; A5 CA
	and $21.b,X		; 35 21
	ora $9D90F3.l,X		; 1F F3 90 9D
	and ($47.b,S),Y		; 33 47
	sec		; 38
	eor $DF1FDF.l,X		; 5F DF 1F DF
	inc A		; 1A
	phx		; DA
	inc A		; 1A
	inc A		; 1A
	brk $C0.b		; 00 C0
	sty $4F00.w		; 8C 00 4F
	ora $CF.b,S		; 03 CF
	php		; 08
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($20.b)		; B2 20
	jmp ($5C89.w,X)		; 7C 89 5C
	bmi -59.b		; 30 C5
	nop		; EA
	ora $B6.b,X		; 15 B6
	eor $03EC.w,Y		; 59 EC 03
	inc $CFFE.w,X		; FE FE CF
	cmp $B38B8B.l		; CF 8B 8B B3
	sta ($3B.b,S),Y		; 93 3B
	ora $32.b,S		; 03 32
	ora ($22.b)		; 12 22
	lsr A		; 4A
	bmi   0.b		; 30 00
	bit $08.b,X		; 34 08
	jmp $084C10.l		; 5C 10 4C 08
	jmp ($FC38.w,X)		; 7C 38 FC
	brk $90.b		; 00 90
	rts		; 60

	beq   0.b		; F0 00
	ldy #$07.b		; A0 07
	php		; 08
	brk $10.b		; 00 10
	bmi   8.b		; 30 08
	bmi  56.b		; 30 38
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	phd		; 0B
	cop $0F.b		; 02 0F
	asl $0F.b		; 06 0F
	asl $0D.b		; 06 0D
	tsb $09.b		; 04 09
	brk $0B.b		; 00 0B
	cop $0A.b		; 02 0A
	brk $0E.b		; 00 0E
	brk $02.b		; 00 02
	tsb $06.b		; 04 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	asl $02.b		; 06 02
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $E0.b		; 00 E0
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	cpy #$F0.b		; C0 F0
	cpx #$C8.b		; E0 C8
	cpy #$F4.b		; C0 F4
	bcs  -2.b		; B0 FE
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	bmi -80.b		; 30 B0
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  44.b		; 10 2C
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	adc $2F7F80.l,X		; 7F 80 7F 2F
	cmp $807FAF.l,X		; DF AF 7F 80
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ldx $200F.w		; AE 0F 20
	ora $000F00.l		; 0F 00 0F 00
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	rts		; 60

	cpy #$E0.b		; C0 E0
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra 112.b		; 80 70
	ldy #$18.b		; A0 18
	bvc -116.b		; 50 8C
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	sei		; 78
	sei		; 78
	tay		; A8
	mvp $66,$00		; 44 00 66
	trb $62.b		; 14 62
	tsb $F2.b		; 04 F2
	bit $68D2.w		; 2C D2 68
	sty $48.b,X		; 94 48
	ldy $40.b,X		; B4 40
	clv		; B8
	clv		; B8
	clv		; B8
	ldy $9CBC.w,X		; BC BC 9C
	stz $ACAC.w		; 9C AC AC
	jmp ($E86C.w)		; 6C 6C E8
	inx		; E8
	pla		; 68
	pla		; 68
	bvc  80.b		; 50 50
	ora [$63.b]		; 07 63
	and $43.b		; 25 43
	phd		; 0B
	cmp $53.b		; C5 53
	sta $952B.w		; 8D 2B 95
	ora [$A8.b],Y		; 17 A8
	ora ($A8.b)		; 12 A8
	pld		; 2B
	bne  57.b		; D0 39
	and $793F39.l,X		; 3F 39 3F 79
	tda		; 7B
	adc ($73.b),Y		; 71 73
	adc #$546B.w		; 69 6B 54
	mvn $55,$54		; 54 54 55
	bit $202C.w		; 2C 2C 20
	cmp ($20.b,S),Y		; D3 20
	cmp ($24.b,S),Y		; D3 24
	eor ($00.b,S),Y		; 53 00
	stz $08.b,X		; 74 08
	bit $00.b,X		; 34 00
	tsb $0400.w		; 0C 00 04
	brk $00.b		; 00 00
	bit $2C2C.w		; 2C 2C 2C
	bit $2C2C.w		; 2C 2C 2C
	plp		; 28
	plp		; 28
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $3B30.w,Y		; 79 30 3B
	ora #$041E.w		; 09 1E 04
	asl $18.b		; 06 18
	ora $180E1C.l		; 0F 1C 0E 18
	asl $18.b		; 06 18
	asl $08.b		; 06 08
	bmi   6.b		; 30 06
	ora #$0404.w		; 09 04 04
	ora ($08.b,X)		; 01 08
	ora #$0000.w		; 09 00 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	inc $AC.b,X		; F6 AC
	lsr $4C14.w,X		; 5E 14 4C
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	php		; 08
	bvs  -8.b		; 70 F8
	bvc -40.b		; 50 D8
	bpl -104.b		; 10 98
	ldy $1400.w		; AC 00 14
	ldy #$00.b		; A0 00
	bcs   0.b		; B0 00
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $15.b		; 00 15
	ora $0C14.w		; 0D 14 0C
	bpl   8.b		; 10 08
	ora ($09.b),Y		; 11 09
	php		; 08
	ora ($0A.b,X)		; 01 0A
	ora $0B.b,S		; 03 0B
	cop $0B.b		; 02 0B
	cop $05.b		; 02 05
	asl A		; 0A
	tsb $0803.w		; 0C 03 08
	ora [$09.b]		; 07 09
	asl $01.b		; 06 01
	asl $03.b		; 06 03
	tsb $02.b		; 04 02
	tsb $02.b		; 04 02
	tsb $F0.b		; 04 F0
	rts		; 60

	beq  96.b		; F0 60
	beq  96.b		; F0 60
	bne  96.b		; D0 60
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	rts		; 60

	cpy #$E0.b		; C0 E0
	cpy #$60.b		; C0 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $43.b		; 00 43
	clc		; 18
	eor $9A4E14.l		; 4F 14 4E 9A
	rol $EF95.w,X		; 3E 95 EF
	bmi -33.b		; 30 DF
	jmp ($0C7A.w)		; 6C 7A 0C
	eor ($2C.b,S),Y		; 53 2C
	sbc [$00.b]		; E7 00
	sbc $00.b,S		; E3 00
	adc #$4500.w		; 69 00 45
	and ($20.b),Y		; 31 20
	beq  12.b		; F0 0C
	cpx #$0D.b		; E0 0D
	adc ($0D.b,X)		; 61 0D
	adc ($F0.b,X)		; 61 F0
	cpy $80.b		; C4 80
	pla		; 68
	jsr $1830.w		; 20 30 18
	sbc ($F8.b,X)		; E1 F8
	bmi -15.b		; 30 F1
	asl $60F1.w		; 0E F1 60
	lda $00386E.l,X		; BF 6E 38 00
	bne  64.b		; D0 40
	cpy #$00.b		; C0 00
	bra -128.b		; 80 80
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	ror $6000.w		; 6E 00 60
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	tsb $3F.b		; 04 3F
	asl A		; 0A
	and [$02.b],Y		; 37 02
	and $4C3F06.l,X		; 3F 06 3F 4C
	dec A		; 3A
	cpy $8D1E.w		; CC 1E 8D
	brk $0C.b		; 00 0C
	tsb $1F.b		; 04 1F
	asl A		; 0A
	and [$02.b]		; 27 02
	pld		; 2B
	tsb $27.b		; 04 27
	ora #$613F.w		; 09 3F 61
	adc $40FEE4.l,X		; 7F E4 FE 40
	dey		; 88
	plp		; 28
	sty $30.b,X		; 94 30
	stz $9A74.w		; 9C 74 9A
	stz $9A.b		; 64 9A
	rti		; 40

	lda $167088.l,X		; BF 88 70 16
	inc $70.b		; E6 70
	bvs 104.b		; 70 68
	sei		; 78
	rti		; 40

	sei		; 78
	mvn $5C,$7C		; 54 7C 5C
	stz $70.b		; 64 70
	rti		; 40

	sta $3F3F8F.l		; 8F 8F 3F 3F
	brk $0E.b		; 00 0E
	tsb $13.b		; 04 13
	asl A		; 0A
	and $0E.b		; 25 0E
	and $3E.b		; 25 3E
	eor $24.b		; 45 24
	phx		; DA
	rti		; 40

	and $002D32.l,X		; 3F 32 2D 00
	brk $0E.b		; 00 0E
	asl $1E1A.w		; 0E 1A 1E
	ora ($1E.b)		; 12 1E
	rol $3E.b,X		; 36 3E
	bit $CC24.w,X		; 3C 24 CC
	cpy $F3.b		; C4 F3
	sbc ($00.b,S),Y		; F3 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	tsb $00.b		; 04 00
	ora [$02.b]		; 07 02
	tsb $02.b		; 04 02
	tsb $01.b		; 04 01
	cop $00.b		; 02 00
	ora $000000.l		; 0F 00 00 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	eor ($40.b,X)		; 41 40
	lda ($80.b,X)		; A1 80
	adc ($21.b,S),Y		; 73 21
	ora ($01.b)		; 12 01
	inc $3B04.w,X		; FE 04 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	sbc ($E1.b,X)		; E1 E1
	eor ($51.b),Y		; 51 51
	inc $E6.b		; E6 E6
	rol $71.b		; 26 71
	bit $0679.w		; 2C 79 06
	tda		; 7B
	php		; 08
	tda		; 7B
	brk $32.b		; 00 32
	trb $7E3E.w		; 1C 3E 7E
	bpl  94.b		; 10 5E
	bit $000E.w		; 2C 0E 00
	asl $00.b		; 06 00
	bit $2628.w		; 2C 28 26
	jsl $00101C.l		; 22 1C 10 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bit $0000.w		; 2C 00 00
	brk $00.b		; 00 00
	sbc $7FE700.l,X		; FF 00 E7 7F
	sbc $40FF7F.l		; EF 7F FF 40
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	adc $FF.b,S		; 63 FF
	lsr $FF.b		; 46 FF
	brk $FF.b		; 00 FF
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	adc $12.b,S		; 63 12
	sbc [$25.b],Y		; F7 25
	xce		; FB
	lda $A9D2.w		; AD D2 A9
	inc $01.b,X		; F6 01
	ora $1C02.w		; 0D 02 1C
	phd		; 0B
	asl $01.b		; 06 01
	tsb $2900.w		; 0C 00 29
	bra -95.b		; 80 A1
	bra  33.b		; 80 21
	bra   1.b		; 80 01
	cpy #$02.b		; C0 02
	brk $0B.b		; 00 0B
	brk $FF.b		; 00 FF
	inc $70FF.w,X		; FE FF 70
	sbc $DD278C.l,X		; FF 8C 27 DD
	and $DC.b,S		; 23 DC
	sbc ($0C.b,S),Y		; F3 0C
	adc $4DF392.l		; 6F 92 F3 4D
	jmp ($20FF.w,X)		; 7C FF 20
	adc ($8C.b),Y		; 71 8C
	ora ($DC.b,X)		; 01 DC
	ora ($DC.b,X)		; 01 DC
	brk $0C.b		; 00 0C
	brk $92.b		; 00 92
	brk $4D.b		; 00 4D
	brk $87.b		; 00 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	cpy #$E0.b		; C0 E0
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $FD.b		; 00 FD
	jsr $145D.w		; 20 5D 14
	and $0700.w,Y		; 39 00 07
	php		; 08
	asl $0F.b		; 06 0F
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $05.b		; 00 05
	jsr $1402.w		; 20 02 14
	jsl $000600.l		; 22 00 06 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $06.b		; 04 06
	tsb $02.b		; 04 02
	brk $B6.b		; 00 B6
	mvp $20,$F2		; 44 F2 20
	stz $F880.w		; 9C 80 F8
	brk $F0.b		; 00 F0
	sed		; F8
	bcs -104.b		; B0 98
	bvs  24.b		; 70 18
	rts		; 60

	clc		; 18
	mvp $20,$08		; 44 08 20
	tsb $6080.w		; 0C 80 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bpl  69.b		; 10 45
	rol A		; 2A
	ror A		; 6A
	tsb $BE.b		; 04 BE
	trb $EE.b		; 14 EE
	mvn $0C,$F6		; 54 F6 0C
	ldx $F74C.w,Y		; BE 4C F7
	lsr $40EF.w		; 4E EF 40
	rol A		; 2A
	bpl   4.b		; 10 04
	bpl  20.b		; 10 14
	rti		; 40

	mvn $0C,$00		; 54 00 0C
	brk $4C.b		; 00 4C
	brk $4E.b		; 00 4E
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	jsr $3000.w		; 20 00 30
	ldy #$10.b		; A0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	brk $98.b		; 00 98
	bvc -120.b		; 50 88
	bcc  72.b		; 90 48
	bpl  72.b		; 10 48
	brk $50.b		; 00 50
	ldy #$50.b		; A0 50
	rti		; 40

	ldy #$80.b		; A0 80
	rti		; 40

	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	ldy #$A0.b		; A0 A0
	ldy #$A0.b		; A0 A0
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	bra -65.b		; 80 BF
	brk $BF.b		; 00 BF
	ora $FF5FFC.l,X		; 1F FC 5F FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $405F1E.l,X		; 5F 1E 5F 40
	ora $2F1F00.l,X		; 1F 00 1F 2F
	bpl 116.b		; 10 74
	php		; 08
	jmp.w [$F800]		; DC 00 F8
	bvc  -8.b		; 50 F8
	beq -16.b		; F0 F0
	cpx #$F0.b		; E0 F0
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	rti		; 40

	brk $A0.b		; 00 A0
	brk $D8.b		; 00 D8
	cpx #$F8.b		; E0 F8
	cpy #$F0.b		; C0 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cpx $7C18.w		; EC 18 7C
	tya		; 98
	inc $DF9C.w		; EE 9C DF
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $98.b		; 00 98
	brk $9C.b		; 00 9C
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	asl $1E3D.w,X		; 1E 3D 1E
	lsr $24.b		; 46 24
	.db $62, $24, $4E		; 62 24 4E
	php		; 08
	lsr $08.b		; 46 08
	lsr A		; 4A
	tsb $9A.b		; 04 9A
	mvn $0C,$16		; 54 16 0C
	asl $2400.w,X		; 1E 00 24
	clc		; 18
	bit $18.b		; 24 18
	php		; 08
	bmi   8.b		; 30 08
	bmi   4.b		; 30 04
	bmi  84.b		; 30 54
	jsr $130C.w		; 20 0C 13
	ora ($20.b,S),Y		; 13 20
	tsb $63.b		; 04 63
	bpl  79.b		; 10 4F
	ora #$2BD6.w		; 09 D6 2B
	sty $56.b,X		; 94 56
	lda #$AB54.w		; A9 54 AB
	asl $1F0E.w		; 0E 0E 1F
	ora $313C3C.l,X		; 1F 3C 3C 31
	and ($6B.b),Y		; 31 6B
	rtl		; 6B

	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	sbc ($1A.b,X)		; E1 1A
	asl A		; 0A
	beq   1.b		; F0 01
	sbc ($C6.b),Y		; F1 C6
	rol $C8.b,X		; 36 C8
	bmi -75.b		; 30 B5
	pha		; 48
	ora $C8.b,X		; 15 C8
	phd		; 0B
	stz $EF.b		; 64 EF
	sbc $5F1F1F.l		; EF 1F 1F 5F
	eor $DFDFDF.l,X		; 5F DF DF DF
	cmp $7FBFBF.l,X		; DF BF BF 7F
	adc $003F3F.l,X		; 7F 3F 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1D.b		; 00 1D
	cop $2F.b		; 02 2F
	php		; 08
	rol $04.b		; 26 04
	inc $001C.w,X		; FE 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	clc		; 18
	tsb $18.b		; 04 18
	trb $0000.w		; 1C 00 00
	sei		; 78
	rti		; 40

	dey		; 88
	bra 120.b		; 80 78
	bvc -114.b		; 50 8E
	trb $0B.b		; 14 0B
	sta ($78.b,X)		; 81 78
	tsb $D8.b		; 04 D8
	sbc ($1E.b,X)		; E1 1E
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	ldy #$A0.b		; A0 A0
	bvs 112.b		; 70 70
	inc $F6.b,X		; F6 F6
	cmp [$C7.b]		; C7 C7
	adc [$67.b]		; 67 67
	sbc #$0CE9.w		; E9 E9 0C
	sbc ($48.b,S),Y		; F3 48
	lda ($64.b),Y		; B1 64
	tya		; 98
	ldx #$1C.b		; A2 1C
	brk $3A.b		; 00 3A
	eor ($2A.b),Y		; 51 2A
	bne  41.b		; D0 29
	bra 105.b		; 80 69
	asl $6F1E.w,X		; 1E 1E 6F
	adc $E3F7F7.l		; 6F F7 F7 E3
	sbc $C1.b,S		; E3 C1
	cmp ($D1.b,X)		; C1 D1
	cmp ($D0.b,X)		; C1 D0
	cpy #$D0.b		; C0 D0
	cpy #$2C.b		; C0 2C
	cmp ($28.b)		; D2 28
	mvn $54,$28		; 54 28 54
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $282C.w		; 2C 2C 28
	plp		; 28
	plp		; 28
	plp		; 28
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F0030.l		; 0F 30 00 1F
	ora $0C.b		; 05 0C
	ora $0C3C01.l,X		; 1F 01 3C 0C
	bvs  16.b		; 70 10
	adc $9F3C00.l,X		; 7F 00 3C 9F
	ora $00001F.l,X		; 1F 1F 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	tsb $1003.w		; 0C 03 10
	eor $404000.l		; 4F 00 40 40
	and $40F120.l,X		; 3F 20 F1 40
	sbc $F8.b,S		; E3 F8
	brk $D8.b		; 00 D8
	ldy $78.b,X		; B4 78
	and $F6.b,S		; 23 F6
	ldy #$F4.b		; A0 F4
	tsb $37D8.w		; 0C D8 37
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	bra  56.b		; 80 38
	bit $8FB0.w		; 2C B0 8F
	bmi   3.b		; 30 03
	bmi   0.b		; 30 00
	sed		; F8
	ora $08.b,X		; 15 08
	and $3914.w,X		; 3D 14 39
	bpl  57.b		; 10 39
	brk $0F.b		; 00 0F
	bpl  15.b		; 10 0F
	ora $041105.l,X		; 1F 05 11 04
	ora ($08.b),Y		; 11 08
	cop $14.b		; 02 14
	cop $10.b		; 02 10
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	ora ($FF.b,X)		; 01 FF
	bpl -81.b		; 10 AF
	txa		; 8A
	ldx $3C88.w		; AE 88 3C
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	cpx #$10.b		; E0 10
	brk $8A.b		; 00 8A
	bvc -120.b		; 50 88
	bvc   0.b		; 50 00
	cpy #$00.b		; C0 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $1E3D1D.l,X		; 3F 1D 3D 1E
	and $12.b,S		; 23 12
	and $12.b,S		; 23 12
	ora ($00.b),Y		; 11 00
	ora $1108.w,Y		; 19 08 11
	php		; 08
	ora ($0A.b,S),Y		; 13 0A
	ora $1C04.w,Y		; 19 04 1C
	cop $12.b		; 02 12
	tsb $0C12.w		; 0C 12 0C
	brk $0E.b		; 00 0E
	php		; 08
	asl $08.b		; 06 08
	asl $0A.b		; 06 0A
	tsb $D0.b		; 04 D0
	cpx #$F0.b		; E0 F0
	cpx #$68.b		; E0 68
	beq  -8.b		; F0 F8
	bvs -76.b		; 70 B4
	sei		; 78
	jmp ($3A38.w,X)		; 7C 38 3A
	trb $1C2E.w		; 1C 2E 1C
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	asl $03.b		; 06 03
	asl $00.b		; 06 00
	ora $040F00.l		; 0F 00 0F 04
	and $5009.w,Y		; 39 09 50
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	and $B8003F.l,X		; 3F 3F 00 B8
	ldy #$44.b		; A0 44
	pla		; 68
	cpy $60.b		; C4 60
	cmp $C4C4EB.l,X		; DF EB C4 C4
	tay		; A8
	and ($DE.b,X)		; 21 DE
	plp		; 28
	cmp [$00.b],Y		; D7 00
	brk $B8.b		; 00 B8
	clv		; B8
	cli		; 58
	sei		; 78
	cli		; 58
	sei		; 78
	tad		; 5B
	xce		; FB
	and [$F7.b],Y		; 37 F7
	sbc ($33.b,S),Y		; F3 33
	jmp ($072C.w)		; 6C 2C 07
	bpl   3.b		; 10 03
	trb $0803.w		; 1C 03 08
	ora $06.b,S		; 03 06
	ora $060D00.l		; 0F 00 0D 06
	ora [$12.b]		; 07 12
	phd		; 0B
	bpl  15.b		; 10 0F
	brk $0F.b		; 00 0F
	tsb $0007.w		; 0C 07 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $0E.b		; 04 0E
	php		; 08
	asl $0C.b		; 06 0C
	ora $E1.b,S		; 03 E1
	rol A		; 2A
	cpy #$13.b		; C0 13
	bra  38.b		; 80 26
	beq   0.b		; F0 00
	cld		; D8
	bne  24.b		; D0 18
	bpl  62.b		; 10 3E
	jsr $14EF.w		; 20 EF 14
	cmp ($01.b),Y		; D1 01
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	bne  32.b		; D0 20
	bpl -32.b		; 10 E0
	jsr $04C8.w		; 20 C8 04
	ora $0000.w,Y		; 19 00 00
	ora ($00.b,X)		; 01 00
	ora [$01.b]		; 07 01
	sbc $7EEF07.l,X		; FF 07 EF 7E
	inc $78.b		; E6 78
	sed		; F8
	rti		; 40

	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $FF.b,S		; 03 FF
	stz $FF.b		; 64 FF
	rti		; 40

	inc $F800.w,X		; FE 00 F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	rti		; 40

	bmi  16.b		; 30 10
	php		; 08
	bra  12.b		; 80 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	plp		; 28
	cpy $10.b		; C4 10
	inc $AC.b		; E6 AC
	eor ($D4.b)		; 52 D4
	rol A		; 2A
	mvn $69,$AA		; 54 AA 69
	stx $29.b,Y		; 96 29
	dec $21.b,X		; D6 21
	dec $7878.w,X		; DE 78 78
	stz $AC9C.w		; 9C 9C AC
	ldy $D4D4.w		; AC D4 D4
	mvn $68,$54		; 54 54 68
	pla		; 68
	tay		; A8
	tay		; A8
	tay		; A8
	tay		; A8
	ora ($AE.b,S),Y		; 13 AE
	ora ($2E.b,S),Y		; 13 2E
	ora [$28.b],Y		; 17 28
	tsb $38.b		; 04 38
	trb $2820.w		; 1C 20 28
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	bmi  18.b		; 30 12
	bpl  18.b		; 10 12
	bpl  16.b		; 10 10
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	sec		; 38
	bmi  -8.b		; 30 F8
	clv		; B8
	beq -24.b		; F0 E8
	beq -16.b		; F0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	sed		; F8
	brk $F8.b		; 00 F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C31.w		; 0C 31 0C
	and ($1E.b),Y		; 31 1E
	and ($1C.b,S),Y		; 33 1C
	and ($01.b,S),Y		; 33 01
	and $04.b,S		; 23 04
	rol $3D.b		; 26 3D
	asl $3D.b		; 06 3D
	tas		; 1B
	ora $101E11.l,X		; 1F 11 1E 10
	tsb $0E00.w		; 0C 00 0E
	cop $1C.b		; 02 1C
	brk $19.b		; 00 19
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora $E000.w,Y		; 19 00 E0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cpx #$00.b		; E0 00
	ldy #$C0.b		; A0 C0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	phd		; 0B
	cop $0B.b		; 02 0B
	cop $0D.b		; 02 0D
	asl $0D.b		; 06 0D
	asl $1B.b		; 06 1B
	asl A		; 0A
	and [$06.b]		; 27 06
	eor $00FF0A.l		; 4F 0A FF 00
	cop $04.b		; 02 04
	cop $04.b		; 02 04
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl A		; 0A
	tsb $06.b		; 04 06
	clc		; 18
	asl A		; 0A
	bmi   0.b		; 30 00
	brk $1F.b		; 00 1F
	asl $060F.w		; 0E 0F 06
	ora $060F06.l		; 0F 06 0F 06
	phd		; 0B
	asl $07.b		; 06 07
	cop $07.b		; 02 07
	cop $06.b		; 02 06
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $36.b		; 00 36
	ldx $2B.b		; A6 2B
	lda $9244.w,Y		; B9 44 92
	pld		; 2B
	mvn $3D,$02		; 54 02 3D
	ora [$10.b]		; 07 10
	ora $35.b,S		; 03 35
	asl $20.b		; 06 20
	adc $7F7F7F.l,X		; 7F 7F 7F 7F
	adc $2B2B6F.l		; 6F 6F 2B 2B
	cop $02.b		; 02 02
	php		; 08
	brk $09.b		; 00 09
	ora $19.b		; 05 19
	brk $86.b		; 00 86
	adc $8C93.w,Y		; 79 93 8C
	lda $5402.w		; AD 02 54
	lda $5C.b,S		; A3 5C
	lda $89.b,S		; A3 89
	ror $21.b,X		; 76 21
	ldx $0AF1.w		; AE F1 0A
	sta $F3F38F.l		; 8F 8F F3 F3
	sbc $FCFD.w,X		; FD FD FC
	jsr ($5D5D.w,X)		; FC 5D 5D
	phd		; 0B
	phd		; 0B
	cmp ($83.b,S),Y		; D3 83
	sbc ($01.b),Y		; F1 01
	tsb $F127.w		; 0C 27 F1
	ora [$A7.b]		; 07 A7
	php		; 08
	cmp $8B.b,X		; D5 8B
	inc $E3A1.w,X		; FE A1 E3
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $18.b		; 00 18
	ora ($18.b,X)		; 01 18
	ora $10.b,S		; 03 10
	eor [$88.b]		; 47 88
	lda [$A0.b]		; A7 A0
	sta $00.b,S		; 83 00
	sta $01.b,S		; 83 01
	ora $00.b,S		; 03 00
	brk $FB.b		; 00 FB
	sbc $FE.b,X		; F5 FE
	sta ($FF.b,X)		; 81 FF
	and ($E5.b)		; 32 E5
	tsx		; BA
	cmp $3A.b		; C5 3A
	cmp $F7B2.w		; CD B2 F7
	php		; 08
	cpy $BB.b		; C4 BB
	stz $F9.b		; 64 F9
	bra -127.b		; 80 81
	and ($80.b)		; 32 80
	tsx		; BA
	bra  58.b		; 80 3A
	bra  50.b		; 80 32
	bra   8.b		; 80 08
	brk $BB.b		; 00 BB
	brk $3D.b		; 00 3D
	trb $6B.b		; 14 6B
	and ($7A.b),Y		; 31 7A
	plp		; 28
	rol $02.b,X		; 36 02
	trb $0700.w		; 1C 00 07
	clc		; 18
	tsb $0C.b		; 04 0C
	ora [$0C.b]		; 07 0C
	trb $02.b		; 14 02
	and ($04.b),Y		; 31 04
	plp		; 28
	ora $02.b		; 05 02
	ora #$0300.w		; 09 00 03
	php		; 08
	php		; 08
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	inc $EF54.w,X		; FE 54 EF
	ldx $EB.b		; A6 EB
	ldx $EE.b		; A6 EE
	tay		; A8
	cpx $A0.b		; E4 A0
	sed		; F8
	tsb $B8.b		; 04 B8
	jsr ($6C28.w,X)		; FC 28 6C
	mvn $A6,$40		; 54 40 A6
	bpl -90.b		; 10 A6
	bpl -88.b		; 10 A8
	bpl -96.b		; 10 A0
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	ora $0905.w		; 0D 05 09
	ora ($11.b,X)		; 01 11
	ora #$0910.w		; 09 10 09
	tas		; 1B
	asl A		; 0A
	tas		; 1B
	asl A		; 0A
	ora ($02.b),Y		; 11 02
	asl $04.b,X		; 16 04
	ora $02.b		; 05 02
	ora ($06.b,X)		; 01 06
	ora #$0906.w		; 09 06 09
	asl $0A.b		; 06 0A
	tsb $0A.b		; 04 0A
	tsb $02.b		; 04 02
	tsb $0804.w		; 0C 04 08
	adc $BE9E.w,X		; 7D 9E BE
	trb $3CDA.w		; 1C DA 3C
	jmp.w [$7438]		; DC 38 74
	sec		; 38
	sei		; 78
	bmi 104.b		; 30 68
	bmi -80.b		; 30 B0
	rts		; 60

	stz $1C00.w,X		; 9E 00 1C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $08.b		; 00 08
	ora ($05.b),Y		; 11 05
	ora ($06.b)		; 12 06
	ora ($0E.b,S),Y		; 13 0E
	ora ($0C.b,S),Y		; 13 0C
	sbc ($28.b,S),Y		; F3 28
	ora [$11.b],Y		; 17 11
	asl $FC02.w		; 0E 02 FC
	asl $0D0E.w		; 0E 0E 0D
	ora $0A0F08.l		; 0F 08 0F 0A
	ora $EE0C0B.l		; 0F 0B 0C EE
	inx		; E8
	sbc ($F1.b),Y		; F1 F1
	sta [$87.b]		; 87 87
	brk $01.b		; 00 01
	brk $82.b		; 00 82
	ora ($84.b,X)		; 01 84
	sta ($44.b,X)		; 81 44
	sta [$48.b]		; 87 48
	tsb $FB.b		; 04 FB
	php		; 08
	ora [$C6.b]		; 07 C6
	cmp $00.b		; C5 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $82.b,S		; 03 82
	sta $86.b,S		; 83 86
	sta [$07.b]		; 87 07
	tsb $F9.b		; 04 F9
	sed		; F8
	inc $01FE.w,X		; FE FE 01
	tsb $03.b		; 04 03
	asl $05.b		; 06 05
	ora $1E.b,S		; 03 1E
	ora $33.b		; 05 33
	cmp ($BB.b),Y		; D1 BB
	bra -65.b		; 80 BF
	clc		; 18
	lda $D8.b,X		; B5 D8
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $01.b		; 05 01
	bpl  12.b		; 10 0C
	rti		; 40

	tsb $D8.b		; 04 D8
	brk $1A.b		; 00 1A
	cop $FC.b		; 02 FC
	asl $C0.b		; 06 C0
	bit $10.b,X		; 34 10
	clc		; 18
	php		; 08
	beq -68.b		; F0 BC
	and ($ED.b,X)		; 21 ED
	inc A		; 1A
	jsr ($72D3.w,X)		; FC D3 72
	cmp $F8.b,S		; C3 F8
	brk $E8.b		; 00 E8
	jsr $00E0.w		; 20 E0 00
	cpy #$C0.b		; C0 C0
	jsr $094C.w		; 20 4C 09
	ora $1CC0.w,X		; 1D C0 1C
	cpy $0010.w		; CC 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
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
	beq -32.b		; F0 E0
	bvs -96.b		; 70 A0
	bne  96.b		; D0 60
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F0.b		; E0 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	bra  96.b		; 80 60
	rti		; 40

	ldy #$C0.b		; A0 C0
	ldy #$C0.b		; A0 C0
	ldy #$80.b		; A0 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	stz $46A0.w		; 9C A0 46
	bvc  35.b		; 50 23
	txa		; 8A
	and ($00.b),Y		; 31 00
	lda $F801.w,Y		; B9 01 F8
	and ($C8.b),Y		; 31 C8
	and ($C8.b),Y		; 31 C8
	bvs 112.b		; 70 70
	ldy $DEBC.w,X		; BC BC DE
	dec $CECE.w,X		; DE CE CE
	cmp [$C7.b]		; C7 C7
	eor [$57.b],Y		; 57 57
	and [$37.b],Y		; 37 37
	adc [$77.b],Y		; 77 77
	adc ($88.b),Y		; 71 88
	rts		; 60

	sta $916A.w,Y		; 99 6A 91
	mvp $98,$B3		; 44 B3 98
	ror $20.b		; 66 20
	jmp.w [$F000]		; DC 00 F0
	brk $00.b		; 00 00
	adc [$77.b],Y		; 77 77
	adc [$77.b],Y		; 77 77
	ror $6E6E.w		; 6E 6E 6E
	ror $DCDC.w		; 6E DC DC
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$80.b		; E0 80
	clv		; B8
	brk $77.b		; 00 77
	cli		; 58
	sbc $0FF6BF.l,X		; FF BF F6 0F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	rti		; 40

	sta $003F9E.l,X		; 9F 9E 3F 00
	adc $000F00.l,X		; 7F 00 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	asl $1804.w		; 0E 04 18
	ora ($30.b,X)		; 01 30
	ora ($21.b)		; 12 21
	tsb $63.b		; 04 63
	and #$0046.w		; 29 46 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $1E1F1F.l		; 0F 1F 1F 1E
	asl $3C3C.w,X		; 1E 3C 3C
	and $1439.w,Y		; 39 39 14
	lsr A		; 4A
	asl A		; 0A
	mvn $54,$08		; 54 08 54
	ora $68.b,X		; 15 68
	bpl 105.b		; 10 69
	bpl 105.b		; 10 69
	ora ($29.b)		; 12 29
	brk $3A.b		; 00 3A
	and $35.b,X		; 35 35
	pld		; 2B
	pld		; 2B
	pld		; 2B
	pld		; 2B
	ora [$17.b],Y		; 17 17
	asl $16.b,X		; 16 16
	asl $16.b,X		; 16 16
	asl $16.b,X		; 16 16
	trb $14.b		; 14 14
	ora $0C.b,S		; 03 0C
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	cop $06.b		; 02 06
	ora $06.b,S		; 03 06
	ora [$01.b]		; 07 01
	phd		; 0B
	ora [$0F.b]		; 07 0F
	ora [$07.b]		; 07 07
	tsb $03.b		; 04 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	asl $07.b		; 06 07
	brk $20.b		; 00 20
	stz $A0.b		; 64 A0
	ror $84.b		; 66 84
	ror $14.b		; 66 14
	ror $97.b,X		; 76 97
	bvs -49.b		; 70 CF
	ldx $DF.b,Y		; B6 DF
	ldx $9E6F.w		; AE 6F 9E
	tya		; 98
	brk $9C.b		; 00 9C
	tsb $B8.b		; 04 B8
	jsr $0088.w		; 20 88 00
	php		; 08
	brk $94.b		; 00 94
	stx $06.b,Y		; 96 06
	dey		; 88
	stx $1610.w		; 8E 10 16
	tsb $12.b		; 04 12
	tsb $2D.b		; 04 2D
	clc		; 18
	and $4518.w,X		; 3D 18 45
	plp		; 28
	eor $7810.w,Y		; 59 10 78
	bmi 112.b		; 30 70
	brk $04.b		; 00 04
	php		; 08
	tsb $08.b		; 04 08
	clc		; 18
	brk $18.b		; 00 18
	brk $28.b		; 00 28
	bpl  16.b		; 10 10
	jsr $0030.w		; 20 30 00
	brk $00.b		; 00 00
	beq  96.b		; F0 60
	bne  96.b		; D0 60
	bvc -32.b		; 50 E0
	beq -32.b		; F0 E0
	tay		; A8
	beq  -4.b		; F0 FC
	sec		; 38
	jmp ($0000.w,X)		; 7C 00 00
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	cld		; D8
	dey		; 88
	ora ($28.b)		; 12 28
	ora ($45.b)		; 12 45
	dec A		; 3A
	bra  95.b		; 80 5F
	phd		; 0B
	tya		; 98
	ora $019B.w		; 0D 9B 01
	ora $6F6F.w		; 0D 6F 6F
	sbc $EDEDEF.l		; EF EF ED ED
	cmp $80CD.w		; CD CD 80
	bra   4.b		; 80 04
	brk $06.b		; 00 06
	ora $07.b,S		; 03 07
	ora $5B.b		; 05 5B
	.db $42, $65		; 42 65
	cmp $BE10.w,Y		; D9 10 BE
	mvp $90,$AE		; 44 AE 90
.INDEX 8
	sep #$D5		; E2 D5
	rol A		; 2A
	sta $F64E.w,Y		; 99 4E F6
	ora ($FF.b,X)		; 01 FF
	sbc $45E7E7.l,X		; FF E7 E7 45
	eor $59.b		; 45 59
	eor #$011D.w		; 49 1D 01
	and $3129.w,Y		; 39 29 31
	eor $38.b		; 45 38
	brk $27.b		; 00 27
	tya		; 98
	inc A		; 1A
	ora $27.b		; 05 27
	clc		; 18
	and $1F03.w,X		; 3D 03 1F
	ora $17.b,S		; 03 17
	ora $023F.w		; 0D 3F 02
	and $021A15.l		; 2F 15 1A 02
	ora $00.b		; 05 00
	clc		; 18
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $021F00.l,X		; 1F 00 1F 02
	ora $15.b,S		; 03 15
	ora ($2B.b,X)		; 01 2B
	cmp $3CD1.w,Y		; D9 D1 3C
	bit $EDC2.w,X		; 3C C2 ED
	bpl -43.b		; 10 D5
	inx		; E8
	jsr ($F4C0.w,X)		; FC C0 F4
	tay		; A8
	jsr ($C650.w,X)		; FC 50 C6
	brk $03.b		; 00 03
	bmi -63.b		; 30 C1
	clc		; 18
	brk $18.b		; 00 18
	dey		; 88
	beq -128.b		; F0 80
	beq   8.b		; F0 08
	cpx #$50.b		; E0 50
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	brk $20.b		; 00 20
	cpy #$E0.b		; C0 E0
	brk $A0.b		; 00 A0
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	clc		; 18
	stp		; DB
	ora $7F0FDC.l		; 0F DC 0F 7F
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $78.b		; 00 78
	bpl 127.b		; 10 7F
	ora #$08BF.w		; 09 BF 08
	lda $044F00.l		; AF 00 4F 04
	inc A		; 1A
	brk $06.b		; 00 06
	sec		; 38
	ora [$F7.b]		; 07 F7
	bpl -12.b		; 10 F4
	cpx #$FC.b		; E0 FC
	xba		; EB
	jsr ($0000.w,X)		; FC 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	iny		; C8
	adc $E8.b,S		; 63 E8
	iny		; C8
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $E0.b		; 00 E0
	brk $B0.b		; 00 B0
	rti		; 40

	inx		; E8
	jsr $40C8.w		; 20 C8 40
	sed		; F8
	bvs  -4.b		; 70 FC
	brk $24.b		; 00 24
	clc		; 18
	bit $0000.w,X		; 3C 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	bmi  64.b		; 30 40
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora $180919.l		; 0F 19 09 18
	ora #$0819.w		; 09 19 08
	ora ($02.b,S),Y		; 13 02
	ora ($02.b,S),Y		; 13 02
	and ($12.b,X)		; 21 12
	and [$14.b]		; 27 14
	ora $060900.l		; 0F 00 09 06
	ora #$0806.w		; 09 06 08
	asl $02.b		; 06 02
	tsb $0C02.w		; 0C 02 0C
	ora ($0C.b)		; 12 0C
	trb $08.b		; 14 08
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	cpy #$E0.b		; C0 E0
	cpy #$60.b		; C0 60
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	.db $82, $01, $84		; 82 01 84
	sta ($44.b,X)		; 81 44
	sta [$48.b]		; 87 48
	tsb $FB.b		; 04 FB
	php		; 08
	ora [$C6.b]		; 07 C6
	cmp $00.b		; C5 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $82.b,S		; 03 82
	sta $86.b,S		; 83 86
	sta [$07.b]		; 87 07
	tsb $F9.b		; 04 F9
	sed		; F8
	inc $00FE.w,X		; FE FE 00
	cpy #$80.b		; C0 80
	rts		; 60

	rti		; 40

	ldy #$C0.b		; A0 C0
	ldy #$C0.b		; A0 C0
	ldy #$80.b		; A0 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$C0.b		; C0 C0
	cpy #$80.b		; C0 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $E8.b		; 00 E8
	and ($C0.b)		; 32 C0
	bit $10.b,X		; 34 10
	clc		; 18
	brk $F0.b		; 00 F0
	sed		; F8
	lda ($79.b),Y		; B1 79
	.db $82, $5F, $00		; 82 5F 00
	lda $00CC1F.l,X		; BF 1F CC 00
	sed		; F8
	bmi -32.b		; 30 E0
	brk $C0.b		; 00 C0
	cpy #$30.b		; C0 30
	brk $01.b		; 00 01
	ora ($80.b,X)		; 01 80
	and $745F1F.l		; 2F 1F 5F 74
	dey		; 88
	adc [$9B.b]		; 67 9B
	adc $B64990.l		; 6F 90 49 B6
	sta $DC3E60.l,X		; 9F 60 3E DC
	dec $DE3C.w,X		; DE 3C DE
	pea $7370.w		; F4 70 73
	adc ($70.b,S),Y		; 73 70
	rts		; 60

	rts		; 60

	ror $60.b		; 66 60
	cpy #$DE.b		; C0 DE
	tsb $143E.w		; 0C 3E 14
	inc $FE84.w,X		; FE 84 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	tsb $18.b		; 04 18
	php		; 08
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	ora $001F1F.l		; 0F 1F 1F 00
	asl $1108.w		; 0E 08 11
	ora $12.b		; 05 12
	asl $13.b		; 06 13
	asl $ECF3.w		; 0E F3 EC
	ora ($28.b,S),Y		; 13 28
	ora [$11.b],Y		; 17 11
	asl $0000.w		; 0E 00 00
	asl $0D0E.w		; 0E 0E 0D
	ora $0A0F08.l		; 0F 08 0F 0A
	ora $EEECEB.l		; 0F EB EC EE
	inx		; E8
	sbc ($F1.b),Y		; F1 F1
	jmp.w [$5C88]		; DC 88 5C
	bpl 104.b		; 10 68
	rti		; 40

	sec		; 38
	brk $E0.b		; 00 E0
	bpl -32.b		; 10 E0
	beq -32.b		; F0 E0
	bmi -64.b		; 30 C0
	bmi -120.b		; 30 88
	jsr $A010.w		; 20 10 A0
	rti		; 40

	bcc   0.b		; 90 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	rti		; 40

	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	asl $1738.w		; 0E 38 17
	rol $09.b,X		; 36 09
	and #$1F16.w		; 29 16 1F
	ora ($1F.b,X)		; 01 1F
	ora [$1F.b]		; 07 1F
	asl A		; 0A
	and $300115.l,X		; 3F 15 01 30
	tsb $30.b		; 04 30
	ora ($38.b,X)		; 01 38
	asl $30.b		; 06 30
	brk $11.b		; 00 11
	cop $1F.b		; 02 1F
	brk $0F.b		; 00 0F
	ora $07.b,X		; 15 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpx #$C0.b		; E0 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpy #$E0.b		; C0 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	adc $65F72A.l,X		; 7F 2A F7 65
	cmp [$65.b],Y		; D7 65
	adc [$15.b],Y		; 77 15
	and [$05.b]		; 27 05
	ora $1F0D00.l,X		; 1F 00 0D 1F
	php		; 08
	inc A		; 1A
	rol A		; 2A
	cop $65.b		; 02 65
	php		; 08
	adc $08.b		; 65 08
	ora $08.b,X		; 15 08
	ora $18.b		; 05 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	lsr $D1.b		; 46 D1
	lsr $D1.b		; 46 D1
	bit $2EF1.w		; 2C F1 2E
	sbc ($2C.b,S),Y		; F3 2C
	adc ($1C.b,S),Y		; 73 1C
	adc $3E.b,S		; 63 3E
	eor $1E3D.w,X		; 5D 3D 1E
	and $002E01.l		; 2F 01 2E 00
	lsr $4C40.w		; 4E 40 4C
	rti		; 40

	asl $2202.w		; 0E 02 22
	jsl $0C1C18.l		; 22 18 1C 0C
	ora ($20.b)		; 12 20
	mvn $74,$08		; 54 08 74
	php		; 08
	bit $00.b,X		; 34 00
	sec		; 38
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0D.b,S		; 03 0D
	ora ($04.b,X)		; 01 04
	ora ($06.b,X)		; 01 06
	ora $053703.l,X		; 1F 03 37 05
	eor $7C36.w,Y		; 59 36 7C
	and ($73.b,X)		; 21 73
	jsr $0507.w		; 20 07 05
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	tsb $38.b		; 04 38
	brk $78.b		; 00 78
	rol $0F70.w		; 2E 70 0F
	bvs  38.b		; 70 26
	trb $32.b		; 14 32
	trb $3A.b		; 14 3A
	trb $183C.w		; 1C 3C 18
	bit $4C08.w		; 2C 08 4C
	php		; 08
	clv		; B8
	bmi -16.b		; 30 F0
	brk $14.b		; 00 14
	php		; 08
	trb $08.b		; 14 08
	trb $1800.w		; 1C 00 18
	brk $08.b		; 00 08
	bpl   8.b		; 10 08
	bmi  48.b		; 30 30
	rti		; 40

	brk $00.b		; 00 00
	bne  96.b		; D0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5B.b		; 00 5B
	.db $42, $65		; 42 65
	cmp $BE10.w,Y		; D9 10 BE
	mvp $98,$AE		; 44 AE 98
.INDEX 8
	sep #$D5		; E2 D5
	rol A		; 2A
	txy		; 9B
	jmp $01F6.w		; 4C F6 01
	sbc $E7E7FF.l,X		; FF FF E7 E7
	eor $45.b		; 45 45
	eor $1D49.w,Y		; 59 49 1D
	ora ($39.b,X)		; 01 39
	and #$4531.w		; 29 31 45
	sec		; 38
	brk $40.b		; 00 40
	stz $46A0.w		; 9C A0 46
	bvc  35.b		; 50 23
	txa		; 8A
	and ($00.b),Y		; 31 00
	lda $F801.w,Y		; B9 01 F8
	and ($C8.b,S),Y		; 33 C8
	and $C9.b,X		; 35 C9
	bvs 112.b		; 70 70
	ldy $DEBC.w,X		; BC BC DE
	dec $CECE.w,X		; DE CE CE
	cmp [$C7.b]		; C7 C7
	lsr $56.b,X		; 56 56
	bit $34.b,X		; 34 34
	adc ($73.b),Y		; 71 73
	sbc $00FF5F.l,X		; FF 5F FF 00
	cmp #$7B30.w		; C9 30 7B
	stx $D1.b		; 86 D1
	.db $62, $F8, $80		; 62 F8 80
	sed		; F8
	bvc -68.b		; 50 BC
	plp		; 28
	eor $1F001F.l		; 4F 1F 00 1F
	rol $00.b,X		; 36 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	bra -128.b		; 80 80
	bvc   0.b		; 50 00
	plp		; 28
	rti		; 40

	dec $F4E8.w,X		; DE E8 F4
	brk $F8.b		; 00 F8
	bra  -1.b		; 80 FF
	bcs 125.b		; B0 7D
	lda $0F0FF7.l,X		; BF F7 0F 0F
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	inc $00.b,X		; F6 00
	inx		; E8
	bra  32.b		; 80 20
	bra  63.b		; 80 3F
	clv		; B8
	and $003F01.l,X		; 3F 01 3F 00
	ora $120000.l		; 0F 00 00 12
	adc ($28.b,X)		; 61 28
	eor [$15.b]		; 47 15
	dex		; CA
	lsr A		; 4A
	sty $11.b,X		; 94 11
	ldy $A914.w		; AC 14 A9
	bvc -86.b		; 50 AA
	bit $D2.b		; 24 D2
	and $38383F.l,X		; 3F 3F 38 38
	adc $75.b,X		; 75 75
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	lsr $56.b,X		; 56 56
	mvn $2C,$54		; 54 54 2C
	bit $FC02.w		; 2C 02 FC
	stz $98.b		; 64 98
	plp		; 28
	ora ($88.b)		; 12 88
	adc ($05.b)		; 72 05
	phx		; DA
	brk $1F.b		; 00 1F
	phd		; 0B
	clc		; 18
	ora $071B.w		; 0D 1B 07
	ora [$EF.b]		; 07 EF
	sbc $CDEFEF.l		; EF EF EF CD
	cmp $0D0D.w		; CD 0D 0D
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $03.b		; 06 03
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $11.b		; 00 11
	cop $F4.b		; 02 F4
	and $16.b,S		; 23 16
	ora #$0016.w		; 09 16 00
	sbc $00CE31.l,X		; FF 31 CE 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $0F09.w		; 0E 09 0F
	inx		; E8
	sbc $06E9EE.l		; EF EE E9 06
	brk $71.b		; 00 71
	adc ($00.b),Y		; 71 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $80.b,S		; 83 80
	mvp $4A,$81		; 44 81 4A
	ora $FE.b,S		; 03 FE
	php		; 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	sta $84.b,S		; 83 84
	sta [$00.b]		; 87 00
	ora [$FB.b]		; 07 FB
	sed		; F8
	ora $0C.b		; 05 0C
	cop $06.b		; 02 06
	ora ($07.b,X)		; 01 07
	clc		; 18
	ora $2C.b,S		; 03 2C
	tas		; 1B
	and $103810.l,X		; 3F 10 38 10
	sec		; 38
	ora [$03.b]		; 07 03
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora $3C00.w,Y		; 19 00 3C
	ora [$38.b],Y		; 17 38
	ora [$38.b]		; 07 38
	brk $38.b		; 00 38
	inc $C039.w		; EE 39 C0
	and ($CC.b)		; 32 CC
	rol $BF.b,X		; 36 BF
	bra  47.b		; 80 2F
	cmp [$AF.b]		; C7 AF
	ora [$3F.b]		; 07 3F
	bpl  60.b		; 10 3C
	cmp [$D0.b]		; C7 D0
	bpl  -4.b		; 10 FC
	bmi  -8.b		; 30 F8
	bmi  64.b		; 30 40
	ora [$07.b]		; 07 07
	ora [$C6.b],Y		; 17 C6
	ora [$D0.b],Y		; 17 D0
	ora [$00.b]		; 07 00
	brk $19.b		; 00 19
	asl A		; 0A
	asl $04.b,X		; 16 04
	jsl $183C14.l		; 22 14 3C 18
	mvp $58,$28		; 44 28 58
	bpl -80.b		; 10 B0
	jsr $00E0.w		; 20 E0 00
	asl A		; 0A
	tsb $04.b		; 04 04
	php		; 08
	trb $08.b		; 14 08
	clc		; 18
	brk $28.b		; 00 28
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	brk $00.b		; 00 00
	jmp $1C2E38.l		; 5C 38 2E 1C
	ora $0E.b,X		; 15 0E
	phd		; 0B
	asl $07.b		; 06 07
	cop $07.b		; 02 07
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	rti		; 40

	cpx #$80.b		; E0 80
	rts		; 60

	rti		; 40

	cpx #$C0.b		; E0 C0
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	trb $3008.w		; 1C 08 30
	ora ($60.b),Y		; 11 60
	bit $43.b		; 24 43
	asl A		; 0A
	cmp $55.b		; C5 55
	txa		; 8A
	eor $9A.b		; 45 9A
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	bit $7A3C.w,X		; 3C 3C 7A
	ply		; 7A
	adc $75.b,X		; 75 75
	adc $75.b,X		; 75 75
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $F0.b		; 00 F0
	bmi -52.b		; 30 CC
	bra  70.b		; 80 46
	sta ($62.b),Y		; 91 62
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	ldy $DEBC.w,X		; BC BC DE
	dec $946B.w,X		; DE 6B 94
	rtl		; 6B

	sty $2A.b,X		; 94 2A
	cmp $2A.b,X		; D5 2A
	eor $14.b,X		; 55 14
	pld		; 2B
	tsb $1B.b		; 04 1B
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	rtl		; 6B

	rtl		; 6B

	rtl		; 6B

	rtl		; 6B

	ror A		; 6A
	ror A		; 6A
	rol A		; 2A
	rol A		; 2A
	trb $14.b		; 14 14
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	lsr A		; 4A
	bcs  86.b		; B0 56
	tay		; A8
	ora ($ED.b,S),Y		; 13 ED
	and $631C40.l,X		; 3F 40 1C 63
	ora $2E1F20.l,X		; 1F 20 1F 2E
	sbc $CDCC1E.l		; EF 1E CC CD
	mvn $39,$55		; 54 55 39
	sec		; 38
	sec		; 38
	sec		; 38
	tsa		; 3B
	sec		; 38
	bpl  31.b		; 10 1F
	asl $1F.b		; 06 1F
	asl A		; 0A
	sbc $EBFA6F.l,X		; FF 6F FA EB
	beq 112.b		; F0 70
	bra -127.b		; 80 81
	brk $FE.b		; 00 FE
	ora ($FF.b,X)		; 01 FF
	eor $FE5EB9.l,X		; 5F B9 5E FE
	brk $02.b		; 00 02
	sbc $00FBC0.l,X		; FF C0 FB 00
	beq   0.b		; F0 00
	sta ($00.b,X)		; 81 00
	ora $401F5C.l,X		; 1F 5C 1F 40
	ora $001E00.l,X		; 1F 00 1E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $1E.b		; 00 1E
	ora $0D3E.w		; 0D 3E 0D
	and $16351E.l		; 2F 1E 35 16
	lsr $24.b		; 46 24
	.db $62, $24, $4C		; 62 24 4C
	php		; 08
	sty $58.b,X		; 94 58
	tsb $0C.b		; 04 0C
	tsb $1C04.w		; 0C 04 1C
	cop $14.b		; 02 14
	asl A		; 0A
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	php		; 08
	bmi  88.b		; 30 58
	jsr $156F.w		; 20 6F 15
	sbc $59FF6A.l,X		; FF 6A FF 59
	sbc $52DB26.l		; EF 26 DB 52
	tda		; 7B
	and #$0133.w		; 29 33 01
	ora $071130.l,X		; 1F 30 11 07
	ror A		; 6A
	ora $59.b,S		; 03 59
	ora ($26.b,X)		; 01 26
	bpl  82.b		; 10 52
	bit $29.b		; 24 29
	tsb $01.b		; 04 01
	tsb $0000.w		; 0C 00 00
	jmp.w [$FA60]		; DC 60 FA
	sty $EF.b,X		; 94 EF
	lsr $AF.b		; 46 AF
	txa		; 8A
	rol $10.b,X		; 36 10
	bit $10.b,X		; 34 10
	sec		; 38
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	cpx #$94.b		; E0 94
	bra  70.b		; 80 46
	bpl -118.b		; 10 8A
	bvc  16.b		; 50 10
	iny		; C8
	bpl -56.b		; 10 C8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpx $18.b		; E4 18
	cpy #$38.b		; C0 38
	dey		; 88
	adc ($08.b),Y		; 71 08
	sta $08.b,X		; 95 08
	sta $05.b,X		; 95 05
	inc A		; 1A
	ora ($1F.b,X)		; 01 1F
	phd		; 0B
	clc		; 18
	sbc [$F7.b],Y		; F7 F7
	sbc $8F8FEF.l		; EF EF 8F 8F
	asl $0A0E.w		; 0E 0E 0A
	asl A		; 0A
	tsb $030C.w		; 0C 0C 03
	ora $07.b,S		; 03 07
	brk $E4.b		; 00 E4
	sbc $40.b,S		; E3 40
	rti		; 40

	ora #$9535.w		; 09 35 95
	and $FDA248.l,X		; 3F 48 A2 FD
	rol $96.b		; 26 96
	adc ($F2.b,X)		; 61 F2
	ora $FC.b		; 05 FC
	jsr ($FFFF.w,X)		; FC FF FF
	wai		; CB
	wai		; CB
	cmp ($C1.b,X)		; C1 C1
	eor $1941.w,X		; 5D 41 19
	ora ($38.b,X)		; 01 38
	rts		; 60

	sec		; 38
	tsb $3D.b		; 04 3D
	asl $2E11.w		; 0E 11 2E
	and $1C2300.l,X		; 3F 00 23 1C
	adc $BE12.w		; 6D 12 BE
	eor $FF5FBF.l		; 4F BF 5F FF
	trb $200E.w		; 1C 0E 20
	asl $0000.w		; 0E 00 00
	brk $1C.b		; 00 1C
	brk $10.b		; 00 10
	cop $44.b		; 02 44
	and $183F4E.l		; 2F 4E 3F 18
	and $6B00F8.l,X		; 3F F8 00 6B
	and [$C8.b],Y		; 37 C8
	and ($F8.b,S),Y		; 33 F8
	brk $10.b		; 00 10
	cpx #$F0.b		; E0 F0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	bra   7.b		; 80 07
	brk $B0.b		; 00 B0
	bra -80.b		; 80 B0
	bra   0.b		; 80 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	cpy #$10.b		; C0 10
	tya		; 98
	pha		; 48
	cpy $403E.w		; CC 3E 40
	and $171E.w,X		; 3D 1E 17
	ora $05070B.l		; 0F 0B 07 05
	ora $02.b,S		; 03 02
	ora ($60.b,X)		; 01 60
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	asl $000F.w,X		; 1E 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	bne -32.b		; D0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	ora ($09.b,X)		; 01 09
	asl $0518.w		; 0E 18 05
	ora ($1E.b),Y		; 11 1E
	and ($18.b,S),Y		; 33 18
	and $3C.b,S		; 23 3C
	ror $3A.b		; 66 3A
	ror $0EE2.w		; 6E E2 0E
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	asl $0D00.w		; 0E 00 0D
	ora ($1C.b,X)		; 01 1C
	brk $19.b		; 00 19
	brk $11.b		; 00 11
	brk $19.b		; 00 19
	php		; 08
	cpy #$F0.b		; C0 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ora $05.b,S		; 03 05
	ora $0D.b,S		; 03 0D
	ora $3A.b		; 05 3A
	trb $63.b		; 14 63
	plp		; 28
	eor [$14.b]		; 47 14
	wai		; CB
	eor $9A.b		; 45 9A
	tsb $0292.w		; 0C 92 02
	ora $03.b,S		; 03 03
	ora $0D.b,S		; 03 0D
	ora $3D3D.w		; 0D 3D 3D
	dec A		; 3A
	dec A		; 3A
	ror $76.b,X		; 76 76
	adc $75.b,X		; 75 75
	adc $806D.w		; 6D 6D 80
	and [$E0.b]		; 27 E0
	trb $F109.w		; 1C 09 F1
	and ($C1.b,X)		; 21 C1
	lda $4ED021.l		; AF 21 D0 4E
	eor $7E.b		; 45 7E
	sta ($3A.b),Y		; 91 3A
	rti		; 40

	cpy #$67.b		; C0 67
	sbc [$DF.b]		; E7 DF
	ora $FF3F3F.l,X		; 1F 3F 3F FF
	sbc $D1F1F1.l,X		; FF F1 F1 D1
	cmp ($CC.b),Y		; D1 CC
	iny		; C8
	php		; 08
	sbc [$43.b],Y		; F7 43
	bit $98A4.w,X		; 3C A4 98
	bpl  15.b		; 10 0F
	php		; 08
	ldy $08.b		; A4 08
	ldy $50.b		; A4 50
	ldy $3CC0.w		; AC C0 3C
	sec		; 38
	php		; 08
	cmp [$C7.b]		; C7 C7
	sbc [$F7.b],Y		; F7 F7
	sed		; F8
	sed		; F8
	sed		; F8
	sed		; F8
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	brk $00.b		; 00 00
	bpl -31.b		; 10 E1
	sta $78.b		; 85 78
	jsl $0A951C.l		; 22 1C 95 0A
	rol A		; 2A
	cmp $12.b		; C5 12
	and $0D.b		; 25 0D
	ora ($05.b)		; 12 05
	asl A		; 0A
	and $C7C73F.l,X		; 3F 3F C7 C7
	sbc $E3.b,S		; E3 E3
	sbc $F5.b,X		; F5 F5
	dec A		; 3A
	dec A		; 3A
	inc A		; 1A
	inc A		; 1A
	ora $050D.w		; 0D 0D 05
	ora $0C.b		; 05 0C
	ora [$08.b]		; 07 08
	asl $07.b		; 06 07
	brk $07.b		; 00 07
	cop $07.b		; 02 07
	cop $0E.b		; 02 0E
	ora $0F.b		; 05 0F
	ora $1C.b		; 05 1C
	asl A		; 0A
	brk $0E.b		; 00 0E
	ora ($0C.b,X)		; 01 0C
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	asl A		; 0A
	ora ($07.b,X)		; 01 07
	sbc $CD7B.w,X		; FD 7B CD
	cmp $ED06.w,X		; DD 06 ED
.ACCU 16
.INDEX 16
	rep #$F6		; C2 F6
	stp		; DB
	sbc $E8.b,X		; F5 E8
	eor $507768.l,X		; 5F 68 77 50
	ora ($03.b,X)		; 01 03
	bmi   3.b		; 30 03
	sec		; 38
	ora ($5C.b,X)		; 01 5C
	cmp ($CC.b,X)		; C1 CC
	pha		; 48
	dec $4628.w		; CE 28 46
	ldy #$804E.w		; A0 4E 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora ($08.b,X)		; 01 08
	asl A		; 0A
	trb $06.b		; 14 06
	trb $2C17.w		; 1C 17 2C
	ora ($2C.b,S),Y		; 13 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	phd		; 0B
	ora $150F01.l		; 0F 01 0F 15
	ora $00131D.l,X		; 1F 1D 13 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	inc $C33C.w,X		; FE 3C C3
	eor ($80.b,X)		; 41 80
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	ror $7F7F.w,X		; 7E 7F 7F
	adc $80007F.l,X		; 7F 7F 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	ldy #$4010.w		; A0 10 40
	tya		; 98
	ldy #$4048.w		; A0 48 40
	tay		; A8
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	cpx #$E0E0.w		; E0 E0 E0
	bvs 112.b		; 70 70
	bcs -80.b		; B0 B0
	bvc  80.b		; 50 50
	bvc -88.b		; 50 A8
	ldy #$A058.w		; A0 58 A0
	cli		; 58
	ldy #$0050.w		; A0 50 00
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
	brk $80.b		; 00 80
	bvc  80.b		; 50 50
	ldy #$A0A0.w		; A0 A0 A0
	ldy #$A0A0.w		; A0 A0 A0
	jsr $4020.w		; 20 20 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$02.b]		; 07 02
	ora $02.b		; 05 02
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $70.b		; 00 70
	jsr $50C8.w		; 20 C8 50
	ldy $00.b		; A4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs  88.b		; 70 58
	sei		; 78
	inx		; E8
	cpy $F8.b		; C4 F8
	cmp ($E4.b)		; D2 E4
	cmp ($1C.b)		; D2 1C
.ACCU 8
.INDEX 8
	sep #$FA		; E2 FA
	bvs  -3.b		; 70 FD
	clv		; B8
	sbc $C0FE1A.l,X		; FF 1A FE C0
	cld		; D8
	cpx #$CC.b		; E0 CC
	cpx #$4C.b		; E0 4C
	cpx #$00.b		; E0 00
	beq  32.b		; F0 20
	jsr ($FA10.w,X)		; FC 10 FA
	asl A		; 0A
	sec		; 38
	cpy #$18.b		; C0 18
	bit $AE10.w,X		; 3C 10 AE
	tsb $AF.b		; 04 AF
	asl $ED.b		; 06 ED
	dey		; 88
	sbc [$C0.b]		; E7 C0
	bit $00C0.w,X		; 3C C0 00
	beq   0.b		; F0 00
	brk $10.b		; 00 10
	cpy #$04.b		; C0 04
	bvc   6.b		; 50 06
	bvc   8.b		; 50 08
	ora ($00.b)		; 12 00
	clc		; 18
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	stx $08.b,Y		; 96 08
	sta [$40.b],Y		; 97 40
	sta $D800.w,X		; 9D 00 D8
	jsr $0058.w		; 20 58 00
	sei		; 78
	brk $38.b		; 00 38
	brk $0C.b		; 00 0C
	adc $696D.w		; 6D 6D 69
	adc #$68.b		; 69 68
	pla		; 68
	rts		; 60

	rts		; 60

	jsr $2020.w		; 20 20 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	ora $B3.b,X		; 15 B3
	eor $B1.b		; 45 B1
	eor $4037A0.l,X		; 5F A0 37 40
	trb $23.b		; 14 23
	php		; 08
	tas		; 1B
	adc ($0F.b,S),Y		; 73 0F
	jsr ($CE67.w,X)		; FC 67 CE
	cmp $5F.b,S		; C3 5F
	eor ($47.b),Y		; 51 47
	rti		; 40

	ora $010D00.l		; 0F 00 0D 01
	ora [$03.b]		; 07 03
	brk $70.b		; 00 70
	stz $F0.b		; 64 F0
	dey		; 88
	jmp ($0CF8.w)		; 6C F8 0C
	inc $08.b		; E6 08
	cmp $AB14.w		; CD 14 AB
	sec		; 38
	ora $73.b,X		; 15 73
	lda $C07ED2.l,X		; BF D2 7E C0
	bmi  96.b		; 30 60
	bmi   0.b		; 30 00
	beq   0.b		; F0 00
	cpx $02.b		; E4 02
	iny		; C8
	ora [$D1.b]		; 07 D1
	eor $010F10.l		; 4F 10 0F 01
	asl $0A05.w,X		; 1E 05 0A
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	bra  12.b		; 80 0C
	cpy #$80.b		; C0 80
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	asl $390A.w,X		; 1E 0A 39
	ora $EA.b,X		; 15 EA
	and ($D1.b,S),Y		; 33 D1
	ror A		; 6A
	ror $9C1C.w		; 6E 1C 9C
	tya		; 98
	pea $7878.w		; F4 78 78
	brk $0A.b		; 00 0A
	ora ($15.b,X)		; 01 15
	cop $33.b		; 02 33
	tsb $6A.b		; 04 6A
	tsb $1C.b		; 04 1C
	bra -104.b		; 80 98
	rts		; 60

	sei		; 78
	brk $00.b		; 00 00
	brk $C7.b		; 00 C7
	bcs -85.b		; B0 AB
	adc $7CA4.w,Y		; 79 A4 7C
	ora ($7E.b)		; 12 7E
	ora ($3F.b),Y		; 11 3F
	brk $1F.b		; 00 1F
	ora $0A.b		; 05 0A
	brk $00.b		; 00 00
	ldx $4620.w		; AE 20 46
	rti		; 40

	ora ($10.b,S),Y		; 13 10
	and $24.b		; 25 24
	asl A		; 0A
	asl A		; 0A
	php		; 08
	tsb $0700.w		; 0C 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $1C.b,S		; 03 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $50C8.w		; 20 C8 50
	ldy $70.b		; A4 70
	ldy $7C.b		; A4 7C
	lda $00.b,S		; A3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs  88.b		; 70 58
	sei		; 78
	pha		; 48
	sei		; 78
	jmp ($7C7C.w)		; 6C 7C 7C
	and ($F6.b,S),Y		; 33 F6
	and $5CA7.w,Y		; 39 A7 5C
	and $766FCE.l,X		; 3F CE 6F 76
	adc [$18.b],Y		; 77 18
	adc $C09408.l,X		; 7F 08 94 C0
	ora ($7C.b,S),Y		; 13 7C
	ora ($7E.b,X)		; 01 7E
	rti		; 40

	rol $3E06.w,X		; 3E 06 3E
	.db $82, $0E, $E0		; 82 0E E0
	ora [$F0.b]		; 07 F0
	brk $78.b		; 00 78
	eor $18.b,S		; 43 18
	bra  40.b		; 80 28
	bcc -82.b		; 90 AE
	bpl  74.b		; 10 4A
	trb $BA.b		; 14 BA
	sty $FA.b,X		; 94 FA
	mvp $30,$EF		; 44 EF 30
	inc $6085.w,X		; FE 85 60
	clc		; 18
	rts		; 60

	php		; 08
	rts		; 60

	php		; 08
	bit $88.b		; 24 88
	sty $58.b		; 84 58
	mvp $00,$18		; 44 18 00
	sec		; 38
	sta $00.b		; 85 00
	brk $7F.b		; 00 7F
	rol $60C1.w,X		; 3E C1 60
	bra  64.b		; 80 40
	bra 112.b		; 80 70
	sta $1CFE01.l		; 8F 01 FE 1C
	sbc $61.b,S		; E3 61
	bra   0.b		; 80 00
	brk $7F.b		; 00 7F
	adc $7FFFFF.l,X		; 7F FF FF 7F
	adc $417878.l,X		; 7F 78 78 41
	eor ($3E.b,X)		; 41 3E
	rol $7F7F.w,X		; 3E 7F 7F
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$20.b		; C0 20
	jsr $1010.w		; 20 10 10
	iny		; C8
	bra 104.b		; 80 68
	pla		; 68
	sty $30.b,X		; 94 30
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	bvs 112.b		; 70 70
	bcc -112.b		; 90 90
	pla		; 68
	pla		; 68
	bcs -80.b		; B0 B0
	mvn $58,$A2		; 54 A2 58
	ldy $10.b		; A4 10
	inx		; E8
	bpl 104.b		; 10 68
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	jmp $58585C.l		; 5C 5C 58 58
	bvc  80.b		; 50 50
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	bit $06.b,X		; 34 06
	php		; 08
	cop $04.b		; 02 04
	ora $1E03.w,X		; 1D 03 1E
	ora $0C1E.w		; 0D 1E 0C
	inc A		; 1A
	tsb $061B.w		; 0C 1B 06
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $1C.b		; 00 1C
	tsb $081E.w		; 0C 1E 08
	asl $1E00.w,X		; 1E 00 1E
	brk $1F.b		; 00 1F
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	adc $E303.w,X		; 7D 03 E3
	and $3F.b,S		; 23 3F
	asl $000F.w		; 0E 0F 00
	ora $003C0C.l,X		; 1F 0C 3C 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	and $1C.b,S		; 23 1C
	asl $0000.w		; 0E 00 00
	brk $0C.b		; 00 0C
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D6.b		; 00 D6
	eor $B0A8.w,Y		; 59 A8 B0
	bvc  96.b		; 50 60
	cpx #$80.b		; E0 80
	ldy #$40.b		; A0 40
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $58.b		; 00 58
	jsr $40B0.w		; 20 B0 40
	rts		; 60

	bra -128.b		; 80 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	asl $06.b		; 06 06
	ora ($0F.b,X)		; 01 0F
	tsb $0F.b		; 04 0F
	cop $1F.b		; 02 1F
	asl $1F.b		; 06 1F
	asl $1637.w		; 0E 37 16
	adc $022E.w		; 6D 2E 02
	ora $040000.l		; 0F 00 00 04
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	cop $0E.b		; 02 0E
	cop $14.b		; 02 14
	asl A		; 0A
	bit $0012.w		; 2C 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	php		; 08
	asl A		; 0A
	trb $06.b		; 14 06
	trb $2C17.w		; 1C 17 2C
	ora ($2C.b,S),Y		; 13 2C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	phd		; 0B
	ora $150F01.l		; 0F 01 0F 15
	ora $01131D.l,X		; 1F 1D 13 01
	inc $8708.w,X		; FE 08 87
	bit $33.b,X		; 34 33
	jsl $34E121.l		; 22 21 E1 34
	ora ($D4.b,X)		; 01 D4
	tax		; AA
	cmp $38.b,X		; D5 38
	eor [$07.b]		; 47 07
	ora ($F8.b,X)		; 01 F8
	sed		; F8
	inc $FFFE.w,X		; FE FE FF
	sbc $2BFFFF.l,X		; FF FF FF 2B
	pld		; 2B
	pld		; 2B
	pld		; 2B
	bra   0.b		; 80 00
	lda ($6D.b),Y		; B1 6D
	lda $01FC21.l,X		; BF 21 FC 01
	sbc $9502.w,Y		; F9 02 95
	adc [$72.b]		; 67 72
	asl $74FD.w		; 0E FD 74
	sbc $6CC670.l,X		; FF 70 C6 6C
	inc $20.b		; E6 20
	inc $FC00.w,X		; FE 00 FC
	brk $B9.b		; 00 B9
	jsr $798A.w		; 20 8A 79
	stz $FA.b,X		; 74 FA
	bmi  -8.b		; 30 F8
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	rts		; 60

	rti		; 40

	beq   0.b		; F0 00
	inx		; E8
	bvs  -8.b		; 70 F8
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	bmi  32.b		; 30 20
	sed		; F8
	brk $F8.b		; 00 F8
	tsb $1030.w		; 0C 30 10
	rts		; 60

	and ($40.b,X)		; 21 40
	bpl -49.b		; 10 CF
	adc ($9E.b,X)		; 61 9E
	mvn $21,$A8		; 54 A8 21
	cld		; D8
	rol A		; 2A
	cmp ($1F.b),Y		; D1 1F
	ora $3F3F3F.l,X		; 1F 3F 3F 3F
	and $637878.l,X		; 3F 78 78 63
	adc $57.b,S		; 63 57
	eor [$2F.b],Y		; 57 2F
	and $212E2E.l		; 2F 2E 2E 21
	dec $7884.w,X		; DE 84 78
	sta $64.b,X		; 95 64
	inc A		; 1A
	sbc #$A8.b		; E9 A8
	eor $024792.l		; 4F 92 47 02
	dec $08.b,X		; D6 08
	inc $BB.b,X		; F6 BB
	lda $A7.b,S		; A3 A7
	lda [$DF.b]		; A7 DF
	cmp $BA1E1E.l,X		; DF 1E 1E BA
	tsx		; BA
	lda $B9B9.w,Y		; B9 B9 B9
	clv		; B8
	pld		; 2B
	rol A		; 2A
	and $0FE1.w,X		; 3D E1 0F
	sbc $D7.b		; E5 D7
	pea $FE2F.w		; F4 2F FE
	ora $3E.b,S		; 03 3E
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	sta $3982.w,Y		; 99 82 39
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $AB55.w,X		; FE 55 AB
	cop $AD.b		; 02 AD
	sty $2D.b		; 84 2D
	php		; 08
	lda [$00.b]		; A7 00
	cpx $00.b		; E4 00
	bit $00C0.w,X		; 3C C0 00
	brk $55.b		; 00 55
	brk $02.b		; 00 02
	mvn $52,$84		; 54 84 52
	php		; 08
	cmp ($00.b)		; D2 00
	cli		; 58
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs -128.b		; 70 80
	eor ($80.b,X)		; 41 80
	sty $03.b		; 84 03
	bmi -50.b		; 30 CE
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	adc $FFFF7F.l,X		; 7F 7F FF FF
	inc $78FE.w,X		; FE FE 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  44.b		; 50 2C
	brk $FC.b		; 00 FC
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	cld		; D8
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
	sbc $236300.l,X		; FF 00 63 23
	and $0D.b,X		; 35 0D
	phd		; 0B
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	trb $020D.w		; 1C 0D 02
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $6803.w,X		; 1D 03 68
	clc		; 18
	lda ($61.b,X)		; A1 61
	sta $7E8E.w		; 8D 8E 7E
	sta ($97.b,X)		; 81 97
	ora $001F2E.l		; 0F 2E 1F 00
	brk $03.b		; 00 03
	brk $18.b		; 00 18
	ora [$61.b]		; 07 61
	asl $708E.w,X		; 1E 8E 70
	sta ($00.b,X)		; 81 00
	ora $001F00.l		; 0F 00 1F 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	rti		; 40

	ldy #$20.b		; A0 20
	bne  48.b		; D0 30
	cpy $E708.w		; CC 08 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	jsr $3020.w		; 20 20 30
	bmi  92.b		; 30 5C
	jmp $000000.l		; 5C 00 00 00
	brk $00.b		; 00 00
	asl $1904.w		; 0E 04 19
	asl A		; 0A
	trb $0E.b		; 14 0E
	trb $0F.b		; 14 0F
	stz $24.b,X		; 74 24
	stp		; DB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0B0E.w		; 0E 0E 0B
	ora $0D0F09.l		; 0F 09 0F 0D
	ora $007477.l		; 0F 77 74 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	ora $02.b,S		; 03 02
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	clc		; 18
	ora #$10.b		; 09 10
	php		; 08
	and ($12.b),Y		; 31 12
	sbc ($20.b,X)		; E1 20
	ora ($40.b,S),Y		; 13 40
	sta ($C0.b,S),Y		; 93 C0
	sta ($E4.b,S),Y		; 93 E4
	sta ($0F.b,S),Y		; 93 0F
	ora $1E0F0F.l		; 0F 0F 0F 1E
	asl $1E1E.w,X		; 1E 1E 1E
	inc $6CEE.w		; EE EE 6C
	cpx $EC2C.w		; EC 2C EC
	lda $F8ED.w		; AD ED F8
	lda ($F9.b,S),Y		; B3 F9
	lda $76.b,X		; B5 76
	lda $CE77.w,Y		; B9 77 CE
	sbc $337D57.l		; EF 57 7D 33
	and ($00.b,S),Y		; 33 00
	brk $00.b		; 00 00
	bmi  -8.b		; 30 F8
	jsl $FE00F8.l		; 22 F8 00 FE
	mvp $13,$FF		; 44 FF 13
	cmp $000731.l		; CF 31 07 00
	ora $00.b,S		; 03 00
	brk $19.b		; 00 19
	sbc $28F2.w		; ED F2 28
	ldy $51.b		; A4 51
	cld		; D8
	ora $D3.b,S		; 03 D3
	sty $FC.b		; 84 FC
	lda $FB.b,S		; A3 FB
	tsb $17.b		; 04 17
	asl A		; 0A
	asl A		; 0A
	brk $07.b		; 00 07
	brk $4E.b		; 00 4E
	brk $0D.b		; 00 0D
	ldy #$88.b		; A0 88
	ldy #$A3.b		; A0 A3
	bra   0.b		; 80 00
	sty $1F00.w		; 8C 00 1F
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	brk $20.b		; 00 20
	rti		; 40

	jsr $6080.w		; 20 80 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $0C.b		; 02 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	clc		; 18
	brk $3F.b		; 00 3F
	clc		; 18
	and $1B3F1B.l,X		; 3F 1B 3F 1B
	ora [$0B.b],Y		; 17 0B
	ora [$0C.b],Y		; 17 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	and $023F13.l,X		; 3F 13 3F 02
	and $041F00.l,X		; 3F 00 1F 04
	ora $56E847.l,X		; 1F 47 E8 56
	cmp $C417.w		; CD 17 C4
	adc $00DF80.l,X		; 7F 80 DF 00
	eor ($8C.b)		; 52 8C
	jsr $8E6D.w		; 20 6D 8E
	and $382030.l,X		; 3F 30 20 38
	ora $447C.w		; 0D 7C 44
	ora $003F00.l,X		; 1F 00 3F 00
	and [$04.b],Y		; 37 04
	ora $80000D.l,X		; 1F 0D 00 80
	brk $F0.b		; 00 F0
	jsr $E0B0.w		; 20 B0 E0
	bmi -128.b		; 30 80
	jsr $4030.w		; 20 30 40
	ldy $7EE0.w,X		; BC E0 7E
	tya		; 98
	cmp [$6C.b],Y		; D7 6C
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	jsr $081C.w		; 20 1C 08
	rol $1F44.w,X		; 3E 44 1F
	brk $F8.b		; 00 F8
	bcc  12.b		; 90 0C
	pha		; 48
	rol $B0.b,X		; 36 B0
	eor $A0B940.l		; 4F 40 B9 A0
	bvc  64.b		; 50 40
	bcs  64.b		; B0 40
	ldy #$00.b		; A0 00
	brk $F0.b		; 00 F0
	beq -52.b		; F0 CC
	cpy $B0B0.w		; CC B0 B0
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	rts		; 60

	rts		; 60

	rti		; 40

	rti		; 40

	bcs  64.b		; B0 40
	lsr $A0.b,X		; 56 A0
	plx		; FA
	stz $F2.b		; 64 F2
	tsb $6CD2.w		; 0C D2 6C
	inc $F360.w,X		; FE 60 F3
	tsb $F6E9.w		; 0C E9 F6
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	mvp $0C,$70		; 44 70 0C
	bvs  12.b		; 70 0C
	bvs  64.b		; 70 40
	bvs  12.b		; 70 0C
	bvs  70.b		; 70 46
	sed		; F8
	sbc $FE02.w,X		; FD 02 FE
	tay		; A8
	ror $5F2C.w,X		; 7E 2C 5F
	asl $DB.b,X		; 16 DB
	sta ($CA.b)		; 92 CA
	rti		; 40

	sty $F800.w		; 8C 00 F8
	brk $02.b		; 00 02
	brk $A8.b		; 00 A8
	brk $2C.b		; 00 2C
	bra  22.b		; 80 16
	ldy #$92.b		; A0 92
	bit $40.b		; 24 40
	bit $00.b,X		; 34 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0D.b		; 00 0D
	ora $17.b,S		; 03 17
	ora $00003F.l		; 0F 3F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	bit $78B4.w,X		; 3C B4 78
	sei		; 78
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ldy #$24.b		; A0 24
	cli		; 58
	and ($4E.b),Y		; 31 4E
	trb $23.b		; 14 23
	ora #$30.b		; 09 30
	asl $18.b		; 06 18
	ora ($0E.b,X)		; 01 0E
	brk $03.b		; 00 03
	eor $2F2F5F.l,X		; 5F 5F 2F 2F
	and ($33.b,S),Y		; 33 33
	trb $1F1C.w		; 1C 1C 1F
	ora $030F0F.l,X		; 1F 0F 0F 03
	ora $00.b,S		; 03 00
	brk $70.b		; 00 70
	ora $830C12.l		; 0F 12 0C 83
	adc $F905.w,X		; 7D 05 F9
	sbc ($08.b)		; F2 08
	bmi  10.b		; 30 0A
	sbc ($1E.b,X)		; E1 1E
	ora ($F6.b,X)		; 01 F6
	pea $FBF4.w		; F4 F4 FB
	xce		; FB
	cmp $C3.b,S		; C3 C3
	and [$37.b],Y		; 37 37
	sbc [$F7.b],Y		; F7 F7
	sbc [$F7.b],Y		; F7 F7
	sbc $F5.b,X		; F5 F5
	ora ($01.b,X)		; 01 01
	cop $85.b		; 02 85
	brk $9F.b		; 00 9F
	sta ($70.b,X)		; 81 70
	rol $C6.b		; 26 C6
	sty $04.b		; 84 04
	ldy $4086.w,X		; BC 86 40
	dec A		; 3A
	ora $FA.b,X		; 15 FA
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	sta $7F7F9F.l,X		; 9F 9F 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $C5.b		; C5 C5
	eor $45.b		; 45 45
	adc $92.b		; 65 92
	plp		; 28
	dec $02.b,X		; D6 02
	jsr ($7887.w,X)		; FC 87 78
	jmp $2033.w		; 4C 33 20
	stz $9020.w,X		; 9E 20 90
	rti		; 40

	bcs -83.b		; B0 AD
	adc $2DED.w		; 6D ED 2D
	tas		; 1B
	tas		; 1B
	cmp [$C7.b]		; C7 C7
	inc $E0EE.w		; EE EE E0
	cpx #$60.b		; E0 60
	rts		; 60

	rts		; 60

	rts		; 60

	jsr ($7D03.w,X)		; FC 03 7D
	sed		; F8
	tsa		; 3B
	bmi 108.b		; 30 6C
	stz $78.b,X		; 74 78
	sta [$BC.b]		; 87 BC
	jmp ($EFD0.w)		; 6C D0 EF
	bcs -64.b		; B0 C0
	brk $00.b		; 00 00
	xce		; FB
	php		; 08
	and [$D0.b]		; 27 D0
	adc $90.b,S		; 63 90
	bra   0.b		; 80 00
	eor $20.b,S		; 43 20
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	ora $0293E0.l,X		; 1F E0 93 02
	sbc [$05.b],Y		; F7 05
	asl $3C02.w		; 0E 02 3C
	sed		; F8
	cpy $F8.b		; C4 F8
	ora [$F8.b]		; 07 F8
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	sep #$0C		; E2 0C
	sbc $08.b		; E5 08
	sbc ($01.b)		; F2 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	adc ($00.b,S),Y		; 73 00
	xce		; FB
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	jsr $00FF.w		; 20 FF 00
	sbc $36FF14.l,X		; FF 14 FF 36
	brk $42.b		; 00 42
	brk $73.b		; 00 73
	jsr $30FB.w		; 20 FB 30
	sbc $01FF20.l,X		; FF 20 FF 01
	inc $FF14.w,X		; FE 14 FF
	trb $FF.b		; 14 FF
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	bne -32.b		; D0 E0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	rti		; 40

	cpx #$C0.b		; E0 C0
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	cpx #$40.b		; E0 40
	cpx #$40.b		; E0 40
	beq  11.b		; F0 0B
	asl $3F.b		; 06 3F
	brk $25.b		; 00 25
	tas		; 1B
	and $1B.b		; 25 1B
	adc $334D00.l,X		; 7F 00 4D 33
	eor $1B7F24.l,X		; 5F 24 7F 1B
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	clc		; 18
	ora [$18.b]		; 07 18
	ora [$00.b]		; 07 00
	ora [$30.b]		; 07 30
	ora $24.b,S		; 03 24
	brk $1B.b		; 00 1B
	brk $3A.b		; 00 3A
	cpy $FE.b		; C4 FE
	brk $9A.b		; 00 9A
	stz $BE.b		; 64 BE
	bvc  -8.b		; 50 F8
	bmi  -8.b		; 30 F8
	bvs  -8.b		; 70 F8
	bcs  -8.b		; B0 F8
	bvc -44.b		; 50 D4
	bpl   0.b		; 10 00
	brk $64.b		; 00 64
	brk $40.b		; 00 40
	clc		; 18
	jsr $2038.w		; 20 38 20
	sed		; F8
	brk $F8.b		; 00 F8
	rti		; 40

	sei		; 78
	ora [$63.b],Y		; 17 63
	pld		; 2B
	eor $03.b		; 45 03
	cmp $942B.w,X		; DD 2B 94
	ora ($A8.b),Y		; 11 A8
	and $D2.b		; 25 D2
	eor #$B6.b		; 49 B6
	ora ($EA.b),Y		; 11 EA
	and $3D3F.w,Y		; 39 3F 3D
	and $6A7370.l,X		; 3F 70 73 6A
	rtl		; 6B

	lsr $57.b,X		; 56 57
	bit $582D.w		; 2C 2D 58
	cli		; 58
	eor ($51.b),Y		; 51 51
	sta ($7E.b,X)		; 81 7E
	cmp $B9.b		; C5 B9
	sbc #$D0.b		; E9 D0
	pea $D2C1.w		; F4 C1 D2
	sta $B8.b		; 85 B8
	and [$F1.b]		; 27 F1
	cpy $0DD4.w		; CC D4 0D
	and ($A3.b,S),Y		; 33 A3
	ora $EF8FCF.l		; 0F CF 8F EF
	cmp $AE0EDF.l,X		; DF DF 0E AE
	and $C24D.w		; 2D 4D C2
	brk $33.b		; 00 33
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	rti		; 40

	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $3D.b		; 00 3D
	ora $6F.b,S		; 03 6F
	bmi  -9.b		; 30 F7
	asl $C343.w		; 0E 43 C3
	ora [$07.b]		; 07 07
	adc $000080.l,X		; 7F 80 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	bmi   0.b		; 30 00
	asl $C202.w		; 0E 02 C2
	and $F807.w,X		; 3D 07 F8
	bra   0.b		; 80 00
	ora [$31.b],Y		; 17 31
	cpy $8E21.w		; CC 21 8E
	sbc $38.b,S		; E3 38
	sbc $15.b,S		; E3 15
	ora [$8B.b]		; 07 8B
	asl $9857.w		; 0E 57 98
	cpx #$10.b		; E0 10
	asl $1E00.w		; 0E 00 1E
	brk $DC.b		; 00 DC
	brk $1D.b		; 00 1D
	ora ($F8.b,X)		; 01 F8
	brk $70.b		; 00 70
	cop $20.b		; 02 20
	bra   0.b		; 80 00
	brk $3D.b		; 00 3D
	ora $3C.b,S		; 03 3C
	trb $0E2D.w		; 1C 2D 0E
	lsr $18.b,X		; 56 18
	cld		; D8
	rti		; 40

	cpx #$40.b		; E0 40
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	ora $00.b,S		; 03 00
	trb $0E03.w		; 1C 03 0E
	bpl  24.b		; 10 18
	jsr $2040.w		; 20 40 20
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	cld		; D8
	brk $90.b		; 00 90
	ldy #$B0.b		; A0 B0
	brk $30.b		; 00 30
	rti		; 40

	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bmi  16.b		; 30 10
	cpx #$80.b		; E0 80
	rti		; 40

	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	and $648680.l,X		; 3F 80 86 64
	eor [$46.b],Y		; 57 46
	adc $3982.w,X		; 7D 82 39
	bvc -70.b		; 50 BA
	cpx $0A.b		; E4 0A
	cpx #$8C.b		; E0 8C
	cpx #$E0.b		; E0 E0
	jsr ($FEFC.w,X)		; FC FC FE
	inc $E6E6.w,X		; FE E6 E6
	dec $D6.b,X		; D6 D6
	mvp $14,$44		; 44 44 14
	tsb $90.b		; 04 90
	bra  64.b		; 80 40
	plp		; 28
	inx		; E8
	tsb $38C0.w		; 0C C0 38
	cpy #$10.b		; C0 10
	bra  96.b		; 80 60
	cpy $FC00.w		; CC 00 FC
	dey		; 88
	mvn $90,$88		; 54 88 90
	jsr $00F0.w		; 20 F0 00
	beq  48.b		; F0 30
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $A8.b		; 00 A8
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
	cmp $FF22.w,X		; DD 22 FF
	brk $FF.b		; 00 FF
	php		; 08
	adc $1E7F2A.l,X		; 7F 2A 7F 1E
	and $030E0E.l,X		; 3F 0E 0E 03
	ora $1B.b		; 05 1B
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	php		; 08
	sbc $1E7F2A.l,X		; FF 2A 7F 1E
	adc $003F04.l,X		; 7F 04 3F 00
	ora $700F08.l		; 0F 08 0F 70
	bra -16.b		; 80 F0
	ora ($F1.b,X)		; 01 F1
	asl A		; 0A
	beq  14.b		; F0 0E
	sed		; F8
	asl $0EDD.w		; 0E DD 0E
	lda $D046.w,X		; BD 46 D0
	lda $00F000.l		; AF 00 F0 00
	beq -127.b		; F0 81
	sbc ($11.b),Y		; F1 11
	sbc $F909.w,Y		; F9 09 F9
	and #$FD.b		; 29 FD
	and ($BD.b),Y		; 31 BD
	trb $7DD0.w		; 1C D0 7D
	bit $3B.b,X		; 34 3B
	ora #$12.b		; 09 12
	brk $1E.b		; 00 1E
	cop $0C.b		; 02 0C
	clc		; 18
	ora [$34.b],Y		; 17 34
	asl A		; 0A
	and $0E.b,S		; 23 0E
	and $34.b,S		; 23 34
	cop $09.b		; 02 09
	tsb $00.b		; 04 00
	ora $0102.w		; 0D 02 01
	brk $03.b		; 00 03
	php		; 08
	brk $1D.b		; 00 1D
	ora ($1C.b,X)		; 01 1C
	brk $FC.b		; 00 FC
	tay		; A8
	ror $FE10.w,X		; 7E 10 FE
	tay		; A8
	cmp $00954A.l,X		; DF 4A 95 00
	sta [$00.b],Y		; 97 00
	sed		; F8
	brk $60.b		; 00 60
	beq -96.b		; F0 A0
	bit $9410.w,X		; 3C 10 94
	tay		; A8
	brk $4A.b		; 00 4A
	jsr $6A00.w		; 20 00 6A
	brk $68.b		; 00 68
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ora ($6A.b),Y		; 11 6A
	bpl 105.b		; 10 69
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($11.b),Y		; 11 11
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tas		; 1B
	cpy $E431.w		; CC 31 E4
	ora $A4.b,S		; 03 A4
	ora $0D3F22.l		; 0F 22 3F 0D
	and $011F18.l,X		; 3F 18 1F 01
	ora $00330D.l,X		; 1F 0D 33 00
	tas		; 1B
	brk $19.b		; 00 19
	brk $12.b		; 00 12
	tsb $3C09.w		; 0C 09 3C
	brk $3C.b		; 00 3C
	ora ($1C.b,X)		; 01 1C
	ora $1C.b		; 05 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $15.b		; 00 15
	bra  12.b		; 80 0C
	brk $00.b		; 00 00
	plp		; 28
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	jsr $0010.w		; 20 10 00
	sta ($00.b),Y		; 91 00
	bra   0.b		; 80 00
	brk $08.b		; 00 08
	cop $02.b		; 02 02
	jsr $0000.w		; 20 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	ora ($42.b,X)		; 01 42
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
	brk $04.b		; 00 04
	php		; 08
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	rti		; 40

	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	and ($00.b,X)		; 21 00
	ora ($01.b,X)		; 01 01
	bra  16.b		; 80 10
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	bra   4.b		; 80 04
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $09.b		; 00 09
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	ora ($41.b,X)		; 01 41
	bra  32.b		; 80 20
	tsb $10.b		; 04 10
	rti		; 40

	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $8000.w		; 20 00 80
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	jsr $4001.w		; 20 01 40
	php		; 08
	rts		; 60

	brk $00.b		; 00 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	mvp $00,$00		; 44 00 00
	php		; 08
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
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	php		; 08
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $10.b		; 00 10
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
	asl $00.b		; 06 00
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
	php		; 08
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
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	php		; 08
	jsr $4818.w		; 20 18 48
	brk $12.b		; 00 12
	php		; 08
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	brk $CB.b		; 00 CB
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C4.b		; 00 C4
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $A7.b		; 00 A7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 1BFFFE. Skipping.
	.db $DE		; Opcode DE overrunning bank boundry at 1BFFFF. Skipping.
.ENDS
