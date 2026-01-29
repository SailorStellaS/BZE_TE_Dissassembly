.BANK 28 SLOT 0
.ORG $0000

.SECTION "Bank28" FORCE

	brk $60.b		; 00 60
	rts		; 60

	bcc  16.b		; 90 10
	bit #$28.b		; 89 28
	stx $38.b,Y		; 96 38
	stx $3D.b,Y		; 96 3D
	sta ($65.b)		; 92 65
	txs		; 9A
	jsr $00DF.w		; 20 DF 00
	brk $60.b		; 00 60
	rts		; 60

	bvs 112.b		; 70 70
	eor #$79.b		; 49 79
	eor $4D79.w,Y		; 59 79 4D
	adc $657D.w,X		; 7D 7D 65
	clv		; B8
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	jsr $6080.w		; 20 80 60
	cpy #$60.b		; C0 60
	cpy #$60.b		; C0 60
	brk $C0.b		; 00 C0
	brk $C2.b		; 00 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	tsb $1B04.w		; 0C 04 1B
	ora $3C.b,S		; 03 3C
	trb $0023.w		; 1C 23 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0C.b,S		; 03 0C
	tsb $0303.w		; 0C 03 03
	trb $001C.w		; 1C 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $834C.w,X		; FE 4C 83
	ora ($00.b,X)		; 01 00
	ora #$F0.b		; 09 F0
	brk $FF.b		; 00 FF
	jsl $0000C1.l		; 22 C1 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $FFFE.w,X		; FE FE FF
	sbc $003F3F.l,X		; FF 3F 3F 00
	brk $7F.b		; 00 7F
	adc $3880D8.l,X		; 7F D8 80 38
	bcc 124.b		; 90 7C
	cld		; D8
	jmp ($56B8.w,X)		; 7C B8 56
	bit $72.b,X		; 34 72
	bmi  51.b		; 30 33
	ora ($2B.b)		; 12 2B
	inc A		; 1A
	rts		; 60

	brk $50.b		; 00 50
	bpl  24.b		; 10 18
	bpl  24.b		; 10 18
	jsr $2814.w		; 20 14 28
	bmi  12.b		; 30 0C
	ora ($0C.b)		; 12 0C
	inc A		; 1A
	tsb $CD.b		; 04 CD
	lda ($FA.b)		; B2 FA
	sty $9C.b		; 84 9C
	rts		; 60

	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	and ($80.b)		; 32 80
	tsb $80.b		; 04 80
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $17.b		; 00 17
	plp		; 28
	cmp $38.b,S		; C3 38
	sbc $84.b,X		; F5 84
	cpx #$5F.b		; E0 5F
	inc $E040.w		; EE 40 E0
	rti		; 40

	cpx #$9F.b		; E0 9F
	sbc [$18.b]		; E7 18
	ora [$10.b],Y		; 17 10
	ora $008B08.l		; 0F 08 8B 00
	brk $60.b		; 00 60
	eor $E01FE0.l,X		; 5F E0 1F E0
	bra -32.b		; 80 E0
	clc		; 18
	bra -64.b		; 80 C0
	bpl -64.b		; 10 C0
	bpl  -1.b		; 10 FF
	bra -65.b		; 80 BF
	ora $FF1FBF.l,X		; 1F BF 1F FF
	rti		; 40

	inc $0B.b,X		; F6 0B
	ora $0020E0.l,X		; 1F E0 20 00
	cpx #$00.b		; E0 00
	brk $1F.b		; 00 1F
	ora $5F0E5F.l,X		; 1F 5F 0E 5F
	rti		; 40

	ora $000308.l,X		; 1F 08 03 00
	ora $01.b,S		; 03 01
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	cop $06.b		; 02 06
	ora ($65.b,X)		; 01 65
	ora $BF.b,S		; 03 BF
	adc ($89.b,X)		; 61 89
	ror $8B.b,X		; 76 8B
	adc [$00.b],Y		; 77 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$60.b]		; 07 60
	ora [$70.b]		; 07 70
	ora $3B0F71.l		; 0F 71 0F 3B
	trb $3EFF.w		; 1C FF 3E
	sbc $8D77F8.l,X		; FF F8 77 8D
	ldx $E761.w,Y		; BE 61 E7
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $30FF1E.l,X		; 3F 1E FF 30
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00E700.l,X		; FF 00 E7 00
	ora $00.b,S		; 03 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ldx #$FF.b		; A2 FF
	ldx $EA.b,Y		; B6 EA
	trb $FE.b		; 14 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	sbc $A0F708.l,X		; FF 08 F7 A0
	sbc $00FFA4.l,X		; FF A4 FF 00
	inc $FE00.w,X		; FE 00 FE
	bpl  -4.b		; 10 FC
	brk $F0.b		; 00 F0
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $857F0B.l,X		; FF 0B 7F 85
	sbc $A5EF52.l,X		; FF 52 EF A5
	cmp $899B54.l,X		; DF 54 9B 89
	and ($20.b)		; 32 20
	lda ($10.b)		; B2 10
	ora ($1F.b,X)		; 01 1F
	bra   7.b		; 80 07
	eor ($03.b)		; 52 03
	lda $11.b		; A5 11
	mvn $89,$20		; 54 20 89
	stz $20.b		; 64 20
	cmp $4D10.w		; CD 10 4D
	.db $62, $00, $1F		; 62 00 1F
	rts		; 60

	ora [$7F.b]		; 07 7F
	ora $7C.b		; 05 7C
	tas		; 1B
	rol $3614.w,X		; 3E 14 36
	bpl  51.b		; 10 33
	cop $33.b		; 02 33
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	and ($30.b,S),Y		; 33 30
	ora ($00.b,X)		; 01 00
	ora #$00.b		; 09 00
	ora $1C01.w		; 0D 01 1C
	bpl   0.b		; 10 00
	ora ($00.b),Y		; 11 00
	ora ($00.b),Y		; 11 00
	ora ($0A.b),Y		; 11 0A
	tas		; 1B
	ora $160F18.l		; 0F 18 0F 16
	ora [$0E.b],Y		; 17 0E
	ora $000E0E.l,X		; 1F 0E 0E 00
	asl $0E00.w		; 0E 00 0E
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $06.b		; 06 06
	php		; 08
	asl $8000.w		; 0E 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -66.b		; 80 BE
	cpy #$E3.b		; C0 E3
.INDEX 8
	sep #$5E		; E2 5E
	cld		; D8
	sed		; F8
	rts		; 60

	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
.INDEX 8
	sep #$1C		; E2 1C
	cld		; D8
	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	bit $D8.b		; 24 D8
	dey		; 88
	bvs  84.b		; 70 54
	jsr $44AA.w		; 20 AA 44
	phd		; 0B
	cpy $00.b		; C4 00
	cmp $354CA5.l		; CF A5 4C 35
	wai		; CB
	and [$27.b]		; 27 27
	cmp $DFDFDF.l,X		; DF DF DF DF
	lda $3B3BBF.l,X		; BF BF 3B 3B
	bcs -80.b		; B0 B0
	lda ($B0.b)		; B2 B0
	and [$33.b],Y		; 37 33
	bra 126.b		; 80 7E
	stz $4082.w		; 9C 82 40
	eor [$4A.b]		; 47 4A
	cmp $952E.w,Y		; D9 2E 95
	eor ($B9.b)		; 52 B9
	pei ($3A.b)		; D4 3A
	bvc -100.b		; 50 9C
	cpy #$C0.b		; C0 C0
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FEFE.w,X)		; FC FE FE
	ror $466E.w		; 6E 6E 46
	lsr $24.b		; 46 24
	bit $20.b		; 24 20
	bra   3.b		; 80 03
	jmp ($6300.w,X)		; 7C 00 63
	brk $41.b		; 00 41
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $23.b,S		; 23 23
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sec		; 38
	cpy #$07.b		; C0 07
	sed		; F8
	cpy #$3F.b		; C0 3F
	ora $1F00F0.l		; 0F F0 00 1F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	ora $F0F00F.l		; 0F 0F F0 F0
	and $01013F.l,X		; 3F 3F 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -96.b		; F0 A0
	bvs  32.b		; 70 20
	cpx #$00.b		; E0 00
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	rti		; 40

	bpl -96.b		; 10 A0
	brk $20.b		; 00 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $56.b		; 00 56
	bit $33.b,X		; 34 33
	ora ($1B.b)		; 12 1B
	asl A		; 0A
	ora $0B05.w		; 0D 05 0B
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	ora ($02.b,X)		; 01 02
	ora ($34.b,X)		; 01 34
	php		; 08
	ora ($0C.b)		; 12 0C
	asl A		; 0A
	tsb $05.b		; 04 05
	cop $07.b		; 02 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $3E.b		; 00 3E
	trb $1C3E.w		; 1C 3E 1C
	rol $2E1C.w		; 2E 1C 2E
	trb $0C1E.w		; 1C 1E 0C
	asl $150C.w,X		; 1E 0C 15
	asl $0E15.w		; 0E 15 0E
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	brk $1B.b		; 00 1B
	tsb $1B.b		; 04 1B
	tsb $3F.b		; 04 3F
	brk $5F.b		; 00 5F
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	tsb $0F.b		; 04 0F
	asl $1F.b		; 06 1F
	ora [$1F.b]		; 07 1F
	cop $3F.b		; 02 3F
	clc		; 18
	adc $800080.l,X		; 7F 80 00 80
	brk $40.b		; 00 40
	brk $4F.b		; 00 4F
	brk $FE.b		; 00 FE
	brk $F6.b		; 00 F6
	php		; 08
	inc $FC10.w		; EE 10 FC
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $4F.b		; 00 4F
	tsb $FE.b		; 04 FE
	tsb $1CFE.w		; 0C FE 1C
	inc $FC00.w,X		; FE 00 FC
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	bvc -32.b		; 50 E0
	cli		; 58
	cpx #$FE.b		; E0 FE
	sei		; 78
	sbc $62.b,S		; E3 62
	dec $E060.w,X		; DE 60 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	brk $62.b		; 00 62
	trb $0060.w		; 1C 60 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	php		; 08
	sbc $14BB48.l,X		; FF 48 BB 14
	lda $466F90.l,X		; BF 90 6F 46
	adc $4F21.w		; 6D 21 4F
	php		; 08
	dec $82.b		; C6 82
	sbc $4804.w,X		; FD 04 48
	tsb $4610.w		; 0C 10 46
	bcc  64.b		; 90 40
	lsr $90.b		; 46 90
	and ($92.b,X)		; 21 92
	php		; 08
	bcs -127.b		; B0 81
	sec		; 38
	ora $00.b,S		; 03 00
	cpy $7F30.w		; CC 30 7F
	stx $BF.b		; 86 BF
	ora ($2F.b),Y		; 11 2F
	ora ($BF.b),Y		; 11 BF
	asl $069F.w		; 0E 9F 06
	sta $6347C3.l		; 8F C3 47 63
	bmi   3.b		; 30 03
	stx $00.b		; 86 00
	ora ($01.b),Y		; 11 01
	ora ($03.b),Y		; 11 03
	tsb $0F.b		; 04 0F
	cop $1F.b		; 02 1F
	brk $0F.b		; 00 0F
	sta ($07.b,X)		; 81 07
	bra  97.b		; 80 61
	ldy #$5B.b		; A0 5B
	cli		; 58
	lda [$52.b]		; A7 52
	lda ($A8.b,X)		; A1 A8
	bvc  84.b		; 50 54
	plp		; 28
	and ($9E.b,X)		; 21 9E
	pha		; 48
	sta [$80.b]		; 87 80
	bra -95.b		; 80 A1
	lda ($58.b,X)		; A1 58
	cli		; 58
	eor $AFAF5F.l,X		; 5F 5F AF AF
	cmp [$D7.b],Y		; D7 D7
	sbc $E3.b,S		; E3 E3
	jmp ($807C.w,X)		; 7C 7C 80
	ror $52AC.w		; 6E AC 52
	ldy $53.b		; A4 53
	asl $E3.b,X		; 16 E3
	stx $63.b		; 86 63
	pha		; 48
	and [$C8.b]		; 27 C8
	and [$00.b]		; 27 00
	sbc $AC8080.l,X		; FF 80 80 AC
	ldy $AEA8.w		; AC A8 AE
	phy		; 5A
	lsr $9E98.w,X		; 5E 98 9E
	dec $DED8.w,X		; DE D8 DE
	cld		; D8
	brk $00.b		; 00 00
	ora $041C09.l,X		; 1F 09 1C 04
	ora ($02.b,S),Y		; 13 02
	ora $020E0D.l,X		; 1F 0D 0E 02
	asl $02.b		; 06 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	ora #$00.b		; 09 00
	tsb $03.b		; 04 03
	cop $0C.b		; 02 0C
	ora $0200.w		; 0D 00 02
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $B8.b		; 00 B8
	bvs 120.b		; 70 78
	bmi  92.b		; 30 5C
	sec		; 38
	and $0F1E1C.l,X		; 3F 1C 1E 0F
	ora $0C170F.l,X		; 1F 0F 17 0C
	tsb $7000.w		; 0C 00 70
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	clc		; 18
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $18.b		; 00 18
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
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0A04.w		; 0E 04 0A
	tsb $1A.b		; 04 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	beq -32.b		; F0 E0
	beq  96.b		; F0 60
	sed		; F8
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$C0.b		; C0 C0
	cpx #$C0.b		; E0 C0
	cpx #$E0.b		; E0 E0
	beq  96.b		; F0 60
	beq  48.b		; F0 30
	sed		; F8
	sed		; F8
	bcs  -4.b		; B0 FC
	bne  -4.b		; D0 FC
	cld		; D8
	inc $9C.b,X		; F6 9C
	inc $DE94.w,X		; FE 94 DE
	tsb $06.b		; 04 06
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	sed		; F8
	bpl  -4.b		; 10 FC
	tya		; 98
	jsr ($FE94.w,X)		; FC 94 FE
	sty $FE.b,X		; 94 FE
	tsb $DE.b		; 04 DE
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	ora $05.b,S		; 03 05
	ora [$03.b]		; 07 03
	ora $03.b		; 05 03
	ora [$03.b]		; 07 03
	ora $03.b		; 05 03
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc ($92.b,S),Y		; F3 92
	cld		; D8
	bit #$AD.b		; 89 AD
	cmp $A6.b		; C5 A6
.ACCU 16
	rep #$E3		; C2 E3
	cmp ($E1.b,X)		; C1 E1
	cpy #$D0.b		; C0 D0
	cpx #$D0.b		; E0 D0
	cpx #$92.b		; E0 92
	tsb $0689.w		; 0C 89 06
	cmp $02.b		; C5 02
	rep #$01		; C2 01
	cmp ($00.b,X)		; C1 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cmp ($80.b,X)		; C1 80
	adc $40.b,S		; 63 40
	cmp $44C6E2.l,X		; DF E2 C6 44
	ldy $0068.w		; AC 68 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -30.b		; 80 E2
	brk $44.b		; 00 44
	sec		; 38
	pla		; 68
	bpl   0.b		; 10 00
	bvs  16.b		; 70 10
	dey		; 88
	cpy #$28.b		; C0 28
	ldy #$50.b		; A0 50
	jsr $C0D0.w		; 20 D0 C0
	bmi  32.b		; 30 20
	bpl -128.b		; 10 80
	sta ($00.b)		; 92 00
	brk $70.b		; 00 70
	bvs -112.b		; 70 90
	beq  32.b		; F0 20
	cpx #$20.b		; E0 20
	jsr $C0C0.w		; 20 C0 C0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	bcc -114.b		; 90 8E
	stz $22.b		; 64 22
	bcc 116.b		; 90 74
	mvp $90,$EB		; 44 EB 90
	pld		; 2B
	jsr $005A.w		; 20 5A 00
	ldx $00.b,Y		; B6 00
	bra -16.b		; 80 F0
	beq  -4.b		; F0 FC
	jsr ($9898.w,X)		; FC 98 98
	trb $541C.w		; 1C 1C 54
	trb $A4.b		; 14 A4
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1B.b		; 00 1B
	sed		; F8
	tsb $7C.b		; 04 7C
	ora #$0E3F.w		; 09 3F 0E
	ora $000C04.l,X		; 1F 04 0C 00
	tsb $02.b		; 04 02
	asl $01.b		; 06 01
	ora $07.b,S		; 03 07
	brk $23.b		; 00 23
	jsr $1010.w		; 20 10 10
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc [$31.b]		; E7 31
	sbc ($19.b)		; F2 19
	ora $5F00.w		; 0D 00 5F
	pei ($BF.b)		; D4 BF
	cpx $6E1D.w		; EC 1D 6E
	sbc $5BEA9E.l,X		; FF 9E EA 5B
	cmp ($07.b,X)		; C1 07
	cpx #$03.b		; E0 03
	beq   1.b		; F0 01
	jsr $0C05.w		; 20 05 0C
	ora #$088E.w		; 09 8E 08
	asl $4B10.w		; 0E 10 4B
	mvn $40,$20		; 54 20 40
	php		; 08
	bmi   3.b		; 30 03
	trb $0700.w		; 1C 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	asl $2F00.w,X		; 1E 00 2F
	asl $3F.b,X		; 16 3F
	and $071F1F.l,X		; 3F 1F 1F 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	brk $47.b		; 00 47
	sec		; 38
	bcc  96.b		; 90 60
	lda ($41.b,X)		; A1 41
	php		; 08
	cpy #$15.b		; C0 15
	iny		; C8
	ror $99.b		; 66 99
	bvc -73.b		; 50 B7
	stp		; DB
	bit $CF.b,X		; 34 CF
	cmp $BFDFDF.l		; CF DF DF BF
	lda $773F3F.l,X		; BF 3F 3F 77
	adc [$66.b],Y		; 77 66
	ror $48.b		; 66 48
	rti		; 40

	jmp $0344.w		; 4C 44 03
	brk $05.b		; 00 05
	ora $08.b,S		; 03 08
	ora [$1C.b]		; 07 1C
	ora $23.b,S		; 03 23
	trb $013E.w		; 1C 3E 01
	and $3A7F08.l,X		; 3F 08 7F 3A
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	trb $0000.w		; 1C 00 00
	ora ($08.b,X)		; 01 08
	brk $3A.b		; 00 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	asl $04.b		; 06 04
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	lda $0CB700.l,X		; BF 00 B7 0C
	lda $35CF0D.l,X		; BF 0D CF 35
	lda $FF7A.w,X		; BD 7A FF
	jmp ($B1FE.w,X)		; 7C FE B1
	plx		; FA
	eor $00.b,X		; 55 00
	brk $00.b		; 00 00
	ora $043F04.l,X		; 1F 04 3F 04
	adc $38FF10.l,X		; 7F 10 FF 38
	jsr ($F011.w,X)		; FC 11 F0
	eor $70.b,X		; 55 70
	cmp $22FD22.l,X		; DF 22 FD 22
	cmp $3F91A0.l		; CF A0 91 3F
	rti		; 40

	ora $609C20.l,X		; 1F 20 9C 60
	iny		; C8
	sty $1E40.w		; 8C 40 1E
	cop $1E.b		; 02 1E
.INDEX 16
	rep #$9F		; C2 9F
	cpy #$8C4C.w		; C0 4C 8C
	cpx $600C.w		; EC 0C 60
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $08.b		; 00 08
	bmi  18.b		; 30 12
	adc ($28.b,X)		; 61 28
	eor [$11.b]		; 47 11
	dec $944A.w		; CE 4A 94
	trb $A8.b		; 14 A8
	eor ($A8.b),Y		; 51 A8
	jsr $1FD9.w		; 20 D9 1F
	ora $383F3F.l,X		; 1F 3F 3F 38
	sec		; 38
	adc ($71.b),Y		; 71 71
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	and $21012F.l		; 2F 2F 01 21
	bit $C0.b		; 24 C0
	ora ($C4.b),Y		; 11 C4
	rol A		; 2A
	cmp $84.b,X		; D5 84
	adc $065087.l,X		; 7F 87 50 06
	sta $9A0D.w,X		; 9D 0D 9A
	cmp $3F3FDF.l,X		; DF DF 3F 3F
	tsa		; 3B
	tsa		; 3B
	tsx		; BA
	tsx		; BA
	bne -48.b		; D0 D0
	dey		; 88
	bra  12.b		; 80 0C
	ora $0206.w		; 0D 06 02
	jsr $C921.w		; 20 21 C9
	brk $22.b		; 00 22
	iny		; C8
	cmp $EA.b,X		; D5 EA
	php		; 08
	and $D80338.l,X		; 3F 38 03 D8
	rol $16EC.w		; 2E EC 16
	inc $FFFE.w,X		; FE FE FF
	sbc $173737.l,X		; FF 37 37 17
	ora [$C2.b],Y		; 17 C2
	cop $C4.b		; 02 C4
	brk $CC.b		; 00 CC
	bit $10D8.w		; 2C D8 10
	tsb $03.b		; 04 03
	ora ($E1.b)		; 12 E1
	ora $F8.b		; 05 F8
	jsl $8A54DC.l		; 22 DC 54 8A
	lsr A		; 4A
	sta $22.b		; 85 22
	eor $01.b		; 45 01
	ror $FE.b		; 66 FE
	inc $3F3F.w,X		; FE 3F 3F
	ora [$07.b]		; 07 07
	adc $63.b,S		; 63 63
	sbc $F5.b,X		; F5 F5
	ply		; 7A
	ply		; 7A
	dec A		; 3A
	dec A		; 3A
	and $533D.w,X		; 3D 3D 53
	sty $92CD.w		; 8C CD 92
	adc ($2D.b)		; 72 2D
	sta $DF23.w,X		; 9D 23 DF
	lda $77.b,S		; A3 77
	ora $225F.w		; 0D 5F 22
	sbc $006C15.l		; EF 15 6C 00
	.db $62, $00, $CC		; 62 00 CC
	ora ($40.b,X)		; 01 40
	ora $81.b,S		; 03 81
	ora $228F00.l		; 0F 00 8F 22
	sta $15.b,S		; 83 15
	ora ($E5.b,X)		; 01 E5
	clc		; 18
	cmp $2724.w,Y		; D9 24 27
	phx		; DA
	jmp.w [$FDE2]		; DC E2 FD
