.BANK 23 SLOT 0
.ORG $0000

.SECTION "Bank23" FORCE

	clc		; 18
	brk $38.b		; 00 38
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	brk $11.b		; 00 11
	brk $32.b		; 00 32
	brk $74.b		; 00 74
	cop $79.b		; 02 79
	asl $07.b		; 06 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $0D.b		; 00 0D
	brk $0B.b		; 00 0B
	cop $03.b		; 02 03
	cop $F0.b		; 02 F0
	php		; 08
	cpx #$E018.w		; E0 18 E0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -64.b		; 30 C0
	jsr $2080.w		; 20 80 20
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	jsr $6000.w		; 20 00 60
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	cpy #$0300.w		; C0 00 03
	ora $05.b		; 05 05
	ora $05.b,S		; 03 05
	ora $02.b,S		; 03 02
	ora ($02.b,X)		; 01 02
	ora ($04.b,X)		; 01 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	plx		; FA
	sbc $FCFB.w,X		; FD FB FC
	xce		; FB
	plx		; FA
	sbc $F847.w,X		; FD 47 F8
	sbc $077803.l,X		; FF 03 78 07
	bvs  12.b		; 70 0C
	wai		; CB
	and ($8A.b)		; 32 8A
	adc ($FB.b)		; 72 FB
	ora ($FC.b,X)		; 01 FC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	php		; 08
	ora [$04.b]		; 07 04
	jsr ($E403.w,X)		; FC 03 E4
	ora [$60.b]		; 07 60
	ora [$79.b]		; 07 79
	dec $C03E.w		; CE 3E C0
	beq   0.b		; F0 00
	sed		; F8
	bra 124.b		; 80 7C
	cpy #$00FD.w		; C0 FD 00
	sbc $FB18.w,Y		; F9 18 FB
	clc		; 18
	lda ($80.b)		; B2 80
	brk $00.b		; 00 00
	rts		; 60

	rts		; 60

	bcs -80.b		; B0 B0
	pha		; 48
	pha		; 48
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0008.w		; 0C 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$08.b]		; 07 08
	ora $4F3710.l		; 0F 10 37 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	brk $4F.b		; 00 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bne  -8.b		; D0 F8
	brk $FC.b		; 00 FC
	bcs   0.b		; B0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	brk $3F.b		; 00 3F
	brk $0E.b		; 00 0E
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$0F.b]		; 07 0F
	ora $000101.l		; 0F 01 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	ora $FA.b,S		; 03 FA
	tas		; 1B
	lda $5E81.w,X		; BD 81 5E
	cpy #$E02F.w		; C0 2F E0
	ora [$F0.b],Y		; 17 F0
	phd		; 0B
	sed		; F8
	ora [$FE.b]		; 07 FE
	sbc ($FF.b,X)		; E1 FF
	ora $01.b		; 05 01
	ror $BF00.w,X		; 7E 00 BF
	bra  95.b		; 80 5F
	rti		; 40

	and $D0D720.l		; 2F 20 D7 D0
	sbc ($F0.b),Y		; F1 F0
	ora ($12.b)		; 12 12
	ora ($44.b),Y		; 11 44
	rti		; 40

	cpy $40FF.w		; CC FF 40
	sbc $18FB00.l,X		; FF 00 FB 18
	jsr ($7F3C.w,X)		; FC 3C 7F
	ora $78073F.l,X		; 1F 3F 07 78
	rti		; 40

	sec		; 38
	php		; 08
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	ora ($1E.b)		; 12 1E
	clc		; 18
	and $023F0E.l,X		; 3F 0E 3F 02
	ora $DF3EDF.l		; 0F DF 3E DF
	and $AF3FDF.l,X		; 3F DF 3F AF
	ora $DB4F97.l,X		; 1F 97 4F DB
	and [$06.b],Y		; 37 06
	ora $CCF1FF.l		; 0F FF F1 CC
	inc $7F0E.w,X		; FE 0E 7F
	ora $FF877F.l		; 0F 7F 87 FF
	ora $7F.b,S		; 03 7F
	bra -65.b		; 80 BF
	tsb $FF.b		; 04 FF
	and ($F1.b),Y		; 31 F1
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bra -32.b		; 80 E0
	cpy #$E030.w		; C0 30 E0
	sed		; F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	plp		; 28
	jmp ($6C20.w)		; 6C 20 6C
	bvs  24.b		; 70 18
	beq   8.b		; F0 08
	jsr ($D820.w,X)		; FC 20 D8
	bmi  -4.b		; 30 FC
	php		; 08
	jsr ($1000.w,X)		; FC 00 10
	brk $18.b		; 00 18
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	tsb $1F.b		; 04 1F
	asl $1B.b		; 06 1B
	tsb $1F.b		; 04 1F
	brk $1E.b		; 00 1E
	ora ($1B.b,X)		; 01 1B
	brk $09.b		; 00 09
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E080.w		; C0 80 E0
	rti		; 40

	bvs -128.b		; 70 80
	clc		; 18
	cpy #$F008.w		; C0 08 F0
	tsb $78.b		; 04 78
	cop $00.b		; 02 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	ldy #$F020.w		; A0 20 F0
	bpl  -8.b		; 10 F8
	php		; 08
	jsr ($FC04.w,X)		; FC 04 FC
	brk $7B.b		; 00 7B
	asl $73.b		; 06 73
	asl $0C75.w		; 0E 75 0C
	adc $0C.b		; 65 0C
	adc $0C.b		; 65 0C
	adc $0C.b		; 65 0C
	eor $0C.b		; 45 0C
	tsb $0C.b		; 04 0C
	ora $04.b		; 05 04
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cpy #$8060.w		; C0 60 80
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
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
	brk $E3.b		; 00 E3
	clc		; 18
	lsr $30.b		; 46 30
	trb $3931.w		; 1C 31 39
	.db $62, $19, $46		; 62 19 46
	adc ($C5.b,S),Y		; 73 C5
	and $8C.b,S		; 23 8C
	sbc [$98.b]		; E7 98
	ora $101F08.l		; 0F 08 1F 10
	rol $1E20.w		; 2E 20 1E
	ora $7C.b,S		; 03 7C
	mvp $03,$38		; 44 38 03
	beq -125.b		; F0 83
	ror $17.b,X		; 76 17
	ror $7FC0.w,X		; 7E C0 7F
	cpy #$80FF.w		; C0 FF 80
	sbc $E0FF40.l,X		; FF 40 FF E0
	sbc $C0FFE0.l,X		; FF E0 FF C0
	sbc $404010.l,X		; FF 10 40 40
	tsb $0E4C.w		; 0C 4C 0E
	ldx $6E0E.w		; AE 0E 6E
	lsr $F6.b		; 46 F6
	rti		; 40

	beq  86.b		; F0 56
	inc $64.b,X		; F6 64
	pea $1C1E.w		; F4 1E 1C
	lda $2EAF3E.l,X		; BF 3E AF 2E
	dec $FC48.w		; CE 48 FC
	rts		; 60

	sed		; F8
	cpy #$00C0.w		; C0 C0 00
	cpy #$1800.w		; C0 00 18
	bit $7E0C.w,X		; 3C 0C 7E
	tsb $7E.b		; 04 7E
	brk $78.b		; 00 78
	rti		; 40

	bvs   0.b		; 70 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	cmp $FF7F3F.l,X		; DF 3F 7F FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	and $3DDEDE.l,X		; 3F DE DE 3D
	lda $F9FC7C.l,X		; BF 7C FC F9
	and [$08.b],Y		; 37 08
	sbc [$18.b]		; E7 18
	cmp ($3E.b,X)		; C1 3E
	sbc ($0C.b,S),Y		; F3 0C
	dec $3D00.w,X		; DE 00 3D
	brk $7C.b		; 00 7C
	brk $DA.b		; 00 DA
	jsr $FADC.w		; 20 DC FA
	dec $6FFD.w,X		; DE FD 6F
	stz $6E97.w,X		; 9E 97 6E
	adc [$FE.b]		; 67 FE
	dec $3D.b,X		; D6 3D
	rol $98.b,X		; 36 98
	sbc ($8C.b)		; F2 8C
	plx		; FA
	brk $F9.b		; 00 F9
	tsb $9C.b		; 04 9C
	cop $0C.b		; 02 0C
	cop $1E.b		; 02 1E
	bpl  37.b		; 10 25
	jsr $C000.w		; 20 00 C0
	bcc -96.b		; 90 A0
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora $06.b,S		; 03 06
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	beq  -5.b		; F0 FB
	bpl  25.b		; 10 19
	jsr $6013.w		; 20 13 60
	asl $E1.b,X		; 16 E1
	trb $38E3.w		; 1C E3 38
	cmp [$30.b]		; C7 30
	cmp $000030.l,X		; DF 30 00 00
	cpx #$F000.w		; E0 00 F0
	bpl -29.b		; 10 E3
	cop $E7.b		; 02 E7
	tsb $CF.b		; 04 CF
	php		; 08
	cmp $00CF10.l,X		; DF 10 CF 00
	and $003F03.l,X		; 3F 03 3F 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $001F00.l,X		; 7F 00 1F 00
	ora $000700.l,X		; 1F 00 07 00
	bpl  19.b		; 10 13
	trb $0A1D.w		; 1C 1D 0A
	asl A		; 0A
	asl $06.b		; 06 06
	ora $0B1D.w,X		; 1D 1D 0B
	phd		; 0B
	ora [$07.b]		; 07 07
	ora ($01.b,X)		; 01 01
	sbc $F0FBF8.l,X		; FF F8 FB F0
	xce		; FB
	bmi  -5.b		; 30 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	brk $32.b		; 00 32
	plx		; FA
	.db $62, $F6, $03		; 62 F6 03
	adc [$03.b],Y		; 77 03
	ora [$B3.b]		; 07 B3
	lda [$B3.b],Y		; B7 B3
	lda [$73.b],Y		; B7 73
	adc [$73.b],Y		; 77 73
	adc [$5C.b],Y		; 77 5C
	cmp ($2C.b,X)		; C1 2C
	sbc ($78.b,X)		; E1 78
	ora $F0.b,S		; 03 F0
	asl $E0.b		; 06 E0
	tsb $18C0.w		; 0C C0 18
	cpy #$8070.w		; C0 70 80
	cpx #$80BE.w		; E0 BE 80
	lsr $FE40.w,X		; 5E 40 FE
	cop $FC.b		; 02 FC
	tsb $F8.b		; 04 F8
	php		; 08
	beq  16.b		; F0 10
	ldy #$4020.w		; A0 20 40
	rti		; 40

	ora [$0C.b]		; 07 0C
	cop $09.b		; 02 09
	brk $1B.b		; 00 1B
	tsb $1B.b		; 04 1B
	tsb $1D12.w		; 0C 12 1D
	cop $37.b		; 02 37
	brk $E6.b		; 00 E6
	ora ($03.b,X)		; 01 03
	brk $0E.b		; 00 0E
	php		; 08
	tsb $0908.w		; 0C 08 09
	ora #$1213.w		; 09 13 12
	ora $02.b,S		; 03 02
	ora #$1900.w		; 09 00 19
	ora ($1C.b,X)		; 01 1C
	cmp $78.b,S		; C3 78
	dec $38.b		; C6 38
	sty $1870.w		; 8C 70 18
	cpx #$8030.w		; E0 30 80
	rts		; 60

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	ror $3C42.w,X		; 7E 42 3C
	tsb $F0.b		; 04 F0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	tsb $03.b		; 04 03
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	ora $00.b,S		; 03 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	sec		; 38
	bra -128.b		; 80 80
	rti		; 40

	cpy #$6060.w		; C0 60 60
	jsr $2060.w		; 20 60 20
	rts		; 60

	bcs -80.b		; B0 B0
	bra -128.b		; 80 80
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$0007.w		; E0 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$01.b]		; 07 01
	sbc $00FE3F.l,X		; FF 3F FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $C0C1.w		; 0E C1 C0
	and $3F5F1F.l,X		; 3F 1F 5F 3F
	dey		; 88
	adc $7C7CFB.l,X		; 7F FB 7C 7C
	clc		; 18
	asl $2700.w,X		; 1E 00 27
	brk $13.b		; 00 13
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7C.b		; 00 7C
	brk $18.b		; 00 18
	ora $00.b,S		; 03 00
	ora ($06.b,X)		; 01 06
	asl $0E02.w,X		; 1E 02 0E
	sbc [$E8.b],Y		; F7 E8
	lda [$F8.b]		; A7 F8
	adc [$9C.b]		; 67 9C
	php		; 08
	and [$2F.b],Y		; 37 2F
	asl $0F51.w		; 0E 51 0F
	stz $11.b		; 64 11
	cpy $E721.w		; CC 21 E7
	brk $E7.b		; 00 E7
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	dec $0E.b		; C6 0E
	dec $A505.w,X		; DE 05 A5
	asl $1E80.w		; 0E 80 1E
	brk $01.b		; 00 01
	tsb $03.b		; 04 03
	tsb $01.b		; 04 01
	cop $03.b		; 02 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	rti		; 40

	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $70FF30.l,X		; FF 30 FF 70
	sbc $70FFF0.l,X		; FF F0 FF 70
	sbc $008078.l,X		; FF 78 80 00
	stx $060E.w		; 8E 0E 06
	asl $26.b		; 06 26
	rol $7F77.w,X		; 3E 77 7F
	adc [$FF.b],Y		; 77 FF
	and ($FA.b)		; 32 FA
	bmi 120.b		; 30 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $05.b		; 02 05
	ora [$0A.b]		; 07 0A
	ora $000007.l		; 0F 07 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	asl A		; 0A
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	brk $4B.b		; 00 4B
	lda [$00.b],Y		; B7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	sbc $F9FE.w,Y		; F9 FE F9
	cmp [$00.b]		; C7 00
	and $3C.b,S		; 23 3C
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $D8.b		; 00 D8
	clc		; 18
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	sbc $C0FFC0.l,X		; FF C0 FF C0
	ora $00C0E0.l,X		; 1F E0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $C4.b		; 00 C4
	sec		; 38
.INDEX 8
	sep #$1C		; E2 1C
	stx $F070.w		; 8E 70 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bvs -104.b		; 70 98
	bvs -76.b		; 70 B4
	sed		; F8
	pea $7C78.w		; F4 78 7C
	bcs  -4.b		; B0 FC
	bpl  -8.b		; 10 F8
	bra -16.b		; 80 F0
	bra -112.b		; 80 90
	brk $B0.b		; 00 B0
	bpl  48.b		; 10 30
	sec		; 38
	bpl 120.b		; 10 78
	brk $B0.b		; 00 B0
	brk $10.b		; 00 10
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sed		; F8
	ldy #$EC.b		; A0 EC
	bvs -18.b		; 70 EE
	beq -36.b		; F0 DC
	cpx #$98.b		; E0 98
	cpy #$18.b		; C0 18
	brk $20.b		; 00 20
	bra  96.b		; 80 60
	cpy #$A0.b		; C0 A0
	ldy #$60.b		; A0 60
	beq  96.b		; F0 60
	beq -64.b		; F0 C0
	cpx #$80.b		; E0 80
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$71.b		; C0 71
	rti		; 40

	adc $60FC38.l,X		; 7F 38 FC 60
	and $00FF40.l,X		; 3F 40 FF 00
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	cpy #$31.b		; C0 31
	lda $6300.w,Y		; B9 00 63
	clc		; 18
	cld		; D8
	ora $7819.w,Y		; 19 19 78
	tda		; 7B
	inc $F7.b,X		; F6 F7
	sbc ($F1.b),Y		; F1 F1
	sbc $00F000.l,X		; FF 00 F0 00
	inc $FF00.w,X		; FE 00 FF
	brk $DF.b		; 00 DF
	brk $EF.b		; 00 EF
	brk $EE.b		; 00 EE
	brk $F8.b		; 00 F8
	tsb $EE.b		; 04 EE
	inc $6F60.w		; EE 60 6F
	stx $F38F.w		; 8E 8F F3
	sbc ($59.b,S),Y		; F3 59
	sbc $FC6C.w,Y		; F9 6C FC
	plp		; 28
	clv		; B8
	bmi -80.b		; 30 B0
	cpy #$38.b		; C0 38
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	sbc ($0C.b),Y		; F1 0C
	and $0C.b,X		; 35 0C
	sbc $18.b,S		; E3 18
	sbc $10E718.l		; EF 18 E7 10
	and ($11.b),Y		; 31 11
	bit $C01F.w,X		; 3C 1F C0
	rol $4447.w,X		; 3E 47 44
	and $E0.b,S		; 23 E0
	cmp $0007C8.l		; CF C8 07 00
	cmp $C00ED0.l,X		; DF D0 0E C0
	cop $C2.b		; 02 C2
	cld		; D8
	cld		; D8
	pea $F406.w		; F4 06 F4
	ora [$E8.b]		; 07 E8
	ora $401ED0.l		; 0F D0 1E 40
	bvs   0.b		; 70 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $FB.b		; 00 FB
	cop $FB.b		; 02 FB
	ora $F7.b,S		; 03 F7
	ora [$E8.b]		; 07 E8
	php		; 08
	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	phd		; 0B
	asl $0B.b		; 06 0B
	asl $02.b		; 06 02
	ora ($06.b,X)		; 01 06
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	tsb $01.b		; 04 01
	ora ($03.b,X)		; 01 03
	cop $03.b		; 02 03
	brk $9A.b		; 00 9A
	adc $B5.b,S		; 63 B5
	eor [$69.b]		; 47 69
	stx $9F53.w		; 8E 53 9F
	lda $3F.b,S		; A3 3F
	jmp $9077.w		; 4C 77 90
	cpx $E811.w		; EC 11 E8
	bit $7B20.w,X		; 3C 20 7B
	eor $74.b,S		; 43 74
	ora $E8.b		; 05 E8
	phb		; 8B
	cmp ($17.b),Y		; D1 17
	ldy #$2F.b		; A0 2F
	rti		; 40

	eor $07DEC0.l,X		; 5F C0 DE 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sec		; 38
	sbc $18FF38.l,X		; FF 38 FF 18
	sbc $0F7F1E.l,X		; FF 1E 7F 0F
	ora $0F1F0F.l,X		; 1F 0F 1F 0F
	ora $7C1803.l,X		; 1F 03 18 7C
	clc		; 18
	bit $BE80.w,X		; 3C 80 BE
	brk $1F.b		; 00 1F
	cop $1F.b		; 02 1F
	ora $0F030F.l		; 0F 0F 03 0F
	brk $0F.b		; 00 0F
	ora $0F3707.l		; 0F 07 37 0F
	adc $3FDE9F.l		; 6F 9F DE 3F
	and $231CDE.l,X		; 3F DE 1C 23
	asl $09.b,X		; 16 09
	ora ($0F.b),Y		; 11 0F
	tsb $03.b		; 04 03
	asl $9F01.w		; 0E 01 9F
	brk $3F.b		; 00 3F
	brk $DE.b		; 00 DE
	brk $23.b		; 00 23
	brk $09.b		; 00 09
	brk $0F.b		; 00 0F
	brk $B7.b		; 00 B7
	cmp $BFFFFF.l		; CF FF FF BF
	sbc $7F3FDF.l,X		; FF DF 3F 7F
	sbc $EDF9F6.l,X		; FF F6 F9 ED
	sbc ($EF.b,S),Y		; F3 EF
	beq -49.b		; F0 CF
	brk $78.b		; 00 78
	sta [$E3.b]		; 87 E3
	trb $003F.w		; 1C 3F 00
	sta $817860.l,X		; 9F 60 78 81
	sbc ($01.b),Y		; F1 01
	sbc ($00.b,S),Y		; F3 00
	ora $1C0310.l		; 0F 10 03 1C
	ora $1F.b,S		; 03 1F
	tsb $1C.b		; 04 1C
	ora $18.b,S		; 03 18
	phd		; 0B
	clc		; 18
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	phd		; 0B
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora $000F00.l		; 0F 00 0F 00
	beq   8.b		; F0 08
	bra 120.b		; 80 78
	bra -16.b		; 80 F0
	rti		; 40

	bvs  64.b		; 70 40
	bvs  64.b		; 70 40
	rts		; 60

	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $03.b		; 00 03
	ora $7F.b,S		; 03 7F
	ora $00FFC0.l,X		; 1F C0 FF 00
	sbc $0801.w,Y		; F9 01 08
	ora $00F000.l		; 0F 00 F0 00
	cpy #$00.b		; C0 00
	brk $0C.b		; 00 0C
	tsb $C0FF.w		; 0C FF C0
	sbc $00FE00.l,X		; FF 00 FE 00
	pea $C004.w		; F4 04 C0
	cpy #$00.b		; C0 00
	brk $1C.b		; 00 1C
	and ($1C.b),Y		; 31 1C
	and ($06.b),Y		; 31 06
	and ($06.b,S),Y		; 33 06
	and ($04.b,S),Y		; 33 04
	adc ($10.b)		; 72 10
	adc ($20.b)		; 72 20
	.db $62, $04, $C6		; 62 04 C6
	asl $0E00.w		; 0E 00 0E
	brk $1C.b		; 00 1C
	bpl  28.b		; 10 1C
	bpl  62.b		; 10 3E
	and ($2E.b)		; 32 2E
	jsl $78425E.l		; 22 5E 42 78
	rti		; 40

	sec		; 38
	sta $38.b,S		; 83 38
	.db $82, $3C, $86		; 82 3C 86
	bit $3C86.w,X		; 3C 86 3C
	stx $38.b		; 86 38
	stx $38.b		; 86 38
	sty $78.b		; 84 78
	cpy $7E.b		; C4 7E
	cop $7E.b		; 02 7E
	cop $7A.b		; 02 7A
	cop $78.b		; 02 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $7C.b		; 04 7C
	tsb $3C.b		; 04 3C
	tsb $14.b		; 04 14
	rol $10.b,X		; 36 10
	rol $38.b,X		; 36 38
	tsb $3C.b		; 04 3C
	brk $5C.b		; 00 5C
	bmi  92.b		; 30 5C
	bmi 112.b		; 30 70
	tsb $78.b		; 04 78
	tsb $08.b		; 04 08
	brk $0C.b		; 00 0C
	tsb $04.b		; 04 04
	tsb $18.b		; 04 18
	clc		; 18
	php		; 08
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	tsb $14.b		; 04 14
	trb $78.b		; 14 78
	tsb $7C.b		; 04 7C
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $26.b		; 00 26
	clc		; 18
	and $1C.b,S		; 23 1C
	and ($1E.b,X)		; 21 1E
	ora $181800.l,X		; 1F 00 18 18
	clc		; 18
	clc		; 18
	bpl  16.b		; 10 10
	trb $14.b		; 14 14
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1C63.w,X		; 1E 63 1C
	.db $62, $18, $62		; 62 18 62
	sec		; 38
	.db $62, $3C, $66		; 62 3C 66
	sec		; 38
	stz $30.b		; 64 30
	stz $20.b		; 64 20
	stz $3C.b		; 64 3C
	jsr $223E.w		; 20 3E 22
	rol $1C22.w,X		; 3E 22 1C
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	tsb $1C.b		; 04 1C
	tsb $18.b		; 04 18
	brk $0A.b		; 00 0A
	adc $28.b,S		; 63 28
	.db $62, $18, $C2		; 62 18 C2
	trb $7CC6.w		; 1C C6 7C
	dec $78.b		; C6 78
	cpy $30.b		; C4 30
	sty $30.b		; 84 30
	sty $3C.b		; 84 3C
	jsr $425E.w		; 20 5E 42
	ror $7842.w,X		; 7E 42 78
	rti		; 40

	sec		; 38
	brk $3C.b		; 00 3C
	tsb $FC.b		; 04 FC
	sty $F8.b		; 84 F8
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	sty $0000.w		; 8C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $F400.w		; 8C 00 F4
	sed		; F8
	inc $FD.b		; E6 FD
	sbc $FE.b		; E5 FE
	eor $EE.b,X		; 55 EE
	nop		; EA
	jmp $C86854.l		; 5C 54 68 C8
	jmp ($5CE8.w,X)		; 7C E8 5C
	sed		; F8
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $EE.b		; 00 EE
	brk $1C.b		; 00 1C
	brk $08.b		; 00 08
	bra  12.b		; 80 0C
	brk $AC.b		; 00 AC
	brk $23.b		; 00 23
	cli		; 58
	and [$4C.b],Y		; 37 4C
	ora ($4C.b),Y		; 11 4C
	tas		; 1B
	lsr $18.b		; 46 18
	lsr $3D.b		; 46 3D
	adc $3C.b,S		; 63 3C
	adc $1C.b,S		; 63 1C
	and $67.b,S		; 23 67
	rti		; 40

	and ($00.b,S),Y		; 33 00
	and [$04.b],Y		; 37 04
	and $3B00.w,Y		; 39 00 3B
	cop $1C.b		; 02 1C
	brk $1D.b		; 00 1D
	ora ($3C.b,X)		; 01 3C
	jsr $6000.w		; 20 00 60
	cpy #$60.b		; C0 60
	bra  48.b		; 80 30
	cpx #$30.b		; E0 30
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	bvs  24.b		; 70 18
	cpx #$88.b		; E0 88
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $1B00.w		; 0D 00 1B
	brk $36.b		; 00 36
	brk $66.b		; 00 66
	brk $4D.b		; 00 4D
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
	cop $04.b		; 02 04
	asl $09.b		; 06 09
	ora $1B12.w		; 0D 12 1B
	jsl $36043B.l		; 22 3B 04 36
	inc $ABA7.w,X		; FE A7 AB
	jmp.w [$70DF]		; DC DF 70
	tda		; 7B
	jsr $007B.w		; 20 7B 00
	stp		; DB
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $00.b		; 00 00
	lda [$08.b],Y		; B7 08
	jsr ($7111.w,X)		; FC 11 71
	and ($A5.b,X)		; 21 A5
	ora #$498D.w		; 09 8D 49
	adc $6D49.w		; 6D 49 6D
	cmp #$11ED.w		; C9 ED 11
	cmp [$18.b]		; C7 18
	dec $19.b		; C6 19
	lsr $19.b		; 46 19
	lsr $19.b		; 46 19
	lsr $1B.b		; 46 1B
	lsr $3B.b		; 46 3B
	ror $39.b		; 66 39
	stz $7C.b		; 64 7C
	mvp $44,$7D		; 44 7D 44
	adc $7D44.w,X		; 7D 44 7D
	mvp $06,$3F		; 44 3F 06
	and $1D04.w,X		; 3D 04 1D
	tsb $1B.b		; 04 1B
	brk $E8.b		; 00 E8
	tsb $0CE0.w		; 0C E0 0C
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	cpy #$10.b		; C0 10
	cpx #$30.b		; E0 30
	cpx #$30.b		; E0 30
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	inx		; E8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	trb $7CC0.w		; 1C C0 7C
	brk $74.b		; 00 74
	asl A		; 0A
	bit $1A.b		; 24 1A
	bit $0A.b,X		; 34 0A
	trb $0E03.w		; 1C 03 0E
	ora ($0F.b),Y		; 11 0F
	brk $60.b		; 00 60
	rti		; 40

	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	inc A		; 1A
	inc A		; 1A
	asl A		; 0A
	asl A		; 0A
	ora $03.b,S		; 03 03
	ora ($11.b),Y		; 11 11
	brk $00.b		; 00 00
	sed		; F8
	brk $EC.b		; 00 EC
	php		; 08
	ldy $40.b,X		; B4 40
	trb $40.b		; 14 40
	ror $7E30.w,X		; 7E 30 7E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($D800.w,X)		; FC 00 D8
	brk $70.b		; 00 70
	brk $68.b		; 00 68
	brk $78.b		; 00 78
	brk $34.b		; 00 34
	brk $BC.b		; 00 BC
	brk $98.b		; 00 98
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rts		; 60

	jsr $20A0.w		; 20 A0 20
	bcs  48.b		; B0 30
	bcs  16.b		; B0 10
	cld		; D8
	tya		; 98
	cld		; D8
	bra -32.b		; 80 E0
	cld		; D8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra -64.b		; 80 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
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
	brk $1A.b		; 00 1A
	ora $3D.b		; 05 3D
	cop $2F.b		; 02 2F
	bpl 126.b		; 10 7E
	bpl -36.b		; 10 DC
	bpl -84.b		; 10 AC
	bmi  -8.b		; 30 F8
	brk $F0.b		; 00 F0
	brk $06.b		; 00 06
	tsb $02.b		; 04 02
	cop $10.b		; 02 10
	bpl  32.b		; 10 20
	brk $60.b		; 00 60
	brk $50.b		; 00 50
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	tsb $001E.w		; 0C 1E 00
	asl $1600.w,X		; 1E 00 16
	clc		; 18
	trb $0812.w		; 1C 12 08
	asl $1A.b,X		; 16 1A
	cop $30.b		; 02 30
	asl A		; 0A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	tsb $00.b		; 04 00
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0C23.w		; 0C 23 0C
	jsl $082208.l		; 22 08 22 08
	jsl $10260C.l		; 22 0C 26 10
	bit $08.b,X		; 34 08
	bit $1C20.w,X		; 3C 20 1C
	bit $1C20.w,X		; 3C 20 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	tsb $10.b		; 04 10
	bpl   8.b		; 10 08
	php		; 08
	bmi -120.b		; 30 88
	sei		; 78
	cpy $C410.w		; CC 10 C4
	sec		; 38
	stz $0C.b		; 64 0C
	ror $18.b		; 66 18
	and ($04.b)		; 32 04
	and ($0B.b)		; 32 0B
	inc A		; 1A
	sed		; F8
	dey		; 88
	bmi   0.b		; 30 00
	sei		; 78
	rti		; 40

	trb $3804.w		; 1C 04 38
	jsr $000C.w		; 20 0C 00
	asl $0412.w,X		; 1E 12 04
	brk $39.b		; 00 39
	brk $1B.b		; 00 1B
	brk $0F.b		; 00 0F
	bpl   7.b		; 10 07
	clc		; 18
	cop $1B.b		; 02 1B
	ora ($19.b,X)		; 01 19
	ora ($19.b,X)		; 01 19
	cop $18.b		; 02 18
	php		; 08
	asl $0D09.w		; 0E 09 0D
	ora ($01.b,X)		; 01 01
	php		; 08
	php		; 08
	ora $0E09.w		; 0D 09 0E
	php		; 08
	asl $0F08.w		; 0E 08 0F
	php		; 08
	cmp $B900.w,Y		; D9 00 B9
	brk $B9.b		; 00 B9
	brk $B9.b		; 00 B9
	brk $FF.b		; 00 FF
	brk $16.b		; 00 16
	beq  30.b		; F0 1E
	beq  47.b		; F0 2F
	sbc ($C8.b,X)		; E1 C8
	inc $DE98.w		; EE 98 DE
	tya		; 98
	dec $DE98.w,X		; DE 98 DE
	brk $00.b		; 00 00
	lda $A0AFA0.l		; AF A0 AF A0
	stz $1980.w,X		; 9E 80 19
	stz $1B.b		; 64 1B
	bit $1B.b		; 24 1B
	bit $0B.b		; 24 0B
	bit $0B.b		; 24 0B
	bit $19.b		; 24 19
	bit $1B.b,X		; 34 1B
	rol $09.b,X		; 36 09
	rol $3B.b,X		; 36 3B
	jsr $203B.w		; 20 3B 20
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $1B.b		; 00 1B
	brk $0B.b		; 00 0B
	brk $09.b		; 00 09
	brk $1B.b		; 00 1B
	ora ($80.b)		; 12 80
	jsr $60C0.w		; 20 C0 60
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	cpy #$60.b		; C0 60
	cpy #$70.b		; C0 70
	ldy #$30.b		; A0 30
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	ora $3F0320.l,X		; 1F 20 03 3F
	asl $3E.b		; 06 3E
	ora $3C.b		; 05 3C
	ora $1C.b		; 05 1C
	ora $1C.b		; 05 1C
	ora $1C.b		; 05 1C
	ora $1C.b		; 05 1C
	brk $00.b		; 00 00
	trb $191C.w		; 1C 1C 19
	clc		; 18
	tas		; 1B
	clc		; 18
	tas		; 1B
	clc		; 18
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	cpy #$60.b		; C0 60
	cpy #$E0.b		; C0 E0
	rti		; 40

	rts		; 60

	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	tsb $0F00.w		; 0C 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	tsb $01.b		; 04 01
	ora ($0B.b,X)		; 01 0B
	phd		; 0B
	ora $07070F.l		; 0F 0F 07 07
	ora ($11.b),Y		; 11 11
	asl $16.b,X		; 16 16
	adc $7C3CFC.l,X		; 7F FC 3C 7C
	txs		; 9A
	bit $38D6.w,X		; 3C D6 38
	xce		; FB
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $3C.b		; 00 3C
	inc $FE18.w,X		; FE 18 FE
	bpl 124.b		; 10 7C
	bra -68.b		; 80 BC
	bra -124.b		; 80 84
	sta ($91.b),Y		; 91 91
	ora ($13.b)		; 12 13
	mvn $00,$54		; 54 54 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($C1.b,X)		; 01 C1
	and $3718EB.l,X		; 3F EB 18 37
	brk $37.b		; 00 37
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	asl $D7.b		; 06 D7
	bne  15.b		; D0 0F
	cpy #$0F.b		; C0 0F
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $F908.w		; 1C 08 F9
	rol $FF00.w,X		; 3E 00 FF
	brk $F3.b		; 00 F3
	brk $A7.b		; 00 A7
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $70.b,X		; 76 70
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $08CF00.l,X		; FF 00 CF 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $05.b		; 02 05
	ora $0A.b		; 05 0A
	phd		; 0B
	ora [$0F.b]		; 07 0F
	ora [$0D.b]		; 07 0D
	ror $00.b		; 66 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $0A.b		; 00 0A
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $66.b		; 00 66
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $2A15.w		; 0C 15 2A
	ora ($AF.b),Y		; 11 AF
	lda [$5F.b]		; A7 5F
	sta $FFFFFF.l,X		; 9F FF FF FF
	sbc $00007F.l,X		; FF 7F 00 00
	tsb $2A00.w		; 0C 00 2A
	brk $AF.b		; 00 AF
	brk $5F.b		; 00 5F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	tay		; A8
	pei ($DA.b)		; D4 DA
	sbc $ED.b		; E5 ED
	inc $FFF6.w,X		; FE F6 FF
	xce		; FB
	sbc $000000.l,X		; FF 00 00 00
	brk $60.b		; 00 60
	brk $D4.b		; 00 D4
	brk $E5.b		; 00 E5
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	clv		; B8
	sec		; 38
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$38.b		; C0 38
	bra 124.b		; 80 7C
	sed		; F8
	rol $0003.w,X		; 3E 03 00
	brk $01.b		; 00 01
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
	lda $76A9C8.l,X		; BF C8 A9 76
	asl $F9.b		; 06 F9
	adc $7E03.w,X		; 7D 03 7E
	ora $FE.b,S		; 03 FE
	ora $FE.b,S		; 03 FE
	ora ($FE.b,X)		; 01 FE
	brk $C8.b		; 00 C8
	brk $76.b		; 00 76
	brk $F8.b		; 00 F8
	ora ($08.b,X)		; 01 08
	phd		; 0B
	sec		; 38
	dec A		; 3A
	sei		; 78
	ply		; 7A
	sei		; 78
	tda		; 7B
	sei		; 78
	tda		; 7B
	ora $00F4.w,Y		; 19 F4 00
	sed		; F8
	bra  -8.b		; 80 F8
	pha		; 48
	dec $83BA.w		; CE BA 83
	lda $E02F80.l,X		; BF 80 2F E0
	tsb $FC.b		; 04 FC
	dey		; 88
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bcs  52.b		; B0 34
	tsb $7D.b		; 04 7D
	ora ($7F.b,X)		; 01 7F
	brk $5F.b		; 00 5F
	rti		; 40

	phd		; 0B
	dey		; 88
	lsr $7F00.w,X		; 5E 00 7F
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	bit $E61D.w,X		; 3C 1D E6
	jsr ($FC22.w,X)		; FC 22 FC
	asl $38.b		; 06 38
	tsb INIDSP.w		; 0C 00 21
	trb $221C.w		; 1C 1C 22
	jsl $380000.l		; 22 00 00 38
	jsr $00DC.w		; 20 DC 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $1E.b		; 00 1E
	eor $3C.b,S		; 43 3C
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	stx $3C.b		; 86 3C
	stx $30.b		; 86 30
	sty $30.b		; 84 30
	sty $7C.b		; 84 7C
	rti		; 40

	ror $3C42.w,X		; 7E 42 3C
	brk $3C.b		; 00 3C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	brk $04.b		; 00 04
	and ($04.b),Y		; 31 04
	and ($16.b),Y		; 31 16
	adc ($1C.b,S),Y		; 73 1C
	adc ($2C.b,S),Y		; 73 2C
	.db $62, $3C, $E2		; 62 3C E2
	jmp $C67CC2.l		; 5C C2 7C C6
	asl $1E10.w,X		; 1E 10 1E
	bpl  44.b		; 10 2C
	jsr $222E.w		; 20 2E 22
	jmp $405C40.l		; 5C 40 5C 40
	bit $3800.w,X		; 3C 00 38
	brk $05.b		; 00 05
	trb $0C05.w		; 1C 05 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	bra  32.b		; 80 20
	sta ($20.b,X)		; 81 20
	bra  33.b		; 80 21
	.db $82, $21, $80		; 82 21 80
	and $85.b,S		; 23 85
	and $87.b,S		; 23 87
	and ($87.b,X)		; 21 87
	jsr $00C0.w		; 20 C0 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $C1.b		; 00 C1
	ora ($C0.b,X)		; 01 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $1E.b		; 00 1E
	brk $6F.b		; 00 6F
	brk $9F.b		; 00 9F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $04.b		; 00 04
	ora $0B.b		; 05 0B
	tas		; 1B
	ora ($73.b,S),Y		; 13 73
	and [$27.b]		; 27 27
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FE00.l,X		; FF 00 FE 01
	tad		; 5B
	tad		; 5B
	jmp $6C6C5C.l		; 5C 5C 6C 6C
	ror $76.b,X		; 76 76
	adc [$77.b],Y		; 77 77
	tda		; 7B
	tda		; 7B
	dec A		; 3A
	dec A		; 3A
	bmi  48.b		; 30 30
	beq   0.b		; F0 00
	sbc ($03.b)		; F2 03
	sed		; F8
	ora $E01FE0.l		; 0F E0 1F E0
	clc		; 18
	cpy #$C020.w		; C0 20 C0
	brk $00.b		; 00 00
	ora ($0F.b,X)		; 01 0F
	brk $ED.b		; 00 ED
	sbc ($C6.b,X)		; E1 C6
	dec $58.b		; C6 58
	cli		; 58
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stx $F0.b		; 86 F0
	ora $E12CF1.l,X		; 1F F1 2C E1
	lsr $38C3.w,X		; 5E C3 38
	.db $82, $7C, $86		; 82 7C 86
	beq -124.b		; F0 84
	sei		; 78
	tsb $505F.w		; 0C 5F 50
	ldx $5FA0.w		; AE A0 5F
	eor ($3C.b,X)		; 41 3C
	brk $7E.b		; 00 7E
	cop $F8.b		; 02 F8
	bra 124.b		; 80 7C
	tsb $F0.b		; 04 F0
	brk $63.b		; 00 63
	sta $5F6F97.l,X		; 9F 97 6F 5F
	and $5D59AE.l,X		; 3F AE 59 5D
	.db $62, $26, $19		; 62 26 19
	ora $010600.l,X		; 1F 00 06 01
	sta $006F00.l,X		; 9F 00 6F 00
	and $005900.l,X		; 3F 00 59 00
	.db $62, $00, $19		; 62 00 19
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	sbc $FFDFBF.l,X		; FF BF DF FF
	cmp $E2FFCF.l,X		; DF CF FF E2
	sbc $FAE779.l,X		; FF 79 E7 FA
	adc $FF7CF3.l,X		; 7F F3 7C FF
	brk $DF.b		; 00 DF
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E7.b		; 00 E7
	brk $7F.b		; 00 7F
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	sbc ($FE.b,S),Y		; F3 FE
	cmp $AC.b		; C5 AC
	sbc [$FD.b],Y		; F7 FD
	inc $BE.b		; E6 BE
	cmp ($BE.b,X)		; C1 BE
	cmp $F8.b,S		; C3 F8
	and [$BD.b]		; 27 BD
	sbc $F3.b,S		; E3 F3
	brk $C1.b		; 00 C1
	brk $E1.b		; 00 E1
	bmi -32.b		; 30 E0
	jsr $00DE.w		; 20 DE 00
	jmp.w [$1800]		; DC 00 18
	brk $9D.b		; 00 9D
	brk $BC.b		; 00 BC
	jmp ($3CDE.w,X)		; 7C DE 3C
	inc $BC1C.w,X		; FE 1C BC
	lsr $5EBC.w,X		; 5E BC 5E
	lsr $5E9E.w,X		; 5E 9E 5E
	stz $1EDE.w,X		; 9E DE 1E
	cli		; 58
	rol $3E1C.w,X		; 3E 1C 3E
	tsb $4C1E.w		; 0C 1E 4C
	asl $1F4C.w,X		; 1E 4C 1F
	sty $8C3F.w		; 8C 3F 8C
	and $013F00.l,X		; 3F 00 3F 01
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
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	ora [$F7.b]		; 07 F7
	ora $261F2F.l		; 0F 2F 1F 26
	ora $130311.l		; 0F 11 03 13
	ora $13.b,S		; 03 13
	ora [$F0.b]		; 07 F0
	sbc ($C1.b,S),Y		; F3 C1
	cmp $071F03.l		; CF 03 1F 07
	ora $001F00.l,X		; 1F 00 1F 00
	ora $010F01.l		; 0F 01 0F 01
	ora $F30700.l		; 0F 00 07 F3
	jsr ($F8F3.w,X)		; FC F3 F8
	sbc [$F0.b]		; E7 F0
	adc $F0FF80.l		; 6F 80 FF F0
	plx		; FA
	beq -24.b		; F0 E8
	beq   0.b		; F0 00
	sed		; F8
	cpx #$E1FC.w		; E0 FC E1
	sbc $FBC3.w,X		; FD C3 FB
	cop $F2.b		; 02 F2
	beq -16.b		; F0 F0
	cpx #$E0F0.w		; E0 F0 E0
	beq   0.b		; F0 00
	sed		; F8
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	brk $37.b		; 00 37
	php		; 08
	and $023E02.l,X		; 3F 02 3E 02
	and [$01.b],Y		; 37 01
	ora ($00.b,S),Y		; 13 00
	ora ($00.b),Y		; 11 00
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
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$6000.w		; C0 00 60
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
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
	brk $F8.b		; 00 F8
	brk $B0.b		; 00 B0
	brk $B0.b		; 00 B0
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0E.b		; 00 0E
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	asl $0618.w		; 0E 18 06
	asl $1E00.w,X		; 1E 00 1E
	brk $26.b		; 00 26
	clc		; 18
	and $182F18.l		; 2F 18 2F 18
	and [$08.b],Y		; 37 08
	asl A		; 0A
	asl A		; 0A
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	trb $1E21.w		; 1C 21 1E
	and $38.b,S		; 23 38
	jsl $10663C.l		; 22 3C 66 10
	mvp $4C,$18		; 44 18 4C
	cpx #$F008.w		; E0 08 F0
	php		; 08
	ora $203C01.l,X		; 1F 01 3C 20
	asl $1802.w,X		; 1E 02 18
	brk $3C.b		; 00 3C
	tsb $30.b		; 04 30
	brk $18.b		; 00 18
	php		; 08
	brk $00.b		; 00 00
	clv		; B8
	rti		; 40

	bmi -64.b		; 30 C0
	bvs -64.b		; 70 C0
	ldy #$2080.w		; A0 80 20
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $1C.b		; 00 1C
	lsr $1C.b		; 46 1C
	lsr $18.b		; 46 18
	mvp $44,$10		; 44 10 44
	bpl  68.b		; 10 44
	bpl  68.b		; 10 44
	clc		; 18
	jmp $6828.w		; 4C 28 68
	sec		; 38
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $7B.b		; 00 7B
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $16.b		; 00 16
	brk $0E.b		; 00 0E
	brk $01.b		; 00 01
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$32.b]		; 07 32
	rol $04.b,X		; 36 04
	ora $0D04.w		; 0D 04 0D
	tsb $0D.b		; 04 0D
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	adc $00EF00.l		; 6F 00 EF 00
	sbc $00FE00.l		; EF 00 FE 00
	jsr ($F000.w,X)		; FC 00 F0
	trb $FC70.w		; 1C 70 FC
	bcc -100.b		; 90 9C
	lsr $CFDE.w		; 4E DE CF
	cmp $E0DCCC.l,X		; DF CC DC E0
	cpx #$E0E0.w		; E0 E0 E0
	php		; 08
	php		; 08
	dey		; 88
	dey		; 88
	pla		; 68
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $05.b		; 02 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$D030.w		; C0 30 D0
	cpx $0000.w		; EC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	cpx $0000.w		; EC 00 00
	bra -128.b		; 80 80
	rti		; 40

	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	bvc -96.b		; 50 A0
	rts		; 60

	dey		; 88
	pla		; 68
	bcs -16.b		; B0 F0
	sei		; 78
	bra   0.b		; 80 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	brk $88.b		; 00 88
	bpl -96.b		; 10 A0
	bmi 112.b		; 30 70
	jmp ($190E.w,X)		; 7C 0E 19
	tsb $11.b		; 04 11
	asl $0C33.w,X		; 1E 33 0C
	jsl $1C6238.l		; 22 38 62 1C
	lsr $70.b		; 46 70
	cpy $38.b		; C4 38
	sty $0107.w		; 8C 07 01
	asl $0C10.w,X		; 1E 10 0C
	brk $3E.b		; 00 3E
	jsl $78001C.l		; 22 1C 00 78
	rti		; 40

	bit $F004.w,X		; 3C 04 F0
	bra  23.b		; 80 17
	bit $312E.w		; 2C 2E 31
	ora ($0C.b,S),Y		; 13 0C
	ora $040300.l		; 0F 00 03 04
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	bit $3100.w		; 2C 00 31
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $67.b		; 00 67
	sbc $3D7FF0.l,X		; FF F0 7F 3D
	sbc ($FD.b,S),Y		; F3 FD
	rol $BC7B.w,X		; 3E 7B BC
	cmp $7766.w,X		; DD 66 77
	sed		; F8
	sbc $00FF01.l,X		; FF 01 FF 00
	adc $00F300.l,X		; 7F 00 F3 00
	rol $BC00.w,X		; 3E 00 BC
	brk $66.b		; 00 66
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	ora ($20.b,X)		; 01 20
	trb $0339.w		; 1C 39 03
	ora ($07.b,S),Y		; 13 07
	ora #$0507.w		; 09 07 05
	ora ($04.b,X)		; 01 04
	ora ($1E.b,X)		; 01 1E
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	ora $011F00.l,X		; 1F 00 1F 01
	ora $000701.l		; 0F 01 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($1C.b,X)		; 01 1C
	trb $7832.w		; 1C 32 78
	inc $F8.b,X		; F6 F8
	inc $F9.b,X		; F6 F9
	sbc [$F8.b]		; E7 F8
	lda [$C8.b],Y		; B7 C8
	sbc [$88.b],Y		; F7 88
	sbc [$08.b],Y		; F7 08
	sbc [$00.b],Y		; F7 00
	brk $FC.b		; 00 FC
	cpx #$E0F8.w		; E0 F8 E0
	sed		; F8
	cpy #$83F8.w		; C0 F8 83
	wai		; CB
	jsl $6961AA.l		; 22 AA 61 69
	sbc ($E9.b,X)		; E1 E9
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	cop $06.b		; 02 06
	ora ($0C.b,X)		; 01 0C
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	beq  24.b		; F0 18
	beq  24.b		; F0 18
	cpx #$C018.w		; E0 18 C0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	jsr $08E8.w		; 20 E8 08
	cpx #$F000.w		; E0 00 F0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	tas		; 1B
	asl $1F.b		; 06 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	ora ($1B.b,X)		; 01 1B
	ora ($0B.b,X)		; 01 0B
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	ora $05.b		; 05 05
	ora $07.b,S		; 03 07
	ora $06.b,S		; 03 06
	and ($31.b,S),Y		; 33 31
	ora $2F370B.l		; 0F 0B 37 2F
	ora $050002.l,X		; 1F 02 00 05
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $33.b		; 00 33
	brk $0F.b		; 00 0F
	brk $37.b		; 00 37
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	beq -33.b		; F0 DF
	sbc ($7C.b),Y		; F1 7C
	sta ($DE.b,S),Y		; 93 DE
	adc ($8C.b),Y		; 71 8C
	ply		; 7A
	bra 124.b		; 80 7C
	cpx #$E098.w		; E0 98 E0
	stz $EF.b		; 64 EF
	brk $EE.b		; 00 EE
	brk $8C.b		; 00 8C
	brk $4E.b		; 00 4E
	brk $44.b		; 00 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  24.b		; 80 18
	brk $DA.b		; 00 DA
	eor $DE.b,S		; 43 DE
	rti		; 40

	and $3C05E0.l		; 2F E0 05 3C
	ora ($FF.b,X)		; 01 FF
	cpy $FB.b		; C4 FB
	sbc [$F8.b]		; E7 F8
	ora $80.b,S		; 03 80
	bit $3F00.w,X		; 3C 00 3F
	brk $1F.b		; 00 1F
	bra  11.b		; 80 0B
	iny		; C8
	cop $F2.b		; 02 F2
	bra  -8.b		; 80 F8
	cpy #$00F8.w		; C0 F8 00
	jsr ($0701.w,X)		; FC 01 07
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	ora $0C.b,S		; 03 0C
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	bvc  28.b		; 50 1C
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	cpy #$E018.w		; C0 18 E0
	bmi -32.b		; 30 E0
	bmi -128.b		; 30 80
	bmi -128.b		; 30 80
	jsr $08E8.w		; 20 E8 08
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	beq  16.b		; F0 10
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	ora #$D3D7.w		; 09 D7 D3
	and $FFFFCF.l		; 2F CF FF FF
	sbc $9F3FFF.l,X		; FF FF 3F 9F
	sbc $FFEFDF.l,X		; FF DF EF FF
	sbc $2F00D7.l		; EF D7 00 2F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $EC.b		; 00 EC
	sbc ($F6.b)		; F2 F6
	sbc $FDFFFB.l,X		; FF FB FF FD
	sbc $FFF9FE.l,X		; FF FE F9 FF
.INDEX 8
	sep #$D6		; E2 D6
	xce		; FB
	inc $F2F3.w		; EE F3 F2
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	clc		; 18
	cpx #$10.b		; E0 10
	bvs  -7.b		; 70 F9
	sec		; 38
	sbc $BF19.w,Y		; F9 19 BF
	trb $1D1E.w		; 1C 1E 1D
	trb $3C1D.w		; 1C 1D 3C
	ora $753C.w,X		; 1D 3C 75
	tsb $7C70.w		; 0C 70 7C
	and $187D.w,Y		; 39 7D 18
	jmp ($3E1F.w,X)		; 7C 1F 3E
	ora $1D3E.w,X		; 1D 3E 1D
	ror $7E1D.w,X		; 7E 1D 7E
	ora $0E.b		; 05 0E
	cpx #$8C.b		; E0 8C
	bvs  24.b		; 70 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	sei		; 78
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $01FF01.l,X		; 7F 01 FF 01
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora ($F7.b,X)		; 01 F7
	ora $1C1F6F.l		; 0F 6F 1F 1C
	ora $7D7C.w,X		; 1D 7C 7D
	jsr ($F8FD.w,X)		; FC FD F8
	sbc $FBF8.w,Y		; F9 F8 FB
	cpy #$C7.b		; C0 C7
	ora ($3F.b,X)		; 01 3F
	ora [$3F.b]		; 07 3F
	and $001F00.l,X		; 3F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $002F00.l,X		; 1F 00 2F 00
	eor $BB00.w,X		; 5D 00 BB
	brk $1D.b		; 00 1D
	ora $0D0D.w,X		; 1D 0D 0D
	ora ($01.b,X)		; 01 01
	tsb $0D0C.w		; 0C 0C 0D
	ora $1404.w		; 0D 04 14
	clc		; 18
	dec A		; 3A
	and ($76.b)		; 32 76
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $F800.w,X		; FE 00 F8
	brk $F7.b		; 00 F7
	brk $DF.b		; 00 DF
	brk $E9.b		; 00 E9
	brk $6E.b		; 00 6E
	brk $E3.b		; 00 E3
	sbc $E3.b,S		; E3 E3
	sbc $86.b,S		; E3 86
	sta [$48.b]		; 87 48
	eor $87D8D0.l		; 4F D0 D8 87
	lda [$41.b]		; A7 41
	eor [$48.b],Y		; 57 48
	cmp $0C07.w,Y		; D9 07 0C
	ora $18.b,S		; 03 18
	ora $300718.l		; 0F 18 07 30
	asl $1F30.w		; 0E 30 1F
	and ($0E.b),Y		; 31 0E
	adc ($0C.b,X)		; 61 0C
	adc ($03.b,X)		; 61 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $101F10.l,X		; 1F 10 1F 10
	asl $3F00.w		; 0E 00 3F
	and ($3E.b,X)		; 21 3E
	jsr $2080.w		; 20 80 20
	cpy #$60.b		; C0 60
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $BF00.w,X		; 7D 00 BF
	cpy #$BF.b		; C0 BF
	jsr $00FF.w		; 20 FF 00
	ror $5700.w,X		; 7E 00 57
	cmp #$F916.w		; C9 16 F9
	tsb $3171.w		; 0C 71 31
	and ($09.b)		; 32 09
	php		; 08
	cmp $04.b		; C5 04
	sbc ($00.b),Y		; F1 00
	xce		; FB
	brk $B6.b		; 00 B6
	bra  39.b		; 80 27
	and ($0E.b,X)		; 21 0E
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lsr $58C3.w,X		; 5E C3 58
	cmp $BC.b,S		; C3 BC
	stx $B0.b		; 86 B0
	stx $B8.b		; 86 B8
	tsb $0CE0.w		; 0C E0 0C
	bne  24.b		; D0 18
	cpx #$18.b		; E0 18
	bit $3E00.w,X		; 3C 00 3E
	cop $78.b		; 02 78
	brk $7C.b		; 00 7C
	tsb $70.b		; 04 70
	brk $38.b		; 00 38
	php		; 08
	ldy #$80.b		; A0 80
	bne -48.b		; D0 D0
	cpx #$10.b		; E0 10
	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	jsr $C000.w		; 20 00 C0
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra  32.b		; 80 20
	jsr $E0E0.w		; 20 E0 E0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	brk $C0.b		; 00 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	eor $3940.w,Y		; 59 40 39
	rts		; 60

	ora $3F60.w,X		; 1D 60 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	adc ($C0.b)		; 72 C0
	tsa		; 3B
	cpy #$7F.b		; C0 7F
	brk $4F.b		; 00 4F
	jsr $305F.w		; 20 5F 30
	tsa		; 3B
	ora ($3A.b)		; 12 3A
	ora ($39.b,S),Y		; 13 39
	asl A		; 0A
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	jsr $0420.w		; 20 20 04
	brk $04.b		; 00 04
	brk $06.b		; 00 06
	cop $30.b		; 02 30
	asl A		; 0A
	and ($0C.b)		; 32 0C
	dec A		; 3A
	tsb $2E.b		; 04 2E
	bpl  20.b		; 10 14
	sec		; 38
	tsb $20.b		; 04 20
	bmi 100.b		; 30 64
	clc		; 18
	jmp $080C.w		; 4C 0C 08
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	sec		; 38
	jsr $0018.w		; 20 18 00
	bvs  64.b		; 70 40
	brk $32.b		; 00 32
	bit $16.b		; 24 16
	pla		; 68
	trb $0C78.w		; 1C 78 0C
	jmp ($9C00.w,X)		; 7C 00 9C
	rts		; 60

	clv		; B8
	rts		; 60

	clv		; B8
	rts		; 60

	trb $1810.w		; 1C 10 18
	bpl  20.b		; 10 14
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $0010.w		; 20 10 00
	bpl   0.b		; 10 00
	asl $1C63.w,X		; 1E 63 1C
	.db $62, $38, $62		; 62 38 62
	bit $1866.w,X		; 3C 66 18
	cpy $10.b		; C4 10
	cpy $18.b		; C4 18
	cpy $C810.w		; CC 10 C8
	bit $3E20.w,X		; 3C 20 3E
	jsl $58405C.l		; 22 5C 40 58
	rti		; 40

	jmp ($7844.w,X)		; 7C 44 78
	rti		; 40

	bvs  64.b		; 70 40
	sei		; 78
	pha		; 48
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	bra  -8.b		; 80 F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	brk $3F.b		; 00 3F
	brk $03.b		; 00 03
	tsb $C1.b		; 04 C1
	cop $E0.b		; 02 E0
	ora $C0.b,S		; 03 C0
	and ($00.b,X)		; 21 00
	sbc ($E0.b),Y		; F1 E0
	sed		; F8
	ora ($1B.b,S),Y		; 13 1B
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	jsr $1020.w		; 20 20 10
	bpl 111.b		; 10 6F
	brk $6E.b		; 00 6E
	brk $69.b		; 00 69
	ora [$F8.b]		; 07 F8
	ora $FA87F4.l		; 0F F4 87 FA
	sta $3C.b,S		; 83 3C
	sta ($5F.b,X)		; 81 5F
	cmp ($24.b,X)		; C1 24
	ldy $21.b,X		; B4 21
	bcs  32.b		; B0 20
	bcs  37.b		; B0 25
	and $7A.b		; 25 7A
	cop $7C.b		; 02 7C
	brk $FF.b		; 00 FF
	sta ($3E.b,X)		; 81 3E
	brk $A0.b		; 00 A0
	bmi   0.b		; 30 00
	clc		; 18
	beq  24.b		; F0 18
	rts		; 60

	tsb $8CF8.w		; 0C F8 8C
	bmi -124.b		; 30 84
	jmp ($18C6.w,X)		; 7C C6 18
	rep #$40		; C2 40
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	bvs   0.b		; 70 00
	jsr ($3884.w,X)		; FC 84 38
	brk $7C.b		; 00 7C
	rti		; 40

	tas		; 1B
	and [$27.b]		; 27 27
	eor $353F5B.l,X		; 5F 5B 3F 35
	tad		; 5B
	ora $271F37.l		; 0F 37 1F 27
	tda		; 7B
	ora [$B7.b],Y		; 17 B7
	tda		; 7B
	and [$00.b]		; 27 00
	eor $003F00.l,X		; 5F 00 3F 00
	tad		; 5B
	brk $37.b		; 00 37
	brk $27.b		; 00 27
	brk $17.b		; 00 17
	brk $7B.b		; 00 7B
	brk $ED.b		; 00 ED
	sbc ($5E.b,S),Y		; F3 5E
	sbc $8D81FC.l		; EF FC 81 8D
	sbc ($7E.b,X)		; E1 7E
	cpx #$2E.b		; E0 2E
	cpx #$94.b		; E0 94
	beq -56.b		; F0 C8
	sed		; F8
	sbc ($00.b,S),Y		; F3 00
	cpx #$00.b		; E0 00
	stx $01.b		; 86 01
	sta [$31.b]		; 87 31
	lda [$28.b]		; A7 28
	sta $02CF00.l,X		; 9F 00 CF 02
	sbc [$00.b]		; E7 00
	sbc $07F400.l,X		; FF 00 F4 07
	sbc ($1E.b,X)		; E1 1E
	sbc ($10.b,X)		; E1 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $021A00.l,X		; 3F 00 1A 02
	bpl -112.b		; 10 90
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $70FF20.l,X		; 7F 20 FF 70
	adc $78FFF8.l,X		; 7F F8 FF 78
	lda $30DF70.l,X		; BF 70 DF 30
	adc $0C3F08.l,X		; 7F 08 3F 0C
	sta $F7376F.l		; 8F 6F 37 F7
	dec A		; 3A
	plx		; FA
	and $17F9.w,Y		; 39 F9 17
	adc [$07.b],Y		; 77 07
	adc [$03.b],Y		; 77 03
	tsa		; 3B
	brk $1C.b		; 00 1C
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	ldy #$A0.b		; A0 A0
	jsr $40A0.w		; 20 A0 40
	cpy #$50.b		; C0 50
	bne   0.b		; D0 00
	brk $C0.b		; 00 C0
	brk $B0.b		; 00 B0
	cpy #$F8.b		; C0 F8
	bra -12.b		; 80 F4
	php		; 08
	sed		; F8
	trb $36DC.w		; 1C DC 36
	lsr $0033.w,X		; 5E 33 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $3C.b		; 00 3C
	clc		; 18
	pla		; 68
	bpl 112.b		; 10 70
	brk $60.b		; 00 60
	brk $40.b		; 00 40
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
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	php		; 08
	ora [$16.b],Y		; 17 16
	ora $2F2F17.l		; 0F 17 2F 2F
	ora $005F2F.l,X		; 1F 2F 5F 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	brk $1C.b		; 00 1C
	brk $3B.b		; 00 3B
	trb $1F3E.w		; 1C 3E 1F
	sbc $9B7D1F.l,X		; FF 1F 7D 9B
	ldx $D9.b		; A6 D9
	txy		; 9B
	jsr ($FEBF.w,X)		; FC BF FE
	brk $00.b		; 00 00
	bpl  28.b		; 10 1C
	trb $1B3F.w		; 1C 3F 1B
	and $D81F81.l,X		; 3F 81 1F D8
	ora $FC.b,S		; 03 FC
	ora ($FE.b,X)		; 01 FE
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $1F.b		; 00 1F
	brk $32.b		; 00 32
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $0C.b		; 00 0C
	brk $60.b		; 00 60
	ora $3ECD35.l,X		; 1F 35 CD 3E
	cpy #$30.b		; C0 30
	ora $C010E0.l		; 0F E0 10 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $0A.b,S		; 03 0A
	php		; 08
	cmp $00C0C0.l		; CF C0 C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $3CC3.w,Y		; 79 C3 3C
	sbc ($9E.b,X)		; E1 9E
	sbc ($0F.b),Y		; F1 0F
	sed		; F8
	ora [$0C.b]		; 07 0C
	ora $06.b,S		; 03 06
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	bit $9F00.w,X		; 3C 00 9F
	sta ($4F.b,X)		; 81 4F
	eor ($07.b,X)		; 41 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	bpl  -4.b		; 10 FC
	cop $3E.b		; 02 3E
	ora $1F.b,S		; 03 1F
	ora ($0B.b,X)		; 01 0B
	tsb $01.b		; 04 01
	asl $01.b		; 06 01
	ora $00.b,S		; 03 00
	ora $60.b,S		; 03 60
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	ora ($06.b,X)		; 01 06
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	cpx #$0F.b		; E0 0F
	rts		; 60

	ora $F00770.l,X		; 1F 70 07 F0
	phd		; 0B
	sei		; 78
	lda $3C.b		; A5 3C
	sep #$0E		; E2 0E
	beq -122.b		; F0 86
	eor $203F40.l,X		; 5F 40 3F 20
	ora $909F00.l		; 0F 00 9F 90
	cmp [$40.b]		; C7 40
	cmp $00.b,S		; C3 00
	sbc ($00.b),Y		; F1 00
	tda		; 7B
	cop $38.b		; 02 38
	sep #$88		; E2 88
	sbc $1E.b,S		; E3 1E
	adc ($CC.b,S),Y		; 73 CC
	adc ($8C.b),Y		; 71 8C
	and ($CC.b),Y		; 31 CC
	and ($E4.b),Y		; 31 E4
	and ($CC.b),Y		; 31 CC
	tas		; 1B
	stz $3E82.w,X		; 9E 82 3E
	jsl $9E40CC.l		; 22 CC 40 9E
	bpl -34.b		; 10 DE
	bpl -18.b		; 10 EE
	jsr $00CE.w		; 20 CE 00
	inc $02.b		; E6 02
	sbc $5F7E.w,Y		; F9 7E 5F
	and $131E2D.l,X		; 3F 2D 1E 13
	ora $030F.w		; 0D 0F 03
	ora $1D0500.l,X		; 1F 00 05 1D
	txa		; 8A
	sei		; 78
	ror $3F00.w,X		; 7E 00 3F
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	brk $17.b		; 00 17
	bpl -40.b		; 10 D8
	adc [$3F.b]		; 67 3F
	cpy #$F7.b		; C0 F7
	tsb $86FA.w		; 0C FA 86
	inc $7F01.w,X		; FE 01 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	bra  98.b		; 80 62
	cop $C0.b		; 02 C0
	brk $0B.b		; 00 0B
	php		; 08
	ora $84.b		; 05 84
	ora ($41.b,X)		; 01 41
	brk $A0.b		; 00 A0
	ora $2F0F4F.l		; 0F 4F 0F 2F
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
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	ora [$07.b]		; 07 07
	and [$0F.b],Y		; 37 0F
	sbc [$0F.b],Y		; F7 0F
	xce		; FB
	ora [$FB.b]		; 07 FB
	ora [$FD.b]		; 07 FD
	ora $FE.b,S		; 03 FE
	ora #$1EE7.w		; 09 E7 1E
	xce		; FB
	ora [$00.b]		; 07 00
	ora $C11F01.l,X		; 1F 01 1F C1
	cmp $E0EFE1.l		; CF E1 EF E0
	sbc [$00.b]		; E7 00
	ora $BE82.w,Y		; 19 82 BE
	sta ($87.b,X)		; 81 87
	cpx $1F.b		; E4 1F
	cpx #$1E.b		; E0 1E
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	cpx #$08.b		; E0 08
	cpx #$30.b		; E0 30
	cpy #$E0.b		; C0 E0
	brk $C0.b		; 00 C0
	sbc ($12.b)		; F2 12
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0E1100.l		; 0F 00 11 0E
	and $1E390C.l,X		; 3F 0C 39 1E
	adc ($3F.b)		; 72 3F
	adc [$3C.b]		; 67 3C
	bit $0000.w,X		; 3C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0F0C.w		; 0E 0C 0F
	clc		; 18
	ora $243F32.l,X		; 1F 32 3F 24
	bit $0000.w,X		; 3C 00 00
	adc $007F00.l,X		; 7F 00 7F 00
	rol $00.b,X		; 36 00
	ror $00.b,X		; 76 00
	adc $ED00.w		; 6D 00 ED
	brk $DB.b		; 00 DB
	brk $7B.b		; 00 7B
	brk $31.b		; 00 31
	and ($29.b),Y		; 31 29
	and #$0B02.w		; 29 02 0B
	eor ($5B.b)		; 52 5B
	bit $36.b		; 24 36
	stz $76.b		; 64 76
	ora #$092D.w		; 09 2D 09
	ora $19FF.w		; 0D FF 19
	sbc $00BF0E.l,X		; FF 0E BF 00
	lda $BD00.w,X		; BD 00 BD
	brk $B5.b		; 00 B5
	brk $B5.b		; 00 B5
	brk $B7.b		; 00 B7
	brk $09.b		; 00 09
	ora $4E46.w,Y		; 19 46 4E
	bpl  80.b		; 10 50
	bcc -46.b		; 90 D2
	bcc -46.b		; 90 D2
	bcc -38.b		; 90 DA
	bcc -38.b		; 90 DA
	sta ($DA.b)		; 92 DA
	sta $E3.b,X		; 95 E3
	eor ($A1.b)		; 52 A1
	bvs   1.b		; 70 01
	beq   1.b		; F0 01
	and ($C1.b,X)		; 21 C1
	pld		; 2B
	dec $77.b		; C6 77
	sty $986E.w		; 8C 6E 98
	cpx #$00.b		; E0 00
	ldy #$80.b		; A0 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	sta ($80.b,X)		; 81 80
	sta $80.b,S		; 83 80
	ora [$00.b]		; 07 00
	cmp $DA31.w,X		; DD 31 DA
	and ($F4.b,S),Y		; 33 F4
	asl $E0.b,X		; 16 E0
	trb $80FC.w		; 1C FC 80
	inc $FF00.w,X		; FE 00 FF
	brk $EF.b		; 00 EF
	bmi  14.b		; 30 0E
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	trb $0E0E.w		; 1C 0E 0E
	stx $B6.b		; 86 B6
	dec $FE30.w		; CE 30 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	bpl  -4.b		; 10 FC
	bmi  -4.b		; 30 FC
	bvs  -4.b		; 70 FC
	beq -128.b		; F0 80
	bcs  14.b		; B0 0E
	asl $DEDE.w		; 0E DE DE
	dec $C4CE.w		; CE CE C4
	pei ($80.b)		; D4 80
	clv		; B8
	jsr $6078.w		; 20 78 60
	sed		; F8
	jsr ($FCF0.w,X)		; FC F0 FC
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	beq  -8.b		; F0 F8
	cpx #$78.b		; E0 78
	cpx #$98.b		; E0 98
	rts		; 60

	cpx #$F8.b		; E0 F8
	cpx #$F8.b		; E0 F8
	cpx #$F0.b		; E0 F0
	cpx #$F0.b		; E0 F0
	cpx #$F0.b		; E0 F0
	rts		; 60

	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs -16.b		; 70 F0
	tya		; 98
	sed		; F8
	sty $CC78.w		; 8C 78 CC
	beq  24.b		; F0 18
	cpx #$30.b		; E0 30
	cpy #$60.b		; C0 60
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	rts		; 60

	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3D.b		; 00 3D
	ora $0F.b,S		; 03 0F
	cop $3F.b		; 02 3F
	ora ($67.b,X)		; 01 67
	clc		; 18
	eor $20F834.l,X		; 5F 34 F8 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	clc		; 18
	clc		; 18
	plp		; 28
	jsr $0010.w		; 20 10 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	clv		; B8
	cpy #$FC.b		; C0 FC
	eor $F5.b,S		; 43 F5
	sta $10E7.w		; 8D E7 10
	sbc $1C.b		; E5 1C
	ora ($07.b,X)		; 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	asl A		; 0A
	php		; 08
	ora $080B10.l,X		; 1F 10 0B 08
	cop $02.b		; 02 02
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bne  30.b		; D0 1E
	pea $7D07.w		; F4 07 7D
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -24.b		; 80 E8
	php		; 08
	plx		; FA
	cop $FE.b		; 02 FE
	brk $F0.b		; 00 F0
	tsb $7C.b		; 04 7C
	asl $FC.b		; 06 FC
	stx $38.b		; 86 38
	.db $82, $7C, $C2		; 82 7C C2
	asl $3E43.w,X		; 1E 43 3E
	sbc $0C.b,S		; E3 0C
	sbc ($FC.b,X)		; E1 FC
	tsb $F8.b		; 04 F8
	brk $78.b		; 00 78
	brk $FE.b		; 00 FE
	.db $82, $3E, $02		; 82 3E 02
	jmp ($1C40.w,X)		; 7C 40 1C
	brk $BE.b		; 00 BE
	ldy #$03.b		; A0 03
	stz $17.b		; 64 17
	sec		; 38
	ora $010F01.l,X		; 1F 01 0F 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sec		; 38
	jsr $0000.w		; 20 00 00
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	ldy #$C0.b		; A0 C0
	beq -32.b		; F0 E0
	sed		; F8
	bvs  -4.b		; 70 FC
	clc		; 18
	dec A		; 3A
	trb $1C3F.w		; 1C 3F 1C
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	rts		; 60

	beq  16.b		; F0 10
	sec		; 38
	clc		; 18
	trb $1E1C.w		; 1C 1C 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sei		; 78
	bmi -108.b		; 30 94
	sei		; 78
	.db $82, $18, $4C		; 82 18 4C
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	bpl 120.b		; 10 78
	brk $7C.b		; 00 7C
	php		; 08
	clv		; B8
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	adc $BB7701.l,X		; 7F 01 77 BB
	sbc $3FFE3F.l,X		; FF 3F FE 3F
	lda $BB7E.w,X		; BD 7E BB
	adc $020000.l,X		; 7F 00 00 02
	brk $01.b		; 00 01
	brk $BB.b		; 00 BB
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $C0.b		; 00 C0
	brk $20.b		; 00 20
	cpy #$D7.b		; C0 D7
	inx		; E8
	tsx		; BA
	cmp [$EF.b]		; C7 EF
	sbc $3FFF7F.l,X		; FF 7F FF 3F
	sbc $00FF9F.l,X		; FF 9F FF 00
	brk $C0.b		; 00 C0
	brk $E8.b		; 00 E8
	brk $C7.b		; 00 C7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	cpy #$80.b		; C0 80
	cpx #$D0.b		; E0 D0
	bne -32.b		; D0 E0
	inx		; E8
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $2C.b		; 00 2C
	cmp [$80.b],Y		; D7 80
	jsr ($40E0.w,X)		; FC E0 40
	beq  64.b		; F0 40
	sed		; F8
	cpy #$F8.b		; C0 F8
	cpy $F8.b		; C4 F8
	stx $F8.b		; 86 F8
	ora $28.b,S		; 03 28
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $26.b		; 04 26
	jsl $387894.l		; 22 94 78 38
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	ora $080718.l,X		; 1F 18 07 08
	ora [$0B.b]		; 07 0B
	ora [$0B.b]		; 07 0B
	ora [$0D.b]		; 07 0D
	ora $0A.b,S		; 03 0A
	ora ($0C.b,X)		; 01 0C
	brk $09.b		; 00 09
	ora #$0000.w		; 09 00 00
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	adc [$A8.b],Y		; 77 A8
	lda $00FF50.l		; AF 50 FF 00
	cmp $C09FE0.l		; CF E0 9F C0
	lda $807F80.l,X		; BF 80 7F 80
	adc $280101.l,X		; 7F 01 01 28
	brk $50.b		; 00 50
	brk $00.b		; 00 00
	bra -16.b		; 80 F0
	tya		; 98
	sed		; F8
	sec		; 38
	sed		; F8
	bit $7CBC.w,X		; 3C BC 7C
	jsr ($001F.w,X)		; FC 1F 00
	and $007E00.l,X		; 3F 00 7E 00
	ror $3E00.w,X		; 7E 00 3E
	brk $0D.b		; 00 0D
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $0E.b		; 00 0E
	asl $1D1D.w		; 0E 1D 1D
	dec A		; 3A
	tsa		; 3B
	dec A		; 3A
	tsa		; 3B
	asl $07.b		; 06 07
	tsb $06.b		; 04 06
	tsb $0C0E.w		; 0C 0E 0C
	asl $17FF.w		; 0E FF 17
	adc $0D7F1B.l		; 6F 1B 7F 0D
	sbc $03EF06.l		; EF 06 EF 03
	plb		; AB
	ora ($A9.b,X)		; 01 A9
	brk $AD.b		; 00 AD
	brk $91.b		; 00 91
	lda [$09.b],Y		; B7 09
	txy		; 9B
	tsb $8D.b		; 04 8D
	.db $42, $56		; 42 56
	eor ($53.b,X)		; 41 53
	bra -43.b		; 80 D5
	bra -42.b		; 80 D6
	sty $D6.b		; 84 D6
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
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
	brk $5E.b		; 00 5E
	cpy #$17.b		; C0 17
	bvs   4.b		; 70 04
	trb $0701.w		; 1C 01 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $202F80.l,X		; BF 80 2F 20
	phd		; 0B
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $5CF1.w		; 9C F1 5C
	adc ($CC.b),Y		; 71 CC
	ora ($3C.b,X)		; 01 3C
	ora $38.b,S		; 03 38
	inc $7C00.w,X		; FE 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $21AF41.l		; 4F 41 AF 21
	sbc $02FE01.l,X		; FF 01 FE 02
	mvp $00,$44		; 44 44 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpx #$40.b		; E0 40
	bvs -96.b		; 70 A0
	sec		; 38
	cpx #$38.b		; E0 38
	cpx #$38.b		; E0 38
	rti		; 40

	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	bra  64.b		; 80 40
	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	and $0C1F1E.l,X		; 3F 1E 1F 0C
	asl $0C00.w,X		; 1E 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	asl $0E08.w,X		; 1E 08 0E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	bra  64.b		; 80 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	ror $E12C.w,X		; 7E 2C E1
	adc $E02E00.l,X		; 7F 00 2E E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $00FF41.l,X		; 5F 41 FF 00
	eor $9F6740.l,X		; 5F 40 67 9F
	and $3F5F07.l,X		; 3F 07 5F 3F
	eor $5FA73F.l,X		; 5F 3F A7 5F
	inc $7E21.w,X		; FE 21 7E
	and #$A9FF.w		; 29 FF A9
	sta $000700.l,X		; 9F 00 07 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $200040.l,X		; 1F 40 00 20
	tay		; A8
	plp		; 28
	jsr $9F28.w		; 20 28 9F
	sbc $BDDFBF.l,X		; FF BF DF BD
	dec $E09F.w		; CE 9F E0
	lda $FC.b,X		; B5 FC
	adc $C779E8.l,X		; 7F E8 79 C7
	adc $00FFC1.l,X		; 7F C1 FF 00
	cmp $00CE00.l,X		; DF 00 CE 00
	bra   0.b		; 80 00
	sty $06.b		; 84 06
	bpl   1.b		; 10 01
	sec		; 38
	brk $3E.b		; 00 3E
	brk $F8.b		; 00 F8
	beq -16.b		; F0 F0
	jsr ($FC70.w,X)		; FC 70 FC
	cpx $8218.w		; EC 18 82
	jsr ($CCB2.w,X)		; FC B2 CC
	plp		; 28
	stz $18FC.w		; 9C FC 18
	beq   0.b		; F0 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	brk $1C.b		; 00 1C
	rti		; 40

	clc		; 18
	brk $FC.b		; 00 FC
	ora ($F6.b,X)		; 01 F6
	php		; 08
	sbc [$08.b],Y		; F7 08
	sbc ($0C.b,S),Y		; F3 0C
	cmp ($06.b,X)		; C1 06
	cpy #$03.b		; C0 03
	cpy #$01.b		; C0 01
	bra   0.b		; 80 00
	sbc [$E1.b]		; E7 E1
	adc $686F68.l		; 6F 68 6F 68
	cmp [$C4.b]		; C7 C4
	ora $02.b,S		; 03 02
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra  64.b		; 80 40
	bra  32.b		; 80 20
	cpy #$30.b		; C0 30
	lsr $98.b		; 46 98
	ora $C4.b,S		; 03 C4
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	beq -112.b		; F0 90
	sei		; 78
	rti		; 40

	phd		; 0B
	tsb $19.b		; 04 19
	asl $D7.b		; 06 D7
	tsb $0CF7.w		; 0C F7 0C
	sbc [$0C.b],Y		; F7 0C
	sbc [$0E.b],Y		; F7 0E
	sbc [$0F.b],Y		; F7 0F
	sbc $070017.l,X		; FF 17 00 07
	brk $0E.b		; 00 0E
	ora ($0D.b,X)		; 01 0D
	cmp ($CD.b,X)		; C1 CD
	cmp ($CD.b,X)		; C1 CD
	.db $82, $AE, $83		; 82 AE 83
	lda $FF3713.l		; AF 13 37 FF
	brk $FE.b		; 00 FE
	ora $FC.b,S		; 03 FC
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	php		; 08
	sbc $E0FF30.l,X		; FF 30 FF E0
	sbc $7C7CC0.l,X		; FF C0 7C 7C
	bra -125.b		; 80 83
	beq -13.b		; F0 F3
	cpx #$E0.b		; E0 E0
	cmp $CB.b,S		; C3 CB
	and $3B.b,S		; 23 3B
	cmp [$F7.b]		; C7 F7
	cmp [$E7.b]		; C7 E7
	tas		; 1B
	brk $1B.b		; 00 1B
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora $0D09.w		; 0D 09 0D
	ora ($05.b,X)		; 01 05
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $00.b,X		; 76 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	tda		; 7B
	brk $7D.b		; 00 7D
	brk $FD.b		; 00 FD
	brk $1F.b		; 00 1F
	cpx #$32.b		; E0 32
	sbc ($36.b,S),Y		; F3 36
	lda $33BB33.l,X		; BF 33 BB 33
	tyx		; BB
	and $1CBD.w,Y		; 39 BD 1C
	stz $1E1C.w,X		; 9E 1C 1E
	rts		; 60

	rts		; 60

	eor $E741.w		; 4D 41 E7
	cpy #$E0.b		; C0 E0
	bra -32.b		; 80 E0
	rti		; 40

	beq -64.b		; F0 C0
	cpx $B280.w		; EC 80 B2
	brk $9A.b		; 00 9A
	ora ($DE.b,X)		; 01 DE
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	bra  64.b		; 80 40
	rti		; 40

	bra -64.b		; 80 C0
	brk $90.b		; 00 90
	bpl  92.b		; 10 5C
	dey		; 88
	cpx $6C4D.w		; EC 4D 6C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	bmi  63.b		; 30 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $0F0C.w		; CC 0C 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	php		; 08
	ora ($07.b,X)		; 01 07
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora [$03.b]		; 07 03
	asl $0E07.w		; 0E 07 0E
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora $05.b,S		; 03 05
	ora $2F.b		; 05 2F
	adc ($2E.b,X)		; 61 2E
	rts		; 60

	and $200F20.l		; 2F 20 0F 20
	ora $100730.l,X		; 1F 30 07 10
	ora $080318.l		; 0F 18 03 08
	lsr $1F40.w,X		; 5E 40 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	jsr $000F.w		; 20 0F 00
	ora $000710.l,X		; 1F 10 07 00
	ora $FF0008.l		; 0F 08 00 FF
	bra  -1.b		; 80 FF
	bra -32.b		; 80 E0
	rti		; 40

	rts		; 60

	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	cpx #$30.b		; E0 30
	lda $4040BF.l,X		; BF BF 40 40
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	ldy #$20.b		; A0 20
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	bne  16.b		; D0 10
	brk $FE.b		; 00 FE
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $007F00.l		; EF 00 7F 00
	lda $00BF00.l,X		; BF 00 BF 00
	lda $03.b,S		; A3 03
	cpy #$3F.b		; C0 3F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	and $30.b,S		; 23 30
	ora [$90.b],Y		; 17 90
	sta [$D0.b],Y		; 97 D0
	sta $C09CC0.l		; 8F C0 9C C0
	bit $033C.w,X		; 3C 3C 03
	ora $0F.b,S		; 03 0F
	asl $00F8.w		; 0E F8 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FE0200.l,X		; FF 00 02 FE
	ora $813DE0.l		; 0F E0 3D 81
	stz $07.b,X		; 74 07
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	cmp $C4.b		; C5 C4
	adc $80FE60.l,X		; 7F 60 FE 80
	plx		; FA
	cop $03.b		; 02 03
	asl $07.b		; 06 07
	tsb $0816.w		; 0C 16 08
	bit $2D19.w		; 2C 19 2D
	ora ($78.b),Y		; 11 78
	ora ($A9.b)		; 12 A9
	cop $69.b		; 02 69
	cop $05.b		; 02 05
	tsb $03.b		; 04 03
	brk $0F.b		; 00 0F
	php		; 08
	ora [$01.b]		; 07 01
	asl $0F10.w,X		; 1E 10 0F
	cop $1F.b		; 02 1F
	.db $42, $5F		; 42 5F
.ACCU 16
	rep #$E0		; C2 E0
	bpl -16.b		; 10 F0
	bpl 112.b		; 10 70
	bpl 112.b		; 10 70
	brk $70.b		; 00 70
	php		; 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $30.b		; 00 30
	ldy #$30.b		; A0 30
	cpy #$10.b		; C0 10
	bne  24.b		; D0 18
	cpx #$08.b		; E0 08
	pla		; 68
	php		; 08
	bcs -124.b		; B0 84
	mvn $E0,$C4		; 54 C4 E0
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	dey		; 88
	bvs -56.b		; 70 C8
	bvs -56.b		; 70 C8
	bmi  72.b		; 30 48
	bmi  72.b		; 30 48
	bmi  72.b		; 30 48
	bmi  72.b		; 30 48
	sei		; 78
	bpl -16.b		; 10 F0
	bra  48.b		; 80 30
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	rti		; 40

	bvs  64.b		; 70 40
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	jsr $3F00.w		; 20 00 3F
	brk $3D.b		; 00 3D
	brk $79.b		; 00 79
	brk $72.b		; 00 72
	brk $26.b		; 00 26
	brk $2E.b		; 00 2E
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $1C.b		; 00 1C
	trb $1A18.w		; 1C 18 1A
	bmi  54.b		; 30 36
	jsr $042D.w		; 20 2D 04
	ora $1D0C.w,X		; 1D 0C 1D
	php		; 08
	asl A		; 0A
	brk $02.b		; 00 02
	cmp ($3C.b,S),Y		; D3 3C
	lda ($66.b,X)		; A1 66
	ldy #$63.b		; A0 63
	tay		; A8
	adc ($AC.b,X)		; 61 AC
	rts		; 60

	dec $5F20.w		; CE 20 5F
	bmi 103.b		; 30 67
	bpl   8.b		; 10 08
	php		; 08
	trb $1E04.w		; 1C 04 1E
	cop $1F.b		; 02 1F
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	bra  31.b		; 80 1F
	bcc -45.b		; 90 D3
	cpx $C03F.w		; EC 3F C0
	xce		; FB
	trb $306E.w		; 1C 6E 30
	and ($09.b,S),Y		; 33 09
	phd		; 0B
	and $3207.w,Y		; 39 07 32
	ora $00E832.l,X		; 1F 32 E8 00
	cpy #$00.b		; C0 00
	bpl  30.b		; 10 1E
	brk $39.b		; 00 39
	ora #$140D.w		; 09 0D 14
	ora ($1C.b),Y		; 11 1C
	bpl  12.b		; 10 0C
	brk $8F.b		; 00 8F
	bvs -63.b		; 70 C1
	rol $1CE7.w,X		; 3E E7 1C
	sbc ($0E.b,S),Y		; F3 0E
	adc $FF83.w,X		; 7D 83 FF
	cpy #$3F.b		; C0 3F
	cpy #$FF.b		; C0 FF
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $0B.b		; 02 0B
	php		; 08
	ora $04.b		; 05 04
	cop $82.b		; 02 82
	jmp.w [$1EDC]		; DC DC 1E
	dec $DE1E.w,X		; DE 1E DE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	rti		; 40

	adc #$B794.w		; 69 94 B7
	pha		; 48
	sbc [$0F.b],Y		; F7 0F
	lda [$6F.b],Y		; B7 6F
	sta $00006F.l,X		; 9F 6F 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $94.b		; 00 94
	brk $48.b		; 00 48
	brk $0F.b		; 00 0F
	brk $6F.b		; 00 6F
	brk $6F.b		; 00 6F
	brk $30.b		; 00 30
	jmp $807E.w		; 4C 7E 80
	inc $FD7C.w,X		; FE 7C FD
	ror $FEFF.w,X		; 7E FF FE
	sbc $FFF7FF.l,X		; FF FF F7 FF
	adc $004CB3.l		; 6F B3 4C 00
	bra   0.b		; 80 00
	jmp ($7E00.w,X)		; 7C 00 7E
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $B3.b		; 00 B3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$E0.b		; E0 E0
	bpl -16.b		; 10 F0
	cpx #$D0.b		; E0 D0
	cpx #$A0.b		; E0 A0
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $10.b		; 00 10
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $D0.b		; 00 D0
	brk $7E.b		; 00 7E
	cpy #$7E.b		; C0 7E
	brk $7E.b		; 00 7E
	bpl  31.b		; 10 1F
	bmi  15.b		; 30 0F
	bit $1F.b,X		; 34 1F
	tsb $1F.b		; 04 1F
	tsb $0F.b		; 04 0F
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $0E.b		; 00 0E
	ora ($35.b,X)		; 01 35
	asl $5F3F.w		; 0E 3F 5F
	adc $FF3F3F.l,X		; 7F 3F 3F FF
	lda $FFFF7F.l,X		; BF 7F FF FF
	inc $EF.b,X		; F6 EF
	ora ($00.b,X)		; 01 00
	asl $5F00.w		; 0E 00 5F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $F8.b		; 00 F8
	tsb $FC.b		; 04 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	cpy #$3F.b		; C0 3F
	cpy #$80.b		; C0 80
	bra  32.b		; 80 20
	jsr $F0F0.w		; 20 F0 F0
	sei		; 78
	sei		; 78
	dec A		; 3A
	dec A		; 3A
	and ($32.b)		; 32 32
	asl $0ECE.w		; 0E CE 0E
	dec $00FF.w		; CE FF 00
	sbc [$F8.b],Y		; F7 F8
	sbc $FCFBF8.l,X		; FF F8 FB FC
	adc $7EBDFC.l,X		; 7F FC BD 7E
	sbc $18E604.l,X		; FF 04 E6 18
	brk $00.b		; 00 00
	adc $FD.b		; 65 FD
	adc ($FE.b)		; 72 FE
	adc ($FE.b)		; 72 FE
	sec		; 38
	inc $FE00.w,X		; FE 00 FE
	rti		; 40

	cpy $80.b		; C4 80
	sta ($6F.b,X)		; 81 6F
	cmp $FFDF3F.l,X		; DF 3F DF FF
	and $FDBF7F.l,X		; 3F 7F BF FD
	adc $4D7FB3.l,X		; 7F B3 7F 4D
	and ($32.b,S),Y		; 33 32
	ora ($DF.b,X)		; 01 DF
	brk $DF.b		; 00 DF
	brk $3F.b		; 00 3F
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $33.b		; 00 33
	brk $01.b		; 00 01
	brk $E9.b		; 00 E9
	cop $E5.b		; 02 E5
	asl $FC.b		; 06 FC
	asl $1FF9.w,X		; 1E F9 1F
	rts		; 60

	sta $20DF20.l,X		; 9F 20 DF 20
	eor $7940.w,X		; 5D 40 79
	cmp $C2DBC2.l,X		; DF C2 DB C2
	eor $42.b,S		; 43 42
	mvp $1D,$44		; 44 44 1D
	ora $9898.w,X		; 1D 98 98
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	beq -120.b		; F0 88
	beq -120.b		; F0 88
	bmi -120.b		; 30 88
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	beq -128.b		; F0 80
	plp		; 28
	.db $62, $12, $72		; 62 12 72
	php		; 08
	and $1D05.w,Y		; 39 05 1D
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	trb $2C00.w		; 1C 00 2C
	jsr $1016.w		; 20 16 10
	asl A		; 0A
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	rts		; 60

	plp		; 28
	cpx #$E8.b		; E0 E8
	ldy #$F8.b		; A0 F8
	bra  -4.b		; 80 FC
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $02.b		; 06 02
	asl $06.b		; 06 06
	asl $0F07.w		; 0E 07 0F
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $087318.l		; 6F 18 73 08
	adc $0C.b,X		; 75 0C
	tsx		; BA
	asl $BD.b		; 06 BD
	ora $DC.b,S		; 03 DC
	ora ($7C.b,X)		; 01 7C
	brk $00.b		; 00 00
	brk $47.b		; 00 47
	cpy #$4F.b		; C0 4F
	iny		; C8
	adc $E0.b,S		; 63 E0
	and ($70.b),Y		; 31 70
	bmi 112.b		; 30 70
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$1C22.w		; 09 22 1C
	rol $30.b		; 26 30
	stz $18.b		; 64 18
	jmp $C870.w		; 4C 70 C8
	bmi -104.b		; 30 98
	cpx #$38.b		; E0 38
	cpx #$10.b		; E0 10
	asl $3802.w,X		; 1E 02 38
	jsr $041C.w		; 20 1C 04
	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	cpx #$80.b		; E0 80
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	sbc $003F00.l,X		; FF 00 3F 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $000300.l,X		; 1F 00 03 00
	ora $00.b,S		; 03 00
	ora $0C0C00.l,X		; 1F 00 0C 0C
	php		; 08
	php		; 08
	asl $16.b,X		; 16 16
	asl $021E.w,X		; 1E 1E 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	trb $3E7F.w		; 1C 7F 3E
	sbc $CB3E.w,X		; FD 3E CB
	bit $18C6.w,X		; 3C C6 18
	mvp $38,$00		; 44 00 38
	cpy #$00.b		; C0 00
	brk $1C.b		; 00 1C
	trb $3E38.w		; 1C 38 3E
	bmi 126.b		; 30 7E
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	bra  56.b		; 80 38
	brk $00.b		; 00 00
	sbc $DEEDFE.l,X		; FF FE ED DE
	sta [$FE.b]		; 87 FE
	adc $FEFFFF.l,X		; 7F FF FF FE
	bcs  -2.b		; B0 FE
	cmp $FEF3.w		; CD F3 FE
	sbc ($FE.b,X)		; E1 FE
	brk $DE.b		; 00 DE
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $63.b		; 00 63
	phb		; 8B
	cpx $C733.w		; EC 33 C7
	bpl -33.b		; 10 DF
	bpl -29.b		; 10 E3
	trb $1CE3.w		; 1C E3 1C
	eor [$18.b]		; 47 18
	sta $0C9390.l		; 8F 90 93 0C
	ora $00.b,S		; 03 00
	rts		; 60

	clc		; 18
	bvs  20.b		; 70 14
	jmp ($F89C.w,X)		; 7C 9C F8
	clc		; 18
	sbc ($31.b),Y		; F1 31
	adc ($01.b,X)		; 61 01
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $83.b		; 00 83
	.db $82, $1E, $CF		; 82 1E CF
	bmi -81.b		; 30 AF
	bvc -44.b		; 50 D4
	adc $C04EB0.l		; 6F B0 4E C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $05.b		; 00 05
	tsb $9F.b		; 04 9F
	bcc -97.b		; 90 9F
	bne -54.b		; D0 CA
	nop		; EA
	php		; 08
	pla		; 68
	beq  64.b		; F0 40
	sed		; F8
	rti		; 40

	jsr ($7E40.w,X)		; FC 40 7E
	jsr $1C7E.w		; 20 7E 1C
	rol $1E00.w,X		; 3E 00 1E
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $38.b		; 00 38
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
	asl $3F0C.w,X		; 1E 0C 3F
	asl $0073.w,X		; 1E 73 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	ora ($2C.b)		; 12 2C
	jsr $190E.w		; 20 0E 19
	asl $13.b		; 06 13
	trb $3C27.w		; 1C 27 3C
	cop $7E.b		; 02 7E
	brk $76.b		; 00 76
	clc		; 18
	ply		; 7A
	bit $3C7A.w,X		; 3C 7A 3C
	ora [$01.b]		; 07 01
	trb $0210.w		; 1C 10 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	clc		; 18
	bpl  60.b		; 10 3C
	sec		; 38
	bit $3C38.w,X		; 3C 38 3C
	dec A		; 3A
	trb $103E.w		; 1C 3E 10
	and $3D0E.w,X		; 3D 0E 3D
	asl $1E39.w		; 0E 39 1E
	and ($1C.b,S),Y		; 33 1C
	asl $08.b,X		; 16 08
	tsb $1800.w		; 0C 00 18
	trb $1010.w		; 1C 10 10
	tsb $0C0E.w		; 0C 0E 0C
	asl $1E18.w		; 0E 18 1E
	bpl  30.b		; 10 1E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	clc		; 18
	brk $7C.b		; 00 7C
	ora $7B.b,S		; 03 7B
	sty $875C.w		; 8C 5C 87
	ora $0B.b		; 05 0B
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora [$41.b]		; 07 41
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	sty $8700.w		; 8C 00 87
	brk $0B.b		; 00 0B
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $41.b		; 00 41
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	adc ($7F.b),Y		; 71 7F
	sed		; F8
	sbc $FFF0FF.l,X		; FF FF F0 FF
	sbc [$F8.b]		; E7 F8
	cmp $FFCFFF.l		; CF FF CF FF
	brk $00.b		; 00 00
	adc ($00.b),Y		; 71 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $30.b		; 00 30
	pha		; 48
	sed		; F8
	tsb $64.b		; 04 64
	tya		; 98
	jmp ($7AFA.w,X)		; 7C FA 7A
	sbc $FEFD.w,X		; FD FD FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	pha		; 48
	brk $04.b		; 00 04
	brk $98.b		; 00 98
	brk $FA.b		; 00 FA
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	brk $A0.b		; 00 A0
	bne -64.b		; D0 C0
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $25.b		; 00 25
	trb $38CB.w		; 1C CB 38
	eor [$30.b],Y		; 57 30
	xba		; EB
	jsr $04DB.w		; 20 DB 04
	adc ($04.b),Y		; 71 04
	sbc ($0C.b,X)		; E1 0C
	cmp $1E.b,S		; C3 1E
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	and $809FA0.l		; 2F A0 9F 80
	and $843F04.l,X		; 3F 04 3F 84
	tyx		; BB
	dey		; 88
	lda $0098.w,Y		; B9 98 00
	rti		; 40

	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	cpy #$20.b		; C0 20
	cpy #$20.b		; C0 20
	cpx #$20.b		; E0 20
	cpy #$10.b		; C0 10
	cpx #$10.b		; E0 10
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	cpy #$60.b		; C0 60
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bpl -60.b		; 10 C4
	sec		; 38
	stz $08.b		; 64 08
	stz $1C.b		; 64 1C
	bit $02.b,X		; 34 02
	bmi  30.b		; 30 1E
	php		; 08
	ora $001F00.l,X		; 1F 00 1F 00
	sei		; 78
	rti		; 40

	clc		; 18
	brk $3C.b		; 00 3C
	bit $08.b		; 24 08
	brk $1C.b		; 00 1C
	bpl   4.b		; 10 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	tsb $0CF3.w		; 0C F3 0C
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $03FF03.l,X		; FF 03 FF 03
	sbc $077F07.l,X		; FF 07 7F 07
	cpx #$EC.b		; E0 EC
	cpx #$EC.b		; E0 EC
	beq -16.b		; F0 F0
	cmp ($C1.b,X)		; C1 C1
	tsa		; 3B
	tsa		; 3B
	xce		; FB
	xce		; FB
	adc ($77.b,S),Y		; 73 77
	and ($37.b,S),Y		; 33 37
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	cpy #$F1.b		; C0 F1
	cpy #$F2.b		; C0 F2
	cpy #$BB.b		; C0 BB
	cpy #$30.b		; C0 30
	bmi -16.b		; 30 F0
	beq  96.b		; F0 60
	rts		; 60

	bra -128.b		; 80 80
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -31.b		; 80 E1
	ora ($E1.b,X)		; 01 E1
	bpl  16.b		; 10 10
	mvn $6C,$54		; 54 54 6C
	mvp $10,$3A		; 44 3A 10
	rol $FC3C.w,X		; 3E 3C FC
	jsr ($30B2.w,X)		; FC B2 30
	asl $101C.w,X		; 1E 1C 10
	bpl  68.b		; 10 44
	mvn $7C,$00		; 54 00 7C
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	bne  -2.b		; D0 FE
	bpl  -2.b		; 10 FE
	brk $3F.b		; 00 3F
	rti		; 40

	bra -64.b		; 80 C0
	bra   0.b		; 80 00
	bra -16.b		; 80 F0
	ora $EF38CA.l		; 0F CA 38 EF
	bmi -31.b		; 30 E1
	and ($EC.b),Y		; 31 EC
	and $800080.l,X		; 3F 80 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	ldy #$8F.b		; A0 8F
	ldy #$AE.b		; A0 AE
	ldy #$20.b		; A0 20
	jsr $0E0F.w		; 20 0F 0E
	ora $2E0F0E.l		; 0F 0E 0F 2E
	asl $97E6.w		; 0E E6 97
	cpx #$BE.b		; E0 BE
	jsr $E09C.w		; 20 9C E0
	brk $00.b		; 00 00
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	tsb $1F.b		; 04 1F
	bit $3F.b		; 24 3F
	rts		; 60

	ror $00C0.w		; 6E C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $9F10.w,X		; 3D 10 9F
	php		; 08
	eor $00AF04.l		; 4F 04 AF 00
	sbc [$00.b]		; E7 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	asl $0600.w		; 0E 00 06
	brk $82.b		; 00 82
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	tsb $3E.b		; 04 3E
	rti		; 40

	ora $001F20.l,X		; 1F 20 1F 00
	ora $020704.l		; 0F 04 07 02
	ora $01.b,S		; 03 01
	ora ($00.b,X)		; 01 00
	tsb $6004.w		; 0C 04 60
	rti		; 40

	jsr $0720.w		; 20 20 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	asl $1F.b		; 06 1F
	brk $3F.b		; 00 3F
	ora ($7E.b,X)		; 01 7E
	ora $4E.b,S		; 03 4E
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   5.b		; 30 05
	adc $27.b,S		; 63 27
	phk		; 4B
	adc $BF4F07.l,X		; 7F 07 4F BF
	lda $7FBF7F.l,X		; BF 7F BF 7F
	adc [$8F.b],Y		; 77 8F
	tas		; 1B
	adc [$63.b]		; 67 63
	brk $4B.b		; 00 4B
	brk $07.b		; 00 07
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $8F.b		; 00 8F
	brk $67.b		; 00 67
	brk $DF.b		; 00 DF
	sbc $DEDFFF.l,X		; FF FF DF DE
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFEFD.l,X		; FF FD FE FF
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $D7.b		; 00 D7
	sbc $B027DF.l		; EF DF 27 B0
	eor $FE10EF.l		; 4F EF 10 FE
	ora $8278.w,X		; 1D 78 82
	txy		; 9B
	.db $42, $FC		; 42 FC
	cmp $EF.b,S		; C3 EF
	brk $27.b		; 00 27
	brk $4F.b		; 00 4F
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	ora $0E.b,S		; 03 0E
	.db $62, $4F, $53		; 62 4F 53
	ldy #$C0.b		; A0 C0
	bra -32.b		; 80 E0
	ldy #$C0.b		; A0 C0
	bvc -32.b		; 50 E0
	bvs -32.b		; 70 E0
	rti		; 40

	cpx #$FC.b		; E0 FC
	ora $72.b,S		; 03 72
	stx $00C0.w		; 8E C0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	brk $80.b		; 00 80
	sbc ($E8.b,X)		; E1 E8
	cmp $3E.b,S		; C3 3E
	cmp ($3E.b,X)		; C1 3E
	cpx #$1A.b		; E0 1A
	sbc ($13.b,X)		; E1 13
	jsr $6003.w		; 20 03 60
	ora ($E0.b,X)		; 01 E0
	ora ($E0.b,X)		; 01 E0
	brk $31.b		; 00 31
	bmi -93.b		; 30 A3
	ldx #$83.b		; A2 83
	.db $82, $00, $00		; 82 00 00
	ora ($C1.b,X)		; 01 C1
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$E0.b		; C0 E0
	bpl -32.b		; 10 E0
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	php		; 08
	bvs   8.b		; 70 08
	beq -120.b		; F0 88
	bmi -120.b		; 30 88
	sei		; 78
	iny		; C8
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sed		; F8
	dey		; 88
	bmi   0.b		; 30 00
	cpy #$30.b		; C0 30
	rts		; 60

	clc		; 18
	bmi -120.b		; 30 88
	trb $06C8.w		; 1C C8 06
	rts		; 60

	ora $001F30.l		; 0F 30 1F 00
	ora $E000.w		; 0D 00 E0
	jsr $10F0.w		; 20 F0 10
	beq -128.b		; F0 80
	bvs  64.b		; 70 40
	sec		; 38
	jsr $1010.w		; 20 10 10
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	phd		; 0B
	brk $0D.b		; 00 0D
	brk $0E.b		; 00 0E
	ora ($0F.b,X)		; 01 0F
	brk $0F.b		; 00 0F
	brk $05.b		; 00 05
	cop $87.b		; 02 87
	brk $87.b		; 00 87
	rti		; 40

	asl $00.b		; 06 00
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	and $071B07.l,X		; 3F 07 1B 07
	sei		; 78
	ora [$9B.b]		; 07 9B
	tsb $FC.b		; 04 FC
	ora $F8.b,S		; 03 F8
	ora [$DB.b]		; 07 DB
	ora [$AA.b]		; 07 AA
	asl $03.b		; 06 03
	ora $000F00.l		; 0F 00 0F 00
	ora $606C00.l		; 0F 00 6C 60
	pla		; 68
	eor $43.b,S		; 43 43
	tsb $24.b		; 04 24
	ora $54.b		; 05 54
	sta $C0BEE0.l,X		; 9F E0 BE C0
	sbc $CF00.w,X		; FD 00 CF
	brk $E2.b		; 00 E2
	brk $70.b		; 00 70
	bra  63.b		; 80 3F
	cpy #$5E.b		; C0 5E
	rts		; 60

	cop $F2.b		; 02 F2
	brk $F1.b		; 00 F1
	ora $87.b		; 05 87
	.db $42, $72		; 42 72
	jsr $903D.w		; 20 3D 90
	sta $A0CECE.l,X		; 9F CE CE A0
	and ($7B.b,X)		; 21 7B
	dey		; 88
	sbc [$98.b],Y		; F7 98
	xba		; EB
	bmi -61.b		; 30 C3
	rts		; 60

	sta ($C0.b,X)		; 81 C0
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc ($05.b),Y		; 71 05
	adc ($01.b,X)		; 61 01
	cmp ($01.b,X)		; C1 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $78.b,X		; 36 78
	rol $3C78.w,X		; 3E 78 3C
	sei		; 78
	jmp ($1C38.w,X)		; 7C 38 1C
	sec		; 38
	jmp $182438.l		; 5C 38 24 18
	tsb $1018.w		; 0C 18 10
	sei		; 78
	clc		; 18
	sei		; 78
	clc		; 18
	sei		; 78
	clc		; 18
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	sec		; 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	bit $3C18.w,X		; 3C 18 3C
	trb $1C3E.w		; 1C 3E 1C
	rol $3E1C.w,X		; 3E 1C 3E
	clc		; 18
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	clc		; 18
	tsb $1C1C.w		; 0C 1C 1C
	trb $1C18.w		; 1C 18 1C
	bpl  28.b		; 10 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$30.b],Y		; 17 30
	phd		; 0B
	clc		; 18
	ora $0C.b		; 05 0C
	cop $06.b		; 02 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	bne  32.b		; D0 20
	beq   0.b		; F0 00
	sed		; F8
	brk $BC.b		; 00 BC
	rti		; 40

	jsr ($F600.w,X)		; FC 00 F6
	brk $7A.b		; 00 7A
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	clc		; 18
	brk $1C.b		; 00 1C
	brk $EB.b		; 00 EB
	asl $59.b		; 06 59
	asl $5D.b		; 06 5D
	ora $54.b,S		; 03 54
	ora $76.b,S		; 03 76
	ora ($3E.b,X)		; 01 3E
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $41.b		; 00 41
	bvc  19.b		; 50 13
	and ($0A.b)		; 32 0A
	rol A		; 2A
	ora ($29.b,X)		; 01 29
	and $2D.b		; 25 2D
	tsb $060C.w		; 0C 0C 06
	asl $02.b		; 06 02
	cop $AC.b		; 02 AC
	bmi -41.b		; 30 D7
	clc		; 18
	xba		; EB
	tsb $06F5.w		; 0C F5 06
	sed		; F8
	sta $7A.b,S		; 83 7A
	cmp $3C.b,S		; C3 3C
	sbc ($AF.b,X)		; E1 AF
	adc ($D4.b,X)		; 61 D4
	ora [$EB.b],Y		; 17 EB
	phd		; 0B
	sbc $05.b,X		; F5 05
	sed		; F8
	brk $7E.b		; 00 7E
	cop $BC.b		; 02 BC
	bra  95.b		; 80 5F
	eor ($1E.b,X)		; 41 1E
	brk $80.b		; 00 80
	rts		; 60

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	tsb $1F.b		; 04 1F
	asl A		; 0A
	tsa		; 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	asl A		; 0A
	trb $10.b		; 14 10
	lda $FF3F7F.l,X		; BF 7F 3F FF
	adc $3F7FBF.l,X		; 7F BF 7F 3F
	plp		; 28
	ora $00010E.l,X		; 1F 0E 01 00
	ora ($01.b,X)		; 01 01
	ora $7F.b,S		; 03 7F
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $2B.b		; 00 2B
	cld		; D8
	sta $EC.b,X		; 95 EC
	tsx		; BA
	dec $7C.b		; C6 7C
	sta $FE.b,S		; 83 FE
	ora ($FF.b,X)		; 01 FF
	cpy #$0F.b		; C0 0F
	beq  -1.b		; F0 FF
	rti		; 40

	cmp [$00.b]		; C7 00
	sbc $00.b,S		; E3 00
	cmp ($00.b,X)		; C1 00
	clv		; B8
	sec		; 38
	bit $DE3C.w,X		; 3C 3C DE
	dec $7707.w,X		; DE 07 77
	bra  56.b		; 80 38
	sta $611F71.l		; 8F 71 1F 61
	and $817E41.l,X		; 3F 41 7E 81
	lda $C07F80.l,X		; BF 80 7F C0
	lda $00FF40.l,X		; BF 40 FF 00
	cpx $DD6D.w		; EC 6D DD
	cmp $1999.w,X		; DD 99 19
	mvn $4E,$15		; 54 15 4E
	asl $0E0E.w		; 0E 0E 0E
	ora $0E0E0F.l		; 0F 0F 0E 0E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	tsb $1E00.w		; 0C 00 1E
	tsb $1E39.w		; 0C 39 1E
	adc ($3F.b)		; 72 3F
	stz $3E.b		; 64 3E
	bvc  28.b		; 50 1C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $1E18.w		; 0C 18 1E
	and ($3F.b)		; 32 3F
	bit $3F.b		; 24 3F
	bpl  63.b		; 10 3F
	ora [$78.b],Y		; 17 78
	and $0E0342.l,X		; 3F 42 03 0E
	ora $3B.b		; 05 3B
	stz $B263.w		; 9C 63 B2
	eor $88.b,S		; 43 88
	asl $7CE0.w		; 0E E0 7C
	sei		; 78
	brk $42.b		; 00 42
	cop $02.b		; 02 02
	cop $0C.b		; 02 0C
	ora #$213C.w		; 09 3C 21
	jmp ($7440.w,X)		; 7C 40 74
	tsb $10.b		; 04 10
	bpl  20.b		; 10 14
	sbc ($C8.b),Y		; F1 C8
	lda $807F.w,Y		; B9 7F 80
	sbc $07FF07.l,X		; FF 07 FF 07
	adc $01FF83.l,X		; 7F 83 FF 01
	sbc $038F00.l,X		; FF 00 8F 03
	asl $80.b		; 06 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	clc		; 18
	clc		; 18
	rol $7F3E.w,X		; 3E 3E 7F
	cld		; D8
	adc $857A8C.l,X		; 7F 8C 7A 85
	adc $807C80.l,X		; 7F 80 7C 80
	ror $7E80.w,X		; 7E 80 7E
	bra  -2.b		; 80 FE
	brk $08.b		; 00 08
	inc A		; 1A
	php		; 08
	tsb $3430.w		; 0C 30 34
	bmi  52.b		; 30 34
	sec		; 38
	sec		; 38
	bit $3C3C.w,X		; 3C 3C 3C
	bit $1010.w,X		; 3C 10 10
	trb $2FC1.w		; 1C C1 2F
	adc ($1E.b,X)		; 61 1E
	bmi -121.b		; 30 87
	bmi -53.b		; 30 CB
	clc		; 18
	sbc [$0C.b]		; E7 0C
	sbc ($0C.b),Y		; F1 0C
	sed		; F8
	asl $7F.b		; 06 7F
	eor ($1E.b,X)		; 41 1E
	brk $2F.b		; 00 2F
	jsr $101F.w		; 20 1F 10
	ora [$00.b]		; 07 00
	eor $00.b,S		; 43 00
	sbc $00.b,S		; E3 00
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $70.b		; 00 70
	cpy #$78.b		; C0 78
	ldy #$3C.b		; A0 3C
	inx		; E8
	ora $000000.l		; 0F 00 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	pea $0004.w		; F4 04 00
	brk $00.b		; 00 00
	and $3F601F.l,X		; 3F 1F 60 3F
	rts		; 60

	and $600C60.l,X		; 3F 60 0C 60
	ora [$30.b]		; 07 30
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	ora $203F0F.l		; 0F 0F 3F 20
	ora $001F00.l,X		; 1F 00 1F 00
	and $101F20.l,X		; 3F 20 1F 10
	ora $3EDF08.l		; 0F 08 DF 3E
	adc $669D9E.l		; 6F 9E 9D 66
	sbc [$18.b]		; E7 18
	sbc ($0C.b,S),Y		; F3 0C
	lda $4DC6.w,Y		; B9 C6 4D
	adc ($A4.b)		; 72 A4
	tsa		; 3B
	tsb $847F.w		; 0C 7F 84
	lda $F86EE0.l,X		; BF E0 6E F8
	inc A		; 1A
	jsr ($7E0C.w,X)		; FC 0C 7E
	lsr $A6.b		; 46 A6
	jsl $E713D3.l		; 22 D3 13 E7
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $CF.b		; 00 CF
	brk $F3.b		; 00 F3
	brk $B8.b		; 00 B8
	brk $DC.b		; 00 DC
	brk $6F.b		; 00 6F
	brk $67.b		; 00 67
	adc $E61F18.l,X		; 7F 18 1F E6
	sbc [$49.b]		; E7 49
	adc $BEB2.w,Y		; 79 B2 BE
	tya		; 98
	cmp $276F4C.l,X		; DF 4C 6F 27
	lda [$C0.b],Y		; B7 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	jsr $20C0.w		; 20 C0 20
	cpx #$30.b		; E0 30
	bra  80.b		; 80 50
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ldy #$A0.b		; A0 A0
	bra -128.b		; 80 80
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora [$0B.b]		; 07 0B
	phb		; 8B
	ora [$87.b]		; 07 87
	eor $968F7F.l,X		; 5F 7F 8F 96
	adc $9669.w,Y		; 79 69 96
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	phd		; 0B
	brk $07.b		; 00 07
	brk $5F.b		; 00 5F
	brk $8F.b		; 00 8F
	brk $79.b		; 00 79
	brk $96.b		; 00 96
	brk $5F.b		; 00 5F
	lda $FF7FBF.l,X		; BF BF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $BF7FBF.l,X		; FF BF 7F BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	sbc $FDFFFE.l,X		; FF FE FF FD
	inc $FFC1.w,X		; FE C1 FF
	sta [$F9.b]		; 87 F9
	lda $FFBFFF.l,X		; BF FF BF FF
	bit $FFFF.w,X		; 3C FF FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	cpx #$B8.b		; E0 B8
	cpy $DF.b		; C4 DF
	jsr $FFFF.w		; 20 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sta $9F6EFF.l,X		; 9F FF 6E 9F
	cpx #$00.b		; E0 00
	cpy $00.b		; C4 00
	jsr $FF00.w		; 20 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	brk $4E.b		; 00 4E
	cpy #$3F.b		; C0 3F
	rts		; 60

	ora $020F20.l,X		; 1F 20 0F 02
	ora [$02.b]		; 07 02
	and $003F00.l,X		; 3F 00 3F 00
	and ($0E.b),Y		; 31 0E
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $000E.w		; 0E 0E 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	rti		; 40

	sed		; F8
	rts		; 60

	jsr ($0030.w,X)		; FC 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $61.b		; 00 61
	brk $71.b		; 00 71
	brk $7F.b		; 00 7F
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E00.w,X		; 1E 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
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
	adc $007F00.l,X		; 7F 00 7F 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	ora $000000.l		; 0F 00 00 00
	rol $3E3E.w,X		; 3E 3E 3E
	rol $1818.w,X		; 3E 18 18
	ora [$07.b]		; 07 07
	ora $0E0E0F.l		; 0F 0F 0E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F97F70.l,X		; FF 70 7F F9
	lda $3FDF7F.l,X		; BF 7F DF 3F
	cpy $DECC.w		; CC CC DE
	dec $3E3E.w,X		; DE 3E 3E
	stx $768E.w		; 8E 8E 76
	ror $38.b,X		; 76 38
	sbc $FF1E.w,Y		; F9 1E FF
	asl $FE7F.w		; 0E 7F FE
	ora ($7F.b,X)		; 01 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $2C.b		; 00 2C
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	ora [$3D.b]		; 07 3D
	sta ($9E.b,X)		; 81 9E
	rti		; 40

	sta $108F20.l		; 8F 20 8F 10
	sta $0C0718.l		; 8F 18 07 0C
	ora $06.b,S		; 03 06
	sbc $7E01.w,Y		; F9 01 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	tsb $0600.w		; 0C 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($1D.b)		; D2 1D
	sbc #$740E.w		; E9 0E 74
	ora [$3A.b]		; 07 3A
	sta $2D.b,S		; 83 2D
	sbc ($0A.b,X)		; E1 0A
	sei		; 78
	asl $1E.b		; 06 1E
	ora ($0F.b,X)		; 01 0F
	sbc #$F409.w		; E9 09 F4
	tsb $FA.b		; 04 FA
	cop $FD.b		; 02 FD
	sta ($5E.b,X)		; 81 5E
	rti		; 40

	ora [$10.b],Y		; 17 10
	ora #$0208.w		; 09 08 02
	cop $2F.b		; 02 2F
	brk $F6.b		; 00 F6
	ora ($F2.b,X)		; 01 F2
	ora ($7E.b,X)		; 01 7E
	sta ($3C.b,X)		; 81 3C
	cmp $90.b,S		; C3 90
	sbc $40.b,S		; E3 40
	adc ($20.b),Y		; 71 20
	bit $DA0A.w,X		; 3C 0A DA
	stz $7C.b,X		; 74 7C
	brk $0C.b		; 00 0C
	ora $810D.w		; 0D 0D 81
	sta ($41.b,X)		; 81 41
	eor ($A0.b,X)		; 41 A0
	jsr $10D0.w		; 20 D0 10
	bmi -104.b		; 30 98
	jsr $7008.w		; 20 08 70
	tsb $0C78.w		; 0C 78 0C
	bvs   6.b		; 70 06
	jmp ($B806.w,X)		; 7C 06 B8
	sta $7E.b,S		; 83 7E
	cmp $60.b,S		; C3 60
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jsr ($F804.w,X)		; FC 04 F8
	brk $7E.b		; 00 7E
	cop $BC.b		; 02 BC
	bra  16.b		; 80 10
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora ($00.b,X)		; 01 00
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	and $1F5F3F.l,X		; 3F 3F 5F 1F
	adc $FFBF7F.l,X		; 7F 7F BF FF
	adc $FFFF7F.l,X		; 7F 7F FF FF
	sbc $3F01FF.l,X		; FF FF 01 3F
	brk $5F.b		; 00 5F
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $01.b		; 00 01
	brk $3D.b		; 00 3D
	inc $FF7C.w,X		; FE 7C FF
	inc $FDFD.w,X		; FE FD FD
	inc $FCFB.w,X		; FE FB FC
	pea $F7FB.w		; F4 FB F7
	xce		; FB
	sbc $FB.b,X		; F5 FB
	inc $FF00.w,X		; FE 00 FF
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	ora ($F9.b,X)		; 01 F9
	ora ($F8.b,X)		; 01 F8
	brk $EE.b		; 00 EE
	ora $036B95.l,X		; 1F 95 6B 03
	sbc $7FF1.w,X		; FD F1 7F
	sbc ($0A.b,X)		; E1 0A
	adc $0EF108.l		; 6F 08 F1 0E
	adc ($0E.b),Y		; 71 0E
	ora $000300.l,X		; 1F 00 03 00
	sta ($00.b,X)		; 81 00
	ora ($00.b,X)		; 01 00
	bmi  12.b		; 30 0C
	sec		; 38
	txa		; 8A
	rol $FC4E.w,X		; 3E 4E FC
	tsb $0718.w		; 0C 18 07
	php		; 08
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$07.b]		; 07 07
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7E.b		; 00 7E
	bra  30.b		; 80 1E
	cpx #$0E.b		; E0 0E
	beq  -2.b		; F0 FE
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
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
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$40.b		; E0 40
	bvs -96.b		; 70 A0
	sec		; 38
	bne  24.b		; D0 18
	beq  28.b		; F0 1C
	sed		; F8
	tsb $0000.w		; 0C 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	bne  16.b		; D0 10
	cpx #$00.b		; E0 00
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $0FFF0F.l,X		; FF 0F FF 0F
	inc $F800.w,X		; FE 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	ora $000F0F.l		; 0F 0F 0F 00
	ora ($00.b,X)		; 01 00
	brk $7C.b		; 00 7C
	brk $E0.b		; 00 E0
	jsl $0060CC.l		; 22 CC 60 00
	cpy $80.b		; C4 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rol $7240.w,X		; 3E 40 72
	brk $FC.b		; 00 FC
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq 120.b		; F0 78
	sei		; 78
	and ($33.b,S),Y		; 33 33
	php		; 08
	ora $01BF3E.l		; 0F 3E BF 01
	sta ($3C.b,X)		; 81 3C
	ldy $0300.w,X		; BC 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc -36.b		; 50 DC
	inc A		; 1A
	jsr ($3C0B.w,X)		; FC 0B 3C
	ora $1C.b,S		; 03 1C
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	tay		; A8
	dey		; 88
	bit $24.b		; 24 24
	trb $14.b		; 14 14
	tsb $000C.w		; 0C 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	beq -16.b		; F0 F0
	sbc $7F80FF.l,X		; FF FF 80 7F
	cpy #$71.b		; C0 71
	cmp ($00.b,X)		; C1 00
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	sbc $0037EF.l		; EF EF 37 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpx #$00.b		; E0 00
	bmi  29.b		; 30 1D
	jsl $3F193E.l		; 22 3E 19 3F
	ora $3E1F3F.l,X		; 1F 3F 1F 3E
	ora $3E1F3E.l,X		; 1F 3E 1F 3E
	ora $223F5F.l,X		; 1F 5F 3F 22
	brk $19.b		; 00 19
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	bra  32.b		; 80 20
	cpy #$77.b		; C0 77
	iny		; C8
	pla		; 68
	sbc [$FF.b],Y		; F7 FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C8.b		; 00 C8
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $76.b		; 00 76
	php		; 08
	inc $0001.w,X		; FE 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $3E.b		; 00 3E
	rts		; 60

	ora $180F30.l,X		; 1F 30 0F 18
	ora [$0C.b]		; 07 0C
	ora $06.b,S		; 03 06
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	brk $60.b		; 00 60
	cpy #$70.b		; C0 70
	bra  48.b		; 80 30
	cpx #$38.b		; E0 38
	bne -100.b		; D0 9C
	pla		; 68
	dec $8080.w		; CE 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	bne  16.b		; D0 10
	pla		; 68
	php		; 08
	bit $04.b,X		; 34 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $FC.b,S		; 03 FC
	sbc $00FFE2.l		; EF E2 FF 00
	cmp $FF00C1.l		; CF C1 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $FF00.w		; 1C 00 FF
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	bit $2222.w,X		; 3C 22 22
	jsr $1120.w		; 20 20 11
	ora ($19.b),Y		; 11 19
	ora $2222.w,Y		; 19 22 22
	adc ($72.b)		; 72 72
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $007F00.l,X		; 7F 00 7F 00
	jsl $C0C022.l		; 22 22 C0 C0
	asl $06.b		; 06 06
	clc		; 18
	clc		; 18
	.db $62, $62, $22		; 62 62 22
	jsl $4A9414.l		; 22 14 94 4A
	dex		; CA
	tsb $03.b		; 04 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $04.b,S		; 03 04
	ora $2F1F13.l		; 0F 13 1F 2F
	and $00034F.l,X		; 3F 4F 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,S),Y		; 13 00
	and $004F00.l		; 2F 00 4F 00
	jsr $3080.w		; 20 80 30
	cmp $90609F.l		; CF 9F 60 90
	adc $61E33F.l		; 6F 3F E3 61
	sta $42BD42.l,X		; 9F 42 BD 42
	lda $0080.w,X		; BD 80 00
	cmp $006000.l		; CF 00 60 00
	adc $00E300.l		; 6F 00 E3 00
	sta $00BD00.l,X		; 9F 00 BD 00
	lda $1F00.w,X		; BD 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($04.b,X)		; 01 04
	ora $CE.b,S		; 03 CE
	and ($F7.b),Y		; 31 F7
	php		; 08
	xce		; FB
	tsb $70.b		; 04 70
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	cpx #$17.b		; E0 17
	bvs  11.b		; 70 0B
	sed		; F8
	ora $FC.b		; 05 FC
	cop $FE.b		; 02 FE
	ora ($FF.b,X)		; 01 FF
	brk $F1.b		; 00 F1
	brk $00.b		; 00 00
	adc $202F60.l,X		; 7F 60 2F 20
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and $001F00.l,X		; 3F 00 1F 00
	ora $030000.l		; 0F 00 00 03
	ora $04.b,S		; 03 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	eor [$38.b]		; 47 38
	and $00FF00.l,X		; 3F 00 FF 00
	inc $FD01.w,X		; FE 01 FD
	ora $F3.b,S		; 03 F3
	ora [$F7.b]		; 07 F7
	ora $38CF3F.l		; 0F 3F CF 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $070F03.l		; 0F 03 0F 07
	ora $F007F8.l		; 0F F8 07 F0
	php		; 08
	sbc ($48.b,S),Y		; F3 48
	cmp ($E8.b,S),Y		; D3 E8
	sbc #$FCF4.w		; E9 F4 FC
	sbc ($FF.b)		; F2 FF
	sed		; F8
	sbc $3000FC.l,X		; FF FC 00 30
	ora [$60.b]		; 07 60
	eor [$E0.b]		; 47 E0
	cmp [$F0.b]		; C7 F0
	cmp [$F4.b]		; C7 F4
	sbc $FA.b,S		; E3 FA
	beq  -4.b		; F0 FC
	sed		; F8
	inc $8070.w,X		; FE 70 80
	jsr $00C0.w		; 20 C0 00
	rts		; 60

	bcc  32.b		; 90 20
	sed		; F8
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	tsb $1EDC.w		; 0C DC 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	clv		; B8
	sec		; 38
	rti		; 40

	rti		; 40

	bra -100.b		; 80 9C
	sty $20BE.w		; 8C BE 20
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$A0.b		; C0 A0
	cpx #$D8.b		; E0 D8
	brk $DC.b		; 00 DC
	brk $EE.b		; 00 EE
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $FC.b		; 00 FC
	brk $C0.b		; 00 C0
	sec		; 38
	brk $3C.b		; 00 3C
	rti		; 40

	rts		; 60

	bvc 112.b		; 50 70
	tay		; A8
	clv		; B8
	plp		; 28
	clv		; B8
	plp		; 28
	clv		; B8
	bra -128.b		; 80 80
	bmi  48.b		; 30 30
	sed		; F8
	sec		; 38
	sec		; 38
	sty $98F0.w		; 8C F0 98
	rts		; 60

	bmi -64.b		; 30 C0
	rts		; 60

	bra  64.b		; 80 40
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	beq -128.b		; F0 80
	rts		; 60

	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $70.b		; 00 70
	dey		; 88
	cpy $F2F0.w		; CC F0 F2
	jsr ($FCF2.w,X)		; FC F2 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	dey		; 88
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $36.b		; 00 36
	sbc $FC32.w,X		; FD 32 FC
	sty $C4F2.w		; 8C F2 C4
	tsx		; BA
	ply		; 7A
	ldy $7CFE.w,X		; BC FE 7C
	inc $3A7C.w,X		; FE 7C 3A
	cpy $00FD.w		; CC FD 00
	jsr ($F200.w,X)		; FC 00 F2
	brk $BA.b		; 00 BA
	brk $BC.b		; 00 BC
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $0C.b		; 00 0C
	brk $C0.b		; 00 C0
	cpx #$E0.b		; E0 E0
	beq -32.b		; F0 E0
	sed		; F8
	pla		; 68
	jmp ($7CEC.w,X)		; 7C EC 7C
	jmp $187C.w		; 4C 7C 18
	sec		; 38
	bit $C018.w,X		; 3C 18 C0
	cpx #$E0.b		; E0 E0
	beq  96.b		; F0 60
	sed		; F8
	php		; 08
	jsr ($7E2C.w,X)		; FC 2C 7E
	jmp $187E.w		; 4C 7E 18
	rol $1818.w,X		; 3E 18 18
	adc $001F00.l,X		; 7F 00 1F 00
	ora $001B00.l,X		; 1F 00 1B 00
	and ($00.b,S),Y		; 33 00
	and ($00.b,S),Y		; 33 00
	rol $0F01.w,X		; 3E 01 0F
	brk $0D.b		; 00 0D
	ora $0101.w		; 0D 01 01
	ora $090D.w		; 0D 0D 09
	ora $1D11.w		; 0D 11 1D
	bpl  28.b		; 10 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $3C00.w,X		; 3D 00 3C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $F3.b		; 00 F3
	tsb $FE01.w		; 0C 01 FE
	brk $FF.b		; 00 FF
	bra 124.b		; 80 7C
	and ($E3.b,X)		; 21 E3
	bit $0EEF.w		; 2C EF 0E
	sbc $01F312.l		; EF 12 F3 01
	ora ($00.b,X)		; 01 00
	brk $0E.b		; 00 0E
	asl $1C1F.w		; 0E 1F 1C
	and $2F175F.l		; 2F 5F 17 2F
	ora $2F1707.l,X		; 1F 07 17 2F
	rol $5F1F.w		; 2E 1F 5F
	lda $2FBF5F.l,X		; BF 5F BF 2F
	eor $2F005F.l,X		; 5F 5F 00 2F
	brk $07.b		; 00 07
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $5F.b		; 00 5F
	brk $81.b		; 00 81
	inc $FF83.w,X		; FE 83 FF
	and $EF7FFF.l,X		; 3F FF 7F EF
	sbc $83FCCF.l,X		; FF CF FC 83
	jsr ($FF83.w,X)		; FC 83 FF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $CF.b		; 00 CF
	brk $83.b		; 00 83
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	cpy #$80.b		; C0 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora [$02.b]		; 07 02
	asl $01.b		; 06 01
	tsb $0C07.w		; 0C 07 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	rol $08.b,X		; 36 08
	adc $DA11.w		; 6D 11 DA
	and $94.b,S		; 23 94
	adc [$A8.b]		; 67 A8
	ror $5C90.w		; 6E 90 5C
	ldy #$78.b		; A0 78
	rti		; 40

	bmi   7.b		; 30 07
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	ora ($3A.b,X)		; 01 3A
	jsl $280414.l		; 22 14 04 28
	php		; 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	sta $C108EF.l		; 8F EF 08 C1
	ora $87.b,S		; 03 87
	ora [$0F.b],Y		; 17 0F
	ora $0F0F0F.l,X		; 1F 0F 0F 0F
	and $0C730E.l		; 2F 0E 73 0C
	eor [$5F.b]		; 47 5F
	bra -97.b		; 80 9F
	ora $1F.b,S		; 03 1F
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora [$1F.b]		; 07 1F
	tsb $1E.b		; 04 1E
	ora ($1D.b,X)		; 01 1D
	sbc $FE3FFE.l,X		; FF FE 3F FE
	cmp $E7DE.w		; CD DE E7
	cpx $F0F7.w		; EC F7 F0
	sbc $20FF70.l,X		; FF 70 FF 20
	sbc $FEFC00.l,X		; FF 00 FC FE
	trb $8CFF.w		; 1C FF 8C
	sbc $E0FFC4.l,X		; FF C4 FF E0
	jsr ($7830.w,X)		; FC 30 78
	bra -80.b		; 80 B0
	rti		; 40

	rti		; 40

	dec $DF3F.w,X		; DE 3F DF
	and $C30FC7.l,X		; 3F C7 0F C3
	ora [$C5.b]		; 07 C5
	ora ($83.b,X)		; 01 83
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $8E.b		; 00 8E
	lda $033F07.l,X		; BF 07 3F 03
	and $000F01.l,X		; 3F 01 0F 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $09.b		; 00 09
	asl $18.b		; 06 18
	ora $7F1F3C.l		; 0F 3C 1F 7F
	rol $007E.w,X		; 3E 7E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	asl $06.b		; 06 06
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $007F00.l,X		; 7F 00 7F 00
	ora $081700.l,X		; 1F 00 17 08
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	ora ($0C.b,S),Y		; 13 0C
	ora ($0E.b),Y		; 11 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0E0C.w		; 0C 0C 0E
	asl $7040.w		; 0E 40 70
	jsr $8030.w		; 20 30 80
	clc		; 18
	bne  24.b		; D0 18
	cpx #$0C.b		; E0 0C
	pla		; 68
	tsb $86F0.w		; 0C F0 86
	ora ($C3.b)		; 12 C3
	ldy #$20.b		; A0 20
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($7C04.w,X)		; 7C 04 7C
	rti		; 40

	trb $71.b		; 14 71
	bit $5EE1.w		; 2C E1 5E
	cmp $BC.b,S		; C3 BC
	stx $78.b		; 86 78
	tsb $18F0.w		; 0C F0 18
	cpx #$30.b		; E0 30
	cpy #$60.b		; C0 60
	rol $5E20.w		; 2E 20 5E
	rti		; 40

	ldy $7880.w,X		; BC 80 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $1F.b		; 00 1F
	asl $060F.w		; 0E 0F 06
	ora [$02.b]		; 07 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	cop $01.b		; 02 01
	ora [$00.b]		; 07 00
	ora $1E02.w		; 0D 02 1E
	phd		; 0B
	trb $3D03.w		; 1C 03 3D
	cop $3F.b		; 02 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $07.b		; 06 07
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
	brk $03.b		; 00 03
	cop $1E.b		; 02 1E
	and ($E0.b,X)		; 21 E0
	inc $FD02.w,X		; FE 02 FD
	eor [$00.b]		; 47 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	tsb $5F.b		; 04 5F
	rti		; 40

	ora $0A00.w,X		; 1D 00 0A
	cop $1F.b		; 02 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	cop $38.b		; 02 38
	sec		; 38
	ora $0D1D.w,X		; 1D 1D 0D
	ora $0101.w		; 0D 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $1CEF0E.l		; 8F 0E EF 1C
	sbc $08FF08.l,X		; FF 08 FF 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	ora [$7F.b]		; 07 7F
	tsb $CA1C.w		; 0C 1C CA
	dex		; CA
	ror A		; 6A
	ror A		; 6A
	bit $24.b		; 24 24
	sty $84.b		; 84 84
	phb		; 8B
	phb		; 8B
	plp		; 28
	plp		; 28
	brk $03.b		; 00 03
	cop $06.b		; 02 06
	ora $0C.b		; 05 0C
	ora [$10.b]		; 07 10
	ora $401E20.l		; 0F 20 1E 40
	dec A		; 3A
	ora $30.b,S		; 03 30
	sta $010101.l		; 8F 01 01 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	tsb $839A.w		; 0C 9A 83
	stz $07.b,X		; 74 07
	inx		; E8
	ora $801CD0.l		; 0F D0 1C 80
	bmi   0.b		; 30 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	ora ($FA.b,X)		; 01 FA
	cop $F4.b		; 02 F4
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($06.b,X)		; 01 06
	tsb $0B.b		; 04 0B
	phd		; 0B
	ora [$17.b],Y		; 17 17
	ora $5F1F27.l		; 0F 27 1F 5F
	and $003F5F.l,X		; 3F 5F 3F 00
	brk $06.b		; 00 06
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $0C.b		; 00 0C
	ora $1C.b,S		; 03 1C
	ora $3F.b,S		; 03 3F
	brk $3F.b		; 00 3F
	brk $70.b		; 00 70
	dey		; 88
	sed		; F8
	stz $F4.b,X		; 74 F4
	plx		; FA
	xce		; FB
	jsr ($FFFE.w,X)		; FC FE FF
	sbc [$FF.b]		; E7 FF
	cmp ($EF.b,S),Y		; D3 EF
	jmp.w [$88FB]		; DC FB 88
	brk $74.b		; 00 74
	brk $FA.b		; 00 FA
	brk $3C.b		; 00 3C
	cpy #$7F.b		; C0 7F
	bra 127.b		; 80 7F
	bra -17.b		; 80 EF
	brk $FB.b		; 00 FB
	brk $08.b		; 00 08
	asl $17.b,X		; 16 17
	php		; 08
	rol $DD5D.w		; 2E 5D DD
	and $FFFF3F.l,X		; 3F 3F FF FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $080016.l,X		; FF 16 00 08
	brk $5D.b		; 00 5D
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$A0.b		; A0 A0
	bne -64.b		; D0 C0
	beq -64.b		; F0 C0
	beq -48.b		; F0 D0
	cpx #$00.b		; E0 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora $0F.b,S		; 03 0F
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
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
	php		; 08
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	rti		; 40

	bvs -96.b		; 70 A0
	bmi -96.b		; 30 A0
	sec		; 38
	jmp $1E90.w		; 4C 90 1E
	rti		; 40

	sec		; 38
	ora [$38.b]		; 07 38
	ora [$80.b]		; 07 80
	brk $A0.b		; 00 A0
	jsr $00C0.w		; 20 C0 00
	bne  16.b		; D0 10
	bvs  16.b		; 70 10
	jsr $0000.w		; 20 00 00
	brk $04.b		; 00 04
	tsb $E0.b		; 04 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F6.b		; 00 F6
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	rol $26.b		; 26 26
	rol A		; 2A
	rol A		; 2A
	bpl  16.b		; 10 10
	bcc -112.b		; 90 90
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FE00.l,X		; FF 00 FE 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $42.b		; 00 42
	.db $42, $2E		; 42 2E
	rol $0202.w		; 2E 02 02
	ldx #$A2.b		; A2 A2
	ora ($12.b)		; 12 12
	jmp ($606C.w)		; 6C 6C 60
	rts		; 60

	inx		; E8
	inx		; E8
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	ora ($06.b,X)		; 01 06
	brk $0F.b		; 00 0F
	ora [$1F.b]		; 07 1F
	clc		; 18
	sei		; 78
	rol $E0.b		; 26 E0
	sta $3C81.w,X		; 9D 81 3C
	bit $0000.w,X		; 3C 00 00
	cop $02.b		; 02 02
	ora [$07.b]		; 07 07
	php		; 08
	php		; 08
	and [$20.b]		; 27 20
	eor $007E40.l,X		; 5F 40 7E 00
	sbc $0EF100.l,X		; FF 00 F1 0E
	ora ($FE.b,X)		; 01 FE
	sta $FC.b,S		; 83 FC
	cpy $F8.b		; C4 F8
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $C0.b		; 00 C0
	cpy #$60.b		; C0 60
	rts		; 60

	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	and $E00FF0.l		; 2F F0 0F E0
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cmp $C5.b		; C5 C5
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $7C0300.l,X		; 1F 00 03 7C
	eor $C2.b,S		; 43 C2
	adc $FD01.w,X		; 7D 01 FD
	ora ($F2.b,X)		; 01 F2
	ora $1C.b,S		; 03 1C
	ora $070000.l,X		; 1F 00 00 07
	ora [$1C.b]		; 07 1C
	trb $80BC.w		; 1C BC 80
	inc $FE00.w,X		; FE 00 FE
	brk $FD.b		; 00 FD
	ora ($E3.b,X)		; 01 E3
	ora $FF.b,S		; 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra 127.b		; 80 7F
	bra 104.b		; 80 68
	pla		; 68
	cpy #$C0.b		; C0 C0
	trb $14.b		; 14 14
	xce		; FB
	xce		; FB
	sei		; 78
	sei		; 78
	lda [$B7.b],Y		; B7 B7
	lda $1E1EAF.l		; AF AF 1E 1E
	bit $87.b,X		; 34 87
	tsa		; 3B
	sta $3D.b,S		; 83 3D
	eor ($1E.b,X)		; 41 1E
	jsr $100F.w		; 20 0F 10
	ora [$08.b]		; 07 08
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	tda		; 7B
	ora $7C.b,S		; 03 7C
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	beq  96.b		; F0 60
	bvs -96.b		; 70 A0
	sec		; 38
	bne  24.b		; D0 18
	cpy #$0C.b		; C0 0C
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $8020.w		; 20 20 80
	brk $D0.b		; 00 D0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	lsr $603F.w		; 4E 3F 60
	ora $AE00FF.l,X		; 1F FF 00 AE
	tad		; 5B
	adc [$88.b],Y		; 77 88
	tsa		; 3B
	mvp $44,$3A		; 44 3A 44
	ora $3F13.w		; 0D 13 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	ora $81.b,S		; 03 81
	tsb $43.b		; 04 43
	brk $43.b		; 00 43
	brk $10.b		; 00 10
	brk $3F.b		; 00 3F
	jsr ($3FFC.w,X)		; FC FC 3F
	jmp ($F8BF.w,X)		; 7C BF F8
	adc $937CDB.l,X		; 7F DB 7C 93
	jmp ($7C93.w,X)		; 7C 93 7C
	sbc [$98.b]		; E7 98
	jsr ($3F00.w,X)		; FC 00 3F
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $18.b		; 00 18
	brk $01.b		; 00 01
	sbc $F9807F.l,X		; FF 7F 80 F9
	eor $3CB6FA.l,X		; 5F FA B6 3C
	sta $7F.b,S		; 83 7F
	and $FF3F7E.l,X		; 3F 7E 3F FF
	rol $00FF.w,X		; 3E FF 00
	bra   0.b		; 80 00
	.db $42, $5A		; 42 5A
	and $B4.b,X		; 35 B4
	brk $DF.b		; 00 DF
	sec		; 38
	lda $3CBF3C.l,X		; BF 3C BF 3C
	and $C0D0A0.l,X		; 3F A0 D0 C0
	rol $87B4.w,X		; 3E B4 87
	inc $7701.w,X		; FE 01 77
	sed		; F8
	xce		; FB
	jsr ($FCFB.w,X)		; FC FB FC
	cmp [$38.b]		; C7 38
	bne   0.b		; D0 00
	brk $00.b		; 00 00
	tda		; 7B
	ora $81.b,S		; 03 81
	ora ($00.b,X)		; 01 00
	sed		; F8
	beq  -4.b		; F0 FC
	beq  -4.b		; F0 FC
	brk $F8.b		; 00 F8
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $F00F00.l,X		; FF 00 0F F0
	sta $7C40F0.l		; 8F F0 40 7C
	bra -16.b		; 80 F0
	brk $E0.b		; 00 E0
	and $7B3D.w,X		; 3D 3D 7B
	tda		; 7B
	ora [$07.b]		; 07 07
	dec $C6.b		; C6 C6
	rts		; 60

	rts		; 60

	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	jsr ($F800.w,X)		; FC 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D8.b		; 00 D8
	cld		; D8
	bcs -80.b		; B0 B0
	rts		; 60

	rts		; 60

	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs  15.b		; 70 0F
	and $3902.w,Y		; 39 02 39
	brk $1D.b		; 00 1D
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	ora ($16.b,X)		; 01 16
	ora ($16.b,X)		; 01 16
	ora ($0C.b,X)		; 01 0C
	tsb $020E.w		; 0C 0E 02
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	jsr $2080.w		; 20 80 20
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ora $14.b,S		; 03 14
	ora $3C.b,S		; 03 3C
	ora $7C.b,S		; 03 7C
	cop $F8.b		; 02 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $19.b		; 00 19
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora #$0000.w		; 09 00 00
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
	brk $3C.b		; 00 3C
	cpy #$0C.b		; C0 0C
	ora $2D.b,S		; 03 2D
	ora $7D.b,S		; 03 7D
	ora $79.b,S		; 03 79
	ora $7D.b,S		; 03 7D
	ora $7D.b,S		; 03 7D
	ora ($7C.b,X)		; 01 7C
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	ora $21.b,S		; 03 21
	and $31.b,S		; 23 31
	and [$31.b],Y		; 37 31
	and ($38.b,S),Y		; 33 38
	tsa		; 3B
	sec		; 38
	tsa		; 3B
	adc $C0FD9C.l,X		; 7F 9C FD C0
	sbc $FDF8.w,X		; FD F8 FD
	beq -15.b		; F0 F1
	cpx #$E1.b		; E0 E1
	cpy $9CCD.w		; CC CD 9C
	eor $18B8.w,X		; 5D B8 18
	ldy $C640.w,X		; BC 40 C6
	sed		; F8
	inc $FEF0.w,X		; FE F0 FE
	cpx #$FE.b		; E0 FE
	cpy #$FE.b		; C0 FE
	brk $FE.b		; 00 FE
	php		; 08
	plx		; FA
	ora $000000.l,X		; 1F 00 00 00
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
	ora $00.b,S		; 03 00
	ora $03.b		; 05 03
	ora [$0B.b]		; 07 0B
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	phd		; 0B
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	brk $0E.b		; 00 0E
	ora ($0E.b,X)		; 01 0E
	ora ($07.b,X)		; 01 07
	brk $1E.b		; 00 1E
	and ($6F.b,X)		; 21 6F
	asl $7FBF.w,X		; 1E BF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFDFF.l,X		; FF FF FD FE
	jsr ($21F3.w,X)		; FC F3 21
	brk $1E.b		; 00 1E
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	rti		; 40

	ora $7887E0.l,X		; 1F E0 87 78
	dec $F020.w,X		; DE 20 F0
	brk $0D.b		; 00 0D
	ora $1E.b,S		; 03 1E
	ora ($39.b,X)		; 01 39
	asl $7E.b		; 06 7E
	ora ($7F.b,X)		; 01 7F
	brk $43.b		; 00 43
	brk $4F.b		; 00 4F
	brk $FB.b		; 00 FB
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora ($3C.b,X)		; 01 3C
	bit $3E02.w,X		; 3C 02 3E
	ora ($31.b,X)		; 01 31
	ora #$FF0D.w		; 09 0D FF
	beq -14.b		; F0 F2
	cpx $E87F.w		; EC 7F E8
	lda $E07C90.l,X		; BF 90 7C E0
	inc $FF00.w,X		; FE 00 FF
	brk $FB.b		; 00 FB
	brk $F0.b		; 00 F0
	sed		; F8
	rts		; 60

	sbc $FB0B.w,X		; FD 0B FB
	bcc -16.b		; 90 F0
	rts		; 60

	sbc $2A.b,S		; E3 2A
	pld		; 2B
	pld		; 2B
	pld		; 2B
	and #$902D.w		; 29 2D 90
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $62.b		; 00 62
	trb $2744.w		; 1C 44 27
	ror A		; 6A
	and $9E.b,S		; 23 9E
	rti		; 40

	brk $60.b		; 00 60
	rts		; 60

	cpx #$80.b		; E0 80
	bra  96.b		; 80 60
	rts		; 60

	clc		; 18
	tya		; 98
	dec A		; 3A
	ldx #$1D.b		; A2 1D
	sta ($7F.b,X)		; 81 7F
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2E00.w		; 1C 00 2E
	trb $5E.b		; 14 5E
	and $5F.b,X		; 35 5F
	bmi -41.b		; 30 D7
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	trb $3C14.w		; 1C 14 3C
	bpl  48.b		; 10 30
	ora [$2F.b]		; 07 2F
	pla		; 68
	sta [$36.b],Y		; 97 36
	ora #$001F.w		; 09 1F 00
	ora $0A.b,X		; 15 0A
	asl A		; 0A
	adc $15.b,X		; 75 15
	txs		; 9A
	pla		; 68
	ora $9705F2.l		; 0F F2 05 97
	brk $09.b		; 00 09
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl A		; 0A
	bmi  53.b		; 30 35
	inx		; E8
	txa		; 8A
	pea $7C07.w		; F4 07 7C
	ora $02.b		; 05 02
	sbc $BC7F.w,X		; FD 7F BC
	sbc ($00.b,S),Y		; F3 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FF01.l,X		; FF 01 FF 01
	inc $C101.w,X		; FE 01 C1
	brk $80.b		; 00 80
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $64.b		; 00 64
	stz $7D.b		; 64 7D
	jmp ($7C7D.w,X)		; 7C 7D 7C
	adc $7E7C.w,X		; 7D 7C 7E
	bra  -8.b		; 80 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	bra  -4.b		; 80 FC
	bra 127.b		; 80 7F
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs -80.b		; 70 B0
	bcs -80.b		; B0 B0
	bmi -96.b		; 30 A0
	jsr $0201.w		; 20 01 02
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	ora $08.b,S		; 03 08
	ora [$08.b]		; 07 08
	ora [$10.b]		; 07 10
	ora $301E10.l		; 0F 10 1E 30
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $000F08.l		; 0F 08 0F 00
	ora $000F00.l		; 0F 00 0F 00
	bcc  31.b		; 90 1F
	cld		; D8
	asl $1CD0.w,X		; 1E D0 1C
	bne  24.b		; D0 18
	ldy #$30.b		; A0 30
	rti		; 40

	bvs   0.b		; 70 00
	rts		; 60

	bra -64.b		; 80 C0
	inc $E40E.w		; EE 0E E4
	tsb $E8.b		; 04 E8
	php		; 08
	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	cpy #$40.b		; C0 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	rti		; 40

	ldy #$A0.b		; A0 A0
	rti		; 40

	cpx #$00.b		; E0 00
	cpy #$20.b		; C0 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000100.l		; 0F 00 01 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
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
	cpy #$40.b		; C0 40
	adc $1F00FF.l,X		; 7F FF 00 1F
	brk $1F.b		; 00 1F
	brk $C7.b		; 00 C7
	cpy #$0C.b		; C0 0C
	jsr ($0F00.w,X)		; FC 00 0F
	bra -128.b		; 80 80
	ldy #$20.b		; A0 20
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $003F00.l,X		; FF 00 3F 00
	ora ($10.b,S),Y		; 13 10
	brk $00.b		; 00 00
	ora $0F1717.l		; 0F 17 17 0F
	ora $1F2F2F.l,X		; 1F 2F 2F 1F
	and $3F5B5F.l,X		; 3F 5F 5B 3F
	eor ($3F.b,S),Y		; 53 3F
	rti		; 40

	and $0F0017.l,X		; 3F 17 00 0F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $F0.b		; 00 F0
	cmp $E6A0DE.l		; CF DE A0 E6
	bcc -33.b		; 90 DF
	bcs -65.b		; B0 BF
	rts		; 60

	tsb $C4E0.w		; 0C E0 C4
	bcs   7.b		; B0 07
	jsr ($03CB.w,X)		; FC CB 03
	lda $00.b,S		; A3 00
	sta $18.b,S		; 83 18
	sta ($14.b,S),Y		; 93 14
	eor $23BF40.l,X		; 5F 40 BF 23
	sta $08EB11.l,X		; 9F 11 EB 08
	inc $00.b,X		; F6 00
	dec $00.b		; C6 00
	jmp ($7800.w)		; 6C 00 78
	brk $31.b		; 00 31
	brk $19.b		; 00 19
	rts		; 60

	ora [$78.b]		; 07 78
	ora ($DE.b),Y		; 11 DE
	adc ($7B.b)		; 72 7B
	.db $42, $7B		; 42 7B
	bit $37.b		; 24 37
	plp		; 28
	and $200E00.l		; 2F 00 0E 20
	rol $30.b		; 26 30
	bmi 110.b		; 30 6E
	lsr $00DB.w		; 4E DB 00
	stp		; DB
	brk $D9.b		; 00 D9
	brk $D9.b		; 00 D9
	brk $9A.b		; 00 9A
	brk $9C.b		; 00 9C
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $49.b		; 00 49
	adc $6E4A.w		; 6D 4A 6E
	pha		; 48
	ror $6E48.w		; 6E 48 6E
	dey		; 88
	cpx $E080.w		; EC 80 E0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cmp $C05F40.l,X		; DF 40 5F C0
	eor $F033C0.l		; 4F C0 33 F0
	tsb $017C.w		; 0C 7C 01
	ora $000300.l,X		; 1F 00 03 00
	brk $3F.b		; 00 3F
	brk $BF.b		; 00 BF
	bra -65.b		; 80 BF
	bra  79.b		; 80 4F
	rti		; 40

	ora ($10.b,S),Y		; 13 10
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$38.b		; A0 38
	inx		; E8
	tsb $07F4.w		; 0C F4 07
	sbc $FE01.w,X		; FD 01 FE
	brk $BF.b		; 00 BF
	bra  39.b		; 80 27
	cpx #$06.b		; E0 06
	ror $10D0.w,X		; 7E D0 10
	beq   0.b		; F0 00
	plx		; FA
	cop $FE.b		; 02 FE
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	rti		; 40

	ora #$CF08.w		; 09 08 CF
	clc		; 18
	ldx $9641.w,Y		; BE 41 96
	adc $30CC.w,Y		; 79 CC 30
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	sec		; 38
	ora ($41.b,X)		; 01 41
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $1D.b		; 02 1D
	ora $0EE0.w,X		; 1D E0 0E
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	ora $0300.w,Y		; 19 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $C07F80.l,X		; FF 80 7F C0
	lda $205F60.l,X		; BF 60 5F 20
	sbc $389F00.l,X		; FF 00 9F 38
	cmp $0F271C.l		; CF 1C 27 0F
	rol $18BE.w,X		; 3E BE 18
	cld		; D8
	ora $E3.b,S		; 03 E3
	ora [$E7.b]		; 07 E7
	ora $1B.b,S		; 03 1B
	ora #$047D.w		; 09 7D 04
	rol $1F03.w,X		; 3E 03 1F
	sbc $FB02.w,X		; FD 02 FB
	ora $FC.b		; 05 FC
	ora $D9.b,S		; 03 D9
	and [$FC.b]		; 27 FC
	and ($BF.b,S),Y		; 33 BF
	bvs -20.b		; 70 EC
	bvs -17.b		; 70 EF
	beq   0.b		; F0 00
	cop $31.b		; 02 31
	and $88.b,X		; 35 88
	plb		; AB
	sta ($A7.b,X)		; 81 A7
	jsr $2073.w		; 20 73 20
	bvs  96.b		; 70 60
	bvs -32.b		; 70 E0
	beq  13.b		; F0 0D
	and ($0A.b,X)		; 21 0A
	and $1C.b,S		; 23 1C
	and $0F1E01.l,X		; 3F 01 1E 0F
	ora $1F.b		; 05 1F
	tsb $1F.b		; 04 1F
	tsb $3E.b		; 04 3E
	brk $1E.b		; 00 1E
	brk $1D.b		; 00 1D
	ora ($02.b,X)		; 01 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	cpx #$40.b		; E0 40
	jmp ($0FE8.w,X)		; 7C E8 0F
	jsr ($FF01.w,X)		; FC 01 FF
	brk $7F.b		; 00 7F
	brk $13.b		; 00 13
	beq   0.b		; F0 00
	ora $A00000.l,X		; 1F 00 00 A0
	jsr $04F4.w		; 20 F4 04
	sbc $00FF01.l,X		; FF 01 FF 00
	sbc $202F00.l,X		; FF 00 2F 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   6.b		; 80 06
	lsr A		; 4A
	lda $B5.b,X		; B5 B5
	dec $FEFF.w		; CE FF FE
	inc $F87D.w,X		; FE 7D F8
	rol $0000.w,X		; 3E 00 00
	bra   0.b		; 80 00
	asl $00.b		; 06 00
	lda $00.b,X		; B5 00
	dec $FE00.w		; CE 00 FE
	brk $7D.b		; 00 7D
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	sed		; F8
	jsr ($AF0B.w,X)		; FC 0B AF
	trb $AE.b		; 14 AE
	eor [$AE.b],Y		; 57 AE
	cmp [$4F.b],Y		; D7 4F
	ldx $49.b,Y		; B6 49
	lda [$9F.b],Y		; B7 9F
	rts		; 60

	sed		; F8
	bra  11.b		; 80 0B
	brk $14.b		; 00 14
	rti		; 40

	eor [$C0.b],Y		; 57 C0
	eor [$40.b],Y		; 57 40
	ldx $80.b,Y		; B6 80
	and [$00.b],Y		; 37 00
	rts		; 60

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	cpy #$60.b		; C0 60
	cpy #$C0.b		; C0 C0
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$40.b		; C0 40
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	sei		; 78
	cmp $1A.b,X		; D5 1A
	sbc $C14F00.l,X		; FF 00 4F C1
	ora $0373.w		; 0D 73 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $08E8.w		; 20 E8 08
	sed		; F8
	brk $B8.b		; 00 B8
	bra   2.b		; 80 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $D8.b		; 00 D8
	jsr $006E.w		; 20 6E 00
	sbc $03FE40.l,X		; FF 40 FE 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	bit $3800.w,X		; 3C 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $3F1E7F.l		; 0F 7F 1E 3F
	tsb $001E.w		; 0C 1E 00
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
	brk $00.b		; 00 00
	cop $0D.b		; 02 0D
	ora $5F2700.l,X		; 1F 00 27 5F
	adc $FF3FBF.l,X		; 7F BF 3F FF
	sbc $FF7B7F.l,X		; FF 7F 7B FF
	brk $00.b		; 00 00
	ora $0000.w		; 0D 00 00
	brk $5F.b		; 00 5F
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  -8.b		; 30 F8
	brk $58.b		; 00 58
	bcs -12.b		; B0 F4
	sed		; F8
	jsr ($5EFA.w,X)		; FC FA 5E
	lda $8E7D.w		; AD 7D 8E
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bcs   0.b		; B0 00
	sed		; F8
	brk $FA.b		; 00 FA
	brk $AD.b		; 00 AD
	brk $8E.b		; 00 8E
	brk $EE.b		; 00 EE
	ora ($2C.b),Y		; 11 2C
	ora ($7C.b,S),Y		; 13 7C
	ora $7E.b,S		; 03 7E
	ora ($FA.b,X)		; 01 FA
	ora ($D8.b,X)		; 01 D8
	ora ($A0.b,X)		; 01 A0
	rts		; 60

	bne  48.b		; D0 30
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $5E.b		; 00 5E
	cpy #$5F.b		; C0 5F
	cpy #$3F.b		; C0 3F
	cpx #$2F.b		; E0 2F
	cpx #$17.b		; E0 17
	beq  75.b		; F0 4B
	sed		; F8
	and $DC.b		; 25 DC
	and ($6E.b,S),Y		; 33 6E
	lda $003F80.l,X		; BF 80 3F 00
	eor $001F40.l,X		; 5F 40 1F 00
	lda $9097A0.l		; AF A0 97 90
	rtl		; 6B

	pha		; 48
	eor $44.b,X		; 55 44
	ora $CF.b,S		; 03 CF
	sta ($CF.b,X)		; 81 CF
	ora ($66.b,X)		; 01 66
	cmp [$60.b]		; C7 60
	sta [$30.b]		; 87 30
	sbc $30.b,S		; E3 30
	cmp $10.b,S		; C3 10
	sbc $10.b,S		; E3 10
	sty $84.b		; 84 84
	cop $02.b		; 02 02
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	and $AB5E18.l,X		; 3F 18 5E AB
	ror $36F3.w		; 6E F3 36
	tda		; 7B
	asl $0658.w		; 0E 58 06
	eor $6403.w		; 4D 03 64
	ora $0D.b,S		; 03 0D
	sbc $FA0B.w,X		; FD 0B FA
	ora ($78.b,X)		; 01 78
	ora ($38.b),Y		; 11 38
	ora #$0388.w		; 09 88 03
	ldx #$00.b		; A2 00
	bcs  33.b		; B0 21
	lda $C000.w,Y		; B9 00 C0
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	cpy #$10.b		; C0 10
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	sed		; F8
	tsb $0C78.w		; 0C 78 0C
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	pea $7C04.w		; F4 04 7C
	sta ($D7.b,S),Y		; 93 D7
	pla		; 68
	sta $B02F70.l		; 8F 70 2F B0
	eor [$98.b],Y		; 57 98
	adc [$89.b]		; 67 89
	adc [$9B.b],Y		; 77 9B
	cmp $109096.l,X		; DF 96 90 10
	rti		; 40

	pla		; 68
	brk $10.b		; 00 10
	rti		; 40

	php		; 08
	rts		; 60

	brk $F1.b		; 00 F1
	sta ($E2.b,X)		; 81 E2
	sta $64.b,S		; 83 64
	ora [$59.b]		; 07 59
	inc $1F.b		; E6 1F
	cpx #$FF.b		; E0 FF
	rti		; 40

	sbc $E3DC21.l,X		; FF 21 DC E3
	dec $9FE1.w,X		; DE E1 9F
	cpy #$3F.b		; C0 3F
	brk $86.b		; 00 86
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	ora ($E0.b,X)		; 01 E0
	sbc $CC.b,S		; E3 CC
	sbc $EE0E.w		; ED 0E EE
	asl $1FCE.w		; 0E CE 1F
	brk $3B.b		; 00 3B
	brk $77.b		; 00 77
	brk $75.b		; 00 75
	brk $6D.b		; 00 6D
	brk $ED.b		; 00 ED
	brk $DD.b		; 00 DD
	brk $5B.b		; 00 5B
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	trb $20.b		; 14 20
	plp		; 28
	jsr $042A.w		; 20 2A 04
	asl $64.b,X		; 16 64
	ror $4C.b,X		; 76 4C
	ror $2D09.w		; 6E 09 2D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	ora $0B.b		; 05 0B
	ora [$0B.b]		; 07 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	ora ($02.b,X)		; 01 02
	ora ($05.b,X)		; 01 05
	phd		; 0B
	ora $1F0F07.l,X		; 1F 07 0F 1F
	asl $0F.b,X		; 16 0F
	ora $0302.w		; 0D 02 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cop $7C.b		; 02 7C
	ora $CC.b,S		; 03 CC
	and $12.b,S		; 23 12
	tas		; 1B
	ora $0B.b,S		; 03 0B
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b),Y		; 11 01
	sbc $03.b		; E5 03
	adc ($01.b)		; 72 01
	ply		; 7A
	ora ($BE.b,X)		; 01 BE
	ora ($BC.b,X)		; 01 BC
	cop $E0.b		; 02 E0
	asl $C744.w,X		; 1E 44 C7
	tsx		; BA
	sta $60.b,S		; 83 60
	sei		; 78
	and ($BD.b),Y		; 31 BD
	sec		; 38
	ldy $D090.w,X		; BC 90 D0
	bra -64.b		; 80 C0
	trb $BA1C.w		; 1C 1C BA
	.db $82, $7C, $00		; 82 7C 00
	inx		; E8
	tsb $0C78.w		; 0C 78 0C
	bmi -124.b		; 30 84
	bit $18C4.w,X		; 3C C4 18
	rep #$0C		; C2 0C
	.db $62, $14, $32		; 62 14 32
	asl $F03B.w		; 0E 3B F0
	brk $F4.b		; 00 F4
	tsb $FC.b		; 04 FC
	sty $78.b		; 84 78
	rti		; 40

	bit $3E00.w,X		; 3C 00 3E
	jsl $14020E.l		; 22 0E 02 14
	bpl  -7.b		; 10 F9
	inc $F9E6.w,X		; FE E6 F9
	cmp $EA54E0.l,X		; DF E0 54 EA
	sbc $7E.b,S		; E3 7E
	sbc $F47974.l,X		; FF 74 79 F4
	rts		; 60

	ldx $00FE.w,Y		; BE FE 00
	sed		; F8
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	phd		; 0B
	ply		; 7A
	asl A		; 0A
	adc ($00.b,S),Y		; 73 00
	sbc [$04.b],Y		; F7 04
	lda ($02.b,S),Y		; B3 02
	sta $F66F6E.l,X		; 9F 6E 6F F6
	inc $F471.w		; EE 71 F4
	jsr $24FE.w		; 20 FE 24
	inc $A834.w		; EE 34 A8
	bit $DA.b,X		; 34 DA
	bit $0E.b		; 24 0E
	brk $16.b		; 00 16
	bpl   1.b		; 10 01
	bpl  64.b		; 10 40
	php		; 08
	mvp $D4,$90		; 44 90 D4
	bpl -60.b		; 10 C4
	rti		; 40

	cpy $00.b		; C4 00
	cpx #$10.b		; E0 10
	bvs   0.b		; 70 00
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
	brk $18.b		; 00 18
	ror $0D.b,X		; 76 0D
	tsa		; 3B
	tsb $1F.b		; 04 1F
	cop $0F.b		; 02 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pld		; 2B
	jsl $091014.l		; 22 14 10 09
	ora #$0404.w		; 09 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc ($18.b),Y		; F1 18
	sbc ($08.b,X)		; E1 08
	adc ($08.b,X)		; 61 08
	cmp ($98.b),Y		; D1 98
	and ($B8.b,X)		; 21 B8
	rti		; 40

	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $60.b		; 00 60
	brk $D0.b		; 00 D0
	bcc  32.b		; 90 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	beq -64.b		; F0 C0
	sei		; 78
	bra -52.b		; 80 CC
	jsr $30C6.w		; 20 C6 30
	lda $003F00.l,X		; BF 00 3F 00
	ora $008000.l,X		; 1F 00 80 00
	brk $00.b		; 00 00
	bcc -128.b		; 90 80
	sec		; 38
	jsr $101C.w		; 20 1C 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$12.b]		; 07 12
	ora $112D11.l		; 0F 11 2D 11
	adc $11.b		; 65 11
	inc $10.b		; E6 10
	sbc $1CE718.l		; EF 18 E7 1C
	beq  15.b		; F0 0F
	tsb $0D00.w		; 0C 00 0D
	ora ($09.b,X)		; 01 09
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	php		; 08
	brk $01.b		; 00 01
	sbc $E3DCE1.l,X		; FF E1 DC E3
	lda $803FC0.l,X		; BF C0 3F 80
	adc $0CF900.l,X		; 7F 00 F9 0C
	sbc ($38.b,S),Y		; F3 38
	inc $F0.b		; E6 F0
	cpy $80ED.w		; CC ED 80
	sbc $0C.b,S		; E3 0C
	cpy $DD1D.w		; CC 1D DD
	bmi -80.b		; 30 B0
	brk $0E.b		; 00 0E
	brk $3C.b		; 00 3C
	jsr $FEF8.w		; 20 F8 FE
	ora ($F5.b,X)		; 01 F5
	brk $F3.b		; 00 F3
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $40.b,S		; 03 40
	eor $60.b,S		; 43 60
	rts		; 60

	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$10.b		; E0 10
	beq 104.b		; F0 68
	bit $9EF0.w,X		; 3C F0 9E
	stz $D7.b,X		; 74 D7
	rol $0EF3.w		; 2E F3 0E
	sbc $D606.w,Y		; F9 06 D6
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	rts		; 60

	bmi -16.b		; 30 F0
	trb $74.b		; 14 74
	stx $AE.b		; 86 AE
	.db $82, $9E, $00		; 82 9E 00
	asl $0C00.w		; 0E 00 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	ora ($07.b,X)		; 01 07
	ora $05.b,S		; 03 05
	and ($05.b,S),Y		; 33 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	ora #$1707.w		; 09 07 17
	ora $DF0FFF.l		; 0F FF 0F DF
	lda $EDFFFF.l,X		; BF FF FF ED
	sbc ($E7.b,S),Y		; F3 E7
	sbc $070000.l,X		; FF 00 00 07
	brk $0B.b		; 00 0B
	tsb $01.b		; 04 01
	asl $11AE.w		; 0E AE 11
	sbc $00F300.l,X		; FF 00 F3 00
	sbc $977C00.l,X		; FF 00 7C 97
	sed		; F8
	rol $2EFB.w		; 2E FB 2E
	bvc  46.b		; 50 2E
	pla		; 68
	ora $BF.b,S		; 03 BF
	eor $1F.b,S		; 43 1F
	sbc $95FF3F.l,X		; FF 3F FF 95
	ora $2B.b,X		; 15 2B
	rol A		; 2A
	ora ($28.b,X)		; 01 28
	ora $AA.b,S		; 03 AA
	ora ($95.b,X)		; 01 95
	brk $C3.b		; 00 C3
	ora $FF.b,S		; 03 FF
	ora $3F20FF.l,X		; 1F FF 20 3F
	inc $07.b,X		; F6 07
	sbc $00FF00.l,X		; FF 00 FF 00
	tya		; 98
	sta $C080C0.l,X		; 9F C0 80 C0
	bra -32.b		; 80 E0
	bra -40.b		; 80 D8
	clc		; 18
	sbc $FF01.w,Y		; F9 01 FF
	brk $FF.b		; 00 FF
	brk $66.b		; 00 66
	asl $00.b		; 06 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($0D.b,X)		; 01 0D
	ora $0D0D.w		; 0D 0D 0D
	adc $CAF0.w		; 6D F0 CA
	sbc ($C9.b),Y		; F1 C9
	lda ($EF.b,S),Y		; B3 EF
	ora ($F7.b,S),Y		; 13 F7
	ora [$F7.b]		; 07 F7
	ora [$F7.b]		; 07 F7
	ora [$F3.b]		; 07 F3
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$41.b]		; 07 41
	eor [$E3.b]		; 47 E3
	sbc $C3EFE3.l		; EF E3 EF C3
	cmp $9F9F81.l		; CF 81 9F 9F
	cpy $3F.b		; C4 3F
	cpy #$3E.b		; C0 3E
	brk $FD.b		; 00 FD
	sta ($FC.b,X)		; 81 FC
	ora [$F8.b]		; 07 F8
	ora $F00FF0.l		; 0F F0 0F F0
	ora $E003.w		; 0D 03 E0
	ora [$C0.b]		; 07 C0
	ora [$D0.b],Y		; 17 D0
	ldx $B0.b,Y		; B6 B0
	adc ($73.b,S),Y		; 73 73
	ror $66.b		; 66 66
	bit $882C.w		; 2C 2C 88
	dey		; 88
	cpy $0E01.w		; CC 01 0E
	and ($8C.b,S),Y		; 33 8C
.ACCU 8
	sep #$28		; E2 28
.INDEX 8
	sep #$5C		; E2 5C
	dec $38.b		; C6 38
	stx $F0.b		; 86 F0
	sty $78.b		; 84 78
	tsb $00FE.w		; 0C FE 00
	jsr ($3E30.w,X)		; FC 30 3E
	jsl $38425E.l		; 22 5E 42 38
	brk $FC.b		; 00 FC
	sty $7C.b		; 84 7C
	tsb $F0.b		; 04 F0
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	ora ($7E.b,X)		; 01 7E
	ora $19FE.w		; 0D FE 19
	rol $0611.w,X		; 3E 11 06
	asl $06.b		; 06 06
	asl $02.b		; 06 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F2.b		; 00 F2
	ora $3D.b,S		; 03 3D
	sta ($7E.b,X)		; 81 7E
	cpy #$3F.b		; C0 3F
	cpx #$ED.b		; E0 ED
	sbc $F6F6.w		; ED F6 F6
	inc $F6.b,X		; F6 F6
	bvs 112.b		; 70 70
	ora $FE01.w		; 0D 01 FE
	bra -65.b		; 80 BF
	bra  95.b		; 80 5F
	rti		; 40

	lda $32.b		; A5 32
	dec $11.b		; C6 11
	sbc [$10.b],Y		; F7 10
	sbc $0A.b		; E5 0A
	sbc ($0E.b,S),Y		; F3 0E
	ply		; 7A
	asl $86F1.w		; 0E F1 86
	and $C386.w,Y		; 39 86 C3
	cop $F1.b		; 02 F1
	ora ($E0.b),Y		; 11 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	sbc ($00.b),Y		; F1 00
	sei		; 78
	brk $FC.b		; 00 FC
	sty $80.b		; 84 80
	cpy #$00.b		; C0 00
	cpy #$80.b		; C0 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	sbc $ADFFFE.l,X		; FF FE FF AD
	dec $008E.w		; CE 8E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	inc $FEFF.w,X		; FE FF FE
	sbc $00FE0C.l,X		; FF 0C FE 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $38.b		; 00 38
	cpy #$9F.b		; C0 9F
	sta $FF.b,S		; 83 FF
	and $BF.b,S		; 23 BF
	and $9D.b,S		; 23 9D
	sep #$00		; E2 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$63.b]		; 07 63
	ora $C3.b,S		; 03 C3
	ora $C0.b,S		; 03 C0
	ora $40.b,S		; 03 40
	eor $00.b,S		; 43 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	bvs -120.b		; 70 88
	cpx $FAF2.w		; EC F2 FA
	jsr ($F9FE.w,X)		; FC FE F9
	pea $FCFB.w		; F4 FB FC
	cmp ($9A.b,S),Y		; D3 9A
	mvn $00,$40		; 54 40 00
	dey		; 88
	brk $F2.b		; 00 F2
	brk $FC.b		; 00 FC
	brk $39.b		; 00 39
	cpy #$FB.b		; C0 FB
	brk $C3.b		; 00 C3
	brk $04.b		; 00 04
	rts		; 60

	stz $D8.b,X		; 74 D8
	sed		; F8
	trb $F8.b		; 14 F8
	trb $18E0.w		; 1C E0 18
	beq -104.b		; F0 98
	rts		; 60

	beq -32.b		; F0 E0
	brk $C0.b		; 00 C0
	ror $4040.w,X		; 7E 40 40
	inx		; E8
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	eor $7B23.w,X		; 5D 23 7B
	sta [$7F.b]		; 87 7F
	sta $4A5E3D.l,X		; 9F 3D 5E 4A
	and $1C23.w,X		; 3D 23 1C
	asl $0101.w		; 0E 01 01
	brk $23.b		; 00 23
	brk $87.b		; 00 87
	brk $9F.b		; 00 9F
	brk $5E.b		; 00 5E
	brk $3D.b		; 00 3D
	brk $1C.b		; 00 1C
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $EF.b		; 00 EF
	inc $FFEE.w,X		; FE EE FF
	sbc $CEEE.w,X		; FD EE CE
	adc $9F7C.w,X		; 7D 7C 9F
	sbc $FBFE.w,X		; FD FE FB
	jsr ($F977.w,X)		; FC 77 F9
	inc $FF00.w,X		; FE 00 FF
	brk $EE.b		; 00 EE
	brk $7D.b		; 00 7D
	brk $9F.b		; 00 9F
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	ora ($FF.b,X)		; 01 FF
	adc $FFCFFF.l,X		; 7F FF CF FF
	inc $FF.b,X		; F6 FF
	sed		; F8
	sbc ($F8.b,S),Y		; F3 F8
	inc $F1.b		; E6 F1
	cmp $9BE3.w		; CD E3 9B
	dec $0F.b		; C6 0F
	sbc $E0FF06.l,X		; FF 06 FF E0
	inc $FCF0.w,X		; FE F0 FC
	beq  -4.b		; F0 FC
	cpy #$F8.b		; C0 F8
	bra -16.b		; 80 F0
	ora ($E0.b,X)		; 01 E0
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	tya		; 98
	ror $C37C.w,X		; 7E 7C C3
	inc $FE01.w,X		; FE 01 FE
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	bit $BE.b		; 24 BE
	.db $82, $FE, $00		; 82 FE 00
	inc $1F00.w,X		; FE 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $0D.b		; 00 0D
	ora $0909.w		; 0D 09 09
	asl A		; 0A
	asl A		; 0A
	and ($31.b),Y		; 31 31
	and $1B39.w,Y		; 39 39 1B
	tas		; 1B
	tas		; 1B
	tas		; 1B
	asl $16.b,X		; 16 16
	cmp ($0B.b),Y		; D1 0B
	pea $FE0D.w		; F4 0D FE
	asl $FF.b		; 06 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	and $820F00.l,X		; 3F 00 0F 82
	sta [$A1.b]		; 87 A1
	lda ($28.b,X)		; A1 28
	plp		; 28
	adc $6D6D.w		; 6D 6D 6D
	adc $EDED.w		; 6D ED ED
	beq  11.b		; F0 0B
	sbc ($13.b,X)		; E1 13
	cpx #$02.b		; E0 02
	sta ($02.b,X)		; 81 02
	ora ($82.b,X)		; 01 82
	ora $C2.b,S		; 03 C2
	sta $E6.b,S		; 83 E6
	eor ($66.b,X)		; 41 66
	sta ($81.b,X)		; 81 81
	bra -128.b		; 80 80
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	sta $82.b,S		; 83 82
	sta ($80.b,X)		; 81 80
	eor ($40.b,X)		; 41 40
	lda $22.b,S		; A3 22
	cpx #$08.b		; E0 08
	beq  24.b		; F0 18
	cpy #$18.b		; C0 18
	cpx #$30.b		; E0 30
	bra  48.b		; 80 30
	cpy #$60.b		; C0 60
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	adc $00FF20.l,X		; 7F 20 FF 00
	sed		; F8
	bpl -16.b		; 10 F0
	jsr $60F0.w		; 20 F0 60
	cpx #$40.b		; E0 40
	cpx #$00.b		; E0 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	bvs  15.b		; 70 0F
	clv		; B8
	ora [$DC.b]		; 07 DC
	ora ($6C.b),Y		; 11 6C
	php		; 08
	rol $08.b,X		; 36 08
	tas		; 1B
	asl $1F.b		; 06 1F
	cop $0F.b		; 02 0F
	lda $105720.l		; AF 20 57 10
	rtl		; 6B

	pha		; 48
	and [$24.b],Y		; 37 24
	tas		; 1B
	ora ($05.b)		; 12 05
	ora ($08.b,X)		; 01 08
	php		; 08
	tsb $04.b		; 04 04
	and $5986.w,X		; 3D 86 59
.ACCU 16
	rep #$25		; C2 25
	inc $1B.b		; E6 1B
	jsr ($7C00.w,X)		; FC 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $BC.b		; 00 BC
	bra -40.b		; 80 D8
	cpy #$20.b		; C0 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$80.b		; E0 80
	bvs -64.b		; 70 C0
	sed		; F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	sed		; F8
	lda $02FB82.l,X		; BF 82 FB 02
	sta $001E.w,Y		; 99 1E 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $66.b		; 00 66
	rts		; 60

	jmp ($FC00.w,X)		; 7C 00 FC
	brk $E4.b		; 00 E4
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	ora $07.b,S		; 03 07
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $1D.b		; 00 1D
	jsr $603D.w		; 20 3D 60
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
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
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	cop $05.b		; 02 05
	ora $0B.b		; 05 0B
	tsb $0B.b		; 04 0B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $07.b		; 00 07
	ora $0F7F.w,Y		; 19 7F 0F
	sta $FF7F7F.l,X		; 9F 7F 7F FF
	sbc $F5FE.w,X		; FD FE F5
	plx		; FA
	inc $78F1.w,X		; FE F1 78
	sbc [$19.b],Y		; F7 19
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	rti		; 40

	ror $1A80.w,X		; 7E 80 1A
	cpx #$D1.b		; E0 D1
	jsr $00F4.w		; 20 F4 00
	ora $0A12.w,X		; 1D 12 0A
	ora ($1E.b,X)		; 01 1E
	ora $1A.b		; 05 1A
	and $18.b		; 25 18
	and [$3A.b]		; 27 3A
	ora [$76.b]		; 07 76
	ora $0C1E6C.l		; 0F 6C 1E 0C
	brk $1C.b		; 00 1C
	ora ($18.b,X)		; 01 18
	ora ($1C.b,X)		; 01 1C
	ora $10.b		; 05 10
	ora $02.b,S		; 03 02
	ora [$06.b]		; 07 06
	ora $371F0C.l		; 0F 0C 1F 37
	cmp $FDE7DA.l		; CF DA E7 FD
	nop		; EA
	sbc [$E5.b],Y		; F7 E5
	stp		; DB
.ACCU 16
.INDEX 16
	rep #$7F		; C2 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $02.b		; 00 02
	cmp $E0E7C0.l		; CF C0 E7 E0
	nop		; EA
	sbc $ED.b		; E5 ED
.ACCU 16
	rep #$E6		; C2 E6
	bpl -112.b		; 10 90
	and ($B2.b)		; 32 B2
	dec A		; 3A
	dec A		; 3A
	pha		; 48
	dec $47F4.w		; CE F4 47
	plx		; FA
	eor $FD.b,S		; 43 FD
	eor ($DE.b,X)		; 41 DE
	rti		; 40

	lda $30DF60.l,X		; BF 60 DF 30
	cmp $043438.l		; CF 38 34 04
	dec A		; 3A
	cop $3D.b		; 02 3D
	ora ($3E.b,X)		; 01 3E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $8F.b		; 00 8F
	bra -105.b		; 80 97
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C080.w		; C0 80 C0
	brk $40.b		; 00 40
	cpy #$8060.w		; C0 60 80
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$8040.w		; C0 40 80
	brk $E0.b		; 00 E0
	jsr $1779.w		; 20 79 17
	jmp ($7E23.w,X)		; 7C 23 7E
	and ($FC.b,X)		; 21 FC
	ora ($F8.b,X)		; 01 F8
	ora ($F8.b,X)		; 01 F8
	rts		; 60

	beq  64.b		; F0 40
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	ora ($01.b),Y		; 11 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $7A.b		; 00 7A
	ora $BD.b,S		; 03 BD
	sta ($5E.b,X)		; 81 5E
	cpy #$E02F.w		; C0 2F E0
	eor [$F0.b],Y		; 57 F0
	pld		; 2B
	sed		; F8
	ora $EC.b,X		; 15 EC
	inc A		; 1A
	ror $FD.b,X		; 76 FD
	ora ($7E.b,X)		; 01 7E
	brk $BF.b		; 00 BF
	bra  95.b		; 80 5F
	rti		; 40

	and $505720.l		; 2F 20 57 50
	tsa		; 3B
	plp		; 28
	ora $0604.w		; 0D 04 06
	sta $8D06.w,Y		; 99 06 8D
	ora ($CD.b,X)		; 01 CD
	sta $C7.b,S		; 83 C7
	ora [$60.b]		; 07 60
	cmp [$60.b]		; C7 60
	sta $30.b,S		; 83 30
	sbc ($30.b,X)		; E1 30
	asl $0308.w		; 0E 08 03
	ora ($86.b,X)		; 01 86
	sty $00.b		; 84 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $FF.b		; 00 FF
	rti		; 40

	cmp $C07FA0.l,X		; DF A0 7F C0
	sta $402FE0.l,X		; 9F E0 2F 40
	and $C8A740.l		; 2F 40 A7 C8
	adc ($84.b,S),Y		; 73 84
	ora $AF8F4F.l		; 0F 4F 8F AF
	asl $014E.w		; 0E 4E 01
	and ($C7.b,X)		; 21 C7
	eor [$C7.b],Y		; 57 C7
	eor [$03.b],Y		; 57 03
	tas		; 1B
	bra -116.b		; 80 8C
	inc $DC20.w,X		; FE 20 DC
	jsr $00FC.w		; 20 FC 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	jsr $6EE0.w		; 20 E0 6E
	cpy $88FF.w		; CC FF 88
	tay		; A8
	php		; 08
	plp		; 28
	cld		; D8
	cld		; D8
	bne -48.b		; D0 D0
	cpy #$A0C0.w		; C0 C0 A0
	bcs  64.b		; B0 40
	bvs -62.b		; 70 C2
	sep #$00		; E2 00
	brk $0E.b		; 00 0E
	sec		; 38
	sbc $FCFFFC.l,X		; FF FC FF FC
	sbc $00C7FC.l,X		; FF FC C7 00
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	sed		; F8
	jsr ($FCF8.w,X)		; FC F8 FC
	sec		; 38
	jsr ($3800.w,X)		; FC 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ldy #$D0E0.w		; A0 E0 D0
	inx		; E8
	pei ($DC.b)		; D4 DC
.INDEX 8
	sep #$5A		; E2 5A
	cpx $7EE8.w		; EC E8 7E
	plx		; FA
	adc $7897.w,X		; 7D 97 78
	ldy #$00.b		; A0 00
	bne   0.b		; D0 00
	pei ($00.b)		; D4 00
	sep #$00		; E2 00
	cpx $7E00.w		; EC 00 7E
	brk $7D.b		; 00 7D
	brk $38.b		; 00 38
	brk $85.b		; 00 85
	plx		; FA
	sec		; 38
	rti		; 40

	adc $7FFF3F.l,X		; 7F 3F FF 7F
	beq 115.b		; F0 73
	ora [$00.b]		; 07 00
	and $807F40.l,X		; 3F 40 7F 80
	dec A		; 3A
	brk $80.b		; 00 80
	eor [$BF.b]		; 47 BF
	and $807FFF.l,X		; 3F FF 7F 80
	adc $84F880.l,X		; 7F 80 F8 84
	tsb $1C.b		; 04 1C
	trb $1867.w		; 1C 67 18
	and $53.b		; 25 53
	ora $03.b		; 05 03
	tsb $02.b		; 04 02
	ora [$02.b]		; 07 02
	ora $00.b		; 05 00
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	clc		; 18
	brk $51.b		; 00 51
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	tsb $19.b		; 04 19
	and [$27.b]		; 27 27
	eor $7EBF5F.l,X		; 5F 5F BF 7E
	lda $3B5F3F.l,X		; BF 3F 5F 3B
	eor $5A3E59.l,X		; 5F 59 3E 5A
	and $27.b		; 25 27
	brk $5F.b		; 00 5F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $3E.b		; 00 3E
	brk $24.b		; 00 24
	ora ($B7.b,X)		; 01 B7
	xce		; FB
	sbc [$F8.b],Y		; F7 F8
	xce		; FB
	cpx #$FF.b		; E0 FF
	cld		; D8
	rtl		; 6B

	tya		; 98
	sbc $0C.b,X		; F5 0C
	plx		; FA
	asl $FC.b		; 06 FC
	sta $F8.b,S		; 83 F8
	brk $F9.b		; 00 F9
	brk $E1.b		; 00 E1
	tsb $C9.b		; 04 C9
	asl A		; 0A
	sta [$00.b]		; 87 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	bra -128.b		; 80 80
	adc $711C.w,Y		; 79 1C 71
	clc		; 18
	and ($00.b,S),Y		; 33 00
	ora $0000.w,X		; 1D 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	asl $1E10.w,X		; 1E 10 1E
	ora ($0D.b,X)		; 01 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	and $7A00.w,X		; 3D 00 7A
	asl $5B.b,X		; 16 5B
	tad		; 5B
	stp		; DB
	stp		; DB
	stp		; DB
	stp		; DB
	cmp $5CDD.w,X		; DD DD 5C
	jmp $030808.l		; 5C 08 08 03
	brk $01.b		; 00 01
	brk $E7.b		; 00 E7
	trb $0EF3.w		; 1C F3 0E
	sbc $FC07.w,Y		; F9 07 FC
	ora $F4.b,S		; 03 F4
	ora #$1C90.w		; 09 90 1C
	inx		; E8
	asl $07F4.w		; 0E F4 07
	phk		; 4B
	pha		; 48
	adc $64.b		; 65 64
	ldx #$A2.b		; A2 A2
	cmp ($C1.b,X)		; C1 C1
	brk $00.b		; 00 00
	inx		; E8
	php		; 08
	pea $FA04.w		; F4 04 FA
	cop $E0.b		; 02 E0
	bmi -64.b		; 30 C0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$88.b		; E0 88
	bvs -60.b		; 70 C4
	bmi -28.b		; 30 E4
	trb $0C76.w		; 1C 76 0C
	dec A		; 3A
	cpy #$00.b		; C0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	sei		; 78
	php		; 08
	clv		; B8
	bra  92.b		; 80 5C
	mvp $20,$28		; 44 28 20
	asl $12.b,X		; 16 12
	cpx #$00.b		; E0 00
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
	tsb $073A.w		; 0C 3A 07
	ora $0F02.w,X		; 1D 02 0F
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$12.b],Y		; 17 12
	asl A		; 0A
	php		; 08
	ora $05.b		; 05 05
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($10.b,X)		; C1 10
	beq  16.b		; F0 10
	bvs  24.b		; 70 18
	bcc -104.b		; 90 98
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $E0.b		; 00 E0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	cpy #$FC.b		; C0 FC
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	php		; 08
	and [$0C.b],Y		; 37 0C
	ora $000F00.l,X		; 1F 00 0F 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0400.w		; 0C 00 04
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	asl A		; 0A
	ora $0F.b		; 05 0F
	tsb $01.b		; 04 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	ora $00.b		; 05 00
	brk $B8.b		; 00 B8
	.db $82, $F4, $86		; 82 F4 86
	stz $06.b,X		; 74 06
	bvs   6.b		; 70 06
	pla		; 68
	tsb $0C68.w		; 0C 68 0C
	pla		; 68
	tsb $0C60.w		; 0C 60 0C
	jmp ($7800.w,X)		; 7C 00 78
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	tsb $F4.b		; 04 F4
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	and $1F3F1F.l,X		; 3F 1F 3F 1F
	eor $BFFFBF.l,X		; 5F BF FF BF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	and $3F5F7F.l,X		; 3F 7F 5F 3F
	ora $1E0110.l		; 0F 10 01 1E
	lda ($0C.b,S),Y		; B3 0C
	lda $00FF00.l,X		; BF 00 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	and $FFF700.l,X		; 3F 00 F7 FF
	sbc $9A.b,X		; F5 9A
	and $02F8DC.l,X		; 3F DC F8 02
	tas		; 1B
.ACCU 16
.INDEX 16
	rep #$FC		; C2 FC
	cmp $5C.b,S		; C3 5C
	cmp $A8.b,S		; C3 A8
	sbc $FF.b,S		; E3 FF
	brk $9A.b		; 00 9A
	brk $C0.b		; 00 C0
	brk $0C.b		; 00 0C
	ora $0E.b,S		; 03 0E
	.db $62, $4F, $53		; 62 4F 53
	and $069E03.l,X		; 3F 03 9E 06
	cmp [$E0.b]		; C7 E0
	lda $00FDC0.l		; AF C0 FD 00
	ror $FF81.w,X		; 7E 81 FF
	brk $7F.b		; 00 7F
	bra 127.b		; 80 7F
	bra -65.b		; 80 BF
	rti		; 40

	cpx #$C000.w		; E0 00 C0
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	bra   6.b		; 80 06
	stx $87.b		; 86 87
	sta [$0F.b]		; 87 0F
	ora $200F0F.l		; 0F 0F 0F 20
	cpy #$00A0.w		; C0 A0 00
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cpy #$4000.w		; C0 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$A0C0.w		; C0 C0 A0
	ldy #$0000.w		; A0 00 00
	asl $3300.w		; 0E 00 33
	brk $4E.b		; 00 4E
	brk $F9.b		; 00 F9
	brk $63.b		; 00 63
	bra -65.b		; 80 BF
	cpy #$40F9.w		; C0 F9 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $0E.b		; 02 0E
	php		; 08
	and $2721.w,Y		; 39 21 27
	ora $9F.b,S		; 03 9F
	brk $C0.b		; 00 C0
	clc		; 18
	dec $0000.w,X		; DE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C000.w		; C0 00 C0
	rol $3FC0.w,X		; 3E C0 3F
	jsr ($E33C.w,X)		; FC 3C E3
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	ldx $03BE.w,Y		; BE BE 03
	brk $1F.b		; 00 1F
	brk $DD.b		; 00 DD
	rol $003F.w,X		; 3E 3F 00
	and $1F1E.w,X		; 3D 1E 1F
	brk $0A.b		; 00 0A
	tas		; 1B
	tsb $11.b		; 04 11
	ora $080609.l		; 0F 09 06 08
	php		; 08
	rol $0100.w,X		; 3E 00 01
	php		; 08
	asl $0000.w,X		; 1E 00 00
	ora $01.b		; 05 01
	ora $000601.l		; 0F 01 06 00
	ora $00FF08.l		; 0F 08 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sta $00.b,S		; 83 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tda		; 7B
	tda		; 7B
	tsa		; 3B
	tsa		; 3B
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $3FCF1F.l,X		; FF 1F CF 3F
	sbc $3FCF00.l,X		; FF 00 CF 3F
	ror $6B00.w,X		; 7E 00 6B
	brk $6B.b		; 00 6B
	brk $6B.b		; 00 6B
	brk $C6.b		; 00 C6
	cmp $00BF80.l,X		; DF 80 BF 00
	adc $003F03.l,X		; 7F 03 3F 00
	ora ($01.b,X)		; 01 01
	ora $21.b,X		; 15 21
	and $21.b,X		; 35 21
	and $3B.b,X		; 35 3B
	brk $1D.b		; 00 1D
	brk $1D.b		; 00 1D
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($09.b,X)		; 01 09
	ora $0E0C.w		; 0D 0C 0E
	tsb $06.b		; 04 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and ($00.b,S),Y		; 33 00
	txs		; 9A
	ora ($9C.b,X)		; 01 9C
	ora $9C.b,S		; 03 9C
	ora [$F0.b]		; 07 F0
	phd		; 0B
	bmi -13.b		; 30 F3
	pla		; 68
	sbc $58.b,S		; E3 58
.INDEX 16
	rep #$10		; C2 10
	jmp.w [$EC88]		; DC 88 EC
	txa		; 8A
	nop		; EA
	.db $82, $E2, $0E		; 82 E2 0E
	asl A		; 0A
	lsr $9E42.w		; 4E 42 9E
	.db $82, $BC, $80		; 82 BC 80
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $05.b,S		; 03 05
	ora $3723.w,X		; 1D 23 37
	eor $023F7F.l		; 4F 7F 3F 02
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $23.b		; 00 23
	brk $4F.b		; 00 4F
	brk $3F.b		; 00 3F
	brk $46.b		; 00 46
	plb		; AB
	lda $CE.b		; A5 CE
	dec $FFED.w,X		; DE ED FF
	jsr ($FFFE.w,X)		; FC FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00ABFF.l,X		; FF FF AB 00
	dec $ED00.w		; CE 00 ED
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C1.b		; 00 C1
	bra -61.b		; 80 C3
	sta ($87.b,X)		; 81 87
	cmp $00.b,S		; C3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $81.b		; 00 81
	ora ($C2.b,X)		; 01 C2
	ora $17.b,S		; 03 17
	tsb $0817.w		; 0C 17 08
	ora $3C02.w,X		; 1D 02 3C
	cop $3E.b		; 02 3E
	php		; 08
	and ($04.b)		; 32 04
	rol $1C00.w,X		; 3E 00 1C
	brk $08.b		; 00 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	tsb $0C60.w		; 0C 60 0C
	cpx #$7088.w		; E0 88 70
	dey		; 88
	bmi -120.b		; 30 88
	rti		; 40

	iny		; C8
	bmi  -8.b		; 30 F8
	brk $70.b		; 00 70
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sei		; 78
	php		; 08
	beq -128.b		; F0 80
	beq -128.b		; F0 80
	bmi   0.b		; 30 00
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	eor [$3F.b]		; 47 3F
	sec		; 38
	ora [$05.b]		; 07 05
	tas		; 1B
	ora $01.b,S		; 03 01
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	and $000700.l,X		; 3F 00 07 00
	tas		; 1B
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $51.b		; 00 51
	lda ($E2.b)		; B2 E2
	ora $F807.w,X		; 1D 07 F8
	cmp [$F8.b]		; C7 F8
	sbc [$F8.b]		; E7 F8
	cmp $F08FF0.l		; CF F0 8F F0
	adc $008C80.l,X		; 7F 80 8C 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	ora $80.b,S		; 03 80
	ora ($5F.b,X)		; 01 5F
	ldy #$C0FF.w		; A0 FF C0
	cmp [$2C.b],Y		; D7 2C
	sbc ($0C.b,S),Y		; F3 0C
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	eor [$07.b]		; 47 07
	jsr $0100.w		; 20 00 01
	ora $0C00.w		; 0D 00 0C
	bpl  80.b		; 10 50
	and $7DBD.w,X		; 3D BD 7D
	adc $7B7B.w,X		; 7D 7B 7B
	sed		; F8
	brk $FC.b		; 00 FC
	brk $F6.b		; 00 F6
	php		; 08
	xce		; FB
	trb $FEFD.w		; 1C FD FE
	sbc $3FFE7E.l,X		; FF 7E FE 3F
	sbc $70701F.l,X		; FF 1F 70 70
	beq -16.b		; F0 F0
	cpx #$00EC.w		; E0 EC 00
	asl $FF78.w,X		; 1E 78 FF
	bit $9E7F.w,X		; 3C 7F 9E
	lda $FEDFCE.l,X		; BF CE DF FE
	rti		; 40

	sbc [$40.b]		; E7 40
	sbc $DC40.w,Y		; F9 40 DC
	cpy #$00CE.w		; C0 CE 00
	ror $00.b		; 66 00
	adc [$00.b]		; 67 00
	and ($00.b,S),Y		; 33 00
	ror $E7.b		; 66 E7
	adc ($F9.b,X)		; 61 F9
	cli		; 58
	dec $EFCC.w,X		; DE CC EF
	lsr $77.b		; 46 77
	jsl $BB23BB.l		; 22 BB 23 BB
	ora ($DD.b),Y		; 11 DD
	eor $00AF00.l		; 4F 00 AF 00
	beq  16.b		; F0 10
	cpx #$601F.w		; E0 1F 60
	asl $0040.w,X		; 1E 40 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	and $C09F80.l,X		; 3F 80 9F C0
	cmp $5F5FC0.l		; CF C0 5F 5F
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1D00.w		; 0C 00 1D
	tsb $1C3D.w		; 0C 3D 1C
	phk		; 4B
	sec		; 38
	cpx $D070.w		; EC 70 D0
	cpx #$C0A0.w		; E0 A0 C0
	jsr $0080.w		; 20 80 00
	brk $0C.b		; 00 0C
	asl $1E18.w		; 0E 18 1E
	brk $3C.b		; 00 3C
	rts		; 60

	bvs -64.b		; 70 C0
	cpx #$C080.w		; E0 80 C0
	brk $C0.b		; 00 C0
	clc		; 18
	mvp $24,$38		; 44 38 24
	tsb $1C26.w		; 0C 26 1C
	rol $06.b,X		; 36 06
	trb $07.b		; 14 07
	clc		; 18
	ora $001F00.l,X		; 1F 00 1F 00
	bit $1C04.w,X		; 3C 04 1C
	tsb $38.b		; 04 38
	jsr $0008.w		; 20 08 00
	clc		; 18
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $0C3800.l,X		; 3F 00 38 0C
	bit $3E1C.w,X		; 3C 1C 3E
	trb $1C1E.w		; 1C 1E 1C
	clc		; 18
	bit $3878.w,X		; 3C 78 38
	jmp ($0038.w,X)		; 7C 38 00
	brk $00.b		; 00 00
	asl $1E18.w		; 0E 18 1E
	clc		; 18
	trb $3C18.w		; 1C 18 3C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	bpl  56.b		; 10 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $05.b		; 05 05
	phd		; 0B
	asl A		; 0A
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	asl A		; 0A
	asl $1800.w,X		; 1E 00 18
	brk $00.b		; 00 00
	bmi  56.b		; 30 38
	bmi 112.b		; 30 70
	pla		; 68
	bvs -56.b		; 70 C8
	cpx #$E0E8.w		; E0 E8 E0
	inx		; E8
	rts		; 60

	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	bmi 120.b		; 30 78
	jsr $2078.w		; 20 78 20
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	beq  32.b		; F0 20
	bvs   0.b		; 70 00
	jsr $0000.w		; 20 00 00
	brk $0F.b		; 00 0F
	brk $F0.b		; 00 F0
	lda $00FF80.l,X		; BF 80 FF 00
	inc $07.b,X		; F6 07
	ldy #$003F.w		; A0 3F 00
	sed		; F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	and $007F30.l,X		; 3F 30 7F 00
	sbc $01F900.l,X		; FF 00 F9 01
	cld		; D8
	clc		; 18
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	tsb $FF0F.w		; 0C 0F FF
	brk $1C.b		; 00 1C
	ora $00FF00.l,X		; 1F 00 FF 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	ora $FF.b,S		; 03 FF
	brk $E3.b		; 00 E3
	ora $80.b,S		; 03 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $FFF80B.l,X		; 1F 0B F8 FF
	brk $FF.b		; 00 FF
	brk $F2.b		; 00 F2
	ora $80.b,S		; 03 80
	sbc $00F000.l,X		; FF 00 F0 00
	brk $03.b		; 00 03
	ora $37.b,S		; 03 37
	bmi  -1.b		; 30 FF
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	ora ($78.b,X)		; 01 78
	sei		; 78
	brk $00.b		; 00 00
	ora $0FFFE0.l,X		; 1F E0 FF 0F
	adc $807F80.l,X		; 7F 80 7F 80
	ora $010600.l		; 0F 00 06 01
	tsb $03.b		; 04 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cpy #$8600.w		; C0 00 86
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	bra  -2.b		; 80 FE
	brk $CF.b		; 00 CF
	bmi   8.b		; 30 08
	beq   8.b		; F0 08
	beq  24.b		; F0 18
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$C0C0.w		; C0 C0 C0
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	clc		; 18
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $808000.l,X		; FF 00 80 80
	bra -26.b		; 80 E6
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $C0.b		; 00 C0
	cpy #$0000.w		; C0 00 00
	cmp ($1D.b,S),Y		; D3 1D
	xba		; EB
	ora [$D8.b],Y		; 17 D8
	adc [$F6.b]		; 67 F6
	tsb $0CF5.w		; 0C F5 0C
	sbc ($0E.b)		; F2 0E
	cpx #$C01F.w		; E0 1F C0
	brk $61.b		; 00 61
	jsr $00E3.w		; 20 E3 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C0C0.w		; E0 C0 C0
	ldy #$C000.w		; A0 00 C0
	bra -16.b		; 80 F0
	ldy #$E83C.w		; A0 3C E8
	asl $E03E.w		; 0E 3E E0
	and $00C000.l,X		; 3F 00 C0 00
	ldy #$4000.w		; A0 00 40
	brk $40.b		; 00 40
	rti		; 40

	bne  16.b		; D0 10
	pea $0004.w		; F4 04 00
	brk $1C.b		; 00 1C
	trb $0000.w		; 1C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $0C.b,S		; 03 0C
	ora $061F10.l		; 0F 10 1F 06
	and $62070D.l,X		; 3F 0D 07 62
	inc A		; 1A
	cmp ($3B.b,X)		; C1 3B
	sty $71.b		; 84 71
	tsb $000C.w		; 0C 0C 00
	bpl   0.b		; 10 00
	asl $06.b		; 06 06
	tsb $180D.w		; 0C 0D 18
	cop $7C.b		; 02 7C
	eor ($FC.b,X)		; 41 FC
	sta $F8.b		; 85 F8
	asl A		; 0A
	ror $7F00.w,X		; 7E 00 7F
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	brk $7A.b		; 00 7A
	brk $7B.b		; 00 7B
	brk $3B.b		; 00 3B
	brk $19.b		; 00 19
	brk $20.b		; 00 20
	and ($20.b,X)		; 21 20
	jsr $1110.w		; 20 10 11
	jsr $2021.w		; 20 21 20
	and $21.b		; 25 21
	and $01.b		; 25 01
	ora $09.b		; 05 09
	ora $37F077.l		; 0F 77 F0 37
	adc $CE3F9F.l,X		; 7F 9F 3F CE
	ora $7106E4.l,X		; 1F E4 06 71
	tsb $6B.b		; 04 6B
	brk $36.b		; 00 36
	brk $30.b		; 00 30
	sed		; F8
	ora [$FF.b],Y		; 17 FF
	asl $047F.w		; 0E 7F 04
	and $205F40.l,X		; 3F 40 5F 20
	ldx $B420.w		; AE 20 B4
	ora ($DB.b)		; 12 DB
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $7E21.w,X		; 1E 21 7E
	sta $7F7FBF.l,X		; 9F BF 7F 7F
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $0E0000.l,X		; FF 00 00 0E
	brk $21.b		; 00 21
	brk $9F.b		; 00 9F
	brk $7F.b		; 00 7F
	brk $CD.b		; 00 CD
	and ($A3.b)		; 32 A3
	jmp $0F0CF3.l		; 5C F3 0C 0F
	sbc ($0E.b,X)		; E1 0E
	cpx #$F01F.w		; E0 1F F0
	ora $B007F0.l,X		; 1F F0 07 B0
	ora $180B38.l		; 0F 38 0B 18
	ora $1C.b		; 05 1C
	stz $9F80.w,X		; 9E 80 9F
	bra -81.b		; 80 AF
	ldy #$202F.w		; A0 2F 20
	ora $101710.l,X		; 1F 10 17 10
	ora [$00.b]		; 07 00
	phd		; 0B
	php		; 08
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $60.b		; 00 60
	cpy #$8060.w		; C0 60 80
	jsr $30E0.w		; 20 E0 30
	cpy #$0018.w		; C0 18 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	cpx #$C020.w		; E0 20 C0
	brk $F0.b		; 00 F0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($38.b,X)		; 01 38
	.db $82, $3C, $86		; 82 3C 86
	sed		; F8
	sty $F0.b		; 84 F0
	sty $78.b		; 84 78
	tsb $0870.w		; 0C 70 08
	cpx #$E008.w		; E0 08 E0
	php		; 08
	jsr ($F880.w,X)		; FC 80 F8
	bra 124.b		; 80 7C
	tsb $78.b		; 04 78
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	ora $06.b,S		; 03 06
	ora $0C.b,S		; 03 0C
	ora [$1C.b]		; 07 1C
	asl $1C18.w		; 0E 18 1C
	and ($58.b),Y		; 31 58
	jsl $020101.l		; 22 01 01 02
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$00.b]		; 07 00
	asl $1C00.w		; 0E 00 1C
	brk $F0.b		; 00 F0
	sty $E0.b		; 84 E0
	php		; 08
	cpy #$8010.w		; C0 10 80
	jsr $4000.w		; 20 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($F804.w,X)		; 7C 04 F8
	php		; 08
	beq  16.b		; F0 10
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	rti		; 40

	pea $F808.w		; F4 08 F8
	php		; 08
	jsr ($FC04.w,X)		; FC 04 FC
	cop $6F.b		; 02 6F
	brk $27.b		; 00 27
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	sbc $D73CDB.l,X		; FF DB 3C D7
	sec		; 38
	sbc [$18.b]		; E7 18
	adc ($8D.b)		; 72 8D
	inc $EB01.w,X		; FE 01 EB
	trb $FB.b		; 14 FB
	asl $FF.b		; 06 FF
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	bra   2.b		; 80 02
	rti		; 40

	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	cpy #$A000.w		; C0 00 A0
	cpy #$8060.w		; C0 60 80
	cpy #$8000.w		; C0 00 80
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	cpy #$00C0.w		; C0 C0 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	trb $1E3F.w		; 1C 3F 1E
	rol $2E1E.w,X		; 3E 1E 2E
	asl $1E2E.w,X		; 1E 2E 1E
	bit $640E.w		; 2C 0E 64
	tsb $2222.w		; 0C 22 22
	trb $0E1C.w		; 1C 1C 0E
	asl $1F0E.w,X		; 1E 0E 1F
	asl $0C1F.w		; 0E 1F 0C
	asl $1E0C.w,X		; 1E 0C 1E
	brk $1E.b		; 00 1E
	brk $06.b		; 00 06
	ora ($0C.b,X)		; 01 0C
	tsb $13.b		; 04 13
	ora $301F20.l		; 0F 20 1F 30
	ora $003F18.l		; 0F 18 3F 00
	and $020301.l,X		; 3F 01 03 02
	ora [$04.b]		; 07 04
	ora $001E03.l		; 0F 03 1E 00
	tsb $0100.w		; 0C 00 01
	ora ($02.b,X)		; 01 02
	cop $1A.b		; 02 1A
	tas		; 1B
	sbc #$9112.w		; E9 12 91
	ror $23.b		; 66 23
	dec $E7.b		; C6 E7
	ora $EF1FCF.l		; 0F CF 1F EF
	asl $CEE7.w,X		; 1E E7 CE
	sbc $E4.b,S		; E3 E4
	cpx #$C006.w		; E0 06 C0
	lsr $9E80.w		; 4E 80 9E
	ora $1F.b,S		; 03 1F
	sta [$BF.b]		; 87 BF
	asl $1E.b		; 06 1E
.INDEX 16
	rep #$DE		; C2 DE
	sbc ($FD.b,X)		; E1 FD
	and $7900.w,Y		; 39 00 79
	brk $7D.b		; 00 7D
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $3C.b		; 00 3C
	ora $18.b,S		; 03 18
	ora [$01.b]		; 07 01
	ora [$08.b]		; 07 08
	asl $0E08.w		; 0E 08 0E
	bit $2E2E.w		; 2C 2E 2E
	rol $2C2C.w		; 2E 2C 2C
	ora #$0109.w		; 09 09 01
	ora ($00.b,X)		; 01 00
	brk $B3.b		; 00 B3
	brk $99.b		; 00 99
	brk $DC.b		; 00 DC
	brk $CE.b		; 00 CE
	brk $E7.b		; 00 E7
	brk $F3.b		; 00 F3
	cpy #$A0BF.w		; C0 BF A0
	bvc  30.b		; 50 1E
	sta ($DD.b),Y		; 91 DD
	dey		; 88
	inc $EFCC.w		; EE CC EF
	dec $F7.b		; C6 F7
	adc $7B.b,S		; 63 7B
	bpl  28.b		; 10 1C
	rti		; 40

	brk $ED.b		; 00 ED
	tsb $0502.w		; 0C 02 05
	tsb $1B.b		; 04 1B
	ora ($2F.b,S),Y		; 13 2F
	rol $3F5F.w		; 2E 5F 3F
	eor $2F5F3F.l,X		; 5F 3F 5F 2F
	ora $052F1F.l,X		; 1F 1F 2F 05
	brk $1B.b		; 00 1B
	brk $2F.b		; 00 2F
	brk $5F.b		; 00 5F
	brk $5F.b		; 00 5F
	brk $5D.b		; 00 5D
	cop $1E.b		; 02 1E
	ora ($2F.b,X)		; 01 2F
	brk $7E.b		; 00 7E
	sbc $2EFF7E.l,X		; FF 7E FF 2E
	sbc $9DFE0D.l,X		; FF 0D FE 9D
	inc $FDFF.w,X		; FE FF FD
	sbc $FCFBFC.l,X		; FF FC FB FC
	sbc [$08.b],Y		; F7 08
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FE00.w,X		; FE 00 FE
	brk $FC.b		; 00 FC
	brk $3D.b		; 00 3D
	cpy #$00FD.w		; C0 FD 00
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F018.w		; E0 18 F0
	trb $0C60.w		; 1C 60 0C
	sei		; 78
	stx $8630.w		; 8E 30 86
	bit $18C6.w,X		; 3C C6 18
	eor $0E.b,S		; 43 0E
	and $F0.b,S		; 23 F0
	bpl -24.b		; 10 E8
	php		; 08
	sed		; F8
	php		; 08
	pea $FC84.w		; F4 84 FC
	sty $7A.b		; 84 7A
	.db $42, $3E		; 42 3E
	cop $3C.b		; 02 3C
	jsr $0700.w		; 20 00 07
	cop $0E.b		; 02 0E
	ora $1C.b		; 05 1C
	phd		; 0B
	sec		; 38
	ora [$30.b],Y		; 17 30
	ora $603E60.l		; 0F 60 3E 60
	bit $01C1.w,X		; 3C C1 01
	ora ($05.b,X)		; 01 05
	tsb $0B.b		; 04 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $203F00.l		; 0F 00 3F 20
	ora $417F00.l,X		; 1F 00 7F 41
	beq  24.b		; F0 18
	cpx #$E010.w		; E0 10 E0
	bmi -64.b		; 30 C0
	bmi -64.b		; 30 C0
	rts		; 60

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$F000.w		; E0 00 F0
	bpl -48.b		; 10 D0
	bpl -32.b		; 10 E0
	jsr $0080.w		; 20 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	and $DFE6.w,Y		; 39 E6 DF
	bmi -17.b		; 30 EF
	ora ($DE.b),Y		; 11 DE
	and $8CFF.w		; 2D FF 8C
	lda ($6D.b,S),Y		; B3 6D
	sbc $FF12.w		; ED 12 FF
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	cpy #$E0F1.w		; C0 F1 E0
	adc $8C44.w		; 6D 44 8C
	bra -19.b		; 80 ED
	bra -13.b		; 80 F3
	sbc ($E6.b,X)		; E1 E6
	inc $CE.b		; E6 CE
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $F0.b		; 00 F0
	brk $90.b		; 00 90
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	cpx #$E0E0.w		; E0 E0 E0
	bmi  48.b		; 30 30
	bit $C400.w,X		; 3C 00 C4
	brk $F8.b		; 00 F8
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	bpl -64.b		; 10 C0
	bvs  32.b		; 70 20
	bmi  64.b		; 30 40
	clc		; 18
	brk $C0.b		; 00 C0
	rti		; 40

	sei		; 78
	bmi  48.b		; 30 30
	jsr $00A0.w		; 20 A0 00
	brk $20.b		; 00 20
	jsr $00C0.w		; 20 C0 00
	beq  16.b		; F0 10
	asl A		; 0A
	asl $1A.b		; 06 1A
	ora [$3F.b]		; 07 3F
	brk $3F.b		; 00 3F
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	php		; 08
	sed		; F8
	bpl   5.b		; 10 05
	tsb $01.b		; 04 01
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
	bra -64.b		; 80 C0
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
	bra -64.b		; 80 C0
	jsr $D020.w		; 20 20 D0
	bne -32.b		; D0 E0
	bne -24.b		; D0 E8
	inx		; E8
	pea $0000.w		; F4 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $D000.w		; 20 00 D0
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	brk $F4.b		; 00 F4
	brk $74.b		; 00 74
	sed		; F8
	jsr ($343A.w,X)		; FC 3A 34
	phx		; DA
	trb $FCE0.w		; 1C E0 FC
	cop $DE.b		; 02 DE
	ora $8EF3.w		; 0D F3 8E
	sta $00F8E6.l,X		; 9F E6 F8 00
	dec A		; 3A
	brk $5A.b		; 00 5A
	rti		; 40

	cpx #$82E0.w		; E0 E0 82
	brk $8D.b		; 00 8D
	jsr $400E.w		; 20 0E 40
	lsr $40.b		; 46 40
	tsb $31.b		; 04 31
	tsb $3C61.w		; 0C 61 3C
	adc ($1E.b,X)		; 61 1E
	cmp $58.b,S		; C3 58
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $3C, $86		; 82 3C 86
	jmp ($1E84.w,X)		; 7C 84 1E
	bpl  62.b		; 10 3E
	jsr $405E.w		; 20 5E 40
	jmp ($3E40.w,X)		; 7C 40 3E
	cop $7C.b		; 02 7C
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	sty $70.b		; 84 70
	sty $78.b		; 84 78
	sty $8C78.w		; 8C 78 8C
	rts		; 60

	dey		; 88
	rts		; 60

	dey		; 88
	bvs -104.b		; 70 98
	bvs -104.b		; 70 98
	jmp ($7804.w,X)		; 7C 04 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	php		; 08
	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	tya		; 98
	cpx #$E018.w		; E0 18 E0
	clc		; 18
	sed		; F8
	brk $B8.b		; 00 B8
	rti		; 40

	clv		; B8
	rts		; 60

	ldy $6C70.w,X		; BC 70 6C
	jsr $1070.w		; 20 70 10
	bvs  16.b		; 70 10
	bmi  16.b		; 30 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora $103F08.l,X		; 1F 08 3F 10
	dec A		; 3A
	brk $1E.b		; 00 1E
	tsb $76.b		; 04 76
	tsb $7E.b		; 04 7E
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	trb $3C5C.w		; 1C 5C 3C
	bit $383C.w,X		; 3C 3C 38
	sec		; 38
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	rol $3E1C.w,X		; 3E 1C 3E
	trb $187E.w		; 1C 7E 18
	jmp ($3C00.w,X)		; 7C 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E70.w,X		; 1E 70 0E
	rts		; 60

	and $613E61.l		; 2F 61 3E 61
	trb $1CC1.w		; 1C C1 1C
	cmp ($7E.b,X)		; C1 7E
	cmp $7C.b,S		; C3 7C
.ACCU 16
	rep #$2F		; C2 2F
	jsr $203F.w		; 20 3F 20
	asl $5F00.w,X		; 1E 00 5F
	eor ($7F.b,X)		; 41 7F
	eor ($7E.b,X)		; 41 7E
	rti		; 40

	bit $3E00.w,X		; 3C 00 3E
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
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
	brk $18.b		; 00 18
	cpx $F4.b		; E4 F4
	inc A		; 1A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $00.b		; E4 00
	inc A		; 1A
	brk $3D.b		; 00 3D
	dey		; 88
	sbc $0DFA88.l,X		; FF 88 FA 0D
	rtl		; 6B

	tsb $8B34.w		; 0C 34 8B
	and $1EF2.w		; 2D F2 1E
	sbc ($DF.b),Y		; F1 DF
	bvc  16.b		; 50 10
.INDEX 16
	rep #$90		; C2 90
	ldy $F5.b		; A4 F5
	tsb $F0.b		; 04 F0
	bpl -13.b		; 10 F3
	bra  66.b		; 80 42
	rti		; 40

	brk $00.b		; 00 00
	jsr $2000.w		; 20 00 20
	cpy #$8040.w		; C0 40 80
	cpy #$8000.w		; C0 00 80
	rts		; 60

	ldy #$F53F.w		; A0 3F F5
	stx $53.b		; 86 53
	jmp.w [$FB07]		; DC 07 FB
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bvc  16.b		; 50 10
	sei		; 78
	brk $A8.b		; 00 A8
	bit #$6361.w		; 89 61 63
	ora $3D23.w,X		; 1D 23 3D
	ora $05.b,S		; 03 05
	tas		; 1B
	cop $05.b		; 02 05
	ora $00.b,S		; 03 00
	ora ($02.b,X)		; 01 02
	ora ($0F.b,X)		; 01 0F
	ora $237C.w		; 0D 7C 23
	brk $03.b		; 00 03
	brk $1B.b		; 00 1B
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	ora $12.b,S		; 03 12
	bpl -11.b		; 10 F5
	plx		; FA
	jsr ($D5F3.w,X)		; FC F3 D5
	xce		; FB
	sec		; 38
	sbc $EA3DDE.l,X		; FF DE 3D EA
	ora $4CF3.w,X		; 1D F3 4C
	cmp $02FAA0.l,X		; DF A0 FA 02
	sbc ($02.b)		; F2 02
	plx		; FA
	cop $FD.b		; 02 FD
	ora ($3C.b,X)		; 01 3C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	rti		; 40

	brk $A0.b		; 00 A0
	ora [$00.b]		; 07 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora $001F00.l		; 0F 00 1F 00
	rol $7E00.w,X		; 3E 00 7E
	brk $03.b		; 00 03
	ora $04.b,S		; 03 04
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $09.b		; 00 09
	ora #$1312.w		; 09 12 13
	rol $27.b		; 26 27
	cmp $19CE10.l		; CF 10 CE 19
	sbc $0FDF1C.l		; EF 1C DF 0F
	eor [$2F.b]		; 47 2F
	adc $17.b,S		; 63 17
	phx		; DA
	phd		; 0B
	jmp.w [$0704]		; DC 04 07
	and [$03.b],Y		; 37 03
	dec A		; 3A
	tsb $1C.b		; 04 1C
	ora [$2F.b]		; 07 2F
	ora $BF.b,S		; 03 BF
	ora ($9F.b,X)		; 01 9F
	rti		; 40

	adc $196744.l		; 6F 44 67 19
	cpx $73.b		; E4 73
	stx $16E0.w		; 8E E0 16
	sbc $0C03.w,Y		; F9 03 0C
	and ($04.b,S),Y		; 33 04
	ora $0D02.w,Y		; 19 02 0D
	brk $06.b		; 00 06
	ora [$04.b]		; 07 04
	sta ($80.b,X)		; 81 80
	tas		; 1B
	ora ($1C.b)		; 12 1C
	brk $1D.b		; 00 1D
	ora ($0E.b),Y		; 11 0E
	php		; 08
	asl $04.b		; 06 04
	ora $02.b,S		; 03 02
	inc $F009.w,X		; FE 09 F0
	asl $F9.b		; 06 F9
	tsb $FB.b		; 04 FB
	tsb $7F.b		; 04 7F
	tsb $BB.b		; 04 BB
	bra 125.b		; 80 7D
	cpy #$C01D.w		; C0 1D C0
	beq   0.b		; F0 00
	xce		; FB
	cop $FF.b		; 02 FF
	tsb $FF.b		; 04 FF
	tsb $FB.b		; 04 FB
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	bra 127.b		; 80 7F
	rti		; 40

	ora $011E00.l		; 0F 00 1E 01
	and ($0C.b,S),Y		; 33 0C
	adc ($00.b,X)		; 61 00
	adc $106C00.l,X		; 7F 00 6C 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	tsb $1E0C.w		; 0C 0C 1E
	brk $1C.b		; 00 1C
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	tsb $1E3F.w		; 0C 3F 1E
	adc $387E3C.l,X		; 7F 3C 7E 38
	jsr ($0070.w,X)		; FC 70 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	tsb $1E0C.w		; 0C 0C 1E
	clc		; 18
	rol $3C30.w,X		; 3E 30 3C
	rts		; 60

	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	cop $05.b		; 02 05
	ora [$0B.b]		; 07 0B
	ora [$0B.b]		; 07 0B
	ora $0B.b		; 05 0B
	cop $1D.b		; 02 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $1D.b		; 00 1D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	rti		; 40

	bra  64.b		; 80 40
	cpy #$2080.w		; C0 80 20
	cpy #$0000.w		; C0 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $F7.b		; 00 F7
	tay		; A8
	ror $A8.b,X		; 76 A8
	jmp.w [$F060]		; DC 60 F0
	cpy #$C0A0.w		; C0 A0 C0
	jsr $2080.w		; 20 80 20
	rti		; 40

	cpx #$AE80.w		; E0 80 AE
	rol $8C.b		; 26 8C
	bit $40.b		; 24 40
	rts		; 60

	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	bne   0.b		; D0 00
	inx		; E8
	brk $F4.b		; 00 F4
	brk $7A.b		; 00 7A
	brk $B6.b		; 00 B6
	brk $AC.b		; 00 AC
	brk $78.b		; 00 78
	brk $C0.b		; 00 C0
	sei		; 78
	rti		; 40

	rts		; 60

	rts		; 60

	bvs 112.b		; 70 70
	sei		; 78
	sec		; 38
	ldy $D890.w,X		; BC 90 D8
	bra -48.b		; 80 D0
	brk $80.b		; 00 80
	bmi  48.b		; 30 30
	tsb $0B.b		; 04 0B
	phd		; 0B
	ora [$97.b],Y		; 17 97
	eor $FF9F6F.l		; 4F 6F 9F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0BFFFF.l,X		; FF FF FF 0B
	brk $17.b		; 00 17
	brk $4B.b		; 00 4B
	tsb $93.b		; 04 93
	tsb $03FC.w		; 0C FC 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FDBA00.l,X		; FF 00 BA FD
	sbc $FFFFFE.l,X		; FF FE FF FF
	xba		; EB
	sbc [$DE.b],Y		; F7 DE
	lda $67.b,S		; A3 67
	txy		; 9B
	tya		; 98
	adc $FD1DFA.l,X		; 7F FA 1D FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $F7.b		; 00 F7
	brk $A3.b		; 00 A3
	brk $83.b		; 00 83
	brk $07.b		; 00 07
	tsb $01.b		; 04 01
	tsb $8F.b		; 04 8F
	bvc  -1.b		; 50 FF
	jsr $00FF.w		; 20 FF 00
	sbc $FB32.w,X		; FD 32 FB
	bit $CF.b,X		; 34 CF
	bcs -65.b		; B0 BF
	rti		; 40

	xce		; FB
	jmp $060222.l		; 5C 22 02 06
	asl $0E.b		; 06 0E
	asl $91B3.w		; 0E B3 91
	and [$03.b],Y		; 37 03
	bcs   0.b		; B0 00
	lsr $06.b		; 46 06
	dec $BF82.w,X		; DE 82 BF
	adc $CE7E9F.l,X		; 7F 9F 7E CE
	bit $18E4.w,X		; 3C E4 18
	clv		; B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	adc $08FE1C.l,X		; 7F 1C FE 08
	jmp ($3800.w,X)		; 7C 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $BDC0.w,X		; 7E C0 BD
	ora ($C8.b,X)		; 01 C8
	ora $C020C0.l		; 0F C0 20 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $BF.b		; 00 BF
	bra 126.b		; 80 7E
	brk $B6.b		; 00 B6
	stx $80.b		; 86 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $AF.b		; 00 AF
	rti		; 40

	lda $987F08.l,X		; BF 08 7F 98
	cmp $03DD18.l		; CF 18 DD 03
	adc $005F00.l		; 6F 00 5F 00
	eor $500010.l		; 4F 10 00 50
	php		; 08
	pha		; 48
	phd		; 0B
	tas		; 1B
	ora $3B.b,S		; 03 3B
	ora [$34.b]		; 07 34
	ora [$17.b]		; 07 17
	asl $26.b		; 06 26
	ora ($31.b,X)		; 01 31
	and $3D00.w,X		; 3D 00 3D
	brk $3B.b		; 00 3B
	brk $17.b		; 00 17
	brk $19.b		; 00 19
	ora [$1A.b]		; 07 1A
	asl $09.b		; 06 09
	tsb $F1.b		; 04 F1
	tsb $0E0C.w		; 0C 0C 0E
	trb $091E.w		; 1C 1E 09
	ora $0800.w		; 0D 00 08
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	cmp [$03.b],Y		; D7 03
	stp		; DB
	brk $BA.b		; 00 BA
	brk $FB.b		; 00 FB
	brk $FB.b		; 00 FB
	bra -73.b		; 80 B7
	jsr $10DF.w		; 20 DF 10
	sbc [$08.b]		; E7 08
.ACCU 16
	rep #$EB		; C2 EB
	iny		; C8
	cpx $DD98.w		; EC 98 DD
	and $193D.w,Y		; 39 3D 19
	ora $0BC3.w,X		; 1D C3 0B
	sbc $03.b,S		; E3 03
	plx		; FA
	asl A		; 0A
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7D62.w,X		; 3D 62 7D
	.db $62, $1D, $82		; 62 1D 82
	ora $05C2.w,Y		; 19 C2 05
	ror $03.b		; 66 03
	and $000F00.l,X		; 3F 00 0F 00
	ora $9F.b,S		; 03 9F
	cop $9F.b		; 02 9F
	cop $FD.b		; 02 FD
	bra 125.b		; 80 7D
	rti		; 40

	and $0020.w,Y		; 39 20 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $A0.b		; 00 A0
	clv		; B8
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	cpy #$C018.w		; C0 18 C0
	clc		; 18
	cpy #$5018.w		; C0 18 50
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -64.b		; 10 C0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi -128.b		; 30 80
	jsr $60C0.w		; 20 C0 60
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	beq  16.b		; F0 10
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$8040.w		; C0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	rts		; 60

	jsr ($F4F0.w,X)		; FC F0 F4
	sed		; F8
	cld		; D8
	cpx #$00E0.w		; E0 E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	beq -16.b		; F0 F0
	sed		; F8
	cpx #$80F8.w		; E0 F8 80
	cpx #$0000.w		; E0 00 00
	ora $1C3E0E.l,X		; 1F 0E 3E 1C
	ror $38.b,X		; 76 38
	ror $FE78.w,X		; 7E 78 FE
	jmp ($78E4.w,X)		; 7C E4 78
	cpy $78.b		; C4 78
	bvs   0.b		; 70 00
	tsb $000E.w		; 0C 0E 00
	trb $3830.w		; 1C 30 38
	bmi 124.b		; 30 7C
	pla		; 68
	jmp ($7860.w,X)		; 7C 60 78
	brk $78.b		; 00 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	tsb $0B.b		; 04 0B
	ora ($AF.b,S),Y		; 13 AF
	lda [$5F.b]		; A7 5F
	sta $0000FF.l,X		; 9F FF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	phd		; 0B
	brk $AF.b		; 00 AF
	brk $5D.b		; 00 5D
	cop $F9.b		; 02 F9
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	rts		; 60

	sty $B4.b,X		; 94 B4
	plx		; FA
	sed		; F8
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $94.b		; 00 94
	brk $FA.b		; 00 FA
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	eor $554FF3.l,X		; 5F F3 4F 55
	plb		; AB
	inc $EA11.w		; EE 11 EA
	ora ($D7.b),Y		; 11 D7
	sec		; 38
	sbc $00FF1A.l		; EF 1A FF 00
	lsr $0440.w,X		; 5E 40 04
	mvp $8A,$2E		; 44 2E 8A
	adc [$61.b],Y		; 77 61
	adc [$61.b],Y		; 77 61
	dec A		; 3A
	brk $78.b		; 00 78
	rts		; 60

	brk $00.b		; 00 00
	beq  24.b		; F0 18
	cpx #$00F8.w		; E0 F8 00
	beq   0.b		; F0 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	ora $00.b,S		; 03 00
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
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $5D.b		; 00 5D
	cmp $89.b,S		; C3 89
	tda		; 7B
	adc ($0E.b),Y		; 71 0E
	and $086F00.l		; 2F 00 6F 08
	sbc $0FEF0F.l		; EF 0F EF 0F
	sbc $81BD0E.l,X		; FF 0E BD 81
	trb $11.b		; 14 11
	brk $02.b		; 00 02
	brk $15.b		; 00 15
	rti		; 40

	cli		; 58
	sta [$9F.b]		; 87 9F
	ora [$1F.b]		; 07 1F
	.db $82, $8E, $00		; 82 8E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	beq  56.b		; F0 38
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$01C0.w		; C0 C0 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $0C07.w		; 0C 07 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	cmp $009F00.l		; CF 00 9F 00
	ror $9E00.w,X		; 7E 00 9E
	brk $C7.b		; 00 C7
	brk $C5.b		; 00 C5
	asl A		; 0A
	pei ($1B.b)		; D4 1B
	cpy $C713.w		; CC 13 C7
	sbc [$0F.b],Y		; F7 0F
	adc $E61F9E.l		; 6F 9E 1F E6
	ora [$F8.b]		; 07 F8
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$F200.w		; E0 00 F2
	ora ($77.b)		; 12 77
	brk $76.b		; 00 76
	brk $F6.b		; 00 F6
	brk $EC.b		; 00 EC
	brk $F8.b		; 00 F8
	asl $F0.b		; 06 F0
	asl $7C.b		; 06 7C
	asl $F8.b		; 06 F8
	.db $82, $32, $BA		; 82 32 BA
	and ($BA.b)		; 32 BA
	bvs 120.b		; 70 78
	rts		; 60

	bvs  68.b		; 70 44
	mvp $04,$3C		; 44 3C 04
	plx		; FA
	cop $7E.b		; 02 7E
	cop $FF.b		; 02 FF
	sbc [$7D.b],Y		; F7 7D
	plx		; FA
	phd		; 0B
	sbc [$77.b]		; E7 77
	ora $860FFF.l		; 0F FF 0F 86
	adc $EE29.w,Y		; 79 29 EE
	adc $F703.w,Y		; 79 03 F7
	beq 122.b		; F0 7A
	sed		; F8
	ora [$F0.b]		; 07 F0
	ora $000F80.l		; 0F 80 0F 00
	ora ($00.b,X)		; 01 00
	bvc  66.b		; 50 42
	sbc $1F01.w,X		; FD 01 1F
	cmp #$610E.w		; C9 0E 61
	tsb $0021.w		; 0C 21 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $40.b,X		; 76 40
	and $001E21.l,X		; 3F 21 1E 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0013.w		; 0E 13 00
	ora $000E00.l,X		; 1F 00 0E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	bpl  12.b		; 10 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pea $FC70.w		; F4 70 FC
	sed		; F8
	ldy $F8B8.w,X		; BC B8 F8
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	sei		; 78
	beq  -8.b		; F0 F8
	tya		; 98
	sed		; F8
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7FFFFF.l,X		; FF FF FF 7F
	and $DFBEFF.l,X		; 3F FF BE DF
	cmp $FFEEEF.l,X		; DF EF EE FF
	clv		; B8
	adc $C126DB.l,X		; 7F DB 26 C1
	rol $007F.w,X		; 3E 7F 00
	sbc $00DF00.l,X		; FF 00 DF 00
	sbc $00FF00.l		; EF 00 FF 00
	adc $002600.l,X		; 7F 00 26 00
	jsr ($F2FF.w,X)		; FC FF F2
	sbc $FC63.w,X		; FD 63 FC
	sta $4C.b,S		; 83 4C
	inc $58.b,X		; F6 58
	plx		; FA
	trb $F8.b		; 14 F8
	tsb $1CE0.w		; 0C E0 1C
	sbc $00FD00.l,X		; FF 00 FD 00
	pea $9400.w		; F4 00 94
	rts		; 60

	cpy #$6840.w		; C0 40 68
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $BF.b		; 00 BF
	adc $2DDE.w		; 6D DE 2D
	sbc ($0C.b,S),Y		; F3 0C
	sbc $36FD10.l,X		; FF 10 FD 36
	xce		; FB
	stz $FF.b		; 64 FF
	cpx #$C2CE.w		; E0 CE C2
	sbc $ED84.w		; ED 84 ED
	cpy #$C1CD.w		; C0 CD C1
	bra -112.b		; 80 90
	asl $30.b		; 06 30
	asl $C06A.w		; 0E 6A C0
	cpx #$F380.w		; E0 80 F3
	rts		; 60

	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
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
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000700.l		; 0F 00 07 00
	and $00FF00.l,X		; 3F 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $7739.w,Y		; 39 39 77
	tsb $33.b		; 04 33
	tsb $23.b		; 04 23
	asl $E7.b		; 06 E7
	ora $DF1FEF.l		; 0F EF 1F DF
	ora $9F3F9F.l,X		; 1F 9F 3F 9F
	eor $014D41.l,X		; 5F 41 4D 01
	ora $1E00.w		; 0D 00 1E
	cop $1F.b		; 02 1F
	sta [$9F.b]		; 87 9F
	ora [$3F.b]		; 07 3F
	ora $7F0F7F.l		; 0F 7F 0F 7F
	inx		; E8
	asl $03DA.w		; 0E DA 03
	eor $0621.w		; 4D 21 06
	bmi   3.b		; 30 03
	clc		; 18
	ora ($0C.b,X)		; 01 0C
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	trb $04.b		; 14 04
	and $3E01.w,X		; 3D 01 3E
	jsr $101F.w		; 20 1F 10
	ora $040708.l		; 0F 08 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	ora $08.b,S		; 03 08
	ora $88.b,S		; 03 88
	ora [$D8.b]		; 07 D8
	sta [$F8.b]		; 87 F8
	eor $38AE78.l		; 4F 78 AE 38
	cmp $116419.l		; CF 19 64 11
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	sta $484F88.l		; 8F 88 4F 48
	lda [$20.b]		; A7 20
	cmp [$00.b]		; C7 00
	inc $10.b,X		; F6 10
	sbc $37E811.l,X		; FF 11 E8 37
	dey		; 88
	and [$DC.b],Y		; 37 DC
	adc $14.b,S		; 63 14
	adc #$D9A8.w		; 69 A8 D9
	plp		; 28
	bne  48.b		; D0 30
	bra  48.b		; 80 30
	bra -62.b		; 80 C2
	cop $E3.b		; 02 E3
	and $81.b,S		; 23 81
	ora ($C9.b,X)		; 01 C9
	eor #$1010.w		; 49 10 10
	bcc -112.b		; 90 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ply		; 7A
	.db $82, $7A, $82		; 82 7A 82
	dec A		; 3A
	.db $82, $3A, $82		; 82 3A 82
	dec A		; 3A
	.db $82, $7A, $C2		; 82 7A C2
	inc A		; 1A
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $62, $FC, $80		; 62 FC 80
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $FC.b		; 00 FC
	bra  -4.b		; 80 FC
	bra -68.b		; 80 BC
	bra 124.b		; 80 7C
	rti		; 40

	asl $0002.w,X		; 1E 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	ora $05.b		; 05 05
	asl A		; 0A
	xce		; FB
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $0A.b		; 00 0A
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	ora $0F.b,S		; 03 0F
	ora [$3C.b]		; 07 3C
	ora $7D1C7C.l		; 0F 7C 1C 7D
	asl $1871.w,X		; 1E 71 18
	and ($00.b),Y		; 31 00
	brk $00.b		; 00 00
	ora ($03.b,X)		; 01 03
	brk $07.b		; 00 07
	php		; 08
	ora $101F18.l		; 0F 18 1F 10
	asl $1E00.w,X		; 1E 00 1E
	brk $0E.b		; 00 0E
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	ora $000700.l		; 0F 00 07 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	tsb $010C.w		; 0C 0C 01
	ora ($03.b,X)		; 01 03
	ora $07.b,S		; 03 07
	ora [$03.b]		; 07 03
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	ora ($F4.b,X)		; 01 F4
	cop $EF.b		; 02 EF
	ora ($DD.b,X)		; 01 DD
	brk $BD.b		; 00 BD
	brk $7B.b		; 00 7B
	brk $FB.b		; 00 FB
	brk $F7.b		; 00 F7
	brk $E7.b		; 00 E7
	brk $70.b		; 00 70
	tda		; 7B
	cpx $F5.b		; E4 F5
	cpy $9CEE.w		; CC EE 9C
	dec $BD39.w,X		; DE 39 BD
	adc $F37D.w,Y		; 79 7D F3
	xce		; FB
	sbc $FB.b,S		; E3 FB
	xce		; FB
	sed		; F8
	adc ($74.b,S),Y		; 73 74
	sta [$98.b],Y		; 97 98
	jsr ($7C70.w,X)		; FC 70 7C
	jsr $006F.w		; 20 6F 00
	adc $007700.l		; 6F 00 77 00
	bvs  -4.b		; 70 FC
	jsr $00FC.w		; 20 FC 00
	sed		; F8
	stz $76.b		; 64 76
	bit $A6.b		; 24 A6
	asl $96.b		; 06 96
	rol $B6.b		; 26 B6
	and ($BA.b)		; 32 BA
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	and $116E00.l,X		; 3F 00 6E 11
	cmp [$00.b]		; C7 00
	sbc $001800.l,X		; FF 00 18 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $7C.b		; 00 7C
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	cpy #$007F.w		; C0 7F 00
	tad		; 5B
	bmi  60.b		; 30 3C
	eor #$702E.w		; 49 2E 70
	and ($7E.b),Y		; 31 7E
	and $603F68.l		; 2F 68 3F 60
	ora $000060.l,X		; 1F 60 00 00
	brk $34.b		; 00 34
	php		; 08
	phd		; 0B
	bpl  17.b		; 10 11
	tsb $110C.w		; 0C 0C 11
	ora ($16.b,X)		; 01 16
	asl $34.b		; 06 34
	bit $FF.b		; 24 FF
	cmp ($FF.b,X)		; C1 FF
	cpy #$80FE.w		; C0 FE 80
	adc $00FF80.l,X		; 7F 80 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $D9D800.l,X		; FF 00 D8 D9
	pei ($D4.b)		; D4 D4
	bit $A5.b		; 24 A5
	jsl $2222A2.l		; 22 A2 22 22
	lda $60BD.w,X		; BD BD 60
	rts		; 60

	cli		; 58
	cli		; 58
	stx $00.b		; 86 00
	wai		; CB
	bra 123.b		; 80 7B
	bra  -1.b		; 80 FF
	brk $E0.b		; 00 E0
	brk $78.b		; 00 78
	brk $9F.b		; 00 9F
	brk $E7.b		; 00 E7
	brk $00.b		; 00 00
	brk $82.b		; 00 82
	stx $0B.b		; 86 0B
	sta $200000.l		; 8F 00 00 20
	and $879F18.l,X		; 3F 18 9F 87
	sbc [$62.b]		; E7 62
	ply		; 7A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$4000.w		; C0 00 40
	brk $C0.b		; 00 C0
	and $CF31F1.l,X		; 3F F1 31 CF
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	asl $3F00.w		; 0E 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sbc $0003F3.l,X		; FF F3 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs  -4.b		; 70 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$01E0.w		; E0 E0 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($E8.b,X)		; 01 E8
	bpl  -8.b		; 10 F8
	brk $F8.b		; 00 F8
	brk $B8.b		; 00 B8
	cpy #$C088.w		; C0 88 C0
	bcc -64.b		; 90 C0
	bcc -64.b		; 90 C0
	lda ($C0.b,X)		; A1 C0
	bne -48.b		; D0 D0
	jsr $0020.w		; 20 20 00
	brk $80.b		; 00 80
	cpy #$F080.w		; C0 80 F0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -64.b		; 80 C0
	inc $7001.w		; EE 01 70
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $31.b		; 00 31
	asl $0EF1.w		; 0E F1 0E
	inc $6009.w,X		; FE 09 60
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	asl $0107.w		; 0E 07 01
	brk $FF.b		; 00 FF
	ora $FF0FFF.l,X		; 1F FF 0F FF
	asl $7E.b		; 06 7E
	ora ($1F.b,X)		; 01 1F
	bra 127.b		; 80 7F
	dey		; 88
	sei		; 78
	sbc $3F3F20.l		; EF 20 3F 3F
	cpx #$30E0.w		; E0 E0 30
	bmi   9.b		; 30 09
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	adc [$70.b],Y		; 77 70
	ora $FCFF00.l,X		; 1F 00 FF FC
	sbc $FFFE.w,X		; FD FE FF
	jsr ($FCFF.w,X)		; FC FF FC
	sbc $EEFDEC.l,X		; FF EC FD EE
	sbc $FAF7F6.l		; EF F6 F7 FA
	jsr ($FE00.w,X)		; FC 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $EC.b		; 00 EC
	brk $EE.b		; 00 EE
	brk $F6.b		; 00 F6
	brk $FA.b		; 00 FA
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $7097.w,X		; 1E 97 70
	inc $D440.w,X		; FE 40 D4
	sta [$F0.b]		; 87 F0
	lda $605CA0.l,X		; BF A0 5C 60
	tya		; 98
	brk $00.b		; 00 00
	ora $04.b		; 05 04
	and $003F20.l		; 2F 20 3F 00
	tsa		; 3B
	sta $8C.b,S		; 83 8C
	sty $5010.w		; 8C 10 50
	brk $A0.b		; 00 A0
	ora [$7B.b],Y		; 17 7B
	ora $0F1717.l		; 0F 17 17 0F
	ora $0F1F1F.l		; 0F 1F 1F 0F
	ora $0F.b,X		; 15 0F
	inc A		; 1A
	and $183F.w		; 2D 3F 18
	tda		; 7B
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $2D.b		; 00 2D
	brk $18.b		; 00 18
	brk $EF.b		; 00 EF
	ora $FFFFFF.l,X		; 1F FF FF FF
	sbc $DFFFFF.l,X		; FF FF FF DF
	and $EFFFCB.l,X		; 3F CB FF EF
	sbc ($7F.b,S),Y		; F3 7F
	sbc $FF001F.l,X		; FF 1F 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $FF.b		; 00 FF
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
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $7070.w		; 20 70 70
	jsr ($00FC.w,X)		; FC FC 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	pla		; 68
	ora $241328.l,X		; 1F 28 13 24
	ora $200B24.l,X		; 1F 24 0B 20
	and $102F10.l,X		; 3F 10 2F 10
	adc [$08.b],Y		; 77 08
	sec		; 38
	plp		; 28
	and ($22.b)		; 32 22
	ora $001807.l,X		; 1F 07 18 00
	ora $0D01.w,X		; 1D 01 0D
	ora ($1D.b,X)		; 01 1D
	ora ($0C.b),Y		; 11 0C
	php		; 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00EF00.l,X		; FF 00 EF 00
	sbc $00F700.l		; EF 00 F7 00
	sbc [$00.b],Y		; F7 00
	xce		; FB
	brk $46.b		; 00 46
	lsr $91.b		; 46 91
	sta ($0B.b),Y		; 91 0B
	phd		; 0B
	sty $94.b		; 84 94
	ora ($11.b,X)		; 01 11
	eor ($59.b),Y		; 51 59
	sta ($99.b),Y		; 91 99
	ora $7B1D.w,Y		; 19 1D 7B
	brk $BD.b		; 00 BD
	brk $BD.b		; 00 BD
	brk $9D.b		; 00 9D
	brk $DE.b		; 00 DE
	ora ($DC.b,X)		; 01 DC
	ora $D8.b,S		; 03 D8
	ora [$F0.b]		; 07 F0
	ora $1CBC38.l		; 0F 38 BC 1C
	lsr $5E1C.w,X		; 5E 1C 5E
	sty $CDEE.w		; 8C EE CD
	sbc $E8C8.w		; ED C8 E8
	cpy #$83E0.w		; C0 E0 83
	sta $9F.b,S		; 83 9F
	bra -97.b		; 80 9F
	bra -49.b		; 80 CF
	cpy #$FF7F.w		; C0 7F FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	adc $007F00.l,X		; 7F 00 7F 00
	and $808000.l,X		; 3F 00 80 80
	sbc $0000FF.l,X		; FF FF 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $C001.w,Y		; F9 01 C0
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $3F.b		; 00 3F
	and $00C0C0.l,X		; 3F C0 C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora [$BF.b]		; 07 BF
	brk $CF.b		; 00 CF
	cpy #$F81B.w		; C0 1B F8
	ora $FF.b,S		; 03 FF
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	sbc $FF01.w,Y		; F9 01 FF
	brk $3F.b		; 00 3F
	brk $E7.b		; 00 E7
	cpx #$0C0C.w		; E0 0C 0C
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	asl $01.b		; 06 01
	asl $7C07.w		; 0E 07 7C
	ora $7F5CB0.l		; 0F B0 5C 7F
	ldy #$44ED.w		; A0 ED 44
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	asl $07.b		; 06 07
	tsb $100F.w		; 0C 0F 10
	eor $44A020.l,X		; 5F 20 A0 44
	lsr $23.b		; 46 23
	bra  64.b		; 80 40
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $6F05.w,Y		; F9 05 6F
	bcc 124.b		; 90 7C
	tya		; 98
	beq -104.b		; F0 98
	bmi   8.b		; 30 08
	sed		; F8
	cpx #$708C.w		; E0 8C 70
	ror $0600.w,X		; 7E 00 06
	tsb $00.b		; 04 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs   0.b		; 70 00
	brk $D7.b		; 00 D7
	bmi -53.b		; 30 CB
	sec		; 38
	ora ($1F.b,X)		; 01 1F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $101720.l		; 2F 20 17 10
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFE.w,Y		; F9 FE FF
	sei		; 78
	adc $40BC91.l		; 6F 91 BC 40
	eor $C7FFA7.l,X		; 5F A7 FF C7
	ror $FF8F.w,X		; 7E 8F FF
	tsb $00FE.w		; 0C FE 00
	sei		; 78
	brk $91.b		; 00 91
	ora ($40.b,X)		; 01 40
	ora $A3.b,S		; 03 A3
	ora [$C6.b]		; 07 C6
	ora [$8E.b]		; 07 8E
	ora $C00C0C.l		; 0F 0C 0C C0
	bpl -112.b		; 10 90
	rti		; 40

	clv		; B8
	cpy #$4038.w		; C0 38 40
	stz $5C80.w		; 9C 80 5C
	bra -72.b		; 80 B8
	brk $B0.b		; 00 B0
	brk $00.b		; 00 00
	rts		; 60

	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	and $2C1310.l		; 2F 10 13 2C
	ora ($06.b,X)		; 01 06
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	brk $03.b		; 00 03
	bpl   0.b		; 10 00
	bit $0600.w		; 2C 00 06
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	adc $FE7EFD.l,X		; 7F FD 7E FE
	adc $FF78.w,X		; 7D 78 FF
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	sta [$FB.b]		; 87 FB
	ora $867BF0.l		; 0F F0 7B 86
	adc $007E00.l,X		; 7F 00 7E 00
	adc $FF00.w,X		; 7D 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	asl $00.b		; 06 00
	beq  24.b		; F0 18
	ora $FF00FF.l,X		; 1F FF 00 FF
	brk $3F.b		; 00 3F
	brk $78.b		; 00 78
	sed		; F8
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	inc $06.b		; E6 06
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $808700.l,X		; FF 00 87 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra  48.b		; 80 30
	rti		; 40

	clc		; 18
	jsr $908C.w		; 20 8C 90
	inc $C8.b		; E6 C8
	adc ($00.b)		; 72 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	sed		; F8
	dey		; 88
	trb $AE04.w		; 1C 04 AE
	jsl $FC3BE6.l		; 22 E6 3B FC
	ora ($7C.b,X)		; 01 7C
	ora ($2C.b,X)		; 01 2C
	sbc ($00.b,X)		; E1 00
	ror $0000.w,X		; 7E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pei ($10.b)		; D4 10
	sbc $01FF01.l,X		; FF 01 FF 01
	lsr $0040.w,X		; 5E 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($03F3.w,X)		; FC F3 03
	sbc $00FF00.l,X		; FF 00 FF 00
	bvs 127.b		; 70 7F
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $FC0C.w		; 0C 0C FC
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $8F.b		; 00 8F
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	iny		; C8
	sbc $10EF10.l		; EF 10 EF 10
	adc ($9E.b,X)		; 61 9E
	and $0000C0.l,X		; 3F C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $70FFC8.l		; CF C8 FF 70
	inc $0670.w,X		; FE 70 06
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	bpl  31.b		; 10 1F
	tsb $2E17.w		; 0C 17 2E
	ror $0003.w,X		; 7E 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $0C.b		; 00 0C
	brk $2E.b		; 00 2E
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $07.b		; 02 07
	ora $07.b,S		; 03 07
	ora $97970F.l		; 0F 0F 97 97
	ora $000000.l		; 0F 00 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $97.b		; 00 97
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	brk $88.b		; 00 88
	beq -36.b		; F0 DC
	plx		; FA
	sed		; F8
	inc $FCFA.w,X		; FE FA FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	plx		; FA
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	cpy #$B8.b		; C0 B8
	jsr $20F8.w		; 20 F8 20
	bcs -64.b		; B0 C0
	rts		; 60

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $E400.w		; 9C 00 E4
	brk $DC.b		; 00 DC
	brk $FE.b		; 00 FE
	brk $C4.b		; 00 C4
	ora $F6.b,S		; 03 F6
	ora $FE.b,S		; 03 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tya		; 98
	tya		; 98
	clv		; B8
	bra -128.b		; 80 80
	bra -72.b		; 80 B8
	lda ($B9.b),Y		; B1 B9
	tas		; 1B
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	tya		; 98
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	trb $1E31.w		; 1C 31 1E
	and ($06.b),Y		; 31 06
	ora ($07.b),Y		; 11 07
	bpl  11.b		; 10 0B
	clc		; 18
	phd		; 0B
	clc		; 18
	ora $1C.b		; 05 1C
	ora $1E.b,S		; 03 1E
	asl $0E00.w		; 0E 00 0E
	brk $1E.b		; 00 1E
	bpl  30.b		; 10 1E
	bpl   6.b		; 10 06
	brk $06.b		; 00 06
	brk $0A.b		; 00 0A
	php		; 08
	tsb $04.b		; 04 04
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $FE00.w,X		; FD 00 FE
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	brk $EE.b		; 00 EE
	brk $CF.b		; 00 CF
	brk $63.b		; 00 63
	adc $94.b,S		; 63 94
	sty $64.b,X		; 94 64
	ror $8E.b		; 66 8E
	sta $870707.l		; 8F 07 07 87
	sta [$E6.b],Y		; 97 E6
	sbc [$40.b],Y		; F7 40
	bvs  13.b		; 70 0D
	rol $3E.b,X		; 36 3E
	and $6977.w		; 2D 77 69
	pld		; 2B
	adc $5D.b,X		; 75 5D
	and $3E3F7E.l,X		; 3F 7E 3F 3E
	adc $36667F.l,X		; 7F 7F 66 36
	brk $2D.b		; 00 2D
	brk $69.b		; 00 69
	brk $75.b		; 00 75
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $66.b		; 00 66
	brk $77.b		; 00 77
	sbc $7FBF.w,Y		; F9 BF 7F
	adc $BFFEBF.l,X		; 7F BF FE BF
	adc $7FBCBE.l,X		; 7F BE BC 7F
	sbc ($7F.b),Y		; F1 7F
	eor $FD.b,S		; 43 FD
	sbc $7F00.w,Y		; F9 00 7F
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BE.b		; 00 BE
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FD.b		; 00 FD
	brk $F7.b		; 00 F7
	xce		; FB
	xce		; FB
	sbc $FFFC.w,X		; FD FC FF
	sbc $C8373C.l,X		; FF 3C 37 C8
	eor $D02FA0.l,X		; 5F A0 2F D0
	sbc $00FBE0.l,X		; FF E0 FB 00
	sbc $FF00.w,X		; FD 00 FF
	brk $3C.b		; 00 3C
	brk $C9.b		; 00 C9
	ora ($A3.b,X)		; 01 A3
	ora $D7.b,S		; 03 D7
	ora [$EE.b]		; 07 EE
	asl $8070.w		; 0E 70 80
	sei		; 78
	bra  -4.b		; 80 FC
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $98.b		; 00 98
	brk $30.b		; 00 30
	rts		; 60

	bra   0.b		; 80 00
	ldy #$20.b		; A0 20
	bvs 112.b		; 70 70
	sed		; F8
	sed		; F8
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	rti		; 40

	jmp ($0030.w,X)		; 7C 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	asl $1F0F.w,X		; 1E 0F 1F
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0F.b		; 00 0F
	brk $33.b		; 00 33
	tsb $1C1D.w		; 0C 1D 1C
	tas		; 1B
	bit $385B.w,X		; 3C 5B 38
	lda [$38.b],Y		; B7 38
	and [$70.b],Y		; 37 70
	nop		; EA
	sbc ($F2.b),Y		; F1 F2
	ora ($E3.b,X)		; 01 E3
	rti		; 40

	php		; 08
	rol $3C08.w,X		; 3E 08 3C
	clc		; 18
	bit $7810.w,X		; 3C 10 78
	bmi  -8.b		; 30 F8
	cpy #$F0.b		; C0 F0
	ora ($01.b,X)		; 01 01
	rti		; 40

	rti		; 40

	bcs  12.b		; B0 0C
	bne  12.b		; D0 0C
	bne   8.b		; D0 08
	bne   8.b		; D0 08
	rti		; 40

	bra  32.b		; 80 20
	cpy #$10.b		; C0 10
	cpx #$E0.b		; E0 E0
	brk $88.b		; 00 88
	iny		; C8
	dey		; 88
	tay		; A8
	bra -96.b		; 80 A0
	bra -96.b		; 80 A0
	bra -80.b		; 80 B0
	brk $10.b		; 00 10
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	jsr ($0E00.w,X)		; FC 00 0E
	brk $C3.b		; 00 C3
	brk $EF.b		; 00 EF
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	beq  12.b		; F0 0C
	jsr ($FFC3.w,X)		; FC C3 FF
	jsr $1030.w		; 20 30 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	cop $0F.b		; 02 0F
	ora $0F.b		; 05 0F
	cop $06.b		; 02 06
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	ora $02.b		; 05 02
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ldy #$A0.b		; A0 A0
	bvc  48.b		; 50 30
	inx		; E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$00.b		; A0 00
	bvc   0.b		; 50 00
	inx		; E8
	brk $FF.b		; 00 FF
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	ora [$F0.b]		; 07 F0
	ora $600070.l		; 0F 70 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	cpx #$2B.b		; E0 2B
	plp		; 28
	bpl  16.b		; 10 10
	jsr $2020.w		; 20 20 20
	ldy #$00.b		; A0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $FD.b		; 00 FD
	jsl $FB041F.l		; 22 1F 04 FB
	inc $0C.b		; E6 0C
	sbc ($00.b,S),Y		; F3 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	bpl -14.b		; 10 F2
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	cop $3F.b		; 02 3F
	brk $3F.b		; 00 3F
	brk $27.b		; 00 27
	php		; 08
	and $1D1C.w		; 2D 1C 1D
	trb $3C1D.w		; 1C 1D 3C
	tad		; 5B
	bit $0202.w,X		; 3C 02 02
	trb $221C.w		; 1C 1C 22
	jsl $0C1800.l		; 22 00 18 0C
	asl $3E0C.w,X		; 1E 0C 3E
	php		; 08
	rol $3D19.w,X		; 3E 19 3D
	sed		; F8
	asl $00.b		; 06 00
	inc $3C20.w,X		; FE 20 3C
	bpl  28.b		; 10 1C
	bne  28.b		; D0 1C
	beq  28.b		; F0 1C
	bvs  24.b		; 70 18
	bvs  24.b		; 70 18
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	cld		; D8
	clc		; 18
	inx		; E8
	php		; 08
	plp		; 28
	php		; 08
	iny		; C8
	iny		; C8
	pha		; 48
	iny		; C8
	rti		; 40

	cpy #$85.b		; C0 85
	ror $0F02.w,X		; 7E 02 0F
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $0F00.w,X		; 7E 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	sed		; F8
	and $011CC0.l,X		; 3F C0 1C 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DE.b		; 00 DE
	jsr $67B1.w		; 20 B1 67
	tda		; 7B
	sta ($DF.b,S),Y		; 93 DF
	cpx #$A7.b		; E0 A7
	clv		; B8
	sta [$98.b],Y		; 97 98
	and $843388.l,X		; 3F 88 33 84
	jsr $0001.w		; 20 01 00
	adc $209790.l		; 6F 90 97 20
	jsr $1353.w		; 20 53 13
	pla		; 68
	php		; 08
	beq -128.b		; F0 80
	sei		; 78
	brk $78.b		; 00 78
	beq  -2.b		; F0 FE
	beq  -1.b		; F0 FF
	cpx #$FF.b		; E0 FF
	rti		; 40

	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	brk $F0.b		; 00 F0
	jsr $C6F0.w		; 20 F0 C6
	inc $1A.b		; E6 1A
	phy		; 5A
	ldx #$A2.b		; A2 A2
	cop $02.b		; 02 02
	jsl $505022.l		; 22 22 50 50
	jmp $0DFABB.l		; 5C BB FA 0D
	eor $5F3FEC.l,X		; 5F EC 3F 5F
	eor $7F3F3F.l,X		; 5F 3F 3F 7F
	adc $3F573C.l,X		; 7F 3C 57 3F
	tyx		; BB
	brk $0D.b		; 00 0D
	brk $EC.b		; 00 EC
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $3C.b		; 00 3C
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	eor $BF3FDF.l,X		; 5F DF 3F BF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $54FF2F.l,X		; FF 2F FF 54
	phd		; 0B
	rol $09.b,X		; 36 09
	adc $00FF10.l		; 6F 10 FF 00
	inc $FD01.w,X		; FE 01 FD
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $A0.b		; 00 A0
	sed		; F8
	tay		; A8
	beq  -8.b		; F0 F8
	pea $FAF4.w		; F4 F4 FA
	plx		; FA
	jsr ($FCBA.w,X)		; FC BA FC
	pla		; 68
	ldx $75.b,Y		; B6 75
	tsx		; BA
	sed		; F8
	brk $F0.b		; 00 F0
	brk $74.b		; 00 74
	bra 122.b		; 80 7A
	bra  -4.b		; 80 FC
	brk $FC.b		; 00 FC
	brk $B6.b		; 00 B6
	brk $BA.b		; 00 BA
	brk $03.b		; 00 03
	clc		; 18
	ora $100618.l		; 0F 18 06 10
	ora $311E31.l		; 0F 31 1E 31
	asl $1C21.w		; 0E 21 1C
	adc ($3E.b,X)		; 61 3E
	adc $0F.b,S		; 63 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $101E00.l		; 0F 00 1E 10
	ora $001E01.l		; 0F 01 1E 00
	rol $1C20.w,X		; 3E 20 1C
	brk $30.b		; 00 30
	cpy $C820.w		; CC 20 C8
	bvs -40.b		; 70 D8
	jsr $6098.w		; 20 98 60
	bcc  64.b		; 90 40
	bcc -32.b		; 90 E0
	bcs  64.b		; B0 40
	jsr $88B8.w		; 20 B8 88
	sei		; 78
	pha		; 48
	jsr $7000.w		; 20 00 70
	bpl 112.b		; 10 70
	bpl -32.b		; 10 E0
	bra  64.b		; 80 40
	brk $E0.b		; 00 E0
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	tsb $3F02.w		; 0C 02 3F
	brk $8E.b		; 00 8E
	adc $FBFF7F.l,X		; 7F 7F FF FB
	sbc [$FF.b],Y		; F7 FF
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sta [$60.b],Y		; 97 60
	sec		; 38
	cpy #$5C.b		; C0 5C
	ldy #$48.b		; A0 48
	bcc  80.b		; 90 50
	tya		; 98
	bvc -104.b		; 50 98
	bne  24.b		; D0 18
	beq -104.b		; F0 98
	bne  -8.b		; D0 F8
	rts		; 60

	sed		; F8
	rts		; 60

	jsr $1070.w		; 20 70 10
	rts		; 60

	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $C8.b		; 00 C8
	sbc $FE71.w,Y		; F9 71 FE
	jsl $B06FFE.l		; 22 FE 6F B0
	eor $00FFA0.l,X		; 5F A0 FF 00
	adc $E07F00.l,X		; 7F 00 7F E0
	inc $00.b		; E6 00
	beq   0.b		; F0 00
	sbc $04.b,X		; F5 04
	lda ($00.b,S),Y		; B3 00
	lda [$07.b]		; A7 07
	ora $00000F.l		; 0F 0F 00 00
	and $E3.b,S		; 23 E3
	beq  28.b		; F0 1C
	cpx $18.b		; E4 18
	jsr ($7E80.w,X)		; FC 80 7E
	rti		; 40

	adc $00FF40.l,X		; 7F 40 FF 00
	sbc [$08.b],Y		; F7 08
	sbc $080800.l,X		; FF 00 08 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	sty $9E0C.w		; 8C 0C 9E
	asl $8686.w,X		; 1E 86 86
	jsr $C138.w		; 20 38 C1
	cmp $C11E.w,Y		; D9 1E C1
	ora $801F80.l,X		; 1F 80 1F 80
	and $007F00.l,X		; 3F 00 7F 00
	xce		; FB
	brk $F6.b		; 00 F6
	brk $2D.b		; 00 2D
	brk $82.b		; 00 82
	sta $00.b,S		; 83 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	ora $1B09.w		; 0D 09 1B
	inc $7FFC.w,X		; FE FC 7F
	jsr ($78BF.w,X)		; FC BF 78
	wai		; CB
	bit $7B.b,X		; 34 7B
	cpy $F87F.w		; CC 7F F8
	sbc $BB30.w,X		; FD 30 BB
	brk $38.b		; 00 38
	jsr ($FC38.w,X)		; FC 38 FC
	clc		; 18
	plx		; FA
	brk $36.b		; 00 36
	pha		; 48
	cpy $F931.w		; CC 31 F9
	brk $32.b		; 00 32
	ora ($45.b,X)		; 01 45
	ora $0C.b,S		; 03 0C
	ora $0F.b,S		; 03 0F
	tsb $0C.b		; 04 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $03DC08.l		; 0F 08 DC 03
	jsr ($0287.w,X)		; FC 87 02
	adc $9A.b,S		; 63 9A
	adc $9A.b,S		; 63 9A
	adc $9A.b,S		; 63 9A
	adc $98.b,S		; 63 98
	.db $62, $98, $62		; 62 98 62
	inc A		; 1A
	dec A		; 3A
	cop $02.b		; 02 02
	jmp.w [$DC40]		; DC 40 DC
	rti		; 40

	jmp.w [$DC40]		; DC 40 DC
	rti		; 40

	dec $BE42.w,X		; DE 42 BE
	jsl $0C241B.l		; 22 1B 24 0C
	rol A		; 2A
	trb $2A.b		; 14 2A
	bit $0B.b,X		; 34 0B
	rol $1F01.w		; 2E 01 1F
	brk $3F.b		; 00 3F
	pha		; 48
	and [$48.b],Y		; 37 48
	ora ($11.b),Y		; 11 11
	ora ($00.b),Y		; 11 00
	ora $1908.w,Y		; 19 08 19
	ora #$11.b		; 09 11
	ora ($20.b,X)		; 01 20
	brk $20.b		; 00 20
	brk $28.b		; 00 28
	plp		; 28
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	rts		; 60

	brk $50.b		; 00 50
	ldy #$C0.b		; A0 C0
	jsr $20D8.w		; 20 D8 20
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$40.b		; C0 40
	cpy #$40.b		; C0 40
	ldy #$A0.b		; A0 A0
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bvs -115.b		; 70 8D
	stz $8D.b,X		; 74 8D
	and ($8B.b)		; 32 8B
	rts		; 60

	dex		; CA
	bmi -38.b		; 30 DA
	brk $DA.b		; 00 DA
	ldx $EE70.w		; AE 70 EE
	bpl  -9.b		; 10 F7
	sta $F2.b		; 85 F2
	bra -12.b		; 80 F4
	bra -74.b		; 80 B6
	.db $82, $66, $42		; 82 66 42
	bit $10.b,X		; 34 10
	trb $14.b		; 14 14
	mvp $01,$44		; 44 44 01
	brk $02.b		; 00 02
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	phd		; 0B
	ora [$0B.b]		; 07 0B
	ora $0F.b,S		; 03 0F
	phd		; 0B
	ora [$00.b]		; 07 00
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0A.b		; 00 0A
	ora ($0A.b,X)		; 01 0A
	ora ($0F.b,X)		; 01 0F
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	ora [$17.b]		; 07 17
	ora $5E5F2F.l		; 0F 2F 5F 5E
	and $373F5E.l,X		; 3F 5E 3F 37
	eor $17170F.l		; 4F 0F 17 17
	ora $0D0205.l		; 0F 05 02 0D
	cop $5B.b		; 02 5B
	tsb $31.b		; 04 31
	asl $043B.w		; 0E 3B 04
	eor $001700.l		; 4F 00 17 00
	ora $2F1E00.l		; 0F 00 1E 2F
	trb $0F2F.w		; 1C 2F 0F
	bpl   0.b		; 10 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	and $002F00.l		; 2F 00 2F 00
	bpl   0.b		; 10 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($1C.b,X)		; 01 1C
	eor $38.b,S		; 43 38
	eor $3D.b,S		; 43 3D
	cmp [$78.b]		; C7 78
	dec $38.b		; C6 38
	stx $72.b		; 86 72
	stx $78.b		; 86 78
	sty $8D71.w		; 8C 71 8D
	rol $3D02.w,X		; 3E 02 3D
	ora ($78.b,X)		; 01 78
	rti		; 40

	and $7B04.w,X		; 3D 04 7B
	cop $79.b		; 02 79
	brk $F3.b		; 00 F3
	bra  -6.b		; 80 FA
	dey		; 88
	brk $20.b		; 00 20
	rti		; 40

	rts		; 60

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $F8FA.w,X		; FD FA F8
	sbc [$DE.b],Y		; F7 DE
	sbc $8D81FC.l		; EF FC 81 8D
	sbc ($FE.b,X)		; E1 FE
	sbc ($AE.b,X)		; E1 AE
	sbc ($94.b,X)		; E1 94
	sbc ($1A.b),Y		; F1 1A
.ACCU 8
.INDEX 8
	sep #$B7		; E2 B7
	eor [$E0.b]		; 47 E0
	brk $86.b		; 00 86
	ora ($87.b,X)		; 01 87
	and ($A7.b),Y		; 31 A7
	and #$9F.b		; 29 9F
	ora ($CF.b,X)		; 01 CF
	ora $E0.b,S		; 03 E0
	sei		; 78
	ldy #$78.b		; A0 78
	rti		; 40

	clv		; B8
	rti		; 40

	sec		; 38
	cpy #$3C.b		; C0 3C
	bmi -36.b		; 30 DC
	bmi -36.b		; 30 DC
	bvs -100.b		; 70 9C
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	bcs -128.b		; B0 80
	bmi -112.b		; 30 90
	sec		; 38
	cli		; 58
	iny		; C8
	iny		; C8
	dey		; 88
	dey		; 88
	php		; 08
	php		; 08
	sbc $C87F10.l,X		; FF 10 7F C8
	cmp [$8A.b],Y		; D7 8A
	adc $17DA03.l		; 6F 03 DA 17
	lda $CE32.w		; AD 32 CE
	adc ($1E.b,X)		; 61 1E
	eor ($13.b,X)		; 41 13
	and ($81.b,S),Y		; 33 81
	sta $0A62.w,Y		; 99 62 0A
	sbc ($03.b,S),Y		; F3 03
	cpx #$07.b		; E0 07
	cpy #$06.b		; C0 06
	sty $05.b		; 84 05
	cpy #$43.b		; C0 43
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	plx		; FA
	tsb $FA.b		; 04 FA
	tsb $FE.b		; 04 FE
	tsb $FE.b		; 04 FE
	cpy $E3E3.w		; CC E3 E3
	sbc $E3.b,S		; E3 E3
	sta ($95.b),Y		; 91 95
	bmi  52.b		; 30 34
	bvs 116.b		; 70 74
	beq -12.b		; F0 F4
	bmi  52.b		; 30 34
	php		; 08
	cpy $005D.w		; CC 5D 00
	tyx		; BB
	brk $BB.b		; 00 BB
	brk $77.b		; 00 77
	brk $76.b		; 00 76
	brk $2E.b		; 00 2E
	brk $2E.b		; 00 2E
	brk $1E.b		; 00 1E
	brk $19.b		; 00 19
	tsa		; 3B
	and ($76.b)		; 32 76
	and ($76.b)		; 32 76
	rol $2E.b		; 26 2E
	bit $2D.b		; 24 2D
	tsb $0C1D.w		; 0C 1D 0C
	ora $0100.w,X		; 1D 00 01
	plb		; AB
	brk $6B.b		; 00 6B
	brk $6D.b		; 00 6D
	brk $6D.b		; 00 6D
	brk $ED.b		; 00 ED
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $EF.b		; 00 EF
	brk $02.b		; 00 02
	lsr $42.b,X		; 56 42
	dec $49.b,X		; D6 49
	stp		; DB
	eor #$DB.b		; 49 DB
	cmp #$DB.b		; C9 DB
	cpy $CCDD.w		; CC DD CC
	cmp $DCCC.w,X		; DD CC DC
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $180F18.l		; 0F 18 0F 18
	ora $180E18.l		; 0F 18 0E 18
	ora [$11.b]		; 07 11
	ora $080F08.l		; 0F 08 0F 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $3C10.w,X		; 1E 10 3C
	ror $1C.b		; 66 1C
	lsr $B8.b		; 46 B8
	dec $30.b		; C6 30
	cpy $38.b		; C4 38
	cpy $CC70.w		; CC 70 CC
	jsr $7088.w		; 20 88 70
	tya		; 98
	tya		; 98
	brk $B8.b		; 00 B8
	brk $3C.b		; 00 3C
	tsb $BC.b		; 04 BC
	sty $70.b		; 84 70
	rti		; 40

	sec		; 38
	php		; 08
	sei		; 78
	php		; 08
	rts		; 60

	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $E9.b		; 00 E9
	bvc -104.b		; 50 98
	rti		; 40

	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	jsr $2020.w		; 20 20 20
	brk $30.b		; 00 30
	bpl  96.b		; 10 60
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $3E10.w		; EC 10 3E
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bpl  12.b		; 10 0C
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora $06.b,S		; 03 06
	ora $04.b,S		; 03 04
	ora [$09.b],Y		; 17 09
	sec		; 38
	ora ($FE.b,X)		; 01 FE
	adc $01.b,S		; 63 01
	ora ($02.b,X)		; 01 02
	cop $03.b		; 02 03
	cop $01.b		; 02 01
	brk $07.b		; 00 07
	tsb $06.b		; 04 06
	brk $07.b		; 00 07
	ora ($00.b,X)		; 01 00
	cpx #$00.b		; E0 00
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
	sei		; 78
	brk $B8.b		; 00 B8
	brk $B8.b		; 00 B8
	brk $D8.b		; 00 D8
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	ldy #$50.b		; A0 50
	bne  32.b		; D0 20
	rts		; 60

	bmi 112.b		; 30 70
	bcc -80.b		; 90 B0
	bra -96.b		; 80 A0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $5F03.w,X		; 3C 03 5F
	and $6C7F27.l,X		; 3F 27 7F 6C
	jmp ($4848.w,X)		; 7C 48 48
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $3F.b		; 00 3F
	ora $247F.w,X		; 1D 7F 24
	adc $407E68.l,X		; 7F 68 7E 40
	jmp ($5800.w,X)		; 7C 00 58
	jsr ($FCF3.w,X)		; FC F3 FC
	sbc ($0D.b)		; F2 0D
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $72.b		; 00 72
	sbc ($F0.b)		; F2 F0
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $28.b		; 00 28
	bpl 112.b		; 10 70
	bpl -24.b		; 10 E8
	clc		; 18
	jsr ($6C48.w,X)		; FC 48 6C
	sec		; 38
	pla		; 68
	sec		; 38
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	bpl  56.b		; 10 38
	php		; 08
	sec		; 38
	pha		; 48
	cli		; 58
	jsr $0038.w		; 20 38 00
	bit $183C.w,X		; 3C 3C 18
	dec A		; 3A
	trb $1C3E.w		; 1C 3E 1C
	bit $2E1C.w		; 2C 1C 2E
	tsb $063C.w		; 0C 3C 06
	and $300F02.l,X		; 3F 02 0F 30
	php		; 08
	trb $1C18.w		; 1C 18 1C
	php		; 08
	trb $1E0C.w		; 1C 0C 1E
	tsb $041E.w		; 0C 1E 04
	asl $00.b		; 06 00
	cop $10.b		; 02 10
	bpl   0.b		; 10 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
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
	brk $03.b		; 00 03
	clc		; 18
	ora $18.b,S		; 03 18
	ora $18.b,S		; 03 18
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $0C.b		; 05 0C
	ora $0C.b		; 05 0C
	ora ($0C.b,X)		; 01 0C
	ora $080F08.l		; 0F 08 0F 08
	ora $080F08.l		; 0F 08 0F 08
	ora $000308.l		; 0F 08 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	bit $3C81.w,X		; 3C 81 3C
	sta ($3E.b,X)		; 81 3E
	sta $3E.b,S		; 83 3E
	sta $7C.b,S		; 83 7C
	cmp $7C.b,S		; C3 7C
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	brk $7C.b		; 00 7C
	rti		; 40

	ora $070800.l		; 0F 00 08 07
	cop $0C.b		; 02 0C
	ora [$0D.b]		; 07 0D
	ora $09.b,S		; 03 09
	asl $0609.w		; 0E 09 06
	ora ($04.b),Y		; 11 04
	ora ($00.b),Y		; 11 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	tsb $02.b		; 04 02
	brk $0E.b		; 00 0E
	php		; 08
	ora [$01.b]		; 07 01
	ora $000E01.l		; 0F 01 0E 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	adc ($05.b)		; 72 05
	cmp $7F32.w		; CD 32 7F
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $32.b		; 00 32
	brk $FF.b		; 00 FF
	brk $66.b		; 00 66
	sta $0F2FDF.l,X		; 9F DF 2F 0F
	sta [$0F.b],Y		; 97 0F
	ora [$1B.b],Y		; 17 1B
	ora [$1F.b]		; 07 1F
	pld		; 2B
	rol A		; 2A
	ora $2E17.w,X		; 1D 17 2E
	sta $2A02.w,X		; 9D 02 2A
	ora $97.b		; 05 97
	brk $17.b		; 00 17
	brk $07.b		; 00 07
	brk $2B.b		; 00 2B
	brk $1D.b		; 00 1D
	brk $2E.b		; 00 2E
	brk $BF.b		; 00 BF
	adc $FEFFFF.l,X		; 7F FF FF FE
	sbc $A3E3FC.l,X		; FF FC E3 A3
	jmp.w [$BFC0]		; DC C0 BF
	cpy #$803F.w		; C0 3F 80
	adc $3F106F.l,X		; 7F 6F 10 3F
	cpy #$807F.w		; C0 7F 80
	sbc $00.b,S		; E3 00
	jmp.w [$BF00]		; DC 00 BF
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $1D.b		; 00 1D
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $1D.b		; 00 1D
	brk $3B.b		; 00 3B
	brk $37.b		; 00 37
	brk $0C.b		; 00 0C
	asl $0F0E.w		; 0E 0E 0F
	asl $060F.w		; 0E 0F 06
	asl $00.b		; 06 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$06.b]		; 07 06
	asl $00F7.w		; 0E F7 00
	tda		; 7B
	brk $FD.b		; 00 FD
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $BF.b		; 00 BF
	brk $B7.b		; 00 B7
	brk $77.b		; 00 77
	brk $03.b		; 00 03
	phd		; 0B
	clc		; 18
	stz $1E1C.w		; 9C 1C 1E
	ora $6F2F5F.l,X		; 1F 5F 2F 6F
	rol $66.b		; 26 66
	jsr $6668.w		; 20 68 66
	inc $0000.w		; EE 00 00
	php		; 08
	tsb $06.b		; 04 06
	tsb $04.b		; 04 04
	tsb $0E0C.w		; 0C 0C 0E
	ora $0D0C.w,X		; 1D 0C 0D
	asl $1E0D.w		; 0E 0D 1E
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	tsb $0E.b		; 04 0E
	tsb $0E.b		; 04 0E
	tsb $0C0E.w		; 0C 0E 0C
	asl $1E0C.w,X		; 1E 0C 1E
	brk $00.b		; 00 00
	bpl  32.b		; 10 20
	rts		; 60

	jsr $3028.w		; 20 28 30
	sec		; 38
	bvs -72.b		; 70 B8
	bmi -72.b		; 30 B8
	bvs -80.b		; 70 B0
	bvs   0.b		; 70 00
	jsr $2000.w		; 20 00 20
	brk $30.b		; 00 30
	jsr $2070.w		; 20 70 20
	bvs  32.b		; 70 20
	bvs  48.b		; 70 30
	bvs  48.b		; 70 30
	sei		; 78
	bvc  56.b		; 50 38
	clc		; 18
	sec		; 38
	trb $3838.w		; 1C 38 38
	clc		; 18
	sec		; 38
	trb $1C3E.w		; 1C 3E 1C
	rol $3E1C.w,X		; 3E 1C 3E
	brk $10.b		; 00 10
	sec		; 38
	bpl  56.b		; 10 38
	clc		; 18
	sec		; 38
	clc		; 18
	trb $1C18.w		; 1C 18 1C
	clc		; 18
	trb $1C18.w		; 1C 18 1C
	brk $00.b		; 00 00
	dec A		; 3A
	trb $1C18.w		; 1C 18 1C
	clc		; 18
	bit $387C.w,X		; 3C 7C 38
	jmp ($7C38.w,X)		; 7C 38 7C
	sec		; 38
	jmp ($F808.w,X)		; 7C 08 F8
	brk $08.b		; 00 08
	trb $3C18.w		; 1C 18 3C
	clc		; 18
	bit $3818.w,X		; 3C 18 38
	clc		; 18
	sec		; 38
	clc		; 18
	sec		; 38
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	phd		; 0B
	ora [$3D.b]		; 07 3D
	ora $26.b,S		; 03 26
	ora ($39.b,X)		; 01 39
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $7B.b		; 00 7B
	brk $5F.b		; 00 5F
	brk $01.b		; 00 01
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora $1E18.w,Y		; 19 18 1E
	asl $1C1F.w,X		; 1E 1F 1C
	ora $0E1C18.l,X		; 1F 18 1C 0E
	rol $003E.w		; 2E 3E 00
	rol $2200.w,X		; 3E 00 22
	trb $2418.w		; 1C 18 24
	trb $3824.w		; 1C 24 38
	jsr $22BC.w		; 20 BC 22
	stz $0022.w		; 9C 22 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clc		; 18
	trb $3804.w		; 1C 04 38
	jsr $001C.w		; 20 1C 00
	trb $3C00.w		; 1C 00 3C
	jsr $A25C.w		; 20 5C A2
	jmp ($BC82.w,X)		; 7C 82 BC
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	cpy #$C0B8.w		; C0 B8 C0
	ldy $C4.b,X		; B4 C4
	pla		; 68
	sty $009C.w		; 8C 9C 00
	stz $DC00.w		; 9C 00 DC
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $D8.b		; 00 D8
	brk $94.b		; 00 94
	tsb $50.b		; 04 50
	ldy $14F8.w		; AC F8 14
	jmp.w [$5C28]		; DC 28 5C
	bcs  -4.b		; B0 FC
	clc		; 18
	pea $F418.w		; F4 18 F4
	php		; 08
	pea $8828.w		; F4 28 88
	plp		; 28
	brk $10.b		; 00 10
	php		; 08
	plp		; 28
	bra  48.b		; 80 30
	php		; 08
	clc		; 18
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	jsr $0128.w		; 20 28 01
	tsb $02.b		; 04 02
	asl $02.b		; 06 02
	asl $01.b		; 06 01
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $07.b,S		; 03 07
	tsb $01.b		; 04 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $3C.b		; 00 3C
	dec $3C.b		; C6 3C
	cpy $30.b		; C4 30
	cpy $30.b		; C4 30
	cpy $38.b		; C4 38
	cpy $CC38.w		; CC 38 CC
	bvs -52.b		; 70 CC
	bvs -56.b		; 70 C8
	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($7C44.w,X)		; 7C 44 7C
	mvp $40,$70		; 44 70 40
	bvs  64.b		; 70 40
	sec		; 38
	php		; 08
	clv		; B8
	dey		; 88
	ora $14.b,S		; 03 14
	ora $0F13.w		; 0D 13 0F
	ora [$07.b],Y		; 17 07
	ora $7F6F17.l,X		; 1F 17 6F 7F
	sta $EC7FF1.l,X		; 9F F1 7F EC
	adc ($0C.b,S),Y		; 73 0C
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($1F.b,X)		; 01 1F
	brk $6F.b		; 00 6F
	brk $87.b		; 00 87
	clc		; 18
	eor $007320.l,X		; 5F 20 73 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	lda $BF7FFF.l,X		; BF FF 7F BF
	adc $FF1FBF.l,X		; 7F BF 1F FF
	sta $C03F60.l,X		; 9F 60 3F C0
	sbc $04FB00.l,X		; FF 00 FB 04
	sbc [$08.b],Y		; F7 08
	lda [$18.b]		; A7 18
	lda [$18.b]		; A7 18
	sbc [$08.b],Y		; F7 08
	cop $11.b		; 02 11
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cld		; D8
	adc [$7F.b]		; 67 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	sei		; 78
	and $7FBF7F.l,X		; 3F 7F BF 7F
	adc [$00.b]		; 67 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	sed		; F8
	asl $1EFF.w,X		; 1E FF 1E
	adc $0F001F.l,X		; 7F 1F 00 0F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	ora $0E.b,S		; 03 0E
	asl $0606.w		; 0E 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	adc [$00.b],Y		; 77 00
	sbc $7C4401.l,X		; FF 01 44 7C
	and $104738.l		; 2F 38 47 10
	eor [$10.b]		; 47 10
	adc [$EF.b]		; 67 EF
	adc [$EF.b]		; 67 EF
	ror $EE.b		; 66 EE
	brk $00.b		; 00 00
	plb		; AB
	plp		; 28
	cmp [$00.b]		; C7 00
	sbc $00EF00.l		; EF 00 EF 00
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	bne  96.b		; D0 60
	beq  64.b		; F0 40
	bcs  64.b		; B0 40
	bra  64.b		; 80 40
	rts		; 60

	bra  32.b		; 80 20
	bra  32.b		; 80 20
	jsr $2000.w		; 20 00 20
	rti		; 40

	rts		; 60

	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	php		; 08
	ora ($19.b),Y		; 11 19
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	bpl  14.b		; 10 0E
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $16.b		; 00 16
	adc ($16.b),Y		; 71 16
	adc ($0C.b),Y		; 71 0C
	adc ($2C.b,X)		; 61 2C
	adc ($3E.b,X)		; 61 3E
	adc $3E.b,S		; 63 3E
	adc $1C.b,S		; 63 1C
	.db $42, $1C		; 42 1C
	.db $42, $0E		; 42 0E
	brk $2E.b		; 00 2E
	jsr $203E.w		; 20 3E 20
	asl $1C00.w,X		; 1E 00 1C
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $1C.b		; 02 1C
	.db $42, $1C		; 42 1C
	.db $42, $1C		; 42 1C
	.db $42, $28		; 42 28
	.db $62, $28, $62		; 62 28 62
	trb $76.b		; 14 76
	trb $36.b		; 14 36
	php		; 08
	rol $023E.w,X		; 3E 3E 02
	bit $3C00.w,X		; 3C 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $28.b		; 00 28
	jsr $2028.w		; 20 28 20
	trb $14.b		; 14 14
	php		; 08
	rol $3E00.w,X		; 3E 00 3E
	brk $1E.b		; 00 1E
	trb $1E02.w		; 1C 02 1E
	brk $1E.b		; 00 1E
	brk $38.b		; 00 38
	ora $100F38.l		; 0F 38 0F 10
	bpl  24.b		; 10 18
	clc		; 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	sec		; 38
	ora [$3C.b]		; 07 3C
	cop $3C.b		; 02 3C
	cop $7E.b		; 02 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $7E.b		; 00 7E
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	sec		; 38
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	pha		; 48
	pha		; 48
	pha		; 48
	pha		; 48
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	beq -20.b		; F0 EC
	beq -12.b		; F0 F4
	cpy #$804C.w		; C0 4C 80
	jsr ($9A00.w,X)		; FC 00 9A
	brk $EA.b		; 00 EA
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	jsr ($F0C0.w,X)		; FC C0 F0
	brk $C8.b		; 00 C8
	php		; 08
	clv		; B8
	sei		; 78
	sei		; 78
	clc		; 18
	jmp ($1C08.w,X)		; 7C 08 1C
	bit $C03C.w,X		; 3C 3C C0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $B8.b		; 00 B8
	brk $D8.b		; 00 D8
	brk $68.b		; 00 68
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $40.b		; 00 40
	rti		; 40

	jsr $1060.w		; 20 60 10
	bmi  64.b		; 30 40
	bne  96.b		; D0 60
	cpx #$F030.w		; E0 30 F0
	ldy $F800.w,X		; BC 00 F8
	brk $C0.b		; 00 C0
	jsr $E080.w		; 20 80 E0
	rti		; 40

	rts		; 60

	cpy #$8060.w		; C0 60 80
	jsr $2080.w		; 20 80 20
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $0C.b		; 00 0C
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $5B.b		; 00 5B
	rol $21.b		; 26 21
	jmp $F77CD3.l		; 5C D3 7C F7
	jmp ($AC77.w,X)		; 7C 77 AC
	brk $73.b		; 00 73
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	and ($00.b,X)		; 21 00
	eor [$04.b],Y		; 57 04
	adc [$04.b],Y		; 77 04
	adc ($00.b,S),Y		; 73 00
	lda $00.b,S		; A3 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bmi  62.b		; 30 3E
	rti		; 40

	asl A		; 0A
	adc $3F7C.w,X		; 7D 7C 3F
	inc $80BD.w,X		; FE BD 80
	cpy #$4000.w		; C0 00 40
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	bra   0.b		; 80 00
	lda $BF00.w,X		; BD 00 BF
	brk $25.b		; 00 25
	clc		; 18
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $02.b		; 05 02
	phd		; 0B
	asl $17.b		; 06 17
	asl $0D15.w		; 0E 15 0D
	ora ($0B.b)		; 12 0B
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $0E.b		; 06 0E
	ora $0F.b		; 05 0F
	cop $0F.b		; 02 0F
	cop $0E.b		; 02 0E
	bpl   0.b		; 10 00
	sec		; 38
	bpl  28.b		; 10 1C
	php		; 08
	asl $3E1C.w,X		; 1E 1C 3E
	trb $1C98.w		; 1C 98 1C
	tya		; 98
	sec		; 38
	bit $0038.w,X		; 3C 38 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	php		; 08
	trb $1C1C.w		; 1C 1C 1C
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	bpl  56.b		; 10 38
	brk $4E.b		; 00 4E
	ora $5B.b,X		; 15 5B
	rol A		; 2A
	adc $16.b,X		; 75 16
	adc $582D.w		; 6D 2D 58
	asl $BD79.w,X		; 1E 79 BD
	sei		; 78
	adc $3978.w,X		; 7D 78 39
	php		; 08
	jsr $1100.w		; 20 00 11
	ora $20.b,X		; 15 20
	bit $1A00.w		; 2C 00 1A
	php		; 08
	and $7A18.w,Y		; 39 18 7A
	sec		; 38
	xce		; FB
	sbc $3FEF3F.l		; EF 3F EF 3F
	inc $F72F.w,X		; FE 2F F7
	asl $26ED.w,X		; 1E ED 26
	cmp $EFF6.w,Y		; D9 F6 EF
	jsr $C2FC.w		; 20 FC C2
	cpy $CD03.w		; CC 03 CD
	cop $CF.b		; 02 CF
	brk $DE.b		; 00 DE
	bpl  38.b		; 10 26
	bmi -42.b		; 30 D6
	beq  32.b		; F0 20
	bmi -62.b		; 30 C2
	cpx #$7EBD.w		; E0 BD 7E
	lda $BA7E.w,X		; BD 7E BA
	bit $38B3.w,X		; 3C B3 38
	adc $2F5E36.l		; 6F 36 5E 2F
	tda		; 7B
	trb $305D.w		; 1C 5D 30
	sec		; 38
	adc $307F38.l,X		; 7F 38 7F 30
	adc $067C20.l,X		; 7F 20 7C 06
	and [$0C.b],Y		; 37 0C
	and $001C10.l		; 2F 10 1C 00
	and ($78.b)		; 32 78
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $BC.b		; 00 BC
	brk $FE.b		; 00 FE
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$0000.w		; C0 00 00
	brk $80.b		; 00 80
	lda $BD00.w,X		; BD 00 BD
	brk $FD.b		; 00 FD
	brk $07.b		; 00 07
	sed		; F8
	sec		; 38
	sbc $78C744.l,X		; FF 44 C7 78
	cmp $7E.b,S		; C3 7E
	cmp $39.b,S		; C3 39
	tda		; 7B
	and $017B.w,Y		; 39 7B 01
	ora $00.b,S		; 03 00
	brk $44.b		; 00 44
	mvp $02,$3A		; 44 3A 02
	rol $3C02.w,X		; 3E 02 3C
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	bpl -32.b		; 10 E0
	bvs  32.b		; 70 20
	bcs  64.b		; B0 40
	bcc -32.b		; 90 E0
	tya		; 98
	cpx #$D898.w		; E0 98 D8
	cld		; D8
	cpy #$80C0.w		; C0 C0 80
	bra   0.b		; 80 00
	brk $D0.b		; 00 D0
	bcc -16.b		; 90 F0
	bcc 112.b		; 90 70
	bpl 112.b		; 10 70
	bpl  28.b		; 10 1C
	and ($0C.b,S),Y		; 33 0C
	and ($0E.b,S),Y		; 33 0E
	and ($0C.b,S),Y		; 33 0C
	ora ($07.b),Y		; 11 07
	ora ($0E.b),Y		; 11 0E
	clc		; 18
	asl $18.b		; 06 18
	ora $08.b,S		; 03 08
	asl $1E02.w		; 0E 02 1E
	ora ($1D.b)		; 12 1D
	ora ($0F.b),Y		; 11 0F
	ora ($0E.b,X)		; 01 0E
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	php		; 08
	ora $908008.l		; 0F 08 80 90
	cpy #$60D0.w		; C0 D0 60
	beq  32.b		; F0 20
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	sed		; F8
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	rts		; 60

	brk $20.b		; 00 20
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	rti		; 40

	rts		; 60

	rts		; 60

	ldy #$20A0.w		; A0 A0 20
	jsr $2020.w		; 20 20 20
	brk $00.b		; 00 00
	cpy #$7000.w		; C0 00 70
	bra -16.b		; 80 F0
	sed		; F8
	cpx $7C1C.w		; EC 1C 7C
	inx		; E8
	jmp ($68F8.w)		; 6C F8 68
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sed		; F8
	brk $1C.b		; 00 1C
	brk $E8.b		; 00 E8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	adc $106F18.l		; 6F 18 6F 10
	adc [$00.b]		; 67 00
	and [$11.b]		; 27 11
	rol $13.b,X		; 36 13
	bit $17.b,X		; 34 17
	bpl  30.b		; 10 1E
	ora ($50.b,X)		; 01 50
	rti		; 40

	bmi  32.b		; 30 20
	sec		; 38
	jsr $2038.w		; 20 38 20
	php		; 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	php		; 08
	tsa		; 3B
	asl $3F.b		; 06 3F
	php		; 08
	and $143B08.l		; 2F 08 3B 14
	tsa		; 3B
	tsb $3B.b		; 04 3B
	tsb $2E.b		; 04 2E
	brk $3E.b		; 00 3E
	clc		; 18
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	clc		; 18
	bpl  24.b		; 10 18
	brk $00.b		; 00 00
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $6C.b		; 00 6C
	php		; 08
	mvp $4C,$08		; 44 08 4C
	bmi 120.b		; 30 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	php		; 08
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	jsr $0020.w		; 20 20 00
	brk $23.b		; 00 23
	cld		; D8
	ora ($F8.b,S),Y		; 13 F8
	ora [$F8.b],Y		; 17 F8
	ora [$F8.b],Y		; 17 F8
	and [$C8.b],Y		; 37 C8
	and [$E8.b],Y		; 37 E8
	sta [$B8.b]		; 87 B8
	sta ($B8.b,S),Y		; 93 B8
	eor [$00.b],Y		; 57 00
	and [$00.b]		; 27 00
	eor [$40.b]		; 47 40
	eor [$40.b]		; 47 40
	lda [$80.b],Y		; B7 80
	sta [$80.b],Y		; 97 80
	eor [$00.b]		; 47 00
	eor [$00.b]		; 47 00
	jsr ($FFBF.w,X)		; FC BF FF
	ldx $BFFF.w,Y		; BE FF BF
	jmp $9F6EBF.l		; 5C BF 6E 9F
	ora $DF2FFF.l		; 0F FF 2F DF
	lda $0837DF.l,X		; BF DF 37 08
	sec		; 38
	asl $3F.b		; 06 3F
	brk $BF.b		; 00 BF
	bra -97.b		; 80 9F
	bra -69.b		; 80 BB
	sty $99.b		; 84 99
	stx $19.b		; 86 19
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	asl $07.b		; 06 07
	asl $0E17.w		; 0E 17 0E
	ora $0E0F0E.l,X		; 1F 0E 0F 0E
	ora [$0E.b]		; 07 0E
	ora [$0E.b]		; 07 0E
	brk $0E.b		; 00 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	cop $0E.b		; 02 0E
	asl $1E.b		; 06 1E
	asl $1E.b		; 06 1E
	asl $1E.b		; 06 1E
	bvs  56.b		; 70 38
	bmi  56.b		; 30 38
	bmi 112.b		; 30 70
	sed		; F8
	bvs 104.b		; 70 68
	bvs  96.b		; 70 60
	beq -32.b		; F0 E0
	cpx #$E0E0.w		; E0 E0 E0
	brk $38.b		; 00 38
	jsr $2078.w		; 20 78 20
	sei		; 78
	jsr $6070.w		; 20 70 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq  96.b		; F0 60
	beq 127.b		; F0 7F
	jmp ($7E7F.w,X)		; 7C 7F 7E
	and $3F9F7F.l,X		; 3F 7F 9F 3F
	sta $71300F.l		; 8F 0F 30 71
	ply		; 7A
	jmp ($7EFD.w,X)		; 7C FD 7E
	bit $3EFD.w,X		; 3C FD 3E
	inc $FF1E.w,X		; FE 1E FF
	asl $007F.w		; 0E 7F 00
	adc $30FF00.l,X		; 7F 00 FF 30
	sbc $FC7F38.l,X		; FF 38 7F FC
	brk $FC.b		; 00 FC
	brk $5C.b		; 00 5C
	bra  84.b		; 80 54
	bra  68.b		; 80 44
	bra -92.b		; 80 A4
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	cpy #$0000.w		; C0 00 00
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	adc $00.b,X		; 75 00
	lda $00.b,X		; B5 00
	lda $00.b,X		; B5 00
	adc $6D00.w		; 6D 00 6D
	brk $DD.b		; 00 DD
	brk $DD.b		; 00 DD
	brk $BD.b		; 00 BD
	brk $00.b		; 00 00
	asl A		; 0A
	jsr $216A.w		; 20 6A 21
	rtl		; 6B

	eor #$49DB.w		; 49 DB 49
	stp		; DB
	sta $99BB.w,Y		; 99 BB 99
	tyx		; BB
	and $787B.w,Y		; 39 7B 78
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $40.b		; 00 40
	cpy #$C040.w		; C0 40 C0
	jsr $2060.w		; 20 60 20
	rts		; 60

	bmi 112.b		; 30 70
	bcc -80.b		; 90 B0
	tya		; 98
	clv		; B8
	tya		; 98
	clv		; B8
	ror $3CC3.w,X		; 7E C3 3C
	cmp ($1C.b,X)		; C1 1C
	eor ($3C.b,X)		; 41 3C
	adc ($1C.b,X)		; 61 1C
	adc ($1C.b,X)		; 61 1C
	adc ($1E.b,X)		; 61 1E
	and $0C.b,S		; 23 0C
	and $3C.b,S		; 23 3C
	brk $7E.b		; 00 7E
	rti		; 40

	rol $1E00.w,X		; 3E 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	trb $1E00.w		; 1C 00 1E
	cop $60.b		; 02 60
	clc		; 18
	rts		; 60

	clc		; 18
	rts		; 60

	clc		; 18
	rts		; 60

	clc		; 18
	rts		; 60

	bpl  64.b		; 10 40
	bpl -64.b		; 10 C0
	bcc -128.b		; 90 80
	bcc -16.b		; 90 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl  96.b		; 10 60
	brk $60.b		; 00 60
	brk $07.b		; 00 07
	tsb $0C03.w		; 0C 03 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	ora ($06.b,X)		; 01 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $7C.b		; 00 7C
	cpy #$C07C.w		; C0 7C C0
	jmp ($3C80.w,X)		; 7C 80 3C
	bra  60.b		; 80 3C
	cpy #$E03C.w		; C0 3C E0
	bit $3C60.w,X		; 3C 60 3C
	cpy #$8040.w		; C0 40 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpx #$C020.w		; E0 20 C0
	brk $C0.b		; 00 C0
	brk $97.b		; 00 97
	sed		; F8
	trb $60E2.w		; 1C E2 60
	bne -32.b		; D0 E0
	cpy #$00E0.w		; C0 E0 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $E2.b		; 00 E2
	brk $D0.b		; 00 D0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
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
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
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
	asl $041B.w		; 0E 1B 04
	asl $3C3F.w		; 0E 3F 3C
	eor $03.b,S		; 43 03
	tsb $01.b		; 04 01
	cop $01.b		; 02 01
	cop $06.b		; 02 06
	ora #$000E.w		; 09 0E 00
	tsb $00.b		; 04 00
	and $004300.l,X		; 3F 00 43 00
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	ora #$1F00.w		; 09 00 1F
	brk $1C.b		; 00 1C
	sta $18.b,S		; 83 18
	lda [$36.b]		; A7 36
	cmp #$E116.w		; C9 16 E1
	asl $F1.b		; 06 F1
	sbc [$11.b]		; E7 11
	cmp $000029.l,X		; DF 29 00 00
	sta $03.b,S		; 83 03
	lda [$07.b]		; A7 07
	cmp $01EF09.l		; CF 09 EF 01
	sbc $000E01.l		; EF 01 0E 00
	rol $00.b		; 26 00
	sta $07.b,S		; 83 07
	sta $00.b,S		; 83 00
	sbc [$00.b],Y		; F7 00
	adc $F877F0.l,X		; 7F F0 77 F8
	.db $42, $FF		; 42 FF
	trb $7FFF.w		; 1C FF 7F
	sbc $000F03.l,X		; FF 03 0F 00
	tsb $0800.w		; 0C 00 08
	bvs   0.b		; 70 00
	sei		; 78
	brk $7F.b		; 00 7F
	brk $7B.b		; 00 7B
	tsb $7D.b		; 04 7D
	cop $80.b		; 02 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	tsb $2800.w		; 0C 00 28
	php		; 08
	ply		; 7A
	bit $3C7E.w,X		; 3C 7E 3C
	ror $1A3C.w,X		; 7E 3C 1A
	trb $0C06.w		; 1C 06 0C
	rol $001C.w		; 2E 1C 00
	brk $08.b		; 00 08
	trb $3C38.w		; 1C 38 3C
	sec		; 38
	bit $3C18.w,X		; 3C 18 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $6C.b		; 00 6C
	plp		; 28
	trb $DC08.w		; 1C 08 DC
	cli		; 58
	jmp $30B810.l		; 5C 10 B8 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	plp		; 28
	php		; 08
	plp		; 28
	php		; 08
	sei		; 78
	bpl  48.b		; 10 30
	bmi 112.b		; 30 70
	ora $311E31.l		; 0F 31 1E 31
	tsb $1E21.w		; 0C 21 1E
	adc $3C.b,S		; 63 3C
	adc $1C.b,S		; 63 1C
	eor $78.b,S		; 43 78
	cmp $7C.b,S		; C3 7C
	cmp [$1E.b]		; C7 1E
	bpl  15.b		; 10 0F
	ora ($3E.b,X)		; 01 3E
	jsr $203C.w		; 20 3C 20
	asl $7C02.w,X		; 1E 02 7C
	rti		; 40

	and $3901.w,X		; 3D 01 39
	ora ($38.b,X)		; 01 38
	dey		; 88
	rts		; 60

	dey		; 88
	bvs -104.b		; 70 98
	cpy #$A098.w		; C0 98 A0
	bcs -128.b		; B0 80
	bcs -64.b		; B0 C0
	cpx #$E080.w		; E0 80 E0
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	cpx #$7080.w		; E0 80 70
	bpl  64.b		; 10 40
	brk $60.b		; 00 60
	jsr $0000.w		; 20 00 00
	rti		; 40

	rti		; 40

	rol $0E40.w,X		; 3E 40 0E
	bvs  17.b		; 70 11
	bvs  14.b		; 70 0E
	rts		; 60

	asl $1E60.w,X		; 1E 60 1E
	rts		; 60

	asl $1E60.w,X		; 1E 60 1E
	rts		; 60

	brk $01.b		; 00 01
	bmi  49.b		; 30 31
	rol $3F20.w		; 2E 20 3F
	jsr $203F.w		; 20 3F 20
	and $203F20.l,X		; 3F 20 3F 20
	and $00EF20.l,X		; 3F 20 EF 00
	inc $FC00.w		; EE 00 FC
	brk $10.b		; 00 10
	sed		; F8
	jsr $40E8.w		; 20 E8 40
	iny		; C8
	jsr $7088.w		; 20 88 70
	tya		; 98
	iny		; C8
	cld		; D8
	iny		; C8
	cld		; D8
	brk $00.b		; 00 00
	jsr $5020.w		; 20 20 50
	rti		; 40

	bmi   0.b		; 30 00
	bvs   0.b		; 70 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	sec		; 38
	cmp $106F30.l,X		; DF 30 6F 10
	adc $003F18.l		; 6F 18 3F 00
	and [$0C.b],Y		; 37 0C
	sbc [$0E.b],Y		; F7 0E
	sbc [$0F.b],Y		; F7 0F
	ora $1079.w,Y		; 19 79 10
	bvs   7.b		; 70 07
	and [$0B.b],Y		; 37 0B
	tsa		; 3B
	ora ($01.b,X)		; 01 01
	ora ($1D.b,X)		; 01 1D
	cop $1E.b		; 02 1E
	ora $0F.b,S		; 03 0F
	bmi -36.b		; 30 DC
	jsr $20DC.w		; 20 DC 20
	cld		; D8
	ldy #$C858.w		; A0 58 C8
	bpl 120.b		; 10 78
	bra -72.b		; 80 B8
	cpy #$20F8.w		; C0 F8 20
	rts		; 60

	rti		; 40

	bvs  80.b		; 70 50
	bvs  80.b		; 70 50
	bvs  80.b		; 70 50
	jsr $1000.w		; 20 00 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl -24.b		; 10 E8
	jsr $50B8.w		; 20 B8 50
	clv		; B8
	rti		; 40

	clv		; B8
	rti		; 40

	inx		; E8
	brk $F8.b		; 00 F8
	bmi  -8.b		; 30 F8
	brk $78.b		; 00 78
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bpl  48.b		; 10 30
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	brk $6C.b		; 00 6C
	jsr $2044.w		; 20 44 20
	stz $18.b		; 64 18
	bit $3C00.w,X		; 3C 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $38.b		; 00 38
	jsr $1818.w		; 20 18 18
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	ora [$0B.b]		; 07 0B
	ora $0C.b		; 05 0C
	ora $00.b,S		; 03 00
	ora $01.b,S		; 03 01
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $05.b		; 00 05
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	and [$7F.b]		; 27 7F
	sta $FF7FBF.l,X		; 9F BF 7F FF
	adc $1E3FC7.l,X		; 7F C7 3F 1E
	and ($04.b,X)		; 21 04
	phd		; 0B
	ora [$0B.b]		; 07 0B
	and [$00.b]		; 27 00
	stz $7801.w,X		; 9E 01 78
	ora [$7F.b]		; 07 7F
	brk $3F.b		; 00 3F
	brk $21.b		; 00 21
	brk $0B.b		; 00 0B
	brk $0B.b		; 00 0B
	brk $FF.b		; 00 FF
	sbc #$E8FE.w		; E9 FE E8
	inc $E0.b,X		; F6 E0
	inc $4F00.w,X		; FE 00 4F
	beq 111.b		; F0 6F
	beq -17.b		; F0 EF
	beq -26.b		; F0 E6
	beq -26.b		; F0 E6
	brk $27.b		; 00 27
	cpy #$00EF.w		; C0 EF 00
	ora $10FF00.l		; 0F 00 FF 10
	sbc $30DF10.l,X		; FF 10 DF 30
	sta $8F7770.l,X		; 9F 70 77 8F
	ora $D166E3.l,X		; 1F E3 66 D1
	eor $7EF2.w,X		; 5D F2 7E
	cmp $7E.b		; C5 7E
	cmp [$78.b]		; C7 78
	dec $3C.b		; C6 3C
	cpx $0F.b		; E4 0F
	brk $63.b		; 00 63
	brk $01.b		; 00 01
	clc		; 18
	bpl  20.b		; 10 14
	dec A		; 3A
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $18.b		; 00 18
	brk $A0.b		; 00 A0
	cpy #$C020.w		; C0 20 C0
	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	trb $1C3C.w		; 1C 3C 1C
	trb $1C1C.w		; 1C 1C 1C
	bit $3C7C.w,X		; 3C 7C 3C
	rts		; 60

	bit $204E.w,X		; 3C 4E 20
	lsr $0800.w,X		; 5E 00 08
	asl $1E18.w,X		; 1E 18 1E
	clc		; 18
	rol $3E18.w,X		; 3E 18 3E
	clc		; 18
	rol $3E00.w,X		; 3E 00 3E
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	plp		; 28
	bmi  24.b		; 30 18
	bmi  80.b		; 30 50
	sec		; 38
	trb $38.b		; 14 38
	clc		; 18
	clc		; 18
	inc A		; 1A
	trb $1C1C.w		; 1C 1C 1C
	ora $201E.w		; 0D 1E 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sec		; 38
	bpl  56.b		; 10 38
	bpl  60.b		; 10 3C
	clc		; 18
	bit $3E08.w,X		; 3C 08 3E
	tsb $383E.w		; 0C 3E 38
	sta [$38.b]		; 87 38
	sta [$30.b]		; 87 30
	sta [$38.b]		; 87 38
	sta $608F30.l		; 8F 30 8F 60
	cmp $70CE60.l		; CF 60 CE 70
	dec $057D.w,X		; DE 7D 05
	adc $7B01.w,Y		; 79 01 7B
	ora $73.b,S		; 03 73
	ora $7A.b,S		; 03 7A
	asl A		; 0A
	and ($02.b)		; 32 02
	bmi   0.b		; 30 00
	jsr $8000.w		; 20 00 80
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	ora $611E61.l,X		; 1F 61 1E 61
	rol $3C61.w,X		; 3E 61 3C
	adc ($3E.b,X)		; 61 3E
	adc $1C.b,S		; 63 1C
	eor $1C.b,S		; 43 1C
	eor $39.b,S		; 43 39
	eor $3E.b,S		; 43 3E
	jsr $213F.w		; 20 3F 21
	asl $1E00.w,X		; 1E 00 1E
	brk $1C.b		; 00 1C
	brk $3E.b		; 00 3E
	cop $7D.b		; 02 7D
	eor ($7C.b,X)		; 41 7C
	rti		; 40

	bvs -104.b		; 70 98
	rts		; 60

	tya		; 98
	rts		; 60

	tya		; 98
	cpx #$6090.w		; E0 90 60
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bpl -64.b		; 10 C0
	bpl  96.b		; 10 60
	brk $70.b		; 00 70
	bpl -16.b		; 10 F0
	bcc 112.b		; 90 70
	bpl -16.b		; 10 F0
	bpl -32.b		; 10 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $D7.b		; 02 D7
	ora $DE13DB.l		; 0F DB 13 DE
	trb $0FD7.w		; 1C D7 0F
	sbc $DF03.w,X		; FD 03 DF
	brk $B5.b		; 00 B5
	brk $6B.b		; 00 6B
	brk $03.b		; 00 03
	and $0C3711.l		; 2F 11 37 0C
	and $3F03.w,X		; 3D 03 3F
	brk $03.b		; 00 03
	bcc -80.b		; 90 B0
	jsr $426A.w		; 20 6A 42
	dec $EF.b,X		; D6 EF
	sbc $F9E6.w,Y		; F9 E6 F9
	lda ($CE.b),Y		; B1 CE
	adc $06FB81.l,X		; 7F 81 FB 06
	ora $070B01.l,X		; 1F 01 0B 07
	ora $00E600.l		; 0F 00 E6 00
	sbc $06C609.l		; EF 09 C6 06
	sta ($11.b,X)		; 81 11
	brk $0E.b		; 00 0E
	ora ($11.b,X)		; 01 11
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	clc		; 18
	jsr ($F800.w,X)		; FC 00 F8
	sbc [$18.b]		; E7 18
	lda ($CE.b),Y		; B1 CE
	jsr ($BE03.w,X)		; FC 03 BE
	cmp ($FF.b,X)		; C1 FF
	brk $7F.b		; 00 7F
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $E4.b		; 24 E4
	jsl $CD0D22.l		; 22 22 0D CD
	asl $4E2E.w		; 0E 2E 4E
	inc $0000.w		; EE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$6000.w		; E0 00 60
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $6060.w		; 20 60 60
	jsr $F620.w		; 20 20 F6
	clc		; 18
	inc $18.b		; E6 18
	inc $FF00.w,X		; FE 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	jsr $60FC.w		; 20 FC 60
	sed		; F8
	cpx #$D8C0.w		; E0 C0 D8
	brk $18.b		; 00 18
	cpx #$E6E0.w		; E0 E0 E6
	inc $C6.b		; E6 C6
	dec $8C.b,X		; D6 8C
	ldy $6848.w,X		; BC 48 68
	cpy #$F0E0.w		; C0 E0 F0
	cpx #$E0D0.w		; E0 D0 E0
	beq -64.b		; F0 C0
	ldy #$C800.w		; A0 00 C8
	bne -24.b		; D0 E8
	bvs  -8.b		; 70 F8
	jsr $0078.w		; 20 78 00
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$E0C0.w		; E0 C0 E0
	brk $70.b		; 00 70
	cpy #$40F0.w		; C0 F0 40
	bvs   0.b		; 70 00
	jsr $8000.w		; 20 00 80
	asl $00.b		; 06 00
	ora $00.b		; 05 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $02.b		; 02 02
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stp		; DB
	brk $B7.b		; 00 B7
	brk $76.b		; 00 76
	brk $EE.b		; 00 EE
	brk $EE.b		; 00 EE
	brk $DE.b		; 00 DE
	brk $DD.b		; 00 DD
	brk $5D.b		; 00 5D
	bra -110.b		; 80 92
	ldx $26.b,Y		; B6 26
	ror $ED64.w		; 6E 64 ED
	cpy $CCDD.w		; CC DD CC
	cmp $BD9C.w,X		; DD 9C BD
	ora $193B.w,Y		; 19 3B 19
	tsa		; 3B
	sei		; 78
	brk $5C.b		; 00 5C
	brk $DC.b		; 00 DC
	brk $DC.b		; 00 DC
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ldy #$A080.w		; A0 80 A0
	bcc -80.b		; 90 B0
	bcc -80.b		; 90 B0
	bcc -80.b		; 90 B0
	bcc -80.b		; 90 B0
	bcc -80.b		; 90 B0
	brk $70.b		; 00 70
	sed		; F8
	tsb $FF.b		; 04 FF
	sei		; 78
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFE.w,X		; FD FE FF
	jsr ($F9FF.w,X)		; FC FF F9
	bvs   0.b		; 70 00
	tsb $00.b		; 04 00
	sei		; 78
	brk $C6.b		; 00 C6
	sec		; 38
	lda ($4C.b,S),Y		; B3 4C
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00E0.w		; C0 E0 00
	rts		; 60

	bra -64.b		; 80 C0
	jsr $00E0.w		; 20 E0 00
	cpx #$0000.w		; E0 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F4.b		; 00 F4
	phd		; 0B
	cmp $FC2B.w,X		; DD 2B FC
	rol A		; 2A
	sbc $2A.b,X		; F5 2A
	dex		; CA
	and ($A7.b),Y		; 31 A7
	brk $78.b		; 00 78
	ora [$3F.b]		; 07 3F
	sbc $8AE8E0.l,X		; FF E0 E8 8A
	tax		; AA
	lda $AA.b,S		; A3 AA
	sta $AA.b,S		; 83 AA
	ora ($35.b,X)		; 01 35
	brk $58.b		; 00 58
	brk $8F.b		; 00 8F
	cop $FF.b		; 02 FF
	brk $F8.b		; 00 F8
	pla		; 68
	ora $FF01F9.l		; 0F F9 01 FF
	brk $CF.b		; 00 CF
	cpy #$FF00.w		; C0 00 FF
	cpx #$7000.w		; E0 00 70
	bra   0.b		; 80 00
	brk $F6.b		; 00 F6
	asl $FE.b		; 06 FE
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	cpy #$1FF7.w		; C0 F7 1F
	sbc $03FF0C.l,X		; FF 0C FF 03
	sbc $00EB00.l		; EF 00 EB 00
	phx		; DA
	brk $FA.b		; 00 FA
	brk $B6.b		; 00 B6
	brk $13.b		; 00 13
	ora $8F1D1C.l,X		; 1F 1C 1D 8F
	sta $005343.l		; 8F 43 53 00
	trb $10.b		; 14 10
	and $30.b,X		; 35 30
	and $24.b,X		; 35 24
	adc $8000.w		; 6D 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$8040.w		; C0 40 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	bra -64.b		; 80 C0
	cpy #$00C0.w		; C0 C0 00
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sty $FC.b		; 84 FC
	sta $DC.b		; 85 DC
	ora ($CC.b,X)		; 01 CC
	ora $8E.b,S		; 03 8E
	brk $86.b		; 00 86
	ora ($07.b,X)		; 01 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	phd		; 0B
	php		; 08
	phd		; 0B
	php		; 08
	sta [$84.b]		; 87 84
	ora $04.b		; 05 04
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	rti		; 40

	bvs -96.b		; 70 A0
	bmi -64.b		; 30 C0
	bpl -16.b		; 10 F0
	clc		; 18
	cpx #$F008.w		; E0 08 F0
	php		; 08
	sei		; 78
	tsb $84F0.w		; 0C F0 84
	ldy #$C020.w		; A0 20 C0
	brk $F0.b		; 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	sei		; 78
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $1A.b		; 00 1A
	tsb $1C3C.w		; 0C 3C 1C
	jmp ($5C3C.w,X)		; 7C 3C 5C
	rol $1F2E.w,X		; 3E 2E 1F
	ora $00000E.l,X		; 1F 0E 00 00
	brk $00.b		; 00 00
	php		; 08
	tsb $1E1C.w		; 0C 1C 1E
	bit $103E.w,X		; 3C 3E 10
	and $061F0E.l,X		; 3F 0E 1F 06
	asl $3808.w		; 0E 08 38
	ora $71.b,X		; 15 71
	rol $1863.w		; 2E 63 18
	cmp $3C.b,S		; C3 3C
	stx $70.b		; 86 70
	stx $F8.b		; 86 F8
	sty $0C60.w		; 8C 60 0C
	ora [$10.b],Y		; 17 10
	rol $1D20.w		; 2E 20 1D
	ora ($7E.b,X)		; 01 7E
	.db $42, $78		; 42 78
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $F8.b		; 00 F8
	php		; 08
	asl $1C23.w,X		; 1E 23 1C
	.db $62, $3C, $62		; 62 3C 62
	sec		; 38
	.db $62, $14, $C6		; 62 14 C6
	rti		; 40

	dec $A8.b		; C6 A8
	sty $1C70.w		; 8C 70 1C
	bit $3E20.w,X		; 3C 20 3E
	jsl $1C021E.l		; 22 1E 02 1C
	brk $78.b		; 00 78
	rti		; 40

	ldy $7084.w,X		; BC 84 70
	brk $E8.b		; 00 E8
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($18.b,X)		; 01 18
	and ($09.b)		; 32 09
	and ($41.b)		; 32 41
	eor ($23.b),Y		; 51 23
	and $0063.w,X		; 3D 63 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $18.b		; 00 18
	brk $09.b		; 00 09
	brk $41.b		; 00 41
	brk $23.b		; 00 23
	brk $63.b		; 00 63
	brk $7F.b		; 00 7F
	ora $1F0B35.l,X		; 1F 35 0B 1F
	and ($03.b,X)		; 21 03
	ora $07.b		; 05 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	brk $0B.b		; 00 0B
	brk $21.b		; 00 21
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $77.b		; 00 77
	sed		; F8
	inc $F971.w,X		; FE 71 F9
	rol $70.b		; 26 70
	tsb $0F17.w		; 0C 17 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $70.b		; 00 70
	sed		; F8
	bmi 112.b		; 30 70
	ora $62.b,S		; 03 62
	ora [$24.b]		; 07 24
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $2066.w		; 0C 66 20
	ror $28.b		; 66 28
	jmp ($6C20.w)		; 6C 20 6C
	bvs  60.b		; 70 3C
	cpx #$F018.w		; E0 18 F0
	php		; 08
	bvs -120.b		; 70 88
	sec		; 38
	jsr $041C.w		; 20 1C 04
	bpl   0.b		; 10 00
	clc		; 18
	php		; 08
	brk $00.b		; 00 00
	bcc -112.b		; 90 90
	bra -128.b		; 80 80
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0A.b		; 00 0A
	tsb $12.b		; 04 12
	php		; 08
	rol A		; 2A
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	php		; 08
	trb $F5C9.w		; 1C C9 F5
	lda $C0BFD5.l,X		; BF D5 BF C0
	sbc $F0CED0.l		; EF D0 CE F0
	inc $6618.w		; EE 18 66
	sta $E006F8.l,X		; 9F F8 06 E0
	asl $CC.b		; 06 CC
	tsb $CF.b		; 04 CF
	brk $CF.b		; 00 CF
	brk $EF.b		; 00 EF
	ora ($07.b,X)		; 01 07
	ora ($90.b,X)		; 01 90
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	rti		; 40

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $7F.b		; 00 7F
	sbc $4FFF3F.l,X		; FF 3F FF 4F
	and $3E47B8.l,X		; 3F B8 47 3E
	adc $9F3FDE.l,X		; 7F DE 3F 9F
	and $3F1FCF.l,X		; 3F CF 1F 3F
	sbc $00FF1F.l,X		; FF 1F FF 00
	sbc $18FF00.l,X		; FF 00 FF 18
	sbc $0E7F0E.l,X		; FF 0E 7F 0E
	adc $903F07.l,X		; 7F 07 3F 90
	cpy #$C098.w		; C0 98 C0
	sei		; 78
	bra -72.b		; 80 B8
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpx #$E000.w		; E0 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	ror $00.b,X		; 76 00
	inc $EE00.w		; EE 00 EE
	brk $DD.b		; 00 DD
	brk $FD.b		; 00 FD
	brk $BD.b		; 00 BD
	brk $7F.b		; 00 7F
	bra -66.b		; 80 BE
	cmp ($64.b,X)		; C1 64
	sbc $DDCC.w		; ED CC DD
	cpy $99DD.w		; CC DD 99
	tyx		; BB
	and $393B.w,Y		; 39 3B 39
	tda		; 7B
	clv		; B8
	clv		; B8
	ora ($01.b,X)		; 01 01
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	cld		; D8
	brk $D8.b		; 00 D8
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	jsr $E000.w		; 20 00 E0
	bra -96.b		; 80 A0
	bra -96.b		; 80 A0
	bcc -80.b		; 90 B0
	bcc -80.b		; 90 B0
	bra -96.b		; 80 A0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpx #$00E0.w		; E0 E0 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	sty $3C.b		; 84 3C
	stx $78.b		; 86 78
.INDEX 16
	rep #$1C		; C2 1C
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	adc $2C.b,S		; 63 2C
	adc ($1C.b,X)		; 61 1C
	adc ($1C.b),Y		; 71 1C
	adc ($FC.b),Y		; 71 FC
	sty $F8.b		; 84 F8
	bra  60.b		; 80 3C
	brk $7E.b		; 00 7E
	.db $42, $5C		; 42 5C
	rti		; 40

	asl $2E00.w,X		; 1E 00 2E
	jsr $202E.w		; 20 2E 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	bra  -1.b		; 80 FF
	sbc $FA01.w,X		; FD 01 FA
	ora $C1.b,S		; 03 C1
	inc $3807.w,X		; FE 07 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$67.b]		; 67 67
	inc $FD00.w,X		; FE 00 FD
	ora ($3E.b,X)		; 01 3E
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $7F00.w,Y		; F9 00 7F
	sta $FA8F7F.l		; 8F 7F 8F FA
	trb $20D6.w		; 1C D6 20
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	sta $8F8F8F.l		; 8F 8F 8F 8F
	brk $1F.b		; 00 1F
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	bit $7E18.w,X		; 3C 18 7E
	dec A		; 3A
	stz $F878.w		; 9C 78 F8
	beq -48.b		; F0 D0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	trb $3B08.w		; 1C 08 3B
	brk $FA.b		; 00 FA
	beq -16.b		; F0 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $2E71.w		; 1C 71 2E
	adc $28.b,S		; 63 28
	adc $1C.b,S		; 63 1C
	dec $78.b		; C6 78
	dec $30.b		; C6 30
	sty $F8.b		; 84 F8
	sty $0870.w		; 8C 70 08
	rol $1C20.w		; 2E 20 1C
	brk $1E.b		; 00 1E
	cop $78.b		; 02 78
	rti		; 40

	bit $F804.w,X		; 3C 04 F8
	bra 112.b		; 80 70
	brk $F8.b		; 00 F8
	php		; 08
	ora [$08.b],Y		; 17 08
	tas		; 1B
	php		; 08
	and [$1C.b]		; 27 1C
	rol $3E04.w,X		; 3E 04 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	brk $14.b		; 00 14
	bpl  22.b		; 10 16
	bpl  42.b		; 10 2A
	plp		; 28
	jsr $3820.w		; 20 20 38
	sec		; 38
	sei		; 78
	sei		; 78
	bmi  48.b		; 30 30
	bcc -112.b		; 90 90
	ora $18.b,S		; 03 18
	ora $300618.l		; 0F 18 06 30
	ora $610E31.l,X		; 1F 31 0E 61
	bit $1E61.w,X		; 3C 61 1E
	eor $1C.b,S		; 43 1C
	.db $42, $0F		; 42 0F
	php		; 08
	ora [$00.b]		; 07 00
	ora $000E10.l,X		; 1F 10 0E 00
	and $001E21.l,X		; 3F 21 1E 00
	bit $7E00.w,X		; 3C 00 7E
	.db $42, $38		; 42 38
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	dec $38.b		; C6 38
	sty $30.b		; 84 30
	sty $38.b		; 84 38
	sty $8830.w		; 8C 30 88
	jsr $2088.w		; 20 88 20
	dey		; 88
	jmp ($7840.w,X)		; 7C 40 78
	rti		; 40

	jmp ($7804.w,X)		; 7C 04 78
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	php		; 08
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	ora $70.b,S		; 03 70
	sbc $FF7301.l,X		; FF 01 73 FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0070FF.l,X		; FF FF 70 00
	ora ($00.b,X)		; 01 00
	sbc $30CF00.l,X		; FF 00 CF 30
	cmp [$38.b]		; C7 38
	lda $00FF40.l,X		; BF 40 FF 00
	sbc $FFFF00.l,X		; FF 00 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFF6FC.l,X		; FF FC F6 FF
	rtl		; 6B

	jsr ($68B7.w,X)		; FC B7 68
	and $00FF40.l,X		; 3F 40 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	jsr ($FF00.w,X)		; FC 00 FF
	brk $FC.b		; 00 FC
	brk $68.b		; 00 68
	brk $43.b		; 00 43
	ora $5F.b,S		; 03 5F
	jsr $001F.w		; 20 1F 00
	ora $001F00.l,X		; 1F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	asl $1C20.w,X		; 1E 20 1C
	rti		; 40

	ora [$07.b]		; 07 07
	ora $0F0F0F.l		; 0F 0F 0F 0F
	asl $180E.w		; 0E 0E 18
	clc		; 18
	tsb $040C.w		; 0C 0C 04
	ora $30.b		; 05 30
	ora $35.b,S		; 03 35
	stx $E9.b		; 86 E9
	stx $1CD0.w		; 8E D0 1C
	ldy #$4738.w		; A0 38 47
	bvs -97.b		; 70 9F
	cpx #$C03F.w		; E0 3F C0
	ora $007880.l,X		; 1F 80 78 00
	stz $04.b,X		; 74 04
	inx		; E8
	php		; 08
	bne  16.b		; D0 10
	ldx #$4D22.w		; A2 22 4D
	eor $9292.w		; 4D 92 92
	tsb $04.b		; 04 04
	ora $003F00.l,X		; 1F 00 3F 00
	adc $007F00.l,X		; 7F 00 7F 00
	and $005F00.l		; 2F 00 5F 00
	adc [$00.b],Y		; 77 00
	rol $0300.w		; 2E 00 03
	ora $10.b,S		; 03 10
	bpl  36.b		; 10 24
	bit $04.b		; 24 04
	tsb $0A.b		; 04 0A
	inc A		; 1A
	ora ($33.b,S),Y		; 13 33
	jsl $19082A.l		; 22 2A 08 19
	trb $0200.w		; 1C 00 02
	tsb $1E07.w		; 0C 07 1E
	asl A		; 0A
	tas		; 1B
	ora $11.b		; 05 11
	asl $0E30.w,X		; 1E 30 0E
	jsr $200E.w		; 20 0E 20
	brk $03.b		; 00 03
	tsb $05.b		; 04 05
	php		; 08
	php		; 08
	ora $01.b		; 05 01
	asl $0F10.w,X		; 1E 10 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	jsr $601E.w		; 20 1E 60
	rol $3F60.w,X		; 3E 60 3F
	adc ($1E.b,X)		; 61 1E
	eor ($1C.b,X)		; 41 1C
	eor ($3E.b,X)		; 41 3E
	eor $3C.b,S		; 43 3C
	.db $42, $38		; 42 38
	.db $42, $3F		; 42 3F
	jsr $001F.w		; 20 1F 00
	asl $3F00.w,X		; 1E 00 3F
	ora ($3E.b,X)		; 01 3E
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	cop $3C.b		; 02 3C
	brk $07.b		; 00 07
	bpl  14.b		; 10 0E
	bmi  31.b		; 30 1F
	and ($0C.b),Y		; 31 0C
	and ($2E.b,X)		; 21 2E
	adc $38.b,S		; 63 38
	adc $1C.b,S		; 63 1C
	lsr $10.b		; 46 10
	lsr $0F.b		; 46 0F
	brk $1F.b		; 00 1F
	bpl  14.b		; 10 0E
	brk $3F.b		; 00 3F
	and ($1C.b,X)		; 21 1C
	brk $1E.b		; 00 1E
	cop $38.b		; 02 38
	brk $7C.b		; 00 7C
	mvp $0C,$32		; 44 32 0C
	jsl $1C601C.l		; 22 1C 60 1C
	rti		; 40

	bit $3CC0.w,X		; 3C C0 3C
	bra 120.b		; 80 78
	bra 112.b		; 80 70
	bra  96.b		; 80 60
	bit $24.b		; 24 24
	jsr $4020.w		; 20 20 40
	rti		; 40

	jmp ($B87C.w,X)		; 7C 7C B8
	clv		; B8
	beq -16.b		; F0 F0
	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	jmp $047836.l		; 5C 36 78 04
	jmp ($7C00.w,X)		; 7C 00 7C
	brk $6C.b		; 00 6C
	brk $6C.b		; 00 6C
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	brk $DC.b		; 00 DC
	brk $FE.b		; 00 FE
	jsr $00FE.w		; 20 FE 00
	sbc $04FD00.l,X		; FF 00 FD 04
	cmp $C703.w,X		; DD 03 C7
	brk $43.b		; 00 43
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $08.b,S		; 03 08
	ora [$1D.b]		; 07 1D
	cop $1F.b		; 02 1F
	ora ($1E.b,X)		; 01 1E
	brk $0F.b		; 00 0F
	cop $0E.b		; 02 0E
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $EC.b		; 00 EC
	asl $F8.b		; 06 F8
	tsb $08F0.w		; 0C F0 08
	beq -128.b		; F0 80
	bvs   0.b		; 70 00
	cpx #$E000.w		; E0 00 E0
	brk $E0.b		; 00 E0
	brk $18.b		; 00 18
	brk $50.b		; 00 50
	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	tsb $0F.b		; 04 0F
	brk $08.b		; 00 08
	ora [$00.b],Y		; 17 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $17.b		; 00 17
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	rti		; 40

	ldy #$50A0.w		; A0 A0 50
	bvc -96.b		; 50 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $A0.b		; 00 A0
	brk $50.b		; 00 50
	brk $A0.b		; 00 A0
	brk $F9.b		; 00 F9
	ora ($F6.b,X)		; 01 F6
	bpl  47.b		; 10 2F
	cpx #$F017.w		; E0 17 F0
	phd		; 0B
	sei		; 78
	ora ($3C.b,X)		; 01 3C
	brk $1E.b		; 00 1E
	brk $1F.b		; 00 1F
	dec $C0.b		; C6 C0
	ora $405F00.l		; 0F 00 5F 40
	and $101720.l		; 2F 20 17 10
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rts		; 60

	ldy #$C030.w		; A0 30 C0
	clc		; 18
	beq  28.b		; F0 1C
	sed		; F8
	tsb $067C.w		; 0C 7C 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$F000.w		; C0 00 F0
	bpl -24.b		; 10 E8
	php		; 08
	pea $F804.w		; F4 04 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $18.b,S		; 03 18
	and $2C.b,S		; 23 2C
	rti		; 40

	tad		; 5B
	bcc -86.b		; 90 AA
	and ($4A.b),Y		; 31 4A
	adc ($8D.b),Y		; 71 8D
	sbc $D4.b,S		; E3 D4
	cop $FB.b		; 02 FB
	ora [$10.b]		; 07 10
	tsb $30.b		; 04 30
	ora $60.b,S		; 03 60
	tsb $D0.b		; 04 D0
	ora [$A0.b],Y		; 17 A0
	and [$40.b]		; 27 40
	eor [$00.b]		; 47 00
	ora $3CCFC0.l		; 0F C0 CF 3C
	sbc $DD5EFF.l,X		; FF FF 5E DD
	ror $F06F.w		; 6E 6F F0
	sta $DF2366.l,X		; 9F 66 23 DF
	bmi -17.b		; 30 EF
	and ($E8.b),Y		; 31 E8
	sbc $005E00.l,X		; FF 00 5E 00
	adc $00F100.l		; 6F 00 F1 00
	adc ($00.b,X)		; 61 00
	brk $40.b		; 00 40
	jsr $2060.w		; 20 60 20
	rts		; 60

	sta $4A.b,X		; 95 4A
	adc $F0D6.w,Y		; 79 D6 F0
	and $D81AF4.l		; 2F F4 1A D8
	bpl -32.b		; 10 E0
	bmi -64.b		; 30 C0
	cpx #$C000.w		; E0 00 C0
	asl A		; 0A
	rts		; 60

	lsr $40.b		; 46 40
	cmp [$00.b],Y		; D7 00
	sep #$00		; E2 00
	cpx #$C020.w		; E0 20 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$09.b]		; 07 09
	ora $0B1114.l		; 0F 14 11 0B
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	ora $101F09.l		; 0F 09 1F 10
	tas		; 1B
	ora $17.b,S		; 03 17
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta $00.b,S		; 83 00
	cpy $FFC3.w		; CC C3 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $00.b,S		; C3 00
	sbc $3EFF9F.l,X		; FF 9F FF 3E
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $F307.w,Y		; 79 07 F3
	php		; 08
	sbc $0EF208.l,X		; FF 08 F2 0E
	cpx #$0001.w		; E0 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $32.b		; 00 32
	lda ($27.b)		; B2 27
	jsr $2027.w		; 20 27 20
	eor $C04C.w		; 4D 4C C0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	ora $000700.l,X		; 1F 00 07 00
	brk $01.b		; 00 01
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
	bra  64.b		; 80 40
	cpx #$D010.w		; E0 10 D0
	inx		; E8
	inx		; E8
	pea $F8F6.w		; F4 F6 F8
	inc $D9FD.w,X		; FE FD D9
	inc $98FF.w,X		; FE FF 98
	rti		; 40

	brk $10.b		; 00 10
	brk $68.b		; 00 68
	bra -12.b		; 80 F4
	brk $78.b		; 00 78
	bra -67.b		; 80 BD
	rti		; 40

	inc $9800.w,X		; FE 00 98
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$01.b]		; 07 01
	ora $010E02.l		; 0F 02 0E 01
	trb $1C27.w		; 1C 27 1C
	adc $19.b,S		; 63 19
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	asl $0F08.w		; 0E 08 0F
	ora ($0F.b,X)		; 01 0F
	brk $0B.b		; 00 0B
	brk $09.b		; 00 09
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
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	rti		; 40

	inx		; E8
	jsr $00FC.w		; 20 FC 00
	jmp ($8000.w,X)		; 7C 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $03.b		; 06 03
	brk $07.b		; 00 07
	phd		; 0B
	ora $03.b		; 05 03
	ora $07.b,S		; 03 07
	asl $8B.b		; 06 8B
	.db $82, $2F, $01		; 82 2F 01
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0B.b		; 00 0B
	brk $CF.b		; 00 CF
	brk $70.b		; 00 70
	plb		; AB
	lda ($7C.b,S),Y		; B3 7C
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	plb		; AB
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	ora $E0.b,S		; 03 E0
	ora $FF07F8.l,X		; 1F F8 07 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($7C.b,X)		; 01 7C
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	sbc $1E.b,S		; E3 1E
	sbc ($0F.b),Y		; F1 0F
	sbc $F807.w,Y		; F9 07 F8
	ora [$F8.b]		; 07 F8
	ror $E1.b		; 66 E1
	stz $BE86.w		; 9C 86 BE
	.db $82, $5C, $40		; 82 5C 40
	and $101621.l		; 2F 21 16 10
	ora $303708.l		; 0F 08 37 30
	sta $027A81.l,X		; 9F 81 7A 02
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	and $003F00.l,X		; 3F 00 3F 00
	ora $001C00.l,X		; 1F 00 1C 00
	and ($00.b,S),Y		; 33 00
	eor $010100.l		; 4F 00 01 01
	brk $00.b		; 00 00
	trb $0E1C.w		; 1C 1C 0E
	asl $0000.w		; 0E 00 00
	brk $03.b		; 00 03
	ora $0F.b,S		; 03 0F
	tsb $F73C.w		; 0C 3C F7
	ora $FF1FEF.l		; 0F EF 1F FF
	ora $CE0FFF.l,X		; 1F FF 0F CE
	and [$FE.b],Y		; 37 FE
	clc		; 18
	lda $077F0E.l,X		; BF 0E 7F 07
	sta ($9F.b,X)		; 81 9F
	sta $BF.b,S		; 83 BF
	ora [$1F.b]		; 07 1F
	ora $37066F.l		; 0F 6F 06 37
	php		; 08
	ora $6E26.w,Y		; 19 26 6E
	eor $C7.b,S		; 43 C7
	lsr $BCC3.w,X		; 5E C3 BC
	stx $78.b		; 86 78
	tsb $18F0.w		; 0C F0 18
	cpx #$C030.w		; E0 30 C0
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	ldy $7880.w,X		; BC 80 78
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C9.b		; 00 C9
	asl $E7.b,X		; 16 E7
	php		; 08
	bmi -121.b		; 30 87
	clc		; 18
	cmp $0E.b,S		; C3 0E
	adc $05.b,S		; 63 05
	and ($E0.b),Y		; 31 E0
	ora $0F70.w,Y		; 19 70 0F
	inc $00.b		; E6 00
	beq   0.b		; F0 00
	xce		; FB
	bra 124.b		; 80 7C
	rti		; 40

	and $1E21.w,X		; 3D 21 1E
	bpl  15.b		; 10 0F
	ora #$0707.w		; 09 07 07
	bit $5CE0.w		; 2C E0 5C
	bne  -4.b		; D0 FC
	rts		; 60

	cpx $D0.b		; E4 D0
	inc $F8.b,X		; F6 F8
	inc $FAF8.w,X		; FE F8 FA
	sed		; F8
	ply		; 7A
	sei		; 78
	jsr $5070.w		; 20 70 50
	beq  96.b		; F0 60
	rts		; 60

	brk $D8.b		; 00 D8
	bvs  -8.b		; 70 F8
	sei		; 78
	sed		; F8
	sei		; 78
	jsr ($FC78.w,X)		; FC 78 FC
	sbc ($F8.b,S),Y		; F3 F8
	sta [$B0.b]		; 87 B0
	sta $803FC0.l,X		; 9F C0 3F 80
	inc $FC00.w,X		; FE 00 FC
	brk $68.b		; 00 68
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	jsr ($FA82.w,X)		; FC 82 FA
	stx $E6.b		; 86 E6
	tsb $08CC.w		; 0C CC 08
	php		; 08
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($F300.w,X)		; 7C 00 F3
	brk $8F.b		; 00 8F
	brk $7E.b		; 00 7E
	brk $3D.b		; 00 3D
	brk $1B.b		; 00 1B
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $30.b		; 00 30
	and ($43.b,S),Y		; 33 43
	eor $3C7E0E.l		; 4F 0E 7E 3C
	and $1B19.w,X		; 3D 19 1B
	ora $07.b,S		; 03 07
	asl $0E.b		; 06 0E
	tsb $04.b		; 04 04
	cmp $00BF00.l,X		; DF 00 BF 00
	ply		; 7A
	brk $EB.b		; 00 EB
	brk $DB.b		; 00 DB
	brk $FB.b		; 00 FB
	brk $BB.b		; 00 BB
	brk $7B.b		; 00 7B
	brk $80.b		; 00 80
	ldy #$6020.w		; A0 20 60
	rts		; 60

	sbc $C2.b		; E5 C2
	dec $93.b,X		; D6 93
	lda [$33.b],Y		; B7 33
	and [$33.b],Y		; 37 33
	adc [$72.b],Y		; 77 72
	inc $80.b,X		; F6 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  64.b		; 80 40
	cpy #$4000.w		; C0 00 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	eor $3D03.w,X		; 5D 03 3D
	ora $1F.b,S		; 03 1F
	ora ($00.b,X)		; 01 00
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	tsa		; 3B
	ora $011B.w,Y		; 19 1B 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $BC.b		; 00 BC
	dec $FE.b		; C6 FE
	cmp $CED1DD.l		; CF DD D1 CE
	cpy #$F0F7.w		; C0 F7 F0
	rtl		; 6B

	sed		; F8
	sbc $6C.b		; E5 6C
	.db $62, $6E, $00		; 62 6E 00
	cpy #$C080.w		; C0 80 C0
	stx $DFE0.w		; 8E E0 DF
	cpx #$E0CF.w		; E0 CF E0
	eor [$F0.b],Y		; 57 F0
	phd		; 0B
	sed		; F8
	and $F4.b		; 25 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	asl $00.b		; 06 00
	asl $00.b		; 06 00
	bra  16.b		; 80 10
	bcc  32.b		; 90 20
	bra  16.b		; 80 10
	sta ($00.b,X)		; 81 00
	cop $80.b		; 02 80
	eor $80.b,S		; 43 80
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $90.b		; 00 90
	brk $B0.b		; 00 B0
	brk $90.b		; 00 90
	brk $C1.b		; 00 C1
	brk $C3.b		; 00 C3
	brk $C3.b		; 00 C3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	phd		; 0B
	tsb $15.b		; 04 15
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $04.b		; 00 04
	tsb $0E.b		; 04 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$BD1F.w		; E0 1F BD
	adc ($F2.b,X)		; 61 F2
	eor $B4.b,S		; 43 B4
	adc [$C0.b],Y		; 77 C0
	and $0000E0.l,X		; 3F E0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	ora ($0B.b,X)		; 01 0B
	ora $80.b,S		; 03 80
	bra  64.b		; 80 40
	rti		; 40

	cmp $FF3E.w,X		; DD 3E FF
	and $7FBF7F.l,X		; 3F 7F BF 7F
	lda $F97EBD.l,X		; BF BD 7E F9
	adc $717F83.l,X		; 7F 83 7F 71
	ora $311826.l		; 0F 26 18 31
	asl $04BB.w		; 0E BB 04
	lda $007E80.l,X		; BF 80 7E 00
	ror $7F01.w,X		; 7E 01 7F
	brk $6F.b		; 00 6F
	rts		; 60

	and $FFFFFF.l,X		; 3F FF FF FF
	sbc $FE3DFD.l,X		; FF FD 3D FE
	lsr $DEBF.w,X		; 5E BF DE
	sbc $F7FEFD.l,X		; FF FD FE F7
	sed		; F8
	sed		; F8
	ora [$F7.b]		; 07 F7
	php		; 08
	sbc $FE00.w,X		; FD 00 FE
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	bra -66.b		; 80 BE
	rti		; 40

	sed		; F8
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	ora ($05.b,X)		; 01 05
	ora $0D.b		; 05 0D
	ora $1C1C.w		; 0D 1C 1C
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	ora $1F1F0F.l		; 0F 0F 1F 1F
	sbc $FE03.w,X		; FD 03 FE
	ora $FF.b		; 05 FF
	asl $FC.b		; 06 FC
	asl $F9.b		; 06 F9
	tsb $18F3.w		; 0C F3 18
	dec $10.b		; C6 10
	inc $B003.w		; EE 03 B0
	lda [$B0.b],Y		; B7 B0
	lda [$76.b],Y		; B7 76
	ror $F4.b,X		; 76 F4
	sbc [$E9.b],Y		; F7 E9
	inc $5C53.w		; EE 53 5C
	ora [$38.b]		; 07 38
	adc $0071.w		; 6D 71 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra  40.b		; 80 28
	bmi  56.b		; 30 38
	bpl  62.b		; 10 3E
	rti		; 40

	cmp $003E.w		; CD 3E 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $40.b		; 00 40
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$6040.w		; C0 40 60
	ldy #$D030.w		; A0 30 D0
	clc		; 18
	inx		; E8
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$E000.w		; C0 00 E0
	brk $F0.b		; 00 F0
	brk $74.b		; 00 74
	asl $B8.b		; 06 B8
	.db $82, $0E, $C3		; 82 0E C3
	asl $F1.b,X		; 16 F1
	stz $F281.w		; 9C 81 F2
	ora $C8.b,S		; 03 C8
	asl $3820.w		; 0E 20 38
	sed		; F8
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	rti		; 40

	rol $7E20.w		; 2E 20 7E
	brk $FC.b		; 00 FC
	brk $F4.b		; 00 F4
	tsb $D0.b		; 04 D0
	bpl 118.b		; 10 76
	eor $FE1FEC.l		; 4F EC 1F FE
	ora ($BF.b,X)		; 01 BF
	brk $6F.b		; 00 6F
	clc		; 18
	xba		; EB
	bpl -41.b		; 10 D7
	jsr $20EC.w		; 20 EC 20
	bit #$9009.w		; 89 09 90
	bpl   1.b		; 10 01
	ora ($00.b,X)		; 01 00
	brk $14.b		; 00 14
	bpl  28.b		; 10 1C
	bpl  56.b		; 10 38
	jsr $0010.w		; 20 10 00
	bit $72E0.w,X		; 3C E0 72
	cmp $E8.b,S		; C3 E8
	stx $38A0.w		; 8E A0 38
	bra -32.b		; 80 E0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	rti		; 40

	lda $7481.w,X		; BD 81 74
	tsb $D0.b		; 04 D0
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	bra   7.b		; 80 07
	and ($CF.b,S),Y		; 33 CF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cpy $F1CC.w		; CC CC F1
	adc [$F0.b],Y		; 77 F0
	adc [$E0.b],Y		; 77 E0
	adc $003F00.l		; 6F 00 3F 00
	adc $CFFE02.l,X		; 7F 02 FE CF
	sed		; F8
	ora $7A72F0.l,X		; 1F F0 72 7A
	adc ($79.b),Y		; 71 79
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	and $E539.w,Y		; 39 39 E5
	cpx $17.b		; E4 17
	bpl -81.b		; 10 AF
	ldy #$0304.w		; A0 04 03
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	pha		; 48
	ora [$B8.b]		; 07 B8
	ora [$80.b]		; 07 80
	ora $007F80.l		; 0F 80 7F 00
	adc $000700.l,X		; 7F 00 07 00
	ora [$00.b]		; 07 00
	ora $004F00.l		; 0F 00 4F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $16FF00.l,X		; FF 00 FF 16
	cmp ($2C.b,X)		; C1 2C
	cmp ($2C.b,S),Y		; D3 2C
	cmp ($10.b,S),Y		; D3 10
	sbc $70FF30.l,X		; FF 30 FF 70
	lda $3FB97E.l,X		; BF 7E B9 3F
	sbc $00F700.l,X		; FF 00 F7 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $66182C.l,X		; FF 2C 18 66
	brk $7C.b		; 00 7C
	bmi 116.b		; 30 74
	sec		; 38
	mvp $38,$18		; 44 18 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora $301800.l,X		; 1F 00 18 30
	bmi  48.b		; 30 30
	sec		; 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $003F00.l,X		; 1F 00 3F 00
	adc $000000.l,X		; 7F 00 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  17.b		; 10 11
	bit $35.b,X		; 34 35
	sec		; 38
	ora [$FF.b]		; 07 FF
	brk $3F.b		; 00 3F
	cpy #$30CF.w		; C0 CF 30
	sbc ($0C.b)		; F2 0C
	sbc $F23D00.l,X		; FF 00 3D F2
	tda		; 7B
	sbc $37.b		; E5 37
	bmi -64.b		; 30 C0
	cpy #$FC3C.w		; C0 3C FC
	asl $003E.w		; 0E 3E 00
	ora $000000.l		; 0F 00 00 00
	inc $00.b,X		; F6 00
	sbc $F6CF.w		; ED CF F6
	ora ($EF.b,S),Y		; 13 EF
	sbc ($1F.b,X)		; E1 1F
	cpx #$E010.w		; E0 10 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F1.b		; 00 F1
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $36.b		; 00 36
	brk $2D.b		; 00 2D
	brk $1B.b		; 00 1B
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	asl $0000.w		; 0E 00 00
	tsb $0D.b		; 04 0D
	ora #$031B.w		; 09 1B 03
	ora [$06.b]		; 07 06
	asl $0606.w		; 0E 06 06
	brk $01.b		; 00 01
	inc $6813.w		; EE 13 68
	ora ($E0.b,S),Y		; 13 E0
	ora ($F9.b,S),Y		; 13 F9
	asl $BF.b		; 06 BF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $E3.b		; 00 E3
	trb $303C.w		; 1C 3C 30
	lsr $9ED2.w,X		; 5E D2 9E
	sta ($06.b)		; 92 06
	asl $18.b		; 06 18
	cli		; 58
	lsr $40CE.w		; 4E CE 40
	cpy #$DCC0.w		; C0 C0 DC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$08.b]		; 07 08
	asl $2F17.w		; 0E 17 2F
	ora $009F6F.l,X		; 1F 6F 9F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $15.b		; 00 15
	cop $1B.b		; 02 1B
	tsb $91.b		; 04 91
	asl $0001.w		; 0E 01 00
	ora ($00.b,X)		; 01 00
	asl $01.b		; 06 01
	sty $03.b		; 84 03
	php		; 08
	ora [$18.b]		; 07 18
	asl $31.b		; 06 31
	asl $1C23.w		; 0E 23 1C
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $87.b		; 00 87
	brk $8F.b		; 00 8F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	tsb $FB.b		; 04 FB
	asl $FC.b		; 06 FC
	asl $0AFD.w		; 0E FD 0A
	jsr ($FE18.w,X)		; FC 18 FE
	jmp ($E8F0.w,X)		; 7C F0 E8
	beq -64.b		; F0 C0
	beq   0.b		; F0 00
	sbc $00FE00.l,X		; FF 00 FE 00
	sbc $00FE00.l,X		; FF 00 FE 00
	inc $FC00.w,X		; FE 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bra 127.b		; 80 7F
	cop $FD.b		; 02 FD
	eor $8F3382.l		; 4F 82 33 8F
	ora $0F7767.l,X		; 1F 67 77 0F
	adc $0682.w,X		; 7D 82 06
	ora $00FF00.l,X		; 1F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $00FF00.l,X		; 7F 00 FF 00
	ora $7FFF7F.l,X		; 1F 7F FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $C2F8F7.l,X		; FF F7 F8 C2
	sbc $10E0.w,Y		; F9 E0 10
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $F0.b		; 00 F0
	brk $80.b		; 00 80
	cpx #$80C0.w		; E0 C0 80
	beq  96.b		; F0 60
	bra  64.b		; 80 40
	ldy #$0080.w		; A0 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	bit $5000.w		; 2C 00 50
	brk $30.b		; 00 30
	brk $D8.b		; 00 D8
	jsr $6090.w		; 20 90 60
	bra  96.b		; 80 60
	jsr $00C0.w		; 20 C0 00
	tsb $00.b		; 04 00
	bit $7800.w		; 2C 00 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$0080.w		; C0 80 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $011E00.l		; 0F 00 1E 01
	bit $0B02.w,X		; 3C 02 0B
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $33.b		; 00 33
	php		; 08
	rol $00.b,X		; 36 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	tsb $0C08.w		; 0C 08 0C
	brk $3D.b		; 00 3D
	brk $39.b		; 00 39
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $01.b		; 00 01
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
	brk $80.b		; 00 80
	rts		; 60

	bmi -56.b		; 30 C8
	cpx $F2F0.w		; EC F0 F2
	sbc $0000.w,X		; FD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $C8.b		; 00 C8
	brk $F0.b		; 00 F0
	brk $FD.b		; 00 FD
	brk $5C.b		; 00 5C
	brk $F8.b		; 00 F8
	brk $D8.b		; 00 D8
	bmi -80.b		; 30 B0
	rts		; 60

	bne   0.b		; D0 00
	beq   0.b		; F0 00
	sei		; 78
	brk $38.b		; 00 38
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	jsr $4040.w		; 20 40 40
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F2.b		; 00 F2
	jsr ($FEFD.w,X)		; FC FD FE
	inc $F4F1.w		; EE F1 F4
	asl A		; 0A
	bcc  88.b		; 90 58
	bvs -48.b		; 70 D0
	beq  40.b		; F0 28
	beq  24.b		; F0 18
	jsr ($FE00.w,X)		; FC 00 FE
	brk $F1.b		; 00 F1
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	rti		; 40

	bne   0.b		; D0 00
	cpx #$D000.w		; E0 00 D0
	bpl -32.b		; 10 E0
	bmi -64.b		; 30 C0
	cpx #$C000.w		; E0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$C020.w		; E0 20 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	bra -32.b		; 80 E0
	bra  96.b		; 80 60
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
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
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $0C.b		; 00 0C
	ora ($24.b,X)		; 01 24
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $003F00.l		; 0F 00 3F 00
	adc $DF0AFF.l,X		; 7F FF 0A DF
	asl $E7.b,X		; 16 E7
	asl A		; 0A
	cmp [$19.b],Y		; D7 19
	lda $1132.w		; AD 32 11
	rts		; 60

	and $803EC0.l,X		; 3F C0 3E 80
	cop $4A.b		; 02 4A
	rol $06.b		; 26 06
	sei		; 78
	asl A		; 0A
	inx		; E8
	ora #$17D0.w		; 09 D0 17
	cpy #$804E.w		; C0 4E 80
	bra   0.b		; 80 00
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	cpy #$C040.w		; C0 40 C0
	brk $80.b		; 00 80
	sbc $7FFE7F.l,X		; FF 7F FE 7F
	jsr ($FEFF.w,X)		; FC FF FE
	sbc $F9FEF5.l,X		; FF F5 FE F9
	inc $FEF0.w,X		; FE F0 FE
.ACCU 8
.INDEX 8
	sep #$FC		; E2 FC
	.db $62, $FF, $54		; 62 FF 54
	sbc $E0FF70.l,X		; FF 70 FF E0
	sbc $80FFA0.l,X		; FF A0 FF 80
	sbc $00FE40.l,X		; FF 40 FE 00
	inc $FFF7.w,X		; FE F7 FF
	cmp [$FF.b]		; C7 FF
	sta ($BF.b,S),Y		; 93 BF
	cmp $BF.b,S		; C3 BF
	and ($17.b,X)		; 21 17
	and $13.b		; 25 13
	lda ($03.b,X)		; A1 03
	eor [$03.b]		; 47 03
	.db $82, $FF, $81		; 82 FF 81
	sbc $00BF01.l,X		; FF 01 BF 00
	sbc $013F00.l,X		; FF 00 3F 01
	and [$00.b],Y		; 37 00
	lda [$01.b]		; A7 01
	eor [$00.b]		; 47 00
	jsr $0021.w		; 20 21 00
	brk $10.b		; 00 10
	brk $20.b		; 00 20
	asl $20.b,X		; 16 20
	ora $10.b		; 05 10
	stz $00.b		; 64 00
	jsr $0040.w		; 20 40 00
	and ($00.b,X)		; 21 00
	and ($00.b,X)		; 21 00
	ora $00.b,X		; 15 00
	and $3E00.w		; 2D 00 3E
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	tsb $02.b		; 04 02
	asl A		; 0A
	brk $00.b		; 00 00
	tsb $0811.w		; 0C 11 08
	ora ($1B.b,X)		; 01 1B
	adc $15.b,S		; 63 15
	ora $37.b,S		; 03 37
	and [$1B.b]		; 27 1B
	brk $17.b		; 00 17
	brk $5F.b		; 00 5F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	ora ($FF.b,X)		; 01 FF
	ora $FF.b,S		; 03 FF
	eor [$63.b]		; 47 63
	and $0FDFC7.l		; 2F C7 DF 0F
	and $7F7F5F.l,X		; 3F 5F 7F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $007F.w,Y		; BE 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $F0FF00.l,X		; FF 00 FF F0
	jsr ($F0EC.w,X)		; FC EC F0
	beq -32.b		; F0 E0
	cpx #$E0.b		; E0 E0
	bcs -64.b		; B0 C0
	beq -128.b		; F0 80
	.db $62, $80, $86		; 62 80 86
	ora ($00.b,X)		; 01 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E2.b		; 00 E2
	brk $87.b		; 00 87
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	asl $1800.w		; 0E 00 18
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	rol $3A00.w,X		; 3E 00 3A
	brk $30.b		; 00 30
	eor #$00.b		; 49 00
	sty $38.b		; 84 38
	dey		; 88
	bmi   1.b		; 30 01
	bvs  32.b		; 70 20
	rti		; 40

	brk $00.b		; 00 00
	eor $8B01.w		; 4D 01 8B
	asl $00.b		; 06 00
	adc $00FF00.l,X		; 7F 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $006700.l,X		; FF 00 67 00
	eor $008F00.l		; 4F 00 8F 00
	and $011F00.l,X		; 3F 00 1F 01
	ora $000E00.l,X		; 1F 00 0E 00
	asl $0E03.w		; 0E 03 0E
	ora $0E.b,S		; 03 0E
	ora ($0C.b,X)		; 01 0C
	ora $0919.w,Y		; 19 19 09
	ora #$08.b		; 09 08
	php		; 08
	phd		; 0B
	asl A		; 0A
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	plb		; AB
	sty $0C6A.w		; 8C 6A 0C
	rts		; 60

	tsb $0CE0.w		; 0C E0 0C
	cpx #$0C.b		; E0 0C
	beq  28.b		; F0 1C
	beq  28.b		; F0 1C
	cpy #$1C.b		; C0 1C
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $387B00.l,X		; 3F 00 7B 38
	sbc $3B9B7C.l,X		; FF 7C 9B 3B
	eor $07.b,S		; 43 07
	ora $000001.l,X		; 1F 01 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	sec		; 38
	and $7E3C.w,X		; 3D 3C 7E
	ora $7F.b,S		; 03 7F
	ora ($3F.b,X)		; 01 3F
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bcc -128.b		; 90 80
	cpx $F960.w		; EC 60 F9
	clv		; B8
	sbc $0000DF.l		; EF DF 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $90.b		; 00 90
	brk $6C.b		; 00 6C
	bcs -71.b		; B0 B9
	wai		; CB
	cmp $000000.l,X		; DF 00 00 00
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
	brk $08.b		; 00 08
	brk $28.b		; 00 28
	brk $26.b		; 00 26
	brk $14.b		; 00 14
	brk $84.b		; 00 84
	brk $0B.b		; 00 0B
	brk $11.b		; 00 11
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	php		; 08
	brk $28.b		; 00 28
	brk $2E.b		; 00 2E
	brk $1E.b		; 00 1E
	brk $8D.b		; 00 8D
	brk $0F.b		; 00 0F
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $0B.b		; 00 0B
	ora ($0B.b)		; 12 0B
	rol $0B.b,X		; 36 0B
	lsr A		; 4A
	ora $0F0F9B.l,X		; 1F 9B 0F 0F
	ora $3F1F2F.l,X		; 1F 2F 1F 3F
	ora $003F00.l,X		; 1F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	adc $00DF00.l,X		; 7F 00 DF 00
	sbc $01FF00.l,X		; FF 00 FF 01
	lda $D0F8E4.l,X		; BF E4 F8 D0
	inx		; E8
	sty $E8.b,X		; 94 E8
	pld		; 2B
	bra -62.b		; 80 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F800.w,X)		; FC 00 F8
	brk $FC.b		; 00 FC
	brk $AB.b		; 00 AB
	brk $C2.b		; 00 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $07.b,S		; 43 07
	ora $07.b,S		; 03 07
	ora $03.b,S		; 03 03
	tsb $06.b		; 04 06
	cop $06.b		; 02 06
	brk $04.b		; 00 04
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	cop $47.b		; 02 47
	brk $47.b		; 00 47
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bit #$41.b		; 89 41
	cop $83.b		; 02 83
	asl $87.b		; 06 87
	tsb $590F.w		; 0C 0F 59
	asl $1D33.w		; 0E 33 1D
	and $35.b,S		; 23 35
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	cmp $6F9F37.l		; CF 37 9F 6F
	adc $BF7F9F.l,X		; 7F 9F 7F BF
	inc $FC1F.w,X		; FE 1F FC
	adc $FAFCFD.l,X		; 7F FD FC FA
	jsr ($FF06.w,X)		; FC 06 FF
	tsb $FF.b		; 04 FF
	tsb $10FF.w		; 0C FF 10
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FD00.l,X		; FF 00 FD 00
	inc $78FF.w,X		; FE FF 78
	.db $62, $FC, $A4		; 62 FC A4
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	sbc $00FE00.l,X		; FF 00 FE 00
	cpx $00.b		; E4 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $09.b		; 02 09
	asl $32.b		; 06 32
	ora $3F4E.w		; 0D 4E 3F
	sta $AE7E.w,Y		; 99 7E AE
	bvs -32.b		; 70 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $003F00.l		; 0F 00 3F 00
	adc $00FF00.l,X		; 7F 00 FF 00
	inc $E000.w,X		; FE 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	jsl $026501.l		; 22 01 65 02
	phd		; 0B
	brk $17.b		; 00 17
	php		; 08
	jmp $00C820.l		; 5C 20 C8 00
	ora ($00.b,X)		; 01 00
	brk $51.b		; 00 51
	brk $2B.b		; 00 2B
	brk $67.b		; 00 67
	brk $8F.b		; 00 8F
	brk $7F.b		; 00 7F
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $81.b		; 00 81
	trb $D007.w		; 1C 07 D0
	and $A18370.l		; 2F 70 83 A1
	asl $03.b,X		; 16 03
	tsb $00.b		; 04 00
	trb $3000.w		; 1C 00 30
	brk $40.b		; 00 40
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	brk $B7.b		; 00 B7
	brk $07.b		; 00 07
	brk $1C.b		; 00 1C
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora [$1C.b]		; 07 1C
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	cpy #$1C.b		; C0 1C
	ldy #$3C.b		; A0 3C
	dey		; 88
	bit $7440.w,X		; 3C 40 74
	php		; 08
	stz $90.b		; 64 90
	cpx $08.b		; E4 08
	cpy $D810.w		; CC 10 D8
	beq  16.b		; F0 10
	iny		; C8
	php		; 08
	cpx #$20.b		; E0 20
	tya		; 98
	bpl -40.b		; 10 D8
	rti		; 40

	sec		; 38
	jsr $80B0.w		; 20 B0 80
	tay		; A8
	dey		; 88
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
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
	sbc [$EF.b],Y		; F7 EF
	eor $07FBE3.l,X		; 5F E3 FB 07
	sbc $06FA03.l,X		; FF 03 FA 06
	sed		; F8
	ora $78.b		; 05 78
	ora ($1C.b)		; 12 1C
	and ($64.b)		; 32 64
	sbc $1AE701.l		; EF 01 E7 1A
	sta $403331.l,X		; 9F 31 33 40
	.db $42, $0C		; 42 0C
	ora $0C.b		; 05 0C
	brk $0E.b		; 00 0E
	cop $E0.b		; 02 E0
	cpx #$B8.b		; E0 B8
	bcc  -2.b		; 90 FE
	stz $04.b		; 64 04
	rts		; 60

	sed		; F8
	jsr ($7F7F.w,X)		; FC 7F 7F
	asl $16.b		; 06 16
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	bcc -72.b		; 90 B8
	brk $FE.b		; 00 FE
	brk $64.b		; 00 64
	bmi  -4.b		; 30 FC
	trb $027F.w		; 1C 7F 02
	asl $00.b,X		; 16 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	plp		; 28
	rti		; 40

	bne -16.b		; D0 F0
	sbc ($FC.b)		; F2 FC
	jsr ($0000.w,X)		; FC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $28.b		; 00 28
	brk $D0.b		; 00 D0
	rti		; 40

	sbc ($C0.b)		; F2 C0
	jsr ($0304.w,X)		; FC 04 03
	ora ($06.b),Y		; 11 06
	php		; 08
	asl $02.b		; 06 02
	tsb $12.b		; 04 12
	tsb $08.b		; 04 08
	tsb $09.b		; 04 09
	tsb $09.b		; 04 09
	tsb $00.b		; 04 00
	ora [$00.b]		; 07 00
	ora [$00.b],Y		; 17 00
	ora $001F00.l		; 0F 00 1F 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $3F2F00.l		; 0F 00 2F 3F
	ora $3F9F1F.l,X		; 1F 1F 9F 3F
	ora $7F3F3F.l,X		; 1F 3F 3F 7F
	and $FF7FFF.l		; 2F FF 7F FF
	adc $01FFFF.l,X		; 7F FF FF 01
	lda $01FF01.l,X		; BF 01 FF 01
	sbc $23FF03.l,X		; FF 03 FF 23
	sbc $57FF63.l,X		; FF 63 FF 57
	sbc $00FFC5.l,X		; FF C5 FF 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	rol $5F47.w,X		; 3E 47 5F
	lda $FF7FBF.l,X		; BF BF 7F FF
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $47.b		; 00 47
	brk $BF.b		; 00 BF
	brk $6F.b		; 00 6F
	bpl  95.b		; 10 5F
	jsr $C430.w		; 20 30 C4
	sec		; 38
	stz $18.b		; 64 18
	.db $62, $CC, $22		; 62 CC 22
	tsb $DCE2.w		; 0C E2 DC
	inc $90.b		; E6 90
	cpx $90.b		; E4 90
	cpy $78.b		; C4 78
	rti		; 40

	trb $3C04.w		; 1C 04 3C
	jsr $001C.w		; 20 1C 00
	jmp.w [$D800]		; DC 00 D8
	brk $BC.b		; 00 BC
	bit $B8.b		; 24 B8
	brk $3B.b		; 00 3B
	sta [$3B.b]		; 87 3B
	ora [$7D.b]		; 07 7D
	ora $35.b,S		; 03 35
	eor $11.b,S		; 43 11
	ora $08.b,S		; 03 08
	and ($0E.b,X)		; 21 0E
	ora ($05.b),Y		; 11 05
	php		; 08
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora ($FF.b,X)		; 01 FF
	ora ($7F.b,X)		; 01 7F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	cpy #$C0.b		; C0 C0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	sed		; F8
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FEFE.w,X)		; FC FE FE
	inc $C0FE.w,X		; FE FE C0
	cpy #$A0.b		; C0 A0
	cpx #$C0.b		; E0 C0
	beq -48.b		; F0 D0
	sed		; F8
	cld		; D8
	jsr ($FCEC.w,X)		; FC EC FC
	pea $7CFE.w		; F4 FE 7C
	inc $0030.w,X		; FE 30 00
	rts		; 60

	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs   0.b		; 70 00
	beq   0.b		; F0 00
	ldy #$00.b		; A0 00
	tya		; 98
	brk $88.b		; 00 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $1C3E.w,X		; 3C 3E 1C
	rol $3E3C.w,X		; 3E 3C 3E
	trb $1E3E.w		; 1C 3E 1E
	ror $1F36.w,X		; 7E 36 1F
	asl $0F.b,X		; 16 0F
	ora [$0F.b]		; 07 0F
	php		; 08
	rol $3E18.w,X		; 3E 18 3E
	trb $3E.b		; 14 3E
	clc		; 18
	rol $7E10.w,X		; 3E 10 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora $110E00.l		; 0F 00 0E 11
	ora #$16.b		; 09 16
	tsb $08.b		; 04 08
	brk $0D.b		; 00 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	asl $00.b,X		; 16 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $BA.b		; 00 BA
	adc $BE7D.w,X		; 7D 7D BE
	sbc $7FFF3F.l,X		; FF 3F FF 7F
	inc $BDFF.w,X		; FE FF BD
	ror $BC5B.w,X		; 7E 5B BC
	sbc ($4C.b,S),Y		; F3 4C
	adc $BE00.w,X		; 7D 00 BE
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	brk $3C.b		; 00 3C
	brk $8C.b		; 00 8C
	brk $DF.b		; 00 DF
	cpx $EF5F.w		; EC 5F EF
	rol $7FC7.w,X		; 3E C7 7F
	bra  -1.b		; 80 FF
	ora $FB0FF7.l		; 0F F7 0F FB
	ora [$FF.b]		; 07 FF
	ora $EC.b,S		; 03 EC
	tsb $0FE6.w		; 0C E6 0F
	cpy #$0F.b		; C0 0F
	bra   7.b		; 80 07
	ora [$0F.b]		; 07 0F
	ora [$0F.b]		; 07 0F
	ora $0F.b,S		; 03 0F
	brk $0F.b		; 00 0F
	cpy #$00.b		; C0 00
	jsr $70C0.w		; 20 C0 70
	bra  -8.b		; 80 F8
	rts		; 60

	jsr ($DEE0.w,X)		; FC E0 DE
	cpx #$BF.b		; E0 BF
	cpy #$FF.b		; C0 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$40.b		; E0 40
	beq -56.b		; F0 C8
	sed		; F8
	sty $0EFC.w		; 8C FC 0E
	inc $E000.w		; EE 00 E0
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00BF00.l,X		; FF 00 BF 00
	ldx $6E00.w		; AE 00 6E
	brk $CF.b		; 00 CF
	cmp $609F9F.l		; CF 9F 9F 60
	rts		; 60

	dec $1CDE.w,X		; DE DE 1C
	trb $4C0C.w		; 1C 0C 4C
	tsb $55.b		; 04 55
	rti		; 40

	cmp ($A0.b),Y		; D1 A0
	rti		; 40

	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	rts		; 60

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	cpy #$FF.b		; C0 FF
	ora $1F0F3F.l,X		; 1F 3F 0F 1F
	ora [$6F.b]		; 07 6F
	eor ($1F.b,S),Y		; 53 1F
	and ($1F.b,X)		; 21 1F
	eor ($3F.b,X)		; 41 3F
	bpl  23.b		; 10 17
	php		; 08
	tsb $0EFF.w		; 0C FF 0E
	and $031F07.l,X		; 3F 07 1F 03
	adc $013F01.l,X		; 7F 01 3F 01
	eor $003F00.l,X		; 5F 00 3F 00
	ora $F6F6F6.l,X		; 1F F6 F6 F6
	inc $FE.b,X		; F6 FE
	inc $FEFE.w,X		; FE FE FE
	inc $FEFE.w,X		; FE FE FE
	inc $FEFC.w,X		; FE FC FE
	jsr ($E2FE.w,X)		; FC FE E2
	inc $E6.b,X		; F6 E6
	inc $E6.b,X		; F6 E6
	inc $FEF6.w,X		; FE F6 FE
	pea $FCFE.w		; F4 FE FC
	inc $FEEC.w,X		; FE EC FE
	inx		; E8
	inc $FCFC.w,X		; FE FC FC
	jsr ($FCFC.w,X)		; FC FC FC
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($EEFE.w,X)		; FC FE EE
	inc $FECE.w,X		; FE CE FE
	inc $E8FE.w		; EE FE E8
	jsr ($FCE8.w,X)		; FC E8 FC
	cpx $CCFC.w		; EC FC CC
	inc $FECC.w,X		; FE CC FE
	sty $84FE.w		; 8C FE 84
	inc $FE04.w,X		; FE 04 FE
	brk $01.b		; 00 01
	ora ($38.b,X)		; 01 38
	tas		; 1B
	stz $75.b		; 64 75
	tyx		; BB
	adc $FF7FFF.l,X		; 7F FF 7F FF
	rol $5FFF.w,X		; 3E FF 5F
	rol $0001.w,X		; 3E 01 00
	sec		; 38
	brk $64.b		; 00 64
	brk $9B.b		; 00 9B
	jsr $40BF.w		; 20 BF 40
	lda $00FF40.l,X		; BF 40 FF 00
	rol $7F00.w,X		; 3E 00 7F
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FCFFFE.l,X		; FF FE FF FC
	lda $7A7FBC.l,X		; BF BC 7F 7A
	sbc $FAF7.w,X		; FD F7 FA
	sta [$78.b]		; 87 78
	sta $7E66.w,Y		; 99 66 7E
	bra  -2.b		; 80 FE
	brk $BD.b		; 00 BD
	ora ($5D.b,X)		; 01 5D
	and ($BD.b,X)		; 21 BD
	eor ($BA.b,X)		; 41 BA
	.db $42, $28		; 42 28
	cpy $8820.w		; CC 20 88
	bvc -104.b		; 50 98
	rti		; 40

	clc		; 18
	ldy #$30.b		; A0 30
	bra  48.b		; 80 30
	cpy #$70.b		; C0 70
	bne -32.b		; D0 E0
	bvs  64.b		; 70 40
	sei		; 78
	php		; 08
	inx		; E8
	dey		; 88
	beq  16.b		; F0 10
	bne  16.b		; D0 10
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	brk $00.b		; 00 00
	ora $201900.l		; 0F 00 19 20
	plp		; 28
	brk $31.b		; 00 31
	brk $5F.b		; 00 5F
	brk $0C.b		; 00 0C
	bcc  16.b		; 90 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $007F00.l,X		; 3F 00 7F 00
	eor $009F00.l,X		; 5F 00 9F 00
	trb $3000.w		; 1C 00 30
	adc $7FFFFF.l,X		; 7F FF FF 7F
	lda $3FFE7F.l,X		; BF 7F FE 3F
	adc $F83F.w,Y		; 79 3F F8
	rol $3E7C.w,X		; 3E 7C 3E
	sec		; 38
	rol $FF5A.w,X		; 3E 5A FF
	adc $3BFF.w		; 6D FF 3B
	sbc $08FF38.l,X		; FF 38 FF 08
	sbc $14FE18.l,X		; FF 18 FE 14
	inc $7E18.w,X		; FE 18 7E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $04.b		; 00 04
	brk $00.b		; 00 00
	jsr $3000.w		; 20 00 30
	brk $70.b		; 00 70
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $48.b		; 00 48
	brk $2C.b		; 00 2C
	ora [$0F.b]		; 07 0F
	ora [$0B.b]		; 07 0B
	ora [$1B.b]		; 07 1B
	ora $17.b,S		; 03 17
	ora ($4F.b),Y		; 11 4F
	ora $0F.b,X		; 15 0F
	ora $0F.b,X		; 15 0F
	and ($0F.b),Y		; 31 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	brk $7F.b		; 00 7F
	brk $BF.b		; 00 BF
	ora ($02.b,X)		; 01 02
	ora $04.b,S		; 03 04
	asl $08.b		; 06 08
	ora $2A11.w		; 0D 11 2A
	ora ($64.b,S),Y		; 13 64
	asl $70.b,X		; 16 70
	tsb $007C.w		; 0C 7C 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $0C00.w		; 0E 00 0C
	brk $28.b		; 00 28
	jsr $2020.w		; 20 20 20
	bpl  16.b		; 10 10
	lda $704F30.l		; AF 30 4F 70
	sta $800FE0.l		; 8F E0 0F 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$0F.b],Y		; F7 0F
	sbc $3FDF1F.l		; EF 1F DF 3F
	lda $3FDF7F.l,X		; BF 7F DF 3F
	adc $18A71C.l		; 6F 1C A7 18
	sbc $1F0000.l,X		; FF 00 00 1F
	ora [$3F.b]		; 07 3F
	ora $FF1F7F.l		; 0F 7F 1F FF
	ora $3C007F.l		; 0F 7F 00 3C
	ora $1B.b,S		; 03 1B
	sta [$97.b]		; 87 97
	jmp ($B080.w,X)		; 7C 80 B0
	cpy #$FE.b		; C0 FE
	cpy #$DE.b		; C0 DE
	cpx #$DC.b		; E0 DC
	cpx #$D8.b		; E0 D8
	rts		; 60

	beq  64.b		; F0 40
	bcs  64.b		; B0 40
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	sty $8CEC.w		; 8C EC 8C
	cpx $E888.w		; EC 88 E8
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	ror $EE00.w		; 6E 00 EE
	brk $DD.b		; 00 DD
	brk $DD.b		; 00 DD
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $63.b		; 00 63
	sta $48FC04.l,X		; 9F 04 FC 48
	cmp $D9C8.w,Y		; D9 C8 D9
	sta $99BB.w,Y		; 99 BB 99
	tyx		; BB
	tya		; 98
	clv		; B8
	brk $00.b		; 00 00
	sty $84.b		; 84 84
	phb		; 8B
	dey		; 88
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	cld		; D8
	brk $D8.b		; 00 D8
	brk $D8.b		; 00 D8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	bra -72.b		; 80 B8
	cpy #$80.b		; C0 80
	ldy #$80.b		; A0 80
	ldy #$90.b		; A0 90
	bcs -112.b		; B0 90
	bcs  16.b		; B0 10
	bmi  16.b		; 30 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $1B.b		; 00 1B
	asl $35.b		; 06 35
	tsb $007A.w		; 0C 7A 00
	ldx $BC40.w,Y		; BE 40 BC
	rti		; 40

	bit $2C00.w,X		; 3C 00 2C
	bpl   0.b		; 10 00
	brk $04.b		; 00 04
	tsb $0A.b		; 04 0A
	php		; 08
	tsb $00.b		; 04 00
	bpl  16.b		; 10 10
	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	tsb $0830.w		; 0C 30 08
	bvs   8.b		; 70 08
	bvs   8.b		; 70 08
	bvs  16.b		; 70 10
	rts		; 60

	jsr $4040.w		; 20 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cpy #$E0.b		; C0 E0
	cpx #$E0.b		; E0 E0
	cpx #$F0.b		; E0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jmp ($00FC.w,X)		; 7C FC 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$E0.b		; C0 E0
	cpx #$C0.b		; E0 C0
	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	sed		; F8
	sei		; 78
	jsr ($0000.w,X)		; FC 00 00
	ora ($00.b),Y		; 11 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	eor ($00.b,X)		; 41 00
	jsr $3603.w		; 20 03 36
	brk $10.b		; 00 10
	php		; 08
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	brk $02.b		; 00 02
	brk $05.b		; 00 05
	brk $41.b		; 00 41
	brk $23.b		; 00 23
	brk $37.b		; 00 37
	brk $3F.b		; 00 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -120.b		; 80 88
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	jsr $80A0.w		; 20 A0 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	dey		; 88
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	jsr $0020.w		; 20 20 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	rts		; 60

	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	.db $82, $82, $88		; 82 82 88
	dey		; 88
	cpy $C4.b		; C4 C4
	cpy $C4.b		; C4 C4
	cpy $00CC.w		; CC CC 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	.db $82, $00, $88		; 82 00 88
	bra -60.b		; 80 C4
	bra -60.b		; 80 C4
	sty $CC.b		; 84 CC
	dec A		; 3A
	adc $34.b,S		; 63 34
	dec $28.b		; C6 28
	sty $9850.w		; 8C 50 98
	jsr $4030.w		; 20 30 40
	rts		; 60

	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	trb $7800.w		; 1C 00 78
	rti		; 40

	bvs   0.b		; 70 00
	cpx #$80.b		; E0 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F0F1F.l,X		; 1F 1F 0F 0F
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $011F.w		; 0E 1F 01
	ora $000301.l		; 0F 01 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($80.b,X)		; 01 80
	bra -64.b		; 80 C0
	cpy #$E0.b		; C0 E0
	cpx #$F0.b		; E0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jmp ($3C7C.w,X)		; 7C 7C 3C
	rol $7F3E.w,X		; 3E 3E 7F
	brk $80.b		; 00 80
	cpy #$C0.b		; C0 C0
	rti		; 40

	cpx #$00.b		; E0 00
	beq  96.b		; F0 60
	sed		; F8
	sec		; 38
	jmp ($3E0C.w,X)		; 7C 0C 3E
	inc A		; 1A
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $04.b		; 00 04
	cpy #$91.b		; C0 91
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy $00.b		; C4 00
	sta ($00.b),Y		; 91 00
	cpx #$00.b		; E0 00
	rti		; 40

	ldy $C040.w,X		; BC 40 C0
	rti		; 40

	sed		; F8
	bvs -16.b		; 70 F0
	bvs 112.b		; 70 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $78.b		; 00 78
	bmi 112.b		; 30 70
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $0F0E.w		; 0E 0E 0F
	brk $16.b		; 00 16
	brk $2E.b		; 00 2E
	brk $1D.b		; 00 1D
	brk $0D.b		; 00 0D
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	ora $00.b,S		; 03 00
	ora $06.b,S		; 03 06
	asl $00.b		; 06 00
	ora #$0C.b		; 09 0C
	ora $0B09.w,X		; 1D 09 0B
	ora ($03.b,X)		; 01 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	asl $1C01.w		; 0E 01 1C
	cop $3A.b		; 02 3A
	asl $71.b		; 06 71
	ora $03FE.w		; 0D FE 03
	rol $6E00.w,X		; 3E 00 6E
	clc		; 18
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora $04.b		; 05 04
	asl $000C.w		; 0E 0C 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   1.b		; 10 01
	ora [$07.b]		; 07 07
	tsb $180F.w		; 0C 0F 18
	ora $601E30.l,X		; 1F 30 1E 60
	and $5A61.w,X		; 3D 61 5A
	cmp $34.b,S		; C3 34
	stx $02.b		; 86 02
	cop $03.b		; 02 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	jsr $405E.w		; 20 5E 40
	bit $F800.w,X		; 3C 00 F8
	bra -28.b		; 80 E4
	ora $A01EC0.l,X		; 1F C0 1E A0
	sec		; 38
	rti		; 40

	bvs -128.b		; 70 80
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $EA.b		; 00 EA
	asl A		; 0A
	inx		; E8
	php		; 08
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	brk $7C.b		; 00 7C
	sec		; 38
	cpx $60.b		; E4 60
	stz $8458.w		; 9C 58 84
	pla		; 68
	pha		; 48
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	bpl   0.b		; 10 00
	brk $38.b		; 00 38
	sec		; 38
	rts		; 60

	sei		; 78
	clc		; 18
	sei		; 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	ora $1E27.w,Y		; 19 27 1E
	ora ($0D.b,X)		; 01 0D
	ora ($07.b)		; 12 07
	ora #$02.b		; 09 02
	ora $01.b		; 05 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($27.b,X)		; 01 27
	brk $01.b		; 00 01
	brk $12.b		; 00 12
	brk $09.b		; 00 09
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	php		; 08
	and [$4F.b],Y		; 37 4F
	eor $FF7FBF.l,X		; 5F BF 7F FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FEF9FD.l,X		; FF FD F9 FE
	php		; 08
	brk $4F.b		; 00 4F
	brk $B1.b		; 00 B1
	asl $10EF.w		; 0E EF 10
	cmp $00FE20.l,X		; DF 20 FE 00
	adc $FE80.w,X		; 7D 80 FE
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	bra -64.b		; 80 C0
	cpy #$80.b		; C0 80
	bvs -120.b		; 70 88
	tya		; 98
	stz $FC.b		; 64 FC
	sed		; F8
	sec		; 38
	jsr ($0080.w,X)		; FC 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $88.b		; 00 88
	brk $64.b		; 00 64
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7F.b		; 00 7F
	sbc $FCFF7D.l,X		; FF 7D FF FC
	ora [$FF.b]		; 07 FF
	brk $BF.b		; 00 BF
	cpy #$1F.b		; C0 1F
	cpx #$E7.b		; E0 E7
	sec		; 38
	sbc $FF0E.w,Y		; F9 0E FF
	brk $FF.b		; 00 FF
	brk $67.b		; 00 67
	rts		; 60

	clc		; 18
	clc		; 18
	trb $07DC.w		; 1C DC 07
	ora [$D1.b]		; 07 D1
	ora ($F4.b),Y		; 11 F4
	tsb $C0.b		; 04 C0
	sta $C080.w,Y		; 99 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $99.b		; 00 99
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $C0.b		; 00 C0
	cpy #$FF.b		; C0 FF
	jsr $40FF.w		; 20 FF 40
	sbc $007F00.l,X		; FF 00 7F 00
	adc $00DF00.l,X		; 7F 00 DF 00
	lda $007F00.l,X		; BF 00 7F 00
	and $5F1F2F.l		; 2F 2F 1F 5F
	and $1F1F3F.l,X		; 3F 3F 1F 1F
	asl $050E.w		; 0E 0E 05
	and $23.b		; 25 23
	adc $4F.b,S		; 63 4F
	cmp $F800F8.l		; CF F8 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $B0.b		; 00 B0
	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	bcs  80.b		; B0 50
	bvc  64.b		; 50 40
	rti		; 40

	bpl  16.b		; 10 10
	tya		; 98
	tya		; 98
	tya		; 98
	tya		; 98
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $85.b		; 00 85
	brk $C0.b		; 00 C0
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	php		; 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $07.b		; 00 07
	brk $C7.b		; 00 C7
	brk $C3.b		; 00 C3
	brk $03.b		; 00 03
	bmi 112.b		; 30 70
	bvs  56.b		; 70 38
	bvs  56.b		; 70 38
	beq  56.b		; F0 38
	bcs  58.b		; B0 3A
	adc ($B8.b)		; 72 B8
	adc ($B8.b)		; 72 B8
	jmp ($00B0.w,X)		; 7C B0 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $FA.b		; 00 FA
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bcc -15.b		; 90 F1
	sed		; F8
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $031F17.l,X		; FF 17 1F 03
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sbc ($F8.b),Y		; F1 F8
	sbc $3FFF7E.l,X		; FF 7E FF 3F
	sbc $011F07.l,X		; FF 07 1F 01
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -16.b		; 80 F0
	beq -32.b		; F0 E0
	sed		; F8
	sed		; F8
	jsr ($FFF5.w,X)		; FC F5 FF
	cpx #$E7.b		; E0 E7
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$F0.b		; C0 F0
	cpy #$F8.b		; C0 F8
	sed		; F8
	jsr ($FFC4.w,X)		; FC C4 FF
	cpy #$E7.b		; C0 E7
	asl $071F.w		; 0E 1F 07
	rol $370C.w,X		; 3E 0C 37
	cop $3C.b		; 02 3C
	plp		; 28
	asl $0C.b		; 06 0C
	brk $06.b		; 00 06
	eor $000E1F.l,X		; 5F 1F 0E 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $003E00.l,X		; 3F 00 3E 00
	rol $0C00.w		; 2E 00 0C
	brk $5F.b		; 00 5F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $2200.w		; 20 00 22
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $E300.w		; 20 00 E3
	ora #$00.b		; 09 00
	brk $03.b		; 00 03
	bpl   2.b		; 10 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $08.b		; 84 08
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $03.b		; 00 03
	brk $12.b		; 00 12
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8C.b		; 00 8C
	brk $C0.b		; 00 C0
	bra  72.b		; 80 48
	php		; 08
	bra   0.b		; 80 00
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $80.b,S		; 63 80
	adc $84.b,S		; 63 84
	brk $C8.b		; 00 C8
	brk $88.b		; 00 88
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E3.b		; 00 E3
	brk $E7.b		; 00 E7
	ror $3D18.w,X		; 7E 18 3D
	asl $1E3F.w,X		; 1E 3F 1E
	ora $011E0C.l,X		; 1F 0C 1E 01
	asl $0F01.w,X		; 1E 01 0F
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bit $1E18.w,X		; 3C 18 1E
	tsb $001E.w		; 0C 1E 00
	trb $0C00.w		; 1C 00 0C
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  31.b		; 80 1F
	ora [$F1.b],Y		; 17 F1
	and $FC7CE0.l		; 2F E0 7C FC
	brk $FF.b		; 00 FF
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $5F20.w		; 2E 20 5F
	rti		; 40

	sta $80.b,S		; 83 80
	ora [$07.b]		; 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	beq  -1.b		; F0 FF
	beq -17.b		; F0 EF
	adc $7F9FDF.l,X		; 7F DF 9F 7F
	sbc $03FC00.l,X		; FF 00 FC 03
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00EF00.l,X		; FF 00 EF 00
	cmp $007F00.l,X		; DF 00 7F 00
	tya		; 98
	jsr ($C3FC.w,X)		; FC FC C3
	stp		; DB
	sbc $FEFFEF.l		; EF EF FF FE
	sbc [$73.b],Y		; F7 73
	sbc $BAFB7C.l,X		; FF 7C FB BA
	cmp $FC.b		; C5 FC
	brk $40.b		; 00 40
	sta $2F.b,S		; 83 2F
	wai		; CB
	cmp $07F42F.l,X		; DF 2F F4 07
	inc $FA03.w,X		; FE 03 FA
	ora ($C5.b,X)		; 01 C5
	brk $8A.b		; 00 8A
	sbc $34.b,S		; E3 34
	cmp [$69.b]		; C7 69
	stx $1CD3.w		; 8E D3 1C
	lda $3C.b,S		; A3 3C
	wai		; CB
	bit $10EF.w,X		; 3C EF 10
	sbc $405C00.l,X		; FF 00 5C 40
	tsx		; BA
	.db $82, $74, $04		; 82 74 04
	inx		; E8
	asl A		; 0A
	bvc  22.b		; 50 16
	jsr $802F.w		; 20 2F 80
	tya		; 98
	eor [$57.b]		; 47 57
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $FF20.w		; 20 20 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $77.b		; 00 77
	brk $EF.b		; 00 EF
	brk $DE.b		; 00 DE
	brk $BE.b		; 00 BE
	brk $7E.b		; 00 7E
	bra -97.b		; 80 9F
	sta $063F3F.l,X		; 9F 3F 3F 06
	dec $60.b		; C6 60
	inx		; E8
	dec $9CDE.w		; CE DE 9C
	lda $7D3C.w,X		; BD 3C 7D
	tsb $FC0D.w		; 0C 0D FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $6E.b		; 00 6E
	brk $6E.b		; 00 6E
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $88.b		; 00 88
	dey		; 88
	bvc  80.b		; 50 50
	cli		; 58
	cli		; 58
	jmp $4CDC.w		; 4C DC 4C
	jmp.w [$ECEC]		; DC EC EC
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	stz $B8.b,X		; 74 B8
	sec		; 38
	jsr ($F850.w,X)		; FC 50 F8
	cld		; D8
	bvs -112.b		; 70 90
	bvs -96.b		; 70 A0
	bvs  96.b		; 70 60
	bmi  48.b		; 30 30
	rts		; 60

	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	ora ($03.b,X)		; 01 03
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
.ACCU 16
	rep #$E3		; C2 E3
	sec		; 38
	sei		; 78
	tsb $3C.b		; 04 3C
	ora ($1E.b)		; 12 1E
	tsb $07.b		; 04 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E3.b		; C0 E3
	brk $78.b		; 00 78
	brk $3C.b		; 00 3C
	brk $1E.b		; 00 1E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $0F0F.w		; 1C 0F 0F
	rol $1C3F.w,X		; 3E 3F 1C
	rol $7438.w,X		; 3E 38 74
	sec		; 38
	pla		; 68
	bcs -56.b		; B0 C8
	rts		; 60

	iny		; C8
	ldy #$00.b		; A0 00
	ora $003F00.l,X		; 1F 00 3F 00
	and $003E00.l,X		; 3F 00 3E 00
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	rti		; 40

	ora ($0C.b,X)		; 01 0C
	ora ($0A.b)		; 12 0A
	trb $3C18.w		; 1C 18 3C
	php		; 08
	bmi  48.b		; 30 30
	brk $23.b		; 00 23
	rti		; 40

	tsb $0001.w		; 0C 01 00
	cmp $00.b,S		; C3 00
	ora $001E00.l,X		; 1F 00 1E 00
	bit $3800.w,X		; 3C 00 38
	brk $30.b		; 00 30
	brk $63.b		; 00 63
	brk $0F.b		; 00 0F
	brk $18.b		; 00 18
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	php		; 08
	bpl -96.b		; 10 A0
	brk $98.b		; 00 98
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $C8.b		; 00 C8
	brk $B0.b		; 00 B0
	cpy #$42.b		; C0 42
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C2.b		; 00 C2
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	plp		; 28
	adc $284F08.l		; 6F 08 4F 28
	eor $284F28.l		; 4F 28 4F 28
	eor $104F28.l		; 4F 28 4F 10
	adc $164F08.l,X		; 7F 08 4F 16
	asl $36.b		; 06 36
	asl $36.b		; 06 36
	asl $36.b		; 06 36
	asl $34.b		; 06 34
	tsb $34.b		; 04 34
	tsb $2C.b		; 04 2C
	bit $0131.w		; 2C 31 01
	ror $0080.w,X		; 7E 80 00
	jsr ($FC00.w,X)		; FC 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	rti		; 40

	sed		; F8
	rti		; 40

	sed		; F8
	cpy #$F8.b		; C0 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvs 112.b		; 70 70
	bvs 112.b		; 70 70
	beq -16.b		; F0 F0
	bcs -80.b		; B0 B0
	bcs -80.b		; B0 B0
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $09.b		; 00 09
	brk $02.b		; 00 02
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $021F00.l		; 0F 00 1F 02
	tsb $1204.w		; 0C 04 12
	and ($0C.b)		; 32 0C
	brk $1F.b		; 00 1F
	ora ($3E.b,X)		; 01 3E
	bra 120.b		; 80 78
	tsb $F0.b		; 04 F0
	brk $E0.b		; 00 E0
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $05.b,S		; 03 05
	ora $00.b,S		; 03 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$41.b]		; 07 41
	asl $1D06.w		; 0E 06 1D
	bpl  12.b		; 10 0C
	jmp ($9018.w)		; 6C 18 90
	trb $E0E0.w		; 1C E0 E0
	cpy #$E0.b		; C0 E0
	cpy #$E0.b		; C0 E0
	brk $5F.b		; 00 5F
	brk $1F.b		; 00 1F
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	brk $FC.b		; 00 FC
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	lda $7986.w,X		; BD 86 79
	dec $FC33.w		; CE 33 FC
	sta [$F8.b]		; 87 F8
	eor [$79.b]		; 47 79
	asl A		; 0A
	sbc [$0C.b],Y		; F7 0C
	inc $19.b,X		; F6 19
	tsb $78.b		; 04 78
	rti		; 40

	bmi   0.b		; 30 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	lda ($23.b,X)		; A1 23
	sbc ($F6.b)		; F2 F6
	ora ($0C.b,X)		; 01 0C
	ora $08.b,S		; 03 08
	tas		; 1B
	ora [$3C.b],Y		; 17 3C
	ora ($3E.b,S),Y		; 13 3E
	ora ($3F.b),Y		; 11 3F
	clc		; 18
	adc $08FF18.l,X		; 7F 18 FF 08
	tda		; 7B
	tsb $37.b		; 04 37
	asl $1000.w		; 0E 00 10
	ora ($15.b),Y		; 11 15
	bpl  27.b		; 10 1B
	bpl  28.b		; 10 1C
	plp		; 28
	bit $6961.w,X		; 3C 61 69
	bmi  52.b		; 30 34
	asl $1E.b,X		; 16 1E
	and $F51E.w		; 2D 1E F5
	sed		; F8
	cmp [$E0.b],Y		; D7 E0
	bne -64.b		; D0 C0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	tsb $F0FF.w		; 0C FF F0
	inc $F8C0.w,X		; FE C0 F8
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora $2700.w,Y		; 19 00 27
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	brk $05.b		; 00 05
	php		; 08
	ora $0C.b,S		; 03 0C
	brk $0F.b		; 00 0F
	cop $0F.b		; 02 0F
	ora ($07.b,X)		; 01 07
	ora [$1F.b]		; 07 1F
	asl $040E.w		; 0E 0E 04
	ora $01.b		; 05 01
	ora $00.b,S		; 03 00
	brk $02.b		; 00 02
	cop $05.b		; 02 05
	ora $C2.b		; 05 C2
	xce		; FB
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpx #$FC.b		; E0 FC
	adc $9EFF.w,Y		; 79 FF 9E
	sbc $C00B07.l,X		; FF 07 0B C0
	xce		; FB
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	sec		; 38
	sbc $01FF0E.l,X		; FF 0E FF 01
	ora $040400.l		; 0F 00 04 04
	cop $0C.b		; 02 0C
	cop $00.b		; 02 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	asl $00.b		; 06 00
	asl $0E00.w		; 0E 00 0E
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $42.b		; 00 42
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpx #$A0.b		; E0 A0
	bit $3C.b,X		; 34 3C
	bpl  28.b		; 10 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	mvp $60,$20		; 44 20 60
	tsb $40.b		; 04 40
	bit $24.b,X		; 34 24
	sec		; 38
	bit $3C38.w,X		; 3C 38 3C
	sec		; 38
	clc		; 18
	sec		; 38
	clc		; 18
	sec		; 38
	brk $64.b		; 00 64
	brk $64.b		; 00 64
	brk $74.b		; 00 74
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	tsb $00.b		; 04 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $47.b,X		; 34 47
	stz $C7.b,X		; 74 C7
	jmp ($7CCF.w,X)		; 7C CF 7C
	cmp $32.b,S		; C3 32
	cmp $413E.w		; CD 3E 41
	rol $3E41.w,X		; 3E 41 3E
	eor ($79.b,X)		; 41 79
	eor ($39.b,X)		; 41 39
	ora ($31.b,X)		; 01 31
	ora ($29.b,X)		; 01 29
	ora $7D5D.w,Y		; 19 5D 7D
	adc ($61.b,X)		; 61 61
	and ($29.b,X)		; 21 29
	ora ($19.b,X)		; 01 19
	cpy #$F8.b		; C0 F8
	cpy #$F0.b		; C0 F0
	cpy #$F0.b		; C0 F0
	bra -16.b		; 80 F0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	bra -32.b		; 80 E0
	brk $C0.b		; 00 C0
	jsr $2020.w		; 20 20 20
	jsr $2020.w		; 20 20 20
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	cpx #$1F.b		; E0 1F
	brk $7F.b		; 00 7F
	jmp ($0083.w,X)		; 7C 83 00
	cop $0A.b		; 02 0A
	brk $0C.b		; 00 0C
	cop $00.b		; 02 00
	ora $000F30.l		; 0F 30 0F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $000700.l,X		; FF 00 07 00
	ora $001F00.l		; 0F 00 1F 00
	and $403F00.l,X		; 3F 00 3F 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	ora ($10.b,X)		; 01 10
	ora [$10.b]		; 07 10
	ora $C433.w		; 0D 33 C4
	and ($8E.b,X)		; 21 8E
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $8F.b		; 00 8F
	brk $1F.b		; 00 1F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $0F1707.l,X		; 1F 07 17 0F
	eor $BC7F0F.l,X		; 5F 0F 7F BC
	ldy $7A.b,X		; B4 7A
	cld		; D8
	cpx #$20.b		; E0 20
	cmp ($B0.b),Y		; D1 B0
	sei		; 78
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $F8.b		; 00 F8
	brk $F1.b		; 00 F1
	brk $F8.b		; 00 F8
	cpy #$A0.b		; C0 A0
	brk $C0.b		; 00 C0
	sei		; 78
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	ora [$0B.b]		; 07 0B
	ora $2F1D17.l		; 0F 17 1D 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	phd		; 0B
	brk $17.b		; 00 17
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr $2810.w		; 20 10 28
	bpl  40.b		; 10 28
	brk $20.b		; 00 20
	jsr $1010.w		; 20 10 10
	brk $09.b		; 00 09
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	sec		; 38
	brk $38.b		; 00 38
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $19.b		; 00 19
	php		; 08
	ora ($08.b),Y		; 11 08
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bmi  32.b		; 30 20
	sec		; 38
	bpl  96.b		; 10 60
	jsr $1000.w		; 20 00 10
	jsr $1900.w		; 20 00 19
	brk $18.b		; 00 18
	brk $10.b		; 00 10
	brk $30.b		; 00 30
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $10.b		; 00 10
	ora ($00.b),Y		; 11 00
	brk $33.b		; 00 33
	cop $74.b		; 02 74
	tsb $1C72.w		; 0C 72 1C
	jmp ($1000.w,X)		; 7C 00 10
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	brk $11.b		; 00 11
	brk $33.b		; 00 33
	brk $76.b		; 00 76
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	jmp $2230.w		; 4C 30 22
	cli		; 58
	bpl  14.b		; 10 0E
	jsr $0100.w		; 20 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $7E00.w,X		; 7E 00 7E
	brk $3E.b		; 00 3E
	brk $3D.b		; 00 3D
	brk $11.b		; 00 11
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	ora [$78.b]		; 07 78
	sta [$70.b]		; 87 70
	sta $F08E70.l		; 8F 70 8E F0
	asl $7688.w		; 0E 88 76
	sty $8876.w		; 8C 76 88
	adc ($06.b)		; 72 06
	ror $46.b		; 66 46
	ror $42.b		; 66 42
	.db $42, $42		; 42 42
	.db $42, $00		; 42 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	brk $48.b		; 00 48
	and ($2C.b)		; 32 2C
	eor ($1C.b)		; 52 1C
	.db $62, $0C, $62		; 62 0C 62
	php		; 08
	.db $62, $04, $66		; 62 04 66
	brk $26.b		; 00 26
	bpl  36.b		; 10 24
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	bit $3C20.w,X		; 3C 20 3C
	jsr $2038.w		; 20 38 20
	bit $3824.w,X		; 3C 24 38
	jsr $2410.w		; 20 10 24
	clc		; 18
	bit $2C08.w		; 2C 08 2C
	clc		; 18
	bit $0C38.w,X		; 3C 38 0C
	sec		; 38
	tsb $0C.b		; 04 0C
	bmi   4.b		; 30 04
	plp		; 28
	sec		; 38
	jsr $0010.w		; 20 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	trb $0838.w		; 1C 38 08
	bit $0C30.w,X		; 3C 30 0C
	sec		; 38
	tsb $3C.b		; 04 3C
	brk $3C.b		; 00 3C
	brk $2E.b		; 00 2E
	bpl  46.b		; 10 2E
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	php		; 08
	php		; 08
	tsb $040C.w		; 0C 0C 04
	tsb $1F.b		; 04 1F
	brk $03.b		; 00 03
	tsb $0C03.w		; 0C 03 0C
	ora ($0E.b,X)		; 01 0E
	ora #$0506.w		; 09 06 05
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $0C.b		; 00 0C
	brk $12.b		; 00 12
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $001E00.l		; 0F 00 1E 00
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bvs -120.b		; 70 88
	sta [$78.b],Y		; 97 78
	lda $FF7FFF.l,X		; BF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	dey		; 88
	brk $78.b		; 00 78
	brk $E1.b		; 00 E1
	asl $3FC0.w,X		; 1E C0 3F
	sta $807F60.l,X		; 9F 60 7F 80
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	sbc $919FFC.l,X		; FF FC 9F 91
	and $F8B7EB.l		; 2F EB B7 F8
	eor [$FF.b]		; 47 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $9F.b		; 00 9F
	brk $0F.b		; 00 0F
	rts		; 60

	and [$20.b]		; 27 20
	lda $007800.l,X		; BF 00 78 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $6000.w		; 20 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $006000.l		; 22 00 60 00
	rts		; 60

	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	bra   0.b		; 80 00
	rti		; 40

	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	bne   0.b		; D0 00
	bne   0.b		; D0 00
	bvs   0.b		; 70 00
	sei		; 78
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $C0.b		; 00 C0
	rti		; 40

	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $000000.l		; 22 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $36.b		; 00 36
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $B0.b		; 00 B0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	brk $12.b		; 00 12
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	brk $1A.b		; 00 1A
	brk $0B.b		; 00 0B
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bpl  52.b		; 10 34
	brk $74.b		; 00 74
	brk $08.b		; 00 08
	bmi -108.b		; 30 94
	rts		; 60

	bpl  64.b		; 10 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $7D.b		; 00 7D
	brk $7E.b		; 00 7E
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
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
	jsr $2000.w		; 20 00 20
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	rts		; 60

	brk $18.b		; 00 18
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $38.b		; 00 38
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
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0800.w		; 0D 00 08
	tsb $2A.b		; 04 2A
	tsb $22.b		; 04 22
	trb $0890.w		; 1C 90 08
	tsb $08.b		; 04 08
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F00.w		; 0D 00 0F
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $BE.b		; 00 BE
	brk $1E.b		; 00 1E
	brk $18.b		; 00 18
	bpl   0.b		; 10 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
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
	php		; 08
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$0800.w		; 09 00 08
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	sbc [$00.b]		; E7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $87.b		; 00 87
	brk $27.b		; 00 27
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $01.b		; 00 01
	clc		; 18
	jsr $3008.w		; 20 08 30
	clc		; 18
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	rts		; 60

	brk $40.b		; 00 40
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rti		; 40

	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $20.b		; 00 20
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
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $2487.w,X		; BC 87 24
	sbc [$19.b]		; E7 19
	rol $1C03.w,X		; 3E 03 1C
	ora $04.b,S		; 03 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora ($00.b,X)		; 01 00
	ply		; 7A
	cop $5A.b		; 02 5A
	.db $42, $04		; 42 04
	tsb $0D.b		; 04 0D
	ora $0101.w		; 0D 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	sbc [$1F.b]		; E7 1F
	sbc [$0F.b],Y		; F7 0F
	sbc [$0F.b],Y		; F7 0F
	sbc $00FF03.l,X		; FF 03 FF 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cmp $00.b,S		; C3 00
	ora $606F00.l,X		; 1F 00 6F 60
	sbc $F0F3E0.l		; EF E0 F3 F0
	jsr ($01FC.w,X)		; FC FC 01
	sbc $42FF01.l,X		; FF 01 FF 42
	ror $C278.w,X		; 7E 78 C2
	clc		; 18
.ACCU 16
	rep #$2E		; C2 2E
	adc $1C.b,S		; 63 1C
	adc ($04.b),Y		; 71 04
	and ($0F.b),Y		; 31 0F
	ora $1802.w,Y		; 19 02 18
	ora [$0C.b]		; 07 0C
	bit $7E00.w,X		; 3C 00 7E
	.db $42, $1C		; 42 1C
	brk $2E.b		; 00 2E
	jsr $111F.w		; 20 1F 11
	asl $00.b		; 06 00
	ora $000308.l		; 0F 08 03 00
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
	bra -128.b		; 80 80
	cpy #$A0.b		; C0 A0
	bne -96.b		; D0 A0
	sei		; 78
	bra -20.b		; 80 EC
	brk $D6.b		; 00 D6
	php		; 08
	ldx $5A10.w,Y		; BE 10 5A
	and $12EC.w		; 2D EC 12
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	bra -88.b		; 80 A8
	bpl  80.b		; 10 50
	php		; 08
	ldy $5001.w		; AC 01 50
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	clc		; 18
	sec		; 38
	trb $009C.w		; 1C 9C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	php		; 08
	jmp ($3E08.w,X)		; 7C 08 3E
	brk $07.b		; 00 07
	ora [$08.b]		; 07 08
	ora $2F1F07.l,X		; 1F 07 1F 2F
	sbc $7FBF1F.l,X		; FF 1F BF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora [$00.b]		; 07 00
	php		; 08
	brk $07.b		; 00 07
	brk $2C.b		; 00 2C
	ora $1C.b,S		; 03 1C
	ora $78.b,S		; 03 78
	ora [$FF.b]		; 07 FF
	brk $3F.b		; 00 3F
	cpy #$00.b		; C0 00
	cpy #$E0.b		; C0 E0
	brk $D0.b		; 00 D0
	inx		; E8
	jsr ($FAF2.w,X)		; FC F2 FA
	jsr ($FDFA.w,X)		; FC FA FD
	sbc #$FBF6.w		; E9 F6 FB
	cpx $C0.b		; E4 C0
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	brk $F2.b		; 00 F2
	brk $3C.b		; 00 3C
	cpy #$3D.b		; C0 3D
	cpy #$B6.b		; C0 B6
	rti		; 40

	cpx $00.b		; E4 00
	asl $E7.b		; 06 E7
	asl A		; 0A
	adc $0D.b,S		; 63 0D
	adc ($0E.b,X)		; 61 0E
	rts		; 60

	asl $1F30.w,X		; 1E 30 1F
	bmi  15.b		; 30 0F
	bmi  15.b		; 30 0F
	bpl 121.b		; 10 79
	adc ($3D.b,X)		; 61 3D
	and ($3E.b,X)		; 21 3E
	jsr $203F.w		; 20 3F 20
	ora $000F00.l		; 0F 00 0F 00
	ora $000F10.l,X		; 1F 10 0F 00
	trb $1FF1.w		; 1C F1 1F
	sbc ($1E.b),Y		; F1 1E
	beq  23.b		; F0 17
	beq   7.b		; F0 07
	beq -113.b		; F0 8F
	cld		; D8
	sta $D8.b,S		; 83 D8
	sta [$CC.b]		; 87 CC
	and $A0AE21.l		; 2F 21 AE A0
	lda $808FA0.l		; AF A0 8F 80
	sta $000790.l,X		; 9F 90 07 00
	ora $000308.l		; 0F 08 03 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora ($0C.b,X)		; 01 0C
	ora [$0C.b]		; 07 0C
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $E32E08.l		; 0F 08 2E E3
	jmp $82B8C2.l		; 5C C2 B8 82
	bvs   4.b		; 70 04
	cpx #$0C.b		; E0 0C
	cpy #$18.b		; C0 18
	bra  48.b		; 80 30
	bra  96.b		; 80 60
	jmp $82BE40.l		; 5C 40 BE 82
	jmp ($FC00.w,X)		; 7C 00 FC
	tsb $F8.b		; 04 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	rol $3D00.w,X		; 3E 00 3D
	brk $7B.b		; 00 7B
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	brk $1A.b		; 00 1A
	tas		; 1B
	ora $17.b,X		; 15 17
	jsl $525226.l		; 22 26 52 52
	and $35.b,X		; 35 35
	asl $16.b,X		; 16 16
	and $3A2D.w		; 2D 2D 3A
	tsa		; 3B
	inc $FE7F.w,X		; FE 7F FE
	rol $5EBF.w,X		; 3E BF 5E
	sbc $10FD2C.l,X		; FF 2C FD 10
	stp		; DB
	tsb $5F.b		; 04 5F
	brk $DD.b		; 00 DD
	brk $9C.b		; 00 9C
	sbc $187F1C.l,X		; FF 1C 7F 18
	ror $3F09.w,X		; 7E 09 3F
	eor ($5F.b,X)		; 41 5F
	bra -92.b		; 80 A4
	cop $A2.b		; 02 A2
	dey		; 88
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora [$08.b]		; 07 08
	ora $000007.l		; 0F 07 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	php		; 08
	brk $06.b		; 00 06
	ora ($0F.b,X)		; 01 0F
	ora [$03.b]		; 07 03
	ora $7F770F.l		; 0F 0F 77 7F
	sta $DF7FFF.l		; 8F FF 7F DF
	adc $CF0FFF.l,X		; 7F FF 0F CF
	and [$04.b],Y		; 37 04
	ora $0F.b,S		; 03 0F
	brk $77.b		; 00 77
	brk $8F.b		; 00 8F
	brk $73.b		; 00 73
	tsb $0679.w		; 0C 79 06
	sta $00C700.l		; 8F 00 C7 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	brk $1E.b		; 00 1E
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $0A.b		; 00 0A
	phd		; 0B
	ora $761B.w,Y		; 19 1B 76
	bra 126.b		; 80 7E
	cmp ($7F.b,X)		; C1 7F
	sbc ($7F.b,S),Y		; F3 7F
	adc $CFBF3F.l,X		; 7F 3F BF CF
	cmp $F873F2.l		; CF F2 73 F8
	jmp ($BD34.w,X)		; 7C 34 BD
	tsb $32CD.w		; 0C CD 32
	sbc ($3F.b,S),Y		; F3 3F
	sbc $06FF1F.l,X		; FF 1F FF 06
	sbc $307F20.l,X		; FF 20 7F 30
	adc $030C01.l,X		; 7F 01 0C 03
	asl $07.b		; 06 07
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	cpy #$00.b		; C0 00
	rti		; 40

	brk $40.b		; 00 40
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq  64.b		; F0 40
	sei		; 78
	cpx #$D8.b		; E0 D8
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $7300.w		; 20 00 73
	tsb $8C35.w		; 0C 35 8C
	txs		; 9A
	dec $BD.b		; C6 BD
	cmp $5A.b,S		; C3 5A
	sta ($B1.b,X)		; 81 B1
	brk $70.b		; 00 70
	brk $C0.b		; 00 C0
	brk $07.b		; 00 07
	ldy $0B.b		; A4 0B
	iny		; C8
	ora $E4.b		; 05 E4
	cop $E2.b		; 02 E2
	ora ($E1.b,X)		; 01 E1
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	asl $877E.w		; 0E 7E 87
	and $18C7.w,Y		; 39 C7 18
	adc ($0C.b,S),Y		; 73 0C
	lda $598E.w,X		; BD 8E 59
	dec $3EF9.w		; CE F9 3E
	sec		; 38
	asl $84.b		; 06 84
	and $F029E0.l,X		; 3F E0 29 F0
	bpl  -4.b		; 10 FC
	tsb $0272.w		; 0C 72 02
	ldx $86.b,Y		; B6 86
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	sed		; F8
	sbc $DEFFFE.l,X		; FF FE FF DE
	sbc $7CBFDE.l,X		; FF DE BF 7C
	sbc $3CF87F.l,X		; FF 7F F8 3C
	sed		; F8
	dec A		; 3A
	sbc $F7E01F.l,X		; FF 1F E0 F7
	php		; 08
	sbc $1C.b,S		; E3 1C
	lda [$08.b],Y		; B7 08
	sbc $00F800.l,X		; FF 00 F8 00
	xce		; FB
	brk $FC.b		; 00 FC
	brk $7A.b		; 00 7A
	sty $F4.b,X		; 94 F4
	cli		; 58
	sed		; F8
	trb $F8.b		; 14 F8
	trb $38E0.w		; 1C E0 38
	rti		; 40

	jsr $F0E0.w		; 20 E0 F0
	brk $E0.b		; 00 E0
	sty $00.b		; 84 00
	rti		; 40

	rti		; 40

	pha		; 48
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $D0.b		; 00 D0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	bpl  15.b		; 10 0F
	clc		; 18
	ora [$08.b]		; 07 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora ($0E.b,X)		; 01 0E
	ora ($1C.b,X)		; 01 1C
	ora $000700.l		; 0F 00 07 00
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	sta ($CC.b,X)		; 81 CC
	cop $46.b		; 02 46
	ora ($47.b,X)		; 01 47
	brk $63.b		; 00 63
	cpy #$61.b		; C0 61
	bra  33.b		; 80 21
	cpy #$20.b		; C0 20
	bra  32.b		; 80 20
	eor [$44.b]		; 47 44
	cmp ($40.b,X)		; C1 40
	rep #$42		; C2 42
	cmp ($41.b,X)		; C1 41
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	ora $110718.l		; 0F 18 07 11
	trb $0E31.w		; 1C 31 0E
	and $1C.b,S		; 23 1C
	ror $38.b		; 66 38
	stz $38.b		; 64 38
	jmp ($E830.w)		; 6C 30 E8
	ora [$00.b]		; 07 00
	asl $0F10.w,X		; 1E 10 0F
	ora ($1C.b,X)		; 01 1C
	brk $38.b		; 00 38
	jsr $041C.w		; 20 1C 04
	bpl   0.b		; 10 00
	cli		; 58
	pha		; 48
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	inc $FC00.w,X		; FE 00 FC
	brk $79.b		; 00 79
	brk $31.b		; 00 31
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	tsb $00.b		; 04 00
	ora [$7A.b]		; 07 7A
	tda		; 7B
	stz $77.b,X		; 74 77
	and #$102F.w		; 29 2F 10
	asl $0606.w,X		; 1E 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	cmp [$00.b],Y		; D7 00
	stx $00.b,Y		; 96 00
	sta [$00.b],Y		; 97 00
	sta ($00.b,S),Y		; 93 00
	sta ($00.b,S),Y		; 93 00
	sta ($00.b),Y		; 91 00
	sbc $FF00.w,Y		; F9 00 FF
	cpy #$43.b		; C0 43
	rtl		; 6B

	tsb $6D.b		; 04 6D
	ora $6D.b		; 05 6D
	.db $82, $EE, $82		; 82 EE 82
	inc $EF81.w		; EE 81 EF
	ora #$000F.w		; 09 0F 00
	brk $0F.b		; 00 0F
	tsb $1F.b		; 04 1F
	php		; 08
	ora $0F00.w,X		; 1D 00 0F
	cop $3B.b		; 02 3B
	cop $3F.b		; 02 3F
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $03.b,S		; 03 03
	asl $03.b		; 06 03
	php		; 08
	ora $0C.b		; 05 0C
	ora ($07.b,X)		; 01 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	cop $1B.b		; 02 1B
	bmi  10.b		; 30 0A
	rol $3E00.w,X		; 3E 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	bpl  12.b		; 10 0C
	php		; 08
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	rti		; 40

	pea $F808.w		; F4 08 F8
	php		; 08
	jsr ($FC04.w,X)		; FC 04 FC
	cop $6F.b		; 02 6F
	brk $27.b		; 00 27
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$00.b		; C0 00
	rti		; 40

	cpy #$60.b		; C0 60
	bra  32.b		; 80 20
	cpx #$30.b		; E0 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	bra   0.b		; 80 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	cpy #$10.b		; C0 10
	beq  24.b		; F0 18
	cpx #$08.b		; E0 08
	sei		; 78
	tsb $84B0.w		; 0C B0 84
	jmp ($18C6.w,X)		; 7C C6 18
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	adc $F0.b,S		; 63 F0
	bpl -32.b		; 10 E0
	brk $F8.b		; 00 F8
	php		; 08
	beq   0.b		; F0 00
	jmp ($B804.w,X)		; 7C 04 B8
	bra 126.b		; 80 7E
	.db $42, $1C		; 42 1C
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $E0.b		; 00 E0
	php		; 08
	sei		; 78
	tsb $0470.w		; 0C 70 04
	beq -124.b		; F0 84
	ldy $3886.w,X		; BC 86 38
	.db $82, $58, $C2		; 82 58 C2
	asl $F8C3.w,X		; 1E C3 F8
	php		; 08
	beq   0.b		; F0 00
	sed		; F8
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	brk $FC.b		; 00 FC
	bra  62.b		; 80 3E
	cop $7C.b		; 02 7C
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
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
	brk $80.b		; 00 80
	cpy #$E000.w		; C0 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$00F0.w		; C0 F0 00
	sed		; F8
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $B0.b		; 00 B0
	brk $C0.b		; 00 C0
	bmi -96.b		; 30 A0
	bmi -48.b		; 30 D0
	tya		; 98
	rts		; 60

	rts		; 60

	bcs -80.b		; B0 B0
	bvc -48.b		; 50 D0
	jsr $80E0.w		; 20 E0 80
	cpy #$0000.w		; C0 00 00
	bvc  16.b		; 50 10
	rts		; 60

	brk $B0.b		; 00 B0
	iny		; C8
	beq   0.b		; F0 00
	cpx #$E100.w		; E0 00 E1
	brk $E2.b		; 00 E2
	ora ($C5.b,X)		; 01 C5
	ora $FB.b,S		; 03 FB
	ora [$D7.b]		; 07 D7
	ora $000000.l		; 0F 00 00 00
	brk $C0.b		; 00 C0
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$81C1.w		; C0 C1 81
	sta $03.b,S		; 83 03
	ora [$86.b]		; 07 86
	lda $000000.l,X		; BF 00 00 00
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	cpy #$E0F0.w		; C0 F0 E0
	sed		; F8
	beq  -8.b		; F0 F8
	cpy #$B0F8.w		; C0 F8 B0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	cpy #$C0E0.w		; C0 E0 C0
	beq -128.b		; F0 80
	cpy #$B010.w		; C0 10 B0
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ora $1F02.w,X		; 1D 02 1F
	tsb $3E.b		; 04 3E
	phd		; 0B
	bit $0F.b,X		; 34 0F
	and $0004.w,Y		; 39 04 00
	brk $06.b		; 00 06
	asl $07.b		; 06 07
	ora [$00.b]		; 07 00
	ora $04.b,S		; 03 04
	tsb $08.b		; 04 08
	phd		; 0B
	tsb $0C.b		; 04 0C
	ora $00.b,S		; 03 00
	ldy #$D17F.w		; A0 7F D1
	rol $1EED.w,X		; 3E ED 1E
	sbc $D71A.w		; ED 1A D7
	plp		; 28
	sbc [$0C.b],Y		; F7 0C
	and ($CC.b,S),Y		; 33 CC
	sta $017120.l,X		; 9F 20 71 01
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	sty $80.b,X		; 94 80
	lda $81.b		; A5 81
	ora ($81.b,X)		; 01 81
	brk $00.b		; 00 00
	cmp ($01.b,X)		; C1 01
	cpx #$E018.w		; E0 18 E0
	clc		; 18
	beq  60.b		; F0 3C
	iny		; C8
	lsr $8734.w		; 4E 34 87
	tsx		; BA
	sta $3D.b,S		; 83 3D
	sta ($3E.b,X)		; 81 3E
	cpy #$4040.w		; C0 40 40
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	bit $04.b,X		; 34 04
	plx		; FA
	.db $82, $7D, $01		; 82 7D 01
	inc $7F80.w,X		; FE 80 7F
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	bra -64.b		; 80 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ora ($0C.b,X)		; 01 0C
	ora $0C.b,S		; 03 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	ora [$18.b]		; 07 18
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora $30E008.l		; 0F 08 E0 30
	cpx #$8030.w		; E0 30 80
	jsr $2080.w		; 20 80 20
	cpy #$0060.w		; C0 60 00
	rti		; 40

	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $C3.b		; 00 C3
	brk $C7.b		; 00 C7
	brk $FF.b		; 00 FF
	brk $78.b		; 00 78
	brk $61.b		; 00 61
	brk $47.b		; 00 47
	brk $3E.b		; 00 3E
	brk $38.b		; 00 38
	brk $43.b		; 00 43
	adc $317E46.l,X		; 7F 46 7E 31
	and ($08.b),Y		; 31 08
	ora $043F21.l		; 0F 21 3F 04
	bit $1312.w,X		; 3C 12 13
	plp		; 28
	and $F70FFF.l		; 2F FF 0F F7
	ora [$39.b],Y		; 17 39
	php		; 08
	adc $00EF06.l,X		; 7F 06 EF 00
	sta $007600.l,X		; 9F 00 76 00
	inc $0E00.w		; EE 00 0E
	and $205F46.l		; 2F 46 5F 20
	inc $C640.w		; EE 40 C6
	and $35.b		; 25 35
	sta $54ED.w		; 8D ED 54
	cmp $BBAA.w,X		; DD AA BB
	ora ($02.b,X)		; 01 02
	ora $05.b,S		; 03 05
	ora [$03.b]		; 07 03
	ora $03.b		; 05 03
	ora $03.b		; 05 03
	ora ($2D.b)		; 12 2D
	rol $4641.w,X		; 3E 41 46
	and $0002.w,Y		; 39 02 00
	ora $00.b		; 05 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	and $4100.w		; 2D 00 41
	brk $39.b		; 00 39
	brk $80.b		; 00 80
	eor ($C3.b,X)		; 41 C3
	ldy #$C3FD.w		; A0 FD C3
	cmp [$EF.b],Y		; D7 EF
	adc $FF1F9F.l		; 6F 9F 1F FF
	lda $FF1F7F.l,X		; BF 7F 1F FF
	eor ($00.b,X)		; 41 00
	ldy #$C300.w		; A0 00 C3
	brk $EE.b		; 00 EE
	ora ($9C.b,X)		; 01 9C
	ora $FF.b,S		; 03 FF
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $F0.b		; 00 F0
	php		; 08
	inc $F9.b,X		; F6 F9
	sbc $FEFE.w,Y		; F9 FE FE
	sbc $F7FFFE.l,X		; FF FE FF F7
	sbc $E7FFF3.l,X		; FF F3 FF E7
	xce		; FB
	php		; 08
	brk $F9.b		; 00 F9
	brk $7E.b		; 00 7E
	bra 127.b		; 80 7F
	bra  31.b		; 80 1F
	cpx #$C03F.w		; E0 3F C0
	sbc $00FB00.l,X		; FF 00 FB 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$A000.w		; C0 00 A0
	cpy #$D0E0.w		; C0 E0 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$D000.w		; C0 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $36.b		; 00 36
	brk $4E.b		; 00 4E
	brk $7E.b		; 00 7E
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	and ($3A.b,S),Y		; 33 3A
	tsa		; 3B
	brk $00.b		; 00 00
	ldy #$6080.w		; A0 80 60
	brk $E0.b		; 00 E0
	brk $A0.b		; 00 A0
	brk $B0.b		; 00 B0
	brk $90.b		; 00 90
	brk $D0.b		; 00 D0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	rti		; 40

	rti		; 40

	brk $40.b		; 00 40
	jsr $0060.w		; 20 60 00
	rts		; 60

	rti		; 40

	rts		; 60

	rts		; 60

	rts		; 60

	eor $78FF3C.l,X		; 5F 3C FF 78
	sbc #$F030.w		; E9 30 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	jsr ($7830.w,X)		; FC 30 78
	jsr $8030.w		; 20 30 80
	ldy #$8080.w		; A0 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $78BC38.l		; 5C 38 BC 78
	ldy $7870.w,X		; BC 70 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	clv		; B8
	php		; 08
	sei		; 78
	bpl 112.b		; 10 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec A		; 3A
	asl $7D.b		; 06 7D
	ora $FE.b,S		; 03 FE
	ora ($E7.b,X)		; 01 E7
	brk $EB.b		; 00 EB
	bpl -37.b		; 10 DB
	bit $3CDF.w,X		; 3C DF 3C
	sbc $00011E.l,X		; FF 1E 01 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	bra -68.b		; 80 BC
	sta ($BD.b,X)		; 81 BD
	bit #$8DBD.w		; 89 BD 8D
	lda $5E0E.w,X		; BD 0E 5E
	cmp $086710.l		; CF 10 67 08
	lda ($84.b,S),Y		; B3 84
	tad		; 5B
.ACCU 16
	rep #$AF		; C2 AF
	.db $62, $C9, $3A		; 62 C9 3A
	sbc ($2C.b,S),Y		; F3 2C
	sbc $00E040.l,X		; FF 40 E0 00
	sbc ($02.b)		; F2 02
	adc $3C01.w,Y		; 79 01 3C
	brk $1C.b		; 00 1C
	brk $C4.b		; 00 C4
	cpy #$A181.w		; C0 81 A1
	php		; 08
	pha		; 48
	ora $300F60.l,X		; 1F 60 0F 30
	ora [$18.b]		; 07 18
	ora $0C.b,S		; 03 0C
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	and $101F20.l,X		; 3F 20 1F 10
	ora $040708.l		; 0F 08 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rts		; 60

	bra  48.b		; 80 30
	cpx #$D030.w		; E0 30 D0
	clc		; 18
	cpx #$F80C.w		; E0 0C F8
	sty $C67C.w		; 8C 7C C6
	clc		; 18
	rep #$80		; C2 80
	brk $E0.b		; 00 E0
	jsr $10D0.w		; 20 D0 10
	cpx #$F800.w		; E0 00 F8
	php		; 08
	stz $04.b,X		; 74 04
	clv		; B8
	bra 124.b		; 80 7C
	rti		; 40

	ora $180F18.l		; 0F 18 0F 18
	asl $30.b		; 06 30
	and [$71.b]		; 27 71
	jmp $83B8D1.l		; 5C D1 B8 83
	bvs   6.b		; 70 06
	cpx #$070C.w		; E0 0C 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	bpl  47.b		; 10 2F
	ora ($7E.b,X)		; 01 7E
	cop $FC.b		; 02 FC
	tsb $F8.b		; 04 F8
	php		; 08
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	ora $000700.l		; 0F 00 07 00
	brk $07.b		; 00 07
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora ($1F.b),Y		; 11 1F
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	cpy $9D00.w		; CC 00 9D
	brk $BF.b		; 00 BF
	brk $FF.b		; 00 FF
	brk $DF.b		; 00 DF
	cpx #$3B20.w		; E0 20 3B
	cpy #$C019.w		; C0 19 C0
	clc		; 18
	pha		; 48
	tda		; 7B
	sta $F7.b,X		; 95 F7
	lda $1E1EEF.l		; AF EF 1E 1E
	jsr $D020.w		; 20 20 D0
	bpl -16.b		; 10 F0
	bpl -16.b		; 10 F0
	bpl  33.b		; 10 21
	ora $0F071B.l,X		; 1F 1B 07 0F
	ora $0D.b,S		; 03 0D
	ora $05.b,S		; 03 05
	ora $02.b,S		; 03 02
	ora $01.b		; 05 01
	cop $00.b		; 02 00
	brk $1F.b		; 00 1F
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	sbc $FBFFF0.l,X		; FF F0 FF FB
	jsr ($FFFA.w,X)		; FC FA FF
	sed		; F8
	sbc $CCFF3C.l,X		; FF 3C FF CC
	and $FF0F74.l,X		; 3F 74 0F FF
	brk $1F.b		; 00 1F
	cpx #$609C.w		; E0 9C 60
	sbc $F511.w		; ED 11 F5
	ora #$01FD.w		; 09 FD 01
	rol $0E00.w,X		; 3E 00 0E
	brk $C8.b		; 00 C8
	sbc [$18.b],Y		; F7 18
	sbc $9F1CE9.l		; EF E9 1C 9F
	mvp $C7,$7C		; 44 7C C7
	jsr ($2487.w,X)		; FC 87 24
	sta [$02.b]		; 87 02
	cmp $F3.b		; C5 F3
	ora $E7.b,S		; 03 E7
	ora [$14.b]		; 07 14
	asl $08.b,X		; 16 08
	adc ($48.b,X)		; 61 48
	bvc 122.b		; 50 7A
	cop $F8.b		; 02 F8
	tya		; 98
	sei		; 78
	cli		; 58
	ldy #$C0D0.w		; A0 D0 C0
	ldy #$80C0.w		; A0 C0 80
	rti		; 40

	cpx #$E000.w		; E0 00 E0
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	asl $0C05.w		; 0E 05 0C
	ora [$1C.b]		; 07 1C
	ora $301E38.l		; 0F 38 1E 30
	trb $3861.w		; 1C 61 38
	.db $62, $10, $C4		; 62 10 C4
	ora $04.b		; 05 04
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $203E00.l		; 0F 00 3E 20
	trb $7800.w		; 1C 00 78
	rti		; 40

	cop $01.b		; 02 01
	asl $01.b		; 06 01
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $021F01.l,X		; 1F 01 1F 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E08.w,X		; 1E 08 3E
	bpl  58.b		; 10 3A
	brk $1E.b		; 00 1E
	tsb $76.b		; 04 76
	tsb $7E.b		; 04 7E
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $1C.b		; 00 1C
	brk $38.b		; 00 38
	brk $38.b		; 00 38
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
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	rti		; 40

	pea $F808.w		; F4 08 F8
	php		; 08
	jsr ($FC04.w,X)		; FC 04 FC
	cop $6F.b		; 02 6F
	brk $27.b		; 00 27
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0B.b		; 00 0B
	dec A		; 3A
	ora [$70.b],Y		; 17 70
	rol $5CE0.w		; 2E E0 5C
	cmp ($B8.b,X)		; C1 B8
	sta $F0.b,S		; 83 F0
	stx $E0.b		; 86 E0
	php		; 08
	cpy #$0510.w		; C0 10 05
	brk $2F.b		; 00 2F
	jsr $405F.w		; 20 5F 40
	lda $027E81.l,X		; BF 81 7E 02
	jmp ($F004.w,X)		; 7C 04 F0
	brk $E0.b		; 00 E0
	brk $28.b		; 00 28
	ora $1A28.w,Y		; 19 28 1A
	pla		; 68
	trb $007C.w		; 1C 7C 00
	jmp ($F800.w,X)		; 7C 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	bpl   6.b		; 10 06
	brk $14.b		; 00 14
	bpl   4.b		; 10 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	adc ($0E.b),Y		; 71 0E
	adc ($3C.b,X)		; 61 3C
	adc ($1E.b,X)		; 61 1E
	cmp $78.b,S		; C3 78
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $7C, $86		; 82 7C 86
	jsr ($0E86.w,X)		; FC 86 0E
	brk $3E.b		; 00 3E
	jsr $001E.w		; 20 1E 00
	jmp ($3E40.w,X)		; 7C 40 3E
	cop $7C.b		; 02 7C
	brk $F8.b		; 00 F8
	bra 120.b		; 80 78
	brk $F8.b		; 00 F8
	sty $F0.b		; 84 F0
	sty $70.b		; 84 70
	sty $78.b		; 84 78
	sty $8838.w		; 8C 38 88
	bmi -120.b		; 30 88
	bvs -56.b		; 70 C8
	bmi -56.b		; 30 C8
	jmp ($7C04.w,X)		; 7C 04 7C
	tsb $F8.b		; 04 F8
	bra -16.b		; 80 F0
	bra 112.b		; 80 70
	brk $78.b		; 00 78
	php		; 08
	sec		; 38
	php		; 08
	bvs  64.b		; 70 40
	bpl -56.b		; 10 C8
	ldy #$D068.w		; A0 68 D0
	sec		; 38
	sed		; F8
	brk $B8.b		; 00 B8
	rti		; 40

	clv		; B8
	rts		; 60

	ldy $6C70.w,X		; BC 70 6C
	jsr $4070.w		; 20 70 40
	bpl   0.b		; 10 00
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	tsb $3003.w		; 0C 03 30
	brk $67.b		; 00 67
	brk $63.b		; 00 63
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	ora $253D10.l,X		; 1F 10 3D 25
	rol $0F22.w,X		; 3E 22 0F
	dec A		; 3A
	ora $3D.b,S		; 03 3D
	and #$B8EE.w		; 29 EE B8
	sta $70.b,S		; 83 70
	ora [$E1.b]		; 07 E1
	ora $FFFE83.l		; 0F 83 FE FF
	brk $3A.b		; 00 3A
	cop $01.b		; 02 01
	ora ($54.b,X)		; 01 54
	mvp $02,$7E		; 44 7E 02
	jsr ($F804.w,X)		; FC 04 F8
	ora #$4240.w		; 09 40 42
	brk $00.b		; 00 00
	sbc $57EEBF.l,X		; FF BF EE 57
	sbc $A1FEA3.l,X		; FF A3 FE A1
	sbc $42FFA0.l,X		; FF A0 FF 42
	sbc $41BD83.l,X		; FF 83 BD 41
	lda $405780.l,X		; BF 80 57 40
	lda $A0.b,S		; A3 A0
	sta ($A0.b,X)		; 81 A0
	bra -96.b		; 80 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	.db $42, $00		; 42 00
	cpx #$BD9F.w		; E0 9F BD
	rti		; 40

	cmp $BF20.w		; CD 20 BF
	rts		; 60

	ror $18C1.w,X		; 7E C1 18
	cmp ($8A.b,X)		; C1 8A
	adc ($CC.b,X)		; 61 CC
	tsx		; BA
	sta [$07.b],Y		; 97 07
	lsr $00.b		; 46 00
	asl $30.b		; 06 30
	rol $29.b		; 26 29
	lda $477F81.l,X		; BF 81 7F 47
	rol $1424.w,X		; 3E 24 14
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	brk $21.b		; 00 21
	brk $47.b		; 00 47
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $01.b		; 00 01
	ora $073800.l,X		; 1F 00 38 07
	ora [$7E.b]		; 07 7E
	adc $397E7E.l,X		; 7F 7E 7E 39
	and $0706.w,Y		; 39 06 07
	asl $F51F.w,X		; 1E 1F F5
	asl $07BB.w		; 0E BB 07
	tda		; 7B
	ora [$DF.b]		; 07 DF
	ora [$BF.b]		; 07 BF
	ora $6F.b,S		; 03 6F
	brk $6D.b		; 00 6D
	brk $CD.b		; 00 CD
	brk $00.b		; 00 00
	ora $23CF83.l		; 0F 83 CF 23
	lda $936747.l		; AF 47 67 93
	cmp ($24.b,S),Y		; D3 24
	ldy $24.b,X		; B4 24
	ldx $44.b,Y		; B6 44
	ror $40.b,X		; 76 40
	rts		; 60

	bra  48.b		; 80 30
	cpx #$D030.w		; E0 30 D0
	clc		; 18
	cpx #$F80C.w		; E0 0C F8
	sty $C67C.w		; 8C 7C C6
	clc		; 18
	rep #$80		; C2 80
	brk $E0.b		; 00 E0
	jsr $10D0.w		; 20 D0 10
	cpx #$F800.w		; E0 00 F8
	php		; 08
	stz $04.b,X		; 74 04
	clv		; B8
	bra 124.b		; 80 7C
	rti		; 40

	ora $081F04.l		; 0F 04 1F 08
	ora $0F00.w,X		; 1D 00 0F
	cop $3B.b		; 02 3B
	cop $3F.b		; 02 3F
	brk $3E.b		; 00 3E
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	tsb $0C03.w		; 0C 03 0C
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $18.b,S		; 03 18
	ora [$18.b]		; 07 18
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora $30E008.l		; 0F 08 E0 30
	cpx #$8030.w		; E0 30 80
	jsr $2080.w		; 20 80 20
	cpy #$0060.w		; C0 60 00
	rti		; 40

	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $00C0.w		; 20 C0 00
	bra   0.b		; 80 00
	cpy #$8040.w		; C0 40 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $609F.w,X		; 7E 9F 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror $6000.w,X		; 7E 00 60
	brk $FB.b		; 00 FB
	sbc $FEFF.w,X		; FD FF FE
	sbc $F8FE.w,X		; FD FE F8
	sbc $FEF3FE.l,X		; FF FE F3 FE
	sbc $F9CE.w,Y		; F9 CE F9
	sbc $FDC6.w,Y		; F9 C6 FD
	brk $FE.b		; 00 FE
	bra  -2.b		; 80 FE
	brk $FF.b		; 00 FF
	bra -13.b		; 80 F3
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	cpy #$E0D0.w		; C0 D0 E0
	bpl -32.b		; 10 E0
	bcs  64.b		; B0 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $40.b		; 00 40
	brk $0F.b		; 00 0F
	bmi  31.b		; 30 1F
	jsr $007F.w		; 20 7F 00
	sbc $0FFE06.l,X		; FF 06 FE 0F
	and [$0F.b],Y		; 37 0F
	txy		; 9B
	ora [$ED.b]		; 07 ED
	ora $10.b,S		; 03 10
	bpl  15.b		; 10 0F
	ora $241010.l		; 0F 10 10 24
	and [$CE.b]		; 27 CE
	cmp $13EF26.l		; CF 26 EF 13
	adc [$89.b],Y		; 77 89
	txy		; 9B
	sbc ($0C.b,S),Y		; F3 0C
	sbc ($0E.b),Y		; F1 0E
	xce		; FB
	tsb $BF.b		; 04 BF
	rti		; 40

	sta $EE62.w,X		; 9D 62 EE
	and ($7F.b),Y		; 31 7F
	bcc  -1.b		; 90 FF
	dey		; 88
	bpl  28.b		; 10 1C
	bpl  62.b		; 10 3E
	ora #$017D.w		; 09 7D 01
	adc $7406.w,Y		; 79 06 74
	ora [$B6.b]		; 07 B6
	ora ($9B.b,S),Y		; 13 9B
	php		; 08
	cpy $20FE.w		; CC FE 20
	sbc $10FF10.l,X		; FF 10 FF 10
	sta $2CDF6C.l,X		; 9F 6C DF 2C
	sbc [$88.b],Y		; F7 88
	adc $00FE80.l,X		; 7F 80 FE 00
	sbc $C0.b,S		; E3 C0
	sbc ($E0.b,S),Y		; F3 E0
	sbc ($E0.b)		; F2 E0
	sbc $6D85.w		; ED 85 6D
	eor ($8A.b,X)		; 41 8A
	cop $A6.b		; 02 A6
	rol $08.b		; 26 08
	php		; 08
	beq -128.b		; F0 80
	beq   0.b		; F0 00
	cpx #$C000.w		; E0 00 C0
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
	ora $0B.b,S		; 03 0B
	ora $0B.b		; 05 0B
	tsb $0B.b		; 04 0B
	ora $05.b		; 05 05
	phd		; 0B
	phd		; 0B
	ora [$16.b],Y		; 17 16
	and $032E1D.l		; 2F 1D 2E 03
	brk $05.b		; 00 05
	brk $04.b		; 00 04
	brk $05.b		; 00 05
	brk $0B.b		; 00 0B
	brk $17.b		; 00 17
	brk $2F.b		; 00 2F
	brk $2E.b		; 00 2E
	brk $C2.b		; 00 C2
	lda $E3DD.w,X		; BD DD E3
	adc $FF.b,S		; 63 FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00BD7F.l,X		; FF 7F BD 00
	sbc $00.b,S		; E3 00
	sbc $0BFF01.l,X		; FF 01 FF 0B
	sbc $00FF06.l,X		; FF 06 FF 00
	sbc $007F00.l,X		; FF 00 7F 00
	ora $0F00.w,X		; 1D 00 0F
	bpl  15.b		; 10 0F
	bpl   7.b		; 10 07
	clc		; 18
	ora $31113E.l		; 0F 3E 11 31
	asl $30.b,X		; 16 30
	asl $0C20.w		; 0E 20 0C
	asl $0404.w		; 0E 04 04
	ora ($01.b,X)		; 01 01
	ora #$1009.w		; 09 09 10
	bpl  14.b		; 10 0E
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	jsr $00DD.w		; 20 DD 00
	sta $9900.w,Y		; 99 00 99
	brk $99.b		; 00 99
	brk $9F.b		; 00 9F
	brk $75.b		; 00 75
	sty $CC01.w		; 8C 01 CC
	ora ($C6.b,X)		; 01 C6
	jmp $886E.w		; 4C 6E 88
	inc $EE88.w		; EE 88 EE
	dey		; 88
	inc $6001.w		; EE 01 60
	sta $80.b,S		; 83 80
	sta [$84.b]		; 87 84
	sta $82.b,S		; 83 82
	beq  64.b		; F0 40
	bvs -32.b		; 70 E0
	bcc  96.b		; 90 60
	rts		; 60

	brk $40.b		; 00 40
	ldy #$8040.w		; A0 40 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	rti		; 40

	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $01.b,S		; 03 01
	ora [$02.b]		; 07 02
	asl $1C05.w		; 0E 05 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	asl $1E31.w,X		; 1E 31 1E
	and ($0C.b),Y		; 31 0C
	adc ($4E.b,X)		; 61 4E
	sbc $B8.b,S		; E3 B8
	ldx #$0670.w		; A2 70 06
	cpx #$C00C.w		; E0 0C C0
	clc		; 18
	ora $000E01.l		; 0F 01 0E 00
	asl $3C00.w,X		; 1E 00 3C
	jsr $025E.w		; 20 5E 02
	jsr ($F804.w,X)		; FC 04 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$4000.w		; E0 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	ora $300F60.l,X		; 1F 60 0F 30
	ora [$18.b]		; 07 18
	ora $0C.b,S		; 03 0C
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	and $101F20.l,X		; 3F 20 1F 10
	ora $040708.l		; 0F 08 07 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F020.w,X)		; FC 20 F0
	brk $F0.b		; 00 F0
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	brk $D8.b		; 00 D8
	brk $68.b		; 00 68
	brk $38.b		; 00 38
	brk $20.b		; 00 20
	bmi   0.b		; 30 00
	ldy #$8080.w		; A0 80 80
	ldy #$10A0.w		; A0 A0 10
	bpl  64.b		; 10 40
	rts		; 60

	jsr $10B0.w		; 20 B0 10
	bne  48.b		; D0 30
	brk $A0.b		; 00 A0
	brk $C0.b		; 00 C0
	jsr $70C0.w		; 20 C0 70
	ldy #$D038.w		; A0 38 D0
	trb $0EE8.w		; 1C E8 0E
	pea $0006.w		; F4 06 00
	cpy #$C080.w		; C0 80 C0
	bra -128.b		; 80 80
	jsr $D020.w		; 20 20 D0
	bpl -24.b		; 10 E8
	php		; 08
	pea $FA04.w		; F4 04 FA
	cop $14.b		; 02 14
	ora $0E34.w		; 0D 34 0E
	rol $3E00.w,X		; 3E 00 3E
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	bpl  10.b		; 10 0A
	php		; 08
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $3D10.w,X		; 3E 10 3D
	cop $3E.b		; 02 3E
	cop $3F.b		; 02 3F
	ora ($3F.b,X)		; 01 3F
	brk $1B.b		; 00 1B
	brk $09.b		; 00 09
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
	bra -64.b		; 80 C0
	jsr $00F0.w		; 20 F0 00
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	adc ($0E.b),Y		; 71 0E
	adc ($3C.b,X)		; 61 3C
	adc ($1E.b,X)		; 61 1E
	cmp $78.b,S		; C3 78
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	.db $82, $7C, $86		; 82 7C 86
	jsr ($0E86.w,X)		; FC 86 0E
	brk $3E.b		; 00 3E
	jsr $001E.w		; 20 1E 00
	jmp ($3E40.w,X)		; 7C 40 3E
	cop $7C.b		; 02 7C
	brk $F8.b		; 00 F8
	bra 120.b		; 80 78
	brk $02.b		; 00 02
	asl $03.b		; 06 03
	asl $1C07.w		; 0E 07 1C
	ora $300E18.l		; 0F 18 0E 30
	trb $0831.w		; 1C 31 08
	.db $62, $A0, $64		; 62 A0 64
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora $000E10.l,X		; 1F 10 0E 00
	bit $1820.w,X		; 3C 20 18
	brk $E0.b		; 00 E0
	tsb $18C0.w		; 0C C0 18
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	php		; 08
	beq  16.b		; F0 10
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	sty $F0.b		; 84 F0
	sty $70.b		; 84 70
	sty $78.b		; 84 78
	sty $8838.w		; 8C 38 88
	bmi -120.b		; 30 88
	bmi -120.b		; 30 88
	bvs -56.b		; 70 C8
	jmp ($7C04.w,X)		; 7C 04 7C
	tsb $F8.b		; 04 F8
	bra -16.b		; 80 F0
	bra 112.b		; 80 70
	brk $78.b		; 00 78
	php		; 08
	sei		; 78
	php		; 08
	sec		; 38
	php		; 08
	bmi -56.b		; 30 C8
	ldy #$D068.w		; A0 68 D0
	sec		; 38
	sed		; F8
	brk $B8.b		; 00 B8
	rti		; 40

	clv		; B8
	rts		; 60

	clv		; B8
	bvs 108.b		; 70 6C
	jsr $4070.w		; 20 70 40
	bpl   0.b		; 10 00
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $01.b		; 00 01
	cop $04.b		; 02 04
	phd		; 0B
	ora #$1707.w		; 09 07 17
	ora $1E1F0F.l		; 0F 0F 1F 1E
	and $765F3E.l,X		; 3F 3E 5F 76
	lda $0B0002.l,X		; BF 02 00 0B
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	brk $BF.b		; 00 BF
	brk $E0.b		; 00 E0
	bpl  24.b		; 10 18
	cpx $F4.b		; E4 F4
	plx		; FA
	plx		; FA
	jsr ($FDFA.w,X)		; FC FA FD
	jmp.w [$6FFF]		; DC FF 6F
	stz $7F8D.w,X		; 9E 8D 7F
	bpl   0.b		; 10 00
	cpx $00.b		; E4 00
	plx		; FA
	brk $FC.b		; 00 FC
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	brk $9E.b		; 00 9E
	brk $1F.b		; 00 1F
	brk $03.b		; 00 03
	asl $0C.b		; 06 0C
	cop $0D.b		; 02 0D
	ora $14.b,S		; 03 14
	phd		; 0B
	trb $09.b		; 14 09
	ora $3E02.w,X		; 1D 02 3E
	brk $32.b		; 00 32
	ora $0001.w		; 0D 01 00
	ora $02.b,S		; 03 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	cpx #$E808.w		; E0 08 E8
	php		; 08
	inx		; E8
	php		; 08
	sei		; 78
	tsb $8CF8.w		; 0C F8 8C
	bmi -124.b		; 30 84
	bcs  68.b		; B0 44
	bvs   4.b		; 70 04
	sed		; F8
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sed		; F8
	bra  -8.b		; 80 F8
	rti		; 40

	sed		; F8
	brk $7F.b		; 00 7F
	jsr $502F.w		; 20 2F 50
	and $003F40.l,X		; 3F 40 3F 00
	adc $401F50.l,X		; 7F 50 1F 40
	ora $603F40.l,X		; 1F 40 3F 60
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	jmp $0E6E5C.l		; 5C 5C 6E 0E
	and [$07.b]		; 27 07
	adc [$47.b]		; 67 47
	rol $010E.w		; 2E 0E 01
	ora ($0F.b,X)		; 01 0F
	beq  63.b		; F0 3F
	cpx #$40BF.w		; E0 BF 40
	sbc $60BF00.l,X		; FF 00 BF 60
	sta $00FF60.l,X		; 9F 60 FF 00
	sbc $000000.l,X		; FF 00 00 00
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	ora [$07.b]		; 07 07
	asl $1E6E.w		; 0E 6E 1E
	ror $0707.w,X		; 7E 07 07
	tya		; 98
	tya		; 98
	and $001F00.l,X		; 3F 00 1F 00
	and $007F00.l,X		; 3F 00 7F 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	tsb $0D0C.w		; 0C 0C 0D
	ora $1B1B.w		; 0D 1B 1B
	tas		; 1B
	tas		; 1B
	rol $36.b,X		; 36 36
	ror $76.b,X		; 76 76
	inc $6DEE.w		; EE EE 6D
	adc $83DA.w		; 6D DA 83
	jsr ($CF21.w,X)		; FC 21 CF
	and ($DE.b,X)		; 21 DE
	bmi -57.b		; 30 C7
	bmi -17.b		; 30 EF
	clc		; 18
	sbc $18.b,S		; E3 18
	sbc [$0C.b],Y		; F7 0C
	ldy $1F80.w,X		; BC 80 1F
	ora ($3E.b,X)		; 01 3E
	jsr $000F.w		; 20 0F 00
	sta $C0C790.l,X		; 9F 90 C7 C0
	cmp $E0E3C8.l		; CF C8 E3 E0
	sbc ($03.b,X)		; E1 03
	sta $03.b,S		; 83 03
	bra   1.b		; 80 01
	bra   0.b		; 80 00
	rti		; 40

	bra  96.b		; 80 60
	bra -32.b		; 80 E0
	bra  48.b		; 80 30
	rti		; 40

	brk $1F.b		; 00 1F
	ora ($1F.b,X)		; 01 1F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bcs  64.b		; B0 40
	beq  64.b		; F0 40
	bra  32.b		; 80 20
	cpy #$C020.w		; C0 20 C0
	jsr $30C0.w		; 20 C0 30
	rts		; 60

	bmi -32.b		; 30 E0
	bcs -64.b		; B0 C0
	rti		; 40

	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $E0.b		; 00 E0
	jsr $20E0.w		; 20 E0 20
	cpy #$4000.w		; C0 00 40
	brk $30.b		; 00 30
	bra -16.b		; 80 F0
	brk $E8.b		; 00 E8
	bpl -24.b		; 10 E8
	bmi 120.b		; 30 78
	jsr $2850.w		; 20 50 28
	bmi  72.b		; 30 48
	sec		; 38
	rti		; 40

	cpy #$0080.w		; C0 80 00
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	bpl   0.b		; 10 00
	brk $28.b		; 00 28
	plp		; 28
	pha		; 48
	pha		; 48
	rti		; 40

	rti		; 40

	bit $3C00.w,X		; 3C 00 3C
	php		; 08
	dec A		; 3A
	tsb $003E.w		; 0C 3E 00
	and $003F00.l,X		; 3F 00 3F 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $14.b		; 00 14
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0C0.w		; C0 C0 C0
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	cpy #$C0E0.w		; C0 E0 C0
	cpx #$C080.w		; E0 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	bra -128.b		; 80 80
	cpx #$C0F0.w		; E0 F0 C0
	bne -32.b		; D0 E0
	beq -32.b		; F0 E0
	beq -32.b		; F0 E0
	bne -32.b		; D0 E0
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpx #$C000.w		; E0 00 C0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	cpy #$A0E0.w		; C0 E0 A0
	beq  32.b		; F0 20
	beq  48.b		; F0 30
	bcs  80.b		; B0 50
	bne  32.b		; D0 20
	cpx #$E010.w		; E0 10 E0
	bpl -64.b		; 10 C0
	brk $A0.b		; 00 A0
	jsr $2020.w		; 20 20 20
	bpl  48.b		; 10 30
	brk $50.b		; 00 50
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	rts		; 60

	brk $C0.b		; 00 C0
	bpl -128.b		; 10 80
	bpl -64.b		; 10 C0
	rts		; 60

	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bvs -128.b		; 70 80
	sed		; F8
	brk $F4.b		; 00 F4
	ora $60.b		; 05 60
	brk $60.b		; 00 60
	brk $A0.b		; 00 A0
	ldy #$4040.w		; A0 40 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	tsb $0F.b		; 04 0F
	lda ($7E.b),Y		; B1 7E
	sbc [$79.b]		; E7 79
	jmp ($3BF2.w)		; 6C F2 3B
	ror $35.b,X		; 76 35
	sei		; 78
	sbc $78.b,X		; F5 78
	cpy $3E72.w		; CC 72 3E
	adc ($7E.b,X)		; 61 7E
	brk $78.b		; 00 78
	brk $F0.b		; 00 F0
	ora $72.b,S		; 03 72
	asl $7B.b		; 06 7B
	brk $7B.b		; 00 7B
	brk $71.b		; 00 71
	brk $60.b		; 00 60
	jsr $EF97.w		; 20 97 EF
	plb		; AB
	rol $84.b,X		; 36 84
	pld		; 2B
	dec $ED29.w		; CE 29 ED
	phk		; 4B
	lda $8B.b		; A5 8B
	xba		; EB
	ora [$5D.b],Y		; 17 5D
	.db $62, $6F, $60		; 62 6F 60
	dec $00.b		; C6 00
	sbc $38.b,S		; E3 38
	sbc #$B338.w		; E9 38 B3
	brk $7B.b		; 00 7B
	pha		; 48
	sbc [$10.b],Y		; F7 10
	ldx #$3E20.w		; A2 20 3E
	ora ($1E.b,X)		; 01 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sty $78.b		; 84 78
	cpy $C800.w		; CC 00 C8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $701F60.l,X		; 3F 60 1F 70
	dec $CD31.w		; CE 31 CD
	and ($ED.b,S),Y		; 33 ED
	ora ($FF.b,S),Y		; 13 FF
	ora ($FD.b,X)		; 01 FD
	cop $7F.b		; 02 7F
	ora ($0F.b,X)		; 01 0F
	ora $142626.l		; 0F 26 26 14
	ora $00.b,X		; 15 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	.db $82, $05, $85		; 82 05 85
	sbc $F8F770.l		; EF 70 F7 F8
	sbc ($F8.b,S),Y		; F3 F8
	sbc ($F8.b,S),Y		; F3 F8
	cmp $FC.b,S		; C3 FC
	sta $FC.b,S		; 83 FC
	lda $95FE.w,Y		; B9 FE 95
	lsr $67.b		; 46 67
	adc [$63.b],Y		; 77 63
	xce		; FB
	sbc ($FD.b,X)		; E1 FD
	cpx #$C0FC.w		; E0 FC C0
	cpy #$B8B8.w		; C0 B8 B8
	tsb $84.b		; 04 84
	dec A		; 3A
	cop $7F.b		; 02 7F
	brk $3F.b		; 00 3F
	brk $18.b		; 00 18
	ora [$03.b]		; 07 03
	ora $010C00.l		; 0F 00 0C 01
	tsb $0401.w		; 0C 01 04
	ora ($04.b,X)		; 01 04
	ora $081D.w,X		; 1D 1D 08
	php		; 08
	ora $03.b,S		; 03 03
	tsb $04.b		; 04 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	sbc ($0C.b),Y		; F1 0C
	xce		; FB
	asl $FC.b		; 06 FC
	cop $8D.b		; 02 8D
	sbc ($44.b,S),Y		; F3 44
	adc ($20.b,S),Y		; 73 20
	and ($90.b),Y		; 31 90
	ora $08C0.w,Y		; 19 C0 08
	sbc [$E4.b]		; E7 E4
	eor ($40.b,X)		; 41 40
	ora $02.b,S		; 03 02
	rti		; 40

	rti		; 40

	lda ($21.b,X)		; A1 21
	bne  16.b		; D0 10
	cpx #$F800.w		; E0 00 F8
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora ($1B.b)		; 12 1B
	and $003C.w,X		; 3D 3C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	ora $303F00.l,X		; 1F 00 3F 30
	adc $0C1C1C.l,X		; 7F 1C 1C 0C
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	clc		; 18
	and $001E08.l,X		; 3F 08 1E 00
	tsb $0000.w		; 0C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp $DD00.w		; CD 00 DD
	brk $99.b		; 00 99
	brk $BF.b		; 00 BF
	brk $F0.b		; 00 F0
	ora ($20.b,X)		; 01 20
	sbc ($29.b,X)		; E1 29
	sbc ($3C.b,X)		; E1 3C
	beq -119.b		; F0 89
	tyx		; BB
	sta $10BB.w,Y		; 99 BB 10
	ror $30.b,X		; 76 30
	bvs  14.b		; 70 0E
	brk $DF.b		; 00 DF
	cmp ($5E.b,X)		; C1 5E
	rti		; 40

	eor $008040.l		; 4F 40 80 00
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $A020.w		; 20 20 A0
	ldy #$0F00.w		; A0 00 0F
	ora ($1F.b,X)		; 01 1F
	brk $1E.b		; 00 1E
	cop $3E.b		; 02 3E
	ora ($3C.b,X)		; 01 3C
	ora ($7C.b,X)		; 01 7C
	ora [$7C.b]		; 07 7C
	ora $F8.b,S		; 03 F8
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora $04.b		; 05 04
	ora $14170C.l		; 0F 0C 17 14
	ora ($10.b,S),Y		; 13 10
	and $0E7828.l		; 2F 28 78 0E
	rts		; 60

	tsb $1CF0.w		; 0C F0 1C
	cpy #$E018.w		; C0 18 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	brk $60.b		; 00 60
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $0080.w		; 20 80 00
	cpy #$0040.w		; C0 40 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
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
	ora $02.b,S		; 03 02
	asl $180F.w		; 0E 0F 18
	inc A		; 1A
	and ($F0.b,S),Y		; 33 F0
	and [$F1.b]		; 27 F1
	trb $08F1.w		; 1C F1 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	ora [$00.b]		; 07 00
	ora $1C01.w		; 0D 01 1C
	tsb $08.b		; 04 08
	php		; 08
	brk $00.b		; 00 00
	and #$BDE2.w		; 29 E2 BD
	stx $F1.b		; 86 F1
	ora [$23.b]		; 07 23
	and $0FFF07.l,X		; 3F 07 FF 0F
	ora $B80361.l,X		; 1F 61 03 B8
	adc $415D.w,X		; 7D 5D 41
	sei		; 78
	brk $FC.b		; 00 FC
	ora $D9.b		; 05 D9
	tas		; 1B
	sta $87.b,S		; 83 87
	ora [$FF.b]		; 07 FF
	ora ($FF.b,X)		; 01 FF
	brk $FF.b		; 00 FF
	cpx #$3000.w		; E0 00 30
	bra -80.b		; 80 B0
	cpy #$C098.w		; C0 98 C0
	jmp.w [$CEE0]		; DC E0 CE
	cpx #$E08F.w		; E0 8F E0
	ora $4040C0.l,X		; 1F C0 40 40
	brk $C0.b		; 00 C0
	jsr $80E0.w		; 20 E0 80
	cpx #$F090.w		; E0 90 F0
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0051.w		; 20 51 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $51.b		; 00 51
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	stz $54.b		; 64 54
	tyx		; BB
	lda $00007C.l,X		; BF 7C 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stz $00.b		; 64 00
	tyx		; BB
	brk $7C.b		; 00 7C
	brk $FE.b		; 00 FE
	brk $3C.b		; 00 3C
	cop $38.b		; 02 38
	tsb $70.b		; 04 70
	tsb $71.b		; 04 71
	php		; 08
	sep #$09		; E2 09
	cmp $10.b,S		; C3 10
	cmp $30.b,S		; C3 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	bpl  32.b		; 10 20
	jsr $0638.w		; 20 38 06
	bit $5C02.w,X		; 3C 02 5C
	brk $8C.b		; 00 8C
	bpl   8.b		; 10 08
	bcc  80.b		; 90 50
	ldy #$A050.w		; A0 50 A0
	bmi -128.b		; 30 80
	tsb $04.b		; 04 04
	brk $00.b		; 00 00
	jsr $7000.w		; 20 00 70
	bpl 112.b		; 10 70
	bpl -32.b		; 10 E0
	ldy #$A0E0.w		; A0 E0 A0
	cpy #$5D80.w		; C0 80 5D
	sep #$80		; E2 80
	eor $0000.w,Y		; 59 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora $000700.l		; 0F 00 07 00
	sep #$00		; E2 00
	eor $0000.w,Y		; 59 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $CF.b		; 00 CF
	sbc $FBE77A.l,X		; FF 7A E7 FB
	jmp ($78F7.w,X)		; 7C F7 78
	lda $1DFFC2.l,X		; BF C2 FF 1D
	sbc $3DCA02.l,X		; FF 02 CA 3D
	sbc $00E700.l,X		; FF 00 E7 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $C2.b		; 00 C2
	cop $0C.b		; 02 0C
	ora $0200.w,X		; 1D 00 02
	bpl  17.b		; 10 11
	ldx $F8C7.w,Y		; BE C7 F8
	ora [$FC.b]		; 07 FC
	stx $78.b		; 86 78
	inc $FC00.w,X		; FE 00 FC
	bra  64.b		; 80 40
	rti		; 40

	bra -32.b		; 80 E0
	brk $D8.b		; 00 D8
	brk $38.b		; 00 38
	brk $F8.b		; 00 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -31.b		; 80 E1
	bra -57.b		; 80 C7
	brk $87.b		; 00 87
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $F0.b,X		; 16 F0
	ora [$70.b],Y		; 17 70
	ora $70.b,S		; 03 70
	phd		; 0B
	sec		; 38
	ora ($38.b,X)		; 01 38
	ora $1C.b		; 05 1C
	brk $1C.b		; 00 1C
	cop $0E.b		; 02 0E
	and $202F20.l		; 2F 20 2F 20
	ora $101710.l,X		; 1F 10 17 10
	ora $080B08.l		; 0F 08 0B 08
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	bra  -8.b		; 80 F8
	brk $78.b		; 00 78
	bra 124.b		; 80 7C
	iny		; C8
	jmp ($3E88.w,X)		; 7C 88 3E
	cpy $C83E.w		; CC 3E C8
	tsa		; 3B
	inc $303B.w		; EE 3B 30
	bmi -80.b		; 30 B0
	bmi -40.b		; 30 D8
	cli		; 58
	bcc  16.b		; 90 10
	pei ($14.b)		; D4 14
	bne  16.b		; D0 10
	inc $22.b		; E6 22
	cpy $00.b		; C4 00
	sta [$78.b]		; 87 78
	stx $78.b		; 86 78
	sta $31C479.l		; 8F 79 C4 31
	dec $13.b		; C6 13
	bra  19.b		; 80 13
	trb $36.b		; 14 36
	sec		; 38
	asl $282F.w,X		; 1E 2F 28
	ora $000608.l		; 0F 08 06 00
	ora $000C01.l		; 0F 01 0C 00
	asl $0812.w,X		; 1E 12 08
	brk $04.b		; 00 04
	tsb $80.b		; 04 80
	cpy #$C000.w		; C0 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
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
	ora [$02.b]		; 07 02
	ora [$03.b]		; 07 03
	ora $060F07.l		; 0F 07 0F 06
	ora $18EE0C.l,X		; 1F 0C EE 18
	cpx $F8F0.w		; EC F0 F8
	cpx #$0302.w		; E0 02 03
	ora $07.b,S		; 03 07
	asl $07.b		; 06 07
	tsb $0F.b		; 04 0F
	php		; 08
	asl $7C00.w		; 0E 00 7C
	cpx #$C0F8.w		; E0 F8 C0
	beq -15.b		; F0 F1
	brk $E0.b		; 00 E0
	brk $C2.b		; 00 C2
	brk $85.b		; 00 85
	brk $1D.b		; 00 1D
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	ora ($FE.b,X)		; 01 FE
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sta ($00.b,X)		; 81 00
	sta ($00.b,X)		; 81 00
	ora $00.b,S		; 03 00
	ora $0D.b,S		; 03 0D
	ora $5350.w		; 0D 50 53
	rti		; 40

	eor $BC.b,S		; 43 BC
	ror $FF7E.w,X		; 7E 7E FF
	ror $FEFF.w,X		; 7E FF FE
	inc $FEFC.w,X		; FE FC FE
	jmp ($38FC.w,X)		; 7C FC 38
	jmp ($9898.w,X)		; 7C 98 98
	sec		; 38
	sbc $3CFF3C.l,X		; FF 3C FF 3C
	sbc $78FF7C.l,X		; FF 7C FF 78
	sbc $30FE78.l,X		; FF 78 FE 30
	inc $FC10.w,X		; FE 10 FC
	rol $6C80.w,X		; 3E 80 6C
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$8000.w		; C0 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $B9A2.w,Y		; 59 A2 B9
	adc $DF7FFF.l,X		; 7F FF 7F DF
	adc [$BB.b]		; 67 BB
	adc $FFFD7B.l,X		; 7F 7B FD FF
	sbc $9FED.w,X		; FD ED 9F
	ldx #$7F00.w		; A2 00 7F
	brk $7F.b		; 00 7F
	brk $67.b		; 00 67
	brk $7F.b		; 00 7F
	brk $FD.b		; 00 FD
	brk $FD.b		; 00 FD
	brk $9F.b		; 00 9F
	brk $7C.b		; 00 7C
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFDFA.l,X		; FF FA FD FF
	sbc $FCFB.w,X		; FD FB FC
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $01FC00.l,X		; FF 00 FC 01
	sbc $FD01.w,X		; FD 01 FD
	brk $E3.b		; 00 E3
	bpl  99.b		; 10 63
	bpl  99.b		; 10 63
	brk $22.b		; 00 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $B0.b		; 00 B0
	brk $C8.b		; 00 C8
	rti		; 40

	sed		; F8
	bmi  -4.b		; 30 FC
	brk $7C.b		; 00 7C
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $60.b		; 00 60
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	ora ($FF.b,X)		; 01 FF
	brk $F5.b		; 00 F5
	brk $C9.b		; 00 C9
	brk $13.b		; 00 13
	brk $66.b		; 00 66
	brk $CC.b		; 00 CC
	brk $99.b		; 00 99
	brk $78.b		; 00 78
	tda		; 7B
	bra -128.b		; 80 80
	bra -118.b		; 80 8A
	ora ($37.b,X)		; 01 37
	cop $EE.b		; 02 EE
	mvp $88,$DD		; 44 DD 88
	tyx		; BB
	ora ($77.b),Y		; 11 77
	bcc -112.b		; 90 90
	cpx #$F860.w		; E0 60 F8
	sec		; 38
	clv		; B8
	php		; 08
	bit $6A00.w,X		; 3C 00 6A
	brk $CA.b		; 00 CA
	brk $DB.b		; 00 DB
	brk $00.b		; 00 00
	sed		; F8
	jsr $18F8.w		; 20 F8 18
	bit $4C00.w,X		; 3C 00 4C
	brk $C2.b		; 00 C2
	rti		; 40

	pei ($80.b)		; D4 80
	ldy $92.b,X		; B4 92
	ldx $00.b,Y		; B6 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	clc		; 18
	ora $1C.b		; 05 1C
	brk $0C.b		; 00 0C
	cop $0E.b		; 02 0E
	ora ($07.b,X)		; 01 07
	brk $07.b		; 00 07
	ora ($0E.b,X)		; 01 0E
	ora $1E.b,S		; 03 1E
	ora $000308.l		; 0F 08 03 00
	ora [$04.b]		; 07 04
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	bpl 102.b		; 10 66
	sty $C866.w		; 8C 66 C8
	adc $9C.b,S		; 63 9C
	and ($8E.b,S),Y		; 33 8E
	and ($8A.b,S),Y		; 33 8A
	and ($E4.b,S),Y		; 33 E4
	rol $C8.b,X		; 36 C8
	trb $24BC.w		; 1C BC 24
	cld		; D8
	rti		; 40

	stz $CE02.w,X		; 9E 02 CE
	cop $DC.b		; 02 DC
	bpl -20.b		; 10 EC
	jsr $00C8.w		; 20 C8 00
	cpx #$D900.w		; E0 00 D9
	brk $F3.b		; 00 F3
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $11.b		; 00 11
	and [$03.b],Y		; 37 03
	ora $010707.l		; 0F 07 07 01
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
	brk $80.b		; 00 80
	bvc   0.b		; 50 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	brk $50.b		; 00 50
	inx		; E8
	cpx #$F0F8.w		; E0 F8 F0
	sed		; F8
	cpy $B8F0.w		; CC F0 B8
	cpy $68.b		; C4 68
	bvc -40.b		; 50 D8
	rts		; 60

	inx		; E8
	bvc -24.b		; 50 E8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $C4.b		; 00 C4
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $0F.b		; 04 0F
	brk $09.b		; 00 09
	asl $1D.b,X		; 16 1D
	ora $1A.b,S		; 03 1A
	ora $05.b		; 05 05
	asl $0508.w,X		; 1E 08 05
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	asl $00.b,X		; 16 00
	ora $00.b,S		; 03 00
	ora $00.b		; 05 00
	asl $0500.w,X		; 1E 00 05
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	cop $09.b		; 02 09
	asl $31.b		; 06 31
	tsb $1962.w		; 0C 62 19
	inc $10.b		; E6 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	asl $04.b		; 06 04
	tsb $1808.w		; 0C 08 18
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	sei		; 78
	jsr ($FA00.w,X)		; FC 00 FA
	tsb $0C17.w		; 0C 17 0C
	ora $070F06.l		; 0F 06 0F 07
	ora $0FF707.l		; 0F 07 F7 0F
	sei		; 78
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $06.b		; 00 06
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $55.b		; 00 55
	tyx		; BB
	dec A		; 3A
	eor $04.b		; 45 04
	and ($03.b,S),Y		; 33 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	ora ($1E.b,X)		; 01 1E
	ora $0D.b,S		; 03 0D
	cop $BB.b		; 02 BB
	brk $45.b		; 00 45
	brk $33.b		; 00 33
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	cop $F8.b		; 02 F8
	sbc $3FFBE4.l,X		; FF E4 FB 3F
	cpy #$00FF.w		; C0 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $20DF00.l,X		; FF 00 DF 20
	sbc $00FB00.l,X		; FF 00 FB 00
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$5890.w		; E0 90 58
	ldy #$4178.w		; A0 78 41
	bmi   1.b		; 30 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $20.b		; 00 20
	brk $10.b		; 00 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $5F.b		; 00 5F
	ora $F70F7F.l		; 0F 7F 0F F7
	asl $06F9.w		; 0E F9 06
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	asl $063F.w		; 0E 3F 06
	ora $F00E00.l,X		; 1F 00 0E F0
	inc $78.b,X		; F6 78
	sei		; 78
	adc $7D79.w,Y		; 79 79 7D
	adc $F8F8.w,X		; 7D F8 F8
	ora [$0C.b]		; 07 0C
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	brk $04.b		; 00 04
	cop $06.b		; 02 06
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	clv		; B8
	eor $B8.b,S		; 43 B8
	eor $BC.b,S		; 43 BC
	lsr $BC.b		; 46 BC
	lsr $10.b		; 46 10
	lsr $10.b		; 46 10
	mvp $EC,$B8		; 44 B8 EC
	tay		; A8
	cpx $02BE.w		; EC BE 02
	ldx $B802.w,Y		; BE 02 B8
	brk $B8.b		; 00 B8
	brk $BC.b		; 00 BC
	tsb $BC.b		; 04 BC
	tsb $10.b		; 04 10
	brk $10.b		; 00 10
	brk $06.b		; 00 06
	bpl  14.b		; 10 0E
	php		; 08
	ora ($09.b,X)		; 01 09
	asl $09.b		; 06 09
	ora $000F00.l		; 0F 00 0F 00
	asl $09.b		; 06 09
	asl $0B.b		; 06 0B
	ora $000700.l		; 0F 00 07 00
	asl $0008.w		; 0E 08 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $04.b		; 00 04
	brk $70.b		; 00 70
	sty $38.b		; 84 38
	sty $3C.b		; 84 3C
	sty $7C.b		; 84 7C
	dec $78.b		; C6 78
	.db $42, $38		; 42 38
	.db $42, $3C		; 42 3C
	.db $42, $3C		; 42 3C
	.db $42, $78		; 42 78
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	brk $38.b		; 00 38
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $BE.b		; 00 BE
	jsr ($FFFC.w,X)		; FC FC FF
	jsr ($F6FF.w,X)		; FC FF F6
	sed		; F8
	cpx $F4F2.w		; EC F2 F4
	inx		; E8
	cpx $CAFA.w		; EC FA CA
	sbc $00FC.w,X		; FD FC 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sed		; F8
	brk $F2.b		; 00 F2
	brk $E8.b		; 00 E8
	brk $FA.b		; 00 FA
	brk $FD.b		; 00 FD
	brk $1C.b		; 00 1C
	sbc $FE3DCE.l		; EF CE 3D FE
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	cop $DB.b		; 02 DB
	and $EF.b		; 25 EF
	brk $3D.b		; 00 3D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$7800.w		; E0 00 78
	brk $70.b		; 00 70
	cop $42.b		; 02 42
	ora ($35.b,X)		; 01 35
	cmp $DE62.w,X		; DD 62 DE
	sbc ($DD.b,X)		; E1 DD
.INDEX 8
	sep #$9D		; E2 9D
	cpx #$9D.b		; E0 9D
	ora $5E.b,S		; 03 5E
	sta ($FC.b,X)		; 81 FC
	bra  60.b		; 80 3C
	bra   0.b		; 80 00
	adc ($80.b)		; 72 80
	pea $F081.w		; F4 81 F0
	ora $F0.b,S		; 03 F0
	cop $E2.b		; 02 E2
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	inx		; E8
	brk $E0.b		; 00 E0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	rti		; 40

	cpx #$E0.b		; E0 E0
	beq -16.b		; F0 F0
	beq -16.b		; F0 F0
	cpx #$E0.b		; E0 E0
	cpx #$E0.b		; E0 E0
	cpy #$C0.b		; C0 C0
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	cpx #$F0.b		; E0 F0
	beq -32.b		; F0 E0
	cpx #$C0.b		; E0 C0
	cpy #$10.b		; C0 10
	bpl -40.b		; 10 D8
	cld		; D8
	inx		; E8
	inx		; E8
	ora ($06.b,X)		; 01 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cop $02.b		; 02 02
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta [$40.b]		; 87 40
	lsr $AB.b		; 46 AB
	inx		; E8
	cmp [$7F.b],Y		; D7 7F
	sbc $6F.b,S		; E3 6F
	sbc ($FD.b,S),Y		; F3 FD
	tda		; 7B
	xce		; FB
	adc $7FB9.w,X		; 7D B9 7F
	rti		; 40

	brk $AB.b		; 00 AB
	brk $D7.b		; 00 D7
	brk $E3.b		; 00 E3
	brk $F3.b		; 00 F3
	brk $7B.b		; 00 7B
	brk $7D.b		; 00 7D
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	cmp $DFDF6F.l		; CF 6F DF DF
	and $FFFF3F.l,X		; 3F 3F FF FF
	sbc $FEFFFE.l,X		; FF FE FF FE
	sbc $CFFFFC.l,X		; FF FC FF CF
	brk $DF.b		; 00 DF
	brk $3F.b		; 00 3F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $06.b		; 00 06
	ora ($03.b,X)		; 01 03
	tsb $0E05.w		; 0C 05 0E
	trb $6C09.w		; 1C 09 6C
	ora ($DA.b),Y		; 11 DA
	and $B4.b,S		; 23 B4
	lsr $A8.b		; 46 A8
	jmp $0100.w		; 4C 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	asl $1C00.w		; 0E 00 1C
	brk $38.b		; 00 38
	brk $30.b		; 00 30
	brk $9F.b		; 00 9F
	sei		; 78
	lda $7F9F7F.l,X		; BF 7F 9F 7F
	iny		; C8
	and ($FE.b),Y		; 31 FE
	ora $5FBF5F.l,X		; 1F 5F BF 5F
	and $001F6F.l,X		; 3F 6F 1F 00
	sed		; F8
	ora $FF0FFF.l,X		; 1F FF 0F FF
	brk $FF.b		; 00 FF
	asl $1E7F.w,X		; 1E 7F 1E
	and $0E3F0E.l,X		; 3F 0E 3F 0E
	and $0F0007.l,X		; 3F 07 00 0F
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $04.b		; 00 04
	tsb $05.b		; 04 05
	ora $04.b		; 05 04
	tsb $0D.b		; 04 0D
	ora $1B1B.w		; 0D 1B 1B
	ora [$07.b]		; 07 07
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $65.b		; 65 65
	sta $FB9D.w,X		; 9D 9D FB
	xce		; FB
	adc ($73.b,S),Y		; 73 73
	tay		; A8
	tay		; A8
	lsr $56.b,X		; 56 56
	inc $F6.b,X		; F6 F6
	inc $01EE.w		; EE EE 01
	ora [$02.b]		; 07 02
	ora $030D05.l		; 0F 05 0D 03
	ora #$080A.w		; 09 0A 08
	asl $10.b		; 06 10
	asl $0E10.w		; 0E 10 0E
	bpl   2.b		; 10 02
	cop $05.b		; 02 05
	ora $02.b		; 05 02
	brk $0E.b		; 00 0E
	php		; 08
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $E82000.l		; 0F 00 20 E8
	bmi  -8.b		; 30 F8
	brk $F8.b		; 00 F8
	bmi  -8.b		; 30 F8
	bvc -40.b		; 50 D8
	brk $88.b		; 00 88
	plp		; 28
	dey		; 88
	bmi -124.b		; 30 84
	tya		; 98
	dey		; 88
	pha		; 48
	pha		; 48
	bvs 112.b		; 70 70
	rti		; 40

	rti		; 40

	jsr $7800.w		; 20 00 78
	php		; 08
	bvs   0.b		; 70 00
	sei		; 78
	brk $08.b		; 00 08
	ora $1C021C.l		; 0F 1C 02 1C
	cop $3C.b		; 02 3C
	cop $3C.b		; 02 3C
	cop $7C.b		; 02 7C
	cop $5C.b		; 02 5C
	jsr $30C8.w		; 20 C8 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	clc		; 18
	.db $42, $18		; 42 18
	.db $42, $3C		; 42 3C
	ror $3C.b		; 66 3C
	bit $18.b		; 24 18
	bit $10.b		; 24 10
	bit $00.b		; 24 00
	bit $00.b		; 24 00
	bit $3C.b		; 24 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $3C.b		; 00 3C
	bit $3C.b		; 24 3C
	bit $18.b		; 24 18
	brk $18.b		; 00 18
	brk $FF.b		; 00 FF
	brk $5F.b		; 00 5F
	rts		; 60

	sbc $1CF130.l		; EF 30 F1 1C
	sbc [$0C.b]		; E7 0C
	sbc $08.b,S		; E3 08
	adc [$08.b],Y		; 77 08
	adc [$08.b],Y		; 77 08
	asl $A60E.w		; 0E 0E A6
	rol $D0.b		; 26 D0
	bpl -17.b		; 10 EF
	tsb $00F3.w		; 0C F3 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	inc $FC00.w,X		; FE 00 FC
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	bmi -96.b		; 30 A0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	cpy #$60.b		; C0 60
	inx		; E8
	inx		; E8
	cpx #$E0.b		; E0 E0
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	ldy #$20.b		; A0 20
	bra   0.b		; 80 00
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
	brk $80.b		; 00 80
	ldy #$C0.b		; A0 C0
	dec $7330.w		; CE 30 73
	tsb $C24D.w		; 0C 4D C2
	ora $037E.w,X		; 1D 7E 03
	trb $0006.w		; 1C 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	beq   0.b		; F0 00
	ldy $2280.w,X		; BC 80 22
	jsl $000C0C.l		; 22 0C 0C 00
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	ora $06.b		; 05 06
	ora #$120D.w		; 09 0D 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	ora #$1200.w		; 09 00 12
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$F0.b		; E0 F0
	php		; 08
	iny		; C8
	pea $F8FC.w		; F4 FC F8
	sed		; F8
	inc $0000.w,X		; FE 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	php		; 08
	brk $F4.b		; 00 F4
	brk $F8.b		; 00 F8
	brk $FE.b		; 00 FE
	brk $88.b		; 00 88
	bvs -104.b		; 70 98
	rts		; 60

	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	tsb $3C.b		; 04 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	bpl  30.b		; 10 1E
	bmi  30.b		; 30 1E
	jsr $003E.w		; 20 3E 00
	rol $0000.w,X		; 3E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $66.b		; 00 66
	clc		; 18
	ror $18.b		; 66 18
	and $1C.b,S		; 23 1C
	and $1C.b,S		; 23 1C
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	ror $09.b,X		; 76 09
	dec $C711.w		; CE 11 C7
	adc ($06.b),Y		; 71 06
	cmp $04.b,S		; C3 04
	ora $04.b,S		; 03 04
	ora ($0E.b,X)		; 01 0E
	brk $0F.b		; 00 0F
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	bpl -95.b		; 10 A1
	and ($C2.b,X)		; 21 C2
	cmp $00.b,S		; C3 00
	cop $00.b		; 02 00
	cop $04.b		; 02 04
	ora $04.b		; 05 04
	tsb $1F.b		; 04 1F
	ldy $7D.b		; A4 7D
	stx $CC78.w		; 8E 78 CC
	eor ($D8.b,S),Y		; 53 D8
	ora [$D0.b]		; 07 D0
	ora $837D81.l		; 0F 81 7D 83
	adc ($BE.b,S),Y		; 73 BE
	mvp $0C,$04		; 44 04 0C
	asl $4F48.w		; 0E 48 4F
	bvc 124.b		; 50 7C
	brk $79.b		; 00 79
	brk $73.b		; 00 73
	ora ($07.b,X)		; 01 07
	and ($3E.b)		; 32 3E
	ora $03.b		; 05 03
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $0D0A.w		; 0D 0A 0D
	asl A		; 0A
	ora $001F10.l		; 0F 10 1F 00
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	cpy #$30.b		; C0 30
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	ldy #$40.b		; A0 40
	jsr $A0C0.w		; 20 C0 A0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $67.b		; 00 67
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $03.b		; 00 03
	ora ($05.b)		; 12 05
	ora ($04.b),Y		; 11 04
	bpl   6.b		; 10 06
	bpl  14.b		; 10 0E
	clc		; 18
	and $3D.b		; 25 3D
	ora $011D.w,X		; 1D 1D 01
	ora ($0C.b,X)		; 01 0C
	brk $0E.b		; 00 0E
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $33.b		; 00 33
	brk $3F.b		; 00 3F
	brk $FC.b		; 00 FC
	ora [$C8.b]		; 07 C8
	tsa		; 3B
	brk $F3.b		; 00 F3
	stx $F3.b,Y		; 96 F3
	stx $4EE3.w		; 8E E3 4E
	adc $22.b,S		; 63 22
	inc $E828.w		; EE 28 E8
	rep #$C2		; C2 C2
	asl $12.b,X		; 16 12
	dec $4CD2.w,X		; DE D2 4C
	rti		; 40

	jmp $009C40.l		; 5C 40 9C 00
	ora $06.b,S		; 03 06
	ora ($02.b,X)		; 01 02
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	brk $02.b		; 00 02
	ora ($06.b,X)		; 01 06
	ora ($06.b,X)		; 01 06
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	cop $02.b		; 02 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	tya		; 98
	jsl $842290.l		; 22 90 22 84
	rol $88.b		; 26 88
	bit $3C98.w		; 2C 98 3C
	bcc  60.b		; 90 3C
	bne 124.b		; D0 7C
	cpy #$7C.b		; C0 7C
	jmp.w [$DC00]		; DC 00 DC
	brk $D8.b		; 00 D8
	brk $D4.b		; 00 D4
	tsb $C0.b		; 04 C0
	brk $C8.b		; 00 C8
	php		; 08
	dey		; 88
	php		; 08
	tya		; 98
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $09.b		; 06 09
	phd		; 0B
	trb $17.b		; 14 17
	ora $2F2F1F.l		; 0F 1F 2F 2F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	brk $14.b		; 00 14
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl 124.b		; 10 7C
	bra -66.b		; 80 BE
	sei		; 78
	inc $FFFD.w,X		; FE FD FF
	inc $FFFF.w,X		; FE FF FF
	sbc $0000FF.l,X		; FF FF 00 00
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	sei		; 78
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $95.b		; 00 95
	ply		; 7A
	ror $5ABD.w,X		; 7E BD 5A
	and $1B26.w,X		; 3D 26 1B
	ora $1F02.w		; 0D 02 1F
	ora #$1719.w		; 09 19 17
	ora $710B.w,X		; 1D 0B 71
	brk $B8.b		; 00 B8
	brk $3A.b		; 00 3A
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $14.b		; 00 14
	asl A		; 0A
	asl A		; 0A
	sta $F18F37.l		; 8F 37 8F F1
	ora $00FFF0.l		; 0F F0 FF 00
	ora ($DC.b,S),Y		; 13 DC
	ora ($DE.b),Y		; 11 DE
	ora ($DE.b),Y		; 11 DE
	ora ($DC.b,S),Y		; 13 DC
	sbc [$20.b]		; E7 20
	eor ($40.b,X)		; 41 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $2C0C.w		; 2C 0C 2C
	tsb $0C2C.w		; 0C 2C 0C
	plp		; 28
	php		; 08
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rts		; 60

	bra -104.b		; 80 98
	cpx #$26.b		; E0 26
	sec		; 38
	ora #$020E.w		; 09 0E 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	asl $3D.b		; 06 3D
	cop $7F.b		; 02 7F
	and ($FE.b,X)		; 21 FE
	adc ($3E.b),Y		; 71 3E
	beq 112.b		; F0 70
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $01.b		; 02 01
	brk $00.b		; 00 00
	jsr $7161.w		; 20 61 71
	jsr $00F0.w		; 20 F0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	bra -104.b		; 80 98
	cpx #$26.b		; E0 26
	sec		; 38
	ora #$020E.w		; 09 0E 02
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	bpl  16.b		; 10 10
	tsb $04.b		; 04 04
	ora ($01.b,X)		; 01 01
	cpy #$70.b		; C0 70
	cpy #$20.b		; C0 20
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	sed		; F8
	brk $20.b		; 00 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	cpx #$E0.b		; E0 E0
	ora $011E01.l,X		; 1F 01 1E 01
	rol $3E01.w,X		; 3E 01 3E
	brk $7E.b		; 00 7E
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	tsb $0D0D.w		; 0C 0D 0D
	trb $1A1C.w		; 1C 1C 1A
	tas		; 1B
	dec A		; 3A
	tsa		; 3B
	sec		; 38
	tsa		; 3B
	trb $17.b		; 14 17
	tsb $07.b		; 04 07
	sbc $847E8C.l,X		; FF 8C 7E 84
	tda		; 7B
	bra -19.b		; 80 ED
	brk $ED.b		; 00 ED
	brk $E4.b		; 00 E4
	brk $E4.b		; 00 E4
	brk $E6.b		; 00 E6
	brk $0C.b		; 00 0C
	tsb $A5A4.w		; 0C A4 A5
	and ($35.b),Y		; 31 35
	bit $36.b		; 24 36
	lda #$A0BB.w		; A9 BB A0
	tyx		; BB
	ldy #$BB.b		; A0 BB
	ldy $BD.b		; A4 BD
	ora [$08.b],Y		; 17 08
	ora $103F10.l		; 0F 10 3F 10
	tsa		; 3B
	clc		; 18
	and $007D00.l,X		; 3F 00 7D 00
	jmp ($7800.w,X)		; 7C 00 78
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	bra  -8.b		; 80 F8
	bpl  -4.b		; 10 FC
	clc		; 18
	ror $3F18.w,X		; 7E 18 3F
	brk $1F.b		; 00 1F
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
	clc		; 18
	ora [$08.b]		; 07 08
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora [$00.b]		; 07 00
	ora $080F08.l		; 0F 08 0F 08
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	lsr $1C63.w,X		; 5E 63 1C
	and $9C.b,S		; 23 9C
	and $9C.b,S		; 23 9C
	and $9C.b,S		; 23 9C
	and $9C.b,S		; 23 9C
	and $9C.b,S		; 23 9C
	jsl $9C229C.l		; 22 9C 22 9C
	brk $DE.b		; 00 DE
	cop $DE.b		; 02 DE
	cop $DE.b		; 02 DE
	cop $DE.b		; 02 DE
	cop $DE.b		; 02 DE
	cop $DC.b		; 02 DC
	brk $DC.b		; 00 DC
	brk $03.b		; 00 03
	asl $01.b		; 06 01
	tsb $0C05.w		; 0C 05 0C
	ora [$0C.b]		; 07 0C
	ora $08.b,S		; 03 08
	ora $080E08.l		; 0F 08 0E 08
	asl $0508.w		; 0E 08 05
	tsb $07.b		; 04 07
	tsb $03.b		; 04 03
	brk $0B.b		; 00 0B
	php		; 08
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	bra 120.b		; 80 78
	bra 120.b		; 80 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	cld		; D8
	cli		; 58
	bne  80.b		; D0 50
	bne  80.b		; D0 50
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rol $7A5F.w,X		; 3E 5F 7A
	and $7DBF79.l,X		; 3F 79 BF 7D
	lda $075923.l,X		; BF 23 59 07
	and $3F01.w,Y		; 39 01 3F
	and $4B.b,X		; 35 4B
	eor $003C00.l,X		; 5F 00 3C 00
	ldx $BC02.w,Y		; BE 02 BC
	brk $58.b		; 00 58
	tsb $38.b		; 04 38
	cop $3E.b		; 02 3E
	cop $48.b		; 02 48
	brk $7F.b		; 00 7F
	sbc $87FF3F.l,X		; FF 3F FF 87
	sbc $CAE699.l,X		; FF 99 E6 CA
	ora $F3.b,X		; 15 F3
	trb $0DFB.w		; 1C FB 0D
	adc $0F.b,S		; 63 0F
	sbc $00FF00.l,X		; FF 00 FF 00
	adc $404600.l,X		; 7F 00 46 40
	sta $34.b		; 85 34
	sty $54.b,X		; 94 54
	sbc $04.b,X		; F5 04
	xce		; FB
	dey		; 88
	ora $0713.w,X		; 1D 13 07
	ora $190F.w,Y		; 19 0F 19
	ora $15.b,S		; 03 15
	ora $0D13.w,X		; 1D 13 0D
	and $1D.b,S		; 23 1D
	and $1F.b,S		; 23 1F
	adc ($10.b,X)		; 61 10
	bpl   8.b		; 10 08
	php		; 08
	brk $00.b		; 00 00
	trb $0814.w		; 1C 14 08
	brk $1A.b		; 00 1A
	cop $1A.b		; 02 1A
	cop $18.b		; 02 18
	brk $17.b		; 00 17
	cld		; D8
	ora $D01FD0.l,X		; 1F D0 1F D0
	ora [$D8.b],Y		; 17 D8
	ora ($DC.b,S),Y		; 13 DC
	ora ($DC.b,S),Y		; 13 DC
	ora ($DC.b,S),Y		; 13 DC
	ora [$D8.b]		; 07 D8
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	cpx #$C0.b		; E0 C0
	inx		; E8
	iny		; C8
	plp		; 28
	php		; 08
	plp		; 28
	php		; 08
	jsr $3800.w		; 20 00 38
	sta $208F38.l		; 8F 38 8F 20
	sta $308F20.l		; 8F 20 8F 30
	stz $9E30.w,X		; 9E 30 9E
	jsr $409E.w		; 20 9E 40
	dec $0474.w,X		; DE 74 04
	bvs   0.b		; 70 00
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	pla		; 68
	php		; 08
	rts		; 60

	brk $70.b		; 00 70
	bpl  48.b		; 10 30
	bpl  -4.b		; 10 FC
	brk $FC.b		; 00 FC
	brk $38.b		; 00 38
	brk $98.b		; 00 98
	brk $8C.b		; 00 8C
	brk $C8.b		; 00 C8
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $70.b		; 00 70
	bvs -72.b		; 70 B8
	clv		; B8
	bpl -48.b		; 10 D0
	bra -32.b		; 80 E0
	php		; 08
	sei		; 78
	bra -80.b		; 80 B0
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $3A02.w		; 1C 02 3A
	jmp $3EFD.w		; 4C FD 3E
	sbc $FEFFFE.l,X		; FF FE FF FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	jmp $3E00.w		; 4C 00 3E
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	inc $F8C7.w,X		; FE C7 F8
	sta $FC.b,S		; 83 FC
	inc $7A9C.w		; EE 9C 7A
	sty $72.b		; 84 72
	sbc $FEF5.w,X		; FD F5 FE
	sbc $00FEC6.l,X		; FF C6 FE 00
	sed		; F8
	brk $FC.b		; 00 FC
	brk $9C.b		; 00 9C
	brk $84.b		; 00 84
	brk $FD.b		; 00 FD
	brk $FE.b		; 00 FE
	brk $C6.b		; 00 C6
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $70.b		; 00 70
	bra -97.b		; 80 9F
	cpx #$26.b		; E0 26
	and $3B1937.l,X		; 3F 37 19 3B
	clc		; 18
	ora $000C.w,Y		; 19 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	asl $17.b,X		; 16 17
	ora ($19.b),Y		; 11 19
	clc		; 18
	trb $0E08.w		; 1C 08 0E
	plx		; FA
	ldy $DC.b		; A4 DC
	lda ($D8.b)		; B2 D8
	bmi -32.b		; 30 E0
	bpl -16.b		; 10 F0
	jsr $50F8.w		; 20 F8 50
	sed		; F8
	jsr $58F0.w		; 20 F0 58
	ldy $00.b		; A4 00
	lda ($00.b)		; B2 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	jsr $1020.w		; 20 20 10
	bvc   0.b		; 50 00
	ldy #$00.b		; A0 00
	cpy #$F0.b		; C0 F0
	php		; 08
	bmi -56.b		; 30 C8
	bmi -56.b		; 30 C8
	tya		; 98
	pha		; 48
	bcc  64.b		; 90 40
	bcc  68.b		; 90 44
	clv		; B8
	jmp $1CF0.w		; 4C F0 1C
	bmi   0.b		; 30 00
	bvs  64.b		; 70 40
	sei		; 78
	pha		; 48
	bvs  64.b		; 70 40
	sec		; 38
	brk $38.b		; 00 38
	brk $70.b		; 00 70
	rti		; 40

	pla		; 68
	php		; 08
	rol $1F.b		; 26 1F
	lsr $5E3F.w,X		; 5E 3F 5E
	and $331E6D.l,X		; 3F 6D 1E 33
	tsb $F00F.w		; 0C 0F F0
	lda $1CFFC1.l,X		; BF C1 FF 1C
	ora $003F00.l,X		; 1F 00 3F 00
	and $001E00.l,X		; 3F 00 1E 00
	tsb $7000.w		; 0C 00 70
	bvs  65.b		; 70 41
	eor ($0C.b,X)		; 41 0C
	asl $8671.w,X		; 1E 71 86
	cmp $86.b,X		; D5 86
	and ($86.b),Y		; 31 86
	phb		; 8B
	jmp $3FC0.w		; 4C C0 3F
	sta $E0FF7E.l		; 8F 7E FF E0
	sta $84FC78.l,X		; 9F 78 FC 84
	ply		; 7A
	jsl $34067E.l		; 22 7E 06 34
	tsb $00.b		; 04 00
	brk $0E.b		; 00 0E
	asl $E0E0.w		; 0E E0 E0
	jsr $FF20.w		; 20 20 FF
	sbc $DFFF3F.l,X		; FF 3F FF DF
	and [$FF.b]		; 27 FF
	ora $4F.b,S		; 03 4F
	sbc ($E3.b,S),Y		; F3 E3
	sbc $42FFF1.l,X		; FF F1 FF 42
	sta $00FF.w,X		; 9D FF 00
	sbc $002700.l,X		; FF 00 27 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($10.b,S),Y		; 13 10
	phd		; 0B
	php		; 08
	adc ($00.b,X)		; 61 00
	brk $C0.b		; 00 C0
	cpy #$80.b		; C0 80
	cpy #$80.b		; C0 80
	cpy #$A0.b		; C0 A0
	ldy #$D0.b		; A0 D0
	bne -24.b		; D0 E8
	sed		; F8
	pea $F4F8.w		; F4 F8 F4
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	ldy #$00.b		; A0 00
	bne   0.b		; D0 00
	inx		; E8
	brk $F4.b		; 00 F4
	brk $F4.b		; 00 F4
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora $0F.b,S		; 03 0F
	ora [$1F.b]		; 07 1F
	ora [$3F.b]		; 07 3F
	ora [$7F.b]		; 07 7F
	ora [$EB.b]		; 07 EB
	ora [$06.b],Y		; 17 06
	asl $00.b		; 06 00
	ora #$0F01.w		; 09 01 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	cop $17.b		; 02 17
	sbc $E0FFC1.l,X		; FF C1 FF E0
	inc $F8.b,X		; F6 F8
	pea $E6F8.w		; F4 F8 E6
	beq -18.b		; F0 EE
	cpy #$D7.b		; C0 D7
	dey		; 88
	sbc [$38.b],Y		; F7 38
	jmp.w [$E0DC]		; DC DC E0
	cpx #$E0.b		; E0 E0
	sed		; F8
	cpx #$F8.b		; E0 F8
	cpy #$F8.b		; C0 F8
	bra -16.b		; 80 F0
	brk $E8.b		; 00 E8
	brk $B8.b		; 00 B8
	lsr $C737.w,X		; 5E 37 C7
	tyx		; BB
	cpx $3B.b		; E4 3B
	ror $39.b,X		; 76 39
	rol $18.b		; 26 18
	trb $0000.w		; 1C 00 00
	brk $80.b		; 00 80
	brk $90.b		; 00 90
	bmi   0.b		; 30 00
	sec		; 38
	jsr $3038.w		; 20 38 30
	sec		; 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$08.b]		; 07 08
	php		; 08
	ora [$1F.b],Y		; 17 1F
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $17.b		; 00 17
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	dey		; 88
	cpy $FE30.w		; CC 30 FE
	sed		; F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $30.b		; 00 30
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	sed		; F8
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	sec		; 38
	cpy #$C0.b		; C0 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	ora [$17.b],Y		; 17 17
	ora $3E3F0E.l		; 0F 0E 3F 3E
	eor $7B3E5D.l,X		; 5F 5D 3E 7B
	bit $5D3B.w,X		; 3C 3B 5D
	rol $171D.w		; 2E 1D 17
	brk $0F.b		; 00 0F
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $5C.b		; 00 5C
	brk $1C.b		; 00 1C
	brk $78.b		; 00 78
	pea $E930.w		; F4 30 E9
	cmp ($3F.b,X)		; C1 3F
	asl $E0FE.w,X		; 1E FE E0
	cpx #$00.b		; E0 00
	beq -64.b		; F0 C0
	sed		; F8
	inx		; E8
	bvs -12.b		; 70 F4
	brk $E8.b		; 00 E8
	brk $21.b		; 00 21
	ora ($1E.b,X)		; 01 1E
	asl $E0E0.w,X		; 1E E0 E0
	cpx #$E0.b		; E0 E0
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	plp		; 28
	beq  48.b		; F0 30
	jmp.w [$AF5C]		; DC 5C AF
	ldy $DF.b		; A4 DF
	ldy $CB.b,X		; B4 CB
	ldx $7D65.w,Y		; BE 65 7D
	lda ($BF.b)		; B2 BF
	sec		; 38
	cpy #$C0.b		; C0 C0
	cpy #$C0.b		; C0 C0
	.db $82, $82, $42		; 82 82 42
	.db $42, $40		; 42 40
	rti		; 40

	cpx $64.b		; E4 64
	bmi  50.b		; 30 32
	sei		; 78
	sec		; 38
	brk $01.b		; 00 01
	asl A		; 0A
	clc		; 18
	ora $431F20.l,X		; 1F 20 1F 43
	and $873887.l,X		; 3F 87 38 87
	and $003CC0.l,X		; 3F C0 3C 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	bpl   0.b		; 10 00
	and $03.b,S		; 23 03
	eor ($07.b,X)		; 41 07
	rti		; 40

	ora $000C00.l		; 0F 00 0C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $DF.b		; 00 DF
	jsr ($F8BF.w,X)		; FC BF F8
	adc $00FFF0.l,X		; 7F F0 FF 00
	ora $000F00.l,X		; 1F 00 0F 00
	ora $000F00.l		; 0F 00 0F 00
	cld		; D8
	inc $FEB0.w,X		; FE B0 FE
	and $FB.b,S		; 23 FB
	ora [$07.b]		; 07 07
	asl $050E.w		; 0E 0E 05
	ora $03.b		; 05 03
	ora $07.b,S		; 03 07
	ora [$9C.b]		; 07 9C
	adc [$8E.b],Y		; 77 8E
	tda		; 7B
	sta [$7D.b]		; 87 7D
	sbc $1C.b,S		; E3 1C
	sbc #$EF1F.w		; E9 1F EF
	ora [$F7.b],Y		; 17 F7
	php		; 08
	jsr ($2B03.w,X)		; FC 03 2B
	and $05.b,S		; 23 05
	ora ($02.b,X)		; 01 02
	brk $07.b		; 00 07
	tsb $86.b		; 04 86
	stx $C8.b		; 86 C8
	cpy #$87.b		; C0 87
	ldy #$0C.b		; A0 0C
	jmp ($FFFE.w)		; 6C FE FF
	sbc $A7DFFF.l,X		; FF FF DF A7
	rtl		; 6B

	sta [$47.b],Y		; 97 47
	tyx		; BB
	sbc [$7B.b]		; E7 7B
	sbc [$FB.b],Y		; F7 FB
	ora ($1D.b,S),Y		; 13 1D
	sbc $00FF00.l,X		; FF 00 FF 00
	lda [$00.b]		; A7 00
	sta [$00.b]		; 87 00
	sta $00.b,S		; 83 00
	ora ($10.b,S),Y		; 13 10
	phd		; 0B
	php		; 08
	sbc #$8008.w		; E9 08 80
	brk $00.b		; 00 00
	cpy #$C0.b		; C0 C0
	bra -64.b		; 80 C0
	ldy #$A0.b		; A0 A0
	bne -48.b		; D0 D0
	cpx #$E8.b		; E0 E8
	beq  -8.b		; F0 F8
	pea $0000.w		; F4 00 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	ldy #$00.b		; A0 00
	bne   0.b		; D0 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	pea $B800.w		; F4 00 B8
	sbc $0EF71C.l,X		; FF 1C F7 0E
	xce		; FB
	sta [$79.b]		; 87 79
	cmp ($3F.b,S),Y		; D3 3F
	cmp $11EE2E.l,X		; DF 2E EE 11
	sbc $C706.w,Y		; F9 06 C7
	cmp [$0B.b]		; C7 0B
	ora $05.b,S		; 03 05
	ora ($0E.b,X)		; 01 0E
	php		; 08
	tsb $910C.w		; 0C 0C 91
	bra  14.b		; 80 0E
	rti		; 40

	clc		; 18
	cld		; D8
	bvc -32.b		; 50 E0
	rts		; 60

	clv		; B8
	clv		; B8
	lsr $BE48.w,X		; 5E 48 BE
	pla		; 68
	stx $7C.b,Y		; 96 7C
	dex		; CA
	plx		; FA
	stz $7E.b		; 64 7E
	bvs -128.b		; 70 80
	bra -128.b		; 80 80
	bra   4.b		; 80 04
	tsb $84.b		; 04 84
	sty $80.b		; 84 80
	bra -56.b		; 80 C8
	iny		; C8
	rts		; 60

	stz $F0.b		; 64 F0
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $2A.b		; 02 2A
	ora $BF58.w,X		; 1D 58 BF
	sbc $BC7F.w,X		; FD 7F BC
	adc $6E3FDE.l,X		; 7F DE 3F 6E
	sta $DCE659.l,X		; 9F 59 E6 DC
	ora $1C.b,S		; 03 1C
	brk $BD.b		; 00 BD
	ora ($7C.b,X)		; 01 7C
	brk $7E.b		; 00 7E
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $86.b		; 00 86
	bra -32.b		; 80 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
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
	brk $05.b		; 00 05
	phd		; 0B
	phd		; 0B
	ora [$07.b],Y		; 17 07
	ora $0F2F1F.l,X		; 1F 1F 2F 0F
	and $285F2A.l,X		; 3F 2A 5F 28
	eor [$2D.b],Y		; 57 2D
	ora ($0B.b,S),Y		; 13 0B
	brk $17.b		; 00 17
	brk $1F.b		; 00 1F
	brk $2F.b		; 00 2F
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	brk $54.b		; 00 54
	brk $10.b		; 00 10
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora ($0F.b,X)		; 01 0F
	ora $0F.b,S		; 03 0F
	ora [$1F.b]		; 07 1F
	ora [$3F.b]		; 07 3F
	ora [$7F.b]		; 07 7F
	ora [$EB.b]		; 07 EB
	ora [$06.b],Y		; 17 06
	asl $00.b		; 06 00
	ora #$0F01.w		; 09 01 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	cop $17.b		; 02 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $1613.w		; 0C 13 16
	and $000000.l		; 2F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $13.b		; 00 13
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bra -24.b		; 80 E8
	stz $00.b,X		; 74 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $74.b		; 00 74
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta $0DE2.w,X		; 9D E2 0D
	plb		; AB
	ora $0C63.w		; 0D 63 0C
	bpl -97.b		; 10 9F
	sbc $1F.b,S		; E3 1F
	sta $E07F7D.l,X		; 9F 7D 7F E0
	adc ($00.b,X)		; 61 00
	sbc $F508.w,Y		; F9 08 F5
	mvp $0C,$FC		; 44 FC 0C
	pla		; 68
	php		; 08
	ora $03.b,S		; 03 03
	trb $601C.w		; 1C 1C 60
	rts		; 60

	inx		; E8
	beq -48.b		; F0 D0
	inc $A6.b		; E6 A6
	dec $7898.w,X		; DE 98 78
	cpx #$E0.b		; E0 E0
	brk $E0.b		; 00 E0
	bra -16.b		; 80 F0
	bne -32.b		; D0 E0
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	dec $06.b		; C6 06
	clc		; 18
	clc		; 18
	cpx #$E0.b		; E0 E0
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	brk $00.b		; 00 00
	sbc $E0FFC1.l,X		; FF C1 FF E0
	inc $F8.b,X		; F6 F8
	pea $E6F8.w		; F4 F8 E6
	beq -18.b		; F0 EE
	cpy #$D7.b		; C0 D7
	dey		; 88
	sbc [$38.b],Y		; F7 38
	jmp.w [$E0DC]		; DC DC E0
	cpx #$E0.b		; E0 E0
	sed		; F8
	cpx #$F8.b		; E0 F8
	cpy #$F8.b		; C0 F8
	bra -16.b		; 80 F0
	brk $E8.b		; 00 E8
	brk $B8.b		; 00 B8
	lsr $C737.w,X		; 5E 37 C7
	tyx		; BB
	cpx $3B.b		; E4 3B
	ror $39.b,X		; 76 39
	rol $18.b		; 26 18
	trb $0000.w		; 1C 00 00
	brk $80.b		; 00 80
	brk $90.b		; 00 90
	bmi   0.b		; 30 00
	sec		; 38
	jsr $3038.w		; 20 38 30
	sec		; 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $18.b,S		; 03 18
	and $9B7F41.l,X		; 3F 41 7F 9B
	sbc $36FF37.l,X		; FF 37 FF 36
	sbc $7E14.w		; ED 14 7E
	brk $38.b		; 00 38
	brk $0E.b		; 00 0E
	php		; 08
	ora ($01.b,X)		; 01 01
	tas		; 1B
	tas		; 1B
	rol $37.b,X		; 36 37
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $3F.b,S		; A3 3F
	cmp $A0FFBC.l,X		; DF BC FF A0
	sbc $807F00.l,X		; FF 00 7F 80
	lda $003F00.l,X		; BF 00 3F 00
	ora $034300.l,X		; 1F 00 43 03
	stz $209C.w		; 9C 9C 20
	ldy #$1F.b		; A0 1F
	ora $139C1C.l,X		; 1F 1C 9C 13
	ora ($0F.b,S),Y		; 13 0F
	ora $000E0E.l		; 0F 0E 0E 00
	brk $00.b		; 00 00
	ora $3B.b,S		; 03 3B
	asl $67.b		; 06 67
	bpl -26.b		; 10 E6
	and ($F2.b,X)		; 21 F2
	adc ($D9.b),Y		; 71 D9
	eor $2CA8.w,X		; 5D A8 2C
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $04.b		; 05 04
	ora $18.b,S		; 03 18
	ora ($39.b,X)		; 01 39
	bvc 124.b		; 50 7C
	eor $287F.w,Y		; 59 7F 28
	ror $D827.w,X		; 7E 27 D8
	inc $D9B1.w		; EE B1 D9
	adc [$A7.b]		; 67 A7
	dec $F81F.w,X		; DE 1F F8
	adc $809FE0.l,X		; 7F E0 9F 80
	ora $486000.l,X		; 1F 00 60 48
	rti		; 40

	asl A		; 0A
	lda ($21.b,X)		; A1 21
	lsr $46.b		; 46 46
	tya		; 98
	tya		; 98
	adc ($61.b,X)		; 61 61
	sta $0E0E8F.l		; 8F 8F 0E 0E
	tya		; 98
	adc $8EF77C.l,X		; 7F 7C F7 8E
	xce		; FB
	ora [$F9.b]		; 07 F9
	cmp ($3F.b,S),Y		; D3 3F
	cmp $11EE2E.l,X		; DF 2E EE 11
	sbc $1F06.w,Y		; F9 06 1F
	ora $85636B.l,X		; 1F 6B 63 85
	sta ($0E.b,X)		; 81 0E
	php		; 08
	tsb $910C.w		; 0C 0C 91
	bra  14.b		; 80 0E
	rti		; 40

	clc		; 18
	cld		; D8
	bvc -24.b		; 50 E8
	rts		; 60

	clv		; B8
	clv		; B8
	lsr $BE48.w,X		; 5E 48 BE
	pla		; 68
	stx $7C.b,Y		; 96 7C
	dex		; CA
	plx		; FA
	stz $7E.b		; 64 7E
	bvs -128.b		; 70 80
	bra -128.b		; 80 80
	bra   4.b		; 80 04
	tsb $84.b		; 04 84
	sty $80.b		; 84 80
	bra -56.b		; 80 C8
	iny		; C8
	rts		; 60

	stz $F0.b		; 64 F0
	bvs   7.b		; 70 07
	phd		; 0B
	phd		; 0B
	ora [$1F.b],Y		; 17 1F
	ora $3F2F1F.l		; 0F 1F 2F 3F
	ora $295F3E.l,X		; 1F 3E 5F 29
	lsr $2916.w,X		; 5E 16 29
	phd		; 0B
	brk $17.b		; 00 17
	brk $0F.b		; 00 0F
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $5F.b		; 00 5F
	brk $5E.b		; 00 5E
	brk $29.b		; 00 29
	ora ($FF.b,X)		; 01 FF
	sbc $57FFB7.l,X		; FF B7 FF 57
	lda $CB0FF3.l		; AF F3 0F CB
	lda [$6B.b],Y		; B7 6B
	lda [$15.b],Y		; B7 15
	txy		; 9B
	pla		; 68
	ora $FF00FF.l		; 0F FF 00 FF
	brk $AF.b		; 00 AF
	brk $0F.b		; 00 0F
	brk $A7.b		; 00 A7
	jsr $1097.w		; 20 97 10
	sbc $80.b,S		; E3 80
	sbc ($00.b),Y		; F1 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -96.b		; 80 A0
	cpy #$F0.b		; C0 F0
	cpy #$F0.b		; C0 F0
	inx		; E8
	sed		; F8
	pea $F8F4.w		; F4 F4 F8
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	inx		; E8
	brk $F4.b		; 00 F4
	brk $F8.b		; 00 F8
	brk $74.b		; 00 74
	sed		; F8
	rts		; 60

	sed		; F8
	cld		; D8
	inc $A6.b		; E6 A6
	dec $F818.w,X		; DE 18 F8
	pla		; 68
	beq -128.b		; F0 80
	sed		; F8
	bne -32.b		; D0 E0
	sed		; F8
	brk $F8.b		; 00 F8
	brk $E0.b		; 00 E0
	brk $C6.b		; 00 C6
	asl $98.b		; 06 98
	clc		; 18
	bvs  96.b		; 70 60
	inx		; E8
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	phd		; 0B
	ora $2F1F00.l,X		; 1F 00 1F 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	phd		; 0B
	brk $00.b		; 00 00
	brk $2F.b		; 00 2F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi  -8.b		; 30 F8
	brk $F4.b		; 00 F4
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D0.b		; 00 D0
	bvc  32.b		; 50 20
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $50.b		; 00 50
	ror $7820.w,X		; 7E 20 78
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $010F00.l		; 0F 00 0F 01
	ora $070F03.l		; 0F 03 0F 07
	ora $073F07.l,X		; 1F 07 3F 07
	adc $17EB07.l,X		; 7F 07 EB 17
	tsb $000C.w		; 0C 0C 00
	ora #$0F01.w		; 09 01 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	ora $0F.b,S		; 03 0F
	cop $17.b		; 02 17
	sbc $E0FFC1.l,X		; FF C1 FF E0
	inc $F8.b,X		; F6 F8
	pea $E6F8.w		; F4 F8 E6
	beq -18.b		; F0 EE
	cpy #$D7.b		; C0 D7
	dey		; 88
	sbc [$38.b],Y		; F7 38
	jmp.w [$E0DC]		; DC DC E0
	cpx #$E0.b		; E0 E0
	sed		; F8
	cpx #$F8.b		; E0 F8
	cpy #$F8.b		; C0 F8
	bra -16.b		; 80 F0
	brk $E8.b		; 00 E8
	brk $B8.b		; 00 B8
	lsr $C737.w,X		; 5E 37 C7
	tyx		; BB
	cpx $3B.b		; E4 3B
	ror $39.b,X		; 76 39
	rol $18.b		; 26 18
	trb $0000.w		; 1C 00 00
	brk $80.b		; 00 80
	brk $90.b		; 00 90
	bmi   0.b		; 30 00
	sec		; 38
	jsr $3038.w		; 20 38 30
	sec		; 38
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	and $5D2E.w		; 2D 2E 5D
	eor $5EBF.w,X		; 5D BF 5E
	lda $115F2F.l,X		; BF 2F 5F 11
	rol $503F.w		; 2E 3F 50
	ora $002C70.l		; 0F 70 2C 00
	eor $BE01.w,X		; 5D 01 BE
	brk $BE.b		; 00 BE
	brk $5F.b		; 00 5F
	brk $2E.b		; 00 2E
	brk $40.b		; 00 40
	bpl   0.b		; 10 00
	bpl  69.b		; 10 45
	stz $0EE5.w,X		; 9E E5 0E
	tax		; AA
	ora $0F61.w		; 0D 61 0F
	ora $9B.b,X		; 15 9B
	asl $F9.b		; 06 F9
	adc $A7E7.w,Y		; 79 E7 A7
	dec $0060.w,X		; DE 60 00
	sed		; F8
	php		; 08
	sbc $44.b,X		; F5 44
	sbc $086B0C.l,X		; FF 0C 6B 08
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $0E.b,S		; 03 0E
	ora $311D18.l		; 0F 18 1D 31
	clc		; 18
	and [$00.b]		; 27 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	brk $1C.b		; 00 1C
	tsb $4B.b		; 04 4B
	asl A		; 0A
	ora $84.b,X		; 15 84
	sed		; F8
	.db $82, $ED, $08		; 82 ED 08
	cmp ($1A.b),Y		; D1 1A
	phk		; 4B
	ror $27.b,X		; 76 27
	cmp $000713.l		; CF 13 07 00
	rol $0F60.w,X		; 3E 60 0F
	bvs   7.b		; 70 07
	beq   2.b		; F0 02
	cpx #$06.b		; E0 06
	bra   6.b		; 80 06
	ora ($1F.b,X)		; 01 1F
	ora ($0F.b,X)		; 01 0F
	inc $F710.w		; EE 10 F7
	php		; 08
	sbc [$08.b],Y		; F7 08
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $02FF00.l,X		; FF 00 FF 02
	sbc $C002.w,X		; FD 02 C0
	cmp ($60.b,X)		; C1 60
	rts		; 60

	brk $00.b		; 00 00
	sbc ($F3.b,S),Y		; F3 F3
	sbc $FDFD.w,X		; FD FD FD
	sbc $7A78.w,X		; FD 78 7A
	bvs 114.b		; 70 72
	ora ($00.b,X)		; 01 00
	and [$00.b]		; 27 00
	sta [$00.b],Y		; 97 00
	wai		; CB
	brk $FB.b		; 00 FB
	brk $C6.b		; 00 C6
	brk $C1.b		; 00 C1
	brk $C1.b		; 00 C1
	brk $00.b		; 00 00
	inc $D800.w,X		; FE 00 D8
	brk $68.b		; 00 68
	brk $34.b		; 00 34
	bra -124.b		; 80 84
	bra -71.b		; 80 B9
	bra -66.b		; 80 BE
	bra -66.b		; 80 BE
	asl $0F18.w		; 0E 18 0F
	ora $1107.w,Y		; 19 07 11
	asl $11.b		; 06 11
	trb $0E31.w		; 1C 31 0E
	and $0E.b,S		; 23 0E
	and $1C.b,S		; 23 1C
	adc $07.b,S		; 63 07
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	ora ($0F.b),Y		; 11 0F
	ora ($1C.b,X)		; 01 1C
	brk $3C.b		; 00 3C
	jsr $223E.w		; 20 3E 22
	adc $AB.b,X		; 75 AB
	eor [$B3.b]		; 47 B3
	eor [$83.b]		; 47 83
	eor [$83.b]		; 47 83
	ora $87.b,S		; 03 87
	phd		; 0B
	ora [$0E.b]		; 07 0E
	ora [$07.b]		; 07 07
	asl $5750.w		; 0E 50 57
	rti		; 40

	eor [$40.b]		; 47 40
	eor $004F40.l		; 4F 40 4F 00
	ora $000F00.l		; 0F 00 0F 00
	ora $301F00.l,X		; 1F 00 1F 30
	jmp ($6810.w)		; 6C 10 68
	bpl 104.b		; 10 68
	bpl 104.b		; 10 68
	bpl 104.b		; 10 68
	bvc  40.b		; 50 28
	sei		; 78
	brk $78.b		; 00 78
	brk $18.b		; 00 18
	php		; 08
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	bmi  32.b		; 30 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	trb $081C.w		; 1C 1C 08
	trb $1808.w		; 1C 08 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	clc		; 18
	php		; 08
	sec		; 38
	php		; 08
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0F1610.l		; 0F 10 16 0F
	ora $0F170F.l,X		; 1F 0F 17 0F
	ora $170F17.l		; 0F 17 0F 17
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001700.l		; 0F 00 17 00
	ora [$00.b],Y		; 17 00
	ora ($2F.b,S),Y		; 13 2F
	adc $7F9F1F.l		; 6F 1F 9F 7F
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FEFDFF.l,X		; FF FF FD FE
	xce		; FB
	bit $002F.w,X		; 3C 2F 00
	trb $7B03.w		; 1C 03 7B
	tsb $FF.b		; 04 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $3C.b		; 00 3C
	brk $F0.b		; 00 F0
	sty $E0FF.w		; 8C FF E0
	sbc [$F8.b],Y		; F7 F8
	cmp $FFE3.w,X		; DD E3 FF
	cpy #$FE.b		; C0 FE
	cmp ($9B.b),Y		; D1 9B
	mvn $D8,$77		; 54 77 D8
	sty $6003.w		; 8C 03 60
	bra  56.b		; 80 38
	cmp ($E2.b,X)		; C1 E2
	ora ($C0.b,X)		; 01 C0
	ora ($C1.b,X)		; 01 C1
	brk $04.b		; 00 04
	adc $40.b,S		; 63 40
	eor $00.b,S		; 43 00
	brk $C0.b		; 00 C0
	brk $F8.b		; 00 F8
	brk $FF.b		; 00 FF
	cpy #$FB.b		; C0 FB
	rts		; 60

	inc $FF00.w		; EE 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	sec		; 38
	brk $C7.b		; 00 C7
	brk $F0.b		; 00 F0
	brk $FC.b		; 00 FC
	brk $F1.b		; 00 F1
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	sec		; 38
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $38.b,S		; 83 38
	sta $78.b,S		; 83 78
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$78		; C2 78
.ACCU 16
.INDEX 16
	rep #$7E		; C2 7E
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $7E.b		; 02 7E
	cop $3C.b		; 02 3C
	brk $3C.b		; 00 3C
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	and $1C3E1D.l,X		; 3F 1D 3E 1C
	and $193F1C.l,X		; 3F 1C 3F 19
	and $073E12.l,X		; 3F 12 3E 07
	bit $182F.w,X		; 3C 2F 18
	ora ($7D.b,X)		; 01 7D
	brk $7F.b		; 00 7F
	brk $7E.b		; 00 7E
	ora ($7D.b,X)		; 01 7D
	cop $7A.b		; 02 7A
	ora $74.b		; 05 74
	phd		; 0B
	pla		; 68
	ora [$70.b],Y		; 17 70
	ldx $2F83.w,Y		; BE 83 2F
	sbc ($17.b,X)		; E1 17
	sbc ($4F.b),Y		; F1 4F
	cmp ($3E.b,X)		; C1 3E
	ora $FC.b,S		; 03 FC
	asl $F1.b		; 06 F1
	clc		; 18
	wai		; CB
	bvs 124.b		; 70 7C
	brk $5E.b		; 00 5E
	rti		; 40

	rol $BE20.w		; 2E 20 BE
	bra  -4.b		; 80 FC
	brk $F8.b		; 00 F8
	ora ($E0.b,X)		; 01 E0
	ora [$80.b]		; 07 80
	ora $3EF97C.l,X		; 1F 7C F9 3E
	jsr ($BE5F.w,X)		; FC 5F BE
	and [$8F.b],Y		; 37 8F
	tas		; 1B
	ora [$E7.b]		; 07 E7
	ora $7E7E9F.l,X		; 1F 9F 7E 7E
	jsr ($FF00.w,X)		; FC 00 FF
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	trb $26.b		; 14 26
	trb $64.b		; 14 64
	sec		; 38
	jmp ($4CD8.w)		; 6C D8 4C
	cpx #$F828.w		; E0 28 F8
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	bvs  56.b		; 70 38
	jsr $2038.w		; 20 38 20
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	sed		; F8
	ora ($07.b,S),Y		; 13 07
	ora #$1803.w		; 09 03 18
	ora ($1C.b,X)		; 01 1C
	php		; 08
	jsr ($9C01.w,X)		; FC 01 9C
	ora ($8C.b,X)		; 01 8C
	brk $CC.b		; 00 CC
	cop $01.b		; 02 01
	ora $001700.l		; 0F 00 17 00
	ora [$00.b],Y		; 17 00
	tsa		; 3B
	brk $13.b		; 00 13
	brk $63.b		; 00 63
	brk $73.b		; 00 73
	rti		; 40

	adc ($7F.b,S),Y		; 73 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	cop $7F.b		; 02 7F
	asl $FD.b		; 06 FD
	dec $FEFD.w		; CE FD FE
	jmp ($7CFC.w,X)		; 7C FC 7C
	jsr ($8808.w,X)		; FC 08 88
	adc $787D.w,X		; 7D 7D 78
	ply		; 7A
	bit $B6.b,X		; 34 B6
	tsb $3CCE.w		; 0C CE 3C
	inc $FF38.w,X		; FE 38 FF
	sec		; 38
	sbc $C601C3.l,X		; FF C3 01 C6
	ora ($FB.b,X)		; 01 FB
	brk $C1.b		; 00 C1
	brk $43.b		; 00 43
	sta ($27.b,X)		; 81 27
	ora $7E.b,S		; 03 7E
	sbc [$7E.b]		; E7 7E
	sbc $803D00.l,X		; FF 00 3D 80
	lda $8480.w,Y		; B9 80 84
	brk $3E.b		; 00 3E
	brk $BD.b		; 00 BD
	brk $DB.b		; 00 DB
	brk $E7.b		; 00 E7
	brk $FF.b		; 00 FF
	bit $1862.w,X		; 3C 62 18
	.db $42, $1C		; 42 1C
	lsr $18.b		; 46 18
	lsr $18.b		; 46 18
	lsr $18.b		; 46 18
	mvp $44,$10		; 44 10 44
	sec		; 38
	jmp ($001C.w)		; 6C 1C 00
	bit $3800.w,X		; 3C 00 38
	brk $3C.b		; 00 3C
	tsb $3C.b		; 04 3C
	tsb $38.b		; 04 38
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $17.b		; 00 17
	asl $0E1F.w		; 0E 1F 0E
	asl $0C0E.w,X		; 1E 0E 0C
	asl $1C0E.w,X		; 1E 0E 1C
	asl $0E1C.w		; 0E 1C 0E
	trb $1C0C.w		; 1C 0C 1C
	brk $1F.b		; 00 1F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	sec		; 38
	rti		; 40

	bpl 104.b		; 10 68
	clc		; 18
	rti		; 40

	sec		; 38
	rti		; 40

	jmp ($7400.w,X)		; 7C 00 74
	php		; 08
	rol A		; 2A
	trb $1432.w		; 1C 32 14
	brk $00.b		; 00 00
	plp		; 28
	plp		; 28
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	php		; 08
	trb $14.b		; 14 14
	tsb $3C04.w		; 0C 04 3C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $0C.b		; 00 0C
	bpl  28.b		; 10 1C
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $3400.w		; 20 00 34
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	and $3F5C4E.l,X		; 3F 4E 5C 3F
	jmp ($5F3F.w,X)		; 7C 3F 5F
	rol $1F2E.w,X		; 3E 2E 1F
	bit $0F.b,X		; 34 0F
	ora ($0E.b),Y		; 11 0E
	ora $4E02.w		; 0D 02 4E
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0E.b		; 00 0E
	brk $02.b		; 00 02
	brk $7B.b		; 00 7B
	jsr ($FDFE.w,X)		; FC FE FD
	jsr ($FEFF.w,X)		; FC FF FE
	sbc ($36.b,X)		; E1 36
	sbc $20DF.w,Y		; F9 DF 20
	jsr ($BE03.w,X)		; FC 03 BE
	lda ($FC.b,X)		; A1 FC
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $E0.b		; 00 E0
	brk $F9.b		; 00 F9
	brk $20.b		; 00 20
	brk $3C.b		; 00 3C
	bit $ECAC.w,X		; 3C AC EC
	plx		; FA
	trb $F9.b		; 14 F9
	trb $18E5.w		; 1C E5 18
	sbc [$98.b],Y		; F7 98
	ror $9FF0.w		; 6E F0 9F
	rts		; 60

	tas		; 1B
	bra 111.b		; 80 6F
	bra -24.b		; 80 E8
	ora $E0.b,S		; 03 E0
	cop $E0.b		; 02 E0
	asl $60.b		; 06 60
	asl $00.b		; 06 00
	ora $001000.l		; 0F 00 10 00
	jmp ($1000.w,X)		; 7C 00 10
	cpy $BA20.w		; CC 20 BA
	jsr $74FD.w		; 20 FD 74
	jmp ($7270.w,X)		; 7C 70 72
	adc ($78.b),Y		; 71 78
	and ($30.b),Y		; 31 30
	ora ($CC.b,X)		; 01 CC
	brk $00.b		; 00 00
	tsa		; 3B
	brk $6D.b		; 00 6D
	brk $7E.b		; 00 7E
	brk $FF.b		; 00 FF
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $33.b		; 00 33
	bit $3CC6.w,X		; 3C C6 3C
	dec $30.b		; C6 30
	dec $73.b		; C6 73
	cpy $7B.b		; C4 7B
	cpy $8E39.w		; CC 39 8E
	and ($8C.b,S),Y		; 33 8C
	adc ($8C.b,S),Y		; 73 8C
	sei		; 78
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($3F44.w,X)		; 7C 44 3F
	ora [$33.b]		; 07 33
	ora $73.b,S		; 03 73
	ora $FB.b,S		; 03 FB
	bit #$89FB.w		; 89 FB 89
	ora $631E31.l,X		; 1F 31 1E 63
	bit $7AC6.w,X		; 3C C6 7A
	sty $1CF2.w		; 8C F2 1C
	nop		; EA
	bit $78DC.w,X		; 3C DC 78
	sta $0E78.w,X		; 9D 78 0E
	rti		; 40

	bit $7820.w,X		; 3C 20 78
	eor ($F0.b,X)		; 41 F0
	sta $E0.b,S		; 83 E0
	ora [$C0.b]		; 07 C0
	ora $801F80.l		; 0F 80 1F 80
	lda $0FF107.l,X		; BF 07 F1 0F
	adc ($0F.b,S),Y		; 73 0F
	adc [$1F.b]		; 67 1F
	lsr $1C3E.w		; 4E 3E 1C
	jmp ($7838.w,X)		; 7C 38 78
	bvs 112.b		; 70 70
	rts		; 60

	brk $7F.b		; 00 7F
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	sbc $E2F0.w,Y		; F9 F0 E2
	cmp ($80.b,X)		; C1 80
	ora [$00.b]		; 07 00
	ora $001C00.l		; 0F 00 1C 00
	sec		; 38
	brk $70.b		; 00 70
	brk $E0.b		; 00 E0
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $7F.b		; 00 7F
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	tsb $0C0E.w		; 0C 0E 0C
	asl $0E0C.w		; 0E 0C 0E
	tsb $180C.w		; 0C 0C 18
	trb $3C38.w		; 1C 38 3C
	sec		; 38
	sei		; 78
	sec		; 38
	sei		; 78
	tsb $0C1F.w		; 0C 1F 0C
	ora $081E08.l,X		; 1F 08 1E 08
	asl $7E18.w,X		; 1E 18 7E
	sec		; 38
	jsr ($FC18.w,X)		; FC 18 FC
	php		; 08
	jsr ($001F.w,X)		; FC 1F 00
	ora $001B00.l,X		; 1F 00 1B 00
	and [$00.b],Y		; 37 00
	adc $005B00.l		; 6F 00 5B 00
	rol $00.b,X		; 36 00
	asl $00.b,X		; 16 00
	asl $040E.w		; 0E 0E 04
	tsb $09.b		; 04 09
	ora $1A12.w		; 0D 12 1A
	rol $36.b		; 26 36
	ora ($25.b,X)		; 01 25
	tsb $0D.b		; 04 0D
	cop $6B.b		; 02 6B
	lda [$6F.b]		; A7 6F
	sta ($17.b,S),Y		; 93 17
	inx		; E8
	phd		; 0B
	pea $FB04.w		; F4 04 FB
	ora $FC.b,S		; 03 FC
	brk $FF.b		; 00 FF
	brk $DB.b		; 00 DB
	brk $03.b		; 00 03
	adc $087F01.l,X		; 7F 01 7F 08
	ora $938F84.l,X		; 1F 84 8F 93
	sta [$90.b],Y		; 97 90
	sta ($B4.b,S),Y		; 93 B4
	ldy $91.b,X		; B4 91
	lda $47.b,X		; B5 47
	sta $138F27.l		; 8F 27 8F 13
	eor [$B9.b]		; 47 B9
	phb		; 8B
	jmp ($BE05.w,X)		; 7C 05 BE
	cop $9F.b		; 02 9F
	ora ($CE.b,X)		; 01 CE
	brk $00.b		; 00 00
	lda $00DF00.l,X		; BF 00 DF 00
	sbc $30CF80.l		; EF 80 CF 30
	lda [$18.b],Y		; B7 18
	tad		; 5B
	php		; 08
	adc #$B180.w		; 69 80 B1
	cpy $C0D3.w		; CC D3 C0
	cmp $90DFA0.l,X		; DF A0 DF 90
	cmp $59A609.l		; CF 09 A6 59
	lsr $A6.b		; 46 A6
	bra  82.b		; 80 52
	ora ($00.b,X)		; 01 00
	sbc ($00.b,S),Y		; F3 00
	sbc $00DF00.l,X		; FF 00 DF 00
	sbc $00F700.l		; EF 00 F7 00
	sbc [$00.b]		; E7 00
	stp		; DB
	brk $AD.b		; 00 AD
	cpy #$C000.w		; C0 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$8000.w		; C0 00 80
	tsb $18.b		; 04 18
	jsr $2018.w		; 20 18 20
	clc		; 18
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	pha		; 48
	bmi  64.b		; 30 40
	bmi  64.b		; 30 40
	bmi   0.b		; 30 00
	sbc $00FE00.l,X		; FF 00 FE 00
	ror $FE00.w,X		; 7E 00 FE
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	rti		; 40

	bmi  64.b		; 30 40
	bmi  80.b		; 30 50
	jsr $2000.w		; 20 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $20.b		; 00 20
	bra  32.b		; 80 20
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	jsr $7000.w		; 20 00 70
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bne   0.b		; D0 00
	cpy #$8000.w		; C0 00 80
	rol $3E00.w		; 2E 00 3E
	brk $1E.b		; 00 1E
	brk $0E.b		; 00 0E
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
	brk $1F.b		; 00 1F
	brk $1B.b		; 00 1B
	tsb $17.b		; 04 17
	php		; 08
	ora $000F00.l,X		; 1F 00 0F 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $E8.b		; 00 E8
	brk $44.b		; 00 44
	brk $54.b		; 00 54
	brk $7C.b		; 00 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $1C.b		; 00 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	sec		; 38
	brk $38.b		; 00 38
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
	ora ($02.b,X)		; 01 02
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
	brk $F0.b		; 00 F0
	beq  14.b		; F0 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $3C.b		; 00 3C
	brk $0C.b		; 00 0C
	bra  56.b		; 80 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$1800.w		; E0 00 18
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $C4.b		; 00 C4
	jmp ($5C00.w,X)		; 7C 00 5C
	brk $90.b		; 00 90
	brk $48.b		; 00 48
	bra   0.b		; 80 00
	bne   0.b		; D0 00
	cpy #$C000.w		; C0 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $A2.b		; 00 A2
	brk $E8.b		; 00 E8
	brk $B0.b		; 00 B0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $1F30.w,X		; 1D 30 1F
	sec		; 38
	ora ($18.b,X)		; 01 18
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	ora ($73.b,X)		; 01 73
	ora ($79.b,X)		; 01 79
	brk $3C.b		; 00 3C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stp		; DB
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $FB.b		; 00 FB
	brk $6F.b		; 00 6F
	bvs  16.b		; 70 10
	asl $0E68.w,X		; 1E 68 0E
	bvs   6.b		; 70 06
	eor ($75.b),Y		; 51 75
	eor ($76.b)		; 52 76
	eor ($76.b)		; 52 76
	ora $07.b,S		; 03 07
	bcc  16.b		; 90 10
	cpx $F40C.w		; EC 0C F4
	tsb $FC.b		; 04 FC
	tsb $EF.b		; 04 EF
	tsb $FE.b		; 04 FE
	ora $BF.b,S		; 03 BF
	ora ($EF.b,X)		; 01 EF
	jsr $70B7.w		; 20 B7 70
	tas		; 1B
	sei		; 78
	ora $027C.w		; 0D 7C 02
	ror $D0C0.w,X		; 7E C0 D0
	cpy $9EC0.w		; CC C0 9E
	cpy #$001F.w		; C0 1F 00
	eor $A02740.l		; 4F 40 27 A0
	ora ($D0.b,S),Y		; 13 D0
	ora $E4.b		; 05 E4
	wai		; CB
	brk $27.b		; 00 27
	brk $17.b		; 00 17
	bra -97.b		; 80 9F
	dec $DF.b		; C6 DF
	adc $F33FE7.l		; 6F E7 3F F3
	ora $000FF9.l,X		; 1F F9 0F 00
	bit $00.b,X		; 34 00
	cld		; D8
	brk $6A.b		; 00 6A
	brk $27.b		; 00 27
	bra  15.b		; 80 0F
	cpy #$E00F.w		; C0 0F E0
	ora [$F0.b]		; 07 F0
	ora $90.b,S		; 03 90
	brk $48.b		; 00 48
	brk $2C.b		; 00 2C
	brk $1C.b		; 00 1C
	brk $94.b		; 00 94
	brk $C0.b		; 00 C0
	tya		; 98
	cpx #$F0CC.w		; E0 CC F0
	inc $00.b		; E6 00
	rts		; 60

	brk $B0.b		; 00 B0
	brk $D0.b		; 00 D0
	brk $E0.b		; 00 E0
	brk $E8.b		; 00 E8
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $18.b		; 00 18
	brk $50.b		; 00 50
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $60.b		; 00 60
	bra  48.b		; 80 30
	bra  56.b		; 80 38
	ldy #$101C.w		; A0 1C 10
	tsb $1C60.w		; 0C 60 1C
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	bra 120.b		; 80 78
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F0.b		; 00 F0
	brk $C0.b		; 00 C0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$0000.w		; E0 00 00
	brk $98.b		; 00 98
	brk $DC.b		; 00 DC
	brk $6E.b		; 00 6E
	brk $2F.b		; 00 2F
	brk $39.b		; 00 39
	brk $00.b		; 00 00
	jmp ($1800.w,X)		; 7C 00 18
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $20.b		; 00 20
	brk $90.b		; 00 90
	brk $D0.b		; 00 D0
	brk $C6.b		; 00 C6
	ldy $00.b		; A4 00
	ldy $00.b		; A4 00
	nop		; EA
	tsb $3E.b		; 04 3E
	brk $AF.b		; 00 AF
	brk $C4.b		; 00 C4
	brk $8A.b		; 00 8A
	tsb $93.b		; 04 93
	tsb $5B00.w		; 0C 00 5B
	brk $5B.b		; 00 5B
	brk $15.b		; 00 15
	brk $C5.b		; 00 C5
	brk $50.b		; 00 50
	brk $3B.b		; 00 3B
	brk $75.b		; 00 75
	brk $6C.b		; 00 6C
	dec $94.b,X		; D6 94
	bne -112.b		; D0 90
	bpl -126.b		; 10 82
	bra   6.b		; 80 06
	.db $82, $0C, $80		; 82 0C 80
	tsb $0C90.w		; 0C 90 0C
	bpl  12.b		; 10 0C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	brk $00.b		; 00 00
	brk $33.b		; 00 33
	and $816E4F.l,X		; 3F 4F 6E 81
	eor $E038C0.l,X		; 5F C0 38 E0
	eor [$27.b],Y		; 57 27
	and ($07.b,S),Y		; 33 07
	brk $00.b		; 00 00
	asl $3012.w,X		; 1E 12 30
	brk $71.b		; 00 71
	ora ($20.b,X)		; 01 20
	brk $40.b		; 00 40
	eor [$23.b]		; 47 23
	and $C70F01.l		; 2F 01 0F C7
	rol $FD1B.w,X		; 3E 1B FD
	sbc $FD02.w,Y		; F9 02 FD
	cpx #$F81D.w		; E0 1D F8
	sbc [$1E.b]		; E7 1E
	ror $BF01.w,X		; 7E 01 BF
	bra   2.b		; 80 02
	asl $6565.w		; 0E 65 65
	inc $1E02.w,X		; FE 02 1E
	brk $E6.b		; 00 E6
	cpx #$1818.w		; E0 18 18
	brk $81.b		; 00 81
	bra -64.b		; 80 C0
	sta ($7F.b,X)		; 81 7F
	cpy #$E53F.w		; C0 3F E5
	stz $8FFE.w,X		; 9E FE 8F
	inc $7F83.w,X		; FE 83 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	sta [$A0.b]		; 87 A0
	lda $10B730.l		; AF 30 B7 10
	sta [$00.b],Y		; 97 00
	brk $74.b		; 00 74
	stz $80.b,X		; 74 80
	cpy #$8060.w		; C0 60 80
	beq  64.b		; F0 40
	inx		; E8
	eor [$E4.b]		; 47 E4
	eor $B4.b,S		; 43 B4
	rti		; 40

	ror $C580.w,X		; 7E 80 C5
	brk $00.b		; 00 00
	and $001F00.l,X		; 3F 00 1F 00
	eor $005700.l		; 4F 00 57 00
	tad		; 5B
	brk $4B.b		; 00 4B
	brk $81.b		; 00 81
	brk $3A.b		; 00 3A
	cpy #$3000.w		; C0 00 30
	brk $58.b		; 00 58
	jsr $10AC.w		; 20 AC 10
	ror A		; 6A
	bcc 105.b		; 90 69
	bcc  61.b		; 90 3D
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $00CF00.l,X		; FF 00 CF 00
	lda [$00.b]		; A7 00
	cmp ($00.b,S),Y		; D3 00
	pei ($00.b)		; D4 00
	dec $00.b,X		; D6 00
	cmp ($00.b)		; D2 00
	jsr $3000.w		; 20 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $007D00.l,X		; 7F 00 7D 00
	tsa		; 3B
	brk $32.b		; 00 32
	brk $26.b		; 00 26
	brk $4E.b		; 00 4E
	brk $8E.b		; 00 8E
	brk $DE.b		; 00 DE
	brk $3C.b		; 00 3C
	bit $3A38.w,X		; 3C 38 3A
	ora ($16.b)		; 12 16
	brk $0D.b		; 00 0D
	tsb $1D.b		; 04 1D
	asl A		; 0A
	tsa		; 3B
	asl A		; 0A
	tda		; 7B
	asl $37.b,X		; 16 37
	eor $6726DF.l		; 4F DF 26 67
	phx		; DA
	tsa		; 3B
	pea $FA0C.w		; F4 0C FA
	ora [$FC.b]		; 07 FC
	ora $EF.b,S		; 03 EF
	brk $F3.b		; 00 F3
	brk $07.b		; 00 07
	sbc $0AFF06.l,X		; FF 06 FF 0A
	and $020F04.l,X		; 3F 04 0F 02
	ora [$30.b]		; 07 30
	and ($48.b,S),Y		; 33 48
	cli		; 58
	eor ($5E.b)		; 52 5E
	rol $6D81.w,X		; 3E 81 6D
	tsb $0E76.w		; 0C 76 0E
	sei		; 78
	bra 127.b		; 80 7F
	bra  -1.b		; 80 FF
	ora $E61CFC.l		; 0F FC 1C E6
	asl $C100.w,X		; 1E 00 C1
	tsb $009F.w		; 0C 9F 00
	sta $008700.l		; 8F 00 87 00
	bra   0.b		; 80 00
	brk $03.b		; 00 03
	brk $09.b		; 00 09
	php		; 08
	sbc $E676C0.l,X		; FF C0 76 E6
	tyx		; BB
	adc [$5C.b]		; 67 5C
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	sbc $7E0706.l,X		; FF 06 07 7E
	brk $C0.b		; 00 C0
	cpy #$EF60.w		; C0 60 EF
	jsr $00E7.w		; 20 E7 00
	sbc $00.b,S		; E3 00
	brk $E0.b		; 00 E0
	cpx #$01F9.w		; E0 F9 01
	sbc $E07400.l,X		; FF 00 74 E0
	lda $315C70.l,X		; BF 70 5C 31
	and $00FF00.l		; 2F 00 FF 00
	beq   0.b		; F0 00
	ora $FC.b,S		; 03 FC
	sta $E800FF.l,X		; 9F FF 00 E8
	brk $F0.b		; 00 F0
	brk $F3.b		; 00 F3
	brk $F1.b		; 00 F1
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bra -65.b		; 80 BF
	rti		; 40

	eor $E40038.l,X		; 5F 38 00 E4
	clc		; 18
	ora ($8C.b)		; 12 8C
	asl A		; 0A
	cpy $02.b		; C4 02
	brk $7E.b		; 00 7E
	brk $C0.b		; 00 C0
	brk $6F.b		; 00 6F
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	sec		; 38
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	asl $1F00.w		; 0E 00 1F
	tsb $0F.b		; 04 0F
	asl $1F0F.w,X		; 1E 0F 1F
	sbc $FCFF1E.l		; EF 1E FF FC
	sbc $F7FF.w,X		; FD FF F7
	xce		; FB
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	asl $1F00.w,X		; 1E 00 1F
	brk $1E.b		; 00 1E
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	bra -121.b		; 80 87
	brk $FB.b		; 00 FB
	tsb $FE.b		; 04 FE
	adc $FEFF.w,Y		; 79 FF FE
	sbc $FEFDFF.l,X		; FF FF FD FE
	brk $00.b		; 00 00
	bra   2.b		; 80 02
	brk $0F.b		; 00 0F
	tsb $03.b		; 04 03
	adc $C600.w,Y		; 79 00 C6
	sec		; 38
	lda ($4C.b,S),Y		; B3 4C
	inc $0000.w,X		; FE 00 00
	brk $81.b		; 00 81
	brk $C3.b		; 00 C3
	brk $FC.b		; 00 FC
	brk $FF.b		; 00 FF
	brk $BF.b		; 00 BF
	jmp $DEA65F.l		; 5C 5F A6 DE
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	brk $3C.b		; 00 3C
	rti		; 40

	and $201FA0.l,X		; 3F A0 1F 20
	ora $080311.l,X		; 1F 11 03 08
	ora ($01.b,X)		; 01 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	ora $000700.l		; 0F 00 07 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $06.b		; 02 06
	asl $06.b		; 06 06
	asl $00.b		; 06 00
	brk $C7.b		; 00 C7
	cpy #$FC3D.w		; C0 3D FC
	and $3F9CFE.l,X		; 3F FE 9C 3F
	cpy #$030E.w		; C0 0E 03
	bmi -113.b		; 30 8F
	bmi -49.b		; 30 CF
	sec		; 38
	cpy #$38F8.w		; C0 F8 38
	inc $FE1C.w,X		; FE 1C FE
	tsb $007F.w		; 0C 7F 00
	and $03FC00.l,X		; 3F 00 FC 03
	adc ($00.b,S),Y		; 73 00
	sec		; 38
	sbc $04FE00.l,X		; FF 00 FE 04
	xce		; FB
	ora $FE.b		; 05 FE
	ora ($FE.b,X)		; 01 FE
	ora ($FD.b,X)		; 01 FD
	brk $D6.b		; 00 D6
	php		; 08
	and [$9C.b]		; 27 9C
	plx		; FA
	plx		; FA
	sbc ($F7.b)		; F2 F7
	sbc ($F7.b)		; F2 F7
	stz $75.b,X		; 74 75
	jmp ($006D.w)		; 6C 6D 00
	cop $80.b		; 02 80
	lda #$DC00.w		; A9 00 DC
	.db $82, $00, $86		; 82 00 86
	cop $84.b		; 02 84
	cop $45.b		; 02 45
	bra  73.b		; 80 49
	brk $FF.b		; 00 FF
	brk $2E.b		; 00 2E
	brk $D7.b		; 00 D7
	brk $00.b		; 00 00
	adc $7B00.w,X		; 7D 00 7B
	brk $7B.b		; 00 7B
	brk $BA.b		; 00 BA
	brk $B6.b		; 00 B6
	brk $01.b		; 00 01
	brk $D7.b		; 00 D7
	brk $2E.b		; 00 2E
	sbc ($00.b),Y		; F1 00
	cpx #$2100.w		; E0 00 21
	bra  33.b		; 80 21
	cpy #$8071.w		; C0 71 80
	cmp ($00.b)		; D2 00
	adc $00EA00.l,X		; 7F 00 EA 00
	brk $0E.b		; 00 0E
	brk $1F.b		; 00 1F
	brk $DE.b		; 00 DE
	brk $DE.b		; 00 DE
	brk $EE.b		; 00 EE
	brk $ED.b		; 00 ED
	brk $80.b		; 00 80
	brk $14.b		; 00 14
	rti		; 40

	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	rti		; 40

	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($3D00.w,X)		; 7C 00 3D
	brk $1D.b		; 00 1D
	brk $0F.b		; 00 0F
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ora [$0C.b],Y		; 17 0C
	asl $0E0C.w		; 0E 0C 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda $9900.w,Y		; B9 00 99
	brk $8E.b		; 00 8E
	ora ($9C.b,X)		; 01 9C
	ora $B8.b,S		; 03 B8
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $29.b		; 00 29
	adc $84EE88.l		; 6F 88 EE 84
	pea $F191.w		; F4 91 F1
	lda $E3.b,S		; A3 E3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($7F.b,X)		; 81 7F
	pla		; 68
	sta $BE037A.l		; 8F 7A 03 BE
	bra  95.b		; 80 5F
	cpy #$E027.w		; C0 27 E0
	ora #$02F8.w		; 09 F8 02
	rol $0606.w,X		; 3E 06 06
	bvs   0.b		; 70 00
	sbc $7F01.w,X		; FD 01 7F
	brk $BF.b		; 00 BF
	bra -33.b		; 80 DF
	cpy #$3037.w		; C0 37 30
	ora $04.b		; 05 04
	sta $FF7C80.l,X		; 9F 80 7C FF
	ora ($FE.b,X)		; 01 FE
	sta $FC.b,S		; 83 FC
	ldx $38.b		; A6 38
	cmp ($1D.b),Y		; D1 1D
	inx		; E8
	ora $7F0774.l		; 0F 74 07 7F
	brk $81.b		; 00 81
	sta ($3B.b,X)		; 81 3B
	dec A		; 3A
	eor [$44.b]		; 47 44
	cmp $04E608.l		; CF 08 E6 04
	sbc ($03.b,S),Y		; F3 03
	sbc $4F01.w,Y		; F9 01 4F
	adc $AD30AE.l,X		; 7F AE 30 AD
	bmi  67.b		; 30 43
	adc ($97.b),Y		; 71 97
	sbc $2A.b,S		; E3 2A
	sbc ($75.b),Y		; F1 75
	sed		; F8
	dec A		; 3A
	jsr ($2FA0.w,X)		; FC A0 2F
	cpy #$C00F.w		; C0 0F C0
	ora $402FA0.l		; 0F A0 2F 40
	eor $00BF80.l,X		; 5F 80 BF 00
	adc $B0FF00.l,X		; 7F 00 FF B0
	cmp [$D4.b]		; C7 D4
	adc $D0.b,S		; 63 D0
	cpx #$C0B0.w		; E0 B0 C0
	rts		; 60

	bra -56.b		; 80 C8
	bpl -124.b		; 10 84
	sec		; 38
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $03.b		; 00 03
	ora ($02.b,X)		; 01 02
	brk $01.b		; 00 01
	ora ($06.b,X)		; 01 06
	ora [$08.b]		; 07 08
	php		; 08
	ora [$08.b]		; 07 08
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	brk $06.b		; 00 06
	brk $08.b		; 00 08
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	sbc $7BFFF7.l,X		; FF F7 FF 7B
	sbc $E7FF77.l,X		; FF 77 FF E7
	and $33DF2B.l,X		; 3F 2B DF 33
	ora $FF03FD.l		; 0F FD 03 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $3F.b		; 00 3F
	brk $DF.b		; 00 DF
	brk $0F.b		; 00 0F
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	jsr ($FDFF.w,X)		; FC FF FD
	cmp $B7E5.w,Y		; D9 E5 B7
	cmp $C1BF.w		; CD BF C1
	sbc $F1CED1.l		; EF D1 CE F1
	sta $00FCF9.l		; 8F F9 FC 00
	jsr ($E000.w,X)		; FC 00 E0
	asl $C4.b		; 06 C4
	tsb $CE.b		; 04 CE
	brk $CE.b		; 00 CE
	brk $EE.b		; 00 EE
	brk $C6.b		; 00 C6
	brk $DF.b		; 00 DF
	jsr $609F.w		; 20 9F 60
	ldy $7B42.w,X		; BC 42 7B
	.db $82, $9F, $47		; 82 9F 47
	lda [$C7.b],Y		; B7 C7
	adc [$87.b]		; 67 87
	eor [$83.b]		; 47 83
	jsr $600E.w		; 20 0E 60
	asl $0340.w		; 0E 40 03
	brk $06.b		; 00 06
	bra  39.b		; 80 27
	brk $2F.b		; 00 2F
	brk $7F.b		; 00 7F
	brk $7F.b		; 00 7F
	brk $00.b		; 00 00
	cpy #$6000.w		; C0 00 60
	brk $30.b		; 00 30
	brk $1F.b		; 00 1F
	brk $D0.b		; 00 D0
	brk $A0.b		; 00 A0
	ora [$E0.b]		; 07 E0
	ora #$0000.w		; 09 00 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $2F.b		; 00 2F
	brk $DF.b		; 00 DF
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$3000.w		; C0 00 30
	brk $08.b		; 00 08
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	jsr $C800.w		; 20 00 C8
	brk $F4.b		; 00 F4
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	phd		; 0B
	sec		; 38
	phb		; 8B
	ora $C0.b,S		; 03 C0
	and $000000.l,X		; 3F 00 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($05.b,X)		; 01 05
	tsb $17.b		; 04 17
	bpl 124.b		; 10 7C
	brk $30.b		; 00 30
	bmi   0.b		; 30 00
	ora $2F3F00.l		; 0F 00 3F 2F
	cpx #$80BF.w		; E0 BF 80
	sbc ($03.b,S),Y		; F3 03
	bcs  63.b		; B0 3F
	ora $FE.b		; 05 FE
	sei		; 78
	bcc   1.b		; 90 01
	ora ($07.b,X)		; 01 07
	ora [$5F.b]		; 07 5F
	rti		; 40

	adc $00FC00.l,X		; 7F 00 FC 00
	cpy $C00C.w		; CC 0C C0
	cmp [$00.b]		; C7 00
	ora [$BA.b]		; 07 BA
	sta $2C.b,S		; 83 2C
	sbc ($FC.b,X)		; E1 FC
	ora [$E9.b]		; 07 E9
	ora $5EFE01.l		; 0F 01 FE 5E
	cpx #$00E0.w		; E0 E0 00
	rol $7C01.w,X		; 3E 01 7C
	brk $5E.b		; 00 5E
	rti		; 40

	plx		; FA
	cop $F4.b		; 02 F4
	ora $C0.b		; 05 C0
	cmp $00.b,S		; C3 00
	adc $00FF00.l,X		; 7F 00 FF 00
	wai		; CB
	cmp $B63E.w,X		; DD 3E B6
	ora $F6FCFF.l		; 0F FF FC F6
	sed		; F8
	cpx #$2101.w		; E0 01 21
	asl $7088.w,X		; 1E 88 70
	bra   0.b		; 80 00
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	and ($0E.b),Y		; 31 0E
	php		; 08
	ora [$02.b]		; 07 02
	ora ($00.b,X)		; 01 00
	sbc $80FC02.l,X		; FF 02 FC 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	beq   0.b		; F0 00
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $05.b		; 00 05
	cop $0C.b		; 02 0C
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	ora ($02.b,X)		; 01 02
	brk $CF.b		; 00 CF
	jsr $4897.w		; 20 97 48
	inx		; E8
	bpl 112.b		; 10 70
	bra  97.b		; 80 61
	brk $C3.b		; 00 C3
	brk $86.b		; 00 86
	ora ($07.b,X)		; 01 07
	ora ($3C.b,X)		; 01 3C
	jsr $4878.w		; 20 78 48
	bpl  16.b		; 10 10
	bra -128.b		; 80 80
	cpy #$0000.w		; C0 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora ($B7.b,X)		; 01 B7
	jmp $18EF.w		; 4C EF 18
	sbc $00F900.l,X		; FF 00 F9 00
	lda ($60.b),Y		; B1 60
	cpx #$C000.w		; E0 00 C0
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	trb $3C00.w		; 1C 00 3C
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cmp $00FB00.l,X		; DF 00 FB 00
	sbc $02.b,X		; F5 02
	lda $AE00.w,X		; BD 00 AE
	brk $F4.b		; 00 F4
	php		; 08
	clv		; B8
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	jsr $0600.w		; 20 00 06
	brk $0E.b		; 00 0E
	brk $02.b		; 00 02
	brk $10.b		; 00 10
	brk $18.b		; 00 18
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	cpx #$F000.w		; E0 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $000800.l,X		; 1F 00 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	iny		; C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $10C0.w		; 20 C0 10
	cpx #$1008.w		; E0 08 10
	php		; 08
	bmi  16.b		; 30 10
	rts		; 60

	jsr $00C0.w		; 20 C0 00
	cpx #$F800.w		; E0 00 F8
	brk $FC.b		; 00 FC
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sed		; F8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
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
	ora $023D00.l		; 0F 00 3D 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	inx		; E8
	brk $C8.b		; 00 C8
	brk $D8.b		; 00 D8
	brk $B3.b		; 00 B3
	brk $C6.b		; 00 C6
	rti		; 40

	dec $01.b		; C6 01
	tsb $01.b		; 04 01
	bra   1.b		; 80 01
	brk $17.b		; 00 17
	brk $B7.b		; 00 B7
	brk $A7.b		; 00 A7
	brk $CC.b		; 00 CC
	brk $F9.b		; 00 F9
	brk $F9.b		; 00 F9
	brk $FB.b		; 00 FB
	brk $FF.b		; 00 FF
	sec		; 38
	brk $7A.b		; 00 7A
	brk $52.b		; 00 52
	brk $96.b		; 00 96
	brk $4C.b		; 00 4C
	bra   0.b		; 80 00
	bne   0.b		; D0 00
	cpy #$C000.w		; C0 00 C0
	brk $C4.b		; 00 C4
	brk $84.b		; 00 84
	brk $AC.b		; 00 AC
	brk $E8.b		; 00 E8
	brk $B0.b		; 00 B0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	sec		; 38
	brk $30.b		; 00 30
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	php		; 08
	sec		; 38
	brk $30.b		; 00 30
	brk $20.b		; 00 20
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
	asl $1F11.w		; 0E 11 1F
	jsr $5F3F.w		; 20 3F 5F
	sbc $FF7F3F.l,X		; FF 3F 7F FF
	inc $FFFF.w,X		; FE FF FF
	inc $FFFC.w,X		; FE FC FF
	ora ($00.b),Y		; 11 00
	jsr $5F00.w		; 20 00 5F
	brk $2F.b		; 00 2F
	bpl -49.b		; 10 CF
	bmi -125.b		; 30 83
	jmp ($9866.w,X)		; 7C 66 98
	inc $4000.w,X		; FE 00 40
	ldy #$00F0.w		; A0 F0 00
	sed		; F8
	rts		; 60

	clv		; B8
	pea $FABC.w		; F4 BC FA
	dec $2E3C.w,X		; DE 3C 2E
	jmp.w [$FCCE]		; DC CE FC
	ldy #$0000.w		; A0 00 00
	brk $60.b		; 00 60
	brk $F4.b		; 00 F4
	brk $F2.b		; 00 F2
	php		; 08
	sec		; 38
	tsb $18.b		; 04 18
	tsb $3C.b		; 04 3C
	jsr $837C.w		; 20 7C 83
	inc $FF00.w,X		; FE 00 FF
	cpy #$60FF.w		; C0 FF 60
	sbc $00FF20.l,X		; FF 20 FF 00
	sbc $106F10.l		; EF 10 6F 10
	tya		; 98
	clc		; 18
	and $463C.w,X		; 3D 3C 46
	dec $20.b		; C6 20
	cpx #$6E0E.w		; E0 0E 6E
	sta $37872F.l		; 8F 2F 87 37
	sta [$37.b]		; 87 37
	sed		; F8
	brk $B8.b		; 00 B8
	rti		; 40

	bit $9E00.w,X		; 3C 00 9E
	rts		; 60

	inc $DF00.w,X		; FE 00 DF
	jsr $00FF.w		; 20 FF 00
	inc $3000.w,X		; FE 00 30
	bmi -48.b		; 30 D0
	bvc -64.b		; 50 C0
	brk $60.b		; 00 60
	rts		; 60

	tsb $8C0C.w		; 0C 0C 8C
	cpx $6C0C.w		; EC 0C 6C
	tsb $030C.w		; 0C 0C 03
	clc		; 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora ($04.b,X)		; 01 04
	ora $06.b,S		; 03 06
	brk $02.b		; 00 02
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	pha		; 48
	bvs -96.b		; 70 A0
	sec		; 38
	cpy #$F018.w		; C0 18 F0
	clc		; 18
	inx		; E8
	tsb $04F0.w		; 0C F0 04
	jsr ($B804.w,X)		; FC 04 B8
	.db $82, $A0, $20		; 82 A0 20
	cpy #$F000.w		; C0 00 F0
	bpl -32.b		; 10 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $000F00.l		; 0F 00 0F 00
	ora $001F00.l		; 0F 00 1F 00
	ora $011F00.l,X		; 1F 00 1F 01
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	brk $3E.b		; 00 3E
	sbc $18.b,S		; E3 18
.ACCU 16
.INDEX 16
	rep #$7C		; C2 7C
	dec $30.b		; C6 30
	sty $F8.b		; 84 F8
	sty $0860.w		; 8C 60 08
	bvs  24.b		; 70 18
	cpy #$9C10.w		; C0 10 9C
	bra 126.b		; 80 7E
	.db $42, $38		; 42 38
	brk $FC.b		; 00 FC
	sty $70.b		; 84 70
	brk $F8.b		; 00 F8
	php		; 08
	cpx #$F000.w		; E0 00 F0
	bpl  -1.b		; 10 FF
	sta $FF08E1.l		; 8F E1 08 FF
	brk $FF.b		; 00 FF
	brk $7D.b		; 00 7D
	brk $37.b		; 00 37
	brk $6B.b		; 00 6B
	brk $DB.b		; 00 DB
	brk $0F.b		; 00 0F
	ora $001E00.l		; 0F 00 1E 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	asl A		; 0A
	cop $16.b		; 02 16
	ora ($36.b)		; 12 36
	brk $80.b		; 00 80
	inc $F91C.w,X		; FE 1C F9
	asl A		; 0A
	sbc $FF0E.w,X		; FD 0E FF
	tsb $BF.b		; 04 BF
	brk $AD.b		; 00 AD
	brk $2D.b		; 00 2D
	brk $00.b		; 00 00
	sbc $001D1C.l,X		; FF 1C 1D 00
	asl $0E04.w		; 0E 04 0E
	rti		; 40

	mvp $52,$12		; 44 12 52
	php		; 08
	phy		; 5A
	ora #$17DB.w		; 09 DB 17
	ora $051E.w		; 0D 1E 05
	asl $1E01.w,X		; 1E 01 1E
	ora ($3F.b,X)		; 01 3F
	brk $33.b		; 00 33
	tsb $0C37.w		; 0C 37 0C
	and ($0A.b),Y		; 31 0A
	cop $00.b		; 02 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $330A.w		; 0E 0A 33
	asl A		; 0A
	bmi   9.b		; 30 09
	rol $1F00.w,X		; 3E 00 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $0D.b		; 00 0D
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	php		; 08
	ora $000709.l		; 0F 09 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$C000.w		; C0 00 C0
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $7C.b		; 00 7C
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
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	ora [$07.b]		; 07 07
	ora $07.b,S		; 03 07
	phd		; 0B
	ora $0B.b		; 05 0B
	ora ($0F.b,X)		; 01 0F
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	phd		; 0B
	brk $0B.b		; 00 0B
	brk $0F.b		; 00 0F
	brk $0F.b		; 00 0F
	ora ($17.b,S),Y		; 13 17
	and $1F1F2F.l		; 2F 2F 1F 1F
	and $0B0F17.l		; 2F 17 0F 0B
	ora [$06.b],Y		; 17 06
	ora #$0403.w		; 09 03 04
	ora ($01.b)		; 12 01
	bit $1803.w		; 2C 03 18
	ora [$2C.b]		; 07 2C
	ora $0E.b,S		; 03 0E
	ora ($17.b,X)		; 01 17
	brk $09.b		; 00 09
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	ora $07.b		; 05 07
	brk $04.b		; 00 04
	cop $02.b		; 02 02
	asl $01.b		; 06 01
	tsb $01.b		; 04 01
	tsb $03.b		; 04 03
	php		; 08
	asl $08.b		; 06 08
	tsb $03.b		; 04 03
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora $F8F708.l		; 0F 08 F7 F8
	sbc #$E7D4.w		; E9 D4 E7
	jmp.w [$F8CF]		; DC CF F8
	sbc $F8.b,S		; E3 F8
	sbc ($FC.b,X)		; E1 FC
	cmp ($FF.b,X)		; C1 FF
	tya		; 98
	sbc [$F8.b]		; E7 F8
	brk $D0.b		; 00 D0
	asl $D4.b,X		; 16 D4
	ora $F7.b,X		; 15 F7
	bpl 111.b		; 10 6F
	dey		; 88
	sbc [$04.b],Y		; F7 04
	plx		; FA
	cop $E0.b		; 02 E0
	brk $DC.b		; 00 DC
	nop		; EA
	cpx $F440.w		; EC 40 F4
	pha		; 48
	cmp ($6C.b)		; D2 6C
	eor ($6C.b)		; 52 6C
	lda ($4C.b)		; B2 4C
	stz $98.b		; 64 98
	sed		; F8
	brk $0A.b		; 00 0A
	jsr $1080.w		; 20 80 10
	dey		; 88
	jsr $20AC.w		; 20 AC 20
	sty $8C80.w		; 8C 80 8C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	bra  63.b		; 80 3F
	bra  63.b		; 80 3F
	bra  31.b		; 80 1F
	ora ($0C.b,X)		; 01 0C
	brk $C3.b		; 00 C3
	ora [$EF.b]		; 07 EF
	ora $103FFF.l,X		; 1F FF 3F 10
	bmi -113.b		; 30 8F
	sta $001E16.l,X		; 9F 16 1E 00
	ora #$0300.w		; 09 00 03
	brk $3F.b		; 00 3F
	tsb $1F.b		; 04 1F
	bit $FE3F.w,X		; 3C 3F FE
	brk $FE.b		; 00 FE
	jsr $F0FF.w		; 20 FF F0
	asl $5309.w		; 0E 09 53
	sbc ($EB.b),Y		; F1 EB
	sbc #$E9EB.w		; E9 EB E9
	sbc $E0.b,S		; E3 E0
	bra -128.b		; 80 80
	tsb $242C.w		; 0C 2C 24
	sbc $00.b,X		; F5 00
	xce		; FB
	bpl  -3.b		; 10 FD
	cmp ($FD.b,X)		; C1 FD
	adc ($FD.b,X)		; 61 FD
	rti		; 40

	sbc $0300.w,X		; FD 00 03
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($5CC2.w,X)		; 7C C2 5C
.ACCU 16
.INDEX 16
	rep #$3E		; C2 3E
	sbc $0C.b,S		; E3 0C
	sbc ($1E.b,X)		; E1 1E
	sbc ($0E.b),Y		; F1 0E
	sbc ($1C.b),Y		; F1 1C
	sbc ($0C.b),Y		; F1 0C
	sbc ($BC.b,X)		; E1 BC
	bra  62.b		; 80 3E
	cop $5C.b		; 02 5C
	rti		; 40

	ldx $AFA0.w,Y		; BE A0 AF
	lda ($DF.b,X)		; A1 DF
	cmp ($CF.b),Y		; D1 CF
	cmp ($BE.b,X)		; C1 BE
	ldy #$1E00.w		; A0 00 1E
	brk $1E.b		; 00 1E
	ora $1E.b,S		; 03 1E
	ora $1C.b,S		; 03 1C
	ora $1C.b,S		; 03 1C
	ora $1C.b,S		; 03 1C
	ora [$1C.b]		; 07 1C
	ora [$1C.b]		; 07 1C
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cpy #$E010.w		; C0 10 E0
	jsr $20C0.w		; 20 C0 20
	brk $40.b		; 00 40
	brk $40.b		; 00 40
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	cpx #$C000.w		; E0 00 C0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	rti		; 40

	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	lda $00F600.l,X		; BF 00 F6 00
	ror $00.b,X		; 76 00
	rol $1F00.w,X		; 3E 00 1F
	brk $03.b		; 00 03
	tsb $0F03.w		; 0C 03 0F
	cop $06.b		; 02 06
	rol $76.b,X		; 36 76
	ror $6F.b		; 66 6F
	bit $2D.b		; 24 2D
	tsb $010D.w		; 0C 0D 01
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	tsb $01.b		; 04 01
	brk $6F.b		; 00 6F
	brk $6E.b		; 00 6E
	brk $EE.b		; 00 EE
	brk $EF.b		; 00 EF
	brk $EF.b		; 00 EF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	cpy #$3C22.w		; C0 22 3C
	eor $4CDD.w		; 4D DD 4C
	cmp $DDCC.w,X		; DD CC DD
	dec $CEDE.w		; CE DE CE
	dec $1818.w,X		; DE 18 18
	brk $00.b		; 00 00
	bne  16.b		; D0 10
	ora $110609.l		; 0F 09 06 11
	asl $11.b		; 06 11
	clc		; 18
	rol $0F.b,X		; 36 0F
	and ($1F.b,X)		; 21 1F
	and ($07.b)		; 32 07
	dec A		; 3A
	ora [$18.b]		; 07 18
	asl $00.b		; 06 00
	ora $101E01.l		; 0F 01 1E 10
	tsb $3E04.w		; 0C 04 3E
	jsr $202C.w		; 20 2C 20
	trb $0018.w		; 1C 18 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	tsb $3E7E.w		; 0C 7E 3E
	rol $CEFE.w,X		; 3E FE CE
	inc $FCC2.w,X		; FE C2 FC
	sed		; F8
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bit $7E2C.w,X		; 3C 2C 7E
	bit $FE.b		; 24 FE
	tsb $FE.b		; 04 FE
	bra  -2.b		; 80 FE
	bra  -8.b		; 80 F8
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$E000.w		; C0 00 E0
	brk $70.b		; 00 70
	brk $B8.b		; 00 B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	ldy #$50A0.w		; A0 A0 50
	bne  40.b		; D0 28
	pla		; 68
	clv		; B8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	pla		; 68
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc $3F80.w,Y		; 79 80 3F
	bra  63.b		; 80 3F
	bra  60.b		; 80 3C
	sta ($7C.b,X)		; 81 7C
	cmp ($7C.b,X)		; C1 7C
	cmp ($7C.b,X)		; C1 7C
	cmp ($7C.b,X)		; C1 7C
	cmp ($01.b,X)		; C1 01
	ora [$67.b]		; 07 67
	ora [$78.b]		; 07 78
	brk $7E.b		; 00 7E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	brk $B7.b		; 00 B7
	brk $BA.b		; 00 BA
	ora $FA.b,S		; 03 FA
	ora $3A.b,S		; 03 3A
	sta $38.b,S		; 83 38
	.db $82, $38, $82		; 82 38 82
	sec		; 38
	.db $82, $3C, $86		; 82 3C 86
	bit $6C.b		; 24 6C
	bit $60.b		; 24 60
	trb $FC00.w		; 1C 00 FC
	bra  -2.b		; 80 FE
	.db $82, $FE, $82		; 82 FE 82
	inc $F882.w,X		; FE 82 F8
	bra   1.b		; 80 01
	ora [$07.b]		; 07 07
	phd		; 0B
	phd		; 0B
	ora [$1F.b]		; 07 1F
	ora [$1E.b]		; 07 1E
	and $1B3E09.l		; 2F 09 3E 1B
	bit $0D16.w		; 2C 16 0D
	asl $01.b		; 06 01
	php		; 08
	ora $04.b,S		; 03 04
	ora $02.b,S		; 03 02
	ora $2F.b		; 05 2F
	brk $3E.b		; 00 3E
	brk $2C.b		; 00 2C
	brk $0C.b		; 00 0C
	ora ($FF.b,X)		; 01 FF
	sbc $BDD3ED.l,X		; FF ED D3 BD
	cmp $FD.b,S		; C3 FD
	txy		; 9B
	ply		; 7A
	lda $00C7.w,X		; BD C7 00
	and ($8A.b,X)		; 21 8A
	sbc ($8A.b,S),Y		; F3 8A
	inc $5301.w,X		; FE 01 53
	bra -61.b		; 80 C3
	brk $83.b		; 00 83
	brk $81.b		; 00 81
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	dec $8EBA.w		; CE BA 8E
	ora $08.b,S		; 03 08
	and [$30.b]		; 27 30
	ora $300F30.l		; 0F 30 0F 30
	ora $200730.l,X		; 1F 30 07 20
	ora [$20.b],Y		; 17 20
	ora [$20.b],Y		; 17 20
	brk $3C.b		; 00 3C
	jsr $0138.w		; 20 38 01
	and ($17.b,X)		; 21 17
	ora [$07.b],Y		; 17 07
	ora [$1B.b]		; 07 1B
	ora $1A.b,S		; 03 1A
	cop $39.b		; 02 39
	and ($EF.b,X)		; 21 EF
	brk $FF.b		; 00 FF
	brk $EF.b		; 00 EF
	clc		; 18
	sbc [$18.b]		; E7 18
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $10FF10.l,X		; FF 10 FF 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	sta ($99.b,X)		; 81 99
	cmp $DB.b,S		; C3 DB
	plb		; AB
	plb		; AB
	adc $C66D.w		; 6D 6D C6
	dec $C7.b,X		; D6 C7
	cmp [$18.b],Y		; D7 18
	eor $38.b,S		; 43 38
	.db $42, $3C		; 42 3C
	lsr $7C.b		; 46 7C
	dec $70.b		; C6 70
	dec $30.b		; C6 30
	sty $38.b		; 84 38
	sty $8C38.w		; 8C 38 8C
	rol $7E02.w,X		; 3E 02 7E
	.db $42, $7A		; 42 7A
	.db $42, $38		; 42 38
	brk $3C.b		; 00 3C
	tsb $7C.b		; 04 7C
	tsb $74.b		; 04 74
	tsb $70.b		; 04 70
	brk $0C.b		; 00 0C
	.db $62, $0C, $23		; 62 0C 23
	asl $1E23.w		; 0E 23 1E
	and ($1E.b,S),Y		; 33 1E
	and ($1C.b,S),Y		; 33 1C
	and ($1C.b),Y		; 31 1C
	and ($1C.b),Y		; 31 1C
	and ($3E.b),Y		; 31 3E
	jsl $3C223E.l		; 22 3E 22 3C
	jsr $000C.w		; 20 0C 00
	tsb $0E00.w		; 0C 00 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C0.b		; 00 C0
	jsr $C030.w		; 20 30 C0
	inx		; E8
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	trb $28.b		; 14 28
	trb $3C.b		; 14 3C
	brk $3A.b		; 00 3A
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $04.b		; 00 04
	tsb $14.b		; 04 14
	trb $00.b		; 14 00
	brk $04.b		; 00 04
	tsb $3C.b		; 04 3C
	brk $2C.b		; 00 2C
	bpl  84.b		; 10 54
	sec		; 38
	bit $68.b,X		; 34 68
	jsr ($FC40.w,X)		; FC 40 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  40.b		; 10 28
	plp		; 28
	cli		; 58
	pha		; 48
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	tsb $142E.w		; 0C 2E 14
	bit $3F12.w		; 2C 12 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $18.b		; 04 18
	bpl  30.b		; 10 1E
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	trb $1E.b		; 14 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	plp		; 28
	trb $28.b		; 14 28
	bit $0800.w,X		; 3C 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	jsr $2828.w		; 20 28 28
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $1D3F00.l,X		; 1F 00 3F 1D
	and $0C3F1F.l,X		; 3F 1F 3F 0C
	and $001C00.l,X		; 3F 00 1C 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $19.b		; 00 19
	ora $0C3D.w,X		; 1D 3D 0C
	and $003F01.l,X		; 3F 01 3F 00
	clc		; 18
	brk $00.b		; 00 00
	bit $3843.w,X		; 3C 43 38
	eor $38.b,S		; 43 38
	eor $38.b,S		; 43 38
	.db $42, $3C		; 42 3C
	lsr $7C.b		; 46 7C
	dec $7C.b		; C6 7C
	dec $38.b		; C6 38
	stx $3E.b		; 86 3E
	cop $3E.b		; 02 3E
	cop $3E.b		; 02 3E
	cop $7C.b		; 02 7C
	rti		; 40

	sei		; 78
	rti		; 40

	sec		; 38
	brk $38.b		; 00 38
	brk $7C.b		; 00 7C
	tsb $78.b		; 04 78
	cpy $78.b		; C4 78
	cpy $78.b		; C4 78
	cpy $78.b		; C4 78
	cpy $18.b		; C4 18
	cpy $18.b		; C4 18
	cpy $18.b		; C4 18
	cpy $18.b		; C4 18
	cpy $38.b		; C4 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	sei		; 78
	rti		; 40

	jmp ($7C44.w,X)		; 7C 44 7C
	mvp $43,$3E		; 44 3E 43
	rol $3E43.w,X		; 3E 43 3E
	eor $3E.b,S		; 43 3E
	eor $3E.b,S		; 43 3E
	eor $3C.b,S		; 43 3C
	eor $3C.b,S		; 43 3C
	eor $3C.b,S		; 43 3C
	eor $7C.b,S		; 43 7C
	rti		; 40

	jmp ($7C40.w,X)		; 7C 40 7C
	rti		; 40

	jmp ($3C40.w,X)		; 7C 40 3C
	brk $3E.b		; 00 3E
	cop $3E.b		; 02 3E
	cop $3E.b		; 02 3E
	cop $3C.b		; 02 3C
	stx $3C.b		; 86 3C
	stx $3C.b		; 86 3C
	stx $38.b		; 86 38
	sty $38.b		; 84 38
	sty $38.b		; 84 38
	sty $38.b		; 84 38
	sty $78.b		; 84 78
	cpy $F8.b		; C4 F8
	bra  -8.b		; 80 F8
	bra  -8.b		; 80 F8
	bra  -4.b		; 80 FC
	sty $FC.b		; 84 FC
	sty $FC.b		; 84 FC
	sty $FC.b		; 84 FC
	sty $BC.b		; 84 BC
	sty $1D.b		; 84 1D
	rol $1C2B.w		; 2E 2B 1C
	rol $101B.w		; 2E 1B 10
	and $090E15.l		; 2F 15 0E 09
	asl $0F.b,X		; 16 0F
	brk $17.b		; 00 17
	bpl  46.b		; 10 2E
	brk $1C.b		; 00 1C
	brk $1B.b		; 00 1B
	brk $2F.b		; 00 2F
	brk $0E.b		; 00 0E
	brk $16.b		; 00 16
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	clc		; 18
	tda		; 7B
	ora ($69.b)		; 12 69
	jsl $96853A.l		; 22 3A 85 96
	eor $38C7.w,Y		; 59 C7 38
	sbc [$00.b],Y		; F7 00
	sbc $00EF00.l,X		; FF 00 EF 00
	cpx $DE00.w		; EC 00 DE
	ora ($7D.b)		; 12 7D
	tsb $29.b		; 04 29
	php		; 08
	brk $00.b		; 00 00
	sec		; 38
	brk $38.b		; 00 38
	brk $10.b		; 00 10
	brk $3F.b		; 00 3F
	plp		; 28
	ora $482708.l,X		; 1F 08 27 48
	asl $59.b,X		; 16 59
	ora [$78.b]		; 07 78
	adc [$08.b],Y		; 77 08
	sbc $00FF01.l,X		; FF 01 FF 00
	ora ($01.b),Y		; 11 01
	bmi   2.b		; 30 02
	sec		; 38
	asl A		; 0A
	plp		; 28
	phd		; 0B
	bmi  49.b		; 30 31
	cop $02.b		; 02 02
	cop $03.b		; 02 03
	tsb $05.b		; 04 05
	sbc $38FF38.l,X		; FF 38 FF 38
	sbc $FEFD38.l,X		; FF 38 FD FE
	sbc $FC7BFC.l,X		; FF FC 7B FC
	sbc $B4CF7A.l,X		; FF 7A CF B4
	sta ($BB.b,S),Y		; 93 BB
	tsx		; BA
	tsx		; BA
	sec		; 38
	sec		; 38
	sei		; 78
	sbc $79FE78.l,X		; FF 78 FE 79
	sbc $7B31.w,X		; FD 31 7B
	brk $B6.b		; 00 B6
	jsr $208C.w		; 20 8C 20
	dey		; 88
	bmi -104.b		; 30 98
	bmi -104.b		; 30 98
	jsr $0098.w		; 20 98 00
	bcc   0.b		; 90 00
	bcc  32.b		; 90 20
	bcs 120.b		; B0 78
	php		; 08
	sei		; 78
	php		; 08
	pla		; 68
	php		; 08
	rts		; 60

	brk $70.b		; 00 70
	bpl 112.b		; 10 70
	bpl 112.b		; 10 70
	bpl  64.b		; 10 40
	brk $1E.b		; 00 1E
	ora ($06.b),Y		; 11 06
	ora ($0E.b),Y		; 11 0E
	ora $190E.w,Y		; 19 0E 19
	asl $19.b		; 06 19
	cop $09.b		; 02 09
	asl $0D.b		; 06 0D
	ora $0E04.w		; 0D 04 0E
	brk $1E.b		; 00 1E
	bpl   6.b		; 10 06
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	php		; 08
	asl $0208.w		; 0E 08 02
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	cpy #$E080.w		; C0 80 E0
	ldy #$D0C0.w		; A0 C0 D0
	cpx #$E8F0.w		; E0 F0 E8
	rts		; 60

	sed		; F8
	bvs -24.b		; 70 E8
	cpx #$C050.w		; E0 50 C0
	brk $60.b		; 00 60
	bra  64.b		; 80 40
	bra -96.b		; 80 A0
	rti		; 40

	iny		; C8
	jsr $00F8.w		; 20 F8 00
	inx		; E8
	brk $50.b		; 00 50
	brk $60.b		; 00 60
	bne  80.b		; D0 50
	ldy #$B0E8.w		; A0 E8 B0
	bpl -24.b		; 10 E8
	jsr $E0D0.w		; 20 D0 E0
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	jsr $00D0.w		; 20 D0 00
	ldy #$B000.w		; A0 00 B0
	brk $E8.b		; 00 E8
	brk $D0.b		; 00 D0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rts		; 60

	brk $40.b		; 00 40
	bne  48.b		; D0 30
	cpx #$E010.w		; E0 10 E0
	bpl -32.b		; 10 E0
	bpl -32.b		; 10 E0
	bmi -32.b		; 30 E0
	bmi -32.b		; 30 E0
	bpl   0.b		; 10 00
	beq  16.b		; F0 10
	bmi -128.b		; 30 80
	bcc -64.b		; 90 C0
	bne -64.b		; D0 C0
	cpy #$8080.w		; C0 80 80
	bra -128.b		; 80 80
	jsr $A000.w		; 20 00 A0
	bpl -32.b		; 10 E0
	bpl -16.b		; 10 F0
	bpl -96.b		; 10 A0
	brk $D0.b		; 00 D0
	rti		; 40

	clv		; B8
	bvs -116.b		; 70 8C
	bvs -34.b		; 70 DE
	jsr $1070.w		; 20 70 10
	bvs  16.b		; 70 10
	rts		; 60

	brk $70.b		; 00 70
	brk $30.b		; 00 30
	brk $40.b		; 00 40
	rti		; 40

	jsr $8020.w		; 20 20 80
	bra  -1.b		; 80 FF
	rti		; 40

	sbc $C0FEE0.l,X		; FF E0 FE C0
	sbc $FD80.w,X		; FD 80 FD
	brk $E9.b		; 00 E9
	brk $39.b		; 00 39
	brk $19.b		; 00 19
	brk $42.b		; 00 42
	rep #$C5		; C2 C5
	sbc $8E.b		; E5 8E
	sbc $59EB29.l		; EF 29 EB 59
	stp		; DB
	and ($37.b,X)		; 21 37
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	tda		; 7B
	cpy $78B7.w		; CC B7 78
	cmp $BF30.w		; CD 30 BF
	brk $B6.b		; 00 B6
	brk $B6.b		; 00 B6
	brk $36.b		; 00 36
	brk $36.b		; 00 36
	brk $48.b		; 00 48
	cpy $7A32.w		; CC 32 7A
	brk $32.b		; 00 32
	phd		; 0B
	phk		; 4B
	jsl $EFA66B.l		; 22 6B A6 EF
	rol $EF.b		; 26 EF
	bit $ED.b		; 24 ED
	inc $FE00.w,X		; FE 00 FE
	tsb $FF.b		; 04 FF
	asl $06FF.w		; 0E FF 06
	sbc $015703.l,X		; FF 03 57 01
	adc $00.b,S		; 63 00
	adc ($00.b,X)		; 61 00
	rti		; 40

	rti		; 40

	sty $86.b		; 84 86
	cpy $CE.b		; C4 CE
	.db $42, $4F		; 42 4F
	lda ($A7.b,X)		; A1 A7
	brk $A3.b		; 00 A3
	rti		; 40

	cmp ($40.b,X)		; C1 40
	cpy #$0000.w		; C0 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	sed		; F8
	bne  -4.b		; D0 FC
	sec		; 38
	jsr ($F870.w,X)		; FC 70 F8
	jsr $0070.w		; 20 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bpl -16.b		; 10 F0
	sec		; 38
	sed		; F8
	rts		; 60

	sed		; F8
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$08.b]		; 07 08
	asl $2F2F.w,X		; 1E 2F 2F
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $2F.b		; 00 2F
	brk $1F.b		; 00 1F
	brk $05.b		; 00 05
	ora $05.b,S		; 03 05
	ora $1F.b,S		; 03 1F
	ora $23.b,S		; 03 23
	ora $3F7F1F.l,X		; 1F 1F 7F 3F
	eor $041C2F.l,X		; 5F 2F 1C 04
	and $030003.l,X		; 3F 03 00 03
	brk $03.b		; 00 03
	brk $1F.b		; 00 1F
	brk $7F.b		; 00 7F
	brk $5F.b		; 00 5F
	brk $1C.b		; 00 1C
	brk $3F.b		; 00 3F
	brk $FB.b		; 00 FB
	jsr ($FDFB.w,X)		; FC FB FD
	sbc $F5E9F1.l,X		; FF F1 E9 F5
	sbc [$ED.b],Y		; F7 ED
	cmp $E87F69.l,X		; DF 69 7F E8
	sbc [$F8.b]		; E7 F8
	jsr ($FC00.w,X)		; FC 00 FC
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	asl $E4.b		; 06 E4
	tsb $0066.w		; 0C 66 00
	sbc [$00.b]		; E7 00
	sbc [$00.b],Y		; F7 00
	asl $1E08.w,X		; 1E 08 1E
	brk $06.b		; 00 06
	clc		; 18
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora [$08.b]		; 07 08
	ora [$0C.b]		; 07 0C
	ora $0B0A0C.l		; 0F 0C 0A 0B
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $00CF00.l,X		; FF 00 CF 00
	sbc $00FF00.l		; EF 00 FF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $38FF00.l,X		; FF 00 FF 38
	sta [$87.b]		; 87 87
	sta [$B7.b]		; 87 B7
	lda [$B7.b]		; A7 B7
	brk $00.b		; 00 00
	dec $CFCE.w		; CE CE CF
	cmp $31B787.l		; CF 87 B7 31
	adc $0207.w,Y		; 79 07 02
	ora $060F07.l		; 0F 07 0F 06
	ora $081F0C.l,X		; 1F 0C 1F 08
	and $7C10.w,X		; 3D 10 7C
	bmi -24.b		; 30 E8
	bvs   2.b		; 70 02
	cop $06.b		; 02 06
	ora [$04.b]		; 07 04
	ora [$08.b]		; 07 08
	asl $0C00.w		; 0E 00 0C
	bpl  24.b		; 10 18
	jsr $6038.w		; 20 38 60
	bvs  -1.b		; 70 FF
	tsb $FF.b		; 04 FF
	ora $FF.b,S		; 03 FF
	brk $FA.b		; 00 FA
	brk $7A.b		; 00 7A
	brk $D2.b		; 00 D2
	brk $D2.b		; 00 D2
	brk $76.b		; 00 76
	bra   4.b		; 80 04
	tsb $2723.w		; 0C 23 27
	bvc  80.b		; 50 50
	bvc  85.b		; 50 55
	bmi -75.b		; 30 B5
	bra -83.b		; 80 AD
	rti		; 40

	adc $1F16.w		; 6D 16 1F
	sbc $00F780.l,X		; FF 80 F7 00
	stp		; DB
	brk $D9.b		; 00 D9
	brk $6D.b		; 00 6D
	brk $6C.b		; 00 6C
	brk $67.b		; 00 67
	brk $27.b		; 00 27
	brk $98.b		; 00 98
	cld		; D8
	bit $AC.b		; 24 AC
	dey		; 88
	ldy $B690.w		; AC 90 B6
	and $B7.b		; 25 B7
	pla		; 68
	xce		; FB
	adc $FB.b,S		; 63 FB
	brk $D8.b		; 00 D8
	beq   0.b		; F0 00
	bvs -32.b		; 70 E0
	rts		; 60

	beq -88.b		; F0 A8
	bvs -72.b		; 70 B8
	bvs -40.b		; 70 D8
	jsr $18FC.w		; 20 FC 18
	rol $000C.w,X		; 3E 0C 00
	brk $60.b		; 00 60
	cpx #$F060.w		; E0 60 F0
	jsr $30F0.w		; 20 F0 30
	bvs   0.b		; 70 00
	bvs  24.b		; 70 18
	sec		; 38
	tsb $381C.w		; 0C 1C 38
	sta $38.b,S		; 83 38
	sta $3C.b,S		; 83 3C
	sta [$3C.b]		; 87 3C
	sta [$34.b]		; 87 34
	stx $30.b		; 86 30
	stx $70.b		; 86 70
	cpy $78.b		; C4 78
	cpy $82FE.w		; CC FE 82
	inc $F882.w,X		; FE 82 F8
	bra 120.b		; 80 78
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	tsb $3C.b		; 04 3C
	tsb $30.b		; 04 30
	brk $38.b		; 00 38
	stx $38.b		; 86 38
	stx $38.b		; 86 38
	stx $38.b		; 86 38
	stx $7C.b		; 86 7C
	dec $7C.b		; C6 7C
	dec $7C.b		; C6 7C
	dec $1C.b		; C6 1C
	dec $FC.b		; C6 FC
	sty $FC.b		; 84 FC
	sty $FC.b		; 84 FC
	sty $FC.b		; 84 FC
	sty $38.b		; 84 38
	brk $38.b		; 00 38
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	rti		; 40

	sed		; F8
	jsr $18F0.w		; 20 F0 18
	beq  56.b		; F0 38
	cpx #$D028.w		; E0 28 D0
	pha		; 48
	beq  72.b		; F0 48
	beq   8.b		; F0 08
	beq   8.b		; F0 08
	bra -96.b		; 80 A0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bpl   0.b		; 10 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	bcs  72.b		; B0 48
	bcc  72.b		; 90 48
	bra  72.b		; 80 48
	iny		; C8
	bit $AC48.w		; 2C 48 AC
	dec $FE20.w,X		; DE 20 FE
	brk $FF.b		; 00 FF
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $30.b		; 00 30
	brk $10.b		; 00 10
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	and $1E.b,S		; 23 1E
	and $1C.b,S		; 23 1C
	and ($1C.b,X)		; 21 1C
	and ($1C.b,X)		; 21 1C
	and ($1E.b,X)		; 21 1E
	and $1E.b,S		; 23 1E
	and $18.b,S		; 23 18
	and $1C.b,S		; 23 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1E.b		; 00 1E
	brk $1C.b		; 00 1C
	brk $1C.b		; 00 1C
	brk $1E.b		; 00 1E
	cop $18.b		; 02 18
	jsl $1C261C.l		; 22 1C 26 1C
	rol $18.b		; 26 18
	rol $18.b		; 26 18
	bit $10.b		; 24 10
	bit $00.b		; 24 00
	bit $08.b		; 24 08
	bit $223E.w		; 2C 3E 22
	sec		; 38
	jsr $2038.w		; 20 38 20
	bit $3C24.w,X		; 3C 24 3C
	bit $38.b		; 24 38
	jsr $2038.w		; 20 38 20
	bmi  32.b		; 30 20
	trb $38.b		; 14 38
	bit $3800.w,X		; 3C 00 38
	tsb $30.b		; 04 30
	tsb $1C30.w		; 0C 30 1C
	bvs  28.b		; 70 1C
	bvs  12.b		; 70 0C
	stz $08.b,X		; 74 08
	plp		; 28
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sei		; 78
	brk $48.b		; 00 48
	jsr $107C.w		; 20 7C 10
	bit $3A00.w,X		; 3C 00 3A
	bpl  58.b		; 10 3A
	ora ($3F.b)		; 12 3F
	ora ($0F.b)		; 12 0F
	bpl   0.b		; 10 00
	brk $30.b		; 00 30
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	adc ($9F.b,S),Y		; 73 9F
	tsa		; 3B
	sbc $77FD1B.l,X		; FF 1B FD 77
	dey		; 88
	ora $000740.l		; 0F 40 07 00
	ora $000E04.l		; 0F 04 0E 00
	sta $00FF00.l,X		; 9F 00 FF 00
	sbc $8800.w,X		; FD 00 88
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	tsb $02.b		; 04 02
	ora $D7.b,S		; 03 D7
	sbc #$E49B.w		; E9 9B E4
	adc $FF83.w,X		; 7D 83 FF
	ora ($EF.b,X)		; 01 EF
	brk $DF.b		; 00 DF
	rti		; 40

	sbc $20DF20.l,X		; FF 20 DF 20
	inc $00.b		; E6 00
	cld		; D8
	brk $83.b		; 00 83
	brk $39.b		; 00 39
	brk $70.b		; 00 70
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $23.b		; 00 23
	and $0F.b,S		; 23 0F
	php		; 08
	ora [$10.b]		; 07 10
	ora [$10.b]		; 07 10
	ora #$191A.w		; 09 1A 19
	asl $3D.b		; 06 3D
	cop $3E.b		; 02 3E
	ora ($7F.b,X)		; 01 7F
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	ora ($0C.b,X)		; 01 0C
	ora ($04.b,X)		; 01 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($FD.b,X)		; 01 FD
	ror $FEFD.w,X		; 7E FD FE
	sbc $FDFE.w,X		; FD FE FD
	ror $7CFF.w,X		; 7E FF 7C
	inc $FF7D.w,X		; FE 7D FF
	ply		; 7A
	sbc $FE38B4.l,X		; FF B4 38 FE
	sei		; 78
	sbc $78FF78.l,X		; FF 78 FF 78
	sbc $38FE78.l,X		; FF 78 FE 38
	sbc $7B30.w,X		; FD 30 7B
	tsb $F6.b		; 04 F6
	clv		; B8
	rts		; 60

	beq  64.b		; F0 40
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $C0.b,X		; 36 C0
	and $C417E0.l,X		; 3F E0 17 C4
	inc A		; 1A
	cmp $1E.b,S		; C3 1E
	cmp $1E.b,S		; C3 1E
	cmp $1C.b,S		; C3 1C
	cmp ($1C.b,X)		; C1 1C
	eor ($56.b,X)		; 41 56
	eor $784343.l,X		; 5F 43 43 78
	rti		; 40

	adc $7D41.w,X		; 7D 41 7D
	eor ($7D.b,X)		; 41 7D
	eor ($7F.b,X)		; 41 7F
	eor ($7F.b,X)		; 41 7F
	eor ($3C.b,X)		; 41 3C
	ora $EC.b,S		; 03 EC
	ora $1C639C.l,X		; 1F 9C 63 1C
	cmp $1C.b,S		; C3 1C
	cmp $1C.b,S		; C3 1C
	cmp $1C.b,S		; C3 1C
	cmp $1C.b,S		; C3 1C
	cmp $00.b,S		; C3 00
	cpy #$0202.w		; C0 02 02
	asl $7E02.w,X		; 1E 02 7E
	.db $42, $7E		; 42 7E
	.db $42, $7E		; 42 7E
	.db $42, $7E		; 42 7E
	.db $42, $7E		; 42 7E
	.db $42, $1F		; 42 1F
	asl $11.b		; 06 11
	asl $000F.w		; 0E 0F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0E.b		; 06 0E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sec		; 38
	cpy $CC30.w		; CC 30 CC
	bmi -52.b		; 30 CC
	bmi -56.b		; 30 C8
	bvs -56.b		; 70 C8
	bvs -56.b		; 70 C8
	bmi -120.b		; 30 88
	bmi -116.b		; 30 8C
	bvs  64.b		; 70 40
	sei		; 78
	pha		; 48
	sei		; 78
	pha		; 48
	bvs  64.b		; 70 40
	bmi   0.b		; 30 00
	bmi   0.b		; 30 00
	sei		; 78
	php		; 08
	sei		; 78
	php		; 08
	trb $38C6.w		; 1C C6 38
.ACCU 8
.INDEX 8
	sep #$38		; E2 38
	.db $62, $38, $62		; 62 38 62
	sec		; 38
	.db $62, $38, $62		; 62 38 62
	asl $0E63.w		; 0E 63 0E
	and $78.b,S		; 23 78
	rti		; 40

	jmp $001C40.l		; 5C 40 1C 00
	trb $1E00.w		; 1C 00 1E
	cop $1E.b		; 02 1E
	cop $3C.b		; 02 3C
	jsr $203C.w		; 20 3C 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cop $00.b		; 02 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $9C00.w,X		; BC 00 9C
	jsr $6058.w		; 20 58 60
	sed		; F8
	bra -24.b		; 80 E8
	brk $C8.b		; 00 C8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $60.b		; 00 60
	jsr $20A0.w		; 20 A0 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $01.b		; 06 01
	ora #$16.b		; 09 16
	ora $1F2F0F.l,X		; 1F 0F 2F 1F
	ora $00007F.l,X		; 1F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	asl $00.b,X		; 16 00
	ora $001F00.l		; 0F 00 1F 00
	adc $000000.l,X		; 7F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$20.b		; C0 20
	sed		; F8
	cpy #$CE.b		; C0 CE
	beq -50.b		; F0 CE
	beq   0.b		; F0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $38.b		; 00 38
	.db $62, $08, $22		; 62 08 22
	php		; 08
	jsl $083218.l		; 22 18 32 08
	ora ($05.b)		; 12 05
	asl $09.b,X		; 16 09
	asl $001F.w,X		; 1E 1F 00
	trb $3C00.w		; 1C 00 3C
	jsr $021E.w		; 20 1E 02
	asl $1E02.w		; 0E 02 1E
	ora ($0A.b)		; 12 0A
	cop $04.b		; 02 04
	tsb $00.b		; 04 00
	brk $90.b		; 00 90
	rts		; 60

	bcs  64.b		; B0 40
	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	rti		; 40

	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$00.b		; C0 00
	bra  96.b		; 80 60
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	brk $72.b		; 00 72
	bpl 114.b		; 10 72
	bpl  42.b		; 10 2A
	clc		; 18
	rol $1E00.w,X		; 3E 00 1E
	brk $0E.b		; 00 0E
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $0C.b		; 00 0C
	brk $0C.b		; 00 0C
	brk $14.b		; 00 14
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	bra -64.b		; 80 C0
	bra -32.b		; 80 E0
	bra -16.b		; 80 F0
	brk $F0.b		; 00 F0
	rts		; 60

	sei		; 78
	cpy #$F8.b		; C0 F8
	bmi   0.b		; 30 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	rts		; 60

	brk $C0.b		; 00 C0
	bcc -80.b		; 90 B0
	bmi -124.b		; 30 84
	bvs -58.b		; 70 C6
	jmp ($1CC6.w,X)		; 7C C6 1C
	lsr $18.b		; 46 18
	.db $42, $3A		; 42 3A
	adc $0E.b,S		; 63 0E
	and $0C.b,S		; 23 0C
	and ($FC.b,X)		; 21 FC
	sty $3C.b		; 84 3C
	tsb $38.b		; 04 38
	brk $7A.b		; 00 7A
	.db $42, $3E		; 42 3E
	cop $1C.b		; 02 1C
	brk $3C.b		; 00 3C
	jsr $001E.w		; 20 1E 00
	ora #$64.b		; 09 64
	ora $301720.l		; 0F 20 17 30
	asl A		; 0A
	ora $0D05.w,Y		; 19 05 0D
	cop $07.b		; 02 07
	brk $07.b		; 00 07
	tsb $3C03.w		; 0C 03 3C
	rol $3C.b		; 26 3C
	jsr $000E.w		; 20 0E 00
	asl $00.b		; 06 00
	cop $00.b		; 02 00
	tsb $04.b		; 04 04
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	sbc $26F966.l,X		; FF 66 F9 26
	sbc $01FE00.l,X		; FF 00 FE 01
	sbc $03FD01.l,X		; FF 01 FD 03
	sbc $27FA03.l,X		; FF 03 FA 27
	rol $60.b		; 26 60
	asl $20.b		; 06 20
	brk $00.b		; 00 00
	php		; 08
	ora #$00.b		; 09 00
	ora $88.b,S		; 03 88
	phd		; 0B
	iny		; C8
	phd		; 0B
	cpy #$07.b		; C0 07
	rol $00.b,X		; 36 00
	bit $6D00.w,X		; 3C 00 6D
	brk $59.b		; 00 59
	brk $99.b		; 00 99
	brk $B3.b		; 00 B3
	brk $73.b		; 00 73
	brk $33.b		; 00 33
	brk $12.b		; 00 12
	tas		; 1B
	trb $17.b		; 14 17
	bit $36.b		; 24 36
	pha		; 48
	ror $6E08.w		; 6E 08 6E
	ora ($5D.b),Y		; 11 5D
	ora ($1D.b),Y		; 11 1D
	ora ($1D.b),Y		; 11 1D
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00AE00.l		; EF 00 AE 00
	ldx $00.b		; A6 00
	lda [$00.b]		; A7 00
	lda [$00.b],Y		; B7 00
	and ($00.b,S),Y		; 33 00
	eor ($55.b),Y		; 51 55
	dec $D6.b,X		; D6 D6
	dex		; CA
	phx		; DA
	txa		; 8A
	stp		; DB
	ldx #$FB.b		; A2 FB
	lda $FD.b		; A5 FD
	lda $ED.b		; A5 ED
	jsl $180FEE.l		; 22 EE 0F 18
	ora [$18.b]		; 07 18
	ora [$18.b]		; 07 18
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $0C.b,S		; 03 0C
	ora ($04.b,X)		; 01 04
	ora ($04.b,X)		; 01 04
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cpy $CC26.w		; CC 26 CC
	rol $D8.b		; 26 D8
	jsl $DC22D8.l		; 22 D8 22 DC
	rol $DC.b		; 26 DC
	rol $DC.b		; 26 DC
	rol $D8.b		; 26 D8
	rol $D8.b		; 26 D8
	brk $D8.b		; 00 D8
	brk $FC.b		; 00 FC
	jsr $20FC.w		; 20 FC 20
	sed		; F8
	jsr $20F8.w		; 20 F8 20
	sed		; F8
	jsr $24FC.w		; 20 FC 24
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora $0B.b		; 05 0B
	ora $0F1717.l		; 0F 17 17 0F
	ora $0F1F0F.l,X		; 1F 0F 1F 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	phd		; 0B
	brk $17.b		; 00 17
	brk $0B.b		; 00 0B
	tsb $02.b		; 04 02
	ora $0E01.w		; 0D 01 0E
	tsb $7212.w		; 0C 12 72
	sta $1EFF.w		; 8D FF 1E
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	sbc $E7FFEF.l,X		; FF EF FF E7
	xce		; FB
	xba		; EB
	sbc $12.b,X		; F5 12
	brk $8D.b		; 00 8D
	brk $1E.b		; 00 1E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  -5.b		; 80 FB
	brk $F1.b		; 00 F1
	brk $03.b		; 00 03
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0802.w		; 0C 02 08
	ora [$09.b]		; 07 09
	tsb $0619.w		; 0C 19 06
	ora ($08.b,S),Y		; 13 08
	ora ($01.b,S),Y		; 13 01
	brk $07.b		; 00 07
	tsb $03.b		; 04 03
	brk $07.b		; 00 07
	brk $0E.b		; 00 0E
	php		; 08
	ora [$01.b]		; 07 01
	tsb $1E00.w		; 0C 00 1E
	ora ($B8.b)		; 12 B8
	.db $42, $B8		; 42 B8
	.db $42, $38		; 42 38
	.db $42, $9C		; 42 9C
.INDEX 16
	rep #$1C		; C2 1C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
	ldx #$221C.w		; A2 1C 22
	asl $BC22.w		; 0E 22 BC
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $3C.b		; 00 3C
	brk $BC.b		; 00 BC
	bra  30.b		; 80 1E
	cop $3E.b		; 02 3E
	jsl $C0001C.l		; 22 1C 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $50.b		; 00 50
	sec		; 38
	sei		; 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $2C.b		; 00 2C
	bpl  52.b		; 10 34
	clc		; 18
	bit $10.b,X		; 34 10
	rol $2818.w		; 2E 18 28
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	php		; 08
	brk $10.b		; 00 10
	bpl -16.b		; 10 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	rts		; 60

	jsr $8020.w		; 20 20 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $3E00.w,X		; 1E 00 3E
	brk $2C.b		; 00 2C
	bpl  76.b		; 10 4C
	bmi  84.b		; 30 54
	jsr $0074.w		; 20 74 00
	jmp ($7C10.w,X)		; 7C 10 7C
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  48.b		; 10 30
	bmi  40.b		; 30 28
	jsr $0008.w		; 20 08 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvn $54,$30		; 54 30 54
	bmi 124.b		; 30 7C
	brk $7C.b		; 00 7C
	brk $3C.b		; 00 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $28.b		; 00 28
	jsr $2028.w		; 20 28 20
	brk $00.b		; 00 00
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
	bra   0.b		; 80 00
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
	bra  30.b		; 80 1E
	ora ($3F.b,X)		; 01 3F
	brk $7D.b		; 00 7D
	cop $3F.b		; 02 3F
	ora $1F.b,S		; 03 1F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $02.b		; 00 02
	cop $03.b		; 02 03
	ora $00.b,S		; 03 00
	ora [$01.b]		; 07 01
	ora [$00.b]		; 07 00
	ora ($04.b,X)		; 01 04
	tsb $0D.b		; 04 0D
	ora $0B0B.w		; 0D 0B 0B
	ror $0FB7.w		; 6E B7 0F
	inc $7E8F.w,X		; FE 8F 7E
	sbc $FF9E.w		; ED 9E FF
	cpx $FF.b		; E4 FF
	dec A		; 3A
	sbc $04FF0E.l,X		; FF 0E FF 04
	cmp ($97.b)		; D2 97
	ror $6F.b		; 66 6F
	tsb $8E.b		; 04 8E
	bra  -2.b		; 80 FE
	rts		; 60

	inc $7E10.w,X		; FE 10 7E
	asl A		; 0A
	asl $4E44.w,X		; 1E 44 4E
	ora $080700.l,X		; 1F 00 07 08
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	and ($00.b,S),Y		; 33 00
	and [$00.b],Y		; 37 00
	jsr ($4203.w,X)		; FC 03 42
	adc $D23DA4.l,X		; 7F A4 3D D2
	ora $09E2.w,Y		; 19 E2 09
	sbc $09.b,S		; E3 09
	jsl $EC24EE.l		; 22 EE 24 EC
	jsl $34B422.l		; 22 22 B4 34
	cmp ($10.b)		; D2 10
	sbc [$01.b]		; E7 01
	sbc [$01.b],Y		; F7 01
	inc $00.b,X		; F6 00
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($02.b,X)		; 01 02
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	ora ($0E.b,X)		; 01 0E
	ora ($1A.b,X)		; 01 1A
	ora $12.b		; 05 12
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $04.b		; 05 04
	ora $1D08.w		; 0D 08 1D
	bpl -48.b		; 10 D0
	rol $D8.b		; 26 D8
	bit $2CD0.w		; 2C D0 2C
	cpy #$D028.w		; C0 28 D0
	sec		; 38
	cpx #$E030.w		; E0 30 E0
	bmi -32.b		; 30 E0
	bmi  -4.b		; 30 FC
	bit $F0.b		; 24 F0
	jsr $28F8.w		; 20 F8 28
	beq  32.b		; F0 20
	cpx #$D020.w		; E0 20 D0
	bpl -48.b		; 10 D0
	bpl -64.b		; 10 C0
	brk $17.b		; 00 17
	ora $2F2F1F.l		; 0F 1F 2F 2F
	eor $FDBF5C.l,X		; 5F 5C BF FD
	adc $5E7EFF.l,X		; 7F FF 7E 5E
	lda $0B1E2F.l,X		; BF 2F 1E 0B
	tsb $2F.b		; 04 2F
	brk $5F.b		; 00 5F
	brk $BF.b		; 00 BF
	brk $6F.b		; 00 6F
	bpl  74.b		; 10 4A
	bit $A7.b,X		; 34 A7
	clc		; 18
	asl $08.b,X		; 16 08
	clc		; 18
	sbc ($B0.b,X)		; E1 B0
	cmp #$40BD.w		; C9 BD 40
	cmp $BE20.w		; CD 20 BE
	adc ($7F.b,X)		; 61 7F
	cmp ($18.b,X)		; C1 18
	cmp ($C8.b,X)		; C1 C8
	and ($E6.b,X)		; 21 E6
	brk $C6.b		; 00 C6
	brk $46.b		; 00 46
	brk $06.b		; 00 06
	bmi  47.b		; 30 2F
	and ($BE.b,X)		; 21 BE
	bra 127.b		; 80 7F
	eor [$3E.b]		; 47 3E
	jsl $00361C.l		; 22 1C 36 00
	rol $18.b		; 26 18
	bit $2C40.w		; 2C 40 2C
	rts		; 60

	clc		; 18
	sei		; 78
	brk $B8.b		; 00 B8
	rti		; 40

	bcc  32.b		; 90 20
	php		; 08
	brk $1C.b		; 00 1C
	tsb $30.b		; 04 30
	jsr $2838.w		; 20 38 28
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	rts		; 60

	jsr $220E.w		; 20 0E 22
	trb $0C30.w		; 1C 30 0C
	ora ($06.b),Y		; 11 06
	ora ($0E.b),Y		; 11 0E
	ora $0902.w,Y		; 19 02 09
	cop $09.b		; 02 09
	tsb $0D.b		; 04 0D
	trb $0E00.w		; 1C 00 0E
	brk $1E.b		; 00 1E
	bpl  14.b		; 10 0E
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	ora #$090F.w		; 09 0F 09
	ora $01.b,S		; 03 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	rts		; 60

	bra -16.b		; 80 F0
	cpy #$E0F0.w		; C0 F0 E0
	beq -32.b		; F0 E0
	bne -32.b		; D0 E0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	rti		; 40

	jsr $E0C0.w		; 20 C0 E0
	brk $A0.b		; 00 A0
	bne -48.b		; D0 D0
	plp		; 28
	pla		; 68
	bit $74.b,X		; 34 74
	clv		; B8
	jmp ($68B0.w,X)		; 7C B0 68
	bcs -32.b		; B0 E0
	sei		; 78
	sed		; F8
	bvs -48.b		; 70 D0
	brk $28.b		; 00 28
	brk $34.b		; 00 34
	bra  56.b		; 80 38
	bra -80.b		; 80 B0
	bra -80.b		; 80 B0
	bra 120.b		; 80 78
	brk $70.b		; 00 70
	brk $1F.b		; 00 1F
	rol $5F2F.w		; 2E 2F 5F
	lsr $5A3F.w,X		; 5E 3F 5A
	bit $1B27.w,X		; 3C 27 1B
	clc		; 18
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	asl $2E.b		; 06 2E
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $3C.b		; 00 3C
	ora ($19.b,X)		; 01 19
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	tsb $03.b		; 04 03
	cop $FF.b		; 02 FF
	rti		; 40

	inc $FE38.w,X		; FE 38 FE
	trb $8CBE.w		; 1C BE 8C
	bit $9F4F.w,X		; 3C 4F 9F
	stx $CE1F.w		; 8E 1F CE
	ora $C046CE.l,X		; 1F CE 46 C0
	ora ($78.b),Y		; 11 78
	ora $853C.w		; 0D 3C 85
	jmp.w [$DF0D]		; DC 0D DF
	tsb $0EFE.w		; 0C FE 0E
	ror $AE86.w		; 6E 86 AE
	cpy #$F030.w		; C0 30 F0
	brk $70.b		; 00 70
	brk $78.b		; 00 78
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	rts		; 60

	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sty $84.b		; 84 84
	asl $6E0E.w		; 0E 0E 6E
	rol $8070.w		; 2E 70 80
	rts		; 60

	dey		; 88
	bne  36.b		; D0 24
	phx		; DA
	bit $41.b		; 24 41
	jsl $3F007F.l		; 22 7F 00 3F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -112.b		; 80 90
	bra  56.b		; 80 38
	jsr $243C.w		; 20 3C 24
	rol $0022.w,X		; 3E 22 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	brk $50.b		; 00 50
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$C080.w		; C0 80 C0
	rti		; 40

	rti		; 40

	rti		; 40

	rts		; 60

	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	and ($65.b,S),Y		; 33 65
	tsa		; 3B
	stz $0B.b		; 64 0B
	bit $1B.b		; 24 1B
	bit $0B.b,X		; 34 0B
	bit $03.b,X		; 34 03
	trb $03.b		; 14 03
	clc		; 18
	ora [$0C.b]		; 07 0C
	clc		; 18
	ora ($18.b,X)		; 01 18
	brk $38.b		; 00 38
	jsr $0008.w		; 20 08 00
	trb $0E14.w		; 1C 14 0E
	tsb $0F.b		; 04 0F
	php		; 08
	ora $00.b,S		; 03 00
	sbc $C6E9C6.l		; EF C6 E9 C6
	sbc $01FE40.l		; EF 40 FE 01
	sbc $03FD01.l,X		; FF 01 FD 03
	sbc $473A03.l,X		; FF 03 3A 47
	dec $D0.b		; C6 D0
	lsr $D0.b		; 46 D0
	brk $50.b		; 00 50
	php		; 08
	ora #$0300.w		; 09 00 03
	php		; 08
	phd		; 0B
	clc		; 18
	tas		; 1B
	bcc  23.b		; 90 17
	rol $00.b,X		; 36 00
	bit $6D00.w,X		; 3C 00 6D
	brk $59.b		; 00 59
	brk $99.b		; 00 99
	brk $B3.b		; 00 B3
	brk $73.b		; 00 73
	brk $33.b		; 00 33
	brk $12.b		; 00 12
	tas		; 1B
	trb $17.b		; 14 17
	bit $36.b		; 24 36
	pha		; 48
	ror $6E08.w		; 6E 08 6E
	ora ($5D.b),Y		; 11 5D
	ora ($1D.b),Y		; 11 1D
	ora ($1D.b),Y		; 11 1D
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00AE00.l		; EF 00 AE 00
	ldx $00.b		; A6 00
	lda [$00.b]		; A7 00
	lda [$00.b],Y		; B7 00
	and ($00.b,S),Y		; 33 00
	eor ($55.b),Y		; 51 55
	dec $D6.b,X		; D6 D6
	dex		; CA
	phx		; DA
	txa		; 8A
	stp		; DB
	ldx #$A5FB.w		; A2 FB A5
	sbc $EDA5.w,X		; FD A5 ED
	jsl $603FEE.l		; 22 EE 3F 60
	ora $601F60.l,X		; 1F 60 1F 60
	ora $301F20.l		; 0F 20 1F 30
	ora $100730.l		; 0F 30 07 10
	ora [$10.b]		; 07 10
	ora $203F00.l,X		; 1F 00 3F 20
	ora $001F00.l,X		; 1F 00 1F 00
	ora $101F00.l		; 0F 00 1F 10
	ora $000F00.l		; 0F 00 0F 00
	sec		; 38
	sty $8C38.w		; 8C 38 8C
	bvs -124.b		; 70 84
	bvs -124.b		; 70 84
	sei		; 78
	sty $8C78.w		; 8C 78 8C
	sei		; 78
	sty $8C70.w		; 8C 70 8C
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	sed		; F8
	bra  -8.b		; 80 F8
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	bra -16.b		; 80 F0
	bra  -8.b		; 80 F8
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	ora $0B.b		; 05 0B
	ora $0F1717.l		; 0F 17 17 0F
	ora $0F1F0F.l,X		; 1F 0F 1F 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	phd		; 0B
	brk $17.b		; 00 17
	brk $0B.b		; 00 0B
	tsb $02.b		; 04 02
	ora $0E01.w		; 0D 01 0E
	tsb $7212.w		; 0C 12 72
	sta $1EFF.w		; 8D FF 1E
	sbc [$FF.b],Y		; F7 FF
	xce		; FB
	sbc $E7FFEF.l,X		; FF EF FF E7
	xce		; FB
	xba		; EB
	sbc $12.b,X		; F5 12
	brk $8D.b		; 00 8D
	brk $1E.b		; 00 1E
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	bra  -5.b		; 80 FB
	brk $F1.b		; 00 F1
	brk $01.b		; 00 01
	ora $02.b,S		; 03 02
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0803.w		; 0C 03 08
	asl $08.b		; 06 08
	ora $110419.l		; 0F 19 04 11
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $000608.l		; 0F 08 06 00
	ora $423801.l		; 0F 01 38 42
	clv		; B8
	.db $42, $B8		; 42 B8
	.db $42, $1C		; 42 1C
	.db $42, $9C		; 42 9C
.ACCU 16
.INDEX 16
	rep #$3C		; C2 3C
.INDEX 8
	sep #$1C		; E2 1C
	sep #$0E		; E2 0E
	ldx #$BC.b		; A2 BC
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $BC.b		; 00 BC
	brk $3C.b		; 00 3C
	brk $9E.b		; 00 9E
	.db $82, $3E, $22		; 82 3E 22
	trb $C000.w		; 1C 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra   0.b		; 80 00
	brk $28.b		; 00 28
	trb $003C.w		; 1C 3C 00
	bit $3C00.w,X		; 3C 00 3C
	brk $16.b		; 00 16
	php		; 08
	inc A		; 1A
	tsb $081A.w		; 0C 1A 08
	ora [$0C.b],Y		; 17 0C
	trb $14.b		; 14 14
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	php		; 08
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	php		; 08
	php		; 08
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	rts		; 60

	rts		; 60

	jsr $8020.w		; 20 20 80
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	rts		; 60

	bra -16.b		; 80 F0
	cpy #$F0.b		; C0 F0
	cpx #$F0.b		; E0 F0
	cpx #$D0.b		; E0 D0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $A0.b		; 00 A0
	rti		; 40

	jsr $E0C0.w		; 20 C0 E0
	brk $A0.b		; 00 A0
	bne -48.b		; D0 D0
	plp		; 28
	pla		; 68
	bit $74.b,X		; 34 74
	clv		; B8
	jmp ($68B0.w,X)		; 7C B0 68
	bcs -32.b		; B0 E0
	sei		; 78
	sed		; F8
	bvs -48.b		; 70 D0
	brk $28.b		; 00 28
	brk $34.b		; 00 34
	bra  56.b		; 80 38
	bra -80.b		; 80 B0
	bra -80.b		; 80 B0
	bra 120.b		; 80 78
	brk $70.b		; 00 70
	brk $10.b		; 00 10
	tsb $073B.w		; 0C 3B 07
	jmp ($3F03.w,X)		; 7C 03 3F
	ora $1F.b,S		; 03 1F
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	ora [$00.b]		; 07 00
	ora ($04.b,X)		; 01 04
	tsb $0D.b		; 04 0D
	ora $0B0B.w		; 0D 0B 0B
	stz $3FE7.w,X		; 9E E7 3F
	inc $FE7F.w		; EE 7F FE
	sbc $FF9E.w		; ED 9E FF
	cpx $FF.b		; E4 FF
	dec A		; 3A
	sbc $04FF0E.l,X		; FF 0E FF 04
	cop $07.b		; 02 07
	asl $2F.b		; 06 2F
	tsb $7E.b		; 04 7E
	bra  -2.b		; 80 FE
	rts		; 60

	inc $7E10.w,X		; FE 10 7E
	asl A		; 0A
	asl $4E44.w,X		; 1E 44 4E
	ora $080700.l,X		; 1F 00 07 08
	brk $0F.b		; 00 0F
	brk $0C.b		; 00 0C
	ora ($0C.b,X)		; 01 0C
	ora ($0C.b,X)		; 01 0C
	ora $06.b,S		; 03 06
	ora $06.b,S		; 03 06
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora [$07.b]		; 07 07
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora [$04.b]		; 07 04
	ora $04.b		; 05 04
	ora ($00.b,X)		; 01 00
	and ($00.b,S),Y		; 33 00
	and [$00.b],Y		; 37 00
	jsr ($4303.w,X)		; FC 03 43
	adc $D13CA4.l,X		; 7F A4 3C D1
	clc		; 18
	sbc $08.b,S		; E3 08
	sbc $08.b,S		; E3 08
	jsl $EC24EE.l		; 22 EE 24 EC
	and $23.b,S		; 23 23
	ldy $34.b,X		; B4 34
	cmp ($10.b,S),Y		; D3 10
	sbc [$00.b]		; E7 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	ora $180F18.l		; 0F 18 0F 18
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$08.b]		; 07 08
	ora [$18.b]		; 07 18
	ora [$38.b]		; 07 38
	ora [$78.b],Y		; 17 78
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	ora [$10.b],Y		; 17 10
	and [$20.b]		; 27 20
	rts		; 60

	sty $9870.w		; 8C 70 98
	rti		; 40

	tya		; 98
	jsr $40B0.w		; 20 B0 40
	beq -128.b		; F0 80
	cpx #$80.b		; E0 80
	cpx #$80.b		; E0 80
	cpy #$F8.b		; C0 F8
	dey		; 88
	cpx #$80.b		; E0 80
	beq -112.b		; F0 90
	cpy #$80.b		; C0 80
	ldy #$A0.b		; A0 A0
	rti		; 40

	rti		; 40

	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	ora [$0F.b],Y		; 17 0F
	ora $5F2F2F.l,X		; 1F 2F 2F 5F
	jmp $7FFDBF.l		; 5C BF FD 7F
	sbc $BF5E7E.l,X		; FF 7E 5E BF
	and $040B1E.l		; 2F 1E 0B 04
	and $005F00.l		; 2F 00 5F 00
	lda $106F00.l,X		; BF 00 6F 10
	lsr A		; 4A
	bit $A7.b,X		; 34 A7
	clc		; 18
	asl $08.b,X		; 16 08
	clc		; 18
	sbc ($B0.b,X)		; E1 B0
	cmp #$40BD.w		; C9 BD 40
	cmp $BE20.w		; CD 20 BE
	adc ($7F.b,X)		; 61 7F
	cmp ($18.b,X)		; C1 18
	cmp ($C8.b,X)		; C1 C8
	and ($E6.b,X)		; 21 E6
	brk $C6.b		; 00 C6
	brk $46.b		; 00 46
	brk $06.b		; 00 06
	bmi  47.b		; 30 2F
	and ($BE.b,X)		; 21 BE
	bra 127.b		; 80 7F
	eor [$3E.b]		; 47 3E
	jsl $38130E.l		; 22 0E 13 38
	ora ($34.b,S),Y		; 13 34
	asl $30.b,X		; 16 30
	asl $38.b,X		; 16 38
	tsb $0478.w		; 0C 78 04
	sei		; 78
	brk $F8.b		; 00 F8
	brk $1C.b		; 00 1C
	bpl  14.b		; 10 0E
	cop $08.b		; 02 08
	brk $0C.b		; 00 0C
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0E.b		; 00 0E
	jsl $0C101C.l		; 22 1C 10 0C
	ora ($06.b),Y		; 11 06
	ora ($0E.b),Y		; 11 0E
	ora $0902.w,Y		; 19 02 09
	cop $09.b		; 02 09
	tsb $0D.b		; 04 0D
	trb $0E00.w		; 1C 00 0E
	brk $1E.b		; 00 1E
	bpl  14.b		; 10 0E
	brk $06.b		; 00 06
	brk $0F.b		; 00 0F
	ora #$090F.w		; 09 0F 09
	ora $01.b,S		; 03 01
	ora $5F2F2E.l,X		; 1F 2E 2F 5F
	lsr $5A3F.w,X		; 5E 3F 5A
	bit $1B27.w,X		; 3C 27 1B
	clc		; 18
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	asl $2E.b		; 06 2E
	brk $5F.b		; 00 5F
	brk $3F.b		; 00 3F
	brk $3C.b		; 00 3C
	ora ($19.b,X)		; 01 19
	ora $00.b,S		; 03 00
	ora [$03.b]		; 07 03
	ora [$01.b]		; 07 01
	brk $FF.b		; 00 FF
	rti		; 40

	jsr ($FE3A.w,X)		; FC 3A FE
	trb $8CAE.w		; 1C AE 8C
	rol $8F4D.w		; 2E 4D 8F
	sty $DC1F.w		; 8C 1F DC
	ora $C046DC.l,X		; 1F DC 46 C0
	ora ($78.b),Y		; 11 78
	ora #$853C.w		; 09 3C 85
	jmp.w [$DD0D]		; DC 0D DD
	tsb $0CFC.w		; 0C FC 0C
	jmp ($BC8C.w,X)		; 7C 8C BC
	cpy #$30.b		; C0 30
	beq   0.b		; F0 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $7C.b		; 00 7C
	brk $7E.b		; 00 7E
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	rts		; 60

	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	sty $84.b		; 84 84
	asl $6E0E.w		; 0E 0E 6E
	rol $083C.w		; 2E 3C 08
	jmp ($7C18.w,X)		; 7C 18 7C
	clc		; 18
	jsr ($FC10.w,X)		; FC 10 FC
	bpl  60.b		; 10 3C
	brk $3C.b		; 00 3C
	brk $7C.b		; 00 7C
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($7C18.w,X)		; 7C 18 7C
	php		; 08
	ror $3E00.w,X		; 7E 00 3E
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
	brk $70.b		; 00 70
	bra  96.b		; 80 60
	dey		; 88
	bne  36.b		; D0 24
	phx		; DA
	bit $41.b		; 24 41
	jsl $3F007F.l		; 22 7F 00 3F
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -112.b		; 80 90
	bra  56.b		; 80 38
	jsr $243C.w		; 20 3C 24
	rol $0022.w,X		; 3E 22 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $A0.b		; 00 A0
	brk $A0.b		; 00 A0
	brk $F0.b		; 00 F0
	brk $D0.b		; 00 D0
	brk $50.b		; 00 50
	brk $70.b		; 00 70
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	rts		; 60

	brk $A0.b		; 00 A0
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	ora #$1F17.w		; 09 17 1F
	and $2F1F2F.l		; 2F 2F 1F 2F
	ora $1E0F17.l,X		; 1F 17 0F 1E
	and [$65.b]		; 27 65
	stz $7FBC.w,X		; 9E BC 7F
	ora [$00.b],Y		; 17 00
	plp		; 28
	ora [$16.b]		; 07 16
	ora #$001F.w		; 09 1F 00
	ora $002700.l		; 0F 00 27 00
	stz $7F00.w,X		; 9E 00 7F
	brk $FF.b		; 00 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $1DFFF9.l,X		; FF F9 FF 1D
	inc $7CBB.w,X		; FE BB 7C
	sei		; 78
	sbc $1FFFFD.l,X		; FF FD FF 1F
	cpx #$7F.b		; E0 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $EE.b		; 00 EE
	bpl  92.b		; 10 5C
	jsr $619D.w		; 20 9D 61
	dec $0B32.w		; CE 32 0B
	sei		; 78
	ora $3C.b		; 05 3C
	brk $0E.b		; 00 0E
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$10.b],Y		; 17 10
	phd		; 0B
	php		; 08
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	lda #$D437.w		; A9 37 D4
	tas		; 1B
	nop		; EA
	ora $0675.w		; 0D 75 06
	dec A		; 3A
	sta $3D.b,S		; 83 3D
	sbc ($1E.b,X)		; E1 1E
	bvs  15.b		; 70 0F
	sei		; 78
	rep #$02		; C2 02
	sbc ($01.b,X)		; E1 01
	beq   0.b		; F0 00
	sed		; F8
	brk $FC.b		; 00 FC
	bra  94.b		; 80 5E
	rti		; 40

	and $000720.l		; 2F 20 07 00
	asl $1D21.w		; 0E 21 1D
	lsr $39.b		; 46 39
	stx $1DF2.w		; 8E F2 1D
	ror $79.b		; 66 79
	and $18F7C0.l,X		; 3F C0 F7 18
	sbc $1C3E.w,X		; FD 3E 1C
	ora ($3A.b,X)		; 01 3A
	cop $74.b		; 02 74
	tsb $E8.b		; 04 E8
	ora #$0380.w		; 09 80 03
	cpy #$C1.b		; C0 C1
	brk $18.b		; 00 18
	sec		; 38
	and $FF10FF.l,X		; 3F FF 10 FF
	sec		; 38
	sbc $E0FFF0.l,X		; FF F0 FF E0
	sbc $C07FC0.l,X		; FF C0 7F C0
	sbc $3CFB18.l,X		; FF 18 FB 3C
	brk $10.b		; 00 10
	jsr $6238.w		; 20 38 62
	sbc ($6F.b)		; F2 6F
	sbc $07DF1F.l		; EF 1F DF 07
	cmp [$1B.b]		; C7 1B
	tyx		; BB
	bmi 124.b		; 30 7C
	jmp ($BCC0.w,X)		; 7C C0 BC
	rti		; 40

	ldy $FC40.w,X		; BC 40 FC
	bpl -52.b		; 10 CC
	bmi -52.b		; 30 CC
	bmi -40.b		; 30 D8
	and ($F1.b,X)		; 21 F1
	ora $88.b,S		; 03 88
	dey		; 88
	cli		; 58
	cli		; 58
	php		; 08
	php		; 08
	brk $10.b		; 00 10
	bra -80.b		; 80 B0
	bra -80.b		; 80 B0
	brk $20.b		; 00 20
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $123E.w		; 0C 3E 12
	adc ($7E.b,S),Y		; 73 7E
	cmp $FE.b,S		; C3 FE
	sta $EE.b,S		; 83 EE
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  44.b		; 10 2C
	jsr $003C.w		; 20 3C 00
	jmp ($FC00.w,X)		; 7C 00 FC
	brk $76.b		; 00 76
	brk $32.b		; 00 32
	brk $3B.b		; 00 3B
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	ora $1D10.w,X		; 1D 10 1D
	inc A		; 1A
	asl $0707.w,X		; 1E 07 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$00.b]		; E7 00
	adc ($01.b)		; 72 01
	and $00BB00.l,X		; 3F 00 BB 00
	sbc $0C.b,X		; F5 0C
	cop $1E.b		; 02 1E
	ora ($0F.b,X)		; 01 0F
	brk $07.b		; 00 07
	dec $DE.b		; C6 DE
	adc ($ED.b,X)		; 61 ED
	and ($F0.b,S),Y		; 33 F0
	ora [$40.b]		; 07 40
	phd		; 0B
	php		; 08
	ora $04.b		; 05 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	brk $70.b		; 00 70
	bra  56.b		; 80 38
	cpy #$1C.b		; C0 1C
	cpx #$0C.b		; E0 0C
	stz $06.b,X		; 74 06
	tsx		; BA
	sta $00.b,S		; 83 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	cpx #$20.b		; E0 20
	beq  16.b		; F0 10
	sed		; F8
	php		; 08
	sed		; F8
	brk $7C.b		; 00 7C
	brk $00.b		; 00 00
	pha		; 48
	brk $48.b		; 00 48
	jsr $6068.w		; 20 68 60
	plp		; 28
	rts		; 60

	php		; 08
	sei		; 78
	brk $7C.b		; 00 7C
	brk $5C.b		; 00 5C
	jsr $4070.w		; 20 70 40
	bvs  64.b		; 70 40
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $08.b,S		; 03 08
	ora [$19.b]		; 07 19
	jsl $0E7C13.l		; 22 13 7C 0E
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	asl $1C08.w		; 0E 08 1C
	bpl   0.b		; 10 00
	brk $F0.b		; 00 F0
	sty $1860.w		; 8C 60 18
	cpy #$30.b		; C0 30
	cpy #$60.b		; C0 60
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sei		; 78
	php		; 08
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
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
	ora ($02.b,X)		; 01 02
	cop $31.b		; 02 31
	adc ($8F.b),Y		; 71 8F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	and ($00.b),Y		; 31 00
	sta $000000.l		; 8F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $3A.b		; C4 3A
	ror $F9.b,X		; 76 F9
	sbc $00FE.w,X		; FD FE 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3A.b		; 00 3A
	brk $F9.b		; 00 F9
	brk $FE.b		; 00 FE
	brk $BD.b		; 00 BD
	ror $9F67.w,X		; 7E 67 9F
	tsa		; 3B
	ora [$1E.b]		; 07 1E
	ora ($2F.b,X)		; 01 2F
	trb $723F.w		; 1C 3F 72
	adc $451E09.l,X		; 7F 09 1E 45
	ror $9F00.w,X		; 7E 00 9F
	brk $07.b		; 00 07
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	trb $7212.w		; 1C 12 72
	php		; 08
	ora #$0530.w		; 09 30 05
	bvs  -1.b		; 70 FF
	eor #$C7B4.w		; 49 B4 C7
	ldy $E80F.w,X		; BC 0F E8
	sta $58.b,S		; 83 58
	sbc ($0C.b),Y		; F1 0C
	sbc ($0F.b),Y		; F1 0F
	plx		; FA
	asl $FD.b		; 06 FD
	ora ($B0.b,X)		; 01 B0
	asl $B4.b		; 06 B4
	ora $E7.b		; 05 E7
	brk $5F.b		; 00 5F
	php		; 08
	ora [$04.b]		; 07 04
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	brk $06.b		; 00 06
	ora ($0C.b,X)		; 01 0C
	ora $0C.b		; 05 0C
	ora $18.b,S		; 03 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora [$06.b]		; 07 06
	ora [$04.b]		; 07 04
	phd		; 0B
	php		; 08
	ora $F03608.l		; 0F 08 36 F0
	jmp $83B8C1.l		; 5C C1 B8 83
	bvs   6.b		; 70 06
	cpx #$0C.b		; E0 0C
	cpy #$18.b		; C0 18
	bra  48.b		; 80 30
	brk $60.b		; 00 60
	eor $81BF40.l		; 4F 40 BF 81
	ror $FC02.w,X		; 7E 02 FC
	tsb $F8.b		; 04 F8
	php		; 08
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	inc $DF3F.w,X		; FE 3F DF
	and $0100FF.l,X		; 3F FF 00 01
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3E.b		; 00 3E
	and $003F00.l,X		; 3F 00 3F 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F7.b		; 00 F7
	sei		; 78
	adc $609FF0.l		; 6F F0 9F 60
	sbc $79BF01.l,X		; FF 01 BF 79
	cmp $1CEF3A.l,X		; DF 3A EF 1C
	lda $FD6143.l,X		; BF 43 61 FD
	eor $FB.b,S		; 43 FB
	asl $76.b		; 06 76
	ora $05.b		; 05 05
	ora $0A7D.w,X		; 1D 7D 0A
	dec A		; 3A
	tsb $3C.b		; 04 3C
	ora $43.b,S		; 03 43
	sbc ($06.b),Y		; F1 06
	xce		; FB
	tsb $FF.b		; 04 FF
	bra  -2.b		; 80 FE
	bra  -4.b		; 80 FC
	brk $F9.b		; 00 F9
	ora ($FE.b,X)		; 01 FE
	sta $FC.b,S		; 83 FC
	ora $A3.b,S		; 03 A3
	ldx #$37.b		; A2 37
	bit $97.b,X		; 34 97
	bcc -121.b		; 90 87
	bra   7.b		; 80 07
	rti		; 40

	asl $40.b		; 06 40
	sta ($81.b,X)		; 81 81
	ora $03.b,S		; 03 03
	dec $AE13.w,X		; DE 13 AE
	and ($1C.b,S),Y		; 33 1C
	and ($5C.b),Y		; 31 5C
	adc ($9C.b),Y		; 71 9C
	sbc ($0C.b),Y		; F1 0C
	sbc ($0C.b,X)		; E1 0C
	sbc ($0C.b,X)		; E1 0C
	sbc ($EC.b,X)		; E1 EC
	brk $DC.b		; 00 DC
	bpl -18.b		; 10 EE
	jsr $008E.w		; 20 8E 00
	lsr $9E40.w		; 4E 40 9E
	bra  30.b		; 80 1E
	brk $1E.b		; 00 1E
	brk $05.b		; 00 05
	cop $09.b		; 02 09
	asl $10.b		; 06 10
	tsb $0833.w		; 0C 33 08
	adc $087F08.l,X		; 7F 08 7F 08
	inc $FC08.w,X		; FE 08 FC
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	cop $07.b		; 02 07
	tsb $0F.b		; 04 0F
	php		; 08
	asl $00.b		; 06 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	cop $02.b		; 02 02
	cpy #$20.b		; C0 20
	cpx #$00.b		; E0 00
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
	dec $9A00.w,X		; DE 00 9A
	brk $12.b		; 00 12
	php		; 08
	asl $1E04.w,X		; 1E 04 1E
	ora $1F.b,S		; 03 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $02.b		; 00 02
	brk $06.b		; 00 06
	brk $0E.b		; 00 0E
	php		; 08
	cop $00.b		; 02 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	inx		; E8
	beq -12.b		; F0 F4
	sed		; F8
	inc $EAF8.w,X		; FE F8 EA
	sbc $FF66.w,X		; FD 66 FF
	stx $7377.w		; 8E 77 73
	stx $FCC3.w		; 8E C3 FC
	beq   0.b		; F0 00
	sed		; F8
	brk $F8.b		; 00 F8
	brk $FD.b		; 00 FD
	brk $FF.b		; 00 FF
	brk $77.b		; 00 77
	brk $86.b		; 00 86
	bra  52.b		; 80 34
	bmi -62.b		; 30 C2
	jsr ($44EE.w,X)		; FC EE 44
	inc $5C.b		; E6 5C
	jmp.w [$586C]		; DC 6C 58
	jmp ($789C.w,X)		; 7C 9C 78
	bit $F8.b,X		; 34 F8
	tya		; 98
	rts		; 60

	tsb $00.b		; 04 00
	sty $10.b		; 84 10
	sty $AC20.w		; 8C 20 AC
	jsr $809C.w		; 20 9C 80
	clv		; B8
	brk $78.b		; 00 78
	brk $60.b		; 00 60
	brk $3F.b		; 00 3F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	ora ($02.b,X)		; 01 02
	ora $02.b,S		; 03 02
	ora $DF.b,S		; 03 DF
	rol $18EF.w,X		; 3E EF 18
	inc $FF00.w,X		; FE 00 FF
	brk $EF.b		; 00 EF
	brk $B7.b		; 00 B7
	brk $B3.b		; 00 B3
	brk $99.b		; 00 99
	brk $0C.b		; 00 0C
	rol $3800.w,X		; 3E 00 38
	.db $42, $43		; 42 43
	eor $4C59.w,Y		; 59 59 4C
	jmp $A34E06.l		; 5C 06 4E A3
	sbc $FEF791.l		; EF 91 F7 FE
	ora ($E6.b,X)		; 01 E6
	ora ($7E.b,X)		; 01 7E
	brk $3C.b		; 00 3C
	brk $98.b		; 00 98
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	bpl 120.b		; 10 78
	sei		; 78
	brk $18.b		; 00 18
	rti		; 40

	cpy #$30.b		; C0 30
	beq -112.b		; F0 90
	beq  96.b		; F0 60
	rts		; 60

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	trb $1CB1.w		; 1C B1 1C
	and ($1C.b),Y		; 31 1C
	and ($04.b),Y		; 31 04
	and ($04.b),Y		; 31 04
	ora ($0C.b),Y		; 11 0C
	ora $190C.w,Y		; 19 0C 19
	tsb $0E19.w		; 0C 19 0E
	brk $0E.b		; 00 0E
	brk $0E.b		; 00 0E
	brk $1E.b		; 00 1E
	bpl  30.b		; 10 1E
	bpl   6.b		; 10 06
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	rti		; 40

	bra  96.b		; 80 60
	ldy #$50.b		; A0 50
	bpl -56.b		; 10 C8
	rti		; 40

	ldy $7C.b		; A4 7C
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $30.b		; 00 30
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
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
	ora ($00.b,X)		; 01 00
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	php		; 08
	phd		; 0B
	php		; 08
	ora $0E030E.l		; 0F 0E 03 0E
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dec $EFE0.w,X		; DE E0 EF
	beq  -9.b		; F0 F7
	sed		; F8
	xce		; FB
	jsr ($E77F.w,X)		; FC 7F E7
	sbc $30FE1C.l,X		; FF 1C FE 30
	cmp ($20.b),Y		; D1 20
	cpy #$E0.b		; C0 E0
	cpx #$F8.b		; E0 F8
	cpx #$FE.b		; E0 FE
	bvs  -4.b		; 70 FC
	tsb $FF.b		; 04 FF
	clc		; 18
	jmp.w [$3100]		; DC 00 31
	brk $6E.b		; 00 6E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpx #$00.b		; E0 00
	ror $C281.w,X		; 7E 81 C2
	ora ($03.b,X)		; 01 03
	ora ($FE.b,X)		; 01 FE
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$01.b		; C0 01
	and $FC00.w,X		; 3D 00 FC
	and $003C.w,X		; 3D 3C 00
	bra   0.b		; 80 00
	beq  16.b		; F0 10
	asl $0774.w,X		; 1E 74 07
	jsr ($7F00.w,X)		; FC 00 7F
	brk $9F.b		; 00 9F
	bra  31.b		; 80 1F
	sbc $C00000.l,X		; FF 00 00 C0
	cpy #$E8.b		; C0 E8
	php		; 08
	plx		; FA
	cop $FF.b		; 02 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $60.b		; 00 60
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -32.b		; 80 E0
	jsr $9038.w		; 20 38 90
	trb $0C08.w		; 1C 08 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	beq   0.b		; F0 00
	ora $05.b,S		; 03 05
	ora $0B03.w		; 0D 03 0B
	ora [$17.b]		; 07 17
	ora $0D1F17.l,X		; 1F 17 1F 0D
	ora $02.b,S		; 03 02
	ora $0601.w		; 0D 01 06
	tsb $01.b		; 04 01
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	ora $001F00.l,X		; 1F 00 1F 00
	ora $00.b,S		; 03 00
	ora $0600.w		; 0D 00 06
	brk $D0.b		; 00 D0
	inc $F9BF.w,X		; FE BF F9
	clv		; B8
	sbc $7DBF78.l,X		; FF 78 BF 7D
	tsx		; BA
	tad		; 5B
	ldy $FF10.w,X		; BC 10 FF
	asl $7CF1.w		; 0E F1 7C
	sta $D9.b,S		; 83 D9
	and ($DC.b,X)		; 21 DC
	jsr $209E.w		; 20 9E 20
	tsx		; BA
	brk $BC.b		; 00 BC
	brk $FF.b		; 00 FF
	brk $F1.b		; 00 F1
	brk $F0.b		; 00 F0
	php		; 08
	pea $F38A.w		; F4 8A F3
	cpy $FF74.w		; CC 74 FF
	php		; 08
	sbc [$88.b],Y		; F7 88
	adc [$FF.b],Y		; 77 FF
	beq  31.b		; F0 1F
	cpx #$70.b		; E0 70
	bra 114.b		; 80 72
	brk $34.b		; 00 34
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $F0.b		; 00 F0
	brk $EE.b		; 00 EE
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	rts		; 60

	bra -32.b		; 80 E0
	brk $F8.b		; 00 F8
	brk $FC.b		; 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	rts		; 60

	sei		; 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	cop $0E.b		; 02 0E
	phd		; 0B
	clc		; 18
	ora $E03E30.l,X		; 1F 30 3E E0
	adc ($C3.b,S),Y		; 73 C3
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora [$00.b]		; 07 00
	ora $001F00.l		; 0F 00 1F 00
	ldy $0080.w,X		; BC 80 00
	ora [$05.b]		; 07 05
	jmp ($C05F.w,X)		; 7C 5F C0
	jsr ($F200.w,X)		; FC 00 F2
	ora $98.b,S		; 03 98
	asl $7840.w,X		; 1E 40 78
	brk $E0.b		; 00 E0
	ora ($01.b,X)		; 01 01
	phd		; 0B
	php		; 08
	lda $00FF80.l,X		; BF 80 FF 00
	sbc $E401.w,X		; FD 01 E4
	tsb $B0.b		; 04 B0
	bmi -64.b		; 30 C0
	cpy #$60.b		; C0 60
	ora [$C0.b]		; 07 C0
	asl $1C90.w		; 0E 90 1C
	jsr $4038.w		; 20 38 40
	bvs -128.b		; 70 80
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra  -4.b		; 80 FC
	tsb $F8.b		; 04 F8
	php		; 08
	cpx #$00.b		; E0 00
	bne  16.b		; D0 10
	ldy #$20.b		; A0 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
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
	lda $E040.w,Y		; B9 40 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stp		; DB
	and $0B77.w,X		; 3D 77 0B
	and $0E03.w,X		; 3D 03 0E
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $003F01.l,X		; FF 01 3F 00
	ora $000300.l,X		; 1F 00 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $0B.b,S		; 03 0B
	ora [$12.b],Y		; 17 12
	and $1F5F2F.l		; 2F 2F 5F 1F
	adc $7E7F1F.l,X		; 7F 1F 7F 7E
	and $03BF7E.l,X		; 3F 7E BF 03
	brk $17.b		; 00 17
	brk $2F.b		; 00 2F
	brk $5F.b		; 00 5F
	brk $77.b		; 00 77
	php		; 08
	adc [$18.b]		; 67 18
	and $308F10.l		; 2F 10 8F 30
	tas		; 1B
	brk $0D.b		; 00 0D
	brk $0D.b		; 00 0D
	brk $06.b		; 00 06
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $09.b		; 00 09
	ora $0604.w		; 0D 04 06
	tsb $06.b		; 04 06
	cop $03.b		; 02 03
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc $7700.w		; EE 00 77
	brk $69.b		; 00 69
	brk $34.b		; 00 34
	brk $3B.b		; 00 3B
	brk $3D.b		; 00 3D
	brk $36.b		; 00 36
	brk $17.b		; 00 17
	brk $06.b		; 00 06
	eor [$21.b],Y		; 57 21
	and #$3620.w		; 29 20 36
	bpl  27.b		; 10 1B
	ora #$140D.w		; 09 0D 14
	asl $12.b,X		; 16 12
	tas		; 1B
	ora $0B.b,S		; 03 0B
	rol $C200.w,X		; 3E 00 C2
	brk $FE.b		; 00 FE
	brk $7F.b		; 00 7F
	ora ($1E.b,X)		; 01 1E
	ora ($C4.b,X)		; 01 C4
	ora $FC.b,S		; 03 FC
	ora $7C.b,S		; 03 7C
	ora $01.b,S		; 03 01
	cpy #$C1.b		; C0 C1
	jsr ($7C7D.w,X)		; FC 7D 7C
	trb $019C.w		; 1C 9C 01
	sbc ($C3.b,X)		; E1 C3
	xce		; FB
	sei		; 78
	sei		; 78
	sec		; 38
	clv		; B8
	brk $3F.b		; 00 3F
	brk $03.b		; 00 03
	ora ($07.b,X)		; 01 07
	cop $06.b		; 02 06
	ora ($04.b,X)		; 01 04
	ora $0C.b		; 05 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	dey		; 88
	sty $8CA8.w		; 8C A8 8C
	bvs  24.b		; 70 18
	cpy #$18.b		; C0 18
	cpy #$10.b		; C0 10
	ldy #$30.b		; A0 30
	bra  32.b		; 80 20
	bra  32.b		; 80 20
	bvs   0.b		; 70 00
	bvs   0.b		; 70 00
	cpx #$00.b		; E0 00
	beq  16.b		; F0 10
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	cpx #$20.b		; E0 20
	cpy #$00.b		; C0 00
	ora $04.b,S		; 03 04
	asl $09.b		; 06 09
	ora $0A.b		; 05 0A
	ora [$08.b]		; 07 08
	ora [$00.b]		; 07 00
	ora $030F01.l		; 0F 01 0F 03
	phd		; 0B
	ora [$04.b]		; 07 04
	brk $09.b		; 00 09
	brk $0A.b		; 00 0A
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $02.b,S		; 03 02
	ora [$3F.b]		; 07 3F
	cmp $AE73.w,X		; DD 73 AE
	ror $9D.b		; 66 9D
	sta $70.b,X		; 95 70
	dex		; CA
	and ($E4.b,S),Y		; 33 E4
	cmp $7ECEB1.l,X		; DF B1 CE 7E
	sta ($DC.b,X)		; 81 DC
	ora $22A0.w,X		; 1D A0 22
	dey		; 88
	ora #$202E.w		; 09 2E 20
	ora $8201.w		; 0D 01 82
	rep #$00		; C2 00
	cpx #$00.b		; E0 00
	cmp ($FF.b,X)		; C1 FF
	brk $7F.b		; 00 7F
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	rts		; 60

	sbc $7CFF70.l,X		; FF 70 FF 7C
	sbc $F6FE.w,Y		; F9 FE F6
	xce		; FB
	ora $9F1F1F.l,X		; 1F 1F 1F 9F
	tsb $6D0C.w		; 0C 0C 6D
	adc $7373.w		; 6D 73 73
	adc $707D.w,Y		; 79 7D 70
	inc $FF22.w,X		; FE 22 FF
	jsr ($FC00.w,X)		; FC 00 FC
	rti		; 40

	ldx $FF40.w,Y		; BE 40 FF
	brk $FE.b		; 00 FE
	brk $FC.b		; 00 FC
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $38.b		; 00 38
	sec		; 38
	bpl  80.b		; 10 50
	tsb $9E4C.w		; 0C 4C 9E
	stz $CCCC.w,X		; 9E CC CC
	iny		; C8
	iny		; C8
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	ldy $D803.w,X		; BC 03 D8
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $98.b		; 00 98
	cld		; D8
	cpy #$E0.b		; C0 E0
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	cop $0E.b		; 02 0E
	ora $18.b,S		; 03 18
	ora [$30.b]		; 07 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $101F08.l		; 0F 08 1F 10
	rol $5CE0.w		; 2E E0 5C
	cpy #$B9.b		; C0 B9
	sta ($72.b,X)		; 81 72
	ora $E4.b,S		; 03 E4
	ora [$C8.b]		; 07 C8
	asl $1C10.w		; 0E 10 1C
	rts		; 60

	jmp ($405F.w,X)		; 7C 5F 40
	lda $007E80.l,X		; BF 80 7E 00
	sbc $FA01.w,X		; FD 01 FA
	cop $F4.b		; 02 F4
	tsb $E8.b		; 04 E8
	php		; 08
	bcc  16.b		; 90 10
	cpy #$FF.b		; C0 FF
	brk $FF.b		; 00 FF
	asl $FE.b		; 06 FE
	tsb $18FC.w		; 0C FC 18
	sed		; F8
	asl $FE.b		; 06 FE
	ora ($3F.b,X)		; 01 3F
	brk $03.b		; 00 03
	jsr $CF20.w		; 20 20 CF
	cmp $331819.l		; CF 19 18 33
	bmi -25.b		; 30 E7
	cpx #$39.b		; E0 39
	sec		; 38
	asl $06.b		; 06 06
	brk $00.b		; 00 00
	tsb $0819.w		; 0C 19 08
	ora $0B18.w,Y		; 19 18 0B
	clc		; 18
	cop $3C.b		; 02 3C
	cop $3E.b		; 02 3E
	brk $7E.b		; 00 7E
	bpl -20.b		; 10 EC
	php		; 08
	ora [$01.b]		; 07 01
	asl $00.b		; 06 00
	asl $02.b		; 06 02
	asl $02.b		; 06 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cpx #$10.b		; E0 10
	jmp.w [$7AE2]		; DC E2 7A
	ldy $BE.b,X		; B4 BE
	cpy #$02.b		; C0 02
	jsr ($FC1B.w,X)		; FC 1B FC
	sbc $FE06.w,X		; FD 06 FE
	ora $10.b,S		; 03 10
	brk $E2.b		; 00 E2
	brk $B4.b		; 00 B4
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $18.b		; 00 18
	brk $0C.b		; 00 0C
	jsr $0403.w		; 20 03 04
	ora ($1E.b,X)		; 01 1E
	ora ($F3.b)		; 12 F3
	ldy $87.b,X		; B4 87
	iny		; C8
	asl $3820.w		; 0E 20 38
	bra -32.b		; 80 E0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	tsb $04.b		; 04 04
	bit $7A20.w		; 2C 20 7A
	cop $F4.b		; 02 F4
	tsb $D0.b		; 04 D0
	bpl  64.b		; 10 40
	rti		; 40

	brk $00.b		; 00 00
	asl $1F00.w		; 0E 00 1F
	brk $3F.b		; 00 3F
	brk $E2.b		; 00 E2
	ora $CB.b,S		; 03 CB
	tsb $10EE.w		; 0C EE 10
	bvs -128.b		; 70 80
	rts		; 60

	bra   3.b		; 80 03
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1D.b		; 00 1D
	ora ($34.b,X)		; 01 34
	tsb $10.b		; 04 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $1F.b		; 00 1F
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
	brk $38.b		; 00 38
	eor $38.b,S		; 43 38
	.db $42, $38		; 42 38
	.db $42, $34		; 42 34
	lsr $30.b		; 46 30
	mvp $44,$20		; 44 20 44
	pla		; 68
	jmp $CC60.w		; 4C 60 CC
	rol $3E02.w,X		; 3E 02 3E
	cop $3C.b		; 02 3C
	brk $78.b		; 00 78
	rti		; 40

	jmp ($7C44.w,X)		; 7C 44 7C
	mvp $00,$30		; 44 30 00
	sec		; 38
	php		; 08
	bpl   0.b		; 10 00
	clc		; 18
	brk $18.b		; 00 18
	brk $1C.b		; 00 1C
	brk $2C.b		; 00 2C
	bpl   4.b		; 10 04
	clc		; 18
	stz $08.b		; 64 08
	bit $08.b		; 24 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	sec		; 38
	clc		; 18
	sec		; 38
	php		; 08
	sei		; 78
	php		; 08
	dey		; 88
	bpl -40.b		; 10 D8
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $5C.b		; 00 5C
	rts		; 60

	bvs -128.b		; 70 80
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	bvs  16.b		; 70 10
	rts		; 60

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A0.b		; 00 A0
	jsr $8080.w		; 20 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	adc [$02.b],Y		; 77 02
	inc $12.b,X		; F6 12
	inc $10.b,X		; F6 10
	inc $FE00.w		; EE 00 FE
	cop $FE.b		; 02 FE
	cop $D6.b		; 02 D6
	cop $9A.b		; 02 9A
	php		; 08
	tsb $0C00.w		; 0C 00 0C
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $0C.b		; 00 0C
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b,X)		; 01 00
	trb $3110.w		; 1C 10 31
	asl $3F60.w		; 0E 60 3F
	rts		; 60

	inc A		; 1A
.ACCU 16
.INDEX 16
	rep #$71		; C2 71
	cmp [$38.b]		; C7 38
	sta $008FF0.l		; 8F F0 8F 00
	brk $0F.b		; 00 0F
	ora ($3F.b,X)		; 01 3F
	jsr $001F.w		; 20 1F 00
	adc $3E40.w,X		; 7D 40 3E
	asl $F3.b		; 06 F3
	sta $79.b,S		; 83 79
	ora #$7040.w		; 09 40 70
	ldy #$D038.w		; A0 38 D0
	trb $0EE8.w		; 1C E8 0E
	pea $7A07.w		; F4 07 7A
	ora $3C.b,S		; 03 3C
	sta ($2F.b,X)		; 81 2F
	beq -96.b		; F0 A0
	jsr $10D0.w		; 20 D0 10
	inx		; E8
	php		; 08
	pea $FA04.w		; F4 04 FA
	cop $FC.b		; 02 FC
	brk $FE.b		; 00 FE
	bra  64.b		; 80 40
	rti		; 40

	ora [$30.b]		; 07 30
	ora $701E30.l,X		; 1F 30 1E 70
	asl $2D60.w		; 0E 60 2D
	sbc ($29.b,X)		; E1 29
	sbc ($22.b,X)		; E1 22
	sbc $C6.b,S		; E3 C6
	and [$1F.b]		; 27 1F
	bpl  15.b		; 10 0F
	brk $2F.b		; 00 2F
	jsr $203F.w		; 20 3F 20
	lsr $5E40.w,X		; 5E 40 5E
	rti		; 40

	cmp $38C1.w,X		; DD C1 38
	jsr $0201.w		; 20 01 02
	cop $01.b		; 02 01
	ora $04.b,S		; 03 04
	brk $67.b		; 00 67
	adc ($6E.b,S),Y		; 73 6E
	eor $1CEFF4.l,X		; 5F F4 EF 1C
	lda $00024C.l,X		; BF 4C 02 00
	ora ($00.b,X)		; 01 00
	tsb $00.b		; 04 00
	stz $00.b		; 64 00
	adc #$F300.w		; 69 00 F3
	brk $1B.b		; 00 1B
	brk $48.b		; 00 48
	ora ($BB.b,X)		; 01 BB
	jmp ($FEFD.w,X)		; 7C FD FE
	sbc $EC1F1C.l		; EF 1C 1F EC
	cmp [$18.b]		; C7 18
	cmp ($1C.b,S),Y		; D3 1C
	lda ($3C.b,S),Y		; B3 3C
	adc $007C70.l		; 6F 70 7C 00
	inc $1C00.w,X		; FE 00 1C
	brk $0C.b		; 00 0C
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora [$FF.b]		; 07 FF
	ora $FD0FFE.l,X		; 1F FE 0F FD
	rol $3E.b		; 26 3E
	rol $3C3C.w,X		; 3E 3C 3C
	tda		; 7B
	tda		; 7B
	tda		; 7B
	tda		; 7B
	ora [$07.b]		; 07 07
	asl $041F.w		; 0E 1F 04
	ora $FF2F00.l,X		; 1F 00 2F FF
	jmp ($787F.w,X)		; 7C 7F 78
	tda		; 7B
	bvs -76.b		; 70 B4
	ldx #$85E9.w		; A2 E9 85
	ror $8F.b,X		; 76 8F
	ldy #$601E.w		; A0 1E 60
	brk $38.b		; 00 38
	ror $FD31.w,X		; 7E 31 FD
	jsr $03FC.w		; 20 FC 03
	plx		; FA
	asl $F4.b		; 06 F4
	php		; 08
	iny		; C8
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl   8.b		; 10 08
	clc		; 18
	bit $17.b		; 24 17
	php		; 08
	ora [$3F.b]		; 07 3F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	php		; 08
	brk $24.b		; 00 24
	brk $08.b		; 00 08
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $1F.b		; 00 1F
	brk $7C.b		; 00 7C
	ora $FD.b,S		; 03 FD
	asl $FF.b		; 06 FF
	brk $FF.b		; 00 FF
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	ora $00.b,S		; 03 00
	brk $18.b		; 00 18
	tas		; 1B
	bvs 118.b		; 70 76
	adc ($61.b,X)		; 61 61
	ora [$07.b]		; 07 07
	rep #$00		; C2 00
	jsr ($E101.w,X)		; FC 01 E1
	ora $FF.b,S		; 03 FF
	ora $FF07FF.l		; 0F FF 07 FF
	ora $FF.b,S		; 03 FF
	ora $FF.b,S		; 03 FF
	ora [$00.b]		; 07 00
	ora ($C0.b,X)		; 01 C0
	cmp $80.b,S		; C3 80
	sta $776F61.l,X		; 9F 61 6F 77
	adc [$7B.b],Y		; 77 7B
	tda		; 7B
	and ($33.b,S),Y		; 33 33
	cmp [$C7.b]		; C7 C7
	lda $5B40.w		; AD 40 5B
	rts		; 60

	pld		; 2B
	bcs -66.b		; B0 BE
	bcs -73.b		; B0 B7
	sed		; F8
	ldy $F8.b,X		; B4 F8
	sta [$D8.b]		; 87 D8
	sbc [$80.b]		; E7 80
	ora ($53.b,X)		; 01 53
	.db $42, $E6		; 42 E6
	jsr $10F4.w		; 20 F4 10
	sbc ($10.b),Y		; F1 10
	sed		; F8
	bpl  -5.b		; 10 FB
	brk $F8.b		; 00 F8
	ora $DB.b,S		; 03 DB
	tyx		; BB
	brk $B7.b		; 00 B7
	brk $6F.b		; 00 6F
	brk $DE.b		; 00 DE
	brk $BC.b		; 00 BC
	brk $78.b		; 00 78
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $32.b		; 00 32
	ror $26.b,X		; 76 26
	ror $DE4E.w		; 6E 4E DE
	stz $30BC.w		; 9C BC 30
	bvs  64.b		; 70 40
	cpy #$3030.w		; C0 30 30
	cpx #$20E0.w		; E0 E0 20
	cpy #$0090.w		; C0 90 00
	cpy $08.b		; C4 08
	adc $013E00.l,X		; 7F 00 3E 01
	trb $0B00.w		; 1C 00 0B
	asl $01.b		; 06 01
	ora $C0.b,S		; 03 C0
	cpy #$00E0.w		; C0 E0 00
	bvs   0.b		; 70 00
	bmi   0.b		; 30 00
	ora ($01.b,X)		; 01 01
	ora $00.b,S		; 03 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	jmp ($F97F.w,X)		; 7C 7F F9
	ora ($E2.b,X)		; 01 E2
	ora $80.b,S		; 03 80
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -125.b		; 80 83
	ora $FE.b,S		; 03 FE
	brk $FD.b		; 00 FD
	ora ($78.b,X)		; 01 78
	sei		; 78
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	and [$C8.b],Y		; 37 C8
	adc $1EE18C.l,X		; 7F 8C E1 1E
	sbc $000000.l,X		; FF 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	asl $001E.w,X		; 1E 1E 00
	brk $01.b		; 00 01
	ora $00.b,S		; 03 00
	cop $03.b		; 02 03
	asl $01.b		; 06 01
	tsb $07.b		; 04 07
	tsb $0C07.w		; 0C 07 0C
	phd		; 0B
	clc		; 18
	ora $000018.l		; 0F 18 00 00
	ora $02.b,S		; 03 02
	ora ($00.b,X)		; 01 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	phd		; 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	rts		; 60

	php		; 08
	beq  24.b		; F0 18
	cpx #$C018.w		; E0 18 C0
	bpl -32.b		; 10 E0
	bmi -128.b		; 30 80
	bmi -64.b		; 30 C0
	rts		; 60

	bra  96.b		; 80 60
	beq   0.b		; F0 00
	cpx #$F000.w		; E0 00 F0
	bpl -16.b		; 10 F0
	bpl -64.b		; 10 C0
	brk $E0.b		; 00 E0
	jsr $20A0.w		; 20 A0 20
	cpy #$1F40.w		; C0 40 1F
	rts		; 60

	ror $5C00.w,X		; 7E 00 5C
	brk $2C.b		; 00 2C
	brk $16.b		; 00 16
	brk $0B.b		; 00 0B
	brk $0D.b		; 00 0D
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	ora #$3B18.w		; 09 18 3B
	php		; 08
	tas		; 1B
	tsb $0D.b		; 04 0D
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $08.b		; 00 08
	sbc $00F700.l,X		; FF 00 F7 00
	sbc [$00.b],Y		; F7 00
	sbc [$00.b],Y		; F7 00
	adc [$00.b],Y		; 77 00
	adc [$00.b]		; 67 00
	ror $00.b		; 66 00
	ror $C000.w		; 6E 00 C0
	cpy #$CFC7.w		; C0 C7 CF
	cmp [$CF.b]		; C7 CF
	dec $CE.b		; C6 CE
	lsr $CE.b		; 46 CE
	mvp $44,$DC		; 44 DC 44
	cmp $9908.w,X		; DD 08 99
	ldx $BE40.w,Y		; BE 40 BE
	adc ($2D.b,X)		; 61 2D
	sbc ($73.b,S),Y		; F3 73
	lda $7E3F7E.l,X		; BF 7E 3F 7E
	and $5F3F5D.l,X		; 3F 5D 3F 5F
	and $600340.l,X		; 3F 40 03 60
	ora ($F3.b,X)		; 01 F3
	brk $BF.b		; 00 BF
	brk $37.b		; 00 37
	php		; 08
	and [$08.b],Y		; 37 08
	and ($0D.b)		; 32 0D
	tsa		; 3B
	tsb $D3.b		; 04 D3
	cpx $5CAB.w		; EC AB 5C
	sbc $FDFE.w,X		; FD FE FD
	inc $D8FF.w,X		; FE FF D8
	adc $FCE0.w,Y		; 79 E0 FC
	inc $FFFC.w,X		; FE FC FF
	sty $1C80.w		; 8C 80 1C
	brk $FE.b		; 00 FE
	brk $FE.b		; 00 FE
	brk $D8.b		; 00 D8
	brk $E0.b		; 00 E0
	brk $7E.b		; 00 7E
	bra  31.b		; 80 1F
	cpx #$50FE.w		; E0 FE 50
	sbc $67FE70.l,X		; FF 70 FE 67
	ldx $FB68.w,Y		; BE 68 FB
	plp		; 28
	cmp $EE24.w,X		; DD 24 EE
	ora ($77.b)		; 12 77
	ora #$5710.w		; 09 10 57
	rti		; 40

	bvs  33.b		; 70 21
	adc ($27.b,X)		; 61 27
	rts		; 60

	ora [$60.b]		; 07 60
	ora $30.b,S		; 03 30
	ora ($18.b,X)		; 01 18
	brk $08.b		; 00 08
	beq   0.b		; F0 00
	sed		; F8
	brk $70.b		; 00 70
	bra  32.b		; 80 20
	cpy #$6000.w		; C0 00 60
	bra  48.b		; 80 30
	cpx #$7030.w		; E0 30 70
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	cpy #$E040.w		; C0 40 E0
	jsr $00C0.w		; 20 C0 00
	cpx #$0000.w		; E0 00 00
	brk $03.b		; 00 03
	tsb $03.b		; 04 03
	trb $8403.w		; 1C 03 84
	stx $48.b		; 86 48
	cpy $F830.w		; CC 30 F8
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $84FC.w		; 0C FC 84
	sei		; 78
	pha		; 48
	bmi  48.b		; 30 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $301740.l,X		; 1F 40 17 30
	phd		; 0B
	clc		; 18
	ora $0C.b		; 05 0C
	brk $06.b		; 00 06
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	and $000F00.l,X		; 3F 00 0F 00
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $FC00.w,X		; FE 00 FC
	bra  56.b		; 80 38
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra  68.b		; 80 44
	mvp $28,$28		; 44 28 28
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $007F00.l,X		; 3F 00 7F 00
	cmp $07013F.l,X		; DF 3F 01 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	brk $F0.b		; 00 F0
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $C4.b		; 00 C4
	sec		; 38
.INDEX 8
	sep #$9C		; E2 9C
	and $1CC0.w,Y		; 39 C0 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	bmi  28.b		; 30 1C
	trb $000E.w		; 1C 0E 00
	ora [$00.b]		; 07 00
	cpx #$00.b		; E0 00
	cpy #$3C.b		; C0 3C
	bcc  31.b		; 90 1F
	stz $C7.b,X		; 74 C7
	and $1E61.w,X		; 3D 61 1E
	bmi  15.b		; 30 0F
	clc		; 18
	ora [$0C.b]		; 07 0C
	brk $00.b		; 00 00
	bmi  48.b		; 30 30
	jmp ($3A0C.w)		; 6C 0C 3A
	cop $1E.b		; 02 1E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $FC.b		; 00 FC
	brk $3E.b		; 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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

	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	cpy #$40.b		; C0 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	bvs   0.b		; 70 00
	sei		; 78
	brk $F8.b		; 00 F8
	brk $E8.b		; 00 E8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rts		; 60

	cpx #$70.b		; E0 70
	beq -32.b		; F0 E0
	cpx #$C0.b		; E0 C0
	bne   0.b		; D0 00
	cpy #$60.b		; C0 60
	ror $07E6.w,X		; 7E E6 07
	inc $3F00.w,X		; FE 00 3F
	brk $8F.b		; 00 8F
	bra  49.b		; 80 31
	sbc ($00.b),Y		; F1 00
	ror $0000.w,X		; 7E 00 00
	tya		; 98
	clc		; 18
	sbc $FF01.w,Y		; F9 01 FF
	brk $FF.b		; 00 FF
	brk $7F.b		; 00 7F
	brk $CE.b		; 00 CE
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E0.b		; 00 E0
	ora $FE1FDF.l		; 0F DF 1F FE
	and $E03CF2.l,X		; 3F F2 3C E0
	brk $F8.b		; 00 F8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $3C3F1E.l,X		; 1F 1E 3F 3C
	and $003F00.l,X		; 3F 00 3F 00
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	jmp ($BE1C.w)		; 6C 1C BE
	ror $FC7C.w,X		; 7E 7C FC
	sed		; F8
	sei		; 78
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	tsb $1C7E.w		; 0C 7E 1C
	sbc $30FF38.l,X		; FF 38 FF 30
	inc $FC00.w,X		; FE 00 FC
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor $4F37BF.l,X		; 5F BF 37 4F
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	tyx		; BB
	tsb $4F.b		; 04 4F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	jsr ($B844.w,X)		; FC 44 B8
	sec		; 38
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	brk $B8.b		; 00 B8
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	ora $4780BD.l,X		; 1F BD 80 47
	cpy #$1F.b		; C0 1F
	ror $1E01.w,X		; 7E 01 1E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx #$00.b		; E0 00
	ror $3E00.w,X		; 7E 00 3E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	beq -96.b		; F0 A0
	sec		; 38
	bne  28.b		; D0 1C
	inx		; E8
	asl $87F4.w		; 0E F4 87
	ply		; 7A
	cmp $1C.b,S		; C3 1C
	eor ($0F.b,X)		; 41 0F
	and ($40.b,X)		; 21 40
	rti		; 40

	bne  16.b		; D0 10
	inx		; E8
	php		; 08
	pea $7A04.w		; F4 04 7A
	cop $3C.b		; 02 3C
	brk $3F.b		; 00 3F
	ora ($1E.b,X)		; 01 1E
	brk $F4.b		; 00 F4
	stx $38.b		; 86 38
	sta $1E.b,S		; 83 1E
	eor $0F.b,S		; 43 0F
	and ($07.b,X)		; 21 07
	bpl   3.b		; 10 03
	php		; 08
	ora ($04.b,X)		; 01 04
	brk $02.b		; 00 02
	sei		; 78
	brk $7E.b		; 00 7E
	cop $3D.b		; 02 3D
	ora ($1E.b,X)		; 01 1E
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	bvs -48.b		; 70 D0
	trb $07F4.w		; 1C F4 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	ldy #$20.b		; A0 20
	inx		; E8
	php		; 08
	plx		; FA
	cop $7F.b		; 02 7F
	brk $3F.b		; 00 3F
	brk $5F.b		; 00 5F
	and $7DBF7F.l,X		; 3F 7F BF 7D
	ldx $7CBF.w,Y		; BE BF 7C
	tsx		; BA
	adc $3BDD.w,X		; 7D DD 3B
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	and $00BF00.l,X		; 3F 00 BF 00
	ldx $7C00.w,Y		; BE 00 7C
	brk $7C.b		; 00 7C
	brk $38.b		; 00 38
	brk $FD.b		; 00 FD
	ora $FF.b,S		; 03 FF
	jsr $9BFD.w		; 20 FD 9B
	lda ($CC.b,S),Y		; B3 CC
	eor $D837A0.l,X		; 5F A0 37 D8
	dec $EEFF.w,X		; DE FF EE
	and $200300.l,X		; 3F 00 03 20
	tsb $98.b		; 04 98
	ora $CC.b,S		; 03 CC
	brk $A0.b		; 00 A0
	brk $18.b		; 00 18
	brk $1F.b		; 00 1F
	brk $DF.b		; 00 DF
	brk $0C.b		; 00 0C
	ora ($05.b),Y		; 11 05
	ora ($0E.b),Y		; 11 0E
	clc		; 18
	asl $08.b		; 06 08
	ora $08.b,S		; 03 08
	ora [$0C.b]		; 07 0C
	ora $04.b,S		; 03 04
	ora ($04.b,X)		; 01 04
	ora $000E11.l,X		; 1F 11 0E 00
	ora [$00.b]		; 07 00
	ora $000708.l		; 0F 08 07 00
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $80.b		; 00 80
	brk $C0.b		; 00 C0
	brk $C0.b		; 00 C0
	brk $E0.b		; 00 E0
	bra -32.b		; 80 E0
	brk $7F.b		; 00 7F
	rti		; 40

	adc $007F40.l,X		; 7F 40 7F 00
	brk $80.b		; 00 80
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$40.b		; C0 40
	rti		; 40

	cpy #$40.b		; C0 40
	clv		; B8
	sec		; 38
	lda ($31.b),Y		; B1 31
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $0F.b		; 00 0F
	brk $7F.b		; 00 7F
	ora [$FF.b]		; 07 FF
	clc		; 18
	sed		; F8
	lsr $00C0.w,X		; 5E C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	ora [$18.b]		; 07 18
	clc		; 18
	adc [$60.b]		; 67 60
	lda $000080.l,X		; BF 80 00 00
	brk $00.b		; 00 00
	ora ($FE.b,X)		; 01 FE
	ora $FC.b,S		; 03 FC
	ora $E0D8F0.l		; 0F F0 D8 E0
	jmp $407F60.l		; 5C 60 7F 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr ($F7FC.w,X)		; FC FC F7
	sbc [$28.b],Y		; F7 28
	and $873FBC.l		; 2F BC 3F 87
	ora [$70.b]		; 07 70
	brk $FF.b		; 00 FF
	brk $9C.b		; 00 9C
	brk $8E.b		; 00 8E
	brk $CE.b		; 00 CE
	brk $C7.b		; 00 C7
	brk $67.b		; 00 67
	brk $33.b		; 00 33
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	bvs -108.b		; 70 94
	sbc [$8A.b],Y		; F7 8A
	xce		; FB
	lsr A		; 4A
	tda		; 7B
	sta $BD.b		; 85 BD
	eor $DD.b		; 45 DD
	jsl $0000EE.l		; 22 EE 00 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	bvs   0.b		; 70 00
	jmp ($7600.w,X)		; 7C 00 76
	brk $66.b		; 00 66
	brk $EF.b		; 00 EF
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	cpy #$50.b		; C0 50
	cld		; D8
	mvp $A8,$DC		; 44 DC A8
	clv		; B8
	sei		; 78
	brk $B8.b		; 00 B8
	tsa		; 3B
	tda		; 7B
	adc $9C7F78.l,X		; 7F 78 7F 9C
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	adc $78FF7B.l,X		; 7F 7B FF 78
	sbc $00FF00.l,X		; FF 00 FF 00
	cpx #$00.b		; E0 00
	brk $04.b		; 00 04
	tsb $0F.b		; 04 0F
	cpx #$E7.b		; E0 E7
	beq -25.b		; F0 E7
	beq  15.b		; F0 0F
	cpx #$7E.b		; E0 7E
	ora ($FD.b,X)		; 01 FD
	asl $FE.b		; 06 FE
	ora $0007FA.l		; 0F FA 07 00
	beq -32.b		; F0 E0
	sed		; F8
	cpx #$F8.b		; E0 F8
	brk $F0.b		; 00 F0
	ora ($81.b,X)		; 01 81
	brk $07.b		; 00 07
	asl $0F.b		; 06 0F
	cpx #$EF.b		; E0 EF
	inx		; E8
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $78.b		; 00 78
	tsb $30.b		; 04 30
	asl $1E20.w		; 0E 20 1E
	tsb $1F.b		; 04 1F
	asl A		; 0A
	tas		; 1B
	bvs   0.b		; 70 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $0C.b		; 00 0C
	tsb $0C0C.w		; 0C 0C 0C
	asl A		; 0A
	asl A		; 0A
	tsb $00.b		; 04 00
	inx		; E8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
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
	brk $1F.b		; 00 1F
	brk $3D.b		; 00 3D
	ora $7F.b,S		; 03 7F
	brk $1F.b		; 00 1F
	brk $1F.b		; 00 1F
	brk $3D.b		; 00 3D
	asl A		; 0A
	ply		; 7A
	trb $74.b		; 14 74
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	cop $0C.b		; 02 0C
	tsb $18.b		; 04 18
	brk $F0.b		; 00 F0
	cpx #$F0.b		; E0 F0
	brk $F0.b		; 00 F0
	cpx #$E0.b		; E0 E0
	brk $20.b		; 00 20
	cpy #$B0.b		; C0 B0
	iny		; C8
	jmp $F4F0.w		; 4C F0 F4
	sei		; 78
	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	cpy #$E0.b		; C0 E0
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	iny		; C8
	brk $F0.b		; 00 F0
	brk $78.b		; 00 78
	brk $40.b		; 00 40
	beq -96.b		; F0 A0
	clv		; B8
	rti		; 40

	tya		; 98
	bvc -100.b		; 50 9C
	jsr $288C.w		; 20 8C 28
	lsr $4610.w		; 4E 10 46
	bit $67.b,X		; 34 67
	ldy #$A0.b		; A0 A0
	rti		; 40

	brk $F0.b		; 00 F0
	bcc 104.b		; 90 68
	php		; 08
	sei		; 78
	php		; 08
	stz $44.b,X		; 74 44
	bit $1A04.w,X		; 3C 04 1A
	cop $0E.b		; 02 0E
	brk $1D.b		; 00 1D
	tsb $1839.w		; 0C 39 18
	and $1C231C.l,X		; 3F 1C 23 1C
	asl $0000.w,X		; 1E 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	asl $1F18.w		; 0E 18 1F
	trb $001F.w		; 1C 1F 00
	ora $000100.l,X		; 1F 00 01 00
	brk $00.b		; 00 00
	brk $34.b		; 00 34
	tad		; 5B
	tas		; 1B
	and [$03.b]		; 27 03
	ora $05.b		; 05 05
	ora $03.b,S		; 03 03
	ora $07.b		; 05 07
	php		; 08
	asl A		; 0A
	ora $07.b		; 05 07
	php		; 08
	cli		; 58
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $FE.b		; 00 FE
	ora $FC3EFD.l,X		; 1F FD 3E FC
	and $2E7FDD.l,X		; 3F DD 7F 2E
	eor $EF8F7F.l,X		; 5F 7F 8F EF
	ora $DF7FFF.l,X		; 1F FF 7F DF
	brk $FE.b		; 00 FE
	brk $FF.b		; 00 FF
	brk $5F.b		; 00 5F
	rti		; 40

	ora $000FC0.l,X		; 1F C0 0F 00
	ora $7802.w,X		; 1D 02 78
	ora [$02.b]		; 07 02
	asl $00.b		; 06 00
	ora [$00.b]		; 07 00
	sbc $FFFCFD.l,X		; FF FD FC FF
	brk $FE.b		; 00 FE
	brk $8C.b		; 00 8C
	ora $01F880.l		; 0F 80 F8 01
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($03.b,X)		; 01 03
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F3.b		; 00 F3
	ora $40.b,S		; 03 40
	rti		; 40

	sta ($FF.b,X)		; 81 FF
	ora $FC.b		; 05 FC
	and $00FFE0.l		; 2F E0 FF 00
	sed		; F8
	brk $70.b		; 00 70
	adc $00E000.l,X		; 7F 00 E0 00
	brk $46.b		; 00 46
	lsr $1B.b		; 46 1B
	clc		; 18
	cmp $00FFC0.l,X		; DF C0 FF 00
	sbc $0E8E00.l,X		; FF 00 8E 0E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($F900.w,X)		; 7C 00 F9
	ora ($F2.b,X)		; 01 F2
	ora $18.b,S		; 03 18
	ora $00FCC0.l,X		; 1F C0 FC 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	brk $FD.b		; 00 FD
	ora ($E4.b,X)		; 01 E4
	tsb $30.b		; 04 30
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $BF.b		; 00 BF
	cpy #$3F.b		; C0 3F
	cpy #$67.b		; C0 67
	bra  67.b		; 80 43
	bra  -1.b		; 80 FF
	brk $3F.b		; 00 3F
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $49.b		; 00 49
	eor #$8E8E.w		; 49 8E 8E
	ora [$1F.b]		; 07 1F
	ora $3F.b,S		; 03 3F
	adc $00007F.l,X		; 7F 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	stp		; DB
	brk $EF.b		; 00 EF
	brk $F7.b		; 00 F7
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FE.b		; 00 FE
	ora $FE.b,S		; 03 FE
	ora [$0F.b]		; 07 0F
	brk $D2.b		; 00 D2
	inc $6B.b,X		; F6 6B
	tda		; 7B
	and $3D.b,X		; 35 3D
	stz $C89E.w,X		; 9E 9E C8
	iny		; C8
	cpx #$E3.b		; E0 E3
	cop $07.b		; 02 07
	brk $F0.b		; 00 F0
	cmp $00DF00.l,X		; DF 00 DF 00
	sbc $00FF00.l,X		; FF 00 FF 00
	sbc $00BE00.l,X		; FF 00 BE 00
	jsr ($AE00.w,X)		; FC 00 AE
	rti		; 40

	bcc -80.b		; 90 B0
	bvc 112.b		; 50 70
	rts		; 60

	rts		; 60

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	bvs  31.b		; 70 1F
	brk $1E.b		; 00 1E
	ora ($0E.b,X)		; 01 0E
	ora ($1F.b,X)		; 01 1F
	ora ($1F.b,X)		; 01 1F
	brk $1F.b		; 00 1F
	brk $0F.b		; 00 0F
	brk $07.b		; 00 07
	brk $0C.b		; 00 0C
	tsb $0D0C.w		; 0C 0C 0D
	brk $01.b		; 00 01
	tsb $0C0D.w		; 0C 0D 0C
	tsb $0E0E.w		; 0C 0E 0E
	ora [$07.b]		; 07 07
	cop $02.b		; 02 02
	sbc $01FF00.l,X		; FF 00 FF 01
	sbc $07FF03.l,X		; FF 03 FF 07
	sbc $03FF07.l,X		; FF 07 FF 03
	sbc $00FF00.l,X		; FF 00 FF 00
	beq -13.b		; F0 F3
	eor #$394B.w		; 49 4B 39
	tsa		; 3B
	adc ($77.b,S),Y		; 73 77
	sbc ($F7.b,S),Y		; F3 F7
	ply		; 7A
	tda		; 7B
	sec		; 38
	and $1818.w,Y		; 39 18 18
	adc $3F431F.l		; 6F 1F 43 3F
	bit $0343.w,X		; 3C 43 03
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1E.b		; 00 1E
	ora ($3F.b,X)		; 01 3F
	brk $43.b		; 00 43
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FA.b		; 00 FA
	jsr ($FAF4.w,X)		; FC F4 FA
	php		; 08
	pea $08F0.w		; F4 F0 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp ($9A90.w)		; 6C 90 9A
	rts		; 60

	pea $0800.w		; F4 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $74.b		; 00 74
	sed		; F8
	pea $E8F8.w		; F4 F8 E8
	beq -48.b		; F0 D0
	inx		; E8
	bne -32.b		; D0 E0
	bne -32.b		; D0 E0
	bne -32.b		; D0 E0
	cpy #$F0.b		; C0 F0
	sed		; F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $E8.b		; 00 E8
	brk $E0.b		; 00 E0
	brk $60.b		; 00 60
	bra  96.b		; 80 60
	bra 112.b		; 80 70
	bra  14.b		; 80 0E
	beq  -9.b		; F0 F7
	sed		; F8
	sbc [$08.b]		; E7 08
	inc $08.b,X		; F6 08
	jmp ($90E8.w,X)		; 7C E8 90
	stz $70.b		; 64 70
	ldy $D8.b		; A4 D8
	tsb $C0.b		; 04 C0
	cpy #$00.b		; C0 00
	brk $F8.b		; 00 F8
	php		; 08
	sed		; F8
	php		; 08
	bcc -128.b		; 90 80
	sei		; 78
	rts		; 60

	clc		; 18
	bra  56.b		; 80 38
	bra 120.b		; 80 78
	sty $78.b		; 84 78
	sty $78.b		; 84 78
	sty $78.b		; 84 78
	stx $DC.b		; 86 DC
	asl $EA.b		; 06 EA
	jsr $34D3.w		; 20 D3 34
	sbc $803800.l,X		; FF 00 38 80
	sec		; 38
	bra  60.b		; 80 3C
	sty $3C.b		; 84 3C
	sty $38.b		; 84 38
	bra  28.b		; 80 1C
	bra  44.b		; 80 2C
	bit $00.b		; 24 00
	.db $42, $00		; 42 00
	ora $4FFF01.l		; 0F 01 FF 4F
	cpy #$7F.b		; C0 7F
	brk $FF.b		; 00 FF
	brk $E1.b		; 00 E1
	ora ($60.b,X)		; 01 60
	adc $00C000.l,X		; 7F 00 C0 00
	brk $0E.b		; 00 0E
	asl $80BF.w		; 0E BF 80
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $9800.w,X		; FE 00 98
	clc		; 18
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora ($0F.b,X)		; 01 0F
	ora $3C.b		; 05 3C
	ora [$F0.b],Y		; 17 F0
	lsr $B8C0.w,X		; 5E C0 B8
	adc $C038C0.l,X		; 7F C0 38 C0
	jsr $0000.w		; 20 00 00
	cop $02.b		; 02 02
	phd		; 0B
	php		; 08
	and $80BF20.l		; 2F 20 BF 80
	lsr $46.b		; 46 46
	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	brk $EF.b		; 00 EF
	clc		; 18
	adc $00DDFC.l,X		; 7F FC DD 00
	sbc [$00.b]		; E7 00
	sed		; F8
	brk $60.b		; 00 60
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl -128.b		; 10 80
	bra  62.b		; 80 3E
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $C6.b		; 00 C6
	brk $E6.b		; 00 E6
	brk $76.b		; 00 76
	bra -65.b		; 80 BF
	rti		; 40

	sbc ($8C.b,S),Y		; F3 8C
	sbc $754E.w,Y		; F9 4E 75
	asl $3B.b		; 06 3B
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	jmp $060C.w		; 4C 0C 06
	asl $0A.b		; 06 0A
	cop $0C.b		; 02 0C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $3F.b		; 00 3F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $0E.b		; 00 0E
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FF.b		; 00 FF
	cpx #$FF.b		; E0 FF
	bra  -1.b		; 80 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $F9.b		; 00 F9
	asl $FE.b		; 06 FE
	ora $FF.b,S		; 03 FF
	brk $EF.b		; 00 EF
	sbc $1D9F9F.l		; EF 9F 9F 1D
	ora $0909.w,X		; 1D 09 09
	beq -16.b		; F0 F0
	cpy #$C6.b		; C0 C6
	bvs 115.b		; 70 73
	php		; 08
	php		; 08
	lda [$49.b],Y		; B7 49
	cmp ($69.b,S),Y		; D3 69
	nop		; EA
	adc [$FF.b],Y		; 77 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $06.b		; 00 06
	bvs  70.b		; 70 46
	bvs  97.b		; 70 61
	adc $0000.w,Y		; 79 00 00
.ACCU 8
	sep #$E3		; E2 E3
	bvs 112.b		; 70 70
	ora $7C1D.w,X		; 1D 1D 7C
	jmp ($A058.w,X)		; 7C 58 A0
	sei		; 78
	ldy #$E8.b		; A0 E8
	and [$FB.b],Y		; 37 FB
	mvn $A3,$7C		; 54 7C A3
	lda ($4F.b),Y		; B1 4F
	sbc $21DF1F.l		; EF 1F DF 21
	bra -96.b		; 80 A0
	ldy #$A0.b		; A0 A0
	and [$30.b]		; 27 30
	mvn $23,$50		; 54 50 23
	ldy #$0F.b		; A0 0F
	rti		; 40

	ora $002180.l,X		; 1F 80 21 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  96.b		; 80 60
	rts		; 60

	bcc -48.b		; 90 D0
	cpx #$D0.b		; E0 D0
	cpx #$D0.b		; E0 D0
	cpx #$00.b		; E0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $90.b		; 00 90
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $E0.b		; 00 E0
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($04.b,X)		; 01 04
	ora $08.b,S		; 03 08
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F3.b		; 00 F3
	brk $F7.b		; 00 F7
	brk $FE.b		; 00 FE
	brk $BC.b		; 00 BC
	.db $42, $30		; 42 30
	cpy $20.b		; C4 20
	cpy $48.b		; C4 48
	bra -40.b		; 80 D8
	brk $0C.b		; 00 0C
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $18.b		; 00 18
	brk $30.b		; 00 30
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $011F00.l		; 0F 00 1F 01
	ora $000000.l,X		; 1F 00 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($02.b,X)		; 01 02
	cop $05.b		; 02 05
	ora $0A.b		; 05 0A
	asl A		; 0A
	ora ($3F.b,X)		; 01 3F
	tsb $FC.b		; 04 FC
	phd		; 0B
	sed		; F8
	ora [$F0.b],Y		; 17 F0
	rol $5CE1.w		; 2E E1 5C
	cmp $B8.b,S		; C3 B8
	stx $70.b		; 86 70
	tsb $0202.w		; 0C 02 02
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	and $415F20.l		; 2F 20 5F 41
	ldx $7C82.w,Y		; BE 82 7C
	tsb $F8.b		; 04 F8
	php		; 08
	ldx $CE00.w		; AE 00 CE
	brk $DF.b		; 00 DF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $E7.b		; 00 E7
	clc		; 18
	tsb $085C.w		; 0C 5C 08
	sec		; 38
	asl $36.b,X		; 16 36
	and #$29.b		; 29 29
	bcc -112.b		; 90 90
	lda ($A1.b,X)		; A1 A1
	brk $00.b		; 00 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	bra   0.b		; 80 00
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
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	tsb $08.b		; 04 08
	php		; 08
	bmi   8.b		; 30 08
	bvs   0.b		; 70 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora [$18.b]		; 07 18
	brk $3F.b		; 00 3F
	brk $5D.b		; 00 5D
	brk $8C.b		; 00 8C
	brk $CE.b		; 00 CE
	brk $E6.b		; 00 E6
	brk $77.b		; 00 77
	brk $3B.b		; 00 3B
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bpl  25.b		; 10 19
	tsa		; 3B
	php		; 08
	tda		; 7B
	tsb $843D.w		; 0C 3D 84
	sta $CE46.w,X		; 9D 46 CE
	jsl $0100E6.l		; 22 E6 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	ora ($06.b,X)		; 01 06
	cop $0D.b		; 02 0D
	trb $0B.b		; 14 0B
	sec		; 38
	ora $70.b		; 05 70
	ora #$00.b		; 09 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	ora $07.b,S		; 03 07
	ora $0E.b		; 05 0E
	php		; 08
	tad		; 5B
	ora ($57.b),Y		; 11 57
	ora $6B.b,S		; 03 6B
	asl $73.b		; 06 73
	tsb $1C7F.w		; 0C 7F 1C
	adc ($3C.b,S),Y		; 73 3C
	bit $181C.w,X		; 3C 1C 18
	brk $00.b		; 00 00
	and [$01.b],Y		; 37 01
	and $001E02.l		; 2F 02 1E 00
	trb $3C18.w		; 1C 18 3C
	ora ($3D.b),Y		; 11 3D
	clc		; 18
	trb $0000.w		; 1C 00 00
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
	cpy #$38.b		; C0 38
	cpx #$10.b		; E0 10
	rts		; 60

	bra  64.b		; 80 40
	bra -64.b		; 80 C0
	brk $80.b		; 00 80
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
	brk $7F.b		; 00 7F
	brk $3E.b		; 00 3E
	brk $1E.b		; 00 1E
	brk $0C.b		; 00 0C
	ora ($01.b,X)		; 01 01
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $32.b		; 00 32
	and ($1C.b)		; 32 1C
	trb $0C0C.w		; 1C 0C 0C
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $023D00.l,X		; FF 00 3D 02
	tsa		; 3B
	jmp.w [$3CDB]		; DC DB 3C
	ply		; 7A
	sbc $FD7E.w,X		; FD 7E FD
	lda $9E6D7C.l,X		; BF 7C 6D 9E
	clc		; 18
	clc		; 18
	cop $00.b		; 02 00
	jmp.w [$3C00]		; DC 00 3C
	brk $FC.b		; 00 FC
	brk $FC.b		; 00 FC
	brk $7C.b		; 00 7C
	brk $9D.b		; 00 9D
	brk $2F.b		; 00 2F
	eor $FCFF7E.l,X		; 5F 7E FF FC
	adc $7C3FDC.l,X		; 7F DC 3F 7C
	sbc $FE3EFD.l,X		; FF FD 3E FE
	ora [$E7.b],Y		; 17 E7
	ora $FF005F.l		; 0F 5F 00 FF
	brk $7F.b		; 00 7F
	brk $3F.b		; 00 3F
	brk $1F.b		; 00 1F
	brk $DE.b		; 00 DE
	brk $F7.b		; 00 F7
	bpl -57.b		; 10 C7
	sec		; 38
	cpy #$F0.b		; C0 F0
	bne -24.b		; D0 E8
	sed		; F8
	cpx $F4.b		; E4 F4
	plx		; FA
	sed		; F8
	inc $7CFA.w,X		; FE FA 7C
	sec		; 38
	inc $FEB8.w,X		; FE B8 FE
	beq   0.b		; F0 00
	tay		; A8
	rti		; 40

	ldy $40.b		; A4 40
	tsx		; BA
	rti		; 40

	dec $4C20.w,X		; DE 20 4C
	bmi -18.b		; 30 EE
	bpl -18.b		; 10 EE
	bpl  13.b		; 10 0D
	cop $0E.b		; 02 0E
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
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $60.b		; 00 60
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $7E03.w,X		; 3E 03 7E
	ora $7C.b		; 05 7C
	phd		; 0B
	sed		; F8
	asl $F1.b,X		; 16 F1
	tsb $68E3.w		; 0C E3 68
	ldx $D0.b		; A6 D0
	tsb $1617.w		; 0C 17 16
	ora $0B0C.w		; 0D 0C 0B
	php		; 08
	ora [$10.b],Y		; 17 10
	ora $223E01.l		; 0F 01 3E 22
	trb $3804.w		; 1C 04 38
	php		; 08
	cpx #$18.b		; E0 18
	cpy #$30.b		; C0 30
	bra  96.b		; 80 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cmp ($3D.b)		; D2 3D
	lda $634E.w,Y		; B9 4E 63
	sta $DE.b,S		; 83 DE
	clc		; 18
	lda $3C.b,S		; A3 3C
	cmp $72.b		; C5 72
	inc $19.b		; E6 19
	xce		; FB
	tsb $0C.b		; 04 0C
	ora $0636.w		; 0D 36 06
	jmp ($E700.w,X)		; 7C 00 E7
	brk $D3.b		; 00 D3
	bpl  33.b		; 10 21
	bit $1E00.w		; 2C 00 1E
	brk $07.b		; 00 07
	rti		; 40

	bra -32.b		; 80 E0
	rti		; 40

	sei		; 78
	ldy #$BC.b		; A0 BC
	cld		; D8
	lsr $A96C.w,X		; 5E 6C A9
	rol $D7.b,X		; 36 D7
	clc		; 18
	adc #$8E.b		; 69 8E
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	ldy #$A0.b		; A0 A0
	bvc  88.b		; 50 58
	ldy #$2C.b		; A0 2C
	bne  22.b		; D0 16
	inx		; E8
	ora #$74.b		; 09 74
	asl $0E.b		; 06 0E
	beq  31.b		; F0 1F
	beq  63.b		; F0 3F
	beq  73.b		; F0 49
	cpy #$B8.b		; C0 B8
	bra 116.b		; 80 74
	brk $F4.b		; 00 F4
	brk $F7.b		; 00 F7
	brk $10.b		; 00 10
	ora ($20.b),Y		; 11 20
	jsr $4646.w		; 20 46 46
	lda ($87.b),Y		; B1 87
	bvs   7.b		; 70 07
	sed		; F8
	ora $F8.b,S		; 03 F8
	ora $F8.b,S		; 03 F8
	brk $1D.b		; 00 1D
	brk $8F.b		; 00 8F
	brk $E7.b		; 00 E7
	brk $FB.b		; 00 FB
	brk $7D.b		; 00 7D
	brk $1F.b		; 00 1F
	brk $07.b		; 00 07
	brk $FF.b		; 00 FF
	brk $11.b		; 00 11
	sbc ($09.b,S),Y		; F3 09
	adc $1E06.w,Y		; 79 06 1E
	sta $87.b,S		; 83 87
	adc ($E3.b,X)		; 61 E3
	clc		; 18
	sed		; F8
	tsb $FC.b		; 04 FC
	brk $00.b		; 00 00
	and $1C0E.w,Y		; 39 0E 1C
	ora #$14.b		; 09 14
	plp		; 28
	sei		; 78
	tsb $00.b		; 04 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $0D.b		; 00 0D
	brk $08.b		; 00 08
	brk $28.b		; 00 28
	brk $04.b		; 00 04
	brk $30.b		; 00 30
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $FB.b		; 00 FB
	ora [$FF.b]		; 07 FF
	ora $77.b,S		; 03 77
	txy		; 9B
	tas		; 1B
	ora [$4F.b]		; 07 4F
	lda [$31.b],Y		; B7 31
	lsr $003E.w		; 4E 3E 00
	brk $00.b		; 00 00
	cmp [$10.b]		; C7 10
	sbc $00.b,S		; E3 00
	adc $00.b,S		; 63 00
	ora [$00.b]		; 07 00
	lda [$00.b],Y		; B7 00
	lsr $0000.w		; 4E 00 00
	brk $00.b		; 00 00
	brk $FC.b		; 00 FC
	sed		; F8
	pea $F0F8.w		; F4 F8 F0
	jsr ($E0D8.w,X)		; FC D8 E0
	rts		; 60

	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E8.b		; 00 E8
	bpl -40.b		; 10 D8
	jsr $00FC.w		; 20 FC 00
	cpx #$00.b		; E0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	cpy #$00.b		; C0 00
	cpx #$00.b		; E0 00
	cpx #$00.b		; E0 00
	sei		; 78
	brk $7C.b		; 00 7C
	brk $2E.b		; 00 2E
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	cpy #$C0.b		; C0 C0
	cpy #$40.b		; C0 40
	cpy #$58.b		; C0 58
	cld		; D8
	tsb $00DC.w		; 0C DC 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	ora [$00.b]		; 07 00
	ora $021F01.l		; 0F 01 1F 02
	asl $3C01.w,X		; 1E 01 3C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $04.b		; 05 04
	ora [$04.b]		; 07 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $0F.b		; 00 0F
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ora [$3C.b]		; 07 3C
	phd		; 0B
	sei		; 78
	ora $F00778.l		; 0F 78 07 F0
	ora $E12FF0.l,X		; 1F F0 2F E1
	lsr $BCC3.w,X		; 5E C3 BC
	stx $0B.b		; 86 0B
	php		; 08
	ora [$00.b]		; 07 00
	ora [$10.b],Y		; 17 10
	ora $202F10.l,X		; 1F 10 2F 20
	lsr $BC40.w,X		; 5E 40 BC
	bra 120.b		; 80 78
	brk $EF.b		; 00 EF
	php		; 08
	cmp $30AF10.l,X		; DF 10 AF 30
	jmp $400060.l		; 5C 60 00 40
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sbc [$07.b],Y		; F7 07
	inc $06.b		; E6 06
	cpy $04.b		; C4 04
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	sbc $18FF08.l,X		; FF 08 FF 18
	sbc $70FF38.l,X		; FF 38 FF 70
	sbc $607F00.l,X		; FF 00 7F 60
	adc [$60.b],Y		; 77 60
	sbc $B880C4.l		; EF C4 80 B8
	php		; 08
	sei		; 78
	clc		; 18
	sei		; 78
	bmi 112.b		; 30 70
	brk $00.b		; 00 00
	jsr $20E0.w		; 20 E0 20
	inx		; E8
	rti		; 40

	jmp.w [$0C78]		; DC 78 0C
	cpx #$18.b		; E0 18
	cpy #$30.b		; C0 30
	bra  64.b		; 80 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	beq   0.b		; F0 00
	beq  16.b		; F0 10
	cpx #$20.b		; E0 20
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jmp $C15CC1.l		; 5C C1 5C C1
	asl $1E41.w,X		; 1E 41 1E
	eor ($2E.b,X)		; 41 2E
	adc ($2E.b,X)		; 61 2E
	adc ($0E.b,X)		; 61 0E
	adc ($0E.b,X)		; 61 0E
	adc ($3E.b,X)		; 61 3E
	brk $3E.b		; 00 3E
	brk $7E.b		; 00 7E
	rti		; 40

	ror $1E40.w,X		; 7E 40 1E
	brk $1E.b		; 00 1E
	brk $3E.b		; 00 3E
	jsr $203E.w		; 20 3E 20
	rts		; 60

	cpx $58.b		; E4 58
	cpy $38.b		; C4 38
	sty $38.b		; 84 38
	sty $30.b		; 84 30
	sty $30.b		; 84 30
	sty $38.b		; 84 38
	sty $8C38.w		; 8C 38 8C
	clc		; 18
	brk $38.b		; 00 38
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $78.b		; 00 78
	brk $70.b		; 00 70
	brk $70.b		; 00 70
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $03.b		; 00 03
	brk $07.b		; 00 07
	brk $07.b		; 00 07
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($01.b,X)		; 01 01
	ora ($00.b,X)		; 01 00
	brk $F0.b		; 00 F0
	ora [$FC.b]		; 07 FC
	ora ($EE.b,X)		; 01 EE
	brk $ED.b		; 00 ED
	brk $DB.b		; 00 DB
	brk $DB.b		; 00 DB
	brk $BB.b		; 00 BB
	brk $B7.b		; 00 B7
	brk $00.b		; 00 00
	ora $241310.l		; 0F 10 13 24
	and $64.b,X		; 35 64
	ror $C9.b,X		; 76 C9
	sbc $EDC9.w		; ED C9 ED
	sta $93DD.w,Y		; 99 DD 93
	stp		; DB
	ora [$00.b]		; 07 00
	ora $04.b,S		; 03 04
	ora ($0F.b,X)		; 01 0F
	ora ($18.b,X)		; 01 18
	asl $11.b,X		; 16 11
	tsb $3C21.w		; 0C 21 3C
	adc [$7A.b]		; 67 7A
	cpy $0000.w		; CC 00 00
	brk $00.b		; 00 00
	ora [$07.b]		; 07 07
	asl $0F08.w		; 0E 08 0F
	ora ($1F.b,X)		; 01 1F
	ora ($18.b,X)		; 01 18
	brk $30.b		; 00 30
	ora ($F4.b,X)		; 01 F4
	ora $FA8FF4.l		; 0F F4 8F FA
	eor [$DD.b]		; 47 DD
	lda $BD.b,S		; A3 BD
	eor $7A.b,S		; 43 7A
	sta $7E.b		; 85 7E
	ora ($7E.b,X)		; 01 7E
	sta ($0E.b,X)		; 81 0E
	brk $8E.b		; 00 8E
	bra   6.b		; 80 06
	rti		; 40

	cop $A0.b		; 02 A0
	cop $50.b		; 02 50
	sty $C0.b		; 84 C0
	brk $80.b		; 00 80
	sec		; 38
	clv		; B8
	brk $18.b		; 00 18
	clc		; 18
	bit $3C.b		; 24 3C
	phy		; 5A
	adc $3E5D3C.l,X		; 7F 3C 5D 3E
	lsr $39.b,X		; 56 39
	and ($DF.b,X)		; 21 DF
	xba		; EB
	ora [$18.b],Y		; 17 18
	brk $24.b		; 00 24
	brk $5A.b		; 00 5A
	brk $3C.b		; 00 3C
	brk $3E.b		; 00 3E
	brk $39.b		; 00 39
	brk $DF.b		; 00 DF
	brk $17.b		; 00 17
	brk $00.b		; 00 00
	brk $0F.b		; 00 0F
	bpl  63.b		; 10 3F
	ora $7F3FDF.l		; 0F DF 3F 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00FFFF.l,X		; FF FF FF 00
	brk $10.b		; 00 10
	brk $0F.b		; 00 0F
	brk $31.b		; 00 31
	asl $30CF.w		; 0E CF 30
	sta $906F70.l		; 8F 70 6F 90
	sbc $1C.b,S		; E3 1C
	.db $62, $18, $4C		; 62 18 4C
	and $3340.w,Y		; 39 40 33
	jmp $264036.l		; 5C 36 40 26
	cli		; 58
	bit $2C40.w		; 2C 40 2C
	bvc  56.b		; 50 38
	ora $010708.l		; 0F 08 07 01
	asl $0812.w,X		; 1E 12 08
	brk $1C.b		; 00 1C
	tsb $10.b		; 04 10
	brk $18.b		; 00 18
	php		; 08
	brk $00.b		; 00 00
	tsb $F4F0.w		; 0C F0 F4
	beq 100.b		; F0 64
	beq  12.b		; F0 0C
	rts		; 60

	txs		; 9A
	brk $7A.b		; 00 7A
	brk $5D.b		; 00 5D
	brk $6D.b		; 00 6D
	brk $00.b		; 00 00
	beq -16.b		; F0 F0
	sed		; F8
	rts		; 60

	sed		; F8
	brk $F0.b		; 00 F0
	php		; 08
	jmp ($8C08.w)		; 6C 08 8C
	tsb $24AE.w		; 0C AE 24
	ldx $ED.b,Y		; B6 ED
	brk $EE.b		; 00 EE
	brk $EC.b		; 00 EC
	brk $E8.b		; 00 E8
	tsb $F0.b		; 04 F0
	tsb $FC08.w		; 0C 08 FC
	clc		; 18
	jsr ($F430.w,X)		; FC 30 F4
	stz $76.b		; 64 76
	stz $74.b		; 64 74
	rts		; 60

	bvs  96.b		; 70 60
	bvs   0.b		; 70 00
	brk $30.b		; 00 30
	bmi  96.b		; 30 60
	rts		; 60

	pha		; 48
	rti		; 40

	brk $03.b		; 00 03
	brk $06.b		; 00 06
	ora ($0C.b,X)		; 01 0C
	ora $08.b,S		; 03 08
	ora $08.b,S		; 03 08
	ora $01.b		; 05 01
	ora [$00.b]		; 07 00
	ora $00.b,S		; 03 00
	ora ($01.b,X)		; 01 01
	ora $02.b,S		; 03 02
	ora [$04.b]		; 07 04
	ora [$00.b]		; 07 00
	ora [$00.b]		; 07 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy #$78.b		; C0 78
	brk $60.b		; 00 60
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy #$20.b		; A0 20
	cpy #$40.b		; C0 40
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	inc A		; 1A
	cmp $16.b		; C5 16
	sed		; F8
	bit $BCC0.w,X		; 3C C0 BC
	cpy #$BC.b		; C0 BC
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	bra 120.b		; 80 78
	bra 120.b		; 80 78
	rti		; 40

	jsr $0020.w		; 20 20 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F8.b		; 00 F8
	brk $F0.b		; 00 F0
	brk $F0.b		; 00 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $80.b		; 00 80
	brk $30.b		; 00 30
	bmi 112.b		; 30 70
	bvs 112.b		; 70 70
	bvs   0.b		; 70 00
	brk $E0.b		; 00 E0
	cpx #$C0.b		; E0 C0
	cpy #$80.b		; C0 80
	bra   0.b		; 80 00
	brk $1A.b		; 00 1A
	tsb $2E.b		; 04 2E
	bpl  46.b		; 10 2E
	bpl  62.b		; 10 3E
	brk $3E.b		; 00 3E
	brk $3E.b		; 00 3E
	jsr $0034.w		; 20 34 00
	stz $00.b,X		; 74 00
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $08.b		; 00 08
	brk $0E.b		; 00 0E
	adc ($0E.b,X)		; 61 0E
	adc ($2C.b,X)		; 61 2C
	sbc ($7C.b,X)		; E1 7C
	cmp ($F8.b,X)		; C1 F8
	sta $F8.b,S		; 83 F8
	ora $E01EF0.l		; 0F F0 1E E0
	bit $203E.w,X		; 3C 3E 20
	rol $5E20.w,X		; 3E 20 5E
	rti		; 40

	ldx $7D80.w,Y		; BE 80 7D
	ora ($F0.b,X)		; 01 F0
	brk $E0.b		; 00 E0
	brk $C0.b		; 00 C0
	brk $28.b		; 00 28
	dey		; 88
	brk $88.b		; 00 88
	rts		; 60

	beq   0.b		; F0 00
	cpx #$00.b		; E0 00
	cpy #$00.b		; C0 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $F0.b		; 00 F0
	bra -16.b		; 80 F0
	bra -128.b		; 80 80
	bra -64.b		; 80 C0
	cpy #$00.b		; C0 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
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
	brk $00.b		; 00 00
	brk $F6.b		; 00 F6
	brk $6E.b		; 00 6E
	bra  62.b		; 80 3E
	cpy #$6F.b		; C0 6F
	beq  72.b		; F0 48
	cmp $5AC754.l		; CF 54 C7 5A
	cmp $5E.b,S		; C3 5E
	cmp $32.b,S		; C3 32
	tsa		; 3B
	ldx $B7.b		; A6 B7
	dec $C7.b		; C6 C7
	bcc -112.b		; 90 90
	ldy $84.b,X		; B4 84
	tsx		; BA
	.db $82, $BC, $80		; 82 BC 80
	bit $7400.w,X		; 3C 00 74
	sta $31A8.w,Y		; 99 A8 31
	sta $F363.w,Y		; 99 63 F3
	eor [$F3.b]		; 47 F3
	sta [$89.b]		; 87 89
	and ($34.b,S),Y		; 33 34
	adc $7C3B.w,Y		; 79 3B 7C
	cpx #$83.b		; E0 83
	cpy #$07.b		; C0 07
	bra   7.b		; 80 07
	sta ($0F.b,X)		; 81 0F
	ora ($0F.b,X)		; 01 0F
	brk $77.b		; 00 77
	bmi  -5.b		; 30 FB
	sec		; 38
	jsr ($807F.w,X)		; FC 7F 80
	sbc $83FE80.l,X		; FF 80 FE 83
	jsr ($FFC3.w,X)		; FC C3 FF
	brk $FF.b		; 00 FF
	brk $FF.b		; 00 FF
	brk $FB.b		; 00 FB
	brk $3C.b		; 00 3C
	ldy $BC3C.w,X		; BC 3C BC
	clv		; B8
	tyx		; BB
	cpy #$C3.b		; C0 C3
	sec		; 38
	sec		; 38
	adc $7179.w,Y		; 79 79 71
	adc ($00.b),Y		; 71 00
	brk $61.b		; 00 61
	sta $BFFF1F.l,X		; 9F 1F FF BF
	adc $DF3FFF.l,X		; 7F FF 3F DF
	and $233F5F.l,X		; 3F 5F 3F 23
	eor $9F033C.l,X		; 5F 3C 03 9F
	brk $F3.b		; 00 F3
	tsb $126D.w		; 0C 6D 12
	and $013E00.l,X		; 3F 00 3E 01
	and $005F00.l,X		; 3F 00 5F 00
	ora $00.b,S		; 03 00
	sbc $FFFEFF.l,X		; FF FF FE FF
	ora $BEFE.w,Y		; 19 FE BE
	cmp ($E9.b,X)		; C1 E9
	pei ($87.b)		; D4 87
	jsr ($F8CF.w,X)		; FC CF F8
	cmp $F8.b,S		; C3 F8
	sbc $00FF00.l,X		; FF 00 FF 00
	inc $C100.w,X		; FE 00 C1
	ora ($D0.b,X)		; 01 D0
	asl $54.b,X		; 16 54
	sta $77.b,X		; 95 77
	bcc -17.b		; 90 EF
	php		; 08
	stz $00.b		; 64 00
	jmp $245838.l		; 5C 38 58 24
	cli		; 58
	bit $78.b		; 24 78
	trb $003C.w		; 1C 3C 00
	bit $1C00.w,X		; 3C 00 1C
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	cop $03.b		; 02 03
	tsb $04.b		; 04 04
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $04.b		; 00 04
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora $01.b,S		; 03 01
	ora $01.b,S		; 03 01
	asl $03.b		; 06 03
	tsb $0C13.w		; 0C 13 0C
	and [$1C.b]		; 27 1C
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	ora $02.b,S		; 03 02
	ora $00.b,S		; 03 00
	ora [$04.b]		; 07 04
	ora $00.b,S		; 03 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rts		; 60

	bcc -112.b		; 90 90
	cpx #$E8.b		; E0 E8
	beq -24.b		; F0 E8
	beq 124.b		; F0 7C
	beq  58.b		; F0 3A
	jsr ($0000.w,X)		; FC 00 00
	bra   0.b		; 80 00
	bcc   0.b		; 90 00
	cpx #$00.b		; E0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	beq   0.b		; F0 00
	jsr ($7E00.w,X)		; FC 00 7E
	lda $7D8A.w,X		; BD 8A 7D
	sty $BCFA.w		; 8C FA BC
	iny		; C8
	cpx $4E.b		; E4 4E
	beq  78.b		; F0 4E
	cpy $4070.w		; CC 70 40
	bvs -67.b		; 70 BD
	brk $3D.b		; 00 3D
	bmi 122.b		; 30 7A
	bvs  72.b		; 70 48
	rti		; 40

	stx $8E10.w		; 8E 10 8E
	jsr $20A0.w		; 20 A0 20
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	bra  16.b		; 80 10
	bra   0.b		; 80 00
	bra  64.b		; 80 40
	ora $28.b,X		; 15 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	jsl $000401.l		; 22 01 04 00
	rti		; 40

	cop $00.b		; 02 00
	tsb $50.b		; 04 50
	trb $00.b		; 14 00
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
	brk $01.b		; 00 01
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
	php		; 08
	ldy $04.b,X		; B4 04
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
	eor ($00.b)		; 52 00
	brk $02.b		; 00 02
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
	jsr $0400.w		; 20 00 04
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
	bmi  40.b		; 30 28
	asl A		; 0A
	brk $10.b		; 00 10
	brk $08.b		; 00 08
	brk $08.b		; 00 08
	brk $88.b		; 00 88
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
	tsb $00.b		; 04 00
	mvp $12,$42		; 44 42 12
	tsb $08.b		; 04 08
	brk $00.b		; 00 00
	rti		; 40

	brk $42.b		; 00 42
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	jsr $1000.w		; 20 00 10
	jsr $8000.w		; 20 00 80
	tsb $00.b		; 04 00
	brk $10.b		; 00 10
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	rti		; 40

	bra   0.b		; 80 00
	clc		; 18
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $C0.b		; 00 C0
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $C004.w		; 20 04 C0
	ora ($94.b,X)		; 01 94
	brk $10.b		; 00 10
	php		; 08
	brk $00.b		; 00 00
	rts		; 60

	brk $04.b		; 00 04
	ora ($00.b,X)		; 01 00
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
	tsb $00.b		; 04 00
	dey		; 88
	rti		; 40

	tsb $54.b		; 04 54
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	bpl   0.b		; 10 00
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
	php		; 08
	trb $C2.b		; 14 C2
	.db $42, $10		; 42 10
	.db $82, $00, $02		; 82 00 02
	brk $20.b		; 00 20
	bpl  68.b		; 10 44
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	cmp ($00.b),Y		; D1 00
	rti		; 40

	brk $20.b		; 00 20
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
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldy $0000.w,X		; BC 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $52.b		; 00 52
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $76.b		; 00 76
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $5C		; Opcode 5C overrunning bank boundry at 17FFFF. Skipping.
.ENDS