.ACCU 8
.INDEX 8
	sep #$F7		; E2 F7
	cld		; D8
	sbc $FBA2.w,X		; FD A2 FB
	mvn $80,$9B		; 54 9B 80
	and $00.b,S		; 23 00
	ora $01C0.w,Y		; 19 C0 01
	cpx #$C0.b		; E0 C0
	sed		; F8
	bra  -8.b		; 80 F8
	jsl $C054E0.l		; 22 E0 54 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sbc ($00.b,S),Y		; F3 00
	inc $FF60.w,X		; FE 60 FF
	ror $7EEF.w		; 6E EF 7E
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	rts		; 60

	sbc $FE46.w,X		; FD 46 FE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $40.b		; 00 40
	sbc $83BF00.l		; EF 00 BF 83
	adc $3F7B3B.l,X		; 7F 3B 7B 3F
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $0F.b		; 00 0F
	sta $5F.b,S		; 83 5F
	and ($BF.b),Y		; 31 BF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	ora ($3E.b,X)		; 01 3E
	ora ($E1.b)		; 12 E1
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	rol $003E.w,X		; 3E 3E 00
	bra   0.b		; 80 00
	rti		; 40

	cpy #$20.b		; C0 20
	cpy #$A0.b		; C0 A0
	cpx #$90.b		; E0 90
	brk $FF.b		; 00 FF
	and #$C6.b		; 29 C6
	bpl -48.b		; 10 D0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	cpy #$00.b		; C0 00
	lda $7F7F3F.l,X		; BF 3F 7F 7F
	brk $1C.b		; 00 1C
	brk $22.b		; 00 22
	bmi  74.b		; 30 4A
	sec		; 38
	eor ($7C.b)		; 52 7C
	sta ($08.b)		; 92 08
	pea $3748.w		; F4 48 37
	sty $B8.b		; 84 B8
	brk $00.b		; 00 00
	trb $341C.w		; 1C 1C 34
	bit $3C34.w,X		; 3C 34 3C
	stz $7C.b,X		; 74 7C
	sec		; 38
	php		; 08
	cld		; D8
	iny		; C8
	sbc [$E7.b]		; E7 E7
	bit $10.b,X		; 34 10
	bit $4418.w,X		; 3C 18 44
	plp		; 28
	pla		; 68
	jsr $40C8.w		; 20 C8 40
	tya		; 98
	bpl  -8.b		; 10 F8
	rts		; 60

	cpx #$00.b		; E0 00
	bpl   8.b		; 10 08
	clc		; 18
	brk $28.b		; 00 28
	bpl  32.b		; 10 20
	bpl  64.b		; 10 40
	bmi  16.b		; 30 10
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	bvs  32.b		; 70 20
	clc		; 18
	bcc  12.b		; 90 0C
	plp		; 28
	cpy $10.b		; C4 10
	inc $A4.b		; E6 A4
	eor ($50.b)		; 52 50
	rol A		; 2A
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	sec		; 38
	sec		; 38
	trb $AC1C.w		; 1C 1C AC
	ldy $D4D4.w		; AC D4 D4
	cpy $AA48.w		; CC 48 AA
	jmp ($2462.w)		; 6C 62 24
	lsr $34.b,X		; 56 34
	rol $14.b,X		; 36 14
	jsl $0A1910.l		; 22 10 19 0A
	ora ($0A.b),Y		; 11 0A
	pha		; 48
	bmi 108.b		; 30 6C
	bpl  36.b		; 10 24
	clc		; 18
	bit $08.b,X		; 34 08
	trb $08.b		; 14 08
	bpl  12.b		; 10 0C
	asl A		; 0A
	tsb $0A.b		; 04 0A
	tsb $2A.b		; 04 2A
	cmp ($2A.b),Y		; D1 2A
	eor ($08.b),Y		; 51 08
	adc ($04.b),Y		; 71 04
	and $1C02.w,Y		; 39 02 1C
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $2E2E.w		; 2E 2E 2E
	rol $2E2E.w		; 2E 2E 2E
	asl $070E.w		; 0E 0E 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	php		; 08
	ora ($04.b,X)		; 01 04
	ora $03.b		; 05 03
	asl $7305.w,X		; 1E 05 73
	sta ($FF.b),Y		; 91 FF
	.db $62, $7F, $AC		; 62 7F AC
	and $078E.w,Y		; 39 8E 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	jmp $E022.w		; 4C 22 E0
	tsb $4E60.w		; 0C 60 4E
	jsr $04F0.w		; 20 F0 04
	jsr $20C8.w		; 20 C8 20
	bmi  60.b		; 30 3C
	bne 103.b		; D0 67
	cpy $FF.b		; C4 FF
	lda $FF.b,S		; A3 FF
	inc A		; 1A
	lsr $F838.w		; 4E 38 F8
	brk $F0.b		; 00 F0
	cpy #$C0.b		; C0 C0
	brk $10.b		; 00 10
	brk $84.b		; 00 84
	sta $0322.w,Y		; 99 22 03
	clc		; 18
	ora $B9.b,S		; 03 B9
	.db $82, $15, $22		; 82 15 22
	ora $22.b,X		; 15 22
	tsb $23.b		; 04 23
	php		; 08
	and [$10.b]		; 27 10
	lsr $7880.w		; 4E 80 78
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	ora $1D1D.w,X		; 1D 1D 1D
	ora $1D1D.w,X		; 1D 1D 1D
	trb $381C.w		; 1C 1C 38
	sec		; 38
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tad		; 5B
	bmi 119.b		; 30 77
	and $26.b		; 25 26
	cop $1C.b		; 02 1C
	plp		; 28
	trb $0F30.w		; 1C 30 0F
	plp		; 28
	asl A		; 0A
	and $0E.b,S		; 23 0E
	and $30.b,S		; 23 30
	tsb $25.b		; 04 25
	php		; 08
	cop $19.b		; 02 19
	php		; 08
	ora $00.b,S		; 03 00
	ora $10.b,S		; 03 10
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $ED.b		; 00 ED
	stx $F7.b		; 86 F7
	eor ($B2.b)		; 52 B2
	jsr $0A9C.w		; 20 9C 0A
	stz $F806.w		; 9C 06 F8
	asl A		; 0A
	plp		; 28
	.db $62, $38, $62		; 62 38 62
	stx $90.b		; 86 90
	eor ($08.b)		; 52 08
	jsr $084C.w		; 20 4C 08
	rts		; 60

	brk $60.b		; 00 60
	tsb $00.b		; 04 00
	trb $1C00.w		; 1C 00 1C
	brk $01.b		; 00 01
	tsb $03.b		; 04 03
	tsb $03.b		; 04 03
	tsb $07.b		; 04 07
	tsb $0C05.w		; 0C 05 0C
	ora $0E1F11.l		; 0F 11 1F 0E
	and $00031E.l		; 2F 1E 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	asl $0E.b		; 06 0E
	tsb $C712.w		; 0C 12 C7
	jmp ($6CC7.w)		; 6C C7 6C
	ora ($44.b,X)		; 01 44
	ora ($44.b,X)		; 01 44
	sta $C6.b,S		; 83 C6
	ora ($83.b,X)		; 01 83
	ora ($82.b,X)		; 01 82
	ora ($00.b,X)		; 01 00
	sta $00.b,S		; 83 00
	sta $00.b,S		; 83 00
	sta $00.b,S		; 83 00
	sta $00.b,S		; 83 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	cpy #$60.b		; C0 60
	rti		; 40

	rts		; 60

	cpx #$10.b		; E0 10
	beq -32.b		; F0 E0
	inx		; E8
	beq -128.b		; F0 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpx #$60.b		; E0 60
	bcc   2.b		; 90 02
	trb $3008.w		; 1C 08 30
	ora ($61.b)		; 12 61
	plp		; 28
	eor [$11.b]		; 47 11
	dec $944A.w		; CE 4A 94
	trb $A8.b		; 14 A8
	eor ($A8.b),Y		; 51 A8
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	sec		; 38
	sec		; 38
	adc ($71.b),Y		; 71 71
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	.db $42, $3A		; 42 3A
	ora ($21.b,X)		; 01 21
	bit $C0.b		; 24 C0
	ora ($C4.b),Y		; 11 C4
	rol A		; 2A
	cmp $84.b,X		; D5 84
	adc $065087.l,X		; 7F 87 50 06
	sta $CFCF.w,X		; 9D CF CF
	cmp $3F3FDF.l,X		; DF DF 3F 3F
	tsa		; 3B
	tsa		; 3B
	tsx		; BA
	tsx		; BA
	bne -48.b		; D0 D0
	dey		; 88
	bra  12.b		; 80 0C
	ora $1710.w		; 0D 10 17
	jsr $C921.w		; 20 21 C9
	brk $22.b		; 00 22
	iny		; C8
	cmp $EA.b,X		; D5 EA
	php		; 08
	and $D80338.l,X		; 3F 38 03 D8
	rol $FCFC.w		; 2E FC FC
	inc $FFFE.w,X		; FE FE FF
	sbc $173737.l,X		; FF 37 37 17
	ora [$C2.b],Y		; 17 C2
	cop $C4.b		; 02 C4
	brk $CC.b		; 00 CC
	bit $0E90.w		; 2C 90 0E
	tsb $03.b		; 04 03
	ora ($E1.b)		; 12 E1
	ora $F8.b		; 05 F8
	jsl $8A54DC.l		; 22 DC 54 8A
	lsr A		; 4A
	sta $22.b		; 85 22
	eor $F8.b		; 45 F8
	sed		; F8
	inc $3FFE.w,X		; FE FE 3F
	and $630707.l,X		; 3F 07 07 63
	adc $F5.b,S		; 63 F5
	sbc $7A.b,X		; F5 7A
	ply		; 7A
	dec A		; 3A
	dec A		; 3A
	adc ($1C.b)		; 72 1C
	lda [$58.b]		; A7 58
	txy		; 9B
	tsb $A4.b		; 04 A4
	tas		; 1B
	tyx		; BB
	ora [$EF.b]		; 07 EF
	tas		; 1B
	lda $2ADF45.l,X		; BF 45 DF 2A
	sta $1941.w,X		; 9D 41 19
	sta ($04.b,X)		; 81 04
	bra  24.b		; 80 18
	sta $00.b,S		; 83 00
	sta [$01.b]		; 87 01
	ora $2A0744.l,X		; 1F 44 07 2A
	ora $9C.b,S		; 03 9C
	bvs -53.b		; 70 CB
	bit $B3.b,X		; 34 B3
	eor ($4B.b,X)		; 41 4B
	lda ($A2.b),Y		; B1 A2
	cmp $B4D1.w,Y		; D9 D1 B4
	inc $DE20.w		; EE 20 DE
	jmp $0473.w		; 4C 73 04
	bmi   3.b		; 30 03
	eor ($03.b,X)		; 41 03
	bmi -125.b		; 30 83
	brk $C3.b		; 00 C3
	php		; 08
	sta ($10.b,X)		; 81 10
	bra  44.b		; 80 2C
	tsb $C000.w		; 0C 00 C0
	brk $C0.b		; 00 C0
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
	brk $02.b		; 00 02
	ora [$00.b]		; 07 00
	ora $0B1703.l		; 0F 03 17 0B
	rol $3F0B.w,X		; 3E 0B 3F
	tsb $103C.w		; 0C 3C 10
	clc		; 18
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora [$03.b]		; 07 03
	ora $001F02.l		; 0F 02 1F 00
	ora $101F08.l,X		; 1F 08 1F 10
	tsb $0000.w		; 0C 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	bne -96.b		; D0 A0
	sed		; F8
	ldy #$F8.b		; A0 F8
	rts		; 60

	sei		; 78
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpx #$80.b		; E0 80
	beq   0.b		; F0 00
	beq  32.b		; F0 20
	beq  16.b		; F0 10
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
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
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rti		; 40

	brk $40.b		; 00 40
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	ora $1942.w,Y		; 19 42 19
	cmp $7D.b,S		; C3 7D
	cmp [$30.b]		; C7 30
	stx $30.b		; 86 30
	stx $3A.b		; 86 3A
	stx $D857.w		; 8E 57 D8
	brk $70.b		; 00 70
	bit $7D00.w,X		; 3C 00 7D
	rti		; 40

	and $7C00.w,Y		; 39 00 7C
	ora $7A.b		; 05 7A
	ora ($72.b,X)		; 01 72
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	asl $068B.w		; 0E 8B 06
	bit #$06.b		; 89 06
	txa		; 8A
	ora [$8D.b]		; 07 8D
	ora $8C.b		; 05 8C
	tsb $0F.b		; 04 0F
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	cop $04.b		; 02 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1100.w		; 0E 00 11
	ora $14.b,S		; 03 14
	ora [$12.b]		; 07 12
	ora $0B0412.l		; 0F 12 04 0B
	tsb $FB.b		; 04 FB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0B0E.w		; 0E 0E 0B
	ora $0B0F0B.l		; 0F 0B 0F 0B
	ora $060407.l		; 0F 07 04 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	sta ($81.b,X)		; 81 81
	.db $42, $00		; 42 00
	sbc $0018A5.l,X		; FF A5 18 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	sta ($00.b,X)		; 81 00
	brk $FF.b		; 00 FF
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cmp $D12A.w,Y		; D9 2A D1
	rol A		; 2A
	eor ($08.b),Y		; 51 08
	adc ($04.b),Y		; 71 04
	and $1C02.w,Y		; 39 02 1C
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	and $2E2E2F.l		; 2F 2F 2E 2E
	rol $2E2E.w		; 2E 2E 2E
	rol $0E0E.w		; 2E 0E 0E
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $039A.w		; 0D 9A 03
	php		; 08
	ora ($04.b,X)		; 01 04
	ora $03.b		; 05 03
	asl $7305.w,X		; 1E 05 73
	sta ($FF.b),Y		; 91 FF
	.db $62, $7F, $AC		; 62 7F AC
	asl $02.b		; 06 02
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bpl  76.b		; 10 4C
	jsl $600CE0.l		; 22 E0 0C 60
	cpx $F016.w		; EC 16 F0
	tsb $20.b		; 04 20
	iny		; C8
	jsr $3C30.w		; 20 30 3C
	bne 103.b		; D0 67
	cpy $FF.b		; C4 FF
	lda $FF.b,S		; A3 FF
	inc A		; 1A
	cld		; D8
	bpl  -8.b		; 10 F8
	brk $F0.b		; 00 F0
	cpy #$C0.b		; C0 C0
	brk $10.b		; 00 10
	brk $84.b		; 00 84
	sta $0322.w,Y		; 99 22 03
	clc		; 18
	ora $01.b,S		; 03 01
	ror $15.b		; 66 15
	jsl $042215.l		; 22 15 22 04
	and $08.b,S		; 23 08
	and [$10.b]		; 27 10
	lsr $7880.w		; 4E 80 78
	brk $80.b		; 00 80
	and $1D3D.w,X		; 3D 3D 1D
	ora $1D1D.w,X		; 1D 1D 1D
	ora $1C1D.w,X		; 1D 1D 1C
	trb $3838.w		; 1C 38 38
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	lda [$61.b],Y		; B7 61
	sbc $096D4A.l		; EF 4A 6D 09
	bit $1C58.w,X		; 3C 58 1C
	pla		; 68
	and $4F0C70.l,X		; 3F 70 0C 4F
	clc		; 18
	eor $61.b,S		; 43 61
	ora #$4A.b		; 09 4A
	bpl   9.b		; 10 09
	ora ($18.b)		; 12 18
	ora $28.b,S		; 03 28
	and $00.b,S		; 23 00
	brk $32.b		; 00 32
	cop $3E.b		; 02 3E
	cop $FF.b		; 02 FF
	lsr $5AEB.w,X		; 5E EB 5A
	lda ($52.b,S),Y		; B3 52
	plb		; AB
	phy		; 5A
	plb		; AB
	inc A		; 1A
	txy		; 9B
	asl A		; 0A
	ora $0E170E.l,X		; 1F 0E 17 0E
	tsb $0A12.w		; 0C 12 0A
	trb $52.b		; 14 52
	jmp $041A.w		; 4C 1A 04
	inc A		; 1A
	tsb $0A.b		; 04 0A
	tsb $0E.b		; 04 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $3C.b,S		; 03 3C
	cop $2C.b		; 02 2C
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora #$19.b		; 09 19
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	tsb $8A.b		; 04 8A
	sta ($E7.b)		; 92 E7
	stx $5D.b		; 86 5D
	ora $8E.b		; 05 8E
	ora ($8A.b,X)		; 01 8A
	ora ($8A.b,X)		; 01 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $75.b,X		; 75 75
	txs		; 9A
	txs		; 9A
	stx $86.b		; 86 86
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	ora $05.b		; 05 05
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bpl  40.b		; 10 28
	eor #$9E.b		; 49 9E
	clc		; 18
	sbc [$14.b],Y		; F7 14
	tsx		; BA
	tsb $AA.b		; 04 AA
	tsb $AA.b		; 04 AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp [$D7.b],Y		; D7 D7
	adc #$69.b		; 69 69
	clc		; 18
	clc		; 18
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	rts		; 60

	bcc   0.b		; 90 00
	eor $24A201.l,X		; 5F 01 A2 24
	adc $DE60.w,Y		; 79 60 DE
	bvc -24.b		; 50 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	ldy #$A0.b		; A0 A0
	ora $261D.w,X		; 1D 1D 26
	rol $60.b		; 26 60
	rts		; 60

	bvc  80.b		; 50 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $A040.w		; 20 40 A0
	rti		; 40

	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	rti		; 40

	brk $FC.b		; 00 FC
	tsb $2212.w		; 0C 12 22
	cmp #$42.b		; C9 42
	lda $42.b,X		; B5 42
	lda $82.b		; A5 82
	eor $82.b		; 45 82
	eor $02.b		; 45 02
	sta $00.b		; 85 00
	brk $EC.b		; 00 EC
	cpx $3636.w		; EC 36 36
	.db $42, $42		; 42 42
	.db $42, $42		; 42 42
	.db $82, $82, $82		; 82 82 82
	.db $82, $02, $02		; 82 02 02
	cop $0C.b		; 02 0C
	brk $06.b		; 00 06
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $85.b		; 02 85
	cop $85.b		; 02 85
	sty $4A.b		; 84 4A
	tsb $4A.b		; 04 4A
	brk $B4.b		; 00 B4
	brk $48.b		; 00 48
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	sty $84.b		; 84 84
	sty $84.b		; 84 84
	pha		; 48
	pha		; 48
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $06.b		; 24 06
	and $3C1E.w,X		; 3D 1E 3C
	ora ($20.b,X)		; 01 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $011D.w,Y		; 19 1D 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($8A.b,X)		; 01 8A
	tsb $49.b		; 04 49
	brk $45.b		; 00 45
	eor ($24.b,X)		; 41 24
	brk $A6.b		; 00 A6
	brk $5B.b		; 00 5B
	brk $24.b		; 00 24
	brk $18.b		; 00 18
	ora $05.b		; 05 05
	stx $86.b		; 86 86
	.db $82, $82, $C3		; 82 82 C3
	cmp $41.b,S		; C3 41
	eor ($24.b,X)		; 41 24
	bit $18.b		; 24 18
	clc		; 18
	brk $00.b		; 00 00
	tsb $AA.b		; 04 AA
	bpl -90.b		; 10 A6
	brk $96.b		; 00 96
	tsb $92.b		; 04 92
	brk $9A.b		; 00 9A
	brk $6D.b		; 00 6D
	brk $92.b		; 00 92
	brk $61.b		; 00 61
	trb $14.b		; 14 14
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	tsb $040C.w		; 0C 0C 04
	tsb $92.b		; 04 92
	sta ($61.b)		; 92 61
	adc ($00.b,X)		; 61 00
	brk $10.b		; 00 10
	tay		; A8
	bpl -87.b		; 10 A9
	ora ($AB.b),Y		; 11 AB
	eor $96.b,S		; 43 96
	cop $57.b		; 02 57
	bpl -51.b		; 10 CD
	brk $6D.b		; 00 6D
	brk $95.b		; 00 95
	bvc  80.b		; 50 50
	bvc  80.b		; 50 50
	eor ($51.b),Y		; 51 51
	adc $63.b,S		; 63 63
	jsl $323222.l		; 22 22 32 32
	sta ($92.b)		; 92 92
	asl A		; 0A
	asl A		; 0A
	jsr $0048.w		; 20 48 00
	and #$08.b		; 29 08
	rol $02.b		; 26 02
	ora [$06.b],Y		; 17 06
	ora $0E04.w		; 0D 04 0E
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	ora $0A19.w,Y		; 19 19 0A
	asl A		; 0A
	asl $06.b		; 06 06
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	bpl  40.b		; 10 28
	brk $FC.b		; 00 FC
	tsb $2212.w		; 0C 12 22
	cmp #$02.b		; C9 02
	lda $02.b,X		; B5 02
	eor $02.b		; 45 02
	sta $02.b		; 85 02
	ora $10.b		; 05 10
	bpl   0.b		; 10 00
	brk $EC.b		; 00 EC
	cpx $3636.w		; EC 36 36
	.db $42, $42		; 42 42
	.db $82, $82, $02		; 82 82 02
	cop $02.b		; 02 02
	cop $00.b		; 02 00
	eor $B600.w		; 4D 00 B6
	brk $49.b		; 00 49
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $82, $82, $49		; 82 82 49
	eor #$30.b		; 49 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and #$08.b		; 29 08
	sbc $00.b		; E5 00
	and $00.b,X		; 35 00
	wai		; CB
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	iny		; C8
	iny		; C8
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0051.w		; 20 51 00
	.db $62, $82, $27		; 62 82 27
	asl $AD.b		; 06 AD
	and $9E.b		; 25 9E
	ora ($5A.b,X)		; 01 5A
	brk $2B.b		; 00 2B
	brk $1A.b		; 00 1A
	ldy #$A0.b		; A0 A0
	sta ($81.b,X)		; 81 81
	rep #$C2		; C2 C2
	lsr $46.b		; 46 46
	adc $65.b		; 65 65
	and $25.b		; 25 25
	trb $14.b		; 14 14
	tsb $04.b		; 04 04
	brk $F8.b		; 00 F8
	clc		; 18
	bit $44.b		; 24 44
	sta ($84.b,S),Y		; 93 84
	rtl		; 6B

	tsb $8B.b		; 04 8B
	tsb $8B.b		; 04 8B
	tsb $0B.b		; 04 0B
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	cld		; D8
	cld		; D8
	jmp ($846C.w)		; 6C 6C 84
	sty $04.b		; 84 04
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	cop $09.b		; 02 09
	ora ($0F.b,X)		; 01 0F
	ora [$0F.b]		; 07 0F
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $01.b		; 06 01
	asl $07.b		; 06 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	trb $14C0.w		; 1C C0 14
	rti		; 40

	sty $C0.b,X		; 94 C0
	trb $88.b		; 14 88
	ora ($00.b)		; 12 00
	asl A		; 0A
	cop $09.b		; 02 09
	brk $05.b		; 00 05
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	dey		; 88
	php		; 08
	php		; 08
	php		; 08
	tsb $040C.w		; 0C 0C 04
	tsb $06.b		; 04 06
	asl $02.b		; 06 02
	cop $28.b		; 02 28
	stz $08.b,X		; 74 08
	eor $08.b,X		; 55 08
	eor $08.b,X		; 55 08
	eor $20.b,X		; 55 20
	eor $2D00.w		; 4D 00 2D
	php		; 08
	and $00.b		; 25 00
	bit $28.b,X		; 34 28
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	plp		; 28
	bmi  48.b		; 30 30
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	pha		; 48
	sbc ($C0.b)		; F2 C0
	lda $D1A0.w,X		; BD A0 D1
	and ($53.b,X)		; 21 53
	and $56.b,S		; 23 56
	jsl $258057.l		; 22 57 80 25
	brk $A5.b		; 00 A5
	eor $C04D.w		; 4D 4D C0
	cpy #$A0.b		; C0 A0
	ldy #$A1.b		; A0 A1
	lda ($A3.b,X)		; A1 A3
	lda $A2.b,S		; A3 A2
	ldx #$C2.b		; A2 C2
	rep #$42		; C2 42
	.db $42, $80		; 42 80
	rti		; 40

	brk $FC.b		; 00 FC
	tsb $2212.w		; 0C 12 22
	cmp #$02.b		; C9 02
	sbc $82.b,X		; F5 82
	eor $82.b		; 45 82
	eor $80.b		; 45 80
	eor [$80.b]		; 47 80
	bra   0.b		; 80 00
	brk $EC.b		; 00 EC
	cpx $3636.w		; EC 36 36
	cop $02.b		; 02 02
	.db $82, $82, $82		; 82 82 82
	.db $82, $80, $80		; 82 80 80
	brk $A1.b		; 00 A1
	rti		; 40

	sta ($02.b)		; 92 02
	eor [$16.b],Y		; 57 16
	eor $2F04.w		; 4D 04 2F
	brk $1A.b		; 00 1A
	brk $0B.b		; 00 0B
	brk $0A.b		; 00 0A
	rti		; 40

	rti		; 40

	adc ($61.b,X)		; 61 61
	jsl $363622.l		; 22 22 36 36
	trb $14.b		; 14 14
	ora $05.b		; 05 05
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	brk $FC.b		; 00 FC
	tsb $4232.w		; 0C 32 42
	bit #$82.b		; 89 82
	adc $82.b,X		; 75 82
	eor $02.b		; 45 02
	sta $02.b		; 85 02
	ora $02.b		; 05 02
	ora $00.b		; 05 00
	brk $CC.b		; 00 CC
	cpy $7676.w		; CC 76 76
	.db $82, $82, $82		; 82 82 82
	.db $82, $02, $02		; 82 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	ora ($22.b,X)		; 01 22
	bit $79.b		; 24 79
	adc ($D7.b,X)		; 61 D7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $261D.w,X		; 1D 1D 26
	rol $61.b		; 26 61
	adc ($00.b,X)		; 61 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $8906.w,X		; FE 06 89
	bcc -27.b		; 90 E5
	bra 122.b		; 80 7A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $76.b,X		; 76 76
	txs		; 9A
	txs		; 9A
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	clc		; 18
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	cld		; D8
	brk $0A.b		; 00 0A
	tsb $09.b		; 04 09
	brk $05.b		; 00 05
	ora ($04.b,X)		; 01 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $05.b		; 02 05
	cop $85.b		; 02 85
	cop $85.b		; 02 85
	sty $4A.b		; 84 4A
	tsb $4A.b		; 04 4A
	brk $B4.b		; 00 B4
	brk $48.b		; 00 48
	brk $30.b		; 00 30
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	sty $84.b		; 84 84
	sty $84.b		; 84 84
	pha		; 48
	pha		; 48
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	ora $571A43.l,X		; 1F 43 1A 57
	ora $361F26.l		; 0F 26 1F 36
	rol $3709.w,X		; 3E 09 37
	ora $7F.b		; 05 7F
	ora ($5F.b,X)		; 01 5F
	jsl $221722.l		; 22 22 17 22
	ora $060F12.l		; 0F 12 0F 06
	ora [$08.b]		; 07 08
	ora ($05.b,X)		; 01 05
	ora #$00.b		; 09 00
	ora $20.b,S		; 03 20
	ora $FC.b,S		; 03 FC
	adc ($AC.b,X)		; 61 AC
	adc $F8.b,X		; 75 F8
	and ($7C.b)		; 32 7C
	ldx $BE.b,Y		; B6 BE
	iny		; C8
	inc $D0.b,X		; F6 D0
	sbc $A2FDC0.l,X		; FF C0 FD A2
	jsl $F822F4.l		; 22 F4 22 F8
	bit $78.b		; 24 78
	bmi -16.b		; 30 F0
	php		; 08
	cpy #$D0.b		; C0 D0
	iny		; C8
	bra -32.b		; 80 E0
	cop $E0.b		; 02 E0
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $09.b		; 00 09
	ora $14.b,S		; 03 14
	ora [$12.b]		; 07 12
	ora [$12.b]		; 07 12
	ora #$F6.b		; 09 F6
	cpx #$1F.b		; E0 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	phd		; 0B
	ora $0B0F0B.l		; 0F 0B 0F 0B
	ora $EE090F.l		; 0F 0F 09 EE
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	sta ($42.b,X)		; 81 42
	brk $FF.b		; 00 FF
	lda $18.b		; A5 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	brk $00.b		; 00 00
	sbc $C470FF.l,X		; FF FF 70 C4
	sec		; 38
	sty $8C38.w		; 8C 38 8C
	bmi -120.b		; 30 88
	bmi -120.b		; 30 88
	pla		; 68
	cpy $603E.w		; CC 3E 60
	and $385E.w,X		; 3D 5E 38
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	asl $1426.w,X		; 1E 26 14
	bit $4418.w,X		; 3C 18 44
	plp		; 28
	pla		; 68
	jsr $40C8.w		; 20 C8 40
	tya		; 98
	bpl  -8.b		; 10 F8
	rts		; 60

	cpx #$00.b		; E0 00
	trb $08.b		; 14 08
	clc		; 18
	brk $28.b		; 00 28
	bpl  32.b		; 10 20
	bpl  64.b		; 10 40
	bmi  16.b		; 30 10
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora $0A.b,S		; 03 0A
	asl $0C.b		; 06 0C
	tsb $11.b		; 04 11
	ora #$19.b		; 09 19
	ora #$12.b		; 09 12
	ora $25.b,S		; 03 25
	asl $32.b,X		; 16 32
	trb $03.b		; 14 03
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $09.b,S		; 03 09
	asl $09.b		; 06 09
	asl $03.b		; 06 03
	tsb $0816.w		; 0C 16 08
	trb $08.b		; 14 08
	sbc $C1.b,S		; E3 C1
	sbc $C1.b,S		; E3 C1
	ldx #$C1.b		; A2 C1
	cmp ($80.b,X)		; C1 80
	eor ($80.b,X)		; 41 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  65.b		; 80 41
	cmp ($00.b,X)		; C1 00
	cmp ($00.b,X)		; C1 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq -32.b		; F0 E0
	tay		; A8
	bcs -104.b		; B0 98
	bcc -60.b		; 90 C4
	iny		; C8
	jmp $A4C8.w		; 4C C8 A4
	rts		; 60

	eor ($34.b)		; 52 34
	rol $14.b		; 26 14
	cpx #$00.b		; E0 00
	bcs  64.b		; B0 40
	bcc  96.b		; 90 60
	iny		; C8
	bmi -56.b		; 30 C8
	bmi  96.b		; 30 60
	clc		; 18
	bit $08.b,X		; 34 08
	trb $08.b		; 14 08
	ora [$11.b]		; 07 11
	asl $0E18.w		; 0E 18 0E
	clc		; 18
	asl $08.b		; 06 08
	asl $08.b		; 06 08
	phd		; 0B
	ora $033E.w,Y		; 19 3E 03
	lsr $0E3D.w,X		; 5E 3D 0E
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	bit $6200.w,X		; 3C 00 62
	ora ($43.b,X)		; 01 43
	ora ($40.b,X)		; 01 40
	ora ($40.b,X)		; 01 40
	ora $40.b,S		; 03 40
	sta [$40.b]		; 87 40
	ora $0A07E6.l		; 0F E6 07 0A
	cmp ($C0.b,X)		; C1 C0
	bra -128.b		; 80 80
	bra -127.b		; 80 81
	bra -127.b		; 80 81
	bra -127.b		; 80 81
	bra -123.b		; 80 85
	cop $0E.b		; 02 0E
	brk $06.b		; 00 06
	lda $FF00.w,X		; BD 00 FF
	bit $FF.b		; 24 FF
	brk $FF.b		; 00 FF
	.db $82, $FF, $EE		; 82 FF EE
	sbc $6C93EE.l,X		; FF EE 93 6C
	sbc $005A6C.l,X		; FF 6C 5A 00
	stp		; DB
	brk $7C.b		; 00 7C
	sta $82.b,S		; 83 82
	sbc $6CFFAA.l,X		; FF AA FF 6C
	sbc $44FE00.l,X		; FF 00 FE 44
	inc $4600.w,X		; FE 00 46
	bra -62.b		; 80 C2
	brk $82.b		; 00 82
	brk $02.b		; 00 02
	bra   2.b		; 80 02
	cmp ($02.b,X)		; C1 02
	cpx #$C7.b		; E0 C7
	cpy #$A0.b		; C0 A0
	sta $03.b,S		; 83 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($41.b,X)		; 01 41
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $0C.b		; 02 0C
	tsb $18.b		; 04 18
	ora #$10.b		; 09 10
	tsb $33.b		; 04 33
	ora ($25.b)		; 12 25
	tsb $2B.b		; 04 2B
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora $0F0F0F.l		; 0F 0F 0F 0F
	trb $1A1C.w		; 1C 1C 1A
	inc A		; 1A
	ora $15.b,X		; 15 15
	ora $2A.b,X		; 15 2A
	ora #$36.b		; 09 36
	asl A		; 0A
	bit $0A.b,X		; 34 0A
	trb $02.b		; 14 02
	trb $0C02.w		; 1C 02 0C
	ora ($06.b,X)		; 01 06
	brk $03.b		; 00 03
	ora $15.b,X		; 15 15
	phd		; 0B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	phd		; 0B
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $305B15.l		; 6F 15 5B 30
	adc [$25.b],Y		; 77 25
	rol $02.b		; 26 02
	trb $0C28.w		; 1C 28 0C
	bmi  15.b		; 30 0F
	clc		; 18
	ora $11.b		; 05 11
	ora $01.b,X		; 15 01
	bmi   4.b		; 30 04
	and $08.b		; 25 08
	cop $19.b		; 02 19
	php		; 08
	ora $10.b,S		; 03 10
	ora ($00.b,S),Y		; 13 00
	brk $0E.b		; 00 0E
	brk $FB.b		; 00 FB
	mvn $86,$ED		; 54 ED 86
	sbc [$52.b],Y		; F7 52
	lda ($20.b)		; B2 20
	stz $980A.w		; 9C 0A 98
	asl $F8.b		; 06 F8
	tsb $C450.w		; 0C 50 C4
	mvn $86,$C0		; 54 C0 86
	bcc  82.b		; 90 52
	php		; 08
	jsr $084C.w		; 20 4C 08
	rts		; 60

	tsb $64.b		; 04 64
	brk $00.b		; 00 00
	sec		; 38
	brk $10.b		; 00 10
	ora $000609.l		; 0F 09 06 00
	jsr ($F804.w,X)		; FC 04 F8
	adc ($88.b)		; 72 88
	sta $1A.b		; 85 1A
	jsr $401F.w		; 20 1F 40
	jsl $FBF4F4.l		; 22 F4 F4 FB
	xce		; FB
	ora $03.b,S		; 03 03
	and [$37.b],Y		; 37 37
	sbc [$F7.b],Y		; F7 F7
	sbc [$F7.b],Y		; F7 F7
.ACCU 8
	sep #$E2		; E2 E2
	cmp ($C0.b,X)		; C1 C0
	brk $00.b		; 00 00
	.db $42, $42		; 42 42
	bit $24.b		; 24 24
	sta $2400.w,Y		; 99 00 24
	sta $BD5A.w,Y		; 99 5A BD
	sta ($E7.b,X)		; 81 E7
	cmp $A5.b,S		; C3 A5
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ror $66.b		; 66 66
	.db $42, $42		; 42 42
	clc		; 18
	brk $3C.b		; 00 3C
	bit $5B.b		; 24 5B
	bmi 119.b		; 30 77
	and $26.b		; 25 26
	cop $1C.b		; 02 1C
	plp		; 28
	trb $0F30.w		; 1C 30 0F
	plp		; 28
	asl A		; 0A
	and $0E.b,S		; 23 0E
	and $30.b,S		; 23 30
	tsb $25.b		; 04 25
	php		; 08
	cop $19.b		; 02 19
	php		; 08
	ora $00.b,S		; 03 00
	ora $10.b,S		; 03 10
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $ED.b		; 00 ED
	stx $F7.b		; 86 F7
	eor ($B2.b)		; 52 B2
	jsr $0A9C.w		; 20 9C 0A
	stz $F806.w		; 9C 06 F8
	asl A		; 0A
	plp		; 28
	.db $62, $38, $62		; 62 38 62
	stx $90.b		; 86 90
	eor ($08.b)		; 52 08
	jsr $084C.w		; 20 4C 08
	rts		; 60

	brk $60.b		; 00 60
	tsb $00.b		; 04 00
	trb $1C00.w		; 1C 00 1C
	brk $03.b		; 00 03
	php		; 08
	ora ($04.b,X)		; 01 04
	ora $2603.w,X		; 1D 03 26
	ora $73.b		; 05 73
	lda ($FF.b,X)		; A1 FF
	jsl $392C7F.l		; 22 7F 2C 39
	dec $0007.w		; CE 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	brk $6C.b		; 00 6C
	ldx #$60.b		; A2 60
	sty $0E60.w		; 8C 60 0E
	jsr $C430.w		; 20 30 C4
	jsr $2CC8.w		; 20 C8 2C
	bmi  50.b		; 30 32
	bne 103.b		; D0 67
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	ldx #$1AFF.w		; A2 FF 1A
	lsr $3839.w		; 4E 39 38
	brk $F0.b		; 00 F0
	cpy #$00C0.w		; C0 C0 00
	bpl  12.b		; 10 0C
	bra -101.b		; 80 9B
	jsl $031803.l		; 22 03 18 03
	clv		; B8
	.db $82, $00, $70		; 82 00 70
	brk $88.b		; 00 88
	clc		; 18
	ldy $38.b		; A4 38
	sty $7C.b,X		; 94 7C
	sta ($20.b)		; 92 20
	eor $42F805.l,X		; 5F 05 F8 42
	dec A		; 3A
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	cli		; 58
	sei		; 78
	cli		; 58
	sei		; 78
	jmp $20387C.l		; 5C 7C 38 20
	and [$27.b],Y		; 37 27
	cmp $0300CF.l		; CF CF 00 03
	brk $04.b		; 00 04
	asl $09.b		; 06 09
	ora [$0A.b]		; 07 0A
	ora $FE0112.l		; 0F 12 01 FE
	plp		; 28
	cmp [$10.b]		; C7 10
	ora [$00.b],Y		; 17 00
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	ora [$06.b]		; 07 06
	ora [$0E.b]		; 07 0E
	ora $FB0107.l		; 0F 07 01 FB
	sbc $FCFC.w,Y		; F9 FC FC
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	ora $1A00.w,X		; 1D 00 1A
	php		; 08
	tsb $0003.w		; 0C 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $09.b		; 02 09
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	ora ($04.b,X)		; 01 04
	cop $06.b		; 02 06
	cop $0D.b		; 02 0D
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	cop $80.b		; 02 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -96.b		; 80 A0
	cpy #$4060.w		; C0 60 40
	bpl  32.b		; 10 20
	bcs -96.b		; B0 A0
	cli		; 58
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra  32.b		; 80 20
	cpy #$40A0.w		; C0 A0 40
	bne  32.b		; D0 20
	ora ($0B.b)		; 12 0B
	ora $3A0E.w,X		; 1D 0E 3A
	trb $2844.w		; 1C 44 28
	pla		; 68
	jsr $50D8.w		; 20 D8 50
	beq  96.b		; F0 60
	cpx #$0B00.w		; E0 00 0B
	tsb $0E.b		; 04 0E
	brk $1C.b		; 00 1C
	brk $28.b		; 00 28
	bpl  32.b		; 10 20
	bpl  80.b		; 10 50
	jsr $0060.w		; 20 60 00
	brk $00.b		; 00 00
	clv		; B8
	bcs  40.b		; B0 28
	bmi  80.b		; 30 50
	rts		; 60

	ldy #$40C0.w		; A0 C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	rti		; 40

	bmi -64.b		; 30 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$02.b]		; 07 02
	trb $3008.w		; 1C 08 30
	ora ($60.b),Y		; 11 60
	plp		; 28
	eor [$10.b]		; 47 10
	cmp $00805E.l		; CF 5E 80 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$1F.b]		; 07 1F
	ora $3C3F3F.l,X		; 1F 3F 3F 3C
	bit $7171.w,X		; 3C 71 71
	adc ($7F.b,X)		; 61 7F
	brk $00.b		; 00 00
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
	ora $AA5FAE.l,X		; 1F AE 5F AA
	rol $3AC9.w,X		; 3E C9 3A
	cmp $4D3E.w		; CD 3E 4D
	asl $1E6D.w,X		; 1E 6D 1E
	and $0C1F.w		; 2D 1F 0C
	mvp $48,$5F		; 44 5F 48
	eor $203F29.l,X		; 5F 29 3F 20
	rol $3E28.w,X		; 3E 28 3E
	bit $0C3E.w		; 2C 3E 0C
	asl $1C04.w,X		; 1E 04 1C
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $F8.b		; 00 F8
	bcc  14.b		; 90 0E
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	asl $1E23.w		; 0E 23 1E
	and $18.b,S		; 23 18
	jsl $2C6238.l		; 22 38 62 2C
	ror $F8.b		; 66 F8
	tsb $F478.w		; 0C 78 F4
	sed		; F8
	beq  28.b		; F0 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	beq -32.b		; F0 E0
	bpl  56.b		; 10 38
	.db $62, $3C, $62		; 62 3C 62
	tsb $0E22.w		; 0C 22 0E
	and $1A.b,S		; 23 1A
	and ($0F.b,S),Y		; 33 0F
	clc		; 18
	ora $070F17.l		; 0F 17 0F 07
	trb $1C00.w		; 1C 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora [$03.b]		; 07 03
	tsb $13.b		; 04 13
	tsb $020D.w		; 0C 0D 02
	and ($0D.b)		; 32 0D
	and $2F03.w,X		; 3D 03 2F
	ora ($77.b,S),Y		; 13 77
	ora $225F.w		; 0D 5F 22
	adc $000C15.l		; 6F 15 0C 00
	cop $00.b		; 02 00
	tsb $0001.w		; 0C 01 00
	ora $11.b,S		; 03 11
	ora $220F00.l		; 0F 00 0F 22
	ora $15.b,S		; 03 15
	ora ($E4.b,X)		; 01 E4
	clc		; 18
	cld		; D8
	jsr $D826.w		; 20 26 D8
	dec $FAE0.w,X		; DE E0 FA
	cpx $F7.b		; E4 F7
	cld		; D8
	sbc $FBA2.w,X		; FD A2 FB
	mvn $80,$98		; 54 98 80
	jsr $1800.w		; 20 00 18
	cpy #$E000.w		; C0 00 E0
	cpy $F8.b		; C4 F8
	bra  -8.b		; 80 F8
	jsl $C054E0.l		; 22 E0 54 C0
	ora ($21.b,X)		; 01 21
	bit $C0.b		; 24 C0
	ora ($C4.b),Y		; 11 C4
	rol A		; 2A
	cmp $84.b,X		; D5 84
	adc $055586.l,X		; 7F 86 55 05
	bcc  15.b		; 90 0F
	sta $DFDF.w,Y		; 99 DF DF
	lda $3B3BBF.l,X		; BF BF 3B 3B
	tsx		; BA
	tsx		; BA
	bne -48.b		; D0 D0
	bit #$0A81.w		; 89 81 0A
	brk $06.b		; 00 06
	brk $20.b		; 00 20
	and ($C9.b,X)		; 21 C9
	brk $22.b		; 00 22
	iny		; C8
	cmp $EA.b,X		; D5 EA
	php		; 08
	and $E82B18.l,X		; 3F 18 2B E8
	cop $FC.b		; 02 FC
	rol $FE.b		; 26 FE
	inc $FFFF.w,X		; FE FF FF
	and [$37.b],Y		; 37 37
	ora [$17.b],Y		; 17 17
	rep #$02		; C2 02
	cpx $20.b		; E4 20
	pei ($00.b)		; D4 00
	cld		; D8
	brk $04.b		; 00 04
	ora $22.b,S		; 03 22
	cmp ($05.b,X)		; C1 05
	sed		; F8
	cop $FC.b		; 02 FC
	jmp ($7E82.w,X)		; 7C 82 7E
	lda $297E.w,Y		; B9 7E 29
	and $FE4A.w,X		; 3D 4A FE
	inc $7F7F.w,X		; FE 7F 7F
	ora $63630F.l		; 0F 0F 63 63
	cmp ($FD.b,X)		; C1 FD
	ora ($7E.b)		; 12 7E
	asl A		; 0A
	ror $3D09.w,X		; 7E 09 3D
	and $3D1A.w		; 2D 1A 3D
	inc A		; 1A
	bit $3C1B.w,X		; 3C 1B 3C
	tas		; 1B
	jmp ($DC9A.w,X)		; 7C 9A DC
	brk $2C.b		; 00 2C
	php		; 08
	clc		; 18
	cpx #$3D01.w		; E0 01 3D
	ora #$193D.w		; 09 3D 19
	and $3C18.w,X		; 3D 18 3C
	bpl  28.b		; 10 1C
	bra  32.b		; 80 20
	iny		; C8
	bpl   0.b		; 10 00
	brk $12.b		; 00 12
	ora $033D.w		; 0D 3D 03
	and $132F17.l		; 2F 17 2F 13
	adc [$0D.b],Y		; 77 0D
	eor $156F22.l,X		; 5F 22 6F 15
	xce		; FB
	pla		; 68
	tsb $0001.w		; 0C 01 00
	ora $13.b,S		; 03 13
	ora $000F11.l		; 0F 11 0F 00
	ora $150322.l		; 0F 22 03 15
	ora ($68.b,X)		; 01 68
	tsb $24.b		; 04 24
	cld		; D8
	dec $FAE0.w,X		; DE E0 FA
	pea $E4FA.w		; F4 FA E4
	sbc [$D8.b],Y		; F7 D8
	sbc $FBA2.w,X		; FD A2 FB
	mvn $8B,$EF		; 54 EF 8B
	clc		; 18
	cpy #$E000.w		; C0 00 E0
	cpx $F8.b		; E4 F8
	cpy $F8.b		; C4 F8
	bra  -8.b		; 80 F8
	jsl $C054E0.l		; 22 E0 54 C0
	phb		; 8B
	bcc  62.b		; 90 3E
	brk $3E.b		; 00 3E
	trb $36.b		; 14 36
	trb $183C.w		; 1C 3C 18
	bit $1E18.w,X		; 3C 18 1E
	ora $0C1E.w		; 0D 1E 0C
	ora $000E.w,X		; 1D 0E 00
	rol $3E14.w,X		; 3E 14 3E
	tsb $3E.b		; 04 3E
	clc		; 18
	bit $3C00.w,X		; 3C 00 3C
	brk $1E.b		; 00 1E
	ora $041F.w		; 0D 1F 04
	ora $007000.l,X		; 1F 00 70 00
	dey		; 88
	clc		; 18
	ldy $78.b		; A4 78
	sty $00.b,X		; 94 00
	adc $41F804.l,X		; 7F 04 F8 41
	and ($24.b,X)		; 21 24
	rti		; 40

	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	cli		; 58
	sei		; 78
	cli		; 58
	sei		; 78
	bmi   0.b		; 30 00
	eor $DFDF4F.l		; 4F 4F DF DF
	lda $0300BF.l,X		; BF BF 00 03
	brk $04.b		; 00 04
	asl $09.b		; 06 09
	ora [$0A.b]		; 07 0A
	brk $FF.b		; 00 FF
	php		; 08
	cmp [$20.b]		; C7 20
	and ($C9.b,X)		; 21 C9
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	ora [$06.b]		; 07 06
	ora [$03.b]		; 07 03
	brk $FC.b		; 00 FC
	jsr ($FEFE.w,X)		; FC FE FE
	sbc $803EFF.l,X		; FF FF 3E 80
	rol $3654.w,X		; 3E 54 36
	jmp $1E4C9E.l		; 5C 9E 4C 1E
	sty $D83C.w		; 8C 3C D8
	ldy $5C18.w,X		; BC 18 5C
	tsx		; BA
	brk $3E.b		; 00 3E
	sty $BE.b,X		; 94 BE
	bcc -66.b		; 90 BE
	sty $009E.w		; 8C 9E 00
	asl $BC80.w,X		; 1E 80 BC
	cld		; D8
	jsr ($7C10.w,X)		; FC 10 7C
	sei		; 78
	cpy $8820.w		; CC 20 88
	bvs -104.b		; 70 98
	rti		; 40

	bcc   0.b		; 90 00
	bmi   0.b		; 30 00
	cpx #$0080.w		; E0 80 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0D1701.l		; 0F 01 17 0D
	and $33531E.l		; 2F 1E 53 33
	lda $66.b		; A5 66
	lsr $D8.b,X		; 56 D8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	asl $3202.w,X		; 1E 02 32
	ora $1866.w		; 0D 66 18
	cld		; D8
	jsr $0000.w		; 20 00 00
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
	tsb $1E23.w		; 0C 23 1E
	and ($04.b,S),Y		; 33 04
	ora ($0E.b),Y		; 11 0E
	ora $0902.w,Y		; 19 02 09
	brk $0C.b		; 00 0C
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	asl $0C02.w,X		; 1E 02 0C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	tsb $01.b		; 04 01
	ora ($00.b,X)		; 01 00
	brk $29.b		; 00 29
	pei ($08.b)		; D4 08
	adc ($04.b)		; 72 04
	dec A		; 3A
	cop $1D.b		; 02 1D
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pld		; 2B
	plp		; 28
	and $0D2C.w		; 2D 2C 0D
	tsb $0606.w		; 0C 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plx		; FA
	and [$EC.b]		; 27 EC
	phk		; 4B
	inc $53.b,X		; F6 53
	sbc $58BF45.l,X		; FF 45 BF 58
	adc ($1C.b)		; 72 1C
	and [$18.b]		; 27 18
	tas		; 1B
	tsb $21.b		; 04 21
	sta ($09.b,X)		; 81 09
	cmp ($50.b),Y		; D1 50
	iny		; C8
	tsb $C0.b		; 04 C0
	clc		; 18
	cpy #$411D.w		; C0 1D 41
	ora $0401.w,Y		; 19 01 04
	brk $5F.b		; 00 5F
	inx		; E8
	ror $5EA4.w		; 6E A4 5E
	sty $FE.b,X		; 94 FE
	eor $FA.b		; 45 FA
	and $9C.b,X		; 35 9C
	bvs -56.b		; 70 C8
	bmi -80.b		; 30 B0
	rti		; 40

	bit #$A182.w		; 89 82 A1
	stx $15.b,Y		; 96 15
	rol $40.b		; 26 40
	asl $30.b		; 06 30
	asl $70.b		; 06 70
	tsb $30.b		; 04 30
	brk $40.b		; 00 40
	brk $14.b		; 00 14
	phk		; 4B
	bpl -114.b		; 10 8E
	jsr $409C.w		; 20 9C 40
	sec		; 38
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $34.b,X		; B4 34
	stz $74.b,X		; 74 74
	bvs 112.b		; 70 70
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $56.b		; 00 56
	cld		; D8
	cmp $3B3E.w,X		; DD 3E 3B
	asl A		; 0A
	ora #$0D00.w		; 09 00 0D
	tsb $05.b		; 04 05
	brk $07.b		; 00 07
	cop $03.b		; 02 03
	brk $D8.b		; 00 D8
	jsr $003E.w		; 20 3E 00
	asl A		; 0A
	tsb $00.b		; 04 00
	asl $04.b		; 06 04
	cop $00.b		; 02 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	eor $66.b,X		; 55 66
	jsl $3C442C.l		; 22 2C 44 3C
	stz $2F.b		; 64 2F
	rts		; 60

	trb $46.b		; 14 46
	trb $3046.w		; 1C 46 30
	cpy $55.b		; C4 55
	php		; 08
	jsl $130419.l		; 22 19 04 13
	tsb $03.b		; 04 03
	bpl   0.b		; 10 00
	sec		; 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	sbc [$55.b],Y		; F7 55
	lda ($22.b,S),Y		; B3 22
	txs		; 9A
	ora ($9E.b),Y		; 11 9E
	ora ($FA.b,S),Y		; 13 FA
	ora $14.b,S		; 03 14
	and ($1C.b),Y		; 31 1C
	and ($06.b),Y		; 31 06
	ora ($55.b),Y		; 11 55
	php		; 08
	jsl $64104C.l		; 22 4C 10 64
	bpl  96.b		; 10 60
	tsb $00.b		; 04 00
	asl $0E00.w		; 0E 00 0E
	brk $0F.b		; 00 0F
	ora ($1F.b,X)		; 01 1F
	rol $0F.b		; 26 0F
	stz $0C.b		; 64 0C
	rti		; 40

	ora $902ED6.l		; 0F D6 2E 90
	ora ($AC.b),Y		; 11 AC
	eor ($AE.b,S),Y		; 53 AE
	ora $6A.b,X		; 15 6A
	trb $1F.b		; 14 1F
	bit $3C.b,X		; 34 3C
	bmi  59.b		; 30 3B
	ror $60.b		; 66 60
	adc ($60.b,X)		; 61 60
	eor ($50.b,S),Y		; 53 50
	eor ($50.b),Y		; 51 50
	ora $14.b,X		; 15 14
	ora ($C4.b),Y		; 11 C4
	rol A		; 2A
	cmp $84.b,X		; D5 84
	adc $055586.l,X		; 7F 86 55 05
	bcc  15.b		; 90 0F
	sta $4803.w,Y		; 99 03 48
	lda ($44.b),Y		; B1 44
	tyx		; BB
	tyx		; BB
	dec A		; 3A
	dec A		; 3A
	bvc  80.b		; 50 50
	ora #$0A01.w		; 09 01 0A
	brk $06.b		; 00 06
	brk $87.b		; 00 87
	brk $C3.b		; 00 C3
	rti		; 40

	jsl $EAD5C8.l		; 22 C8 D5 EA
	php		; 08
	and $E82A18.l,X		; 3F 18 2A E8
	cop $FC.b		; 02 FC
	rol $30.b		; 26 30
	cmp $26.b		; C5 26
	cmp #$3737.w		; C9 37 37
	ora [$17.b],Y		; 17 17
	rep #$02		; C2 02
	cpx $20.b		; E4 20
	pei ($00.b)		; D4 00
	cld		; D8
	brk $38.b		; 00 38
	brk $F1.b		; 00 F1
	cmp ($7A.b,X)		; C1 7A
	lda ($78.b),Y		; B1 78
	sta ($98.b),Y		; 91 98
	tsb $FC.b		; 04 FC
	and ($3D.b)		; 32 3D
	.db $82, $42, $9D		; 82 42 9D
	ror A		; 6A
	and $CA.b,X		; 35 CA
	and $16.b		; 25 16
	ror $1F17.w,X		; 7E 17 1F
	ora $6B.b,S		; 03 6B
	and $05.b,X		; 35 05
	eor $05.b		; 45 05
	ror A		; 6A
	asl A		; 0A
	dex		; CA
	asl A		; 0A
	phx		; DA
	inc A		; 1A
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	ora $1C.b,S		; 03 1C
	php		; 08
	bmi  33.b		; 30 21
	rti		; 40

	tsb $43.b		; 04 43
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	bit $493C.w,X		; 3C 3C 49
	bit $61.b		; 24 61
	bit $E5.b,X		; 34 E5
	and ($C8.b)		; 32 C8
	and [$42.b],Y		; 37 42
	ldy $728A.w,X		; BC 8A 72
	ora ($E1.b),Y		; 11 E1
	rti		; 40

	plp		; 28
	tya		; 98
	sbc $F9A8.w,Y		; F9 A8 F9
	sty $F8FD.w		; 8C FD F8
	iny		; C8
	adc ($43.b,S),Y		; 73 43
	lda $1F1FAF.l		; AF AF 1F 1F
	cmp $A1D4DF.l,X		; DF DF D4 A1
	jmp.w [$5AA5]		; DC A5 5A
	lda $02.b		; A5 02
	sbc $1F20.w,X		; FD 20 1F
	php		; 08
	ora [$C4.b]		; 07 C4
	cmp $93.b		; C5 93
	tax		; AA
	inc A		; 1A
	dec $DE16.w,X		; DE 16 DE
	ora ($DE.b)		; 12 DE
	asl $E602.w		; 0E 02 E6
.ACCU 8
.INDEX 8
	sep #$F8		; E2 F8
	sed		; F8
	inc $D7FE.w,X		; FE FE D7
	cmp [$EF.b],Y		; D7 EF
	inc A		; 1A
	sbc $56A956.l		; EF 56 A9 56
	sbc $1D02.w,X		; FD 02 1D
	sep #$47		; E2 47
	sec		; 38
	ora [$1E.b]		; 07 1E
	cop $8F.b		; 02 8F
	brk $7F.b		; 00 7F
	tsb $7F.b		; 04 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	cpy #$CF.b		; C0 CF
	pea $7AF7.w		; F4 F7 7A
	tda		; 7B
	ror A		; 6A
	trb $7A.b		; 14 7A
	tsb $007E.w		; 0C 7E 00
	inc $FF00.w,X		; FE 00 FF
	brk $BE.b		; 00 BE
	cmp ($EA.b,X)		; C1 EA
	sbc $F7.b,X		; F5 F7
	sei		; 78
	brk $34.b		; 00 34
	brk $2C.b		; 00 2C
	brk $2C.b		; 00 2C
	brk $04.b		; 00 04
	brk $C4.b		; 00 C4
	brk $F1.b		; 00 F1
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	bmi -64.b		; 30 C0
	clc		; 18
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	beq -11.b		; F0 F5
	eor ($6D.b),Y		; 51 6D
	ora $39.b		; 05 39
	eor ($1F.b,X)		; 41 1F
	bvs  22.b		; 70 16
	adc [$1C.b],Y		; 77 1C
	and ($0C.b),Y		; 31 0C
	and ($4C.b,X)		; 21 4C
	and ($51.b,X)		; 21 51
	asl A		; 0A
	ora $12.b		; 05 12
	ora ($06.b,X)		; 01 06
	jsr $2820.w		; 20 20 28
	jsr $000E.w		; 20 0E 00
	asl $1E00.w,X		; 1E 00 1E
	brk $D6.b		; 00 D6
	eor $53DE.w		; 4D DE 53
	dec $FF47.w		; CE 47 FF
	brk $69.b		; 00 69
	inc $BE8F.w,X		; FE 8F BE
	sta $BE9FBE.l		; 8F BE 9F BE
	jmp $5021.w		; 4C 21 50
	and $40.b,S		; 23 40
	and [$00.b],Y		; 37 00
	ora $6C8F80.l		; 0F 80 8F 6C
	and $4C2F6C.l		; 2F 6C 2F 4C
	ora $AF64BB.l,X		; 1F BB 64 AF
	bvs -69.b		; 70 BB
	stz $FF.b,X		; 74 FF
	brk $1F.b		; 00 1F
	cpx #$5B.b		; E0 5B
	cpx $EC5B.w		; EC 5B EC
	tda		; 7B
	jmp.w [$FE00]		; DC 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $F0.b		; 00 F0
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	ldy $B840.w,X		; BC 40 B8
	rti		; 40

	bcc  96.b		; 90 60
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	bra  96.b		; 80 60
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	iny		; C8
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	and $823301.l,X		; 3F 01 33 82
	bit $D7D4.w,X		; 3C D4 D7
	php		; 08
	ora $F30E0B.l,X		; 1F 0B 0E F3
	trb $0B.b		; 14 0B
	cmp [$0C.b],Y		; D7 0C
	brk $30.b		; 00 30
	cop $2C.b		; 02 2C
	trb $33.b		; 14 33
	cpx #$18.b		; E0 18
	sbc $18.b,S		; E3 18
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	brk $1C.b		; 00 1C
	ror $19.b,X		; 76 19
	sty $FEF3.w		; 8C F3 FE
	eor $805E.w,Y		; 59 5E 80
	inc $AE18.w,X		; FE 18 AE
	ora $18E7.w,Y		; 19 E7 18
	eor $06E0A4.l,X		; 5F A4 E0 06
	brk $06.b		; 00 06
	clc		; 18
	cop $81.b		; 02 81
	jsl $580219.l		; 22 19 02 58
	.db $42, $58		; 42 58
	eor $A0.b,S		; 43 A0
	ora [$93.b]		; 07 93
	jmp ($7887.w)		; 6C 87 78
	ora $EB9FF1.l		; 0F F1 9F EB
	asl $5B0B.w,X		; 1E 0B 5B
	pei ($07.b)		; D4 07
	sed		; F8
	sbc $DBD800.l,X		; FF 00 D8 DB
	bcs -75.b		; B0 B5
	brk $03.b		; 00 03
	ora #$03.b		; 09 03
	inx		; E8
	ora $A4.b,S		; 03 A4
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	sed		; F8
	lda [$68.b],Y		; B7 68
	tad		; 5B
	cpx #$FF.b		; E0 FF
	cmp ($77.b,X)		; C1 77
	phb		; 8B
	inc $6B.b,X		; F6 6B
	and $00FFF0.l		; 2F F0 FF 00
	beq   0.b		; F0 00
	brk $FD.b		; 00 FD
	brk $F9.b		; 00 F9
	bra  -1.b		; 80 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	and $3F1E.w,X		; 3D 1E 3F
	trb $1C3E.w		; 1C 3E 1C
	rol $3A1C.w,X		; 3E 1C 3A
	trb $1C3A.w		; 1C 3A 1C
	bit $3C18.w,X		; 3C 18 3C
	clc		; 18
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $23.b		; 00 23
	trb $1C23.w		; 1C 23 1C
	jsl $1C221C.l		; 22 1C 22 1C
	rol $18.b		; 26 18
	rol $18.b		; 26 18
	bit $18.b		; 24 18
	bit $18.b		; 24 18
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	bvc -114.b		; 50 8E
	rol A		; 2A
	sty $15.b,X		; 94 15
	tay		; A8
	eor ($A8.b),Y		; 51 A8
	pld		; 2B
	bne  39.b		; D0 27
	cmp ($27.b,S),Y		; D3 27
	eor ($0B.b,S),Y		; 53 0B
	stz $71.b,X		; 74 71
	adc ($6B.b),Y		; 71 6B
	rtl		; 6B

	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	bit $2B2F.w		; 2C 2F 2B
	and $202F29.l		; 2F 29 2F 20
	and $926984.l		; 2F 84 69 92
	adc $FF00.w		; 6D 00 FF
	ora $E8.b,S		; 03 E8
	cmp #$23.b		; C9 23
	cmp $B8C3B8.l,X		; DF B8 C3 B8
	cmp $D724.w,Y		; D9 24 D7
	cmp [$B6.b],Y		; D7 B6
	ldx $01.b,Y		; B6 01
	ora ($1C.b,X)		; 01 1C
	pha		; 48
	ora $C087C3.l,X		; 1F C3 87 C0
	sta [$E0.b]		; 87 E0
	ora $F8.b,S		; 03 F8
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	jsl $17E8CD.l		; 22 CD E8 17
	tay		; A8
	eor [$FA.b]		; 47 FA
	ora [$B2.b]		; 07 B2
	ora [$CA.b]		; 07 CA
	and $A39393.l		; 2F 93 93 A3
	sta $3A.b,S		; 83 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	bmi  68.b		; 30 44
	and ($02.b)		; 32 02
	plx		; FA
	cop $D0.b		; 02 D0
	cop $8A.b		; 02 8A
	eor [$80.b]		; 47 80
	eor [$A5.b]		; 47 A5
	.db $42, $15		; 42 15
.INDEX 8
	sep #$D5		; E2 D5
	jsl $D922DD.l		; 22 DD 22 D9
	rol $DB.b		; 26 DB
	rol $FA.b		; 26 FA
	xce		; FB
	ldy $BCBD.w,X		; BC BD BC
	lda $5D5C.w,X		; BD 5C 5D
	jmp.w [$DCDD]		; DC DD DC
	cmp $DDDC.w,X		; DD DC DD
	cld		; D8
	stp		; DB
	and [$F8.b],Y		; 37 F8
	tda		; 7B
	ldy $BC5B.w,X		; BC 5B BC
	plb		; AB
	jmp $E3DC2B.l		; 5C 2B DC E3
	trb $DCE3.w		; 1C E3 DC
	sbc [$E8.b],Y		; F7 E8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra  -1.b		; 80 FF
	rti		; 40

	sbc $6098.w,X		; FD 98 60
	sty $CC70.w		; 8C 70 CC
	bmi -20.b		; 30 EC
	bpl -20.b		; 10 EC
	bpl  -3.b		; 10 FD
	brk $FF.b		; 00 FF
	cmp ($FA.b,X)		; C1 FA
	sbc ($00.b,X)		; E1 00
	beq   0.b		; F0 00
	sei		; 78
	brk $78.b		; 00 78
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $F8.b		; 00 F8
	bra  -7.b		; 80 F9
	rti		; 40

	sbc ($DC.b),Y		; F1 DC
	adc ($D6.b),Y		; 71 D6
	adc ($C6.b),Y		; 71 C6
	adc ($A8.b),Y		; 71 A8
	adc $7BAA.w,Y		; 79 AA 7B
	bvs  47.b		; 70 2F
	adc ($21.b,S),Y		; 73 21
	and ($01.b,S),Y		; 33 01
	lsr $4E00.w		; 4E 00 4E
	brk $6E.b		; 00 6E
	brk $66.b		; 00 66
	brk $64.b		; 00 64
	brk $20.b		; 00 20
	ora ($21.b,X)		; 01 21
	brk $01.b		; 00 01
	brk $8F.b		; 00 8F
	ldx $BE8F.w,Y		; BE 8F BE
	cmp $0EF7EE.l,X		; DF EE F7 0E
	sbc $CE.b,X		; F5 CE
	inc $F2E1.w,X		; FE E1 F2
	sbc ($D2.b,X)		; E1 D2
	sbc ($4C.b,X)		; E1 4C
	ora $061F46.l,X		; 1F 46 1F 06
	ora $C01F00.l,X		; 1F 00 1F C0
	cmp $E02FC0.l		; CF C0 2F E0
	ora $E0.b,S		; 03 E0
	ora $7B.b,S		; 03 7B
	jmp.w [$DC6F]		; DC 6F DC
	and $0CF3DC.l		; 2F DC F3 0C
	sbc [$C9.b],Y		; F7 C9
	and $E017E0.l,X		; 3F E0 17 E0
	and [$C0.b],Y		; 37 C0
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $FC.b		; 00 FC
	cpy #$FD.b		; C0 FD
	brk $F3.b		; 00 F3
	brk $F3.b		; 00 F3
	brk $F3.b		; 00 F3
	rti		; 40

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -96.b		; 80 A0
	rti		; 40

	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ldy $9743.w,X		; BC 43 97
	pla		; 68
	sta $0D7763.l,X		; 9F 63 77 0D
	sta $55AF62.l,X		; 9F 62 AF 55
	xce		; FB
	plp		; 28
	cmp [$63.b],Y		; D7 63
	eor $18.b,S		; 43 18
	rts		; 60

	clc		; 18
	adc ($1F.b,X)		; 61 1F
	brk $1F.b		; 00 1F
	.db $62, $03, $55		; 62 03 55
	ora ($28.b,X)		; 01 28
	tsb $63.b		; 04 63
	php		; 08
	sbc [$18.b]		; E7 18
	lda $E3DFC0.l,X		; BF C0 DF E3
	sbc [$CD.b],Y		; F7 CD
	sbc $55FBA2.l,X		; FF A2 FB 55
	sbc $4DDEA8.l,X		; FF A8 DE 4D
	clc		; 18
	ora $00.b,S		; 03 00
	cmp $81.b,S		; C3 81
	sbc $02FF80.l,X		; FF 80 FF 02
	sbc $A8C751.l		; EF 51 C7 A8
	sta $4C.b,S		; 83 4C
	and ($FF.b,X)		; 21 FF
	brk $BE.b		; 00 BE
	cmp ($DB.b,X)		; C1 DB
	sbc [$F5.b]		; E7 F5
	wai		; CB
	inc $EFA5.w,X		; FE A5 EF
	eor ($D7.b)		; 52 D7
	lda #$B3.b		; A9 B3
	jmp ($FC00.w)		; 6C 00 FC
	brk $FD.b		; 00 FD
	bra  -9.b		; 80 F7
	bra  -5.b		; 80 FB
	brk $F5.b		; 00 F5
	rti		; 40

	plx		; FA
	bra  -3.b		; 80 FD
	brk $FE.b		; 00 FE
	sed		; F8
	brk $F8.b		; 00 F8
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bra -96.b		; 80 A0
	rti		; 40

	beq -128.b		; F0 80
	sed		; F8
	brk $BC.b		; 00 BC
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $D8.b		; 00 D8
	bit $18.b,X		; 34 18
	mvn $54,$38		; 54 38 54
	sec		; 38
	jmp $183C38.l		; 5C 38 3C 18
	bit $1C18.w		; 2C 18 1C
	php		; 08
	tsb $1800.w		; 0C 00 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $2C.b		; 00 2C
	bpl 108.b		; 10 6C
	bpl 108.b		; 10 6C
	bpl 100.b		; 10 64
	clc		; 18
	bit $18.b		; 24 18
	bit $08.b,X		; 34 08
	trb $08.b		; 14 08
	tsb $0000.w		; 0C 00 00
	bit $7C00.w,X		; 3C 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	tyx		; BB
	rts		; 60

	eor ($E0.b,S),Y		; 53 E0
	sbc $7BC3.w,X		; FD C3 7B
	stx $BB.b		; 86 BB
	mvp $40,$BE		; 44 BE 40
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sbc ($80.b),Y		; F1 80
	sbc $00.b,S		; E3 00
	cmp [$00.b],Y		; D7 00
	dec $00.b,X		; D6 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -96.b		; 80 A0
	cpy #$A0.b		; C0 A0
	rti		; 40

	rts		; 60

	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $0D.b		; 00 0D
	rol $1F.b,X		; 36 1F
	asl $0D3E.w		; 0E 3E 0D
	and $103210.l,X		; 3F 10 32 10
	asl $0001.w,X		; 1E 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0C1F04.l		; 0F 04 1F 0C
	asl $0211.w		; 0E 11 02
	ora ($0C.b),Y		; 11 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $7E00.w,X		; 7E 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	sei		; 78
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $8C.b		; 00 8C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   7.b		; 70 07
	sbc ($78.b),Y		; F1 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	ora [$F7.b]		; 07 F7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$00.b]		; E7 00
	asl $00E7.w,X		; 1E E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	adc $000000.l		; 6F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $93.b		; 00 93
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8E.b		; 00 8E
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
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	bra   1.b		; 80 01
	cpy #$41.b		; C0 41
	cpy #$11.b		; C0 11
	ldy #$3F.b		; A0 3F
	cpy #$06.b		; C0 06
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $41.b		; 00 41
	brk $41.b		; 00 41
	brk $31.b		; 00 31
	brk $7F.b		; 00 7F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	inx		; E8
	bvs 120.b		; 70 78
	bne 120.b		; D0 78
	bcs  78.b		; B0 4E
	bcs -17.b		; B0 EF
	bpl -17.b		; 10 EF
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	sed		; F8
	brk $F8.b		; 00 F8
	jsr $00F8.w		; 20 F8 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $FF.b		; 00 FF
	ora $0C011C.l		; 0F 1C 01 0C
	tsb $02.b		; 04 02
	ora [$00.b]		; 07 00
	ora $1E01.w,Y		; 19 01 1E
	asl A		; 0A
	ora $863F60.l		; 0F 60 3F 86
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	ora ($16.b,X)		; 01 16
	asl A		; 0A
	ora $0E10.w,Y		; 19 10 0E
	ror $0F.b,X		; 76 0F
	sbc $D902.w,X		; FD 02 D9
	cop $E4.b		; 02 E4
	asl $B8.b,X		; 16 B8
	sty $78C5.w		; 8C C5 78
	adc $41AE2C.l,X		; 7F 2C AE 41
	sbc $01988D.l,X		; FF 8D 98 01
	jsr ($E800.w,X)		; FC 00 E8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	ora ($0C.b,X)		; 01 0C
	sta ($40.b,X)		; 81 40
	bpl -116.b		; 10 8C
	brk $1A.b		; 00 1A
	sbc $C9.b		; E5 C9
	rol $ED.b,X		; 36 ED
	ora ($EC.b)		; 12 EC
	ora ($E8.b,S),Y		; 13 E8
	adc [$C9.b],Y		; 77 C9
	ldx $E7.b,Y		; B6 E7
	ora $F867.w,Y		; 19 67 F8
	inc A		; 1A
	phx		; DA
	ora $0DDD.w,X		; 1D DD 0D
	and $6D0D.w		; 2D 0D 6D
	tsb $88EC.w		; 0C EC 88
	sbc #$00.b		; E9 00
	sbc [$60.b]		; E7 60
	adc $3EC53E.l		; 6F 3E C5 3E
	cmp ($27.b,X)		; C1 27
	cpy #$4F.b		; C0 4F
	bra -13.b		; 80 F3
	tsb $827D.w		; 0C 7D 82
	sbc $B47F30.l,X		; FF 30 7F B4
	bra -65.b		; 80 BF
	brk $27.b		; 00 27
	brk $63.b		; 00 63
	brk $41.b		; 00 41
	brk $CF.b		; 00 CF
	brk $F7.b		; 00 F7
	bmi  -7.b		; 30 F9
	bpl  -3.b		; 10 FD
	sbc $68FB15.l		; EF 15 FB 68
	sbc [$53.b],Y		; F7 53
	sbc $7D29.w		; ED 29 7D
	ora $39.b,X		; 15 39
	eor ($1F.b,X)		; 41 1F
	bvs  22.b		; 70 16
	and [$15.b],Y		; 37 15
	ora ($68.b,X)		; 01 68
	tsb $53.b		; 04 53
	php		; 08
	and #$12.b		; 29 12
	ora $02.b,X		; 15 02
	ora ($06.b,X)		; 01 06
	jsr $0920.w		; 20 20 09
	ora ($FB.b,X)		; 01 FB
	mvn $A8,$FF		; 54 FF A8
	dec $DF4D.w,X		; DE 4D DF
	eor $DE.b,X		; 55 DE
	eor ($CF.b),Y		; 51 CF
	rti		; 40

	pea $320B.w		; F4 0B 32
	sbc $C154.w,Y		; F9 54 C1
	tay		; A8
	sta ($4C.b,X)		; 81 4C
	and ($54.b,X)		; 21 54
	and ($50.b,X)		; 21 50
	and ($40.b,X)		; 21 40
	and [$00.b],Y		; 37 00
	ora [$40.b]		; 07 40
	eor $BE.b,S		; 43 BE
	eor $7D.b,X		; 55 7D
	dex		; CA
	wai		; CB
	ldx $6A.b,Y		; B6 6A
	lda [$AA.b],Y		; B7 AA
	adc [$EB.b],Y		; 77 EB
	adc [$FF.b],Y		; 77 FF
	brk $08.b		; 00 08
	sbc [$14.b],Y		; F7 14
	sbc $00FF08.l,X		; FF 08 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	cop $77.b		; 02 77
	bit #$2F.b		; 89 2F
	bne -69.b		; D0 BB
	mvp $04,$FB		; 44 FB 04
	sbc ($0C.b,S),Y		; F3 0C
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $EA.b		; 00 EA
	brk $F9.b		; 00 F9
	brk $F6.b		; 00 F6
	brk $F6.b		; 00 F6
	brk $EE.b		; 00 EE
	brk $8E.b		; 00 8E
	brk $E0.b		; 00 E0
	brk $BE.b		; 00 BE
	brk $0C.b		; 00 0C
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
	bit $B000.w,X		; 3C 00 B0
	brk $A0.b		; 00 A0
	brk $BF.b		; 00 BF
	brk $F6.b		; 00 F6
	ora $FF0EF1.l		; 0F F1 0E FF
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	lda $00AF00.l		; AF 00 AF 00
	bra   0.b		; 80 00
	brk $1A.b		; 00 1A
	tsb $12.b		; 04 12
	tsb $0C32.w		; 0C 32 0C
	and ($0C.b)		; 32 0C
	ora ($0C.b)		; 12 0C
	ora ($0C.b)		; 12 0C
	asl A		; 0A
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	asl $1E00.w,X		; 1E 00 1E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	eor $39.b		; 45 39
	php		; 08
	beq -96.b		; F0 A0
	trb $42.b		; 14 42
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
	cmp #$51.b		; C9 51
	eor ($9D.b,X)		; 41 9D
	sta $19.b		; 85 19
	ora #$98.b		; 09 98
	ldx #$11.b		; A2 11
	sta $928344.l		; 8F 44 83 92
	adc ($C1.b,X)		; 61 C1
	sec		; 38
	rti		; 40

	ldy $AE50.w,X		; BC 50 AE
	ora $5AE6.w,Y		; 19 E6 5A
	sbc $78.b		; E5 78
	adc $7E7E.w,Y		; 79 7E 7E
	sta $C7C79F.l,X		; 9F 9F C7 C7
	cmp ($D3.b,S),Y		; D3 D3
	eor $3959.w,Y		; 59 59 39
	and $DA5A.w,Y		; 39 5A DA
	ldx $FBC7.w,Y		; BE C7 FB
	sbc [$76.b],Y		; F7 76
	lda $DC33.w,Y		; B9 33 DC
	and ($DD.b)		; 32 DD
	tax		; AA
	eor $AC.b,X		; 55 AC
	eor ($9E.b,S),Y		; 53 9E
	adc #$00.b		; 69 00
	sbc $10FF20.l,X		; FF 20 FF 10
	adc $807F10.l,X		; 7F 10 7F 80
	lda $80BF80.l,X		; BF 80 BF 80
	lda $FFBF80.l,X		; BF 80 BF FF
	asl $F7.b		; 06 F7
	ror $F8F7.w,X		; 7E F7 F8
	ldx $CBC1.w,Y		; BE C1 CB
	bit $FF.b,X		; 34 FF
	ora $B7.b,S		; 03 B7
	eor $629F.w		; 4D 9F 62
	cop $7F.b		; 02 7F
	rts		; 60

	adc $01FFC0.l,X		; 7F C0 FF 01
	jsr ($CC30.w,X)		; FC 30 CC
	ora ($1F.b,X)		; 01 1F
	rti		; 40

	ora $560362.l,X		; 1F 62 03 56
	sty $8D73.w		; 8C 73 8D
	ldx $7353.w		; AE 53 73
	sty $60DF.w		; 8C DF 60
	cmp $C0FFE0.l,X		; DF E0 FF C0
	sbc [$A8.b],Y		; F7 A8
	lda $AC20.w		; AD 20 AC
	jsr $0250.w		; 20 50 02
	sty $0001.w		; 8C 01 00
	adc ($80.b,X)		; 61 80
	sbc $08F780.l,X		; FF 80 F7 08
	sbc $BF.b,S		; E3 BF
	cpx #$7F.b		; E0 7F
	eor [$BF.b],Y		; 57 BF
	sta [$67.b],Y		; 97 67
	cld		; D8
	sta $FD62.w,X		; 9D 62 FD
	rol $DC7F.w,X		; 3E 7F DC
	sbc $27202A.l,X		; FF 2A 20 27
	sta ($07.b,S),Y		; 93 07
	bvc   7.b		; 50 07
	clc		; 18
	ora $00.b,S		; 03 00
	sta $18.b,S		; 83 18
	sbc $20FF08.l,X		; FF 08 FF 20
	sbc $BA70BF.l,X		; FF BF 70 BA
	sbc $72.b		; E5 72
	sta $04FB.w		; 8D FB 04
	sbc $07FB00.l,X		; FF 00 FB 07
	sbc $0B.b,X		; F5 0B
	inc $0005.w,X		; FE 05 00
	sbc $FF00.w,X		; FD 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $07.b		; 00 07
	brk $9B.b		; 00 9B
	brk $C5.b		; 00 C5
	ora $0631.w,X		; 1D 31 06
	bpl  46.b		; 10 2E
	clc		; 18
	adc $38.b,S		; 63 38
	adc ($38.b,S),Y		; 73 38
	eor $3C.b,X		; 55 3C
	dec A		; 3A
	asl $1B2C.w,X		; 1E 2C 1B
	asl $0F00.w		; 0E 00 0F
	brk $07.b		; 00 07
	brk $2F.b		; 00 2F
	php		; 08
	and [$00.b],Y		; 37 00
	and ($00.b,S),Y		; 33 00
	ora $1800.w,Y		; 19 00 18
	brk $42.b		; 00 42
	cmp $CC09.w		; CD 09 CC
	ora $C4.b,S		; 03 C4
	lda ($E6.b,X)		; A1 E6
	tsb $67.b		; 04 67
	bcc 115.b		; 90 73
	stz $3FC3.w		; 9C C3 3F
	stz $0B38.w		; 9C 38 0B
	bvs  65.b		; 70 41
	clv		; B8
	sta $1C.b,S		; 83 1C
	ora $B8.b		; 05 B8
	and ($8C.b,X)		; 21 8C
	ora ($00.b,X)		; 01 00
	ora ($0C.b,X)		; 01 0C
	ora $F7C8.w,X		; 1D C8 F7
	pla		; 68
	sbc [$64.b],Y		; F7 64
	xce		; FB
	bit $FB.b,X		; 34 FB
	ldy $7B.b,X		; B4 7B
	stz $4579.w,X		; 9E 79 45
	clv		; B8
	tda		; 7B
	sta ($C0.b,X)		; 81 C0
	sbc $60FF60.l,X		; FF 60 FF 60
	sbc $30FF30.l,X		; FF 30 FF 30
	sbc $00FF18.l,X		; FF 18 FF 00
	sbc $FB00.w,X		; FD 00 FB
	adc $8C7F98.l,X		; 7F 98 7F 8C
	adc $C63F8C.l,X		; 7F 8C 3F C6
	and $C33FC6.l,X		; 3F C6 3F C3
	sbc $C0FF00.l,X		; FF 00 FF C0
	brk $FE.b		; 00 FE
	brk $DE.b		; 00 DE
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $F7.b		; 00 F7
	cpy #$F0.b		; C0 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	bcc  96.b		; 90 60
	bcs  64.b		; B0 40
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bit $8EC0.w,X		; 3C C0 8E
	bvs -25.b		; 70 E7
	clc		; 18
	sbc ($0C.b,S),Y		; F3 0C
	sbc $0006.w,Y		; F9 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	jsr ($3E00.w,X)		; FC 00 3E
	brk $8E.b		; 00 8E
	brk $A7.b		; 00 A7
	and ($D8.b,X)		; 21 D8
	plp		; 28
	cmp ($42.b),Y		; D1 42
	lda ($50.b),Y		; B1 50
	ldx #$10.b		; A2 10
.INDEX 8
	sep #$10		; E2 10
	stz $08.b		; 64 08
	stz $00.b,X		; 74 00
	bit $2F2F.w,X		; 3C 2F 2F
	rol $5E2E.w		; 2E 2E 5E
	lsr $5C5C.w,X		; 5E 5C 5C
	jmp $18185C.l		; 5C 5C 18 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	sbc $FF02.w,X		; FD 02 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	lda ($00.b,S),Y		; B3 00
	adc ($00.b,S),Y		; 73 00
	and $00.b,X		; 35 00
	and $00.b,X		; 35 00
	dec A		; 3A
	brk $1A.b		; 00 1A
	brk $1A.b		; 00 1A
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	asl $1300.w		; 0E 00 13
	tsb $0A35.w		; 0C 35 0A
	and $3F06.w,X		; 3D 06 3F
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $1A.b		; 00 1A
	brk $16.b		; 00 16
	brk $16.b		; 00 16
	brk $02.b		; 00 02
	brk $E2.b		; 00 E2
	adc $EE9590.l		; 6F 90 95 EE
	wai		; CB
	inc $EF.b,X		; F6 EF
	adc ($F5.b)		; 72 F5
	dec A		; 3A
	adc [$98.b],Y		; 77 98
	adc [$98.b]		; 67 98
	lsr $A8.b,X		; 56 A8
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	mvn $2C,$A8		; 54 A8 2C
	bne  44.b		; D0 2C
	bne  40.b		; D0 28
	bne  56.b		; D0 38
	cpy #$7F.b		; C0 7F
	bra -33.b		; 80 DF
	and $FF.b,S		; 23 FF
	ora $00.b,S		; 03 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $FF.b		; 00 FF
	ora $A7.b,S		; 03 A7
	ora ($1F.b,X)		; 01 1F
	xce		; FB
	ora [$FB.b]		; 07 FB
	ror $78F7.w,X		; 7E F7 78
	sbc $FC00.w,X		; FD 00 FC
	brk $60.b		; 00 60
	bra 112.b		; 80 70
	bra -72.b		; 80 B8
	rti		; 40

	brk $FF.b		; 00 FF
	bmi  -1.b		; 30 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	jsr ($FC80.w,X)		; FC 80 FC
	brk $BC.b		; 00 BC
	rti		; 40

	ldy $BC40.w,X		; BC 40 BC
	rti		; 40

	bcc  96.b		; 90 60
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $D8.b		; 00 D8
	brk $E8.b		; 00 E8
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $BC.b		; 00 BC
	brk $5C.b		; 00 5C
	sec		; 38
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	trb $0C08.w		; 1C 08 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	bit $3C7A.w,X		; 3C 7A 3C
	ldy $B478.w,X		; BC 78 B4
	sei		; 78
	inx		; E8
	bvs -24.b		; 70 E8
	bvs  80.b		; 70 50
	cpx #$50.b		; E0 50
	cpx #$1C.b		; E0 1C
	and ($3C.b,X)		; 21 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $44.b		; 00 44
	sta $C4.b,S		; 83 C4
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	ora $09.b,S		; 03 09
	asl $09.b		; 06 09
	asl $1B.b		; 06 1B
	tsb $1B.b		; 04 1B
	tsb $00.b		; 04 00
	cmp [$00.b]		; C7 00
	cmp [$00.b]		; C7 00
	ora $000F00.l		; 0F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $381F00.l,X		; 1F 00 1F 38
	cpy #$78.b		; C0 78
	bra  65.b		; 80 41
	bra -63.b		; 80 C1
	brk $81.b		; 00 81
	brk $81.b		; 00 81
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	sei		; 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bit $3C00.w,X		; 3C 00 3C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cli		; 58
	bmi 120.b		; 30 78
	bmi -72.b		; 30 B8
	bvs -72.b		; 70 B8
	bvs 120.b		; 70 78
	bmi 120.b		; 30 78
	bmi  56.b		; 30 38
	bpl  16.b		; 10 10
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $1100.w,Y		; 19 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	asl A		; 0A
	tas		; 1B
	dec A		; 3A
	ora $3D.b,S		; 03 3D
	inc A		; 1A
	and $01071C.l,X		; 3F 1C 07 01
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $1A.b		; 00 1A
	inc A		; 1A
	clc		; 18
	tsb $30.b		; 04 30
	dey		; 88
	cpx #$88.b		; E0 88
	bvs  24.b		; 70 18
	rti		; 40

	bpl  32.b		; 10 20
	bmi -32.b		; 30 E0
	bmi -16.b		; 30 F0
	cpy #$E8.b		; C0 E8
	beq 112.b		; F0 70
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$40.b		; C0 40
	bcs  17.b		; B0 11
	sbc ($40.b,X)		; E1 40
	plp		; 28
	sty $69.b		; 84 69
	sta ($6D.b)		; 92 6D
	brk $FF.b		; 00 FF
	ora ($AA.b,X)		; 01 AA
	asl A		; 0A
	ldy #$1F.b		; A0 1F
	sec		; 38
	ora $DFDF1F.l,X		; 1F 1F DF DF
	cmp [$D7.b],Y		; D7 D7
	ldx $B6.b,Y		; B6 B6
	ora ($01.b,X)		; 01 01
	asl $1D0A.w,X		; 1E 0A 1D
	brk $07.b		; 00 07
	brk $C4.b		; 00 C4
	cmp $93.b		; C5 93
	tax		; AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	ora ($DD.b)		; 12 DD
	iny		; C8
	ora [$F0.b],Y		; 17 F0
	ora [$F8.b]		; 07 F8
	ora $FE.b		; 05 FE
	inc $D7D7.w,X		; FE D7 D7
	sta ($93.b,S),Y		; 93 93
	lda $83.b,S		; A3 83
	rol A		; 2A
	asl A		; 0A
	and ($12.b)		; 32 12
	tay		; A8
	brk $F8.b		; 00 F8
	brk $67.b		; 00 67
	clc		; 18
	tad		; 5B
	bit $27.b		; 24 27
	clc		; 18
	rol $3F03.w,X		; 3E 03 3F
	ora [$2F.b]		; 07 2F
	tas		; 1B
	sbc $52FF25.l,X		; FF 25 FF 52
	ora $0441.w,Y		; 19 41 04
	rts		; 60

	clc		; 18
	brk $00.b		; 00 00
	and $03.b,S		; 23 03
	and $203F03.l,X		; 3F 03 3F 20
	ora [$52.b]		; 07 52
	ora $90.b,S		; 03 90
	stz $70.b		; 64 70
	sty $94.b,X		; 94 94
	ror $F3.b		; 66 F3
	brk $BF.b		; 00 BF
	dex		; CA
	sbc $FF86.w,X		; FD 86 FF
	eor ($FF.b,X)		; 41 FF
	sta ($68.b,S),Y		; 93 68
	brk $88.b		; 00 88
	brk $68.b		; 00 68
	brk $0C.b		; 00 0C
	brk $02.b		; 00 02
	cpx #$06.b		; E0 06
	cpx #$00.b		; E0 00
	cmp ($91.b,X)		; C1 91
	sta [$0F.b]		; 87 0F
	asl $0D.b		; 06 0D
	asl $0D.b		; 06 0D
	asl $1F.b		; 06 1F
	asl $0627.w		; 0E 27 06
	eor $00FF1A.l,X		; 5F 1A FF 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0600.w		; 0E 00 06
	clc		; 18
	inc A		; 1A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $11.b		; 00 11
	tsb $12.b		; 04 12
	asl $13.b		; 06 13
	asl $0413.w		; 0E 13 04
	tda		; 7B
	bit $CB.b,X		; 34 CB
	dey		; 88
	ora [$00.b]		; 07 00
	brk $0E.b		; 00 0E
	asl $0F09.w		; 0E 09 0F
	asl A		; 0A
	ora $0F0F08.l		; 0F 08 0F 0F
	tsb $7477.w		; 0C 77 74
	plx		; FA
	plx		; FA
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	sta ($42.b,X)		; 81 42
	ora ($42.b,X)		; 01 42
	eor ($22.b,X)		; 41 22
	bra 127.b		; 80 7F
	jsl $20A0C1.l		; 22 C1 A0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($81.b,X)		; 81 81
	sta ($81.b,X)		; 81 81
	cmp ($C1.b,X)		; C1 C1
	bra -128.b		; 80 80
	rol $FF3E.w,X		; 3E 3E FF
	sbc $101820.l,X		; FF 20 18 10
	sty $4488.w		; 8C 88 44
	bra  70.b		; 80 46
	ldy $42.b		; A4 42
	trb $E2.b		; 14 E2
	mvn $DC,$A2		; 54 A2 DC
	jsl $78F0F0.l		; 22 F0 F0 78
	sei		; 78
	sed		; F8
	sed		; F8
	ldy $BCBC.w,X		; BC BC BC
	ldy $5C5C.w,X		; BC 5C 5C
	jmp.w [$DCDC]		; DC DC DC
	jmp.w [$26D8]		; DC D8 26
	cld		; D8
	bit $D0.b		; 24 D0
	bit $7880.w		; 2C 80 78
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp.w [$D8DC]		; DC DC D8
	cld		; D8
	cld		; D8
	cld		; D8
	bcs -80.b		; B0 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1C.b,S		; 03 1C
	php		; 08
	bmi  17.b		; 30 11
	rts		; 60

	bit $43.b		; 24 43
	bpl -50.b		; 10 CE
	ror A		; 6A
	sty $55.b,X		; 94 55
	tay		; A8
	eor ($A8.b),Y		; 51 A8
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	bit $713C.w,X		; 3C 3C 71
	adc ($6B.b),Y		; 71 6B
	rtl		; 6B

	eor [$57.b],Y		; 57 57
	eor [$57.b],Y		; 57 57
	plp		; 28
	cmp ($22.b),Y		; D1 22
	cmp ($22.b),Y		; D1 22
	eor ($0A.b),Y		; 51 0A
	adc ($04.b),Y		; 71 04
	and $1C03.w,Y		; 39 03 1C
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	and $2E2E2F.l		; 2F 2F 2E 2E
	rol $2E2E.w		; 2E 2E 2E
	rol $0E0E.w		; 2E 0E 0E
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	bmi  88.b		; 30 58
	bmi  52.b		; 30 34
	clc		; 18
	bit $2608.w		; 2C 08 26
	tsb $26.b		; 04 26
	tsb $3E.b		; 04 3E
	trb $003C.w		; 1C 3C 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	clc		; 18
	brk $08.b		; 00 08
	bpl   4.b		; 10 04
	clc		; 18
	tsb $18.b		; 04 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	cpx #$20.b		; E0 20
	bpl  64.b		; 10 40
	bpl -64.b		; 10 C0
	bvc -96.b		; 50 A0
	bvc  32.b		; 50 20
	bne   0.b		; D0 00
	jsr ($7384.w,X)		; FC 84 73
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	ldy #$E0.b		; A0 E0
	rts		; 60

	cpx #$20.b		; E0 20
	cpx #$E0.b		; E0 E0
	jsr $2060.w		; 20 60 20
	sty $808C.w		; 8C 8C 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  -8.b		; 80 F8
	bra 124.b		; 80 7C
	sed		; F8
	jsr ($7060.w,X)		; FC 60 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	sed		; F8
	sei		; 78
	jsr ($FC00.w,X)		; FC 00 FC
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	and $3F1E.w,X		; 3D 1E 3F
	asl $1E2F.w,X		; 1E 2F 1E
	and $0E1F1E.l		; 2F 1E 1F 0E
	ora [$0E.b],Y		; 17 0E
	ora [$0E.b],Y		; 17 0E
	ora $021C06.l		; 0F 06 1C 02
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $F8.b		; 00 F8
	bvs -44.b		; 70 D4
	cli		; 58
	sty $6C48.w		; 8C 48 6C
	plp		; 28
	.db $42, $24		; 42 24
	and ($14.b)		; 32 14
	rol $14.b		; 26 14
	asl $04.b,X		; 16 04
	bvs   0.b		; 70 00
	cli		; 58
	jsr $3048.w		; 20 48 30
	plp		; 28
	bpl  36.b		; 10 24
	clc		; 18
	trb $08.b		; 14 08
	trb $08.b		; 14 08
	tsb $08.b		; 04 08
	ora $98.b,S		; 03 98
	and ($44.b),Y		; 31 44
	lda $8A7B01.l,X		; BF 01 7B 8A
	bit $3F94.w,X		; 3C 94 3F
	bvc  31.b		; 50 1F
	asl $1C.b		; 06 1C
	ora [$07.b]		; 07 07
	brk $83.b		; 00 83
	brk $C0.b		; 00 C0
	jsr $244A.w		; 20 4A 24
	mvn $00,$33		; 54 33 00
	bmi   6.b		; 30 06
	bpl   7.b		; 10 07
	bpl -16.b		; 10 F0
	ora $98.b		; 05 98
	adc $1970.w		; 6D 70 19
	dey		; 88
	sbc ($BF.b),Y		; F1 BF
	clc		; 18
	eor $1AFD02.l,X		; 5F 02 FD 1A
	lda $00F818.l		; AF 18 F8 00
	bne  64.b		; D0 40
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	eor $0203.w,Y		; 59 03 02
	lda $18.b,S		; A3 18
	ora $58.b,S		; 03 58
	eor $FF.b,S		; 43 FF
	and $F7.b,X		; 35 F7
	stz $D6.b		; 64 D6
	stz $76.b		; 64 76
	trb $36.b		; 14 36
	mvp $70,$1F		; 44 1F 70
	ora $67.b		; 05 67
	bit $66.b		; 24 66
	and $01.b,X		; 35 01
	stz $08.b		; 64 08
	stz $09.b		; 64 09
	trb $09.b		; 14 09
	tsb $09.b		; 04 09
	jsr $3820.w		; 20 20 38
	jsr $0019.w		; 20 19 00
	sta $4DD709.l,X		; 9F 09 D7 4D
	cmp $004C94.l,X		; DF 94 4C 00
	sei		; 78
	brk $E0.b		; 00 E0
	sec		; 38
	ldy #$B0.b		; A0 B0
	cpx #$30.b		; E0 30
	ora #$63.b		; 09 63
	jmp $9421.w		; 4C 21 94
	and ($00.b,X)		; 21 00
	bcs   0.b		; B0 00
	bra  16.b		; 80 10
	bpl  64.b		; 10 40
	brk $C0.b		; 00 C0
	brk $08.b		; 00 08
	ora $1100.w,Y		; 19 00 11
	brk $11.b		; 00 11
	brk $11.b		; 00 11
	asl A		; 0A
	tas		; 1B
	dec A		; 3A
	ora $3D.b,S		; 03 3D
	inc A		; 1A
	and $01071C.l,X		; 3F 1C 07 01
	asl $0E00.w		; 0E 00 0E
	brk $0E.b		; 00 0E
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $1A.b		; 00 1A
	inc A		; 1A
	clc		; 18
	tsb $30.b		; 04 30
	dey		; 88
	cpx #$88.b		; E0 88
	bvs  24.b		; 70 18
	rti		; 40

	bpl  32.b		; 10 20
	bmi -32.b		; 30 E0
	bmi -16.b		; 30 F0
	cpy #$E8.b		; C0 E8
	beq 112.b		; F0 70
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$40.b		; C0 40
	bcs  16.b		; B0 10
	jsr $4304.w		; 20 04 43
	bpl -113.b		; 10 8F
	rol A		; 2A
	sty $54.b,X		; 94 54
	plp		; 28
	and ($58.b,X)		; 21 58
	tay		; A8
	eor ($42.b),Y		; 51 42
	lda ($1F.b),Y		; B1 1F
	ora $713E3E.l,X		; 1F 3E 3E 71
	adc ($6B.b),Y		; 71 6B
	rtl		; 6B

	cmp [$D7.b],Y		; D7 D7
	lda $AEAEAF.l		; AF AF AE AE
	lsr $8A5E.w,X		; 5E 5E 8A
	adc ($11.b)		; 72 11
	sbc ($40.b,X)		; E1 40
	plp		; 28
	sty $69.b		; 84 69
	ora ($ED.b)		; 12 ED
	rti		; 40

	sbc $8AAAC1.l,X		; FF C1 AA 8A
	jsr $AFAF.w		; 20 AF AF
	ora $DFDF1F.l,X		; 1F 1F DF DF
	cmp [$D7.b],Y		; D7 D7
	rol $36.b,X		; 36 36
	ora ($41.b,X)		; 01 41
	asl $1DCA.w,X		; 1E CA 1D
	bra   8.b		; 80 08
	ora [$C4.b]		; 07 C4
	cmp $93.b		; C5 93
	tax		; AA
	phd		; 0B
	ror $5D88.w,X		; 7E 88 5D
	jsl $17C8CD.l		; 22 CD C8 17
	beq   6.b		; F0 06
	sed		; F8
	sed		; F8
	inc $D7FE.w,X		; FE FE D7
	cmp [$93.b],Y		; D7 93
	sta ($A3.b,S),Y		; 93 A3
	sta $3A.b,S		; 83 3A
	asl A		; 0A
	and ($12.b)		; 32 12
	tay		; A8
	brk $40.b		; 00 40
	sec		; 38
	bpl  12.b		; 10 0C
	php		; 08
	stx $84.b		; 86 84
	.db $42, $A4		; 42 A4
	eor $92.b,S		; 43 92
	adc ($0A.b,X)		; 61 0A
	sbc ($4A.b),Y		; F1 4A
	lda ($E0.b),Y		; B1 E0
	cpx #$F8.b		; E0 F8
	sed		; F8
	jmp ($FC7C.w,X)		; 7C 7C FC
	jsr ($BEBE.w,X)		; FC BE BE
	stz $5E9E.w,X		; 9E 9E 5E
	lsr $6E6E.w,X		; 5E 6E 6E
	adc [$18.b]		; 67 18
	tad		; 5B
	bit $27.b		; 24 27
	clc		; 18
	rol $3F03.w,X		; 3E 03 3F
	ora [$2F.b]		; 07 2F
	tas		; 1B
	sbc $52FF25.l,X		; FF 25 FF 52
	ora $0441.w,Y		; 19 41 04
	rts		; 60

	clc		; 18
	brk $00.b		; 00 00
	and $03.b,S		; 23 03
	and $203F03.l,X		; 3F 03 3F 20
	ora [$52.b]		; 07 52
	ora $94.b,S		; 03 94
	ror $70.b		; 66 70
	sta ($99.b)		; 92 99
	pla		; 68
	sbc [$0D.b],Y		; F7 0D
	ldx $C3.b,Y		; B6 C3
	sbc [$80.b],Y		; F7 80
	sbc ($40.b),Y		; F1 40
	sed		; F8
	bcc 104.b		; 90 68
	brk $8C.b		; 00 8C
	brk $66.b		; 00 66
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cmp ($90.b,X)		; C1 90
	bra  15.b		; 80 0F
	asl $0D.b		; 06 0D
	asl $0D.b		; 06 0D
	asl $1F.b		; 06 1F
	asl $0627.w		; 0E 27 06
	eor $00FF1A.l,X		; 5F 1A FF 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	asl $0600.w		; 0E 00 06
	clc		; 18
	inc A		; 1A
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $08.b		; 00 08
	cop $09.b		; 02 09
	ora $09.b,S		; 03 09
	ora [$09.b]		; 07 09
	asl $39.b		; 06 39
	rol A		; 2A
	cmp $00.b		; C5 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$04.b]		; 07 04
	ora [$05.b]		; 07 05
	ora [$04.b]		; 07 04
	ora [$07.b]		; 07 07
	asl $3B.b		; 06 3B
	dec A		; 3A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	rti		; 40

	and ($00.b,X)		; 21 00
	lda ($20.b,X)		; A1 20
	sta ($40.b),Y		; 91 40
	lda $00E011.l,X		; BF 11 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$40.b		; C0 40
	cpy #$60.b		; C0 60
	cpx #$C0.b		; E0 C0
	rti		; 40

	sta $00001F.l,X		; 9F 1F 00 00
	brk $70.b		; 00 70
	bpl -120.b		; 10 88
	ldy #$08.b		; A0 08
	cpx #$28.b		; E0 28
	bne  40.b		; D0 28
	bpl -24.b		; 10 E8
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bne -16.b		; D0 F0
	bcs -16.b		; B0 F0
	bcc -16.b		; 90 F0
	bvs  16.b		; 70 10
	bmi  16.b		; 30 10
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
	brk $00.b		; 00 00
	beq  96.b		; F0 60
	bcs  96.b		; B0 60
	pla		; 68
	bmi  88.b		; 30 58
	bpl  76.b		; 10 4C
	php		; 08
	jmp $7C08.w		; 4C 08 7C
	sec		; 38
	sei		; 78
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	jsr $3008.w		; 20 08 30
	php		; 08
	bmi  56.b		; 30 38
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$50.b		; C0 50
	cpx #$FE.b		; E0 FE
	rts		; 60

	eor $183F3E.l,X		; 5F 3E 3F 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	rti		; 40

	cpy #$E0.b		; C0 E0
	rti		; 40

	beq   0.b		; F0 00
	inc $7F1E.w,X		; FE 1E 7F
	brk $3F.b		; 00 3F
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $3F1E.w,X		; 3D 1E 3F
	asl $1E2F.w,X		; 1E 2F 1E
	and $0E1F1E.l		; 2F 1E 1F 0E
	ora [$0E.b],Y		; 17 0E
	ora [$0E.b],Y		; 17 0E
	ora $021C06.l		; 0F 06 1C 02
	asl $1E00.w,X		; 1E 00 1E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $F8.b		; 00 F8
	bvs -44.b		; 70 D4
	cli		; 58
	sty $6C48.w		; 8C 48 6C
	plp		; 28
	.db $42, $24		; 42 24
	and ($14.b)		; 32 14
	rol $14.b		; 26 14
	asl $04.b,X		; 16 04
	bvs   0.b		; 70 00
	cli		; 58
	jsr $3048.w		; 20 48 30
	plp		; 28
	bpl  36.b		; 10 24
	clc		; 18
	trb $08.b		; 14 08
	trb $08.b		; 14 08
	tsb $08.b		; 04 08
	bvc -93.b		; 50 A3
	eor ($A2.b),Y		; 51 A2
	ora $08E3.w,Y		; 19 E3 08
	adc ($06.b,S),Y		; 73 06
	and $0F00.w,Y		; 39 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $5D5E.w,X		; 5E 5E 5D
	jmp $1C5C5C.l		; 5C 5C 5C 1C
	trb $0E0E.w		; 1C 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $18A3F8.l,X		; 1F F8 A3 18
	and $780C.w,Y		; 39 0C 78
	cmp ($3C.b,S),Y		; D3 3C
	mvn $80,$1F		; 54 1F 80
	ora $071C06.l,X		; 1F 06 1C 07
	ora [$00.b]		; 07 00
	cmp [$00.b]		; C7 00
	wai		; CB
	jsr $3511.w		; 20 11 35
	tsb $33.b		; 04 33
	brk $10.b		; 00 10
	asl $10.b		; 06 10
	ora [$10.b]		; 07 10
	sed		; F8
	tsb $F0.b		; 04 F0
	tsb $98.b		; 04 98
	jmp ($7816.w)		; 6C 16 78
	ora $025DFA.l		; 0F FA 5D 02
	sbc $19AC18.l,X		; FF 18 AC 19
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	rts		; 60

	cpx #$62.b		; E0 62
	txa		; 8A
	sta $00.b,S		; 83 00
	lda $18.b,S		; A3 18
	ora $5A.b,S		; 03 5A
	rti		; 40

	ror $6C91.w		; 6E 91 6C
	sta ($6C.b,S),Y		; 93 6C
	sta ($68.b)		; 92 68
	stx $40.b,Y		; 96 40
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
	sbc $64F735.l,X		; FF 35 F7 64
	dec $64.b,X		; D6 64
	ror $14.b,X		; 76 14
	rol $44.b,X		; 36 44
	ora $670570.l,X		; 1F 70 05 67
	bit $66.b		; 24 66
	and $01.b,X		; 35 01
	stz $08.b		; 64 08
	stz $09.b		; 64 09
	trb $09.b		; 14 09
	tsb $09.b		; 04 09
	jsr $3820.w		; 20 20 38
	jsr $0019.w		; 20 19 00
	stz $D608.w		; 9C 08 D6
	jmp $94DE.w		; 4C DE 94
	jmp $7800.w		; 4C 00 78
	brk $E0.b		; 00 E0
	sec		; 38
	ldy #$B0.b		; A0 B0
	cpx #$30.b		; E0 30
	php		; 08
	rts		; 60

	jmp $9420.w		; 4C 20 94
	jsr $B000.w		; 20 00 B0
	brk $80.b		; 00 80
	bpl  16.b		; 10 10
	rti		; 40

	brk $C0.b		; 00 C0
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
	rol $39.b		; 26 39
	dec $70.b		; C6 70
	ora $001C22.l		; 0F 22 1C 00
	brk $1C.b		; 00 1C
	trb $1E1A.w		; 1C 1A 1E
	bpl  30.b		; 10 1E
	ora $1F.b,X		; 15 1F
	ora [$39.b],Y		; 17 39
	jmp.w [$C3F0]		; DC F0 C3
	sbc $00.b,S		; E3 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	tsb $02.b		; 04 02
	ora #$03.b		; 09 03
	bit #$0F.b		; 89 0F
	sta ($09.b),Y		; 91 09
	inc $10.b,X		; F6 10
	ora $000000.l		; 0F 00 00 00
	brk $03.b		; 00 03
	ora $06.b,S		; 03 06
	ora [$04.b]		; 07 04
	ora [$0D.b]		; 07 0D
	ora $F3090F.l		; 0F 0F 09 F3
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	rti		; 40

	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	rti		; 40

	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	stz $C6.b,X		; 74 C6
	bmi -124.b		; 30 84
	clc		; 18
	stx $9E74.w		; 8E 74 9E
	inc $6F.b,X		; F6 6F
	sbc $7BF670.l,X		; FF 70 F6 7B
	cmp $00384B.l		; CF 4B 38 00
	sei		; 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	rts		; 60

	bpl 112.b		; 10 70
	phd		; 0B
	phk		; 4B
	bmi -113.b		; 30 8F
	phk		; 4B
	sta $4E4B.w		; 8D 4B 4E
	ora #$4D.b		; 09 4D
	php		; 08
	stz $28.b		; 64 28
	stz $28.b		; 64 28
	pla		; 68
	jsr $2068.w		; 20 68 20
	phk		; 4B
	bmi  75.b		; 30 4B
	bmi   9.b		; 30 09
	bmi   8.b		; 30 08
	bmi  40.b		; 30 28
	bpl  40.b		; 10 28
	bpl  32.b		; 10 20
	bpl  32.b		; 10 20
	bpl 120.b		; 10 78
	bmi  88.b		; 30 58
	bmi 120.b		; 30 78
	bmi  72.b		; 30 48
	bpl -80.b		; 10 B0
	jsr $60F0.w		; 20 F0 60
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bpl  32.b		; 10 20
	jsr $6040.w		; 20 40 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -96.b		; 80 A0
	cpy #$E0.b		; C0 E0
	cpy #$50.b		; C0 50
	cpx #$B0.b		; E0 B0
	rts		; 60

	pla		; 68
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $58.b		; 00 58
	bmi  52.b		; 30 34
	clc		; 18
	bit $2C18.w,X		; 3C 18 2C
	clc		; 18
	bit $1418.w		; 2C 18 14
	php		; 08
	trb $08.b		; 14 08
	tsb $3000.w		; 0C 00 30
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $DA.b		; 00 DA
	pha		; 48
	cmp ($00.b)		; D2 00
	adc ($C0.b)		; 72 C0
	and $7F1FE0.l,X		; 3F E0 1F 7F
	ora $3E61.w		; 0D 61 3E
	adc $18.b,S		; 63 18
	.db $42, $48		; 42 48
	and $00.b		; 25 00
	and $0D00.w		; 2D 00 0D
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	asl $1C00.w,X		; 1E 00 1C
	brk $3C.b		; 00 3C
	brk $F0.b		; 00 F0
	ldy #$60.b		; A0 60
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $20D2.w		; 20 D2 20
	cmp ($24.b)		; D2 24
	eor ($00.b)		; 52 00
	stz $09.b,X		; 74 09
	bit $01.b,X		; 34 01
	tsb $0401.w		; 0C 01 04
	brk $00.b		; 00 00
	bit $2C2C.w		; 2C 2C 2C
	bit $2C2C.w		; 2C 2C 2C
	plp		; 28
	plp		; 28
	php		; 08
	ora #$00.b		; 09 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $0F.b		; 00 0F
	tas		; 1B
	and ($18.b,S),Y		; 33 18
	rtl		; 6B

	bit $12F0.w		; 2C F0 12
	ror $F3E1.w,X		; 7E E1 F3
	sty $0CA2.w		; 8C A2 0C
	and $8C.b,S		; 23 8C
	ora [$03.b]		; 07 03
	ora [$00.b],Y		; 17 00
	pld		; 2B
	bpl  17.b		; 10 11
	cpy $E141.w		; CC 41 E1
	tsb $75F0.w		; 0C F0 75
	sta ($75.b,X)		; 81 75
	ora ($E8.b,X)		; 01 E8
	asl $F0.b		; 06 F0
	tsb $00.b		; 04 00
	jsr ($D8D0.w,X)		; FC D0 D8
	ora [$F0.b]		; 07 F0
	sbc [$52.b],Y		; F7 52
	lda $4AA55A.l		; AF 5A A5 4A
	bvs   0.b		; 70 00
	sed		; F8
	brk $98.b		; 00 98
	tya		; 98
	jsr $8800.w		; 20 00 88
	bra  74.b		; 80 4A
	brk $42.b		; 00 42
	brk $42.b		; 00 42
	brk $3E.b		; 00 3E
	trb $187C.w		; 1C 7C 18
	jmp $307C38.l		; 5C 38 7C 30
	inx		; E8
	bvs -16.b		; 70 F0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	brk $1C.b		; 00 1C
	rol $7C10.w,X		; 3E 10 7C
	clc		; 18
	jmp ($7C00.w,X)		; 7C 00 7C
	jsr $C0F8.w		; 20 F8 C0
	beq -128.b		; F0 80
	cpx #$00.b		; E0 00
	cpy #$32.b		; C0 32
	php		; 08
	plp		; 28
	trb $29.b		; 14 29
	trb $71.b		; 14 71
	asl $265D.w		; 0E 5D 26
	sbc $75FF12.l,X		; FF 12 FF 75
	ror $24.b,X		; 76 24
	ora [$00.b]		; 07 00
	ora ($08.b,S),Y		; 13 08
	ora ($08.b)		; 12 08
	brk $08.b		; 00 08
	jsr $1204.w		; 20 04 12
	cop $75.b		; 02 75
	brk $24.b		; 00 24
	ora #$02.b		; 09 02
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
	rol $552E.w		; 2E 2E 55
	lda #$78.b		; A9 78
	ldy #$70.b		; A0 70
	and $F8.b		; 25 F8
	adc $FA.b,X		; 75 FA
	adc $F9.b,X		; 75 F9
	adc [$AF.b],Y		; 77 AF
	adc ($73.b,S),Y		; 73 73
	ora [$0F.b]		; 07 0F
	adc $AFFF8F.l,X		; 7F 8F FF AF
	sbc $72FA22.l,X		; FF 22 FA 72
	plx		; FA
	jsr $00F8.w		; 20 F8 00
	xce		; FB
	ora $8B8C77.l		; 0F 77 8C 8B
	ldx $85.b,Y		; B6 85
	wai		; CB
	lda ($20.b)		; B2 20
	jmp ($5C89.w,X)		; 7C 89 5C
	bmi -59.b		; 30 C5
	jsl $15BADD.l		; 22 DD BA 15
	jsr ($FEFC.w,X)		; FC FC FE
	inc $CFCF.w,X		; FE CF CF
	phb		; 8B
	phb		; 8B
	lda ($93.b,S),Y		; B3 93
	tsa		; 3B
	ora $72.b,S		; 03 72
	phx		; DA
	.db $62, $02, $90		; 62 02 90
	tsb $0688.w		; 0C 88 06
	stz $82.b		; 64 82
	tya		; 98
	adc $26.b,S		; 63 26
	eor $6D12.w,Y		; 59 12 6D
	inc A		; 1A
	sbc $3E.b		; E5 3E
	bra  -8.b		; 80 F8
	sed		; F8
	jsr ($7CFC.w,X)		; FC FC 7C
	jmp ($9E9E.w,X)		; 7C 9E 9E
	ldx $B6AE.w		; AE AE B6
	ldx $9A.b,Y		; B6 9A
	txs		; 9A
	brk $3E.b		; 00 3E
	cpx $D410.w		; EC 10 D4
	plp		; 28
	lda $3F7F80.l,X		; BF 80 7F 3F
	sbc $00FFBF.l,X		; FF BF FF 00
	inc $EE34.w,X		; FE 34 EE
	pha		; 48
	bpl   0.b		; 10 00
	php		; 08
	brk $80.b		; 00 80
	eor $9CBF3E.l,X		; 5F 3E BF 9C
	and $343F00.l,X		; 3F 00 3F 34
	brk $48.b		; 00 48
	bpl  96.b		; 10 60
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	brk $7E.b		; 00 7E
	sbc ($7A.b),Y		; F1 7A
	sbc ($FF.b),Y		; F1 FF
	bmi 120.b		; 30 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq 113.b		; F0 71
	sed		; F8
	and ($FC.b),Y		; 31 FC
	bpl  -8.b		; 10 F8
	brk $78.b		; 00 78
	brk $00.b		; 00 00
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
	ldy #$88.b		; A0 88
	mvn $23,$13		; 54 13 23
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
	cmp #$51.b		; C9 51
	eor ($9D.b,X)		; 41 9D
	sta $19.b		; 85 19
	ora #$98.b		; 09 98
	ldx #$20.b		; A2 20
	tya		; 98
	brk $8C.b		; 00 8C
	bra  70.b		; 80 46
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
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $1C.b,S		; 03 1C
	ora $0072.w		; 0D 72 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora $03.b,S		; 03 03
	ora $1D.b,S		; 03 1D
	ora $2E9F.w,X		; 1D 9F 2E
	sbc $DE3D5E.l		; EF 5E 3D DE
	lsr $5ABC.w,X		; 5E BC 5A
	bit $3874.w,X		; 3C 74 38
	stz $38.b,X		; 74 38
	tay		; A8
	bvs  70.b		; 70 46
	php		; 08
	asl $DE10.w		; 0E 10 DE
	cpy #$3C.b		; C0 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
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
	bra   0.b		; 80 00
	rts		; 60

	jsr $8090.w		; 20 90 80
	bne -112.b		; D0 90
	iny		; C8
	jsr $08DF.w		; 20 DF 08
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  96.b		; 80 60
	cpx #$A0.b		; E0 A0
	cpx #$30.b		; E0 30
	beq -32.b		; F0 E0
	jsr $0FCF.w		; 20 CF 0F
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	php		; 08
	mvp $84,$50		; 44 50 84
	bvs -108.b		; 70 94
	pla		; 68
	sty $08.b,X		; 94 08
	pea $7F80.w		; F4 80 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	pla		; 68
	sei		; 78
	cli		; 58
	sei		; 78
	pha		; 48
	sei		; 78
	sec		; 38
	php		; 08
	tya		; 98
	dey		; 88
	and $0F3E16.l,X		; 3F 16 3E 0F
	asl $0607.w,X		; 1E 07 06
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ora [$06.b]		; 07 06
	ora $000F00.l		; 0F 00 0F 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $EC.b		; 00 EC
	ora [$F8.b],Y		; 17 F8
	cmp [$FF.b],Y		; D7 FF
	cpy #$E8.b		; C0 E8
	cmp [$FF.b],Y		; D7 FF
	brk $97.b		; 00 97
	jmp ($03FF.w)		; 6C FF 03
	lda $F00750.l,X		; BF 50 07 F0
	cmp [$F0.b]		; C7 F0
	cpy #$F8.b		; C0 F8
	eor [$F0.b]		; 47 F0
	brk $F0.b		; 00 F0
	rts		; 60

	ora $500300.l,X		; 1F 00 03 50
	brk $AF.b		; 00 AF
	inc A		; 1A
	sbc $1A.b		; E5 1A
	eor $E4A0.w,Y		; 59 A0 E4
	clc		; 18
	lda $E6FFC0.l,X		; BF C0 FF E6
	plx		; FA
	jmp $A0FE.w		; 4C FE A0
	cli		; 58
	rti		; 40

	cli		; 58
	rti		; 40

	ldy #$00.b		; A0 00
	clc		; 18
	brk $00.b		; 00 00
	cpy #$46.b		; C0 46
	beq  13.b		; F0 0D
	cpx #$81.b		; E0 81
	cpx #$FB.b		; E0 FB
	ldy $B0FC.w,X		; BC FC B0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	jsr $1CE8.w		; 20 E8 1C
	brk $3C.b		; 00 3C
	tya		; 98
	bcs  63.b		; B0 3F
	bra  60.b		; 80 3C
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  64.b		; 50 40
	cpx #$00.b		; E0 00
	cld		; D8
	tya		; 98
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($68.b),Y		; 11 68
	ora ($28.b),Y		; 11 28
	ora $38.b		; 05 38
	cop $1C.b		; 02 1C
	ora ($0E.b,X)		; 01 0E
	brk $03.b		; 00 03
	clc		; 18
	ora [$3E.b]		; 07 3E
	bpl  23.b		; 10 17
	ora [$17.b],Y		; 17 17
	ora [$17.b],Y		; 17 17
	ora [$07.b],Y		; 17 07
	ora [$03.b]		; 07 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	asl $0F.b		; 06 0F
	stz $8C01.w		; 9C 01 8C
	brk $82.b		; 00 82
	asl $9381.w		; 0E 81 93
	.db $42, $38		; 42 38
	iny		; C8
	sbc $A7DF70.l		; EF 70 DF A7
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	.db $82, $8C, $08		; 82 8C 08
	and [$20.b]		; 27 20
	beq   7.b		; F0 07
	bvs  -4.b		; 70 FC
	cop $F8.b		; 02 F8
	cop $C4.b		; 02 C4
	asl $B8.b,X		; 16 B8
	sty $F8C0.w		; 8C C0 F8
	ldy $5C1B.w,X		; BC 1B 5C
	ora ($FD.b,X)		; 01 FD
	clc		; 18
	tya		; 98
	brk $FC.b		; 00 FC
	brk $E8.b		; 00 E8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $58.b		; 00 58
	brk $02.b		; 00 02
	ldy #$1A.b		; A0 1A
	brk $6E.b		; 00 6E
	sta ($6C.b),Y		; 91 6C
	sta ($6C.b,S),Y		; 93 6C
	sta ($48.b)		; 92 48
	ldx $42.b,Y		; B6 42
	ldy $7E87.w,X		; BC 87 7E
	ora $8EF7C6.l		; 0F C6 F7 8E
	ror $6E6E.w		; 6E 6E 6E
	ror $6C6C.w		; 6E 6C 6C
	jmp ($586C.w)		; 6C 6C 58
	phy		; 5A
	.db $82, $87, $06		; 82 87 06
	ora $013F82.l		; 0F 82 3F 01
	asl $1804.w		; 0E 04 18
	bpl  32.b		; 10 20
	bit $43.b		; 24 43
	bpl  79.b		; 10 4F
	rol A		; 2A
	sty $11.b,X		; 94 11
	tay		; A8
	mvn $03,$AB		; 54 AB 03
	ora $0F.b,S		; 03 0F
	ora $3C1F1F.l		; 0F 1F 1F 3C
	bit $3131.w,X		; 3C 31 31
	rtl		; 6B

	rtl		; 6B

	eor [$57.b],Y		; 57 57
	mvn $BD,$54		; 54 54 BD
	lsr $50.b		; 46 50
	and $023F00.l		; 2F 00 3F 02
	jsr ($18E4.w,X)		; FC E4 18
	rol A		; 2A
	bpl   9.b		; 10 09
	sbc ($0C.b)		; F2 0C
	sbc ($B1.b,S),Y		; F3 B1
	lda $D0DC.w,X		; BD DC D0
	cmp $07D1.w,Y		; D9 D1 07
	ora [$F7.b]		; 07 F7
	sbc [$EF.b],Y		; F7 EF
	sbc $CE0F0F.l		; EF 0F 0F CE
	dec $0602.w		; CE 02 06
	ora $0C.b		; 05 0C
	ora $211E18.l		; 0F 18 1E 21
	and [$18.b]		; 27 18
	and $1B.b		; 25 1B
	and $285F00.l,X		; 3F 00 5F 28
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	clc		; 18
	ora $18.b,S		; 03 18
	ora $00.b,S		; 03 00
	tsb $28.b		; 04 28
	brk $FB.b		; 00 FB
	eor ($F5.b),Y		; 51 F5
	tsb $9E78.w		; 0C 78 9E
	sei		; 78
	sbc [$F6.b]		; E7 F6
	sbc $74FB.w,Y		; F9 FB 74
	xce		; FB
	ldy $FF.b		; A4 FF
	bvc  70.b		; 50 46
	sec		; 38
	ora $10.b,S		; 03 10
	ora #$F8.b		; 09 F8
	brk $FE.b		; 00 FE
	adc ($FE.b,X)		; 61 FE
	bit $F8.b		; 24 F8
	sty $F8.b		; 84 F8
	rti		; 40

	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
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
	bmi -124.b		; 30 84
	bmi -124.b		; 30 84
	bvs -60.b		; 70 C4
	clc		; 18
	cpy $98.b		; C4 98
	mvp $64,$D8		; 44 D8 64
	sei		; 78
	ldy $38C0.w,X		; BC C0 38
	sei		; 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $B8.b		; 00 B8
	bra  56.b		; 80 38
	brk $38.b		; 00 38
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	jmp $307838.l		; 5C 38 78 30
	bcs  96.b		; B0 60
	sed		; F8
	bvs -28.b		; 70 E4
	rts		; 60

	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	sec		; 38
	brk $30.b		; 00 30
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
	asl $04.b		; 06 04
	ora #$02.b		; 09 02
	ora #$03.b		; 09 03
	ora #$03.b		; 09 03
	adc $0000.w,Y		; 79 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $06.b		; 06 06
	asl $07.b		; 06 07
	ora $07.b		; 05 07
	ora $07.b		; 05 07
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	ldy #$1F.b		; A0 1F
	cpy #$C3.b		; C0 C3
	lda ($2B.b)		; B2 2B
	and $BE.b,S		; 23 BE
	eor ($9C.b,X)		; 41 9C
	plp		; 28
	cmp $00C0.w,X		; DD C0 00
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	inc $FFFE.w,X		; FE FE FF
	sbc $6BF3F3.l,X		; FF F3 F3 6B
	rtl		; 6B

	ldx #$A2.b		; A2 A2
	sbc ($05.b)		; F2 05
	bvs -58.b		; 70 C6
	ldy #$14.b		; A0 14
	pea $E006.w		; F4 06 E0
	trb $88E0.w		; 1C E0 88
	cpx #$10.b		; E0 10
	brk $40.b		; 00 40
	asl A		; 0A
	cop $C8.b		; 02 C8
	cpy #$C8.b		; C0 C8
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	clc		; 18
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	jsr $184C.w		; 20 4C 18
	cpy $CC18.w		; CC 18 CC
	clv		; B8
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  56.b		; 30 38
	plp		; 28
	sec		; 38
	plp		; 28
	sec		; 38
	jsr $38B8.w		; 20 B8 38
	cpy #$6F.b		; C0 6F
	brk $EF.b		; 00 EF
	and [$7F.b]		; 27 7F
	lda $8000BF.l		; AF BF 00 80
	rti		; 40

	bra  -8.b		; 80 F8
	bpl  30.b		; 10 1E
	brk $00.b		; 00 00
	bra  23.b		; 80 17
	lda [$17.b]		; A7 17
	jsr $000F.w		; 20 0F 00
	ora $400000.l		; 0F 00 00 40
	rti		; 40

	inx		; E8
	php		; 08
	sta [$84.b]		; 87 84
	sta $EE7D92.l,X		; 9F 92 7D EE
	and $3E5DDE.l		; 2F DE 5D 3E
	ror $BC3C.w,X		; 7E 3C BC
	sei		; 78
	sed		; F8
	bvs 120.b		; 70 78
	brk $62.b		; 00 62
	cop $84.b		; 02 84
	stx $100E.w		; 8E 0E 10
	rol $3C00.w,X		; 3E 00 3C
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $3C.b		; 00 3C
	clc		; 18
	jmp.w [$FC38]		; DC 38 FC
	sed		; F8
	tya		; 98
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3C18.w		; 1C 18 3C
	php		; 08
	jsr ($FC80.w,X)		; FC 80 FC
	brk $F8.b		; 00 F8
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	cmp $20.b,X		; D5 20
	cmp $5920.w,Y		; D9 20 59
	brk $71.b		; 00 71
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tay		; A8
	lsr $86.b,X		; 56 86
	ror $4C85.w		; 6E 85 4C
	brk $8C.b		; 00 8C
	ora $1F83.w		; 0D 83 1F
	php		; 08
	pld		; 2B
	asl $3E.b		; 06 3E
	pei ($A9.b)		; D4 A9
	tay		; A8
	sta ($80.b,X)		; 81 80
	sta $80.b,S		; 83 80
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	php		; 08
	ora [$00.b]		; 07 00
	ora $5F0E15.l,X		; 1F 15 0E 5F
	rol A		; 2A
	and [$1A.b],Y		; 37 1A
	and $3914.w		; 2D 14 39
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	asl $01.b		; 06 01
	ora [$01.b]		; 07 01
	ora [$2A.b]		; 07 2A
	brk $1A.b		; 00 1A
	brk $14.b		; 00 14
	cop $00.b		; 02 00
	asl $00.b		; 06 00
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $F9.b		; 02 F9
	tay		; A8
	adc $517646.l		; 6F 46 76 51
	and ($11.b)		; 32 11
	bit $F828.w,X		; 3C 28 F8
	brk $E0.b		; 00 E0
	beq  64.b		; F0 40
	bpl -88.b		; 10 A8
	rol $46.b		; 26 46
	bcc  81.b		; 90 51
	bit #$10.b		; 89 10
	cpy $C028.w		; CC 28 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	brk $26.b		; 00 26
	ora $2A.b		; 05 2A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1519.w,Y		; 19 19 15
	ora $0000.w,X		; 1D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	cpy #$20.b		; C0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	cpy #$04.b		; C0 04
	sbc $A956.w,Y		; F9 56 A9
	rol $D9.b		; 26 D9
	.db $62, $9D, $42		; 62 9D 42
	lda $40.b		; A5 40
	lda $0F.b,S		; A3 0F
	cpy #$3D.b		; C0 3D
	cmp $0707.w		; CD 07 07
	lsr $56.b,X		; 56 56
	ldx $B6.b,Y		; B6 B6
	.db $62, $62, $42		; 62 62 42
	.db $42, $40		; 42 40
	rti		; 40

	bra -128.b		; 80 80
	sta $2282.w		; 8D 82 22
	phk		; 4B
	ldy $1C41.w,X		; BC 41 1C
	lda ($AB.b),Y		; B1 AB
	sta $FE.b		; 85 FE
	sta ($38.b,X)		; 81 38
	sta [$FC.b]		; 87 FC
	asl $EC.b		; 06 EC
	txy		; 9B
	ldy $B0.b,X		; B4 B0
	.db $82, $80, $72		; 82 80 72
	bmi 114.b		; 30 72
	tsb $7E.b		; 04 7E
	brk $7E.b		; 00 7E
	asl $00.b		; 06 00
	sec		; 38
	dey		; 88
	bit $F080.w,X		; 3C 80 F0
	bpl  24.b		; 10 18
	jmp ($FC40.w,X)		; 7C 40 FC
	sec		; 38
	jmp ($F8F8.w,X)		; 7C F8 F8
	beq -48.b		; F0 D0
	cpx #$E0.b		; E0 E0
	bra  96.b		; 80 60
	rts		; 60

	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	clc		; 18
	sec		; 38
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
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
	stz $C6.b,X		; 74 C6
	bvs -58.b		; 70 C6
	clc		; 18
	cpy $18.b		; C4 18
	cpy $B8.b		; C4 B8
	stz $D8.b		; 64 D8
	stz $78.b		; 64 78
	ldy $38C0.w,X		; BC C0 38
	sec		; 38
	brk $3C.b		; 00 3C
	tsb $B8.b		; 04 B8
	bra -72.b		; 80 B8
	bra  24.b		; 80 18
	brk $38.b		; 00 38
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	rol $5C1C.w,X		; 3E 1C 5C
	sec		; 38
	sei		; 78
	bmi -72.b		; 30 B8
	rts		; 60

	cpx $60.b		; E4 60
	plx		; FA
	cli		; 58
	sbc $000000.l,X		; FF 00 00 00
	trb $3800.w		; 1C 00 38
	brk $30.b		; 00 30
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	clc		; 18
	cli		; 58
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	tsb $FB.b		; 04 FB
	adc #$F6.b		; 69 F6
	mvn $02,$E6		; 54 E6 02
	bit $0F00.w,X		; 3C 00 0F
	bpl  22.b		; 10 16
	and [$11.b],Y		; 37 11
	and ($04.b),Y		; 31 04
	brk $69.b		; 00 69
	tsb $54.b		; 04 54
	ora #$02.b		; 09 02
	ora $0300.w,Y		; 19 00 03
	brk $00.b		; 00 00
	ora #$01.b		; 09 01
	asl $FC00.w		; 0E 00 FC
	mvn $A4,$FC		; 54 FC A4
	dec $D186.w,X		; DE 86 D1
	eor $E20691.l		; 4F 91 06 E2
	ora ($05.b,X)		; 01 05
	sta $07.b,S		; 83 07
	sta $53.b,S		; 83 53
	rti		; 40

	lda $00.b,S		; A3 00
	sta ($20.b,X)		; 81 20
	lsr $26.b		; 46 26
	brk $60.b		; 00 60
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0E.b,X)		; 01 0E
	tsb $18.b		; 04 18
	bpl  32.b		; 10 20
	php		; 08
	eor [$21.b]		; 47 21
	lsr $A854.w,X		; 5E 54 A8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $1F1F0F.l		; 0F 0F 1F 1F
	sec		; 38
	sec		; 38
	and ($21.b,X)		; 21 21
	eor [$57.b],Y		; 57 57
	and #$D0.b		; 29 D0
	jsr $50D7.w		; 20 D7 50
	lda #$40.b		; A9 40
	lda ($40.b),Y		; B1 40
	lda ($00.b,X)		; A1 00
	sbc ($00.b,X)		; E1 00
	cmp ($00.b,X)		; C1 00
	eor ($2F.b,X)		; 41 2F
	and $502828.l		; 2F 28 28 50
	bvc  64.b		; 50 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	bit $1C.b		; 24 1C
	adc $097612.l		; 6F 12 76 09
	bit $0B.b,X		; 34 0B
	and $162900.l,X		; 3F 00 29 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	bpl  16.b		; 10 10
	ora #$00.b		; 09 00
	phd		; 0B
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rts		; 60

	cpy #$A0.b		; C0 A0
	bra -96.b		; 80 A0
	rti		; 40

	jsr $4080.w		; 20 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1700.w		; 0C 00 17
	cpx $EB.b		; E4 EB
	ora ($0B.b,X)		; 01 0B
	ora ($0F.b,X)		; 01 0F
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	ora #$F1.b		; 09 F1
	ora $F0.b		; 05 F0
	ora $00.b		; 05 00
	ora ($00.b,X)		; 01 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	ora $F3.b,S		; 03 F3
	ora $F7FFFF.l		; 0F FF FF F7
	sed		; F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora $F0FF03.l		; 0F 03 FF F0
	sbc $00FFC0.l,X		; FF C0 FF 00
	sed		; F8
	brk $00.b		; 00 00
	asl $1E25.w		; 0E 25 1E
	sbc $CC.b		; E5 CC
	and ($2C.b,S),Y		; 33 2C
	ora ($10.b,S),Y		; 13 10
	ora $10FC02.l		; 0F 02 FC 10
	tsb $1825.w		; 0C 25 18
	asl $1E.b,X		; 16 1E
	ora ($1E.b)		; 12 1E
	stp		; DB
	jmp.w [$ECEE]		; DC EE EC
	sbc $F5.b,X		; F5 F5
	ora $03.b,S		; 03 03
	sbc [$F7.b],Y		; F7 F7
	sbc [$E7.b]		; E7 E7
	cpy #$60.b		; C0 60
	cpx #$50.b		; E0 50
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	sty $03.b		; 84 03
	jsr $2120.w		; 20 20 21
	rol $5F16.w		; 2E 16 5F
	rti		; 40

	cpy #$20.b		; C0 20
	cpx #$60.b		; E0 60
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	jsr ($FFFF.w,X)		; FC FF FF
	sbc $F0F9.w,Y		; F9 F9 F0
	beq  89.b		; F0 59
	lda $72B3.w,Y		; B9 B3 72
	sbc $27DF01.l,X		; FF 01 DF 27
	adc $7DFABB.l,X		; 7F BB FA 7D
	xce		; FB
	trb $60FF.w		; 1C FF 60
	and $7206.w,Y		; 39 06 72
	tsb $0100.w		; 0C 00 01
	ora $3F.b,S		; 03 3F
	bcc  63.b		; 90 3F
	sec		; 38
	adc $20FF00.l,X		; 7F 00 FF 20
	jmp ($38DD.w,X)		; 7C DD 38
	jmp.w [$F8B4]		; DC B4 F8
	sta [$B0.b]		; 87 B0
	cpy #$50.b		; C0 50
	ldy #$F0.b		; A0 F0
	brk $20.b		; 00 20
	cpy #$E0.b		; C0 E0
	clc		; 18
	phd		; 0B
	jmp ($F803.w,X)		; 7C 03 F8
	bra  -8.b		; 80 F8
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
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
	ora ($01.b,X)		; 01 01
	sbc ($00.b)		; F2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	ora ($82.b,X)		; 01 82
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	ora $0E1503.l		; 0F 03 15 0E
	ror $011C.w,X		; 7E 1C 01
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$00.b]		; 07 00
	ora $081F00.l		; 0F 00 1F 08
	adc $825B0C.l,X		; 7F 0C 5B 82
	eor [$A8.b],Y		; 57 A8
	eor $92.b,X		; 55 92
	jmp ($04BA.w,X)		; 7C BA 04
	lda ($69.b,S),Y		; B3 69
	sbc $903F20.l,X		; FF 20 3F 90
	jsr ($28FC.w,X)		; FC FC 28
	tay		; A8
	pld		; 2B
	lda #$03.b		; A9 03
	bra  71.b		; 80 47
	sty $46.b		; 84 46
	inx		; E8
	ror $A0.b		; 66 A0
	adc $003E00.l		; 6F 00 3E 00
	rol $1D14.w		; 2E 14 1D
	ora #$15.b		; 09 15
	php		; 08
	and $3F10.w		; 2D 10 3F
	asl $3B.b,X		; 16 3B
	asl $11.b		; 06 11
	asl $0001.w		; 0E 01 00
	ora $00.b,X		; 15 00
	asl A		; 0A
	brk $0A.b		; 00 0A
	brk $12.b		; 00 12
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	tsb $06.b		; 04 06
	asl $FE.b		; 06 FE
	ply		; 7A
	pea $FC78.w		; F4 78 FC
	adc $F4F9.w,Y		; 79 F9 F4
	sbc $EFF4.w		; ED F4 EF
	inc $FD.b,X		; F6 FD
	inc $DDEA.w		; EE EA DD
	and ($48.b),Y		; 31 48
	adc ($08.b,S),Y		; 73 08
	tda		; 7B
	ora ($F6.b,X)		; 01 F6
	tsb $F2.b		; 04 F2
	brk $F0.b		; 00 F0
	brk $E2.b		; 00 E2
	asl A		; 0A
	cmp $1C.b		; C5 1C
	bpl  76.b		; 10 4C
	plp		; 28
	sty $38.b,X		; 94 38
	sta [$FB.b],Y		; 97 FB
	trb $94.b		; 14 94
	pla		; 68
	brk $FF.b		; 00 FF
	cpy $BB.b		; C4 BB
	adc [$58.b]		; 67 58
	sec		; 38
	sec		; 38
	pla		; 68
	sei		; 78
	pha		; 48
	sei		; 78
	stp		; DB
	xce		; FB
	sbc [$97.b],Y		; F7 97
	and ($11.b),Y		; 31 11
	dec $EFCE.w		; CE CE EF
	sbc $092CB3.l		; EF B3 2C 09
	dec $91.b		; C6 91
	dec $00.b		; C6 00
	eor $A0.b,X		; 55 A0
	cmp $58A0.w,X		; DD A0 58
	bne -96.b		; D0 A0
	bpl  96.b		; 10 60
	sbc [$F7.b],Y		; F7 F7
	tyx		; BB
	tyx		; BB
	and $B839.w,Y		; 39 39 B8
	sec		; 38
	plp		; 28
	plp		; 28
	jsr $0020.w		; 20 20 00
	bpl -128.b		; 10 80
	bmi 104.b		; 30 68
	bcs  88.b		; B0 58
	bcs -68.b		; B0 BC
	cld		; D8
	rol $7E14.w,X		; 3E 14 7E
	cpx $603C.w		; EC 3C 60
	cpx #$00.b		; E0 00
	cpx #$C0.b		; E0 C0
	brk $78.b		; 00 78
	bpl 120.b		; 10 78
	bpl  56.b		; 10 38
	cpy $30.b		; C4 30
	tsb $8000.w		; 0C 00 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpx #$40.b		; E0 40
	bmi -96.b		; 30 A0
	clc		; 18
	bvc -120.b		; 50 88
	jsr $88CC.w		; 20 CC 88
	stz $88.b		; 64 88
	stz $00.b		; 64 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	cpx #$F0.b		; E0 F0
	beq 112.b		; F0 70
	bvs  56.b		; 70 38
	sec		; 38
	clv		; B8
	clv		; B8
	cld		; D8
	cld		; D8
	cld		; D8
	bit $D8.b		; 24 D8
	bit $50.b		; 24 50
	ldy $A850.w		; AC 50 A8
	bvc -88.b		; 50 A8
	rti		; 40

	bcs   0.b		; B0 00
	cpx #$00.b		; E0 00
	cpy #$D8.b		; C0 D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	cld		; D8
	bvc  80.b		; 50 50
	bvc  80.b		; 50 50
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	cop $0C.b		; 02 0C
	tsb $18.b		; 04 18
	brk $13.b		; 00 13
	bpl  39.b		; 10 27
	trb $2B.b		; 14 2B
	asl A		; 0A
	bit $00.b,X		; 34 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	ora [$0F.b]		; 07 0F
	ora $180E0E.l		; 0F 0E 0E 18
	clc		; 18
	ora $15.b,X		; 15 15
	phd		; 0B
	phd		; 0B
	ora #$34.b		; 09 34
	trb $29.b		; 14 29
	bpl  42.b		; 10 2A
	tsb $3A.b		; 04 3A
	php		; 08
	trb $08.b		; 14 08
	trb $00.b		; 14 00
	tsb $0400.w		; 0C 00 04
	phd		; 0B
	phd		; 0B
	asl $16.b,X		; 16 16
	trb $14.b		; 14 14
	trb $14.b		; 14 14
	php		; 08
	php		; 08
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
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $A0.b		; 00 A0
	cpy #$C0.b		; C0 C0
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	cpy #$90.b		; C0 90
	bra -24.b		; 80 E8
	rts		; 60

	jsr ($0000.w,X)		; FC 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rts		; 60

	rts		; 60

	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	asl $0608.w,X		; 1E 08 06
	ora $02.b		; 05 02
	ora ($FE.b,X)		; 01 FE
	adc ($8E.b),Y		; 71 8E
	sty $03.b		; 84 03
	tsb $03.b		; 04 03
	brk $FF.b		; 00 FF
	sbc ($F1.b),Y		; F1 F1
	sbc $FDFD.w,X		; FD FD FD
	sbc $0505.w,X		; FD 05 05
	sbc $FEF9.w,Y		; F9 F9 FE
	inc $FCFC.w,X		; FE FC FC
	sta ($81.b,X)		; 81 81
	ldy #$50.b		; A0 50
	cpy #$70.b		; C0 70
	bne 104.b		; D0 68
	bcc 105.b		; 90 69
	brk $FF.b		; 00 FF
	and ($C0.b,X)		; 21 C0
	cli		; 58
	tya		; 98
	phb		; 8B
	php		; 08
	ldy #$E0.b		; A0 E0
	brk $E0.b		; 00 E0
	bvc -16.b		; 50 F0
	bvs -112.b		; 70 90
	cpy #$00.b		; C0 00
	and $FFFF3F.l,X		; 3F 3F FF FF
	sbc $38FFFF.l,X		; FF FF FF 38
	sbc $6BF653.l,X		; FF 53 F6 6B
	cpx $3C1B.w		; EC 1B 3C
	ora $71.b,S		; 03 71
	ora $BB6C97.l		; 0F 97 6C BB
	eor #$30.b		; 49 30
	bit $1843.w,X		; 3C 43 18
	adc $08.b,S		; 63 08
	ora $18.b,S		; 03 18
	brk $3C.b		; 00 3C
	cop $1A.b		; 02 1A
	rts		; 60

	bpl  69.b		; 10 45
	and ($52.b,X)		; 21 52
	cpy $6382.w		; CC 82 63
	ldy #$1F.b		; A0 1F
	sbc [$19.b]		; E7 19
	jmp $5F21A3.l		; 5C A3 21 5F
	ldy $4D.b,X		; B4 4D
	cmp #$BA.b		; C9 BA
	tsa		; 3B
	php		; 08
	bit $4120.w,X		; 3C 20 41
	eor ($58.b,X)		; 41 58
	.db $42, $20		; 42 20
	tsb $9A.b		; 04 9A
	cop $03.b		; 02 03
	ora ($86.b,X)		; 01 86
	.db $82, $03, $05		; 82 03 05
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	phd		; 0B
	ora [$15.b]		; 07 15
	ora $0919.w		; 0D 19 09
	ora $000100.l,X		; 1F 00 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $0902.w		; 0D 02 09
	asl $00.b		; 06 00
	brk $FE.b		; 00 FE
	cmp ($C2.b,X)		; C1 C2
	sta ($C2.b,X)		; 81 C2
	sta ($83.b,X)		; 81 83
	ora ($83.b,X)		; 01 83
	ora ($83.b,X)		; 01 83
	ora ($83.b,X)		; 01 83
	brk $00.b		; 00 00
	brk $C1.b		; 00 C1
	trb $0081.w		; 1C 81 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	asl $02.b		; 06 02
	tsb $1304.w		; 0C 04 13
	asl $021F.w		; 0E 1F 02
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $0F.b,S		; 03 0F
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	inc $1E.b		; E6 1E
	sbc $80BFF0.l,X		; FF F0 BF 80
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FF0100.l,X		; FF 00 01 FF
	brk $F0.b		; 00 F0
	rti		; 40

	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	sec		; 38
	sbc $00FF18.l,X		; FF 18 FF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	xce		; FB
	ora [$F7.b]		; 07 F7
	ora $3908FF.l		; 0F FF 08 39
	and $1818.w,Y		; 39 18 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	ora $08080F.l		; 0F 0F 08 08
	and $FF0E.w,X		; 3D 0E FF
	tsb $00FF.w		; 0C FF 00
	sbc $C0FF00.l,X		; FF 00 FF C0
	sbc $F8F7F0.l		; EF F0 F7 F8
	sbc $CECE88.l,X		; FF 88 CE CE
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F0.b		; E0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	dey		; 88
	dey		; 88
	cmp #$0E.b		; C9 0E
	sbc $FF03.w,X		; FD 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $30.b		; 00 30
	and $000300.l,X		; 3F 00 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	ldy #$B0.b		; A0 B0
	ldy #$30.b		; A0 30
	jsr $0090.w		; 20 90 00
	cmp $CB00.w,Y		; D9 00 CB
	bpl -22.b		; 10 EA
	trb $F6.b		; 14 F6
	trb $F040.w		; 1C 40 F0
	rti		; 40

	beq -64.b		; F0 C0
	beq  96.b		; F0 60
	bvs  32.b		; 70 20
	and $3B20.w,Y		; 39 20 3B
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	asl $B780.w,X		; 1E 80 B7
	bmi -28.b		; 30 E4
	jmp ($67DD.w,X)		; 7C DD 67
	rol $41.b		; 26 41
	eor ($60.b),Y		; 51 60
	adc #$30.b		; 69 30
	bit $18.b,X		; 34 18
	adc ($E1.b,X)		; 61 E1
	pha		; 48
	sed		; F8
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $67.b		; 00 67
	brk $71.b		; 00 71
	brk $79.b		; 00 79
	brk $3C.b		; 00 3C
	and $7F0B.w,X		; 3D 0B 7F
	brk $7D.b		; 00 7D
	rol A		; 2A
	adc $B2DF22.l,X		; 7F 22 DF B2
	and $56ABD2.l,X		; 3F D2 AB 56
	sbc $CBCB40.l,X		; FF 40 CB CB
	bra -128.b		; 80 80
	tax		; AA
	tax		; AA
	lda ($B2.b)		; B2 B2
	and ($B2.b)		; 32 B2
	asl $D6.b,X		; 16 D6
	asl $D6.b,X		; 16 D6
	brk $C0.b		; 00 C0
	dec $FF68.w,X		; DE 68 FF
	brk $DF.b		; 00 DF
	tax		; AA
	adc $26FDA2.l,X		; 7F A2 FD 26
	sbc $B56BA5.l,X		; FF A5 6B B5
	sbc $696901.l,X		; FF 01 69 69
	brk $00.b		; 00 00
	tax		; AA
	tax		; AA
	ldx $A6.b		; A6 A6
	rol $26.b		; 26 26
	ldy $B5.b,X		; B4 B5
	ldy $B5.b,X		; B4 B5
	brk $01.b		; 00 01
	and $037A01.l,X		; 3F 01 7A 03
	bvs 124.b		; 70 7C
	eor $C0A060.l,X		; 5F 60 A0 C0
	ldy #$C0.b		; A0 C0
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	cmp ($84.b,X)		; C1 84
	sta [$83.b]		; 87 83
	sbc $00FF80.l,X		; FF 80 FF 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$02.b		; C0 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	tsb $02.b		; 04 02
	tsb $05.b		; 04 05
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	sbc [$98.b],Y		; F7 98
	lda $982F98.l,X		; BF 98 2F 98
	xce		; FB
	jmp $4CFF.w		; 4C FF 4C
	lda $6CB74C.l,X		; BF 4C B7 6C
	lda $981860.l,X		; BF 60 18 98
	cli		; 58
	cld		; D8
	jmp $DC1CDC.l		; 5C DC 1C DC
	tsb $0CCC.w		; 0C CC 0C
	cpy $EC0C.w		; CC 0C EC
	brk $E0.b		; 00 E0
	jmp.w [$F930]		; DC 30 F9
	and ($E9.b),Y		; 31 E9
	and ($BA.b),Y		; 31 BA
	adc $FD.b,S		; 63 FD
	ror $FF.b		; 66 FF
	stz $D6.b		; 64 D6
	stz $F1.b		; 64 F1
	cop $33.b		; 02 33
	and ($36.b,S),Y		; 33 36
	and [$76.b],Y		; 37 76
	adc [$74.b],Y		; 77 74
	adc [$60.b],Y		; 77 60
	adc [$60.b]		; 67 60
	adc [$68.b]		; 67 68
	ror $0F0C.w		; 6E 0C 0F
	bvc -32.b		; 50 E0
	bmi -32.b		; 30 E0
	bvs -96.b		; 70 A0
	ldy #$00.b		; A0 00
	rts		; 60

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	ldy #$00.b		; A0 00
	rts		; 60

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	ora $1403.w,X		; 1D 03 14
	tsb $0409.w		; 0C 09 04
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	ora $1F.b,S		; 03 1F
	cop $0E.b		; 02 0E
	eor [$CC.b],Y		; 57 CC
	lda $D86E48.l,X		; BF 48 6E D8
	adc $CA91.w,X		; 7D 91 CA
	lda ($FF.b,S),Y		; B3 FF
	tsb $B6.b		; 04 B6
	stz $DB.b		; 64 DB
	jmp ($EC2C.w)		; 6C 2C EC
	tsb $19CC.w		; 0C CC 19
	cmp $9B1A.w,Y		; D9 1A 9B
	bit $B7.b,X		; 34 B7
	brk $07.b		; 00 07
	pla		; 68
	ror $6F60.w		; 6E 60 6F
	ora [$02.b],Y		; 17 02
	and [$02.b],Y		; 37 02
	and $00.b		; 25 00
	ora $00.b		; 05 00
	ora $01.b		; 05 01
	ora $01.b		; 05 01
	asl $03.b		; 06 03
	tsb $03.b		; 04 03
	brk $16.b		; 00 16
	brk $36.b		; 00 36
	cop $26.b		; 02 26
	cop $06.b		; 02 06
	cop $07.b		; 02 07
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $7E.b		; 00 7E
	brk $BE.b		; 00 BE
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($81.b,X)		; 01 81
	sta ($41.b,X)		; 81 41
	cmp ($FF.b,X)		; C1 FF
	asl A		; 0A
	sbc $1F0A.w,X		; FD 0A 1F
	php		; 08
	ora $011E07.l,X		; 1F 07 1E 01
	phd		; 0B
	tsb $0F.b		; 04 0F
	ora $1F.b,S		; 03 1F
	ora $0A.b,S		; 03 0A
	asl A		; 0A
	asl A		; 0A
	asl A		; 0A
	inx		; E8
	inx		; E8
	sbc $E5E5EF.l		; EF EF E5 E5
	pea $F3F4.w		; F4 F4 F3
	sbc ($E3.b,S),Y		; F3 E3
	sbc $FF.b,S		; E3 FF
	tay		; A8
	cmp $88FEA8.l,X		; DF A8 FE 88
	inc $BEF0.w,X		; FE F0 BE
	cpy #$EC.b		; C0 EC
	bpl  -8.b		; 10 F8
	rts		; 60

	jsr ($A860.w,X)		; FC 60 A8
	tay		; A8
	tay		; A8
	tay		; A8
	bit #$89.b		; 89 89
	sbc $D1F9.w,Y		; F9 F9 D1
	cmp ($13.b),Y		; D1 13
	ora ($67.b,S),Y		; 13 67
	adc [$63.b]		; 67 63
	adc $FF.b,S		; 63 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$F4.b		; C0 F4
	bpl -28.b		; 10 E4
	brk $EC.b		; 00 EC
	php		; 08
	pea $DA18.w		; F4 18 DA
	bpl -22.b		; 10 EA
	bit $94.b,X		; 34 94
	clc		; 18
	inx		; E8
	beq   8.b		; F0 08
	trb $1C18.w		; 1C 18 1C
	bpl  28.b		; 10 1C
	brk $1C.b		; 00 1C
	jsr $003A.w		; 20 3A 00
	rol $7C60.w,X		; 3E 60 7C
	brk $F8.b		; 00 F8
	ora #$06.b		; 09 06
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $03.b		; 05 03
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	and [$8C.b],Y		; 37 8C
	adc $86F980.l,X		; 7F 80 F9 86
	sbc [$8F.b],Y		; F7 8F
	adc $087F08.l,X		; 7F 08 7F 08
	and [$0F.b],Y		; 37 0F
	rol $4C01.w,X		; 3E 01 4C
	cpy $8000.w		; CC 00 80
	asl $86.b		; 06 86
	ora $88888F.l		; 0F 8F 88 88
	sty $CF8C.w		; 8C 8C CF
	cmp $F6C1C1.l		; CF C1 C1 F6
	tya		; 98
	adc $30CF80.l,X		; 7F 80 CF 30
	sbc [$78.b],Y		; F7 78
	sbc $88FF88.l,X		; FF 88 FF 88
	inc $F8.b,X		; F6 F8
	ldx $99C0.w,Y		; BE C0 99
	sta $8080.w,Y		; 99 80 80
	bmi  48.b		; 30 30
	sed		; F8
	sed		; F8
	dey		; 88
	dey		; 88
	tya		; 98
	tya		; 98
	sbc $C1F9.w,Y		; F9 F9 C1
	cmp ($C0.b,X)		; C1 C0
	bra -64.b		; 80 C0
	bra -96.b		; 80 A0
	cpy #$20.b		; C0 20
	rti		; 40

	rts		; 60

	rti		; 40

	bmi   0.b		; 30 00
	bpl  32.b		; 10 20
	pha		; 48
	bvc   0.b		; 50 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	cpx #$80.b		; E0 80
	cpx #$C0.b		; E0 C0
	beq -64.b		; F0 C0
	beq -96.b		; F0 A0
	sed		; F8
	ora [$02.b]		; 07 02
	rol $03.b		; 26 03
	bit $01.b		; 24 01
	adc $01.b		; 65 01
	adc $00.b		; 65 00
	sta $B744.w,Y		; 99 44 B7
	jmp $60A3.w		; 4C A3 60
	brk $07.b		; 00 07
	brk $27.b		; 00 27
	cop $27.b		; 02 27
	cop $67.b		; 02 67
	cop $66.b		; 02 66
	cop $DE.b		; 02 DE
	brk $FC.b		; 00 FC
	trb $77FC.w		; 1C FC 77
	cpy $8CF2.w		; CC F2 8C
	inc $FC00.w,X		; FE 00 FC
	bmi -68.b		; 30 BC
	rts		; 60

	cmp $7A61.w,X		; DD 61 7A
	cmp $BD.b,S		; C3 BD
	dec $0C.b		; C6 0C
	cpy $8D0D.w		; CC 0D 8D
	and ($21.b,X)		; 21 21
	and ($33.b,S),Y		; 33 33
	adc ($73.b,S),Y		; 73 73
	.db $62, $63, $E4		; 62 63 E4
	sbc [$C0.b]		; E7 C0
	cmp [$D8.b]		; C7 D8
	adc ($9E.b,X)		; 61 9E
	.db $62, $FF, $01		; 62 FF 01
	adc $0C7B19.l,X		; 7F 19 7B 0C
	adc [$0C.b],Y		; 77 0C
	lda $7B86.w,X		; BD 86 7B
	dec $66.b		; C6 66
	adc [$61.b]		; 67 61
	adc $08.b,S		; 63 08
	ora #$98.b		; 09 98
	sta $9C9C.w,Y		; 99 9C 9C
	sty $4E8C.w		; 8C 8C 4E
	dec $C606.w		; CE 06 C6
	bra   0.b		; 80 00
	rti		; 40

	bra  96.b		; 80 60
	rti		; 40

	pla		; 68
	bcs -76.b		; B0 B4
	iny		; C8
	ldx $B2C0.w		; AE C0 B2
	rti		; 40

	sta ($60.b,S),Y		; 93 60
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $EE.b		; 00 EE
	brk $72.b		; 00 72
	brk $73.b		; 00 73
	phd		; 0B
	asl $0D.b		; 06 0D
	cop $07.b		; 02 07
	cop $0A.b		; 02 0A
	asl $09.b		; 06 09
	ora $17.b		; 05 17
	tsb $001C.w		; 0C 1C 00
	bpl   0.b		; 10 00
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	cop $0F.b		; 02 0F
	brk $1F.b		; 00 1F
	brk $1C.b		; 00 1C
	brk $10.b		; 00 10
	adc $C6.b,X		; 75 C6
	sbc ($C2.b,S),Y		; F3 C2
	dec $08.b		; C6 08
	stz $68.b		; 64 68
	trb $E0F0.w		; 1C F0 E0
	clc		; 18
	trb $0000.w		; 1C 00 00
	brk $C8.b		; 00 C8
	cmp $30CFCC.l		; CF CC CF 30
	rol $FC90.w,X		; 3E 90 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	inc $1B.b,X		; F6 1B
	sbc $0C3A89.l,X		; FF 89 3A 0C
	sta $36D984.l,X		; 9F 84 D9 36
	and $1B6E10.l		; 2F 10 6E 1B
	eor $33.b,X		; 55 33
	clc		; 18
	tas		; 1B
	clc		; 18
	sta $CDCD.w,Y		; 99 CD CD
	jmp ($06EC.w)		; 6C EC 06
	inc $00.b,X		; F6 00
	bmi   3.b		; 30 03
	tda		; 7B
	phd		; 0B
	tda		; 7B
	iny		; C8
	bpl 120.b		; 10 78
	bcc -120.b		; 90 88
	cpx #$10.b		; E0 10
	brk $20.b		; 00 20
	brk $D4.b		; 00 D4
	rts		; 60

	cld		; D8
	stz $D4.b		; 64 D4
	clc		; 18
	brk $D8.b		; 00 D8
	brk $F8.b		; 00 F8
	bpl  -8.b		; 10 F8
	cpx #$F0.b		; E0 F0
	cpy #$E0.b		; C0 E0
	brk $74.b		; 00 74
	brk $7C.b		; 00 7C
	jsr $003C.w		; 20 3C 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($00.b),Y		; 71 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $71.b		; 00 71
	cli		; 58
	jsr $1836.w		; 20 36 18
	ora $06.b,X		; 15 06
	ora ($09.b),Y		; 11 09
	and $183F1C.l		; 2F 1C 3F 18
	eor $63AE22.l		; 4F 22 AE 63
	brk $78.b		; 00 78
	brk $3E.b		; 00 3E
	php		; 08
	ora $001F06.l,X		; 1F 06 1F 00
	bit $3800.w,X		; 3C 00 38
	ora ($73.b,S),Y		; 13 73
	ora ($F3.b,S),Y		; 13 F3
	brk $00.b		; 00 00
	sec		; 38
	brk $D1.b		; 00 D1
	jsr $C0E1.w		; 20 E1 C0
	ldx #$C1.b		; A2 C1
	cmp $EB63.w,X		; DD 63 EB
	rol $D9.b,X		; 36 D9
	clc		; 18
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $F1.b		; 00 F1
	brk $E1.b		; 00 E1
	brk $E3.b		; 00 E3
	brk $7F.b		; 00 7F
	brk $3E.b		; 00 3E
	rol $3E.b		; 26 3E
	bpl  32.b		; 10 20
	and [$38.b]		; 27 38
	cmp ($13.b,S),Y		; D3 13
	ora $84.b,S		; 03 84
	adc $06.b,X		; 75 06
	xce		; FB
	cop $FE.b		; 02 FE
	and $BD.b,S		; 23 BD
	adc ($00.b,X)		; 61 00
	bmi   0.b		; 30 00
	and $78FF2C.l,X		; 3F 2C FF 78
	sbc $048F88.l,X		; FF 88 8F 04
	ora [$60.b]		; 07 60
	adc $62.b,S		; 63 62
	adc $00.b,S		; 63 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	cpy #$50.b		; C0 50
	jsr $1028.w		; 20 28 10
	trb $8608.w		; 1C 08 86
	tsb $0AF1.w		; 0C F1 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $38.b		; 00 38
	brk $1C.b		; 00 1C
	brk $8E.b		; 00 8E
	tsb $FF.b		; 04 FF
	cmp $63.b,X		; D5 63
	jsl $625E41.l		; 22 41 5E 62
	ror $9D.b		; 66 9D
	cmp [$00.b]		; C7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	bra -29.b		; 80 E3
	sta ($FF.b,X)		; 81 FF
	brk $FF.b		; 00 FF
	brk $C7.b		; 00 C7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	tsb $08.b		; 04 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000800.l		; 0F 00 08 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	eor #$D7.b		; 49 D7
	ora #$97.b		; 09 97
	asl $0709.w		; 0E 09 07
	asl $0301.w		; 0E 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	adc $D901.w,Y		; 79 01 D9
	brk $9E.b		; 00 9E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pla		; 68
	bcs -16.b		; B0 F0
	ldy #$D0.b		; A0 D0
	brk $88.b		; 00 88
	bcc -12.b		; 90 F4
	clc		; 18
	bit $1C18.w		; 2C 18 1C
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	clv		; B8
	bra -80.b		; 80 B0
	jsr $6030.w		; 20 30 60
	sed		; F8
	brk $FC.b		; 00 FC
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $04.b		; 00 04
	brk $80.b		; 00 80
	brk $10.b		; 00 10
	rti		; 40

	brk $D0.b		; 00 D0
	brk $06.b		; 00 06
	bra   4.b		; 80 04
	asl A		; 0A
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $01.b		; 00 01
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
	tsb $10.b		; 04 10
	and ($30.b,X)		; 21 30
	plp		; 28
	bmi -120.b		; 30 88
	rep #$00		; C2 00
	asl $D0.b		; 06 D0
	cop $01.b		; 02 01
	trb $00.b		; 14 00
	cop $00.b		; 02 00
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
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsr $0011.w		; 20 11 00
	brk $25.b		; 00 25
	rti		; 40

	bpl   0.b		; 10 00
	cop $00.b		; 02 00
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
	php		; 08
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rol A		; 2A
	cop $49.b		; 02 49
	stz $04.b,X		; 74 04
	.db $42, $40		; 42 40
	bne   2.b		; D0 02
	trb $0A.b		; 14 0A
	brk $80.b		; 00 80
	tsb $30.b		; 04 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($88.b,X)		; 01 88
	tsb $40.b		; 04 40
	asl $92.b		; 06 92
	php		; 08
	brk $84.b		; 00 84
	cpy #$02.b		; C0 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $F7FD3F.l,X		; FF 3F FD F7
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $77FFFF.l,X		; FF FF FF 77
	sbc $6FFFFF.l,X		; FF FF FF 6F
	plx		; FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $FFEF.w,X		; FD EF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFF7.w,X		; FE F7 FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc [$BF.b],Y		; F7 BF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EF7DFF.l,X		; FF FF 7D EF
	sbc $FFFFFA.l,X		; FF FA FF FF
	sbc $BFEF7F.l,X		; FF 7F EF BF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDDEF.l,X		; FF EF DD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	sbc $7FDFFF.l,X		; FF FF DF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	ldx $F7FF.w,Y		; BE FF F7
	sbc $FFF7EF.l,X		; FF EF F7 FF
	sbc $FFDF.w,X		; FD DF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	lda [$FF.b],Y		; B7 FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEF.w,X		; FD EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFFEB.l,X		; FF EB FF FD
	xce		; FB
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w		; ED FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $EFFFFF.l,X		; DF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FEFFFF.l,X		; DF FF FF FE
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FAFFFF.l,X		; FF FF FF FA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EFBF.w,X		; FD BF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc [$FF.b],Y		; F7 FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFEFD.l,X		; FF FD FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $6FFFDB.l,X		; FF DB FF 6F
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	cmp $FFFFFD.l		; CF FD FF FF
	sbc $FDFFBF.l,X		; FF BF FF FD
	inc $BFFF.w,X		; FE FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFEFF.l		; EF FF FE DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFBE.l,X		; FF BE FF BF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $7F7FF7.l,X		; FF F7 7F 7F
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $7DDFF9.l,X		; FF F9 DF 7D
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FF9FFF.l,X		; FF FF 9F FF
	sbc $FFEFEF.l,X		; FF EF EF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FBEFFE.l,X		; FF FE EF FB
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFBFFF.l,X		; BF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $FFEF7F.l,X		; FF 7F EF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	tsx		; BA
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc [$BF.b],Y		; F7 BF
	sbc $FFFF5F.l,X		; FF 5F FF FF
	sbc $BFFFEF.l,X		; FF EF FF BF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFDFFF.l,X		; FF FF DF BF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0C1D0B.l,X		; FF 0B 1D 0C
	pha		; 48
	stz $4000.w,X		; 9E 00 40
	bra  66.b		; 80 42
	brk $68.b		; 00 68
	cpy $9C.b		; C4 9C
	rti		; 40

	cop $88.b		; 02 88
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	jsr $4200.w		; 20 00 42
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
	dex		; CA
	rti		; 40

	bpl  64.b		; 10 40
	cop $21.b		; 02 21
	jsr $8000.w		; 20 00 80
	and $14.b,X		; 35 14
	rti		; 40

	brk $84.b		; 00 84
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
	bpl   0.b		; 10 00
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
	brk $E4.b		; 00 E4
	bmi   9.b		; 30 09
	and ($A4.b,X)		; 21 A4
	bra  64.b		; 80 40
	asl $88.b		; 06 88
	pha		; 48
	eor ($00.b)		; 52 00
	asl $00.b,X		; 16 00
	clc		; 18
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	asl A		; 0A
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
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
	phk		; 4B
	brk $C0.b		; 00 C0
	rti		; 40

	clc		; 18
	jsr $4021.w		; 20 21 40
	sta [$80.b]		; 87 80
	tsb $80.b		; 04 80
	lsr A		; 4A
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $86.b		; 00 86
	dex		; CA
	mvp $A6,$1A		; 44 1A A6
	cmp $09.b,X		; D5 09
	eor ($D2.b,X)		; 41 D2
	rti		; 40

	bcc   1.b		; 90 01
	jsr $20F0.w		; 20 F0 20
	rti		; 40

	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $12.b		; 00 12
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	sta ($20.b,X)		; 81 20
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	ora ($60.b,X)		; 01 60
	bvc -62.b		; 50 C2
	tsb $20.b		; 04 20
	brk $20.b		; 00 20
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $49.b		; 00 49
	ora ($C2.b,X)		; 01 C2
	eor $01121E.l		; 4F 1E 12 01
	bpl  22.b		; 10 16
	php		; 08
	sty $C2.b		; 84 C2
	jsl $040018.l		; 22 18 00 04
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
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
	brk $20.b		; 00 20
	brk $08.b		; 00 08
	brk $41.b		; 00 41
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
	ora $41.b		; 05 41
	ora #$09.b		; 09 09
	tsb $0002.w		; 0C 02 00
	cop $01.b		; 02 01
	brk $04.b		; 00 04
	tsb $2A.b		; 04 2A
	ldy #$40.b		; A0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	cpy #$00.b		; C0 00
	lda ($60.b,X)		; A1 60
	jsr $C834.w		; 20 34 C8
	dey		; 88
	ldy $80.b,X		; B4 80
	cop $00.b		; 02 00
	bpl   0.b		; 10 00
	plp		; 28
	brk $80.b		; 00 80
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	php		; 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tya		; 98
	brk $46.b		; 00 46
	jsr $1185.w		; 20 85 11
	lsr $0452.w,X		; 5E 52 04
	inc A		; 1A
	cop $82.b		; 02 82
	eor ($00.b,X)		; 41 00
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	jsr $6844.w		; 20 44 68
	cpy #$08.b		; C0 08
	stx $C0.b		; 86 C0
	jsr $1812.w		; 20 12 18
	jsr $0300.w		; 20 00 03
	rti		; 40

	dec A		; 3A
	bra  16.b		; 80 10
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jsr $0000.w		; 20 00 00
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
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	bpl   8.b		; 10 08
	bra   4.b		; 80 04
	php		; 08
	brk $04.b		; 00 04
	asl A		; 0A
	brk $80.b		; 00 80
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $42.b		; 00 42
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
	brk $20.b		; 00 20
	bit $30.b		; 24 30
	lsr $04.b,X		; 56 04
	stx $22.b		; 86 22
	asl $3200.w		; 0E 00 32
	clc		; 18
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	bit #$00.b		; 89 00
	ora $000080.l		; 0F 80 00 00
	bra   6.b		; 80 06
	.db $82, $10, $00		; 82 10 00
	bra  12.b		; 80 0C
	rti		; 40

	ora ($90.b,X)		; 01 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $01.b		; 00 01
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
	brk $12.b		; 00 12
	php		; 08
	sta ($58.b)		; 92 58
	eor ($06.b)		; 52 06
	tsb $9C.b		; 04 9C
	cop $BB.b		; 02 BB
	cop $20.b		; 02 20
	brk $20.b		; 00 20
	brk $88.b		; 00 88
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	tsb $00.b		; 04 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	sty $00.b		; 84 00
	inc A		; 1A
	asl $12.b		; 06 12
	jsr $0820.w		; 20 20 08
	brk $00.b		; 00 00
	cop $21.b		; 02 21
	brk $62.b		; 00 62
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc [$FF.b],Y		; F7 FF
	sbc $FD77FF.l,X		; FF FF 77 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
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
	sbc $97FFFF.l,X		; FF FF FF 97
	xce		; FB
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $7DFFF5.l,X		; FF F5 FF 7D
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	inc $FFFE.w,X		; FE FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	ldx $FFFF.w,Y		; BE FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBD7F7.l,X		; FF F7 D7 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEE5E.l,X		; FF 5E EE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	adc $FDFFFF.l,X		; 7F FF FF FD
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	xce		; FB
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEEFFF.l,X		; FF FF EF FE
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	cmp $6FD7FE.l,X		; DF FE D7 6F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FEEF.l,X		; FF EF FE F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFDF.l,X		; DF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $FFFFFF.l,X		; 5F FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$EF.b],Y		; F7 EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l		; EF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc [$3F.b],Y		; F7 3F
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
	sbc [$FF.b],Y		; F7 FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $BFFFF4.l,X		; FF F4 FF BF
	sbc $FF7FFD.l,X		; FF FD 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFF7F.l,X		; BF 7F FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFD.l,X		; DF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $FFFE.w,Y		; BE FE FF
	sbc ($FF.b,S),Y		; F3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEE.l,X		; FF EE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	adc $FFFFFE.l,X		; 7F FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF3.l,X		; FF F3 FF FF
	lda $FBFFFF.l,X		; BF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $80004E.l,X		; FF 4E 00 80
	bit $38.b		; 24 38
	php		; 08
	jsr $0200.w		; 20 00 02
	cpy #$08.b		; C0 08
	jsr $8E11.w		; 20 11 8E
	dey		; 88
	cop $00.b		; 02 00
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	tsb $A0.b		; 04 A0
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	rti		; 40

	bra   0.b		; 80 00
	brk $88.b		; 00 88
	cpy #$04.b		; C0 04
	brk $09.b		; 00 09
	brk $01.b		; 00 01
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
	bra   0.b		; 80 00
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -120.b		; 80 88
	jsl $A40840.l		; 22 40 08 A4
	ror $1C.b,X		; 76 1C
	lsr $C2.b,X		; 56 C2
	jsr $4800.w		; 20 00 48
	bvc   0.b		; 50 00
	dey		; 88
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	ora ($28.b)		; 12 28
	brk $00.b		; 00 00
	jsr $0200.w		; 20 00 02
	brk $6C.b		; 00 6C
	ldy #$14.b		; A0 14
	eor $00.b		; 45 00
	bpl  80.b		; 10 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $81.b		; 04 81
	plp		; 28
	tsb $8118.w		; 0C 18 81
	.db $42, $65		; 42 65
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	plp		; 28
	tsb $08.b		; 04 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	php		; 08
	brk $00.b		; 00 00
	ora ($31.b,X)		; 01 31
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $14.b		; 00 14
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
	cop $00.b		; 02 00
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
	dec $00.b,X		; D6 00
	cpy #$00.b		; C0 00
	ora $80.b,S		; 03 80
	bpl   3.b		; 10 03
	ldy #$00.b		; A0 00
	bit $0012.w		; 2C 12 00
	ora ($00.b)		; 12 00
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bmi   0.b		; 30 00
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
	php		; 08
	brk $00.b		; 00 00
	jsr $88B1.w		; 20 B1 88
	bra  20.b		; 80 14
	.db $82, $44, $20		; 82 44 20
	cpy #$11.b		; C0 11
	ora ($00.b)		; 12 00
	jsl $020080.l		; 22 80 00 02
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
	jsr $0000.w		; 20 00 00
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
	brk $00.b		; 00 00
	brk $7B.b		; 00 7B
	jsr $22C4.w		; 20 C4 22
	bra -62.b		; 80 C2
	brk $08.b		; 00 08
	ora $60.b,S		; 03 60
	bit $14.b		; 24 14
	bit $02.b		; 24 02
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $30.b		; 00 30
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
	bpl   0.b		; 10 00
	.db $82, $21, $02		; 82 21 02
	ora ($00.b,X)		; 01 00
	brk $50.b		; 00 50
	brk $28.b		; 00 28
	brk $20.b		; 00 20
	rti		; 40

	jsr $0044.w		; 20 44 00
	brk $04.b		; 00 04
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	ora ($0B.b),Y		; 11 0B
	.db $82, $80, $09		; 82 80 09
	sta ($2D.b,X)		; 81 2D
	bit #$00.b		; 89 00
	brk $24.b		; 00 24
	php		; 08
	pha		; 48
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	cop $00.b		; 02 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   4.b		; 10 04
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
	brk $C6.b		; 00 C6
	.db $82, $90, $00		; 82 90 00
	php		; 08
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	and $0481.w		; 2D 81 04
	cop $24.b		; 02 24
	ora ($9C.b),Y		; 11 9C
	ora ($04.b),Y		; 11 04
	adc ($2C.b),Y		; 71 2C
	brk $61.b		; 00 61
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $10.b		; 00 10
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
	jsl $004405.l		; 22 05 44 00
	sty $10.b		; 84 10
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	rti		; 40

	brk $02.b		; 00 02
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
	brk $40.b		; 00 40
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
	brk $20.b		; 00 20
	bcc -111.b		; 90 91
	php		; 08
	asl $0B.b,X		; 16 0B
	bvs  32.b		; 70 20
	bpl   6.b		; 10 06
	brk $08.b		; 00 08
	tsb $40.b		; 04 40
	brk $10.b		; 00 10
	ora ($00.b),Y		; 11 00
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
	brk $08.b		; 00 08
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
	brk $16.b		; 00 16
	php		; 08
	bpl   0.b		; 10 00
	rti		; 40

	bmi  64.b		; 30 40
	brk $60.b		; 00 60
	bra  72.b		; 80 48
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F5FF.w,X		; FD FF F5
	inc $FF7F.w,X		; FE 7F FF
	sbc $FFFD.w,X		; FD FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc [$BF.b],Y		; F7 BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F77FFF.l,X		; FF FF 7F F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
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
	inc $BEFF.w,X		; FE FF BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FB.l,X		; FF FB F7 FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	inc $DFFF.w,X		; FE FF DF
	sbc $FFDFBF.l,X		; FF BF DF FF
	sbc $FDFFBF.l,X		; FF BF FF FD
	sbc $FFDDFF.l,X		; FF FF DD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l		; EF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $EDDFFF.l,X		; FF FF DF ED
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	xce		; FB
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $7FFE7D.l,X		; FF 7D FE 7F
	sbc $DBF7FF.l,X		; FF FF F7 DB
	sbc $FFFF7F.l,X		; FF 7F FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FBBFFF.l,X		; FF FF BF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	adc $CFDEFF.l,X		; 7F FF DE CF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFE.l,X		; FF FE FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $DFFD7F.l,X		; FF 7F FD DF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF3FF.l,X		; FF FF F3 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	stp		; DB
	lda [$FE.b],Y		; B7 FE
	sbc $FEFFFE.l,X		; FF FE FF FE
	inc $BFFF.w,X		; FE FF BF
	sbc $FFFFBF.l,X		; FF BF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FDFFF.l,X		; FF FF DF 7F
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
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
	sbc $FF7EFF.l,X		; FF FF 7E FF
	inc $FBFF.w,X		; FE FF FB
	sbc [$FF.b],Y		; F7 FF
	lda $BFFFDF.l,X		; BF DF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FEFDBE.l,X		; 7F BE FD FE
	sbc [$DF.b],Y		; F7 DF
	sbc $F7FBFF.l,X		; FF FF FB F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FF77FF.l,X		; BF FF 77 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF7F.l,X		; FF 7F FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FEFBBF.l,X		; FF BF FB FE
	lda $FFFFFB.l,X		; BF FB FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $BFF6FF.l,X		; FF FF F6 BF
	adc $FFFEFF.l,X		; 7F FF FE FF
	sbc $FFFFFB.l,X		; FF FB FF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	inc $FFBF.w,X		; FE BF FF
	sbc [$EB.b],Y		; F7 EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
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
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFF7FD.l,X		; FF FD F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	adc $FFFF.w,X		; 7D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	adc $FFCF7F.l,X		; 7F 7F CF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $7FFFFB.l,X		; FF FB FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	cmp $FFFDFF.l,X		; DF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	tsb $48.b		; 04 48
	sta [$01.b]		; 87 01
	bcs  28.b		; B0 1C
	clc		; 18
	tax		; AA
	ldy $40.b,X		; B4 40
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($10.b)		; 52 10
	brk $00.b		; 00 00
	rti		; 40

	bpl  48.b		; 10 30
	jsr $0144.w		; 20 44 01
	sty $90.b		; 84 90
	brk $00.b		; 00 00
	ora ($40.b),Y		; 11 40
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
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
	cmp ($88.b),Y		; D1 88
	stz $69.b		; 64 69
	bra  40.b		; 80 28
	rol $C02D.w		; 2E 2D C0
	cmp ($00.b,X)		; C1 00
	bpl   5.b		; 10 05
	mvp $60,$02		; 44 02 60
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	bra  72.b		; 80 48
	sty $20.b,X		; 94 20
	mvp $00,$10		; 44 10 00
	bpl  22.b		; 10 16
	brk $25.b		; 00 25
	.db $82, $20, $40		; 82 20 40
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $C4		; 42 C4
	stx $AB.b		; 86 AB
	mvn $02,$BF		; 54 BF 02
	brk $76.b		; 00 76
	ora ($00.b,X)		; 01 00
	mvp $80,$00		; 44 00 80
	bra  64.b		; 80 40
	asl $4000.w		; 0E 00 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $81.b		; 04 81
	bra  12.b		; 80 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	jsr $0400.w		; 20 00 04
	brk $80.b		; 00 80
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
	brk $61.b		; 00 61
	bra  22.b		; 80 16
	brk $06.b		; 00 06
	plp		; 28
	brk $44.b		; 00 44
	bra -116.b		; 80 8C
	jsr $0002.w		; 20 02 00
	brk $40.b		; 00 40
	dey		; 88
	brk $20.b		; 00 20
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	plp		; 28
	bra  41.b		; 80 29
	jsr $C80C.w		; 20 0C C8
	adc ($10.b),Y		; 71 10
	pha		; 48
	brk $40.b		; 00 40
	brk $84.b		; 00 84
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bcc   0.b		; 90 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $A1.b		; 84 A1
	tsb $04.b		; 04 04
	php		; 08
	rti		; 40

	bcc   8.b		; 90 08
	jsr $0BA0.w		; 20 A0 0B
	rti		; 40

	ora $00.b		; 05 00
	jsr $0060.w		; 20 60 00
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
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	.db $62, $0C, $88		; 62 0C 88
	eor $0E82.w		; 4D 82 0E
	cli		; 58
	and ($2A.b,S),Y		; 33 2A
	jsr $4B00.w		; 20 00 4B
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	bra   1.b		; 80 01
	cpy #$09.b		; C0 09
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	sty $22.b		; 84 22
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	ora $08.b		; 05 08
	bmi  29.b		; 30 1D
	tya		; 98
	ora #$44.b		; 09 44
	rts		; 60

	jsr $8000.w		; 20 00 80
	brk $28.b		; 00 28
	php		; 08
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	brk $10.b		; 00 10
	tsb $40.b		; 04 40
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	tsb $00.b		; 04 00
	brk $60.b		; 00 60
	dey		; 88
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	ldy #$00.b		; A0 00
	rti		; 40

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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $98.b		; 00 98
	ldy #$34.b		; A0 34
	php		; 08
	eor ($02.b),Y		; 51 02
	trb $0009.w		; 1C 09 00
	jsr $0000.w		; 20 00 00
	and ($02.b,X)		; 21 02
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $10.b		; 04 10
	bvc  24.b		; 50 18
	bra   0.b		; 80 00
	brk $92.b		; 00 92
	pha		; 48
	rti		; 40

	cop $20.b		; 02 20
	ldx $00.b		; A6 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $16.b		; 00 16
	bpl   0.b		; 10 00
	and ($48.b,S),Y		; 33 48
	.db $82, $88, $00		; 82 88 00
	asl $80.b		; 06 80
	bcc  80.b		; 90 50
	tsb $40.b		; 04 40
	bra  68.b		; 80 44
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	trb $0C.b		; 14 0C
	trb $0A.b		; 14 0A
	asl A		; 0A
	bpl   0.b		; 10 00
	bpl   4.b		; 10 04
	rti		; 40

	cpx #$10.b		; E0 10
	bra   0.b		; 80 00
	.db $42, $00		; 42 00
	brk $10.b		; 00 10
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FF7DFF.l,X		; FF FF 7D FF
	cmp $DFFFF7.l,X		; DF F7 FF DF
	sbc $FFFFFE.l,X		; FF FE FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc [$F7.b],Y		; F7 F7
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDB.l,X		; FF DB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBDEF.l,X		; FF EF BD FF
	sbc $DFFFFF.l,X		; FF FF FF DF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C6FFFF.l,X		; FF FF FF C6
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	xce		; FB
	inc $FF.b,X		; F6 FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
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
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $DFFF7B.l,X		; FF 7B FF DF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F77FFF.l,X		; FF FF 7F F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFAFF.l,X		; FF FF FA FB
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDF3FF.l,X		; FF FF F3 FD
	sbc $7FFDBD.l,X		; FF BD FD 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFEF.l,X		; FF EF FF FB
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $7F7FFF.l,X		; FF FF 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CFFFFF.l,X		; FF FF FF CF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFEF7F.l,X		; FF 7F EF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $BEFFFF.l,X		; FF FF FF BE
	sbc $FEFFEF.l,X		; FF EF FF FE
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDEFF.l,X		; FF FF DE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $44FFFF.l,X		; FF FF FF 44
	ora ($38.b)		; 12 38
	brk $16.b		; 00 16
	brk $60.b		; 00 60
	bpl   6.b		; 10 06
	ora #$14.b		; 09 14
	tsb $C0.b		; 04 C0
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($00.b,X)		; 41 00
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
	brk $00.b		; 00 00
	bcs  26.b		; B0 1A
	jsr $8250.w		; 20 50 82
	iny		; C8
	php		; 08
	brk $00.b		; 00 00
	ora ($30.b,X)		; 01 30
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bra  33.b		; 80 21
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	eor ($06.b,X)		; 41 06
	bcc  21.b		; 90 15
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	brk $01.b		; 00 01
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
	brk $20.b		; 00 20
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
	brk $25.b		; 00 25
	bra  10.b		; 80 0A
	ora ($00.b,X)		; 01 00
	txa		; 8A
	ora ($00.b)		; 12 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $4C.b		; 00 4C
	tya		; 98
	and [$61.b],Y		; 37 61
	ora #$40.b		; 09 40
	tsb $4003.w		; 0C 03 40
	bra  44.b		; 80 2C
	php		; 08
	.db $42, $10		; 42 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $81.b		; 02 81
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $00.b		; C4 00
	cop $00.b		; 02 00
	brk $14.b		; 00 14
	bit $20.b		; 24 20
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	bra   0.b		; 80 00
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
	brk $04.b		; 00 04
	and ($00.b)		; 32 00
	jsr $1140.w		; 20 40 11
	brk $01.b		; 00 01
	asl $0122.w		; 0E 22 01
	phy		; 5A
	jsl $000008.l		; 22 08 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $20DC.w		; 20 DC 20
	rti		; 40

	brk $C0.b		; 00 C0
	bcc   0.b		; 90 00
	bra  26.b		; 80 1A
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0420.w		; 20 20 04
	clc		; 18
	ora $AC.b,S		; 03 AC
	brk $00.b		; 00 00
	ldy $24.b,X		; B4 24
	.db $42, $43		; 42 43
	cop $10.b		; 02 10
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $22.b		; 00 22
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
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
	brk $00.b		; 00 00
	bit $10.b		; 24 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bpl  20.b		; 10 14
	php		; 08
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
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
	brk $80.b		; 00 80
	brk $02.b		; 00 02
	ora #$62.b		; 09 62
	bcc -24.b		; 90 E8
	brk $49.b		; 00 49
	bra -118.b		; 80 8A
	bra  76.b		; 80 4C
	lsr A		; 4A
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
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
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	trb $0040.w		; 1C 40 00
	brk $10.b		; 00 10
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
	brk $86.b		; 00 86
	asl A		; 0A
	tsb $4040.w		; 0C 40 40
	brk $44.b		; 00 44
	phd		; 0B
	bit $02.b		; 24 02
	tsb $2C.b		; 04 2C
	brk $02.b		; 00 02
	brk $0C.b		; 00 0C
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $04,$04		; 44 04 04
	bpl  20.b		; 10 14
	php		; 08
	eor ($80.b,X)		; 41 80
	cop $18.b		; 02 18
	rol $21.b		; 26 21
	brk $12.b		; 00 12
	rti		; 40

	bpl   0.b		; 10 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $68.b		; 00 68
	txa		; 8A
	sta ($11.b)		; 92 11
	stz $04.b,X		; 74 04
	asl A		; 0A
	trb $8422.w		; 1C 22 84
	cld		; D8
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bvc   0.b		; 50 00
	jsr $2022.w		; 20 22 20
	cop $60.b		; 02 60
	brk $80.b		; 00 80
	rti		; 40

	asl $80.b		; 06 80
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFBF7.l,X		; FF F7 FB FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DF78BF.l		; EF BF 78 DF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w		; EE FF FF
	inc $FBEF.w,X		; FE EF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $DFFF.w,X		; FE FF DF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $EFBFFF.l,X		; FF FF BF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFE.l,X		; FF FE FB FF
	xce		; FB
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FED7FF.l,X		; FF FF D7 FE
	sbc $FFDFFF.l,X		; FF FF DF FF
	inc $BEDF.w,X		; FE DF BE
	sbc [$FF.b]		; E7 FF
	sbc $7BFF.w		; ED FF 7B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $7F7F.w,X		; FE 7F 7F
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $DFBFFF.l,X		; 7F FF BF DF
	sbc $FDFFF3.l,X		; FF F3 FF FD
	sbc $E5FFFF.l,X		; FF FF FF E5
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFA.l,X		; FF FA FF FF
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
	sbc $EFDFBF.l,X		; FF BF DF EF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	adc $FFFFF7.l,X		; 7F F7 FF FF
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
	sbc $B77FFF.l,X		; FF FF 7F B7
	inc $FBFF.w,X		; FE FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBCFFF.l,X		; FF FF CF FB
	sbc $FBEBFF.l,X		; FF FF EB FB
	xce		; FB
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $9F9FEF.l,X		; FF EF 9F 9F
	sbc $EBBFFF.l,X		; FF FF BF EB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFDB.l,X		; FF DB FF FD
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFF7.l,X		; FF F7 EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $DEFFFB.l,X		; FF FB FF DE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $ABFFFE.l,X		; 7F FE FF AB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $DDF6BF.l,X		; FF BF F6 DD
	xce		; FB
	lda $FFBFBF.l,X		; BF BF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFF7.l,X		; FF F7 FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sta $FFFFFF.l,X		; 9F FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $BFFFFF.l,X		; DF FF FF BF
	sbc $FDFF7F.l,X		; FF 7F FF FD
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
	sbc $7F7FBF.l,X		; FF BF 7F 7F
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEEFF.l,X		; FF FF EE FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	lda $FF79FF.l,X		; BF FF 79 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FEFDFF.l,X		; FF FF FD FE
	sbc $DBFFFF.l,X		; FF FF FF DB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEDFFF.l,X		; FF FF DF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFF7F.l,X		; FF 7F FF BF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CBFF9D.l,X		; FF 9D FF CB
	sbc $FFFE9F.l,X		; FF 9F FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BDFFFF.l,X		; FF FF FF BD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBBFFE.l,X		; FF FE BF FB
	sbc $FF77FF.l,X		; FF FF 77 FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFF.w		; ED FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7BFFF.l,X		; FF FF BF F7
	inc $FFFF.w,X		; FE FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	lda $DFFFFF.l,X		; BF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $BFFFFF.l,X		; 7F FF FF BF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FE.b,X		; F5 FE
	sbc $FFFEFF.l		; EF FF FE FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFBFFF.l,X		; BF FF BF FF
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
	sbc $DFFFFF.l		; EF FF FF DF
	adc [$FF.b],Y		; 77 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $08FFFF.l,X		; FF FF FF 08
	lsr A		; 4A
	clc		; 18
	eor $50.b,S		; 43 50
	sty $0D.b		; 84 0D
	bmi -117.b		; 30 8B
	rol A		; 2A
	jsr $0008.w		; 20 08 00
	dey		; 88
	mvp $00,$00		; 44 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	bra  34.b		; 80 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	sty $00.b		; 84 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $1008.w		; 20 08 10
	cop $20.b		; 02 20
	brk $00.b		; 00 00
	bra   4.b		; 80 04
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
	adc $00.b		; 65 00
	jsl $748400.l		; 22 00 84 74
	brk $40.b		; 00 40
	bra   2.b		; 80 02
	bvc   1.b		; 50 01
	eor ($00.b)		; 52 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	rti		; 40

	brk $01.b		; 00 01
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	sty $14.b,X		; 94 14
	eor $1C.b		; 45 1C
	.db $42, $0C		; 42 0C
	bit #$7E.b		; 89 7E
	cpy $B238.w		; CC 38 B2
	jsl L400089.l		; 22 89 00 40
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	php		; 08
	brk $80.b		; 00 80
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
	bmi   2.b		; 30 02
	rts		; 60

	jsr $0148.w		; 20 48 01
	.db $82, $A0, $08		; 82 A0 08
	rti		; 40

	jsr $10C8.w		; 20 C8 10
	rts		; 60

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D2.b		; 00 D2
	ora ($1D.b),Y		; 11 1D
	dec $6C.b		; C6 6C
	mvp $81,$64		; 44 64 81
	brk $45.b		; 00 45
	rts		; 60

	tsb $40.b		; 04 40
	ora ($44.b,X)		; 01 44
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	bpl   0.b		; 10 00
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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $1B.b		; 00 1B
	bpl   0.b		; 10 00
	bpl  32.b		; 10 20
	jsr $0140.w		; 20 40 01
	plp		; 28
	cpy #$00.b		; C0 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
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
	eor ($23.b),Y		; 51 23
	asl $66.b,X		; 16 66
	dec $A5.b		; C6 A5
	brk $A4.b		; 00 A4
	pha		; 48
	bpl   8.b		; 10 08
	cpy #$58.b		; C0 58
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $40.b		; 00 40
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	brk $41.b		; 00 41
	ora ($48.b),Y		; 11 48
	brk $04.b		; 00 04
	tay		; A8
	ldy #$B0.b		; A0 B0
	eor ($00.b,X)		; 41 00
	jsr $2800.w		; 20 00 28
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	eor #$5C.b		; 49 5C
	bcs   0.b		; B0 00
	bvc  34.b		; 50 22
	clc		; 18
	sta ($2C.b,X)		; 81 2C
	mvp $42,$08		; 44 08 42
	php		; 08
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $05.b		; 00 05
	bpl   8.b		; 10 08
	ora ($C0.b,X)		; 01 C0
	bra  36.b		; 80 24
	trb $10.b		; 14 10
	bit $20.b		; 24 20
	bmi   0.b		; 30 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	php		; 08
	brk $20.b		; 00 20
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
	bcc  83.b		; 90 53
	rti		; 40

	jsr $9248.w		; 20 48 92
	php		; 08
	and ($02.b)		; 32 02
	sty $36.b,X		; 94 36
	plp		; 28
	php		; 08
	sty $01.b,X		; 94 01
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $20.b		; 00 20
	bcc   1.b		; 90 01
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
	bra   2.b		; 80 02
	rti		; 40

	bit $8034.w		; 2C 34 80
	mvp $62,$00		; 44 00 62
	cop $A0.b		; 02 A0
	tsb $01.b		; 04 01
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $68.b		; 00 68
	rti		; 40

	clc		; 18
	dey		; 88
	and ($04.b)		; 32 04
	ldy $87.b		; A4 87
	bvc   1.b		; 50 01
	brk $20.b		; 00 20
	ora ($62.b),Y		; 11 62
	asl A		; 0A
	brk $30.b		; 00 30
	jsl $410000.l		; 22 00 00 41
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	cop $09.b		; 02 09
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $21.b		; 00 21
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($06.b)		; 12 06
	cop $40.b		; 02 40
	sty $4000.w		; 8C 00 40
	bra   6.b		; 80 06
	tsb $10.b		; 04 10
	jsl $440643.l		; 22 43 06 44
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	brk $8C.b		; 00 8C
	bra  20.b		; 80 14
	bra  82.b		; 80 52
	brk $80.b		; 00 80
	cli		; 58
	ora #$06.b		; 09 06
	.db $82, $29, $00		; 82 29 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	sty $80.b		; 84 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bpl   0.b		; 10 00
	brk $42.b		; 00 42
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1425.w		; 2C 25 14
	ror $90.b,X		; 76 90
	cop $00.b		; 02 00
	brk $20.b		; 00 20
	tsb $24.b		; 04 24
	bcc  12.b		; 90 0C
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	sbc $FFFFDD.l,X		; FF DD FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFBF.l,X		; FF BF EF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $DDFFFF.l,X		; FF FF FF DD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $F7FBFF.l,X		; FF FF FB F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc [$DF.b],Y		; F7 DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FEFFFF.l,X		; 7F FF FF FE
	sbc $FFFFDF.l,X		; FF DF FF FF
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
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFF7F.l,X		; 7F 7F FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$F7.b],Y		; F7 F7
	sbc $DFFFFF.l		; EF FF FF DF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FEFFFD.l,X		; FF FD FF FE
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEDFFF.l,X		; FF FF DF FE
	sbc $FFFF6F.l,X		; FF 6F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	inc $FFFF.w,X		; FE FF FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFEF.l,X		; FF EF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FDEFFF.l,X		; FF FF EF FD
	sbc $FFDF7F.l,X		; FF 7F DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	xce		; FB
	sbc $BFFFBF.l,X		; FF BF FF BF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF77F.l,X		; FF 7F F7 FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	sbc $FEDBFF.l,X		; FF FF DB FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFB.l,X		; FF FB DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFF7D.l,X		; FF 7D FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc [$FB.b],Y		; F7 FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FF7FFF.l,X		; DF FF 7F FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $BFFFFF.l,X		; FF FF FF BF
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
	sbc $EFFDFF.l,X		; FF FF FD EF
	cmp $FFDF7F.l,X		; DF 7F DF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5BFFFF.l,X		; FF FF FF 5B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	inc $FF.b,X		; F6 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FEFFFF.l,X		; DF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	pha		; 48
	php		; 08
	stx $12.b,Y		; 96 12
	dey		; 88
	rti		; 40

	bpl   2.b		; 10 02
	sec		; 38
	jsr $00A0.w		; 20 A0 00
	ora ($41.b)		; 12 41
	php		; 08
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $04.b		; 00 04
	rti		; 40

	brk $00.b		; 00 00
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	php		; 08
	bcc -128.b		; 90 80
	ldy #$40.b		; A0 40
	brk $A0.b		; 00 A0
	brk $01.b		; 00 01
	bcc  68.b		; 90 44
	tsb $44.b		; 04 44
	ora $10.b,S		; 03 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	cpx $1040.w		; EC 40 10
	bpl  33.b		; 10 21
	mvn $06,$82		; 54 82 06
	bpl  24.b		; 10 18
	brk $DA.b		; 00 DA
	jsr $6000.w		; 20 00 60
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bpl   0.b		; 10 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	rti		; 40

	ora #$00.b		; 09 00
	cop $80.b		; 02 80
	bit $00.b		; 24 00
	jsr $0804.w		; 20 04 08
	jmp $000000.l		; 5C 00 00 00
	ora ($00.b,X)		; 01 00
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
	brk $C4.b		; 00 C4
	cpy $84.b		; C4 84
	brk $AA.b		; 00 AA
	ora ($08.b)		; 12 08
	.db $42, $00		; 42 00
	clc		; 18
	lsr A		; 4A
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	php		; 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra   6.b		; 80 06
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
	brk $00.b		; 00 00
	trb $90.b		; 14 90
	ldy #$69.b		; A0 69
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	tsb $40.b		; 04 40
	brk $08.b		; 00 08
	iny		; C8
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
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bit $1000.w		; 2C 00 10
	jsr $C004.w		; 20 04 C0
	bcc  36.b		; 90 24
	sta ($44.b,X)		; 81 44
	plp		; 28
	brk $51.b		; 00 51
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $80,$10		; 44 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	asl $0040.w,X		; 1E 40 00
	and ($01.b)		; 32 01
	brk $00.b		; 00 00
	php		; 08
	jsr $8010.w		; 20 10 80
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	jsr $0843.w		; 20 43 08
	bvc -18.b		; 50 EE
	plp		; 28
	dec $08.b		; C6 08
	bit $50.b,X		; 34 50
	brk $02.b		; 00 02
	bpl -111.b		; 10 91
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	rti		; 40

	bpl   1.b		; 10 01
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
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$20.b		; C0 20
	bit $00.b		; 24 00
	brk $80.b		; 00 80
	sty $68.b,X		; 94 68
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	tsb $64.b		; 04 64
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $18.b		; 04 18
	lsr A		; 4A
	plp		; 28
	dec A		; 3A
	lsr $10.b,X		; 56 10
	eor $1800.w		; 4D 00 18
	clc		; 18
	brk $08.b		; 00 08
	php		; 08
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $84.b		; 84 84
	brk $88.b		; 00 88
	rti		; 40

	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	asl A		; 0A
	brk $01.b		; 00 01
	tsb $0040.w		; 0C 40 00
	cop $00.b		; 02 00
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
	brk $01.b		; 00 01
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
	brk $A2.b		; 00 A2
	cpy #$02.b		; C0 02
	plp		; 28
	php		; 08
	sty $30.b		; 84 30
	asl A		; 0A
	jsr $0602.w		; 20 02 06
	tsb $00.b		; 04 00
	.db $82, $25, $00		; 82 25 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1002.w		; 20 02 10
	eor ($42.b,X)		; 41 42
	mvp $A4,$C0		; 44 C0 A4
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	php		; 08
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	sbc ($10.b,X)		; E1 10
	inc $A0.b		; E6 A0
	brk $80.b		; 00 80
	cop $05.b		; 02 05
	jsl $C01404.l		; 22 04 14 C0
	tsb $10.b		; 04 10
	bra   0.b		; 80 00
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
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
	brk $2A.b		; 00 2A
	ora $60.b,X		; 15 60
	mvp $08,$08		; 44 08 08
	brk $00.b		; 00 00
	php		; 08
	tsb $0400.w		; 0C 00 04
	ora $20.b		; 05 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $7EEFFF.l,X		; FF FF EF 7E
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FAFFFF.l,X		; FF FF FF FA
	sbc $FCBFFF.l,X		; FF FF BF FC
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $9EFFFF.l,X		; FF FF FF 9E
	adc $B7FEFF.l,X		; 7F FF FE B7
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FE.b],Y		; F7 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	adc $FDFFFF.l,X		; 7F FF FF FD
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFDFF.l,X		; FF FF FD FF
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
	sbc $EFDFFB.l,X		; FF FB DF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	xce		; FB
	xce		; FB
	xce		; FB
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFBF.l,X		; FF BF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $EFFFFD.l,X		; FF FD FF EF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	cmp $EFFFFF.l,X		; DF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5FFFFF.l,X		; FF FF FF 5F
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFDF7.l,X		; FF F7 FD FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FBFFF7.l,X		; FF F7 FF FB
	adc $7FFFFF.l,X		; 7F FF FF 7F
	inc $FFFF.w,X		; FE FF FF
	xce		; FB
	sbc $7F7EFF.l,X		; FF FF 7E 7F
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFDBF.l,X		; FF BF FD FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFEDFF.l,X		; FF FF ED FF
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
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEF7FF.l,X		; FF FF F7 FE
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFEF.l,X		; FF EF FF FE
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFF5F.l,X		; FF 5F FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDEFFF.l,X		; FF FF EF FD
	sbc $7FFFFF.l,X		; FF FF FF 7F
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $377F.w		; AE 7F 37
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFAFFF.l,X		; FF FF AF FF
	tyx		; BB
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFB.w,X		; FD FB FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7DBFFF.l,X		; FF FF BF 7D
	lda $FFFF7F.l		; AF 7F FF FF
	adc $F7FFFF.l,X		; 7F FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EF79FF.l,X		; FF FF 79 EF
	lda $F7FFE7.l,X		; BF E7 FF F7
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $BFFFFE.l,X		; FF FE FF BF
	sbc $EF5EF7.l,X		; FF F7 5E EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
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
	sbc $FF7FFF.l,X		; FF FF 7F FF
	xce		; FB
	sbc $FFFFDE.l,X		; FF DE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FBFF.w,X		; FE FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFDF69.l,X		; FF 69 DF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FDFBFF.l,X		; 7F FF FB FD
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BDFFDF.l,X		; FF DF FF BD
	inc $FFFF.w,X		; FE FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFF5.l,X		; FF F5 FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF6F7F.l,X		; FF 7F 6F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	xce		; FB
	sbc $FFFF5F.l		; EF 5F FF FF
	xce		; FB
	sbc $FFEDFF.l,X		; FF FF ED FF
	sbc $FFFEF7.l,X		; FF F7 FE FF
	sbc $57BFFD.l,X		; FF FD BF 57
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,Y		; F9 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFF7.l,X		; FF F7 FF 7F
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
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDB.w,X		; FD DB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFBE.l,X		; FF BE DF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $6FFFFF.l,X		; FF FF FF 6F
	sbc $EB7BFB.l,X		; FF FB 7B EB
	sbc $EFFFFD.l,X		; FF FD FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $EFFFFF.l,X		; DF FF FF EF
	sbc $FFFFBF.l,X		; FF BF FF FF
	cmp $7FFFFB.l,X		; DF FB FF 7F
	sbc $FBFBFF.l,X		; FF FF FB FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	adc $FEBFFF.l,X		; 7F FF BF FE
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $71FFFF.l,X		; FF FF FF 71
	rts		; 60

	phy		; 5A
	and [$6C.b]		; 27 6C
	cmp $3AF2.w		; CD F2 3A
	rti		; 40

	and ($B4.b,X)		; 21 B4
	clc		; 18
	eor ($A0.b)		; 52 A0
	cop $40.b		; 02 40
	rti		; 40

	and ($00.b,X)		; 21 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$03.b		; A0 03
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	asl A		; 0A
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
	iny		; C8
	ldy $D4.b		; A4 D4
	bpl   0.b		; 10 00
	brk $A2.b		; 00 A2
	bra -59.b		; 80 C5
	.db $82, $42, $10		; 82 42 10
	tsb BG2SC.w		; 0C 08 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	rts		; 60

	eor $A5.b,S		; 43 A5
	rts		; 60

	jsl $00B104.l		; 22 04 B1 00
	phb		; 8B
	pha		; 48
	bra -112.b		; 80 90
	txa		; 8A
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	ora ($48.b,X)		; 01 48
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	bpl   0.b		; 10 00
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
	brk $02.b		; 00 02
	bpl 116.b		; 10 74
	jsr $1000.w		; 20 00 10
	plb		; AB
	tsb $98.b		; 04 98
	brk $01.b		; 00 01
	sty $00.b		; 84 00
	pha		; 48
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	rti		; 40

	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $10.b		; 00 10
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	trb $95F2.w		; 1C F2 95
	bvc 100.b		; 50 64
	brk $32.b		; 00 32
	cmp ($04.b,X)		; C1 04
	pha		; 48
	sta ($41.b),Y		; 91 41
	mvp $60,$10		; 44 10 60
	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $10.b		; 00 10
	ora ($00.b,X)		; 01 00
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
	ora $18.b,S		; 03 18
	bra   0.b		; 80 00
	ldx $2010.w,Y		; BE 10 20
	rti		; 40

	brk $02.b		; 00 02
	tsb $82.b		; 04 82
	eor ($2A.b,X)		; 41 2A
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
	brk $02.b		; 00 02
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
	pla		; 68
	ora $2341.w		; 0D 41 23
	cpy #$22.b		; C0 22
	php		; 08
	adc #$22.b		; 69 22
	and $5026.w,Y		; 39 26 50
	bit $002B.w		; 2C 2B 00
	brk $82.b		; 00 82
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	jsr $8200.w		; 20 00 82
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
	brk $8C.b		; 00 8C
	brk $02.b		; 00 02
	bpl  24.b		; 10 18
	adc $00.b		; 65 00
	jsr $2800.w		; 20 00 28
	ldy #$05.b		; A0 05
	asl $80.b		; 06 80
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
	brk $02.b		; 00 02
	tsb $40.b		; 04 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
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
	asl A		; 0A
.ACCU 8
	sep #$26		; E2 26
	jsl $E48244.l		; 22 44 82 E4
	ldx $1A14.w		; AE 14 1A
	rol $00.b,X		; 36 00
	cop $48.b		; 02 48
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $0C.b		; 00 0C
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	jsr $0008.w		; 20 08 00
	ldy #$00.b		; A0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	brk $20.b		; 00 20
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
	brk $30.b		; 00 30
	php		; 08
	php		; 08
	clc		; 18
	clc		; 18
	ldx #$00.b		; A2 00
	rti		; 40

	cpy #$02.b		; C0 02
	ora ($02.b,S),Y		; 13 02
	bra   0.b		; 80 00
	ora $10.b,S		; 03 10
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta ($22.b,S),Y		; 93 22
	ldx $F9.b		; A6 F9
	asl A		; 0A
	pla		; 68
	rti		; 40

	ora $E6.b,S		; 03 E6
	brk $20.b		; 00 20
	brk $25.b		; 00 25
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	jsr $0005.w		; 20 05 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
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
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	lsr A		; 4A
	ora $00.b		; 05 00
	rti		; 40

	sep #$00		; E2 00
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	tsb $0808.w		; 0C 08 08
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	lsr A		; 4A
	and ($44.b,X)		; 21 44
	rol $1C.b		; 26 1C
	jsr $1007.w		; 20 07 10
	jsr $25C8.w		; 20 C8 25
	pha		; 48
	tsb $42.b		; 04 42
	jsr $0080.w		; 20 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $44.b		; 04 44
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	mvp $00,$02		; 44 02 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	ora ($81.b)		; 12 81
	bpl -112.b		; 10 90
	brk $08.b		; 00 08
	and ($02.b,X)		; 21 02
	rts		; 60

	php		; 08
	dey		; 88
	tsb $10.b		; 04 10
	rti		; 40

	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta ($00.b,X)		; 81 00
	and ($A3.b)		; 32 A3
	brk $47.b		; 00 47
	txy		; 9B
	bit $08.b		; 24 08
	ora [$02.b],Y		; 17 02
	.db $42, $04		; 42 04
	php		; 08
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
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
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0C.b		; 14 0C
	bpl -128.b		; 10 80
	ora ($8C.b,X)		; 01 8C
	and $12.b		; 25 12
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	tsb $00.b		; 04 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	adc $BFFDFF.l,X		; 7F FF FD BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BFFFF.l,X		; FF FF FF 7B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EEFFFF.l,X		; FF FF FF EE
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFBFF.l,X		; BF FF FB FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFDF.l,X		; DF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFDF.l,X		; FF DF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FF7F.w,X		; FE 7F FF
	sbc $FFFFE7.l,X		; FF E7 FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	inc $FFFF.w,X		; FE FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $BFFFFF.l,X		; FF FF FF BF
	xce		; FB
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFD5F.l,X		; FF 5F FD FF
	jmp ($FFFF.w,X)		; 7C FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BF7FFF.l,X		; FF FF 7F BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FF7FF.l,X		; FF FF F7 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7BFF.l,X		; FF FF 7B FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $BFFF7F.l,X		; FF 7F FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	lda $FFFF.w,X		; BD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFD.w,X		; FE FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFDFF.l,X		; FF FF FD DF
	sbc $FF7EFF.l,X		; FF FF 7E FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FCFF7F.l,X		; FF 7F FF FC
	sbc $FFFDFF.l,X		; FF FF FD FF
	adc $FFFF.w,X		; 7D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFAFF.l,X		; FF FF FA FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7BBE.l,X		; FF BE 7B FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $F7FFFF.l,X		; FF FF FF F7
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	tyx		; BB
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FEFF7F.l,X		; DF 7F FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFD7F.l,X		; FF 7F FD FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF77.l,X		; FF 77 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7.w,X		; FD F7 FF
	lda [$FF.b],Y		; B7 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l		; EF FF F7 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $50FFFF.l,X		; FF FF FF 50
	brk $C8.b		; 00 C8
	sty $00.b,X		; 94 00
	bmi   1.b		; 30 01
	clc		; 18
	rti		; 40

	bra  20.b		; 80 14
	php		; 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	jsr $8000.w		; 20 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  17.b		; 50 11
	bra   0.b		; 80 00
	rti		; 40

	brk $20.b		; 00 20
	rti		; 40

	asl $0C.b		; 06 0C
	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	php		; 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
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
	ora ($16.b,X)		; 01 16
	ldx #$DB.b		; A2 DB
	rti		; 40

	inc A		; 1A
	and [$88.b]		; 27 88
	cmp ($0B.b,X)		; C1 0B
	bpl  80.b		; 10 50
	lsr $00.b,X		; 56 00
	brk $00.b		; 00 00
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
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0001.w		; 20 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$04.b		; C0 04
	ora $80.b,S		; 03 80
	bvc   2.b		; 50 02
	tsb $00.b		; 04 00
	ora ($10.b,X)		; 01 10
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
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $81.b		; 00 81
	jsl $182C40.l		; 22 40 2C 18
.ACCU 16
	rep #$24		; C2 24
	sty $D1.b		; 84 D1
	bra   0.b		; 80 00
	adc $00.b,S		; 63 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $08.b		; 00 08
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
	ora ($00.b,X)		; 01 00
	brk $10.b		; 00 10
	asl $00.b		; 06 00
	brk $20.b		; 00 20
	rts		; 60

	brk $08.b		; 00 08
	trb $08.b		; 14 08
	jsr $400C.w		; 20 0C 40
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $02.b		; 00 02
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
	and $46.b,S		; 23 46
	wai		; CB
	bcc -120.b		; 90 88
	ora ($49.b,S),Y		; 13 49
	bit $18.b		; 24 18
	.db $82, $04, $98		; 82 04 98
	tsb $80.b		; 04 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$10.b		; A0 10
	bra   0.b		; 80 00
	brk $02.b		; 00 02
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $04.b		; 04 04
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
	and ($00.b,X)		; 21 00
	tsb $21.b		; 04 21
	ora ($44.b),Y		; 11 44
	jsr $2D00.w		; 20 00 2D
	jsr $0000.w		; 20 00 00
	eor ($20.b,X)		; 41 20
	tsb $0102.w		; 0C 02 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $D0.b		; 04 D0
	pha		; 48
	.db $82, $00, $7C		; 82 00 7C
	cop $02.b		; 02 02
	lsr $1006.w		; 4E 06 10
	php		; 08
	php		; 08
	ora #$0002.w		; 09 02 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	tsb $00.b		; 04 00
	bpl -124.b		; 10 84
	tsb $A0.b		; 04 A0
	sec		; 38
	cpy #$20.b		; C0 20
	jsr $00D0.w		; 20 D0 00
	tsb $00.b		; 04 00
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $08.b		; 00 08
	trb $05.b		; 14 05
	lsr $C6.b		; 46 C6
	and ($1A.b)		; 32 1A
	ora $C0.b,S		; 03 C0
	trb $00.b		; 14 00
	sty $42.b		; 84 42
	bpl -80.b		; 10 B0
	brk $20.b		; 00 20
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bpl   1.b		; 10 01
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $A2.b		; 00 A2
	bpl  84.b		; 10 54
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	bra   0.b		; 80 00
	jsr $0802.w		; 20 02 08
	brk $00.b		; 00 00
	bpl -64.b		; 10 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $06.b		; 14 06
	bne   6.b		; D0 06
	bmi  75.b		; 30 4B
	rti		; 40

	ora ($80.b)		; 12 80
	asl $0C.b		; 06 0C
	jsr $0008.w		; 20 08 00
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	cop $20.b		; 02 20
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
	cop $00.b		; 02 00
	jsl $408150.l		; 22 50 81 40
	bra   8.b		; 80 08
	brk $14.b		; 00 14
	trb $42.b		; 14 42
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
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
	bit $80.b,X		; 34 80
	phd		; 0B
	bmi   0.b		; 30 00
	cpy #$00.b		; C0 00
	asl $88.b,X		; 16 88
	dey		; 88
	rts		; 60

	bvs   0.b		; 70 00
	asl A		; 0A
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	mvp $00,$20		; 44 20 00
	rti		; 40

	bra   1.b		; 80 01
	bmi   0.b		; 30 00
	bra   0.b		; 80 00
	bra  16.b		; 80 10
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $01.b		; 00 01
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FB7FFF.l,X		; FF FF 7F FB
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc [$F3.b],Y		; F7 F3
	inc $FF.b,X		; F6 FF
	sbc [$FF.b]		; E7 FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFDF.l,X		; FF DF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFD.l,X		; FF FD FE FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7B.l,X		; FF 7B FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EF7FFF.l,X		; FF FF 7F EF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7D.l,X		; FF 7D FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	cmp $FFDFFF.l,X		; DF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	adc $FFFFFD.l,X		; 7F FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7D.l,X		; FF 7D FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFB.l,X		; FF FB FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFBF.w,X		; FD BF FF
	cmp [$FF.b],Y		; D7 FF
	sbc $FFFFF6.l		; EF F6 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFAF.l,X		; FF AF EF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEE.l,X		; FF EE FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FF7FFF.l,X		; DF FF 7F FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FBFF.w		; ED FF FB
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFF7FF.l,X		; FF FF F7 DF
	sbc $EEFFFF.l,X		; FF FF FF EE
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FBFDFF.l,X		; FF FF FD FB
	sbc $FFBFBF.l,X		; FF BF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	xce		; FB
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
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFDF7.l,X		; FF F7 FD FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFF75.l,X		; FF 75 FF FF
	sbc $7D7FFF.l,X		; FF FF 7F 7D
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $FF6FFF.l,X		; FF FF 6F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFBFE.l		; EF FE FB FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFBE.l,X		; FF BE FF F7
	sbc $FFFFFC.l,X		; FF FC FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	lda $FFF77F.l,X		; BF 7F F7 FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	adc $F7FFFF.l,X		; 7F FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$F7.b],Y		; F7 F7
	sbc [$FD.b],Y		; F7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $B5FFFF.l,X		; FF FF FF B5
	brk $88.b		; 00 88
	sbc $2B.b,X		; F5 2B
	jsr $0028.w		; 20 28 00
	eor [$08.b]		; 47 08
	bpl   2.b		; 10 02
	brk $83.b		; 00 83
	clc		; 18
	rti		; 40

	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	rti		; 40

	brk $21.b		; 00 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
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
	ora ($80.b,X)		; 01 80
	ldy #$10.b		; A0 10
	cop $00.b		; 02 00
	ora ($40.b)		; 12 40
	brk $20.b		; 00 20
	pla		; 68
	sty $28.b,X		; 94 28
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
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
	bit $48.b		; 24 48
	adc ($00.b),Y		; 71 00
	cpy $08.b		; C4 08
	adc #$2025.w		; 69 25 20
	and ($00.b),Y		; 31 00
	eor ($22.b,X)		; 41 22
	rti		; 40

	brk $00.b		; 00 00
	and #$0000.w		; 29 00 00
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $08A2.w,X		; 1D A2 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	tsb $20.b		; 04 20
	brk $20.b		; 00 20
	clc		; 18
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	brk $08.b		; 00 08
	brk $01.b		; 00 01
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
	ora $23.b		; 05 23
	rti		; 40

	cmp $D0.b,S		; C3 D0
	sta ($00.b,X)		; 81 00
	brk $C2.b		; 00 C2
	jsl $404200.l		; 22 00 42 40
	cpy $40.b		; C4 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	mvp $20,$00		; 44 00 20
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	jsr $0020.w		; 20 20 00
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
	brk $CC.b		; 00 CC
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $46.b		; 00 46
	jsl $040020.l		; 22 20 00 04
	asl A		; 0A
	mvp $04,$00		; 44 00 04
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
	bra   0.b		; 80 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $26.b		; 00 26
	brk $00.b		; 00 00
	plp		; 28
	bmi   2.b		; 30 02
	bcc -123.b		; 90 85
	tsb NMITIMEN.w		; 0C 00 42
	mvp $40,$02		; 44 02 40
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $08.b		; 00 08
	ora ($20.b,X)		; 01 20
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	.db $82, $0F, $04		; 82 0F 04
	bvc  16.b		; 50 10
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
	ora ($00.b,X)		; 01 00
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
	asl A		; 0A
	bra  68.b		; 80 44
	and $2403.w		; 2D 03 24
	eor ($00.b,X)		; 41 00
	rts		; 60

	stx $88.b		; 86 88
	rti		; 40

	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
	cop $02.b		; 02 02
	jsr $0008.w		; 20 08 00
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
	cop $00.b		; 02 00
	ldy #$02.b		; A0 02
	rti		; 40

	brk $08.b		; 00 08
	bmi -128.b		; 30 80
	ora $00.b,S		; 03 00
	brk $10.b		; 00 10
	cop $08.b		; 02 08
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
	jsr $8000.w		; 20 00 80
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
	brk $82.b		; 00 82
	eor $40.b		; 45 40
	asl $1142.w,X		; 1E 42 11
	php		; 08
	bra -24.b		; 80 E8
	lsr $00.b		; 46 00
	bpl   0.b		; 10 00
	bvc   8.b		; 50 08
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	and ($00.b),Y		; 31 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $20.b		; 00 20
	brk $24.b		; 00 24
	brk $80.b		; 00 80
	mvp $02,$80		; 44 80 02
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	brk $09.b		; 00 09
	cpx #$46.b		; E0 46
	trb $40.b		; 14 40
	bcs   0.b		; B0 00
	brk $12.b		; 00 12
	bcc -128.b		; 90 80
	cpy #$40.b		; C0 40
	bpl  16.b		; 10 10
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	php		; 08
	brk $20.b		; 00 20
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $40.b		; 00 40
	ora ($84.b),Y		; 11 84
	jsr $0246.w		; 20 46 02
	sty $10.b,X		; 94 10
	brk $40.b		; 00 40
	bra  96.b		; 80 60
	php		; 08
	jsr $C010.w		; 20 10 C0
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $22.b		; 00 22
	jsl $955604.l		; 22 04 56 95
	eor ($C1.b,X)		; 41 C1
	brk $02.b		; 00 02
	rts		; 60

	eor [$70.b],Y		; 57 70
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	rti		; 40

	brk $00.b		; 00 00
	tsb $12.b		; 04 12
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	asl A		; 0A
	tsb $90.b		; 04 90
	php		; 08
	bpl  42.b		; 10 2A
	and #$D010.w		; 29 10 D0
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	adc $FFDFFF.l,X		; 7F FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFD.l,X		; FF FD FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFFEF.l,X		; FF EF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFB7.l,X		; FF B7 FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3FFFFF.l,X		; FF FF FF 3F
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
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBD.l,X		; FF BD FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $FFCFDF.l,X		; FF DF CF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FF7FFF.l,X		; BF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFF.w,X		; FD FF FF
	lda [$FE.b],Y		; B7 FE
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF5FFE.l,X		; FF FE 5F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFEF.w,X		; 7D EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $F7F7FF.l,X		; FF FF F7 F7
	sbc [$FF.b],Y		; F7 FF
	sbc $FBFFDF.l,X		; FF DF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	xce		; FB
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CFFFFF.l,X		; FF FF FF CF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
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
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFE.l,X		; FF FE EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	inc $FFFF.w,X		; FE FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FCFFFF.l,X		; FF FF FF FC
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFDFF.l,X		; FF FF FD 7F
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFD.w,X		; FD FD FF
	sbc $FBEFFF.l,X		; FF FF EF FB
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
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
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $41FFFF.l,X		; FF FF FF 41
	php		; 08
	cop $44.b		; 02 44
	sta ($18.b,X)		; 81 18
	cpy #$15.b		; C0 15
	brk $00.b		; 00 00
	.db $42, $00		; 42 00
	.db $42, $00		; 42 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
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
	bpl -122.b		; 10 86
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	asl $40.b		; 06 40
	jsl $000040.l		; 22 40 00 00
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $00,$00		; 44 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $40.b		; 06 40
	bra   0.b		; 80 00
	jsl $604104.l		; 22 04 41 60
	brk $44.b		; 00 44
	tay		; A8
	tsb $4000.w		; 0C 00 40
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
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
	jsr $8000.w		; 20 00 80
	mvn $00,$00		; 54 00 00
	brk $28.b		; 00 28
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $80.b,X		; 16 80
	cop $03.b		; 02 03
	iny		; C8
	asl $04.b		; 06 04
	eor #$08FA.w		; 49 FA 08
	bpl -80.b		; 10 B0
	php		; 08
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
	brk $69.b		; 00 69
	cop $30.b		; 02 30
	brk $08.b		; 00 08
	tsb $01.b		; 04 01
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora $80.b,S		; 03 80
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
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $60.b		; 00 60
	sta $80.b,S		; 83 80
	sty $29.b		; 84 29
	bra -63.b		; 80 C1
	pla		; 68
	adc ($23.b),Y		; 71 23
	sta ($02.b,X)		; 81 02
	cpy $41.b		; C4 41
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $4000.w		; 20 00 40
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  64.b		; 10 40
	sta ($06.b,X)		; 81 06
	rti		; 40

	brk $01.b		; 00 01
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
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
	brk $20.b		; 00 20
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	dec A		; 3A
	jmp ($1000.w)		; 6C 00 10
	bit $84.b		; 24 84
	jsr $4240.w		; 20 40 42
	inc A		; 1A
	jsr $0408.w		; 20 08 04
	plp		; 28
	rti		; 40

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
	asl A		; 0A
	brk $04.b		; 00 04
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $92.b		; 00 92
	php		; 08
	cpy #$38.b		; C0 38
	brk $20.b		; 00 20
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $05.b		; 00 05
	cop $00.b		; 02 00
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
	php		; 08
	.db $42, $00		; 42 00
	bpl  10.b		; 10 0A
	ora [$00.b]		; 07 00
	ora #$3A24.w		; 09 24 3A
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	.db $82, $00, $00		; 82 00 00
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $04.b		; 00 04
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
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	tsb $02.b		; 04 02
	bpl   4.b		; 10 04
	bpl -116.b		; 10 8C
	brk $42.b		; 00 42
	jsr $E040.w		; 20 40 E0
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $30.b		; 00 30
	brk $6C.b		; 00 6C
	ora $0700.w,X		; 1D 00 07
	php		; 08
	brk $00.b		; 00 00
	bcc  12.b		; 90 0C
	brk $40.b		; 00 40
	jsr $0000.w		; 20 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $40.b		; 00 40
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	php		; 08
	and ($40.b,X)		; 21 40
	php		; 08
	brk $76.b		; 00 76
	jsr $4844.w		; 20 44 48
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	pla		; 68
	.db $82, $5C, $98		; 82 5C 98
	bne  70.b		; D0 46
	ora #$1300.w		; 09 00 13
	stz $ACA0.w,X		; 9E A0 AC
	brk $08.b		; 00 08
	rti		; 40

	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $02.b		; 00 02
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
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
	ora $04.b,S		; 03 04
	bvc   0.b		; 50 00
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ldy #$30.b		; A0 30
	rti		; 40

	and $90.b		; 25 90
	php		; 08
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
	bpl -128.b		; 10 80
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
	inc $BFFF.w,X		; FE FF BF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	cmp $DF.b,X		; D5 DF
	cmp $FFFFFF.l,X		; DF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFD.w,X		; FD FD FF
	sbc $FF7F5F.l,X		; FF 5F 7F FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFD.l,X		; FF FD FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FDFFBF.l,X		; FF BF FF FD
	sbc $FFFEFF.l		; EF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFBFFD.l,X		; FF FD BF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FB5FFF.l,X		; FF FF 5F FB
	cmp $DFFFFF.l,X		; DF FF FF DF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FEFF.w,X		; FE FF FE
	sbc $FFDDFF.l		; EF FF DD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $EDFFFF.l,X		; FF FF FF ED
	xce		; FB
	adc $FFFF7D.l		; 6F 7D FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFAFFF.l,X		; FF FF AF FF
	and $FFFFF7.l,X		; 3F F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFD7.l,X		; FF D7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EDFFDF.l,X		; FF DF FF ED
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFF.w,X		; FD FF 7F
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFDF.l		; EF DF FF FF
	sbc $FFFD.w,X		; FD FD FF
	adc $FFFFFF.l,X		; 7F FF FF FF
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
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FF7EFF.l,X		; FF FF 7E FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDB.l,X		; FF DB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFDFF.l,X		; FF FF FD BF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFF7E.l,X		; FF 7E FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
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
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFBFF7.l,X		; FF F7 BF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FF6FFF.l,X		; FF FF 6F FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $DFEDFB.l		; EF FB ED DF
	tda		; 7B
	sbc $FBFFFE.l,X		; FF FE FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	xce		; FB
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBDFFF.l,X		; FF FF DF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FBFF7B.l,X		; FF 7B FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FEF7.l,X		; FF F7 FE F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $DEFFFD.l,X		; FF FD FF DE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFBF.l,X		; FF BF DF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	cmp $FFFF.w,X		; DD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF5FF.l,X		; FF FF F5 FF
	sbc $DFFF7D.l,X		; FF 7D FF DF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $C1FFFF.l,X		; FF FF FF C1
	lsr $1C21.w		; 4E 21 1C
	jsr $2405.w		; 20 05 24
	eor $0014.w		; 4D 14 00
	jmp $0284.w		; 4C 84 02
	stz $20.b,X		; 74 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $80.b		; 02 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ora ($0C.b,X)		; 01 0C
	sty $01.b		; 84 01
	brk $00.b		; 00 00
	tsb $1841.w		; 0C 41 18
	brk $40.b		; 00 40
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	jsl $081220.l		; 22 20 12 08
	sep #$00		; E2 00
	tsb $24.b		; 04 24
	asl A		; 0A
	bcc   0.b		; 90 00
	cop $48.b		; 02 48
	sty $00.b,X		; 94 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
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
	brk $01.b		; 00 01
	asl A		; 0A
	php		; 08
	brk $00.b		; 00 00
	bra  34.b		; 80 22
	rts		; 60

	rti		; 40

	jmp $0044.w		; 4C 44 00
	rti		; 40

	cop $00.b		; 02 00
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bpl   0.b		; 10 00
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
	brk $74.b		; 00 74
	jsr $8901.w		; 20 01 89
	cop $30.b		; 02 30
	sta ($01.b,S),Y		; 93 01
	tay		; A8
	php		; 08
	clc		; 18
	tsb $81.b		; 04 81
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $28.b		; 00 28
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	clc		; 18
	php		; 08
	ora $00.b		; 05 00
	bra   0.b		; 80 00
	cpy #$85.b		; C0 85
	dey		; 88
	cop $00.b		; 02 00
	cop $00.b		; 02 00
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
	brk $02.b		; 00 02
	adc ($2B.b,X)		; 61 2B
	iny		; C8
	ora $6C.b		; 05 6C
	asl $1AB0.w,X		; 1E B0 1A
	bvs -127.b		; 70 81
	rti		; 40

	ora $98.b,S		; 03 98
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $01.b		; 00 01
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
	rti		; 40

	eor $008A.w,Y		; 59 8A 00
	brk $C6.b		; 00 C6
	bpl -127.b		; 10 81
	adc ($00.b,X)		; 61 00
	sty $02.b,X		; 94 02
	cop $09.b		; 02 09
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$1D.b		; A0 1D
	asl $AA.b		; 06 AA
	tax		; AA
	sbc ($00.b)		; F2 00
	bit $0A.b		; 24 0A
	rol $10.b		; 26 10
	brk $16.b		; 00 16
	clc		; 18
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	iny		; C8
	tsb $80.b		; 04 80
	eor ($69.b)		; 52 69
	brk $88.b		; 00 88
	brk $80.b		; 00 80
	php		; 08
	sec		; 38
	cli		; 58
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	cop $00.b		; 02 00
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
	pha		; 48
	ora ($D0.b,X)		; 01 D0
	asl $44.b		; 06 44
	tsb $10.b		; 04 10
	bvs   0.b		; 70 00
	jsr $4000.w		; 20 00 40
	tsb $46.b		; 04 46
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $40.b		; 04 40
	bcc   4.b		; 90 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	rti		; 40

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
	brk $80.b		; 00 80
	tsb $80.b		; 04 80
	asl $00.b		; 06 00
	brk $4C.b		; 00 4C
	ora #$2314.w		; 09 14 23
	rti		; 40

	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	jsr $0000.w		; 20 00 00
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
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
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
	cpy #$40.b		; C0 40
	rti		; 40

	bra  10.b		; 80 0A
	bmi  32.b		; 30 20
	ror A		; 6A
	rti		; 40

	bvc   0.b		; 50 00
	ora #$0040.w		; 09 40 00
	php		; 08
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $80.b		; 00 80
	brk $28.b		; 00 28
	bra  34.b		; 80 22
	php		; 08
	ora ($0E.b,X)		; 01 0E
	cop $00.b		; 02 00
	.db $42, $00		; 42 00
	rti		; 40

	tsb $20.b		; 04 20
	brk $00.b		; 00 00
	dey		; 88
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
	brk $08.b		; 00 08
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
	bit $90.b		; 24 90
	cpy #$00.b		; C0 00
	tsb $E280.w		; 0C 80 E2
	rts		; 60

	rti		; 40

	rti		; 40

	brk $04.b		; 00 04
	sty $10.b		; 84 10
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	tsb $00.b		; 04 00
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
	jmp ($0018.w)		; 6C 18 00
	.db $82, $D0, $28		; 82 D0 28
	plp		; 28
	brk $80.b		; 00 80
	asl $04.b		; 06 04
	bit $00.b		; 24 00
	and ($08.b,X)		; 21 08
	php		; 08
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
	sbc $FCFFFF.l,X		; FF FF FF FC
	jsr ($FFFB.w,X)		; FC FB FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp [$FF.b],Y		; D7 FF
	adc $FFBFFF.l,X		; 7F FF BF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFAF.l,X		; FF AF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFF.l		; EF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	adc $FFFFBF.l,X		; 7F BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7BFFE.l,X		; FF FE BF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FDFF77.l,X		; FF 77 FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFDF.l,X		; 7F DF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFBFFF.l		; CF FF BF FF
	lda $FFFFFF.l,X		; BF FF FF FF
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
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DF7BFF.l,X		; FF FF 7B DF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $DFDFFF.l,X		; FF FF DF DF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	inc $EFFF.w,X		; FE FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ror $FFFF.w,X		; 7E FF FF
	sbc $F7FDFF.l,X		; FF FF FD F7
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $DF7FFF.l,X		; FF FF 7F DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
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
	sbc $FFDBFF.l,X		; FF FF DB FF
	sbc $FFFFFE.l,X		; FF FE FF FF
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
	sbc $FFFFFF.l		; EF FF FF FF
	inc $FDFF.w,X		; FE FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BEFFFF.l,X		; FF FF FF BE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDF7F.l,X		; FF 7F DF FF
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFBFFF.l,X		; FF FF BF DF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBF7F.l,X		; FF 7F BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBDDF.l,X		; FF DF BD FF
	sbc $FBEFFF.l,X		; FF FF EF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $02FFFF.l,X		; FF FF FF 02
	jsr $528E.w		; 20 8E 52
	lda ($0C.b)		; B2 0C
	asl A		; 0A
	mvp $40,$42		; 44 42 40
	bpl -60.b		; 10 C4
	sei		; 78
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
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bcc  32.b		; 90 20
	ora $08.b,S		; 03 08
	lsr $0042.w		; 4E 42 00
	tsb $18.b		; 04 18
	sty $00.b		; 84 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	bmi   0.b		; 30 00
	tya		; 98
	stx $80.b		; 86 80
	ora ($C0.b,X)		; 01 C0
	jsr $8040.w		; 20 40 80
	bvc -128.b		; 50 80
	bpl   0.b		; 10 00
	mvp $00,$00		; 44 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	bra   0.b		; 80 00
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
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora ($84.b,X)		; 01 84
	mvp $50,$09		; 44 09 50
	brk $00.b		; 00 00
	brk $54.b		; 00 54
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
	brk $02.b		; 00 02
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
	brk $F8.b		; 00 F8
	pha		; 48
	bpl  38.b		; 10 26
	.db $42, $C0		; 42 C0
	brk $30.b		; 00 30
	bit $24.b		; 24 24
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	ldy #$81.b		; A0 81
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	jsr $0030.w		; 20 30 00
	ora #$1000.w		; 09 00 10
	jsr $0804.w		; 20 04 08
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	rti		; 40

	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
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
	ldy #$00.b		; A0 00
	brk $01.b		; 00 01
	bra  72.b		; 80 48
	mvp $85,$42		; 44 42 85
	ora $44.b,S		; 03 44
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $09.b		; 00 09
	ora ($C0.b,X)		; 01 C0
	ldy #$04.b		; A0 04
	ror $0005.w		; 6E 05 00
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
	brk $30.b		; 00 30
	tsb $50.b		; 04 50
	bra   1.b		; 80 01
	jsl $221A80.l		; 22 80 1A 22
	brk $1A.b		; 00 1A
	php		; 08
	brk $80.b		; 00 80
	inc A		; 1A
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
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
	jsr $0040.w		; 20 40 00
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
	brk $9A.b		; 00 9A
	brk $12.b		; 00 12
	brk $20.b		; 00 20
	ora ($20.b,X)		; 01 20
	asl $12.b		; 06 12
	bra -128.b		; 80 80
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
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
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
	brk $24.b		; 00 24
	brk $20.b		; 00 20
	cop $31.b		; 02 31
	mvp $00,$83		; 44 83 00
	ora ($21.b,S),Y		; 13 21
	stz $88.b		; 64 88
	tsb $04.b		; 04 04
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
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	sty $90.b		; 84 90
	jsr $0810.w		; 20 10 08
	brk $B8.b		; 00 B8
	brk $40.b		; 00 40
	jsl $048002.l		; 22 02 80 04
	bra   0.b		; 80 00
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
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	tsb $00.b		; 04 00
	bpl   4.b		; 10 04
	cpy #$00.b		; C0 00
	tsb $40.b		; 04 40
	txa		; 8A
	mvp $22,$08		; 44 08 22
	dey		; 88
	brk $21.b		; 00 21
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	rti		; 40

	brk $04.b		; 00 04
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
	lsr $00.b		; 46 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	jsl $510404.l		; 22 04 04 51
	jsr $0802.w		; 20 02 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $20.b		; 05 20
	php		; 08
	cop $60.b		; 02 60
	php		; 08
	asl A		; 0A
	bra   4.b		; 80 04
	tsb M7Y.w		; 0C 20 21
	tsb $01.b		; 04 01
	jsr $0002.w		; 20 02 00
	brk $02.b		; 00 02
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $21.b		; 00 21
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
	bvs -64.b		; 70 C0
	bcc  32.b		; 90 20
	cop $0A.b		; 02 0A
	ora ($02.b),Y		; 11 02
	php		; 08
	bpl   5.b		; 10 05
	brk $00.b		; 00 00
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	rti		; 40

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
	.db $00		; Opcode 00 overrunning bank boundry at 1CFFFF. Skipping.
.ENDS
