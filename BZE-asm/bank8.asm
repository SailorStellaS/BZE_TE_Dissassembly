.BANK 8 SLOT 0
.ORG $0000

.SECTION "Bank8" FORCE

	ora ($00.b),Y		; 11 00
	ora ($78.b,X)		; 01 78
	cop $4A.b		; 02 4A
	adc $00.b,S		; 63 00
	rti		; 40

	ora $010108.l		; 0F 08 01 01
	tsb $02.b		; 04 02
	asl $7F1E.w,X		; 1E 1E 7F
	sbc [$15.b],Y		; F7 15
	eor ($40.b),Y		; 51 40
	adc $A1E641.l,X		; 7F 41 E6 A1
	adc [$70.b]		; 67 70
	bmi  17.b		; 30 11
	pha		; 48
	stz $0C18.w		; 9C 18 0C
	tsb $E680.w		; 0C 80 E6
	adc [$11.b]		; 67 11
	clc		; 18
	tsb $DD50.w		; 0C 50 DD
	bvc  69.b		; 50 45
	cpy #$50A0.w		; C0 A0 50
	clc		; 18
	bpl  16.b		; 10 10
	tsb $C008.w		; 0C 08 C0
	ldy #$0850.w		; A0 50 08
	tsb $DF.b		; 04 DF
	lda $035545.l,X		; BF 45 55 03
	xce		; FB
	ora $0C.b		; 05 0C
	.db $82, $0C, $19		; 82 0C 19
	iny		; C8
	sta ($60.b),Y		; 91 60
	cpy #$6020.w		; C0 20 60
	and ($04.b,S),Y		; 33 04
	tsb $9119.w		; 0C 19 91
	cpy #$3360.w		; C0 60 33
	sbc $4541FF.l,X		; FF FF 41 45
	ora ($FB.b,S),Y		; 13 FB
	and [$FF.b]		; 27 FF
	asl $40FF.w		; 0E FF 40
	adc $C08F88.l,X		; 7F 88 8F C0
	beq -16.b		; F0 F0
	sbc $04FFAA.l,X		; FF AA FF 04
	bra 112.b		; 80 70
	ora $AFFF80.l		; 0F 80 FF AF
	rti		; 40

	ora ($60.b,X)		; 01 60
	cpx #$E040.w		; E0 40 E0
	bra -16.b		; 80 F0
	bpl -40.b		; 10 D8
	bit $3C.b		; 24 3C
	dey		; 88
	jsr ($F8F8.w,X)		; FC F8 F8
	jsr $FEC0.w		; 20 C0 FE
	xce		; FB
	trb $00.b		; 14 00
	beq  12.b		; F0 0C
	ror $1E18.w		; 6E 18 1E
	ldy #$40FE.w		; A0 FE 40
	jsr ($39FE.w,X)		; FC FE 39
	sbc $90FF86.l,X		; FF 86 FF 90
	cpx #$DFC0.w		; E0 C0 DF
	brk $45.b		; 00 45
	jsr $287D.w		; 20 7D 28
	lda ($0C.b)		; B2 0C
	sed		; F8
	cop $04.b		; 02 04
	tsb $3830.w		; 0C 30 38
	tsb $DFF8.w		; 0C F8 DF
	eor $44.b		; 45 44
	cpy #$0602.w		; C0 02 06
	cop $6A.b		; 02 6A
	ora ($11.b,X)		; 01 11
	ora ($63.b,X)		; 01 63
	bpl  49.b		; 10 31
	and ($C0.b,X)		; 21 C0
	cpx #$6362.w		; E0 62 63
	and ($80.b,X)		; 21 80
	tsx		; BA
	rti		; 40

	eor $20.b,X		; 55 20
	sed		; F8
	ror $6501.w		; 6E 01 65
	jmp ($3C18.w,X)		; 7C 18 3C
	jmp ($7C64.w)		; 6C 64 7C
	stp		; DB
	cmp $0F5551.l,X		; DF 51 55 0F
	cop $06.b		; 02 06
	bpl   3.b		; 10 03
	tsb $1824.w		; 0C 24 18
	rti		; 40

	bmi   8.b		; 30 08
	bcc  96.b		; 90 60
	ora $240310.l		; 0F 10 03 24
	rti		; 40

	php		; 08
	bcc  -1.b		; 90 FF
	cmp $520501.l		; CF 01 05 52
	and $0707.w,X		; 3D 07 07
	php		; 08
	php		; 08
	php		; 08
	php		; 08
	ora [$06.b]		; 07 06
	adc $0420.w,Y		; 79 20 04
	ora $7F.b		; 05 7F
	ora ($41.b,X)		; 01 41
	adc $5555F7.l,X		; 7F F7 55 55
	sta $1CA304.l,X		; 9F 04 A3 1C
	mvp $08,$38		; 44 38 08
	bra  96.b		; 80 60
	bpl  32.b		; 10 20
	cpy #$8040.w		; C0 40 80
	sta $0844A3.l,X		; 9F A3 44 08
	bra  16.b		; 80 10
	jsr $FF40.w		; 20 40 FF
	ora $3F1555.l,X		; 1F 55 15 3F
	asl $081C.w		; 0E 1C 08
	sec		; 38
	clc		; 18
	sed		; F8
	rts		; 60

	sed		; F8
	rti		; 40

	cpy #$8080.w		; C0 80 80
	and $F8381C.l,X		; 3F 1C 38 F8
	sed		; F8
	cpy #$CF80.w		; C0 80 CF
	sbc $035545.l,X		; FF 45 55 03
	ora ($04.b,X)		; 01 04
	ora $09.b,S		; 03 09
	asl $10.b		; 06 10
	tsb $1826.w		; 0C 26 18
	pha		; 48
	bmi -112.b		; 30 90
	rts		; 60

	ora $04.b,S		; 03 04
	ora #$2610.w		; 09 10 26
	pha		; 48
	bcc -63.b		; 90 C1
	sbc $015541.l,X		; FF 41 55 01
	cop $01.b		; 02 01
	tsb $0107.w		; 0C 07 01
	cop $12.b		; 02 12
	tsb $1864.w		; 0C 64 18
	ora ($02.b,X)		; 01 02
	tsb $1201.w		; 0C 01 12
	stz $F5.b		; 64 F5
	ora $0F1555.l,X		; 1F 55 15 0F
	tas		; 1B
	and ($01.b)		; 32 01
	jsr $0503.w		; 20 03 05
	cop $0A.b		; 02 0A
	tsb $08.b		; 04 08
	ora $23331B.l		; 0F 1B 33 23
	ora [$0E.b]		; 07 0E
	php		; 08
	sbc $5555F7.l,X		; FF F7 55 55
	clc		; 18
	xce		; FB
	php		; 08
	tsb $4850.w		; 0C 50 48
	and $40.b		; 25 40
	eor ($E0.b)		; 52 E0
	tsb $4B.b		; 04 4B
	jsr $5805.w		; 20 05 58
	tsb $CC.b		; 04 CC
	php		; 08
	bmi -64.b		; 30 C0
	php		; 08
	rti		; 40

	ora [$FF.b]		; 07 FF
	sbc [$15.b],Y		; F7 15
	eor ($1A.b,X)		; 41 1A
	tsb $1030.w		; 0C 30 10
	tas		; 1B
	cop $08.b		; 02 08
	php		; 08
	jmp ($302C.w)		; 6C 2C 30
	php		; 08
	php		; 08
	iny		; C8
	pha		; 48
	asl $0120.w,X		; 1E 20 01
	rti		; 40

	bra  80.b		; 80 50
	tas		; 1B
	bvc  17.b		; 50 11
	ora ($02.b,X)		; 01 02
	tsb $03.b		; 04 03
	ora [$09.b]		; 07 09
	ora ($02.b,X)		; 01 02
	tsb $09.b		; 04 09
	sbc $455545.l,X		; FF 45 55 45
	adc ($23.b),Y		; 71 23
	cpx #$C141.w		; E0 41 C1
	sta ($C0.b,X)		; 81 C0
	.db $82, $82, $04		; 82 82 04
	ora ($73.b,X)		; 01 73
	sbc ($C1.b,X)		; E1 C1
	rep #$82		; C2 82
	tsb $01.b		; 04 01
	sbc $155517.l,X		; FF 17 55 15
	asl A		; 0A
	sbc $B0FFC0.l,X		; FF C0 FF B0
	rts		; 60

	tay		; A8
	rts		; 60

	pha		; 48
	jsr $8048.w		; 20 48 80
	bra -32.b		; 80 E0
	beq -24.b		; F0 E8
	pla		; 68
	pha		; 48
	bra -65.b		; 80 BF
	rol $0155.w		; 2E 55 01
	bmi -65.b		; 30 BF
	php		; 08
	dec $F404.w		; CE 04 F4
	tya		; 98
	php		; 08
	tsb $0C.b		; 04 0C
	tsb $40.b		; 04 40
	bmi   8.b		; 30 08
	tsb $04.b		; 04 04
	plp		; 28
	sbc $804000.l,X		; FF 00 40 80
	rti		; 40

	rti		; 40

	jsr $10E0.w		; 20 E0 10
	trb $E30F.w		; 1C 0F E3
	bra -128.b		; 80 80
	sbc $015500.l,X		; FF 00 55 01
	adc [$7F.b]		; 67 7F
	sei		; 78
	adc $1E3F3F.l,X		; 7F 3F 3F 1E
	asl $8080.w,X		; 1E 80 80
	rti		; 40

	and ($1E.b,X)		; 21 1E
	tay		; A8
	trb $00.b		; 14 00
	bit $20C0.w,X		; 3C C0 20
	bpl  96.b		; 10 60
	bcc  96.b		; 90 60
	rts		; 60

	bcc -112.b		; 90 90
	cpx #$00FB.w		; E0 FB 00
	rti		; 40

	ora ($03.b,X)		; 01 03
	cmp $7FFF3F.l		; CF 3F FF 7F
	and $0F0F3F.l,X		; 3F 3F 0F 0F
	bpl  62.b		; 10 3E
	cmp $4450.w,X		; DD 50 44
	sei		; 78
	jmp ($8C84.w,X)		; 7C 84 8C
	tsb $D040.w		; 0C 40 D0
	bpl -128.b		; 10 80
	jsr $0E20.w		; 20 20 0E
	asl $18.b		; 06 18
	bmi   3.b		; 30 03
	brk $05.b		; 00 05
	brk $1C.b		; 00 1C
	trb $1C62.w		; 1C 62 1C
	sbc ($1F.b,X)		; E1 1F
	brk $0C.b		; 00 0C
	ora $04.b,S		; 03 04
	ora ($09.b,X)		; 01 09
	asl $36.b		; 06 36
	and $7E78.w,Y		; 39 78 7E
	ora ($01.b,X)		; 01 01
	cmp [$0F.b]		; C7 0F
	eor ($15.b,X)		; 41 15
	bcs -16.b		; B0 F0
	cpy #$1090.w		; C0 90 10
	jsr $C020.w		; 20 20 C0
	cpy #$1808.w		; C0 08 18
	bmi -32.b		; 30 E0
	cpy #$DFF0.w		; C0 F0 DF
	bvc  68.b		; 50 44
	tsb $141C.w		; 0C 1C 14
	bit $20.b		; 24 20
	rti		; 40

	tsb $04.b		; 04 04
	php		; 08
	cop $02.b		; 02 02
	cop $06.b		; 02 06
	asl $03.b		; 06 03
	tax		; AA
	sta $AA.b,X		; 95 AA
	ldx $A9.b		; A6 A9
	sta $9D.b,X		; 95 9D
	lda $0000.w		; AD 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	and $0000.w,Y		; 39 00 00
	bpl   0.b		; 10 00
	clc		; 18
	brk $1F.b		; 00 1F
	brk $C0.b		; 00 C0
	brk $40.b		; 00 40
	ora ($C0.b,X)		; 01 C0
	ora ($1F.b,X)		; 01 1F
	jmp ($7C1F.w,X)		; 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7C1F7C.l,X		; 1F 7C 1F 7C
	ora $7FFF7C.l,X		; 1F 7C FF 7F
	brk $02.b		; 00 02
	jsr $4002.w		; 20 02 40
	cop $60.b		; 02 60
	cop $80.b		; 02 80
	cop $A0.b		; 02 A0
	cop $C0.b		; 02 C0
	cop $E0.b		; 02 E0
	cop $00.b		; 02 00
	ora $20.b,S		; 03 20
	ora $40.b,S		; 03 40
	ora $60.b,S		; 03 60
	ora $80.b,S		; 03 80
	ora $A0.b,S		; 03 A0
	ora $C0.b,S		; 03 C0
	ora $E0.b,S		; 03 E0
	ora $00.b,S		; 03 00
	rti		; 40

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
	cpx #$107F.w		; E0 7F 10
	rti		; 40

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
	and #$2D76.w		; 29 76 2D
	adc [$2D.b],Y		; 77 2D
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
	rti		; 40

	brk $38.b		; 00 38
	brk $00.b		; 00 00
	brk $56.b		; 00 56
	eor $0E.b,X		; 55 0E
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $00.b,X		; 55 00
	brk $08.b		; 00 08
	asl $0301.w		; 0E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	brk $57.b		; 00 57
	eor $10.b,X		; 55 10
	asl $0301.w		; 0E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	eor $00.b,X		; 55 00
	brk $18.b		; 00 18
	asl $0301.w		; 0E 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $AA.b		; 00 AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($A0.b),Y		; 11 A0
	brk $D0.b		; 00 D0
	asl $0003.w		; 0E 03 00
	brk $00.b		; 00 00
	sbc $5555FF.l,X		; FF FF 55 55
	inc $AAFF.w,X		; FE FF AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $55FFFF.l,X		; FF FF FF 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	sbc $015555.l,X		; FF 55 55 01
	brk $AA.b		; 00 AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	sbc $FFEBFF.l,X		; FF FF EB FF
	eor $55.b		; 45 55
	ora $F2.b		; 05 F2
	inc $20FF.w,X		; FE FF 20
	cmp $2AEB14.l,X		; DF 14 EB 2A
	cmp $15.b,X		; D5 15
	nop		; EA
	rol A		; 2A
	cmp $0F.b,X		; D5 0F
	ora ($20.b,X)		; 01 20
	bit $3F3F.w,X		; 3C 3F 3F
	and $55EFFF.l,X		; 3F FF EF 55
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $15.b,X		; 55 15
	tax		; AA
	asl A		; 0A
	cmp $05.b,X		; D5 05
	nop		; EA
	cop $F5.b		; 02 F5
	sbc $FF7F80.l,X		; FF 80 7F FF
	sbc $1F3F7F.l,X		; FF 7F 3F 1F
	ora $FFC080.l		; 0F 80 C0 FF
	sbc $554001.l,X		; FF 01 40 55
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l,X		; FF FF FF 7F
	cmp $C0FFFF.l,X		; DF FF FF C0
	sbc $0001FF.l,X		; FF FF 01 00
	eor $AA.b,X		; 55 AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $554001.l,X		; FF 01 40 55
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	plx		; FA
	plx		; FA
	sbc $FFFF03.l,X		; FF 03 FF FF
	eor ($55.b),Y		; 51 55
	eor $AA.b,X		; 55 AA
	sbc $FCFCFF.l,X		; FF FF FC FC
	xce		; FB
	xce		; FB
	plx		; FA
	plx		; FA
	sed		; F8
	sed		; F8
	eor ($51.b),Y		; 51 51
	cop $02.b		; 02 02
	sbc $0C0201.l,X		; FF 01 02 0C
	bpl -31.b		; 10 E1
	cop $FF.b		; 02 FF
	ora $4F0555.l		; 0F 55 05 4F
	bcs -16.b		; B0 F0
	beq  64.b		; F0 40
	rti		; 40

	asl $06.b		; 06 06
	sec		; 38
	sec		; 38
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	bra   6.b		; 80 06
	sec		; 38
	cpy #$0002.w		; C0 02 00
	ora $45.b,X		; 15 45
	sbc $14EB0F.l,X		; FF 0F EB 14
	bpl -32.b		; 10 E0
	sec		; 38
	ora [$55.b]		; 07 55
	trb $55.b		; 14 55
	ora ($FF.b,X)		; 01 FF
	ora ($10.b,X)		; 01 10
	dec A		; 3A
	adc $1EF6.w,X		; 7D F6 1E
	ora ($10.b,X)		; 01 10
	asl $0E01.w		; 0E 01 0E
	lda $5515DF.l,X		; BF DF 15 55
	rti		; 40

	sbc $C818F0.l		; EF F0 18 C8
	php		; 08
	tsb $04.b		; 04 04
	tsb $A0.b		; 04 A0
	cop $50.b		; 02 50
	asl $06.b		; 06 06
	ora $048810.l,X		; 1F 10 88 04
	ldy #$0650.w		; A0 50 06
	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	sbc $FCFFFF.l,X		; FF FF FF FC
	ora $15.b,X		; 15 15
	ora $1010F0.l		; 0F F0 10 10
	ora ($01.b,X)		; 01 01
	jsr $5420.w		; 20 20 54
	mvn $3B,$3B		; 54 3B 3B
	adc ($71.b),Y		; 71 71
	sed		; F8
	php		; 08
	ora ($20.b),Y		; 11 20
	ora $4A.b		; 05 4A
	and $14FF.w,X		; 3D FF 14
	eor $FF.b,X		; 55 FF
	sei		; 78
	sei		; 78
	bra -128.b		; 80 80
	php		; 08
	php		; 08
	and $25.b		; 25 25
	adc $DFDF7F.l,X		; 7F 7F DF DF
	sei		; 78
	bra   8.b		; 80 08
	bvs -128.b		; 70 80
	bvs  63.b		; 70 3F
	sbc $0F4515.l,X		; FF 15 45 0F
	beq -41.b		; F0 D7
	cmp [$28.b],Y		; D7 28
	plp		; 28
	php		; 08
	php		; 08
	eor ($52.b)		; 52 52
	sbc $F7ABFF.l,X		; FF FF AB F7
	beq -41.b		; F0 D7
	plp		; 28
	php		; 08
	ora [$5C.b]		; 07 5C
	eor [$55.b],Y		; 57 55
	eor $55.b,X		; 55 55
	asl A		; 0A
	sbc $3D2A09.l,X		; FF 09 2A 3D
	ora [$38.b]		; 07 38
	ldy $0FF0.w		; AC F0 0F
	asl $023D.w		; 0E 3D 02
	sec		; 38
	asl $D0.b		; 06 D0
	tsb $FD57.w		; 0C 57 FD
	eor $55.b,X		; 55 55
	phy		; 5A
	sbc $A74F6F.l,X		; FF 6F 4F A7
	and ($99.b)		; 32 99
	ora ($CF.b,X)		; 01 CF
	ora $63.b,S		; 03 63
	ora [$0F.b]		; 07 0F
	bra -88.b		; 80 A8
	trb $2B.b		; 14 2B
	cmp $2B.b,X		; D5 2B
	sta ($FF.b,S),Y		; 93 FF
	sbc $AC5555.l,X		; FF 55 55 AC
	sbc $FBD3.w,X		; FD D3 FB
	cpx $10FD.w		; EC FD 10
	clv		; B8
	pha		; 48
	cli		; 58
	ldy #$40A0.w		; A0 A0 40
	rti		; 40

	bra -126.b		; 80 82
	tda		; 7B
	and $FFBB.w,X		; 3D BB FF
	lda $7FBF5F.l,X		; BF 5F BF 7F
	eor [$F5.b],Y		; 57 F5
	ora ($00.b,X)		; 01 00
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $807FFF.l,X		; FF FF 7F 80
	and $57FF40.l,X		; 3F 40 FF 57
	eor $01.b,X		; 55 01
	brk $AA.b		; 00 AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $01FD57.l,X		; FF 57 FD 01
	bvc -86.b		; 50 AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF01FF.l,X		; FF FF 01 FF
	ora $FF.b,S		; 03 FF
	asl $FF.b		; 06 FF
	ora ($02.b,X)		; 01 02
	adc $451545.l,X		; 7F 45 15 45
	wai		; CB
	rol $E17F.w,X		; 3E 7F E1
	ldy $1D20.w,X		; BC 20 1D
	ora $5508.w,X		; 1D 08 55
	stz $0182.w,X		; 9E 82 01
	ora $4010.w		; 0D 10 40
	eor $555555.l,X		; 5F 55 55 55
	lda $FA.b		; A5 FA
	pea $D505.w		; F4 05 D5
	iny		; C8
	mvn $14,$2B		; 54 2B 14
	sei		; 78
	beq   1.b		; F0 01
	ora $28.b,X		; 15 28
	pei ($2B.b)		; D4 2B
	trb $29.b		; 14 29
	eor $555555.l,X		; 5F 55 55 55
	sbc $FA.b,X		; F5 FA
	adc $05.b,X		; 75 05
	ldy $1C40.w,X		; BC 40 1C
	rts		; 60

	phd		; 0B
	stz $F0.b,X		; 74 F0
	bvs -68.b		; 70 BC
	rti		; 40

	trb $0B60.w		; 1C 60 0B
	bmi  87.b		; 30 57
	beq  85.b		; F0 55
	eor $DF.b,X		; 55 DF
	sbc $808020.l,X		; FF 20 80 80
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	phx		; DA
	ora #$0BD4.w		; 09 D4 0B
	ora $21C2.w		; 0D C2 21
	ora $FF.b		; 05 FF
	sbc $F55555.l,X		; FF 55 55 F5
	sbc $EB.b,X		; F5 EB
	xba		; EB
	cmp $B9DD.w,X		; DD DD B9
	lda $DDDD.w,Y		; B9 DD DD
	sbc $4DED.w		; ED ED 4D
	eor $C0C0.w		; 4D C0 C0
	rol A		; 2A
	ora [$2B.b],Y		; 17 2B
	eor $BFDFEF.l,X		; 5F EF DF BF
	sbc $01FE03.l,X		; FF 03 FE 01
	brk $07.b		; 00 07
	ora [$04.b]		; 07 04
	stz $069A.w		; 9C 9A 06
	ora $A2.b		; 05 A2
	bra  -1.b		; 80 FF
	adc [$C3.b],Y		; 77 C3
	ora ($00.b,X)		; 01 00
	eor $70F01F.l,X		; 5F 1F F0 70
	bcc 104.b		; 90 68
	pha		; 48
	pha		; 48
	ora ($C0.b,X)		; 01 C0
	sbc $01FD03.l,X		; FF 03 FD 01
	brk $FF.b		; 00 FF
	sbc $010701.l,X		; FF 01 07 01
	eor $3B.b,S		; 43 3B
	eor $FFFFCF.l		; 4F CF FF FF
	lda $FE0001.l,X		; BF 01 00 FE
	sbc $160A.w,X		; FD 0A 16
	jmp $78F93C.l		; 5C 3C F9 78
	inc $D0F0.w,X		; FE F0 D0
	cpx #$C080.w		; E0 80 C0
	bra  -1.b		; 80 FF
	eor [$05.b],Y		; 57 05
	ora ($00.b,X)		; 01 00
	ora $010EFF.l		; 0F FF 0E 01
	jsr $031C.w		; 20 1C 03
	sbc $01F513.l,X		; FF 13 F5 01
	rti		; 40

	sbc $C080FF.l,X		; FF FF 80 C0
	cpx #$01F0.w		; E0 F0 01
	adc ($05.b,S),Y		; 73 05
	sbc $FFF303.l,X		; FF 03 F3 FF
	eor ($55.b),Y		; 51 55
	sbc $0201FF.l,X		; FF FF 01 02
	cop $06.b		; 02 06
	tsb $0C.b		; 04 0C
	php		; 08
	clc		; 18
	sbc ($11.b),Y		; F1 11
	cop $03.b		; 02 03
	sbc $040201.l,X		; FF 01 02 04
	php		; 08
	beq   1.b		; F0 01
	adc $055555.l,X		; 7F 55 55 05
	beq -17.b		; F0 EF
	bvs -112.b		; 70 90
	bra -128.b		; 80 80
	tsb $38.b		; 04 38
	cmp ($03.b,X)		; C1 03
	ora $F0.b,S		; 03 F0
	bvs -128.b		; 70 80
	tsb $38.b		; 04 38
	cpy #$55FF.w		; C0 FF 55
	eor $55.b,X		; 55 55
	and $2438DF.l,X		; 3F DF 38 24
	asl $05.b		; 06 05
	sty $01.b		; 84 01
	adc $010307.l,X		; 7F 07 03 01
	and $810638.l,X		; 3F 38 06 81
	bvs  12.b		; 70 0C
	cop $01.b		; 02 01
	sta $FE.b,S		; 83 FE
	ora ($55.b,X)		; 01 55
	sbc $C080FF.l,X		; FF FF 80 C0
	bra  96.b		; 80 60
	bne  34.b		; D0 22
	beq   2.b		; F0 02
	sbc $3C4080.l,X		; FF 80 40 3C
	ora $FF.b,S		; 03 FF
	sta $11.b,S		; 83 11
	eor ($FA.b,X)		; 41 FA
	sbc $060807.l,X		; FF 07 08 06
	php		; 08
	asl $0A10.w		; 0E 10 0A
	bpl -128.b		; 10 80
	sed		; F8
	ora #$0312.w		; 09 12 03
	eor [$01.b],Y		; 57 01
	ora $55.b		; 05 55
	nop		; EA
	sbc $1F1F1F.l,X		; FF 1F 1F 1F
	asl A		; 0A
	cpy #$2020.w		; C0 20 20
	eor $01A0.w,Y		; 59 A0 01
	eor [$C1.b],Y		; 57 C1
	eor $D1.b,X		; 55 D1
	ldx $7BFF.w		; AE FF 7B
	adc $032267.l		; 6F 67 22 03
	ora $04.b,S		; 03 04
	cpy $50.b		; C4 50
	php		; 08
	pld		; 2B
	ora $B0.b,S		; 03 B0
	ora $57.b,S		; 03 57
	cmp $55.b		; C5 55
	sta $FB.b,X		; 95 FB
	sbc $9F3524.l,X		; FF 24 35 9F
	cmp $C0C055.l,X		; DF 55 C0 C0
	tad		; 5B
	bcc  43.b		; 90 2B
	bne -80.b		; D0 B0
	eor $C4.b,S		; 43 C4
	cpy #$5555.w		; C0 55 55
	sbc $FCB6FF.l,X		; FF FF B6 FC
	jmp.w [$F13F]		; DC 3F F1
	sbc $D227.w,X		; FD 27 D2
	plx		; FA
	xba		; EB
	trb $F5.b		; 14 F5
	asl A		; 0A
	xba		; EB
	asl $57.b,X		; 16 57
	plb		; AB
	lda $AC5F59.l		; AF 59 5F AC
	sbc $D5FF24.l,X		; FF 24 FF D5
	sbc $80FFFF.l,X		; FF FF FF 80
	sta $8D.b		; 85 8D
	cmp $044902.l		; CF 02 49 04
	pld		; 2B
	jsl $895457.l		; 22 57 54 89
	phb		; 8B
	lda $FFB7FF.l,X		; BF FF B7 FF
	lda ($FF.b)		; B2 FF
	and ($FF.b)		; 32 FF
	ror $FF.b		; 66 FF
	inc $FF.b		; E6 FF
	inc $FF.b,X		; F6 FF
	dec $FFFF.w,X		; DE FF FF
	sbc $4BFFFF.l,X		; FF FF FF 4B
	php		; 08
	and [$14.b],Y		; 37 14
	dec $BD88.w		; CE 88 BD
	ora ($7A.b,X)		; 01 7A
	cop $FD.b		; 02 FD
	ora $FA.b		; 05 FA
	cop $FD.b		; 02 FD
	ora $EB.b		; 05 EB
	trb $77.b		; 14 77
	dey		; 88
	inc $FD11.w		; EE 11 FD
	cop $FA.b		; 02 FA
	ora $FD.b		; 05 FD
	cop $FA.b		; 02 FA
	ora $FD.b		; 05 FD
	cop $FF.b		; 02 FF
	sbc $F9FDFF.l,X		; FF FF FD F9
	cop $7B.b		; 02 7B
	mvp $81,$BE		; 44 BE 81
	adc $FA42.w,X		; 7D 42 FA
	sta $75.b		; 85 75
	phd		; 0B
	nop		; EA
	asl $D5.b,X		; 16 D5
	and #$04FB.w		; 29 FB 04
	adc $40BF80.l,X		; 7F 80 BF 40
	adc $7FFF80.l,X		; 7F 80 FF 7F
	bra  -2.b		; 80 FE
	ora ($FD.b,X)		; 01 FD
	cop $FF.b		; 02 FF
	sbc $AADFFD.l,X		; FF FD DF AA
	eor $54.b,X		; 55 54
	lda $AA.b,X		; B5 AA
	pld		; 2B
	mvn $A8,$D5		; 54 D5 A8
	pld		; 2B
	rti		; 40

	sta $14FF80.l,X		; 9F 80 FF 14
	adc [$FF.b],Y		; 77 FF
	sbc $0A.b,X		; F5 0A
	plb		; AB
	mvn $2A,$D5		; 54 D5 2A
	plb		; AB
	mvn $20,$DF		; 54 DF 20
	sbc $FF8877.l,X		; FF 77 88 FF
	cmp $28CFFF.l,X		; DF FF CF 28
	xba		; EB
	and #$031C.w		; 29 1C 03
	ora #$0303.w		; 09 03 03
	ora $03.b,S		; 03 03
	ora [$01.b]		; 07 01
	ora $EB021F.l		; 0F 1F 02 EB
	trb $1C.b		; 14 1C
	trb $0909.w		; 1C 09 09
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sbc $CFFFDF.l,X		; FF DF FF CF
	asl A		; 0A
	plx		; FA
	eor $F0FFA5.l,X		; 5F A5 FF F0
	sbc $E0FEF0.l,X		; FF F0 FE E0
	jsr ($F840.w,X)		; FC 40 F8
	sed		; F8
	plp		; 28
	plx		; FA
	ora $A5.b		; 05 A5
	lda $F0.b		; A5 F0
	beq -16.b		; F0 F0
	beq -32.b		; F0 E0
	cpx #$4040.w		; E0 40 40
	plp		; 28
	plp		; 28
	sbc $1455DF.l,X		; FF DF 55 14
	clv		; B8
	sbc [$C8.b],Y		; F7 C8
	clc		; 18
	sta ($30.b),Y		; 91 30
	jsr $0620.w		; 20 20 06
	rti		; 40

	eor ($40.b)		; 52 40
	pld		; 2B
	adc ($80.b,X)		; 61 80
	sed		; F8
	php		; 08
	ora ($20.b),Y		; 11 20
	eor $0A.b		; 45 0A
	eor [$55.b],Y		; 57 55
	ora $45.b,X		; 15 45
	phd		; 0B
	sbc $078776.l,X		; FF 76 87 07
	ora [$AF.b]		; 07 AF
	plx		; FA
	bne   3.b		; D0 03
	ply		; 7A
	sta ($08.b,X)		; 81 08
	beq 112.b		; F0 70
	eor [$FC.b],Y		; 57 FC
	ora $D1.b,X		; 15 D1
	sbc $C080FF.l,X		; FF FF 80 C0
	rti		; 40

	tsb $04.b		; 04 04
	rol $632E.w		; 2E 2E 63
	adc $F0.b,S		; 63 F0
	cmp [$28.b],Y		; D7 28
	php		; 08
	and $087F.w		; 2D 7F 08
	cmp $FF.b,S		; C3 FF
	eor $55.b,X		; 55 55
	sbc $0101FF.l,X		; FF FF 01 01
	pld		; 2B
	pld		; 2B
	adc $FEFE7F.l,X		; 7F 7F FE FE
	ldy $B4.b,X		; B4 B4
	bit $50AC.w,X		; 3C AC 50
	ora ($6B.b,X)		; 01 6B
	sbc $FF54FE.l,X		; FF FE 54 FF
	cmp $F7F555.l		; CF 55 F5 F7
	sbc [$FA.b],Y		; F7 FA
	plx		; FA
	sbc $FEFFFF.l,X		; FF FF FF FE
	adc $ACAC7F.l,X		; 7F 7F AC AC
	and #$0829.w		; 29 29 08
	adc $7F7E.w,X		; 7D 7E 7F
	ldx $FE57.w,Y		; BE 57 FE
	ora ($EF.b,X)		; 01 EF
	bpl 119.b		; 10 77
	eor $FF.b,X		; 55 FF
	sbc $6140FF.l,X		; FF FF 40 61
	plb		; AB
	jsr $FFFF.w		; 20 FF FF
	adc $20C0AA.l,X		; 7F AA C0 20
	rts		; 60

	cop $23.b		; 02 23
	dey		; 88
	plb		; AB
	mvn $AA,$57		; 54 57 AA
	plb		; AB
	mvn $3E,$D5		; 54 D5 3E
	sbc $55FF3F.l,X		; FF 3F FF 55
	sbc $FF.b,X		; F5 FF
	sbc $A201FF.l,X		; FF FF 01 A2
	inc $FF.b,X		; F6 FF
	eor $35203F.l,X		; 5F 3F 20 35
	jsr $3838.w		; 20 38 38
	sec		; 38
	and $BB3B.w,Y		; 39 3B BB
	trb $D5.b		; 14 D5
	asl A		; 0A
	nop		; EA
	lda $F5.b,X		; B5 F5
	dex		; CA
	nop		; EA
	sbc $5555FF.l,X		; FF FF 55 55
	inc $FCFF.w,X		; FE FF FC
	lda ($0B.b,S),Y		; B3 0B
	jmp $6F4D.w		; 4C 4D 6F
	and $030315.l,X		; 3F 15 03 03
	bcs -72.b		; B0 B8
	tyx		; BB
	sbc [$F7.b],Y		; F7 F7
	sta ($BA.b),Y		; 91 BA
	cmp $BAD5.w,X		; DD D5 BA
	nop		; EA
	tsa		; 3B
	sbc $FF5555.l,X		; FF 55 55 FF
	sbc $E8C03F.l,X		; FF 3F C0 E8
	and $4F6F.w,X		; 3D 6F 4F
	asl $0704.w		; 0E 04 07
	cmp [$C7.b]		; C7 C7
	ora [$2B.b]		; 07 2B
	xba		; EB
	sta $D5.b,X		; 95 D5
	asl A		; 0A
	tsx		; BA
	and $F5.b		; 25 F5
	bne  -5.b		; D0 FB
	adc $5555FF.l		; 6F FF 55 55
	cmp $0201FF.l,X		; DF FF 01 02
	ora $08.b		; 05 08
	ora ($03.b,X)		; 01 03
	lsr $A0.b,X		; 56 A0
	and $DC.b,S		; 23 DC
	and $F9FFD0.l		; 2F D0 FF F9
	asl $C1.b		; 06 C1
	rol $3CC3.w,X		; 3E C3 3C
	inc $F001.w,X		; FE 01 F0
	ora $FF5555.l		; 0F 55 55 FF
	sbc $331B0F.l,X		; FF 0F 1B 33
	sbc [$CC.b]		; E7 CC
	cld		; D8
	bvs -16.b		; 70 F0
	sta $E41B70.l		; 8F 70 1B E4
	and ($CC.b,S),Y		; 33 CC
	sbc [$18.b]		; E7 18
	cpy $D833.w		; CC 33 D8
	and [$70.b]		; 27 70
	sta $F50FF0.l		; 8F F0 0F F5
	sbc $FDFFD7.l,X		; FF D7 FF FD
	sbc $E501FE.l,X		; FF FE 01 E5
	cop $42.b		; 02 42
	ora $44.b		; 05 44
	cop $C2.b		; 02 C2
	tsb $84.b		; 04 84
	cop $FD.b		; 02 FD
	cop $FF.b		; 02 FF
	sbc $4718E7.l,X		; FF E7 18 47
	clv		; B8
	lsr $B9.b		; 46 B9
	dec $39.b		; C6 39
	stx $79.b		; 86 79
	sbc $FFFFAB.l,X		; FF AB FF FF
	dey		; 88
	bvc  16.b		; 50 10
	dey		; 88
	php		; 08
	bpl  16.b		; 10 10
	plp		; 28
	jsr $3F19.w		; 20 19 3F
	adc $27D8EF.l,X		; 7F EF D8 27
	tya		; 98
	adc [$18.b]		; 67 18
	sbc [$38.b]		; E7 38
	cmp [$39.b]		; C7 39
	dec $3F.b		; C6 3F
	cpy #$807F.w		; C0 7F 80
	sbc $FEAA10.l		; EF 10 AA FE
	sbc $C343FF.l,X		; FF FF 43 C3
	stx $8C.b		; 86 8C
	sbc $F301.w,Y		; F9 01 F3
	cop $F6.b		; 02 F6
	trb $FC.b		; 14 FC
	eor $BC.b,S		; 43 BC
	cmp $3C.b,S		; C3 3C
	stx $79.b		; 86 79
	sty $F973.w		; 8C 73 F9
	asl $F3.b		; 06 F3
	tsb $09F6.w		; 0C F6 09
	jsr ($FF03.w,X)		; FC 03 FF
	eor $02FFFF.l,X		; 5F FF FF 02
	cmp ($D6.b,X)		; C1 D6
	txa		; 8A
	and $A0B050.l,X		; 3F 50 B0 A0
	eor [$40.b]		; 47 40
	sed		; F8
	jsr $4C02.w		; 20 02 4C
	lda ($FF.b)		; B2 FF
	lda $FF.b,S		; A3 FF
	bcc  -1.b		; 90 FF
	sbc $FFF8FF.l		; EF FF F8 FF
	and [$FF.b]		; 27 FF
	sbc $B3FF.w,X		; FD FF B3
	sbc $FF5557.l,X		; FF 57 55 FF
	sbc $0E40B0.l,X		; FF B0 40 0E
	and $3802.w,X		; 3D 02 38
	ora $DF.b,S		; 03 DF
	asl $D3.b		; 06 D3
	sbc $C2FFF1.l,X		; FF F1 FF C2
	sbc $C7FFFD.l,X		; FF FD FF C7
	sbc $22FFFD.l,X		; FF FD FF 22
	inc $FCFC.w,X		; FE FC FC
	sbc $51FDFF.l,X		; FF FF FD 51
	ldx $C97F.w,Y		; BE 7F C9
	rtl		; 6B

	lda [$77.b],Y		; B7 77
	iny		; C8
	ror A		; 6A
	lda $FF7FFF.l,X		; BF FF 7F FF
	inc $B5FE.w,X		; FE FE B5
	lda $9E.b,X		; B5 9E
	dey		; 88
	trb $95.b		; 14 95
	php		; 08
	dey		; 88
	ora $10.b,X		; 15 10
	ora ($4A.b,X)		; 01 4A
	eor $55.b,X		; 55 55
	sbc $41FFFF.l,X		; FF FF FF 41
	sbc $E7.b,S		; E3 E7
	lsr $781C.w		; 4E 1C 78
	beq -112.b		; F0 90
	beq -79.b		; F0 B1
	sbc ($04.b),Y		; F1 04
	inc $2B.b		; E6 2B
	cmp $1B57.w		; CD 57 1B
	rol $5D37.w		; 2E 37 5D
	adc $559FBA.l		; 6F BA 9F 55
	ora $FF.b		; 05 FF
	sbc $228FA5.l,X		; FF A5 8F 22
	jmp $AA2074.l		; 5C 74 20 AA
	plx		; FA
	sta $D5.b		; 85 D5
	xba		; EB
	sbc $57FFC3.l,X		; FF C3 FF 57
	sbc $F4FFFF.l,X		; FF FF FF F4
	sbc $FFFF6F.l,X		; FF 6F FF FF
	sbc $3CAFF1.l,X		; FF F1 AF 3C
	bit $3A3A.w,X		; 3C 3A 3A
	ldy $FFA6.w		; AC A6 FF
	beq  -1.b		; F0 FF
	cli		; 58
	sbc $B80B.w,X		; FD 0B B8
	rti		; 40

	bcc  50.b		; 90 32
	sbc $F85050.l,X		; FF 50 50 F8
	sed		; F8
	clv		; B8
	clv		; B8
	bpl  17.b		; 10 11
	eor $33.b,S		; 43 33
	sbc $ABFFAF.l,X		; FF AF FF AB
	trb $14.b		; 14 14
	bit $DD3C.w,X		; 3C 3C DD
	ldy $5E0E.w,X		; BC 0E 5E
	trb $BA.b		; 14 BA
	bpl  64.b		; 10 40
	ldy #$D650.w		; A0 50 D6
	and #$3D3D.w		; 29 3D 3D
	asl $0E1E.w,X		; 1E 1E 0E
	stx $C404.w		; 8E 04 C4
	rts		; 60

	bcs  80.b		; B0 50
	sbc $F3FFF7.l,X		; FF F7 FF F3
	ldy #$E0A0.w		; A0 A0 E0
	cpx #$E0F0.w		; E0 F0 E0
	sed		; F8
	cpx #$403C.w		; E0 3C 40
	jmp.w [$0874]		; DC 74 08
	jsl $44BB04.l		; 22 04 BB 44
.ACCU 8
	sep #$E2		; E2 E2
	sbc ($E1.b,X)		; E1 E1
	cpx $E4.b		; E4 E4
	ldy #$02A0.w		; A0 A0 02
	asl A		; 0A
	ora ($05.b,X)		; 01 05
	bvc  85.b		; 50 55
	cmp [$FF.b],Y		; D7 FF
	eor $AA.b,X		; 55 AA
	eor ($22.b,X)		; 41 22
	eor ($20.b,X)		; 41 20
	lda $FFFF40.l,X		; BF 40 FF FF
	sbc $1CE310.l		; EF 10 E3 1C
	.db $62, $9D, $63		; 62 9D 63
	stz $9E61.w		; 9C 61 9E
	bvc  85.b		; 50 55
	sbc $A244FF.l,X		; FF FF 44 A2
	cmp ($0A.b),Y		; D1 0A
	tsb $0B.b		; 04 0B
	sbc ($0E.b),Y		; F1 0E
	cld		; D8
	and [$CC.b]		; 27 CC
	and ($E7.b,S),Y		; 33 E7
	clc		; 18
	sbc ($0C.b,S),Y		; F3 0C
	tas		; 1B
	cpx $0E.b		; E4 0E
	sbc ($0F.b),Y		; F1 0F
	beq  80.b		; F0 50
	eor $DF.b,X		; 55 DF
	sbc $018A55.l,X		; FF 55 8A 01
	.db $82, $55, $0A		; 82 55 0A
	cpy $3B.b		; C4 3B
	pea $FF0B.w		; F4 0B FF
	sta $7C8360.l,X		; 9F 60 83 7C
	cmp $3C.b,S		; C3 3C
	adc $F00F80.l,X		; 7F 80 0F F0
	eor $51.b,X		; 55 51
	cmp $F847F3.l		; CF F3 47 F8
	cpy #$1060.w		; C0 60 10
	trb $EB.b		; 14 EB
	cmp [$38.b]		; C7 38
	sec		; 38
	sec		; 38
	cpx #$10E0.w		; E0 E0 10
	bpl  20.b		; 10 14
	trb $EB.b		; 14 EB
	xba		; EB
	eor $C1.b,X		; 55 C1
	sbc $0EF1F3.l,X		; FF F3 F1 0E
	ora ($0E.b,X)		; 01 0E
	bpl  48.b		; 10 30
	pld		; 2B
	sbc ($0E.b),Y		; F1 0E
	asl $010E.w		; 0E 0E 01
	ora ($0E.b,X)		; 01 0E
	asl $1010.w		; 0E 10 10
	ora ($01.b,X)		; 01 01
	ora $FF1E.w,X		; 1D 1E FF
	lda $8AB5F3.l,X		; BF F3 B5 8A
	ora $8E.b		; 05 8E
	stx $DE8C.w		; 8E 8C DE
	cld		; D8
	ror $7C70.w,X		; 7E 70 7C
	rts		; 60

	sei		; 78
	rti		; 40

	cmp ($02.b),Y		; D1 02
	sta $505170.l		; 8F 70 51 50
	ldx #$04A0.w		; A2 A0 04
	php		; 08
	bvs -127.b		; 70 81
	cop $AA.b		; 02 AA
	asl A		; 0A
	sta $0A.b,X		; 95 0A
	cmp $0580A0.l,X		; DF A0 80 05
	sec		; 38
	cpy #$60E0.w		; C0 E0 60
	bra   5.b		; 80 05
	sec		; 38
	cpy #$2AAF.w		; C0 AF 2A
	ora [$AA.b],Y		; 17 AA
	asl A		; 0A
	inc $FB01.w		; EE 01 FB
	inc $0FFF.w,X		; FE FF 0F
	ora $01.b,S		; 03 01
	asl $0701.w,X		; 1E 01 07
	ora ($F0.b,X)		; 01 F0
	jsr ($FFFE.w,X)		; FC FE FF
	eor $FF.b,X		; 55 FF
	sbc $24E9BF.l,X		; FF BF E9 24
	asl A		; 0A
	lda $6F.b,X		; B5 6F
	bra -105.b		; 80 97
	cpy #$FCCA.w		; C0 CA FC
	sbc $FF17FD.l,X		; FF FD 17 FF
	stp		; DB
	sbc $CAFFF5.l,X		; FF F5 FF CA
	sbc $087F50.l,X		; FF 50 7F 08
	and $010317.l,X		; 3F 17 03 01
	eor $55.b,X		; 55 55
	lda $2007FF.l,X		; BF FF 07 20
	adc $E2F0.w,Y		; 79 F0 E2
	pla		; 68
	bit $151D.w		; 2C 1D 15
	sed		; F8
	bne  -8.b		; D0 F8
	sta ($F1.b,X)		; 81 F1
	sbc ($03.b),Y		; F1 03
	sbc ($99.b,S),Y		; F3 99
	xce		; FB
	cmp [$F7.b],Y		; D7 F7
	sbc #$EA.b		; E9 EA
	eor $55.b,X		; 55 55
	sbc $3F2AFF.l,X		; FF FF 2A 3F
	ora $6E3F1F.l,X		; 1F 1F 3F 6E
	dec $C6.b		; C6 C6
	cmp ($D5.b),Y		; D1 D5
	ror A		; 6A
	nop		; EA
	cmp $F5.b,X		; D5 F5
	nop		; EA
	nop		; EA
	sbc $D5.b,X		; F5 D5
.ACCU 8
.INDEX 8
	sep #$BB		; E2 BB
	cmp $BA7D.w,X		; DD 7D BA
	tyx		; BB
	eor $50.b,S		; 43 50
	sbc $A0A0FF.l,X		; FF FF A0 A0
	ora ($02.b,X)		; 01 02
	tsb $5B.b		; 04 5B
	tsb $3F.b		; 04 3F
	cpy #$6F.b		; C0 6F
	bcc 103.b		; 90 67
	tya		; 98
	jmp $4CB3.w		; 4C B3 4C
	lda ($4F.b,S),Y		; B3 4F
	bcs  -4.b		; B0 FC
	ora $54.b,S		; 03 54
	sbc $FDFF.w,X		; FD FF FD
	trb $0A.b		; 14 0A
	ora $AF.b		; 05 AF
	ora $07FF03.l,X		; 1F 03 FF 07
	and $5BA407.l,X		; 3F 07 A4 5B
	bit $CB.b,X		; 34 CB
	ora $708FE0.l,X		; 1F E0 8F 70
	sbc $FFC33F.l,X		; FF 3F C3 FF
	ora [$3F.b]		; 07 3F
	cmp [$EB.b]		; C7 EB
	stp		; DB
	plb		; AB
	tax		; AA
	sbc $502468.l,X		; FF 68 24 50
	ora ($2D.b,X)		; 01 2D
	ora ($36.b,X)		; 01 36
	dey		; 88
	asl A		; 0A
	rol A		; 2A
	jsr $68FF.w		; 20 FF 68
	bit $50.b		; 24 50
	bit $0837.w		; 2C 37 08
	sta $FFAB0F.l		; 8F 0F AB FF
	plb		; AB
	tax		; AA
	sbc $288C80.l,X		; FF 80 8C 28
	rti		; 40

	ora ($11.b,X)		; 01 11
	ora $43.b		; 05 43
	eor $41.b		; 45 41
	xba		; EB
	cmp $80FF.w,X		; DD FF 80
	sty $4028.w		; 8C 28 40
	bvc   6.b		; 50 06
	tsb $36.b		; 04 36
	xba		; EB
	sbc $FF8A2B.l,X		; FF 2B 8A FF
	tsb $0210.w		; 0C 10 02
	jsr $7420.w		; 20 20 74
	adc #$DE.b		; 69 DE
	lda $8F8F.w		; AD 8F 8F
	sta [$8F.b]		; 87 8F
	sbc $02100C.l,X		; FF 0C 10 02
	ora $0873.w,X		; 1D 73 08
	sbc ($FF.b),Y		; F1 FF
	sbc ($30.b,S),Y		; F3 30
	sbc ($1E.b),Y		; F1 1E
	bpl -69.b		; 10 BB
	tsx		; BA
	inc $FEFE.w,X		; FE FE FE
	inc $FFFE.w,X		; FE FE FF
	inc $F1FE.w,X		; FE FE F1
	asl $0E0E.w		; 0E 0E 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $F7EF.w,X		; FD EF F7
	adc $0AF58F.l,X		; 7F 8F F5 0A
	ror A		; 6A
	ora $05.b,X		; 15 05
	asl A		; 0A
	cop $05.b		; 02 05
	ora $02.b		; 05 02
	sta [$04.b]		; 87 04
	sbc $FF708F.l,X		; FF 8F 70 FF
	adc $F00F80.l,X		; 7F 80 0F F0
	ora [$F8.b]		; 07 F8
	ora [$F8.b]		; 07 F8
	sta [$78.b]		; 87 78
	sbc $CFBF45.l,X		; FF 45 BF CF
	sbc ($E3.b,S),Y		; F3 E3
	trb $5807.w		; 1C 07 58
	bvc -16.b		; 50 F0
	beq  80.b		; F0 50
	sei		; 78
	cmp [$E3.b],Y		; D7 E3
	trb $1C1C.w		; 1C 1C 1C
	ora [$07.b]		; 07 07
	php		; 08
	php		; 08
	plp		; 28
	plp		; 28
	cmp [$D7.b],Y		; D7 D7
	cmp ($FF.b,X)		; C1 FF
	cmp $FF.b,S		; C3 FF
	cpy #$01.b		; C0 01
	cop $1B.b		; 02 1B
	ora [$2F.b]		; 07 2F
	ora $3A1E1F.l		; 0F 1F 1E 3A
	bit $C0.b,X		; 34 C0
	and $1C0303.l,X		; 3F 03 03 1C
	trb $2020.w		; 1C 20 20
	ora ($01.b,X)		; 01 01
	asl $FF0E.w		; 0E 0E FF
	and $20393F.l		; 2F 3F 39 20
	ora [$60.b],Y		; 17 60
	sec		; 38
	cpx #$71.b		; E0 71
	cpx #$C0.b		; E0 C0
	cpy #$E0.b		; C0 E0
	bra -59.b		; 80 C5
	dex		; CA
	sec		; 38
	cpy #$48.b		; C0 48
	rti		; 40

	bcc -127.b		; 90 81
	jsr $C005.w		; 20 05 C0
	txa		; 8A
	ror A		; 6A
	lda $FFAA28.l,X		; BF 28 AA FF
	sei		; 78
	bra   1.b		; 80 01
	ora $08.b,S		; 03 08
	ora [$70.b]		; 07 70
	asl A		; 0A
	bra -16.b		; 80 F0
	sei		; 78
	bra   8.b		; 80 08
	bvs -128.b		; 70 80
	beq 127.b		; F0 7F
	cmp $0A8A2A.l		; CF 2A 8A 0A
	ora $30D71A.l		; 0F 1A D7 30
	plp		; 28
	bvs -24.b		; 70 E8
	php		; 08
	eor [$07.b]		; 47 07
	ora $F01D.w,X		; 1D 1D F0
	cmp [$28.b],Y		; D7 28
	php		; 08
	ora [$1D.b]		; 07 1D
	adc $8A3ECF.l,X		; 7F CF 3E 8A
	bra -64.b		; 80 C0
	cmp $A7.b		; C5 A7
	adc $6A3F58.l		; 6F 58 3F 6A
	rti		; 40

	bra -128.b		; 80 80
	cpx #$E0.b		; E0 E0
	and $08AF08.l,X		; 3F 08 AF 08
	bvc  64.b		; 50 40
	bra -32.b		; 80 E0
	adc $A938FF.l,X		; 7F FF 38 A9
	ora $7818FF.l,X		; 1F FF 18 78
	stx $06.b		; 86 06
	bra -64.b		; 80 C0
	rti		; 40

	dec A		; 3A
	dec A		; 3A
	ora $05.b		; 05 05
	sec		; 38
	sec		; 38
	sei		; 78
	rti		; 40

	lsr $40.b		; 46 40
	dec A		; 3A
	ora $38.b		; 05 38
	sbc $38FF0C.l,X		; FF 0C FF 38
	dex		; CA
	txa		; 8A
	rol $1C4E.w,X		; 3E 4E 1C
	bit $2828.w		; 2C 28 28
	cpy #$C0.b		; C0 C0
	eor $20.b,X		; 55 20
	ror $2F20.w		; 6E 20 2F
	ora $2A.b,S		; 03 2A
	cop $C0.b		; 02 C0
	and ($21.b,X)		; 21 21
	and $03FF54.l,X		; 3F 54 FF 03
	bra -128.b		; 80 80
	cpy #$C0.b		; C0 C0
	rti		; 40

	rti		; 40

	ora ($0B.b,X)		; 01 0B
	ora $C13847.l,X		; 1F 47 38 C1
	ora ($E0.b,X)		; 01 E0
	ldy #$59.b		; A0 59
	eor $2020.w,Y		; 59 20 20
	eor $DD.b,X		; 55 DD
	and $0708FF.l,X		; 3F FF 08 07
	ora $40.b,S		; 03 40
	rtl		; 6B

	adc #$01.b		; 69 01
	bvs  78.b		; 70 4E
	cop $FC.b		; 02 FC
	ora $B3.b,S		; 03 B3
	lda ($03.b,S),Y		; B3 03
	ora $2B.b,S		; 03 2B
	pld		; 2B
	php		; 08
	php		; 08
	bvc  80.b		; 50 50
	cpy $FFCC.w		; CC CC FF
	plx		; FA
	adc $172FFF.l,X		; 7F FF 2F 17
	cmp [$2F.b],Y		; D7 2F
	pld		; 2B
	ora [$D4.b],Y		; 17 D4
	pld		; 2B
	sta $3F0B1F.l		; 8F 1F 0B 3F
	tas		; 1B
	lda $FFC73F.l,X		; BF 3F C7 FF
	ora [$3F.b]		; 07 3F
	cmp $FF.b,S		; C3 FF
	sta $E01F70.l		; 8F 70 1F E0
	and $5BBFCB.l,X		; 3F CB BF 5B
	adc $AAAB55.l,X		; 7F 55 AB AA
	lda $606FDF.l		; AF DF 6F 60
	cmp $370840.l		; CF 40 08 37
	bit $2450.w		; 2C 50 24
	sbc $8F0F8F.l,X		; FF 8F 0F 8F
	php		; 08
	and [$2C.b],Y		; 37 2C
	bvc  36.b		; 50 24
	sbc $AA8957.l,X		; FF 57 89 AA
	tax		; AA
	eor $DD.b,X		; 55 DD
	xba		; EB
	cmp ($C1.b,X)		; C1 C1
	cmp $C1.b,S		; C3 C1
	ora ($41.b),Y		; 11 41
	rti		; 40

	plp		; 28
	sty $36FF.w		; 8C FF 36
	cop $50.b		; 02 50
	rti		; 40

	plp		; 28
	sty $17FF.w		; 8C FF 17
	plb		; AB
	rol A		; 2A
	plx		; FA
	adc $868D.w,X		; 7D 8D 86
	cli		; 58
	tsb $5870.w		; 0C 70 58
	eor ($50.b),Y		; 51 50
	php		; 08
	cop $FF.b		; 02 FF
	sei		; 78
	phd		; 0B
	mvn $01,$28		; 54 28 01
	php		; 08
	cop $FF.b		; 02 FF
	eor $01.b,X		; 55 01
	brk $A0.b		; 00 A0
	eor $C0E0E0.l,X		; 5F E0 E0 C0
	cpy #$81.b		; C0 81
	bra   3.b		; 80 03
	ora [$3F.b],Y		; 17 3F
	adc $F57FFF.l,X		; 7F FF 7F F5
	and $FC08F0.l,X		; 3F F0 08 FC
	trb $BE02.w		; 1C 02 BE
	ora ($FF.b,X)		; 01 FF
	inc $85D4.w,X		; FE D4 85
	ora $07.b		; 05 07
	ora [$FC.b]		; 07 FC
	ora $02.b,S		; 03 02
	cop $01.b		; 02 01
	ora ($05.b,X)		; 01 05
	ora $07.b		; 05 07
	ora [$41.b]		; 07 41
	eor $FF.b,X		; 55 FF
	sbc $28C003.l,X		; FF 03 C0 28
	ldx $A0F5.w,Y		; BE F5 A0
	ora $FF.b,S		; 03 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $FFD7FF.l,X		; 3F FF D7 FF
	eor ($FF.b,X)		; 41 FF
	asl A		; 0A
	sbc $BFFF5F.l,X		; FF 5F FF BF
	plb		; AB
	cmp $40A0FF.l,X		; DF FF A0 40
	bvc -84.b		; 50 AC
	ldy #$5F.b		; A0 5F
	lda $800780.l,X		; BF 80 07 80
	sta ($83.b,X)		; 81 83
	cpx #$1F.b		; E0 1F
	jsr ($FF03.w,X)		; FC 03 FF
	lda $788740.l,X		; BF 40 87 78
	sta ($7E.b,X)		; 81 7E
	.db $82, $7C, $84		; 82 7C 84
	sei		; 78
	tax		; AA
	inc $82BA.w,X		; FE BA 82
	adc ($63.b,X)		; 61 63
	.db $62, $E2, $E7		; 62 E2 E7
	ora ($FF.b,X)		; 01 FF
	cop $FF.b		; 02 FF
	ora $BF.b		; 05 BF
	stz $809C.w,X		; 9E 9C 80
	ora $181D.w,X		; 1D 1D 18
	rti		; 40

	sbc $AAAAFF.l,X		; FF FF AA AA
	ora $0E0E0F.l		; 0F 0F 0E 0E
	tas		; 1B
	tas		; 1B
	and ($33.b,S),Y		; 33 33
	sbc [$E7.b]		; E7 E7
	jmp $D8CC.w		; 4C CC D8
	cld		; D8
	sbc ($F1.b),Y		; F1 F1
	beq -15.b		; F0 F1
	cpx $CC.b		; E4 CC
	clc		; 18
	and ($27.b,S),Y		; 33 27
	asl $5555.w		; 0E 55 55
	sbc $700FE7.l,X		; FF E7 0F 70
	lda $1C41.w,X		; BD 41 1C
	rts		; 60

	phd		; 0B
	bmi -60.b		; 30 C4
	beq -16.b		; F0 F0
	bra -128.b		; 80 80
	and $7C3D.w,X		; 3D 3D 7C
	jmp ($6060.w,X)		; 7C 60 60
	phd		; 0B
	phd		; 0B
	tsa		; 3B
	sbc $AAAAFF.l,X		; FF FF AA AA
	cmp $C3.b,S		; C3 C3
	sbc $0FF9.w,Y		; F9 F9 0F
	ora $E70707.l		; 0F 07 07 E7
	sbc [$FC.b]		; E7 FC
	jsr ($BCBC.w,X)		; FC BC BC
	stx $3C8E.w		; 8E 8E 3C
	asl $F0.b		; 06 F0
	sed		; F8
	clc		; 18
	ora $43.b,S		; 03 43
	adc ($55.b),Y		; 71 55
	cmp $FF.b,X		; D5 FF
	sbc $A201C2.l,X		; FF C2 01 A2
	bvc -81.b		; 50 AF
	eor ($A4.b)		; 52 A4
	eor $3001.w,Y		; 59 01 30
	and $3C3D.w,X		; 3D 3D 3C
	bit $9E9E.w,X		; 3C 9E 9E
	dec $61CF.w		; CE CF 61
	adc $33.b,S		; 63 33
	and [$97.b],Y		; 37 97
	sta $5744CF.l,X		; 9F CF 44 57
	sbc $0401FF.l,X		; FF FF 01 04
	rti		; 40

	rti		; 40

	tsb $2A.b		; 04 2A
	eor [$1B.b],Y		; 57 1B
	cpx $09.b		; E4 09
	inc $08.b,X		; F6 08
	sbc [$1C.b],Y		; F7 1C
	sbc $9C.b,S		; E3 9C
	and $FC.b,S		; 23 FC
	ora $FE.b,S		; 03 FE
	ora ($F7.b,X)		; 01 F7
	php		; 08
	eor $55.b,X		; 55 55
	cmp $5D0AF3.l		; CF F3 0A 5D
	sed		; F8
	sed		; F8
	adc $40.b,X		; 75 40
	ora ($02.b,X)		; 01 02
	lda $404040.l,X		; BF 40 40 40
	php		; 08
	php		; 08
	sta $95.b,X		; 95 95
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	sbc $FFFFFF.l		; EF FF FF FF
	cpx #$11.b		; E0 11
	jsr $1409.w		; 20 09 14
	jsr $F00B.w		; 20 0B F0
	bit $18.b		; 24 18
	and ($0C.b),Y		; 31 0C
	clc		; 18
	asl $F10F.w		; 0E 0F F1
	asl $2929.w		; 0E 29 29
	trb $14.b		; 14 14
	pld		; 2B
	pld		; 2B
	pei ($D4.b)		; D4 D4
	and #$29.b		; 29 29
	trb $14.b		; 14 14
	ora ($01.b,X)		; 01 01
	eor [$B5.b],Y		; 57 B5
	plb		; AB
	plx		; FA
	tsa		; 3B
	sbc $600B30.l,X		; FF 30 0B 60
	trb $3C40.w		; 1C 40 3C
	bra  96.b		; 80 60
	sbc $0B303B.l,X		; FF 3B 30 0B
	rts		; 60

	trb $8040.w		; 1C 40 80
	ldy $6060.w,X		; BC 60 60
	eor [$55.b],Y		; 57 55
	plb		; AB
	tax		; AA
	adc ($FF.b),Y		; 71 FF
	and ($40.b)		; 32 40
	tas		; 1B
	cpx #$08.b		; E0 08
	inc $3A.b,X		; F6 3A
	sbc $403271.l,X		; FF 71 32 40
	tas		; 1B
	cpx #$08.b		; E0 08
	inc $3A.b,X		; F6 3A
	eor [$15.b],Y		; 57 15
	plb		; AB
	rol A		; 2A
	cpy #$FF.b		; C0 FF
	bvc -96.b		; 50 A0
	bvc -82.b		; 50 AE
	bvc -94.b		; 50 A2
	sbc $A050C0.l,X		; FF C0 50 A0
	bvc -82.b		; 50 AE
	bvc -94.b		; 50 A2
	lsr $55.b,X		; 56 55
	ora ($02.b,X)		; 01 02
	sbc $070301.l,X		; FF 01 03 07
	sbc $040E0F.l,X		; FF 0F 0E 04
	sbc $FFD7F0.l,X		; FF F0 D7 FF
	cmp ($FF.b,X)		; C1 FF
	plb		; AB
	sbc $CAE0F4.l,X		; FF F4 E0 CA
	asl A		; 0A
	sta $3F3F1F.l,X		; 9F 1F 3F 3F
	adc $F87D.w,X		; 7D 7D F8
	sed		; F8
	sbc $1F0A0A.l,X		; FF 0A 0A 1F
	ora $7D3F3F.l,X		; 1F 3F 3F 7D
	adc $F9F9.w,X		; 7D F9 F9
	sbc $3FFFAB.l,X		; FF AB FF 3F
	nop		; EA
	nop		; EA
	pea $A8F4.w		; F4 F4 A8
	tay		; A8
	rti		; 40

	eor ($80.b,X)		; 41 80
	sta $07.b,S		; 83 07
	and $15EAFF.l,X		; 3F FF EA 15
	pea $A90B.w		; F4 0B A9
	lsr $42.b,X		; 56 42
	ldy $7884.w,X		; BC 84 78
	php		; 08
	beq  64.b		; F0 40
	bra -86.b		; 80 AA
	rol A		; 2A
	adc $38073F.l,X		; 7F 3F 07 38
	cpy #$02.b		; C0 02
	trb $8060.w		; 1C 60 80
	php		; 08
	beq  72.b		; F0 48
	bvs  64.b		; 70 40
	bra   2.b		; 80 02
	ora ($0E.b)		; 12 0E
	bvc  48.b		; 50 30
	cpy #$40.b		; C0 40
	tax		; AA
	.db $82, $3F, $83		; 82 3F 83
	sbc [$D0.b]		; E7 D0
	and #$10.b		; 29 10
	ora ($03.b)		; 12 03
	cpx #$18.b		; E0 18
	cld		; D8
	cld		; D8
	plp		; 28
	and ($10.b,X)		; 21 10
	cop $03.b		; 02 03
	eor [$FF.b],Y		; 57 FF
	cop $AA.b		; 02 AA
	asl A		; 0A
	ora $1C1E1F.l,X		; 1F 1F 1E 1C
	bit $6D20.w,X		; 3C 20 6D
	eor $A0C0.w,Y		; 59 C0 A0
	cmp ($01.b,X)		; C1 01
	cpx #$20.b		; E0 20
	eor $01A0.w,Y		; 59 A0 01
	sbc $A2AAF3.l,X		; FF F3 AA A2
	xce		; FB
	xce		; FB
	cpy $C4.b		; C4 C4
	bvc  80.b		; 50 50
	php		; 08
	php		; 08
	pld		; 2B
	pld		; 2B
	ora $03.b,S		; 03 03
	lda ($B3.b,S),Y		; B3 B3
	tsb $C4.b		; 04 C4
	bvc   8.b		; 50 08
	pld		; 2B
	ora $B3.b,S		; 03 B3
	sbc $AAAAFF.l,X		; FF FF AA AA
	ldy $A4.b		; A4 A4
	bit $34.b,X		; 34 34
	asl $CF1E.w,X		; 1E 1E CF
	cmp $3C7F7F.l		; CF 7F 7F 3C
	bit $F8F8.w,X		; 3C F8 F8
	sec		; 38
	sec		; 38
	tad		; 5B
	wai		; CB
	sbc ($30.b,X)		; E1 30
	bra -61.b		; 80 C3
	ora [$C7.b]		; 07 C7
	eor $35.b,X		; 55 35
	sbc $2497EF.l,X		; FF EF 97 24
	bvc  47.b		; 50 2F
	bit $08.b,X		; 34 08
	txa		; 8A
	asl A		; 0A
	bvs 104.b		; 70 68
	pla		; 68
	jmp $1C4C.w		; 4C 4C 1C
	ora $073033.l,X		; 1F 33 30 07
	ora [$0F.b]		; 07 0F
	sta $5F8F80.l		; 8F 80 8F 5F
	eor $7FFF.w,X		; 5D FF 7F
	.db $62, $60, $81		; 62 60 81
	bra  11.b		; 80 0B
	ora ($8B.b,S),Y		; 13 8B
	eor $02.b,S		; 43 02
	bit #$57.b		; 89 57
	ora $0C7380.l,X		; 1F 80 73 0C
	stp		; DB
	bit $9B.b		; 24 9B
	stz $CB.b		; 64 CB
	bit $CB.b,X		; 34 CB
	bit $C9.b,X		; 34 C9
	rol $FF.b,X		; 36 FF
	eor $95.b		; 45 95
	cmp $42A3FF.l		; CF FF A3 42
	jsr $6831.w		; 20 31 68
	trb $03.b		; 14 03
	sbc $1C.b,S		; E3 1C
	cop $02.b		; 02 02
	jsr $3120.w		; 20 20 31
	and ($68.b),Y		; 31 68
	pla		; 68
	trb $14.b		; 14 14
	ora $03.b,S		; 03 03
	sbc $F3FF.w,X		; FD FF F3
	beq -15.b		; F0 F1
	ora ($01.b,X)		; 01 01
	ora ($0B.b,X)		; 01 0B
	tas		; 1B
	asl $3E3E.w,X		; 1E 3E 3E
	jmp ($B87C.w,X)		; 7C 7C B8
	lda #$18.b		; A9 18
	bpl -15.b		; 10 F1
	asl $0A0A.w		; 0E 0A 0A
	ora $05.b		; 05 05
	ora ($01.b,X)		; 01 01
	bpl  16.b		; 10 10
	sbc $F3CFA2.l,X		; FF A2 CF F3
	ora $8A.b		; 05 8A
	lda $FAFADF.l		; AF DF FA FA
	bvc -96.b		; 50 A0
	php		; 08
	bra 120.b		; 80 78
	sta $707070.l		; 8F 70 70 70
	beq -16.b		; F0 F0
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	sei		; 78
	sei		; 78
	txa		; 8A
	ldx #$CF.b		; A2 CF
	sbc ($C7.b,S),Y		; F3 C7
	sec		; 38
	ora [$08.b]		; 07 08
	plp		; 28
	cmp [$C7.b],Y		; D7 C7
	sec		; 38
	sec		; 38
	sec		; 38
	ora [$07.b]		; 07 07
	php		; 08
	php		; 08
	plp		; 28
	plp		; 28
	cmp [$D7.b],Y		; D7 D7
	sta [$A2.b]		; 87 A2
	wai		; CB
	sbc ($70.b,S),Y		; F3 70
	sbc $408070.l,X		; FF 70 80 40
	bvc -84.b		; 50 AC
	sbc $807070.l,X		; FF 70 70 80
	bra  64.b		; 80 40
	rti		; 40

	bvc  80.b		; 50 50
	ldy $57AC.w		; AC AC 57
	rti		; 40

	plb		; AB
	tay		; A8
	sec		; 38
	sbc $013F39.l,X		; FF 39 3F 01
	pla		; 68
	sbc $3E3838.l,X		; FF 38 38 3E
	ora ($01.b,X)		; 01 01
	jsl $55F51C.l		; 22 1C F5 55
	sbc $03FEFF.l,X		; FF FF FE 03
	eor [$40.b]		; 47 40
	sta $1E1F80.l		; 8F 80 1F 1E
	trb $2A3C.w		; 1C 3C 2A
	ora $181F1C.l,X		; 1F 1C 1F 18
	sbc $E0FFF0.l,X		; FF F0 FF E0
	sbc $E3FFE1.l,X		; FF E1 FF E3
	sbc $BFFFC3.l,X		; FF C3 FF BF
	tax		; AA
	sbc $A1A0EE.l,X		; FF EE A0 A1
	rti		; 40

	eor $80.b,S		; 43 80
	sta [$0F.b]		; 87 0F
	ora $303819.l,X		; 1F 19 38 30
	ldx #$5C.b		; A2 5C
	mvp $88,$B8		; 44 B8 88
	bvs  16.b		; 70 10
	cpx #$E0.b		; E0 E0
	bit $C2.b		; 24 C2
	cmp [$48.b]		; C7 48
	sta [$2A.b]		; 87 2A
	tay		; A8
	sbc $F9E8.w,X		; FD E8 F9
	sec		; 38
.ACCU 16
.INDEX 16
	rep #$BC		; C2 BC
	rti		; 40

	sec		; 38
	asl $24.b		; 06 24
	trb $60A2.w		; 1C A2 60
	bra -128.b		; 80 80
	ldy $2040.w,X		; BC 40 20
	clc		; 18
	rol A		; 2A
	txa		; 8A
	and $6B878A.l,X		; 3F 8A 87 6B
	trb $04.b		; 14 04
	ora $0E.b,S		; 03 0E
	rti		; 40

	sec		; 38
	bvc  59.b		; 50 3B
	bpl   4.b		; 10 04
	tsb $03.b		; 04 03
	asl $770A.w		; 0E 0A 77
	asl A		; 0A
	sbc $02031F.l,X		; FF 1F 03 02
	ora ($06.b)		; 12 06
	asl $09.b		; 06 09
	ora [$E0.b]		; 07 E0
	ora $10.b,S		; 03 10
	cop $10.b		; 02 10
	bpl   8.b		; 10 08
	ora ($08.b,X)		; 01 08
	php		; 08
	sbc $02AA07.l,X		; FF 07 AA 02
	sta [$C7.b]		; 87 C7
	cmp ($01.b,X)		; C1 01
	rts		; 60

	ldy #$5931.w		; A0 31 59
	clc		; 18
	jsr $3810.w		; 20 10 38
	ora ($A0.b,X)		; 01 A0
	eor $1520.w,Y		; 59 20 15
	eor $FF.b,X		; 55 FF
	sbc $03B3FC.l,X		; FF FC B3 03
	pld		; 2B
	php		; 08
	bvc -60.b		; 50 C4
	xce		; FB
	ora $03.b,S		; 03 03
	bcs -80.b		; B0 B0
	lda ($B1.b,S),Y		; B3 B1
	lda ($B9.b,S),Y		; B3 B9
	tya		; 98
	bra -112.b		; 80 90
	bra -64.b		; 80 C0
	cpy #$FF04.w		; C0 04 FF
	sbc $38AAAA.l,X		; FF AA AA 38
	sec		; 38
	sed		; F8
	sed		; F8
	bit $7F3C.w,X		; 3C 3C 7F
	adc $1FCFCF.l,X		; 7F CF CF 1F
	ora $A43434.l,X		; 1F 34 34 A4
	ldy $C7.b		; A4 C7
	ora [$C3.b]		; 07 C3
	bra  48.b		; 80 30
	cpx #$5BCB.w		; E0 CB 5B
	eor $FC.b,X		; 55 FC
	inc $70FF.w,X		; FE FF 70
	bpl -96.b		; 10 A0
	rti		; 40

	sta ($01.b,X)		; 81 01
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	sta $B09F90.l		; 8F 90 9F B0
	and $487F77.l,X		; 3F 77 7F 48
	adc $ABFFD7.l,X		; 7F D7 FF AB
	sbc $45FFDB.l,X		; FF DB FF 45
	eor [$CD.b],Y		; 57 CD
	sbc $02A6AF.l,X		; FF AF A6 02
	ora ($01.b),Y		; 11 01
	iny		; C8
	jsr $FFCC.w		; 20 CC FF
	rol $36.b,X		; 36 36
	cop $02.b		; 02 02
	bvc  80.b		; 50 50
	pha		; 48
	pha		; 48
	jsr $CC20.w		; 20 20 CC
	cpy $23AF.w		; CC AF 23
	sbc $078833.l,X		; FF 33 88 07
	php		; 08
	phd		; 0B
	trb $68.b		; 14 68
	bra -111.b		; 80 91
	cop $8F.b		; 02 8F
	bvs   3.b		; 70 03
	ora $14.b,S		; 03 14
	trb $68.b		; 14 68
	pla		; 68
	ora ($11.b),Y		; 11 11
	cop $02.b		; 02 02
	and $CC3FDD.l,X		; 3F DD 3F CC
	tsb $E7.b		; 04 E7
	ora $06.b		; 05 06
	ora ($01.b,X)		; 01 01
	jsr $2020.w		; 20 20 20
	rti		; 40

	rti		; 40

	rti		; 40

	sbc [$18.b]		; E7 18
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	jsr $4020.w		; 20 20 40
	rti		; 40

	plx		; FA
	ora $FCAFFF.l		; 0F FF AF FC
	inc $1F10.w,X		; FE 10 1F
	php		; 08
	ora $020704.l		; 0F 04 07 02
	ora $FC.b,S		; 03 FC
	ora $FE.b,S		; 03 FE
	ora ($1F.b,X)		; 01 1F
	cpx #$F00F.w		; E0 0F F0
	ora [$F8.b]		; 07 F8
	ora $FC.b,S		; 03 FC
	sbc $DA82FF.l,X		; FF FF 82 DA
	cmp $CF.b,S		; C3 CF
	ora $C0.b,S		; 03 C0
	bmi  12.b		; 30 0C
	bra -112.b		; 80 90
	cpx #$FC03.w		; E0 03 FC
	cpy #$30C0.w		; C0 C0 30
	bmi  12.b		; 30 0C
	tsb $E0E0.w		; 0C E0 E0
	inx		; E8
	eor $010FFE.l,X		; 5F FE 0F 01
	cop $01.b		; 02 01
	tsb $03.b		; 04 03
	clc		; 18
	ora [$E0.b]		; 07 E0
	ora [$07.b]		; 07 07
	sbc $020101.l,X		; FF 01 01 02
	cop $04.b		; 02 04
	tsb $18.b		; 04 18
	clc		; 18
	cpx #$57E0.w		; E0 E0 57
	sbc $01.b,X		; F5 01
	beq  42.b		; F0 2A
	sbc $F0F87D.l,X		; FF 7D F8 F0
	beq -16.b		; F0 F0
	sbc ($01.b,X)		; E1 01
	cpx #$FF01.w		; E0 01 FF
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	eor $D5.b,X		; 55 D5
	sbc $38E8FF.l,X		; FF FF E8 38
	bvs  96.b		; 70 60
	rts		; 60

	cpx #$E0E0.w		; E0 E0 E0
	ora ($A9.b,X)		; 01 A9
	sbc $8FFFC7.l,X		; FF C7 FF 8F
	sbc $9FFF9F.l,X		; FF 9F FF 9F
	sbc $1FFF1E.l,X		; FF 1E FF 1F
	sbc $2AFE1C.l,X		; FF 1C FE 2A
	lsr A		; 4A
	cmp [$47.b],Y		; D7 47
	bvs   1.b		; 70 01
	bpl  18.b		; 10 12
	sty $0120.w		; 8C 20 01
	stx $1001.w		; 8E 01 10
	.db $82, $82, $1E		; 82 82 1E
	tsb $208C.w		; 0C 8C 20
	tax		; AA
	tax		; AA
	sbc $8787AA.l,X		; FF AA 87 87
	ora $F319.w		; 0D 19 F3
	inc $EC.b		; E6 EC
	sed		; F8
	rti		; 40

	sec		; 38
	php		; 08
	bvs -112.b		; 70 90
	.db $62, $20, $C6		; 62 20 C6
	tsb $1319.w		; 0C 19 13
	ora [$AA.b]		; 07 AA
	tax		; AA
	tax		; AA
	tax		; AA
	sta [$3F.b]		; 87 3F
	sbc ($C1.b,X)		; E1 C1
	cmp $E27A7F.l		; CF 7F 7A E2
	sei		; 78
	cpy #$3E1E.w		; C0 1E 3E
	bmi -128.b		; 30 80
	sta $1D.b		; 85 1D
	clv		; B8
	phy		; 5A
	tax		; AA
	tax		; AA
	tax		; AA
	txs		; 9A
	tax		; AA
	txs		; 9A
	tax		; AA
	tax		; AA
	tax		; AA
	ror $AAA5.w,X		; 7E A5 AA
	sbc $F557.w,X		; FD 57 F5
	lda $A95A.w,X		; BD 5A A9
	inc $97.b,X		; F6 97
	ror A		; 6A
	tax		; AA
	tax		; AA
	txs		; 9A
	tax		; AA
	eor [$77.b],Y		; 57 77
	tax		; AA
	ror A		; 6A
	tax		; AA
	sta $9EAA.w,X		; 9D AA 9E
	nop		; EA
	lda $6EA6.w		; AD A6 6E
	ora ($00.b,X)		; 01 00
	ora ($40.b),Y		; 11 40
	brk $82.b		; 00 82
	ora ($58.b,X)		; 01 58
	eor $57.b,X		; 55 57
	eor $1B.b,X		; 55 1B
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora [$1B.b]		; 07 1B
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $57.b,S		; 03 57
	eor $57.b,X		; 55 57
	eor $0F.b,X		; 55 0F
	tas		; 1B
	and $010301.l		; 2F 01 03 01
	ora [$01.b]		; 07 01
	ora $27.b,S		; 03 27
	tas		; 1B
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $5C.b,S		; 03 5C
	eor $57.b,X		; 55 57
	eor $10.b,X		; 55 10
	tas		; 1B
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora [$1B.b],Y		; 17 1B
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $57.b,S		; 03 57
	eor $57.b,X		; 55 57
	eor $1F.b,X		; 55 1F
	tas		; 1B
	and $010301.l		; 2F 01 03 01
	ora [$01.b]		; 07 01
	ora $37.b,S		; 03 37
	tas		; 1B
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $00.b,S		; 03 00
	cpy #$55DF.w		; C0 DF 55
	dec $CF11.w		; CE 11 CF
	ora ($CB.b),Y		; 11 CB
	ora $01.b,S		; 03 01
	adc $0103.w		; 6D 03 01
	sta ($01.b,X)		; 81 01
	sta $5DD7.w		; 8D D7 5D
	ora $116500.l		; 0F 00 65 11
	sbc #$8901.w		; E9 01 89
	ora $01.b,S		; 03 01
	sta [$03.b]		; 87 03
	ora ($2B.b,X)		; 01 2B
	lda #$A911.w		; A9 11 A9
	ora ($00.b),Y		; 11 00
	cpy #$55DF.w		; C0 DF 55
	dec $DF11.w,X		; DE 11 DF
	ora ($CB.b),Y		; 11 CB
	ora $01.b,S		; 03 01
	adc $0103.w		; 6D 03 01
	sta ($01.b,X)		; 81 01
	sta $5DD7.w		; 8D D7 5D
	ora $117500.l		; 0F 00 75 11
	sbc #$8901.w		; E9 01 89
	ora $01.b,S		; 03 01
	sta [$03.b]		; 87 03
	ora ($2B.b,X)		; 01 2B
	lda $B911.w,Y		; B9 11 B9
	ora ($00.b),Y		; 11 00
	jmp $EC5CD7.l		; 5C D7 5C EC
	asl $4B01.w		; 0E 01 4B
	lda [$0E.b]		; A7 0E
	sbc $01.b,S		; E3 01
	eor $0E.b		; 45 0E
	cpx $0D.b		; E4 0D
	ora ($81.b,X)		; 01 81
	and $000000.l,X		; 3F 00 00 00
	adc $0D.b		; 65 0D
	asl $0E.b		; 06 0E
	ora [$0E.b]		; 07 0E
	brk $5C.b		; 00 5C
	cmp [$5C.b],Y		; D7 5C
	jsr ($010E.w,X)		; FC 0E 01
	phk		; 4B
	lda [$0E.b],Y		; B7 0E
	sbc $01.b,S		; E3 01
	eor $0E.b,X		; 55 0E
	pea $010D.w		; F4 0D 01
	sta ($3F.b,X)		; 81 3F
	brk $00.b		; 00 00
	brk $75.b		; 00 75
	ora $0E16.w		; 0D 16 0E
	ora [$0E.b],Y		; 17 0E
	brk $C0.b		; 00 C0
	and $0EA800.l,X		; 3F 00 A8 0E
	lda #$440E.w		; A9 0E 44
	asl $0E45.w		; 0E 45 0E
	brk $C0.b		; 00 C0
	and $0EB800.l,X		; 3F 00 B8 0E
	lda $540E.w,Y		; B9 0E 54
	asl $0E55.w		; 0E 55 0E
	brk $C0.b		; 00 C0
	and $0EAA00.l,X		; 3F 00 AA 0E
	plb		; AB
	asl $0E44.w		; 0E 44 0E
	eor $0E.b		; 45 0E
	brk $C0.b		; 00 C0
	and $0EBA00.l,X		; 3F 00 BA 0E
	tyx		; BB
	asl $0E54.w		; 0E 54 0E
	eor $0E.b,X		; 55 0E
	brk $C0.b		; 00 C0
	and $0EAC00.l,X		; 3F 00 AC 0E
	lda $440E.w		; AD 0E 44
	asl $0E45.w		; 0E 45 0E
	brk $C0.b		; 00 C0
	and $0EBC00.l,X		; 3F 00 BC 0E
	lda $540E.w,X		; BD 0E 54
	asl $0E55.w		; 0E 55 0E
	brk $C0.b		; 00 C0
	and $0EAE00.l,X		; 3F 00 AE 0E
	lda $0E440E.l		; AF 0E 44 0E
	eor $0E.b		; 45 0E
	brk $C0.b		; 00 C0
	and $0EBE00.l,X		; 3F 00 BE 0E
	lda $0E540E.l,X		; BF 0E 54 0E
	eor $0E.b,X		; 55 0E
	brk $C0.b		; 00 C0
	and $0EC000.l,X		; 3F 00 C0 0E
	cmp ($0E.b,X)		; C1 0E
	mvp $45,$0E		; 44 0E 45
	asl $C000.w		; 0E 00 C0
	and $0ED000.l,X		; 3F 00 D0 0E
	cmp ($0E.b),Y		; D1 0E
	mvn $55,$0E		; 54 0E 55
	asl $C000.w		; 0E 00 C0
	and $0EC200.l,X		; 3F 00 C2 0E
	cmp $0E.b,S		; C3 0E
	mvp $45,$0E		; 44 0E 45
	asl $C000.w		; 0E 00 C0
	and $0ED200.l,X		; 3F 00 D2 0E
	cmp ($0E.b,S),Y		; D3 0E
	mvn $55,$0E		; 54 0E 55
	asl $C000.w		; 0E 00 C0
	and $0EC400.l,X		; 3F 00 C4 0E
	cmp $0E.b		; C5 0E
	mvp $45,$0E		; 44 0E 45
	asl $C000.w		; 0E 00 C0
	and $0ED400.l,X		; 3F 00 D4 0E
	cmp $0E.b,X		; D5 0E
	mvn $55,$0E		; 54 0E 55
	asl $AA00.w		; 0E 00 AA
	ldy #$660A.w		; A0 0A 66
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($11.b),Y		; 11 11
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b),Y		; 11 40
	brk $F9.b		; 00 F9
	ora $57.b,S		; 03 57
	eor $57.b,X		; 55 57
	eor $8D.b,X		; 55 8D
	bra   3.b		; 80 03
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	sta $80.b,X		; 95 80
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $9C.b,X		; 55 9C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $940301.l		; 0F 01 03 94
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $570301.l,X		; 1F 01 03 57
	eor $57.b,X		; 55 57
	eor $7D.b,X		; 55 7D
	bra   3.b		; 80 03
	ora ($FF.b,X)		; 01 FF
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	sta $80.b		; 85 80
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $8C.b,X		; 55 8C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $840301.l		; 0F 01 03 84
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $6D.b,X		; 55 6D
	bra   3.b		; 80 03
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	adc $80.b,X		; 75 80
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $7C.b,X		; 55 7C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $740301.l		; 0F 01 03 74
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $570301.l,X		; 1F 01 03 57
	eor $57.b,X		; 55 57
	eor $5D.b,X		; 55 5D
	bra   3.b		; 80 03
	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	adc $80.b		; 65 80
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $6C.b,X		; 55 6C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $640301.l		; 0F 01 03 64
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	and $570301.l,X		; 3F 01 03 57
	eor $57.b,X		; 55 57
	eor $4D.b,X		; 55 4D
	bra   3.b		; 80 03
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	eor $80.b,X		; 55 80
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $5C.b,X		; 55 5C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $540301.l		; 0F 01 03 54
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $570301.l,X		; 1F 01 03 57
	eor $57.b,X		; 55 57
	eor $3D.b,X		; 55 3D
	bra   3.b		; 80 03
	ora ($7F.b,X)		; 01 7F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	eor $80.b		; 45 80
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $4C.b,X		; 55 4C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $440301.l		; 0F 01 03 44
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	adc $570301.l,X		; 7F 01 03 57
	eor $57.b,X		; 55 57
	eor $2D.b,X		; 55 2D
	bra   3.b		; 80 03
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	and $80.b,X		; 35 80
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $3C.b,X		; 55 3C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $340301.l		; 0F 01 03 34
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $570301.l,X		; 1F 01 03 57
	eor $57.b,X		; 55 57
	eor $1D.b,X		; 55 1D
	bra   3.b		; 80 03
	ora ($3F.b,X)		; 01 3F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	and $80.b		; 25 80
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $2C.b,X		; 55 2C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	ora $240301.l		; 0F 01 03 24
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	and $570301.l,X		; 3F 01 03 57
	ora ($03.b,X)		; 01 03
	eor $14.b,X		; 55 14
	bra   1.b		; 80 01
	ora $01.b,S		; 03 01
	ora $018018.l		; 0F 18 80 01
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora ($03.b,X)		; 01 03
	eor $1C.b,X		; 55 1C
	cpy #$0107.w		; C0 07 01
	ora $01.b,S		; 03 01
	clc		; 18
	cpy #$010F.w		; C0 0F 01
	ora $01.b,S		; 03 01
	eor [$00.b],Y		; 57 00
	ora $54.b,S		; 03 54
	ora $0380.w		; 0D 80 03
	ora ($1F.b,X)		; 01 1F
	bpl -128.b		; 10 80
	ora ($03.b,X)		; 01 03
	ora ($57.b,X)		; 01 57
	brk $03.b		; 00 03
	mvn $C0,$13		; 54 13 C0
	ora ($03.b,X)		; 01 03
	ora ($10.b,X)		; 01 10
	cpy #$011F.w		; C0 1F 01
	ora $57.b,S		; 03 57
	brk $03.b		; 00 03
	mvn $80,$06		; 54 06 80
	ora ($0F.b,X)		; 01 0F
	ora ($09.b,X)		; 01 09
	bra   3.b		; 80 03
	ora ($07.b,X)		; 01 07
	eor [$00.b],Y		; 57 00
	ora $54.b,S		; 03 54
	tsb $07C0.w		; 0C C0 07
	ora ($03.b,X)		; 01 03
	ora #$01C0.w		; 09 C0 01
	ora $000301.l		; 0F 01 03 00
	ora $00.b,S		; 03 00
	ora $80.b		; 05 80
	ora $80.b		; 05 80
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $C0.b		; 05 C0
	ora $C0.b		; 05 C0
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	tsb $80.b		; 04 80
	tsb $80.b		; 04 80
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	tsb $C0.b		; 04 C0
	tsb $C0.b		; 04 C0
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $80.b,S		; 03 80
	ora $80.b,S		; 03 80
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $C0.b,S		; 03 C0
	ora $C0.b,S		; 03 C0
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $80.b		; 02 80
	cop $80.b		; 02 80
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $C0.b		; 02 C0
	cop $C0.b		; 02 C0
	phd		; 0B
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	cpy #$0140.w		; C0 40 01
	bra   3.b		; 80 03
	brk $03.b		; 00 03
	bra   1.b		; 80 01
	cpy #$C001.w		; C0 01 C0
	bra  11.b		; 80 0B
	brk $01.b		; 00 01
	brk $01.b		; 00 01
	bra -128.b		; 80 80
	ora ($03.b,X)		; 01 03
	brk $03.b		; 00 03
	brk $01.b		; 00 01
	rti		; 40

	ora ($40.b,X)		; 01 40
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	cop $02.b		; 02 02
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	cop $40.b		; 02 40
	cop $40.b		; 02 40
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $03.b,S		; 03 03
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $40.b,S		; 03 40
	ora $40.b,S		; 03 40
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	tsb $04.b		; 04 04
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	tsb $40.b		; 04 40
	tsb $40.b		; 04 40
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	ora $05.b		; 05 05
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora $40.b		; 05 40
	ora $40.b		; 05 40
	eor $00.b,X		; 55 00
	ora ($54.b,X)		; 01 54
	asl $01.b		; 06 01
	ora $030901.l		; 0F 01 09 03
	ora ($07.b,X)		; 01 07
	eor [$00.b],Y		; 57 00
	ora $54.b,S		; 03 54
	tsb $0740.w		; 0C 40 07
	ora ($03.b,X)		; 01 03
	ora #$0140.w		; 09 40 01
	ora $005501.l		; 0F 01 55 00
	ora ($54.b,X)		; 01 54
	ora $0103.w		; 0D 03 01
	ora $030110.l,X		; 1F 10 01 03
	ora ($57.b,X)		; 01 57
	brk $03.b		; 00 03
	mvn $40,$13		; 54 13 40
	ora ($03.b,X)		; 01 03
	ora ($10.b,X)		; 01 10
	rti		; 40

	ora $550301.l,X		; 1F 01 03 55
	ora ($01.b,X)		; 01 01
	eor $14.b,X		; 55 14
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	clc		; 18
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	eor [$01.b],Y		; 57 01
	ora $55.b,S		; 03 55
	trb $0740.w		; 1C 40 07
	ora ($03.b,X)		; 01 03
	ora ($18.b,X)		; 01 18
	rti		; 40

	ora $010301.l		; 0F 01 03 01
	eor $55.b,X		; 55 55
	eor $55.b,X		; 55 55
	ora $1F1E.w,X		; 1D 1E 1F
	jsr $2221.w		; 20 21 22
	and $24.b,S		; 23 24
	and $26.b		; 25 26
	and [$28.b]		; 27 28
	and #$2B2A.w		; 29 2A 2B
	bit $5557.w		; 2C 57 55
	eor [$55.b],Y		; 57 55
	bit $0740.w		; 2C 40 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	bit $40.b		; 24 40
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $550301.l,X		; 3F 01 03 55
	eor $55.b,X		; 55 55
	eor $2D.b,X		; 55 2D
	rol $302F.w		; 2E 2F 30
	and ($32.b),Y		; 31 32
	and ($34.b,S),Y		; 33 34
	and $36.b,X		; 35 36
	and [$38.b],Y		; 37 38
	and $3B3A.w,Y		; 39 3A 3B
	bit $5557.w,X		; 3C 57 55
	eor [$55.b],Y		; 57 55
	bit $0740.w,X		; 3C 40 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	bit $40.b,X		; 34 40
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $550301.l,X		; 1F 01 03 55
	eor $55.b,X		; 55 55
	eor $3D.b,X		; 55 3D
	rol $403F.w,X		; 3E 3F 40
	eor ($42.b,X)		; 41 42
	eor $44.b,S		; 43 44
	eor $46.b		; 45 46
	eor [$48.b]		; 47 48
	eor #$4B4A.w		; 49 4A 4B
	jmp $5557.w		; 4C 57 55
	eor [$55.b],Y		; 57 55
	jmp $0740.w		; 4C 40 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	mvp $07,$40		; 44 40 07
	ora ($03.b,X)		; 01 03
	ora ($7F.b,X)		; 01 7F
	ora ($03.b,X)		; 01 03
	eor $55.b,X		; 55 55
	eor $55.b,X		; 55 55
	eor $4F4E.w		; 4D 4E 4F
	bvc  81.b		; 50 51
	eor ($53.b)		; 52 53
	mvn $56,$55		; 54 55 56
	eor [$58.b],Y		; 57 58
	eor $5B5A.w,Y		; 59 5A 5B
	jmp $575557.l		; 5C 57 55 57
	eor $5C.b,X		; 55 5C
	rti		; 40

	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $540301.l		; 0F 01 03 54
	rti		; 40

	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $550301.l,X		; 1F 01 03 55
	eor $55.b,X		; 55 55
	eor $5D.b,X		; 55 5D
	lsr $605F.w,X		; 5E 5F 60
	adc ($62.b,X)		; 61 62
	adc $64.b,S		; 63 64
	adc $66.b		; 65 66
	adc [$68.b]		; 67 68
	adc #$6B6A.w		; 69 6A 6B
	jmp ($5557.w)		; 6C 57 55
	eor [$55.b],Y		; 57 55
	jmp ($0740.w)		; 6C 40 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	stz $40.b		; 64 40
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $550301.l,X		; 3F 01 03 55
	eor $55.b,X		; 55 55
	eor $6D.b,X		; 55 6D
	ror $706F.w		; 6E 6F 70
	adc ($72.b),Y		; 71 72
	adc ($74.b,S),Y		; 73 74
	adc $76.b,X		; 75 76
	adc [$78.b],Y		; 77 78
	adc $7B7A.w,Y		; 79 7A 7B
	jmp ($5557.w,X)		; 7C 57 55
	eor [$55.b],Y		; 57 55
	jmp ($0740.w,X)		; 7C 40 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	stz $40.b,X		; 74 40
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $550301.l,X		; 1F 01 03 55
	eor $55.b,X		; 55 55
	eor $7D.b,X		; 55 7D
	ror $807F.w,X		; 7E 7F 80
	sta ($82.b,X)		; 81 82
	sta $84.b,S		; 83 84
	sta $86.b		; 85 86
	sta [$88.b]		; 87 88
	bit #$8B8A.w		; 89 8A 8B
	sty $5557.w		; 8C 57 55
	eor [$55.b],Y		; 57 55
	sty $0740.w		; 8C 40 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	sty $40.b		; 84 40
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $550301.l,X		; FF 01 03 55
	eor $55.b,X		; 55 55
	eor $8D.b,X		; 55 8D
	stx $908F.w		; 8E 8F 90
	sta ($92.b),Y		; 91 92
	sta ($94.b,S),Y		; 93 94
	sta $96.b,X		; 95 96
	sta [$98.b],Y		; 97 98
	sta $9B9A.w,Y		; 99 9A 9B
	stz $5557.w		; 9C 57 55
	eor [$55.b],Y		; 57 55
	stz $0740.w		; 9C 40 07
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	sty $40.b,X		; 94 40
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $AA0301.l,X		; 1F 01 03 AA
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
	sta $9999.w,Y		; 99 99 99
	sta $0000.w,Y		; 99 00 00
	brk $9B.b		; 00 9B
	.db $62, $BB, $66		; 62 BB 66
	jsr ($1C6A.w,X)		; FC 6A 1C
	adc $7D735D.l		; 6F 5D 73 7D
	adc [$BE.b],Y		; 77 BE
	tda		; 7B
	sbc $7C007F.l,X		; FF 7F 00 7C
	ora $1F7C.w		; 0D 7C 1F
	jmp ($341F.w,X)		; 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $4B0000.l,X		; 7F 00 00 4B
	brk $9F.b		; 00 9F
	phy		; 5A
	sbc $4F7F52.l,X		; FF 52 7F 4F
	sbc $4FFD4B.l,X		; FF 4B FD 4F
	xce		; FB
	eor ($FA.b,S),Y		; 53 FA
	eor [$B8.b],Y		; 57 B8
	adc $77.b,S		; 63 77
	adc $177F56.l		; 6F 56 7F 17
	adc [$F9.b],Y		; 77 F9
	ror $66DB.w		; 6E DB 66
	lda $005E.w,X		; BD 5E 00
	brk $88.b		; 00 88
	brk $84.b		; 00 84
	bpl   0.b		; 10 00
	brk $16.b		; 00 16
	ora ($3F.b,X)		; 01 3F
	cop $FF.b		; 02 FF
	ora ($1F.b,S),Y		; 13 1F
	bpl  31.b		; 10 1F
	jsr $209F.w		; 20 9F 20
	ora $45BF35.l,X		; 1F 35 BF 45
	and $6ADF5A.l,X		; 3F 5A DF 6A
	eor $7FFF6B.l,X		; 5F 6B FF 7F
	brk $00.b		; 00 00
	eor $09.b,S		; 43 09
	lda $F07E.w		; AD 7E F0
	ror $7F34.w,X		; 7E 34 7F
	adc [$7F.b],Y		; 77 7F
	tyx		; BB
	adc $FC7FFF.l,X		; 7F FF 7F FC
	rtl		; 6B

	plx		; FA
	tad		; 5B
	sbc [$47.b],Y		; F7 47
	sbc $37.b,X		; F5 37
	sbc ($27.b,S),Y		; F3 27
	ora $1E00.w,X		; 1D 00 1E
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $70.b		; 00 70
	brk $5F.b		; 00 5F
	phy		; 5A
	sta $66FF5E.l,X		; 9F 5E FF 66
	and $779F6F.l,X		; 3F 6F 9F 77
	sbc $6F9F7F.l,X		; FF 7F 9F 6F
	eor $4EFF5F.l,X		; 5F 5F FF 4E
	lda $2E7F3E.l,X		; BF 3E 7F 2E
	ora $9E63.w,X		; 1D 63 9E
	adc ($FF.b,S),Y		; 73 FF
	adc $000000.l,X		; 7F 00 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1F.b		; 00 1F
	jsr $209F.w		; 20 9F 20
	lda $690445.l,X		; BF 45 04 69
	tay		; A8
	adc #$7E31.w		; 69 31 7E
	dec $7E.b,X		; D6 7E
	phy		; 5A
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $C6.b		; 00 C6
	trb $7AD9.w		; 1C D9 7A
	tsa		; 3B
	tda		; 7B
	sta $FF7B.w,X		; 9D 7B FF
	adc $7E6BBE.l,X		; 7F BE 6B 7E
	tad		; 5B
	lsr $F24B.w,X		; 5E 4B F2
	eor $2E15.w,X		; 5D 15 2E
	sta ($19.b),Y		; 91 19
	adc $7B9F77.l,X		; 7F 77 9F 7B
	lda $7FFF7B.l,X		; BF 7B FF 7F
	brk $00.b		; 00 00
	txy		; 9B
	.db $62, $BB, $66		; 62 BB 66
	jsr ($1C6A.w,X)		; FC 6A 1C
	adc $7D735D.l		; 6F 5D 73 7D
	adc [$BE.b],Y		; 77 BE
	tda		; 7B
	sbc $7C007F.l,X		; FF 7F 00 7C
	ora $1F7C.w		; 0D 7C 1F
	jmp ($341F.w,X)		; 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $010011.l,X		; 7F 11 00 01
	jsr ($0012.w,X)		; FC 12 00
	eor $01.b,X		; 55 01
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $555555.l,X		; FF 55 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	tsb $FF.b		; 04 FF
	ora $55.b,S		; 03 55
	ora ($55.b,X)		; 01 55
	eor $FE.b,X		; 55 FE
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFD.w,X		; FD FD FF
	sbc $FEFE54.l,X		; FF 54 FE FE
	jsr ($F153.w,X)		; FC 53 F1
	ora $40.b,S		; 03 40
	sbc $FF55FF.l,X		; FF FF 55 FF
	eor $54.b,X		; 55 54
	eor [$FD.b],Y		; 57 FD
	sbc $FFFF.w,X		; FD FF FF
	ora ($53.b,X)		; 01 53
	sbc ($03.b),Y		; F1 03
	rti		; 40

	sbc $FF55FF.l,X		; FF FF 55 FF
	eor $55.b,X		; 55 55
	eor $EF.b,X		; 55 EF
	and $80FFFF.l		; 2F FF FF 80
	eor ($FF.b,S),Y		; 53 FF
	ora $55.b,S		; 03 55
	jsr ($56FC.w,X)		; FC FC 56
	jsr ($0155.w,X)		; FC 55 01
	ora $03.b,S		; 03 03
	eor $55.b,X		; 55 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora $55.b,S		; 03 55
	cop $00.b		; 02 00
	sbc $FF55FF.l,X		; FF FF 55 FF
	sbc $73FFFF.l,X		; FF FF FF 73
	cmp $13.b,X		; D5 13
	rti		; 40

	sbc $0404FC.l,X		; FF FC 04 04
	ora ($57.b,X)		; 01 57
	sbc $F5F8.w,X		; FD F8 F5
	ora $03.b		; 05 03
	sbc $770504.l,X		; FF 04 05 77
	cmp $13.b		; C5 13
	rti		; 40

	sbc $0201.w,X		; FD 01 02
	ora ($01.b,X)		; 01 01
	mvn $55,$FF		; 54 FF 55
	eor $55.b,X		; 55 55
	inc $01FF.w,X		; FE FF 01
	eor $7F.b,X		; 55 7F
	sbc [$17.b],Y		; F7 17
	eor ($EF.b),Y		; 51 EF
	cpx #$1814.w		; E0 14 18
	tsb $04.b		; 04 04
	ora ($AB.b,X)		; 01 AB
	bra 121.b		; 80 79
	bit $7944.w,X		; 3C 44 79
	eor ($1F.b,X)		; 41 1F
	sbc $800418.l,X		; FF 18 04 80
	mvp $51,$41		; 44 41 51
	cmp $03.b		; C5 03
	rti		; 40

	inc $5501.w,X		; FE 01 55
	sbc $555555.l,X		; FF 55 55 55
	sbc $0255FF.l,X		; FF FF 55 02
	sbc $FF0002.l,X		; FF 02 00 FF
	eor $55.b,X		; 55 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $4FFFFF.l,X		; FF FF FF 4F
	sbc $0A0007.l,X		; FF 07 00 0A
	plx		; FA
	ora $05.b		; 05 05
	ora $4F.b,X		; 15 4F
	rti		; 40

	sbc $E0.b,X		; F5 E0
	cpx #$EAE0.w		; E0 E0 EA
	nop		; EA
	ora $FF.b		; 05 FF
	ora $4F.b		; 05 4F
	cmp $07.b		; C5 07
	brk $AA.b		; 00 AA
	tax		; AA
	eor $55.b,X		; 55 55
	eor $FF.b,X		; 55 FF
	eor $AA.b,X		; 55 AA
	tax		; AA
	eor $FF.b,X		; 55 FF
	eor $5F.b,X		; 55 5F
	cmp $07.b		; C5 07
	brk $B2.b		; 00 B2
	tsx		; BA
	eor $3845.w,X		; 5D 45 38
	adc $55FF.w,X		; 7D FF 55
	tax		; AA
	tax		; AA
	eor $FF.b		; 45 FF
	eor $F1.b		; 45 F1
	sbc $FF5552.l,X		; FF 52 55 FF
	cpy #$B040.w		; C0 40 B0
	bne -51.b		; D0 CD
	pei ($EA.b)		; D4 EA
	sbc $5D5C.w		; ED 5C 5D
	stx $FF0E.w		; 8E 0E FF
	bra -32.b		; 80 E0
	cld		; D8
	inc $0E5D.w		; EE 5D 0E
	ora ($F5.b,X)		; 01 F5
	cop $50.b		; 02 50
	sbc $7FFF55.l,X		; FF 55 FF 7F
	rti		; 40

	lda $80FFD0.l		; AF D0 FF 80
	cpx #$F501.w		; E0 01 F5
	cop $40.b		; 02 40
	sbc $FEFF55.l,X		; FF 55 FF FE
	ora ($FE.b,X)		; 01 FE
	ora ($FF.b,X)		; 01 FF
	ora ($FF.b,X)		; 01 FF
	eor [$17.b],Y		; 57 17
	tsb $DB.b		; 04 DB
	clc		; 18
	and $26.b		; 25 26
	eor ($01.b,X)		; 41 01
	rti		; 40

	rti		; 40

	rti		; 40

	bra -32.b		; 80 E0
	stz $2E.b,X		; 74 2E
	bit $03FF.w,X		; 3C FF 03
	rti		; 40

	bra -15.b		; 80 F1
	eor [$52.b],Y		; 57 52
	ora ($FF.b,X)		; 01 FF
	rti		; 40

	bra  80.b		; 80 50
	rts		; 60

	ora $0710.w,X		; 1D 10 07
	ora [$07.b]		; 07 07
	sbc $0830C0.l,X		; FF C0 30 08
	ora $55.b,S		; 03 55
	ora $00.b,S		; 03 00
	sbc $FF55FF.l,X		; FF FF 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $D5.b,S		; 03 D5
	ora $C0.b,S		; 03 C0
	sbc $FF55FF.l,X		; FF FF 55 FF
	sbc $FF03FD.l,X		; FF FD 03 FF
	sbc $030302.l,X		; FF 02 03 03
	sbc $7E03.w,X		; FD 03 7E
	sbc $E557FF.l,X		; FF FF 57 E5
	ora $3F7027.l		; 0F 27 70 3F
	bra  -1.b		; 80 FF
	sbc $1C0803.l,X		; FF 03 08 1C
	pha		; 48
	cpx #$D340.w		; E0 40 D3
	eor [$E3.b],Y		; 57 E3
	ora [$FF.b]		; 07 FF
	sbc $0F3101.l,X		; FF 01 31 0F
	adc $F0.b		; 65 F0
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3E0C01.l,X		; FF 01 0C 3E
	sty $80C0.w		; 8C C0 80
	sbc ($55.b,S),Y		; F3 55
	adc ($00.b,S),Y		; 73 00
	sbc $3FC0FF.l,X		; FF FF C0 3F
	cpy #$55C0.w		; C0 C0 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $38FF38.l,X		; FF 38 FF 38
	eor $0007FF.l,X		; 5F FF 07 00
	lda $E2FD.w,X		; BD FD E2
	cop $74.b		; 02 74
	rol $4047.w		; 2E 47 40
.ACCU 8
	sep #$E0		; E2 E0
	stz $74.b,X		; 74 74
	rol $022E.w		; 2E 2E 02
	sbc $5FFF02.l,X		; FF 02 FF 5F
	eor [$05.b],Y		; 57 05
	rti		; 40

	mvp $E5,$E0		; 44 E0 E5
	stz $75.b,X		; 74 75
	rol $472E.w		; 2E 2E 47
	ora [$E2.b]		; 07 E2
	cop $74.b		; 02 74
	rol $FFB8.w		; 2E B8 FF
	inc $75.b		; E6 75
	rol $0207.w		; 2E 07 02
	sbc $16FFFF.l,X		; FF FF FF 16
	inc $4203.w,X		; FE 03 42
	rti		; 40

	rts		; 60

	bit $26.b		; 24 26
	ply		; 7A
	eor [$1F.b]		; 47 1F
	sep #$02		; E2 02
	adc [$02.b],Y		; 77 02
	bit $7E03.w		; 2C 03 7E
	sta ($C2.b,X)		; 81 C2
.ACCU 16
	rep #$E0		; C2 E0
	cpx #$5454.w		; E0 54 54
	php		; 08
	tsb $7F07.w		; 0C 07 7F
	sbc $BD1517.l,X		; FF 17 15 BD
	sbc $02E2.w,X		; FD E2 02
	stz $80.b,X		; 74 80
	rol $48C7.w		; 2E C7 48
	adc ($78.b)		; 72 78
	sty $C4.b		; 84 C4
	inc $020E.w		; EE 0E 02
	sbc $088002.l,X		; FF 02 80 08
	clc		; 18
	bvs  87.b		; 70 57
	sbc $B8FF03.l,X		; FF 03 FF B8
	sed		; F8
	cpx #$2870.w		; E0 70 28
	eor ($45.b,X)		; 41 45
	sbc $E3.b,S		; E3 E3
	adc ($73.b,S),Y		; 73 73
	pld		; 2B
	pld		; 2B
	sed		; F8
	sbc $030101.l,X		; FF 01 01 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora $02.b,S		; 03 02
	sbc $FF0003.l,X		; FF 03 00 FF
	eor $55.b,X		; 55 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $C1FD.w,X		; DD FD C1
	beq  -1.b		; F0 FF
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($55.b,X)		; 01 55
	lda $409E41.l,X		; BF 41 9E 40
	dec $FF19.w		; CE 19 FF
	ora ($01.b,X)		; 01 01
	jsr $3120.w		; 20 20 31
	bmi   1.b		; 30 01
	sbc $F001.w,X		; FD 01 F0
	sbc $04FB55.l,X		; FF 55 FB 04
	sbc ($04.b,S),Y		; F3 04
	sbc [$30.b]		; E7 30
	sbc $180808.l,X		; FF 08 08 18
	clc		; 18
	.db $82, $FF, $83		; 82 FF 83
	sbc $5501FF.l,X		; FF FF 01 55
	eor ($FF.b,S),Y		; 53 FF
	sbc [$BF.b]		; E7 BF
	sta $FF7FBF.l,X		; 9F BF 7F FF
	sbc $0C0503.l,X		; FF 03 05 0C
	ora $601F10.l		; 0F 10 1F 60
	lda $FF2B80.l,X		; BF 80 2B FF
	eor $F00855.l,X		; 5F 55 08 F0
	cpx #$5580.w		; E0 80 55
	eor $AA.b,X		; 55 AA
	tax		; AA
	eor $55.b,X		; 55 55
	plb		; AB
	tax		; AA
	sbc [$F0.b],Y		; F7 F0
	sbc $FFFFC0.l,X		; FF C0 FF FF
	tax		; AA
	eor $AA.b,X		; 55 AA
	mvn $FF,$00		; 54 00 FF
	ora ($D5.b,X)		; 01 D5
	eor $55.b,X		; 55 55
	sbc $F9F6FF.l,X		; FF FF F6 F9
	ror $86.b,X		; 76 86
	sbc $F6FF55.l,X		; FF 55 FF F6
	jmp $FF003F.l		; 5C 3F 00 FF
	ora ($FF.b,X)		; 01 FF
	eor $54.b,X		; 55 54
	sbc $D8E3.w		; ED E3 D8
	php		; 08
	cpx #$FFC0.w		; E0 C0 FF
	eor ($03.b,S),Y		; 53 03
	jsr ($B00C.w,X)		; FC 0C B0
	bvc  96.b		; 50 60
	ldy #$7F00.w		; A0 00 7F
	ora ($FF.b,X)		; 01 FF
	lda $35.b,X		; B5 35
	sta $352FFF.l,X		; 9F FF 2F 35
	ora [$FF.b]		; 07 FF
	cmp $C0.b,X		; D5 C0
	and [$30.b]		; 27 30
	phd		; 0B
	asl A		; 0A
	ora $07.b		; 05 07
	eor $FF02FF.l,X		; 5F FF 02 FF
	lda $E202.w,X		; BD 02 E2
	cop $74.b		; 02 74
	rol $4047.w		; 2E 47 40
.ACCU 8
	sep #$E0		; E2 E0
	stz $74.b,X		; 74 74
	rol $FF2E.w		; 2E 2E FF
	rti		; 40

	rti		; 40

	cpx #$74E0.w		; E0 E0 74
	stz $2E.b,X		; 74 2E
	rol $5FFF.w		; 2E FF 5F
	cop $00.b		; 02 00
	.db $42, $BF		; 42 BF
.ACCU 8
	sep #$E0		; E2 E0
	stz $74.b,X		; 74 74
	rol $472E.w		; 2E 2E 47
	ora [$E2.b]		; 07 E2
	cop $74.b		; 02 74
	rol $FFFF.w		; 2E FF FF
	eor $453FFF.l,X		; 5F FF 3F 45
	eor ($E4.b,S),Y		; 53 E4
	sbc ($77.b,S),Y		; F3 77
	stz $28.b,X		; 74 28
	rol $074B.w		; 2E 4B 07
	plx		; FA
	cop $64.b		; 02 64
	rol $BF4F.w		; 2E 4F BF
	cpx $74E0.w		; EC E0 74
	stz $29.b,X		; 74 29
	rol $0F0B.w		; 2E 0B 0F
	inc A		; 1A
	inc A		; 1A
	bpl  16.b		; 10 10
	sbc $FF57FF.l,X		; FF FF 57 FF
	cmp $46E0.w,Y		; D9 E0 46
	jsr $60B4.w		; 20 B4 60
	ldx $4FB0.w		; AE B0 4F
	bvc -18.b		; 50 EE
	rts		; 60

	bvs -12.b		; 70 F4
	rol $FE2E.w		; 2E 2E FE
	sbc $60101E.l,X		; FF 1E 10 60
	cli		; 58
	rti		; 40

	jmp ($F260.w)		; 6C 60 F2
	stz $2C.b,X		; 74 2C
	rol $FF57.w		; 2E 57 FF
	ora $57.b,S		; 03 57
	lda $74E003.l,X		; BF 03 E0 74
	bit $4245.w		; 2C 45 42
	sbc ($E0.b,X)		; E1 E0
	adc $74.b,X		; 75 74
	and $FF2C.w		; 2D 2C FF
	jsr ($0242.w,X)		; FC 42 02
	cpx #$2C74.w		; E0 74 2C
	ora ($55.b,X)		; 01 55
	ora $00.b,S		; 03 00
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $02F7DF.l,X		; FF DF F7 02
	asl $07.b		; 06 07
	tsb $0307.w		; 0C 07 03
	ora [$5A.b]		; 07 5A
	lsr $0A.b,X		; 56 0A
	inc $F3.b,X		; F6 F3
.ACCU 8
.INDEX 8
	sep #$F4		; E2 F4
	sbc $FFF4.w		; ED F4 FF
	ora #$02.b		; 09 02
	asl $3406.w		; 0E 06 34
	sec		; 38
	stz $38.b		; 64 38
	inc $EE.b,X		; F6 EE
	asl $18F6.w		; 0E F6 18
	sbc $F7DFFF.l,X		; FF FF DF F7
	bra -48.b		; 80 D0
	cpy #$70.b		; C0 70
	cpy #$80.b		; C0 80
	cpy #$B4.b		; C0 B4
	cmp $A1.b,X		; D5 A1
	cmp $7F8F9F.l,X		; DF 9F 8F 7F
	adc $20FF6F.l		; 6F 6F FF 20
	bra -32.b		; 80 E0
	cpy #$58.b		; C0 58
	sec		; 38
	eor $DF38.w		; 4D 38 DF
	cmp $30FFE0.l		; CF E0 FF 30
	ora ($F5.b,X)		; 01 F5
	ora $F0.b,S		; 03 F0
	sbc $FFFF55.l,X		; FF 55 FF FF
	ora ($FF.b,X)		; 01 FF
	cop $FF.b		; 02 FF
	sbc $020101.l,X		; FF 01 01 02
	cop $FF.b		; 02 FF
	sbc $FDD6B7.l,X		; FF B7 D6 FD
	inc $F8FC.w,X		; FE FC F8
	inx		; E8
	beq -64.b		; F0 C0
	cpx #$95.b		; E0 95
	cmp $2A.b,X		; D5 2A
	tax		; AA
	eor $54.b,X		; 55 54
	lda $0202AD.l		; AF AD 02 02
	tsb $08.b		; 04 08
	bpl  32.b		; 10 20
	rti		; 40

	bra   1.b		; 80 01
	asl $04.b		; 06 04
	sbc ($7F.b,S),Y		; F3 7F
	beq  47.b		; F0 2F
	sbc $0502FF.l,X		; FF FF 02 05
	asl A		; 0A
	ora ($7D.b)		; 12 7D
	php		; 08
	cmp $80FF60.l,X		; DF 60 FF 80
	sbc $0C0103.l,X		; FF 03 01 0C
	asl $30.b		; 06 30
	clc		; 18
	cpy #$60.b		; C0 60
	bra  63.b		; 80 3F
	eor $3F.b,X		; 55 3F
	brk $F7.b		; 00 F7
	inx		; E8
	pha		; 48
	tay		; A8
	rti		; 40

	rti		; 40

	eor $FF.b,X		; 55 FF
	sbc $070FFF.l,X		; FF FF 0F 07
	bvs  56.b		; 70 38
	bra -64.b		; 80 C0
	sta $BB5D.w,Y		; 99 5D BB
	tsa		; 3B
	sbc $020101.l,X		; FF 01 01 02
	lsr $FC.b,X		; 56 FC
	tsb $FC.b		; 04 FC
	sed		; F8
	sbc $0101FF.l,X		; FF FF 01 01
	ora ($02.b,X)		; 01 02
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	tsb $02.b		; 04 02
	brk $02.b		; 00 02
	brk $FF.b		; 00 FF
	sbc $0F0007.l,X		; FF 07 00 0F
	brk $01.b		; 00 01
	sbc $FE0101.l,X		; FF 01 01 FE
	ora ($01.b,X)		; 01 01
	eor $5503FF.l,X		; 5F FF 03 55
	lda $E202.w,X		; BD 02 E2
	cop $74.b		; 02 74
	rol $4047.w		; 2E 47 40
.ACCU 8
	sep #$E0		; E2 E0
	pea $FEF4.w		; F4 F4 FE
	inc $FFFF.w,X		; FE FF FF
	rti		; 40

	cpx #$F4.b		; E0 F4
	inc $5FFF.w,X		; FE FF 5F
	ora $00.b,S		; 03 00
	.db $42, $BF		; 42 BF
.ACCU 8
	sep #$E0		; E2 E0
	stz $74.b,X		; 74 74
	rol $472E.w		; 2E 2E 47
	ora [$E2.b]		; 07 E2
	cop $74.b		; 02 74
	rol $FFFF.w		; 2E FF FF
	eor $0307FF.l,X		; 5F FF 07 03
	ldy $E2FD.w,X		; BC FD E2
	cop $74.b		; 02 74
	rol $4146.w		; 2E 46 41
.ACCU 8
	sep #$E0		; E2 E0
	stz $74.b,X		; 74 74
	rol $032E.w		; 2E 2E 03
	inc $0102.w,X		; FE 02 01
	ora ($03.b,X)		; 01 03
	eor $00.b,X		; 55 00
	brk $FF.b		; 00 FF
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $D7D7BF.l,X		; FF BF D7 D7
	rti		; 40

	dec $60FF.w,X		; DE FF 60
	eor ($40.b,X)		; 41 40
	rti		; 40

	ora ($55.b,X)		; 01 55
	ora ($FF.b,X)		; 01 FF
	inc $01FF.w,X		; FE FF 01
	jsr $6001.w		; 20 01 60
	rti		; 40

	ora ($01.b,X)		; 01 01
	ora ($5F.b,X)		; 01 5F
	eor $5E.b,X		; 55 5E
	brk $F7.b		; 00 F7
	sbc [$0C.b],Y		; F7 0C
	php		; 08
	asl $02.b		; 06 02
	eor $FF.b,X		; 55 FF
	sbc $0408FF.l,X		; FF FF 08 04
	php		; 08
	asl $02.b		; 06 02
	brk $D5.b		; 00 D5
	ora ($FF.b,X)		; 01 FF
	eor $FF.b,X		; 55 FF
	sbc $5401FF.l,X		; FF FF 01 54
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	plb		; AB
	tax		; AA
	tax		; AA
	sbc $07FFBF.l,X		; FF BF FF 07
	php		; 08
	bpl  32.b		; 10 20
	ora $54.b,X		; 15 54
	and $7B7FBD.l,X		; 3F BD 7F 7B
	sbc $F8F8F7.l,X		; FF F7 F8 F8
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $4122.w		; 20 22 41
	eor [$82.b]		; 47 82
	sta $081F04.l		; 8F 04 1F 08
	ror $5D55.w,X		; 7E 55 5D
	sbc $E0F0F0.l,X		; FF F0 F0 E0
	cpx #$80.b		; E0 80
	bra  85.b		; 80 55
	sbc $A5FFFF.l,X		; FF FF FF A5
	bmi  32.b		; 30 20
	rts		; 60

	bra  85.b		; 80 55
	eor $AA.b,X		; 55 AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	and $F50FFF.l		; 2F FF 0F F5
	php		; 08
	ora $080808.l		; 0F 08 08 08
	cli		; 58
	cli		; 58
	sed		; F8
	beq  -8.b		; F0 F8
	sed		; F8
	beq -16.b		; F0 F0
	sed		; F8
	sbc [$08.b],Y		; F7 08
	php		; 08
	bvc -16.b		; 50 F0
	sed		; F8
	php		; 08
	sed		; F8
	php		; 08
	ora $000155.l		; 0F 55 01 00
	sbc $0202.w,X		; FD 02 02
	cop $55.b		; 02 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00015F.l,X		; FF 5F 01 00
	.db $42, $BF		; 42 BF
.ACCU 8
	sep #$E0		; E2 E0
	stz $74.b,X		; 74 74
	rol $472E.w		; 2E 2E 47
	ora [$E2.b]		; 07 E2
	cop $F4.b		; 02 F4
	inc $FFFF.w,X		; FE FF FF
	eor $BEFE7F.l		; 4F 7F FE BE
	ora $E6.b,S		; 03 E6
	tsb $1078.w		; 0C 78 10
	jsr $4020.w		; 20 20 40
	rti		; 40

	cpy #$80.b		; C0 80
	bra  -2.b		; 80 FE
	sbc $0A06.w,X		; FD 06 0A
	clc		; 18
	php		; 08
	jsr $C040.w		; 20 40 C0
	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	eor [$00.b],Y		; 57 00
	sbc $FF4200.l		; EF 00 42 FF
	.db $42, $18		; 42 18
	clc		; 18
	ror $66BD.w,X		; 7E BD 66
	.db $42, $18		; 42 18
	clc		; 18
	clc		; 18
	eor [$55.b],Y		; 57 55
	adc $FF7FEE.l,X		; 7F EE 7F FF
	rts		; 60

	trb $0302.w		; 1C 02 03
	cop $01.b		; 02 01
	ora ($7F.b,X)		; 01 7F
	lda $185060.l,X		; BF 60 50 18
	bpl   4.b		; 10 04
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($57.b,X)		; 01 57
	ora ($00.b,X)		; 01 00
	sbc $7F80D5.l,X		; FF D5 80 7F
	adc $57FF7F.l,X		; 7F 7F FF 57
	mvn $EE,$7F		; 54 7F EE
	inc $06FF.w,X		; FE FF 06
	clc		; 18
	jsr $80C0.w		; 20 C0 80
	bra  -2.b		; 80 FE
	sbc $0A06.w,X		; FD 06 0A
	clc		; 18
	php		; 08
	jsr $4040.w		; 20 40 40
	rti		; 40

	bra -128.b		; 80 80
	bra  71.b		; 80 47
	brk $EF.b		; 00 EF
	brk $7E.b		; 00 7E
	sbc $7E1866.l,X		; FF 66 18 7E
	lda $4266.w,X		; BD 66 42
	clc		; 18
	clc		; 18
	clc		; 18
	eor [$45.b],Y		; 57 45
	adc $FF5FEE.l,X		; 7F EE 5F FF
	rti		; 40

	clc		; 18
	tsb $01.b		; 04 01
	ora $01.b,S		; 03 01
	adc $70609F.l,X		; 7F 9F 60 70
	clc		; 18
	bpl   4.b		; 10 04
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	sbc $D043F7.l,X		; FF F7 43 D0
	sbc $03FA.w,X		; FD FA 03
	ora $03.b,S		; 03 03
	ora $03.b,S		; 03 03
	ora [$55.b]		; 07 55
	ora ($FC.b,X)		; 01 FC
	jsr ($FE02.w,X)		; FC 02 FE
	ora ($F8.b,X)		; 01 F8
	sbc $010204.l,X		; FF 04 02 01
	ora ($FF.b,X)		; 01 FF
	ora $02.b,S		; 03 02
	brk $55.b		; 00 55
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5555FF.l,X		; FF FF 55 55
	sbc $03FF07.l,X		; FF 07 FF 03
	brk $02.b		; 00 02
	sbc $555502.l,X		; FF 02 55 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DBB2FF.l,X		; FF FF B2 DB
	eor $AA.b,X		; 55 AA
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $15557F.l,X		; FF 7F 55 15
	cpy #$80.b		; C0 80
	cpx #$E0.b		; E0 E0
	beq  -8.b		; F0 F8
	sbc $808080.l,X		; FF 80 80 80
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $0818.w		; 20 18 08
	sbc $CBB2EF.l,X		; FF EF B2 CB
	eor $AA.b,X		; 55 AA
	sbc $FEFFFF.l,X		; FF FF FF FE
	inc $55FF.w,X		; FE FF 55
	lsr $02.b,X		; 56 02
	cop $04.b		; 02 04
	asl $1E.b		; 06 1E
	sbc $010101.l,X		; FF 01 01 01
	cop $02.b		; 02 02
	cop $16.b		; 02 16
	bpl  12.b		; 10 0C
	sbc $80550F.l,X		; FF 0F 55 80
	bra  85.b		; 80 55
	ora $BF.b,X		; 15 BF
	and $BF3F3F.l,X		; 3F 3F 3F BF
	lda $80807F.l,X		; BF 7F 80 80
	bra  21.b		; 80 15
	and $FF3F3F.l,X		; 3F 3F 3F FF
	sbc $55DBB2.l,X		; FF B2 DB 55
	tax		; AA
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $5755FE.l,X		; FF FE 55 57
	ora ($03.b,X)		; 01 03
	ora $03.b,S		; 03 03
	ora [$17.b]		; 07 17
	sbc $010101.l,X		; FF 01 01 01
	cop $02.b		; 02 02
	cop $04.b		; 02 04
	clc		; 18
	bpl -11.b		; 10 F5
	sbc $AA5452.l,X		; FF 52 54 AA
	sbc $3F807F.l,X		; FF 7F 80 3F
	rti		; 40

	eor $40.b,X		; 55 40
	cpx #$C0.b		; E0 C0
	beq -32.b		; F0 E0
	sed		; F8
	beq  -1.b		; F0 FF
	bra  64.b		; 80 40
	jsr $0810.w		; 20 10 08
	eor $01.b,X		; 55 01
	cop $00.b		; 02 00
	tax		; AA
	sbc $55FFFF.l,X		; FF FF FF 55
	sbc $1F550F.l,X		; FF 0F 55 1F
	brk $FE.b		; 00 FE
	tsb $01.b		; 04 01
	tsb $55.b		; 04 55
	sbc $FCFFFF.l,X		; FF FF FF FC
	xce		; FB
	cop $04.b		; 02 04
	ora ($F5.b,X)		; 01 F5
	eor $AA05F2.l,X		; 5F F2 05 AA
	sbc $7D81FE.l,X		; FF FE 81 7D
	bra 115.b		; 80 73
	ora $FA.b,S		; 03 FA
	cop $F4.b		; 02 F4
	inc $81FF.w,X		; FE FF 81
	sta ($42.b,X)		; 81 42
	sta ($24.b,X)		; 81 24
	clc		; 18
	adc $001FFF.l,X		; 7F FF 1F 00
	lda $40E03F.l,X		; BF 3F E0 40
	stz $80.b,X		; 74 80
	rol $4047.w		; 2E 47 40
.ACCU 8
	sep #$E0		; E2 E0
	stz $74.b,X		; 74 74
	rol $3F2E.w		; 2E 2E 3F
	cmp $802040.l,X		; DF 40 20 80
	and $010157.l,X		; 3F 57 01 01
	adc $C0C0BF.l,X		; 7F BF C0 C0
	rti		; 40

	rti		; 40

	adc $20.b,X		; 75 20
	cmp $C0DFDF.l,X		; DF DF DF C0
	jsr $DDF7.w		; 20 F7 DD
	sbc [$99.b],Y		; F7 99
	inc $0C.b,X		; F6 0C
	ora #$14.b		; 09 14
	bpl  20.b		; 10 14
	tsb $5D.b		; 04 5D
	sbc [$28.b],Y		; F7 28
	sbc $FC10FF.l,X		; FF FF 10 FC
	sbc ($0E.b,S),Y		; F3 0E
	ora $10.b		; 05 10
	bpl   4.b		; 10 04
	php		; 08
	plp		; 28
	bmi  16.b		; 30 10
	sbc $55.b,X		; F5 55
	sbc ($05.b)		; F2 05
	tax		; AA
	sbc $7C81FE.l,X		; FF FE 81 7C
	sta ($75.b,X)		; 81 75
	sbc [$FF.b],Y		; F7 FF
	sbc $8181FF.l,X		; FF FF 81 81
	.db $42, $81		; 42 81
	bit $18.b		; 24 18
	ora $001F55.l,X		; 1F 55 1F 00
	lda $20C020.l,X		; BF 20 C0 20
	bra  85.b		; 80 55
	sbc $3FFFFF.l,X		; FF FF FF 3F
	cmp $802040.l,X		; DF 40 20 80
	ora $000F55.l		; 0F 55 0F 00
	sbc $0201.w,X		; FD 01 02
	ora ($55.b,X)		; 01 55
	sbc $FDFFFF.l,X		; FF FF FF FD
	inc $0102.w,X		; FE 02 01
	sbc $FF.b,X		; F5 FF
	xce		; FB
	adc $7FFF55.l,X		; 7F 55 FF 7F
	bra -65.b		; 80 BF
	cpy #$85.b		; C0 85
	ldy #$58.b		; A0 58
	mvn $AA,$A8		; 54 A8 AA
	mvn $55,$55		; 54 55 55
	sbc $7F80FF.l,X		; FF FF 80 7F
	rti		; 40

	and $0F0F2A.l,X		; 3F 2A 0F 0F
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora $55.b,S		; 03 55
	ora ($FF.b,X)		; 01 FF
	cop $02.b		; 02 02
	eor $FF.b,X		; 55 FF
	sbc $5555FF.l,X		; FF FF 55 55
	eor $AA.b,X		; 55 AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $5503FF.l,X		; 5F FF 03 55
	lda $02E002.l,X		; BF 02 E0 02
	stz $2E.b,X		; 74 2E
	eor [$40.b]		; 47 40
.ACCU 8
	sep #$E0		; E2 E0
	pea $FEF4.w		; F4 F4 FE
	inc $FFFF.w,X		; FE FF FF
	rti		; 40

	cpx #$F4.b		; E0 F4
	inc $FFAB.w,X		; FE AB FF
	ora $55.b,S		; 03 55
	cpx #$A0.b		; E0 A0
	cpx #$60.b		; E0 60
	jsr $0555.w		; 20 55 05
	sbc $0F6F0F.l		; EF 0F 6F 0F
	and $FFFF0F.l		; 2F 0F FF FF
	ora $0F.b		; 05 0F
	ora $FF8A0F.l		; 0F 0F 8A FF
	sta $2060D7.l		; 8F D7 60 20
	bra  85.b		; 80 55
	ora $FF.b,X		; 15 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $609FDF.l,X		; 7F DF 9F 60
	jsr $9580.w		; 20 80 95
	rti		; 40

	adc $807F7F.l,X		; 7F 7F 7F 80
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	sbc $0FFFFF.l,X		; FF FF FF 0F
	brk $07.b		; 00 07
	brk $FD.b		; 00 FD
	sbc $0202.w,X		; FD 02 02
	cop $FF.b		; 02 FF
	cop $FF.b		; 02 FF
	brk $57.b		; 00 57
	brk $4F.b		; 00 4F
	eor $70E0E0.l		; 4F E0 E0 70
	bvs  32.b		; 70 20
	jsr $FFB0.w		; 20 B0 FF
	cpx #$70.b		; E0 70
	jsr $00C3.w		; 20 C3 00
	rep #$00		; C2 00
	sbc $0102FE.l,X		; FF FE 02 01
	inc $0302.w,X		; FE 02 03
	sbc $5D.b,X		; F5 5D
	brk $A5.b		; 00 A5
	sbc $20DFFF.l,X		; FF FF DF 20
	sbc $FBF710.l		; EF 10 F7 FB
	tsb $FD.b		; 04 FD
	inc $0408.w,X		; FE 08 04
	cop $01.b		; 02 01
	adc [$F7.b],Y		; 77 F7
	bpl 112.b		; 10 70
	sbc $101010.l		; EF 10 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl -70.b		; 10 BA
	tax		; AA
	bpl  16.b		; 10 10
	bpl   1.b		; 10 01
	ora ($2F.b,X)		; 01 2F
	brk $50.b		; 00 50
	sbc $202020.l,X		; FF 20 20 20
	rts		; 60

	rti		; 40

	bra -128.b		; 80 80
	cmp [$75.b],Y		; D7 75
	rti		; 40

	rti		; 40

	inc $FF01.w,X		; FE 01 FF
	sbc $FF33D5.l,X		; FF D5 33 FF
	sbc $FE01FE.l,X		; FF FE 01 FE
	ora $FFFF01.l		; 0F 01 FF FF
	sbc $9144FB.l		; EF FB 44 91
	lsr $7D.b		; 46 7D
	adc $6209AB.l,X		; 7F AB 09 62
	.db $82, $AB, $E9		; 82 AB E9
	and $8397EE.l,X		; 3F EE 97 83
	inc $BA82.w,X		; FE 82 BA
	tax		; AA
	jmp ($056C.w)		; 6C 6C 05
	cmp $EA.b,S		; C3 EA
	bit $FC6C.w		; 2C 6C FC
	tsx		; BA
	ora ($11.b)		; 12 11
	sta ($C2.b,X)		; 81 C2
	rti		; 40

	ora ($FF.b,X)		; 01 FF
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	cmp ($DF.b,X)		; C1 DF
	brk $00.b		; 00 00
	sbc $030101.l,X		; FF 01 01 03
	cop $06.b		; 02 06
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	adc $00FD.w,X		; 7D FD 00
	brk $FF.b		; 00 FF
	and ($3F.b,X)		; 21 3F
	lda ($C0.b,X)		; A1 C0
	bra   8.b		; 80 08
	plp		; 28
	clc		; 18
	pla		; 68
	plp		; 28
	cmp #$40.b		; C9 40
	sbc ($70.b),Y		; F1 70
	brk $00.b		; 00 00
	sbc $890F09.l,X		; FF 09 0F 89
	bra -120.b		; 80 88
	bra   1.b		; 80 01
	eor ($FF.b,S),Y		; 53 FF
	ora $55.b,S		; 03 55
	ora [$07.b]		; 07 07
	ora $07.b		; 05 07
	eor $50.b,X		; 55 50
	beq -16.b		; F0 F0
	sbc $F5.b,X		; F5 F5
	sbc [$F7.b],Y		; F7 F7
	sbc $F050FF.l,X		; FF FF 50 F0
	beq -16.b		; F0 F0
	eor ($FF.b,S),Y		; 53 FF
	ora $55.b,S		; 03 55
	beq -16.b		; F0 F0
	cli		; 58
	beq  93.b		; F0 5D
	ora $0707.w		; 0D 07 07
	eor ($53.b,S),Y		; 53 53
	xce		; FB
	xce		; FB
	sbc $0705FF.l,X		; FF FF 05 07
	ora $03.b,S		; 03 03
	ora $15.b,S		; 03 15
	ora $00.b,S		; 03 00
	sbc $FF55FF.l,X		; FF FF 55 FF
	eor $FF.b,X		; 55 FF
	sbc $0315FF.l,X		; FF FF 15 03
	brk $D0.b		; 00 D0
	cpx #$24.b		; E0 24
	clc		; 18
	ora #$06.b		; 09 06
	cop $01.b		; 02 01
	eor $FF.b,X		; 55 FF
	eor $FF.b,X		; 55 FF
	sbc $03FFC0.l,X		; FF C0 FF 03
	eor $40.b,X		; 55 40
	bra -43.b		; 80 D5
	adc $DF.b,X		; 75 DF
	ora $3F3F5F.l,X		; 1F 5F 3F 3F
	and $15FFFF.l,X		; 3F FF FF 15
	ora $533F1F.l,X		; 1F 1F 3F 53
	sbc $03.b,X		; F5 03
	bvc  -1.b		; 50 FF
	beq   5.b		; F0 05
	ora $757055.l		; 0F 55 70 75
	ora $7F.b		; 05 7F
	ora $05FF0F.l		; 0F 0F FF 05
	ora $13F573.l		; 0F 73 F5 13
	bvc  -1.b		; 50 FF
	ora $56.b,S		; 03 56
	cop $FC.b		; 02 FC
	eor $01.b,X		; 55 01
	mvn $FE,$54		; 54 54 FE
	inc $FFFC.w,X		; FE FC FF
	cop $54.b		; 02 54
	inc $153F.w,X		; FE 3F 15
	ora $00.b,S		; 03 00
	eor $AA.b,X		; 55 AA
	sbc $5555FF.l,X		; FF FF 55 55
	eor $FF.b,X		; 55 FF
	eor $FF.b,X		; 55 FF
	sbc $135D3F.l,X		; FF 3F 5D 13
	tsb $3F.b		; 04 3F
	lda $408080.l,X		; BF 80 80 40
	rti		; 40

	cmp $FF.b,X		; D5 FF
	bra 127.b		; 80 7F
	sbc $40FFC0.l,X		; FF C0 FF 40
	bra  83.b		; 80 53
	sbc ($02.b),Y		; F1 02
	brk $8F.b		; 00 8F
	sbc $850F05.l,X		; FF 05 0F 85
	eor $55.b,X		; 55 55
	sbc $53FFFF.l,X		; FF FF FF 53
	sbc ($02.b),Y		; F1 02
	brk $FF.b		; 00 FF
	sbc $55FF55.l,X		; FF 55 FF 55
	eor $55.b,X		; 55 55
	sbc $3FFFFF.l,X		; FF FF FF 3F
	ora $17.b,X		; 15 17
	brk $55.b		; 00 55
	eor $FF.b,X		; 55 FF
	sbc $555555.l,X		; FF 55 55 55
	sbc $FFAA55.l,X		; FF 55 AA FF
	sbc $FF3F55.l,X		; FF 55 3F FF
	ora [$50.b],Y		; 17 50
	eor $55.b,X		; 55 55
	inc $55FE.w,X		; FE FE 55
	mvn $01,$57		; 54 57 01
	sbc $439703.l,X		; FF 03 97 43
	and ($53.b,S),Y		; 33 53
	tax		; AA
	sbc $C054FE.l,X		; FF FE 54 C0
	bmi -13.b		; 30 F3
	eor $73.b,X		; 55 73
	brk $FF.b		; 00 FF
	sbc $03FC03.l,X		; FF 03 FC 03
	ora $55.b,S		; 03 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $1CFF1C.l,X		; FF 1C FF 1C
	cmp ($57.b,S),Y		; D3 57
	sbc $07.b,S		; E3 07
	sbc $8C80FF.l,X		; FF FF 80 8C
	beq  88.b		; F0 58
	ora $FFFFFE.l		; 0F FE FF FF
	sbc $3080FF.l,X		; FF FF 80 30
	jmp ($0331.w,X)		; 7C 31 03
	ora ($03.b,X)		; 01 03
	sbc $7E03.w,X		; FD 03 7E
	sbc $7FD5FF.l,X		; FF FF D5 7F
	beq  -1.b		; F0 FF
	asl $01FF.w		; 0E FF 01
	sbc $10C0FF.l,X		; FF FF C0 10
	sec		; 38
	ora ($07.b)		; 12 07
	cop $03.b		; 02 03
	cmp $03.b,X		; D5 03
	cpy #$FF.b		; C0 FF
	sbc $FFFF55.l,X		; FF 55 FF FF
	sbc $FFFFC0.l,X		; FF C0 FF FF
	rti		; 40

	cpy #$01.b		; C0 01
	eor $02.b,X		; 55 02
	brk $FF.b		; 00 FF
	eor $FF.b,X		; 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	bvc   2.b		; 50 02
	brk $55.b		; 00 55
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	tax		; AA
	tax		; AA
	eor $FF.b,X		; 55 FF
	sbc $5777FF.l,X		; FF FF 77 57
	ora ($FB.b,X)		; 01 FB
	jsr ($0701.w,X)		; FC 01 07
	ora $070706.l		; 0F 06 07 07
	eor $F805.w,X		; 5D 05 F8
	cpx $EE10.w		; EC 10 EE
	sed		; F8
	sbc $070604.l,X		; FF 04 06 07
	ora $7F00.w		; 0D 00 7F
	ora ($FF.b,X)		; 01 FF
	eor $54.b,X		; 55 54
	sbc ($E7.b,X)		; E1 E7
	pei ($CC.b)		; D4 CC
	ldy #$FF.b		; A0 FF
	eor ($03.b,S),Y		; 53 03
	jsr ($F00C.w,X)		; FC 0C F0
	bpl  96.b		; 10 60
	ldy #$00.b		; A0 00
	sbc $B5FF01.l,X		; FF 01 FF B5
	and $AF.b,X		; 35 AF
	cmp $05171F.l,X		; DF 1F 17 05
	ora $FF.b,S		; 03 FF
	cmp $C0.b,X		; D5 C0
	and [$30.b]		; 27 30
	phd		; 0B
	php		; 08
	ora [$06.b]		; 07 06
	brk $FF.b		; 00 FF
	ora ($55.b,X)		; 01 55
	eor $55.b,X		; 55 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $55FFFF.l,X		; FF FF FF 55
	sbc $2BFFFF.l,X		; FF FF FF 2B
	sbc $10555F.l,X		; FF 5F 55 10
	ora $550107.l		; 0F 07 01 55
	eor $AA.b,X		; 55 AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	sbc $03FF0F.l		; EF 0F FF 03
	sbc $55AAFF.l,X		; FF FF AA 55
	tax		; AA
	eor $82.b,X		; 55 82
	sbc $FFFF83.l,X		; FF 83 FF FF
	bra  64.b		; 80 40
	jsr $F0E8.w		; 20 E8 F0
	sbc $FFF9.w,X		; FD F9 FF
	jsr ($FFFF.w,X)		; FC FF FF
	cpy #$40.b		; C0 40
	bmi -24.b		; 30 E8
	php		; 08
	jsr ($FE06.w,X)		; FC 06 FE
	ora ($05.b,X)		; 01 05
	sbc $AAFF02.l,X		; FF 02 FF AA
	tax		; AA
	eor $55.b,X		; 55 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $55FFFF.l,X		; FF FF FF 55
	eor $FF.b,X		; 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $03FFF7.l,X		; FF F7 FF 03
	ora ($02.b),Y		; 11 02
	sbc $341402.l,X		; FF 02 14 34
	asl $670E.w		; 0E 0E 67
	eor [$E2.b]		; 47 E2
.ACCU 16
.INDEX 16
	rep #$B4		; C2 B4
	bra -82.b		; 80 AE
	bra -32.b		; 80 E0
	sbc $134020.l,X		; FF 20 40 13
	sbc $FFFF74.l,X		; FF 74 FF FF
	sbc $205580.l,X		; FF 80 55 20
	tas		; 1B
	sec		; 38
	tsa		; 3B
	asl $1F.b		; 06 1F
	ora ($80.b,X)		; 01 80
	bra -128.b		; 80 80
	rti		; 40

	bvs  96.b		; 70 60
	tsb $2238.w		; 0C 38 22
	rol $01.b		; 26 01
	ora ($03.b,X)		; 01 03
	eor $00.b,X		; 55 00
	rti		; 40

	sbc $FF55FF.l,X		; FF FF 55 FF
	sbc $FF80FF.l,X		; FF FF 80 FF
	sbc $BF06B7.l,X		; FF B7 06 BF
	adc $171F3F.l,X		; 7F 3F 1F 17
	ora $540703.l		; 0F 03 07 54
	lsr $AB.b,X		; 56 AB
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	bra  64.b		; 80 40
	jsr $0810.w		; 20 10 08
	tsb $02.b		; 04 02
	ora ($01.b,X)		; 01 01
	sbc $03.b,X		; F5 03
	beq  -1.b		; F0 FF
	eor $FF.b,X		; 55 FF
	sbc $40FF80.l,X		; FF 80 FF 40
	sbc $8080FF.l,X		; FF FF 80 80
	rti		; 40

	rti		; 40

	ora $55.b,S		; 03 55
	ora ($00.b,X)		; 01 00
	sbc $FF55FF.l,X		; FF FF 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $C20FFF.l,X		; 5F FF 0F C2
	rti		; 40

	.db $62, $60, $F4		; 62 60 F4
	pea $2E2E.w		; F4 2E 2E
	cmp [$07.b]		; C7 07
	sep #$02		; E2 02
	pea $C0FE.w		; F4 FE C0
	lda $F46060.l,X		; BF 60 60 F4
	stz $2E.b,X		; 74 2E
	rol $8787.w		; 2E 87 87
	cop $02.b		; 02 02
	and $F50FFF.l		; 2F FF 0F F5
	bpl -16.b		; 10 F0
	bpl  16.b		; 10 10
	bpl  21.b		; 10 15
	ora $1F.b,X		; 15 1F
	ora $1F1F1F.l		; 0F 1F 1F 1F
	ora $10EF1F.l,X		; 1F 1F EF 10
	bpl   5.b		; 10 05
	ora $0F101F.l		; 0F 1F 10 0F
	bpl  -2.b		; 10 FE
	eor [$5D.b],Y		; 57 5D
	sbc $1F3F3F.l,X		; FF 3F 3F 1F
	ora $030707.l,X		; 1F 07 07 03
	lsr $01.b,X		; 56 01
	inc $FFFF.w,X		; FE FF FF
	ror A		; 6A
	bmi  16.b		; 30 10
	clc		; 18
	tsb $56.b		; 04 56
	mvn $AA,$AB		; 54 AB AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	cop $FF.b		; 02 FF
	brk $F4.b		; 00 F4
	sbc $7F5555.l,X		; FF 55 55 7F
	adc $9FBF3F.l,X		; 7F 3F BF 9F
	cmp $804080.l,X		; DF 80 40 80
	ldy #$0240.w		; A0 40 02
	sbc $FF0000.l,X		; FF 00 00 FF
	eor $55.b,X		; 55 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $AFFEFF.l,X		; FF FF FE AF
	sta $0B.b,X		; 95 0B
	cpx #$F0E0.w		; E0 E0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FEA9.w,X)		; FC A9 FE
	ora ($FF.b,X)		; 01 FF
	sbc $104AFF.l,X		; FF FF 4A 10
	php		; 08
	tsb $01.b		; 04 01
	ora $01.b,S		; 03 01
	brk $D5.b		; 00 D5
	ora ($FF.b,X)		; 01 FF
	eor $FF.b,X		; 55 FF
	sbc $D580FF.l,X		; FF FF 80 D5
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	rol A		; 2A
	ora [$FF.b]		; 07 FF
	ora ($00.b,X)		; 01 00
	cop $FF.b		; 02 FF
	cop $55.b		; 02 55
	eor $FF.b,X		; 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $77FFFF.l,X		; FF FF FF 77
	eor $10.b,S		; 43 10
	eor $E0E0BF.l,X		; 5F BF E0 E0
	cpy #$C0C0.w		; C0 C0 C0
	cpx #$4055.w		; E0 55 40
	and $7F407F.l,X		; 3F 7F 40 7F
	ora $4020FF.l,X		; 1F FF 20 40
	sta $0AAB5F.l,X		; 9F 5F AB 0A
	sbc $0818F0.l		; EF F0 18 08
	php		; 08
	tsb $55.b		; 04 55
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	sbc $10E0FF.l,X		; FF FF E0 10
	php		; 08
	tsb $02.b		; 04 02
	ora ($01.b,X)		; 01 01
	sbc $01.b,X		; F5 01
	jsr $55FF.w		; 20 FF 55
	sbc $BF80FF.l,X		; FF FF 80 BF
	rti		; 40

	sbc $76FF80.l,X		; FF 80 FF 76
	sbc $03FECC.l,X		; FF CC FE 03
	asl $0C.b		; 06 0C
	clc		; 18
	bpl  32.b		; 10 20
	jsr $C040.w		; 20 40 C0
	bra -128.b		; 80 80
	bra  -2.b		; 80 FE
	ora ($06.b,X)		; 01 06
	asl $18.b		; 06 18
	clc		; 18
	jsr $4020.w		; 20 20 40
	rti		; 40

	bra -128.b		; 80 80
	eor [$45.b],Y		; 57 45
	adc $FF7FEE.l,X		; 7F EE 7F FF
	rts		; 60

	clc		; 18
	tsb $01.b		; 04 01
	ora $01.b,S		; 03 01
	adc $5060BF.l,X		; 7F BF 60 50
	clc		; 18
	bpl   4.b		; 10 04
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	sbc $FF.b,X		; F5 FF
	eor ($FC.b)		; 52 FC
	tax		; AA
	sbc $FE01FF.l,X		; FF FF 01 FE
	cop $55.b		; 02 55
	ora ($0B.b,X)		; 01 0B
	ora $3F171F.l		; 0F 1F 17 3F
	and $0201FF.l		; 2F FF 01 02
	tsb $1008.w		; 0C 08 10
	clc		; 18
	jsr $2A30.w		; 20 30 2A
	sbc $C0778B.l,X		; FF 8B 77 C0
	jsr $5510.w		; 20 10 55
	eor $FBFF.w,X		; 5D FF FB
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $1020C0.l,X		; FF C0 20 10
	ora $08.b		; 05 08
	ora [$03.b]		; 07 03
	tsb $01.b		; 04 01
	sbc $F732FF.l,X		; FF FF 32 F7
	eor $AA.b,X		; 55 AA
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $1555FF.l,X		; FF FF 55 15
	cpy #$E0C0.w		; C0 C0 E0
	cpy #$E8F0.w		; C0 F0 E8
	sbc $408080.l,X		; FF 80 80 40
	rti		; 40

	bra -32.b		; 80 E0
	jsr $18F8.w		; 20 F8 18
	sbc $FF.b,X		; F5 FF
	plb		; AB
	adc $FFFF55.l,X		; 7F 55 FF FF
	ora ($FF.b,X)		; 01 FF
	ora $52.b,S		; 03 52
	asl A		; 0A
	and $15.b		; 25 15
	ror A		; 6A
	rol A		; 2A
	cmp $55.b,X		; D5 55
	eor $FF.b,X		; 55 FF
	sbc $A8FCFE.l,X		; FF FE FC A8
	beq -16.b		; F0 F0
	cpy #$80C0.w		; C0 C0 80
	bra  15.b		; 80 0F
	eor $0F.b,X		; 55 0F
	brk $7F.b		; 00 7F
	rti		; 40

	bra  64.b		; 80 40
	eor $FF.b,X		; 55 FF
	sbc $BF7FFF.l,X		; FF FF 7F BF
	bra  64.b		; 80 40
	phd		; 0B
	eor $0F.b,X		; 55 0F
	brk $FF.b		; 00 FF
	ora ($01.b,X)		; 01 01
	eor $FF.b,X		; 55 FF
	sbc $FEFEFF.l,X		; FF FF FE FE
	ora ($01.b,X)		; 01 01
	sbc $99BFDD.l,X		; FF DD BF 99
	inc $01FC.w,X		; FE FC 01
	cop $80.b		; 02 80
	ora ($80.b,X)		; 01 80
	bra  85.b		; 80 55
	sbc $DFDF40.l,X		; FF 40 DF DF
	jsr $0304.w		; 20 04 03
	tsb $02.b		; 04 02
	bra   1.b		; 80 01
	bra  64.b		; 80 40
	rti		; 40

	jsr $F520.w		; 20 20 F5
	eor $AA0AF2.l,X		; 5F F2 0A AA
	sbc $7C81FE.l,X		; FF FE 81 7C
	.db $42, $75		; 42 75
	bit $F7.b		; 24 F7
	clc		; 18
	sbc $81FFFF.l,X		; FF FF FF 81
	sta ($81.b,X)		; 81 81
	.db $42, $24		; 42 24
	clc		; 18
	adc $186F5D.l,X		; 7F 5D 6F 18
	lda $40D030.l		; AF 30 D0 40
	dey		; 88
	dey		; 88
	php		; 08
	eor $FB.b,X		; 55 FB
	tsb $FB.b		; 04 FB
	sbc $30CF3F.l,X		; FF 3F CF 30
	rti		; 40

	dey		; 88
	php		; 08
	tsb $04.b		; 04 04
	cop $FF.b		; 02 FF
	brk $B5.b		; 00 B5
	sbc $FF5D55.l,X		; FF 55 5D FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FCFF.w,X		; FD FF FC
	php		; 08
	tsb $0204.w		; 0C 04 02
	ora $76.b,S		; 03 76
	sbc $FF7010.l,X		; FF 10 70 FF
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	eor $55.b,X		; 55 55
	sbc $FFFFEF.l,X		; FF EF FF FF
	mvn $10,$44		; 54 44 10
	bpl  16.b		; 10 10
	ora ($02.b,X)		; 01 02
	sbc $FF5000.l,X		; FF 00 50 FF
	eor $55.b,X		; 55 55
	lda $7F3FFF.l,X		; BF FF 3F 7F
	adc $80807F.l,X		; 7F 7F 80 80
	asl A		; 0A
	sbc $1FD74B.l,X		; FF 4B D7 1F
	bpl  85.b		; 10 55
	eor $FFFF.w,X		; 5D FF FF
	xce		; FB
	xce		; FB
	xce		; FB
	sbc $10E0F0.l,X		; FF F0 E0 10
	php		; 08
	bvc   8.b		; 50 08
	sed		; F8
	jsr ($04F8.w,X)		; FC F8 04
	.db $82, $FF, $87		; 82 FF 87
	tsb $FE.b		; 04 FE
	ora ($54.b,X)		; 01 54
	mvn $FE,$FE		; 54 FE FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	ora $01.b,S		; 03 01
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	cmp $01.b,X		; D5 01
	sbc $FFFF55.l,X		; FF 55 FF FF
	adc $555580.l,X		; 7F 80 55 55
	eor $AA.b,X		; 55 AA
	tax		; AA
	eor $55.b,X		; 55 55
	rol A		; 2A
	tax		; AA
	eor $10C630.l		; 4F 30 C6 10
	sbc $0202FC.l,X		; FF FC 02 02
	cop $01.b		; 02 01
	ora ($FC.b,X)		; 01 FC
	cop $02.b		; 02 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	sbc $C7304F.l,X		; FF 4F 30 C7
	bpl 127.b		; 10 7F
	sbc $408080.l,X		; FF 80 80 40
	rti		; 40

	rti		; 40

	bra 127.b		; 80 7F
	bra  64.b		; 80 40
	rti		; 40

	rti		; 40

	sbc $000000.l,X		; FF 00 00 00
	sbc $060402.l,X		; FF 02 04 06
	tsb $080C.w		; 0C 0C 08
	php		; 08
	cmp $040EDD.l,X		; DF DD 0E 04
	inc $1101.w		; EE 01 11
	ora ($10.b),Y		; 11 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	cmp $1657.w,X		; DD 57 16
	brk $7F.b		; 00 7F
	lda $EFDF40.l,X		; BF 40 DF EF
	bpl  -9.b		; 10 F7
	php		; 08
	sbc $80FFFF.l,X		; FF FF FF 80
	rti		; 40

	jsr $0007.w		; 20 07 00
	ora $FFFE00.l		; 0F 00 FE FF
	ora ($01.b,X)		; 01 01
	inc $0101.w,X		; FE 01 01
	ora ($03.b,X)		; 01 03
	brk $01.b		; 00 01
	sbc $808080.l,X		; FF 80 80 80
	ora [$03.b]		; 07 03
	asl $FF01.w		; 0E 01 FF
	and $202020.l,X		; 3F 20 20 20
	and $202020.l,X		; 3F 20 20 20
	cmp ($F7.b,X)		; C1 F7
	brk $00.b		; 00 00
	sbc $0A0302.l,X		; FF 02 03 0A
	tsb $1108.w		; 0C 08 11
	bpl  19.b		; 10 13
	ora ($FD.b,X)		; 01 FD
	adc $FF0000.l,X		; 7F 00 00 FF
	sbc [$0F.b],Y		; F7 0F
	lda $FFFF7F.l,X		; BF 7F FF FF
	inc $F9.b,X		; F6 F9
	ldx $FDC1.w,Y		; BE C1 FD
	ora $FF.b,S		; 03 FF
	adc $00FC.w,X		; 7D FC 00
	brk $FF.b		; 00 FF
	rti		; 40

	cpy #$2060.w		; C0 60 20
	jsr $2040.w		; 20 40 20
	cpy #$8040.w		; C0 40 80
	bra   3.b		; 80 03
	brk $02.b		; 00 02
	brk $FF.b		; 00 FF
	bra -128.b		; 80 80
	ora $03.b,S		; 03 03
	ora $01.b,S		; 03 01
	sbc $10101F.l		; EF 1F 10 10
	bpl  15.b		; 10 0F
	bpl   1.b		; 10 01
	beq   0.b		; F0 00
	brk $FF.b		; 00 FF
	tsb $04.b		; 04 04
	tsb $06.b		; 04 06
	cmp $00000F.l,X		; DF 0F 00 00
	inc $010F.w,X		; FE 0F 01
	ora ($0A.b,X)		; 01 0A
	ora $040709.l		; 0F 09 07 04
	cop $03.b		; 02 03
	sbc [$3F.b],Y		; F7 3F
	brk $00.b		; 00 00
	sbc $02121E.l		; EF 1E 12 02
	cop $20.b		; 02 20
	jsr $80A4.w		; 20 A4 80
	sty $84.b		; 84 84
	rti		; 40

	rti		; 40

	adc ($DF.b,S),Y		; 73 DF
	brk $00.b		; 00 00
	sbc $10100E.l,X		; FF 0E 10 10
	ora ($02.b)		; 12 02
	cop $20.b		; 02 20
	jsr $4424.w		; 20 24 44
	mvp $DD,$F3		; 44 F3 DD
	brk $00.b		; 00 00
	lda $444478.l,X		; BF 78 44 44
	ora [$03.b]		; 07 03
	and $20.b,S		; 23 20
	jsr $1111.w		; 20 11 11
	ora $002ADF.l,X		; 1F DF 2A 00
	brk $F7.b		; 00 F7
	sei		; 78
	dey		; 88
	dey		; 88
	bcc  16.b		; 90 10
	bpl  32.b		; 10 20
	rti		; 40

	bra -33.b		; 80 DF
	sbc $FD9B.w,X		; FD 9B FD
	eor $20.b,X		; 55 20
	sbc $F7FF10.l,X		; FF 10 FF F7
	plp		; 28
	eor $0414.w,X		; 5D 14 04
	trb $10.b		; 14 10
	php		; 08
	cop $DF.b		; 02 DF
	cmp $283010.l,X		; DF 10 30 28
	php		; 08
	bpl   4.b		; 10 04
	tsb $10.b		; 04 10
	asl A		; 0A
	cop $FF.b		; 02 FF
	phd		; 0B
	adc [$23.b],Y		; 77 23
	tax		; AA
	eor ($FB.b,S),Y		; 53 FB
	inc $FBFB.w,X		; FE FB FB
	sbc $5555FD.l,X		; FF FD 55 55
	ora ($FD.b,X)		; 01 FD
	sed		; F8
	ora $03.b,S		; 03 03
	tsb $03.b		; 04 03
	ora ($02.b,X)		; 01 02
	ora ($FF.b,X)		; 01 FF
	sbc $23.b,S		; E3 23
	dex		; CA
	tax		; AA
	eor $FF.b,X		; 55 FF
	sbc $7F7F7F.l,X		; FF 7F 7F 7F
	sbc $201555.l,X		; FF 55 15 20
	bpl -112.b		; 10 90
	sbc $4080FF.l,X		; FF FF 80 40
	jsr $1010.w		; 20 10 10
	sbc $8FAB7B.l,X		; FF 7B AB 8F
	eor $8F.b,X		; 55 8F
	sbc $24FF48.l,X		; FF 48 FF 24
	sbc $115502.l,X		; FF 02 55 11
	php		; 08
	tsb $04.b		; 04 04
	tsb $FF.b		; 04 FF
	sta [$40.b]		; 87 40
	tsb $22.b		; 04 22
	ora ($11.b,X)		; 01 11
	ora ($08.b,X)		; 01 08
	tsb $57.b		; 04 57
	cmp $BC03.w,Y		; D9 03 BC
	eor $FF.b,X		; 55 FF
	sbc $55FFFF.l,X		; FF FF FF 55
	bra  64.b		; 80 40
	rts		; 60

	rti		; 40

	sbc $8080FF.l,X		; FF FF 80 80
	bra  64.b		; 80 40
	jsr $FBFF.w		; 20 FF FB
	brk $54.b		; 00 54
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	bpl  -1.b		; 10 FF
	sbc [$04.b],Y		; F7 04
	xce		; FB
	ora ($FF.b,X)		; 01 FF
	php		; 08
	tsb $02.b		; 04 02
	sbc $9400AA.l,X		; FF AA 00 94
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	sbc $EFFFEF.l,X		; FF EF FF EF
	bpl  16.b		; 10 10
	bpl  85.b		; 10 55
	eor $FF.b,X		; 55 FF
	sbc $FFFEAB.l,X		; FF AB FE FF
	sbc $402075.l,X		; FF 75 20 40
	rti		; 40

	eor $AB.b,X		; 55 AB
	eor ($57.b,S),Y		; 53 57
	ldy #$40AF.w		; A0 AF 40
	eor $1F3F0A.l,X		; 5F 0A 3F 1F
	and $3F7F3F.l,X		; 3F 3F 7F 3F
	adc $FF00FF.l,X		; 7F FF 00 FF
	tax		; AA
	tax		; AA
	tax		; AA
	eor [$57.b],Y		; 57 57
	plb		; AB
	plb		; AB
	eor $55.b,X		; 55 55
	lda $5657.w		; AD 57 56
	lda #$54AB.w		; A9 AB 54
	eor $AA.b,X		; 55 AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $01.b,X		; 55 01
	lda $EFBAFF.l		; AF FF BA EF
	sbc $5A55FF.l,X		; FF FF 55 5A
	lda $FF7F30.l,X		; BF 30 7F FF
	sbc $FFFFAA.l,X		; FF AA FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF5555.l,X		; FF 55 55 FF
	sbc $DFDFAA.l,X		; FF AA DF DF
	sbc $020451.l,X		; FF 51 04 02
	cop $D5.b		; 02 D5
	tax		; AA
	ora $F5.b,X		; 15 F5
	dec A		; 3A
	plx		; FA
	ora $A8FD.w		; 0D FD A8
	jsr ($FCF8.w,X)		; FC F8 FC
	jsr ($FCFE.w,X)		; FC FE FC
	inc $FD55.w,X		; FE 55 FD
	sbc $FEABFF.l,X		; FF FF AB FE
	sbc $2075FF.l,X		; FF FF 75 20
	bra -64.b		; 80 C0
	bra -64.b		; 80 C0
	bra -43.b		; 80 D5
	plb		; AB
	eor ($57.b,S),Y		; 53 57
	ldy #$40AF.w		; A0 AF 40
	eor $9F3F0A.l,X		; 5F 0A 3F 9F
	and $3F7F3F.l,X		; 3F 3F 7F 3F
	adc $05CF57.l,X		; 7F 57 CF 05
	eor $FEFF55.l		; 4F 55 FF FE
	inc $3FFF.w,X		; FE FF 3F
	adc ($6B.b,S),Y		; 73 6B
	adc ($03.b)		; 72 03
	cop $01.b		; 02 01
	ora ($7C.b,X)		; 01 7C
	ora $7D.b,S		; 03 7D
	ora $02.b,S		; 03 02
	sbc $FFFFBF.l,X		; FF BF FF FF
	cmp $D4.b		; C5 D4
	sta $2E.b,S		; 83 2E
	adc $6B.b,X		; 75 6B
	txa		; 8A
	cmp [$17.b],Y		; D7 17
	tsx		; BA
	jsr $F954.w		; 20 54 F9
	and #$2A6A.w		; 29 6A 2A
	ora ($7D.b),Y		; 11 7D
	sta ($BE.b)		; 92 BE
	mvn $38,$7C		; 54 7C 38
	jmp ($FFFF.w,X)		; 7C FF FF
	sec		; 38
	inc $FD54.w,X		; FE 54 FD
	sta ($D5.b)		; 92 D5
	plb		; AB
	cmp $BE.b,S		; C3 BE
	eor $FF.b,X		; 55 FF
	sbc $1540BF.l,X		; FF BF 40 15
	rti		; 40

	jsr $1030.w		; 20 30 10
	bra  -1.b		; 80 FF
	rti		; 40

	rti		; 40

	rti		; 40

	jsr $1020.w		; 20 20 10
	bmi  16.b		; 30 10
	cmp $AB.b,X		; D5 AB
	cmp $BE.b,S		; C3 BE
	eor $FF.b,X		; 55 FF
	sbc $5502FF.l,X		; FF FF 02 55
	cop $04.b		; 02 04
	tsb $0108.w		; 0C 08 01
	sbc $020202.l,X		; FF 02 02 02
	tsb $04.b		; 04 04
	php		; 08
	tsb $7F08.w		; 0C 08 7F
	ora ($2F.b,X)		; 01 2F
	brk $55.b		; 00 55
	ora $FF.b,S		; 03 FF
	cop $FF.b		; 02 FF
	ora ($FF.b,X)		; 01 FF
	eor $FE.b,X		; 55 FE
	jsr ($0201.w,X)		; FC 01 02
	ora ($D7.b,X)		; 01 D7
	plb		; AB
	cmp ($BE.b)		; D2 BE
	eor $80.b,X		; 55 80
	sbc $C0BFFF.l,X		; FF FF BF C0
	ora $40.b,X		; 15 40
	jsr $1030.w		; 20 30 10
	adc $C04080.l,X		; 7F 80 40 C0
	rti		; 40

	jsr $1020.w		; 20 20 10
	bmi  16.b		; 30 10
	sbc $55FF2F.l,X		; FF 2F FF 55
	plb		; AB
	tay		; A8
	eor [$50.b],Y		; 57 50
	tax		; AA
	tay		; A8
	eor $51.b,X		; 55 51
	bpl  16.b		; 10 10
	jsr $4020.w		; 20 20 40
	lsr $01.b,X		; 56 01
	lda $5302.w		; AD 02 53
	tsb $A6.b		; 04 A6
	php		; 08
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $555F00.l,X		; FF 00 5F 55
	cop $92.b		; 02 92
	eor $45.b		; 45 45
	tsx		; BA
	tsx		; BA
	eor $55.b		; 45 55
	cpx $AA11.w		; EC 11 AA
	bpl  85.b		; 10 55
	tsx		; BA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $00BF03.l,X		; FF 03 BF 00
	tax		; AA
	eor $FD.b,X		; 55 FD
	sbc $FEFFFC.l,X		; FF FC FF FE
	sbc $F85555.l,X		; FF 55 55 F8
	sbc $010206.l,X		; FF 06 02 01
	ora $01.b,S		; 03 01
	sbc $FFC257.l,X		; FF 57 C2 FF
	tax		; AA
	eor $FF.b,X		; 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $101545.l,X		; BF 45 15 10
	cop $03.b		; 02 03
	sbc $3040C0.l,X		; FF C0 40 30
	bvc   8.b		; 50 08
	bpl   6.b		; 10 06
	cop $01.b		; 02 01
	ora $FF.b,S		; 03 FF
	eor [$C2.b],Y		; 57 C2
	sbc $FF55AA.l,X		; FF AA 55 FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $08555F.l,X		; FF 5F 55 08
	rti		; 40

	cpy #$03FF.w		; C0 FF 03
	cop $0C.b		; 02 0C
	asl A		; 0A
	bpl   8.b		; 10 08
	rts		; 60

	rti		; 40

	bra -64.b		; 80 C0
	sbc $00BF03.l,X		; FF 03 BF 00
	tax		; AA
	eor $FF.b,X		; 55 FF
	lda $FF3FFF.l,X		; BF FF 3F FF
	adc $1F5555.l,X		; 7F 55 55 1F
	sbc $804060.l,X		; FF 60 40 80
	cpy #$FF80.w		; C0 80 FF
	cmp $AAFFC2.l,X		; DF C2 FF AA
	eor $FF.b,X		; 55 FF
	sbc $FDFFFF.l,X		; FF FF FF FD
	inc $535F.w,X		; FE 5F 53
	php		; 08
	clc		; 18
	rti		; 40

	iny		; C8
	bpl  -1.b		; 10 FF
	cop $03.b		; 02 03
	ora $100C.w		; 0D 0C 10
	bpl  96.b		; 10 60
	rts		; 60

	dey		; 88
	beq  -1.b		; F0 FF
	brk $5F.b		; 00 5F
	eor $AA.b,X		; 55 AA
	eor $5C.b,X		; 55 5C
	cmp ($AA.b,S),Y		; D3 AA
	tax		; AA
	eor $55.b,X		; 55 55
	ora $8063FF.l,X		; 1F FF 63 80
	cmp $AA.b,X		; D5 AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $017B03.l,X		; DF 03 7B 01
	tax		; AA
	eor $FF.b,X		; 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $55.b,X		; 55 55
	sbc $AA80FF.l,X		; FF FF 80 AA
	adc $FF55FF.l,X		; 7F FF 55 FF
	ora $7B.b,S		; 03 7B
	ora ($AA.b,X)		; 01 AA
	eor $FA.b,X		; 55 FA
	plx		; FA
	plx		; FA
	ora $FF.b		; 05 FF
	sbc $FF5555.l,X		; FF 55 55 FF
	sbc $F8AA07.l,X		; FF 07 AA F8
	sbc $03FF55.l,X		; FF 55 FF 03
	brk $00.b		; 00 00
	sbc $131E.w,X		; FD 1E 13
	ora ($11.b,X)		; 01 11
	bpl   4.b		; 10 04
	php		; 08
	tsb $07.b		; 04 07
	sbc ($FF.b),Y		; F1 FF
	brk $00.b		; 00 00
	sbc $24E020.l,X		; FF 20 E0 24
	trb $0385.w		; 1C 85 03
	sta ($E0.b),Y		; 91 E0
	trb $18.b		; 14 18
	asl $04.b		; 06 04
	ora ($7C.b,X)		; 01 7C
	brk $00.b		; 00 00
	sbc $60C040.l,X		; FF 40 C0 60
	jsr $FF20.w		; 20 20 FF
	adc $DB0000.l,X		; 7F 00 00 DB
	bit $70FF.w,X		; 3C FF 70
	adc $F8F7F0.l		; 6F F0 F7 F8
	sbc $FF7FFF.l,X		; FF FF 7F FF
	cmp $FFFF3F.l,X		; DF 3F FF FF
	adc $FD0000.l,X		; 7F 00 00 FD
	ora $FB.b,S		; 03 FB
	ora [$F7.b]		; 07 F7
	ora $FF7FBF.l		; 0F BF 7F FF
	sbc $EFFEFD.l,X		; FF FD FE EF
	beq  -1.b		; F0 FF
	cmp ($0F.b,S),Y		; D3 0F
	brk $00.b		; 00 00
	sbc $2020E0.l,X		; FF E0 20 20
	jsr $4080.w		; 20 80 40
	bra -128.b		; 80 80
	eor $01.b,X		; 55 01
	inc $FF00.w,X		; FE 00 FF
	tax		; AA
	sbc $FF55FF.l,X		; FF FF 55 FF
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	sbc $08890B.l,X		; FF 0B 89 08
	eor $4A.b,X		; 55 4A
	sta $B5.b,X		; 95 B5
	ror A		; 6A
	ror A		; 6A
	sta $D5.b,X		; 95 D5
	bra -128.b		; 80 80
	bra  31.b		; 80 1F
	jsr $8040.w		; 20 40 80
	cmp [$75.b],Y		; D7 75
	sta ($64.b,S),Y		; 93 64
	eor $FC.b,X		; 55 FC
	sbc $04FBFB.l,X		; FF FB FB 04
	eor $08.b,X		; 55 08
	php		; 08
	php		; 08
	bpl   3.b		; 10 03
	ora $04.b,S		; 03 04
	tsb $08.b		; 04 08
	php		; 08
	bpl  -1.b		; 10 FF
	sta $55.b,S		; 83 55
	ora ($AA.b,X)		; 01 AA
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5555FF.l,X		; FF FF 55 55
	ora ($55.b,X)		; 01 55
	sbc $55FFFF.l,X		; FF FF FF 55
	sbc $22770B.l,X		; FF 0B 77 22
	tax		; AA
	lda $FF.b,X		; B5 FF
	cmp $BFFFFF.l,X		; DF FF FF BF
	sbc $801515.l,X		; FF 15 15 80
	eor $C0E01F.l,X		; 5F 1F E0 C0
	jsr $4080.w		; 20 80 40
	bra  -1.b		; 80 FF
	sbc $AA9400.l,X		; FF 00 94 AA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	bpl  -1.b		; 10 FF
	jsr $40DF.w		; 20 DF 40
	sbc $207F80.l,X		; FF 80 7F 20
	rti		; 40

	bra  85.b		; 80 55
	ora ($01.b,X)		; 01 01
	brk $55.b		; 00 55
	sbc $55FFFF.l,X		; FF FF FF 55
	sbc $8B7B7F.l,X		; FF 7F 7B 8B
	txa		; 8A
	eor $01.b,X		; 55 01
	sbc $04FB02.l,X		; FF 02 FB 04
	xce		; FB
	eor $08.b,X		; 55 08
	bpl  32.b		; 10 20
	jsr $FF20.w		; 20 20 FF
	ora ($02.b,X)		; 01 02
	tsb $08.b		; 04 08
	bpl  32.b		; 10 20
	eor $05050F.l,X		; 5F 0F 05 05
	eor $7F.b,X		; 55 7F
	sbc $FFFF80.l,X		; FF 80 FF FF
	eor $1838.w		; 4D 38 18
	sec		; 38
	bra -128.b		; 80 80
	sed		; F8
	sed		; F8
	sbc $AAFF00.l,X		; FF 00 FF AA
	txs		; 9A
	tsx		; BA
	eor $55.b,X		; 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	ply		; 7A
	cmp $D5.b		; C5 D5
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BBFDBB.l,X		; FF BB FD BB
	tax		; AA
	cmp $75.b,X		; D5 75
	ror A		; 6A
	tax		; AA
	lda $55.b		; A5 55
	eor ($04.b)		; 52 04
	ora [$03.b]		; 07 03
	cop $03.b		; 02 03
	ora ($80.b,X)		; 01 80
	rts		; 60

	bra -96.b		; 80 A0
	bvc  80.b		; 50 50
	tay		; A8
	tsb $F8.b		; 04 F8
	jsr ($FC02.w,X)		; FC 02 FC
	inc $03FF.w,X		; FE FF 03
	eor $01.b,X		; 55 01
	tax		; AA
	tax		; AA
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $5555FF.l,X		; FF FF 55 55
	eor $FF.b,X		; 55 FF
	sbc $5555FF.l,X		; FF FF 55 55
	sbc $F803.w,X		; FD 03 F8
	eor $FF.b,X		; 55 FF
	sbc $0155FF.l,X		; FF FF 55 01
	ora ($09.b,X)		; 01 09
	asl $7048.w		; 0E 48 70
	sbc $0701FF.l,X		; FF FF 01 07
	asl $7038.w		; 0E 38 70
	cmp $2D.b,X		; D5 2D
	cmp $7C.b,S		; C3 7C
	eor $FF.b,X		; 55 FF
	sbc $5540BF.l,X		; FF BF 40 55
	rti		; 40

	ldy #$8010.w		; A0 10 80
	sbc $E04040.l,X		; FF 40 40 E0
	ldy #$1030.w		; A0 30 10
	bpl -41.b		; 10 D7
	plb		; AB
.ACCU 16
.INDEX 16
	rep #$BE		; C2 BE
	eor $01.b,X		; 55 01
	sbc $03FFFF.l,X		; FF FF FF 03
	eor $02.b,X		; 55 02
	tsb $0C.b		; 04 0C
	php		; 08
	inc $0303.w,X		; FE 03 03
	cop $04.b		; 02 04
	tsb $08.b		; 04 08
	tsb $FF08.w		; 0C 08 FF
	brk $57.b		; 00 57
	eor $A2.b,X		; 55 A2
	lsr $5555.w,X		; 5E 55 55
	tax		; AA
	tax		; AA
	eor $55.b,X		; 55 55
	sbc $AAF0.w,X		; FD F0 AA
	eor $AA.b,X		; 55 AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $555F00.l,X		; FF 00 5F 55
	tax		; AA
	lda $5657.w		; AD 57 56
	plb		; AB
	plb		; AB
	eor $55.b,X		; 55 55
	bvc   7.b		; 50 07
	tax		; AA
	ora ($55.b,X)		; 01 55
	tax		; AA
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFC2DF.l,X		; FF DF C2 FF
	tax		; AA
	eor $FF.b,X		; 55 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and $107545.l,X		; 3F 45 75 10
	clc		; 18
	cop $13.b		; 02 13
	php		; 08
	sbc $30C0C0.l,X		; FF C0 C0 30
	bmi   8.b		; 30 08
	php		; 08
	asl $06.b		; 06 06
	ora ($0F.b),Y		; 11 0F
	ora $030F02.l		; 0F 02 0F 03
	bra 127.b		; 80 7F
	bra -112.b		; 80 90
	bpl  31.b		; 10 1F
	bra -128.b		; 80 80
	bcc  16.b		; 90 10
	bpl -84.b		; 10 AC
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	txs		; 9A
	tax		; AA
	tax		; AA
	nop		; EA
	tax		; AA
	tax		; AA
	nop		; EA
	ldx $AAAA.w		; AE AA AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	ldx $9AAA.w,Y		; BE AA 9A
	ldx $AA.b,Y		; B6 AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	txs		; 9A
	tax		; AA
	plb		; AB
	ldx $AAAF.w		; AE AF AA
	nop		; EA
	tax		; AA
	tax		; AA
	tsx		; BA
	tax		; AA
	lda #$AAA6.w		; A9 A6 AA
	tax		; AA
	tax		; AA
	adc $BF.b,X		; 75 BF
	lda #$AA96.w		; A9 96 AA
	lda #$BE5A.w		; A9 5A BE
	txs		; 9A
	phy		; 5A
	tax		; AA
	lda $00.b		; A5 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b),Y		; 11 40
	brk $F4.b		; 00 F4
	ora $03.b,S		; 03 03
	brk $03.b		; 00 03
	eor $01.b,X		; 55 01
	tsb $0C01.w		; 0C 01 0C
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora [$04.b],Y		; 17 04
	ora [$00.b],Y		; 17 00
	rtl		; 6B

	tsb $6D07.w		; 0C 07 6D
	jmp ($0C6E.w)		; 6C 6E 0C
	ora ($6E.b,X)		; 01 6E
	ora $00.b,S		; 03 00
	ora $55.b,S		; 03 55
	asl $0C.b		; 06 0C
	asl $0C.b		; 06 0C
	ora ($0F.b,X)		; 01 0F
	ora ($03.b,X)		; 01 03
	ora [$04.b],Y		; 17 04
	ora [$00.b],Y		; 17 00
	bvs  12.b		; 70 0C
	ora ($77.b,X)		; 01 77
	stz $72.b,X		; 74 72
	tsb $7501.w		; 0C 01 75
	ora $00.b,S		; 03 00
	ora $55.b,S		; 03 55
	phd		; 0B
	tsb $0C0B.w		; 0C 0B 0C
	ora [$01.b]		; 07 01
	ora $03.b,S		; 03 03
	ora [$04.b],Y		; 17 04
	ora [$00.b]		; 07 00
	stz $0C.b,X		; 74 0C
	ora ($7E.b,X)		; 01 7E
	adc $0C77.w,X		; 7D 77 0C
	jmp ($0D57.w,X)		; 7C 57 0D
	ora $55.b,S		; 03 55
	ora $011F0C.l		; 0F 0C 1F 01
	ora $01.b,S		; 03 01
	ora [$1C.b]		; 07 1C
	trb $10.b		; 14 10
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	eor [$07.b],Y		; 57 07
	eor [$35.b],Y		; 57 35
	sei		; 78
	bpl   1.b		; 10 01
	ora $01.b,S		; 03 01
	ora [$1C.b]		; 07 1C
	ora ($7E.b,X)		; 01 7E
	tsb $1F71.w		; 0C 71 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	trb $7F77.w		; 1C 77 7F
	eor $55.b,S		; 43 55
	ora $030C.w,Y		; 19 0C 03
	ora ($18.b,X)		; 01 18
	ora [$01.b]		; 07 01
	clc		; 18
	ora $1C.b,S		; 03 1C
	ora ($04.b,X)		; 01 04
	and $3F101E.l,X		; 3F 1E 10 3F
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	eor [$0D.b],Y		; 57 0D
	cmp [$3D.b],Y		; D7 3D
	adc $01FF10.l,X		; 7F 10 FF 01
	ora $01.b,S		; 03 01
	ora [$1C.b]		; 07 1C
	sta $0C.b		; 85 0C
	stz $0103.w		; 9C 03 01
	clc		; 18
	ora [$01.b]		; 07 01
	clc		; 18
	ora $1C.b,S		; 03 1C
	adc [$7F.b],Y		; 77 7F
	eor [$55.b],Y		; 57 55
	rol $0C.b		; 26 0C
	ora ($0F.b,X)		; 01 0F
	clc		; 18
	ora ($03.b,X)		; 01 03
	clc		; 18
	ora ($1C.b,X)		; 01 1C
	ora [$04.b]		; 07 04
	ora ($2B.b,X)		; 01 2B
	bpl   5.b		; 10 05
	ora ($1F.b,X)		; 01 1F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	eor $3DD7D5.l,X		; 5F D5 D7 3D
	bit $50.b,X		; 34 50
	ora [$40.b]		; 07 40
	lda $01.b,X		; B5 01
	lda $0301B0.l,X		; BF B0 01 03
	trb $0C8B.w		; 1C 8B 0C
	lda $0F01.w		; AD 01 0F
	clc		; 18
	ora ($03.b,X)		; 01 03
	clc		; 18
	ora ($1C.b,X)		; 01 1C
	adc [$5D.b],Y		; 77 5D
	eor [$14.b],Y		; 57 14
	and $10.b,X		; 35 10
	ora $10.b,S		; 03 10
	trb $1001.w		; 1C 01 10
	ora $030118.l		; 0F 18 01 03
	tsa		; 3B
	bpl   7.b		; 10 07
	ora ($3C.b,X)		; 01 3C
	and $D5530D.l,X		; 3F 0D 53 D5
	cmp $103335.l,X		; DF 35 33 10
	lda $010301.l,X		; BF 01 03 01
	ora $921C1A.l,X		; 1F 1A 1C 92
	tsb $1CA7.w		; 0C A7 1C
	ora $10.b,S		; 03 10
	trb $1001.w		; 1C 01 10
	rol $1C.b,X		; 36 1C
	adc [$7D.b],Y		; 77 7D
	ora [$14.b],Y		; 17 14
	and $017F0C.l,X		; 3F 0C 7F 01
	trb $0103.w		; 1C 03 01
	ora [$1C.b]		; 07 1C
	bvc   4.b		; 50 04
	eor ($46.b),Y		; 51 46
	php		; 08
	ora ($53.b,X)		; 01 53
	jmp $555301.l		; 5C 01 53 55
	cmp $0849F5.l,X		; DF F5 49 08
	phx		; DA
	sta $018A.w		; 8D 8A 01
	ora $D0.b,S		; 03 D0
	sta [$08.b],Y		; 97 08
	tay		; A8
	tsb $7F.b		; 04 7F
	ora ($1C.b,X)		; 01 1C
	ora $01.b,S		; 03 01
	ora [$1C.b]		; 07 1C
	eor $1C.b		; 45 1C
	eor [$7F.b],Y		; 57 7F
	ora [$50.b],Y		; 17 50
	asl $5408.w,X		; 1E 08 54
	ora ($02.b,X)		; 01 02
	ora $18.b		; 05 18
	php		; 08
	trb $045A.w		; 1C 5A 04
	eor $49.b,X		; 55 49
	php		; 08
	ora [$50.b]		; 07 50
	eor ($1F.b),Y		; 51 1F
	ora [$54.b],Y		; 17 54
	eor [$FD.b],Y		; 57 FD
	bvc   8.b		; 50 08
	iny		; C8
	stx $87.b		; 86 87
	ora $D3.b,S		; 03 D3
	lsr $5008.w		; 4E 08 50
	mvn $02,$01		; 54 01 02
	ora $18.b		; 05 18
	php		; 08
	trb $045A.w		; 1C 5A 04
	eor ($7D.b,S),Y		; 53 7D
	ora [$50.b],Y		; 17 50
	pld		; 2B
	php		; 08
	ply		; 7A
	ora $01.b,S		; 03 01
	asl $6604.w,X		; 1E 04 66
	tsb $7E.b		; 04 7E
	lsr $08.b,X		; 56 08
	ora ($7C.b,X)		; 01 7C
	adc ($01.b,S),Y		; 73 01
	ora [$54.b],Y		; 17 54
	eor [$F5.b]		; 47 F5
	txy		; 9B
	php		; 08
	ora [$B7.b]		; 07 B7
	ldx $03.b,Y		; B6 03
	ora ($A0.b,X)		; 01 A0
	php		; 08
	phb		; 8B
	ply		; 7A
	ora $01.b,S		; 03 01
	asl $6604.w,X		; 1E 04 66
	tsb $43.b		; 04 43
	eor $03.b,X		; 55 03
	brk $01.b		; 00 01
	php		; 08
	tad		; 5B
	ora ($07.b,X)		; 01 07
	adc [$66.b]		; 67 66
	ora ($08.b,X)		; 01 08
	cmp $75.b,S		; C3 75
	ora [$55.b],Y		; 17 55
	ora ($08.b,X)		; 01 08
	ldy #$0304.w		; A0 04 03
	ora ($07.b,X)		; 01 07
	tsb $2B.b		; 04 2B
	lda $08.b		; A5 08
	ora $A7.b,S		; 03 A7
	tad		; 5B
	ora ($07.b,X)		; 01 07
	eor $5503.w,X		; 5D 03 55
	ora $00.b,S		; 03 00
	lsr $0108.w,X		; 5E 08 01
	and $5E3F01.l,X		; 3F 01 3F 5E
	php		; 08
	cmp $75.b,S		; C3 75
	ora [$54.b],Y		; 17 54
	lsr $3B08.w,X		; 5E 08 3B
	tsb $03.b		; 04 03
	ora ($C0.b,X)		; 01 C0
	tsb $0F.b		; 04 0F
	tay		; A8
	php		; 08
	ora ($F7.b,X)		; 01 F7
	ora ($3F.b,X)		; 01 3F
	rol $0D73.w,X		; 3E 73 0D
	ora $00.b,S		; 03 00
	lsr $3C08.w,X		; 5E 08 3C
	tsb $01.b		; 04 01
	ora [$3A.b]		; 07 3A
	tsb $5E.b		; 04 5E
	php		; 08
	cmp $75.b,S		; C3 75
	ora [$00.b],Y		; 17 00
	lsr $F408.w,X		; 5E 08 F4
	tsb $01.b		; 04 01
	ora [$01.b]		; 07 01
	tsb $03.b		; 04 03
	tay		; A8
	php		; 08
	ora [$F1.b]		; 07 F1
	adc ($0D.b,S),Y		; 73 0D
	ora $5C.b,S		; 03 5C
	lsr $3B08.w,X		; 5E 08 3B
	tsb $03.b		; 04 03
	ora ($39.b,X)		; 01 39
	tsb $5E.b		; 04 5E
	php		; 08
	rol $10.b,X		; 36 10
	ora ($03.b,X)		; 01 03
	cmp [$40.b],Y		; D7 40
	ora [$7C.b],Y		; 17 7C
	bcs  24.b		; B0 18
	ora ($03.b,X)		; 01 03
	cpx $ED10.w		; EC 10 ED
	tay		; A8
	php		; 08
	trb $EBEA.w		; 1C EA EB
	tsb $1E.b		; 04 1E
	bra   7.b		; 80 07
	sbc ($0D.b,S),Y		; F3 0D
	ora $5C.b,S		; 03 5C
	lsr $EB08.w,X		; 5E 08 EB
	sty $1E.b		; 84 1E
	bra   7.b		; 80 07
	sbc ($04.b)		; F2 04
	lsr $E808.w,X		; 5E 08 E8
	bpl   1.b		; 10 01
	ora $7F40D7.l		; 0F D7 40 7F
	eor $18D7.w,X		; 5D D7 18
	ora $108701.l		; 0F 01 87 10
	sbc $08A8.w		; ED A8 08
	trb $D080.w		; 1C 80 D0
	cpy $07.b		; C4 07
	ora ($07.b,X)		; 01 07
	cpy #$0103.w		; C0 03 01
	eor $7D7303.l,X		; 5F 03 73 7D
	lsr $F408.w,X		; 5E 08 F4
	sty $01.b		; 84 01
	ora [$F2.b]		; 07 F2
	sty $5E.b		; 84 5E
	php		; 08
	pea $0184.w		; F4 84 01
	ora [$F2.b]		; 07 F2
	sty $E7.b		; 84 E7
	bpl   3.b		; 10 03
	cmp [$70.b],Y		; D7 70
	adc $18DA5D.l,X		; 7F 5D DA 18
	ora ($07.b,X)		; 01 07
	.db $82, $10, $F3		; 82 10 F3
	bra   3.b		; 80 03
	tay		; A8
	php		; 08
	ora [$80.b]		; 07 80
	iny		; C8
	cpy $01.b		; C4 01
	ora $07.b,S		; 03 07
	cpy #$0701.w		; C0 01 07
	eor $3D73F3.l,X		; 5F F3 73 3D
	lsr $3B08.w,X		; 5E 08 3B
	sty $03.b		; 84 03
	ora ($39.b,X)		; 01 39
	sty $3F.b		; 84 3F
	bra  63.b		; 80 3F
	bra  94.b		; 80 5E
	php		; 08
	tsa		; 3B
	sty $03.b		; 84 03
	ora ($39.b,X)		; 01 39
	sty $F6.b		; 84 F6
	bpl -61.b		; 10 C3
	beq 127.b		; F0 7F
	ora $F618A8.l		; 0F A8 18 F6
	bpl  -7.b		; 10 F9
	bra  15.b		; 80 0F
	bra -88.b		; 80 A8
	php		; 08
	ora ($80.b,X)		; 01 80
	ora $C4.b		; 05 C4
	ora [$1E.b]		; 07 1E
	bra -21.b		; 80 EB
	cpy $5F.b		; C4 5F
	eor ($73.b,S),Y		; 53 73
	ora $8801.w		; 0D 01 88
	ldy #$0304.w		; A0 04 03
	ora ($A2.b,X)		; 01 A2
	tsb $3A.b		; 04 3A
	ror $01.b		; 66 01
	dey		; 88
	ldy #$0304.w		; A0 04 03
	ora ($A2.b,X)		; 01 A2
	tsb $03.b		; 04 03
	bvc  23.b		; 50 17
	ora $01.b,S		; 03 01
	dey		; 88
	lda $2B.b		; A5 2B
	lda $88.b		; A5 88
	ora $A7.b,S		; 03 A7
	jmp.w [$0380]		; DC 80 03
	cpy #$0003.w		; C0 03 00
	pld		; 2B
	dey		; 88
	bcc -128.b		; 90 80
	pld		; 2B
	dey		; 88
	ora $F4.b,S		; 03 F4
	ora $882B00.l		; 0F 00 2B 88
	ldx $43.b,Y		; B6 43
	bra -26.b		; 80 E6
	bra -33.b		; 80 DF
	php		; 08
	pea $0380.w		; F4 80 03
	cpy #$000F.w		; C0 0F 00
	asl $A288.w,X		; 1E 88 A2
	bra -67.b		; 80 BD
	php		; 08
	lda $80.b,S		; A3 80
	ora $D4.b,S		; 03 D4
	ora $881E00.l		; 0F 00 1E 88
	sta [$18.b]		; 87 18
	adc ($80.b,X)		; 61 80
	sbc ($08.b,X)		; E1 08
	sbc $000380.l,X		; FF 80 03 00
	and [$70.b],Y		; 37 70
	trb $88.b		; 14 88
	ldx $0108.w,Y		; BE 08 01
	plb		; AB
	bra -44.b		; 80 D4
	stz $0F01.w		; 9C 01 0F
	adc $03.b,X		; 75 03
	brk $E2.b		; 00 E2
	trb $F6.b		; 14 F6
	stz $0180.w		; 9C 80 01
	ror $80.b,X		; 76 80
	ora [$14.b]		; 07 14
	dey		; 88
	cmp $D5.b,S		; C3 D5
	adc [$75.b],Y		; 77 75
	ora ($90.b,X)		; 01 90
	cmp $80.b,S		; C3 80
	ora ($07.b,X)		; 01 07
	ora ($C4.b,X)		; 01 C4
	bra  59.b		; 80 3B
	bcc   7.b		; 90 07
	plx		; FA
	bra   5.b		; 80 05
	ora [$01.b]		; 07 01
	cop $04.b		; 02 04
	ora $5F757F.l		; 0F 7F 75 5F
	eor $14E5.w,X		; 5D E5 14
	cpx $84.b		; E4 84
	cmp $80.b,S		; C3 80
	ora ($25.b,X)		; 01 25
	ora ($77.b,X)		; 01 77
	bra   1.b		; 80 01
	ora ($90.b,X)		; 01 90
	cmp $80.b,S		; C3 80
	ora ($07.b,X)		; 01 07
	ora ($FC.b,X)		; 01 FC
	sty $03.b		; 84 03
	cop $C3.b		; 02 C3
	sbc ($DF.b,S),Y		; F3 DF
	jmp ($902B.w,X)		; 7C 2B 90
	sep #$80		; E2 80
	lda $80.b,X		; B5 80
	ldx $80.b,Y		; B6 80
	sbc ($80.b,X)		; E1 80
	pld		; 2B
	bcc -32.b		; 90 E0
	bra   7.b		; 80 07
	bcs -128.b		; B0 80
	ldx $80.b,Y		; B6 80
	ora [$04.b]		; 07 04
	ora $DF.b,S		; 03 DF
	jmp ($5F3F.w,X)		; 7C 3F 5F
	inx		; E8
	trb $01.b		; 14 01
	tsb $03.b		; 04 03
	stx $80.b,Y		; 96 80
	sta [$80.b],Y		; 97 80
	.db $62, $80, $A2		; 62 80 A2
	pld		; 2B
	bcc -30.b		; 90 E2
	bra -75.b		; 80 B5
	bra -74.b		; 80 B6
	bra -26.b		; 80 E6
	sty $01.b		; 84 01
	ldy $D5C3.w		; AC C3 D5
	adc ($55.b,S),Y		; 73 55
	asl $D190.w,X		; 1E 90 D1
	bra  31.b		; 80 1F
	ora ($03.b,X)		; 01 03
	cpy $1E80.w		; CC 80 1E
	bcc -47.b		; 90 D1
	bra  31.b		; 80 1F
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	adc $DD5F35.l,X		; 7F 35 5F DD
	cpx $6D10.w		; EC 10 6D
	bra 108.b		; 80 6C
	bra   3.b		; 80 03
	and $80CC03.l,X		; 3F 03 CC 80
	asl $D190.w,X		; 1E 90 D1
	bra  31.b		; 80 1F
	ora ($03.b,X)		; 01 03
	cmp $3F84.w		; CD 84 3F
	cmp $80.b,S		; C3 80
	ora $00.b,S		; 03 00
	ora $55.b,S		; 03 55
	trb $90.b		; 14 90
	trb $90.b		; 14 90
	ora ($03.b,X)		; 01 03
	ora ($0F.b,X)		; 01 0F
	eor [$01.b],Y		; 57 01
	ora $00.b,S		; 03 00
	sei		; 78
	bcc   1.b		; 90 01
	ora $01.b,S		; 03 01
	adc $039014.l		; 6F 14 90 03
	brk $03.b		; 00 03
	brk $0B.b		; 00 0B
	sty $8C0B.w		; 8C 0B 8C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	phd		; 0B
	sty $8C0B.w		; 8C 0B 8C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $8C.b		; 06 8C
	asl $8C.b		; 06 8C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	asl $8C.b		; 06 8C
	asl $8C.b		; 06 8C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($8C.b,X)		; 01 8C
	ora ($8C.b,X)		; 01 8C
	ora $00.b,S		; 03 00
	ora $00.b,S		; 03 00
	ora ($8C.b,X)		; 01 8C
	ora ($8C.b,X)		; 01 8C
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
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $A2.b		; 00 A2
	brk $50.b		; 00 50
	dec A		; 3A
	inc $1473.w,X		; FE 73 14
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
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	bpl -112.b		; 10 90
	bpl  90.b		; 10 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	sty $28.b		; 84 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $7C1F.w,X		; 7E 1F 7C
	inc A		; 1A
	brk $1F.b		; 00 1F
	and $FF.b,X		; 35 FF
	adc $990000.l,X		; 7F 00 00 99
	ora ($BA.b)		; 12 BA
	asl $DB.b,X		; 16 DB
	inc A		; 1A
	jsr ($1D1E.w,X)		; FC 1E 1D
	and $10.b,S		; 23 10
	and ($1F.b)		; 32 1F
	phy		; 5A
	eor $729F66.l,X		; 5F 66 9F 72
	cmp $41047E.l,X		; DF 7E 04 41
	and $45.b		; 25 45
	lsr $49.b		; 46 49
	adc [$4D.b]		; 67 4D
	dey		; 88
	eor ($00.b),Y		; 51 00
	brk $04.b		; 00 04
	eor ($25.b,X)		; 41 25
	eor $46.b		; 45 46
	eor #$4D67.w		; 49 67 4D
	dey		; 88
	eor ($A9.b),Y		; 51 A9
	eor $CA.b,X		; 55 CA
	eor $5DEB.w,Y		; 59 EB 5D
	tsb $2D62.w		; 0C 62 2D
	ror $4E.b		; 66 4E
	ror A		; 6A
	adc $72906E.l		; 6F 6E 90 72
	lda ($76.b),Y		; B1 76
	cmp ($7A.b)		; D2 7A
	brk $00.b		; 00 00
	ora $3E23.w,X		; 1D 23 3E
	and [$5F.b]		; 27 5F
	pld		; 2B
	adc $339F2F.l,X		; 7F 2F 9F 33
	sty $42.b,X		; 94 42
	ora $665F5A.l,X		; 1F 5A 5F 66
	sta $7EDF72.l,X		; 9F 72 DF 7E
	dey		; 88
	eor ($A9.b),Y		; 51 A9
	eor $CA.b,X		; 55 CA
	eor $5DEB.w,Y		; 59 EB 5D
	tsb $0062.w		; 0C 62 00
	brk $67.b		; 00 67
	eor $5188.w		; 4D 88 51
	lda #$CA55.w		; A9 55 CA
	eor $5DEB.w,Y		; 59 EB 5D
	tsb $2D62.w		; 0C 62 2D
	ror $4E.b		; 66 4E
	ror A		; 6A
	adc $72906E.l		; 6F 6E 90 72
	lda ($76.b),Y		; B1 76
	cmp ($7A.b)		; D2 7A
	lsr $7F.b,X		; 56 7F
	phx		; DA
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $04.b		; 00 04
	eor ($71.b,X)		; 41 71
	lsr $7BDE.w,X		; 5E DE 7B
	mvn $55,$29		; 54 29 55
	and #$2D76.w		; 29 76 2D
	adc [$2D.b],Y		; 77 2D
	tya		; 98
	and ($99.b),Y		; 31 99
	and ($BA.b),Y		; 31 BA
	and $BB.b,X		; 35 BB
	and $DC.b,X		; 35 DC
	and $39DD.w,Y		; 39 DD 39
	inc $1F3D.w,X		; FE 3D 1F
	.db $42, $00		; 42 00
	brk $28.b		; 00 28
	jsl $692649.l		; 22 49 26 69
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
	and $0043F0.l,X		; 3F F0 43 00
	brk $6E.b		; 00 6E
	bvc  -1.b		; 50 FF
	adc $140013.l,X		; 7F 13 00 14
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
	brk $00.b		; 00 00
	cop $84.b		; 02 84
	bpl -112.b		; 10 90
	bpl  90.b		; 10 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	sty $28.b		; 84 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $7C1F.w,X		; 7E 1F 7C
	inc A		; 1A
	brk $1F.b		; 00 1F
	and $FF.b,X		; 35 FF
	adc $D34000.l,X		; 7F 00 40 D3
	ora ($F4.b,X)		; 01 F4
	ora ($15.b,X)		; 01 15
	asl $36.b		; 06 36
	asl A		; 0A
	eor [$0E.b],Y		; 57 0E
	lsr A		; 4A
	ora $4159.w,Y		; 19 59 41
	sta $D94D.w,Y		; 99 4D D9
	eor $6619.w,Y		; 59 19 66
	rti		; 40

	plp		; 28
	rts		; 60

	bit $3081.w		; 2C 81 30
	lda ($34.b,X)		; A1 34
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	bpl   2.b		; 10 02
	rti		; 40

	plp		; 28
	rts		; 60

	bit $3081.w		; 2C 81 30
	ldx #$C334.w		; A2 34 C3
	sec		; 38
	cpx $3C.b		; E4 3C
	ora $41.b		; 05 41
	and $45.b		; 25 45
	lsr $49.b		; 46 49
	adc [$4D.b]		; 67 4D
	dey		; 88
	eor ($A9.b),Y		; 51 A9
	eor $CA.b,X		; 55 CA
	eor $5DEB.w,Y		; 59 EB 5D
	tsb $0062.w		; 0C 62 00
	.db $42, $57		; 42 57
	asl A		; 0A
	sta $FB12.w,Y		; 99 12 FB
	asl $273D.w,X		; 1E 3D 27
	sta $429433.l,X		; 9F 33 94 42
	eor $9941.w,Y		; 59 41 99
	eor $59D9.w		; 4D D9 59
	ora $C266.w,Y		; 19 66 C2
	sec		; 38
	sbc $3C.b,S		; E3 3C
	tsb $41.b		; 04 41
	and $45.b		; 25 45
	lsr $49.b		; 46 49
	bpl  64.b		; 10 40
	lda ($34.b,X)		; A1 34
.ACCU 16
.INDEX 16
	rep #$38		; C2 38
	sbc $3C.b,S		; E3 3C
	tsb $41.b		; 04 41
	and $45.b		; 25 45
	lsr $49.b		; 46 49
	adc [$4D.b]		; 67 4D
	dey		; 88
	eor ($A9.b),Y		; 51 A9
	eor $CA.b,X		; 55 CA
	eor $5DEB.w,Y		; 59 EB 5D
	tsb $9062.w		; 0C 62 90
	ror $14.b		; 66 14
	adc [$39.b]		; 67 39
	adc [$10.b]		; 67 10
	and ($40.b,X)		; 21 40
	plp		; 28
	plb		; AB
	eor $18.b		; 45 18
	adc [$54.b]		; 67 54
	and #$2955.w		; 29 55 29
	ror $2D.b,X		; 76 2D
	adc [$2D.b],Y		; 77 2D
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
	bra   0.b		; 80 00
	lda $D77305.l,X		; BF 05 73 D7
	ora ($45.b),Y		; 11 45
	ora [$03.b]		; 07 03
	tsb $0404.w		; 0C 04 04
	clc		; 18
	php		; 08
	ora #$3102.w		; 09 02 31
	bpl   3.b		; 10 03
	tsb $08.b		; 04 08
	ora ($13.b,X)		; 01 13
	cmp ($D1.b,S),Y		; D3 D1
	eor $45.b		; 45 45
	iny		; C8
	beq  64.b		; F0 40
	clv		; B8
	bpl  64.b		; 10 40
	ldy #$2030.w		; A0 30 20
	cpx #$7030.w		; E0 30 70
	cpy #$2080.w		; C0 80 20
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	clc		; 18
	ora [$DF.b]		; 07 DF
	sbc $9407.w,X		; FD 07 94
	adc [$13.b],Y		; 77 13
	asl $0702.w,X		; 1E 02 07
	ora [$03.b]		; 07 03
	ora [$0A.b]		; 07 0A
	ora $7A.b		; 05 7A
	ora $FD.b		; 05 FD
	asl $0F.b		; 06 0F
	ora $01.b,S		; 03 01
	ora ($01.b,X)		; 01 01
	rts		; 60

	sbc $7FD7FF.l,X		; FF FF D7 7F
	cmp $F788.w,Y		; D9 88 F7
	bcc -17.b		; 90 EF
	rts		; 60

	wai		; CB
	cpy $FF.b		; C4 FF
	bra  -4.b		; 80 FC
	and $7F.b,S		; 23 7F
	cpx #$C33D.w		; E0 3D C3
	sbc [$80.b]		; E7 80
	ora $01391E.l		; 0F 1E 39 01
	ora [$07.b]		; 07 07
	and $0CEC0F.l		; 2F 0F EC 0C
	cpy #$F40B.w		; C0 0B F4
	ora $E0.b		; 05 E0
	sta ($20.b,X)		; 81 20
	jsr $225C.w		; 20 5C 22
	cpy #$8080.w		; C0 80 80
	jsr $0C20.w		; 20 20 0C
	bra  18.b		; 80 12
	brk $F4.b		; 00 F4
	brk $50.b		; 00 50
	ora $F5.b,S		; 03 F5
	ora $6B.b,S		; 03 6B
	sbc [$03.b],Y		; F7 03
	sbc [$00.b],Y		; F7 00
	sbc $5400.w,X		; FD 00 54
	sei		; 78
	lda [$78.b],Y		; B7 78
	sbc $FEFE.w,X		; FD FE FE
	sbc $FE78.w,X		; FD 78 FE
	sbc $FFFD.w,X		; FD FD FF
	pea $07F7.w		; F4 F7 07
	trb $3B07.w		; 1C 07 3B
	clc		; 18
	adc [$20.b]		; 67 20
	clc		; 18
	ora [$C0.b]		; 07 C0
	phk		; 4B
	stz $74.b		; 64 74
	rol A		; 2A
	sbc #$1F07.w		; E9 07 1F
	ora [$3F.b]		; 07 3F
	clc		; 18
	plp		; 28
	jsr $5450.w		; 20 50 54
	bit $EA.b,X		; 34 EA
	asl A		; 0A
	sbc $D47D.w,X		; FD 7D D4
	adc $80E080.l,X		; 7F 80 E0 80
	bmi  96.b		; 30 60
	cli		; 58
	bpl -112.b		; 10 90
	jmp $809088.l		; 5C 88 90 80
	php		; 08
	bra  96.b		; 80 60
	bcs -128.b		; B0 80
	cpx #$7840.w		; E0 40 78
	jsr $8098.w		; 20 98 80
	php		; 08
	bne -33.b		; D0 DF
	rti		; 40

	sbc $1D07.w,X		; FD 07 1D
	ora [$37.b]		; 07 37
	clc		; 18
	adc $20.b		; 65 20
	and $0640FE.l		; 2F FE 40 06
	tas		; 1B
	and $07.b,X		; 35 07
	ora $266F18.l		; 0F 18 6F 26
	bne  -1.b		; D0 FF
	rti		; 40

	adc $80.b,X		; 75 80
	cpx #$B080.w		; E0 80 B0
	rts		; 60

	tad		; 5B
	bpl -90.b		; 10 A6
	ora $BA.b,S		; 03 BA
	trb $6080.w		; 1C 80 60
	bvs -93.b		; 70 A3
	cpy #$FB9C.w		; C0 9C FB
	adc $7FD5.w,X		; 7D D5 7F
	sbc $0503FF.l,X		; FF FF 03 05
	ora ($06.b,X)		; 01 06
	asl $01.b		; 06 01
	ora $01.b,S		; 03 01
	tsb $07.b		; 04 07
	eor $FF.b		; 45 FF
	ora $01.b,S		; 03 01
	ora [$20.b]		; 07 20
	cop $40.b		; 02 40
	ora ($A0.b,X)		; 01 A0
	ora $40.b		; 05 40
	ora ($FF.b,X)		; 01 FF
	sbc $DD5555.l,X		; FF 55 55 DD
	sbc $62.b,S		; E3 62
	cmp $3EC5.w,X		; DD C5 3E
	eor ($A2.b,S),Y		; 53 A2
	tda		; 7B
	cop $77.b		; 02 77
	ora $B3.b		; 05 B3
	sta $55.b		; 85 55
	tsx		; BA
	sbc $D9.b,S		; E3 D9
	jsr $FC1C.w		; 20 1C FC
	sbc $0279.w,Y		; F9 79 02
	adc ($FC.b,S),Y		; 73 FC
	tas		; 1B
	mvn $FF,$F7		; 54 F7 FF
	php		; 08
	php		; 08
	ora ($32.b),Y		; 11 32
	clc		; 18
	sbc $31.b		; E5 31
	inc $FFE7.w,X		; FE E7 FF
	ora ($01.b,X)		; 01 01
	php		; 08
	clc		; 18
	and ($E6.b),Y		; 31 E6
	cmp ($FD.b,S),Y		; D3 FD
	wai		; CB
	mvn $FF,$FF		; 54 FF FF
	cpy #$4040.w		; C0 40 40
	tsb $C8.b		; 04 C8
	cpy #$84D4.w		; C0 D4 84
	sbc #$FF8C.w		; E9 8C FF
	rol $24.b		; 26 24
	rti		; 40

	cop $C0.b		; 02 C0
	sty $8C.b		; 84 8C
	cmp [$2D.b],Y		; D7 2D
	eor ($35.b),Y		; 51 35
	and $021F.w,Y		; 39 1F 02
	clc		; 18
	stz $20.b		; 64 20
	ora ($09.b,X)		; 01 09
	ora ($03.b,X)		; 01 03
	tas		; 1B
	tsb $1820.w		; 0C 20 18
	ora ($02.b,X)		; 01 02
	ora ($F7.b,X)		; 01 F7
	phb		; 8B
	sbc ($DF.b,X)		; E1 DF
	cpx #$07C0.w		; E0 C0 07
	cli		; 58
	tsb $C0.b		; 04 C0
	eor ($80.b)		; 52 80
	lda ($8C.b,X)		; A1 8C
	rol $C0.b		; 26 C0
	ora $44.b		; 05 44
	ora ($96.b,S),Y		; 13 96
	and ($29.b,X)		; 21 29
	sty $14A2.w		; 8C A2 14
	rol $89.b		; 26 89
	tax		; AA
	lsr $FF77.w		; 4E 77 FF
	pha		; 48
	rts		; 60

	tsb $8630.w		; 0C 30 86
	clc		; 18
	ora [$48.b]		; 07 48
	sed		; F8
	rts		; 60

	tsb $3080.w		; 0C 80 30
	asl $C0.b		; 06 C0
	clc		; 18
	sbc $355F1B.l,X		; FF 1B 5F 35
	sbc ($03.b)		; F2 03
	ora $010202.l,X		; 1F 02 02 01
	trb $18.b		; 14 18
	trb $1C.b		; 14 1C
	tsb $18.b		; 04 18
	tsb $12E0.w		; 0C E0 12
	jsr $1801.w		; 20 01 18
	trb $1004.w		; 1C 04 10
	jsr $57DF.w		; 20 DF 57
	eor $FF.b,X		; 55 FF
	lda $80BF60.l		; AF 60 BF 80
	sbc $EF1EDF.l,X		; FF DF 1E EF
	rts		; 60

	adc $1FFFFF.l,X		; 7F FF FF 1F
	adc $9CE0FF.l,X		; 7F FF E0 9C
	ora ($F8.b,X)		; 01 F8
	ora $F0.b,S		; 03 F0
	ora [$E0.b]		; 07 E0
	ora $FFAA95.l		; 0F 95 AA FF
	eor $BF.b,X		; 55 BF
	cpy #$0180.w		; C0 80 01
	ora $06.b,S		; 03 06
	ora $C01B.w		; 0D 1B C0
	ora $802040.l,X		; 1F 40 20 80
	rti		; 40

	ora ($80.b,X)		; 01 80
	ora $06.b,S		; 03 06
	ora $571B.w		; 0D 1B 57
	ora $01.b		; 05 01
	brk $F7.b		; 00 F7
	sbc $043C08.l,X		; FF 08 3C 04
	plp		; 28
	bpl  -1.b		; 10 FF
	ora [$00.b]		; 07 00
	ora ($2A.b,X)		; 01 2A
	xce		; FB
	sbc $02FF04.l,X		; FF 04 FF 02
	ora $01.b,S		; 03 01
	sbc $AE5509.l,X		; FF 09 55 AE
	sed		; F8
	sbc [$0F.b],Y		; F7 0F
	ora $07020A.l		; 0F 0A 02 07
	ora [$05.b]		; 07 05
	cop $F0.b		; 02 F0
	php		; 08
	cop $07.b		; 02 07
	rti		; 40

	cop $F0.b		; 02 F0
	pha		; 48
	and ($CF.b,X)		; 21 CF
	sbc $5455DF.l,X		; FF DF 55 54
	sed		; F8
	clv		; B8
	pha		; 48
	sec		; 38
	cld		; D8
	clv		; B8
	beq -64.b		; F0 C0
	rti		; 40

	lsr $04.b		; 46 04
	sec		; 38
	bmi  24.b		; 30 18
	rts		; 60

	sec		; 38
	cpx #$5810.w		; E0 10 58
	bra -16.b		; 80 F0
	rti		; 40

	bpl  36.b		; 10 24
	and $7F7FFF.l,X		; 3F FF 7F 7F
	stx $7F.b,Y		; 96 7F
	sei		; 78
	pha		; 48
	asl $5108.w		; 0E 08 51
	adc ($EE.b,X)		; 61 EE
	ror $31.b,X		; 76 31
	and $1251.w,Y		; 39 51 12
	lsr $36.b,X		; 56 36
	sei		; 78
	clc		; 18
	asl $200E.w		; 0E 0E 20
	rti		; 40

	bmi  96.b		; 30 60
	clc		; 18
	and ($08.b),Y		; 31 08
	ora ($DF.b)		; 12 DF
	eor ($4F.b,S),Y		; 53 4F
	ora ($6F.b,X)		; 01 6F
	cmp $206030.l,X		; DF 30 60 20
	cpy #$40C0.w		; C0 C0 40
	bra -128.b		; 80 80
	bra  95.b		; 80 5F
	rti		; 40

	rts		; 60

	rti		; 40

	rti		; 40

	bra  -1.b		; 80 FF
	sbc $8FF957.l,X		; FF 57 F9 8F
	inc $9FE0.w,X		; FE E0 9F
	sbc $E1FDC0.l,X		; FF C0 FD E1
	adc $FA96.w		; 6D 96 FA
	ora $BA75.w		; 0D 75 BA
	and $80FED4.l		; 2F D4 FE 80
	sta $90E2C0.l,X		; 9F C0 E2 90
	ora ($80.b,X)		; 01 80
	cop $C0.b		; 02 C0
	ora $FF.b		; 05 FF
	sbc $F8FD7D.l,X		; FF 7D FD F8
	cmp [$D5.b]		; C7 D5
	ror $3DCB.w,X		; 7E CB 3D
	ldx $8A.b,Y		; B6 8A
	lda $3F64.w		; AD 64 3F
	cpx #$33DF.w		; E0 DF 33
	sbc $54C1D7.l,X		; FF D7 C1 54
	trb $1C.b		; 14 1C
	php		; 08
	eor ($13.b,X)		; 41 13
	ora $330FE0.l,X		; 1F E0 0F 33
	ora $AFFFE7.l		; 0F E7 FF AF
	pei ($FB.b)		; D4 FB
	sbc $C45843.l,X		; FF 43 58 C4
	bcs -97.b		; B0 9F
	lda [$27.b],Y		; B7 27
	and [$27.b]		; 27 27
	sei		; 78
	phd		; 0B
	bra  64.b		; 80 40
	cli		; 58
	clv		; B8
	jsr $200F.w		; 20 0F 20
	ora [$0F.b],Y		; 17 0F
	ora $80.b,S		; 03 80
	bpl  64.b		; 10 40
	sbc $FB55FF.l,X		; FF FF 55 FB
	sbc $F20E.w,X		; FD 0E F2
	sbc $C37C.w		; ED 7C C3
	inx		; E8
	and [$25.b]		; 27 25
.ACCU 16
.INDEX 16
	rep #$BF		; C2 BF
	eor ($92.b),Y		; 51 92
	.db $62, $BA, $63		; 62 BA 63
	asl $030D.w		; 0E 0D 03
	ora ($18.b)		; 12 18
	cpy #$0DC0.w		; C0 C0 0D
	cpx #$C01C.w		; E0 1C C0
	and $14BD.w,X		; 3D BD 14
	mvn $01,$03		; 54 03 01
	ora ($07.b,X)		; 01 07
	cop $03.b		; 02 03
	ora $01.b,S		; 03 01
	asl $02.b		; 06 02
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	eor [$FF.b]		; 47 FF
	lda #$7FFF.w		; A9 FF 7F
	sbc $E06080.l,X		; FF 80 60 E0
	rts		; 60

	bra -32.b		; 80 E0
	bmi -128.b		; 30 80
	bvs  48.b		; 70 30
	sbc $010301.l,X		; FF 01 03 01
	rts		; 60

	tsb $E0.b		; 04 E0
	ora ($80.b,X)		; 01 80
	tsb $30.b		; 04 30
	cop $FF.b		; 02 FF
	adc ($55.b,S),Y		; 73 55
	ora ($23.b),Y		; 11 23
	jsr ($83A3.w,X)		; FC A3 83
	sbc $4E79.w,Y		; F9 79 4E
	asl $1616.w		; 0E 16 16
	bvs  32.b		; 70 20
	jsr $83FC.w		; 20 FC 83
	adc $160E.w,Y		; 79 0E 16
	jsr $5FFF.w		; 20 FF 5F
	sbc $699F5F.l,X		; FF 5F 9F 69
	sbc $9AFF19.l,X		; FF 19 FF 9A
	tyx		; BB
	trb $0E5B.w		; 1C 5B 0E
	adc $962F22.l,X		; 7F 22 2F 96
	adc ($0B.b,X)		; 61 0B
	ora #$4A1B.w		; 09 1B 4A
	tas		; 1B
	sei		; 78
	trb $0EBA.w		; 1C BA 0E
	stz $DF03.w		; 9C 03 DF
	adc $B7FFF7.l		; 6F F7 FF B7
	lsr $AFFF.w,X		; 5E FF AF
	jsr $E860.w		; 20 60 E8
	rts		; 60

	rts		; 60

	tay		; A8
	bra -104.b		; 80 98
	cpx $4404.w		; EC 04 44
	pha		; 48
	tsb $8F1F.w		; 0C 1F 8F
	bra -128.b		; 80 80
	pha		; 48
	cpy #$2880.w		; C0 80 28
	sty $C4.b		; 84 C4
	tsb $6FEB.w		; 0C EB 6F
	lda $A8FF2B.l		; AF 2B FF A8
	ora #$0110.w		; 09 10 01
	and ($0F.b,X)		; 21 0F
	bvc  14.b		; 50 0E
	and $E80405.l,X		; 3F 05 04 E8
	ldx $0709.w		; AE 09 07
	clc		; 18
	and $3F5E1E.l		; 2F 1E 5E 3F
	ora $FB.b		; 05 FB
	and $F80DD7.l,X		; 3F D7 0D F8
	lsr A		; 4A
	asl $87.b		; 06 87
	sta ($8F.b,X)		; 81 8F
	cpy $0313.w		; CC 13 03
	trb $02DE.w		; 1C DE 02
	tsb $C075.w		; 0C 75 C0
	lsr $41.b		; 46 41
	sty $02C0.w		; 8C C0 02
	trb $E7C0.w		; 1C C0 E7
	cmp [$51.b]		; C7 51
	eor ($CC.b),Y		; 51 CC
	clv		; B8
	plp		; 28
	bra  86.b		; 80 56
	mvp $80,$80		; 44 80 80
	php		; 08
	bra -128.b		; 80 80
	plp		; 28
	clc		; 18
	mvp $84,$0C		; 44 0C 84
	bra -72.b		; 80 B8
	tyx		; BB
	rti		; 40

	sta $38.b,X		; 95 38
	clc		; 18
	bit $1024.w,X		; 3C 24 10
	plp		; 28
	sei		; 78
	bmi 120.b		; 30 78
	pha		; 48
	clc		; 18
	bpl  48.b		; 10 30
	bmi  48.b		; 30 30
	ldy #$4082.w		; A0 82 40
	brk $01.b		; 00 01
	cop $01.b		; 02 01
	ror $F701.w,X		; 7E 01 F7
	sbc $9C5451.l,X		; FF 51 54 9C
	inx		; E8
	bra  48.b		; 80 30
	bmi 118.b		; 30 76
	stz $C0.b		; 64 C0
	cpy #$C050.w		; C0 50 C0
	ldy #$0CE0.w		; A0 E0 0C
	bra -56.b		; 80 C8
	bne  32.b		; D0 20
	bit $90.b		; 24 90
	bra -85.b		; 80 AB
	tax		; AA
	sbc $10FFBF.l,X		; FF BF FF 10
	stz $FC.b,X		; 74 FC
	lda $C062.w,Y		; B9 62 C0
	sty $10.b		; 84 10
	bpl -16.b		; 10 F0
	stz $0F.b,X		; 74 0F
	jsr ($B803.w,X)		; FC 03 B8
	ora [$61.b]		; 07 61
	tsb $1CC2.w		; 0C C2 1C
	sty $3C.b		; 84 3C
	rts		; 60

	brk $C4.b		; 00 C4
	brk $40.b		; 00 40
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	sbc $AF.b,X		; F5 AF
	beq  -1.b		; F0 FF
	bra  96.b		; 80 60
	bpl -32.b		; 10 E0
	tsb $0210.w		; 0C 10 02
	trb $3201.w		; 1C 01 32
	rts		; 60

.ACCU 16
	rep #$60		; C2 60
	cpx #$1080.w		; E0 80 10
	jsr $4C1C.w		; 20 1C 4C
	and ($92.b)		; 32 92
	rts		; 60

	jsl $F043C2.l		; 22 C2 43 F0
	ora ($41.b,X)		; 01 41
	inc A		; 1A
	jsr ($0304.w,X)		; FC 04 03
	cop $E0.b		; 02 E0
	beq  -4.b		; F0 FC
	bra 112.b		; 80 70
	eor $11154F.l,X		; 5F 4F 15 11
	cld		; D8
	bcs 112.b		; B0 70
	rts		; 60

	rti		; 40

	bpl  32.b		; 10 20
	bmi  12.b		; 30 0C
	php		; 08
	rti		; 40

	bcc  80.b		; 90 50
	bpl  48.b		; 10 30
	php		; 08
	ora ($07.b,S),Y		; 13 07
	ora ($01.b,X)		; 01 01
	ora $01.b,S		; 03 01
	ora ($03.b,X)		; 01 03
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $5455FD.l,X		; FF FD 55 54
	eor $0221BF.l,X		; 5F BF 21 02
	cmp $C3.b,S		; C3 C3
	eor $01.b,S		; 43 01
	ora #$020D.w		; 09 0D 02
	rtl		; 6B

	ora $D1.b,S		; 03 D1
	eor ($BF.b,X)		; 41 BF
	cop $C3.b		; 02 C3
	ora ($02.b,X)		; 01 02
	ora $41.b,S		; 03 41
	sbc ($DC.b,S),Y		; F3 DC
	ora ($44.b),Y		; 11 44
	adc ($3E.b),Y		; 71 3E
	iny		; C8
	rti		; 40

	eor $02.b,S		; 43 02
	bra -128.b		; 80 80
	dey		; 88
	asl $04.b		; 06 04
	rol $8442.w,X		; 3E 42 84
	php		; 08
	cmp $55FF.w,X		; DD FF 55
	eor $044F8A.l,X		; 5F 8A 4F 04
	and $1F.b		; 25 1F
	cop $2E.b		; 02 2E
	tsb $7F.b		; 04 7F
	and $3F.b		; 25 3F
	ora ($1E.b)		; 12 1E
	tsb $3377.w		; 0C 77 33
	tas		; 1B
	ora ($01.b,X)		; 01 01
	tsb $20.b		; 04 20
	tsb $12.b		; 04 12
	tsb $FEBF.w		; 0C BF FE
	lda $03BFDA.l,X		; BF DA BF 03
	.db $42, $07		; 42 07
	cop $05.b		; 02 05
	cop $02.b		; 02 02
	bra   1.b		; 80 01
	cpy #$5080.w		; C0 80 50
	lda ($FF.b,X)		; A1 FF
	ora $04.b,S		; 03 04
	ora $04.b,S		; 03 04
	ora ($02.b,X)		; 01 02
	cop $01.b		; 02 01
	bra  96.b		; 80 60
	ora ($2B.b,X)		; 01 2B
	inc $FA27.w,X		; FE 27 FA
	sbc $C0407F.l,X		; FF 7F 40 C0
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	asl $01.b		; 06 01
	asl $3FBF.w		; 0E BF 3F
	rti		; 40

	cpy #$0201.w		; C0 01 02
	ora $04.b,S		; 03 04
	ora $08.b		; 05 08
	sbc $15D71B.l,X		; FF 1B D7 15
	cmp $252888.l,X		; DF 88 28 25
	ora $2D6A.w		; 0D 6A 2D
	cmp [$16.b]		; C7 16
	bpl  24.b		; 10 18
	sta ($E8.b,X)		; 81 E8
	bra  37.b		; 80 25
	lsr A		; 4A
	ora [$80.b]		; 07 80
	bcc  24.b		; 90 18
	bra  -9.b		; 80 F7
	bit $0011.w,X		; 3C 11 00
	dec $80BC.w,X		; DE BC 80
	cpy #$80C0.w		; C0 C0 80
	bra  19.b		; 80 13
	cop $80.b		; 02 80
	bra -68.b		; 80 BC
	cpy #$AEEF.w		; C0 EF AE
	eor ($25.b,S),Y		; 53 25
	bmi 120.b		; 30 78
	bmi 122.b		; 30 7A
	eor $62.b,X		; 55 62
	sta $FF.b,X		; 95 FF
	ror $FDFF.w,X		; 7E FF FD
	cop $30.b		; 02 30
	bmi  34.b		; 30 22
	.db $62, $62, $7E		; 62 62 7E
	cop $0B.b		; 02 0B
	plp		; 28
	ora $00.b,S		; 03 00
	ror $7EFF.w,X		; 7E FF 7E
	ora ($01.b,X)		; 01 01
	ror $EF7E.w,X		; 7E 7E EF
	ldx $2553.w		; AE 53 25
	asl $8F.b		; 06 8F
	asl $0F.b		; 06 0F
	ora #$0906.w		; 09 06 09
	asl $FE1C.w,X		; 1E 1C FE
	sty $0670.w		; 8C 70 06
	asl $06.b		; 06 06
	asl $0C.b		; 06 0C
	trb $B870.w		; 1C 70 B8
	ldx $9400.w,Y		; BE 00 94
	ror $FF7E.w,X		; 7E 7E FF
	ror $7E7E.w,X		; 7E 7E 7E
	sta ($06.b,X)		; 81 06
	adc $067E09.l,X		; 7F 09 7E 06
	asl $B8.b		; 06 B8
	tyx		; BB
	rti		; 40

	sta $04.b,X		; 95 04
	tsb $CE.b		; 04 CE
	rol A		; 2A
	tsb $CA.b		; 04 CA
	asl $0E04.w		; 0E 04 0E
	asl A		; 0A
	cpy $04.b		; C4 04
	tsb $04.b		; 04 04
	tsb $EF.b		; 04 EF
	ldx $2553.w		; AE 53 25
	tsb $0E.b		; 04 0E
	tsb $121E.w		; 0C 1E 12
	clc		; 18
	bit $FC.b		; 24 FC
	beq  -8.b		; F0 F8
	bpl -32.b		; 10 E0
	tsb $04.b		; 04 04
	tsb $3818.w		; 0C 18 38
	beq -32.b		; F0 E0
	bra -70.b		; 80 BA
	brk $30.b		; 00 30
	bra -128.b		; 80 80
	lda $3F7F3F.l,X		; BF 3F 7F 3F
	and $2E003F.l,X		; 3F 3F 00 2E
	brk $0C.b		; 00 0C
	ror $FF7E.w,X		; 7E 7E FF
	ror $7E7E.w,X		; 7E 7E 7E
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	pha		; 48
	bmi  78.b		; 30 4E
	sbc $4DFF32.l,X		; FF 32 FF 4D
	bmi  48.b		; 30 30
	ror $3232.w,X		; 7E 32 32
	sbc $2553AE.l		; EF AE 53 25
	bmi 122.b		; 30 7A
	bmi 124.b		; 30 7C
	pha		; 48
	bmi  72.b		; 30 48
	ply		; 7A
	and ($7F.b)		; 32 7F
	and ($1E.b,X)		; 21 1E
	bmi  52.b		; 30 34
	bmi  48.b		; 30 30
	bmi  50.b		; 30 32
	asl $595A.w,X		; 1E 5A 59
	tax		; AA
	ldx $AA.b		; A6 AA
	lda #$65AA.w		; A9 AA 65
	ror A		; 6A
	tax		; AA
	lda $AA.b		; A5 AA
	ror A		; 6A
	tax		; AA
	eor $55.b,X		; 55 55
	ora $00.b		; 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	eor $0505.w		; 4D 05 05
	pea $A003.w		; F4 03 A0
	cop $01.b		; 02 01
	ora $0E.b,S		; 03 0E
	cop $34.b		; 02 34
	tsb $01.b		; 04 01
	ora ($03.b,X)		; 01 03
	ora $0FD5FF.l		; 0F FF D5 0F
	inx		; E8
	and $018E1C.l		; 2F 1C 8E 01
	adc $010701.l,X		; 7F 01 07 01
	adc $0D0682.l,X		; 7F 82 06 0D
	tsb $C0.b		; 04 C0
	cpy #$7070.w		; C0 70 70
	adc $02F9.w,X		; 7D F9 02
	beq  -1.b		; F0 FF
	sbc $6F6AF5.l,X		; FF F5 6A 6F
	sbc ($DF.b,X)		; E1 DF
.ACCU 16
.INDEX 16
	rep #$B7		; C2 B7
	bra  63.b		; 80 3F
	jsr $0CF3.w		; 20 F3 0C
	sbc [$08.b],Y		; F7 08
	sbc $EB03.w,X		; FD 03 EB
	inc A		; 1A
	asl $783C.w,X		; 1E 3C 78
	ora ($C0.b,X)		; 01 C0
	ora [$1F.b]		; 07 1F
	jsr ($04E0.w,X)		; FC E0 04
	eor $A9.b,X		; 55 A9
	ldy #$80AA.w		; A0 AA 80
	bmi  88.b		; 30 58
	trb $03.b		; 14 03
	bra -128.b		; 80 80
	ora ($30.b,X)		; 01 30
	pha		; 48
	mvp $40,$03		; 44 03 40
	bra  -1.b		; 80 FF
	sbc $7F4001.l,X		; FF 01 40 7F
	sbc $7FFF7F.l,X		; FF 7F FF 7F
	sbc $F3FF8C.l,X		; FF 8C FF F3
	sbc $0CFFEF.l,X		; FF EF FF 0C
	sbc $F7FFEB.l,X		; FF EB FF F7
	cop $55.b		; 02 55
	eor $95C003.l		; 4F 03 C0 95
	adc $13.b,X		; 75 13
	tsb $C8.b		; 04 C8
	cpy #$C0C0.w		; C0 C0 C0
	ora ($FF.b),Y		; 11 FF
	sbc $C12222.l,X		; FF 22 22 C1
	sbc $FF0003.l,X		; FF 03 00 FF
	ora ($01.b,X)		; 01 01
	bit $34.b,X		; 34 34
	rol A		; 2A
	rol A		; 2A
	tsb $04.b		; 04 04
	ora ($13.b,S),Y		; 13 13
	sbc $EFF5FF.l,X		; FF FF F5 EF
	and ($0C.b,S),Y		; 33 0C
	pea $1608.w		; F4 08 16
	bpl  28.b		; 10 1C
	clc		; 18
	sty $94.b,X		; 94 94
	adc $60.b,S		; 63 60
	cop $20.b		; 02 20
	jsr $F8F8.w		; 20 F8 F8
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	adc $FFFFF5.l,X		; 7F F5 FF FF
	sbc ($08.b,S),Y		; F3 08
	rtl		; 6B

	ora $2B.b		; 05 2B
	mvp $55,$6D		; 44 6D 55
	ldy $987D.w,X		; BC 7D 98
	sbc $202C59.l,X		; FF 59 2C 20
	ldy $B1.b,X		; B4 B1
	pei ($91.b)		; D4 91
	bcc -109.b		; 90 93
	tay		; A8
	txa		; 8A
	eor $40.b,S		; 43 40
	ora $3C.b,S		; 03 3C
	ora ($5D.b,S),Y		; 13 5D
	sbc $AFF5A7.l,X		; FF A7 F5 AF
	plb		; AB
	adc [$7C.b],Y		; 77 7C
	tas		; 1B
	ror $1D32.w		; 6E 32 1D
	sec		; 38
	inc A		; 1A
	.db $62, $41, $60		; 62 41 60
	bcc 112.b		; 90 70
	bpl  32.b		; 10 20
	.db $82, $58, $05		; 82 58 05
	rts		; 60

	bra -124.b		; 80 84
	ora ($60.b,X)		; 01 60
	bcc -11.b		; 90 F5
	sbc $DFFF8F.l,X		; FF 8F FF DF
	lda $FB18E7.l,X		; BF E7 18 FB
	cpy $FF.b		; C4 FF
	dex		; CA
	sed		; F8
	cpy $08F8.w		; CC F8 08
	phx		; DA
	plp		; 28
	adc $4B6D.w		; 6D 6D 4B
	phk		; 4B
	cpx #$F0C0.w		; E0 C0 F0
	cmp $D8.b,S		; C3 D8
	ora $380F98.l		; 0F 98 0F 38
	eor $7D.b,X		; 55 7D
	sbc $62FF1F.l,X		; FF 1F FF 62
	lda ($E8.b,S),Y		; B3 E8
	sbc $B8.b,X		; F5 B8
	cpy #$60A0.w		; C0 A0 60
	.db $82, $AF, $AF		; 82 AF AF
	cpy #$B0C0.w		; C0 C0 B0
	bcs -32.b		; B0 E0
	cpx #$30F0.w		; E0 F0 30
	sed		; F8
	php		; 08
	rts		; 60

	eor $55.b,X		; 55 55
	jsr ($03FF.w,X)		; FC FF 03
	ora $3D3F1F.l		; 0F 1F 3F 3D
	ror $6B.b,X		; 76 6B
	cmp [$03.b],Y		; D7 03
	ora $0F.b,S		; 03 0F
	ora $1E1F1F.l		; 0F 1F 1F 1E
	asl $3939.w,X		; 1E 39 39
	and [$37.b],Y		; 37 37
	adc $3FFF6F.l		; 6F 6F FF 3F
	ora $00.b,S		; 03 00
	beq  15.b		; F0 0F
	asl $121E.w,X		; 1E 1E 12
	ora ($04.b)		; 12 04
	tsb $C1.b		; 04 C1
	ora ($C2.b,X)		; 01 C2
	cop $04.b		; 02 04
	tsb $FF.b		; 04 FF
	sbc $40BBB8.l,X		; FF B8 BB 40
	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	pha		; 48
	bmi  78.b		; 30 4E
	sbc $4DFF32.l,X		; FF 32 FF 4D
	bmi  48.b		; 30 30
	ror $3232.w,X		; 7E 32 32
	jsr $0088.w		; 20 88 00
	brk $01.b		; 00 01
	ora ($7E.b,X)		; 01 7E
	adc $244E09.l,X		; 7F 09 4E 24
	pea $0814.w		; F4 14 08
	bmi   4.b		; 30 04
	tsb $0304.w		; 0C 04 03
	sei		; 78
	and $084020.l,X		; 3F 20 40 08
	sei		; 78
	ora ($F5.b,X)		; 01 F5
	sbc [$FF.b],Y		; F7 FF
	sbc $12.b,X		; F5 12
	and $4F3157.l		; 2F 57 31 4F
	asl A		; 0A
	dec $9D40.w,X		; DE 40 9D
	txs		; 9A
	sta ($04.b,X)		; 81 04
	ora ($0F.b,X)		; 01 0F
	cpx #$C01F.w		; E0 1F C0
	asl $3580.w		; 0E 80 35
	bra  63.b		; 80 3F
	ror $017C.w,X		; 7E 7C 01
	sed		; F8
	ora $FF.b,S		; 03 FF
	xba		; EB
	sbc $0176EA.l		; EF EA 76 01
	cld		; D8
	ora ($B0.b,S),Y		; 13 B0
	cmp [$A0.b]		; C7 A0
	ora $7F3FC0.l,X		; 1F C0 3F 7F
	sbc $F8FF03.l,X		; FF 03 FF F8
	ora ($E0.b,X)		; 01 E0
	ora [$0F.b]		; 07 0F
	cpy #$3F1F.w		; C0 1F 3F
	sbc $FF03FF.l,X		; FF FF 03 FF
	eor $F556F5.l,X		; 5F F5 56 F5
	and $3D3BC2.l,X		; 3F C2 3B 3D
	ora $361B.w		; 0D 1B 36
	jmp ($01D9.w)		; 6C D9 01
	lda ($03.b,S),Y		; B3 03
	sbc $1B0D04.l,X		; FF 04 0D 1B
	rol $6C.b,X		; 36 6C
	cld		; D8
	ora ($B0.b,X)		; 01 B0
	ora $C1.b,S		; 03 C1
	cmp $F4F3.w,X		; DD F3 F4
	sbc $480808.l,X		; FF 08 08 48
	iny		; C8
	php		; 08
	dey		; 88
	pha		; 48
	php		; 08
	xce		; FB
	xce		; FB
	php		; 08
	php		; 08
	ora ($11.b),Y		; 11 11
	php		; 08
	dey		; 88
	bra  10.b		; 80 0A
	cop $FD.b		; 02 FD
	sbc $C9555F.l,X		; FF 5F 55 C9
	lda $04.b,X		; B5 04
	cmp [$46.b]		; C7 46
	lda $93BD8C.l		; AF 8C BD 93
	ldx $AF.b,Y		; B6 AF
	xba		; EB
	stz $3BD4.w		; 9C D4 3B
	ldx $B6.b,Y		; B6 B6
	lsr A		; 4A
	lsr A		; 4A
	sec		; 38
	bvs  99.b		; 70 63
	eor $55381C.l		; 4F 1C 38 55
	eor $33.b		; 45 33
	jsr ($407F.w,X)		; FC 7F 40
	bra   8.b		; 80 08
	rti		; 40

	ora #$FF11.w		; 09 11 FF
	sbc $088080.l,X		; FF 80 80 08
	php		; 08
	bvs 112.b		; 70 70
	adc [$77.b],Y		; 77 77
	ora $300F00.l,X		; 1F 00 0F 30
	lda [$48.b],Y		; B7 48
	eor #$0148.w		; 49 48 01
	inc $01FE.w,X		; FE FE 01
	ora ($40.b,X)		; 01 40
	rti		; 40

	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $9C1459.l,X		; FF 59 14 9C
	trb $8E0C.w		; 1C 0C 8E
	tay		; A8
	inc $B9C2.w,X		; FE C2 B9
	ora #$A195.w		; 09 95 A1
	mvn $13,$55		; 54 55 13
	eor $1088.w,X		; 5D 88 10
	sec		; 38
	sty $AC.b		; 84 AC
	cld		; D8
	.db $42, $20		; 42 20
	and #$2001.w		; 29 01 20
	eor ($14.b,X)		; 41 14
	cmp $AAAFFF.l,X		; DF FF AF AA
	inc $02F6.w,X		; FE F6 02
	asl $0102.w		; 0E 02 01
	asl $01.b		; 06 01
	bra   1.b		; 80 01
	eor ($80.b,X)		; 41 80
	rti		; 40

	bra  12.b		; 80 0C
	sbc $02F7.w,X		; FD F7 02
	asl $0601.w		; 0E 01 06
	bra  65.b		; 80 41
	rti		; 40

	tsb $1FFF.w		; 0C FF 1F
	lda $C81A0E.l,X		; BF 0E 1A C8
	trb $18D8.w		; 1C D8 18
	bpl -32.b		; 10 E0
	cpy #$1020.w		; C0 20 10
	and ($21.b,X)		; 21 21
	ora $2F.b,S		; 03 2F
	sed		; F8
	cpy #$1018.w		; C0 18 10
	cpx #$10C0.w		; E0 C0 10
	ora ($20.b,X)		; 01 20
	sbc $55FFFF.l,X		; FF FF FF 55
	sta $DA0D.w		; 8D 0D DA
	asl A		; 0A
	lsr $7F0E.w		; 4E 0E 7F
	eor $2D2FFF.l,X		; 5F FF 2F 2D
	cmp $1D1D.w		; CD 1D 1D
	tas		; 1B
	tas		; 1B
	adc ($70.b,S),Y		; 73 70
	ldy $A0.b		; A4 A0
	cpx #$80E0.w		; E0 E0 80
	cpy #$2050.w		; C0 50 20
	pei ($07.b)		; D4 07
	eor $55.b,X		; 55 55
	cmp $80EFF3.l		; CF F3 EF 80
	eor ($63.b),Y		; 51 63
	ora [$10.b]		; 07 10
	asl $18.b		; 06 18
	eor $40405F.l,X		; 5F 5F 40 40
	and ($21.b,X)		; 21 21
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	bpl  16.b		; 10 10
	eor $51.b,X		; 55 51
	ora $F0.b,S		; 03 F0
	sbc $108C84.l,X		; FF 84 8C 10
	rti		; 40

	bit #$FF65.w		; 89 65 FF
	sbc $430808.l,X		; FF 08 08 43
	eor $EF.b,S		; 43 EF
	ldx $2553.w		; AE 53 25
	bmi 122.b		; 30 7A
	bmi 124.b		; 30 7C
	pha		; 48
	bmi  72.b		; 30 48
	ply		; 7A
	and ($7F.b)		; 32 7F
	and ($1E.b,X)		; 21 1E
	bmi  52.b		; 30 34
	bmi  48.b		; 30 30
	bmi  50.b		; 30 32
	asl $280B.w,X		; 1E 0B 28
	ora $00.b,S		; 03 00
	ror $7EFF.w,X		; 7E FF 7E
	ora ($01.b,X)		; 01 01
	ror $B87E.w,X		; 7E 7E B8
	ldx $9400.w,Y		; BE 00 94
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFC.w,X)		; FC FC FC
	cop $0C.b		; 02 0C
	inc $FC12.w,X		; FE 12 FC
	tsb $280C.w		; 0C 0C 28
	bra   0.b		; 80 00
	brk $01.b		; 00 01
	ora ($FC.b,X)		; 01 FC
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $FE.b,X		; 95 FE
	jsr ($F2FE.w,X)		; FC FE F2
	tsb $1E12.w		; 0C 12 1E
	clc		; 18
	bit $0C24.w,X		; 3C 24 0C
	tsb $180C.w		; 0C 0C 18
	clc		; 18
	bra -126.b		; 80 82
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	jsr ($F400.w,X)		; FC 00 F4
	brk $A0.b		; 00 A0
	cpy #$80F8.w		; C0 F8 80
	sbc $F8C010.l,X		; FF 10 C0 F8
	sbc $EFEEFF.l,X		; FF FF EE EF
	sbc $C0BF60.l,X		; FF 60 BF C0
	ora [$F9.b]		; 07 F9
	tsa		; 3B
	cmp [$5F.b]		; C7 5F
	lda $777FBF.l,X		; BF BF 7F 77
	sed		; F8
	stp		; DB
	sbc [$FF.b]		; E7 FF
	bra  -2.b		; 80 FE
	sbc $C703.w,Y		; F9 03 C7
	ora $7F1CBF.l		; 0F BF 1C 7F
	sed		; F8
	ora ($E7.b,X)		; 01 E7
	mvn $F0,$F5		; 54 F5 F0
	sbc $2B3C30.l,X		; FF 30 3C 2B
	ora [$1B.b],Y		; 17 1B
	rol $7C01.w,X		; 3E 01 7C
	ora $10.b,S		; 03 10
	bpl  28.b		; 10 1C
	trb $0F0F.w		; 1C 0F 0F
	ora [$07.b]		; 07 07
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	mvn $F3,$F1		; 54 F1 F3
	ora $06.b,S		; 03 06
	and $20E4.w,X		; 3D E4 20
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$0101.w		; C0 01 01
	asl $06.b		; 06 06
	sec		; 38
	sec		; 38
	cpy #$40C0.w		; C0 C0 40
	eor $00.b,X		; 55 00
	cmp $3810C0.l		; CF C0 10 38
	bpl  12.b		; 10 0C
	cpx #$10E0.w		; E0 E0 10
	bpl   8.b		; 10 08
	php		; 08
	stz $DF.b,X		; 74 DF
	bvs -33.b		; 70 DF
	ora $04.b,S		; 03 04
	ora $08.b,S		; 03 08
	bpl   8.b		; 10 08
	jsr $0210.w		; 20 10 02
	ora [$06.b]		; 07 06
	ora ($03.b,X)		; 01 03
	cop $01.b		; 02 01
	php		; 08
	asl A		; 0A
	bpl  16.b		; 10 10
	php		; 08
	asl $E5.b		; 06 E5
	lda $E0.b,S		; A3 E0
	sbc [$C0.b],Y		; F7 C0
	jsr $10C0.w		; 20 C0 10
	jsr $1008.w		; 20 08 10
	cpy #$C0F0.w		; C0 F0 C0
	cpy #$2020.w		; C0 20 20
	bpl -112.b		; 10 90
	rts		; 60

	cpy #$F090.w		; C0 90 F0
	bvc   0.b		; 50 00
	bit $1F00.w,X		; 3C 00 1F
	cpx #$1F1F.w		; E0 1F 1F
	cpx #$04E0.w		; E0 E0 04
	trb $00.b		; 14 00
	tsb $C080.w		; 0C 80 C0
	bra -128.b		; 80 80
	bra  21.b		; 80 15
	bvc  15.b		; 50 0F
	and ($C0.b,S),Y		; 33 C0
	rts		; 60

	rti		; 40

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	cpy #$11C0.w		; C0 C0 11
	mvp $0C,$03		; 44 03 0C
	cpx #$4020.w		; E0 20 40
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -33.b		; 80 DF
	adc $5FEECF.l,X		; 7F CF EE 5F
	ora $303020.l,X		; 1F 20 30 30
	bvs  56.b		; 70 38
	clc		; 18
	tsb $3A.b		; 04 3A
	ora [$11.b],Y		; 17 11
	tsb $05.b		; 04 05
	and $10201F.l,X		; 3F 1F 20 10
	bpl   8.b		; 10 08
	tsb $0C.b		; 04 0C
	ora $02.b,S		; 03 02
	ora $04.b		; 05 04
	sbc $2553AE.l		; EF AE 53 25
	tsb $0C1F.w		; 0C 1F 0C
	asl $0C12.w,X		; 1E 12 0C
	ora ($3C.b)		; 12 3C
	sec		; 38
	jsr ($E018.w,X)		; FC 18 E0
	tsb $0C0C.w		; 0C 0C 0C
	tsb $3818.w		; 0C 18 38
	cpx #$00AB.w		; E0 AB 00
	ora $00.b,S		; 03 00
	jsr ($FDFE.w,X)		; FC FE FD
	ora ($01.b,X)		; 01 01
	jsr ($EFFC.w,X)		; FC FC EF
	ldx $2553.w		; AE 53 25
	clc		; 18
	and $B810.w,X		; 3D 10 B8
	pha		; 48
	beq   8.b		; F0 08
	beq  48.b		; F0 30
	sei		; 78
	bit $1C.b		; 24 1C
	clc		; 18
	clc		; 18
	bcs -16.b		; B0 F0
	rts		; 60

	bmi  24.b		; 30 18
	phd		; 0B
	brk $03.b		; 00 03
	brk $FC.b		; 00 FC
	sbc $FCFCFC.l,X		; FF FC FC FC
	ora $E01FE0.l,X		; 1F E0 1F E0
	sbc $801040.l		; EF 40 10 80
	cpy #$8081.w		; C0 81 80
	adc $EC.b		; 65 EC
	bvc -40.b		; 50 D8
	cpy #$81C0.w		; C0 C0 81
	cop $64.b		; 02 64
	cmp $5FCFFF.l,X		; DF FF CF 5F
	xce		; FB
	sbc ($06.b)		; F2 06
	trb $0E.b		; 14 0E
	trb $2420.w		; 1C 20 24
	mvn $B2,$5A		; 54 5A B2
	jmp ($30A0.w,X)		; 7C A0 30
	cpy #$F0FC.w		; C0 FC F0
	tsb $10.b		; 04 10
	php		; 08
	jsr $4014.w		; 20 14 40
	rol A		; 2A
	bra -48.b		; 80 D0
	jsr $5545.w		; 20 45 55
	cmp $F3.b,S		; C3 F3
	ora ($01.b,S),Y		; 13 01
	rol $1C.b,X		; 36 1C
	php		; 08
	bvs -64.b		; 70 C0
	cpx $34EC.w		; EC EC 34
	bit $18.b,X		; 34 18
	clc		; 18
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	adc $000000.l,X		; 7F 00 00 00
	adc $011F01.l,X		; 7F 01 1F 01
	cop $01.b		; 02 01
	ora ($50.b,X)		; 01 50
	eor ($3C.b,X)		; 41 3C
	ora $F2.b,S		; 03 F2
	ora ($0C.b,X)		; 01 0C
	bra -16.b		; 80 F0
	beq  12.b		; F0 0C
	tsb $0303.w		; 0C 03 03
	ora $51.b,X		; 15 51
	ora $083403.l		; 0F 03 34 08
	jsr $0813.w		; 20 13 08
	asl $0B.b		; 06 0B
	phd		; 0B
	php		; 08
	php		; 08
	ora $03.b,S		; 03 03
	sbc $F555FF.l,X		; FF FF 55 F5
	lsr $5B4E.w		; 4E 4E 5B
	eor $272723.l,X		; 5F 23 27 27
	and $11.b		; 25 11
	ora ($9E.b)		; 12 9E
	stz $CCCB.w,X		; 9E CB CC
	sed		; F8
	inc $12B3.w,X		; FE B3 12
	sei		; 78
	ora ($34.b,X)		; 01 34
	sty $0151.w		; 8C 51 01
	and ($01.b),Y		; 31 01
	sed		; F8
	cmp $C040.w,X		; DD 40 C0
	ror $66.b		; 66 66
	sta $6666.w,Y		; 99 66 66
	ror $66.b		; 66 66
	ror $66.b		; 66 66
	ror $66.b		; 66 66
	ror $66.b		; 66 66
	ror $E8.b		; 66 E8
	ldx $2550.w		; AE 50 25
	sei		; 78
	dey		; 88
	bpl 104.b		; 10 68
	sec		; 38
	bpl  -4.b		; 10 FC
	cop $FC.b		; 02 FC
	bvs  16.b		; 70 10
	bpl  16.b		; 10 10
	jsr ($AEEF.w,X)		; FC EF AE
	eor ($25.b,S),Y		; 53 25
	ror $FF.b		; 66 FF
	ror $FF.b		; 66 FF
	adc #$0906.w		; 69 06 09
	ora $84FE0C.l		; 0F 0C FE 84
	sei		; 78
	ror $66.b		; 66 66
	asl $06.b		; 06 06
	asl $0C.b		; 06 0C
	sei		; 78
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	cpy $02FC.w		; CC FC 02
	inc $7830.w,X		; FE 30 78
	cpy $FC30.w		; CC 30 FC
	bmi  48.b		; 30 30
	bmi -17.b		; 30 EF
	ldx $2553.w		; AE 53 25
	jsr ($30FE.w,X)		; FC FE 30
	jsr ($1848.w,X)		; FC 48 18
	bit $3C.b		; 24 3C
	clc		; 18
	bit $1825.w,X		; 3C 25 18
	jsr ($30FC.w,X)		; FC FC 30
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	brk $2E.b		; 00 2E
	brk $0C.b		; 00 0C
	ror $FF7E.w,X		; 7E 7E FF
	ror $7E7E.w,X		; 7E 7E 7E
	sta $AB.b,X		; 95 AB
	sta $9659.w,Y		; 99 59 96
	ldx $EA.b		; A6 EA
	phy		; 5A
	eor $95.b,X		; 55 95
	tax		; AA
	tax		; AA
	eor $6B.b,X		; 55 6B
	tsx		; BA
	eor $01.b,X		; 55 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b),Y		; 11 80
	brk $A1.b		; 00 A1
	ora $00.b		; 05 00
	eor $00.b,X		; 55 00
	sbc $7F0701.l,X		; FF 01 07 7F
	sbc $070101.l,X		; FF 01 01 07
	ora [$7F.b]		; 07 7F
	adc $40FFFF.l,X		; 7F FF FF 40
	ora ($C0.b,X)		; 01 C0
	ora $7F.b,S		; 03 7F
	bra 127.b		; 80 7F
	adc $408080.l,X		; 7F 80 80 40
	ora $C0.b,X		; 15 C0
	and $0638C0.l,X		; 3F C0 38 06
	ora ($C0.b,X)		; 01 C0
	cpy #$3838.w		; C0 38 38
	asl $06.b		; 06 06
	ora ($01.b,X)		; 01 01
	brk $40.b		; 00 40
	brk $C0.b		; 00 C0
	bra -128.b		; 80 80
	bra  63.b		; 80 3F
	ora ($F3.b,S),Y		; 13 F3
	sbc $22E21D.l,X		; FF 1D E2 22
	jsl $804040.l		; 22 40 40 80
	dey		; 88
	tsb $FF.b		; 04 FF
	sbc $040303.l,X		; FF 03 03 04
	tsb $0B.b		; 04 0B
	phd		; 0B
	asl $06.b		; 06 06
	ora $07.b,S		; 03 07
	ora ($01.b,X)		; 01 01
	cmp ($CC.b,X)		; C1 CC
	sbc $04FFCF.l,X		; FF CF FF 04
	tsb $04.b		; 04 04
	tsb $06.b		; 04 06
	asl $FF.b		; 06 FF
	sbc $480404.l,X		; FF 04 04 48
	pha		; 48
	cop $02.b		; 02 02
	bra -128.b		; 80 80
	php		; 08
	php		; 08
	ora ($01.b,X)		; 01 01
	sbc $4501FF.l,X		; FF FF 01 45
	cmp $FFDEFF.l		; CF FF DE FF
	sbc [$FF.b],Y		; F7 FF
	nop		; EA
	sbc $F6FFFD.l,X		; FF FD FF F6
	sbc $FDFFFB.l,X		; FF FB FF FD
	sbc $A040FE.l,X		; FF FE 40 A0
	bcc  -1.b		; 90 FF
	sbc ($03.b,S),Y		; F3 03
	brk $F1.b		; 00 F1
	asl $0101.w		; 0E 01 01
	dey		; 88
	dey		; 88
	ror A		; 6A
	ror A		; 6A
	ora ($11.b),Y		; 11 11
	tsb $04.b		; 04 04
	trb $14.b		; 14 14
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $07FFFF.l,X		; 5F FF FF 07
	jsr ($D52C.w,X)		; FC 2C D5
	cpx $807D.w		; EC 7D 80
	tad		; 5B
	ldx $6EBC.w		; AE BC 6E
	sbc $FE67.w,X		; FD 67 FE
	lda ($80.b),Y		; B1 80
	bra  83.b		; 80 53
	bvc   3.b		; 50 03
	ora $25.b,S		; 03 25
	bit $6E47.w		; 2C 47 6E
	cop $66.b		; 02 66
	ora ($31.b),Y		; 11 31
	sbc $08FF49.l,X		; FF 49 FF 08
	adc $598126.l,X		; 7F 26 81 59
	ora ($80.b,X)		; 01 80
	ora ($03.b,X)		; 01 03
	ora ($02.b,X)		; 01 02
	ora ($FA.b,X)		; 01 FA
	rol $05.b		; 26 05
	eor $8001.w,Y		; 59 01 80
	ora ($03.b,X)		; 01 03
	cop $7F.b		; 02 7F
	eor $EF.b,X		; 55 EF
	inc $0D37.w,X		; FE 37 0D
	and ($06.b,S),Y		; 33 06
	tas		; 1B
	clc		; 18
	and $49.b,S		; 23 49
	eor $FF7F.w,X		; 5D 7F FF
	ora ($11.b,S),Y		; 13 11
	ora ($18.b),Y		; 11 18
	bit $3C20.w,X		; 3C 20 3C
	rol $08.b,X		; 36 08
	rol A		; 2A
	ora $7F19.w,Y		; 19 19 7F
	adc $E1FFF1.l,X		; 7F F1 FF E1
	eor [$FF.b],Y		; 57 FF
	bra  64.b		; 80 40
	bcc -55.b		; 90 C9
	sta $FFFAFC.l,X		; 9F FC FA FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $1920C0.l,X		; FF C0 20 19
	trb $E802.w		; 1C 02 E8
	ora $FFFF11.l,X		; 1F 11 FF FF
	sbc $50A7A9.l,X		; FF A9 A7 50
	pha		; 48
	pla		; 68
	bmi   8.b		; 30 08
	bpl -80.b		; 10 B0
	bvs -128.b		; 70 80
	rti		; 40

	clc		; 18
	jsr $20C0.w		; 20 C0 20
	jsr $505F.w		; 20 5F 50
	cli		; 58
	rts		; 60

	plp		; 28
	bpl  16.b		; 10 10
	jsr $18C0.w		; 20 C0 18
	cpy #$DF20.w		; C0 20 DF
	sbc $3EF747.l,X		; FF 47 F7 3E
	and $5C58.w,Y		; 39 58 5C
	bra  33.b		; 80 21
	and ($40.b,X)		; 21 40
	mvp $18,$18		; 44 18 18
	bcs  40.b		; B0 28
	jsr $C350.w		; 20 50 C3
	ora $58.b,S		; 03 58
	jsr $0444.w		; 20 44 04
	clc		; 18
	plp		; 28
	php		; 08
	rti		; 40

	bpl  -1.b		; 10 FF
	cmp [$FF.b],Y		; D7 FF
	lda $EEEA.w,X		; BD EA EE
	cmp $BFD4.w,X		; DD D4 BF
	bit $5C2E.w		; 2C 2E 5C
	cmp $FF3A.w,Y		; D9 3A FF
	cmp [$C1.b]		; C7 C1
	cop $F1.b		; 02 F1
	cpx #$C8EB.w		; E0 EB C8
	cmp ($10.b,S),Y		; D3 10
	lda $20.b,S		; A3 20
	tsb $80.b		; 04 80
	sta ($80.b,X)		; 81 80
	lda $FFD53C.l,X		; BF 3C D5 FF
	lda $BF3FEB.l,X		; BF EB 3F BF
	eor $D18453.l,X		; 5F 53 84 D1
	cop $A0.b		; 02 A0
	bvc  97.b		; 50 61
	ldy #$0387.w		; A0 87 03
	sbc $0FCF3F.l,X		; FF 3F CF 0F
	sta ($33.b,S),Y		; 93 33
	plp		; 28
	ora ($6D.b,X)		; 01 6D
	sta $7F031F.l		; 8F 1F 03 7F
	sbc $03CF.w,X		; FD CF 03
	brk $FF.b		; 00 FF
	rti		; 40

	rti		; 40

	bne -48.b		; D0 D0
	ldy #$4AA0.w		; A0 A0 4A
	lsr A		; 4A
	sta $85.b		; 85 85
	tsb $FF0C.w		; 0C 0C FF
	sbc $030001.l,X		; FF 01 00 03
	brk $FF.b		; 00 FF
	sbc $3001FF.l,X		; FF FF 01 30
	ora $00.b,S		; 03 00
	sbc $FF2020.l,X		; FF 20 20 FF
	sbc $FFF155.l,X		; FF 55 F1 FF
	sbc ($C0.b,S),Y		; F3 C0
	jsr $0810.w		; 20 10 08
	tsb $12.b		; 04 12
	bpl  13.b		; 10 0D
	tsb $C0C0.w		; 0C C0 C0
	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	sbc $57CFFF.l,X		; FF FF CF 57
	sbc $F1F1.w,Y		; F9 F1 F1
	sbc ($F7.b),Y		; F1 F7
	sbc [$F6.b],Y		; F7 F6
	sbc $FCFAFE.l,X		; FF FE FA FC
	sbc $3D3FFB.l,X		; FF FB 3F 3D
	cmp $0706C7.l		; CF C7 06 07
	asl $91.b		; 06 91
	ora ($91.b,X)		; 01 91
	ora $64.b		; 05 64
	bcc -120.b		; 90 88
	sbc [$FF.b],Y		; F7 FF
	sbc $02FDFF.l,X		; FF FF FD 02
	ora ($83.b,X)		; 01 83
	sta $04.b,S		; 83 04
	eor ($C1.b,X)		; 41 C1
	ora $D4.b		; 05 D4
	stz $B8.b		; 64 B8
	jsr ($C37B.w,X)		; FC 7B C3
	inc A		; 1A
	clc		; 18
	and ($20.b,X)		; 21 20
	xba		; EB
	pla		; 68
	bit $70.b,X		; 34 70
	ora $01.b		; 05 01
	bvs  32.b		; 70 20
	bcs   4.b		; B0 04
	eor $0B.b,S		; 43 0B
	sbc $D7FFDE.l		; EF DE FF D7
	sbc $580860.l,X		; FF 60 08 58
	and ($EA.b)		; 32 EA
	inc $C509.w		; EE 09 C5
	ora $27.b		; 05 27
	php		; 08
	jsr $0F0F.w		; 20 0F 0F
	php		; 08
	php		; 08
	cop $02.b		; 02 02
	inc $E4.b		; E6 E4
	ora ($01.b,X)		; 01 01
	cmp $E0.b		; C5 E0
	dey		; 88
	plp		; 28
	sbc $FC0378.l,X		; FF 78 03 FC
	phd		; 0B
	pea $C4C4.w		; F4 C4 C4
	sec		; 38
	sec		; 38
	php		; 08
	php		; 08
	bra -128.b		; 80 80
	bra  32.b		; 80 20
	sbc $D0D0FF.l,X		; FF FF D0 D0
	ldy $302C.w		; AC 2C 30
	bpl  -1.b		; 10 FF
	sbc $1CFFF7.l,X		; FF F7 FF 1C
	inc A		; 1A
	lda ($80.b),Y		; B1 80
	cmp $6B49.w,X		; DD 49 6B
	plb		; AB
	cmp $173F27.l,X		; DF 27 3F 17
	and [$13.b]		; 27 13
	and [$0B.b],Y		; 37 0B
	xce		; FB
	inc A		; 1A
	adc $1F083E.l,X		; 7F 3E 08 1F
	phd		; 0B
	eor $070F47.l,X		; 5F 47 0F 07
	and $333723.l		; 2F 23 37 33
	sbc $F87F.w,Y		; F9 7F F8
	adc $40C0FF.l,X		; 7F FF C0 40
	lsr $C6.b		; 46 C6
	asl A		; 0A
	cop $84.b		; 02 84
	cpy $C080.w		; CC 80 C0
	bpl  16.b		; 10 10
	cpy #$C6C0.w		; C0 C0 C6
	.db $42, $0A		; 42 0A
	stx $AC8C.w		; 8E 8C AC
	cpy #$10E0.w		; C0 E0 10
	bpl   1.b		; 10 01
	sta $FFC3.w		; 8D C3 FF
	sbc $021901.l,X		; FF 01 19 02
	rti		; 40

	sbc $0101FF.l,X		; FF FF 01 01
	asl $120F.w		; 0E 0F 12
	asl $6060.w		; 0E 60 60
	bra -64.b		; 80 C0
	eor $3D.b,X		; 55 3D
	sbc $02FE1A.l,X		; FF 1A FE 02
	asl $8275.w		; 0E 75 82
	asl A		; 0A
	ora ($01.b,X)		; 01 01
	ora ($FC.b,X)		; 01 FC
	sbc $0E0C.w,X		; FD 0C 0E
	bvs 124.b		; 70 7C
	bra -15.b		; 80 F1
	bra   2.b		; 80 02
	ora ($B7.b,X)		; 01 B7
	sbc [$D3.b],Y		; F7 D3
	xce		; FB
	sbc $0101FC.l,X		; FF FC 01 01
	ora ($01.b,X)		; 01 01
	ora $05.b,S		; 03 05
	ora [$04.b]		; 07 04
	tsb $160A.w		; 0C 0A 16
	sbc $0101FC.l,X		; FF FC 01 01
	ora ($01.b,X)		; 01 01
	ora $02.b		; 05 02
	tsb $08.b		; 04 08
	asl $16.b		; 06 16
	eor $3DDF15.l,X		; 5F 15 DF 3D
	and $C0ACC0.l		; 2F C0 AC C0
	mvp $28,$54		; 44 54 28
	mvp $0F,$80		; 44 80 0F
	ora $44600C.l,X		; 1F 0C 60 44
	cpy $90.b		; C4 90
	plp		; 28
	stz $20.b		; 64 20
	bmi -80.b		; 30 B0
	sbc $7EFF.w,X		; FD FF 7E
	cmp $40AD7F.l,X		; DF 7F AD 40
	ror $40.b		; 66 40
	tsb $D984.w		; 0C 84 D9
	sty $0992.w		; 8C 92 09
	and $03.b		; 25 03
	ply		; 7A
	ora [$80.b]		; 07 80
	bit $4481.w,X		; 3C 81 44
	cop $08.b		; 02 08
	bra   4.b		; 80 04
	ora ($08.b),Y		; 11 08
	ora $26.b,S		; 03 26
	ora ($FF.b),Y		; 11 FF
	sbc $1FAFFF.l,X		; FF FF AF 1F
	asl $1938.w		; 0E 38 19
	adc ($36.b),Y		; 71 36
	inc $69.b		; E6 69
	wai		; CB
	cmp [$B7.b],Y		; D7 B7
	sta $EB2F7F.l		; 8F 7F 2F EB
	jmp $18FF0E.l		; 5C 0E FF 18
	inc $F830.w,X		; FE 30 F8
	rts		; 60

	sbc ($C1.b),Y		; F1 C1
	sbc [$81.b]		; E7 81
	cmp $CF5CAF.l		; CF AF 5C CF
	sbc [$03.b],Y		; F7 03
	adc $0A0CF3.l,X		; 7F F3 0C 0A
	asl A		; 0A
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	cpx #$F8E1.w		; E0 E1 F8
	asl $FF78.w,X		; 1E 78 FF
	sbc $0FE0E0.l,X		; FF E0 E0 0F
	sbc $780FE8.l		; EF E8 0F 78
	sbc $F511FF.l,X		; FF FF 11 F5
	asl $7EFE.w		; 0E FE 7E
	inc $FEF6.w,X		; FE F6 FE
	ldx $DFFE.w,Y		; BE FE DF
	sbc $6FFFFF.l,X		; FF FF FF 6F
	adc $F81F13.l,X		; 7F 13 1F F8
	cop $01.b		; 02 01
	bra  97.b		; 80 61
	bra -112.b		; 80 90
	cpx #$3FF1.w		; E0 F1 3F
	ora $00.b,S		; 03 00
	sbc $589090.l,X		; FF 90 90 58
	cli		; 58
	bit $122C.w		; 2C 2C 12
	ora ($89.b)		; 12 89
	bit #$FFFF.w		; 89 FF FF
	and ($C3.b),Y		; 31 C3
	and $C080C3.l,X		; 3F C3 80 C0
	bra -32.b		; 80 E0
	cpy #$A0B0.w		; C0 B0 A0
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $D520.w		; 20 20 D5
	eor ($3F.b,S),Y		; 53 3F
	sbc ($20.b,S),Y		; F3 20
	ora ($0E.b),Y		; 11 0E
	ora ($01.b,X)		; 01 01
	and ($01.b,X)		; 21 01
	jsr $2010.w		; 20 10 20
	jsr $1111.w		; 20 11 11
	asl $200E.w		; 0E 0E 20
	jsr $2020.w		; 20 20 20
	bpl  16.b		; 10 10
	sbc $0001FF.l,X		; FF FF 01 00
	sty $FF.b		; 84 FF
	sbc [$FF.b]		; E7 FF
	phy		; 5A
	sbc $F7FFBD.l,X		; FF BD FF F7
	sbc $F7FF7F.l,X		; FF 7F FF F7
	sbc $FFFFFB.l,X		; FF FB FF FF
	ora ($04.b,X)		; 01 04
	ora $80FF00.l		; 0F 00 FF 80
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sbc $5555FF.l,X		; FF FF 55 55
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFF.w,X		; FD FF FD
	inc $FDFF.w,X		; FE FF FD
	jsr ($FFFF.w,X)		; FC FF FF
	inc $FFFE.w,X		; FE FE FF
	inc $0402.w,X		; FE 02 04
	trb $80.b		; 14 80
	pha		; 48
	cop $26.b		; 02 26
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $18.b,X		; 95 18
	clc		; 18
	bit $1824.w,X		; 3C 24 18
	and [$7F.b]		; 27 7F
	ora $267F.w,Y		; 19 7F 26
	clc		; 18
	clc		; 18
	and $001919.l,X		; 3F 19 19 00
	dey		; 88
	brk $00.b		; 00 00
	bra  63.b		; 80 3F
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $FF.b,X		; 95 FF
	ror $79FF.w,X		; 7E FF 79
	asl $09.b		; 06 09
	ora $121E0C.l		; 0F 0C 1E 12
	asl $06.b		; 06 06
	asl $0C.b		; 06 0C
	tsb $80A0.w		; 0C A0 80
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	ror $0445.w,X		; 7E 45 04
	cmp $04F80C.l		; CF 0C F8 04
	cop $01.b		; 02 01
	sed		; F8
	sed		; F8
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	sbc $1555FF.l,X		; FF FF 55 15
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	ora [$07.b]		; 07 07
	asl $190F.w		; 0E 0F 19
	ora $6F3F37.l,X		; 1F 37 3F 6F
	adc $3E7F5F.l,X		; 7F 5F 7F 3E
	cop $04.b		; 02 04
	php		; 08
	bpl  32.b		; 10 20
	rti		; 40

	eor ($55.b),Y		; 51 55
	beq  -1.b		; F0 FF
	ora ($02.b,X)		; 01 02
	tsb $08.b		; 04 08
	bpl  32.b		; 10 20
	cpy #$0101.w		; C0 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	jsr $3420.w		; 20 20 34
	eor $80F33C.l,X		; 5F 3C F3 80
	cpy #$6080.w		; C0 80 60
	rti		; 40

	cpy #$10C0.w		; C0 C0 10
	php		; 08
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	adc $F57AE0.l,X		; 7F E0 7A F5
	ora $3FF830.l		; 0F 30 F8 3F
	dey		; 88
	beq -128.b		; F0 80
	sbc $C0FF81.l,X		; FF 81 FF C0
	cmp $C0F03F.l		; CF 3F F0 C0
	asl $8061.w,X		; 1E 61 80
	sbc $FFFF7E.l,X		; FF 7E FF FF
	cmp $8BFFEF.l,X		; DF EF FF 8B
	mvp $E4,$CC		; 44 CC E4
	bcc  64.b		; 90 40
	bit $1C10.w,X		; 3C 10 1C
	php		; 08
	tsb $8004.w		; 0C 04 80
	ldx $C2.b		; A6 C2
	asl $36.b		; 06 36
	ora $AD.b		; 05 AD
	bvs -62.b		; 70 C2
	asl $0E22.w,X		; 1E 22 0E
	bra   4.b		; 80 04
	eor ($01.b),Y		; 51 01
	dec A		; 3A
	cpy #$FFF3.w		; C0 F3 FF
	ora $00.b,S		; 03 00
	cpy #$203F.w		; C0 3F 20
	jsr $5050.w		; 20 50 50
	rts		; 60

	rts		; 60

	clc		; 18
	clc		; 18
	php		; 08
	php		; 08
	jsl $FFFF22.l		; 22 22 FF FF
	and ($FF.b,S),Y		; 33 FF
	and ($30.b,S),Y		; 33 30
	bpl -32.b		; 10 E0
	clc		; 18
	bpl  32.b		; 10 20
	jsr $1014.w		; 20 14 10
	plp		; 28
	plp		; 28
	bpl  16.b		; 10 10
	cpx #$10E0.w		; E0 E0 10
	bpl   8.b		; 10 08
	php		; 08
	ora $44.b,X		; 15 44
	cmp $405F0F.l		; CF 0F 5F 40
	jsr $8040.w		; 20 40 80
	eor $465D.w,X		; 5D 5D 46
	lsr $0C.b		; 46 0C
	tsb $1F1F.w		; 0C 1F 1F
	ora #$8109.w		; 09 09 81
	rol A		; 2A
	cmp $02FFF3.l		; CF F3 FF 02
	ora ($02.b,X)		; 01 02
	ora ($3F.b,X)		; 01 3F
	and $02C0C0.l,X		; 3F C0 C0 02
	cop $01.b		; 02 01
	ora ($03.b,X)		; 01 03
	ora $01.b,S		; 03 01
	ora ($55.b,X)		; 01 55
	brk $00.b		; 00 00
	brk $37.b		; 00 37
	and ($1B.b,S),Y		; 33 1B
	ora $055F.w		; 0D 5F 05
	bmi   0.b		; 30 00
	sbc $01FF03.l,X		; FF 03 FF 01
	sbc $1FFFFF.l,X		; FF FF FF 1F
	ora ($01.b,X)		; 01 01
	sbc $2553AE.l		; EF AE 53 25
	clc		; 18
	and $3E18.w,X		; 3D 18 3E
	bit $18.b		; 24 18
	bit $3D.b		; 24 3D
	ora $103F.w,Y		; 19 3F 10
	ora $181A18.l		; 0F 18 1A 18
	clc		; 18
	clc		; 18
	ora $0B0F.w,Y		; 19 0F 0B
	plp		; 28
	ora $00.b,S		; 03 00
	and $803F7F.l,X		; 3F 7F 3F 80
	bra  63.b		; 80 3F
	and $53AEEF.l,X		; 3F EF AE 53
	and $0C.b		; 25 0C
	asl $DC08.w,X		; 1E 08 DC
	ldy $78.b		; A4 78
	sty $78.b		; 84 78
	clc		; 18
	bit $0E12.w,X		; 3C 12 0E
	tsb $580C.w		; 0C 0C 58
	sei		; 78
	bmi  24.b		; 30 18
	tsb $A80B.w		; 0C 0B A8
	ora $00.b,S		; 03 00
	ror $7EFF.w,X		; 7E FF 7E
	ora ($01.b,X)		; 01 01
	ora ($7E.b,X)		; 01 7E
	ror $BEB8.w,X		; 7E B8 BE
	brk $94.b		; 00 94
	ror $FF7E.w,X		; 7E 7E FF
	ror $7E7E.w,X		; 7E 7E 7E
	sta ($06.b,X)		; 81 06
	adc $067E09.l,X		; 7F 09 7E 06
	asl $BE.b		; 06 BE
	tyx		; BB
	rti		; 40

	sta $0A.b,X		; 95 0A
	asl A		; 0A
	ora $0AFF0A.l,X		; 1F 0A FF 0A
	tsb $1EF2.w		; 0C F2 1E
	php		; 08
	trb $F424.w		; 1C 24 F4
	tsb $080C.w		; 0C 0C 08
	clc		; 18
	sbc $2553AE.l		; EF AE 53 25
	asl $8F.b		; 06 8F
	asl $0F.b		; 06 0F
	ora #$0906.w		; 09 06 09
	asl $FE1C.w,X		; 1E 1C FE
	sty $0670.w		; 8C 70 06
	asl $06.b		; 06 06
	asl $0C.b		; 06 0C
	trb $EF70.w		; 1C 70 EF
	ldx $2553.w		; AE 53 25
	bpl  56.b		; 10 38
	bmi 120.b		; 30 78
	mvp $94,$68		; 44 68 94
	inc $EEC4.w,X		; FE C4 EE
	rol A		; 2A
	dec $10.b		; C6 10
	bpl  56.b		; 10 38
	pla		; 68
	jmp ($C4C4.w)		; 6C C4 C4
	brk $2E.b		; 00 2E
	brk $0C.b		; 00 0C
	ror $FF7E.w,X		; 7E 7E FF
	ror $7E7E.w,X		; 7E 7E 7E
	adc #$D9BA.w		; 69 BA D9
	phy		; 5A
	tax		; AA
	plb		; AB
	lda $AE6A.w		; AD 6A AE
	inc $AE59.w		; EE 59 AE
	tax		; AA
	phy		; 5A
	eor $55.b,X		; 55 55
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	and $AA06.w		; 2D 06 AA
	cop $01.b		; 02 01
	brk $03.b		; 00 03
	trb $4020.w		; 1C 20 40
	bra  -1.b		; 80 FF
	ror A		; 6A
	eor $C1.b,X		; 55 C1
	and $031CE0.l,X		; 3F E0 1C 03
	sei		; 78
	ror $61.b		; 66 61
	ror $FF01.w,X		; 7E 01 FF
	sei		; 78
	sei		; 78
	asl $7F1E.w,X		; 1E 1E 7F
	adc $E80101.l,X		; 7F 01 01 E8
	sbc $200000.l,X		; FF 00 00 20
	rts		; 60

	rti		; 40

	cpx #$F860.w		; E0 60 F8
	sei		; 78
	sbc $677F3F.l,X		; FF 3F 7F 67
	ora $010AA0.l,X		; 1F A0 0A 01
	brk $03.b		; 00 03
	tsb $C030.w		; 0C 30 C0
	sbc $01002A.l,X		; FF 2A 00 01
	brk $0F.b		; 00 0F
	bvs -128.b		; 70 80
	sbc $2A03FF.l,X		; FF FF 03 2A
	brk $39.b		; 00 39
	dec $86.b		; C6 86
	asl $50.b		; 06 50
	bmi  20.b		; 30 14
	ora $0204.w		; 0D 04 02
	asl $0618.w,X		; 1E 18 06
	sbc $0000FF.l,X		; FF FF 00 00
	sbc $DFBF.w,X		; FD BF DF
	ldx $9EFF.w,Y		; BE FF 9E
	lda $CF7EDE.l		; AF DE 7E CF
	cmp [$6F.b],Y		; D7 6F
	tyx		; BB
	adc [$DD.b]		; 67 DD
	pld		; 2B
	sbc $0000F3.l,X		; FF F3 00 00
	sbc $DA.b		; E5 DA
	ora ($41.b,X)		; 01 41
	bit $C02C.w		; 2C 2C C0
	rti		; 40

	tya		; 98
	tya		; 98
	bmi  48.b		; 30 30
	rts		; 60

	cpx #$01CF.w		; E0 CF 01
	brk $00.b		; 00 00
	ora ($EF.b,S),Y		; 13 EF
	sty $80.b		; 84 80
	bmi  48.b		; 30 30
	php		; 08
	ora $0000FC.l		; 0F FC 00 00
	cpx #$20C0.w		; E0 C0 20
	rti		; 40

	ldy #$1340.w		; A0 40 13
	jsr $12CC.w		; 20 CC 12
	sbc $0000F0.l,X		; FF F0 00 00
	and #$0A1F.w		; 29 1F 0A
	cop $07.b		; 02 07
	asl $30.b		; 06 30
	bpl  24.b		; 10 18
	php		; 08
	asl A		; 0A
	cop $FF.b		; 02 FF
	sbc $D7C475.l,X		; FF 75 C4 D7
	cpx $E79A.w		; EC 9A E7
	lsr $A3.b,X		; 56 A3
	eor ($A2.b,S),Y		; 53 A2
	eor $44BEA3.l,X		; 5F A3 BE 44
	lda $A05E50.l,X		; BF 50 5E A0
	tsb $0907.w		; 0C 07 09
	cop $0C.b		; 02 0C
	ora ($01.b,X)		; 01 01
	ora $FF.b		; 05 FF
	sbc $BDF415.l,X		; FF 15 F4 BD
	adc ($BF.b,S),Y		; 73 BF
	adc [$5F.b],Y		; 77 5F
	tsx		; BA
	lda $58AF59.l,X		; BF 59 AF 58
	cmp $64A0.w,X		; DD A0 64
	cmp ($DF.b,X)		; C1 DF
	eor ($03.b,X)		; 41 03
	ora [$02.b]		; 07 02
	cop $1E.b		; 02 1E
	ora ($3F.b,X)		; 01 3F
	ora ($FF.b,X)		; 01 FF
	sbc $FC00.w,X		; FD 00 FC
	lda $7B.b,X		; B5 7B
	inc $39.b,X		; F6 39
	eor [$BA.b],Y		; 57 BA
	sbc $1D.b,S		; E3 1D
	sbc $271CDF.l,X		; FF DF 1C 27
	ldx $DF4E.w		; AE 4E DF
	jsr $50FE.w		; 20 FE 50
	sbc $77FF2C.l,X		; FF 2C FF 77
	sbc $FF9523.l,X		; FF 23 95 FF
	cld		; D8
	jsr $2020.w		; 20 20 20
	ora ($01.b,X)		; 01 01
	cop $05.b		; 02 05
	cop $01.b		; 02 01
	tsb $0C.b		; 04 0C
	asl $D8FF.w		; 0E FF D8
	jsr $0103.w		; 20 03 01
	tsb $08.b		; 04 08
	sbc $1DD57D.l,X		; FF 7D D5 1D
	sbc ($28.b),Y		; F1 28
	bvc  57.b		; 50 39
	adc [$31.b]		; 67 31
	eor $A6C026.l		; 4F 26 C0 A6
	asl $17.b		; 06 17
	ora [$40.b],Y		; 17 40
	dec $08.b		; C6 08
	eor [$EF.b],Y		; 57 EF
	asl $80.b		; 06 80
	asl $06.b		; 06 06
	bpl  -1.b		; 10 FF
	sbc $FF02B8.l,X		; FF B8 02 FF
	sta $EF27DF.l		; 8F DF 27 EF
	and ($CE.b,S),Y		; 33 CE
	and ($F8.b,S),Y		; 33 F8
	ora [$71.b]		; 07 71
	stx $E798.w		; 8E 98 E7
	cpy $FB.b		; C4 FB
	bvs  32.b		; 70 20
	sed		; F8
	sed		; F8
	bvs  67.b		; 70 43
	sbc $0000.w,X		; FD 00 00
	sbc $18E0FF.l,X		; FF FF E0 18
	sty $80.b		; 84 80
	rep #$C0		; C2 C0
	rts		; 60

	rts		; 60

	sbc $5554FF.l,X		; FF FF 54 55
	and $5E5FFF.l,X		; 3F FF 5F 5E
	sbc ($C9.b)		; F2 C9
	lsr $A5.b		; 46 A5
	stx $1F4D.w		; 8E 4D 1F
	sta $3C3B.w,X		; 9D 3B 3C
	adc ($7D.b)		; 72 7D
	ldy #$1804.w		; A0 04 18
	bmi  96.b		; 30 60
	cpy #$FF81.w		; C0 81 FF
	sbc $FB1515.l,X		; FF 15 15 FB
	xce		; FB
	sbc ($73.b,S),Y		; F3 73
	adc [$97.b],Y		; 77 97
	adc $1F369F.l,X		; 7F 9F 36 1F
	and [$1E.b],Y		; 37 1E
	lda [$9E.b],Y		; B7 9E
	sbc [$5E.b]		; E7 5E
	tsb $0C.b		; 04 0C
	php		; 08
	cpy #$40C0.w		; C0 C0 40
	sbc $4455D4.l,X		; FF D4 55 44
	sbc #$31F9.w		; E9 F9 31
	ora ($A1.b,X)		; 01 A1
	adc ($86.b,X)		; 61 86
	dec $80.b		; C6 80
	ora ($B0.b),Y		; 11 B0
	beq   6.b		; F0 06
	ora ($01.b,X)		; 01 01
	asl $80.b		; 06 80
	ldy #$FFFF.w		; A0 FF FF
	mvn $FF,$00		; 54 00 FF
	sbc $C2F7F7.l,X		; FF F7 F7 C2
.ACCU 16
	rep #$60		; C2 60
	cpx #$FF7F.w		; E0 7F FF
	sbc [$7F.b],Y		; F7 7F
	sbc $77BB77.l,X		; FF 77 BB 77
	php		; 08
	and $FF1F.w,X		; 3D 1F FF
	sbc [$54.b],Y		; F7 54
	bvc -18.b		; 50 EE
	eor $71.b,X		; 55 71
	eor ($EC.b),Y		; 51 EC
	tsb $0C.b		; 04 0C
	tsb $82.b		; 04 82
	asl $08.b		; 06 08
	php		; 08
	php		; 08
	ora [$0E.b]		; 07 0E
	rts		; 60

	stz $0804.w		; 9C 04 08
	ora ($BF.b,X)		; 01 BF
	sbc $C01500.l		; EF 00 15 C0
	lda $C060E0.l,X		; BF E0 60 C0
	cpy #$D1C0.w		; C0 C0 D1
	sbc ($E8.b),Y		; F1 E8
	sec		; 38
	rti		; 40

	cop $42.b		; 02 42
	cpy #$8060.w		; C0 60 80
	ora $F3.b,S		; 03 F3
	brk $00.b		; 00 00
	lda $80805F.l		; AF 5F 80 80
	bpl  16.b		; 10 10
	ldy #$FFA0.w		; A0 A0 FF
	and [$00.b],Y		; 37 00
	brk $8E.b		; 00 8E
	jsr ($3C72.w,X)		; FC 72 3C
	trb $30.b		; 14 30
	trb $0E08.w		; 1C 08 0E
	tsb $04.b		; 04 04
	ora $02.b,S		; 03 02
	ora $000000.l,X		; 1F 00 00 00
	cop $01.b		; 02 01
	cop $01.b		; 02 01
	ora ($FF.b,X)		; 01 FF
	adc $3816F7.l,X		; 7F F7 16 38
	cmp $81.b,X		; D5 81
	bra  14.b		; 80 0E
	asl $EA.b		; 06 EA
	adc $020E.w,Y		; 79 0E 02
	sei		; 78
	and $1330.w,X		; 3D 30 13
	bpl   2.b		; 10 02
	ora [$01.b]		; 07 01
	asl $0904.w		; 0E 04 09
	ora ($02.b,X)		; 01 02
	asl $03.b		; 06 03
	tas		; 1B
	nop		; EA
	tsa		; 3B
	stx $7F.b,Y		; 96 7F
	and $8002.w,X		; 3D 02 80
	ldy #$8080.w		; A0 80 80
	rti		; 40

	jsr $BDFF.w		; 20 FF BD
	cop $80.b		; 02 80
	bra  32.b		; 80 20
	bra -128.b		; 80 80
	jsr $7FFF.w		; 20 FF 7F
	sbc $DFCE2F.l,X		; FF 2F CE DF
	ora $3C05.w		; 0D 05 3C
	bit $121A.w		; 2C 1A 12
	asl $3C0C.w,X		; 1E 0C 3C
	inx		; E8
	sec		; 38
	jmp ($AC90.w)		; 6C 90 AC
	sbc $040109.l,X		; FF 09 01 04
	php		; 08
	ply		; 7A
	asl A		; 0A
	bit $181C.w,X		; 3C 1C 18
	cpx #$E76C.w		; E0 6C E7
	sbc $FD5FF3.l,X		; FF F3 5F FD
	sed		; F8
	ora #$1011.w		; 09 11 10
	and $2E.b,S		; 23 2E
	lsr $D834.w,X		; 5E 34 D8
	lda $F6.b		; A5 F6
	tax		; AA
	txa		; 8A
	sbc ($F0.b,S),Y		; F3 F0
	ora ($10.b,X)		; 01 10
	ora $20.b,S		; 03 20
	bpl  64.b		; 10 40
	rts		; 60

	bra -123.b		; 80 85
	asl A		; 0A
	and $4415CC.l,X		; 3F CC 15 44
	tda		; 7B
	mvn $C4,$07		; 54 07 C4
	tsb $80.b		; 04 80
	bpl  16.b		; 10 10
	bra -128.b		; 80 80
	ldy #$80C0.w		; A0 C0 80
	bpl -128.b		; 10 80
	sbc $0015FF.l,X		; FF FF 15 00
	lda $A8.b,X		; B5 A8
	plp		; 28
	bpl 104.b		; 10 68
	bvc -48.b		; 50 D0
	ldy #$6091.w		; A0 91 60
	jsl $8142C1.l		; 22 C1 42 81
	.db $82, $01, $40		; 82 01 40
	cpy #$1F80.w		; C0 80 1F
	eor ($00.b,S),Y		; 53 00
	brk $0F.b		; 00 0F
	sbc $288080.l,X		; FF 80 80 28
	beq -64.b		; F0 C0
	php		; 08
	bpl -17.b		; 10 EF
	inc $3265.w		; EE 65 32
	ora [$0C.b],Y		; 17 0C
	trb $04.b		; 14 04
	ora $04.b,S		; 03 04
	tsb $02.b		; 04 02
	tsb $08.b		; 04 08
	ora $04.b,S		; 03 04
	asl $03.b		; 06 03
	tsb $03.b		; 04 03
	tsb $02.b		; 04 02
	cop $01.b		; 02 01
	sbc $FDFF7F.l,X		; FF 7F FF FD
	sbc $3C3880.l,X		; FF 80 38 3C
	jmp ($7CFC.w,X)		; 7C FC 7C
	jmp ($383C.w,X)		; 7C 3C 38
	bpl  80.b		; 10 50
	rti		; 40

	pha		; 48
	pla		; 68
	jsr $F880.w		; 20 80 F8
	sty $24.b		; 84 24
	tsb $94.b		; 04 94
	tsb $0C.b		; 04 0C
	pla		; 68
	rti		; 40

	cli		; 58
	pha		; 48
	pla		; 68
	jsr $BBEE.w		; 20 EE BB
	bvc -107.b		; 50 95
	asl $1F0E.w		; 0E 0E 1F
	adc $0E.b,X		; 75 0E
	sta ($60.b),Y		; 91 60
	stz $60F0.w,X		; 9E F0 60
	inc $0A81.w,X		; FE 81 0A
	ror $6060.w		; 6E 60 60
	rts		; 60

	ror $DDF8.w,X		; 7E F8 DD
	rti		; 40

	cpy #$7E7E.w		; C0 7E 7E
	sta ($7E.b,X)		; 81 7E
	ror $66.b		; 66 66
	ror $66.b		; 66 66
	ror $66.b		; 66 66
	ror $6666.w,X		; 7E 66 66
	ror $BBB8.w,X		; 7E B8 BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	pha		; 48
	bmi  78.b		; 30 4E
	sbc $4DFF32.l,X		; FF 32 FF 4D
	bmi  48.b		; 30 30
	ror $3232.w,X		; 7E 32 32
	jsr $0088.w		; 20 88 00
	brk $01.b		; 00 01
	ora ($7E.b,X)		; 01 7E
	clv		; B8
	ldx $9400.w,Y		; BE 00 94
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFC.w,X)		; FC FC FC
	cop $0C.b		; 02 0C
	inc $FC12.w,X		; FE 12 FC
	tsb $000C.w		; 0C 0C 00
	.db $82, $00, $00		; 82 00 00
	ora ($FC.b,X)		; 01 FC
	and $000033.l,X		; 3F 33 00 00
	bpl -17.b		; 10 EF
	clc		; 18
	clc		; 18
	sty $C68C.w		; 8C 8C C6
	dec $E0.b		; C6 E0
	cpx #$C3C3.w		; E0 C3 C3
	ora ($41.b,X)		; 01 41
	sbc ($F3.b)		; F2 F3
	ora ($01.b,X)		; 01 01
	sta $06.b		; 85 06
	asl A		; 0A
	tsb $040C.w		; 0C 0C 04
	php		; 08
	bra -12.b		; 80 F4
	brk $E0.b		; 00 E0
	ora ($0F.b,X)		; 01 0F
	trb $05.b		; 14 05
	rol $02.b		; 26 02
	asl $1104.w		; 0E 04 11
	plx		; FA
	sbc $010014.l,X		; FF 14 00 01
	cop $02.b		; 02 02
	asl $03.b		; 06 03
	ora [$02.b]		; 07 02
	ora $0E0E05.l		; 0F 05 0E 0E
	ora $05.b		; 05 05
	ora $01.b,S		; 03 01
	ora ($BF.b,X)		; 01 BF
	sbc $54.b,X		; F5 54
	ldx #$0307.w		; A2 07 03
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora $0B.b,S		; 03 0B
	bpl -32.b		; 10 E0
	clc		; 18
	.db $82, $E1, $01		; 82 E1 01
	cop $03.b		; 02 03
	ora $18.b,S		; 03 18
	sbc $FF.b,S		; E3 FF
	sbc $1E7FD5.l,X		; FF D5 7F 1E
	bpl   9.b		; 10 09
	ora ($19.b,X)		; 01 19
	asl $1C.b,X		; 16 1C
	cpx $C0D0.w		; EC D0 C0
	sbc ($81.b,X)		; E1 81
	cmp $D74B.w		; CD 4B D7
	bmi -25.b		; 30 E7
	inc $E0.b,X		; F6 E0
	ora $0F.b,S		; 03 0F
	and $9F1EEF.l		; 2F EF 1E 9F
	bmi 120.b		; 30 78
	ora $007117.l		; 0F 17 71 00
	brk $04.b		; 00 04
	ora $80.b,S		; 03 80
	cpy #$0660.w		; C0 60 06
	cop $20.b		; 02 20
	ora [$C3.b],Y		; 17 C3
	brk $00.b		; 00 00
	eor $0408BF.l		; 4F BF 08 04
	.db $62, $60, $32		; 62 60 32
	bmi -15.b		; 30 F1
	ora ($00.b,X)		; 01 00
	brk $05.b		; 00 05
	ora $0404.w		; 0D 04 04
	tsb $14.b		; 04 14
	sbc $AD0F.w,Y		; F9 0F AD
	ora $FF.b,S		; 03 FF
	rti		; 40

	rti		; 40

	ldy #$4030.w		; A0 30 40
	asl A		; 0A
	bit $1E.b,X		; 34 1E
	ora $4080FF.l		; 0F FF 80 40
	jsr $0110.w		; 20 10 01
	asl $AEEF.w		; 0E EF AE
	eor ($25.b,S),Y		; 53 25
	rts		; 60

	inc $F060.w,X		; FE 60 F0
	bcc  96.b		; 90 60
	bcc -16.b		; 90 F0
	rts		; 60

	inc $3F41.w,X		; FE 41 3F
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rol $AEEF.w,X		; 3E EF AE
	eor ($25.b,S),Y		; 53 25
	ror $FF.b		; 66 FF
	ror $FF.b		; 66 FF
	adc #$0906.w		; 69 06 09
	asl $3E1C.w,X		; 1E 1C 3E
	mvp $66,$78		; 44 78 66
	ror $06.b		; 66 06
	asl $0C.b		; 06 0C
	trb $EF38.w		; 1C 38 EF
	ldx $2553.w		; AE 53 25
	bmi 122.b		; 30 7A
	bmi 124.b		; 30 7C
	pha		; 48
	bmi  72.b		; 30 48
	ply		; 7A
	and ($7F.b)		; 32 7F
	and ($1E.b,X)		; 21 1E
	bmi  52.b		; 30 34
	bmi  48.b		; 30 30
	bmi  50.b		; 30 32
	asl $280B.w,X		; 1E 0B 28
	ora $00.b,S		; 03 00
	ror $7EFF.w,X		; 7E FF 7E
	ora ($01.b,X)		; 01 01
	ror $EF7E.w,X		; 7E 7E EF
	ldx $2553.w		; AE 53 25
	tsb $0C1F.w		; 0C 1F 0C
	asl $0C12.w,X		; 1E 12 0C
	ora ($3C.b)		; 12 3C
	sec		; 38
	jsr ($E018.w,X)		; FC 18 E0
	tsb $0C0C.w		; 0C 0C 0C
	tsb $3818.w		; 0C 18 38
	cpx #$200B.w		; E0 0B 20
	ora $00.b,S		; 03 00
	jsr ($FCFF.w,X)		; FC FF FC
	ora ($FC.b,X)		; 01 FC
	jsr ($FFFF.w,X)		; FC FF FF
	sei		; 78
	dec $80E0.w,X		; DE E0 80
	sta $498620.l,X		; 9F 20 86 49
	phd		; 0B
	ora #$2004.w		; 09 04 20
	eor ($80.b)		; 52 80
	sty $6940.w		; 8C 40 69
	ora ($20.b,X)		; 01 20
	asl $CF.b		; 06 CF
	ora #$1020.w		; 09 20 10
	bne -64.b		; D0 C0
	rts		; 60

	jsr $FFF3.w		; 20 F3 FF
	bra  -1.b		; 80 FF
	ora ($0E.b),Y		; 11 0E
	sta $6009.w,Y		; 99 09 60
	bra -48.b		; 80 D0
	ldy #$3E26.w		; A0 26 3E
	adc ($7F.b,X)		; 61 7F
	sta $BA.b,S		; 83 BA
	bra -64.b		; 80 C0
	rts		; 60

	sec		; 38
	clc		; 18
	asl $391E.w,X		; 1E 1E 39
	and $FD37.w,Y		; 39 37 FD
	brk $C0.b		; 00 C0
	and $8302FE.l,X		; 3F FE 02 83
	.db $82, $20, $80		; 82 20 80
	bra -61.b		; 80 C3
.ACCU 16
	rep #$AA		; C2 AA
	bvs -128.b		; 70 80
	cpy #$4541.w		; C0 41 45
	brk $00.b		; 00 00
	bra  64.b		; 80 40
	bra  96.b		; 80 60
	ora [$15.b]		; 07 15
	sbc $028A80.l,X		; FF 80 8A 02
	ora $08.b		; 05 08
	and ($02.b)		; 32 02
	mvn $04,$14		; 54 14 04
	tsb $02.b		; 04 02
	cop $02.b		; 02 02
	tsb $30.b		; 04 30
	tsb $DFEF.w		; 0C EF DF
	plx		; FA
	cmp $786FD7.l		; CF D7 6F 78
	lda ($02.b),Y		; B1 02
	sbc ($64.b)		; F2 64
	asl $08.b		; 06 08
	cpx $08D0.w		; EC D0 08
	bne -96.b		; D0 A0
	adc $0201B1.l		; 6F B1 01 02
	cop $64.b		; 02 64
	tsb $08.b		; 04 08
	php		; 08
	bne  16.b		; D0 10
	ldy #$FD55.w		; A0 55 FD
	eor $BD.b,X		; 55 BD
	lda [$2F.b]		; A7 2F
	cmp $DF77F8.l,X		; DF F8 77 DF
	ora [$BF.b]		; 07 BF
	ora $5F3FFF.l,X		; 1F FF 3F 5F
	cmp $B8C7E8.l,X		; DF E8 C7 B8
	cpx #$C007.w		; E0 07 C0
	ora $FFFF3F.l,X		; 1F 3F FF FF
	lda $04ECAA.l		; AF AA EC 04
	asl $FF0E.w,X		; 1E 0E FF
	ora $FC7FFE.l,X		; 1F FE 7F FC
	sbc $F2FEF9.l,X		; FF F9 FE F2
	sbc $FBF4.w,X		; FD F4 FB
	sbc ($07.b,S),Y		; F3 07
	sbc ($0F.b,X)		; E1 0F
	ora $FEFF7F.l,X		; 1F 7F FF FE
	sbc $FFFB.w,X		; FD FB FF
	sbc $3FABFF.l,X		; FF FF AB 3F
	and ($7C.b,S),Y		; 33 7C
	jmp ($DAFB.w)		; 6C FB DA
	adc [$B4.b],Y		; 77 B4
	sta $F03F68.l		; 8F 68 3F F0
	adc $98E7C0.l,X		; 7F C0 E7 98
	sbc ($F3.b,S),Y		; F3 F3
	sbc $DEDCEF.l		; EF EF DC DE
	sec		; 38
	ldy $7910.w,X		; BC 10 79
	sbc ($CD.b),Y		; F1 CD
	lda $FFFF.w,X		; BD FF FF
	sbc $101FFF.l,X		; FF FF 1F 10
	xce		; FB
	sta [$FF.b]		; 87 FF
	ora $7B7FBE.l,X		; 1F BE 7F 7B
	jsr ($F16E.w,X)		; FC 6E F1
	ora $B3E7.w,Y		; 19 E7 B3
	eor $03F0E0.l		; 4F E0 F0 03
	sta $3E3F1F.l		; 8F 1F 3F 3E
	sbc $60FC78.l,X		; FF 78 FC 60
	sbc ($01.b,S),Y		; F3 01
	sbc $7FDF03.l		; EF 03 DF 7F
	sbc $E8BF38.l,X		; FF 38 BF E8
	bmi 120.b		; 30 78
	bra -116.b		; 80 8C
	beq  -4.b		; F0 FC
	ldx $78.b		; A6 78
	sbc ($FC.b)		; F2 FC
	cmp $FC.b,S		; C3 FC
	tsa		; 3B
	cpy $80.b		; C4 80
	bra -16.b		; 80 F0
	jsr $F0F8.w		; 20 F8 F0
	jsr ($FCC0.w,X)		; FC C0 FC
	jsr ($FF80.w,X)		; FC 80 FF
	brk $50.b		; 00 50
	bra -128.b		; 80 80
	cpy #$E0C0.w		; C0 C0 E0
	rts		; 60

	bvs -80.b		; 70 B0
	clv		; B8
	bra  64.b		; 80 40
	sbc $15103F.l,X		; FF 3F 10 15
	beq  -8.b		; F0 F8
	php		; 08
	tsb $20.b		; 04 20
	jsr $0204.w		; 20 04 02
	clc		; 18
	clc		; 18
	jsr $0620.w		; 20 20 06
	ora $20.b		; 05 20
	clc		; 18
	jsr $FF04.w		; 20 04 FF
	sbc $DE5555.l,X		; FF 55 55 DE
	jmp.w [$ECEE]		; DC EE EC
	adc $8D6E.w		; 6D 6E 8D
	stx $8687.w		; 8E 87 86
	cmp [$C6.b]		; C7 C6
	sbc [$E6.b]		; E7 E6
	sbc $20EE.w		; ED EE 20
	bpl -112.b		; 10 90
	bvs 120.b		; 70 78
	sec		; 38
	clc		; 18
	bpl  79.b		; 10 4F
	jmp.w [$0005]		; DC 05 00
	sbc $13EE.w		; ED EE 13
	ora ($04.b)		; 12 04
	asl $04.b		; 06 04
	php		; 08
	trb $1008.w		; 1C 08 10
	bpl  -1.b		; 10 FF
	sbc $E21554.l,X		; FF 54 15 E2
	sbc $7C63.w,X		; FD 63 7C
	lda ($BD.b)		; B2 BD
	ora ($1D.b)		; 12 1D
	cop $0D.b		; 02 0D
	ora ($1D.b)		; 12 1D
	sty $DB.b,X		; 94 DB
	ldy $FB.b,X		; B4 FB
	bra  64.b		; 80 40
	cpx #$E0F0.w		; E0 F0 E0
	jsr $AEE8.w		; 20 E8 AE
	bvc  37.b		; 50 25
	bit $0844.w,X		; 3C 44 08
	bit $1C.b,X		; 34 1C
	php		; 08
	ror $7E81.w,X		; 7E 81 7E
	sec		; 38
	php		; 08
	php		; 08
	php		; 08
	ror $BBA8.w,X		; 7E A8 BB
	bvc -107.b		; 50 95
	asl A		; 0A
	ora $F5.b,X		; 15 F5
	cpx $1B.b		; E4 1B
	sbc $E90F06.l		; EF 06 0F E9
	asl A		; 0A
	asl A		; 0A
	cpx $06.b		; E4 06
	asl $06.b		; 06 06
	sbc $2553AE.l		; EF AE 53 25
	inc $FF.b		; E6 FF
	asl $EF.b		; 06 EF
	ora #$0906.w		; 09 06 09
	ora $02FF0E.l		; 0F 0E FF 02
	jsr ($E6E6.w,X)		; FC E6 E6
	asl $06.b		; 06 06
	asl $0E.b		; 06 0E
	jsr ($2E00.w,X)		; FC 00 2E
	brk $0C.b		; 00 0C
	ror $FF7E.w,X		; 7E 7E FF
	ror $7E7E.w,X		; 7E 7E 7E
	cmp $A56A9B.l,X		; DF 9B 6A A5
	eor $9AA6.w,Y		; 59 A6 9A
	tax		; AA
	sbc #$A559.w		; E9 59 A5
	ror $EA.b		; 66 EA
	eor $A5.b,X		; 55 A5
	tax		; AA
	eor $65.b,X		; 55 65
	lsr $05.b,X		; 56 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	mvp $DF,$06		; 44 06 DF
	sbc $1755CF.l,X		; FF CF 55 17
	bpl  56.b		; 10 38
	bmi  17.b		; 30 11
	adc [$61.b]		; 67 61
	and $0E1D07.l		; 2F 07 1D 0E
	bit $1E.b,X		; 34 1E
	and ($30.b,X)		; 21 30
	ora $20101F.l		; 0F 1F 10 20
	and ($40.b,X)		; 21 40
	ora [$0E.b]		; 07 0E
	clc		; 18
	bmi  81.b		; 30 51
	sbc $03.b,X		; F5 03
	bvc  -1.b		; 50 FF
	bra  64.b		; 80 40
	bne  49.b		; D0 31
	and $41.b,S		; 23 41
	ora $83.b,S		; 03 83
	sbc $C341FF.l,X		; FF FF 41 C3
	xba		; EB
	bit $3C03.w,X		; 3C 03 3C
	sbc $184626.l,X		; FF 26 46 18
	tsb $78.b		; 04 78
	bra   4.b		; 80 04
	dey		; 88
	php		; 08
	sbc $0404FF.l,X		; FF FF 04 04
	php		; 08
	php		; 08
	cmp $CF30.w		; CD 30 CF
	bmi -17.b		; 30 EF
	bmi  32.b		; 30 20
	rti		; 40

	rts		; 60

	sty $20.b		; 84 20
	sbc $2020FF.l,X		; FF FF 20 20
	rts		; 60

	rts		; 60

	jsr $5120.w		; 20 20 51
	ora $FF0503.l		; 0F 03 05 FF
	mvp $46,$A0		; 44 A0 46
	rti		; 40

	cop $02.b		; 02 02
	sbc $0240FF.l,X		; FF FF 40 02
	ora $F107D7.l		; 0F D7 07 F1
	cpx #$1060.w		; E0 60 10
	bvs  24.b		; 70 18
	clc		; 18
	bpl   1.b		; 10 01
	ora $FFDF0C.l		; 0F 0C DF FF
	bmi  24.b		; 30 18
	ora ($01.b,X)		; 01 01
	ora $F3B703.l		; 0F 03 B7 F3
	cmp ($D1.b,S),Y		; D3 D1
	tsb $1420.w		; 0C 20 14
	ora ($01.b,X)		; 01 01
	rts		; 60

	pld		; 2B
	ora $06.b,S		; 03 06
	asl $10.b		; 06 10
	cpy #$1F1F.w		; C0 1F 1F
	ora ($20.b,X)		; 01 20
	jsr $0603.w		; 20 03 06
	rti		; 40

	rti		; 40

	sbc $D17FF3.l,X		; FF F3 7F D1
	phb		; 8B
	bit #$0102.w		; 89 02 01
	bra -127.b		; 80 81
	clc		; 18
	clc		; 18
	cop $02.b		; 02 02
	bmi  48.b		; 30 30
	tsb $03.b		; 04 03
	stz $FD.b,X		; 74 FD
	cop $03.b		; 02 03
	bra   1.b		; 80 01
	clc		; 18
	cop $30.b		; 02 30
	tsb $07.b		; 04 07
	sbc $C3FFC7.l,X		; FF C7 FF C3
	eor ($51.b,S),Y		; 53 51
	inc A		; 1A
	ora $4372.w,Y		; 19 72 43
	bit $0503.w,X		; 3C 03 05
	cop $04.b		; 02 04
	ora ($03.b,X)		; 01 03
	bit $1A7D.w		; 2C 7D 1A
	ora $32.b,S		; 03 32
	bvs   4.b		; 70 04
	asl $0605.w		; 0E 05 06
	ora $01.b,S		; 03 01
	sbc $BFFFFF.l,X		; FF FF FF BF
	phx		; DA
	ldx #$E5A0.w		; A2 A0 E5
	ora ($45.b,X)		; 01 45
	ora ($07.b,X)		; 01 07
	sta $85.b		; 85 85
	dey		; 88
	cpy $0E.b		; C4 0E
	tsb $06.b		; 04 06
	ora ($12.b)		; 12 12
	and $4068A0.l		; 2F A0 68 40
	eor ($02.b,X)		; 41 02
	phd		; 0B
	bra -123.b		; 80 85
	iny		; C8
	cmp #$0107.w		; C9 07 01
	eor ($0B.b)		; 52 0B
	inc $6E8B.w		; EE 8B 6E
	sbc $40211E.l,X		; FF 1E 21 40
	bra   1.b		; 80 01
	adc ($80.b,X)		; 61 80
	bra 127.b		; 80 7F
	asl $8021.w,X		; 1E 21 80
	rti		; 40

	bra -127.b		; 80 81
	adc ($80.b,X)		; 61 80
	sbc $BFD3FF.l,X		; FF FF D3 BF
	eor $92.b,X		; 55 92
	ora ($29.b,X)		; 01 29
	ora #$2829.w		; 09 29 28
	sec		; 38
	php		; 08
	plp		; 28
	stz $A2.b		; 64 A2
	dec $3820.w,X		; DE 20 38
	bcs  16.b		; B0 10
	tsx		; BA
	ora ($30.b,X)		; 01 30
	bpl  32.b		; 10 20
	bit $8EC6.w		; 2C C6 8E
	sec		; 38
	php		; 08
	bcs  -1.b		; B0 FF
	sbc [$FF.b],Y		; F7 FF
	sbc ($FF.b,X)		; E1 FF
	adc $63E341.l,X		; 7F 41 E3 63
	rol A		; 2A
	jsl $0F0D57.l		; 22 57 0D 0F
	tsb $E804.w		; 0C 04 E8
	sbc $FFEA.w		; ED EA FF
	adc $77E380.l,X		; 7F 80 E3 77
	trb $6008.w		; 1C 08 60
	ora ($E0.b,X)		; 01 E0
	ora #$FF08.w		; 09 08 FF
	sbc $ACDF57.l,X		; FF 57 DF AC
	clc		; 18
	cpy #$D0B8.w		; C0 B8 D0
	jsr $80C0.w		; 20 C0 80
	txs		; 9A
	php		; 08
	and $B81C.w		; 2D 1C B8
	tya		; 98
	cmp $F4.b		; C5 F4
	cmp $03.b,S		; C3 03
	cld		; D8
	rts		; 60

	bra  10.b		; 80 0A
	cop $15.b		; 02 15
	ora $E8.b		; 05 E8
	adc $04.b,X		; 75 04
	and ($F4.b,S),Y		; 33 F4
	ora ($FC.b,S),Y		; 13 FC
	mvp $66,$44		; 44 44 66
	ror $80.b		; 66 80
	cld		; D8
	jsr $7AF5.w		; 20 F5 7A
	tyx		; BB
	sbc $808066.l,X		; FF 66 80 80
	cld		; D8
	sei		; 78
	sbc $7F.b,X		; F5 7F
	and ($C3.b,S),Y		; 33 C3
	ora ($C2.b,S),Y		; 13 C2
	asl $04.b		; 06 04
	tsb $04.b		; 04 04
	ora ($02.b,X)		; 01 02
	.db $82, $02, $F8		; 82 02 F8
	jsr ($0204.w,X)		; FC 04 02
	.db $82, $80, $DF		; 82 80 DF
	sbc [$C7.b],Y		; F7 C7
	ror $253D.w,X		; 7E 3D 25
	cop $06.b		; 02 06
	trb $30.b		; 14 30
	and ($09.b),Y		; 31 09
	bpl  24.b		; 10 18
	tsb $0502.w		; 0C 02 05
	ora ($1E.b,X)		; 01 1E
	and $201003.l,X		; 3F 03 10 20
	bpl   8.b		; 10 08
	php		; 08
	tsb $06.b		; 04 06
	ora ($EF.b,X)		; 01 EF
	inc $5D57.w,X		; FE 57 5D
	plx		; FA
	.db $82, $06, $16		; 82 06 16
	dey		; 88
	tsb $24.b		; 04 24
	rts		; 60

	txa		; 8A
	php		; 08
	and ($01.b,X)		; 21 01
	bra -128.b		; 80 80
	sbc $06FF.w,X		; FD FF 06
	php		; 08
	bit $60.b		; 24 60
	inc A		; 1A
	cop $01.b		; 02 01
	bra  -9.b		; 80 F7
	sbc $E2FFF3.l,X		; FF F3 FF E2
	trb $08.b		; 14 08
	asl $16.b,X		; 16 16
	clc		; 18
	bpl  78.b		; 10 4E
	ora [$9B.b],Y		; 17 9B
	ora $26.b		; 05 26
	bpl -72.b		; 10 B8
	bra -21.b		; 80 EB
	sbc $0A.b,S		; E3 0A
	cop $6C.b		; 02 6C
	rts		; 60

	cmp $90D1.w,X		; DD D1 90
	stz $3320.w,X		; 9E 20 33
	ldy #$FF27.w		; A0 27 FF
	adc $0B3FFF.l,X		; 7F FF 3F 0B
	stz $30.b		; 64 30
	ldy #$305A.w		; A0 5A 30
	asl $16.b,X		; 16 16
	adc $3114.w,X		; 7D 14 31
	adc [$3F.b],Y		; 77 3F
	sta ($BB.b,X)		; 81 BB
	txy		; 9B
	txy		; 9B
	bcc -112.b		; 90 90
	rts		; 60

	jsr $2002.w		; 20 02 20
	cli		; 58
	sec		; 38
	adc $32.b,X		; 75 32
	tsa		; 3B
	sta ($BF.b,X)		; 81 BF
	ror $BFF7.w,X		; 7E F7 BF
	lsr $0142.w		; 4E 42 01
	ora $30.b,S		; 03 30
	rti		; 40

	adc $F87C.w,Y		; 79 7C F8
	stx $BC.b		; 86 BC
	.db $82, $46, $BD		; 82 46 BD
	sbc $7C3C03.l,X		; FF 03 3C 7C
	asl $57.b		; 06 57
	ora [$57.b]		; 07 57
	.db $82, $78, $01		; 82 78 01
	ora [$3A.b],Y		; 17 3A
	eor [$FF.b],Y		; 57 FF
	sbc ($DF.b,S),Y		; F3 DF
	pea $2004.w		; F4 04 20
	sta ($83.b),Y		; 91 83
	.db $42, $84		; 42 84
	lsr $40.b		; 46 40
	jsr $9820.w		; 20 20 98
	bra  -5.b		; 80 FB
	sbc $830101.l,X		; FF 01 01 83
	sta $02.b,S		; 83 02
	stx $46.b		; 86 46
	asl $20.b		; 06 20
	tya		; 98
	tya		; 98
	cmp $FFFFFF.l,X		; DF FF FF FF
	pla		; 68
	dey		; 88
	pha		; 48
	php		; 08
	sta $D00F70.l,X		; 9F 70 0F D0
	and $C96FD1.l		; 2F D1 6F C9
	adc [$49.b],Y		; 77 49
	lda [$77.b],Y		; B7 77
	adc $E0FFF7.l,X		; 7F F7 FF E0
	cpx #$8F8D.w		; E0 8D 8F
	ora $4F62.w		; 0D 62 4F
	adc ($47.b,X)		; 61 47
	adc ($07.b),Y		; 71 07
	lda ($3F.b),Y		; B1 3F
	sbc ($FF.b,S),Y		; F3 FF
	.db $42, $38		; 42 38
	and [$D8.b]		; 27 D8
	sec		; 38
	cpx #$01E0.w		; E0 E0 01
	ora ($02.b,X)		; 01 02
	ora $01.b,S		; 03 01
	ora ($C3.b,X)		; 01 C3
	sbc $CD.b,S		; E3 CD
	sbc $4A72.w		; ED 72 4A
	bra -60.b		; 80 C4
	bra   1.b		; 80 01
	sta $C0C784.l		; 8F 84 C7 C0
	ora [$09.b]		; 07 09
	ora ($01.b,X)		; 01 01
	clc		; 18
	asl A		; 0A
	bmi   6.b		; 30 06
	ora [$01.b]		; 07 01
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	and [$DF.b],Y		; 37 DF
	sbc $217BFF.l,X		; FF FF 7B 21
	lda $C0.b		; A5 C0
	bpl  16.b		; 10 10
	sec		; 38
	bvc  16.b		; 50 10
	tsb $0C06.w		; 0C 06 0C
	inc $05A5.w,X		; FE A5 05
	cpx #$3020.w		; E0 20 30
	bmi  48.b		; 30 30
	jsr $6808.w		; 20 08 68
	pha		; 48
	bvc  76.b		; 50 4C
	pha		; 48
	.db $42, $A5		; 42 A5
	ora [$F6.b]		; 07 F6
	ora [$3F.b]		; 07 3F
	cpy #$4A24.w		; C0 24 4A
	ror $2020.w		; 6E 20 20
	cpy #$42C0.w		; C0 C0 42
	bit $66.b		; 24 66
	ror $206E.w		; 6E 6E 20
	jsr $FFFF.w		; 20 FF FF
	tad		; 5B
	sbc $48B0B6.l,X		; FF B6 B0 48
	pha		; 48
	cop $01.b		; 02 01
	ora $03.b,S		; 03 03
	ora $02.b		; 05 02
	tsb $0C.b		; 04 0C
	cop $1C.b		; 02 1C
	php		; 08
	jsr $B0FF.w		; 20 FF B0
	pha		; 48
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	tsb $08.b		; 04 08
	asl A		; 0A
	ora ($10.b)		; 12 10
	jsr $FFFF.w		; 20 FF FF
	eor [$FD.b],Y		; 57 FD
	and $7DCF.w,Y		; 39 CF 7D
	lda [$6F.b]		; A7 6F
	tay		; A8
	cmp $80BF40.l,X		; DF 40 BF 80
	adc $3C7E3E.l,X		; 7F 3E 7E 3C
	adc $8739.w,X		; 7D 39 87
	bra   3.b		; 80 03
	bpl  63.b		; 10 3F
	adc $FF3EFF.l,X		; 7F FF 3E FF
	bit $38FE.w,X		; 3C FE 38
	sbc $5FFDFF.l,X		; FF FF FD 5F
	cmp $76E4.w,X		; DD E4 76
	sta $CC.b,X		; 95 CC
	phk		; 4B
	sed		; F8
	ora [$B0.b],Y		; 17 B0
	and $C05F60.l		; 2F 60 5F C0
	lda $E27F80.l,X		; BF 80 7F E2
	bit #$3301.w		; 89 01 33
	cop $E7.b		; 02 E7
	tsb $CF.b		; 04 CF
	php		; 08
	sta $7F3F10.l,X		; 9F 10 3F 7F
	eor ($F5.b)		; 52 F5
	plb		; AB
	plx		; FA
	sbc $0C0703.l,X		; FF 03 07 0C
	clc		; 18
	adc ($03.b,S),Y		; 73 03
	lda $05.b		; A5 05
	sbc $03BFBF.l,X		; FF BF BF 03
	ora [$0C.b]		; 07 0C
	ora $7503.w,Y		; 19 03 75
	tsb $AF.b		; 04 AF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $0380.w,X		; FD 80 03
	jsr ($F00F.w,X)		; FC 0F F0
	bpl -17.b		; 10 EF
	and $DFDE.w		; 2D DE DF
	bit $7DBE.w,X		; 3C BE 7D
	jsr ($02FB.w,X)		; FC FB 02
	.db $82, $1C, $FC		; 82 1C FC
	beq  19.b		; F0 13
	cpx #$CC2F.w		; E0 2F CC
	lsr $3D1C.w,X		; 5E 1C 3D
	bit $F8FD.w,X		; 3C FD F8
	xce		; FB
	sbc $DC5FFD.l,X		; FF FD 5F DC
	stz $1A18.w,X		; 9E 18 1A
	clc		; 18
	php		; 08
	bmi  16.b		; 30 10
	bvs   8.b		; 70 08
	dey		; 88
	tsb $14.b		; 04 14
	cpy $10.b		; C4 10
	php		; 08
	adc ($19.b,X)		; 61 19
	txs		; 9A
	inc A		; 1A
	bmi 112.b		; 30 70
	php		; 08
	tsb $C4.b		; 04 C4
	bpl   8.b		; 10 08
	and ($CC.b),Y		; 31 CC
	and $84.b,S		; 23 84
	bpl   8.b		; 10 08
	bpl  16.b		; 10 10
	bpl   4.b		; 10 04
	php		; 08
	cpx #$10E0.w		; E0 E0 10
	bpl   8.b		; 10 08
	brk $F0.b		; 00 F0
	brk $A0.b		; 00 A0
	asl $06.b		; 06 06
	tsb $060C.w		; 0C 0C 06
	tsb $D000.w		; 0C 00 D0
	ora ($A0.b,X)		; 01 A0
	ora $06.b,S		; 03 06
	ora ($04.b,X)		; 01 04
	ora $04.b,S		; 03 04
	cmp ($7F.b,S),Y		; D3 7F
	sbc $0F101F.l,X		; FF 1F 10 0F
	ora ($06.b,X)		; 01 06
	ora [$2C.b]		; 07 2C
	plp		; 28
	cpx $E0.b		; E4 E0
	ldy #$80C0.w		; A0 C0 80
	ora $03030F.l		; 0F 0F 03 03
	asl $07.b		; 06 07
	cop $03.b		; 02 03
	ora $D8382F.l		; 0F 2F 38 D8
	cpy #$FFFF.w		; C0 FF FF
	sbc $15.b,X		; F5 15
	bmi -16.b		; 30 F0
	cpy $12FC.w		; CC FC 12
	asl $F103.w,X		; 1E 03 F1
	sbc ($EF.b,X)		; E1 EF
	pea $E7F4.w		; F4 F4 E7
	sbc [$FF.b]		; E7 FF
	sbc $F86080.l,X		; FF 80 60 F8
	cpx #$0EF8.w		; E0 F8 0E
	inc $040B.w,X		; FE 0B 04
	pea $F07F.w		; F4 7F F0
	jsr ($300F.w,X)		; FC 0F 30
	ora $F03F40.l		; 0F 40 3F F0
	ora $F713DC.l		; 0F DC 13 F7
	tsb $FD.b		; 04 FD
	php		; 08
	php		; 08
	bmi  48.b		; 30 30
	cpx #$F8F0.w		; E0 F0 F8
	jsr ($FEFE.w,X)		; FC FE FE
	ora $303F3C.l		; 0F 3C 3F 30
	sbc ($1E.b,X)		; E1 1E
	cpx #$80E0.w		; E0 E0 80
	bra -128.b		; 80 80
	bra  14.b		; 80 0E
	asl $7070.w		; 0E 70 70
	rti		; 40

	rti		; 40

	.db $42, $42		; 42 42
	ldx $50BB.w,Y		; BE BB 50
	sta $02.b,X		; 95 02
	cop $3F.b		; 02 3F
	clc		; 18
	and $1825.w,X		; 3D 25 18
	ror $FF.b		; 66 FF
	ror $FF.b		; 66 FF
	sta $1A02.w,Y		; 99 02 1A
	clc		; 18
	ror $6666.w,X		; 7E 66 66
	ldx $5082.w		; AE 82 50
	brk $80.b		; 00 80
	bra -64.b		; 80 C0
	rti		; 40

	rti		; 40

	bra   4.b		; 80 04
	bra -128.b		; 80 80
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	pha		; 48
	bmi  78.b		; 30 4E
	sbc $4DFF32.l,X		; FF 32 FF 4D
	bmi  48.b		; 30 30
	ror $3232.w,X		; 7E 32 32
	jsr $0088.w		; 20 88 00
	brk $01.b		; 00 01
	ora ($7E.b,X)		; 01 7E
	sbc $33.b		; E5 33
	adc $C06012.l		; 6F 12 60 C0
	bra -128.b		; 80 80
	bra  16.b		; 80 10
	jsr $2020.w		; 20 20 20
	bra -128.b		; 80 80
	cpy #$80C0.w		; C0 C0 80
	bra  32.b		; 80 20
	jsr $0001.w		; 20 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	rti		; 40

	brk $00.b		; 00 00
	asl $03D0.w,X		; 1E D0 03
	cpy #$803F.w		; C0 3F 80
	beq -128.b		; F0 80
	sei		; 78
	bvs -128.b		; 70 80
	bra -16.b		; 80 F0
	beq  96.b		; F0 60
	rts		; 60

	bpl  16.b		; 10 10
	sbc $50DFF0.l,X		; FF F0 DF 50
	bvs -112.b		; 70 90
	bcc -16.b		; 90 F0
	rts		; 60

	rts		; 60

	php		; 08
	dey		; 88
	tsb $C00C.w		; 0C 0C C0
	cpy #$1F0F.w		; C0 0F 1F
	bpl  96.b		; 10 60
	rts		; 60

	php		; 08
	bra  12.b		; 80 0C
	cpy #$C033.w		; C0 33 C0
	ora ($80.b,S),Y		; 13 80
	tsb $0808.w		; 0C 08 08
	php		; 08
	cop $04.b		; 02 04
	beq  -8.b		; F0 F8
	php		; 08
	tsb $FF.b		; 04 FF
	sbc $14F5EF.l,X		; FF EF F5 14
	trb $4E.b		; 14 4E
	lsr $85.b		; 46 85
	sta ($69.b,X)		; 81 69
	adc $25.b,S		; 63 25
	jsr $1E1C.w		; 20 1C 1E
	sed		; F8
	inc $F0C8.w,X		; FE C8 F0
	php		; 08
	trb WRDIVL.w		; 1C 04 42
	sta ($43.b,X)		; 81 43
	jsr $1E20.w		; 20 20 1E
	ror $7080.w,X		; 7E 80 70
	bra  -1.b		; 80 FF
	plb		; AB
	adc $080B00.l,X		; 7F 00 0B 08
	bit $E838.w,X		; 3C 38 E8
	beq -32.b		; F0 E0
	cpy #$30C0.w		; C0 C0 30
	beq  32.b		; F0 20
	asl $0F07.w,X		; 1E 07 0F
	php		; 08
	bmi  48.b		; 30 30
	cpy #$01C0.w		; C0 C0 01
	rti		; 40

	ora $00.b,S		; 03 00
	sbc $FFFF01.l,X		; FF 01 FF FF
	ora ($0A.b,X)		; 01 0A
	ora $00.b,S		; 03 00
	sbc $FF0101.l,X		; FF 01 01 FF
	sbc $03FFD5.l,X		; FF D5 FF 03
	brk $FE.b		; 00 FE
	cop $04.b		; 02 04
	ora ($01.b,X)		; 01 01
	php		; 08
	cpx #$9404.w		; E0 04 94
	asl A		; 0A
	ror A		; 6A
	ora $13.b,S		; 03 13
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $09.b,X		; D5 09
	sta ($FF.b,X)		; 81 FF
	and $3F1D7F.l,X		; 3F 7F 1D 3F
	rol $FD1F.w		; 2E 1F FD
	ora $5F0F17.l,X		; 1F 17 0F 5F
	ora $3F0F8F.l		; 0F 8F 0F 3F
	tay		; A8
	bvc   1.b		; 50 01
	jsr $1001.w		; 20 01 10
	sbc $2553AE.l		; EF AE 53 25
	ror $FF.b		; 66 FF
	ror $FF.b		; 66 FF
	adc #$0906.w		; 69 06 09
	asl $7E1C.w,X		; 1E 1C 7E
	sty $F8.b		; 84 F8
	ror $66.b		; 66 66
	asl $06.b		; 06 06
	tsb $781C.w		; 0C 1C 78
	xba		; EB
	ldx $2557.w		; AE 57 25
	tsb $0F.b		; 04 0F
	ora ($64.b)		; 12 64
	sei		; 78
	sty $7C.b		; 84 7C
	clc		; 18
	bit $1824.w,X		; 3C 24 18
	tsb $04.b		; 04 04
	tsb $7818.w		; 0C 18 78
	clc		; 18
	clc		; 18
	clc		; 18
	sbc $2553AE.l		; EF AE 53 25
	bmi 122.b		; 30 7A
	bmi 124.b		; 30 7C
	pha		; 48
	bmi  72.b		; 30 48
	ply		; 7A
	and ($7F.b)		; 32 7F
	and ($1E.b,X)		; 21 1E
	bmi  52.b		; 30 34
	bmi  48.b		; 30 30
	bmi  50.b		; 30 32
	asl $280B.w,X		; 1E 0B 28
	ora $00.b,S		; 03 00
	ror $7EFF.w,X		; 7E FF 7E
	ora ($01.b,X)		; 01 01
	ror $507E.w,X		; 7E 7E 50
	and $801E00.l,X		; 3F 00 1E 80
	rts		; 60

	bvc  64.b		; 50 40
	inx		; E8
	ldy #$10B0.w		; A0 B0 10
	cpx #$1040.w		; E0 40 10
	ldy #$5F08.w		; A0 08 5F
	brk $5C.b		; 00 5C
	ora ($03.b,X)		; 01 03
	ora ($06.b,X)		; 01 06
	ora $02.b,S		; 03 02
	cop $01.b		; 02 01
	ora $02.b,S		; 03 02
	cop $3F.b		; 02 3F
	sbc ($06.b,S),Y		; F3 06
	sbc ($C1.b,S),Y		; F3 C1
	ldx $8080.w,Y		; BE 80 80
	ora $02.b,S		; 03 02
	inc $24.b		; E6 24
	sty $5808.w		; 8C 08 58
	bpl -128.b		; 10 80
	bra -64.b		; 80 C0
	cpy #$8080.w		; C0 80 80
	rti		; 40

	rti		; 40

	brk $D0.b		; 00 D0
	brk $C0.b		; 00 C0
	bit $1C63.w,X		; 3C 63 1C
	clc		; 18
	clc		; 18
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $18.b,X		; 95 18
	clc		; 18
	bit $FEE6.w,X		; 3C E6 FE
	ora ($FE.b,X)		; 01 FE
	clc		; 18
	bit $1824.w,X		; 3C 24 18
	inc $1818.w,X		; FE 18 18
	clc		; 18
	php		; 08
	rol $0C00.w		; 2E 00 0C
	ora ($FC.b,X)		; 01 FC
	jsr ($FCFE.w,X)		; FC FE FC
	jsr ($B8FC.w,X)		; FC FC B8
	tyx		; BB
	rti		; 40

	sta $FE.b,X		; 95 FE
	ror $79FF.w,X		; 7E FF 79
	asl $09.b		; 06 09
	ora $120E04.l		; 0F 04 0E 12
	asl $06.b		; 06 06
	asl $04.b		; 06 04
	tsb $AEEF.w		; 0C EF AE
	eor ($25.b,S),Y		; 53 25
	php		; 08
	trb $3C18.w		; 1C 18 3C
	jsl $7F4A34.l		; 22 34 4A 7F
	.db $62, $F7, $95		; 62 F7 95
	sbc $08.b,S		; E3 08
	php		; 08
	trb $3634.w		; 1C 34 36
	.db $62, $62, $EF		; 62 62 EF
	ldx $2553.w		; AE 53 25
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	bit $18.b		; 24 18
	bit $3C.b		; 24 3C
	clc		; 18
	jmp ($7088.w,X)		; 7C 88 70
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	bvs -72.b		; 70 B8
	ldx $9400.w,Y		; BE 00 94
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFC.w,X)		; FC FC FC
	cop $0C.b		; 02 0C
	inc $FC12.w,X		; FE 12 FC
	tsb $EF0C.w		; 0C 0C EF
	ldx $2553.w		; AE 53 25
	tsb $0C1F.w		; 0C 1F 0C
	asl $0C12.w,X		; 1E 12 0C
	ora ($3C.b)		; 12 3C
	sec		; 38
	jsr ($E018.w,X)		; FC 18 E0
	tsb $0C0C.w		; 0C 0C 0C
	tsb $3818.w		; 0C 18 38
	cpx #$2EA0.w		; E0 A0 2E
	brk $0C.b		; 00 0C
	ora ($01.b,X)		; 01 01
	sbc $FFFC.w,X		; FD FC FF
	sbc $FCFC.w,X		; FD FC FC
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	txs		; 9A
	ldx $DA65.w,Y		; BE 65 DA
	stz $9655.w,X		; 9E 55 96
	tax		; AA
	nop		; EA
	eor $6A.b,X		; 55 6A
	eor $55.b,X		; 55 55
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	ora $0108.w,X		; 1D 08 01
	cmp $00.b,X		; D5 00
	jsr ($C007.w,X)		; FC 07 C0
	sec		; 38
	cmp [$FB.b]		; C7 FB
	cop $C0.b		; 02 C0
	cpy #$F8F8.w		; C0 F8 F8
	sbc $4001FF.l,X		; FF FF 01 40
	brk $00.b		; 00 00
	bra  -8.b		; 80 F8
	sbc ($CF.b,S),Y		; F3 CF
	sbc $8F705F.l,X		; FF 5F 70 8F
	ora $30301F.l,X		; 1F 1F 30 30
	rts		; 60

	jmp ($5B40.w)		; 6C 40 5B
	php		; 08
	tsb $7C7C.w		; 0C 7C 7C
	ora $1C1C0F.l		; 0F 0F 1C 1C
	bit $4730.w		; 2C 30 47
	rts		; 60

	lsr $40.b,X		; 56 40
	ora ($02.b,X)		; 01 02
	inc $45FF.w,X		; FE FF 45
	sbc $80C0.w,X		; FD C0 80
	beq 112.b		; F0 70
	sed		; F8
	php		; 08
	jsr ($FE08.w,X)		; FC 08 FE
	jmp.w [$E5FF]		; DC FF E5
	adc $DC3F60.l,X		; 7F 60 3F DC
	cpy #$CCF0.w		; C0 F0 CC
	.db $82, $80, $C2		; 82 80 C2
	cpy #$607F.w		; C0 7F 60
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	cop $FC.b		; 02 FC
	brk $F0.b		; 00 F0
	ora ($01.b,X)		; 01 01
	ora [$04.b]		; 07 04
	bit $CE0E.w,X		; 3C 0E CE
	tsb $04.b		; 04 04
	and $5FFF3F.l,X		; 3F 3F FF 5F
	sbc $1FF0F3.l,X		; FF F3 F0 1F
	sbc $3B.b,S		; E3 3B
	sbc ($27.b,S),Y		; F3 27
	beq  34.b		; F0 22
	beq  15.b		; F0 0F
	sed		; F8
	ora [$FF.b]		; 07 FF
	sbc $875050.l,X		; FF 50 50 87
	lda [$0B.b]		; A7 0B
	pld		; 2B
	sta $80AD.w		; 8D AD 80
	ldy #$E0E0.w		; A0 E0 E0
	stx $96.b,Y		; 96 96
	sbc $5FFFFF.l,X		; FF FF FF 5F
	sbc [$3F.b],Y		; F7 3F
	plb		; AB
	sta $DCDFC0.l,X		; 9F C0 DF DC
	eor $3DBF1F.l,X		; 5F 1F BF 3D
	adc $F2FE78.l,X		; 7F 78 FE F2
	inc $20D7.w,X		; FE D7 20
	ldy $6F20.w,X		; BC 20 6F
	bmi -78.b		; 30 B2
	bmi -96.b		; 30 A0
	rts		; 60

	.db $62, $C0, $E5		; 62 C0 E5
	pha		; 48
	sbc $8541FF.l,X		; FF FF 41 85
	asl $1D1F.w		; 0E 1F 1D
	ora $080F16.l,X		; 1F 16 0F 08
	ora [$04.b]		; 07 04
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	ora $03.b,S		; 03 03
	asl $03.b		; 06 03
	asl $03.b		; 06 03
	ora ($01.b,X)		; 01 01
	xce		; FB
	lda $A0DFFF.l		; AF FF DF A0
	txy		; 9B
	trb $4876.w		; 1C 76 48
	and #$01C7.w		; 29 C7 01
	ora ($01.b,X)		; 01 01
	adc $58.b		; 65 58
	inc $45.b		; E6 45
	cmp $1C.b		; C5 1C
	trb $3E7E.w		; 1C 7E 3E
	bit $EC.b		; 24 EC
	php		; 08
	bpl  34.b		; 10 22
	ror $3C.b		; 66 3C
	cmp [$87.b],Y		; D7 87
	sbc $FD15FF.l,X		; FF FF 15 FD
	ora ($FF.b),Y		; 11 FF
	sbc $FF.b,X		; F5 FF
	inc $F3FF.w		; EE FF F3
	sbc $C1FFE7.l,X		; FF E7 FF C1
	jsr ($F99D.w,X)		; FC 9D F9
	xce		; FB
	sbc ($47.b,S),Y		; F3 47
	ora #$1C02.w		; 09 02 1C
	and $03.b,S		; 23 03
	eor [$07.b]		; 47 07
	ora $FFCF0F.l		; 0F 0F CF FF
	cmp $0FF0FF.l		; CF FF F0 0F
	cpx #$0BE0.w		; E0 E0 0B
	rtl		; 6B

	tsb $84.b		; 04 84
	and ($01.b,X)		; 21 01
	stx $06.b		; 86 06
	eor [$04.b]		; 47 04
	ora $10101F.l,X		; 1F 1F 10 10
	adc $03.b,S		; 63 03
	sta [$07.b]		; 87 07
	and $15.b,X		; 35 15
	asl $06.b		; 06 06
	cli		; 58
	clc		; 18
	inc $51FF.w,X		; FE FF 51
	cmp $FF.b,X		; D5 FF
	ror $C5FF.w,X		; 7E FF C5
	sbc $0DFFCA.l,X		; FF CA FF 0D
	sbc $F3FFF0.l,X		; FF F0 FF F3
	sbc $C3837F.l,X		; FF 7F 83 C3
	clv		; B8
	lda $0DC2.w,Y		; B9 C2 0D
	adc ($01.b),Y		; 71 01
	jmp ($FFFF.w,X)		; 7C FF FF
	ora $55.b		; 05 55
	cmp [$FF.b]		; C7 FF
	lda $FF6FFF.l,X		; BF FF 6F FF
	sbc $FF67FF.l,X		; FF FF 67 FF
	cmp $FF37FF.l		; CF FF 37 FF
	adc [$FF.b]		; 67 FF
	sbc [$08.b]		; E7 08
	jsr $C860.w		; 20 60 C8
	tya		; 98
	sbc $1015FF.l,X		; FF FF 15 10
	asl $7F.b		; 06 7F
	and $FFB5FF.l,X		; 3F FF B5 FF
	sbc $FFFAFF.l,X		; FF FF FA FF
	sbc $FF.b,X		; F5 FF
	inc $BFFF.w,X		; FE FF BF
	sbc $014083.l,X		; FF 83 40 01
	ora ($FF.b,X)		; 01 FF
	sbc $795555.l,X		; FF 55 55 79
	sbc $CFFFEF.l,X		; FF EF FF CF
	sbc $ADFFB9.l,X		; FF B9 FF AD
	sbc $40FFD0.l,X		; FF D0 FF 40
	sbc $31FF93.l,X		; FF 93 FF 31
	bpl  48.b		; 10 30
	rti		; 40

	eor ($2F.b)		; 52 2F
	lda $A360.w,X		; BD 60 A3
	tax		; AA
	ora $FF.b,S		; 03 FF
	sbc $1E0F05.l,X		; FF 05 0F 1E
	bit $F178.w,X		; 3C 78 F1
	.db $82, $FF, $FF		; 82 FF FF
	ora ($01.b,X)		; 01 01
	cop $03.b		; 02 03
	tsb $06.b		; 04 06
	ora #$AD0C.w		; 09 0C AD
	tax		; AA
	sbc $30CFBF.l,X		; FF BF CF 30
	ora $7020.w		; 0D 20 70
	bra   6.b		; 80 06
	rts		; 60

	tsb $F0F0.w		; 0C F0 F0
	bit $3D.b,X		; 34 3D
	eor #$8460.w		; 49 60 84
	beq  80.b		; F0 50
	.db $82, $80, $04		; 82 80 04
	eor $0C60.w,Y		; 59 60 0C
	xce		; FB
	sbc [$77.b],Y		; F7 77
	pea $9B7F.w		; F4 7F 9B
	asl $42.b		; 06 42
	cmp $02.b,S		; C3 02
	bpl   1.b		; 10 01
	ora ($09.b,X)		; 01 09
	php		; 08
	eor #$0701.w		; 49 01 07
	eor $017F.w,Y		; 59 7F 01
	bvc  64.b		; 50 40
	bit $0A.b		; 24 0A
	bmi  33.b		; 30 21
	asl $08.b		; 06 08
	sbc $57FFFF.l,X		; FF FF FF 57
	stp		; DB
	and $0E1F19.l,X		; 3F 19 1F 0E
	ora $383F0B.l,X		; 1F 0B 3F 38
	cmp $FA.b,S		; C3 FA
	sta $D9.b		; 85 D9
	and ($33.b,X)		; 21 33
	and [$70.b],Y		; 37 70
	bmi  48.b		; 30 30
	bmi -69.b		; 30 BB
	clv		; B8
	sbc $80FEC0.l,X		; FF C0 FE 80
	cmp $A0.b,S		; C3 A0
	asl $FF.b,X		; 16 FF
	sbc $C05555.l,X		; FF 55 55 C0
	cmp ($C1.b,X)		; C1 C1
	sbc [$E7.b]		; E7 E7
	sbc $F7FFBF.l,X		; FF BF FF F7
	sbc $FDFF7D.l,X		; FF 7D FF FD
	sbc $5FFFF7.l,X		; FF F7 FF 5F
	lda ($C6.b,X)		; A1 C6
	cli		; 58
	jsr $84C0.w		; 20 C0 84
	clc		; 18
	sbc $00FF03.l,X		; FF 03 FF 00
	ora ($EE.b),Y		; 11 EE
	ora $03.b,S		; 03 03
	ora [$17.b],Y		; 17 17
	ora $03.b,S		; 03 03
	asl $06.b		; 06 06
	sbc [$F7.b],Y		; F7 F7
	ora #$0309.w		; 09 09 03
	ora $02.b,S		; 03 02
	cop $FF.b		; 02 FF
	plx		; FA
	adc $48FFFF.l,X		; 7F FF FF 48
	jsr $0423.w		; 20 23 04
	ora $24.b,X		; 15 24
	plp		; 28
	lsr $54.b,X		; 56 54
	cmp ($95.b,X)		; C1 95
	jsl $480822.l		; 22 22 08 48
	eor ($37.b,X)		; 41 37
	tas		; 1B
	ora ($06.b,X)		; 01 06
	eor $7F.b,X		; 55 7F
	mvn $BE,$7C		; 54 7C BE
	stx $94.b,Y		; 96 94
	sty $FF.b,X		; 94 FF
	sbc $EA5555.l,X		; FF 55 55 EA
	sbc $B9FFED.l,X		; FF ED FF B9
	inc $FDCD.w,X		; FE CD FD
	inc $66FE.w,X		; FE FE 66
	inc $FFFF.w,X		; FE FF FF
	and $6038FF.l		; 2F FF 38 60
	ora ($DA.b),Y		; 11 DA
	asl $18.b		; 06 18
	ora $41.b,S		; 03 41
	sbc $0455FF.l,X		; FF FF 55 04
	ora [$0F.b]		; 07 0F
	ora $1F.b,S		; 03 1F
	trb $1F.b		; 14 1F
	asl $2F3F.w		; 0E 3F 2F
	and $5F7F1C.l,X		; 3F 1C 7F 5F
	adc $7D7F7B.l,X		; 7F 7B 7F 7D
	ora #$1101.w		; 09 01 11
	and $FF.b,S		; 23 FF
	sbc $FF4557.l,X		; FF 57 45 FF
	txy		; 9B
	txs		; 9A
	sbc [$85.b],Y		; F7 85
	sbc $1FFFF3.l,X		; FF F3 FF 1F
	sbc $F7FF7E.l,X		; FF 7E FF F7
	sbc $73FFBF.l,X		; FF BF FF 73
	bvc  -2.b		; 50 FE
	adc $C049.w,X		; 7D 49 C0
	sta ($40.b,X)		; 81 40
	sbc $F5F7FF.l,X		; FF FF F7 F5
	lsr $E6.b		; 46 E6
	sta $FBDDFF.l,X		; 9F FF DD FB
	lda $25FD.w,Y		; B9 FD 25
	sbc $8BFC44.l,X		; FF 44 FC 8B
	jsr ($F988.w,X)		; FC 88 F9
	eor $401F.w,Y		; 59 1F 40
	rol $06.b		; 26 06
	phx		; DA
	cop $38.b		; 02 38
	sbc ($33.b,S),Y		; F3 33
	ora [$E5.b]		; 07 E5
	tsb $EFFF.w		; 0C FF EF
	sbc $FF.b,X		; F5 FF
	lda $466476.l		; AF 76 64 46
	bit $B8.b,X		; 34 B8
	rti		; 40

	sta $3040.w,Y		; 99 40 30
	bra 110.b		; 80 6E
	bvc -64.b		; 50 C0
	jsr $4570.w		; 20 70 45
	lda ($80.b)		; B2 80
	pha		; 48
	eor ($D0.b,X)		; 41 D0
	cpy #$8EA0.w		; C0 A0 8E
	rti		; 40

	bcc -128.b		; 90 80
	jsr $FFFF.w		; 20 FF FF
	eor $7D9BF7.l,X		; 5F F7 9B 7D
	adc $83C346.l,X		; 7F 46 C3 83
	sta $A3.b,S		; 83 A3
	and ($D3.b),Y		; 31 D3
	cmp ($7E.b)		; D2 7E
	and $526F.w		; 2D 6F 52
	and $BA82DE.l,X		; 3F DE 82 BA
	sta ($C5.b,X)		; 81 C5
	jsr $80F0.w		; 20 F0 80
	sta $4061.w,X		; 9D 61 40
	bvs  32.b		; 70 20
	sbc $5FFFFF.l,X		; FF FF FF 5F
	ora $FBE2.w,X		; 1D E2 FB
	sty $36.b		; 84 36
	cmp #$F23C.w		; C9 3C F2
	ora $C606C8.l		; 0F C8 06 C6
	cmp $43.b,S		; C3 43
	cpx #$1D80.w		; E0 80 1D
	ora $9B1B.w,X		; 1D 1B 9B
	dec $C6.b		; C6 C6
	eor $44.b		; 45 44
	bvs  64.b		; 70 40
	sbc $3CC0.w,Y		; F9 C0 3C
	adc $05FFFF.l,X		; 7F FF FF 05
	ora ($46.b),Y		; 11 46
	sbc $7F7FBC.l,X		; FF BC 7F 7F
	adc $5F7F5F.l,X		; 7F 5F 7F 5F
	and $2F3F2F.l,X		; 3F 2F 3F 2F
	ora $6C1F17.l,X		; 1F 17 1F 6C
	eor $20.b,S		; 43 20
	bpl -13.b		; 10 F3
	cpy #$C033.w		; C0 33 C0
	lda $5C.b,S		; A3 5C
	cpy #$04C0.w		; C0 C0 04
	tsb $C0.b		; 04 C0
	cpy #$BFBF.w		; C0 BF BF
	cpy #$C0C0.w		; C0 C0 C0
	cpy #$FFFF.w		; C0 FF FF
	cmp $FBD6FD.l,X		; DF FD D6 FB
	ora ($F2.b,S),Y		; 13 F2
	eor ($FA.b)		; 52 FA
	tyx		; BB
	sbc #$F5A9.w		; E9 A9 F5
	lda ($E8.b,X)		; A1 E8
	rol $0BF8.w		; 2E F8 0B
	jsr ($08C6.w,X)		; FC C6 08
	cmp #$A808.w		; C9 08 A8
	adc [$04.b]		; 67 04
	mvp $17,$56		; 44 56 17
	cmp ($03.b,X)		; C1 03
	sed		; F8
	ora ($FF.b,X)		; 01 FF
	sbc $DF7FFF.l,X		; FF FF 7F DF
	sta $AFCFFF.l,X		; 9F FF CF AF
	eor $1F077F.l		; 4F 7F 07 1F
	and [$9F.b]		; 27 9F
	eor $F7.b,S		; 43 F7
	stz $6811.w		; 9C 11 68
	lda $CFDF9F.l,X		; BF 9F DF CF
	eor $878F4F.l,X		; 5F 4F 8F 87
	cmp $636FC7.l		; CF C7 6F 63
	ora $80.b,S		; 03 80
	stx $BF.b,Y		; 96 BF
	adc $78AF.w,X		; 7D AF 78
	sbc [$CB.b],Y		; F7 CB
	asl $2B.b		; 06 2B
	asl $031E.w		; 0E 1E 03
	cop $02.b		; 02 02
.ACCU 8
	sep #$E0		; E2 E0
	bvs -128.b		; 70 80
	beq -64.b		; F0 C0
	ora $031E20.l		; 0F 20 1E 03
.ACCU 8
	sep #$60		; E2 60
	bpl -128.b		; 10 80
	sbc $42BD83.l,X		; FF 83 BD 42
	pea $0104.w		; F4 04 01
	cpx $82.b		; E4 82
	sty $80.b		; 84 80
	rti		; 40

	ora ($C0.b,X)		; 01 C0
	bpl  -5.b		; 10 FB
	ora ($E0.b,X)		; 01 E0
	cop $80.b		; 02 80
	rti		; 40

	cpy #$FE10.w		; C0 10 FE
	cmp $FC.b,S		; C3 FC
	brk $E0.b		; 00 E0
	jsr $2C3C.w		; 20 3C 2C
	and $010D0D.l		; 2F 0D 0D 01
	ora ($80.b,X)		; 01 80
	bra -32.b		; 80 E0
	cpx #$1C1C.w		; E0 1C 1C
	ora $03.b,S		; 03 03
	bra  -6.b		; 80 FA
	ora ($15.b,X)		; 01 15
	bra -64.b		; 80 C0
	cpx #$F080.w		; E0 80 F0
	bne -16.b		; D0 F0
	beq -128.b		; F0 80
	rti		; 40

	jsr $FFFF.w		; 20 FF FF
	eor $15.b,X		; 55 15
	bit $FF.b,X		; 34 FF
	sta ($FF.b),Y		; 91 FF
	dey		; 88
	sbc $E3FFC4.l,X		; FF C4 FF E3
	sbc $B9FF76.l,X		; FF 76 FF B9
	sbc $29FFDB.l,X		; FF DB FF 29
	cpx $1B36.w		; EC 36 1B
	tsb $0601.w		; 0C 01 06
	sbc $0C033F.l,X		; FF 3F 03 0C
	jsl $1010DD.l		; 22 DD 10 10
	jsr $0820.w		; 20 20 08
	php		; 08
	sty $84.b		; 84 84
	bcc -112.b		; 90 90
	rti		; 40

	rti		; 40

	inc $80FE.w,X		; FE FE 80
	bra -24.b		; 80 E8
	sbc $01FF51.l,X		; FF 51 FF 01
	ora [$02.b]		; 07 02
	ora $051F02.l		; 0F 02 1F 05
	rol $7C2A.w,X		; 3E 2A 7C
	stz $F9.b,X		; 74 F9
	inc $01.b,X		; F6 01
	asl $09.b		; 06 09
	ora ($13.b,X)		; 01 13
	ora $1E.b,S		; 03 1E
	asl $15.b		; 06 15
	ora $FFFE.w		; 0D FE FF
	ora $FD.b,X		; 15 FD
	sei		; 78
	plp		; 28
	sed		; F8
	ldy #$F4FC.w		; A0 FC F4
	jsr ($FE38.w,X)		; FC 38 FE
	dec $BABE.w,X		; DE BE BA
	ldx $3FB8.w,Y		; BE B8 3F
	cmp $8870.w,Y		; D9 70 88
	cpy $20.b		; C4 20
	cpy #$A09C.w		; C0 9C A0
	ldx $B8A0.w,Y		; BE A0 B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	pha		; 48
	bmi  78.b		; 30 4E
	sbc $4DFF32.l,X		; FF 32 FF 4D
	bmi  48.b		; 30 30
	ror $3232.w,X		; 7E 32 32
	jsr $0088.w		; 20 88 00
	brk $01.b		; 00 01
	ora ($3E.b,X)		; 01 3E
	clv		; B8
	ldx $9400.w,Y		; BE 00 94
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFC.w,X)		; FC FC FC
	cop $0C.b		; 02 0C
	inc $FC12.w,X		; FE 12 FC
	tsb $000C.w		; 0C 0C 00
	.db $82, $00, $00		; 82 00 00
	ora ($FD.b,X)		; 01 FD
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	cpy $02FC.w		; CC FC 02
	jsr ($F060.w,X)		; FC 60 F0
	jsr $FC30.w		; 20 30 FC
	rts		; 60

	rts		; 60

	cpy #$BBBE.w		; C0 BE BB
	rti		; 40

	sta $05.b,X		; 95 05
	ora $0F.b		; 05 0F
	ora $7F.b		; 05 7F
	sta $4E30.w		; 8D 30 4E
	ror $7F36.w,X		; 7E 36 7F
	lsr A		; 4A
	bvs  48.b		; 70 30
	bit $36.b,X		; 34 36
	bit $FF.b,X		; 34 FF
	sbc $FF5555.l,X		; FF 55 55 FF
	inc $FFFE.w,X		; FE FE FF
	sbc $FF.b,X		; F5 FF
	cpx $D4F6.w		; EC F6 D4
	cpx $EC.b		; E4 EC
	cpx $CEAE.w		; EC AE CE
	cmp $B8DD.w,X		; DD DD B8
	cop $0A.b		; 02 0A
	clc		; 18
	bmi   8.b		; 30 08
	rts		; 60

	bpl  -3.b		; 10 FD
	adc $2B1555.l,X		; 7F 55 15 2B
	cpx $7EC3.w		; EC C3 7E
	cmp ($BF.b,X)		; C1 BF
	rti		; 40

	lda $305760.l,X		; BF 60 57 30
	and $0704.w,X		; 3D 04 07
	jsr ($3E3C.w,X)		; FC 3C 3E
	and $030F1F.l,X		; 3F 1F 0F 03
	sbc $57C7FF.l,X		; FF FF C7 57
	cmp $A0802F.l,X		; DF 2F 80 A0
	rti		; 40

	rti		; 40

	ora ($03.b,X)		; 01 03
	adc $8C.b,S		; 63 8C
	sta $45.b,S		; 83 45
	ora ($0F.b,S),Y		; 13 0F
	and ($29.b)		; 32 29
	cmp $8020CF.l,X		; DF CF 20 80
	sta $C1.b,S		; 83 C1
	jmp $0A46.w		; 4C 46 0A
	sbc ($FF.b),Y		; F1 FF
	sbc [$5F.b],Y		; F7 5F
	sbc $DEE4C6.l,X		; FF C6 E4 DE
	ldy $FE.b		; A4 FE
	bit $9E.b		; 24 9E
	rti		; 40

	tas		; 1B
	bra  -6.b		; 80 FA
	adc $82FB82.l,X		; 7F 82 FB 82
	cld		; D8
	cpy #$80D8.w		; C0 D8 80
	tya		; 98
	sec		; 38
	stz $04.b		; 64 04
	ora $B81D.w,X		; 1D 1D B8
	sec		; 38
	ldy $20.b		; A4 20
	sbc $5401FF.l,X		; FF FF 01 54
	cpy #$1FFF.w		; C0 FF 1F
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $1FFF7F.l,X		; FF 7F FF 1F
	sbc $07FF0F.l,X		; FF 0F FF 07
	adc $E080E8.l,X		; 7F E8 80 E0
	bvs  -1.b		; 70 FF
	sbc $100111.l,X		; FF 11 01 10
	sed		; F8
	inx		; E8
	sed		; F8
	beq  -4.b		; F0 FC
	pea $F8FC.w		; F4 FC F8
	inc $FEFE.w,X		; FE FE FE
	plx		; FA
	inc $FEBE.w,X		; FE BE FE
	lsr $0408.w		; 4E 08 04
	sbc $0455FF.l,X		; FF FF 55 04
	adc ($7F.b)		; 72 7F
	and $DF14BF.l,X		; 3F BF 14 DF
	sta $EFEBFF.l,X		; 9F FF EB EF
	cmp $FFFFFF.l		; CF FF FF FF
	adc $77.b,X		; 75 77
	inc $C180.w		; EE 80 C1
	rts		; 60

	bmi  -1.b		; 30 FF
	sbc $AE4551.l,X		; FF 51 45 AE
	sbc $7FFFFF.l,X		; FF FF FF 7F
	sbc $FFFD9D.l,X		; FF 9D FD FF
	inc $FE2E.w,X		; FE 2E FE
	plx		; FA
	plx		; FA
	jsr ($DEFC.w,X)		; FC FC DE
	bra  96.b		; 80 60
	cop $C0.b		; 02 C0
	tsb $CF.b		; 04 CF
	sbc ($DF.b,S),Y		; F3 DF
	cmp ($5F.b,S),Y		; D3 5F
	ldx $F3E0.w		; AE E0 F3
	rti		; 40

	rti		; 40

	jsr $2226.w		; 20 26 22
	sec		; 38
	cop $3F.b		; 02 3F
	stz $7F.b		; 64 7F
	tay		; A8
	bra   5.b		; 80 05
	bne -64.b		; D0 C0
	dey		; 88
	bra  17.b		; 80 11
	ldy $C3C0.w,X		; BC C0 C3
	sbc $E2F7F3.l,X		; FF F3 F7 E2
	cmp $0646.w,X		; DD 46 06
	lsr $46.b		; 46 46
	tsb $04.b		; 04 04
	lda ($21.b,X)		; A1 21
	sta $FEDE8E.l		; 8F 8E DE FE
	jmp $1E1E1C.l		; 5C 1C 1E 1E
	jsl $388002.l		; 22 02 80 38
	sec		; 38
	adc $AEEFBF.l,X		; 7F BF EF AE
	eor ($25.b,S),Y		; 53 25
	bmi 122.b		; 30 7A
	bmi 124.b		; 30 7C
	pha		; 48
	bmi  72.b		; 30 48
	ply		; 7A
	and ($7F.b)		; 32 7F
	and ($1E.b,X)		; 21 1E
	bmi  52.b		; 30 34
	bmi  48.b		; 30 30
	bmi  50.b		; 30 32
	asl $280B.w,X		; 1E 0B 28
	ora $00.b,S		; 03 00
	rol $3E7F.w,X		; 3E 7F 3E
	ora ($01.b,X)		; 01 01
	rol $EF3E.w,X		; 3E 3E EF
	ldx $2553.w		; AE 53 25
	tsb $0C1F.w		; 0C 1F 0C
	asl $0C12.w,X		; 1E 12 0C
	ora ($3C.b)		; 12 3C
	sec		; 38
	jsr ($E018.w,X)		; FC 18 E0
	tsb $0C0C.w		; 0C 0C 0C
	tsb $3818.w		; 0C 18 38
	cpx #$200B.w		; E0 0B 20
	ora $00.b,S		; 03 00
	jsr ($FDFF.w,X)		; FC FF FD
	ora ($FC.b,X)		; 01 FC
	jsr ($AEEF.w,X)		; FC EF AE
	eor ($25.b,S),Y		; 53 25
	cpy #$F8F8.w		; C0 F8 F8
	jsr ($0CF2.w,X)		; FC F2 0C
	ora ($1E.b)		; 12 1E
	clc		; 18
	jsr ($F008.w,X)		; FC 08 F0
	cpy #$0CC0.w		; C0 C0 0C
	tsb $180C.w		; 0C 0C 18
	beq -17.b		; F0 EF
	ldx $2553.w		; AE 53 25
	stz $FE.b		; 64 FE
	stz $FE.b		; 64 FE
	txs		; 9A
	stz $9A.b		; 64 9A
	inc $FE6C.w,X		; FE 6C FE
	mvp $64,$38		; 44 38 64
	stz $64.b		; 64 64
	stz $64.b		; 64 64
	jmp ($EB38.w)		; 6C 38 EB
	sbc $F14155.l,X		; FF 55 41 F1
	sbc $E0FDEF.l,X		; FF EF FD E0
	sbc $5EFFC2.l,X		; FF C2 FF 5E
	adc $933F2F.l,X		; 7F 2F 3F 93
	sta $FDEFF2.l,X		; 9F F2 EF FD
	ora $FF8003.l,X		; 1F 03 80 FF
	sbc $4F4555.l,X		; FF 55 45 4F
	cmp $F1F707.l		; CF 07 F7 F1
	cmp $DAD4.w		; CD D4 DA
	stz $FEFF.w		; 9C FF FE
	sbc $AFFFFF.l,X		; FF FF FF AF
	sbc $3CB05F.l		; EF 5F B0 3C
	asl $0163.w		; 0E 63 01
	rti		; 40

	sbc $11D5FF.l,X		; FF FF D5 11
	sta $FB.b,S		; 83 FB
	sbc $54E5.w,Y		; F9 E5 54
	sbc ($9A.b)		; F2 9A
	eor $45C4.w,Y		; 59 C4 45
	adc $E5.b		; 65 E5
	sbc ($73.b,S),Y		; F3 73
	and $AB.b,S		; 23 AB
	sta $8B961C.l		; 8F 1C 96 8B
	bra   5.b		; 80 05
	cop $B7.b		; 02 B7
	adc $F00F.w,Y		; 79 0F F0
	ldx #$8308.w		; A2 08 83
	jsr $1010.w		; 20 10 10
	bra  24.b		; 80 18
	cop $10.b		; 02 10
	stz $0101.w		; 9C 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	lda $003F00.l,X		; BF 00 3F 00
	asl $09.b		; 06 09
	cop $05.b		; 02 05
	ora ($02.b,X)		; 01 02
	ora ($06.b,X)		; 01 06
	asl $02.b		; 06 02
	cop $01.b		; 02 01
	ora ($FF.b,X)		; 01 FF
	adc $A71511.l,X		; 7F 11 15 A7
	sbc $13FFEF.l,X		; FF EF FF 13
	sbc $BFFFFB.l,X		; FF FB FF BF
	adc $1C1F63.l,X		; 7F 63 1F 1C
	ora $03.b,S		; 03 03
	lda $1C40E0.l,X		; BF E0 40 1C
	ora $FF.b,S		; 03 FF
	adc $9D1515.l,X		; 7F 15 15 9D
	cmp $CFCF.w,X		; DD CF CF
	.db $82, $E2, $E3		; 82 E2 E3
	sbc $C0.b,S		; E3 C0
	sed		; F8
	sbc ($FF.b,X)		; E1 FF
	asl $F8.b		; 06 F8
	sed		; F8
	ldy #$6C10.w		; A0 10 6C
	tsa		; 3B
	ora $FDD5F8.l,X		; 1F F8 D5 FD
	cpy #$10FF.w		; C0 FF 10
	beq -31.b		; F0 E1
	.db $82, $01, $6E		; 82 01 6E
	ply		; 7A
	ora $E8.b		; 05 E8
	asl $80.b,X		; 16 80
	phk		; 4B
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $080C.w		; 0C 0C 08
	clc		; 18
	tsb $4C.b		; 04 4C
	adc $3A7D7F.l,X		; 7F 7F 7D 3A
	and $F303.w,X		; 3D 03 F3
	asl $C7.b		; 06 C7
	ora $02.b		; 05 02
	bit $03.b,X		; 34 03
	cpy #$0884.w		; C0 84 08
	cpy $08.b		; C4 08
	ora $32.b,S		; 03 32
	bmi -57.b		; 30 C7
	cpy #$0301.w		; C0 01 03
	tsb $0C.b		; 04 0C
	tsb $FDFF.w		; 0C FF FD
	sbc $9076EC.l,X		; FF EC 76 90
	lda $A0D8.w		; AD D8 A0
	bvs -122.b		; 70 86
	iny		; C8
	asl A		; 0A
	tsb $1410.w		; 0C 10 14
	jsr $4130.w		; 20 30 41
	sta $B001.w		; 8D 01 B0
	php		; 08
	cpy #$0630.w		; C0 30 06
	dex		; CA
	tsb $2014.w		; 0C 14 20
	clc		; 18
	pha		; 48
	eor $00FF01.l,X		; 5F 01 FF 00
	sbc $08.b,S		; E3 08
	cpx $10.b		; E4 10
	cld		; D8
	bvs -128.b		; 70 80
	pea $E8F4.w		; F4 F4 E8
	inx		; E8
	cpx #$80E0.w		; E0 E0 80
	bra   0.b		; 80 00
	sed		; F8
	ora ($50.b,X)		; 01 50
	bvs  32.b		; 70 20
	jsr ($FFC0.w,X)		; FC C0 FF
	sta ($70.b,S),Y		; 93 70
	tsb $DD34.w		; 0C 34 DD
	bvs -35.b		; 70 DD
	cpy #$C020.w		; C0 20 C0
	bpl  40.b		; 10 28
	rti		; 40

	asl $51.b		; 06 51
	bra -128.b		; 80 80
	cpy #$4040.w		; C0 40 40
	jsr $9840.w		; 20 40 98
	lsr $80.b		; 46 80
	and ($50.b,S),Y		; 33 50
	and ($30.b,S),Y		; 33 30
	adc [$88.b],Y		; 77 88
	cpy #$4080.w		; C0 80 40
	ora ($77.b,X)		; 01 77
	adc [$80.b],Y		; 77 80
	bra -128.b		; 80 80
	bra 119.b		; 80 77
	trb $30FF.w		; 1C FF 30
	sty $60.b,X		; 94 60
	trb $2018.w		; 1C 18 20
	bmi  96.b		; 30 60
	rti		; 40

	rti		; 40

	tya		; 98
	tya		; 98
	php		; 08
	php		; 08
	bmi  48.b		; 30 30
	jsr $8020.w		; 20 20 80
	bra -56.b		; 80 C8
	bmi -64.b		; 30 C0
	sbc $030101.l,X		; FF 01 01 03
	cop $06.b		; 02 06
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	brk $FE.b		; 00 FE
	ora ($14.b,X)		; 01 14
	and $5FFF1F.l,X		; 3F 1F FF 5F
	sbc $FFFF7F.l,X		; FF 7F FF FF
	and $FFFFC0.l,X		; 3F C0 FF FF
	eor ($40.b,X)		; 41 40
	bra -65.b		; 80 BF
	cmp [$FF.b]		; C7 FF
	sbc $7EFF.w,Y		; F9 FF 7E
	adc $BF7F40.l,X		; 7F 40 7F BF
	sbc $0DFF83.l,X		; FF 83 FF 0D
	sbc $F0808E.l,X		; FF 8E 80 F0
	sbc $2553AE.l		; EF AE 53 25
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	ora #$0C.b		; 09 0C
	ora ($7E.b)		; 12 7E
	sei		; 78
	jsr ($7088.w,X)		; FC 88 70
	cop $02.b		; 02 02
	asl $0C.b		; 06 0C
	trb $7078.w		; 1C 78 70
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $02.b,X		; 95 02
	cop $E7.b		; 02 E7
	ora $02.b,X		; 15 02
	sbc $07.b		; E5 07
	cop $07.b		; 02 07
	ora $E2.b		; 05 E2
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $B8.b,X		; 95 B8
	clc		; 18
	ldy $1024.w,X		; BC 24 10
	plp		; 28
	sei		; 78
	bmi 120.b		; 30 78
	pha		; 48
	clc		; 18
	bpl  48.b		; 10 30
	bmi  48.b		; 30 30
	sbc $2553AE.l		; EF AE 53 25
	bmi 120.b		; 30 78
	bmi 122.b		; 30 7A
	eor $62.b,X		; 55 62
	sta $FF.b,X		; 95 FF
	ror $FDFF.w,X		; 7E FF FD
	cop $30.b		; 02 30
	bmi  34.b		; 30 22
	.db $62, $62, $7E		; 62 62 7E
	cop $02.b		; 02 02
	rol $0C00.w		; 2E 00 0C
	ora ($7E.b,X)		; 01 7E
	ror $7EFF.w,X		; 7E FF 7E
	ror $E57E.w,X		; 7E 7E E5
	cmp $FFBB.w,Y		; D9 BB FF
	nop		; EA
	xba		; EB
	lda $BEA7B7.l,X		; BF B7 A7 BE
	eor $FF6755.l,X		; 5F 55 67 FF
	phy		; 5A
	eor $BF.b,X		; 55 BF
	lda $AADA.w,X		; BD DA AA
	eor $000015.l,X		; 5F 15 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $11.b		; 00 11
	bra   0.b		; 80 00
	lsr $06.b,X		; 56 06
	cmp $7D.b,X		; D5 7D
	cpy $01CC.w		; CC CC 01
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	cop $0E.b		; 02 0E
	cop $06.b		; 02 06
	cop $18.b		; 02 18
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	sbc $0405FF.l,X		; FF FF 05 04
	plb		; AB
	xba		; EB
	ror $FF.b,X		; 76 FF
	cmp $FEFF.w		; CD FF FE
	sbc $DAFEF6.l,X		; FF F6 FE DA
	plx		; FA
	tya		; 98
	phx		; DA
	clc		; 18
	dey		; 88
	sbc $0C06.w,X		; FD 06 0C
	adc $7F.b,X		; 75 7F
	cmp $FC.b,S		; C3 FC
	bpl -128.b		; 10 80
	bra -128.b		; 80 80
	bvs  64.b		; 70 40
	rti		; 40

	sta $80.b,S		; 83 80
	cpy $40.b		; C4 40
	cli		; 58
	sbc $3030EF.l		; EF EF 30 30
	ora $03.b,S		; 03 03
	tsb $07.b		; 04 07
	clc		; 18
	trb $7F5F.w		; 1C 5F 7F
	jsr ($FDFC.w,X)		; FC FC FD
	and ($33.b,S),Y		; 33 33
	ora $DF1F1F.l		; 0F 1F 1F DF
	jsr $28D7.w		; 20 D7 28
	cmp $C0F524.l,X		; DF 24 F5 C0
	cpy #$FFE0.w		; C0 E0 FF
	cpx #$03EF.w		; E0 EF 03
	bra   3.b		; 80 03
	bra  83.b		; 80 53
	pha		; 48
	ora $8FAF9F.l		; 0F 9F AF 8F
	dec $30C8.w		; CE C8 30
	iny		; C8
	ora #$34.b		; 09 34
	bvs  48.b		; 70 30
	rti		; 40

	tsb $31.b		; 04 31
	ora ($30.b,X)		; 01 30
	trb $3CE0.w		; 1C E0 3C
	ora #$C1.b		; 09 C1
	beq   1.b		; F0 01
	cop $F6.b		; 02 F6
	eor $FF03.w,X		; 5D 03 FF
	ora $0A.b		; 05 0A
	cop $02.b		; 02 02
	ora $E405.w		; 0D 05 E4
	ora ($02.b)		; 12 02
	asl A		; 0A
	asl $FF.b		; 06 FF
	sbc $10E1E1.l,X		; FF E1 E1 10
	beq   8.b		; F0 08
	clc		; 18
	asl $0E.b		; 06 0E
	sbc $00034D.l,X		; FF 4D 03 00
	ora #$E6.b		; 09 E6
	ora $04.b		; 05 04
	sty $80.b		; 84 80
	ldx #$2222.w		; A2 22 22
	rti		; 40

	rti		; 40

	rti		; 40

	sbc [$F7.b],Y		; F7 F7
	cmp $003304.l,X		; DF 04 33 00
	jmp ($8090.w)		; 6C 90 80
	bra   6.b		; 80 06
	bcc  16.b		; 90 10
	tsb $F8.b		; 04 F8
	sed		; F8
	tsb $04.b		; 04 04
	sbc $1155FF.l,X		; FF FF 55 11
	plp		; 28
	and $2D3F27.l,X		; 3F 27 3F 2D
	and $533F39.l,X		; 3F 39 3F 53
	adc $7E7F68.l,X		; 7F 68 7F 7E
	adc $177F5E.l,X		; 7F 5E 7F 17
	clc		; 18
	ora ($06.b)		; 12 06
	bit $FF18.w		; 2C 18 FF
	sbc $835141.l,X		; FF 41 51 83
	sbc $F7FF7B.l,X		; FF 7B FF F7
	sbc $DFFEEE.l,X		; FF EE FE DF
	sbc $7FFDBD.l,X		; FF BD FD 7F
	inc $FEFE.w,X		; FE FE FE
	inc $0D04.w,X		; FE 04 0D
	cop $18.b		; 02 18
	eor $B4F37F.l,X		; 5F 7F F3 B4
	inc $0101.w,X		; FE 01 01
	ora ($48.b,X)		; 01 48
	jmp $E010.w		; 4C 10 E0
	lsr $40.b		; 46 40
	txa		; 8A
	ldy #$FF01.w		; A0 01 FF
	sbc $608080.l,X		; FF 80 80 60
	rts		; 60

	rti		; 40

	ldx #$1002.w		; A2 02 10
	sbc $4001FF.l,X		; FF FF 01 40
	sed		; F8
	sbc $73FF0B.l,X		; FF 0B FF 73
	sbc $5FFFBF.l,X		; FF BF FF 5F
	adc $93BFAF.l,X		; 7F AF BF 93
	sta $FEB7B5.l,X		; 9F B5 B7 FE
	jsr $FFFF.w		; 20 FF FF
	ora ($00.b,X)		; 01 00
.ACCU 8
.INDEX 8
	sep #$FF		; E2 FF
	and $DFFF.w		; 2D FF DF
	sbc $3FFFEF.l,X		; FF EF FF 3F
	sbc $67FFDF.l,X		; FF DF FF 67
	sbc $7CFFFB.l,X		; FF FB FF 7C
	sbc $0001FF.l,X		; FF FF 01 00
	eor $CD.b		; 45 CD
	tya		; 98
	sbc [$EF.b],Y		; F7 EF
	sbc $3FFFF7.l,X		; FF F7 FF 3F
	sbc $069FAF.l,X		; FF AF 9F 06
	sta $7D8682.l		; 8F 82 86 7D
	brk $54.b		; 00 54
	brk $F0.b		; 00 F0
	ora $0D.b,S		; 03 0D
	and [$03.b],Y		; 37 03
	ora $0F.b,S		; 03 0F
	ora $C01550.l		; 0F 50 15 C0
	ora $F11F01.l		; 0F 01 1F F1
	bcc -128.b		; 90 80
	ora ($01.b,X)		; 01 01
	asl $E01E.w,X		; 1E 1E E0
	cpx #$55.b		; E0 55
	eor $CF.b,X		; 55 CF
	cmp $10301F.l		; CF 1F 30 10
	rts		; 60

	jsr $40C0.w		; 20 C0 40
	cop $0F.b		; 02 0F
	ora $201010.l		; 0F 10 10 20
	jsr $0101.w		; 20 01 01
	.db $42, $43		; 42 43
	asl $05.b		; 06 05
	eor $01.b,X		; 55 01
	sbc $87880B.l,X		; FF 0B 88 87
	bpl  96.b		; 10 60
	bra  -9.b		; 80 F7
	sbc [$07.b],Y		; F7 07
	ora [$10.b]		; 07 10
	ora [$60.b],Y		; 17 60
	sei		; 78
	bra -32.b		; 80 E0
	bra 113.b		; 80 71
	cmp $FF492A.l,X		; DF 2A 49 FF
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($03.b,X)		; 01 03
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	rol $02C0.w,X		; 3E C0 02
	ora ($04.b,X)		; 01 04
	cop $7F.b		; 02 7F
	sbc $C3F57F.l,X		; FF 7F F5 C3
	sty $43.b		; 84 43
	tsb $A5.b		; 04 A5
	php		; 08
	cld		; D8
	beq   7.b		; F0 07
	sbc $0A.b,S		; E3 0A
	sbc ($14.b,S),Y		; F3 14
	xba		; EB
	tsb $01.b		; 04 01
	sec		; 38
	sta ($38.b,X)		; 81 38
	cmp $10.b,S		; C3 10
	sbc [$F8.b]		; E7 F8
	pea $01E8.w		; F4 E8 01
	sed		; F8
	ora ($D5.b,X)		; 01 D5
	cop $FF.b		; 02 FF
	asl A		; 0A
	cmp $406010.l		; CF 10 60 40
	bra -128.b		; 80 80
	beq   7.b		; F0 07
	bpl   8.b		; 10 08
	jsr $C010.w		; 20 10 C0
	jsr $8040.w		; 20 40 80
	ora ($00.b,X)		; 01 00
	asl A		; 0A
	bra  -1.b		; 80 FF
	inc $0101.w,X		; FE 01 01
	ora $F0.b		; 05 F0
	and $17E8E8.l		; 2F E8 E8 17
	cop $03.b		; 02 03
	jsr $173B.w		; 20 3B 17
	ora [$17.b],Y		; 17 17
	sbc [$1F.b],Y		; F7 1F
	ora [$38.b]		; 07 38
	ora $F8.b,S		; 03 F8
	eor $FD.b,X		; 55 FD
	sbc $437E5B.l,X		; FF 5B 7E 43
	iny		; C8
	tsb $A004.w		; 0C 04 A0
	cpx #$40.b		; E0 40
	beq -48.b		; F0 D0
	clc		; 18
	jsr ($02FC.w,X)		; FC FC 02
	cop $F0.b		; 02 F0
	beq   8.b		; F0 08
	sed		; F8
	tsb $FC.b		; 04 FC
	php		; 08
	cpx #$10.b		; E0 10
	ora $45.b,X		; 15 45
	and $407FC3.l,X		; 3F C3 7F 40
	bpl  36.b		; 10 24
	ora ($03.b,X)		; 01 03
	and $20202F.l		; 2F 2F 20 20
	php		; 08
	php		; 08
	cop $02.b		; 02 02
	ora $03.b,S		; 03 03
	cmp $F7D7.w,X		; DD D7 F7
	adc ($FA.b,S),Y		; 73 FA
	ora ($01.b,X)		; 01 01
	mvp $01,$06		; 44 06 01
	eor [$01.b],Y		; 57 01
	and ($60.b,X)		; 21 60
	sty $05.b		; 84 05
	sbc $01EC.w		; ED EC 01
	tsb $04.b		; 04 04
	tsb $06.b		; 04 06
	eor $645A.w,Y		; 59 5A 64
	stz $01.b		; 64 01
	cmp $FF.b		; C5 FF
	cmp $017655.l		; CF 55 76 01
	cpy #$82.b		; C0 82
	pla		; 68
	cpy #$B1.b		; C0 B1
	sbc ($CB.b,X)		; E1 CB
	adc ($7B.b),Y		; 71 7B
	and ($FD.b,S),Y		; 33 FD
	ora $0101.w		; 0D 01 01
	bra   8.b		; 80 08
	rti		; 40

	ldy #$50.b		; A0 50
	and #$FF.b		; 29 FF
	sbc $EE7F15.l,X		; FF 15 7F EE
	sbc $FFFBFA.l		; EF FA FB FF
	sbc $6D7E6E.l		; EF 6E 7E 6D
	adc $EDE5.w,X		; 7D E5 ED
	sbc $FD.b,X		; F5 FD
	lda $16D3B7.l		; AF B7 D3 16
	php		; 08
	ora ($10.b,S),Y		; 13 10
	stz $1018.w		; 9C 18 10
	bpl   2.b		; 10 02
	eor $7FC3F5.l,X		; 5F F5 C3 7F
	sei		; 78
	sta ($C1.b,X)		; 81 C1
	sta ($05.b,X)		; 81 05
	rts		; 60

	bmi  89.b		; 30 59
	php		; 08
	bpl  16.b		; 10 10
	bpl  -1.b		; 10 FF
	sbc $204040.l,X		; FF 40 40 20
	jsr $5151.w		; 20 51 51
	php		; 08
	php		; 08
	bpl 103.b		; 10 67
	eor $C3.b,X		; 55 C3
	sbc $028002.l,X		; FF 02 80 02
	bra   8.b		; 80 08
	clc		; 18
	and ($E8.b),Y		; 31 E8
	stp		; DB
	sbc $0808FF.l,X		; FF FF 08 08
	clc		; 18
	clc		; 18
	and ($31.b),Y		; 31 31
	inx		; E8
	inx		; E8
	stp		; DB
	stp		; DB
	ora $00.b,X		; 15 00
	ora $A0DF00.l		; 0F 00 DF A0
	bra  63.b		; 80 3F
	and $01C0C0.l,X		; 3F C0 C0 01
	brk $03.b		; 00 03
	brk $FF.b		; 00 FF
	sbc $0550FF.l,X		; FF FF 50 05
	cpy #$03.b		; C0 03
	xce		; FB
	stz $039B.w		; 9C 9B 03
	sed		; F8
	sed		; F8
	ora [$07.b]		; 07 07
	eor $55.b,X		; 55 55
	jsr ($3EFF.w,X)		; FC FF 3E
	sbc $7FDF.w		; ED DF 7F
	lda $E6BB77.l,X		; BF 77 BB E6
	asl $E71E.w,X		; 1E 1E E7
	sbc [$EB.b]		; E7 EB
	xba		; EB
	adc $AD6D.w		; 6D 6D AD
	lda $C5C5.w		; AD C5 C5
	sbc $51F9.w,Y		; F9 F9 51
	ora $F3.b,X		; 15 F3
	and $69F3A2.l,X		; 3F A2 F3 69
	bit $0203.w,X		; 3C 03 02
	eor $735D.w,X		; 5D 5D 73
	adc ($29.b,S),Y		; 73 29
	and #$04.b		; 29 04
	tsb $03.b		; 04 03
	ora $02.b,S		; 03 02
	cop $FF.b		; 02 FF
	sbc $F9FF3F.l,X		; FF 3F FF F9
	ora $7C65D8.l		; 0F D8 65 7C
	plx		; FA
	adc [$8C.b],Y		; 77 8C
	cpx $AEB2.w		; EC B2 AE
	jsr ($B5B6.w,X)		; FC B6 B5
	asl $0D91.w		; 0E 91 0D
	ora ($04.b,X)		; 01 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	jsr $2C21.w		; 20 21 2C
	mvp $60,$3C		; 44 3C 60
	bpl  -1.b		; 10 FF
	and [$1F.b],Y		; 37 1F
	and ($F7.b,S),Y		; 33 F7
	adc $48.b,S		; 63 48
	and $62.b		; 25 62
	rti		; 40

	asl $9149.w		; 0E 49 91
	jmp $87BA.w		; 4C BA 87
	cop $E8.b		; 02 E8
	dey		; 88
	plp		; 28
	php		; 08
	rts		; 60

	jmp $010380.l		; 5C 80 03 01
	sbc $7C71FF.l,X		; FF FF 71 7C
	sbc $E9AFBF.l,X		; FF BF AF E9
	cmp $35D1.w,X		; DD D1 35
	sbc $FF21.w,X		; FD 21 FF
	cpy $67.b		; C4 67
	ror $62.b		; 66 62
	ror $76.b		; 66 76
	tyx		; BB
	bit $04.b,X		; 34 04
	jsr $B920.w		; 20 20 B9
	bpl  20.b		; 10 14
	trb $FF.b		; 14 FF
	sbc $DC54FF.l,X		; FF FF 54 DC
	jsr $2071.w		; 20 71 20
	inc $F470.w		; EE 70 F4
	rti		; 40

	sbc $34AC30.l,X		; FF 30 AC 34
	cpx #$1B.b		; E0 1B
	lda ($37.b,S),Y		; B3 37
	sta $83.b,S		; 83 83
	stx $018E.w		; 8E 8E 01
	ora ($0B.b,X)		; 01 0B
	phd		; 0B
	eor $04.b,S		; 43 04
	pha		; 48
	ora $D5.b,X		; 15 D5
	and $80C17C.l,X		; 3F 7C C1 80
	rts		; 60

	ora ($80.b,X)		; 01 80
	beq -128.b		; F0 80
	bra  63.b		; 80 3F
	and $608080.l,X		; 3F 80 80 60
	rts		; 60

	bra -128.b		; 80 80
	beq 112.b		; F0 70
	bra -72.b		; 80 B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	pha		; 48
	bmi  78.b		; 30 4E
	sbc $4DFF32.l,X		; FF 32 FF 4D
	bmi  48.b		; 30 30
	ror $3232.w,X		; 7E 32 32
	jsr $0088.w		; 20 88 00
	brk $01.b		; 00 01
	ora ($7E.b,X)		; 01 7E
	clv		; B8
	ldx $9400.w,Y		; BE 00 94
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFC.w,X)		; FC FC FC
	cop $0C.b		; 02 0C
	inc $FC12.w,X		; FE 12 FC
	tsb $A00C.w		; 0C 0C A0
	.db $82, $40, $00		; 82 40 00
	ora ($02.b,X)		; 01 02
	ora ($FC.b,X)		; 01 FC
	ora ($BE.b,X)		; 01 BE
	tyx		; BB
	rti		; 40

	sta $0E.b,X		; 95 0E
	asl $0A1F.w		; 0E 1F 0A
	sbc $CE3011.l,X		; FF 11 30 CE
	sei		; 78
	bmi 120.b		; 30 78
	pha		; 48
	inc $3030.w		; EE 30 30
	bmi  48.b		; 30 30
	sed		; F8
	cmp $C040.w,X		; DD 40 C0
	cli		; 58
	cli		; 58
	ldy $58.b		; A4 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	cli		; 58
	eor $54.b,X		; 55 54
	cmp $C0.b,S		; C3 C0
	bit $08.b,X		; 34 08
	rti		; 40

	lsr $04.b		; 46 04
	bpl  35.b		; 10 23
	sed		; F8
	sed		; F8
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	mvn $F0,$55		; 54 55 F0
	and $B0E080.l,X		; 3F 80 E0 B0
	sei		; 78
	lsr $881B.w,X		; 5E 1B 88
	bra -128.b		; 80 80
	jsr $7020.w		; 20 20 70
	bvs   8.b		; 70 08
	php		; 08
	cop $02.b		; 02 02
	ora ($F0.b,X)		; 01 F0
	ora $00.b,S		; 03 00
	sbc $620303.l,X		; FF 03 03 62
	.db $62, $FF, $FF		; 62 FF FF
	eor $C4.b		; 45 C4
	ora $919100.l		; 0F 00 91 91
	bra  64.b		; 80 40
	inx		; E8
	cpy #$FE.b		; C0 FE
	inc $0101.w,X		; FE 01 01
	ora $11.b,X		; 15 11
	and $010730.l,X		; 3F 30 07 01
	ora $1804.w		; 0D 04 18
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	inc $557F.w,X		; FE 7F 55
	and $9F.b,X		; 35 9F
	sta ($9C.b),Y		; 91 9C
	pla		; 68
	.db $42, $62		; 42 62
	cop $01.b		; 02 01
	ora ($26.b,X)		; 01 26
	and $C0.b,S		; 23 C0
	eor ($32.b,X)		; 41 32
	rts		; 60

	trb $0242.w		; 1C 42 02
	ora ($23.b,X)		; 01 23
	sta ($80.b,X)		; 81 80
	eor ($C8.b,X)		; 41 C8
	ora ($44.b,X)		; 01 44
	adc $A08080.l,X		; 7F 80 80 A0
	cpy #$FF.b		; C0 FF
	bra -64.b		; 80 C0
	adc $00FF01.l,X		; 7F 01 FF 00
	sed		; F8
	cpx #$C0.b		; E0 C0
.ACCU 8
.INDEX 8
	sep #$B8		; E2 B8
	cop $70.b		; 02 70
	php		; 08
	sta $A4.b,S		; 83 A4
	.db $82, $60, $C2		; 82 60 C2
	sed		; F8
	bit $FF3C.w,X		; 3C 3C FF
	sbc $093355.l,X		; FF 55 33 09
	ora $250813.l		; 0F 13 08 25
	and $42351D.l		; 2F 1D 35 42
	lsr A		; 4A
	eor ($01.b,X)		; 41 01
	cpx #$D8.b		; E0 D8
	.db $82, $02, $F0		; 82 02 F0
	bpl  32.b		; 10 20
	clc		; 18
	pha		; 48
	php		; 08
	bcs  24.b		; B0 18
	ora $0C0F44.l		; 0F 44 0F 0C
	bne -128.b		; D0 80
	rti		; 40

	bra -104.b		; 80 98
	tsb $2F.b		; 04 2F
	and $984040.l		; 2F 40 40 98
	tya		; 98
	sbc $2553AE.l		; EF AE 53 25
	bmi 122.b		; 30 7A
	bmi 124.b		; 30 7C
	pha		; 48
	bmi  72.b		; 30 48
	ply		; 7A
	and ($7F.b)		; 32 7F
	and ($1E.b,X)		; 21 1E
	bmi  52.b		; 30 34
	bmi  48.b		; 30 30
	bmi  50.b		; 30 32
	asl $280B.w,X		; 1E 0B 28
	ora $00.b,S		; 03 00
	ror $7EFF.w,X		; 7E FF 7E
	ora ($01.b,X)		; 01 01
	ror $EF7E.w,X		; 7E 7E EF
	ldx $2553.w		; AE 53 25
	tsb $0C1F.w		; 0C 1F 0C
	asl $0C12.w,X		; 1E 12 0C
	ora ($3C.b)		; 12 3C
	sec		; 38
	jsr ($E018.w,X)		; FC 18 E0
	tsb $0C0C.w		; 0C 0C 0C
	tsb $3818.w		; 0C 18 38
	cpx #$0B.b		; E0 0B
	tay		; A8
	ora $20.b,S		; 03 20
	jsr ($FCFE.w,X)		; FC FE FC
	ora ($02.b,X)		; 01 02
	ora ($FC.b,X)		; 01 FC
	jsr ($2301.w,X)		; FC 01 23
	lda $30B41F.l,X		; BF 1F B4 30
	sei		; 78
	bmi  48.b		; 30 30
	and ($70.b),Y		; 31 70
	bra 112.b		; 80 70
	inx		; E8
	sbc ($30.b),Y		; F1 30
	bmi  48.b		; 30 30
	bmi  48.b		; 30 30
	rti		; 40

	bvs -32.b		; 70 E0
	cpx #$EF.b		; E0 EF
	ldx $2553.w		; AE 53 25
	cli		; 58
	sbc $FC58.w,X		; FD 58 FC
	ldx $5C.b		; A6 5C
	ldx #$FE.b		; A2 FE
	cld		; D8
	jsr ($9068.w,X)		; FC 68 90
	cli		; 58
	cli		; 58
	cli		; 58
	jmp $90D8DC.l		; 5C DC D8 90
	sbc $4555FF.l,X		; FF FF 55 45
	sty $94.b,X		; 94 94
	eor ($52.b)		; 52 52
	and ($32.b)		; 32 32
	lsr A		; 4A
	lsr A		; 4A
	rol $36.b,X		; 36 36
	asl A		; 0A
	inc A		; 1A
	asl $1E.b		; 06 1E
	sta $638D.w		; 8D 8D 63
	dec $60.b		; C6 60
	sec		; 38
	tsb $0304.w		; 0C 04 03
	eor $F5.b,X		; 55 F5
	jsr ($61FF.w,X)		; FC FF 61
	ror $1F3F.w,X		; 7E 3F 1F
	and $0CF37F.l,X		; 3F 7F F3 0C
	lda [$58.b]		; A7 58
	and ($21.b,X)		; 21 21
	ora $0F0F1F.l,X		; 1F 1F 0F 0F
	ora $3F3F1F.l,X		; 1F 1F 3F 3F
	adc $5F5F6F.l		; 6F 6F 5F 5F
	eor ($00.b,X)		; 41 00
	cpy #$00.b		; C0 00
	bra -64.b		; 80 C0
	bra -128.b		; 80 80
	and [$55.b],Y		; 37 55
	ora $8028F3.l		; 0F F3 28 80
	cli		; 58
	bra -128.b		; 80 80
	cli		; 58
	bpl -32.b		; 10 E0
	jmp ($D0D0.w)		; 6C D0 D0
	bpl  16.b		; 10 10
	bpl  16.b		; 10 10
	rts		; 60

	rts		; 60

	pha		; 48
	pha		; 48
	eor $04.b		; 45 04
	cmp $00.b,S		; C3 00
	ldy #$40.b		; A0 40
	bmi  32.b		; 30 20
	cpy #$C0.b		; C0 C0
	jsr $1320.w		; 20 20 13
	eor $C80C03.l		; 4F 03 0C C8
	jsr $1090.w		; 20 90 10
	bpl  76.b		; 10 4C
	rti		; 40

	php		; 08
	beq -16.b		; F0 F0
	php		; 08
	php		; 08
	eor $D3.b		; 45 D3
	ora $301EF3.l		; 0F F3 1E 30
	ora ($70.b)		; 12 70
	bpl  37.b		; 10 25
.ACCU 8
	sep #$20		; E2 20
	ora $10100F.l		; 0F 0F 10 10
	jsr $0120.w		; 20 20 01
	ora ($40.b,X)		; 01 40
	rti		; 40

	adc [$57.b],Y		; 77 57
	sbc ($FF.b,S),Y		; F3 FF
	adc $B81810.l,X		; 7F 10 18 B8
	clc		; 18
	jmp $081E.w		; 4C 1E 08
	ora [$8F.b]		; 07 8F
	sta ($8F.b,X)		; 81 8F
	bra -88.b		; 80 A8
	ldy #$40.b		; A0 40
	rti		; 40

	trb $10.b		; 14 10
	asl $04.b		; 06 04
	sta $01018E.l		; 8F 8E 01 01
	adc $403FD0.l,X		; 7F D0 3F 40
	sta $E0.b,S		; 83 E0
	pei ($B0.b)		; D4 B0
	inx		; E8
	bvc  64.b		; 50 40
	sta ($A7.b,X)		; 81 A7
	rti		; 40

	ora [$18.b]		; 07 18
	dey		; 88
	sec		; 38
	bvs  32.b		; 70 20
	cmp ($FF.b,X)		; C1 FF
	sbc $F95555.l,X		; FF 55 55 F9
	ora ($F3.b,X)		; 01 F3
	cop $F7.b		; 02 F7
	tsb $E7.b		; 04 E7
	asl A		; 0A
	cmp #$14.b		; C9 14
	lda ($08.b),Y		; B1 08
	eor ($30.b),Y		; 51 30
	lda ($60.b,X)		; A1 60
	inc $F8FC.w,X		; FE FC F8
	beq -30.b		; F0 E2
	dec $8E.b		; C6 8E
	asl $C03F.w,X		; 1E 3F C0
	eor $CFC300.l,X		; 5F 00 C3 CF
	sbc #$ED.b		; E9 ED
	ora ($19.b),Y		; 11 19
	cop $02.b		; 02 02
	bpl  48.b		; 10 30
	and ($10.b)		; 32 10
	cpx $19.b		; E4 19
	adc ($F7.b),Y		; 71 F7
	cmp $C0.b,S		; C3 C0
	tsb $0405.w		; 0C 05 04
	sta ($12.b)		; 92 12
	ora ($40.b)		; 12 40
	ora ($01.b,X)		; 01 01
	stz $44.b		; 64 44
	sbc [$F7.b],Y		; F7 F7
	bra -128.b		; 80 80
	bra -128.b		; 80 80
	sbc ($D0.b,S),Y		; F3 D0
	cmp $00.b,S		; C3 00
	sty $0870.w		; 8C 70 08
	php		; 08
	stx $80.b		; 86 80
	tsb $20.b		; 04 20
	jsr $F8F8.w		; 20 F8 F8
	tsb $04.b		; 04 04
	tsx		; BA
	tax		; AA
	bmi   0.b		; 30 00
	ora ($FD.b,X)		; 01 FD
	jsr ($FDFF.w,X)		; FC FF FD
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	jsr ($F8FC.w,X)		; FC FC F8
	cmp $C040.w,X		; DD 40 C0
	cpx #$60.b		; E0 60
	bpl  96.b		; 10 60
	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	rts		; 60

	jmp ($6060.w,X)		; 7C 60 60
	bvs -17.b		; 70 EF
	ldx $2553.w		; AE 53 25
	jmp ($66FE.w,X)		; 7C FE 66
	sbc $906096.l,X		; FF 96 60 90
	beq  96.b		; F0 60
	beq -112.b		; F0 90
	bvs 124.b		; 70 7C
	jmp ($6060.w,X)		; 7C 60 60
	rts		; 60

	rts		; 60

	rts		; 60

	ror $EFAA.w		; 6E AA EF
	sta $EAAA6A.l,X		; 9F 6A AA EA
	tax		; AA
	ror $9E.b		; 66 9E
	eor $A9.b,X		; 55 A9
	tax		; AA
	tax		; AA
	eor $76.b,X		; 55 76
	tax		; AA
	ror A		; 6A
	rtl		; 6B

	asl $00.b		; 06 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b),Y		; 11 80
	brk $F1.b		; 00 F1
	asl $80.b		; 06 80
	sec		; 38
	cpy $010C.w		; CC 0C 01
	cop $01.b		; 02 01
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	cop $04.b		; 02 04
	tsb $FF.b		; 04 FF
	eor $03.b,S		; 43 03
	brk $0D.b		; 00 0D
	adc ($14.b)		; 72 14
	sty $2A.b,X		; 94 2A
	rol A		; 2A
	mvp $88,$44		; 44 44 88
	dey		; 88
	ora ($FF.b,X)		; 01 FF
	sbc $7FFDFD.l,X		; FF FD FD 7F
	sbc $10E3.w,X		; FD E3 10
	ora ($02.b,X)		; 01 02
	ora $0B0D.w		; 0D 0D 0B
	ora $28.b,S		; 03 28
	php		; 08
	ldx $9F10.w		; AE 10 9F
	ror $C0DF.w,X		; 7E DF C0
	bmi  33.b		; 30 21
	trb $0711.w		; 1C 11 07
	ora $10.b,S		; 03 10
	bpl 102.b		; 10 66
	rts		; 60

	sta $FFFF80.l,X		; 9F 80 FF FF
	adc $EFF77F.l,X		; 7F 7F F7 EF
	sbc $BFDDDF.l		; EF DF DD BF
	dec A		; 3A
	inc $DC54.w,X		; FE 54 DC
	cmp ($18.b),Y		; D1 18
	plb		; AB
	ora $B352.w,Y		; 19 52 B3
	inc $E1.b,X		; F6 E1
	inc $DCC1.w		; EE C1 DC
	bra  57.b		; 80 39
	adc ($60.b,S),Y		; 73 60
	adc [$60.b]		; 67 60
	lsr $40.b		; 46 40
	tsb $FFBD.w		; 0C BD FF
	adc $8F3FFD.l		; 6F FD 3F 8F
	bra  -1.b		; 80 FF
	sbc $1F7303.l,X		; FF 03 73 1F
	sbc $D0DF7F.l,X		; FF 7F DF D0
	bvc 103.b		; 50 67
	sbc $FF7FFF.l,X		; FF FF 7F FF
	adc $80E0FC.l,X		; 7F FC E0 80
	jsr $C020.w		; 20 20 C0
	bra  14.b		; 80 0E
	sbc $EF.b,X		; F5 EF
	eor ($3F.b,S),Y		; 53 3F
	sbc $E00C08.l,X		; FF 08 0C E0
	jsr $3630.w		; 20 30 36
	bmi  24.b		; 30 18
	bvc -48.b		; 50 D0
	stz $FF80.w,X		; 9E 80 FF
	sbc $3030E0.l,X		; FF E0 30 30
	cpy #$10.b		; C0 10
	jsr $2010.w		; 20 10 20
	ora $01.b,X		; 15 01
	and $04F800.l,X		; 3F 00 F8 04
	cop $01.b		; 02 01
	jsr ($02FC.w,X)		; FC FC 02
	cop $01.b		; 02 01
	ora ($00.b,X)		; 01 00
	mvp $FF,$00		; 44 00 FF
	bra  64.b		; 80 40
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	clc		; 18
	clc		; 18
	tsb $04.b		; 04 04
	sbc $035C.w,X		; FD 5C 03
	brk $E3.b		; 00 E3
	tas		; 1B
	tsb $14.b		; 04 14
	asl $1A.b,X		; 16 1A
	tas		; 1B
	ora #$09.b		; 09 09
	ora $04.b,S		; 03 04
	sbc $F0CFFF.l,X		; FF FF CF F0
	eor $0202F0.l		; 4F F0 02 02
	asl $06.b		; 06 06
	rti		; 40

	rti		; 40

	asl $06.b		; 06 06
	cmp $C3.b,S		; C3 C3
	jsr ($04FE.w,X)		; FC FE 04
	cop $40.b		; 02 40
	tsb $02.b		; 04 02
	rep #$01		; C2 01
	ora $7F.b,S		; 03 7F
	ora $3E.b,S		; 03 3E
	inc $20FC.w,X		; FE FC 20
	rts		; 60

	and $45.b,S		; 23 45
	ora $22.b,S		; 03 22
	tsb $FF.b		; 04 FF
	jsr ($4160.w,X)		; FC 60 41
	ora $43.b		; 05 43
	.db $62, $FF, $DF		; 62 FF DF
	adc [$07.b],Y		; 77 07
	lda [$84.b],Y		; B7 84
	sec		; 38
	tsb $7871.w		; 0C 71 78
	ldy #$B0.b		; A0 B0
	xba		; EB
	dey		; 88
	jmp.w [$0658]		; DC 58 06
	bpl  16.b		; 10 10
	tda		; 7B
	sbc $80780C.l,X		; FF 0C 78 80
	bcs -64.b		; B0 C0
	bra -128.b		; 80 80
	sbc $75FFFF.l,X		; FF FF FF 75
	sbc $DB586C.l		; EF 6C 58 DB
	ldy #$A7.b		; A0 A7
	cpy $3809.w		; CC 09 38
	bpl  20.b		; 10 14
	trb $1E.b		; 14 1E
	and ($C3.b,X)		; 21 C3
	.db $82, $9C, $CC		; 82 9C CC
	pei ($2C.b)		; D4 2C
	lda [$10.b]		; A7 10
	php		; 08
	ora ($10.b,X)		; 01 10
	trb $20.b		; 14 20
	ora ($02.b),Y		; 11 02
	xba		; EB
	sbc $DFDED7.l,X		; FF D7 DE DF
	eor [$50.b]		; 47 50
	php		; 08
	bmi -32.b		; 30 E0
	trb $0C06.w		; 1C 06 0C
	php		; 08
	tsb $02.b		; 04 02
	ora $0B.b		; 05 0B
	and $08D007.l,X		; 3F 07 D0 08
	jsr $06C0.w		; 20 C0 06
	sec		; 38
	bmi   2.b		; 30 02
	cop $09.b		; 02 09
	mvp $CF,$10		; 44 10 CF
	bmi   1.b		; 30 01
	cop $04.b		; 02 04
	ora ($01.b,X)		; 01 01
	cop $02.b		; 02 02
	tsb $04.b		; 04 04
	php		; 08
	php		; 08
	ora ($00.b,X)		; 01 00
	ora $00.b,S		; 03 00
	sbc $03FFFF.l,X		; FF FF FF 03
	and $03.b,S		; 23 03
	bmi   3.b		; 30 03
	tsb $04.b		; 04 04
	tsb $04.b		; 04 04
	ora $080C0F.l		; 0F 0F 0C 08
	eor $FC.b,X		; 55 FC
	sbc $02FD5C.l,X		; FF 5C FD 02
	cop $04.b		; 02 04
	ora $04.b		; 05 04
	phd		; 0B
	ora [$18.b]		; 07 18
	phd		; 0B
	inc $02FE.w,X		; FE FE 02
	cop $06.b		; 02 06
	asl $04.b		; 06 04
	tsb $05.b		; 04 05
	ora ($07.b,X)		; 01 07
	phd		; 0B
	sbc $FF55DF.l,X		; FF DF 55 FF
	sta $1F5F80.l,X		; 9F 80 5F 1F
	dec $50E1.w,X		; DE E1 50
	lda $1970D6.l		; AF D6 70 19
	cli		; 58
	lsr A		; 4A
	ldy #$93.b		; A0 93
	adc $A1E11F.l,X		; 7F 1F E1 A1
	rts		; 60

	ora $088041.l,X		; 1F 41 80 08
	cop $93.b		; 02 93
	eor ($FF.b,S),Y		; 53 FF
	lda $ACE7B5.l,X		; BF B5 E7 AC
	rts		; 60

	eor ($E0.b)		; 52 E0
	ora ($8C.b,X)		; 01 8C
	bra  18.b		; 80 12
	rti		; 40

	sta ($80.b,X)		; 81 80
	cpy #$40.b		; C0 40
	bvc -120.b		; 50 88
	sta $0C80E0.l,X		; 9F E0 80 0C
	ora ($80.b)		; 12 80
	ora ($40.b,X)		; 01 40
	bpl -128.b		; 10 80
	dey		; 88
	sbc $BFFBFF.l,X		; FF FF FB BF
	ldx $C6.b,Y		; B6 C6
	cpx #$60.b		; E0 60
	adc ($CF.b,X)		; 61 CF
	sta $1E50.w,Y		; 99 50 1E
	ora ($79.b,X)		; 01 79
	ora [$31.b]		; 07 31
	lda $067804.l,X		; BF 04 78 06
	and $06A740.l		; 2F 40 A7 06
	eor #$50.b		; 49 50
	clc		; 18
	asl $30.b		; 06 30
	ora $78B03F.l		; 0F 3F B0 78
	and [$F7.b],Y		; 37 F7
	tsa		; 3B
	sbc ($A7.b,S),Y		; F3 A7
	bvs -48.b		; 70 D0
	clc		; 18
	bpl  48.b		; 10 30
	jsr $8404.w		; 20 04 84
	sty $60.b		; 84 60
	rti		; 40

	ora $10800F.l		; 0F 0F 80 10
	bpl -96.b		; 10 A0
	ldy #$84.b		; A0 84
	rti		; 40

	rti		; 40

	bra  65.b		; 80 41
	mvp $00,$03		; 44 03 00
	sbc $306040.l,X		; FF 40 60 30
	sbc $3171FF.l,X		; FF FF 71 31
	ora $91E030.l,X		; 1F 30 E0 91
	ora ($C0.b,X)		; 01 C0
	jsr $0313.w		; 20 13 03
	inc $01FE.w,X		; FE FE 01
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	and $14177C.l,X		; 3F 7C 17 14
	sbc $0B01.w,Y		; F9 01 0B
	ora $06.b,S		; 03 06
	asl $06.b		; 06 06
	asl $13.b		; 06 13
	ora $20.b,S		; 03 20
	inc $03FF.w,X		; FE FF 03
	asl $06.b		; 06 06
	ora $F0.b,S		; 03 F0
	lda $5453.w,X		; BD 53 54
	bpl  16.b		; 10 10
	pla		; 68
	clc		; 18
	rti		; 40

	rol $0E.b		; 26 0E
	ora ($05.b),Y		; 11 05
	cop $FF.b		; 02 FF
	sbc $0E1810.l,X		; FF 10 18 0E
	ora $02.b		; 05 02
	sbc $957F7F.l,X		; FF 7F 7F 95
	plx		; FA
	sbc ($FE.b,S),Y		; F3 FE
	adc [$FB.b]		; 67 FB
	cmp $4A1DD5.l		; CF D5 1D 4A
	sei		; 78
	dec A		; 3A
	iny		; C8
	txy		; 9B
	pla		; 68
	jsr ($F3FD.w,X)		; FC FD F3
	sbc $F063.w,Y		; F9 63 F0
	cmp ($E2.b,X)		; C1 E2
	sta [$07.b]		; 87 07
	stz $03.b		; 64 03
	cmp [$59.b]		; C7 59
	eor $A3.b,S		; 43 A3
	adc $A04080.l,X		; 7F 80 40 A0
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	bra  -1.b		; 80 FF
	sbc $804080.l,X		; FF 80 40 80
	bra -128.b		; 80 80
	sbc $057F4F.l		; EF 4F 7F 05
	and ($AF.b,X)		; 21 AF
	ora ($8E.b,X)		; 01 8E
	ora ($3C.b,X)		; 01 3C
	ldy $9F9F.w,X		; BC 9F 9F
	ora $03.b,S		; 03 03
	rti		; 40

	bne -16.b		; D0 F0
	asl $010E.w		; 0E 0E 01
	ora ($3C.b,X)		; 01 3C
	ora $3FFF03.l,X		; 1F 03 FF 3F
	sbc $7E7F1F.l,X		; FF 1F 7F 7E
	cpy #$E1.b		; C0 E1
	bcc 124.b		; 90 7C
	bit $DA.b		; 24 DA
	asl A		; 0A
	rol $81.b,X		; 36 81
	stx $C1C1.w		; 8E C1 C1
	sbc $61807E.l,X		; FF 7E 80 61
	rts		; 60

	trb $C2D8.w		; 1C D8 C2
	and [$31.b],Y		; 37 31
	stx $C00E.w		; 8E 0E C0
	sbc ($8C.b),Y		; F1 8C
	cmp $C0.b,S		; C3 C0
	ora [$04.b]		; 07 04
	tsb $04.b		; 04 04
	tsb $0606.w		; 0C 06 06
	bpl  15.b		; 10 0F
	ora $201010.l		; 0F 10 10 20
	jsr $FFE9.w		; 20 E9 FF
	eor [$D5.b],Y		; 57 D5
	sbc $070302.l,X		; FF 02 03 07
	ora #$0A.b		; 09 0A
	inc A		; 1A
	ora $02023F.l,X		; 1F 3F 02 02
	ora ($13.b,S),Y		; 13 13
	sbc $0302FF.l,X		; FF FF 02 03
	ora #$1A.b		; 09 1A
	and $071302.l,X		; 3F 02 13 07
	ora ($3C.b,X)		; 01 3C
	ora $00.b,S		; 03 00
	sbc $090E0E.l,X		; FF 0E 0E 09
	ora #$FF.b		; 09 FF
	sbc $CFB884.l,X		; FF 84 B8 CF
	cpy $4080.w		; CC 80 40
	jsr $8080.w		; 20 80 80
	bpl -128.b		; 10 80
	bra  64.b		; 80 40
	rti		; 40

	jsr $1020.w		; 20 20 10
	bpl   8.b		; 10 08
	php		; 08
	eor $4007C0.l		; 4F C0 07 40
	cmp [$10.b],Y		; D7 10
	sec		; 38
	bpl  16.b		; 10 10
	ora [$18.b]		; 07 18
	sbc $1810FF.l		; EF FF 10 18
	ora ($40.b,X)		; 01 40
	ora $00.b,S		; 03 00
	sbc $FFFF80.l,X		; FF 80 FF FF
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	pha		; 48
	bmi  78.b		; 30 4E
	sbc $4DFF32.l,X		; FF 32 FF 4D
	bmi  48.b		; 30 30
	ror $3232.w,X		; 7E 32 32
	jsr $0088.w		; 20 88 00
	brk $01.b		; 00 01
	ora ($7E.b,X)		; 01 7E
	clv		; B8
	ldx $9400.w,Y		; BE 00 94
	jsr ($FEFC.w,X)		; FC FC FE
	jsr ($FCFC.w,X)		; FC FC FC
	cop $0C.b		; 02 0C
	inc $FC12.w,X		; FE 12 FC
	tsb $000C.w		; 0C 0C 00
	.db $82, $00, $00		; 82 00 00
	ora ($FC.b,X)		; 01 FC
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	cmp $02FC.w		; CD FC 02
	inc $1C08.w,X		; FE 08 1C
	plp		; 28
	bmi  -4.b		; 30 FC
	tsb $1008.w		; 0C 08 10
	ldx $40BB.w,Y		; BE BB 40
	sta $07.b,X		; 95 07
	ora [$0F.b]		; 07 0F
	ora $FF.b		; 05 FF
	php		; 08
	clc		; 18
	sbc [$3C.b]		; E7 3C
	clc		; 18
	bit $F725.w,X		; 3C 25 F7
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	cmp $03CFC2.l		; CF C2 CF 03
	ora [$10.b],Y		; 17 10
	ora $1101.w,Y		; 19 01 11
	and ($40.b),Y		; 31 40
	bpl  16.b		; 10 10
	ora $20301F.l		; 0F 1F 30 20
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	eor $AFFD51.l,X		; 5F 51 FD AF
	ora [$7F.b]		; 07 7F
	tas		; 1B
	ora $031E60.l,X		; 1F 60 1E 03
	ora $06.b,S		; 03 06
	xce		; FB
	cpx #$60.b		; E0 60
	jmp ($1E1C.w,X)		; 7C 1C 1E
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	tsb $71.b		; 04 71
	sed		; F8
	ora ($F8.b,S),Y		; 13 F8
	cpy #$41.b		; C0 41
	ora ($80.b,X)		; 01 80
	ora ($1E.b,X)		; 01 1E
	ora ($60.b,X)		; 01 60
	asl $FFFF.w,X		; 1E FF FF
	ora ($01.b,X)		; 01 01
	asl $601F.w,X		; 1E 1F 60
	ror $BFFF.w,X		; 7E FF BF
	sbc [$FF.b],Y		; F7 FF
	.db $42, $41		; 42 41
	cpy #$C0.b		; C0 C0
	tya		; 98
	bra  37.b		; 80 25
	ora ($40.b,S),Y		; 13 40
	and $81.b		; 25 81
	eor $8201.w,Y		; 59 01 82
	tsb $BD.b		; 04 BD
	jsr ($98C0.w,X)		; FC C0 98
	clc		; 18
	and $36.b		; 25 36
	rti		; 40

	stz $81.b		; 64 81
	phx		; DA
	cop $84.b		; 02 84
	tsb $08.b		; 04 08
	sbc $5D6B7F.l,X		; FF 7F 6B 5D
	cmp $0A28.w,X		; DD 28 0A
	ora ($20.b,X)		; 01 20
	jsl $206E6A.l		; 22 6A 6E 20
	bmi  64.b		; 30 40
	jsr ($A971.w,X)		; FC 71 A9
	adc ($08.b),Y		; 71 08
	jsl $6A2102.l		; 22 02 21 6A
	bmi  84.b		; 30 54
	ora ($F9.b,X)		; 01 F9
	ora ($F7.b,X)		; 01 F7
	plb		; AB
	cmp ($AF.b,S),Y		; D3 AF
	lda $024180.l,X		; BF 80 41 02
	sty $3202.w		; 8C 02 32
	ora ($4F.b,X)		; 01 4F
	sta $7FE031.l,X		; 9F 31 E0 7F
	sbc $0C328C.l,X		; FF 8C 32 0C
	eor ($32.b,X)		; 41 32
	bra  15.b		; 80 0F
	ora ($E0.b),Y		; 11 E0
	sbc $00030F.l,X		; FF 0F 03 00
	cpy $0C33.w		; CC 33 0C
	tsb $2222.w		; 0C 22 22
	ora $05.b		; 05 05
	bpl  16.b		; 10 10
	php		; 08
	php		; 08
	sbc $41FEFF.l,X		; FF FF FE 41
	ora $10F0C3.l		; 0F C3 F0 10
	clc		; 18
	rts		; 60

	rts		; 60

	dey		; 88
	dey		; 88
	tsb $02.b		; 04 02
	sed		; F8
	sed		; F8
	tsb $04.b		; 04 04
	cop $02.b		; 02 02
	ora ($01.b,X)		; 01 01
	eor $FFFFF5.l,X		; 5F F5 FF FF
	cpx #$C0.b		; E0 C0
	sta $80.b		; 85 80
	asl $D084.w		; 0E 84 D0
	sta $FE0E1E.l		; 8F 1E 0E FE
	ora ($D2.b,S),Y		; 13 D2
	jsr $2525.w		; 20 25 25
	pld		; 2B
	pld		; 2B
	lda $787FAF.l		; AF AF 7F 78
	sbc [$EF.b],Y		; F7 EF
	sbc $F23EDF.l,X		; FF DF 3E F2
	ora $420750.l,X		; 1F 50 07 42
	adc $808040.l,X		; 7F 40 80 80
	jsr $8080.w		; 20 80 80
	lda $8080FF.l,X		; BF FF 80 80
	bra -17.b		; 80 EF
	ldx $2553.w		; AE 53 25
	bmi 122.b		; 30 7A
	bmi 124.b		; 30 7C
	pha		; 48
	bmi  72.b		; 30 48
	ply		; 7A
	and ($7F.b)		; 32 7F
	and ($1E.b,X)		; 21 1E
	bmi  52.b		; 30 34
	bmi  48.b		; 30 30
	bmi  50.b		; 30 32
	asl $280B.w,X		; 1E 0B 28
	ora $00.b,S		; 03 00
	ror $7EFF.w,X		; 7E FF 7E
	ora ($01.b,X)		; 01 01
	ror $EF7E.w,X		; 7E 7E EF
	ldx $2553.w		; AE 53 25
	tsb $0C1F.w		; 0C 1F 0C
	asl $0C12.w,X		; 1E 12 0C
	ora ($3C.b)		; 12 3C
	sec		; 38
	jsr ($E018.w,X)		; FC 18 E0
	tsb $0C0C.w		; 0C 0C 0C
	tsb $3818.w		; 0C 18 38
	cpx #$8B.b		; E0 8B
	cop $03.b		; 02 03
	brk $FC.b		; 00 FC
	inc $01FC.w,X		; FE FC 01
	ora ($FC.b,X)		; 01 FC
	jsr ($AEEF.w,X)		; FC EF AE
	eor ($25.b,S),Y		; 53 25
	bpl  56.b		; 10 38
	sec		; 38
	jmp ($F08A.w,X)		; 7C 8A F0
	tsb $30F8.w		; 0C F8 30
	sei		; 78
	eor #$30.b		; 49 30
	bpl  16.b		; 10 10
	stz $F0.b,X		; 74 F0
	bmi  48.b		; 30 30
	bmi -17.b		; 30 EF
	ldx $2553.w		; AE 53 25
	clc		; 18
	bit $3C18.w,X		; 3C 18 3C
	bit $18.b		; 24 18
	bit $3C.b		; 24 3C
	sec		; 38
	jsr ($F008.w,X)		; FC 08 F0
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	sec		; 38
	beq  -1.b		; F0 FF
	plb		; AB
	eor [$AB.b],Y		; 57 AB
	sta ($01.b,X)		; 81 01
	.db $82, $02, $05		; 82 02 05
	ora $19.b		; 05 19
	ora $EEE0.w,Y		; 19 E0 EE
	beq  -1.b		; F0 FF
	cop $FE.b		; 02 FE
	sbc $190502.l,X		; FF 02 05 19
	cpx #$0E.b		; E0 0E
	beq  -1.b		; F0 FF
	cop $D7.b		; 02 D7
	lda $07BDC3.l,X		; BF C3 BD 07
	ora ($02.b,X)		; 01 02
	tsb $03.b		; 04 03
	ora $C0.b,S		; 03 C0
	cpy #$26.b		; C0 26
	rol $1C.b		; 26 1C
	trb $FEF8.w		; 1C F8 FE
	sbc $C00102.l,X		; FF 02 01 C0
	bit $02.b		; 24 02
	clc		; 18
	tsb $F8.b		; 04 F8
	sbc [$FF.b],Y		; F7 FF
	sbc ($AF.b)		; F2 AF
	ora $01.b,S		; 03 01
	ora [$0F.b]		; 07 0F
	asl $1F.b		; 06 1F
	ora [$3F.b]		; 07 3F
	ora [$7E.b],Y		; 17 7E
	and [$48.b],Y		; 37 48
	and [$64.b],Y		; 37 64
	tas		; 1B
	ora ($06.b,X)		; 01 06
	asl $07.b		; 06 07
	ora [$17.b]		; 07 17
	ora [$36.b],Y		; 17 36
	and [$37.b],Y		; 37 37
	tas		; 1B
	tyx		; BB
	and $FF2AFE.l,X		; 3F FE 2A FF
	ora $3060C0.l,X		; 1F C0 60 30
	dey		; 88
	php		; 08
	tsb $C6C4.w		; 0C C4 C6
	cop $03.b		; 02 03
	ora $40C0C0.l,X		; 1F C0 C0 40
	bmi -128.b		; 30 80
	dey		; 88
	tsb $03C6.w		; 0C C6 03
	and $D03FD4.l		; 2F D4 3F D0
	sbc $0302F6.l,X		; FF F6 02 03
	ora ($01.b,X)		; 01 01
	ora ($02.b,X)		; 01 02
	ora ($01.b,X)		; 01 01
	inc $03.b,X		; F6 03
	ora [$01.b]		; 07 01
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	sbc $FDFF.w,X		; FD FF FD
	lda $80FDFE.l		; AF FE FD 80
	xce		; FB
	sta ($EF.b,X)		; 81 EF
	ora $9F.b,S		; 03 9F
	ora [$7F.b]		; 07 7F
	ora $FE7EFF.l,X		; 1F FF 7E FE
	sbc $7EFF.w,Y		; F9 FF 7E
	bra 124.b		; 80 7C
	sta ($F0.b,X)		; 81 F0
	ora $E0.b,S		; 03 E0
	ora [$80.b]		; 07 80
	ora $EBF97E.l,X		; 1F 7E F9 EB
	sbc $FFAAAA.l,X		; FF AA AA FF
	adc $010180.l,X		; 7F 80 01 01
	ora [$06.b]		; 07 06
	asl $7818.w,X		; 1E 18 78
	rts		; 60

	cpx #$80.b		; E0 80
	bra 127.b		; 80 7F
	bra   1.b		; 80 01
	ora [$1E.b]		; 07 1E
	sei		; 78
	cpx #$80.b		; E0 80
	sbc $3FFA3F.l,X		; FF 3F FA 3F
	sbc $7F0FF0.l,X		; FF F0 0F 7F
	adc [$E1.b]		; 67 E1
	tsx		; BA
	bcs   7.b		; B0 07
	ora $70.b,S		; 03 70
	rts		; 60

	asl $F006.w		; 0E 06 F0
	adc $0AE106.l,X		; 7F 06 E1 0A
	bcs   4.b		; B0 04
	ora $10.b,S		; 03 10
	rts		; 60

	php		; 08
	asl $FF.b		; 06 FF
	sbc [$FE.b],Y		; F7 FE
	inc $C2.b,X		; F6 C2
	bit $427F.w,X		; 3C 7F 42
	cpy #$80.b		; C0 80
	ora [$03.b]		; 07 03
	asl $06.b		; 06 06
	dey		; 88
	stz $780C.w		; 9C 0C 78
	clc		; 18
	bit $423C.w,X		; 3C 3C 42
	rti		; 40

	bra   4.b		; 80 04
	ora $06.b,S		; 03 06
	dey		; 88
	bcc  12.b		; 90 0C
	rts		; 60

	clc		; 18
	adc $78F5.w,X		; 7D F5 78
	lda $E0.b,X		; B5 E0
	beq -32.b		; F0 E0
	sei		; 78
	bpl -112.b		; 10 90
	bpl  32.b		; 10 20
	cld		; D8
	bpl  48.b		; 10 30
	jsr $60E0.w		; 20 E0 60
	bpl -112.b		; 10 90
	bpl  32.b		; 10 20
	cpy #$10.b		; C0 10
	jsr $3C3F.w		; 20 3F 3C
	rol $24.b,X		; 36 24
	cpy #$C0.b		; C0 C0
	bra -128.b		; 80 80
	rts		; 60

	rts		; 60

	cpy #$C0.b		; C0 C0
	ldy #$A0.b		; A0 A0
	cpy #$80.b		; C0 80
	rti		; 40

	jsr $A0C0.w		; 20 C0 A0
	sbc $00BF00.l,X		; FF 00 BF 00
	ora [$04.b]		; 07 04
	ora $02.b,S		; 03 02
	ora $02.b,S		; 03 02
	ora ($01.b,X)		; 01 01
	ora $07.b,S		; 03 07
	ora ($03.b,X)		; 01 03
	ora ($03.b,X)		; 01 03
	ora ($FF.b,X)		; 01 FF
	and $F73F57.l,X		; 3F 57 3F F7
	tsb $8C.b		; 04 8C
	ora [$C7.b]		; 07 C7
	ora $73.b,S		; 03 73
	bra -88.b		; 80 A8
	cpy #$40.b		; C0 40
	rts		; 60

	bmi  48.b		; 30 30
	xce		; FB
	sbc $800307.l,X		; FF 07 03 80
	rti		; 40

	bra  32.b		; 80 20
	rti		; 40

	bpl  32.b		; 10 20
	brk $FF.b		; 00 FF
	rti		; 40

	eor $07.b,X		; 55 07
	ora [$0F.b]		; 07 0F
	ora $7F3F3F.l		; 0F 3F 3F 7F
	adc $300807.l,X		; 7F 07 08 30
	rti		; 40

	bra  84.b		; 80 54
	sbc $FF.b,X		; F5 FF
	bvc   1.b		; 50 01
	asl $8070.w		; 0E 70 80
	ora $78085B.l		; 0F 5B 08 78
	clc		; 18
	ora ($01.b,X)		; 01 01
	asl $700E.w		; 0E 0E 70
	bvs -128.b		; 70 80
	bra   8.b		; 80 08
	clc		; 18
	trb $00.b		; 14 00
	ora $01FE00.l		; 0F 00 FE 01
	inc $01FE.w,X		; FE FE 01
	ora ($F0.b,X)		; 01 F0
	sbc $805554.l,X		; FF 54 55 80
	bra -64.b		; 80 C0
	cpy #$F0.b		; C0 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FEFC.w,X)		; FC FC FE
	inc $4080.w,X		; FE 80 40
	bmi   8.b		; 30 08
	tsb $02.b		; 04 02
	ora ($EA.b,X)		; 01 EA
	ldx $2550.w		; AE 50 25
	ora ($3C.b,X)		; 01 3C
	mvp $34,$08		; 44 08 34
	trb $7E08.w		; 1C 08 7E
	sta ($7E.b,X)		; 81 7E
	sec		; 38
	php		; 08
	php		; 08
	php		; 08
	ror $BBB8.w,X		; 7E B8 BB
	rti		; 40

	sta $8C.b,X		; 95 8C
	tsb $E29E.w		; 0C 9E E2
	sei		; 78
	sty $7C.b		; 84 7C
	clc		; 18
	inc $1C01.w,X		; FE 01 1C
	sei		; 78
	clc		; 18
	clc		; 18
	inc $AEEF.w,X		; FE EF AE
	eor ($25.b,S),Y		; 53 25
	clc		; 18
	inc $3C18.w,X		; FE 18 3C
	bit $18.b		; 24 18
	bit $3C.b		; 24 3C
	clc		; 18
	jmp ($7088.w,X)		; 7C 88 70
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	clc		; 18
	bvs -72.b		; 70 B8
	tyx		; BB
	rti		; 40

	sta $02.b,X		; 95 02
	cop $E7.b		; 02 E7
	ora $02.b,X		; 15 02
	sbc $07.b		; E5 07
	cop $07.b		; 02 07
	ora $E2.b		; 05 E2
	cop $02.b		; 02 02
	cop $02.b		; 02 02
	sbc $2553AE.l		; EF AE 53 25
	cop $07.b		; 02 07
	asl $0F.b		; 06 0F
	ora #$0C.b		; 09 0C
	ora ($7E.b)		; 12 7E
	sei		; 78
	jsr ($7088.w,X)		; FC 88 70
	cop $02.b		; 02 02
	asl $0C.b		; 06 0C
	trb $7078.w		; 1C 78 70
	php		; 08
	clv		; B8
	brk $30.b		; 00 30
	ora ($7E.b,X)		; 01 7E
	ror $7EFF.w,X		; 7E FF 7E
	ror $6A7E.w,X		; 7E 7E 6A
	lda #$AA.b		; A9 AA
	tax		; AA
	tax		; AA
	tax		; AA
	txs		; 9A
	tax		; AA
	tax		; AA
	eor $E5.b,X		; 55 E5
	tax		; AA
	tsx		; BA
	eor $A5.b,X		; 55 A5
	adc #$AA.b		; 69 AA
	inc $7A.b		; E6 7A
	eor $01.b,X		; 55 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($80.b),Y		; 11 80
	brk $E6.b		; 00 E6
	ora $FF.b		; 05 FF
	sbc $3FF71D.l,X		; FF 1D F7 3F
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc $FBDF.w,X		; FD DF FB
	adc $FD1DFA.l,X		; 7F FA 1D FD
	sta $1C6E7C.l		; 8F 7C 6E 1C
.INDEX 8
	sep #$15		; E2 15
	tsb $01.b		; 04 01
	tsb $05.b		; 04 05
	bit #$73.b		; 89 73
	ora $09.b,S		; 03 09
	ora ($FF.b,X)		; 01 FF
	sbc $B77FF5.l,X		; FF F5 7F B7
	ora ($D8.b,X)		; 01 D8
	sta ($88.b,X)		; 81 88
	sta $AC9C.w,Y		; 99 9C AC
.ACCU 16
	rep #$60		; C2 60
	rti		; 40

	bmi  44.b		; 30 2C
	pha		; 48
.INDEX 8
	sep #$9E		; E2 9E
	pha		; 48
	eor [$18.b],Y		; 57 18
	and ($14.b,X)		; 21 14
	bne -112.b		; D0 90
	jsr $2040.w		; 20 40 20
	bra -16.b		; 80 F0
	stx $0FFF.w		; 8E FF 0F
	sbc $E07F0B.l,X		; FF 0B 7F E0
	sty $68.b		; 84 68
	tsb $80.b		; 04 80
	bcc -88.b		; 90 A8
	bvc -96.b		; 50 A0
	cpy #$F0.b		; C0 F0
	eor [$E0.b]		; 47 E0
	cpy #$70.b		; C0 70
	bra -16.b		; 80 F0
	clc		; 18
	cpx #$E0.b		; E0 E0
	bra -16.b		; 80 F0
	sbc $5555FF.l,X		; FF FF 55 55
	lsr $02.b,X		; 56 02
	phy		; 5A
	rti		; 40

	inc $BE60.w		; EE 60 BE
	bmi -98.b		; 30 9E
	bpl -84.b		; 10 AC
	ldy #$DC.b		; A0 DC
	iny		; C8
	tya		; 98
	bra -72.b		; 80 B8
	ldy $CC9C.w,X		; BC 9C CC
	cpx $3058.w		; EC 58 30
	bvs  93.b		; 70 5D
	brk $15.b		; 00 15
	brk $0F.b		; 00 0F
	phd		; 0B
	tsb $06.b		; 04 06
	ora ($07.b,X)		; 01 07
	ora $01.b,S		; 03 01
	cmp $BF.b,S		; C3 BF
	cmp $17.b,S		; C3 17
	sbc $91011F.l,X		; FF 1F 01 91
	adc ($CC.b,X)		; 61 CC
	stz $0C77.w		; 9C 77 0C
	rol $04.b,X		; 36 04
	sbc $11801F.l,X		; FF 1F 80 11
	eor $0E.b,S		; 43 0E
	bit $08.b,X		; 34 08
	rti		; 40

	dex		; CA
	cpy #$C4.b		; C0 C4
	bpl  32.b		; 10 20
	rts		; 60

	cli		; 58
	cpx #$10.b		; E0 10
	bpl  32.b		; 10 20
	pha		; 48
	sei		; 78
	brk $F8.b		; 00 F8
	ora ($65.b,X)		; 01 65
	ora ($07.b,X)		; 01 07
	asl $3F08.w		; 0E 08 3F
	and $010403.l,X		; 3F 03 04 01
	ora #$AFE8.w		; 09 E8 AF
	sbc $1C03A8.l,X		; FF A8 03 1C
	rti		; 40

	jsr $40C0.w		; 20 C0 40
	bra -32.b		; 80 E0
	cpx #$80.b		; E0 80
	ora $03.b,S		; 03 03
	trb $601C.w		; 1C 1C 60
	rts		; 60

	bra -128.b		; 80 80
	rts		; 60

	cpx #$80.b		; E0 80
	sed		; F8
	sbc $F01555.l,X		; FF 55 15 F0
	beq  -8.b		; F0 F8
	sed		; F8
	jsr ($FC8C.w,X)		; FC 8C FC
	ldx $FF.b,Y		; B6 FF
	cmp $FF.b,X		; D5 FF
	sbc $080FFF.l		; EF FF 0F 08
	tsb $02.b		; 04 02
	ora ($02.b,X)		; 01 02
	cop $FF.b		; 02 FF
	sbc $054457.l,X		; FF 57 44 05
	ora $073F02.l,X		; 1F 02 3F 07
	and $773F37.l,X		; 3F 37 3F 77
	adc $7F7F5F.l,X		; 7F 5F 7F 7F
	adc $443F39.l,X		; 7F 39 3F 44
	jsr $1C26.w		; 20 26 1C
	php		; 08
	bmi   1.b		; 30 01
	and $F003F3.l,X		; 3F F3 03 F0
	ora ($FE.b,X)		; 01 FE
	cop $02.b		; 02 02
	ora ($05.b,X)		; 01 05
	ora $09.b		; 05 09
	rep #$CA		; C2 CA
	rep #$C2		; C2 C2
	sbc $0606FF.l,X		; FF FF 06 06
	sta [$87.b]		; 87 87
	inc $11FF.w,X		; FE FF 11
	eor $FF.b,X		; 55 FF
	inc $FCFF.w,X		; FE FF FC
	sbc $F7FDF8.l,X		; FF F8 FD F7
	sbc $DEFF0F.l,X		; FF 0F FF DE
	cmp $FEFFFF.l,X		; DF FF FF FE
	ora ($03.b,X)		; 01 03
	asl $1C.b		; 06 1C
	sed		; F8
	sbc $F3FFFF.l,X		; FF FF FF F3
	rti		; 40

	stx $4C7C.w		; 8E 7C 4C
	bne -64.b		; D0 C0
	mvp $E3,$44		; 44 44 E3
	rep #$08		; C2 08
	php		; 08
	dec $94.b		; C6 94
	jsl $FFFF01.l		; 22 01 FF FF
	cld		; D8
	cld		; D8
	bvs  96.b		; 70 60
	bra -128.b		; 80 80
	adc ($41.b,X)		; 61 41
	cld		; D8
	dey		; 88
	ora $02.b,S		; 03 02
	adc $7DFF7D.l,X		; 7F 7D FF 7D
	jmp.w [$6203]		; DC 03 62
	cop $6F.b		; 02 6F
	ora ($BE.b,X)		; 01 BE
	bra  24.b		; 80 18
	rts		; 60

	tay		; A8
	bra -60.b		; 80 C4
	sbc $2020FF.l,X		; FF FF 20 20
	cpx #$E0.b		; E0 E0
	cpx #$20.b		; E0 20
	rti		; 40

	beq  16.b		; F0 10
	dey		; 88
	php		; 08
	jsr $00B7.w		; 20 B7 00
	ora $00.b,S		; 03 00
	sbc $83F8.w,X		; FD F8 83
	sta ($A8.b,X)		; 81 A8
	bvc  -1.b		; 50 FF
	sbc $1401FF.l,X		; FF FF 01 14
	brk $0E.b		; 00 0E
	ora $0D.b		; 05 0D
	tsb $06.b		; 04 06
	cop $03.b		; 02 03
	ora ($01.b,X)		; 01 01
	cop $01.b		; 02 01
	sbc $555777.l,X		; FF 77 57 55
	tsa		; 3B
	ora $3D.b,S		; 03 3D
	tsb $3D.b		; 04 3D
	sta [$1C.b]		; 87 1C
	eor ($FE.b,X)		; 41 FE
	bra -17.b		; 80 EF
	and $FD1730.l		; 2F 30 17 FD
	ora ($FB.b,X)		; 01 FB
	sei		; 78
	ldx $1F1F.w,Y		; BE 1F 1F
	ora $881B0F.l		; 0F 0F 1B 88
	ora [$C8.b]		; 07 C8
	sbc $0101F0.l,X		; FF F0 01 01
	bpl  40.b		; 10 28
	sbc $1001F0.l,X		; FF F0 01 10
	php		; 08
	jsr $3FFF.w		; 20 FF 3F
	eor ($15.b),Y		; 51 15
	inx		; E8
	bra -16.b		; 80 F0
	rts		; 60

	jsr $C0C0.w		; 20 C0 C0
	ldy $DC68.w		; AC 68 DC
	plp		; 28
	beq  96.b		; F0 60
	bpl 112.b		; 10 70
	bra -128.b		; 80 80
	iny		; C8
	bvs  16.b		; 70 10
	rti		; 40

	eor $1CB800.l,X		; 5F 00 B8 1C
	bit $EF03.w,X		; 3C 03 EF
	ora ($86.b,X)		; 01 86
	ora $10.b,S		; 03 10
	ora ($78.b,X)		; 01 78
	jsr ($BF9F.w,X)		; FC 9F BF
	lda $AF.b		; A5 AF
	asl $0106.w		; 0E 06 01
	asl $10.b		; 06 10
	beq -48.b		; F0 D0
	bit $CBF0.w,X		; 3C F0 CB
	rti		; 40

	sec		; 38
	jsr $0101.w		; 20 01 01
	ora $03300C.l		; 0F 0C 30 03
	cmp $203807.l		; CF 07 38 20
	sbc $7D5FFF.l,X		; FF FF 5F 7D
	rti		; 40

	sed		; F8
	sei		; 78
	inc $7F5E.w,X		; FE 5E 7F
	rol $083F.w		; 2E 3F 08
	ora [$01.b]		; 07 01
	ora $213F13.l,X		; 1F 13 3F 21
	sbc $040492.l,X		; FF 92 04 04
	ora ($41.b,X)		; 01 41
	jsr $4020.w		; 20 20 40
	jsr $40A3.w		; 20 A3 40
	eor $05FFFF.l		; 4F FF FF 05
	brk $04.b		; 00 04
	sbc $071FE3.l,X		; FF E3 1F 07
	sbc $6CFE7E.l,X		; FF 7E FE 6C
	jsr ($BCCC.w,X)		; FC CC BC
	dec $3F7E.w,X		; DE 7E 3F
	sbc $56C0C0.l,X		; FF C0 C0 56
	eor $03.b,X		; 55 03
	brk $FF.b		; 00 FF
	rti		; 40

	cpy #$0C.b		; C0 0C
	bit $58.b,X		; 34 58
	jsr $FFC0.w		; 20 C0 FF
	sbc $03FC02.l,X		; FF 02 FC 03
	brk $FF.b		; 00 FF
	cop $02.b		; 02 02
	asl $06.b		; 06 06
	cmp $C1.b		; C5 C1
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $51.b,X		; 55 51
	ora $283F.w		; 0D 3F 28
	and $333F39.l,X		; 3F 39 3F 33
	and $1D1F27.l,X		; 3F 27 1F 1D
	ora $171F18.l,X		; 1F 18 1F 17
	ora $044657.l		; 0F 57 46 04
	php		; 08
	ora $0803.w,Y		; 19 03 08
	sbc $D115FF.l,X		; FF FF 15 D1
	ora $FFF7FF.l,X		; 1F FF F7 FF
	xba		; EB
	sbc $7FFF7B.l,X		; FF 7B FF 7F
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $8FFE7E.l,X		; FF 7E FE 8F
	php		; 08
	clc		; 18
	and ($60.b),Y		; 31 60
	ora $01.b,S		; 03 01
	adc $CFFF77.l,X		; 7F 77 FF CF
	sbc $0802.w,X		; FD 02 08
	php		; 08
	php		; 08
	bpl  16.b		; 10 10
	asl $1E.b,X		; 16 1E
	bpl  21.b		; 10 15
	ora $01.b		; 05 01
	sbc ($F3.b,S),Y		; F3 F3
	ora $3011.w,Y		; 19 11 30
	jsr $8080.w		; 20 80 80
	stz $1284.w		; 9C 84 12
	ora $80.b,S		; 03 80
	bra  -1.b		; 80 FF
	sbc $A7FD77.l,X		; FF 77 FD A7
	ora $10F5.w,Y		; 19 F5 10
	sbc $13.b,X		; F5 13
	sbc ($22.b,X)		; E1 22
	xba		; EB
	pha		; 48
	rti		; 40

	cpy #$20.b		; C0 20
	sta ($AF.b,X)		; 81 AF
	lda $6D.b,S		; A3 6D
	tsb $2780.w		; 0C 80 27
	tsb $63.b		; 04 63
	rep #$C1		; C2 C1
	bra -128.b		; 80 80
	cop $27.b		; 02 27
	ora [$DF.b]		; 07 DF
	sbc $69F15F.l,X		; FF 5F F1 69
	ldy #$C4.b		; A0 C4
	rti		; 40

	eor $93.b,S		; 43 93
	asl $7010.w		; 0E 10 70
	eor $1866F0.l		; 4F F0 66 18
	dec $9739.w,X		; DE 39 97
	ora [$3B.b]		; 07 3B
	ora $FC.b,S		; 03 FC
	cpx #$8F.b		; E0 8F
	sta ($BA.b,X)		; 81 BA
	clc		; 18
	sei		; 78
	eor ($45.b),Y		; 51 45
	cmp $FF.b,S		; C3 FF
	sbc $72EC84.l,X		; FF 84 EC 72
	phx		; DA
	bpl  -1.b		; 10 FF
	sbc $608080.l,X		; FF 80 80 60
	rts		; 60

	cpy $1C0C.w		; CC 0C 1C
	trb $0E1E.w		; 1C 1E 0E
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $38.b,X		; 95 38
	clc		; 18
	bit $1824.w,X		; 3C 24 18
	sbc [$FF.b]		; E7 FF
	ror $FF.b		; 66 FF
	sta $1818.w,Y		; 99 18 18
	ror $6666.w,X		; 7E 66 66
	clv		; B8
	ldx $9400.w,Y		; BE 00 94
	ror $FF7E.w,X		; 7E 7E FF
	ror $7E7E.w,X		; 7E 7E 7E
	sta ($06.b,X)		; 81 06
	adc $067E09.l,X		; 7F 09 7E 06
	asl $B8.b		; 06 B8
	tyx		; BB
	rti		; 40

	sta $FE.b,X		; 95 FE
	ror $79FF.w,X		; 7E FF 79
	asl $C9.b		; 06 C9
	sbc $52FE64.l		; EF 64 FE 52
	asl $06.b		; 06 06
	lsr $64.b		; 46 64
	bit $BBB8.w		; 2C B8 BB
	rti		; 40

	sta $FE.b,X		; 95 FE
	ror $79FF.w,X		; 7E FF 79
	asl $09.b		; 06 09
	ora $120E04.l		; 0F 04 0E 12
	asl $06.b		; 06 06
	asl $04.b		; 06 04
	tsb $0BBF.w		; 0C BF 0B
	sbc $42130A.l,X		; FF 0A 13 42
	sty $614C.w		; 8C 4C 61
	sbc $0103.w,Y		; F9 03 01
	php		; 08
	ora $BC.b,S		; 03 BC
	and $08084A.l		; 2F 4A 08 08
	bne   1.b		; D0 01
	ora $08.b,S		; 03 08
	ora $CB.b,S		; 03 CB
	lda $FFBF8B.l,X		; BF 8B BF FF
	sbc $4C80C0.l,X		; FF C0 80 4C
	bcc  24.b		; 90 18
	bvc -60.b		; 50 C4
	rti		; 40

	bcc  16.b		; 90 10
	sbc $4CC0FF.l,X		; FF FF C0 4C
	php		; 08
	bpl -120.b		; 10 88
	jmp $1080.w		; 4C 80 10
	bpl 127.b		; 10 7F
	lda $F6FD7F.l,X		; BF 7F FD F6
	cmp ($18.b),Y		; D1 18
	rts		; 60

	jsr $60D0.w		; 20 D0 60
	bvs -96.b		; 70 A0
	rts		; 60

	pha		; 48
	cpy #$B0.b		; C0 B0
	mvp $C0,$EE		; 44 EE C0
	jsr $5040.w		; 20 40 50
	bra -128.b		; 80 80
	jsr $0840.w		; 20 40 08
	bra  48.b		; 80 30
	cop $44.b		; 02 44
	cmp $2FAF2F.l,X		; DF 2F AF 2F
	sbc $1820.w		; ED 20 18
	jsr $38F2.w		; 20 F2 38
	ora [$C9.b]		; 07 C9
	and [$09.b],Y		; 37 09
	bne  16.b		; D0 10
	beq  34.b		; F0 22
	beq  44.b		; F0 2C
	inc $38.b,X		; F6 38
	ora $E0F0C0.l		; 0F C0 F0 E0
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	inc $51FF.w		; EE FF 51
	eor ($80.b),Y		; 51 80
	bra -128.b		; 80 80
	cpy #$80.b		; C0 80
	cpx #$C0.b		; E0 C0
	bvs 112.b		; 70 70
	bvs  96.b		; 70 60
	sec		; 38
	bpl  28.b		; 10 1C
	cpy $80.b		; C4 80
	rti		; 40

	jsr $0810.w		; 20 10 08
	bvc 103.b		; 50 67
	bra -79.b		; 80 B1
	ror $7079.w,X		; 7E 79 70
	ora ($80.b,X)		; 01 80
	cop $18.b		; 02 18
	sbc $0201.w,Y		; F9 01 02
	cop $08.b		; 02 08
	brk $3D.b		; 00 3D
	brk $7E.b		; 00 7E
	beq   8.b		; F0 08
	bcs   4.b		; B0 04
	php		; 08
	bra -128.b		; 80 80
	bmi  16.b		; 30 10
	php		; 08
	php		; 08
	brk $FF.b		; 00 FF
	eor ($54.b,X)		; 41 54
	dey		; 88
	jsr ($F640.w,X)		; FC 40 F6
	cpx $3FAF.w		; EC AF 3F
	sbc $14F841.l,X		; FF 41 F8 14
	dec A		; 3A
	plp		; 28
	sbc ($FB.b,S),Y		; F3 FB
	ora $00.b,S		; 03 00
	ora $FC.b,S		; 03 FC
	bpl  18.b		; 10 12
	tsb $100D.w		; 0C 0D 10
	ora ($08.b)		; 12 08
	jsr $0824.w		; 20 24 08
.ACCU 16
.INDEX 16
	rep #$FF		; C2 FF
	sbc $E0FFF4.l,X		; FF F4 FF E0
	sbc $030503.l,X		; FF 03 05 03
	tsa		; 3B
	ora [$7D.b]		; 07 7D
	tsa		; 3B
	lda $7F9E7C.l,X		; BF 7C 9E 7F
	cmp $01033F.l		; CF 3F 03 01
	ora [$39.b]		; 07 39
	tsa		; 3B
	bit $1E7C.w,X		; 3C 7C 1E
	adc $FD3F07.l,X		; 7F 07 3F FD
	sbc $FDEA.w,X		; FD EA FD
	bmi -34.b		; 30 DE
	bpl   3.b		; 10 03
	dec $3113.w		; CE 13 31
	ora #$1808.w		; 09 08 18
	tsb $80.b		; 04 80
	tsb $0C.b		; 04 0C
	ora $C6CF1E.l		; 0F 1E CF C6
	and ($24.b),Y		; 31 24
	cop $18.b		; 02 18
	bcc -128.b		; 90 80
	php		; 08
	tsb $AEEF.w		; 0C EF AE
	eor ($25.b,S),Y		; 53 25
	ror $FF.b		; 66 FF
	ror $FF.b		; 66 FF
	adc #$0906.w		; 69 06 09
	asl $7E1C.w,X		; 1E 1C 7E
	sty $F8.b		; 84 F8
	ror $66.b		; 66 66
	asl $06.b		; 06 06
	tsb $781C.w		; 0C 1C 78
	sbc $2553AE.l		; EF AE 53 25
	asl $0F.b		; 06 0F
	asl $0F.b		; 06 0F
	ora #$0906.w		; 09 06 09
	asl $FE1C.w,X		; 1E 1C FE
	sty $0670.w		; 8C 70 06
	asl $06.b		; 06 06
	asl $0C.b		; 06 0C
	trb $EF70.w		; 1C 70 EF
	ldx $2553.w		; AE 53 25
	bit $187E.w,X		; 3C 7E 18
	bit $3824.w,X		; 3C 24 38
	mvp $66,$FE		; 44 FE 66
	sbc $3CC3A5.l,X		; FF A5 C3 3C
	bit $3818.w,X		; 3C 18 38
	jmp ($4266.w,X)		; 7C 66 42
	sbc $2553AE.l		; EF AE 53 25
	php		; 08
	trb $3C18.w		; 1C 18 3C
	jsl $7F4A34.l		; 22 34 4A 7F
	.db $62, $F7, $95		; 62 F7 95
	sbc $08.b,S		; E3 08
	php		; 08
	trb $3634.w		; 1C 34 36
	.db $62, $62, $55		; 62 62 55
	sbc $01AA82.l,X		; FF 82 AA 01
	cop $04.b		; 02 04
	cld		; D8
	rts		; 60

	rti		; 40

	sed		; F8
	beq -80.b		; F0 B0
	php		; 08
	asl $FF06.w		; 0E 06 FF
	cpy #$F070.w		; C0 70 F0
	asl $07.b		; 06 07
	sbc $AAFF5F.l,X		; FF 5F FF AA
	sbc $13F723.l		; EF 23 F7 13
	stp		; DB
	php		; 08
	sbc $F604.w		; ED 04 F6
	ora ($FB.b,X)		; 01 FB
	ora ($FD.b,X)		; 01 FD
	inc $831F.w,X		; FE 1F 83
	ora $E007C3.l		; 0F C3 07 E0
	ora $F0.b,S		; 03 F0
	sed		; F8
	jsr ($7FFE.w,X)		; FC FE 7F
	sta $FF.b,S		; 83 FF
	sta $FF.b,S		; 83 FF
	sbc $C081FE.l,X		; FF FE 81 C0
	bra  32.b		; 80 20
	cpy #$90B0.w		; C0 B0 90
	bvs -80.b		; 70 B0
	sbc $E081FE.l,X		; FF FE 81 E0
	rts		; 60

	cld		; D8
	clc		; 18
	bcs  32.b		; B0 20
	pha		; 48
	sec		; 38
	cmp ($67.b,S),Y		; D3 67
	eor $59.b,S		; 43 59
	sbc [$04.b],Y		; F7 04
	tsb $30.b		; 04 30
	sec		; 38
	bvc 124.b		; 50 7C
	.db $62, $40, $06		; 62 40 06
	sed		; F8
	ora ($38.b,X)		; 01 38
	jmp ($4002.w,X)		; 7C 02 40
	tsb $77.b		; 04 77
	sbc [$22.b],Y		; F7 22
	tax		; AA
	sbc $080802.l,X		; FF 02 08 08
	tsb $10.b		; 04 10
	clc		; 18
	phd		; 0B
	php		; 08
	bpl  22.b		; 10 16
	bcs  32.b		; B0 20
	plx		; FA
	tsb $201B.w		; 0C 1B 20
	asl $60.b,X		; 16 60
	ora $CC.b,S		; 03 CC
	eor $9D.b,S		; 43 9D
	sbc $3201EE.l,X		; FF EE 01 32
	cop $64.b		; 02 64
	inc $EE.b		; E6 EE
	cop $20.b		; 02 20
	mvp $80,$32		; 44 32 80
	stz $FF.b		; 64 FF
	ora $160151.l,X		; 1F 51 01 16
	and $0F1F3F.l,X		; 3F 3F 1F 0F
	ora $05071B.l,X		; 1F 1B 07 05
	ora $03.b,S		; 03 03
	ora ($01.b,X)		; 01 01
	asl $10.b,X		; 16 10
	tsb $02.b		; 04 02
	brk $50.b		; 00 50
	brk $80.b		; 00 80
	ora $7C.b,S		; 03 7C
	ora $D4.b,S		; 03 D4
	and $301FA0.l,X		; 3F A0 1F 30
	cpx $805B.w		; EC 5B 80
	sbc [$C0.b],Y		; F7 C0
	pha		; 48
	bvs -89.b		; 70 A7
	jsr $5820.w		; 20 20 58
	bra 119.b		; 80 77
	rti		; 40

	php		; 08
	jsr $3C3F.w		; 20 3F 3C
	ora $3C.b,S		; 03 3C
	bra  96.b		; 80 60
	bra  96.b		; 80 60
	bra  64.b		; 80 40
	rti		; 40

	rts		; 60

	bra -128.b		; 80 80
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	bra -128.b		; 80 80
	and $CF3351.l,X		; 3F 51 33 CF
	bra  96.b		; 80 60
	jsr $4020.w		; 20 20 40
	rti		; 40

	jsr $C080.w		; 20 80 C0
	bra -128.b		; 80 80
	rti		; 40

	rti		; 40

	rts		; 60

	rts		; 60

	jsr $8020.w		; 20 20 80
	bra -17.b		; 80 EF
	ldx $2553.w		; AE 53 25
	asl $8F.b		; 06 8F
	asl $0F.b		; 06 0F
	ora #$0906.w		; 09 06 09
	asl $FE1C.w,X		; 1E 1C FE
	sty $0670.w		; 8C 70 06
	asl $06.b		; 06 06
	asl $0C.b		; 06 0C
	trb $0070.w		; 1C 70 00
	clv		; B8
	brk $30.b		; 00 30
	ror $FF7E.w,X		; 7E 7E FF
	ror $7E7E.w,X		; 7E 7E 7E
	clv		; B8
	tyx		; BB
	rti		; 40

	sta $30.b,X		; 95 30
	bmi 120.b		; 30 78
	pha		; 48
	bmi  78.b		; 30 4E
	sbc $4DFF32.l,X		; FF 32 FF 4D
	bmi  48.b		; 30 30
	ror $3232.w,X		; 7E 32 32
	sbc $2553AE.l		; EF AE 53 25
	bmi 122.b		; 30 7A
	bmi 124.b		; 30 7C
	pha		; 48
	bmi  72.b		; 30 48
	ply		; 7A
	and ($7F.b)		; 32 7F
	and ($1E.b,X)		; 21 1E
	bmi  52.b		; 30 34
	bmi  48.b		; 30 30
	bmi  50.b		; 30 32
	asl $2E20.w,X		; 1E 20 2E
	brk $0C.b		; 00 0C
	ora ($7E.b,X)		; 01 7E
	ror $7EFF.w,X		; 7E FF 7E
	ror $6B7E.w,X		; 7E 7E 6B
	sbc #$ABBE.w		; E9 BE AB
	adc $F9.b		; 65 F9
	plx		; FA
	txs		; 9A
	eor $AA.b,X		; 55 AA
	lda $A6559B.l		; AF 9B 55 A6
	ply		; 7A
	ror A		; 6A
	eor $00.b,X		; 55 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	bpl -112.b		; 10 90
	bpl  90.b		; 10 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	sty $28.b		; 84 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $7C1F.w,X		; 7E 1F 7C
	inc A		; 1A
	brk $1F.b		; 00 1F
	and $FF.b,X		; 35 FF
	adc $840000.l,X		; 7F 00 00 84
	bpl -112.b		; 10 90
	bpl  90.b		; 10 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	lda $30.b		; A5 30
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $3144.w,X		; 7E 44 31
	mvp $0A,$4A		; 44 4A 0A
	rtl		; 6B

	sbc $358D7F.l,X		; FF 7F 8D 35
	sty $10.b		; 84 10
	bcc  16.b		; 90 10
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	ora $3DFF00.l,X		; 1F 00 FF 3D
	lda $D669.w		; AD 69 D6
	ror $7C1F.w,X		; 7E 1F 7C
	ldx $1C.b		; A6 1C
	sbc $7FFF3C.l		; EF 3C FF 7F
	brk $00.b		; 00 00
	sty $10.b		; 84 10
	bcc  16.b		; 90 10
	dec $29.b,X		; D6 29
	eor $6B5F42.l,X		; 5F 42 5F 6B
	lda $035F01.l,X		; BF 01 5F 03
	sty $30.b		; 84 30
	dec $1879.w		; CE 79 18
	adc $061104.l,X		; 7F 04 11 06
	inc A		; 1A
	cpy $1F32.w		; CC 32 1F
	and $FF.b,X		; 35 FF
	adc $84358D.l,X		; 7F 8D 35 84
	bpl -112.b		; 10 90
	bpl  90.b		; 10 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	cmp $035F01.l,X		; DF 01 5F 03
	adc ($76.b,S),Y		; 73 76
	php		; 08
	adc ($18.b,X)		; 61 18
	adc $7C098C.l,X		; 7F 8C 09 7C
	ora ($FF.b)		; 12 FF
	eor $1D.b,S		; 43 1D
	brk $FF.b		; 00 FF
	adc $840000.l,X		; 7F 00 00 84
	bpl -112.b		; 10 90
	bpl  90.b		; 10 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	sty $28.b		; 84 28
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $1096.w,X		; 7E 96 10
	dec $3F59.w,X		; DE 59 3F
	adc $007FFF.l,X		; 7F FF 7F 00
	brk $84.b		; 00 84
	bpl  80.b		; 10 50
	php		; 08
	phy		; 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $9F		; 42 9F
	adc ($BF.b,S),Y		; 73 BF
	ora ($5F.b,X)		; 01 5F
	ora $18.b,S		; 03 18
	brk $85.b		; 00 85
	plp		; 28
	sta ($79.b)		; 92 79
	cld		; D8
	ror $1184.w,X		; 7E 84 11
	asl $1A.b		; 06 1A
	cpy $FF32.w		; CC 32 FF
	adc $840000.l,X		; 7F 00 00 84
	bpl -112.b		; 10 90
	bpl  90.b		; 10 5A
	and ($5F.b,X)		; 21 5F
	.db $42, $5F		; 42 5F
	rtl		; 6B

	lda $035F01.l,X		; BF 01 5F 03
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $0C63.w,X		; 7E 63 0C
	ldy #$2421.w		; A0 21 24
	rol $6B51.w,X		; 3E 51 6B
	sbc $358D7F.l,X		; FF 7F 8D 35
	sty $10.b		; 84 10
	bcc  16.b		; 90 10
	inc $21.b,X		; F6 21
	eor $6B5F42.l,X		; 5F 42 5F 6B
	lda $0B5F09.l,X		; BF 09 5F 0B
	sty $34.b		; 84 34
	dec $48.b		; C6 48
	dec $D669.w		; CE 69 D6
	ror $11AE.w,X		; 7E AE 11
	ora [$36.b],Y		; 17 36
	lda $7FFF4F.l,X		; BF 4F FF 7F
	lda $0035.w		; AD 35 00
	brk $9A.b		; 00 9A
	bpl  95.b		; 10 5F
	rtl		; 6B

	adc $739F6F.l,X		; 7F 6F 9F 73
	lda $7BDF77.l,X		; BF 77 DF 7B
	sbc $68087F.l,X		; FF 7F 08 68
	ora $8869.w		; 0D 69 88
	brk $16.b		; 00 16
	ora ($3F.b,X)		; 01 3F
	cop $FF.b		; 02 FF
	ora ($FF.b,S),Y		; 13 FF
	adc $004011.l,X		; 7F 11 40 00
	bra   2.b		; 80 02
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $56.b		; 02 56
	jsr $0120.w		; 20 20 01
	ora ($05.b,X)		; 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $08.b,X		; 35 08
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w,X		; 1D 01 05
	ora ($18.b,X)		; 01 18
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	and $2101.w,X		; 3D 01 21
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $0102.w		; 20 02 01
	ora ($05.b,X)		; 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $0A.b,X		; 35 0A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w,X		; 1D 01 05
	ora ($1A.b,X)		; 01 1A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	and $2301.w,X		; 3D 01 23
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $0124.w		; 20 24 01
	ora ($0D.b,X)		; 01 0D
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $2C.b,X		; 35 2C
	and ($01.b,X)		; 21 01
	ora $0501.w,X		; 1D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($3C.b,X)		; 01 3C
	and ($01.b,X)		; 21 01
	adc $0501.w,X		; 7D 01 05
	ora ($45.b,X)		; 01 45
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $0126.w		; 20 26 01
	ora ($0D.b,X)		; 01 0D
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $2E.b,X		; 35 2E
	and ($01.b,X)		; 21 01
	ora $0501.w,X		; 1D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($3E.b,X)		; 01 3E
	and ($01.b,X)		; 21 01
	adc $0501.w,X		; 7D 01 05
	ora ($47.b,X)		; 01 47
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $0148.w		; 20 48 01
	ora ($05.b,X)		; 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $50.b,X		; 35 50
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w		; 0D 01 05
	ora ($60.b,X)		; 01 60
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $6901.w		; 0D 01 69
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $014A.w		; 20 4A 01
	ora ($05.b,X)		; 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $52.b,X		; 35 52
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w		; 0D 01 05
	ora ($62.b,X)		; 01 62
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $6B01.w		; 0D 01 6B
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $7220.w		; 20 20 72
	eor $57.b,X		; 55 57
	eor $20.b,X		; 55 20
	jmp ($0101.w)		; 6C 01 01
	ora $0501.w,X		; 1D 01 05
	ora ($78.b,X)		; 01 78
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	sbc $0501.w,X		; FD 01 05
	ora ($57.b,X)		; 01 57
	ora $02.b,S		; 03 02
	brk $88.b		; 00 88
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	sta $2001.w		; 8D 01 20
	adc ($55.b)		; 72 55
	eor [$55.b],Y		; 57 55
	jsr $016E.w		; 20 6E 01
	ora ($1D.b,X)		; 01 1D
	ora ($05.b,X)		; 01 05
	ora ($7A.b,X)		; 01 7A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	sbc $0501.w,X		; FD 01 05
	ora ($57.b,X)		; 01 57
	ora $02.b,S		; 03 02
	brk $8A.b		; 00 8A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	sta $722001.l		; 8F 01 20 72
	eor $57.b,X		; 55 57
	eor $20.b,X		; 55 20
	bcc   1.b		; 90 01
	ora ($05.b,X)		; 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($9C.b,X)		; 01 9C
	and ($01.b,X)		; 21 01
	and $0501.w,X		; 3D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($57.b,X)		; 01 57
	ora $02.b,S		; 03 02
	brk $AC.b		; 00 AC
	and ($01.b,X)		; 21 01
	ora $B101.w,X		; 1D 01 B1
	ora ($20.b,X)		; 01 20
	adc ($55.b)		; 72 55
	eor [$55.b],Y		; 57 55
	jsr $0192.w		; 20 92 01
	ora ($05.b,X)		; 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($9E.b,X)		; 01 9E
	and ($01.b,X)		; 21 01
	and $0501.w,X		; 3D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($57.b,X)		; 01 57
	ora $02.b,S		; 03 02
	brk $AE.b		; 00 AE
	and ($01.b,X)		; 21 01
	ora $B301.w,X		; 1D 01 B3
	ora ($20.b,X)		; 01 20
	adc ($55.b)		; 72 55
	eor [$55.b],Y		; 57 55
	jsr $01B4.w		; 20 B4 01
	ora ($0D.b,X)		; 01 0D
	ora ($05.b,X)		; 01 05
	ora ($C0.b,X)		; 01 C0
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w		; 0D 01 05
	ora ($57.b,X)		; 01 57
	ora $02.b,S		; 03 02
	brk $D0.b		; 00 D0
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	cmp $01.b,X		; D5 01
	jsr $5572.w		; 20 72 55
	eor [$55.b],Y		; 57 55
	jsr $01B6.w		; 20 B6 01
	ora ($0D.b,X)		; 01 0D
	ora ($05.b,X)		; 01 05
	ora ($C2.b,X)		; 01 C2
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w		; 0D 01 05
	ora ($57.b,X)		; 01 57
	ora $02.b,S		; 03 02
	brk $D2.b		; 00 D2
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	cmp [$01.b],Y		; D7 01
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $AAAA.w		; 20 AA AA
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
	tax		; AA
	tax		; AA
	brk $11.b		; 00 11
	rti		; 40

	brk $25.b		; 00 25
	ora $00.b,S		; 03 00
	cop $00.b		; 02 00
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $56.b		; 00 56
	php		; 08
	rol $01.b		; 26 01
	ora $0008D7.l		; 0F D7 08 00
	brk $29.b		; 00 29
	php		; 08
	ora $01.b,S		; 03 01
	pld		; 2B
	rti		; 40

	pha		; 48
	bvs  85.b		; 70 55
	eor [$55.b],Y		; 57 55
	dec A		; 3A
	php		; 08
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($40.b,X)		; 01 40
	php		; 08
	ora ($10.b,X)		; 01 10
	ora $61.b,S		; 03 61
	ora [$01.b]		; 07 01
	ora $D7.b,S		; 03 D7
	eor $57.b,X		; 55 57
	and $37.b,X		; 35 37
	php		; 08
	ora $400A01.l		; 0F 01 0A 40
	adc ($03.b,X)		; 61 03
	bpl   1.b		; 10 01
	and $030148.l,X		; 3F 48 01 03
	ora ($07.b,X)		; 01 07
	ora ($3A.b,X)		; 01 3A
	pha		; 48
	bvs  85.b		; 70 55
	sbc [$55.b],Y		; F7 55
	eor #$0308.w		; 49 08 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor $501F08.l		; 4F 08 1F 50
	php		; 08
	eor ($08.b,S),Y		; 53 08
	ora ($01.b),Y		; 11 01
	ora [$01.b]		; 07 01
	cmp [$7D.b],Y		; D7 7D
	eor [$35.b],Y		; 57 35
	lsr $08.b		; 46 08
	ora ($0F.b,X)		; 01 0F
	asl A		; 0A
	rti		; 40

	ora ($53.b),Y		; 11 53
	pha		; 48
	bvc  72.b		; 50 48
	ora $03484E.l,X		; 1F 4E 48 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor #$0048.w		; 49 48 00
	brk $70.b		; 00 70
	eor ($05.b,X)		; 41 05
	trb $0E.b		; 14 0E
	trb $3D.b		; 14 3D
	jmp $00000D.l		; 5C 0D 00 00
	ora $14.b,S		; 03 14
	tsb $18.b		; 04 18
	ora $0A.b,X		; 15 0A
	trb $00.b		; 14 00
	brk $70.b		; 00 70
	eor $14.b,X		; 55 14
	trb $0E.b		; 14 0E
	and [$01.b],Y		; 37 01
	cop $35.b		; 02 35
	jmp $00000D.l		; 5C 0D 00 00
	ora ($14.b)		; 12 14
	tsb $38.b		; 04 38
	rol $18.b,X		; 36 18
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	jmp $0112CA.l		; 5C CA 12 01
	adc $57D7.w		; 6D D7 57
	eor [$03.b],Y		; 57 03
	lda [$12.b]		; A7 12
	sbc $01.b,S		; E3 01
	eor $12.b		; 45 12
	lsr $0112.w		; 4E 12 01
	adc [$01.b]		; 67 01
	rti		; 40

	ora ($01.b)		; 12 01
	phb		; 8B
	ora ($CB.b,X)		; 01 CB
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	jmp $0112DA.l		; 5C DA 12 01
	adc $57D7.w		; 6D D7 57
	eor [$03.b],Y		; 57 03
	lda [$12.b],Y		; B7 12
	sbc $01.b,S		; E3 01
	eor $12.b,X		; 55 12
	lsr $0112.w,X		; 5E 12 01
	adc [$01.b]		; 67 01
	bvc  18.b		; 50 12
	ora ($8B.b,X)		; 01 8B
	ora ($DB.b,X)		; 01 DB
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	eor [$2A.b],Y		; 57 2A
	asl $6901.w		; 0E 01 69
	ora ($57.b,X)		; 01 57
	and $57.b,X		; 35 57
	and $A2.b,X		; 35 A2
	ora $CB01.w		; 0D 01 CB
	ora ($8D.b,X)		; 01 8D
	ora ($E5.b,X)		; 01 E5
	ora $0E80.w		; 0D 80 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($81.b,X)		; 01 81
	asl $0000.w		; 0E 00 00
	brk $57.b		; 00 57
	dec A		; 3A
	asl $6901.w		; 0E 01 69
	ora ($57.b,X)		; 01 57
	and $57.b,X		; 35 57
	and $B2.b,X		; 35 B2
	ora $CB01.w		; 0D 01 CB
	ora ($8D.b,X)		; 01 8D
	ora ($F5.b,X)		; 01 F5
	ora $0E90.w		; 0D 90 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($91.b,X)		; 01 91
	asl $0000.w		; 0E 00 00
	brk $57.b		; 00 57
	rol $0E.b		; 26 0E
	ora ($0F.b,X)		; 01 0F
	ora ($77.b,X)		; 01 77
	and $57.b,X		; 35 57
	and $48.b,X		; 35 48
	asl $8501.w		; 0E 01 85
	cop $01.b		; 02 01
	adc #$A501.w		; 69 01 A5
	tsb $0E80.w		; 0C 80 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($81.b,X)		; 01 81
	asl $0000.w		; 0E 00 00
	brk $57.b		; 00 57
	rol $0E.b,X		; 36 0E
	ora ($0F.b,X)		; 01 0F
	ora ($77.b,X)		; 01 77
	and $57.b,X		; 35 57
	and $58.b,X		; 35 58
	asl $8501.w		; 0E 01 85
	cop $01.b		; 02 01
	adc #$B501.w		; 69 01 B5
	tsb $0E90.w		; 0C 90 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($91.b,X)		; 01 91
	asl $0000.w		; 0E 00 00
	brk $DC.b		; 00 DC
	jsr $010D.w		; 20 0D 01
	sbc $5F03.w		; ED 03 5F
	ora $3557.w		; 0D 57 35
	cmp $A90E.w		; CD 0E A9
	ora $01.b,S		; 03 01
	xba		; EB
	ora ($8F.b,X)		; 01 8F
	ora $0E80.w		; 0D 80 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($81.b,X)		; 01 81
	asl $0000.w		; 0E 00 00
	brk $DC.b		; 00 DC
	bmi  13.b		; 30 0D
	ora ($ED.b,X)		; 01 ED
	ora $5F.b,S		; 03 5F
	ora $3557.w		; 0D 57 35
	cmp $A90E.w,X		; DD 0E A9
	ora $01.b,S		; 03 01
	xba		; EB
	ora ($9F.b,X)		; 01 9F
	ora $0E90.w		; 0D 90 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	ora ($91.b,X)		; 01 91
	asl $5700.w		; 0E 00 57
	brk $5C.b		; 00 5C
	ldx $0E.b		; A6 0E
	ora ($E3.b,X)		; 01 E3
	ora ($CA.b,X)		; 01 CA
	ora $4101.w		; 0D 01 41
	cmp [$00.b],Y		; D7 00
	eor [$03.b],Y		; 57 03
	phb		; 8B
	ora $0123.w		; 0D 23 01
	lda #$A80D.w		; A9 0D A8
	asl $ED01.w		; 0E 01 ED
	ora ($45.b,X)		; 01 45
	asl $5700.w		; 0E 00 57
	brk $5C.b		; 00 5C
	ldx $0E.b,Y		; B6 0E
	ora ($E3.b,X)		; 01 E3
	ora ($DA.b,X)		; 01 DA
	ora $4101.w		; 0D 01 41
	cmp [$00.b],Y		; D7 00
	eor [$03.b],Y		; 57 03
	txy		; 9B
	ora $0123.w		; 0D 23 01
	lda $B80D.w,Y		; B9 0D B8
	asl $ED01.w		; 0E 01 ED
	ora ($55.b,X)		; 01 55
	asl $55C0.w		; 0E C0 55
	ora $0E8077.l		; 0F 77 80 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	sta ($0E.b,X)		; 81 0E
	inx		; E8
	asl $0F01.w		; 0E 01 0F
	cop $01.b		; 02 01
	eor [$C3.b],Y		; 57 C3
	eor [$0D.b],Y		; 57 0D
	cpy $010C.w		; CC 0C 01
	adc #$A501.w		; 69 01 A5
	tsb $0E80.w		; 0C 80 0E
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	cpy #$0F55.w		; C0 55 0F
	adc [$90.b],Y		; 77 90
	asl $0101.w		; 0E 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	sta ($0E.b),Y		; 91 0E
	sed		; F8
	asl $0F01.w		; 0E 01 0F
	cop $01.b		; 02 01
	eor [$C3.b],Y		; 57 C3
	eor [$0D.b],Y		; 57 0D
	jmp.w [$010C]		; DC 0C 01
	adc #$B501.w		; 69 01 B5
	tsb $0E90.w		; 0C 90 0E
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	cpy #$CF55.w		; C0 55 CF
	cmp $80.b,X		; D5 80
	asl $0101.w		; 0E 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	sta ($0E.b,X)		; 81 0E
	rol A		; 2A
	asl $6901.w		; 0E 01 69
	ora ($E1.b,X)		; 01 E1
	ora $57.b,S		; 03 57
	cmp $0D57.w		; CD 57 0D
	lda $0D.b,S		; A3 0D
	wai		; CB
	ora ($8D.b,X)		; 01 8D
	ora ($E5.b,X)		; 01 E5
	ora $0E80.w		; 0D 80 0E
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	cpy #$CF55.w		; C0 55 CF
	cmp $90.b,X		; D5 90
	asl $0101.w		; 0E 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	sta ($0E.b),Y		; 91 0E
	dec A		; 3A
	asl $6901.w		; 0E 01 69
	ora ($E1.b,X)		; 01 E1
	ora $57.b,S		; 03 57
	cmp $0D57.w		; CD 57 0D
	lda ($0D.b,S),Y		; B3 0D
	wai		; CB
	ora ($8D.b,X)		; 01 8D
	ora ($F5.b,X)		; 01 F5
	ora $0E90.w		; 0D 90 0E
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	cpy #$CF55.w		; C0 55 CF
	eor $80.b,X		; 55 80
	asl $0101.w		; 0E 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	sta ($0E.b,X)		; 81 0E
	rol $0E.b		; 26 0E
	ora ($0F.b,X)		; 01 0F
	ora ($61.b,X)		; 01 61
	eor $0D57CD.l,X		; 5F CD 57 0D
	eor #$850E.w		; 49 0E 85
	cop $01.b		; 02 01
	adc #$A501.w		; 69 01 A5
	tsb $0E80.w		; 0C 80 0E
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	cpy #$CF55.w		; C0 55 CF
	eor $90.b,X		; 55 90
	asl $0101.w		; 0E 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	sta ($0E.b),Y		; 91 0E
	rol $0E.b,X		; 36 0E
	ora ($0F.b,X)		; 01 0F
	ora ($61.b,X)		; 01 61
	eor $0D57CD.l,X		; 5F CD 57 0D
	eor $850E.w,Y		; 59 0E 85
	cop $01.b		; 02 01
	adc #$B501.w		; 69 01 B5
	tsb $0E90.w		; 0C 90 0E
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	cpy #$0F55.w		; C0 55 0F
	adc [$80.b],Y		; 77 80
	asl $0101.w		; 0E 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	sta ($0E.b,X)		; 81 0E
	jsr $010D.w		; 20 0D 01
	sbc $0103.w		; ED 03 01
	eor [$C3.b],Y		; 57 C3
	eor [$0D.b],Y		; 57 0D
	stz $0D.b		; 64 0D
	ora ($EB.b,X)		; 01 EB
	ora ($8F.b,X)		; 01 8F
	ora $0E80.w		; 0D 80 0E
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	cpy #$0F55.w		; C0 55 0F
	adc [$90.b],Y		; 77 90
	asl $0101.w		; 0E 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	sta ($0E.b),Y		; 91 0E
	bmi  13.b		; 30 0D
	ora ($ED.b,X)		; 01 ED
	ora $01.b,S		; 03 01
	eor [$C3.b],Y		; 57 C3
	eor [$0D.b],Y		; 57 0D
	stz $0D.b,X		; 74 0D
	ora ($EB.b,X)		; 01 EB
	ora ($9F.b,X)		; 01 9F
	ora $0E90.w		; 0D 90 0E
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	ldy $AA.b		; A4 AA
	tax		; AA
	ldy #$AAAA.w		; A0 AA AA
	tax		; AA
	asl A		; 0A
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($40.b),Y		; 11 40
	brk $77.b		; 00 77
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $56.b		; 00 56
	php		; 08
	rol $01.b		; 26 01
	ora $0008D7.l		; 0F D7 08 00
	brk $29.b		; 00 29
	php		; 08
	ora $01.b,S		; 03 01
	pld		; 2B
	rti		; 40

	pha		; 48
	bvs  85.b		; 70 55
	eor [$55.b],Y		; 57 55
	dec A		; 3A
	php		; 08
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($40.b,X)		; 01 40
	php		; 08
	ora ($10.b,X)		; 01 10
	ora $61.b,S		; 03 61
	ora [$01.b]		; 07 01
	ora $D7.b,S		; 03 D7
	eor $57.b,X		; 55 57
	and $37.b,X		; 35 37
	php		; 08
	ora $400A01.l		; 0F 01 0A 40
	adc ($03.b,X)		; 61 03
	bpl   1.b		; 10 01
	and $030148.l,X		; 3F 48 01 03
	ora ($07.b,X)		; 01 07
	ora ($3A.b,X)		; 01 3A
	pha		; 48
	bvs  85.b		; 70 55
	sbc [$55.b],Y		; F7 55
	eor #$0308.w		; 49 08 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor $501F08.l		; 4F 08 1F 50
	php		; 08
	eor ($08.b,S),Y		; 53 08
	ora ($01.b),Y		; 11 01
	ora [$01.b]		; 07 01
	cmp [$7D.b],Y		; D7 7D
	eor [$35.b],Y		; 57 35
	lsr $08.b		; 46 08
	ora ($0F.b,X)		; 01 0F
	asl A		; 0A
	rti		; 40

	ora ($53.b),Y		; 11 53
	pha		; 48
	bvc  72.b		; 50 48
	ora $03484E.l,X		; 1F 4E 48 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor #$0048.w		; 49 48 00
	brk $70.b		; 00 70
	eor ($05.b,X)		; 41 05
	trb $0E.b		; 14 0E
	trb $3D.b		; 14 3D
	jmp $00000D.l		; 5C 0D 00 00
	ora $14.b,S		; 03 14
	tsb $18.b		; 04 18
	ora $0A.b,X		; 15 0A
	trb $00.b		; 14 00
	brk $70.b		; 00 70
	eor $14.b,X		; 55 14
	trb $0E.b		; 14 0E
	and [$01.b],Y		; 37 01
	cop $35.b		; 02 35
	jmp $00000D.l		; 5C 0D 00 00
	ora ($14.b)		; 12 14
	tsb $38.b		; 04 38
	rol $18.b,X		; 36 18
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	jmp $0112CA.l		; 5C CA 12 01
	lda #$7D57.w		; A9 57 7D
	eor [$35.b],Y		; 57 35
	adc $12.b,S		; 63 12
	and ($01.b,X)		; 21 01
	ora #$4B01.w		; 09 01 4B
	ora ($4E.b)		; 12 4E
	ora ($01.b)		; 12 01
	plp		; 28
	ora ($01.b)		; 12 01
	adc #$8B01.w		; 69 01 8B
	ora ($CB.b,X)		; 01 CB
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	jmp $0112DA.l		; 5C DA 12 01
	lda #$7D57.w		; A9 57 7D
	eor [$35.b],Y		; 57 35
	adc ($12.b,S),Y		; 73 12
	and ($01.b,X)		; 21 01
	ora #$5B01.w		; 09 01 5B
	ora ($5E.b)		; 12 5E
	ora ($01.b)		; 12 01
	sec		; 38
	ora ($01.b)		; 12 01
	adc #$8B01.w		; 69 01 8B
	ora ($DB.b,X)		; 01 DB
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	bvs -50.b		; 70 CE
	tsb $5701.w		; 0C 01 57
	sbc $57.b,X		; F5 57
	ora $0CA2.w		; 0D A2 0C
	ora ($6D.b,X)		; 01 6D
	ora ($63.b,X)		; 01 63
	ora ($AD.b,X)		; 01 AD
	tsb $0DCA.w		; 0C CA 0D
	wai		; CB
	ora $0141.w		; 0D 41 01
	and $01.b,S		; 23 01
	lda #$000D.w		; A9 0D 00
	brk $00.b		; 00 00
	bvs -34.b		; 70 DE
	tsb $5701.w		; 0C 01 57
	sbc $57.b,X		; F5 57
	ora $0CB2.w		; 0D B2 0C
	ora ($6D.b,X)		; 01 6D
	ora ($63.b,X)		; 01 63
	ora ($BD.b,X)		; 01 BD
	tsb $0DDA.w		; 0C DA 0D
	stp		; DB
	ora $0141.w		; 0D 41 01
	and $01.b,S		; 23 01
	lda $C00D.w,Y		; B9 0D C0
	cmp $57.b,X		; D5 57
	cmp $0E2A.w		; CD 2A 0E
	ora ($69.b,X)		; 01 69
	ora ($E1.b,X)		; 01 E1
	ora $A3.b,S		; 03 A3
	ora $01CB.w		; 0D CB 01
	sta $E501.w		; 8D 01 E5
	ora $0E80.w		; 0D 80 0E
	eor [$CD.b],Y		; 57 CD
	eor [$0D.b],Y		; 57 0D
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	bra  14.b		; 80 0E
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	cpy #$57D5.w		; C0 D5 57
	cmp $0E3A.w		; CD 3A 0E
	ora ($69.b,X)		; 01 69
	ora ($E1.b,X)		; 01 E1
	ora $B3.b,S		; 03 B3
	ora $01CB.w		; 0D CB 01
	sta $F501.w		; 8D 01 F5
	ora $0E90.w		; 0D 90 0E
	eor [$CD.b],Y		; 57 CD
	eor [$0D.b],Y		; 57 0D
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	bcc  14.b		; 90 0E
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	cpy #$5F55.w		; C0 55 5F
	cmp $0E26.w		; CD 26 0E
	ora ($0F.b,X)		; 01 0F
	ora ($61.b,X)		; 01 61
	eor #$850E.w		; 49 0E 85
	cop $01.b		; 02 01
	adc #$A501.w		; 69 01 A5
	tsb $0E80.w		; 0C 80 0E
	eor [$CD.b],Y		; 57 CD
	eor [$0D.b],Y		; 57 0D
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	bra  14.b		; 80 0E
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	cpy #$5F55.w		; C0 55 5F
	cmp $0E36.w		; CD 36 0E
	ora ($0F.b,X)		; 01 0F
	ora ($61.b,X)		; 01 61
	eor $850E.w,Y		; 59 0E 85
	cop $01.b		; 02 01
	adc #$B501.w		; 69 01 B5
	tsb $0E90.w		; 0C 90 0E
	eor [$CD.b],Y		; 57 CD
	eor [$0D.b],Y		; 57 0D
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	bcc  14.b		; 90 0E
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	cpy #$D7DD.w		; C0 DD D7
	cpy #$0D20.w		; C0 20 0D
	ora ($ED.b,X)		; 01 ED
	ora $01.b,S		; 03 01
	lda #$6503.w		; A9 03 65
	ora $01EB.w		; 0D EB 01
	sta $0E800D.l		; 8F 0D 80 0E
	eor [$CD.b],Y		; 57 CD
	eor [$0D.b],Y		; 57 0D
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	bra  14.b		; 80 0E
	sta ($0E.b,X)		; 81 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	cpy #$D7DD.w		; C0 DD D7
	cpy #$0D30.w		; C0 30 0D
	ora ($ED.b,X)		; 01 ED
	ora $01.b,S		; 03 01
	lda #$7503.w		; A9 03 75
	ora $01EB.w		; 0D EB 01
	sta $0E900D.l,X		; 9F 0D 90 0E
	eor [$CD.b],Y		; 57 CD
	eor [$0D.b],Y		; 57 0D
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	bcc  14.b		; 90 0E
	sta ($0E.b),Y		; 91 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	cpy #$5FDD.w		; C0 DD 5F
	eor $C0.b,X		; 55 C0
	tsb $8F01.w		; 0C 01 8F
	ora ($01.b,X)		; 01 01
	lda $01.b		; A5 01
	xba		; EB
	tsb $018B.w		; 0C 8B 01
	ora ($61.b,X)		; 01 61
	ora ($2F.b,X)		; 01 2F
	ora ($4B.b,X)		; 01 4B
	cmp $0D5F55.l		; CF 55 5F 0D
	adc $0D.b		; 65 0D
	adc $0D.b		; 65 0D
	bra  14.b		; 80 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b,X)		; 81 0E
	pld		; 2B
	cop $01.b		; 02 01
	ora #$A301.w		; 09 01 A3
	tsb $DDC0.w		; 0C C0 DD
	eor $0CD055.l,X		; 5F 55 D0 0C
	ora ($8F.b,X)		; 01 8F
	ora ($01.b,X)		; 01 01
	lda $01.b		; A5 01
	xce		; FB
	tsb $018B.w		; 0C 8B 01
	ora ($61.b,X)		; 01 61
	ora ($2F.b,X)		; 01 2F
	ora ($4B.b,X)		; 01 4B
	cmp $0D5F55.l		; CF 55 5F 0D
	adc $0D.b,X		; 75 0D
	adc $0D.b,X		; 75 0D
	bcc  14.b		; 90 0E
	ora ($01.b,X)		; 01 01
	ora ($01.b,X)		; 01 01
	sta ($0E.b),Y		; 91 0E
	pld		; 2B
	cop $01.b		; 02 01
	ora #$B301.w		; 09 01 B3
	tsb $AAA4.w		; 0C A4 AA
	tax		; AA
	ldy #$000A.w		; A0 0A 00
	brk $00.b		; 00 00
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	tax		; AA
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpy $30.b		; C4 30
	eor ($56.b),Y		; 51 56
	sbc $00007F.l,X		; FF 7F 00 00
	ora $777D00.l,X		; 1F 00 7D 77
	ldx $FF7B.w,Y		; BE 7B FF
	adc $0D7C00.l,X		; 7F 00 7C 0D
	jmp ($7C1F.w,X)		; 7C 1F 7C
	ora $210834.l,X		; 1F 34 08 21
	and ($46.b),Y		; 31 46
	sbc $00007F.l,X		; FF 7F 00 00
	ora $7D1F00.l,X		; 1F 00 1F 7D
	sbc $00007F.l,X		; FF 7F 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $84.b		; 00 84
	bpl   0.b		; 10 00
	brk $16.b		; 00 16
	ora ($3F.b,X)		; 01 3F
	cop $FF.b		; 02 FF
	ora ($1F.b,S),Y		; 13 1F
	bpl  31.b		; 10 1F
	jsr $209F.w		; 20 9F 20
	ora $45BF35.l,X		; 1F 35 BF 45
	and $6ADF5A.l,X		; 3F 5A DF 6A
	eor $7FFF6B.l,X		; 5F 6B FF 7F
	brk $00.b		; 00 00
	eor $09.b,S		; 43 09
	lda $F07E.w		; AD 7E F0
	ror $7F34.w,X		; 7E 34 7F
	adc [$7F.b],Y		; 77 7F
	tyx		; BB
	adc $FC7FFF.l,X		; 7F FF 7F FC
	rtl		; 6B

	plx		; FA
	tad		; 5B
	sbc [$47.b],Y		; F7 47
	sbc $37.b,X		; F5 37
	sbc ($27.b,S),Y		; F3 27
	ora $1E00.w,X		; 1D 00 1E
	brk $1F.b		; 00 1F
	brk $00.b		; 00 00
	brk $7D.b		; 00 7D
	tsb $5A5F.w		; 0C 5F 5A
	sta $66FF5E.l,X		; 9F 5E FF 66
	and $779F6F.l,X		; 3F 6F 9F 77
	sbc $6F9F7F.l,X		; FF 7F 9F 6F
	eor $4EFF5F.l,X		; 5F 5F FF 4E
	lda $2E7F3E.l,X		; BF 3E 7F 2E
	ora $9E63.w,X		; 1D 63 9E
	adc ($FF.b,S),Y		; 73 FF
	adc $A40000.l,X		; 7F 00 00 A4
	clc		; 18
	sbc [$20.b]		; E7 20
	sbc $21087F.l,X		; FF 7F 08 21
	asl $7112.w		; 0E 12 71
	rol A		; 2A
	sbc $42.b,X		; F5 42
	eor $DD5B.w,Y		; 59 5B DD
	adc ($7C.b,S),Y		; 73 7C
	and $FC.b,X		; 35 FC
	eor ($7D.b,X)		; 41 7D
	eor ($FD.b)		; 52 FD
	lsr $6F7E.w,X		; 5E 7E 6F
	sbc $00007F.l,X		; FF 7F 00 00
	trb $FB7F.w		; 1C 7F FB
	ror $7EDA.w,X		; 7E DA 7E
	cmp $B97E.w,Y		; D9 7E B9
	ror $7EB8.w,X		; 7E B8 7E
	sta [$7E.b],Y		; 97 7E
	sta [$7E.b],Y		; 97 7E
	ora $733F73.l,X		; 1F 73 3F 73
	eor $777F77.l,X		; 5F 77 7F 77
	sta $7BBF7B.l,X		; 9F 7B BF 7B
	sbc $00007F.l,X		; FF 7F 00 00
	txy		; 9B
	.db $62, $BB, $66		; 62 BB 66
	jsr ($1C6A.w,X)		; FC 6A 1C
	adc $7D735D.l		; 6F 5D 73 7D
	adc [$BE.b],Y		; 77 BE
	tda		; 7B
	sbc $7C007F.l,X		; FF 7F 00 7C
	ora $1F7C.w		; 0D 7C 1F
	jmp ($341F.w,X)		; 7C 1F 34
	php		; 08
	and ($31.b,X)		; 21 31
	lsr $FF.b		; 46 FF
	adc $004011.l,X		; 7F 11 40 00
	sbc $04.b,X		; F5 04
	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $01,$18		; 54 18 01
	ora $01.b,S		; 03 01
	ora $0F5858.l		; 0F 58 58 0F
	ora ($03.b,X)		; 01 03
	ora ($40.b,X)		; 01 40
	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $01,$18		; 54 18 01
	ora $01.b,S		; 03 01
	ora $0F5858.l		; 0F 58 58 0F
	ora ($03.b,X)		; 01 03
	ora ($40.b,X)		; 01 40
	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $35,$18		; 54 18 35
	ora $01.b,S		; 03 01
	ora [$64.b]		; 07 64
	cli		; 58
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	rti		; 40

	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $35,$18		; 54 18 35
	ora $01.b,S		; 03 01
	ora [$64.b]		; 07 64
	cli		; 58
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	rti		; 40

	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $39,$18		; 54 18 39
	ora $01.b,S		; 03 01
	ora $1F5870.l,X		; 1F 70 58 1F
	ora ($03.b,X)		; 01 03
	and $0340.w,Y		; 39 40 03
	eor $57.b,X		; 55 57
	ora #$1854.w		; 09 54 18
	and $0103.w,Y		; 39 03 01
	ora $1F5870.l,X		; 1F 70 58 1F
	ora ($03.b,X)		; 01 03
	and $0340.w,Y		; 39 40 03
	eor $57.b,X		; 55 57
	ora #$1854.w		; 09 54 18
	and $0103.w		; 2D 03 01
	ora [$7C.b]		; 07 7C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $2D.b,S		; 03 2D
	rti		; 40

	ora $55.b,S		; 03 55
	eor [$09.b],Y		; 57 09
	mvn $2D,$18		; 54 18 2D
	ora $01.b,S		; 03 01
	ora [$7C.b]		; 07 7C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $2D.b,S		; 03 2D
	rti		; 40

	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	eor $0318.w,Y		; 59 18 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	rts		; 60

	cli		; 58
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $57.b,S		; 03 57
	eor $57.b,X		; 55 57
	eor $59.b,X		; 55 59
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $3F5860.l,X		; 3F 60 58 3F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc $18.b		; 65 18
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$6C.b]		; 07 6C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	eor $57.b,X		; 55 57
	eor $65.b,X		; 55 65
	clc		; 18
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$6C.b]		; 07 6C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	eor $57.b,X		; 55 57
	eor $71.b,X		; 55 71
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $0F5878.l		; 0F 78 58 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc ($18.b),Y		; 71 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $0F5878.l		; 0F 78 58 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc $0318.w,X		; 7D 18 03
	ora ($FF.b,X)		; 01 FF
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	sty $58.b		; 84 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $7D.b,X		; 55 7D
	clc		; 18
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$84.b]		; 07 84
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $7D.b,X		; 55 7D
	tya		; 98
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$84.b]		; 07 84
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $7D.b,X		; 55 7D
	tya		; 98
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$84.b]		; 07 84
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $570301.l,X		; FF 01 03 57
	eor $57.b,X		; 55 57
	eor $71.b,X		; 55 71
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $0FD878.l		; 0F 78 D8 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc ($98.b),Y		; 71 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $0FD878.l		; 0F 78 D8 0F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	adc $98.b		; 65 98
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$6C.b]		; 07 6C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	eor $57.b,X		; 55 57
	eor $65.b,X		; 55 65
	tya		; 98
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$6C.b]		; 07 6C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $570301.l		; 0F 01 03 57
	eor $57.b,X		; 55 57
	eor $59.b,X		; 55 59
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $3FD860.l,X		; 3F 60 D8 3F
	ora ($03.b,X)		; 01 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	eor [$55.b],Y		; 57 55
	eor [$55.b],Y		; 57 55
	eor $0398.w,Y		; 59 98 03
	ora ($07.b,X)		; 01 07
	ora ($03.b,X)		; 01 03
	ora ($3F.b,X)		; 01 3F
	rts		; 60

	cld		; D8
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $03.b,S		; 03 03
	eor [$57.b],Y		; 57 57
	ora $54.b,S		; 03 54
	clc		; 18
	and $0380.w		; 2D 80 03
	ora ($07.b,X)		; 01 07
	jmp ($07D8.w,X)		; 7C D8 07
	ora ($03.b,X)		; 01 03
	and $03C0.w		; 2D C0 03
	eor [$57.b],Y		; 57 57
	ora $54.b,S		; 03 54
	clc		; 18
	and $0380.w		; 2D 80 03
	ora ($07.b,X)		; 01 07
	jmp ($07D8.w,X)		; 7C D8 07
	ora ($03.b,X)		; 01 03
	and $03C0.w		; 2D C0 03
	eor [$57.b],Y		; 57 57
	ora $54.b,S		; 03 54
	clc		; 18
	and $0380.w,Y		; 39 80 03
	ora ($1F.b,X)		; 01 1F
	bvs -40.b		; 70 D8
	ora $390301.l,X		; 1F 01 03 39
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $39,$18		; 54 18 39
	bra   3.b		; 80 03
	ora ($1F.b,X)		; 01 1F
	bvs -40.b		; 70 D8
	ora $390301.l,X		; 1F 01 03 39
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $35,$18		; 54 18 35
	bra   3.b		; 80 03
	ora ($07.b,X)		; 01 07
	stz $D8.b		; 64 D8
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $35,$18		; 54 18 35
	bra   3.b		; 80 03
	ora ($07.b,X)		; 01 07
	stz $D8.b		; 64 D8
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $01,$18		; 54 18 01
	bra   3.b		; 80 03
	ora ($0F.b,X)		; 01 0F
	cli		; 58
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	cpy #$5703.w		; C0 03 57
	eor [$03.b],Y		; 57 03
	mvn $01,$18		; 54 18 01
	bra   3.b		; 80 03
	ora ($0F.b,X)		; 01 0F
	cli		; 58
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	cpy #$0957.w		; C0 57 09
	ora $55.b,S		; 03 55
	cli		; 58
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	rti		; 40

	mvn $01,$18		; 54 18 01
	ora $01.b,S		; 03 01
	ora $030957.l		; 0F 57 09 03
	eor $58.b,X		; 55 58
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	rti		; 40

	mvn $01,$18		; 54 18 01
	ora $01.b,S		; 03 01
	ora $030957.l		; 0F 57 09 03
	eor $64.b,X		; 55 64
	cli		; 58
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	rti		; 40

	mvn $35,$18		; 54 18 35
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora #$5503.w		; 09 03 55
	stz $58.b		; 64 58
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	rti		; 40

	mvn $35,$18		; 54 18 35
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora #$5503.w		; 09 03 55
	bvs  88.b		; 70 58
	ora $390301.l,X		; 1F 01 03 39
	rti		; 40

	mvn $39,$18		; 54 18 39
	ora $01.b,S		; 03 01
	ora $030957.l,X		; 1F 57 09 03
	eor $70.b,X		; 55 70
	cli		; 58
	ora $390301.l,X		; 1F 01 03 39
	rti		; 40

	mvn $39,$18		; 54 18 39
	ora $01.b,S		; 03 01
	ora $030957.l,X		; 1F 57 09 03
	eor $7C.b,X		; 55 7C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $2D.b,S		; 03 2D
	rti		; 40

	mvn $2D,$18		; 54 18 2D
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora #$5503.w		; 09 03 55
	jmp ($0758.w,X)		; 7C 58 07
	ora ($03.b,X)		; 01 03
	and $5440.w		; 2D 40 54
	clc		; 18
	and $0103.w		; 2D 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $60.b,X		; 55 60
	cli		; 58
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $59.b,S		; 03 59
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $575557.l,X		; 3F 57 55 57
	eor $60.b,X		; 55 60
	cli		; 58
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $59.b,S		; 03 59
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $575557.l,X		; 3F 57 55 57
	eor $6C.b,X		; 55 6C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $650301.l		; 0F 01 03 65
	clc		; 18
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $6C.b,X		; 55 6C
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $650301.l		; 0F 01 03 65
	clc		; 18
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $78.b,X		; 55 78
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $71.b,S		; 03 71
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $78.b,X		; 55 78
	cli		; 58
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $71.b,S		; 03 71
	clc		; 18
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $84.b,X		; 55 84
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $7D0301.l,X		; FF 01 03 7D
	clc		; 18
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $84.b,X		; 55 84
	cli		; 58
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $7D0301.l,X		; FF 01 03 7D
	clc		; 18
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $84.b,X		; 55 84
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $7D0301.l,X		; FF 01 03 7D
	tya		; 98
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $84.b,X		; 55 84
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	sbc $7D0301.l,X		; FF 01 03 7D
	tya		; 98
	ora $01.b,S		; 03 01
	sbc $010301.l,X		; FF 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $78.b,X		; 55 78
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $71.b,S		; 03 71
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $78.b,X		; 55 78
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	ora [$01.b]		; 07 01
	ora $71.b,S		; 03 71
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $575557.l		; 0F 57 55 57
	eor $6C.b,X		; 55 6C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $650301.l		; 0F 01 03 65
	tya		; 98
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $6C.b,X		; 55 6C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	ora $650301.l		; 0F 01 03 65
	tya		; 98
	ora $01.b,S		; 03 01
	ora $010301.l		; 0F 01 03 01
	ora [$57.b]		; 07 57
	eor $57.b,X		; 55 57
	eor $60.b,X		; 55 60
	cld		; D8
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $59.b,S		; 03 59
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $575557.l,X		; 3F 57 55 57
	eor $60.b,X		; 55 60
	cld		; D8
	and $010301.l,X		; 3F 01 03 01
	ora [$01.b]		; 07 01
	ora $59.b,S		; 03 59
	tya		; 98
	ora $01.b,S		; 03 01
	ora [$01.b]		; 07 01
	ora $01.b,S		; 03 01
	and $030357.l,X		; 3F 57 03 03
	eor [$7C.b],Y		; 57 7C
	cld		; D8
	ora [$01.b]		; 07 01
	ora $2D.b,S		; 03 2D
	cpy #$1854.w		; C0 54 18
	and $0380.w		; 2D 80 03
	ora ($07.b,X)		; 01 07
	eor [$03.b],Y		; 57 03
	ora $57.b,S		; 03 57
	jmp ($07D8.w,X)		; 7C D8 07
	ora ($03.b,X)		; 01 03
	and $54C0.w		; 2D C0 54
	clc		; 18
	and $0380.w		; 2D 80 03
	ora ($07.b,X)		; 01 07
	eor [$03.b],Y		; 57 03
	ora $57.b,S		; 03 57
	bvs -40.b		; 70 D8
	ora $390301.l,X		; 1F 01 03 39
	cpy #$1854.w		; C0 54 18
	and $0380.w,Y		; 39 80 03
	ora ($1F.b,X)		; 01 1F
	eor [$03.b],Y		; 57 03
	ora $57.b,S		; 03 57
	bvs -40.b		; 70 D8
	ora $390301.l,X		; 1F 01 03 39
	cpy #$1854.w		; C0 54 18
	and $0380.w,Y		; 39 80 03
	ora ($1F.b,X)		; 01 1F
	eor [$03.b],Y		; 57 03
	ora $57.b,S		; 03 57
	stz $D8.b		; 64 D8
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	cpy #$1854.w		; C0 54 18
	and $80.b,X		; 35 80
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora $03.b,S		; 03 03
	eor [$64.b],Y		; 57 64
	cld		; D8
	ora [$01.b]		; 07 01
	ora $35.b,S		; 03 35
	cpy #$1854.w		; C0 54 18
	and $80.b,X		; 35 80
	ora $01.b,S		; 03 01
	ora [$57.b]		; 07 57
	ora $03.b,S		; 03 03
	eor [$58.b],Y		; 57 58
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	cpy #$1854.w		; C0 54 18
	ora ($80.b,X)		; 01 80
	ora $01.b,S		; 03 01
	ora $030357.l		; 0F 57 03 03
	eor [$58.b],Y		; 57 58
	cld		; D8
	ora $010301.l		; 0F 01 03 01
	cpy #$1854.w		; C0 54 18
	ora ($80.b,X)		; 01 80
	ora $01.b,S		; 03 01
	ora $AAAAAA.l		; 0F AA AA AA
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
	tax		; AA
	brk $11.b		; 00 11
	rti		; 40

	brk $02.b		; 00 02
	cop $02.b		; 02 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	lsr $20.b,X		; 56 20
	jsr $0101.w		; 20 01 01
	ora $01.b		; 05 01
	eor [$55.b],Y		; 57 55
	eor [$35.b],Y		; 57 35
	php		; 08
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w,X		; 1D 01 05
	ora ($18.b,X)		; 01 18
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	and $2101.w,X		; 3D 01 21
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $0102.w		; 20 02 01
	ora ($05.b,X)		; 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $0A.b,X		; 35 0A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w,X		; 1D 01 05
	ora ($1A.b,X)		; 01 1A
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	and $2301.w,X		; 3D 01 23
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $0124.w		; 20 24 01
	ora ($0D.b,X)		; 01 0D
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $2C.b,X		; 35 2C
	and ($01.b,X)		; 21 01
	ora $0501.w,X		; 1D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($3C.b,X)		; 01 3C
	and ($01.b,X)		; 21 01
	adc $0501.w,X		; 7D 01 05
	ora ($45.b,X)		; 01 45
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $0126.w		; 20 26 01
	ora ($0D.b,X)		; 01 0D
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $2E.b,X		; 35 2E
	and ($01.b,X)		; 21 01
	ora $0501.w,X		; 1D 01 05
	ora ($0D.b,X)		; 01 0D
	ora ($3E.b,X)		; 01 3E
	and ($01.b,X)		; 21 01
	adc $0501.w,X		; 7D 01 05
	ora ($47.b,X)		; 01 47
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $0148.w		; 20 48 01
	ora ($05.b,X)		; 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $50.b,X		; 35 50
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w		; 0D 01 05
	ora ($60.b,X)		; 01 60
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $6901.w		; 0D 01 69
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	eor [$20.b],Y		; 57 20
	jsr $014A.w		; 20 4A 01
	ora ($05.b,X)		; 01 05
	ora ($57.b,X)		; 01 57
	eor $57.b,X		; 55 57
	and $52.b,X		; 35 52
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $0501.w		; 0D 01 05
	ora ($62.b,X)		; 01 62
	and ($01.b,X)		; 21 01
	ora $01.b		; 05 01
	ora $6B01.w		; 0D 01 6B
	ora ($02.b,X)		; 01 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $0220.w		; 20 20 02
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	jsr $AA20.w		; 20 20 AA
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
	tax		; AA
	tax		; AA
	tax		; AA
	brk $08.b		; 00 08
	brk $40.b		; 00 40
	bcc   0.b		; 90 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1820.w		; 20 20 18
	ora $00.b,S		; 03 00
	brk $28.b		; 00 28
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $02.b		; 00 02
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
	stx $87.b		; 86 87
	rti		; 40

	ora $63.b,S		; 03 63
	eor $247254.l		; 4F 54 72 24
	asl $43.b		; 06 43
	ora ($20.b,S),Y		; 13 20
	ora $A0.b		; 05 A0
	bpl   0.b		; 10 00
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ora ($02.b,X)		; 01 02
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	tsb $81.b		; 04 81
	brk $80.b		; 00 80
	sty $04.b,X		; 94 04
	bpl   0.b		; 10 00
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $20.b		; 02 20
	brk $90.b		; 00 90
	jsr $0004.w		; 20 04 00
	brk $08.b		; 00 08
	brk $C0.b		; 00 C0
	brk $04.b		; 00 04
	jsr $0010.w		; 20 10 00
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
	sec		; 38
	sty $F6.b		; 84 F6
	adc ($31.b)		; 72 31
	lsr $2B.b		; 46 2B
	mvp $82,$6C		; 44 6C 82
	eor ($10.b)		; 52 10
	tas		; 1B
	brk $02.b		; 00 02
	brk $80.b		; 00 80
	brk $04.b		; 00 04
	ora ($10.b),Y		; 11 10
	cop $80.b		; 02 80
	bra   1.b		; 80 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $42.b		; 00 42
	bpl  66.b		; 10 42
	bpl  32.b		; 10 20
	brk $04.b		; 00 04
	bpl -128.b		; 10 80
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   1.b		; 80 01
	tsb $20.b		; 04 20
	tsb $14.b		; 04 14
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
	brk $3A.b		; 00 3A
	bpl -13.b		; 10 F3
	phb		; 8B
	lda $24.b,X		; B5 24
	xba		; EB
	ldy $FC.b,X		; B4 FC
	inx		; E8
	ora [$85.b],Y		; 17 85
	eor #$3024.w		; 49 24 30
	bmi   0.b		; 30 00
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	rti		; 40

	cli		; 58
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	ora $10.b,S		; 03 10
	brk $05.b		; 00 05
	bpl  10.b		; 10 0A
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cpx $4D80.w		; EC 80 4D
	sta ($CC.b,X)		; 81 CC
	sta ($57.b,X)		; 81 57
	.db $82, $F4, $82		; 82 F4 82
	eor $83E083.l		; 4F 83 E0 83
	eor $84C084.l,X		; 5F 84 C0 84
	eor ($85.b),Y		; 51 85
	dec $85.b,X		; D6 85
	sta ($86.b),Y		; 91 86
	plp		; 28
	sta [$AD.b]		; 87 AD
	sta [$44.b]		; 87 44
	dey		; 88
	cmp $892488.l		; CF 88 24 89
	lda $8A1089.l		; AF 89 10 8A
	lda ($8A.b,X)		; A1 8A
	jsr $9F8B.w		; 20 8B 9F
	phb		; 8B
	brk $8C.b		; 00 8C
	sta ($8C.b),Y		; 91 8C
	tsb $8D.b		; 04 8D
	sta $8D.b,X		; 95 8D
	and ($8E.b)		; 32 8E
	cmp $8E.b,S		; C3 8E
	bit $A98F.w,X		; 3C 8F A9
	sta $B9904C.l		; 8F 4C 90 B9
	bcc  56.b		; 90 38
	sta ($B1.b),Y		; 91 B1
	sta ($2A.b),Y		; 91 2A
	sta ($91.b)		; 92 91
	sta ($16.b)		; 92 16
	sta ($AD.b,S),Y		; 93 AD
	sta ($50.b,S),Y		; 93 50
	sty $ED.b,X		; 94 ED
	sty $6C.b,X		; 94 6C
	sta $0F.b,X		; 95 0F
	stx $C4.b,Y		; 96 C4
	stx $91.b,Y		; 96 91
	sta [$58.b],Y		; 97 58
	tya		; 98
	ora $99DA99.l,X		; 1F 99 DA 99
	rtl		; 6B

	txs		; 9A
	inc $9A.b,X		; F6 9A
	sta [$9B.b]		; 87 9B
	ora ($9C.b)		; 12 9C
	sta $E09C.w,X		; 9D 9C E0
	stz $9D95.w		; 9C 95 9D
	inc A		; 1A
	stz $9EBD.w,X		; 9E BD 9E
	mvn $C1,$9F		; 54 9F C1
	sta $E3A058.l,X		; 9F 58 A0 E3
	ldy #$A180.w		; A0 80 A1
	cmp $A1.b,X		; D5 A1
	adc ($A2.b)		; 72 A2
	cmp $A370A2.l,X		; DF A2 70 A3
	ora ($A4.b,S),Y		; 13 A4
	stx $A4.b		; 86 A4
	sbc ($A4.b,X)		; E1 A4
	.db $42, $A5		; 42 A5
	lda $A5.b,S		; A3 A5
	asl A		; 0A
	ldx $8F.b		; A6 8F
	ldx $26.b		; A6 26
	lda [$93.b]		; A7 93
	lda [$24.b]		; A7 24
	tay		; A8
	cmp ($A8.b,X)		; C1 A8
	cli		; 58
	lda #$A9E9.w		; A9 E9 A9
	stx $AA.b		; 86 AA
	sbc $D2AA.w,Y		; F9 AA D2
	plb		; AB
	sta ($AC.b,S),Y		; 93 AC
	asl $AD.b		; 06 AD
	adc ($AD.b,S),Y		; 73 AD
	lsr $AE.b		; 46 AE
	ora $AFF8AF.l,X		; 1F AF F8 AF
	lda $B13EB0.l,X		; BF B0 3E B1
	cmp $B1.b,S		; C3 B1
	pha		; 48
	lda ($E5.b)		; B2 E5
	lda ($6A.b)		; B2 6A
	lda ($BF.b,S),Y		; B3 BF
	lda ($38.b,S),Y		; B3 38
	ldy $D5.b,X		; B4 D5
	ldy $72.b,X		; B4 72
	lda $E5.b,X		; B5 E5
	lda $46.b,X		; B5 46
	ldx $D1.b,Y		; B6 D1
	ldx $6E.b,Y		; B6 6E
	lda [$ED.b],Y		; B7 ED
	lda [$4E.b],Y		; B7 4E
	clv		; B8
	cmp $76B8.w,Y		; D9 B8 76
	lda $B9F5.w,Y		; B9 F5 B9
	lsr $BA.b,X		; 56 BA
	lda [$BA.b],Y		; B7 BA
	.db $42, $BB		; 42 BB
	cmp $BC5EBB.l,X		; DF BB 5E BC
	lda $BD50BC.l,X		; BF BC 50 BD
	cmp #$84BD.w		; C9 BD 84
	ldx $BF0F.w,Y		; BE 0F BF
	eor ($BF.b)		; 52 BF
	ora $10C0.w		; 0D C0 10
	inc $0A.b		; E6 0A
	lda #$0008.w		; A9 08 00
	pha		; 48
	sbc [$09.b]		; E7 09
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	beq   0.b		; F0 00
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	beq   0.b		; F0 00
	sbc #$0808.w		; E9 08 08
	pha		; 48
	xba		; EB
	ora $C9.b		; 05 C9
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $02.b,X		; F6 02
	lda #$0C00.w		; A9 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b),Y		; B1 00
	ora $EB40.w		; 0D 40 EB
	ora $00F4.w		; 0D F4 00
	asl $EB40.w		; 0E 40 EB
	ora $00FC.w		; 0D FC 00
	ora $F50340.l		; 0F 40 03 F5
	cmp #$1C00.w		; C9 00 1C
	rti		; 40

	sed		; F8
	brk $F9.b		; 00 F9
	brk $1D.b		; 00 1D
	rti		; 40

	xce		; FB
	sbc $00C9.w,X		; FD C9 00
	asl $FB40.w,X		; 1E 40 FB
	sbc $00D1.w,X		; FD D1 00
	ora $F40440.l,X		; 1F 40 04 F4
	ldy $00.b,X		; B4 00
	jsr $FD40.w		; 20 40 FD
	xce		; FB
	jsr ($2100.w,X)		; FC 00 21
	rti		; 40

	ora $D7.b,X		; 15 D7
	ora $08AD.w,Y		; 19 AD 08
	brk $48.b		; 00 48
	sbc [$09.b]		; E7 09
	lda $0208.w		; AD 08 02
	pha		; 48
	phx		; DA
	asl $BD.b,X		; 16 BD
	php		; 08
	tsb $48.b		; 04 48
	nop		; EA
	asl $BD.b		; 06 BD
	php		; 08
	asl $48.b		; 06 48
	sbc $0D.b,S		; E3 0D
	sbc $08.b		; E5 08
	php		; 08
	pha		; 48
	sbc $0D.b,S		; E3 0D
	cmp $0A08.w		; CD 08 0A
	pha		; 48
	brk $F8.b		; 00 F8
	sbc $0C00.w,X		; FD 00 0C
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	sbc $00.b,X		; F5 00
	ora $E240.w		; 0D 40 E2
	asl $FD.b,X		; 16 FD
	brk $0E.b		; 00 0E
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda $0F00.w		; AD 00 0F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	lda $00.b,X		; B5 00
	trb $FA40.w		; 1C 40 FA
	inc $00BD.w,X		; FE BD 00
	ora $FA40.w,X		; 1D 40 FA
	inc $00C5.w,X		; FE C5 00
	asl $F840.w,X		; 1E 40 F8
	brk $F5.b		; 00 F5
	brk $1F.b		; 00 1F
	rti		; 40

	sed		; F8
	brk $FD.b		; 00 FD
	brk $20.b		; 00 20
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $2100.w		; CD 00 21
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $00.b,X		; D5 00
	jsl $0DEB40.l		; 22 40 EB 0D
	cmp $2300.w,X		; DD 00 23
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $2400.w,X		; DD 00 24
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $00.b		; E5 00
	and $40.b		; 25 40
	sbc $03.b,X		; F5 03
	sbc $2600.w		; ED 00 26
	rti		; 40

	ora [$F7.b],Y		; 17 F7
	sbc $08B3.w,Y		; F9 B3 08
	brk $48.b		; 00 48
	sbc $DBF7.w,Y		; F9 F7 DB
	php		; 08
	cop $48.b		; 02 48
	sbc #$D307.w		; E9 07 D3
	php		; 08
	tsb $48.b		; 04 48
	sbc #$C307.w		; E9 07 C3
	php		; 08
	asl $48.b		; 06 48
	sbc $C3F7.w,Y		; F9 F7 C3
	php		; 08
	php		; 08
	pha		; 48
	ora [$F1.b]		; 07 F1
	tyx		; BB
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $00B0F9.l,X		; FF F9 B0 00
	phd		; 0B
	rti		; 40

	ora $00F9E9.l		; 0F E9 F9 00
	tsb $0940.w		; 0C 40 09
	sbc $0D00CB.l		; EF CB 00 0D
	rti		; 40

	sbc $00F309.l		; EF 09 F3 00
	asl $F740.w		; 0E 40 F7
	ora ($F3.b,X)		; 01 F3
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00BB09.l		; EF 09 BB 00
	inc A		; 1A
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda ($00.b,S),Y		; B3 00
	tas		; 1B
	rti		; 40

	sbc $D3FF.w,Y		; F9 FF D3
	brk $1C.b		; 00 1C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,S),Y		; D3 00
	ora $0940.w,X		; 1D 40 09
	sbc $1E00DE.l		; EF DE 00 1E
	rti		; 40

	ora #$E6EF.w		; 09 EF E6
	brk $1F.b		; 00 1F
	rti		; 40

	ora #$EEEF.w		; 09 EF EE
	brk $20.b		; 00 20
	rti		; 40

	ora #$F6EF.w		; 09 EF F6
	brk $21.b		; 00 21
	rti		; 40

	sbc ($06.b)		; F2 06
	xba		; EB
	brk $22.b		; 00 22
	rti		; 40

	plx		; FA
	inc $00EB.w,X		; FE EB 00
	and $40.b,S		; 23 40
	cpx $FB0C.w		; EC 0C FB
	brk $24.b		; 00 24
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $25.b		; 00 25
	rti		; 40

	inc A		; 1A
	sbc #$B807.w		; E9 07 B8
	php		; 08
	brk $48.b		; 00 48
	cmp $B817.w,Y		; D9 17 B8
	php		; 08
	cop $48.b		; 02 48
	cmp $C817.w,Y		; D9 17 C8
	php		; 08
	tsb $48.b		; 04 48
	cmp #$C127.w		; C9 27 C1
	php		; 08
	asl $48.b		; 06 48
	sbc $00DF09.l		; EF 09 DF 00
	php		; 08
	rti		; 40

	sbc $00F0F9.l,X		; FF F9 F0 00
	ora #$F740.w		; 09 40 F7
	ora ($E9.b,X)		; 01 E9
	brk $0A.b		; 00 0A
	rti		; 40

	sbc #$FB0F.w		; E9 0F FB
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $B6FF.w,Y		; F9 FF B6
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $BEFF.w,Y		; F9 FF BE
	brk $0D.b		; 00 0D
	rti		; 40

	sbc ($17.b,X)		; E1 17
	cpx #$00.b		; E0 00
	asl $EE40.w		; 0E 40 EE
	asl A		; 0A
	cmp [$00.b],Y		; D7 00
	ora $12E640.l		; 0F 40 E6 12
	sbc [$00.b],Y		; F7 00
	clc		; 18
	rti		; 40

	dec $D81A.w,X		; DE 1A D8
	brk $19.b		; 00 19
	rti		; 40

	sbc #$C80F.w		; E9 0F C8
	brk $1A.b		; 00 1A
	rti		; 40

	sbc #$D00F.w		; E9 0F D0
	brk $1B.b		; 00 1B
	rti		; 40

	cmp ($27.b),Y		; D1 27
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	inc $12.b		; E6 12
	cld		; D8
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($06.b)		; F2 06
	cpx $00.b		; E4 00
	asl $E240.w,X		; 1E 40 E2
	asl $E8.b,X		; 16 E8
	brk $1F.b		; 00 1F
	rti		; 40

	plx		; FA
	inc $00F0.w,X		; FE F0 00
	jsr $DB40.w		; 20 40 DB
	ora $00B0.w,X		; 1D B0 00
	and ($40.b,X)		; 21 40
	sbc $15.b,S		; E3 15
	bcs   0.b		; B0 00
	jsl $0DEB40.l		; 22 40 EB 0D
	bcs   0.b		; B0 00
	and $40.b,S		; 23 40
	sbc ($05.b,S),Y		; F3 05
	bcs   0.b		; B0 00
	bit $40.b		; 24 40
	cpx $14.b		; E4 14
	sbc $402500.l		; EF 00 25 40
	ora $CDF9F7.l		; 0F F7 F9 CD
	php		; 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	cmp $0208.w,X		; DD 08 02
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp $0408.w,X		; DD 08 04
	pha		; 48
	ora [$E9.b]		; 07 E9
	sbc $0608.w		; ED 08 06
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	sbc $0808.w		; ED 08 08
	pha		; 48
	sbc $00D509.l		; EF 09 D5 00
	asl A		; 0A
	rti		; 40

	sbc $00DD09.l		; EF 09 DD 00
	phd		; 0B
	rti		; 40

	sbc $00E509.l		; EF 09 E5 00
	tsb $EF40.w		; 0C 40 EF
	ora #$00ED.w		; 09 ED 00
	ora $EF40.w		; 0D 40 EF
	ora #$00F5.w		; 09 F5 00
	asl $EF40.w		; 0E 40 EF
	ora #$00FD.w		; 09 FD 00
	ora $01F740.l		; 0F 40 F7 01
	sbc $1A00.w,X		; FD 00 1A
	rti		; 40

	sbc $00FDF9.l,X		; FF F9 FD 00
	tas		; 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc $1C00.w,X		; FD 00 1C
	rti		; 40

	ora $00FDE9.l		; 0F E9 FD 00
	ora $1840.w,X		; 1D 40 18
	xba		; EB
	ora $C5.b		; 05 C5
	php		; 08
	brk $48.b		; 00 48
	xba		; EB
	ora $D5.b		; 05 D5
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $C7.b,X		; F5 C7
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $D7.b,X		; F5 D7
	php		; 08
	asl $48.b		; 06 48
	ora ($DD.b,S),Y		; 13 DD
	sep #$08		; E2 08
	php		; 08
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	sbc $00.b		; E5 00
	asl A		; 0A
	rti		; 40

	xce		; FB
	sbc $00E7.w,X		; FD E7 00
	phd		; 0B
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc [$00.b]		; E7 00
	tsb $E340.w		; 0C 40 E3
	ora $C8.b,X		; 15 C8
	brk $0D.b		; 00 0D
	rti		; 40

	phd		; 0B
	sbc $00C8.w		; ED C8 00
	asl $E340.w		; 0E 40 E3
	ora $D0.b,X		; 15 D0
	brk $0F.b		; 00 0F
	rti		; 40

	phd		; 0B
	sbc $00D0.w		; ED D0 00
	inc A		; 1A
	rti		; 40

	phd		; 0B
	sbc $00D8.w		; ED D8 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00E0.w		; ED E0 00
	trb $0B40.w		; 1C 40 0B
	sbc $00E8.w		; ED E8 00
	ora $2B40.w,X		; 1D 40 2B
	cmp $00F1.w		; CD F1 00
	asl $1340.w,X		; 1E 40 13
	sbc $CA.b		; E5 CA
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp ($00.b)		; D2 00
	jsr $1340.w		; 20 40 13
	sbc $DA.b		; E5 DA
	brk $21.b		; 00 21
	rti		; 40

	and ($D7.b,X)		; 21 D7
	plx		; FA
	brk $22.b		; 00 22
	rti		; 40

	and $D5.b,S		; 23 D5
	sep #$00		; E2 00
	and $40.b,S		; 23 40
	and $D5.b,S		; 23 D5
	nop		; EA
	brk $24.b		; 00 24
	rti		; 40

	tas		; 1B
	cmp $00F2.w,X		; DD F2 00
	and $40.b		; 25 40
	and $D5.b,S		; 23 D5
	sbc ($00.b)		; F2 00
	rol $40.b		; 26 40
	ora $0C.b,X		; 15 0C
	cpx $E7.b		; E4 E7
	php		; 08
	brk $48.b		; 00 48
	cpx $0C.b		; E4 0C
	sbc [$08.b]		; E7 08
	cop $48.b		; 02 48
	cpx $0C.b		; E4 0C
	sbc [$08.b],Y		; F7 08
	tsb $48.b		; 04 48
	pea $E7FC.w		; F4 FC E7
	php		; 08
	asl $48.b		; 06 48
	pea $F7FC.w		; F4 FC F7
	php		; 08
	php		; 08
	pha		; 48
	jsl $00F5D6.l		; 22 D6 F5 00
	asl A		; 0A
	rti		; 40

	rol A		; 2A
	dec $00F5.w		; CE F5 00
	phd		; 0B
	rti		; 40

	trb $E5DC.w		; 1C DC E5
	brk $0C.b		; 00 0C
	rti		; 40

	and [$D1.b]		; 27 D1
	phx		; DA
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc [$00.b]		; E7 00
	asl $0440.w		; 0E 40 04
	pea $00EF.w		; F4 EF 00
	ora $F40440.l		; 0F 40 04 F4
	sbc [$00.b],Y		; F7 00
	inc A		; 1A
	rti		; 40

	tsb $F7EC.w		; 0C EC F7
	brk $1B.b		; 00 1B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $401C00.l,X		; FF 00 1C 40
	trb $F0DC.w		; 1C DC F0
	brk $1D.b		; 00 1D
	rti		; 40

	bit $D4.b		; 24 D4
	sep #$00		; E2 00
	asl $2C40.w,X		; 1E 40 2C
	cpy $00E2.w		; CC E2 00
	ora $13E540.l,X		; 1F 40 E5 13
	cmp $402000.l,X		; DF 00 20 40
	sbc $DF0B.w		; ED 0B DF
	brk $21.b		; 00 21
	rti		; 40

	sbc $03.b,X		; F5 03
	cmp $402200.l,X		; DF 00 22 40
	sbc $DFFB.w,X		; FD FB DF
	brk $23.b		; 00 23
	rti		; 40

	bpl  14.b		; 10 0E
.ACCU 8
	sep #$E9		; E2 E9
	php		; 08
	brk $48.b		; 00 48
	inc $EC02.w		; EE 02 EC
	php		; 08
	cop $48.b		; 02 48
	inc $ECF2.w,X		; FE F2 EC
	php		; 08
	tsb $48.b		; 04 48
	inc $FC02.w		; EE 02 FC
	php		; 08
	asl $48.b		; 06 48
	inc $FCF2.w,X		; FE F2 FC
	php		; 08
	php		; 08
	pha		; 48
	dec $E812.w,X		; DE 12 E8
	php		; 08
	asl A		; 0A
	pha		; 48
	asl $E2.b,X		; 16 E2
	sbc $0C00.w,Y		; F9 00 0C
	rti		; 40

	asl $01EA.w		; 0E EA 01
	brk $0D.b		; 00 0D
	rti		; 40

	inc $12.b		; E6 12
	brk $00.b		; 00 00
	asl $0E40.w		; 0E 40 0E
	nop		; EA
	sbc $0F00.w,Y		; F9 00 0F
	rti		; 40

	dec $F81A.w,X		; DE 1A F8
	brk $1C.b		; 00 1C
	rti		; 40

	inc $12.b		; E6 12
	sed		; F8
	brk $1D.b		; 00 1D
	rti		; 40

	jsl $00F8D6.l		; 22 D6 F8 00
	asl $2A40.w,X		; 1E 40 2A
	dec $00F8.w		; CE F8 00
	ora $DD1B40.l,X		; 1F 40 1B DD
	sbc ($00.b),Y		; F1 00
	jsr $1B40.w		; 20 40 1B
	cmp $00F9.w,X		; DD F9 00
	and ($40.b,X)		; 21 40
	clc		; 18
	inc $0A.b		; E6 0A
	sbc $08.b		; E5 08
	brk $48.b		; 00 48
	inc $0A.b		; E6 0A
	sbc $08.b,X		; F5 08
	cop $48.b		; 02 48
	inc $EDF2.w,X		; FE F2 ED
	php		; 08
	tsb $48.b		; 04 48
	inc $02.b,X		; F6 02
	jmp.w [$0600]		; DC 00 06
	rti		; 40

	inc $02.b,X		; F6 02
	cpx $00.b		; E4 00
	ora [$40.b]		; 07 40
	inc $02.b,X		; F6 02
	cpx $0800.w		; EC 00 08
	rti		; 40

	inc $02.b,X		; F6 02
	pea $0900.w		; F4 00 09
	rti		; 40

	asl $E2.b,X		; 16 E2
	pea $0A00.w		; F4 00 0A
	rti		; 40

	inc $02.b,X		; F6 02
	jsr ($0B00.w,X)		; FC 00 0B
	rti		; 40

	asl $E2.b,X		; 16 E2
	jsr ($0C00.w,X)		; FC 00 0C
	rti		; 40

	inc $D50A.w		; EE 0A D5
	brk $0D.b		; 00 0D
	rti		; 40

	inc $D5FA.w,X		; FE FA D5
	brk $0E.b		; 00 0E
	rti		; 40

	inc $DD0A.w		; EE 0A DD
	brk $0F.b		; 00 0F
	rti		; 40

	inc $DDFA.w,X		; FE FA DD
	brk $16.b		; 00 16
	rti		; 40

	inc $E5FA.w,X		; FE FA E5
	brk $17.b		; 00 17
	rti		; 40

	dec $EB1A.w,X		; DE 1A EB
	brk $18.b		; 00 18
	rti		; 40

	dec $F31A.w,X		; DE 1A F3
	brk $19.b		; 00 19
	rti		; 40

	inc $02.b,X		; F6 02
	pei ($00.b)		; D4 00
	inc A		; 1A
	rti		; 40

	asl $EDEA.w		; 0E EA ED
	brk $1B.b		; 00 1B
	rti		; 40

	asl $F5EA.w		; 0E EA F5
	brk $1C.b		; 00 1C
	rti		; 40

	asl $FADA.w,X		; 1E DA FA
	brk $1D.b		; 00 1D
	rti		; 40

	plx		; FA
	inc $0005.w,X		; FE 05 00
	asl $FD40.w,X		; 1E 40 FD
	xce		; FB
	sbc $1F00.w,X		; FD 00 1F
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $2000.w,X		; FD 00 20
	rti		; 40

	asl $EE.b,X		; 16 EE
	cop $DE.b		; 02 DE
	php		; 08
	brk $48.b		; 00 48
	inc $DEF2.w,X		; FE F2 DE
	php		; 08
	cop $48.b		; 02 48
	inc $EE02.w		; EE 02 EE
	php		; 08
	tsb $48.b		; 04 48
	inc $EEF2.w,X		; FE F2 EE
	php		; 08
	asl $48.b		; 06 48
	trb $EBD4.w		; 1C D4 EB
	php		; 08
	php		; 08
	pha		; 48
	asl $EBEA.w		; 0E EA EB
	brk $0A.b		; 00 0A
	rti		; 40

	dec $EE1A.w,X		; DE 1A EE
	brk $0B.b		; 00 0B
	rti		; 40

	dec $F61A.w,X		; DE 1A F6
	brk $0C.b		; 00 0C
	rti		; 40

	inc $FE0A.w		; EE 0A FE
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	inc $0E00.w,X		; FE 00 0E
	rti		; 40

	inc $FEFA.w,X		; FE FA FE
	brk $0F.b		; 00 0F
	rti		; 40

	asl $F2.b		; 06 F2
	inc $1A00.w,X		; FE 00 1A
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc [$00.b]		; E7 00
	tas		; 1B
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $401C00.l		; EF 00 1C 40
	inc $12.b		; E6 12
	sbc ($00.b,X)		; E1 00
	ora $E640.w,X		; 1D 40 E6
	ora ($E9.b)		; 12 E9
	brk $1E.b		; 00 1E
	rti		; 40

	inc $12.b		; E6 12
	sbc ($00.b),Y		; F1 00
	ora $12E640.l,X		; 1F 40 E6 12
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc $00DAF9.l,X		; FF F9 DA 00
	and ($40.b,X)		; 21 40
	rol A		; 2A
	dec $00E6.w		; CE E6 00
	jsl $CE2A40.l		; 22 40 2A CE
	inc $2300.w		; EE 00 23
	rti		; 40

	asl $E3EA.w		; 0E EA E3
	brk $24.b		; 00 24
	rti		; 40

	ora $A901EF.l,X		; 1F EF 01 A9
	php		; 08
	brk $48.b		; 00 48
	sbc $08A9F1.l,X		; FF F1 A9 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	lda $0408.w,Y		; B9 08 04
	pha		; 48
	sed		; F8
	sed		; F8
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	php		; 08
	inx		; E8
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	beq   0.b		; F0 00
	sbc #$08.b		; E9 08
	asl A		; 0A
	pha		; 48
	brk $F0.b		; 00 F0
	sbc #$08.b		; E9 08
	tsb $1448.w		; 0C 48 14
	jmp.w [$08C9]		; DC C9 08
	asl $0C48.w		; 0E 48 0C
	cpx $D9.b		; E4 D9
	php		; 08
	jsr $0448.w		; 20 48 04
	cpx $08C9.w		; EC C9 08
	jsl $F4FC48.l		; 22 48 FC F4
	cmp $2408.w,Y		; D9 08 24
	pha		; 48
	pea $C9FC.w		; F4 FC C9
	php		; 08
	rol $48.b		; 26 48
	cpx $0C.b		; E4 0C
	cmp #$08.b		; C9 08
	plp		; 28
	pha		; 48
	cpx $0C.b		; E4 0C
	cmp $2A08.w,Y		; D9 08 2A
	pha		; 48
	cpx $F904.w		; EC 04 F9
	php		; 08
	bit $FC48.w		; 2C 48 FC
	pea $08F9.w		; F4 F9 08
	rol $E048.w		; 2E 48 E0
	clc		; 18
	cmp ($00.b,X)		; C1 00
	rti		; 40

	rti		; 40

	sbc ($07.b),Y		; F1 07
	lda ($00.b,X)		; A1 00
	eor ($40.b,X)		; 41 40
	sbc $A1FF.w,Y		; F9 FF A1
	brk $42.b		; 00 42
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda ($00.b,X)		; A1 00
	eor $40.b,S		; 43 40
	ora #$EF.b		; 09 EF
	lda ($00.b,X)		; A1 00
	mvp $10,$40		; 44 40 10
	inx		; E8
	sbc #$00.b		; E9 00
	eor $40.b		; 45 40
	ora $00B1E9.l		; 0F E9 B1 00
	lsr $40.b		; 46 40
	pea $D904.w		; F4 04 D9
	brk $47.b		; 00 47
	rti		; 40

	pea $E104.w		; F4 04 E1
	brk $48.b		; 00 48
	rti		; 40

	tsb $F9EC.w		; 0C EC F9
	brk $49.b		; 00 49
	rti		; 40

	tsb $01EC.w		; 0C EC 01
	brk $4A.b		; 00 4A
	rti		; 40

	pea $0904.w		; F4 04 09
	brk $4B.b		; 00 4B
	rti		; 40

	jsr ($09FC.w,X)		; FC FC 09
	brk $4C.b		; 00 4C
	rti		; 40

	tsb $F4.b		; 04 F4
	ora #$00.b		; 09 00
	eor $0C40.w		; 4D 40 0C
	cpx $0009.w		; EC 09 00
	lsr $1940.w		; 4E 40 19
	asl $EA.b		; 06 EA
	bcs   8.b		; B0 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	bcs   8.b		; B0 08
	cop $48.b		; 02 48
	inc $0A.b		; E6 0A
	clv		; B8
	php		; 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	cpy #$08.b		; C0 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	cpy #$08.b		; C0 08
	php		; 08
	pha		; 48
	sbc $08A0F1.l,X		; FF F1 A0 08
	asl A		; 0A
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	beq   8.b		; F0 08
	tsb $ED48.w		; 0C 48 ED
	ora $D8.b,S		; 03 D8
	php		; 08
	asl $FD48.w		; 0E 48 FD
	sbc ($D8.b,S),Y		; F3 D8
	php		; 08
	jsr $F648.w		; 20 48 F6
	cop $D0.b		; 02 D0
	brk $22.b		; 00 22
	rti		; 40

	inc $D0FA.w,X		; FE FA D0
	brk $23.b		; 00 23
	rti		; 40

	asl $F2.b		; 06 F2
	bne   0.b		; D0 00
	bit $40.b		; 24 40
	asl $D0EA.w		; 0E EA D0
	brk $25.b		; 00 25
	rti		; 40

	asl $F2.b		; 06 F2
	sbc #$00.b		; E9 00
	rol $40.b		; 26 40
	asl $F2.b		; 06 F2
	sbc ($00.b),Y		; F1 00
	and [$40.b]		; 27 40
	sbc $00A809.l		; EF 09 A8 00
	plp		; 28
	rti		; 40

	sbc [$01.b],Y		; F7 01
	tay		; A8
	brk $29.b		; 00 29
	rti		; 40

	sbc [$01.b],Y		; F7 01
	brk $00.b		; 00 00
	rol A		; 2A
	rti		; 40

	inc $B00A.w		; EE 0A B0
	brk $2B.b		; 00 2B
	rti		; 40

	beq   8.b		; F0 08
	inx		; E8
	brk $2C.b		; 00 2C
	rti		; 40

	sed		; F8
	brk $E8.b		; 00 E8
	brk $2D.b		; 00 2D
	rti		; 40

	brk $F8.b		; 00 F8
	inx		; E8
	brk $2E.b		; 00 2E
	rti		; 40

	inc $12.b		; E6 12
	iny		; C8
	brk $2F.b		; 00 2F
	rti		; 40

	inc $C80A.w		; EE 0A C8
	brk $32.b		; 00 32
	rti		; 40

	inc $D00A.w		; EE 0A D0
	brk $33.b		; 00 33
	rti		; 40

	asl $EE.b,X		; 16 EE
	cop $B0.b		; 02 B0
	php		; 08
	brk $48.b		; 00 48
	inc $B0F2.w,X		; FE F2 B0
	php		; 08
	cop $48.b		; 02 48
	inc $0A.b		; E6 0A
	bne   8.b		; D0 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	bne   8.b		; D0 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	bne   8.b		; D0 08
	php		; 08
	pha		; 48
	inc $E002.w		; EE 02 E0
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $E0F2.w,X		; FE F2 E0
	php		; 08
	tsb $E948.w		; 0C 48 E9
	ora [$C0.b]		; 07 C0
	php		; 08
	asl $F948.w		; 0E 48 F9
	sbc [$C0.b],Y		; F7 C0
	php		; 08
	jsr $0948.w		; 20 48 09
	sbc [$C0.b]		; E7 C0
	php		; 08
	jsl $FCF448.l		; 22 48 F4 FC
	beq   8.b		; F0 08
	bit $48.b		; 24 48
	asl $B8EA.w		; 0E EA B8
	brk $26.b		; 00 26
	rti		; 40

	sbc [$01.b],Y		; F7 01
	brk $00.b		; 00 00
	and [$40.b]		; 27 40
	asl $F2.b		; 06 F2
	beq   0.b		; F0 00
	plp		; 28
	rti		; 40

	asl $F2.b		; 06 F2
	sed		; F8
	brk $29.b		; 00 29
	rti		; 40

	inc $A0FA.w,X		; FE FA A0
	brk $2A.b		; 00 2A
	rti		; 40

	sbc ($06.b)		; F2 06
	tay		; A8
	brk $2B.b		; 00 2B
	rti		; 40

	plx		; FA
	inc $00A8.w,X		; FE A8 00
	bit $0240.w		; 2C 40 02
	inc $A8.b,X		; F6 A8
	brk $2D.b		; 00 2D
	rti		; 40

	asl A		; 0A
	inc $00A8.w		; EE A8 00
	rol $EC40.w		; 2E 40 EC
	tsb $00F0.w		; 0C F0 00
	and $EA0E40.l		; 2F 40 0E EA
	bcs   0.b		; B0 00
	rol $40.b,X		; 36 40
	ora $DA16.w,Y		; 19 16 DA
	sbc ($88.b)		; F2 88
	brk $C8.b		; 00 C8
	inc $FA.b,X		; F6 FA
	dex		; CA
	dey		; 88
	cop $C8.b		; 02 C8
	inc $FA.b,X		; F6 FA
	phx		; DA
	dey		; 88
	tsb $C8.b		; 04 C8
	inc $FA.b,X		; F6 FA
	nop		; EA
	dey		; 88
	asl $C8.b		; 06 C8
	asl $EA.b		; 06 EA
	nop		; EA
	dey		; 88
	php		; 08
	iny		; C8
	dec $22.b,X		; D6 22
	sbc $80.b		; E5 80
	asl A		; 0A
	cpy #$D6.b		; C0 D6
	jsl $0B80DD.l		; 22 DD 80 0B
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	cpx $0C80.w		; EC 80 0C
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	cpx $80.b		; E4 80
	ora $EEC0.w		; 0D C0 EE
	asl A		; 0A
	jmp.w [$0E80]		; DC 80 0E
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	pei ($80.b)		; D4 80
	ora $0AEEC0.l		; 0F C0 EE 0A
	cpy $1A80.w		; CC 80 1A
	cpy #$26.b		; C0 26
	cmp ($FA.b)		; D2 FA
	bra  27.b		; 80 1B
	cpy #$DE.b		; C0 DE
	inc A		; 1A
	sbc ($80.b)		; F2 80
	trb $DEC0.w		; 1C C0 DE
	inc A		; 1A
	nop		; EA
	bra  29.b		; 80 1D
	cpy #$DE.b		; C0 DE
	inc A		; 1A
	sep #$80		; E2 80
	asl $DEC0.w,X		; 1E C0 DE
	inc A		; 1A
	phx		; DA
	bra  31.b		; 80 1F
	cpy #$E6.b		; C0 E6
	ora ($EE.b)		; 12 EE
	bra  32.b		; 80 20
	cpy #$E6.b		; C0 E6
	ora ($E6.b)		; 12 E6
	bra  33.b		; 80 21
	cpy #$E6.b		; C0 E6
	ora ($DE.b)		; 12 DE
	bra  34.b		; 80 22
	cpy #$E6.b		; C0 E6
	ora ($D6.b)		; 12 D6
	bra  35.b		; 80 23
	cpy #$D6.b		; C0 D6
	jsl $2480ED.l		; 22 ED 80 24
	cpy #$16.b		; C0 16
.ACCU 8
	sep #$EA		; E2 EA
	bra  37.b		; 80 25
	cpy #$06.b		; C0 06
	sbc ($E2.b)		; F2 E2
	bra  38.b		; 80 26
	cpy #$0E.b		; C0 0E
	nop		; EA
	sep #$80		; E2 80
	and [$C0.b]		; 27 C0
	ora [$00.b],Y		; 17 00
	beq -72.b		; F0 B8
	php		; 08
	brk $48.b		; 00 48
	tsb $E0E4.w		; 0C E4 E0
	php		; 08
	cop $48.b		; 02 48
	cpx $C804.w		; EC 04 C8
	php		; 08
	tsb $48.b		; 04 48
	cpx $D804.w		; EC 04 D8
	php		; 08
	asl $48.b		; 06 48
	jsr ($E0F4.w,X)		; FC F4 E0
	php		; 08
	php		; 08
	pha		; 48
	jsr ($C8F4.w,X)		; FC F4 C8
	php		; 08
	asl A		; 0A
	pha		; 48
	bpl -24.b		; 10 E8
	clv		; B8
	brk $0C.b		; 00 0C
	rti		; 40

	bpl -24.b		; 10 E8
	cpy #$00.b		; C0 00
	ora $1140.w		; 0D 40 11
	sbc [$FB.b]		; E7 FB
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	plx		; FA
	brk $0F.b		; 00 0F
	rti		; 40

	trb $E4.b		; 14 E4
	bne   0.b		; D0 00
	trb $0640.w		; 1C 40 06
	sbc ($F0.b)		; F2 F0
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F0EA.w		; 0E EA F0
	brk $1E.b		; 00 1E
	rti		; 40

	inc $02.b,X		; F6 02
	sbc ($00.b)		; F2 00
	ora $00F840.l,X		; 1F 40 F8 00
	cpy #$00.b		; C0 00
	jsr $FE40.w		; 20 40 FE
	plx		; FA
	beq   0.b		; F0 00
	and ($40.b,X)		; 21 40
	tsb $C8EC.w		; 0C EC C8
	brk $22.b		; 00 22
	rti		; 40

	tsb $D0EC.w		; 0C EC D0
	brk $23.b		; 00 23
	rti		; 40

	jsr ($D8FC.w,X)		; FC FC D8
	brk $24.b		; 00 24
	rti		; 40

	tsb $F4.b		; 04 F4
	cld		; D8
	brk $25.b		; 00 25
	rti		; 40

	tsb $D8EC.w		; 0C EC D8
	brk $26.b		; 00 26
	rti		; 40

	pea $E804.w		; F4 04 E8
	brk $27.b		; 00 27
	rti		; 40

	ora $F8EB.w		; 0D EB F8
	brk $28.b		; 00 28
	rti		; 40

	asl $EE02.w		; 0E 02 EE
	cmp $0008.w		; CD 08 00
	pha		; 48
	asl A		; 0A
	inc $F5.b		; E6 F5
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $E5.b		; E6 E5
	php		; 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $F5.b,X		; F6 F5
	php		; 08
	asl $48.b		; 06 48
	plx		; FA
	inc $E5.b,X		; F6 E5
	php		; 08
	php		; 08
	pha		; 48
	plx		; FA
	inc $00D5.w,X		; FE D5 00
	asl A		; 0A
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $0B00.w,X		; DD 00 0B
	rti		; 40

	plx		; FA
	inc $00DD.w,X		; FE DD 00
	tsb $0240.w		; 0C 40 02
	inc $DD.b,X		; F6 DD
	brk $0D.b		; 00 0D
	rti		; 40

	asl A		; 0A
	inc $00DD.w		; EE DD 00
	asl $F240.w		; 0E 40 F2
	asl $E5.b		; 06 E5
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $1A00.w		; ED 00 1A
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc $00.b,X		; F5 00
	tas		; 1B
	rti		; 40

	ora $D2EB.w		; 0D EB D2
	brk $1C.b		; 00 1C
	rti		; 40

	ora [$DE.b],Y		; 17 DE
	ora ($CB.b)		; 12 CB
	php		; 08
	brk $48.b		; 00 48
	inc $CB02.w		; EE 02 CB
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	plb		; AB
	php		; 08
	tsb $48.b		; 04 48
	sbc $0D.b,S		; E3 0D
	tyx		; BB
	php		; 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	tyx		; BB
	php		; 08
	php		; 08
	pha		; 48
	pea $E3FC.w		; F4 FC E3
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $D3FA.w,X		; FE FA D3
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	xce		; FB
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	plb		; AB
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,S),Y		; B3 00
	ora $00F840.l		; 0F 40 F8 00
	lda [$00.b]		; A7 00
	trb $F140.w		; 1C 40 F1
	ora [$F3.b]		; 07 F3
	brk $1D.b		; 00 1D
	rti		; 40

	cop $F6.b		; 02 F6
	lda $1E00.w,Y		; B9 00 1E
	rti		; 40

	cop $F6.b		; 02 F6
	cmp ($00.b,X)		; C1 00
	ora $15E340.l,X		; 1F 40 E3 15
	stp		; DB
	brk $20.b		; 00 20
	rti		; 40

	xba		; EB
	ora $00DB.w		; 0D DB 00
	and ($40.b,X)		; 21 40
	sbc ($05.b,S),Y		; F3 05
	stp		; DB
	brk $22.b		; 00 22
	rti		; 40

	xce		; FB
	sbc $00DB.w,X		; FD DB 00
	and $40.b,S		; 23 40
	sbc $15.b,S		; E3 15
	sbc $00.b,S		; E3 00
	bit $40.b		; 24 40
	inc $FB0A.w		; EE 0A FB
	brk $25.b		; 00 25
	rti		; 40

	inc $FBFA.w,X		; FE FA FB
	brk $26.b		; 00 26
	rti		; 40

	jsr ($F3FC.w,X)		; FC FC F3
	brk $27.b		; 00 27
	rti		; 40

	inc $CBFA.w,X		; FE FA CB
	brk $28.b		; 00 28
	rti		; 40

	bpl -16.b		; 10 F0
	brk $E5.b		; 00 E5
	php		; 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	sbc $08.b,X		; F5 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	sbc $08.b		; E5 08
	tsb $48.b		; 04 48
	brk $F0.b		; 00 F0
	sbc $08.b,X		; F5 08
	asl $48.b		; 06 48
	plx		; FA
	inc $CD.b,X		; F6 CD
	php		; 08
	php		; 08
	pha		; 48
	bpl -24.b		; 10 E8
	sbc $00.b		; E5 00
	asl A		; 0A
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $0B00.w		; ED 00 0B
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $00.b,X		; F5 00
	tsb $1040.w		; 0C 40 10
	inx		; E8
	sbc $0D00.w,X		; FD 00 0D
	rti		; 40

	ora $00D2E9.l		; 0F E9 D2 00
	asl $0A40.w		; 0E 40 0A
	inc $00CD.w		; EE CD 00
	ora $EE0A40.l		; 0F 40 0A EE
	cmp $00.b,X		; D5 00
	inc A		; 1A
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $1B00.w,X		; DD 00 1B
	rti		; 40

	xce		; FB
	sbc $00DD.w,X		; FD DD 00
	trb $0340.w		; 1C 40 03
	sbc $DD.b,X		; F5 DD
	brk $1D.b		; 00 1D
	rti		; 40

	phd		; 0B
	sbc $00DD.w		; ED DD 00
	asl $1840.w,X		; 1E 40 18
	sbc [$F9.b],Y		; F7 F9
	lda $0008.w		; AD 08 00
	pha		; 48
	plx		; FA
	inc $BD.b,X		; F6 BD
	php		; 08
	cop $48.b		; 02 48
	nop		; EA
	asl $BD.b		; 06 BD
	php		; 08
	tsb $48.b		; 04 48
	sep #$0E		; E2 0E
	cmp $0608.w		; CD 08 06
	pha		; 48
	sbc ($FE.b)		; F2 FE
	cmp $0808.w		; CD 08 08
	pha		; 48
	sbc $00E5F9.l,X		; FF F9 E5 00
	asl A		; 0A
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc $00.b		; E5 00
	phd		; 0B
	rti		; 40

	inc $FA0A.w		; EE 0A FA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00F409.l		; EF 09 F4 00
	ora $0740.w		; 0D 40 07
	sbc ($B5.b),Y		; F1 B5
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00E509.l		; EF 09 E5 00
	ora $01F740.l		; 0F 40 F7 01
	sbc $00.b		; E5 00
	inc A		; 1A
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	cmp $00.b		; C5 00
	tas		; 1B
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $1C00.w		; CD 00 1C
	rti		; 40

	cop $F6.b		; 02 F6
	cmp $00.b,X		; D5 00
	ora $EA40.w,X		; 1D 40 EA
	asl $00DD.w		; 0E DD 00
	asl $F240.w,X		; 1E 40 F2
	asl $DD.b		; 06 DD
	brk $1F.b		; 00 1F
	rti		; 40

	plx		; FA
	inc $00DD.w,X		; FE DD 00
	jsr $0240.w		; 20 40 02
	inc $DD.b,X		; F6 DD
	brk $21.b		; 00 21
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $2200.w		; ED 00 22
	rti		; 40

	tsb $F5EC.w		; 0C EC F5
	brk $23.b		; 00 23
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $2400.w		; ED 00 24
	rti		; 40

	ora $EDEB.w		; 0D EB ED
	brk $25.b		; 00 25
	rti		; 40

	ora $FAEB.w		; 0D EB FA
	brk $26.b		; 00 26
	rti		; 40

	ora $F0.b,X		; 15 F0
	brk $DF.b		; 00 DF
	php		; 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cmp $480208.l,X		; DF 08 02 48
	sbc $0D.b,S		; E3 0D
	cmp $480408.l		; CF 08 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $480608.l		; CF 08 06 48
	cpx $BF04.w		; EC 04 BF
	php		; 08
	php		; 08
	pha		; 48
	jsr ($BFF4.w,X)		; FC F4 BF
	php		; 08
	asl A		; 0A
	pha		; 48
	php		; 08
	beq -17.b		; F0 EF
	brk $0C.b		; 00 0C
	rti		; 40

	inc $F60A.w		; EE 0A F6
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $00FC09.l		; EF 09 FC 00
	asl $F940.w		; 0E 40 F9
	sbc $0F00AF.l,X		; FF AF 00 0F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	lda $401C00.l		; AF 00 1C 40
	sbc ($06.b)		; F2 06
	sbc $401D00.l		; EF 00 1D 40
	sbc [$01.b],Y		; F7 01
	lda [$00.b],Y		; B7 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00B7.w,Y		; F9 B7 00
	ora $F50340.l,X		; 1F 40 03 F5
	cmp $402000.l		; CF 00 20 40
	ora $F5.b,S		; 03 F5
	cmp [$00.b],Y		; D7 00
	and ($40.b,X)		; 21 40
	tsb $F4EC.w		; 0C EC F4
	brk $22.b		; 00 22
	rti		; 40

	cpx $14.b		; E4 14
	cmp [$00.b]		; C7 00
	and $40.b,S		; 23 40
	ora [$F1.b]		; 07 F1
	lda [$00.b],Y		; B7 00
	bit $40.b		; 24 40
	inx		; E8
	bpl -33.b		; 10 DF
	brk $25.b		; 00 25
	rti		; 40

	ora $FBEB.w		; 0D EB FB
	brk $26.b		; 00 26
	rti		; 40

	ora $F6.b,X		; 15 F6
	plx		; FA
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	lda ($08.b,S),Y		; B3 08
	tsb $48.b		; 04 48
	ora [$E9.b]		; 07 E9
	lda ($08.b,S),Y		; B3 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	lda $08.b,S		; A3 08
	php		; 08
	pha		; 48
	asl $D3EA.w		; 0E EA D3
	brk $0A.b		; 00 0A
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	tyx		; BB
	brk $0B.b		; 00 0B
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b,S),Y		; D3 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	cmp ($00.b,S),Y		; D3 00
	ora $1F40.w		; 0D 40 1F
	cmp $00B9.w,Y		; D9 B9 00
	asl $0640.w		; 0E 40 06
	sbc ($D3.b)		; F2 D3
	brk $0F.b		; 00 0F
	rti		; 40

	bpl -24.b		; 10 E8
	lda $00.b,S		; A3 00
	inc A		; 1A
	rti		; 40

	bpl -24.b		; 10 E8
	plb		; AB
	brk $1B.b		; 00 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	stp		; DB
	brk $1C.b		; 00 1C
	rti		; 40

	phd		; 0B
	sbc $00DB.w		; ED DB 00
	ora $0340.w,X		; 1D 40 03
	sbc $08E3.w		; ED E3 08
	asl $1648.w,X		; 1E 48 16
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	brk $20.b		; 00 20
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	brk $21.b		; 00 21
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,S),Y		; F3 00
	jsl $EA0E40.l		; 22 40 0E EA
	xce		; FB
	brk $23.b		; 00 23
	rti		; 40

	tsb $F3EC.w		; 0C EC F3
	brk $24.b		; 00 24
	rti		; 40

	bpl   6.b		; 10 06
	nop		; EA
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	lda ($08.b,S),Y		; B3 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	lda ($08.b,S),Y		; B3 08
	tsb $48.b		; 04 48
	asl $EA.b		; 06 EA
	cmp $08.b,S		; C3 08
	asl $48.b		; 06 48
	inc $FA.b,X		; F6 FA
	cmp $08.b,S		; C3 08
	php		; 08
	pha		; 48
	sbc $08A3F1.l,X		; FF F1 A3 08
	asl A		; 0A
	pha		; 48
	inc $D3FA.w,X		; FE FA D3
	brk $0C.b		; 00 0C
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b,S),Y		; B3 00
	ora $0F40.w		; 0D 40 0F
	sbc #$A3.b		; E9 A3
	brk $0E.b		; 00 0E
	rti		; 40

	ora $00ABE9.l		; 0F E9 AB 00
	ora $ED0340.l		; 0F 40 03 ED
	sbc $08.b,S		; E3 08
	trb $1648.w		; 1C 48 16
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	brk $1F.b		; 00 1F
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,S),Y		; F3 00
	jsr $0E40.w		; 20 40 0E
	nop		; EA
	xce		; FB
	brk $21.b		; 00 21
	rti		; 40

	tsb $F3EC.w		; 0C EC F3
	brk $22.b		; 00 22
	rti		; 40

	clc		; 18
	sbc ($FF.b),Y		; F1 FF
	lda ($08.b,S),Y		; B3 08
	brk $48.b		; 00 48
	ora ($EF.b,X)		; 01 EF
	lda ($08.b,S),Y		; B3 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	lda $08.b,S		; A3 08
	tsb $48.b		; 04 48
	ora $EB.b		; 05 EB
	wai		; CB
	php		; 08
	asl $48.b		; 06 48
	sbc ($06.b)		; F2 06
	plb		; AB
	brk $08.b		; 00 08
	rti		; 40

	plx		; FA
	inc $00AB.w,X		; FE AB 00
	ora #$40.b		; 09 40
	ora ($E7.b),Y		; 11 E7
	lda ($00.b,S),Y		; B3 00
	asl A		; 0A
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda $00.b,S		; A3 00
	phd		; 0B
	rti		; 40

	ora ($E6.b)		; 12 E6
	plb		; AB
	brk $0C.b		; 00 0C
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $00.b,S		; C3 00
	ora $FB40.w		; 0D 40 FB
	sbc $00C3.w,X		; FD C3 00
	asl $0340.w		; 0E 40 03
	sbc $C3.b,X		; F5 C3
	brk $0F.b		; 00 0F
	rti		; 40

	phd		; 0B
	sbc $00C3.w		; ED C3 00
	clc		; 18
	rti		; 40

	sbc $03.b,X		; F5 03
	wai		; CB
	brk $19.b		; 00 19
	rti		; 40

	sbc $CBFB.w,X		; FD FB CB
	brk $1A.b		; 00 1A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	tyx		; BB
	brk $1B.b		; 00 1B
	rti		; 40

	ora $F3.b		; 05 F3
	stp		; DB
	brk $1C.b		; 00 1C
	rti		; 40

	ora $DBEB.w		; 0D EB DB
	brk $1D.b		; 00 1D
	rti		; 40

	ora $ED.b,S		; 03 ED
	sbc $08.b,S		; E3 08
	asl $1648.w,X		; 1E 48 16
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	brk $20.b		; 00 20
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	brk $21.b		; 00 21
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,S),Y		; F3 00
	jsl $EA0E40.l		; 22 40 0E EA
	xce		; FB
	brk $23.b		; 00 23
	rti		; 40

	tsb $F3EC.w		; 0C EC F3
	brk $24.b		; 00 24
	rti		; 40

	ora ($0E.b,S),Y		; 13 0E
	sep #$C3		; E2 C3
	php		; 08
	brk $48.b		; 00 48
	inc $A3F2.w,X		; FE F2 A3
	php		; 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	lda ($08.b,S),Y		; B3 08
	tsb $48.b		; 04 48
	inc $C3F2.w,X		; FE F2 C3
	php		; 08
	asl $48.b		; 06 48
	ora $EB.b		; 05 EB
	cmp ($08.b,S),Y		; D3 08
	php		; 08
	pha		; 48
	asl $A3EA.w		; 0E EA A3
	brk $0A.b		; 00 0A
	rti		; 40

	asl $ABEA.w		; 0E EA AB
	brk $0B.b		; 00 0B
	rti		; 40

	inc $B3FA.w,X		; FE FA B3
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	tyx		; BB
	brk $0D.b		; 00 0D
	rti		; 40

	inc $BBFA.w,X		; FE FA BB
	brk $0E.b		; 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	cmp $00.b,S		; C3 00
	ora $02F640.l		; 0F 40 F6 02
	wai		; CB
	brk $1A.b		; 00 1A
	rti		; 40

	inc $C30A.w		; EE 0A C3
	brk $1B.b		; 00 1B
	rti		; 40

	ora $ED.b,S		; 03 ED
	sbc $08.b,S		; E3 08
	trb $1648.w		; 1C 48 16
.ACCU 8
.INDEX 8
	sep #$FB		; E2 FB
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	brk $1F.b		; 00 1F
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,S),Y		; F3 00
	jsr $0E40.w		; 20 40 0E
	nop		; EA
	xce		; FB
	brk $21.b		; 00 21
	rti		; 40

	tsb $F3EC.w		; 0C EC F3
	brk $22.b		; 00 22
	rti		; 40

	clc		; 18
	inc $FA.b,X		; F6 FA
	plb		; AB
	php		; 08
	brk $48.b		; 00 48
	ora $ED.b,S		; 03 ED
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	xba		; EB
	ora $BB.b		; 05 BB
	php		; 08
	tsb $48.b		; 04 48
	sbc $D303.w		; ED 03 D3
	php		; 08
	asl $48.b		; 06 48
	sbc $D3F3.w,X		; FD F3 D3
	php		; 08
	php		; 08
	pha		; 48
	inc $FB0A.w		; EE 0A FB
	brk $0A.b		; 00 0A
	rti		; 40

	asl $FBEA.w		; 0E EA FB
	brk $0B.b		; 00 0B
	rti		; 40

	asl $E2.b,X		; 16 E2
	xce		; FB
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b,S		; E3 00
	ora $0640.w		; 0D 40 06
	sbc ($AB.b)		; F2 AB
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b,S),Y		; B3 00
	ora $F00840.l		; 0F 40 08 F0
	xba		; EB
	brk $1A.b		; 00 1A
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b,S),Y		; F3 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00F3.w		; ED F3 00
	trb $FE40.w		; 1C 40 FE
	plx		; FA
	sbc $00.b,S		; E3 00
	ora $0640.w,X		; 1D 40 06
	sbc ($E3.b)		; F2 E3
	brk $1E.b		; 00 1E
	rti		; 40

	xce		; FB
	sbc $00BB.w,X		; FD BB 00
	ora $FDFB40.l,X		; 1F 40 FB FD
	cmp $00.b,S		; C3 00
	jsr $EB40.w		; 20 40 EB
	ora $00CB.w		; 0D CB 00
	and ($40.b,X)		; 21 40
	sbc ($05.b,S),Y		; F3 05
	wai		; CB
	brk $22.b		; 00 22
	rti		; 40

	xce		; FB
	sbc $00CB.w,X		; FD CB 00
	and $40.b,S		; 23 40
	ora $F5.b,S		; 03 F5
	wai		; CB
	brk $24.b		; 00 24
	rti		; 40

	inc $EB0A.w		; EE 0A EB
	brk $25.b		; 00 25
	rti		; 40

	inc $02.b,X		; F6 02
	xba		; EB
	brk $26.b		; 00 26
	rti		; 40

	inc A		; 1A
	inc $FA.b,X		; F6 FA
	plb		; AB
	php		; 08
	brk $48.b		; 00 48
	inx		; E8
	php		; 08
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp ($08.b,S),Y		; D3 08
	tsb $48.b		; 04 48
	ora ($EF.b,X)		; 01 EF
	tyx		; BB
	php		; 08
	asl $48.b		; 06 48
	sbc #$07.b		; E9 07
	tyx		; BB
	php		; 08
	php		; 08
	pha		; 48
	asl $F2.b		; 06 F2
	plb		; AB
	brk $0A.b		; 00 0A
	rti		; 40

	php		; 08
	beq -45.b		; F0 D3
	brk $0B.b		; 00 0B
	rti		; 40

	php		; 08
	beq -37.b		; F0 DB
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $E3.b		; 00 E3
	brk $0D.b		; 00 0D
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $00.b,S		; E3 00
	asl $0840.w		; 0E 40 08
	beq -29.b		; F0 E3
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($07.b),Y		; F1 07
	xba		; EB
	brk $1A.b		; 00 1A
	rti		; 40

	sbc $EBFF.w,Y		; F9 FF EB
	brk $1B.b		; 00 1B
	rti		; 40

	ora #$EF.b		; 09 EF
	xba		; EB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,S),Y		; F3 00
	ora $0640.w,X		; 1D 40 06
	sbc ($B3.b)		; F2 B3
	brk $1E.b		; 00 1E
	rti		; 40

	inc $FB0A.w		; EE 0A FB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $BBFF.w,Y		; F9 FF BB
	brk $20.b		; 00 20
	rti		; 40

	sbc $C3FF.w,Y		; F9 FF C3
	brk $21.b		; 00 21
	rti		; 40

	sbc #$0F.b		; E9 0F
	wai		; CB
	brk $22.b		; 00 22
	rti		; 40

	sbc ($07.b),Y		; F1 07
	wai		; CB
	brk $23.b		; 00 23
	rti		; 40

	sbc $CBFF.w,Y		; F9 FF CB
	brk $24.b		; 00 24
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	wai		; CB
	brk $25.b		; 00 25
	rti		; 40

	phd		; 0B
	sbc $00F3.w		; ED F3 00
	rol $40.b		; 26 40
	phd		; 0B
	sbc $00FB.w		; ED FB 00
	and [$40.b]		; 27 40
	ora ($E5.b,S),Y		; 13 E5
	xce		; FB
	brk $28.b		; 00 28
	rti		; 40

	clc		; 18
	inc $FA.b,X		; F6 FA
	sbc $08.b,S		; E3 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	plb		; AB
	php		; 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FE.b)		; F2 FE
	tyx		; BB
	php		; 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	cmp ($08.b,S),Y		; D3 08
	php		; 08
	pha		; 48
	nop		; EA
	asl $D3.b		; 06 D3
	php		; 08
	asl A		; 0A
	pha		; 48
	asl A		; 0A
	inc $00EB.w		; EE EB 00
	tsb $EE40.w		; 0C 40 EE
	asl A		; 0A
	xce		; FB
	brk $0D.b		; 00 0D
	rti		; 40

	asl $F2.b		; 06 F2
	plb		; AB
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b,S),Y		; B3 00
	ora $EE0A40.l		; 0F 40 0A EE
	sbc $00.b,S		; E3 00
	trb $EA40.w		; 1C 40 EA
	asl $00C3.w		; 0E C3 00
	ora $EA40.w,X		; 1D 40 EA
	asl $00CB.w		; 0E CB 00
	asl $F240.w,X		; 1E 40 F2
	asl $CB.b		; 06 CB
	brk $1F.b		; 00 1F
	rti		; 40

	plx		; FA
	inc $00CB.w,X		; FE CB 00
	jsr $0240.w		; 20 40 02
	inc $CB.b,X		; F6 CB
	brk $21.b		; 00 21
	rti		; 40

	plx		; FA
	inc $00D3.w,X		; FE D3 00
	jsl $FEFA40.l		; 22 40 FA FE
	stp		; DB
	brk $23.b		; 00 23
	rti		; 40

	cpx $F30C.w		; EC 0C F3
	brk $24.b		; 00 24
	rti		; 40

	pea $F304.w		; F4 04 F3
	brk $25.b		; 00 25
	rti		; 40

	tsb $F3EC.w		; 0C EC F3
	brk $26.b		; 00 26
	rti		; 40

	tsb $FBEC.w		; 0C EC FB
	brk $27.b		; 00 27
	rti		; 40

	trb $E4.b		; 14 E4
	xce		; FB
	brk $28.b		; 00 28
	rti		; 40

	sbc $13.b		; E5 13
	cmp $402900.l		; CF 00 29 40
	trb $FE.b		; 14 FE
	sbc ($B3.b)		; F2 B3
	php		; 08
	brk $48.b		; 00 48
	inc $BB02.w		; EE 02 BB
	php		; 08
	cop $48.b		; 02 48
	inc $CB02.w		; EE 02 CB
	php		; 08
	tsb $48.b		; 04 48
	inc $C3F2.w,X		; FE F2 C3
	php		; 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	stp		; DB
	php		; 08
	php		; 08
	pha		; 48
	beq   0.b		; F0 00
	stp		; DB
	php		; 08
	asl A		; 0A
	pha		; 48
	xce		; FB
	sbc $A3.b,X		; F5 A3
	php		; 08
	tsb $0E48.w		; 0C 48 0E
	nop		; EA
	dec $00.b		; C6 00
	asl $0740.w		; 0E 40 07
	sbc ($EB.b),Y		; F1 EB
	brk $0F.b		; 00 0F
	rti		; 40

	beq   8.b		; F0 08
	sbc ($00.b,S),Y		; F3 00
	asl $0840.w,X		; 1E 40 08
	beq -13.b		; F0 F3
	brk $1F.b		; 00 1F
	rti		; 40

	beq   8.b		; F0 08
	xce		; FB
	brk $20.b		; 00 20
	rti		; 40

	php		; 08
	beq  -5.b		; F0 FB
	brk $21.b		; 00 21
	rti		; 40

	bpl -24.b		; 10 E8
	xce		; FB
	brk $22.b		; 00 22
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b,S),Y		; B3 00
	and $40.b,S		; 23 40
	inc $D3FA.w,X		; FE FA D3
	brk $24.b		; 00 24
	rti		; 40

	beq   8.b		; F0 08
	xba		; EB
	brk $25.b		; 00 25
	rti		; 40

	sed		; F8
	brk $EB.b		; 00 EB
	cpy #$1A.b		; C0 1A
	bra  11.b		; 80 0B
	sbc $00AB.w		; ED AB 00
	rol $40.b		; 26 40
	asl $F2.b		; 06 F2
	cmp ($00.b,S),Y		; D3 00
	and [$40.b]		; 27 40
	ora ($F6.b)		; 12 F6
	plx		; FA
	xba		; EB
	php		; 08
	brk $48.b		; 00 48
	inc $A3F2.w,X		; FE F2 A3
	php		; 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	inc $CBF2.w,X		; FE F2 CB
	php		; 08
	asl $48.b		; 06 48
	inc $CB02.w		; EE 02 CB
	php		; 08
	php		; 08
	pha		; 48
	inc $BB02.w		; EE 02 BB
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $DBF7.w,Y		; F9 F7 DB
	php		; 08
	tsb $0648.w		; 0C 48 06
	sbc ($FB.b)		; F2 FB
	brk $0E.b		; 00 0E
	rti		; 40

	asl $ABEA.w		; 0E EA AB
	brk $0F.b		; 00 0F
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp $00.b,S		; C3 00
	asl $F640.w,X		; 1E 40 F6
	cop $AB.b		; 02 AB
	brk $1F.b		; 00 1F
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b,S),Y		; B3 00
	jsr $FE40.w		; 20 40 FE
	plx		; FA
	lda ($00.b,S),Y		; B3 00
	and ($40.b,X)		; 21 40
	asl $F2.b		; 06 F2
	lda ($00.b,S),Y		; B3 00
	jsl $FAFE40.l		; 22 40 FE FA
	tyx		; BB
	brk $23.b		; 00 23
	rti		; 40

	inc $C3FA.w,X		; FE FA C3
	brk $24.b		; 00 24
	rti		; 40

	sbc ($07.b),Y		; F1 07
	stp		; DB
	brk $25.b		; 00 25
	rti		; 40

	inc $FBFA.w,X		; FE FA FB
	brk $26.b		; 00 26
	rti		; 40

	tas		; 1B
	inc $B3F2.w,X		; FE F2 B3
	php		; 08
	brk $48.b		; 00 48
	inc $BB02.w		; EE 02 BB
	php		; 08
	cop $48.b		; 02 48
	inc $CB02.w		; EE 02 CB
	php		; 08
	tsb $48.b		; 04 48
	inc $C3F2.w,X		; FE F2 C3
	php		; 08
	asl $48.b		; 06 48
	sbc $A3F7.w,Y		; F9 F7 A3
	php		; 08
	php		; 08
	pha		; 48
	inc $02.b,X		; F6 02
	sbc $00.b,S		; E3 00
	asl A		; 0A
	rti		; 40

	inc $E3FA.w,X		; FE FA E3
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,S		; E3 00
	tsb $0640.w		; 0C 40 06
	sbc ($FB.b)		; F2 FB
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b,S),Y		; B3 00
	asl $FE40.w		; 0E 40 FE
	plx		; FA
	cmp ($00.b,S),Y		; D3 00
	ora $F20640.l		; 0F 40 06 F2
	cmp ($00.b,S),Y		; D3 00
	inc A		; 1A
	rti		; 40

	asl $C0EA.w		; 0E EA C0
	brk $1B.b		; 00 1B
	rti		; 40

	asl $E2.b,X		; 16 E2
	cpy #$00.b		; C0 00
	trb $0E40.w		; 1C 40 0E
	nop		; EA
	iny		; C8
	brk $1D.b		; 00 1D
	rti		; 40

	ora #$EF.b		; 09 EF
	plb		; AB
	brk $1E.b		; 00 1E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	stp		; DB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $DBFF.w,Y		; F9 FF DB
	brk $20.b		; 00 20
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	stp		; DB
	brk $21.b		; 00 21
	rti		; 40

	sbc ($07.b),Y		; F1 07
	xba		; EB
	brk $22.b		; 00 22
	rti		; 40

	sbc $EBFF.w,Y		; F9 FF EB
	brk $23.b		; 00 23
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,S),Y		; F3 00
	bit $40.b		; 24 40
	sbc ($07.b),Y		; F1 07
	xce		; FB
	brk $25.b		; 00 25
	rti		; 40

	sbc $FBFF.w,Y		; F9 FF FB
	brk $26.b		; 00 26
	rti		; 40

	asl $FBEA.w		; 0E EA FB
	brk $27.b		; 00 27
	rti		; 40

	ora $F5.b,S		; 03 F5
	xba		; EB
	brk $28.b		; 00 28
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b,S),Y		; F3 00
	and #$40.b		; 29 40
	ora ($FE.b)		; 12 FE
	sbc ($B3.b)		; F2 B3
	php		; 08
	brk $48.b		; 00 48
	inc $BB02.w		; EE 02 BB
	php		; 08
	cop $48.b		; 02 48
	inc $CB02.w		; EE 02 CB
	php		; 08
	tsb $48.b		; 04 48
	inc $C3F2.w,X		; FE F2 C3
	php		; 08
	asl $48.b		; 06 48
	sbc $DBF7.w,Y		; F9 F7 DB
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $A3.b,X		; F5 A3
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $D3FA.w,X		; FE FA D3
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	cmp ($00.b,S),Y		; D3 00
	ora $F740.w		; 0D 40 F7
	ora ($EB.b,X)		; 01 EB
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00EBF9.l,X		; FF F9 EB 00
	ora $01F740.l		; 0F 40 F7 01
	sbc ($00.b,S),Y		; F3 00
	trb $F740.w		; 1C 40 F7
	ora ($FB.b,X)		; 01 FB
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00FBF9.l,X		; FF F9 FB 00
	asl $F140.w,X		; 1E 40 F1
	ora [$DB.b]		; 07 DB
	brk $1F.b		; 00 1F
	rti		; 40

	asl $C3EA.w		; 0E EA C3
	brk $20.b		; 00 20
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cpy #$00.b		; C0 00
	and ($40.b,X)		; 21 40
	phd		; 0B
	sbc $00AB.w		; ED AB 00
	jsl $02F640.l		; 22 40 F6 02
	lda ($00.b,S),Y		; B3 00
	and $40.b,S		; 23 40
	ora $F3.b,X		; 15 F3
	sbc $08A9.w,X		; FD A9 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	lda $0208.w,Y		; B9 08 02
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $0608.w,Y		; D9 08 06
	pha		; 48
	sbc $FB.b,X		; F5 FB
	sbc #$08.b		; E9 08
	php		; 08
	pha		; 48
	xba		; EB
	ora $00DC.w		; 0D DC 00
	asl A		; 0A
	rti		; 40

	xce		; FB
	sbc $00F9.w,X		; FD F9 00
	phd		; 0B
	rti		; 40

	sbc $00FF.w,Y		; F9 FF 00
	brk $0C.b		; 00 0C
	rti		; 40

	xba		; EB
	ora $00BC.w		; 0D BC 00
	ora $EB40.w		; 0D 40 EB
	ora $00C4.w		; 0D C4 00
	asl $EB40.w		; 0E 40 EB
	ora $00CC.w		; 0D CC 00
	ora $F50340.l		; 0F 40 03 F5
	lda #$00.b		; A9 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b),Y		; B1 00
	tas		; 1B
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda $1C00.w,Y		; B9 00 1C
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	ora $0340.w,X		; 1D 40 03
	sbc $C9.b,X		; F5 C9
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b),Y		; D1 00
	ora $F50340.l,X		; 1F 40 03 F5
	cmp $2000.w,Y		; D9 00 20
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	and ($40.b,X)		; 21 40
	sbc $03.b,X		; F5 03
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	xba		; EB
	ora $00D4.w		; 0D D4 00
	and $40.b,S		; 23 40
	trb $FA.b		; 14 FA
	inc $AA.b,X		; F6 AA
	php		; 08
	brk $48.b		; 00 48
	sbc $0D.b,S		; E3 0D
	tsx		; BA
	php		; 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sbc $0D.b,S		; E3 0D
	cmp ($08.b)		; D2 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp ($08.b)		; D2 08
	php		; 08
	pha		; 48
	sbc ($07.b),Y		; F1 07
	dex		; CA
	brk $0A.b		; 00 0A
	rti		; 40

	sbc $CAFF.w,Y		; F9 FF CA
	brk $0B.b		; 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	dex		; CA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc ($06.b)		; F2 06
	sbc ($00.b,X)		; E1 00
	ora $F240.w		; 0D 40 F2
	asl $B2.b		; 06 B2
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F2.b		; 06 F2
	plb		; AB
	brk $0F.b		; 00 0F
	rti		; 40

	phd		; 0B
	sbc $00D7.w		; ED D7 00
	inc A		; 1A
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b,S),Y		; B3 00
	tas		; 1B
	rti		; 40

	sbc $E1FF.w,Y		; F9 FF E1
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($17.b,X)		; E1 17
	dex		; CA
	brk $1D.b		; 00 1D
	rti		; 40

	sbc #$0F.b		; E9 0F
	dex		; CA
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	tsx		; BA
	brk $1F.b		; 00 1F
	rti		; 40

	ora $F5.b,S		; 03 F5
	rep #$00		; C2 00
	jsr $0340.w		; 20 40 03
	sbc $D2.b,X		; F5 D2
	brk $21.b		; 00 21
	rti		; 40

	ora $F5.b,S		; 03 F5
	phx		; DA
	brk $22.b		; 00 22
	rti		; 40

	trb $F6.b		; 14 F6
	plx		; FA
	bne   8.b		; D0 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	cpy #$08.b		; C0 08
	cop $48.b		; 02 48
	inc $0A.b		; E6 0A
	cpy #$08.b		; C0 08
	tsb $48.b		; 04 48
	sbc #$07.b		; E9 07
	bcs   8.b		; B0 08
	asl $48.b		; 06 48
	sbc $B0F7.w,Y		; F9 F7 B0
	php		; 08
	php		; 08
	pha		; 48
	ora #$E7.b		; 09 E7
	bcs   8.b		; B0 08
	asl A		; 0A
	pha		; 48
	inc $D00A.w		; EE 0A D0
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00ED09.l		; EF 09 ED 00
	ora $EF40.w		; 0D 40 EF
	ora #$F5.b		; 09 F5
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plb		; AB
	brk $0F.b		; 00 0F
	rti		; 40

	sbc ($17.b,X)		; E1 17
	dec $1C00.w		; CE 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx #$00.b		; E0 00
	ora $F940.w,X		; 1D 40 F9
	sbc $1E00E0.l,X		; FF E0 00 1E
	rti		; 40

	asl $C0EA.w		; 0E EA C0
	brk $1F.b		; 00 1F
	rti		; 40

	asl $F2.b		; 06 F2
	cpy #$00.b		; C0 00
	jsr $E640.w		; 20 40 E6
	ora ($D0.b)		; 12 D0
	brk $21.b		; 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	tax		; AA
	brk $22.b		; 00 22
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	dex		; CA
	brk $23.b		; 00 23
	rti		; 40

	tsb $C6EC.w		; 0C EC C6
	brk $24.b		; 00 24
	rti		; 40

	pea $E804.w		; F4 04 E8
	brk $25.b		; 00 25
	rti		; 40

	ora ($0B.b),Y		; 11 0B
	sbc $C8.b		; E5 C8
	php		; 08
	brk $48.b		; 00 48
	xba		; EB
	ora $D0.b		; 05 D0
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $D0.b,X		; F5 D0
	php		; 08
	tsb $48.b		; 04 48
	pea $B8FC.w		; F4 FC B8
	php		; 08
	asl $48.b		; 06 48
	tsb $EC.b		; 04 EC
	clv		; B8
	php		; 08
	php		; 08
	pha		; 48
	cpx $0C.b		; E4 0C
	tsx		; BA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	iny		; C8
	brk $0C.b		; 00 0C
	rti		; 40

	xce		; FB
	sbc $00C8.w,X		; FD C8 00
	ora $0340.w		; 0D 40 03
	sbc $C8.b,X		; F5 C8
	brk $0E.b		; 00 0E
	rti		; 40

	jmp.w [$BC1C]		; DC 1C BC
	brk $0F.b		; 00 0F
	rti		; 40

	cpy $C42C.w		; CC 2C C4
	brk $1C.b		; 00 1C
	rti		; 40

	pei ($24.b)		; D4 24
	cpy $00.b		; C4 00
	ora $DC40.w,X		; 1D 40 DC
	trb $00C4.w		; 1C C4 00
	asl $1440.w,X		; 1E 40 14
	cpx $C0.b		; E4 C0
	brk $1F.b		; 00 1F
	rti		; 40

	ora [$F1.b]		; 07 F1
	bcs   0.b		; B0 00
	jsr $1840.w		; 20 40 18
	cpx #$C3.b		; E0 C3
	brk $21.b		; 00 21
	rti		; 40

	clc		; 18
	cpx #$CB.b		; E0 CB
	brk $22.b		; 00 22
	rti		; 40

	asl $00.b,X		; 16 00
	beq -77.b		; F0 B3
	php		; 08
	brk $48.b		; 00 48
	cld		; D8
	clc		; 18
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	cmp ($08.b,S),Y		; D3 08
	tsb $48.b		; 04 48
	sed		; F8
	sed		; F8
	cmp ($08.b,S),Y		; D3 08
	asl $48.b		; 06 48
	sbc $0D.b,S		; E3 0D
	cmp $08.b,S		; C3 08
	php		; 08
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp $08.b,S		; C3 08
	asl A		; 0A
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp $08.b,S		; C3 08
	tsb $F848.w		; 0C 48 F8
	brk $BB.b		; 00 BB
	brk $0E.b		; 00 0E
	rti		; 40

	bne  40.b		; D0 28
	stp		; DB
	brk $0F.b		; 00 0F
	rti		; 40

	php		; 08
	beq -45.b		; F0 D3
	brk $1E.b		; 00 1E
	rti		; 40

	php		; 08
	beq -37.b		; F0 DB
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	plb		; AB
	brk $20.b		; 00 20
	rti		; 40

	ora #$EF.b		; 09 EF
	plb		; AB
	brk $21.b		; 00 21
	rti		; 40

	cop $F6.b		; 02 F6
	sta ($00.b,S),Y		; 93 00
	jsl $F60240.l		; 22 40 02 F6
	txy		; 9B
	brk $23.b		; 00 23
	rti		; 40

	stp		; DB
	ora $00CB.w,X		; 1D CB 00
	bit $40.b		; 24 40
	beq   8.b		; F0 08
	sbc $00.b,S		; E3 00
	and $40.b		; 25 40
	sbc $00E3F9.l,X		; FF F9 E3 00
	rol $40.b		; 26 40
	ora [$F1.b]		; 07 F1
	sbc $00.b,S		; E3 00
	and [$40.b]		; 27 40
	ora $F5.b,S		; 03 F5
	sta $2800.w		; 8D 00 28
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	iny		; C8
	brk $29.b		; 00 29
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $00.b,S		; A3 00
	rol A		; 2A
	rti		; 40

	ora $DA16.w,Y		; 19 16 DA
	bcs   8.b		; B0 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	cld		; D8
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	iny		; C8
	php		; 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	clv		; B8
	php		; 08
	asl $48.b		; 06 48
	asl $EA.b		; 06 EA
	clv		; B8
	php		; 08
	php		; 08
	pha		; 48
	dec $22.b,X		; D6 22
	cmp $00.b		; C5 00
	asl A		; 0A
	rti		; 40

	dec $22.b,X		; D6 22
	cmp $0B00.w		; CD 00 0B
	rti		; 40

	inc $BE0A.w		; EE 0A BE
	brk $0C.b		; 00 0C
	rti		; 40

	inc $C60A.w		; EE 0A C6
	brk $0D.b		; 00 0D
	rti		; 40

	inc $CE0A.w		; EE 0A CE
	brk $0E.b		; 00 0E
	rti		; 40

	inc $D60A.w		; EE 0A D6
	brk $0F.b		; 00 0F
	rti		; 40

	inc $DE0A.w		; EE 0A DE
	brk $1A.b		; 00 1A
	rti		; 40

	rol $D2.b		; 26 D2
	bcs   0.b		; B0 00
	tas		; 1B
	rti		; 40

	dec $B81A.w,X		; DE 1A B8
	brk $1C.b		; 00 1C
	rti		; 40

	dec $C01A.w,X		; DE 1A C0
	brk $1D.b		; 00 1D
	rti		; 40

	dec $C81A.w,X		; DE 1A C8
	brk $1E.b		; 00 1E
	rti		; 40

	dec $D01A.w,X		; DE 1A D0
	brk $1F.b		; 00 1F
	rti		; 40

	inc $12.b		; E6 12
	ldy $2000.w,X		; BC 00 20
	rti		; 40

	inc $12.b		; E6 12
	cpy $00.b		; C4 00
	and ($40.b,X)		; 21 40
	inc $12.b		; E6 12
	cpy $2200.w		; CC 00 22
	rti		; 40

	inc $12.b		; E6 12
	pei ($00.b)		; D4 00
	and $40.b,S		; 23 40
	dec $22.b,X		; D6 22
	lda $2400.w,X		; BD 00 24
	rti		; 40

	asl $E2.b,X		; 16 E2
	cpy #$00.b		; C0 00
	and $40.b		; 25 40
	asl $F2.b		; 06 F2
	iny		; C8
	brk $26.b		; 00 26
	rti		; 40

	asl $C8EA.w		; 0E EA C8
	brk $27.b		; 00 27
	rti		; 40

	tas		; 1B
	sed		; F8
	sed		; F8
	dex		; CA
	php		; 08
	brk $48.b		; 00 48
	php		; 08
	inx		; E8
	dex		; CA
	php		; 08
	cop $48.b		; 02 48
	xce		; FB
	sbc $BA.b,X		; F5 BA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	tax		; AA
	php		; 08
	asl $48.b		; 06 48
	xba		; EB
	ora $BA.b		; 05 BA
	php		; 08
	php		; 08
	pha		; 48
	cmp ($1D.b,S),Y		; D3 1D
	ldx #$08.b		; A2 08
	asl A		; 0A
	pha		; 48
	sbc $0D.b,S		; E3 0D
	tax		; AA
	php		; 08
	tsb $E048.w		; 0C 48 E0
	clc		; 18
	dex		; CA
	brk $0E.b		; 00 0E
	rti		; 40

	inx		; E8
	bpl -54.b		; 10 CA
	brk $0F.b		; 00 0F
	rti		; 40

	beq   8.b		; F0 08
	dex		; CA
	brk $1E.b		; 00 1E
	rti		; 40

	asl $B3EA.w		; 0E EA B3
	brk $1F.b		; 00 1F
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $00.b,S		; E3 00
	jsr $1240.w		; 20 40 12
	inc $DE.b		; E6 DE
	brk $21.b		; 00 21
	rti		; 40

	inc A		; 1A
	dec $00E9.w,X		; DE E9 00
	jsl $2DCB40.l		; 22 40 CB 2D
	lda $00.b,S		; A3 00
	and $40.b,S		; 23 40
	wai		; CB
	and $00AB.w		; 2D AB 00
	bit $40.b		; 24 40
	phd		; 0B
	sbc $00C2.w		; ED C2 00
	and $40.b		; 25 40
	ora $00EFD9.l,X		; 1F D9 EF 00
	rol $40.b		; 26 40
	cmp [$21.b],Y		; D7 21
	txs		; 9A
	brk $27.b		; 00 27
	rti		; 40

	ora [$F1.b]		; 07 F1
	phx		; DA
	brk $28.b		; 00 28
	rti		; 40

	ora $00DAE9.l		; 0F E9 DA 00
	and #$40.b		; 29 40
	php		; 08
	beq -72.b		; F0 B8
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $15.b,S		; E3 15
	ldx #$00.b		; A2 00
	pld		; 2B
	rti		; 40

	cmp ($25.b,S),Y		; D3 25
	lda ($00.b)		; B2 00
	bit $DB40.w		; 2C 40 DB
	ora $00B2.w,X		; 1D B2 00
	and $DB40.w		; 2D 40 DB
	ora $00BA.w,X		; 1D BA 00
	rol $E340.w		; 2E 40 E3
	ora $BA.b,X		; 15 BA
	brk $2F.b		; 00 2F
	rti		; 40

	inc A		; 1A
	inc $C3F2.w,X		; FE F2 C3
	php		; 08
	brk $48.b		; 00 48
	inc $C302.w		; EE 02 C3
	php		; 08
	cop $48.b		; 02 48
	sbc [$F9.b],Y		; F7 F9
	sbc $08.b,S		; E3 08
	tsb $48.b		; 04 48
	cld		; D8
	clc		; 18
	plb		; AB
	php		; 08
	asl $48.b		; 06 48
	inx		; E8
	php		; 08
	plb		; AB
	php		; 08
	php		; 08
	pha		; 48
	sed		; F8
	sed		; F8
	plb		; AB
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $BBFA.w,X		; FE FA BB
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	lda $00.b,S		; A3 00
	ora $F840.w		; 0D 40 F8
	brk $D3.b		; 00 D3
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,S),Y		; D3 00
	ora $F00840.l		; 0F 40 08 F0
	cmp ($00.b,S),Y		; D3 00
	trb $FE40.w		; 1C 40 FE
	plx		; FA
	lda $00.b,S		; A3 00
	ora $EE40.w,X		; 1D 40 EE
	asl A		; 0A
	tyx		; BB
	brk $1E.b		; 00 1E
	rti		; 40

	inc $02.b,X		; F6 02
	tyx		; BB
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc ($00.b,S),Y		; F3 00
	jsr $0140.w		; 20 40 01
	sbc [$FB.b],Y		; F7 FB
	brk $21.b		; 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	xce		; FB
	brk $22.b		; 00 22
	rti		; 40

	cmp $B81F.w,Y		; D9 1F B8
	brk $23.b		; 00 23
	rti		; 40

	xce		; FB
	sbc $00DB.w,X		; FD DB 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	stp		; DB
	brk $25.b		; 00 25
	rti		; 40

	phd		; 0B
	sbc $00D7.w		; ED D7 00
	rol $40.b		; 26 40
	jmp.w [$A31C]		; DC 1C A3
	brk $27.b		; 00 27
	rti		; 40

	cpx $14.b		; E4 14
	lda $00.b,S		; A3 00
	plp		; 28
	rti		; 40

	cpx $A30C.w		; EC 0C A3
	brk $29.b		; 00 29
	rti		; 40

	cmp $23.b,X		; D5 23
	ldy $2A00.w		; AC 00 2A
	rti		; 40

	cmp $23.b,X		; D5 23
	ldy $00.b,X		; B4 00
	pld		; 2B
	rti		; 40

	ora $04.b,X		; 15 04
	cpx $08AE.w		; EC AE 08
	brk $48.b		; 00 48
	pea $AEFC.w		; F4 FC AE
	php		; 08
	cop $48.b		; 02 48
	jsr ($BEF4.w,X)		; FC F4 BE
	php		; 08
	tsb $48.b		; 04 48
	jsr ($CEF4.w,X)		; FC F4 CE
	php		; 08
	asl $48.b		; 06 48
	cpx $CE04.w		; EC 04 CE
	php		; 08
	php		; 08
	pha		; 48
	cpx $BE04.w		; EC 04 BE
	php		; 08
	asl A		; 0A
	pha		; 48
	ora ($F7.b,X)		; 01 F7
	lda [$00.b]		; A7 00
	tsb $0940.w		; 0C 40 09
	sbc $0D00A7.l		; EF A7 00 0D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $0E.b		; 00 0E
	rti		; 40

	plx		; FA
	inc $00DE.w,X		; FE DE 00
	ora $ED0B40.l		; 0F 40 0B ED
	sbc $00.b,X		; F5 00
	trb $F340.w		; 1C 40 F3
	ora $F2.b		; 05 F2
	brk $1D.b		; 00 1D
	rti		; 40

	tsb $FBEC.w		; 0C EC FB
	brk $1E.b		; 00 1E
	rti		; 40

	inc $02.b,X		; F6 02
	nop		; EA
	brk $1F.b		; 00 1F
	rti		; 40

	php		; 08
	beq -27.b		; F0 E5
	brk $20.b		; 00 20
	rti		; 40

	beq   8.b		; F0 08
	sbc $2100.w,Y		; F9 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc $2200.w		; ED 00 22
	rti		; 40

	sbc $E6FF.w,Y		; F9 FF E6
	brk $23.b		; 00 23
	rti		; 40

	sbc $A7FF.w,Y		; F9 FF A7
	brk $24.b		; 00 24
	rti		; 40

	cpx $B60C.w		; EC 0C B6
	brk $25.b		; 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	dec $2600.w,X		; DE 00 26
	rti		; 40

	tas		; 1B
	sbc $08A9F1.l,X		; FF F1 A9 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	cmp #$08.b		; C9 08
	cop $48.b		; 02 48
	brk $F0.b		; 00 F0
	cmp #$08.b		; C9 08
	tsb $48.b		; 04 48
	sbc $FB.b,X		; F5 FB
	lda $0608.w,Y		; B9 08 06
	pha		; 48
	ora $EB.b		; 05 EB
	lda $0808.w,Y		; B9 08 08
	pha		; 48
	php		; 08
	beq -91.b		; F0 A5
	brk $0A.b		; 00 0A
	rti		; 40

	bpl -24.b		; 10 E8
	sbc #$00.b		; E9 00
	phd		; 0B
	rti		; 40

	sbc $00E1F9.l,X		; FF F9 E1 00
	tsb $F640.w		; 0C 40 F6
	cop $F7.b		; 02 F7
	brk $0D.b		; 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	cmp #$00.b		; C9 00
	asl $1040.w		; 0E 40 10
	inx		; E8
	cmp ($00.b),Y		; D1 00
	ora $00F840.l		; 0F 40 F8 00
	cmp $1A00.w,Y		; D9 00 1A
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $1B00.w,Y		; D9 00 1B
	rti		; 40

	php		; 08
	beq -39.b		; F0 D9
	brk $1C.b		; 00 1C
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $1D00.w,Y		; D9 00 1D
	rti		; 40

	sbc $EFFF.w,Y		; F9 FF EF
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc ($00.b,X)		; E1 00
	ora $FCFC40.l,X		; 1F 40 FC FC
	sbc [$00.b]		; E7 00
	jsr $0C40.w		; 20 40 0C
	cpx $00F9.w		; EC F9 00
	and ($40.b,X)		; 21 40
	trb $E4.b		; 14 E4
	sbc $2200.w,Y		; F9 00 22
	rti		; 40

	sbc $03.b,X		; F5 03
	jsr ($2300.w,X)		; FC 00 23
	rti		; 40

	and $D3.b		; 25 D3
	ldx $00.b,Y		; B6 00
	bit $40.b		; 24 40
	ora $E3.b,X		; 15 E3
	lda $2500.w,Y		; B9 00 25
	rti		; 40

	ora $B9DB.w,X		; 1D DB B9
	brk $26.b		; 00 26
	rti		; 40

	ora $F1EB.w		; 0D EB F1
	brk $27.b		; 00 27
	rti		; 40

	ora $00A9E9.l		; 0F E9 A9 00
	plp		; 28
	rti		; 40

	ora $00B1E9.l		; 0F E9 B1 00
	and #$40.b		; 29 40
	asl $02EE.w,X		; 1E EE 02
	inx		; E8
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	phx		; DA
	php		; 08
	cop $48.b		; 02 48
	sbc ($FD.b,S),Y		; F3 FD
	tax		; AA
	php		; 08
	tsb $48.b		; 04 48
	xba		; EB
	ora $CA.b		; 05 CA
	php		; 08
	asl $48.b		; 06 48
	xce		; FB
	sbc $CA.b,X		; F5 CA
	php		; 08
	php		; 08
	pha		; 48
	sbc $0B.b		; E5 0B
	tsx		; BA
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $FB.b,X		; F5 FB
	tsx		; BA
	php		; 08
	tsb $EF48.w		; 0C 48 EF
	ora #$F8.b		; 09 F8
	brk $0E.b		; 00 0E
	rti		; 40

	cmp $00E919.l,X		; DF 19 E9 00
	ora $F10740.l		; 0F 40 07 F1
	nop		; EA
	brk $1E.b		; 00 1E
	rti		; 40

	bpl -24.b		; 10 E8
	plx		; FA
	brk $1F.b		; 00 1F
	rti		; 40

	cmp ($27.b),Y		; D1 27
	cmp $00.b,X		; D5 00
	ora $1FD940.l		; 0F 40 D9 1F
	dec $00.b		; C6 00
	ora $0FE940.l		; 0F 40 E9 0F
	inc $00.b		; E6 00
	ora $26D240.l		; 0F 40 D2 26
	dec $0F00.w,X		; DE 00 0F
	rti		; 40

	asl A		; 0A
	inc $00EE.w		; EE EE 00
	jsr $1240.w		; 20 40 12
	inc $C7.b		; E6 C7
	brk $21.b		; 00 21
	rti		; 40

	dec $22.b,X		; D6 22
	sbc $00.b		; E5 00
	jsl $0AEE40.l		; 22 40 EE 0A
	phx		; DA
	brk $23.b		; 00 23
	rti		; 40

	dec $BF1A.w,X		; DE 1A BF
	brk $24.b		; 00 24
	rti		; 40

	ora $F5.b,S		; 03 F5
	tax		; AA
	brk $25.b		; 00 25
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b)		; B2 00
	rol $40.b		; 26 40
	tsb $F6EC.w		; 0C EC F6
	brk $27.b		; 00 27
	rti		; 40

	ora $C3EB.w		; 0D EB C3
	brk $28.b		; 00 28
	rti		; 40

	cmp $23.b,X		; D5 23
	cmp $0F00.w		; CD 00 0F
	rti		; 40

	sbc $FD0B.w		; ED 0B FD
	brk $29.b		; 00 29
	rti		; 40

	asl $F2.b		; 06 F2
	phx		; DA
	brk $2A.b		; 00 2A
	rti		; 40

	asl $F2.b		; 06 F2
	sep #$00		; E2 00
	pld		; 2B
	rti		; 40

	ora $F3.b		; 05 F3
	tsx		; BA
	brk $2C.b		; 00 2C
	rti		; 40

	ora $F3.b		; 05 F3
	rep #$00		; C2 00
	and $2240.w		; 2D 40 22
	inc $0A.b		; E6 0A
	rep #$08		; C2 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	sed		; F8
	sed		; F8
	cmp ($08.b,S),Y		; D3 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	plb		; AB
	php		; 08
	asl $48.b		; 06 48
	inc $FC0A.w		; EE 0A FC
	brk $08.b		; 00 08
	rti		; 40

	inc $02.b,X		; F6 02
	inx		; E8
	brk $09.b		; 00 09
	rti		; 40

	inc $A90A.w		; EE 0A A9
	brk $0A.b		; 00 0A
	rti		; 40

	inc $02.b,X		; F6 02
	wai		; CB
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $00BB09.l		; EF 09 BB 00
	tsb $CF40.w		; 0C 40 CF
	and #$D3.b		; 29 D3
	brk $0D.b		; 00 0D
	rti		; 40

	inc $CBFA.w,X		; FE FA CB
	brk $0E.b		; 00 0E
	rti		; 40

	bne  40.b		; D0 28
	cmp $00.b,S		; C3 00
	ora $0640.w		; 0D 40 06
	sbc ($CB.b)		; F2 CB
	brk $0F.b		; 00 0F
	rti		; 40

	inx		; E8
	bpl -84.b		; 10 AC
	brk $18.b		; 00 18
	rti		; 40

	inx		; E8
	bpl -46.b		; 10 D2
	brk $19.b		; 00 19
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b)		; D2 00
	inc A		; 1A
	rti		; 40

	beq   8.b		; F0 08
	phx		; DA
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $1C.b		; 00 1C
	rti		; 40

	sbc ($07.b),Y		; F1 07
	pea $1D00.w		; F4 00 1D
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc $1E00.w		; ED 00 1E
	rti		; 40

	cmp ($25.b,S),Y		; D3 25
	stp		; DB
	brk $0D.b		; 00 0D
	rti		; 40

	dec $22.b,X		; D6 22
	ldy $0D00.w,X		; BC 00 0D
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldy $1F00.w		; AC 00 1F
	rti		; 40

	ora $F5.b,S		; 03 F5
	ldy $00.b,X		; B4 00
	jsr $F340.w		; 20 40 F3
	ora $EC.b		; 05 EC
	brk $21.b		; 00 21
	rti		; 40

	sbc $15.b,S		; E3 15
	lda ($00.b),Y		; B1 00
	jsl $1CDC40.l		; 22 40 DC 1C
	ldx $00.b,Y		; B6 00
	ora $0D40.w		; 0D 40 0D
	xba		; EB
	sbc ($00.b,S),Y		; F3 00
	and $40.b,S		; 23 40
	ora $FBEB.w		; 0D EB FB
	brk $24.b		; 00 24
	rti		; 40

	ora $E3.b,X		; 15 E3
	xce		; FB
	brk $25.b		; 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	cmp $2600.w,X		; DD 00 26
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $00.b		; E5 00
	and [$40.b]		; 27 40
	ora $E5EB.w		; 0D EB E5
	brk $28.b		; 00 28
	rti		; 40

	cmp $CA2B.w		; CD 2B CA
	brk $22.b		; 00 22
	rti		; 40

	and ($0C.b,X)		; 21 0C
	cpx $AB.b		; E4 AB
	php		; 08
	brk $48.b		; 00 48
	jsr ($ABF4.w,X)		; FC F4 AB
	php		; 08
	cop $48.b		; 02 48
	cpx $0C.b		; E4 0C
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	tyx		; BB
	php		; 08
	asl $48.b		; 06 48
	pea $BBFC.w		; F4 FC BB
	php		; 08
	php		; 08
	pha		; 48
	jsr ($CBF4.w,X)		; FC F4 CB
	php		; 08
	asl A		; 0A
	pha		; 48
	cpx $CB04.w		; EC 04 CB
	php		; 08
	tsb $F048.w		; 0C 48 F0
	php		; 08
	sbc ($00.b)		; F2 00
	asl $2A40.w		; 0E 40 2A
	dec $00B4.w		; CE B4 00
	ora $06F240.l		; 0F 40 F2 06
	nop		; EA
	brk $1E.b		; 00 1E
	rti		; 40

	xce		; FB
	sbc $00A3.w,X		; FD A3 00
	ora $CD2B40.l,X		; 1F 40 2B CD
	ldy $2000.w		; AC 00 20
	rti		; 40

	ora $F5.b,S		; 03 F5
	sta $401F00.l,X		; 9F 00 1F 40
	phd		; 0B
	sbc $00F0.w		; ED F0 00
	and ($40.b,X)		; 21 40
	ora ($E5.b,S),Y		; 13 E5
	plx		; FA
	brk $22.b		; 00 22
	rti		; 40

	pea $E304.w		; F4 04 E3
	brk $23.b		; 00 23
	rti		; 40

	asl $E2.b,X		; 16 E2
	txy		; 9B
	brk $1F.b		; 00 1F
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,S		; E3 00
	bit $40.b		; 24 40
	inc $F90A.w		; EE 0A F9
	brk $25.b		; 00 25
	rti		; 40

	and [$D1.b]		; 27 D1
	lda $00.b		; A5 00
	ora $D91F40.l,X		; 1F 40 1F D9
	sta $401F00.l,X		; 9F 00 1F 40
	ora $00F7E9.l		; 0F E9 F7 00
	rol $40.b		; 26 40
	php		; 08
	beq -22.b		; F0 EA
	brk $27.b		; 00 27
	rti		; 40

	pea $B304.w		; F4 04 B3
	brk $28.b		; 00 28
	rti		; 40

	trb $E4.b		; 14 E4
	tyx		; BB
	brk $29.b		; 00 29
	rti		; 40

	cpx $14.b		; E4 14
	wai		; CB
	brk $2A.b		; 00 2A
	rti		; 40

	tsb $9CEC.w		; 0C EC 9C
	brk $1F.b		; 00 1F
	rti		; 40

	bit $D4.b		; 24 D4
	lda $2B00.w,Y		; B9 00 2B
	rti		; 40

	trb $BADC.w		; 1C DC BA
	brk $2C.b		; 00 2C
	rti		; 40

	sbc $03.b,X		; F5 03
	stp		; DB
	brk $2D.b		; 00 2D
	rti		; 40

	sbc $DBFB.w,X		; FD FB DB
	brk $2E.b		; 00 2E
	rti		; 40

	ora $F3.b		; 05 F3
	stp		; DB
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $FE0B.w		; ED 0B FE
	brk $30.b		; 00 30
	rti		; 40

	and ($ED.b,X)		; 21 ED
	ora $B8.b,S		; 03 B8
	php		; 08
	brk $48.b		; 00 48
	sbc $C803.w		; ED 03 C8
	php		; 08
	cop $48.b		; 02 48
	ora $B2E3.w		; 0D E3 B2
	php		; 08
	tsb $48.b		; 04 48
	sbc $BAF3.w,X		; FD F3 BA
	php		; 08
	asl $48.b		; 06 48
	sbc $AAF3.w,X		; FD F3 AA
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $CA.b,X		; F5 CA
	php		; 08
	asl A		; 0A
	pha		; 48
	and $D3.b		; 25 D3
	tsx		; BA
	brk $0C.b		; 00 0C
	rti		; 40

	and $BACB.w		; 2D CB BA
	brk $0C.b		; 00 0C
	rti		; 40

	and $C3.b,X		; 35 C3
	tsx		; BA
	brk $0C.b		; 00 0C
	rti		; 40

	and $BABB.w,X		; 3D BB BA
	brk $0C.b		; 00 0C
	rti		; 40

	eor $B3.b		; 45 B3
	tsx		; BA
	brk $0C.b		; 00 0C
	rti		; 40

	eor $BAAB.w		; 4D AB BA
	brk $0C.b		; 00 0C
	rti		; 40

	eor $A3.b,X		; 55 A3
	tsx		; BA
	brk $0C.b		; 00 0C
	rti		; 40

	eor $BA9B.w,X		; 5D 9B BA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $13.b		; E5 13
	cpy $0D00.w		; CC 00 0D
	rti		; 40

	sbc $13.b		; E5 13
	ldy $0E00.w,X		; BC 00 0E
	rti		; 40

	sbc $13.b		; E5 13
	cpy $00.b		; C4 00
	ora $EB0D40.l		; 0F 40 0D EB
	tax		; AA
	brk $1C.b		; 00 1C
	rti		; 40

	inc $F60A.w		; EE 0A F6
	brk $1D.b		; 00 1D
	rti		; 40

	asl $F6EA.w		; 0E EA F6
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F2.b		; 06 F2
	sep #$00		; E2 00
	ora $08F040.l,X		; 1F 40 F0 08
	inc $2000.w		; EE 00 20
	rti		; 40

	php		; 08
	beq -24.b		; F0 E8
	brk $21.b		; 00 21
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	plx		; FA
	brk $22.b		; 00 22
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	inx		; E8
	brk $23.b		; 00 23
	rti		; 40

	phd		; 0B
	sbc $00F0.w		; ED F0 00
	bit $40.b		; 24 40
	ora $BADB.w,X		; 1D DB BA
	brk $25.b		; 00 25
	rti		; 40

	cpx $FB0C.w		; EC 0C FB
	brk $26.b		; 00 26
	rti		; 40

	pea $D804.w		; F4 04 D8
	brk $27.b		; 00 27
	rti		; 40

	pea $E004.w		; F4 04 E0
	brk $28.b		; 00 28
	rti		; 40

	jsr ($DAFC.w,X)		; FC FC DA
	brk $29.b		; 00 29
	rti		; 40

	tsb $F4.b		; 04 F4
	phx		; DA
	brk $2A.b		; 00 2A
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $2B.b		; 00 2B
	rti		; 40

	ora $BB0AE6.l,X		; 1F E6 0A BB
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	inc $0A.b		; E6 0A
	wai		; CB
	php		; 08
	tsb $48.b		; 04 48
	inc $FA.b,X		; F6 FA
	wai		; CB
	php		; 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	plb		; AB
	php		; 08
	php		; 08
	pha		; 48
	inc $DB0A.w		; EE 0A DB
	brk $0A.b		; 00 0A
	rti		; 40

	inc $02.b,X		; F6 02
	stp		; DB
	brk $0B.b		; 00 0B
	rti		; 40

	inc $DBFA.w,X		; FE FA DB
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	sta $400D00.l,X		; 9F 00 0D 40
	asl $F8EA.w		; 0E EA F8
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00A309.l		; EF 09 A3 00
	ora $01F740.l		; 0F 40 F7 01
	sbc $00.b,S		; E3 00
	inc A		; 1A
	rti		; 40

	ora $00A4E9.l		; 0F E9 A4 00
	tas		; 1B
	rti		; 40

	sbc $009DF9.l,X		; FF F9 9D 00
	tas		; 1B
	rti		; 40

	ora [$F1.b]		; 07 F1
	inx		; E8
	brk $1C.b		; 00 1C
	rti		; 40

	beq   8.b		; F0 08
	inc $00.b,X		; F6 00
	ora $0840.w,X		; 1D 40 08
	beq -97.b		; F0 9F
	brk $1B.b		; 00 1B
	rti		; 40

	clc		; 18
	cpx #$B2.b		; E0 B2
	brk $1B.b		; 00 1B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	jsr ($1E00.w,X)		; FC 00 1E
	rti		; 40

	ora $BADF.w,Y		; 19 DF BA
	brk $1B.b		; 00 1B
	rti		; 40

	nop		; EA
	asl $00AB.w		; 0E AB 00
	ora $F20640.l,X		; 1F 40 06 F2
	stp		; DB
	brk $20.b		; 00 20
	rti		; 40

	cop $F6.b		; 02 F6
	plb		; AB
	brk $21.b		; 00 21
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b,S),Y		; B3 00
	jsl $06F240.l		; 22 40 F2 06
	inc $2300.w		; EE 00 23
	rti		; 40

	asl A		; 0A
	inc $00F0.w		; EE F0 00
	bit $40.b		; 24 40
	tsb $F4.b		; 04 F4
	sbc $00.b,S		; E3 00
	and $40.b		; 25 40
	ora $F3.b		; 05 F3
	wai		; CB
	brk $26.b		; 00 26
	rti		; 40

	sbc $FB0B.w		; ED 0B FB
	brk $27.b		; 00 27
	rti		; 40

	ora $E3.b,X		; 15 E3
	tax		; AA
	brk $1B.b		; 00 1B
	rti		; 40

	sbc $03.b,X		; F5 03
	nop		; EA
	brk $28.b		; 00 28
	rti		; 40

	clc		; 18
	beq   0.b		; F0 00
	ldx $08.b		; A6 08
	brk $48.b		; 00 48
	beq   0.b		; F0 00
	ldx $08.b,Y		; B6 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	dec $08.b		; C6 08
	tsb $48.b		; 04 48
	cpx #$10.b		; E0 10
	dec $08.b		; C6 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	pei ($08.b)		; D4 08
	php		; 08
	pha		; 48
	brk $F8.b		; 00 F8
	cpy $0A00.w		; CC 00 0A
	rti		; 40

	sbc $00F309.l		; EF 09 F3 00
	phd		; 0B
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $0C00.w		; AC 00 0C
	rti		; 40

	brk $F8.b		; 00 F8
	ldy $00.b,X		; B4 00
	ora $0040.w		; 0D 40 00
	sed		; F8
	ldy $0E00.w,X		; BC 00 0E
	rti		; 40

	inx		; E8
	bpl -74.b		; 10 B6
	brk $0F.b		; 00 0F
	rti		; 40

	cpx #$18.b		; E0 18
	ldx $1A00.w,Y		; BE 00 1A
	rti		; 40

	inx		; E8
	bpl -66.b		; 10 BE
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cpx $00.b		; E4 00
	trb $F940.w		; 1C 40 F9
	sbc $1D00E4.l,X		; FF E4 00 1D
	rti		; 40

	sbc ($06.b)		; F2 06
	xba		; EB
	brk $1E.b		; 00 1E
	rti		; 40

	brk $F8.b		; 00 F8
	cpy $00.b		; C4 00
	ora $F60240.l,X		; 1F 40 02 F6
	pei ($00.b)		; D4 00
	jsr $0240.w		; 20 40 02
	inc $DC.b,X		; F6 DC
	brk $21.b		; 00 21
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	dec $00.b,X		; D6 00
	jsl $0EEA40.l		; 22 40 EA 0E
	dec $00.b,X		; D6 00
	and $40.b,S		; 23 40
	ora $F5.b,S		; 03 F5
	tsx		; BA
	brk $24.b		; 00 24
	rti		; 40

	ora $F5.b,S		; 03 F5
	rep #$00		; C2 00
	and $40.b		; 25 40
	cpx $FB0C.w		; EC 0C FB
	brk $26.b		; 00 26
	rti		; 40

	ora [$E6.b],Y		; 17 E6
	asl A		; 0A
	plb		; AB
	php		; 08
	brk $48.b		; 00 48
	inc $0A.b		; E6 0A
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	inc $CB02.w		; EE 02 CB
	php		; 08
	asl $48.b		; 06 48
	dec $1A.b,X		; D6 1A
	lda [$08.b],Y		; B7 08
	php		; 08
	pha		; 48
	dec $1A.b,X		; D6 1A
	cmp [$08.b]		; C7 08
	asl A		; 0A
	pha		; 48
	inc $12.b		; E6 12
	wai		; CB
	brk $0C.b		; 00 0C
	rti		; 40

	inc $CBFA.w,X		; FE FA CB
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	plb		; AB
	brk $0E.b		; 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	lda ($00.b,S),Y		; B3 00
	ora $2ACE40.l		; 0F 40 CE 2A
	cmp ($00.b,X)		; C1 00
	trb $CE40.w		; 1C 40 CE
	rol A		; 2A
	cmp #$00.b		; C9 00
	ora $EF40.w,X		; 1D 40 EF
	ora #$EB.b		; 09 EB
	brk $1E.b		; 00 1E
	rti		; 40

	beq   8.b		; F0 08
	sbc $00.b,S		; E3 00
	ora $07F140.l,X		; 1F 40 F1 07
	stp		; DB
	brk $20.b		; 00 20
	rti		; 40

	sbc $A30B.w		; ED 0B A3
	brk $21.b		; 00 21
	rti		; 40

	sbc $03.b,X		; F5 03
	lda $00.b,S		; A3 00
	jsl $0BED40.l		; 22 40 ED 0B
	sbc ($00.b,S),Y		; F3 00
	and $40.b,S		; 23 40
	sbc $FB0B.w		; ED 0B FB
	brk $24.b		; 00 24
	rti		; 40

	ora $E3.b,X		; 15 E3
	dec $00.b		; C6 00
	and $40.b		; 25 40
	ora $C8EB.w		; 0D EB C8
	brk $26.b		; 00 26
	rti		; 40

	ora $C8DB.w,X		; 1D DB C8
	brk $27.b		; 00 27
	rti		; 40

	ora $F3.b		; 05 F3
	dex		; CA
	brk $28.b		; 00 28
	rti		; 40

	clc		; 18
	sbc [$09.b]		; E7 09
	ldx $08.b,Y		; B6 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	ldx $08.b,Y		; B6 08
	cop $48.b		; 02 48
	bpl -32.b		; 10 E0
	dec $0408.w,X		; DE 08 04
	pha		; 48
	inx		; E8
	php		; 08
	dec $08.b		; C6 08
	asl $48.b		; 06 48
	sed		; F8
	sed		; F8
	dec $08.b		; C6 08
	php		; 08
	pha		; 48
	php		; 08
	inx		; E8
	dec $08.b		; C6 08
	asl A		; 0A
	pha		; 48
	sbc $A603.w		; ED 03 A6
	php		; 08
	tsb $0848.w		; 0C 48 08
	beq -34.b		; F0 DE
	brk $0E.b		; 00 0E
	rti		; 40

	jsr $E6D8.w		; 20 D8 E6
	brk $0F.b		; 00 0F
	rti		; 40

	ora [$F1.b]		; 07 F1
	ldx $00.b,Y		; B6 00
	asl $0740.w,X		; 1E 40 07
	sbc ($BE.b),Y		; F1 BE
	brk $1F.b		; 00 1F
	rti		; 40

	cpx #$18.b		; E0 18
	dec $00.b		; C6 00
	jsr $1840.w		; 20 40 18
	cpx #$CE.b		; E0 CE
	brk $21.b		; 00 21
	rti		; 40

	ora $F3.b		; 05 F3
	ldx $2200.w		; AE 00 22
	rti		; 40

	sbc $D60B.w		; ED 0B D6
	brk $23.b		; 00 23
	rti		; 40

	sbc $03.b,X		; F5 03
	dec $00.b,X		; D6 00
	bit $40.b		; 24 40
	sbc $D6FB.w,X		; FD FB D6
	brk $25.b		; 00 25
	rti		; 40

	ora $F3.b		; 05 F3
	dec $00.b,X		; D6 00
	rol $40.b		; 26 40
	ora $D6EB.w		; 0D EB D6
	brk $27.b		; 00 27
	rti		; 40

	ora $E3.b,X		; 15 E3
	dec $00.b,X		; D6 00
	plp		; 28
	rti		; 40

	brk $F8.b		; 00 F8
	dec $2900.w,X		; DE 00 29
	rti		; 40

	sbc $A6FB.w,X		; FD FB A6
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $AEFB.w,X		; FD FB AE
	brk $2B.b		; 00 2B
	rti		; 40

	ora $AFEB.w		; 0D EB AF
	brk $2C.b		; 00 2C
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	ora $0008D2.l		; 0F D2 08 00
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b)		; D2 08
	cop $48.b		; 02 48
	tsb $ADE4.w		; 0C E4 AD
	php		; 08
	tsb $48.b		; 04 48
	trb $A7D4.w		; 1C D4 A7
	php		; 08
	asl $48.b		; 06 48
	jsr ($B2F4.w,X)		; FC F4 B2
	php		; 08
	php		; 08
	pha		; 48
	cpx $0C.b		; E4 0C
	rep #$08		; C2 08
	asl A		; 0A
	pha		; 48
	pea $C2FC.w		; F4 FC C2
	php		; 08
	tsb $0148.w		; 0C 48 01
	sbc [$D2.b],Y		; F7 D2
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	phx		; DA
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $E2FF.w,Y		; F9 FF E2
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sep #$00		; E2 00
	ora $FDFB40.l,X		; 1F 40 FB FD
	nop		; EA
	brk $20.b		; 00 20
	rti		; 40

	ora $F5.b,S		; 03 F5
	nop		; EA
	brk $21.b		; 00 21
	rti		; 40

	ora #$EF.b		; 09 EF
	stp		; DB
	brk $22.b		; 00 22
	rti		; 40

	ora #$EF.b		; 09 EF
	sbc $00.b,S		; E3 00
	and $40.b,S		; 23 40
	pei ($24.b)		; D4 24
	cmp #$00.b		; C9 00
	bit $40.b		; 24 40
	jmp.w [$C91C]		; DC 1C C9
	brk $25.b		; 00 25
	rti		; 40

	cmp $D81F.w,Y		; D9 1F D8
	brk $26.b		; 00 26
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b)		; F2 00
	and [$40.b]		; 27 40
	ora #$EF.b		; 09 EF
	cmp ($00.b,S),Y		; D3 00
	plp		; 28
	rti		; 40

	cpx $BA0C.w		; EC 0C BA
	brk $29.b		; 00 29
	rti		; 40

	pea $BA04.w		; F4 04 BA
	brk $2A.b		; 00 2A
	rti		; 40

	tsb $F4.b		; 04 F4
	rep #$00		; C2 00
	pld		; 2B
	rti		; 40

	ora [$F7.b],Y		; 17 F7
	sbc $08CB.w,Y		; F9 CB 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	wai		; CB
	php		; 08
	cop $48.b		; 02 48
	sbc [$09.b]		; E7 09
	cmp [$08.b]		; C7 08
	tsb $48.b		; 04 48
	php		; 08
	inx		; E8
	sbc $08.b,S		; E3 08
	asl $48.b		; 06 48
	ora ($DD.b,S),Y		; 13 DD
	plb		; AB
	php		; 08
	php		; 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	plb		; AB
	php		; 08
	asl A		; 0A
	pha		; 48
	xce		; FB
	sbc $BB.b,X		; F5 BB
	php		; 08
	tsb $0B48.w		; 0C 48 0B
	sbc $BB.b		; E5 BB
	php		; 08
	asl $1748.w		; 0E 48 17
	sbc ($CB.b,X)		; E1 CB
	brk $20.b		; 00 20
	rti		; 40

	ora [$E1.b],Y		; 17 E1
	cmp ($00.b,S),Y		; D3 00
	and ($40.b,X)		; 21 40
	asl $DBEA.w		; 0E EA DB
	brk $22.b		; 00 22
	rti		; 40

	sbc [$11.b]		; E7 11
	cmp [$00.b],Y		; D7 00
	and $40.b,S		; 23 40
	sbc $00D709.l		; EF 09 D7 00
	bit $40.b		; 24 40
	cmp [$21.b],Y		; D7 21
	cpy #$00.b		; C0 00
	and $40.b		; 25 40
	cmp $00C119.l,X		; DF 19 C1 00
	rol $40.b		; 26 40
	cmp $00C919.l,X		; DF 19 C9 00
	and [$40.b]		; 27 40
	dec $22.b,X		; D6 22
	cmp $402800.l,X		; DF 00 28 40
	clc		; 18
	cpx #$EA.b		; E0 EA
	brk $29.b		; 00 29
	rti		; 40

	sbc ($17.b,X)		; E1 17
	cmp $2A00.w,Y		; D9 00 2A
	rti		; 40

	dec $DF1A.w,X		; DE 1A DF
	brk $2B.b		; 00 2B
	rti		; 40

	dec $22.b,X		; D6 22
	sbc [$00.b]		; E7 00
	bit $F640.w		; 2C 40 F6
	cop $C3.b		; 02 C3
	brk $2D.b		; 00 2D
	rti		; 40

	asl $F2.b		; 06 F2
	stp		; DB
	brk $2E.b		; 00 2E
	rti		; 40

	phd		; 0B
	inc $FA.b,X		; F6 FA
	sbc $0008.w,Y		; F9 08 00
	pha		; 48
	sbc $08CCF1.l,X		; FF F1 CC 08
	cop $48.b		; 02 48
	sbc $DAF7.w,Y		; F9 F7 DA
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	nop		; EA
	php		; 08
	asl $48.b		; 06 48
	ora $ED.b,S		; 03 ED
	nop		; EA
	php		; 08
	php		; 08
	pha		; 48
	ora $00D2E9.l		; 0F E9 D2 00
	asl A		; 0A
	rti		; 40

	ora #$EF.b		; 09 EF
	phx		; DA
	brk $0B.b		; 00 0B
	rti		; 40

	ora #$EF.b		; 09 EF
	sep #$00		; E2 00
	tsb $0B40.w		; 0C 40 0B
	sbc $0001.w		; ED 01 00
	ora $0840.w		; 0D 40 08
	beq  -7.b		; F0 F9
	brk $0E.b		; 00 0E
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sep #$00		; E2 00
	ora $E01E40.l		; 0F 40 1E E0
	bpl -71.b		; 10 B9
	php		; 08
	brk $48.b		; 00 48
	sed		; F8
	sed		; F8
	lda ($08.b),Y		; B1 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	cmp ($08.b),Y		; D1 08
	tsb $48.b		; 04 48
	tsb $F4.b		; 04 F4
	lda #$00.b		; A9 00
	asl $40.b		; 06 40
	sbc $13.b		; E5 13
	pei ($00.b)		; D4 00
	ora [$40.b]		; 07 40
	sbc $03.b,X		; F5 03
	lda $00.b		; A5 00
	php		; 08
	rti		; 40

	dec $C91A.w,X		; DE 1A C9
	brk $09.b		; 00 09
	rti		; 40

	inc $12.b		; E6 12
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	inc $C90A.w		; EE 0A C9
	brk $0B.b		; 00 0B
	rti		; 40

	inc $02.b,X		; F6 02
	cmp #$00.b		; C9 00
	tsb $FE40.w		; 0C 40 FE
	plx		; FA
	cmp #$00.b		; C9 00
	ora $0640.w		; 0D 40 06
	sbc ($C9.b)		; F2 C9
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	sta $0F00.w,Y		; 99 00 0F
	rti		; 40

	cpx $A90C.w		; EC 0C A9
	brk $16.b		; 00 16
	rti		; 40

	pea $A904.w		; F4 04 A9
	brk $17.b		; 00 17
	rti		; 40

	inx		; E8
	bpl -79.b		; 10 B1
	brk $18.b		; 00 18
	rti		; 40

	beq   8.b		; F0 08
	lda ($00.b),Y		; B1 00
	ora $F040.w,Y		; 19 40 F0
	php		; 08
	lda $1A00.w,Y		; B9 00 1A
	rti		; 40

	beq   8.b		; F0 08
	cmp ($00.b,X)		; C1 00
	tas		; 1B
	rti		; 40

	sed		; F8
	brk $C1.b		; 00 C1
	brk $1C.b		; 00 1C
	rti		; 40

	brk $F8.b		; 00 F8
	cmp ($00.b,X)		; C1 00
	ora $E240.w,X		; 1D 40 E2
	asl $D1.b,X		; 16 D1
	brk $1E.b		; 00 1E
	rti		; 40

	nop		; EA
	asl $00D1.w		; 0E D1 00
	ora $F50340.l,X		; 1F 40 03 F5
	lda ($00.b,X)		; A1 00
	jsr $F340.w		; 20 40 F3
	ora $D1.b		; 05 D1
	brk $21.b		; 00 21
	rti		; 40

	jsr ($A9FC.w,X)		; FC FC A9
	brk $22.b		; 00 22
	rti		; 40

	xce		; FB
	sbc $00D1.w,X		; FD D1 00
	and $40.b,S		; 23 40
	xce		; FB
	sbc $00D9.w,X		; FD D9 00
	bit $40.b		; 24 40
	xce		; FB
	sbc $00E1.w,X		; FD E1 00
	and $40.b		; 25 40
	ora $F5.b,S		; 03 F5
	sbc ($00.b,X)		; E1 00
	rol $40.b		; 26 40
	asl $E2.b,X		; 16 E2
	asl $08C3.w		; 0E C3 08
	brk $48.b		; 00 48
	sbc ($FE.b)		; F2 FE
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	cmp $08.b,S		; C3 08
	tsb $48.b		; 04 48
	sbc $0D.b,S		; E3 0D
	lda ($08.b,S),Y		; B3 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	lda ($08.b,S),Y		; B3 08
	php		; 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	lda ($08.b,S),Y		; B3 08
	asl A		; 0A
	pha		; 48
	sbc #$0F.b		; E9 0F
	sbc #$00.b		; E9 00
	tsb $EE40.w		; 0C 40 EE
	asl A		; 0A
	stp		; DB
	brk $0D.b		; 00 0D
	rti		; 40

	inc $02.b,X		; F6 02
	stp		; DB
	brk $0E.b		; 00 0E
	rti		; 40

	inc $DBFA.w,X		; FE FA DB
	brk $0F.b		; 00 0F
	rti		; 40

	inc $12.b		; E6 12
	cpx #$00.b		; E0 00
	trb $E640.w		; 1C 40 E6
	ora ($DA.b)		; 12 DA
	brk $1D.b		; 00 1D
	rti		; 40

	bpl -24.b		; 10 E8
	cmp [$00.b]		; C7 00
	asl $FB40.w,X		; 1E 40 FB
	sbc $00AB.w,X		; FD AB 00
	ora $F50340.l,X		; 1F 40 03 F5
	plb		; AB
	brk $20.b		; 00 20
	rti		; 40

	phd		; 0B
	sbc $00AB.w		; ED AB 00
	and ($40.b,X)		; 21 40
	sbc $03.b,X		; F5 03
	cmp ($00.b,S),Y		; D3 00
	jsl $FBFD40.l		; 22 40 FD FB
	cmp ($00.b,S),Y		; D3 00
	and $40.b,S		; 23 40
	sbc $E30B.w		; ED 0B E3
	brk $24.b		; 00 24
	rti		; 40

	sbc $03.b,X		; F5 03
	sbc $00.b,S		; E3 00
	and $40.b		; 25 40
	sbc $E3FB.w,X		; FD FB E3
	brk $26.b		; 00 26
	rti		; 40

	ora $E3.b,X		; 15 E3
	cpy $2700.w		; CC 00 27
	rti		; 40

	tas		; 1B
	inc $0A.b		; E6 0A
	lda $480008.l		; AF 08 00 48
	inc $FA.b,X		; F6 FA
	lda $480208.l		; AF 08 02 48
	sbc [$09.b]		; E7 09
	lda $480408.l,X		; BF 08 04 48
	sbc [$F9.b],Y		; F7 F9
	lda $480608.l,X		; BF 08 06 48
	inx		; E8
	php		; 08
	cmp $480808.l		; CF 08 08 48
	sed		; F8
	sed		; F8
	cmp $480A08.l		; CF 08 0A 48
	sbc [$01.b],Y		; F7 01
	lda [$00.b]		; A7 00
	tsb $FF40.w		; 0C 40 FF
	sbc $00A7.w,Y		; F9 A7 00
	ora $0740.w		; 0D 40 07
	sbc ($A7.b),Y		; F1 A7
	brk $0E.b		; 00 0E
	rti		; 40

	inc $12.b		; E6 12
	sta $400F00.l,X		; 9F 00 0F 40
	asl $F2.b		; 06 F2
	lda $401C00.l		; AF 00 1C 40
	ora [$F1.b]		; 07 F1
	cmp ($00.b,X)		; C1 00
	ora $0F40.w,X		; 1D 40 0F
	sbc #$C1.b		; E9 C1
	brk $1E.b		; 00 1E
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp #$00.b		; C9 00
	ora $F10740.l,X		; 1F 40 07 F1
	cmp ($00.b),Y		; D1 00
	jsr $E040.w		; 20 40 E0
	clc		; 18
	ldy $2100.w,X		; BC 00 21
	rti		; 40

	inx		; E8
	bpl -89.b		; 10 A7
	brk $22.b		; 00 22
	rti		; 40

	asl $F2.b		; 06 F2
	lda [$00.b],Y		; B7 00
	and $40.b,S		; 23 40
	cmp $009C19.l,X		; DF 19 9C 00
	bit $40.b		; 24 40
	sed		; F8
	brk $DF.b		; 00 DF
	brk $25.b		; 00 25
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $402600.l,X		; DF 00 26 40
	cld		; D8
	jsr $00A9.w		; 20 A9 00
	and [$40.b]		; 27 40
	sbc $E7FF.w,Y		; F9 FF E7
	brk $28.b		; 00 28
	rti		; 40

	sbc ($07.b),Y		; F1 07
	inx		; E8
	brk $29.b		; 00 29
	rti		; 40

	sbc ($07.b),Y		; F1 07
	beq   0.b		; F0 00
	rol A		; 2A
	rti		; 40

	cmp $A11F.w,Y		; D9 1F A1
	brk $27.b		; 00 27
	rti		; 40

	stp		; DB
	ora $00B2.w,X		; 1D B2 00
	and [$40.b]		; 27 40
	ora $11DF.w,Y		; 19 DF 11
	ldy $0008.w,X		; BC 08 00
	pha		; 48
	sbc $08BC01.l		; EF 01 BC 08
	cop $48.b		; 02 48
	sbc $08BCF1.l,X		; FF F1 BC 08
	tsb $48.b		; 04 48
	plx		; FA
	inc $DC.b,X		; F6 DC
	php		; 08
	asl $48.b		; 06 48
	sbc ($FE.b)		; F2 FE
	cpy $0808.w		; CC 08 08
	pha		; 48
	cpx $0C.b		; E4 0C
	ldy $0A08.w		; AC 08 0A
	pha		; 48
	pea $ACFC.w		; F4 FC AC
	php		; 08
	tsb $0448.w		; 0C 48 04
	cpx $08AC.w		; EC AC 08
	asl $0A48.w		; 0E 48 0A
	inc $00CC.w		; EE CC 00
	jsr $1740.w		; 20 40 17
	sbc ($E4.b,X)		; E1 E4
	brk $21.b		; 00 21
	rti		; 40

	ora $00F4D9.l,X		; 1F D9 F4 00
	and ($40.b,X)		; 21 40
	cop $F6.b		; 02 F6
	cpy $2200.w		; CC 00 22
	rti		; 40

	cop $F6.b		; 02 F6
	pei ($00.b)		; D4 00
	and $40.b,S		; 23 40
	sbc ($06.b)		; F2 06
	cmp $402400.l,X		; DF 00 24 40
	sbc ($06.b)		; F2 06
	sbc [$00.b]		; E7 00
	and $40.b		; 25 40
	and $D5.b,S		; 23 D5
	xce		; FB
	brk $21.b		; 00 21
	rti		; 40

	pld		; 2B
	cmp $000B.w		; CD 0B 00
	and ($40.b,X)		; 21 40
	ora ($E5.b,S),Y		; 13 E5
	jmp.w [$2100]		; DC 00 21
	rti		; 40

	tas		; 1B
	cmp $00EC.w,X		; DD EC 00
	and ($40.b,X)		; 21 40
	jmp.w [$B41C]		; DC 1C B4
	brk $26.b		; 00 26
	rti		; 40

	inc $02.b,X		; F6 02
	cpx $2700.w		; EC 00 27
	rti		; 40

	inc $02.b,X		; F6 02
	pea $2800.w		; F4 00 28
	rti		; 40

	and [$D1.b]		; 27 D1
	ora $00.b,S		; 03 00
	and ($40.b,X)		; 21 40
	ora $D4EB.w		; 0D EB D4
	brk $29.b		; 00 29
	rti		; 40

	ora $F3.b		; 05 F3
	phx		; DA
	brk $2A.b		; 00 2A
	rti		; 40

	ora ($08.b)		; 12 08
	inx		; E8
	ldx $08.b,Y		; B6 08
	brk $48.b		; 00 48
	inx		; E8
	php		; 08
	ldx $08.b,Y		; B6 08
	cop $48.b		; 02 48
	inx		; E8
	php		; 08
	dec $08.b		; C6 08
	tsb $48.b		; 04 48
	sbc #$07.b		; E9 07
	dec $08.b,X		; D6 08
	asl $48.b		; 06 48
	brk $F8.b		; 00 F8
	cmp ($00.b,S),Y		; D3 00
	php		; 08
	rti		; 40

	brk $F8.b		; 00 F8
	stp		; DB
	brk $09.b		; 00 09
	rti		; 40

	sed		; F8
	brk $B4.b		; 00 B4
	brk $0A.b		; 00 0A
	rti		; 40

	sed		; F8
	brk $BC.b		; 00 BC
	brk $0B.b		; 00 0B
	rti		; 40

	sed		; F8
	brk $C4.b		; 00 C4
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $CC.b		; 00 CC
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $D4.b		; 00 D4
	brk $0E.b		; 00 0E
	rti		; 40

	brk $F8.b		; 00 F8
	lda ($00.b,S),Y		; B3 00
	ora $F80040.l		; 0F 40 00 F8
	tyx		; BB
	brk $18.b		; 00 18
	rti		; 40

	brk $F8.b		; 00 F8
	cmp $00.b,S		; C3 00
	ora $F940.w,Y		; 19 40 F9
	sbc $1A00DC.l,X		; FF DC 00 1A
	rti		; 40

	brk $F8.b		; 00 F8
	wai		; CB
	brk $1B.b		; 00 1B
	rti		; 40

	ora $F3.b		; 05 F3
	ldx $1C00.w		; AE 00 1C
	rti		; 40

	ora $AEEB.w		; 0D EB AE
	brk $1D.b		; 00 1D
	rti		; 40

	ora $FBF5.w,Y		; 19 F5 FB
	cmp #$08.b		; C9 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	stp		; DB
	ora $9C.b,X		; 15 9C
	php		; 08
	tsb $48.b		; 04 48
	xba		; EB
	ora $9C.b		; 05 9C
	php		; 08
	asl $48.b		; 06 48
	ora $F3.b		; 05 F3
	lda ($00.b),Y		; B1 00
	php		; 08
	rti		; 40

	pea $C104.w		; F4 04 C1
	brk $09.b		; 00 09
	rti		; 40

	ora $F3.b		; 05 F3
	cmp #$00.b		; C9 00
	asl A		; 0A
	rti		; 40

	ora $F3.b		; 05 F3
	cmp ($00.b),Y		; D1 00
	phd		; 0B
	rti		; 40

	sed		; F8
	brk $D9.b		; 00 D9
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($C1FC.w,X)		; FC FC C1
	brk $0D.b		; 00 0D
	rti		; 40

	cpx #$18.b		; E0 18
	ldy $00.b,X		; B4 00
	asl $E840.w		; 0E 40 E8
	bpl -76.b		; 10 B4
	brk $0F.b		; 00 0F
	rti		; 40

	beq   8.b		; F0 08
	ldy $00.b,X		; B4 00
	clc		; 18
	rti		; 40

	sbc ($06.b)		; F2 06
	lda $1900.w,Y		; B9 00 19
	rti		; 40

	plx		; FA
	inc $00B9.w,X		; FE B9 00
	inc A		; 1A
	rti		; 40

	cop $F6.b		; 02 F6
	lda $1B00.w,Y		; B9 00 1B
	rti		; 40

	xce		; FB
	sbc $00A9.w,X		; FD A9 00
	trb $0340.w		; 1C 40 03
	sbc $A9.b,X		; F5 A9
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $03.b,X		; F5 03
	lda ($00.b),Y		; B1 00
	asl $FD40.w,X		; 1E 40 FD
	xce		; FB
	lda ($00.b),Y		; B1 00
	ora $1DDB40.l,X		; 1F 40 DB 1D
	ldy $2000.w		; AC 00 20
	rti		; 40

	sbc $15.b,S		; E3 15
	ldy INIDSP.w		; AC 00 21
	rti		; 40

	xba		; EB
	ora $00AC.w		; 0D AC 00
	jsl $05F340.l		; 22 40 F3 05
	ldy $2300.w		; AC 00 23
	rti		; 40

	cmp ($25.b,S),Y		; D3 25
	tay		; A8
	brk $24.b		; 00 24
	rti		; 40

	ora [$E8.b],Y		; 17 E8
	php		; 08
	cmp $08.b,S		; C3 08
	brk $48.b		; 00 48
	brk $F0.b		; 00 F0
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	sbc $0D.b,S		; E3 0D
	plb		; AB
	php		; 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	lda $08.b,S		; A3 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	plb		; AB
	php		; 08
	php		; 08
	pha		; 48
	brk $F8.b		; 00 F8
	cmp ($00.b,S),Y		; D3 00
	asl A		; 0A
	rti		; 40

	cpx #$18.b		; E0 18
	cpy $0B00.w		; CC 00 0B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	txy		; 9B
	brk $0C.b		; 00 0C
	rti		; 40

	sed		; F8
	brk $C3.b		; 00 C3
	brk $0D.b		; 00 0D
	rti		; 40

	sed		; F8
	brk $CB.b		; 00 CB
	brk $0E.b		; 00 0E
	rti		; 40

	sed		; F8
	brk $D3.b		; 00 D3
	brk $0F.b		; 00 0F
	rti		; 40

	xce		; FB
	sbc $00A3.w,X		; FD A3 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,S),Y		; B3 00
	tas		; 1B
	rti		; 40

	xce		; FB
	sbc $00EA.w,X		; FD EA 00
	trb $FB40.w		; 1C 40 FB
	sbc $00F2.w,X		; FD F2 00
	ora $FB40.w,X		; 1D 40 FB
	sbc $00FA.w,X		; FD FA 00
	asl $E440.w,X		; 1E 40 E4
	trb $BB.b		; 14 BB
	brk $1F.b		; 00 1F
	rti		; 40

	cpx $BB0C.w		; EC 0C BB
	brk $20.b		; 00 20
	rti		; 40

	pea $BB04.w		; F4 04 BB
	brk $21.b		; 00 21
	rti		; 40

	jsr ($BBFC.w,X)		; FC FC BB
	brk $22.b		; 00 22
	rti		; 40

	tsb $F4.b		; 04 F4
	tyx		; BB
	brk $23.b		; 00 23
	rti		; 40

	jsr ($E2FC.w,X)		; FC FC E2
	brk $24.b		; 00 24
	rti		; 40

	sbc $DAFB.w,X		; FD FB DA
	brk $25.b		; 00 25
	rti		; 40

	inc A		; 1A
	sbc $08D3F1.l,X		; FF F1 D3 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	lda $08.b,S		; A3 08
	cop $48.b		; 02 48
	cmp $08A411.l,X		; DF 11 A4 08
	tsb $48.b		; 04 48
	pea $C3FC.w		; F4 FC C3
	php		; 08
	asl $48.b		; 06 48
	sbc $FB.b,X		; F5 FB
	lda ($08.b,S),Y		; B3 08
	php		; 08
	pha		; 48
	cmp $B413.w,X		; DD 13 B4
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $00A409.l		; EF 09 A4 00
	tsb $EF40.w		; 0C 40 EF
	ora #$AC.b		; 09 AC
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $E3FF.w,Y		; F9 FF E3
	brk $0E.b		; 00 0E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	sbc $00.b,S		; E3 00
	ora $FFF940.l		; 0F 40 F9 FF
	xba		; EB
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $C3EC.w		; 0C EC C3
	brk $1D.b		; 00 1D
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $00.b,S		; C3 00
	asl $1C40.w,X		; 1E 40 1C
	jmp.w [$00C3]		; DC C3 00
	ora $D42440.l,X		; 1F 40 24 D4
	cmp $00.b,S		; C3 00
	jsr $2C40.w		; 20 40 2C
	cpy $00C3.w		; CC C3 00
	and ($40.b,X)		; 21 40
	bit $C4.b,X		; 34 C4
	cmp $00.b,S		; C3 00
	jsl $F10740.l		; 22 40 07 F1
	plb		; AB
	brk $23.b		; 00 23
	rti		; 40

	tsb $F4.b		; 04 F4
	cmp $00.b,S		; C3 00
	bit $40.b		; 24 40
	tsb $F4.b		; 04 F4
	wai		; CB
	brk $25.b		; 00 25
	rti		; 40

	cmp [$21.b],Y		; D7 21
	ldy $2600.w		; AC 00 26
	rti		; 40

	ora $F3.b		; 05 F3
	lda ($00.b,S),Y		; B3 00
	and [$40.b]		; 27 40
	ora $F3.b		; 05 F3
	tyx		; BB
	brk $28.b		; 00 28
	rti		; 40

	ora [$F1.b]		; 07 F1
	lda $00.b,S		; A3 00
	and #$40.b		; 29 40
	sbc $B40B.w		; ED 0B B4
	brk $2A.b		; 00 2A
	rti		; 40

	sbc $BC0B.w		; ED 0B BC
	brk $2B.b		; 00 2B
	rti		; 40

	asl $FAF6.w		; 0E F6 FA
	cmp $0008.w,X		; DD 08 00
	pha		; 48
	asl $EA.b		; 06 EA
	cmp $0208.w,X		; DD 08 02
	pha		; 48
	sbc $08CDF1.l,X		; FF F1 CD 08
	tsb $48.b		; 04 48
	sbc ($FF.b),Y		; F1 FF
	sbc $0608.w		; ED 08 06
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	sbc $0808.w		; ED 08 08
	pha		; 48
	sbc [$01.b],Y		; F7 01
	sbc $0A00.w,X		; FD 00 0A
	rti		; 40

	sbc $00FDF9.l,X		; FF F9 FD 00
	phd		; 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	sbc $0C00.w,X		; FD 00 0C
	rti		; 40

	ora $00FDE9.l		; 0F E9 FD 00
	ora $1640.w		; 0D 40 16
.INDEX 8
	sep #$DD		; E2 DD
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $00.b		; E5 00
	ora $E90F40.l		; 0F 40 0F E9
	cmp $00.b,X		; D5 00
	inc A		; 1A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $1B00.w		; ED 00 1B
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc $00.b,X		; F5 00
	trb $1A40.w		; 1C 40 1A
	sbc [$09.b]		; E7 09
	sbc $08.b		; E5 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	cmp $0208.w,X		; DD 08 02
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp $0408.w,X		; DD 08 04
	pha		; 48
	ora [$E1.b],Y		; 17 E1
	cmp $0600.w,X		; DD 00 06
	rti		; 40

	ora $00DDD9.l,X		; 1F D9 DD 00
	ora [$40.b]		; 07 40
	sbc [$01.b],Y		; F7 01
	sbc $0800.w,X		; FD 00 08
	rti		; 40

	sbc $00FDF9.l,X		; FF F9 FD 00
	ora #$40.b		; 09 40
	ora [$F1.b]		; 07 F1
	sbc $0A00.w,X		; FD 00 0A
	rti		; 40

	ora $00FDE9.l		; 0F E9 FD 00
	phd		; 0B
	rti		; 40

	rol $D2.b		; 26 D2
	phx		; DA
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00CDF9.l,X		; FF F9 CD 00
	ora $0740.w		; 0D 40 07
	sbc ($CD.b),Y		; F1 CD
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00DD09.l		; EF 09 DD 00
	ora $01F740.l		; 0F 40 F7 01
	sbc $1600.w		; ED 00 16
	rti		; 40

	sbc $00EDF9.l,X		; FF F9 ED 00
	ora [$40.b],Y		; 17 40
	ora [$F1.b]		; 07 F1
	sbc $1800.w		; ED 00 18
	rti		; 40

	ora $00EDE9.l		; 0F E9 ED 00
	ora $FB40.w,Y		; 19 40 FB
	sbc $00D5.w,X		; FD D5 00
	inc A		; 1A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp $00.b,X		; D5 00
	tas		; 1B
	rti		; 40

	phd		; 0B
	sbc $00D5.w		; ED D5 00
	trb $1340.w		; 1C 40 13
	sbc $D5.b		; E5 D5
	brk $1D.b		; 00 1D
	rti		; 40

	cpx $F50C.w		; EC 0C F5
	brk $1E.b		; 00 1E
	rti		; 40

	pea $F504.w		; F4 04 F5
	brk $1F.b		; 00 1F
	rti		; 40

	jsr ($F5FC.w,X)		; FC FC F5
	brk $20.b		; 00 20
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b,X		; F5 00
	and ($40.b,X)		; 21 40
	tsb $F5EC.w		; 0C EC F5
	brk $22.b		; 00 22
	rti		; 40

	ora ($E7.b)		; 12 E7
	ora #$DD.b		; 09 DD
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	cmp $0208.w,X		; DD 08 02
	pha		; 48
	ora [$E9.b]		; 07 E9
	sbc $08.b		; E5 08
	tsb $48.b		; 04 48
	ora [$E9.b]		; 07 E9
	sbc $08.b,X		; F5 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	sbc $08.b,X		; F5 08
	php		; 08
	pha		; 48
	ora [$F1.b]		; 07 F1
	cmp $0A00.w		; CD 00 0A
	rti		; 40

	sbc $00CDF9.l,X		; FF F9 CD 00
	phd		; 0B
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp $0C00.w,X		; DD 00 0C
	rti		; 40

	sbc [$11.b]		; E7 11
	sbc $0D00.w		; ED 00 0D
	rti		; 40

	sbc $00ED09.l		; EF 09 ED 00
	asl $F740.w		; 0E 40 F7
	ora ($ED.b,X)		; 01 ED
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00EDF9.l,X		; FF F9 ED 00
	inc A		; 1A
	rti		; 40

	sbc $00F509.l		; EF 09 F5 00
	tas		; 1B
	rti		; 40

	sbc #$0F.b		; E9 0F
	cmp $00.b,X		; D5 00
	trb $F140.w		; 1C 40 F1
	ora [$D5.b]		; 07 D5
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $D5FF.w,Y		; F9 FF D5
	brk $1E.b		; 00 1E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp $00.b,X		; D5 00
	ora $EF0940.l,X		; 1F 40 09 EF
	cmp $00.b,X		; D5 00
	jsr $1840.w		; 20 40 18
	sbc #$07.b		; E9 07
	sbc $08.b		; E5 08
	brk $48.b		; 00 48
	sbc $E5F7.w,Y		; F9 F7 E5
	php		; 08
	cop $48.b		; 02 48
	ora #$E7.b		; 09 E7
	sbc $08.b		; E5 08
	tsb $48.b		; 04 48
	sbc $F5F7.w,Y		; F9 F7 F5
	php		; 08
	asl $48.b		; 06 48
	ora #$E7.b		; 09 E7
	sbc $08.b,X		; F5 08
	php		; 08
	pha		; 48
	ora [$F1.b]		; 07 F1
	cmp $00.b,X		; D5 00
	asl A		; 0A
	rti		; 40

	ora $00D5E9.l		; 0F E9 D5 00
	phd		; 0B
	rti		; 40

	sbc [$01.b],Y		; F7 01
	dex		; CA
	brk $0C.b		; 00 0C
	rti		; 40

	cpx #$18.b		; E0 18
	bne   0.b		; D0 00
	ora $1940.w		; 0D 40 19
	cmp $0E00E5.l,X		; DF E5 00 0E
	rti		; 40

	inc $12.b		; E6 12
	wai		; CB
	brk $0F.b		; 00 0F
	rti		; 40

	inc $CEFA.w,X		; FE FA CE
	brk $1A.b		; 00 1A
	rti		; 40

	inc $C90A.w		; EE 0A C9
	brk $0C.b		; 00 0C
	rti		; 40

	sbc [$01.b],Y		; F7 01
	cmp $00.b,X		; D5 00
	tas		; 1B
	rti		; 40

	sbc $00D5F9.l,X		; FF F9 D5 00
	trb $0240.w		; 1C 40 02
	inc $CD.b,X		; F6 CD
	brk $1D.b		; 00 1D
	rti		; 40

	asl A		; 0A
	inc $00CD.w		; EE CD 00
	asl $EB40.w,X		; 1E 40 EB
	ora $00DD.w		; 0D DD 00
	ora $05F340.l,X		; 1F 40 F3 05
	cmp $2000.w,X		; DD 00 20
	rti		; 40

	xce		; FB
	sbc $00DD.w,X		; FD DD 00
	and ($40.b,X)		; 21 40
	ora $F5.b,S		; 03 F5
	cmp $2200.w,X		; DD 00 22
	rti		; 40

	phd		; 0B
	sbc $00DD.w		; ED DD 00
	and $40.b,S		; 23 40
	ora ($E5.b,S),Y		; 13 E5
	cmp $2400.w,X		; DD 00 24
	rti		; 40

	cpx $F50C.w		; EC 0C F5
	brk $25.b		; 00 25
	rti		; 40

	tas		; 1B
	inc $D3F2.w,X		; FE F2 D3
	php		; 08
	brk $48.b		; 00 48
	asl $DBE2.w		; 0E E2 DB
	php		; 08
	cop $48.b		; 02 48
	inc $E3F2.w,X		; FE F2 E3
	php		; 08
	tsb $48.b		; 04 48
	inc $F3F2.w,X		; FE F2 F3
	php		; 08
	asl $48.b		; 06 48
	inc $D502.w		; EE 02 D5
	php		; 08
	php		; 08
	pha		; 48
	asl $D3EA.w		; 0E EA D3
	brk $0A.b		; 00 0A
	rti		; 40

	asl $EBEA.w		; 0E EA EB
	brk $0B.b		; 00 0B
	rti		; 40

	asl $E2.b,X		; 16 E2
	xba		; EB
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F3EA.w		; 0E EA F3
	brk $0D.b		; 00 0D
	rti		; 40

	asl $FBEA.w		; 0E EA FB
	brk $0E.b		; 00 0E
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $0F00.w		; ED 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b,X		; F5 00
	inc A		; 1A
	rti		; 40

	asl $E2.b,X		; 16 E2
	xce		; FB
	brk $1B.b		; 00 1B
	rti		; 40

	inc $E50A.w		; EE 0A E5
	brk $1C.b		; 00 1C
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b		; E5 00
	ora $1E40.w,X		; 1D 40 1E
	phx		; DA
	cpx #$00.b		; E0 00
	asl $2640.w,X		; 1E 40 26
	cmp ($E0.b)		; D2 E0
	brk $1F.b		; 00 1F
	rti		; 40

	inc $12.b		; E6 12
	phx		; DA
	brk $20.b		; 00 20
	rti		; 40

	inc $12.b		; E6 12
	sep #$00		; E2 00
	and ($40.b,X)		; 21 40
	xce		; FB
	sbc $00FD.w,X		; FD FD 00
	jsl $CC2C40.l		; 22 40 2C CC
	cpx #$00.b		; E0 00
	and $40.b,S		; 23 40
	bit $C4.b,X		; 34 C4
	cpx #$00.b		; E0 00
	and $40.b,S		; 23 40
	bit $E0BC.w,X		; 3C BC E0
	brk $23.b		; 00 23
	rti		; 40

	mvp $E0,$B4		; 44 B4 E0
	brk $23.b		; 00 23
	rti		; 40

	jmp $E0AC.w		; 4C AC E0
	brk $23.b		; 00 23
	rti		; 40

	mvn $E0,$A4		; 54 A4 E0
	brk $23.b		; 00 23
	rti		; 40

	jmp $00E09C.l		; 5C 9C E0 00
	and $40.b,S		; 23 40
	ora ($EE.b,S),Y		; 13 EE
	cop $CD.b		; 02 CD
	php		; 08
	brk $48.b		; 00 48
	inc $CDF2.w,X		; FE F2 CD
	php		; 08
	cop $48.b		; 02 48
	beq   0.b		; F0 00
	cmp $0408.w,X		; DD 08 04
	pha		; 48
	brk $F0.b		; 00 F0
	cmp $0608.w,X		; DD 08 06
	pha		; 48
	asl $EDEA.w		; 0E EA ED
	brk $08.b		; 00 08
	rti		; 40

	inc $ED0A.w		; EE 0A ED
	brk $09.b		; 00 09
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $0A00.w		; ED 00 0A
	rti		; 40

	inc $EDFA.w,X		; FE FA ED
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $0C00.w		; ED 00 0C
	rti		; 40

	bpl -24.b		; 10 E8
	cmp $0D00.w,X		; DD 00 0D
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $00.b		; E5 00
	asl $FB40.w		; 0E 40 FB
	sbc $00FD.w,X		; FD FD 00
	ora $F50340.l		; 0F 40 03 F5
	sbc $1800.w,X		; FD 00 18
	rti		; 40

	phd		; 0B
	sbc $00FD.w		; ED FD 00
	ora $1340.w,Y		; 19 40 13
	sbc $FD.b		; E5 FD
	brk $1A.b		; 00 1A
	rti		; 40

	pea $F504.w		; F4 04 F5
	brk $1B.b		; 00 1B
	rti		; 40

	jsr ($F5FC.w,X)		; FC FC F5
	brk $1C.b		; 00 1C
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b,X		; F5 00
	ora $0C40.w,X		; 1D 40 0C
	cpx $00F5.w		; EC F5 00
	asl $0F40.w,X		; 1E 40 0F
	inc $FA.b,X		; F6 FA
	stp		; DB
	php		; 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	pea $EBFC.w		; F4 FC EB
	php		; 08
	tsb $48.b		; 04 48
	tsb $EC.b		; 04 EC
	xba		; EB
	php		; 08
	asl $48.b		; 06 48
	inc $FBFA.w,X		; FE FA FB
	brk $08.b		; 00 08
	rti		; 40

	asl $F2.b		; 06 F2
	xce		; FB
	brk $09.b		; 00 09
	rti		; 40

	inc $CBFA.w,X		; FE FA CB
	brk $0A.b		; 00 0A
	rti		; 40

	asl $F2.b		; 06 F2
	wai		; CB
	brk $0B.b		; 00 0B
	rti		; 40

	sbc $D3FF.w,Y		; F9 FF D3
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	cmp ($00.b,S),Y		; D3 00
	ora $0940.w		; 0D 40 09
	sbc $0E00D3.l		; EF D3 00 0E
	rti		; 40

	inc $FB0A.w		; EE 0A FB
	brk $0F.b		; 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	xce		; FB
	brk $18.b		; 00 18
	rti		; 40

	trb $E4.b		; 14 E4
	xba		; EB
	brk $19.b		; 00 19
	rti		; 40

	trb $E4.b		; 14 E4
	sbc ($00.b,S),Y		; F3 00
	inc A		; 1A
	rti		; 40

	bpl -18.b		; 10 EE
	cop $F3.b		; 02 F3
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	sbc $08.b,S		; E3 08
	tsb $48.b		; 04 48
	inc $F3F2.w,X		; FE F2 F3
	php		; 08
	asl $48.b		; 06 48
	sed		; F8
	sed		; F8
	cmp ($08.b,S),Y		; D3 08
	php		; 08
	pha		; 48
	rol $C2.b,X		; 36 C2
	sbc ($00.b,S),Y		; F3 00
	asl A		; 0A
	rti		; 40

	inc $CBFA.w,X		; FE FA CB
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F3EA.w		; 0E EA F3
	brk $0C.b		; 00 0C
	rti		; 40

	asl $FBEA.w		; 0E EA FB
	brk $0D.b		; 00 0D
	rti		; 40

	asl $E2.b,X		; 16 E2
	inc $0E00.w		; EE 00 0E
	rti		; 40

	asl $F0DA.w,X		; 1E DA F0
	brk $0F.b		; 00 0F
	rti		; 40

	rol $D2.b		; 26 D2
	beq   0.b		; F0 00
	inc A		; 1A
	rti		; 40

	rol $F0CA.w		; 2E CA F0
	brk $1B.b		; 00 1B
	rti		; 40

	asl $F2.b		; 06 F2
	wai		; CB
	brk $1C.b		; 00 1C
	rti		; 40

	php		; 08
	beq -45.b		; F0 D3
	brk $1D.b		; 00 1D
	rti		; 40

	php		; 08
	beq -37.b		; F0 DB
	brk $1E.b		; 00 1E
	rti		; 40

	bpl -38.b		; 10 DA
	asl $E1.b,X		; 16 E1
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $E1.b		; 06 E1
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $E1.b,X		; F6 E1
	php		; 08
	tsb $48.b		; 04 48
	cpx $F104.w		; EC 04 F1
	php		; 08
	asl $48.b		; 06 48
	jsr ($F1F4.w,X)		; FC F4 F1
	php		; 08
	php		; 08
	pha		; 48
	sbc $FB.b,X		; F5 FB
	cmp ($08.b),Y		; D1 08
	asl A		; 0A
	pha		; 48
	ora $EB.b		; 05 EB
	cmp ($08.b),Y		; D1 08
	tsb $E448.w		; 0C 48 E4
	trb $F1.b		; 14 F1
	brk $0E.b		; 00 0E
	rti		; 40

	cmp ($26.b)		; D2 26
	inc $00.b		; E6 00
	ora $EE0A40.l		; 0F 40 0A EE
	sbc ($00.b,X)		; E1 00
	asl $0C40.w,X		; 1E 40 0C
	cpx $00F1.w		; EC F1 00
	ora $EC0C40.l,X		; 1F 40 0C EC
	sbc $2000.w,Y		; F9 00 20
	rti		; 40

	sbc $13.b		; E5 13
	cmp $2100.w,Y		; D9 00 21
	rti		; 40

	sbc $D90B.w		; ED 0B D9
	brk $22.b		; 00 22
	rti		; 40

	asl A		; 0A
	inc $00E9.w		; EE E9 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $00C9.w		; ED C9 00
	bit $40.b		; 24 40
	ora ($08.b),Y		; 11 08
	inx		; E8
	cmp $0008.w,Y		; D9 08 00
	pha		; 48
	php		; 08
	inx		; E8
	sbc #$08.b		; E9 08
	cop $48.b		; 02 48
	brk $F8.b		; 00 F8
	xba		; EB
	brk $04.b		; 00 04
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,S),Y		; F3 00
	ora $40.b		; 05 40
	brk $F8.b		; 00 F8
	xce		; FB
	brk $06.b		; 00 06
	rti		; 40

	sed		; F8
	brk $DC.b		; 00 DC
	brk $07.b		; 00 07
	rti		; 40

	sed		; F8
	brk $E4.b		; 00 E4
	brk $08.b		; 00 08
	rti		; 40

	sed		; F8
	brk $EC.b		; 00 EC
	brk $09.b		; 00 09
	rti		; 40

	brk $F8.b		; 00 F8
	stp		; DB
	brk $0A.b		; 00 0A
	rti		; 40

	brk $F8.b		; 00 F8
	sbc $00.b,S		; E3 00
	phd		; 0B
	rti		; 40

	clc		; 18
	cpx #$E9.b		; E0 E9
	brk $0C.b		; 00 0C
	rti		; 40

	clc		; 18
	cpx #$F1.b		; E0 F1
	brk $0D.b		; 00 0D
	rti		; 40

	php		; 08
	beq  -7.b		; F0 F9
	brk $0E.b		; 00 0E
	rti		; 40

	bpl -24.b		; 10 E8
	sbc $0F00.w,Y		; F9 00 0F
	rti		; 40

	clc		; 18
	cpx #$F9.b		; E0 F9
	brk $14.b		; 00 14
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp ($00.b),Y		; D1 00
	ora $40.b,X		; 15 40
	ora $F5.b,S		; 03 F5
	cmp ($00.b,S),Y		; D3 00
	asl $40.b,X		; 16 40
	asl $13.b,X		; 16 13
	cmp $08CB.w,X		; DD CB 08
	brk $48.b		; 00 48
	ora ($DD.b,S),Y		; 13 DD
	stp		; DB
	php		; 08
	cop $48.b		; 02 48
	and $CD.b,S		; 23 CD
	sbc $08.b,S		; E3 08
	tsb $48.b		; 04 48
	and $CD.b,S		; 23 CD
	sbc ($08.b,S),Y		; F3 08
	asl $48.b		; 06 48
	ora ($DD.b,S),Y		; 13 DD
	xba		; EB
	php		; 08
	php		; 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	phx		; DA
	php		; 08
	asl A		; 0A
	pha		; 48
	ora $ED.b,S		; 03 ED
	nop		; EA
	php		; 08
	tsb $5048.w		; 0C 48 50
	tay		; A8
	inc $00.b		; E6 00
	asl $2340.w		; 0E 40 23
	cmp $CB.b,X		; D5 CB
	brk $0F.b		; 00 0F
	rti		; 40

	and $D5.b,S		; 23 D5
	cmp ($00.b,S),Y		; D3 00
	asl $2340.w,X		; 1E 40 23
	cmp $DB.b,X		; D5 DB
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	xce		; FB
	brk $20.b		; 00 20
	rti		; 40

	tas		; 1B
	cmp $00FB.w,X		; DD FB 00
	and ($40.b,X)		; 21 40
	and ($C5.b,S),Y		; 33 C5
	cpx $00.b		; E4 00
	jsl $B54340.l		; 22 40 43 B5
	sbc $00.b		; E5 00
	and $40.b,S		; 23 40
	xce		; FB
	sbc $00E0.w,X		; FD E0 00
	bit $40.b		; 24 40
	xce		; FB
	sbc $00E8.w,X		; FD E8 00
	and $40.b		; 25 40
	xce		; FB
	sbc $00F0.w,X		; FD F0 00
	rol $40.b		; 26 40
	phd		; 0B
	sbc $00D2.w		; ED D2 00
	and [$40.b]		; 27 40
	phd		; 0B
	sbc $00FA.w		; ED FA 00
	plp		; 28
	rti		; 40

	tsa		; 3B
	lda $00E3.w,X		; BD E3 00
	and #$40.b		; 29 40
	pha		; 48
	bcs -26.b		; B0 E6
	brk $2A.b		; 00 2A
	rti		; 40

	ora $F8F8.w,Y		; 19 F8 F8
	tyx		; BB
	pha		; 48
	brk $08.b		; 00 08
	sbc [$09.b]		; E7 09
	sbc $48.b,S		; E3 48
	cop $08.b		; 02 08
	sbc [$F9.b],Y		; F7 F9
	sbc $48.b,S		; E3 48
	tsb $08.b		; 04 08
	inc $FA.b,X		; F6 FA
	cmp ($48.b,S),Y		; D3 48
	asl $08.b		; 06 08
	inc $0A.b		; E6 0A
	cmp ($48.b,S),Y		; D3 48
	php		; 08
	php		; 08
	beq   8.b		; F0 08
	cmp $40.b,S		; C3 40
	asl A		; 0A
	brk $00.b		; 00 00
	sed		; F8
	wai		; CB
	rti		; 40

	phd		; 0B
	brk $F8.b		; 00 F8
	brk $CB.b		; 00 CB
	rti		; 40

	tsb $F000.w		; 0C 00 F0
	php		; 08
	wai		; CB
	rti		; 40

	ora $0800.w		; 0D 00 08
	beq -63.b		; F0 C1
	rti		; 40

	asl $0800.w		; 0E 00 08
	beq -55.b		; F0 C9
	rti		; 40

	ora $11E700.l		; 0F 00 E7 11
	sbc ($40.b,S),Y		; F3 40
	inc A		; 1A
	brk $DF.b		; 00 DF
	ora $40F3.w,Y		; 19 F3 40
	tas		; 1B
	brk $09.b		; 00 09
	sbc $1C40FB.l		; EF FB 40 1C
	brk $E8.b		; 00 E8
	bpl -53.b		; 10 CB
	rti		; 40

	ora $0700.w,X		; 1D 00 07
	sbc ($EB.b),Y		; F1 EB
	rti		; 40

	asl $0700.w,X		; 1E 00 07
	sbc ($F3.b),Y		; F1 F3
	rti		; 40

	ora $F9FF00.l,X		; 1F 00 FF F9
	sbc ($40.b,S),Y		; F3 40
	jsr $F700.w		; 20 00 F7
	ora ($F3.b,X)		; 01 F3
	rti		; 40

	and ($00.b,X)		; 21 00
	cpx #$18.b		; E0 18
	wai		; CB
	rti		; 40

	jsl $EF0900.l		; 22 00 09 EF
	sbc ($40.b,S),Y		; F3 40
	and $00.b,S		; 23 00
	dec $D31A.w,X		; DE 1A D3
	rti		; 40

	bit $00.b		; 24 00
	dec $DB1A.w,X		; DE 1A DB
	rti		; 40

	and $00.b		; 25 00
	jsr ($FBFC.w,X)		; FC FC FB
	rti		; 40

	rol $00.b		; 26 00
	sbc $15.b,S		; E3 15
	xce		; FB
	rti		; 40

	and [$00.b]		; 27 00
	ora ($01.b)		; 12 01
	sbc $0048B5.l		; EF B5 48 00
	php		; 08
	ora ($EF.b,X)		; 01 EF
	cmp $48.b		; C5 48
	cop $08.b		; 02 08
	sbc ($FF.b),Y		; F1 FF
	cmp $48.b		; C5 48
	tsb $08.b		; 04 08
	sbc ($0F.b,X)		; E1 0F
	cmp $48.b		; C5 48
	asl $08.b		; 06 08
	sbc ($FF.b),Y		; F1 FF
	cmp $48.b,X		; D5 48
	php		; 08
	php		; 08
	sbc ($0F.b,X)		; E1 0F
	cmp $48.b,X		; D5 48
	asl A		; 0A
	php		; 08
	sbc $E503.w		; ED 03 E5
	pha		; 48
	tsb $EA08.w		; 0C 08 EA
	asl $40BD.w		; 0E BD 40
	asl $E200.w		; 0E 00 E2
	asl $BD.b,X		; 16 BD
	rti		; 40

	ora $1FD900.l		; 0F 00 D9 1F
	cmp [$40.b]		; C7 40
	asl $D900.w,X		; 1E 00 D9
	ora $1F40CF.l,X		; 1F CF 40 1F
	brk $EF.b		; 00 EF
	ora #$F5.b		; 09 F5
	rti		; 40

	jsr $EF00.w		; 20 00 EF
	ora #$FD.b		; 09 FD
	rti		; 40

	and ($00.b,X)		; 21 00
	sbc [$11.b]		; E7 11
	sbc $2240.w,X		; FD 40 22
	brk $06.b		; 00 06
	sbc ($AD.b)		; F2 AD
	rti		; 40

	and $00.b,S		; 23 00
	sbc ($06.b)		; F2 06
	lda $2440.w,X		; BD 40 24
	brk $E5.b		; 00 E5
	ora ($E5.b,S),Y		; 13 E5
	rti		; 40

	and $00.b		; 25 00
	sbc $13.b		; E5 13
	sbc $2640.w		; ED 40 26
	brk $18.b		; 00 18
	sep #$0E		; E2 0E
	lda ($48.b,S),Y		; B3 48
	brk $08.b		; 00 08
	dec $1A.b,X		; D6 1A
	xba		; EB
	pha		; 48
	cop $08.b		; 02 08
	cmp $C323.w		; CD 23 C3
	pha		; 48
	tsb $08.b		; 04 08
	sbc $C303.w		; ED 03 C3
	pha		; 48
	asl $08.b		; 06 08
	pea $D3FC.w		; F4 FC D3
	pha		; 48
	php		; 08
	php		; 08
	cpx $0C.b		; E4 0C
	cmp ($48.b,S),Y		; D3 48
	asl A		; 0A
	php		; 08
	pei ($1C.b)		; D4 1C
	cmp ($48.b,S),Y		; D3 48
	tsb $EE08.w		; 0C 08 EE
	asl A		; 0A
	xba		; EB
	rti		; 40

	asl $E600.w		; 0E 00 E6
	ora ($EB.b)		; 12 EB
	rti		; 40

	ora $0AEE00.l		; 0F 00 EE 0A
	sbc ($40.b,S),Y		; F3 40
	asl $F200.w,X		; 1E 00 F2
	asl $FB.b		; 06 FB
	rti		; 40

	ora $1BDD00.l,X		; 1F 00 DD 1B
	wai		; CB
	rti		; 40

	jsr $EA00.w		; 20 00 EA
	asl $40FB.w		; 0E FB 40
	and ($00.b,X)		; 21 00
	cmp ($26.b)		; D2 26
	tyx		; BB
	rti		; 40

	jsl $13E500.l		; 22 00 E5 13
	cmp $40.b,S		; C3 40
	and $00.b,S		; 23 00
	sbc $13.b		; E5 13
	wai		; CB
	rti		; 40

	bit $00.b		; 24 00
	phx		; DA
	asl $40B3.w,X		; 1E B3 40
	and $00.b		; 25 00
	phx		; DA
	asl $40BB.w,X		; 1E BB 40
	rol $00.b		; 26 00
	inc $02.b,X		; F6 02
	xba		; EB
	rti		; 40

	and [$00.b]		; 27 00
	pea $E304.w		; F4 04 E3
	rti		; 40

	plp		; 28
	brk $EC.b		; 00 EC
	tsb $40E3.w		; 0C E3 40
	and #$00.b		; 29 00
	cpx $14.b		; E4 14
	sbc $40.b,S		; E3 40
	rol A		; 2A
	brk $DC.b		; 00 DC
	trb $40E3.w		; 1C E3 40
	pld		; 2B
	brk $D4.b		; 00 D4
	bit $E3.b		; 24 E3
	rti		; 40

	bit $1A00.w		; 2C 00 1A
	inc $AB02.w		; EE 02 AB
	php		; 08
	brk $48.b		; 00 48
	inc $DB02.w		; EE 02 DB
	php		; 08
	cop $48.b		; 02 48
	xba		; EB
	ora $C3.b		; 05 C3
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $C3.b,X		; F5 C3
	php		; 08
	asl $48.b		; 06 48
	inc $ABFA.w,X		; FE FA AB
	brk $08.b		; 00 08
	rti		; 40

	inc $B3FA.w,X		; FE FA B3
	brk $09.b		; 00 09
	rti		; 40

	inc $BB0A.w		; EE 0A BB
	brk $0A.b		; 00 0A
	rti		; 40

	inc $02.b,X		; F6 02
	tyx		; BB
	brk $0B.b		; 00 0B
	rti		; 40

	inc $BBFA.w,X		; FE FA BB
	brk $0C.b		; 00 0C
	rti		; 40

	inc $DBFA.w,X		; FE FA DB
	brk $0D.b		; 00 0D
	rti		; 40

	inc $E3FA.w,X		; FE FA E3
	brk $0E.b		; 00 0E
	rti		; 40

	inc $EB0A.w		; EE 0A EB
	brk $0F.b		; 00 0F
	rti		; 40

	inc $02.b,X		; F6 02
	xba		; EB
	brk $18.b		; 00 18
	rti		; 40

	inc $EBFA.w,X		; FE FA EB
	brk $19.b		; 00 19
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	brk $1A.b		; 00 1A
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,S),Y		; F3 00
	tas		; 1B
	rti		; 40

	sbc ($06.b)		; F2 06
	sta ($00.b,S),Y		; 93 00
	trb $F240.w		; 1C 40 F2
	asl $9B.b		; 06 9B
	brk $1D.b		; 00 1D
	rti		; 40

	inc $F3FA.w,X		; FE FA F3
	brk $1E.b		; 00 1E
	rti		; 40

	inc $FB0A.w		; EE 0A FB
	brk $1F.b		; 00 1F
	rti		; 40

	xba		; EB
	ora $00D3.w		; 0D D3 00
	jsr $F340.w		; 20 40 F3
	ora $D3.b		; 05 D3
	brk $21.b		; 00 21
	rti		; 40

	xce		; FB
	sbc $00D3.w,X		; FD D3 00
	jsl $F50340.l		; 22 40 03 F5
	cmp ($00.b,S),Y		; D3 00
	and $40.b,S		; 23 40
	pea $A304.w		; F4 04 A3
	brk $24.b		; 00 24
	rti		; 40

	jsr ($A3FC.w,X)		; FC FC A3
	brk $25.b		; 00 25
	rti		; 40

	ora $02EE.w,Y		; 19 EE 02
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	inc $AB02.w		; EE 02 AB
	php		; 08
	cop $48.b		; 02 48
	sbc #$07.b		; E9 07
	cmp $08.b,S		; C3 08
	tsb $48.b		; 04 48
	sbc $C3F7.w,Y		; F9 F7 C3
	php		; 08
	asl $48.b		; 06 48
	inc $B3FA.w,X		; FE FA B3
	brk $08.b		; 00 08
	rti		; 40

	inc $BB0A.w		; EE 0A BB
	brk $09.b		; 00 09
	rti		; 40

	inc $02.b,X		; F6 02
	tyx		; BB
	brk $0A.b		; 00 0A
	rti		; 40

	inc $BBFA.w,X		; FE FA BB
	brk $0B.b		; 00 0B
	rti		; 40

	inc $D3FA.w,X		; FE FA D3
	brk $0C.b		; 00 0C
	rti		; 40

	inc $DBFA.w,X		; FE FA DB
	brk $0D.b		; 00 0D
	rti		; 40

	asl $F2.b		; 06 F2
	ldy $00.b,X		; B4 00
	asl $0640.w		; 0E 40 06
	sbc ($BC.b)		; F2 BC
	brk $0F.b		; 00 0F
	rti		; 40

	beq   8.b		; F0 08
	xba		; EB
	brk $18.b		; 00 18
	rti		; 40

	sed		; F8
	brk $EB.b		; 00 EB
	brk $19.b		; 00 19
	rti		; 40

	brk $F8.b		; 00 F8
	xba		; EB
	brk $1A.b		; 00 1A
	rti		; 40

	brk $F8.b		; 00 F8
	sbc ($00.b,S),Y		; F3 00
	tas		; 1B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,S),Y		; F3 00
	trb $EE40.w		; 1C 40 EE
	asl A		; 0A
	xce		; FB
	brk $1D.b		; 00 1D
	rti		; 40

	inc $ABFA.w,X		; FE FA AB
	brk $1E.b		; 00 1E
	rti		; 40

	ora $F5.b,S		; 03 F5
	xce		; FB
	brk $1F.b		; 00 1F
	rti		; 40

	pea $A304.w		; F4 04 A3
	brk $20.b		; 00 20
	rti		; 40

	jsr ($A3FC.w,X)		; FC FC A3
	brk $21.b		; 00 21
	rti		; 40

	pea $E304.w		; F4 04 E3
	brk $22.b		; 00 22
	rti		; 40

	jsr ($E3FC.w,X)		; FC FC E3
	brk $23.b		; 00 23
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $00.b,S		; E3 00
	bit $40.b		; 24 40
	clc		; 18
	sbc [$F9.b],Y		; F7 F9
	lda $08.b,X		; B5 08
	brk $48.b		; 00 48
	sbc [$09.b]		; E7 09
	lda $0208.w,X		; BD 08 02
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b		; C5 08
	tsb $48.b		; 04 48
	sbc [$09.b]		; E7 09
	cmp $0608.w		; CD 08 06
	pha		; 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,X		; D5 08
	php		; 08
	pha		; 48
	inc $AD0A.w		; EE 0A AD
	brk $0A.b		; 00 0A
	rti		; 40

	inc $02.b,X		; F6 02
	lda $0B00.w		; AD 00 0B
	rti		; 40

	inc $ADFA.w,X		; FE FA AD
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00EDF9.l,X		; FF F9 ED 00
	ora $EF40.w		; 0D 40 EF
	ora #$FD.b		; 09 FD
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00B509.l		; EF 09 B5 00
	ora $11E740.l		; 0F 40 E7 11
	cmp $1A00.w,X		; DD 00 1A
	rti		; 40

	sbc $00DD09.l		; EF 09 DD 00
	tas		; 1B
	rti		; 40

	sbc $00E509.l		; EF 09 E5 00
	trb $F740.w		; 1C 40 F7
	ora ($E5.b,X)		; 01 E5
	brk $1D.b		; 00 1D
	rti		; 40

	sbc $00E5F9.l,X		; FF F9 E5 00
	asl $0740.w,X		; 1E 40 07
	sbc ($B8.b),Y		; F1 B8
	brk $1F.b		; 00 1F
	rti		; 40

	ora $00B8E9.l		; 0F E9 B8 00
	jsr $F040.w		; 20 40 F0
	php		; 08
	sbc $00.b,X		; F5 00
	and ($40.b,X)		; 21 40
	brk $F8.b		; 00 F8
	sbc $00.b,X		; F5 00
	jsl $05F340.l		; 22 40 F3 05
	lda $00.b		; A5 00
	and $40.b,S		; 23 40
	xce		; FB
	sbc $00A5.w,X		; FD A5 00
	bit $40.b		; 24 40
	sbc ($05.b,S),Y		; F3 05
	sbc $2500.w		; ED 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc $2600.w,X		; FD 00 26
	rti		; 40

	inc A		; 1A
	dec $1A.b,X		; D6 1A
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	inc $0A.b		; E6 0A
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	sbc [$09.b]		; E7 09
	sbc ($08.b,S),Y		; F3 08
	tsb $48.b		; 04 48
	cpx $0C.b		; E4 0C
	cmp $08.b,S		; C3 08
	asl $48.b		; 06 48
	inc $02.b,X		; F6 02
	stp		; DB
	brk $08.b		; 00 08
	rti		; 40

	dec $22.b,X		; D6 22
	sbc $00.b,S		; E3 00
	ora #$40.b		; 09 40
	dec $E31A.w,X		; DE 1A E3
	brk $0A.b		; 00 0A
	rti		; 40

	inc $12.b		; E6 12
	sbc $00.b,S		; E3 00
	phd		; 0B
	rti		; 40

	inc $E30A.w		; EE 0A E3
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b,S		; E3 00
	ora $FE40.w		; 0D 40 FE
	plx		; FA
	sbc $00.b,S		; E3 00
	asl $F740.w		; 0E 40 F7
	ora ($F3.b,X)		; 01 F3
	brk $0F.b		; 00 0F
	rti		; 40

	sbc [$01.b],Y		; F7 01
	xce		; FB
	brk $18.b		; 00 18
	rti		; 40

	cmp [$21.b],Y		; D7 21
	sbc [$00.b],Y		; F7 00
	ora $DF40.w,Y		; 19 40 DF
	ora $00F7.w,Y		; 19 F7 00
	inc A		; 1A
	rti		; 40

	cmp $EB1F.w,Y		; D9 1F EB
	brk $1B.b		; 00 1B
	rti		; 40

	sbc ($17.b,X)		; E1 17
	xba		; EB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc #$0F.b		; E9 0F
	xba		; EB
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($07.b),Y		; F1 07
	xba		; EB
	brk $1E.b		; 00 1E
	rti		; 40

	sbc $EBFF.w,Y		; F9 FF EB
	brk $1F.b		; 00 1F
	rti		; 40

	nop		; EA
	asl $00BB.w		; 0E BB 00
	jsr $F240.w		; 20 40 F2
	asl $BB.b		; 06 BB
	brk $21.b		; 00 21
	rti		; 40

	jmp.w [$CB1C]		; DC 1C CB
	brk $22.b		; 00 22
	rti		; 40

	inc $02.b,X		; F6 02
	cmp ($00.b,S),Y		; D3 00
	and $40.b,S		; 23 40
	pea $C304.w		; F4 04 C3
	brk $24.b		; 00 24
	rti		; 40

	pea $CB04.w		; F4 04 CB
	brk $25.b		; 00 25
	rti		; 40

	ora ($F7.b,S),Y		; 13 F7
	sbc $08B3.w,Y		; F9 B3 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	sbc $08D301.l		; EF 01 D3 08
	tsb $48.b		; 04 48
	cmp $08D311.l,X		; DF 11 D3 08
	asl $48.b		; 06 48
	cmp $08BB11.l,X		; DF 11 BB 08
	php		; 08
	pha		; 48
	sbc #$07.b		; E9 07
	xba		; EB
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $E30A.w		; EE 0A E3
	brk $0C.b		; 00 0C
	rti		; 40

	inc $02.b,X		; F6 02
	sbc $00.b,S		; E3 00
	ora $F640.w		; 0D 40 F6
	cop $AB.b		; 02 AB
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $00B309.l		; EF 09 B3 00
	ora $09EF40.l		; 0F 40 EF 09
	tyx		; BB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00C309.l		; EF 09 C3 00
	ora $DF40.w,X		; 1D 40 DF
	ora $00CB.w,Y		; 19 CB 00
	asl $E740.w,X		; 1E 40 E7
	ora ($CB.b),Y		; 11 CB
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00CB09.l		; EF 09 CB 00
	jsr $0740.w		; 20 40 07
	sbc ($C4.b),Y		; F1 C4
	brk $21.b		; 00 21
	rti		; 40

	inc $ABFA.w,X		; FE FA AB
	brk $22.b		; 00 22
	rti		; 40

	sbc #$0F.b		; E9 0F
	xce		; FB
	brk $23.b		; 00 23
	rti		; 40

	sbc ($07.b),Y		; F1 07
	xce		; FB
	brk $24.b		; 00 24
	rti		; 40

	bit $E6.b		; 24 E6
	asl A		; 0A
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	sep #$0E		; E2 0E
	sbc $08.b,S		; E3 08
	cop $48.b		; 02 48
	sbc $0D.b,S		; E3 0D
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $B1.b,X		; F5 B1
	php		; 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $B1.b		; E5 B1
	php		; 08
	php		; 08
	pha		; 48
	phd		; 0B
	sbc $C1.b		; E5 C1
	php		; 08
	asl A		; 0A
	pha		; 48
	cpx $0C.b		; E4 0C
	plb		; AB
	php		; 08
	tsb $2848.w		; 0C 48 28
	bne -54.b		; D0 CA
	brk $0E.b		; 00 0E
	rti		; 40

	ora $A4DF.w,Y		; 19 DF A4
	brk $0F.b		; 00 0F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	cmp [$00.b]		; C7 00
	asl $F240.w,X		; 1E 40 F2
	asl $E3.b		; 06 E3
	brk $1F.b		; 00 1F
	rti		; 40

	inc $FB0A.w		; EE 0A FB
	brk $20.b		; 00 20
	rti		; 40

	tas		; 1B
	cmp $00C3.w,X		; DD C3 00
	and ($40.b,X)		; 21 40
	xba		; EB
	ora $00F3.w		; 0D F3 00
	jsl $02F640.l		; 22 40 F6 02
	cmp ($00.b,S),Y		; D3 00
	and $40.b,S		; 23 40
	sbc ($05.b,S),Y		; F3 05
	tyx		; BB
	brk $24.b		; 00 24
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	cmp $00.b,S		; C3 00
	and $40.b		; 25 40
	sbc $15.b,S		; E3 15
	wai		; CB
	brk $26.b		; 00 26
	rti		; 40

	xba		; EB
	ora $00CB.w		; 0D CB 00
	and [$40.b]		; 27 40
	sbc ($05.b,S),Y		; F3 05
	wai		; CB
	brk $28.b		; 00 28
	rti		; 40

	and $D5.b,S		; 23 D5
	lda $00.b		; A5 00
	ora $BD3B40.l		; 0F 40 3B BD
	lda $00.b,X		; B5 00
	ora $02F640.l		; 0F 40 F6 02
	stp		; DB
	brk $29.b		; 00 29
	rti		; 40

	ora $00A5E9.l		; 0F E9 A5 00
	ora $C83040.l		; 0F 40 30 C8
	cpy $0F00.w		; CC 00 0F
	rti		; 40

	xce		; FB
	sbc $00C1.w,X		; FD C1 00
	rol A		; 2A
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp ($00.b,X)		; C1 00
	pld		; 2B
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp #$00.b		; C9 00
	bit $3840.w		; 2C 40 38
	cpy #$C7.b		; C0 C7
	brk $0F.b		; 00 0F
	rti		; 40

	pea $AB04.w		; F4 04 AB
	brk $2D.b		; 00 2D
	rti		; 40

	pea $B304.w		; F4 04 B3
	brk $2E.b		; 00 2E
	rti		; 40

	bit $C4.b,X		; 34 C4
	ldx $0F00.w		; AE 00 0F
	rti		; 40

	bit $BFBC.w,X		; 3C BC BF
	brk $0F.b		; 00 0F
	rti		; 40

	bit $A8CC.w		; 2C CC A8
	brk $0F.b		; 00 0F
	rti		; 40

	jsr ($A9FC.w,X)		; FC FC A9
	brk $2F.b		; 00 2F
	rti		; 40

	ora $F3.b		; 05 F3
	lda [$00.b]		; A7 00
	ora $E12040.l		; 0F 40 20 E1
	ora $0008D3.l		; 0F D3 08 00
	pha		; 48
	inc A		; 1A
	dec $91.b,X		; D6 91
	php		; 08
	cop $48.b		; 02 48
	jmp.w [$A314]		; DC 14 A3
	php		; 08
	tsb $48.b		; 04 48
	cpx $A304.w		; EC 04 A3
	php		; 08
	asl $48.b		; 06 48
	jmp.w [$B314]		; DC 14 B3
	php		; 08
	php		; 08
	pha		; 48
	cpx $B304.w		; EC 04 B3
	php		; 08
	asl A		; 0A
	pha		; 48
	jmp.w [$C314]		; DC 14 C3
	php		; 08
	tsb $EC48.w		; 0C 48 EC
	tsb $C3.b		; 04 C3
	php		; 08
	asl $FC48.w		; 0E 48 FC
	pea $08B8.w		; F4 B8 08
	jsr $1A48.w		; 20 48 1A
	dec $008E.w,X		; DE 8E 00
	jsl $16E240.l		; 22 40 E2 16
	stx $00.b,Y		; 96 00
	and $40.b,S		; 23 40
	dec A		; 3A
	ldx $009E.w,Y		; BE 9E 00
	bit $40.b		; 24 40
	rol A		; 2A
	dec $0099.w		; CE 99 00
	and $40.b		; 25 40
	inc $FB0A.w		; EE 0A FB
	brk $26.b		; 00 26
	rti		; 40

	and ($C6.b)		; 32 C6
	txs		; 9A
	brk $27.b		; 00 27
	rti		; 40

	xba		; EB
	ora $00EB.w		; 0D EB 00
	plp		; 28
	rti		; 40

	jmp.w [$9B1C]		; DC 1C 9B
	brk $29.b		; 00 29
	rti		; 40

	trb $E4.b		; 14 E4
	tyx		; BB
	brk $2A.b		; 00 2A
	rti		; 40

	inc $F30A.w		; EE 0A F3
	brk $2B.b		; 00 2B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	cmp ($00.b,S),Y		; D3 00
	bit $F140.w		; 2C 40 F1
	ora [$DB.b]		; 07 DB
	brk $2D.b		; 00 2D
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sty $2E00.w		; 8C 00 2E
	rti		; 40

	sbc $8FFF.w,Y		; F9 FF 8F
	brk $2E.b		; 00 2E
	rti		; 40

	phx		; DA
	asl $0093.w,X		; 1E 93 00
	and $EC0C40.l		; 2F 40 0C EC
	lda $00.b,X		; B5 00
	and ($40.b)		; 32 40
	tsb $BDEC.w		; 0C EC BD
	brk $33.b		; 00 33
	rti		; 40

	trb $E4.b		; 14 E4
	sta $403400.l,X		; 9F 00 34 40
	nop		; EA
	asl $00E3.w		; 0E E3 00
	and $40.b,X		; 35 40
	jsr ($C8FC.w,X)		; FC FC C8
	brk $36.b		; 00 36
	rti		; 40

	tsb $F4.b		; 04 F4
	iny		; C8
	brk $37.b		; 00 37
	rti		; 40

	sbc $930B.w		; ED 0B 93
	brk $2E.b		; 00 2E
	rti		; 40

	ora $F3.b		; 05 F3
	sta $2E00.w		; 8D 00 2E
	rti		; 40

	ora ($F6.b,S),Y		; 13 F6
	plx		; FA
	tax		; AA
	php		; 08
	brk $48.b		; 00 48
	pea $BAFC.w		; F4 FC BA
	php		; 08
	cop $48.b		; 02 48
	tsb $EC.b		; 04 EC
	tsx		; BA
	php		; 08
	tsb $48.b		; 04 48
	sbc $CA03.w		; ED 03 CA
	php		; 08
	asl $48.b		; 06 48
	sbc $CAF3.w,X		; FD F3 CA
	php		; 08
	php		; 08
	pha		; 48
	sbc $FB.b,X		; F5 FB
	phx		; DA
	php		; 08
	asl A		; 0A
	pha		; 48
	pea $EA04.w		; F4 04 EA
	brk $0C.b		; 00 0C
	rti		; 40

	jsr ($EAFC.w,X)		; FC FC EA
	brk $0D.b		; 00 0D
	rti		; 40

	tsb $F4.b		; 04 F4
	nop		; EA
	brk $0E.b		; 00 0E
	rti		; 40

	asl $F2.b		; 06 F2
	tax		; AA
	brk $0F.b		; 00 0F
	rti		; 40

	asl $F2.b		; 06 F2
	lda ($00.b)		; B2 00
	trb $ED40.w		; 1C 40 ED
	phd		; 0B
	inc $1D00.w,X		; FE 00 1D
	rti		; 40

	ora $F3.b		; 05 F3
	sbc ($00.b)		; F2 00
	asl $0D40.w,X		; 1E 40 0D
	xba		; EB
	plx		; FA
	brk $1F.b		; 00 1F
	rti		; 40

	sbc $00FA09.l		; EF 09 FA 00
	jsr $0A40.w		; 20 40 0A
	inc $00F5.w		; EE F5 00
	and ($40.b,X)		; 21 40
	sbc ($06.b)		; F2 06
	sbc ($00.b)		; F2 00
	jsl $F30540.l		; 22 40 05 F3
	phx		; DA
	brk $23.b		; 00 23
	rti		; 40

	ora $F3.b		; 05 F3
	sep #$00		; E2 00
	bit $40.b		; 24 40
	ora ($F9.b)		; 12 F9
	sbc [$AB.b],Y		; F7 AB
	php		; 08
	brk $48.b		; 00 48
	sbc ($FD.b,S),Y		; F3 FD
	tyx		; BB
	php		; 08
	cop $48.b		; 02 48
	ora $ED.b,S		; 03 ED
	tyx		; BB
	php		; 08
	tsb $48.b		; 04 48
	sbc $CB03.w		; ED 03 CB
	php		; 08
	asl $48.b		; 06 48
	sbc $CBF3.w,X		; FD F3 CB
	php		; 08
	php		; 08
	pha		; 48
	sbc $FB.b,X		; F5 FB
	stp		; DB
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc ($05.b,S),Y		; F3 05
	sbc ($00.b,S),Y		; F3 00
	tsb $0040.w		; 0C 40 00
	sed		; F8
	sbc ($00.b,S),Y		; F3 00
	ora $0840.w		; 0D 40 08
	beq -13.b		; F0 F3
	brk $0E.b		; 00 0E
	rti		; 40

	pea $EB04.w		; F4 04 EB
	brk $0F.b		; 00 0F
	rti		; 40

	tsb $FBEC.w		; 0C EC FB
	brk $1C.b		; 00 1C
	rti		; 40

	sbc $00FB09.l		; EF 09 FB 00
	ora $0940.w,X		; 1D 40 09
	sbc $1E00AB.l		; EF AB 00 1E
	rti		; 40

	ora #$EF.b		; 09 EF
	lda ($00.b,S),Y		; B3 00
	ora $F30540.l,X		; 1F 40 05 F3
	stp		; DB
	brk $20.b		; 00 20
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $00.b,S		; E3 00
	and ($40.b,X)		; 21 40
	sbc $EBFB.w,X		; FD FB EB
	brk $22.b		; 00 22
	rti		; 40

	ora $F3.b		; 05 F3
	xba		; EB
	brk $23.b		; 00 23
	rti		; 40

	and $3E.b,S		; 23 3E
	lda ($BB.b)		; B2 BB
	php		; 08
	brk $48.b		; 00 48
	rol $CBB2.w,X		; 3E B2 CB
	php		; 08
	cop $48.b		; 02 48
	inc $FA.b,X		; F6 FA
	cmp $08.b,S		; C3 08
	tsb $48.b		; 04 48
	asl $DA.b,X		; 16 DA
	lda ($08.b,S),Y		; B3 08
	asl $48.b		; 06 48
	asl $DA.b,X		; 16 DA
	cmp $08.b,S		; C3 08
	php		; 08
	pha		; 48
	asl $EA.b		; 06 EA
	cmp $08.b,S		; C3 08
	asl A		; 0A
	pha		; 48
	asl $EA.b		; 06 EA
	lda ($08.b,S),Y		; B3 08
	tsb $1048.w		; 0C 48 10
	cpx #$F3.b		; E0 F3
	php		; 08
	asl $1048.w		; 0E 48 10
	cpx #$E3.b		; E0 E3
	php		; 08
	jsr $1048.w		; 20 48 10
	cpx #$D3.b		; E0 D3
	php		; 08
	jsl $DD1348.l		; 22 48 13 DD
	lda $08.b,S		; A3 08
	bit $48.b		; 24 48
	and $CD.b,S		; 23 CD
	phb		; 8B
	php		; 08
	rol $48.b		; 26 48
	and $CD.b,S		; 23 CD
	txy		; 9B
	php		; 08
	plp		; 28
	pha		; 48
	and ($BD.b,S),Y		; 33 BD
	sta ($08.b,S),Y		; 93 08
	rol A		; 2A
	pha		; 48
	and ($BD.b,S),Y		; 33 BD
	lda $08.b,S		; A3 08
	bit $2048.w		; 2C 48 20
	cld		; D8
	cmp ($00.b,S),Y		; D3 00
	rol $2040.w		; 2E 40 20
	cld		; D8
	stp		; DB
	brk $2F.b		; 00 2F
	rti		; 40

	jsr $E3D8.w		; 20 D8 E3
	brk $3E.b		; 00 3E
	rti		; 40

	ora $9BDF.w,Y		; 19 DF 9B
	brk $3F.b		; 00 3F
	rti		; 40

	tsa		; 3B
	lda $00F3.w,X		; BD F3 00
	rti		; 40

	rti		; 40

	lsr $B2.b		; 46 B2
	sbc $00.b,S		; E3 00
	eor ($40.b,X)		; 41 40
	inc $BBFA.w,X		; FE FA BB
	brk $42.b		; 00 42
	rti		; 40

	rol $EBBA.w,X		; 3E BA EB
	brk $43.b		; 00 43
	rti		; 40

	lsr $B2.b		; 46 B2
	stp		; DB
	brk $44.b		; 00 44
	rti		; 40

	rol $E3BA.w,X		; 3E BA E3
	brk $45.b		; 00 45
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	phb		; 8B
	brk $46.b		; 00 46
	rti		; 40

	eor $B5.b,S		; 43 B5
	lda $00.b,S		; A3 00
	eor [$40.b]		; 47 40
	and $D5.b,S		; 23 D5
	plb		; AB
	brk $48.b		; 00 48
	rti		; 40

	eor $B5.b,S		; 43 B5
	plb		; AB
	brk $49.b		; 00 49
	rti		; 40

	and ($C5.b,S),Y		; 33 C5
	lda ($00.b,S),Y		; B3 00
	lsr A		; 4A
	rti		; 40

	tsa		; 3B
	lda $00B3.w,X		; BD B3 00
	phk		; 4B
	rti		; 40

	eor $B5.b,S		; 43 B5
	lda ($00.b,S),Y		; B3 00
	jmp $2C40.w		; 4C 40 2C
	cpy $40FC.w		; CC FC 40
	rti		; 40

	brk $24.b		; 00 24
	pei ($FF.b)		; D4 FF
	rti		; 40

	rti		; 40

	brk $35.b		; 00 35
	cmp $F9.b,S		; C3 F9
	brk $40.b		; 00 40
	rti		; 40

	bit $0E.b		; 24 0E
.ACCU 8
	sep #$A3		; E2 A3
	php		; 08
	brk $48.b		; 00 48
	asl $F3E2.w		; 0E E2 F3
	php		; 08
	cop $48.b		; 02 48
	asl $8BE2.w		; 0E E2 8B
	php		; 08
	tsb $48.b		; 04 48
	rol $CA.b		; 26 CA
	sta $0608.w		; 8D 08 06
	pha		; 48
	asl $A5D2.w,X		; 1E D2 A5
	php		; 08
	php		; 08
	pha		; 48
	bpl -32.b		; 10 E0
	lda ($08.b,S),Y		; B3 08
	asl A		; 0A
	pha		; 48
	jsr $B5D0.w		; 20 D0 B5
	php		; 08
	tsb $1148.w		; 0C 48 11
	cmp $0E08C3.l,X		; DF C3 08 0E
	pha		; 48
	ora ($DF.b),Y		; 11 DF
	cmp ($08.b,S),Y		; D3 08
	jsr $1148.w		; 20 48 11
	cmp $2208E3.l,X		; DF E3 08 22
	pha		; 48
	and ($CF.b,X)		; 21 CF
	cmp $08.b		; C5 08
	bit $48.b		; 24 48
	and ($CF.b,X)		; 21 CF
	inc $2608.w		; EE 08 26
	pha		; 48
	bit $BC.b,X		; 34 BC
	txy		; 9B
	php		; 08
	plp		; 28
	pha		; 48
	bmi -56.b		; 30 C8
	tsx		; BA
	brk $2A.b		; 00 2A
	rti		; 40

	bmi -56.b		; 30 C8
	rep #$00		; C2 00
	pld		; 2B
	rti		; 40

	ora #$EF.b		; 09 EF
	txy		; 9B
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	txy		; 9B
	brk $2D.b		; 00 2D
	rti		; 40

	ora $9BDF.w,Y		; 19 DF 9B
	brk $2E.b		; 00 2E
	rti		; 40

	and $ABBF.w,Y		; 39 BF AB
	brk $2F.b		; 00 2F
	rti		; 40

	eor ($B7.b,X)		; 41 B7
	plb		; AB
	brk $3A.b		; 00 3A
	rti		; 40

	asl $93DA.w,X		; 1E DA 93
	brk $3B.b		; 00 3B
	rti		; 40

	rol $C2.b,X		; 36 C2
	sta ($00.b,S),Y		; 93 00
	bit $4640.w,X		; 3C 40 46
	lda ($C3.b)		; B2 C3
	brk $3D.b		; 00 3D
	rti		; 40

	rol $E9BA.w,X		; 3E BA E9
	brk $3E.b		; 00 3E
	rti		; 40

	and ($D7.b,X)		; 21 D7
	dec $3F00.w,X		; DE 00 3F
	rti		; 40

	and ($D7.b,X)		; 21 D7
	inc $00.b		; E6 00
	rti		; 40

	rti		; 40

	lsr $B2.b		; 46 B2
	wai		; CB
	brk $3D.b		; 00 3D
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	txs		; 9A
	brk $41.b		; 00 41
	rti		; 40

	and ($C7.b),Y		; 31 C7
	dex		; CA
	brk $42.b		; 00 42
	rti		; 40

	eor $B5.b,S		; 43 B5
	lda ($00.b,S),Y		; B3 00
	and $4340.w,X		; 3D 40 43
	lda $DB.b,X		; B5 DB
	brk $3E.b		; 00 3E
	rti		; 40

	bit $9BCC.w		; 2C CC 9B
	brk $43.b		; 00 43
	rti		; 40

	mvp $D3,$B4		; 44 B4 D3
	brk $3E.b		; 00 3E
	rti		; 40

	asl $8BDA.w,X		; 1E DA 8B
	brk $44.b		; 00 44
	rti		; 40

	eor $B3.b		; 45 B3
	tyx		; BB
	brk $3D.b		; 00 3D
	rti		; 40

	eor $B3.b		; 45 B3
	sbc $40.b,S		; E3 40
	rol $2400.w,X		; 3E 00 24
	inc $FA.b,X		; F6 FA
	tyx		; BB
	php		; 08
	brk $48.b		; 00 48
	inc $FA.b,X		; F6 FA
	plb		; AB
	php		; 08
	cop $48.b		; 02 48
	asl $EA.b		; 06 EA
	plb		; AB
	php		; 08
	tsb $48.b		; 04 48
	asl $DA.b,X		; 16 DA
	plb		; AB
	php		; 08
	asl $48.b		; 06 48
	asl $BBE2.w		; 0E E2 BB
	php		; 08
	php		; 08
	pha		; 48
	brk $F0.b		; 00 F0
	xba		; EB
	php		; 08
	asl A		; 0A
	pha		; 48
	bpl -32.b		; 10 E0
	xba		; EB
	php		; 08
	tsb $1248.w		; 0C 48 12
	dec $08FB.w,X		; DE FB 08
	asl $2A48.w		; 0E 48 2A
	dec $F8.b		; C6 F8
	php		; 08
	jsr $FB48.w		; 20 48 FB
	sbc $DB.b,X		; F5 DB
	php		; 08
	jsl $E50B48.l		; 22 48 0B E5
	stp		; DB
	php		; 08
	bit $48.b		; 24 48
	pea $CBFC.w		; F4 FC CB
	php		; 08
	rol $48.b		; 26 48
	tsb $EC.b		; 04 EC
	wai		; CB
	php		; 08
	plp		; 28
	pha		; 48
	trb $DC.b		; 14 DC
	wai		; CB
	php		; 08
	rol A		; 2A
	pha		; 48
	asl $F2.b		; 06 F2
	cmp $00.b,S		; C3 00
	bit $EE40.w		; 2C 40 EE
	asl A		; 0A
	cmp $00.b,S		; C3 00
	and $2040.w		; 2D 40 20
	cld		; D8
	xba		; EB
	brk $2E.b		; 00 2E
	rti		; 40

	jsr $F3D8.w		; 20 D8 F3
	brk $2F.b		; 00 2F
	rti		; 40

	sec		; 38
	cpy #$F4.b		; C0 F4
	brk $3C.b		; 00 3C
	rti		; 40

	asl A		; 0A
	inc $009B.w		; EE 9B 00
	and $0A40.w,X		; 3D 40 0A
	inc $00FB.w		; EE FB 00
	rol $1E40.w,X		; 3E 40 1E
	phx		; DA
	tyx		; BB
	brk $3F.b		; 00 3F
	rti		; 40

	jsl $00FBD6.l		; 22 D6 FB 00
	rti		; 40

	rti		; 40

	jsl $0003D6.l		; 22 D6 03 00
	eor ($40.b,X)		; 41 40
	asl $C3DA.w,X		; 1E DA C3
	brk $42.b		; 00 42
	rti		; 40

	sbc ($05.b,S),Y		; F3 05
	sbc $00.b,S		; E3 00
	eor $40.b,S		; 43 40
	and $D5.b,S		; 23 D5
	sbc $00.b,S		; E3 00
	mvp $26,$40		; 44 40 26
	cmp ($BE.b)		; D2 BE
	brk $45.b		; 00 45
	rti		; 40

	rol $C0CA.w		; 2E CA C0
	brk $46.b		; 00 46
	rti		; 40

	tas		; 1B
	cmp $00DB.w,X		; DD DB 00
	eor [$40.b]		; 47 40
	tas		; 1B
	cmp $00E3.w,X		; DD E3 00
	pha		; 48
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $00.b,S		; A3 00
	eor #$40.b		; 49 40
	bit $D4.b		; 24 D4
	wai		; CB
	brk $4A.b		; 00 4A
	rti		; 40

	ora $0095E9.l		; 0F E9 95 00
	and $2840.w,X		; 3D 40 28
	bne -13.b		; D0 F3
	brk $4B.b		; 00 4B
	rti		; 40

	bmi -56.b		; 30 C8
	sbc ($00.b,S),Y		; F3 00
	jmp $2140.w		; 4C 40 21
	inc $BB02.w		; EE 02 BB
	php		; 08
	brk $48.b		; 00 48
	inc $BBF2.w,X		; FE F2 BB
	php		; 08
	cop $48.b		; 02 48
	asl $FBE2.w		; 0E E2 FB
	php		; 08
	tsb $48.b		; 04 48
	asl $FBD2.w,X		; 1E D2 FB
	php		; 08
	asl $48.b		; 06 48
	sed		; F8
	sed		; F8
	plb		; AB
	php		; 08
	php		; 08
	pha		; 48
	bit $DBB4.w,X		; 3C B4 DB
	php		; 08
	asl A		; 0A
	pha		; 48
	bit $EBC4.w		; 2C C4 EB
	php		; 08
	tsb $E448.w		; 0C 48 E4
	tsb $08CB.w		; 0C CB 08
	asl $0448.w		; 0E 48 04
	cpx $08DB.w		; EC DB 08
	jsr $FC48.w		; 20 48 FC
	pea $08CB.w		; F4 CB 08
	jsl $FCF448.l		; 22 48 F4 FC
	stp		; DB
	php		; 08
	bit $48.b		; 24 48
	sbc $00EB09.l		; EF 09 EB 00
	rol $40.b		; 26 40
	sbc [$01.b],Y		; F7 01
	xba		; EB
	brk $27.b		; 00 27
	rti		; 40

	rol $C2.b,X		; 36 C2
	xce		; FB
	brk $28.b		; 00 28
	rti		; 40

	php		; 08
	beq -85.b		; F0 AB
	brk $29.b		; 00 29
	rti		; 40

	php		; 08
	beq -77.b		; F0 B3
	brk $2A.b		; 00 2A
	rti		; 40

	ora #$EF.b		; 09 EF
	xba		; EB
	brk $2B.b		; 00 2B
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc ($00.b,S),Y		; F3 00
	bit $0A40.w		; 2C 40 0A
	inc $00F3.w		; EE F3 00
	and $1C40.w		; 2D 40 1C
	jmp.w [$00F3]		; DC F3 00
	rol $2440.w		; 2E 40 24
	pei ($F3.b)		; D4 F3
	brk $2F.b		; 00 2F
	rti		; 40

	rol $C2.b,X		; 36 C2
	ora $00.b,S		; 03 00
	rol $40.b,X		; 36 40
	inc $12.b		; E6 12
	cmp $00.b,S		; C3 00
	and [$40.b],Y		; 37 40
	rol $E3CA.w		; 2E CA E3
	brk $38.b		; 00 38
	rti		; 40

	inc $FB0A.w		; EE 0A FB
	brk $39.b		; 00 39
	rti		; 40

	rol $FBCA.w		; 2E CA FB
	brk $3A.b		; 00 3A
	rti		; 40

	asl $BFEA.w		; 0E EA BF
	brk $3B.b		; 00 3B
	rti		; 40

	pea $CB04.w		; F4 04 CB
	brk $3C.b		; 00 3C
	rti		; 40

	pea $D304.w		; F4 04 D3
	brk $3D.b		; 00 3D
	rti		; 40

	cpx $DB0C.w		; EC 0C DB
	brk $3E.b		; 00 3E
	rti		; 40

	bit $EBBC.w,X		; 3C BC EB
	brk $3F.b		; 00 3F
	rti		; 40

	mvp $EB,$B4		; 44 B4 EB
	brk $40.b		; 00 40
	rti		; 40

	bit $F3BC.w,X		; 3C BC F3
	brk $41.b		; 00 41
	rti		; 40

	ora $F9.b,X		; 15 F9
	sbc [$C3.b],Y		; F7 C3
	php		; 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	cmp $08.b,S		; C3 08
	cop $48.b		; 02 48
	plx		; FA
	inc $B3.b,X		; F6 B3
	php		; 08
	tsb $48.b		; 04 48
	asl A		; 0A
	inc $B3.b		; E6 B3
	php		; 08
	asl $48.b		; 06 48
	cop $EE.b		; 02 EE
	lda $08.b,S		; A3 08
	php		; 08
	pha		; 48
	sbc $D3F3.w,X		; FD F3 D3
	php		; 08
	asl A		; 0A
	pha		; 48
	inc $E3FA.w,X		; FE FA E3
	brk $0C.b		; 00 0C
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,S		; E3 00
	ora $1940.w		; 0D 40 19
	cmp $0E00C3.l,X		; DF C3 00 0E
	rti		; 40

	ora $CBDF.w,Y		; 19 DF CB
	brk $0F.b		; 00 0F
	rti		; 40

	plx		; FA
	inc $00FB.w,X		; FE FB 00
	trb $0E40.w		; 1C 40 0E
	nop		; EA
	sbc $00.b,S		; E3 00
	ora $0E40.w,X		; 1D 40 0E
	nop		; EA
	xba		; EB
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F3EA.w		; 0E EA F3
	brk $1F.b		; 00 1F
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda $00.b,S		; A3 00
	jsr $1240.w		; 20 40 12
	inc $AB.b		; E6 AB
	brk $21.b		; 00 21
	rti		; 40

	jsr ($F3FC.w,X)		; FC FC F3
	brk $22.b		; 00 22
	rti		; 40

	sbc $EBFB.w,X		; FD FB EB
	brk $23.b		; 00 23
	rti		; 40

	bpl -24.b		; 10 E8
	xce		; FB
	brk $24.b		; 00 24
	rti		; 40

	ora $D3EB.w		; 0D EB D3
	brk $25.b		; 00 25
	rti		; 40

	ora $DBEB.w		; 0D EB DB
	brk $26.b		; 00 26
	rti		; 40

	asl $06.b,X		; 16 06
	nop		; EA
	lda $08.b,S		; A3 08
	brk $48.b		; 00 48
	asl $E2.b,X		; 16 E2
	lda $00.b,S		; A3 00
	cop $40.b		; 02 40
	asl $E2.b,X		; 16 E2
	plb		; AB
	brk $03.b		; 00 03
	rti		; 40

	cop $EE.b		; 02 EE
	lda ($08.b,S),Y		; B3 08
	ora ($48.b)		; 12 48
	ora ($DE.b)		; 12 DE
	lda ($08.b,S),Y		; B3 08
	trb $48.b		; 14 48
	inc A		; 1A
	dec $C3.b,X		; D6 C3
	php		; 08
	asl $48.b,X		; 16 48
	cop $EE.b		; 02 EE
	cmp $08.b,S		; C3 08
	clc		; 18
	pha		; 48
	cop $EE.b		; 02 EE
	cmp ($08.b,S),Y		; D3 08
	inc A		; 1A
	pha		; 48
	asl $FBEA.w		; 0E EA FB
	brk $1C.b		; 00 1C
	rti		; 40

	brk $F8.b		; 00 F8
	xba		; EB
	brk $1D.b		; 00 1D
	rti		; 40

	inc $E3FA.w,X		; FE FA E3
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,S		; E3 00
	ora $EA0E40.l,X		; 1F 40 0E EA
	sbc $00.b,S		; E3 00
	jsr $0E40.w		; 20 40 0E
	nop		; EA
	xba		; EB
	brk $21.b		; 00 21
	rti		; 40

	asl $F3EA.w		; 0E EA F3
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp $00.b,S		; C3 00
	and $1240.w		; 2D 40 12
	inc $CB.b		; E6 CB
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b,S),Y		; D3 00
	and $DE1A40.l		; 2F 40 1A DE
	cmp ($00.b,S),Y		; D3 00
	bmi  64.b		; 30 40
	ora ($E6.b)		; 12 E6
	stp		; DB
	brk $31.b		; 00 31
	rti		; 40

	xce		; FB
	sbc $00FB.w,X		; FD FB 00
	and ($40.b)		; 32 40
	sbc $F3FB.w,X		; FD FB F3
	brk $33.b		; 00 33
	rti		; 40

	asl $06.b,X		; 16 06
	nop		; EA
	lda $08.b,S		; A3 08
	brk $48.b		; 00 48
	asl $E2.b,X		; 16 E2
	lda $00.b,S		; A3 00
	cop $40.b		; 02 40
	asl $E2.b,X		; 16 E2
	plb		; AB
	brk $03.b		; 00 03
	rti		; 40

	cop $EE.b		; 02 EE
	lda ($08.b,S),Y		; B3 08
	ora ($48.b)		; 12 48
	ora ($DE.b)		; 12 DE
	lda ($08.b,S),Y		; B3 08
	trb $48.b		; 14 48
	inc A		; 1A
	dec $C3.b,X		; D6 C3
	php		; 08
	asl $48.b,X		; 16 48
	cop $EE.b		; 02 EE
	cmp $08.b,S		; C3 08
	clc		; 18
	pha		; 48
	cop $EE.b		; 02 EE
	cmp ($08.b,S),Y		; D3 08
	inc A		; 1A
	pha		; 48
	asl $FBEA.w		; 0E EA FB
	brk $1C.b		; 00 1C
	rti		; 40

	brk $F8.b		; 00 F8
	xba		; EB
	brk $1D.b		; 00 1D
	rti		; 40

	inc $E3FA.w,X		; FE FA E3
	brk $1E.b		; 00 1E
	rti		; 40

	asl $F2.b		; 06 F2
	sbc $00.b,S		; E3 00
	ora $EA0E40.l,X		; 1F 40 0E EA
	sbc $00.b,S		; E3 00
	jsr $0E40.w		; 20 40 0E
	nop		; EA
	xba		; EB
	brk $21.b		; 00 21
	rti		; 40

	asl $F3EA.w		; 0E EA F3
	brk $2C.b		; 00 2C
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp $00.b,S		; C3 00
	and $1240.w		; 2D 40 12
	inc $CB.b		; E6 CB
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E6.b)		; 12 E6
	cmp ($00.b,S),Y		; D3 00
	and $DE1A40.l		; 2F 40 1A DE
	cmp ($00.b,S),Y		; D3 00
	bmi  64.b		; 30 40
	ora ($E6.b)		; 12 E6
	stp		; DB
	brk $31.b		; 00 31
	rti		; 40

	xce		; FB
	sbc $00FB.w,X		; FD FB 00
	and ($40.b)		; 32 40
	sbc $F3FB.w,X		; FD FB F3
	brk $33.b		; 00 33
	rti		; 40

	inc A		; 1A
	asl A		; 0A
	inc $AA.b		; E6 AA
	php		; 08
	brk $48.b		; 00 48
	plx		; FA
	inc $CA.b,X		; F6 CA
	php		; 08
	cop $48.b		; 02 48
	asl A		; 0A
	inc $CA.b		; E6 CA
	php		; 08
	tsb $48.b		; 04 48
	ora $EB.b		; 05 EB
	sep #$08		; E2 08
	asl $48.b		; 06 48
	asl $E2.b,X		; 16 E2
	tsx		; BA
	brk $08.b		; 00 08
	rti		; 40

	inc $DAFA.w,X		; FE FA DA
	brk $09.b		; 00 09
	rti		; 40

	asl $F2.b		; 06 F2
	phx		; DA
	brk $0A.b		; 00 0A
	rti		; 40

	asl $DAEA.w		; 0E EA DA
	brk $0B.b		; 00 0B
	rti		; 40

	asl $F2EA.w		; 0E EA F2
	brk $0C.b		; 00 0C
	rti		; 40

	sbc $00F2F9.l,X		; FF F9 F2 00
	ora $FF40.w		; 0D 40 FF
	sbc $00FA.w,Y		; F9 FA 00
	asl $0F40.w		; 0E 40 0F
	sbc #$FA.b		; E9 FA
	brk $0F.b		; 00 0F
	rti		; 40

	cop $F6.b		; 02 F6
	lda ($00.b)		; B2 00
	clc		; 18
	rti		; 40

	asl $B8DA.w,X		; 1E DA B8
	brk $19.b		; 00 19
	rti		; 40

	inc $BAFA.w,X		; FE FA BA
	brk $1A.b		; 00 1A
	rti		; 40

	asl $F2.b		; 06 F2
	tsx		; BA
	brk $1B.b		; 00 1B
	rti		; 40

	inc A		; 1A
	dec $00AA.w,X		; DE AA 00
	trb $1A40.w		; 1C 40 1A
	dec $00B2.w,X		; DE B2 00
	ora $FB40.w,X		; 1D 40 FB
	sbc $00C2.w,X		; FD C2 00
	asl $0340.w,X		; 1E 40 03
	sbc $C2.b,X		; F5 C2
	brk $1F.b		; 00 1F
	rti		; 40

	phd		; 0B
	sbc $00C2.w		; ED C2 00
	jsr $1340.w		; 20 40 13
	sbc $C2.b		; E5 C2
	brk $21.b		; 00 21
	rti		; 40

	ora $A2EB.w		; 0D EB A2
	brk $22.b		; 00 22
	rti		; 40

	ora $E3.b,X		; 15 E3
	ldx #$00.b		; A2 00
	and $40.b,S		; 23 40
	sbc $EAFB.w,X		; FD FB EA
	brk $24.b		; 00 24
	rti		; 40

	asl $BAEA.w		; 0E EA BA
	brk $25.b		; 00 25
	rti		; 40

	asl $0F.b,X		; 16 0F
	sbc ($DD.b,X)		; E1 DD
	php		; 08
	brk $48.b		; 00 48
	ora [$E9.b]		; 07 E9
	lda $08.b		; A5 08
	cop $48.b		; 02 48
	sbc $CDF7.w,Y		; F9 F7 CD
	php		; 08
	tsb $48.b		; 04 48
	ora #$E7.b		; 09 E7
	cmp $0608.w		; CD 08 06
	pha		; 48
	plx		; FA
	inc $BD.b,X		; F6 BD
	php		; 08
	php		; 08
	pha		; 48
	asl A		; 0A
	inc $BD.b		; E6 BD
	php		; 08
	asl A		; 0A
	pha		; 48
	ora [$E1.b],Y		; 17 E1
	lda $00.b		; A5 00
	tsb $1740.w		; 0C 40 17
	sbc ($AD.b,X)		; E1 AD
	brk $0D.b		; 00 0D
	rti		; 40

	asl $FDEA.w		; 0E EA FD
	brk $0E.b		; 00 0E
	rti		; 40

	asl $E2.b,X		; 16 E2
	sbc $0F00.w,X		; FD 00 0F
	rti		; 40

	ora $CDDF.w,Y		; 19 DF CD
	brk $1C.b		; 00 1C
	rti		; 40

	ora $D5DF.w,Y		; 19 DF D5
	brk $1D.b		; 00 1D
	rti		; 40

	sbc ($06.b)		; F2 06
	cmp $00.b		; C5 00
	asl $0E40.w,X		; 1E 40 0E
	nop		; EA
	sbc $1F00.w		; ED 00 1F
	rti		; 40

	asl $F5EA.w		; 0E EA F5
	brk $20.b		; 00 20
	rti		; 40

	inc A		; 1A
	dec $00BD.w,X		; DE BD 00
	and ($40.b,X)		; 21 40
	inc A		; 1A
	dec $00C5.w,X		; DE C5 00
	jsl $FCFC40.l		; 22 40 FC FC
	lda $00.b,X		; B5 00
	and $40.b,S		; 23 40
	tsb $F4.b		; 04 F4
	lda $00.b,X		; B5 00
	bit $40.b		; 24 40
	tsb $B5EC.w		; 0C EC B5
	brk $25.b		; 00 25
	rti		; 40

	trb $E4.b		; 14 E4
	lda $00.b,X		; B5 00
	rol $40.b		; 26 40
	trb $B5DC.w		; 1C DC B5
	brk $27.b		; 00 27
	rti		; 40

	asl $F6FA.w		; 0E FA F6
	cmp ($48.b,S),Y		; D3 48
	brk $08.b		; 00 08
	nop		; EA
	asl $D3.b		; 06 D3
	pha		; 48
	cop $08.b		; 02 08
	sbc ($FE.b)		; F2 FE
	sbc $48.b,S		; E3 48
	tsb $08.b		; 04 08
	sep #$0E		; E2 0E
	sbc $48.b,S		; E3 48
	asl $08.b		; 06 08
	inx		; E8
	php		; 08
	sbc ($48.b,S),Y		; F3 48
	php		; 08
	php		; 08
	cld		; D8
	clc		; 18
	sbc ($48.b,S),Y		; F3 48
	asl A		; 0A
	php		; 08
	sbc $B3F3.w,X		; FD F3 B3
	pha		; 48
	tsb $ED08.w		; 0C 08 ED
	ora $B3.b,S		; 03 B3
	pha		; 48
	asl $FB08.w		; 0E 08 FB
	sbc $C3.b,X		; F5 C3
	pha		; 48
	jsr $F808.w		; 20 08 F8
	brk $F3.b		; 00 F3
	rti		; 40

	jsl $16E200.l		; 22 00 E2 16
	stp		; DB
	rti		; 40

	and $00.b,S		; 23 00
	sbc $13.b		; E5 13
	clv		; B8
	rti		; 40

	bit $00.b		; 24 00
	sbc ($05.b,S),Y		; F3 05
	wai		; CB
	rti		; 40

	and $00.b		; 25 00
	cop $F6.b		; 02 F6
	sbc $40.b,S		; E3 40
	rol $00.b		; 26 00
	trb $01.b		; 14 01
	sbc $0048CB.l		; EF CB 48 00
	php		; 08
	ora $C4D7.w,Y		; 19 D7 C4
	pha		; 48
	cop $08.b		; 02 08
	ora ($DF.b),Y		; 11 DF
	pei ($48.b)		; D4 48
	tsb $08.b		; 04 08
	sbc ($FF.b),Y		; F1 FF
	cpx $0648.w		; EC 48 06
	php		; 08
	sbc ($0F.b,X)		; E1 0F
	ldy $48.b,X		; B4 48
	php		; 08
	php		; 08
	sbc ($0F.b,X)		; E1 0F
	cpy $48.b		; C4 48
	asl A		; 0A
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	ldy $0C48.w,X		; BC 48 0C
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	cpy $0E48.w		; CC 48 0E
	php		; 08
	sbc ($FF.b),Y		; F1 FF
	jmp.w [$2048]		; DC 48 20
	php		; 08
	and #$CF.b		; 29 CF
	cpy $40.b		; C4 40
	jsl $EF0900.l		; 22 00 09 EF
	stp		; DB
	rti		; 40

	and $00.b,S		; 23 00
	ora ($F7.b,X)		; 01 F7
	cmp $40.b,S		; C3 40
	bit $00.b		; 24 00
	sbc ($07.b),Y		; F1 07
	ldy $40.b,X		; B4 40
	and $00.b		; 25 00
	ora ($E7.b),Y		; 11 E7
	cpy $2640.w		; CC 40 26
	brk $E9.b		; 00 E9
	ora $2740D4.l		; 0F D4 40 27
	brk $E9.b		; 00 E9
	ora $2840DC.l		; 0F DC 40 28
	brk $E9.b		; 00 E9
	ora $2940E4.l		; 0F E4 40 29
	brk $E1.b		; 00 E1
	ora [$D7.b],Y		; 17 D7
	rti		; 40

	rol A		; 2A
	brk $E1.b		; 00 E1
	ora [$DF.b],Y		; 17 DF
	rti		; 40

	pld		; 2B
	brk $ED.b		; 00 ED
	phd		; 0B
	jsr ($2C40.w,X)		; FC 40 2C
	brk $1A.b		; 00 1A
	inc $FA.b,X		; F6 FA
	tay		; A8
	php		; 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	tay		; A8
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $F7.b,X		; F6 F7
	php		; 08
	tsb $48.b		; 04 48
	ora $ED.b,S		; 03 ED
	lda [$08.b],Y		; B7 08
	asl $48.b		; 06 48
	sbc ($FD.b,S),Y		; F3 FD
	lda [$08.b],Y		; B7 08
	php		; 08
	pha		; 48
	ora $ED.b,S		; 03 ED
	cmp [$08.b]		; C7 08
	asl A		; 0A
	pha		; 48
	sbc ($FD.b,S),Y		; F3 FD
	cmp [$08.b]		; C7 08
	tsb $F548.w		; 0C 48 F5
	xce		; FB
	cmp $480E08.l,X		; DF 08 0E 48
	ora $EB.b		; 05 EB
	cmp $482008.l,X		; DF 08 20 48
	sbc ($06.b)		; F2 06
	sbc [$00.b],Y		; F7 00
	jsl $0DEB40.l		; 22 40 EB 0D
	lda $402300.l,X		; BF 00 23 40
	xba		; EB
	ora $00C7.w		; 0D C7 00
	bit $40.b		; 24 40
	xba		; EB
	ora $00CF.w		; 0D CF 00
	and $40.b		; 25 40
	xba		; EB
	ora $00D7.w		; 0D D7 00
	rol $40.b		; 26 40
	sbc ($05.b,S),Y		; F3 05
	cmp [$00.b],Y		; D7 00
	and [$40.b]		; 27 40
	xce		; FB
	sbc $00D7.w,X		; FD D7 00
	plp		; 28
	rti		; 40

	ora $F5.b,S		; 03 F5
	cmp [$00.b],Y		; D7 00
	and #$40.b		; 29 40
	phd		; 0B
	sbc $00D7.w		; ED D7 00
	rol A		; 2A
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	cmp #$00.b		; C9 00
	pld		; 2B
	rti		; 40

	sbc $DF0B.w		; ED 0B DF
	brk $2C.b		; 00 2C
	rti		; 40

	asl A		; 0A
	inc $00F7.w		; EE F7 00
	and $0A40.w		; 2D 40 0A
	inc $00FF.w		; EE FF 00
	rol $F540.w		; 2E 40 F5
	ora $EF.b,S		; 03 EF
	brk $2F.b		; 00 2F
	rti		; 40

	sbc $EFFB.w,X		; FD FB EF
	brk $32.b		; 00 32
	rti		; 40

	ora $F3.b		; 05 F3
	sbc $403300.l		; EF 00 33 40
	ora $EFEB.w		; 0D EB EF
	brk $2D.b		; 00 2D
	rti		; 40

	inc A		; 1A
	sbc ($0F.b,X)		; E1 0F
	cmp ($08.b,X)		; C1 08
	brk $48.b		; 00 48
	sbc ($FF.b),Y		; F1 FF
	cmp ($08.b,X)		; C1 08
	cop $48.b		; 02 48
	ora ($EF.b,X)		; 01 EF
	cmp ($08.b,X)		; C1 08
	tsb $48.b		; 04 48
	cpx $0C.b		; E4 0C
	cmp ($08.b),Y		; D1 08
	asl $48.b		; 06 48
	pea $B1FC.w		; F4 FC B1
	php		; 08
	php		; 08
	pha		; 48
	tsb $A9E4.w		; 0C E4 A9
	php		; 08
	asl A		; 0A
	pha		; 48
	pea $D1FC.w		; F4 FC D1
	php		; 08
	tsb $0448.w		; 0C 48 04
	cpx $08D1.w		; EC D1 08
	asl $1148.w		; 0E 48 11
	sbc [$C1.b]		; E7 C1
	brk $20.b		; 00 20
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	cmp #$00.b		; C9 00
	and ($40.b,X)		; 21 40
	cpx $14.b		; E4 14
	lda $2200.w,Y		; B9 00 22
	rti		; 40

	cpx $B90C.w		; EC 0C B9
	brk $23.b		; 00 23
	rti		; 40

	jmp.w [$D11C]		; DC 1C D1
	brk $24.b		; 00 24
	rti		; 40

	jsr ($A9FC.w,X)		; FC FC A9
	brk $25.b		; 00 25
	rti		; 40

	tsb $F4.b		; 04 F4
	lda #$00.b		; A9 00
	rol $40.b		; 26 40
	tsb $F4.b		; 04 F4
	lda ($00.b),Y		; B1 00
	and [$40.b]		; 27 40
	tsb $F4.b		; 04 F4
	lda $2800.w,Y		; B9 00 28
	rti		; 40

	tsb $B9EC.w		; 0C EC B9
	brk $29.b		; 00 29
	rti		; 40

	trb $E4.b		; 14 E4
	lda $2A00.w,Y		; B9 00 2A
	rti		; 40

	trb $E4.b		; 14 E4
	cmp ($00.b),Y		; D1 00
	pld		; 2B
	rti		; 40

	trb $E4.b		; 14 E4
	cmp $2C00.w,Y		; D9 00 2C
	rti		; 40

	pea $E104.w		; F4 04 E1
	brk $2D.b		; 00 2D
	rti		; 40

	jsr ($E1FC.w,X)		; FC FC E1
	brk $2E.b		; 00 2E
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc ($00.b,X)		; E1 00
	and $EC0C40.l		; 2F 40 0C EC
	sbc ($00.b,X)		; E1 00
	bmi  64.b		; 30 40
	trb $E4.b		; 14 E4
	sbc ($00.b,X)		; E1 00
	and ($40.b),Y		; 31 40
	ora ($EE.b,S),Y		; 13 EE
	cop $DB.b		; 02 DB
	php		; 08
	brk $48.b		; 00 48
	inc $DBF2.w,X		; FE F2 DB
	php		; 08
	cop $48.b		; 02 48
	sbc $08AB01.l		; EF 01 AB 08
	tsb $48.b		; 04 48
	sbc [$09.b]		; E7 09
	wai		; CB
	php		; 08
	asl $48.b		; 06 48
	sbc [$F9.b],Y		; F7 F9
	wai		; CB
	php		; 08
	php		; 08
	pha		; 48
	sbc $BB03.w		; ED 03 BB
	php		; 08
	asl A		; 0A
	pha		; 48
	sbc $BBF3.w,X		; FD F3 BB
	php		; 08
	tsb $F648.w		; 0C 48 F6
	cop $A3.b		; 02 A3
	brk $0E.b		; 00 0E
	rti		; 40

	inc $A3FA.w,X		; FE FA A3
	brk $0F.b		; 00 0F
	rti		; 40

	sbc $00ABF9.l,X		; FF F9 AB 00
	asl $FF40.w,X		; 1E 40 FF
	sbc $00B3.w,Y		; F9 B3 00
	ora $F10740.l,X		; 1F 40 07 F1
	wai		; CB
	brk $20.b		; 00 20
	rti		; 40

	ora [$F1.b]		; 07 F1
	cmp ($00.b,S),Y		; D3 00
	and ($40.b,X)		; 21 40
	brk $F8.b		; 00 F8
	xba		; EB
	brk $22.b		; 00 22
	rti		; 40

	sbc ($06.b)		; F2 06
	xba		; EB
	brk $23.b		; 00 23
	rti		; 40

	cop $F6.b		; 02 F6
	sbc ($00.b,S),Y		; F3 00
	bit $40.b		; 24 40
	ora $F5.b,S		; 03 F5
	xce		; FB
	brk $25.b		; 00 25
	rti		; 40

	sbc $00F309.l		; EF 09 F3 00
	rol $40.b		; 26 40
	inc $FB0A.w		; EE 0A FB
	brk $27.b		; 00 27
	rti		; 40

	bpl -26.b		; 10 E6
	asl A		; 0A
	sbc ($88.b)		; F2 88
	brk $C8.b		; 00 C8
	sbc [$09.b]		; E7 09
	sep #$88		; E2 88
	cop $C8.b		; 02 C8
	sbc [$F9.b],Y		; F7 F9
	sep #$88		; E2 88
	tsb $C8.b		; 04 C8
	beq   0.b		; F0 00
	rep #$88		; C2 88
	asl $C8.b		; 06 C8
	beq   0.b		; F0 00
	lda ($88.b)		; B2 88
	php		; 08
	iny		; C8
	xba		; EB
	ora $D2.b		; 05 D2
	dey		; 88
	asl A		; 0A
	iny		; C8
	inc $02.b,X		; F6 02
	plx		; FA
	bra  12.b		; 80 0C
	cpy #$F6.b		; C0 F6
	cop $F2.b		; 02 F2
	bra  13.b		; 80 0D
	cpy #$EB.b		; C0 EB
	ora $80AF.w		; 0D AF 80
	asl $EBC0.w		; 0E C0 EB
	ora $80A7.w		; 0D A7 80
	ora $F503C0.l		; 0F C0 03 F5
	phx		; DA
	bra  28.b		; 80 1C
	cpy #$F8.b		; C0 F8
	brk $AA.b		; 00 AA
	bra  29.b		; 80 1D
	cpy #$FB.b		; C0 FB
	sbc $80DA.w,X		; FD DA 80
	asl $FBC0.w,X		; 1E C0 FB
	sbc $80D2.w,X		; FD D2 80
	ora $F404C0.l,X		; 1F C0 04 F4
	sbc $C02080.l		; EF 80 20 C0
	sbc $A7FB.w,X		; FD FB A7
	bra  33.b		; 80 21
	cpy #$17.b		; C0 17
	sbc [$F9.b],Y		; F7 F9
	sbc ($88.b)		; F2 88
	brk $C8.b		; 00 C8
	sbc $CAF7.w,Y		; F9 F7 CA
	dey		; 88
	cop $C8.b		; 02 C8
	sbc #$07.b		; E9 07
	cmp ($88.b)		; D2 88
	tsb $C8.b		; 04 C8
	sbc #$07.b		; E9 07
	sep #$88		; E2 88
	asl $C8.b		; 06 C8
	sbc $E2F7.w,Y		; F9 F7 E2
	dey		; 88
	php		; 08
	iny		; C8
	ora [$F1.b]		; 07 F1
	sbc ($80.b)		; F2 80
	asl A		; 0A
	cpy #$FF.b		; C0 FF
	sbc $80FD.w,Y		; F9 FD 80
	phd		; 0B
	cpy #$0F.b		; C0 0F
	sbc #$B4.b		; E9 B4
	bra  12.b		; 80 0C
	cpy #$09.b		; C0 09
	sbc $0D80E2.l		; EF E2 80 0D
	cpy #$EF.b		; C0 EF
	ora #$BA.b		; 09 BA
	bra  14.b		; 80 0E
	cpy #$F7.b		; C0 F7
	ora ($BA.b,X)		; 01 BA
	bra  15.b		; 80 0F
	cpy #$EF.b		; C0 EF
	ora #$F2.b		; 09 F2
	bra  26.b		; 80 1A
	cpy #$07.b		; C0 07
	sbc ($FA.b),Y		; F1 FA
	bra  27.b		; 80 1B
	cpy #$F9.b		; C0 F9
	sbc $1C80DA.l,X		; FF DA 80 1C
	cpy #$01.b		; C0 01
	sbc [$DA.b],Y		; F7 DA
	bra  29.b		; 80 1D
	cpy #$09.b		; C0 09
	sbc $1E80CF.l		; EF CF 80 1E
	cpy #$09.b		; C0 09
	sbc $1F80C7.l		; EF C7 80 1F
	cpy #$09.b		; C0 09
	sbc $2080BF.l		; EF BF 80 20
	cpy #$09.b		; C0 09
	sbc $2180B7.l		; EF B7 80 21
	cpy #$F2.b		; C0 F2
	asl $C2.b		; 06 C2
	bra  34.b		; 80 22
	cpy #$FA.b		; C0 FA
	inc $80C2.w,X		; FE C2 80
	and $C0.b,S		; 23 C0
	cpx $B20C.w		; EC 0C B2
	bra  36.b		; 80 24
	cpy #$0C.b		; C0 0C
	cpx $80B4.w		; EC B4 80
	and $C0.b		; 25 C0
	inc A		; 1A
	sbc #$07.b		; E9 07
	inc $0088.w		; EE 88 00
	iny		; C8
	cmp $EE17.w,Y		; D9 17 EE
	dey		; 88
	cop $C8.b		; 02 C8
	cmp $DE17.w,Y		; D9 17 DE
	dey		; 88
	tsb $C8.b		; 04 C8
	cmp #$27.b		; C9 27
	sbc $88.b		; E5 88
	asl $C8.b		; 06 C8
	sbc $80CF09.l		; EF 09 CF 80
	php		; 08
	cpy #$FF.b		; C0 FF
	sbc $80BE.w,Y		; F9 BE 80
	ora #$C0.b		; 09 C0
	sbc [$01.b],Y		; F7 01
	cmp $80.b		; C5 80
	asl A		; 0A
	cpy #$E9.b		; C0 E9
	ora $0B80B3.l		; 0F B3 80 0B
	cpy #$F9.b		; C0 F9
	sbc $0C80F8.l,X		; FF F8 80 0C
	cpy #$F9.b		; C0 F9
	sbc $0D80F0.l,X		; FF F0 80 0D
	cpy #$E1.b		; C0 E1
	ora [$CE.b],Y		; 17 CE
	bra  14.b		; 80 0E
	cpy #$EE.b		; C0 EE
	asl A		; 0A
	cmp [$80.b],Y		; D7 80
	ora $12E6C0.l		; 0F C0 E6 12
	lda [$80.b],Y		; B7 80
	clc		; 18
	cpy #$DE.b		; C0 DE
	inc A		; 1A
	dec $80.b,X		; D6 80
	ora $E9C0.w,Y		; 19 C0 E9
	ora $1A80E6.l		; 0F E6 80 1A
	cpy #$E9.b		; C0 E9
	ora $1B80DE.l		; 0F DE 80 1B
	cpy #$D1.b		; C0 D1
	and [$F5.b]		; 27 F5
	bra  28.b		; 80 1C
	cpy #$E6.b		; C0 E6
	ora ($D6.b)		; 12 D6
	bra  29.b		; 80 1D
	cpy #$F2.b		; C0 F2
	asl $CA.b		; 06 CA
	bra  30.b		; 80 1E
	cpy #$E2.b		; C0 E2
	asl $C6.b,X		; 16 C6
	bra  31.b		; 80 1F
	cpy #$FA.b		; C0 FA
	inc $80BE.w,X		; FE BE 80
	jsr $DBC0.w		; 20 C0 DB
	ora $80FE.w,X		; 1D FE 80
	and ($C0.b,X)		; 21 C0
	sbc $15.b,S		; E3 15
	inc $2280.w,X		; FE 80 22
	cpy #$EB.b		; C0 EB
	ora $80FE.w		; 0D FE 80
	and $C0.b,S		; 23 C0
	sbc ($05.b,S),Y		; F3 05
	inc $2480.w,X		; FE 80 24
	cpy #$E4.b		; C0 E4
	trb $BF.b		; 14 BF
	bra  37.b		; 80 25
	cpy #$15.b		; C0 15
	tsb $E3E4.w		; 0C E4 E3
	dey		; 88
	brk $C8.b		; 00 C8
	cpx $0C.b		; E4 0C
	sbc $88.b,S		; E3 88
	cop $C8.b		; 02 C8
	cpx $0C.b		; E4 0C
	cmp ($88.b,S),Y		; D3 88
	tsb $C8.b		; 04 C8
	pea $E3FC.w		; F4 FC E3
	dey		; 88
	asl $C8.b		; 06 C8
	pea $D3FC.w		; F4 FC D3
	dey		; 88
	php		; 08
	iny		; C8
	jsl $80DDD6.l		; 22 D6 DD 80
	asl A		; 0A
	cpy #$2A.b		; C0 2A
	dec $80DD.w		; CE DD 80
	phd		; 0B
	cpy #$1C.b		; C0 1C
	jmp.w [$80ED]		; DC ED 80
	tsb $27C0.w		; 0C C0 27
	cmp ($F8.b),Y		; D1 F8
	bra  13.b		; 80 0D
	cpy #$04.b		; C0 04
	pea $80EB.w		; F4 EB 80
	asl $04C0.w		; 0E C0 04
	pea $80E3.w		; F4 E3 80
	ora $F404C0.l		; 0F C0 04 F4
	stp		; DB
	bra  26.b		; 80 1A
	cpy #$0C.b		; C0 0C
	cpx $80DB.w		; EC DB 80
	tas		; 1B
	cpy #$04.b		; C0 04
	pea $80D3.w		; F4 D3 80
	trb $1CC0.w		; 1C C0 1C
	jmp.w [$80E2]		; DC E2 80
	ora $24C0.w,X		; 1D C0 24
	pei ($F0.b)		; D4 F0
	bra  30.b		; 80 1E
	cpy #$2C.b		; C0 2C
	cpy $80F0.w		; CC F0 80
	ora $13E5C0.l,X		; 1F C0 E5 13
	sbc ($80.b,S),Y		; F3 80
	jsr $EDC0.w		; 20 C0 ED
	phd		; 0B
	sbc ($80.b,S),Y		; F3 80
	and ($C0.b,X)		; 21 C0
	sbc $03.b,X		; F5 03
	sbc ($80.b,S),Y		; F3 80
	jsl $FBFDC0.l		; 22 C0 FD FB
	sbc ($80.b,S),Y		; F3 80
	and $C0.b,S		; 23 C0
	bpl  10.b		; 10 0A
	inc $A9.b		; E6 A9
	pha		; 48
	brk $08.b		; 00 08
	ora #$E7.b		; 09 E7
	lda $0248.w,Y		; B9 48 02
	php		; 08
	sbc $B9F7.w,Y		; F9 F7 B9
	pha		; 48
	tsb $08.b		; 04 08
	brk $F0.b		; 00 F0
	cmp $0648.w,Y		; D9 48 06
	php		; 08
	brk $F0.b		; 00 F0
	sbc #$48.b		; E9 48
	php		; 08
	php		; 08
	ora $EB.b		; 05 EB
	cmp #$48.b		; C9 48
	asl A		; 0A
	php		; 08
	cop $F6.b		; 02 F6
	lda #$40.b		; A9 40
	tsb $0200.w		; 0C 00 02
	inc $B1.b,X		; F6 B1
	rti		; 40

	ora $0D00.w		; 0D 00 0D
	xba		; EB
	pea $0E40.w		; F4 40 0E
	brk $0D.b		; 00 0D
	xba		; EB
	jsr ($0F40.w,X)		; FC 40 0F
	brk $F5.b		; 00 F5
	ora $C9.b,S		; 03 C9
	rti		; 40

	trb $0000.w		; 1C 00 00
	sed		; F8
	sbc $1D40.w,Y		; F9 40 1D
	brk $FD.b		; 00 FD
	xce		; FB
	cmp #$40.b		; C9 40
	asl $FD00.w,X		; 1E 00 FD
	xce		; FB
	cmp ($40.b),Y		; D1 40
	ora $04F400.l,X		; 1F 00 F4 04
	ldy $40.b,X		; B4 40
	jsr $FB00.w		; 20 00 FB
	sbc $40FC.w,X		; FD FC 40
	and ($00.b,X)		; 21 00
	ora [$F9.b],Y		; 17 F9
	sbc [$B3.b],Y		; F7 B3
	pha		; 48
	brk $08.b		; 00 08
	sbc [$F9.b],Y		; F7 F9
	stp		; DB
	pha		; 48
	cop $08.b		; 02 08
	ora [$E9.b]		; 07 E9
	cmp ($48.b,S),Y		; D3 48
	tsb $08.b		; 04 08
	ora [$E9.b]		; 07 E9
	cmp $48.b,S		; C3 48
	asl $08.b		; 06 08
	sbc [$F9.b],Y		; F7 F9
	cmp $48.b,S		; C3 48
	php		; 08
	php		; 08
	sbc ($07.b),Y		; F1 07
	tyx		; BB
	rti		; 40

	asl A		; 0A
	brk $F9.b		; 00 F9
	sbc $0B40B0.l,X		; FF B0 40 0B
	brk $E9.b		; 00 E9
	ora $0C40F9.l		; 0F F9 40 0C
	brk $EF.b		; 00 EF
	ora #$CB.b		; 09 CB
	rti		; 40

	ora $0900.w		; 0D 00 09
	sbc $0E40F3.l		; EF F3 40 0E
	brk $01.b		; 00 01
	sbc [$F3.b],Y		; F7 F3
	rti		; 40

	ora $EF0900.l		; 0F 00 09 EF
	tyx		; BB
	rti		; 40

	inc A		; 1A
	brk $F1.b		; 00 F1
	ora [$B3.b]		; 07 B3
	rti		; 40

	tas		; 1B
	brk $FF.b		; 00 FF
	sbc $40D3.w,Y		; F9 D3 40
	trb $F700.w		; 1C 00 F7
	ora ($D3.b,X)		; 01 D3
	rti		; 40

	ora $EF00.w,X		; 1D 00 EF
	ora #$DE.b		; 09 DE
	rti		; 40

	asl $EF00.w,X		; 1E 00 EF
	ora #$E6.b		; 09 E6
	rti		; 40

	ora $09EF00.l,X		; 1F 00 EF 09
	inc $2040.w		; EE 40 20
	brk $EF.b		; 00 EF
	ora #$F6.b		; 09 F6
	rti		; 40

	and ($00.b,X)		; 21 00
	asl $F2.b		; 06 F2
	xba		; EB
	rti		; 40

	jsl $FAFE00.l		; 22 00 FE FA
	xba		; EB
	rti		; 40

	and $00.b,S		; 23 00
	tsb $FBEC.w		; 0C EC FB
	rti		; 40

	bit $00.b		; 24 00
	cpx $F90C.w		; EC 0C F9
	rti		; 40

	and $00.b		; 25 00
	inc A		; 1A
	ora [$E9.b]		; 07 E9
	clv		; B8
	pha		; 48
	brk $08.b		; 00 08
	ora [$D9.b],Y		; 17 D9
	clv		; B8
	pha		; 48
	cop $08.b		; 02 08
	ora [$D9.b],Y		; 17 D9
	iny		; C8
	pha		; 48
	tsb $08.b		; 04 08
	and [$C9.b]		; 27 C9
	cmp ($48.b,X)		; C1 48
	asl $08.b		; 06 08
	ora #$EF.b		; 09 EF
	cmp $000840.l,X		; DF 40 08 00
	sbc $F0FF.w,Y		; F9 FF F0
	rti		; 40

	ora #$00.b		; 09 00
	ora ($F7.b,X)		; 01 F7
	sbc #$40.b		; E9 40
	asl A		; 0A
	brk $0F.b		; 00 0F
	sbc #$FB.b		; E9 FB
	rti		; 40

	phd		; 0B
	brk $FF.b		; 00 FF
	sbc $40B6.w,Y		; F9 B6 40
	tsb $FF00.w		; 0C 00 FF
	sbc $40BE.w,Y		; F9 BE 40
	ora $1700.w		; 0D 00 17
	sbc ($E0.b,X)		; E1 E0
	rti		; 40

	asl $0A00.w		; 0E 00 0A
	inc $40D7.w		; EE D7 40
	ora $E61200.l		; 0F 00 12 E6
	sbc [$40.b],Y		; F7 40
	clc		; 18
	brk $1A.b		; 00 1A
	dec $40D8.w,X		; DE D8 40
	ora $0F00.w,Y		; 19 00 0F
	sbc #$C8.b		; E9 C8
	rti		; 40

	inc A		; 1A
	brk $0F.b		; 00 0F
	sbc #$D0.b		; E9 D0
	rti		; 40

	tas		; 1B
	brk $27.b		; 00 27
	cmp ($B9.b),Y		; D1 B9
	rti		; 40

	trb $1200.w		; 1C 00 12
	inc $D8.b		; E6 D8
	rti		; 40

	ora $0600.w,X		; 1D 00 06
	sbc ($E4.b)		; F2 E4
	rti		; 40

	asl $1600.w,X		; 1E 00 16
.ACCU 8
	sep #$E8		; E2 E8
	rti		; 40

	ora $FAFE00.l,X		; 1F 00 FE FA
	beq  64.b		; F0 40
	jsr $1D00.w		; 20 00 1D
	stp		; DB
	bcs  64.b		; B0 40
	and ($00.b,X)		; 21 00
	ora $E3.b,X		; 15 E3
	bcs  64.b		; B0 40
	jsl $EB0D00.l		; 22 00 0D EB
	bcs  64.b		; B0 40
	and $00.b,S		; 23 00
	ora $F3.b		; 05 F3
	bcs  64.b		; B0 40
	bit $00.b		; 24 00
	trb $E4.b		; 14 E4
	sbc $002540.l		; EF 40 25 00
	ora $E4.b,X		; 15 E4
	tsb $48E7.w		; 0C E7 48
	brk $08.b		; 00 08
	tsb $E7E4.w		; 0C E4 E7
	pha		; 48
	cop $08.b		; 02 08
	tsb $F7E4.w		; 0C E4 F7
	pha		; 48
	tsb $08.b		; 04 08
	jsr ($E7F4.w,X)		; FC F4 E7
	pha		; 48
	asl $08.b		; 06 08
	jsr ($F7F4.w,X)		; FC F4 F7
	pha		; 48
	php		; 08
	php		; 08
	dec $22.b,X		; D6 22
	sbc $40.b,X		; F5 40
	asl A		; 0A
	brk $CE.b		; 00 CE
	rol A		; 2A
	sbc $40.b,X		; F5 40
	phd		; 0B
	brk $DC.b		; 00 DC
	trb $40E5.w		; 1C E5 40
	tsb $D100.w		; 0C 00 D1
	and [$DA.b]		; 27 DA
	rti		; 40

	ora $F400.w		; 0D 00 F4
	tsb $E7.b		; 04 E7
	rti		; 40

	asl $F400.w		; 0E 00 F4
	tsb $EF.b		; 04 EF
	rti		; 40

	ora $04F400.l		; 0F 00 F4 04
	sbc [$40.b],Y		; F7 40
	inc A		; 1A
	brk $EC.b		; 00 EC
	tsb $40F7.w		; 0C F7 40
	tas		; 1B
	brk $F4.b		; 00 F4
	tsb $FF.b		; 04 FF
	rti		; 40

	trb $DC00.w		; 1C 00 DC
	trb $40F0.w		; 1C F0 40
	ora $D400.w,X		; 1D 00 D4
	bit $E2.b		; 24 E2
	rti		; 40

	asl $CC00.w,X		; 1E 00 CC
	bit $40E2.w		; 2C E2 40
	ora $E51300.l,X		; 1F 00 13 E5
	cmp $002040.l,X		; DF 40 20 00
	phd		; 0B
	sbc $40DF.w		; ED DF 40
	and ($00.b,X)		; 21 00
	ora $F5.b,S		; 03 F5
	cmp $002240.l,X		; DF 40 22 00
	xce		; FB
	sbc $40DF.w,X		; FD DF 40
	and $00.b,S		; 23 00
	bpl -30.b		; 10 E2
	asl $48E9.w		; 0E E9 48
	brk $08.b		; 00 08
	cop $EE.b		; 02 EE
	cpx $0248.w		; EC 48 02
	php		; 08
	sbc ($FE.b)		; F2 FE
	cpx $0448.w		; EC 48 04
	php		; 08
	cop $EE.b		; 02 EE
	jsr ($0648.w,X)		; FC 48 06
	php		; 08
	sbc ($FE.b)		; F2 FE
	jsr ($0848.w,X)		; FC 48 08
	php		; 08
	ora ($DE.b)		; 12 DE
	inx		; E8
	pha		; 48
	asl A		; 0A
	php		; 08
.INDEX 8
	sep #$16		; E2 16
	sbc $0C40.w,Y		; F9 40 0C
	brk $EA.b		; 00 EA
	asl $4001.w		; 0E 01 40
	ora $1200.w		; 0D 00 12
	inc $00.b		; E6 00
	rti		; 40

	asl $EA00.w		; 0E 00 EA
	asl $40F9.w		; 0E F9 40
	ora $DE1A00.l		; 0F 00 1A DE
	sed		; F8
	rti		; 40

	trb $1200.w		; 1C 00 12
	inc $F8.b		; E6 F8
	rti		; 40

	ora $D600.w,X		; 1D 00 D6
	jsl $1E40F8.l		; 22 F8 40 1E
	brk $CE.b		; 00 CE
	rol A		; 2A
	sed		; F8
	rti		; 40

	ora $1BDD00.l,X		; 1F 00 DD 1B
	sbc ($40.b),Y		; F1 40
	jsr $DD00.w		; 20 00 DD
	tas		; 1B
	sbc $2140.w,Y		; F9 40 21
	brk $10.b		; 00 10
	asl A		; 0A
	inc $F2.b		; E6 F2
	iny		; C8
	brk $88.b		; 00 88
	ora #$E7.b		; 09 E7
	sep #$C8		; E2 C8
	cop $88.b		; 02 88
	sbc $E2F7.w,Y		; F9 F7 E2
	iny		; C8
	tsb $88.b		; 04 88
	brk $F0.b		; 00 F0
	rep #$C8		; C2 C8
	asl $88.b		; 06 88
	brk $F0.b		; 00 F0
	lda ($C8.b)		; B2 C8
	php		; 08
	dey		; 88
	ora $EB.b		; 05 EB
	cmp ($C8.b)		; D2 C8
	asl A		; 0A
	dey		; 88
	cop $F6.b		; 02 F6
	plx		; FA
	cpy #$0C.b		; C0 0C
	bra   2.b		; 80 02
	inc $F2.b,X		; F6 F2
	cpy #$0D.b		; C0 0D
	bra  13.b		; 80 0D
	xba		; EB
	lda $800EC0.l		; AF C0 0E 80
	ora $A7EB.w		; 0D EB A7
	cpy #$0F.b		; C0 0F
	bra -11.b		; 80 F5
	ora $DA.b,S		; 03 DA
	cpy #$1C.b		; C0 1C
	bra   0.b		; 80 00
	sed		; F8
	tax		; AA
	cpy #$1D.b		; C0 1D
	bra  -3.b		; 80 FD
	xce		; FB
	phx		; DA
	cpy #$1E.b		; C0 1E
	bra  -3.b		; 80 FD
	xce		; FB
	cmp ($C0.b)		; D2 C0
	ora $04F480.l,X		; 1F 80 F4 04
	sbc $8020C0.l		; EF C0 20 80
	xce		; FB
	sbc $C0A7.w,X		; FD A7 C0
	and ($80.b,X)		; 21 80
	ora [$F9.b],Y		; 17 F9
	sbc [$F2.b],Y		; F7 F2
	iny		; C8
	brk $88.b		; 00 88
	sbc [$F9.b],Y		; F7 F9
	dex		; CA
	iny		; C8
	cop $88.b		; 02 88
	ora [$E9.b]		; 07 E9
	cmp ($C8.b)		; D2 C8
	tsb $88.b		; 04 88
	ora [$E9.b]		; 07 E9
	sep #$C8		; E2 C8
	asl $88.b		; 06 88
	sbc [$F9.b],Y		; F7 F9
	sep #$C8		; E2 C8
	php		; 08
	dey		; 88
	sbc ($07.b),Y		; F1 07
	sbc ($C0.b)		; F2 C0
	asl A		; 0A
	bra  -7.b		; 80 F9
	sbc $0BC0FD.l,X		; FF FD C0 0B
	bra -23.b		; 80 E9
	ora $0CC0B4.l		; 0F B4 C0 0C
	bra -17.b		; 80 EF
	ora #$E2.b		; 09 E2
	cpy #$0D.b		; C0 0D
	bra   9.b		; 80 09
	sbc $0EC0BA.l		; EF BA C0 0E
	bra   1.b		; 80 01
	sbc [$BA.b],Y		; F7 BA
	cpy #$0F.b		; C0 0F
	bra   9.b		; 80 09
	sbc $1AC0F2.l		; EF F2 C0 1A
	bra -15.b		; 80 F1
	ora [$FA.b]		; 07 FA
	cpy #$1B.b		; C0 1B
	bra  -1.b		; 80 FF
	sbc $C0DA.w,Y		; F9 DA C0
	trb $F780.w		; 1C 80 F7
	ora ($DA.b,X)		; 01 DA
	cpy #$1D.b		; C0 1D
	bra -17.b		; 80 EF
	ora #$CF.b		; 09 CF
	cpy #$1E.b		; C0 1E
	bra -17.b		; 80 EF
	ora #$C7.b		; 09 C7
	cpy #$1F.b		; C0 1F
	bra -17.b		; 80 EF
	ora #$BF.b		; 09 BF
	cpy #$20.b		; C0 20
	bra -17.b		; 80 EF
	ora #$B7.b		; 09 B7
	cpy #$21.b		; C0 21
	bra   6.b		; 80 06
	sbc ($C2.b)		; F2 C2
	cpy #$22.b		; C0 22
	bra  -2.b		; 80 FE
	plx		; FA
	rep #$C0		; C2 C0
	and $80.b,S		; 23 80
	tsb $B2EC.w		; 0C EC B2
	cpy #$24.b		; C0 24
	bra -20.b		; 80 EC
	tsb $C0B4.w		; 0C B4 C0
	and $80.b		; 25 80
	inc A		; 1A
	ora [$E9.b]		; 07 E9
	inc $00C8.w		; EE C8 00
	dey		; 88
	ora [$D9.b],Y		; 17 D9
	inc $02C8.w		; EE C8 02
	dey		; 88
	ora [$D9.b],Y		; 17 D9
	dec $04C8.w,X		; DE C8 04
	dey		; 88
	and [$C9.b]		; 27 C9
	sbc $C8.b		; E5 C8
	asl $88.b		; 06 88
	ora #$EF.b		; 09 EF
	cmp $8008C0.l		; CF C0 08 80
	sbc $BEFF.w,Y		; F9 FF BE
	cpy #$09.b		; C0 09
	bra   1.b		; 80 01
	sbc [$C5.b],Y		; F7 C5
	cpy #$0A.b		; C0 0A
	bra  15.b		; 80 0F
	sbc #$B3.b		; E9 B3
	cpy #$0B.b		; C0 0B
	bra  -1.b		; 80 FF
	sbc $C0F8.w,Y		; F9 F8 C0
	tsb $FF80.w		; 0C 80 FF
	sbc $C0F0.w,Y		; F9 F0 C0
	ora $1780.w		; 0D 80 17
	sbc ($CE.b,X)		; E1 CE
	cpy #$0E.b		; C0 0E
	bra  10.b		; 80 0A
	inc $C0D7.w		; EE D7 C0
	ora $E61280.l		; 0F 80 12 E6
	lda [$C0.b],Y		; B7 C0
	clc		; 18
	bra  26.b		; 80 1A
	dec $C0D6.w,X		; DE D6 C0
	ora $0F80.w,Y		; 19 80 0F
	sbc #$E6.b		; E9 E6
	cpy #$1A.b		; C0 1A
	bra  15.b		; 80 0F
	sbc #$DE.b		; E9 DE
	cpy #$1B.b		; C0 1B
	bra  39.b		; 80 27
	cmp ($F5.b),Y		; D1 F5
	cpy #$1C.b		; C0 1C
	bra  18.b		; 80 12
	inc $D6.b		; E6 D6
	cpy #$1D.b		; C0 1D
	bra   6.b		; 80 06
	sbc ($CA.b)		; F2 CA
	cpy #$1E.b		; C0 1E
	bra  22.b		; 80 16
	sep #$C6		; E2 C6
	cpy #$1F.b		; C0 1F
	bra  -2.b		; 80 FE
	plx		; FA
	ldx $20C0.w,Y		; BE C0 20
	bra  29.b		; 80 1D
	stp		; DB
	inc $21C0.w,X		; FE C0 21
	bra  21.b		; 80 15
	sbc $FE.b,S		; E3 FE
	cpy #$22.b		; C0 22
	bra  13.b		; 80 0D
	xba		; EB
	inc $23C0.w,X		; FE C0 23
	bra   5.b		; 80 05
	sbc ($FE.b,S),Y		; F3 FE
	cpy #$24.b		; C0 24
	bra  20.b		; 80 14
	cpx $BF.b		; E4 BF
	cpy #$25.b		; C0 25
	bra  21.b		; 80 15
	cpx $0C.b		; E4 0C
	sbc $C8.b,S		; E3 C8
	brk $88.b		; 00 88
	tsb $E3E4.w		; 0C E4 E3
	iny		; C8
	cop $88.b		; 02 88
	tsb $D3E4.w		; 0C E4 D3
	iny		; C8
	tsb $88.b		; 04 88
	jsr ($E3F4.w,X)		; FC F4 E3
	iny		; C8
	asl $88.b		; 06 88
	jsr ($D3F4.w,X)		; FC F4 D3
	iny		; C8
	php		; 08
	dey		; 88
	dec $22.b,X		; D6 22
	cmp $0AC0.w,X		; DD C0 0A
	bra -50.b		; 80 CE
	rol A		; 2A
	cmp $0BC0.w,X		; DD C0 0B
	bra -36.b		; 80 DC
	trb $C0ED.w		; 1C ED C0
	tsb $D180.w		; 0C 80 D1
	and [$F8.b]		; 27 F8
	cpy #$0D.b		; C0 0D
	bra -12.b		; 80 F4
	tsb $EB.b		; 04 EB
	cpy #$0E.b		; C0 0E
	bra -12.b		; 80 F4
	tsb $E3.b		; 04 E3
	cpy #$0F.b		; C0 0F
	bra -12.b		; 80 F4
	tsb $DB.b		; 04 DB
	cpy #$1A.b		; C0 1A
	bra -20.b		; 80 EC
	tsb $C0DB.w		; 0C DB C0
	tas		; 1B
	bra -12.b		; 80 F4
	tsb $D3.b		; 04 D3
	cpy #$1C.b		; C0 1C
	bra -36.b		; 80 DC
	trb $C0E2.w		; 1C E2 C0
	ora $D480.w,X		; 1D 80 D4
	bit $F0.b		; 24 F0
	cpy #$1E.b		; C0 1E
	bra -52.b		; 80 CC
	bit $C0F0.w		; 2C F0 C0
	ora $E51380.l,X		; 1F 80 13 E5
	sbc ($C0.b,S),Y		; F3 C0
	jsr $0B80.w		; 20 80 0B
	sbc $C0F3.w		; ED F3 C0
	and ($80.b,X)		; 21 80
	ora $F5.b,S		; 03 F5
	sbc ($C0.b,S),Y		; F3 C0
	jsl $FDFB80.l		; 22 80 FB FD
	sbc ($C0.b,S),Y		; F3 C0
	and $80.b,S		; 23 80
	bpl -30.b		; 10 E2
	asl $C8F4.w		; 0E F4 C8
	brk $88.b		; 00 88
	cop $EE.b		; 02 EE
	sbc ($C8.b),Y		; F1 C8
	cop $88.b		; 02 88
	sbc ($FE.b)		; F2 FE
	sbc ($C8.b),Y		; F1 C8
	tsb $88.b		; 04 88
	cop $EE.b		; 02 EE
	sbc ($C8.b,X)		; E1 C8
	asl $88.b		; 06 88
	sbc ($FE.b)		; F2 FE
	sbc ($C8.b,X)		; E1 C8
	php		; 08
	dey		; 88
	ora ($DE.b)		; 12 DE
	sbc $C8.b,X		; F5 C8
	asl A		; 0A
	dey		; 88
.INDEX 8
	sep #$16		; E2 16
	cpx $0CC0.w		; EC C0 0C
	bra -22.b		; 80 EA
	asl $C0E4.w		; 0E E4 C0
	ora $1280.w		; 0D 80 12
	inc $E5.b		; E6 E5
	cpy #$0E.b		; C0 0E
	bra -22.b		; 80 EA
	asl $C0EC.w		; 0E EC C0
	ora $DE1A80.l		; 0F 80 1A DE
	sbc $1CC0.w		; ED C0 1C
	bra  18.b		; 80 12
	inc $ED.b		; E6 ED
	cpy #$1D.b		; C0 1D
	bra -42.b		; 80 D6
	jsl $1EC0ED.l		; 22 ED C0 1E
	bra -50.b		; 80 CE
	rol A		; 2A
	sbc $1FC0.w		; ED C0 1F
	bra -35.b		; 80 DD
	tas		; 1B
	pea $20C0.w		; F4 C0 20
	bra -35.b		; 80 DD
	tas		; 1B
	cpx $21C0.w		; EC C0 21
	bra  24.b		; 80 18
	asl A		; 0A
	inc $E5.b		; E6 E5
	pha		; 48
	brk $08.b		; 00 08
	asl A		; 0A
	inc $F5.b		; E6 F5
	pha		; 48
	cop $08.b		; 02 08
	sbc ($FE.b)		; F2 FE
	sbc $0448.w		; ED 48 04
	php		; 08
	cop $F6.b		; 02 F6
	jmp.w [$0640]		; DC 40 06
	brk $02.b		; 00 02
	inc $E4.b,X		; F6 E4
	rti		; 40

	ora [$00.b]		; 07 00
	cop $F6.b		; 02 F6
	cpx $0840.w		; EC 40 08
	brk $02.b		; 00 02
	inc $F4.b,X		; F6 F4
	rti		; 40

	ora #$00.b		; 09 00
.INDEX 8
	sep #$16		; E2 16
	pea $0A40.w		; F4 40 0A
	brk $02.b		; 00 02
	inc $FC.b,X		; F6 FC
	rti		; 40

	phd		; 0B
	brk $E2.b		; 00 E2
	asl $FC.b,X		; 16 FC
	rti		; 40

	tsb $0A00.w		; 0C 00 0A
	inc $40D5.w		; EE D5 40
	ora $FA00.w		; 0D 00 FA
	inc $40D5.w,X		; FE D5 40
	asl $0A00.w		; 0E 00 0A
	inc $40DD.w		; EE DD 40
	ora $FEFA00.l		; 0F 00 FA FE
	cmp $1640.w,X		; DD 40 16
	brk $FA.b		; 00 FA
	inc $40E5.w,X		; FE E5 40
	ora [$00.b],Y		; 17 00
	inc A		; 1A
	dec $40EB.w,X		; DE EB 40
	clc		; 18
	brk $1A.b		; 00 1A
	dec $40F3.w,X		; DE F3 40
	ora $0200.w,Y		; 19 00 02
	inc $D4.b,X		; F6 D4
	rti		; 40

	inc A		; 1A
	brk $EA.b		; 00 EA
	asl $40ED.w		; 0E ED 40
	tas		; 1B
	brk $EA.b		; 00 EA
	asl $40F5.w		; 0E F5 40
	trb $DA00.w		; 1C 00 DA
	asl $40FA.w,X		; 1E FA 40
	ora $FE00.w,X		; 1D 00 FE
	plx		; FA
	ora $40.b		; 05 40
	asl $FB00.w,X		; 1E 00 FB
	sbc $40FD.w,X		; FD FD 40
	ora $05F300.l,X		; 1F 00 F3 05
	sbc $2040.w,X		; FD 40 20
	brk $14.b		; 00 14
	inc $FA.b,X		; F6 FA
	cmp ($08.b,S),Y		; D3 08
	brk $48.b		; 00 48
	asl $EA.b		; 06 EA
	cmp ($08.b,S),Y		; D3 08
	cop $48.b		; 02 48
	cop $EE.b		; 02 EE
	lda $08.b,S		; A3 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $E3.b,X		; F5 E3
	php		; 08
	asl $48.b		; 06 48
	cpx $C304.w		; EC 04 C3
	php		; 08
	php		; 08
	pha		; 48
	tsb $B3E4.w		; 0C E4 B3
	php		; 08
	asl A		; 0A
	pha		; 48
	tsb $C3E4.w		; 0C E4 C3
	php		; 08
	tsb $FC48.w		; 0C 48 FC
	pea $08C3.w		; F4 C3 08
	asl $FC48.w		; 0E 48 FC
	pea $08B3.w		; F4 B3 08
	jsr $F948.w		; 20 48 F9
	sbc $2200FB.l,X		; FF FB 00 22
	rti		; 40

	phd		; 0B
	sbc $00E3.w		; ED E3 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $00EB.w		; ED EB 00
	bit $40.b		; 24 40
	tsb $FBEC.w		; 0C EC FB
	brk $25.b		; 00 25
	rti		; 40

	trb $E4.b		; 14 E4
	xce		; FB
	brk $26.b		; 00 26
	rti		; 40

	plx		; FA
	inc $00F3.w,X		; FE F3 00
	and [$40.b]		; 27 40
	inc $D30A.w		; EE 0A D3
	brk $28.b		; 00 28
	rti		; 40

	ora ($E6.b)		; 12 E6
	lda $00.b,S		; A3 00
	and #$40.b		; 29 40
	ora ($E6.b)		; 12 E6
	plb		; AB
	brk $2A.b		; 00 2A
	rti		; 40

	phd		; 0B
	sbc $00F3.w		; ED F3 00
	pld		; 2B
	rti		; 40

	pea $BB04.w		; F4 04 BB
	brk $2C.b		; 00 2C
	rti		; 40

	ora $D9EF01.l,X		; 1F 01 EF D9
	php		; 08
	brk $48.b		; 00 48
	ora ($DF.b),Y		; 11 DF
	cmp $0208.w,Y		; D9 08 02
	pha		; 48
	bit $A5C4.w		; 2C C4 A5
	php		; 08
	tsb $48.b		; 04 48
	bit $CC.b		; 24 CC
	lda $08.b,X		; B5 08
	asl $48.b		; 06 48
	bit $CC.b		; 24 CC
	cmp $08.b		; C5 08
	php		; 08
	pha		; 48
	bit $BC.b,X		; 34 BC
	lda $08.b,X		; B5 08
	asl A		; 0A
	pha		; 48
	pea $BFFC.w		; F4 FC BF
	php		; 08
	tsb $0448.w		; 0C 48 04
	cpx $08B9.w		; EC B9 08
	asl $1448.w		; 0E 48 14
	jmp.w [$08B9]		; DC B9 08
	jsr $0448.w		; 20 48 04
	cpx $08C9.w		; EC C9 08
	jsl $DC1448.l		; 22 48 14 DC
	cmp #$08.b		; C9 08
	bit $48.b		; 24 48
	ora $F1E3.w		; 0D E3 F1
	php		; 08
	rol $48.b		; 26 48
	sbc [$01.b],Y		; F7 01
	sbc $00.b,X		; F5 00
	plp		; 28
	rti		; 40

	asl $B1EA.w		; 0E EA B1
	brk $29.b		; 00 29
	rti		; 40

	asl $E2.b,X		; 16 E2
	lda ($00.b),Y		; B1 00
	rol A		; 2A
	rti		; 40

	bit $ADBC.w,X		; 3C BC AD
	brk $2B.b		; 00 2B
	rti		; 40

	bit $C4.b,X		; 34 C4
	cmp $00.b		; C5 00
	bit $3C40.w		; 2C 40 3C
	ldy $00C5.w,X		; BC C5 00
	and $3440.w		; 2D 40 34
	cpy $CD.b		; C4 CD
	brk $2E.b		; 00 2E
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sbc #$00.b		; E9 00
	and $04F440.l		; 2F 40 F4 04
	cmp $403800.l		; CF 00 38 40
	jsr ($CFFC.w,X)		; FC FC CF
	brk $39.b		; 00 39
	rti		; 40

	bit $D4.b		; 24 D4
	sta $3A00.w,Y		; 99 00 3A
	rti		; 40

	jsr ($E9FC.w,X)		; FC FC E9
	brk $3B.b		; 00 3B
	rti		; 40

	tsb $F4.b		; 04 F4
	sbc #$00.b		; E9 00
	bit $FC40.w,X		; 3C 40 FC
	jsr ($00F1.w,X)		; FC F1 00
	and $1940.w,X		; 3D 40 19
	cmp $3E00E9.l,X		; DF E9 00 3E
	rti		; 40

	plx		; FA
	inc $00D7.w,X		; FE D7 00
	and $05F340.l,X		; 3F 40 F3 05
	sbc $4000.w,Y		; F9 00 40
	rti		; 40

	bit $9DCC.w		; 2C CC 9D
	brk $41.b		; 00 41
	rti		; 40

	asl $B1DA.w,X		; 1E DA B1
	brk $42.b		; 00 42
	rti		; 40

	ora [$F9.b],Y		; 17 F9
	sbc [$E2.b],Y		; F7 E2
	php		; 08
	brk $48.b		; 00 48
	ora #$E7.b		; 09 E7
	sep #$08		; E2 08
	cop $48.b		; 02 48
	jsr ($D2F4.w,X)		; FC F4 D2
	php		; 08
	tsb $48.b		; 04 48
	tsb $D2E4.w		; 0C E4 D2
	php		; 08
	asl $48.b		; 06 48
	sbc $FB.b,X		; F5 FB
	sbc ($08.b)		; F2 08
	php		; 08
	pha		; 48
	ora $EB.b		; 05 EB
	sbc ($08.b)		; F2 08
	asl A		; 0A
	pha		; 48
	ora $DB.b,X		; 15 DB
	sbc ($08.b)		; F2 08
	tsb $0448.w		; 0C 48 04
	pea $00CA.w		; F4 CA 00
	asl $0C40.w		; 0E 40 0C
	cpx $00CA.w		; EC CA 00
	ora $E41440.l		; 0F 40 14 E4
	dex		; CA
	brk $1E.b		; 00 1E
	rti		; 40

	and $D3.b		; 25 D3
	sbc ($00.b,S),Y		; F3 00
	ora $CB2D40.l,X		; 1F 40 2D CB
	sbc ($00.b,S),Y		; F3 00
	jsr $2540.w		; 20 40 25
	cmp ($FB.b,S),Y		; D3 FB
	brk $21.b		; 00 21
	rti		; 40

	and $C3.b,X		; 35 C3
	dex		; CA
	brk $22.b		; 00 22
	rti		; 40

	and $C3.b,X		; 35 C3
	cmp ($00.b)		; D2 00
	and $40.b,S		; 23 40
	and $C3.b,X		; 35 C3
	phx		; DA
	brk $24.b		; 00 24
	rti		; 40

	and $C3.b,X		; 35 C3
	sep #$00		; E2 00
	and $40.b		; 25 40
	rol $D2.b		; 26 D2
	xba		; EB
	brk $26.b		; 00 26
	rti		; 40

	rol $EBCA.w		; 2E CA EB
	brk $27.b		; 00 27
	rti		; 40

	rol $E3CA.w		; 2E CA E3
	brk $28.b		; 00 28
	rti		; 40

	ora $02EB.w		; 0D EB 02
	brk $29.b		; 00 29
	rti		; 40

	ora $E3.b,X		; 15 E3
	cop $00.b		; 02 00
	rol A		; 2A
	rti		; 40

	ora $02DB.w,X		; 1D DB 02
	brk $2B.b		; 00 2B
	rti		; 40

	phd		; 0B
	asl $EA.b		; 06 EA
	wai		; CB
	php		; 08
	brk $48.b		; 00 48
	xce		; FB
	sbc $DB.b,X		; F5 DB
	php		; 08
	cop $48.b		; 02 48
	phd		; 0B
	sbc $DB.b		; E5 DB
	php		; 08
	tsb $48.b		; 04 48
	xce		; FB
	sbc $EB.b,X		; F5 EB
	php		; 08
	asl $48.b		; 06 48
	phd		; 0B
	sbc $EB.b		; E5 EB
	php		; 08
	php		; 08
	pha		; 48
	inc $D3FA.w,X		; FE FA D3
	brk $0A.b		; 00 0A
	rti		; 40

	asl $E2.b,X		; 16 E2
	wai		; CB
	brk $0B.b		; 00 0B
	rti		; 40

	asl $E2.b,X		; 16 E2
	cmp ($00.b,S),Y		; D3 00
	tsb $0F40.w		; 0C 40 0F
	sbc #$FB.b		; E9 FB
	brk $0D.b		; 00 0D
	rti		; 40

	sbc $03.b,X		; F5 03
	xce		; FB
	brk $0E.b		; 00 0E
	rti		; 40

	sbc $FBFB.w,X		; FD FB FB
	brk $0F.b		; 00 0F
	rti		; 40

	ora $EBEA06.l,X		; 1F 06 EA EB
	php		; 08
	brk $48.b		; 00 48
	nop		; EA
	asl $C3.b		; 06 C3
	php		; 08
	cop $48.b		; 02 48
	plx		; FA
	inc $C3.b,X		; F6 C3
	php		; 08
	tsb $48.b		; 04 48
	sbc ($FD.b,S),Y		; F3 FD
	plb		; AB
	php		; 08
	asl $48.b		; 06 48
	xba		; EB
	ora $D3.b		; 05 D3
	php		; 08
	php		; 08
	pha		; 48
	xce		; FB
	sbc $D3.b,X		; F5 D3
	php		; 08
	asl A		; 0A
	pha		; 48
	beq   8.b		; F0 08
	stz $0C00.w,X		; 9E 00 0C
	rti		; 40

	sed		; F8
	brk $98.b		; 00 98
	brk $0C.b		; 00 0C
	rti		; 40

	asl A		; 0A
	inc $00C3.w		; EE C3 00
	ora $EE40.w		; 0D 40 EE
	asl A		; 0A
	xce		; FB
	brk $0E.b		; 00 0E
	rti		; 40

	inc $A3FA.w,X		; FE FA A3
	brk $0F.b		; 00 0F
	rti		; 40

	nop		; EA
	asl $00A5.w		; 0E A5 00
	tsb $0240.w		; 0C 40 02
	inc $96.b,X		; F6 96
	brk $0C.b		; 00 0C
	rti		; 40

	ora ($E6.b)		; 12 E6
	ldy #$00.b		; A0 00
	tsb $1240.w		; 0C 40 12
	inc $C8.b		; E6 C8
	brk $1C.b		; 00 1C
	rti		; 40

	ora $F5.b,S		; 03 F5
	sbc $00.b,S		; E3 00
	ora $0B40.w,X		; 1D 40 0B
	sbc $00E3.w		; ED E3 00
	asl $F340.w,X		; 1E 40 F3
	ora $EB.b		; 05 EB
	brk $1F.b		; 00 1F
	rti		; 40

	inc $12.b		; E6 12
	lda $0C00.w		; AD 00 0C
	rti		; 40

	ora $00FBE9.l		; 0F E9 FB 00
	jsr $F040.w		; 20 40 F0
	php		; 08
	sbc ($00.b,S),Y		; F3 00
	and ($40.b,X)		; 21 40
	ora $F5.b,S		; 03 F5
	plb		; AB
	brk $22.b		; 00 22
	rti		; 40

	ora $F5.b,S		; 03 F5
	lda ($00.b,S),Y		; B3 00
	and $40.b,S		; 23 40
	phd		; 0B
	sbc $009A.w		; ED 9A 00
	tsb $E440.w		; 0C 40 E4
	trb $BB.b		; 14 BB
	brk $24.b		; 00 24
	rti		; 40

	cpx $BB0C.w		; EC 0C BB
	brk $25.b		; 00 25
	rti		; 40

	pea $BB04.w		; F4 04 BB
	brk $26.b		; 00 26
	rti		; 40

	jsr ($BBFC.w,X)		; FC FC BB
	brk $27.b		; 00 27
	rti		; 40

	tsb $F4.b		; 04 F4
	tyx		; BB
	brk $28.b		; 00 28
	rti		; 40

	cpx $14.b		; E4 14
	ldy $00.b,X		; B4 00
	and #$40.b		; 29 40
	sbc $03.b,X		; F5 03
	sbc $00.b,S		; E3 00
	rol A		; 2A
	rti		; 40

	asl $E7.b,X		; 16 E7
	ora #$BD.b		; 09 BD
	php		; 08
	brk $48.b		; 00 48
	sbc [$F9.b],Y		; F7 F9
	lda $0208.w,X		; BD 08 02
	pha		; 48
	ora [$E9.b]		; 07 E9
	lda $0408.w,X		; BD 08 04
	pha		; 48
	sbc ($FF.b),Y		; F1 FF
	lda $0608.w		; AD 08 06
	pha		; 48
	ora ($EF.b,X)		; 01 EF
	lda $0808.w		; AD 08 08
	pha		; 48
	sbc #$07.b		; E9 07
	cmp $0A08.w		; CD 08 0A
	pha		; 48
	sbc $CDF7.w,Y		; F9 F7 CD
	php		; 08
	tsb $0948.w		; 0C 48 09
	sbc [$CD.b]		; E7 CD
	php		; 08
	asl $F248.w		; 0E 48 F2
	inc $08ED.w,X		; FE ED 08
	jsr $0248.w		; 20 48 02
	inc $08ED.w		; EE ED 08
	jsl $FEF248.l		; 22 48 F2 FE
	sbc $2408.w,X		; FD 08 24
	pha		; 48
	pea $DDFC.w		; F4 FC DD
	php		; 08
	rol $48.b		; 26 48
	tsb $EC.b		; 04 EC
	cmp $2808.w,X		; DD 08 28
	pha		; 48
	asl A		; 0A
	inc $00FD.w		; EE FD 00
	rol A		; 2A
	rti		; 40

	cop $F6.b		; 02 F6
	ora $00.b		; 05 00
	pld		; 2B
	rti		; 40

	pea $A504.w		; F4 04 A5
	brk $2C.b		; 00 2C
	rti		; 40

	jsr ($A5FC.w,X)		; FC FC A5
	brk $2D.b		; 00 2D
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $00.b		; A5 00
	rol $EC40.w		; 2E 40 EC
	tsb $00DD.w		; 0C DD 00
	and $E41440.l		; 2F 40 14 E4
	cmp $3A00.w,X		; DD 00 3A
	rti		; 40

	ora $CDDF.w,Y		; 19 DF CD
	brk $3B.b		; 00 3B
	rti		; 40

	cop $F6.b		; 02 F6
	sbc $3C00.w,X		; FD 00 3C
	rti		; 40

	tay		; A8
	cpy #$1B.b		; C0 1B
	cmp ($AC.b,X)		; C1 AC
	cmp ($C5.b,X)		; C1 C5
	cmp ($EA.b,X)		; C1 EA
	cmp ($63.b,X)		; C1 63
.ACCU 16
.INDEX 16
	rep #$F4		; C2 F4
	rep #$01		; C2 01
	cmp $32.b,S		; C3 32
	cmp $9F.b,S		; C3 9F
	cmp $B8.b,S		; C3 B8
	cmp $13.b,S		; C3 13
	ora #$F8E7.w		; 09 E7 F8
	php		; 08
	brk $48.b		; 00 48
	sbc ($0F.b,X)		; E1 0F
	tsb $08.b		; 04 08
	cop $48.b		; 02 48
	sbc ($0F.b,X)		; E1 0F
	pea $0408.w		; F4 08 04
	pha		; 48
	sbc ($0F.b,X)		; E1 0F
	cpx $08.b		; E4 08
	asl $48.b		; 06 48
	sbc ($FF.b),Y		; F1 FF
	sbc $480808.l		; EF 08 08 48
	sbc ($FF.b),Y		; F1 FF
	sbc $480A08.l,X		; FF 08 0A 48
	cmp $0C1F.w,Y		; D9 1F 0C
	brk $48.b		; 00 48
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsb $4900.w		; 0C 00 49
	rti		; 40

	ora #$08EF.w		; 09 EF 08
	brk $4A.b		; 00 4A
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	php		; 08
	brk $4B.b		; 00 4B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	pea $4C00.w		; F4 00 4C
	rti		; 40

	cmp $E41F.w,Y		; D9 1F E4
	brk $4D.b		; 00 4D
	rti		; 40

	cmp $EC1F.w,Y		; D9 1F EC
	brk $4E.b		; 00 4E
	rti		; 40

	cmp $F41F.w,Y		; D9 1F F4
	brk $4F.b		; 00 4F
	rti		; 40

	cmp $FE1F.w,Y		; D9 1F FE
	brk $58.b		; 00 58
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc [$00.b]		; E7 00
	eor $F940.w,Y		; 59 40 F9
	sbc $5A000F.l,X		; FF 0F 00 5A
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	jsr ($5B00.w,X)		; FC 00 5B
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	tsb $00.b		; 04 00
	jmp $091840.l		; 5C 40 18 09
	sbc [$F9.b]		; E7 F9
	php		; 08
	tsb $F948.w		; 0C 48 F9
	sbc [$F7.b],Y		; F7 F7
	php		; 08
	asl $E948.w		; 0E 48 E9
	ora $5D00F8.l		; 0F F8 00 5D
	rti		; 40

	sbc #$000F.w		; E9 0F 00
	brk $5E.b		; 00 5E
	rti		; 40

	sbc #$080F.w		; E9 0F 08
	brk $5F.b		; 00 5F
	rti		; 40

	sbc #$E80F.w		; E9 0F E8
	brk $60.b		; 00 60
	rti		; 40

	ora #$09EF.w		; 09 EF 09
	brk $61.b		; 00 61
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	ora #$6200.w		; 09 00 62
	rti		; 40

	cmp $E51F.w,Y		; D9 1F E5
	brk $63.b		; 00 63
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc $00.b		; E5 00
	stz $40.b		; 64 40
	sbc ($17.b,X)		; E1 17
	sbc $6500.w		; ED 00 65
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $6600.w		; ED 00 66
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc $00.b,X		; F5 00
	adc [$40.b]		; 67 40
	sbc ($07.b),Y		; F1 07
	sbc $00.b,X		; F5 00
	pla		; 68
	rti		; 40

	sbc ($17.b,X)		; E1 17
	sbc $6900.w,X		; FD 00 69
	rti		; 40

	sbc ($07.b),Y		; F1 07
	sbc $6A00.w,X		; FD 00 6A
	rti		; 40

	sbc ($17.b,X)		; E1 17
	ora $00.b		; 05 00
	rtl		; 6B

	rti		; 40

	sbc ($07.b),Y		; F1 07
	ora $00.b		; 05 00
	jmp ($E140.w)		; 6C 40 E1
	ora [$0D.b],Y		; 17 0D
	brk $6D.b		; 00 6D
	rti		; 40

	sbc $EFFF.w,Y		; F9 FF EF
	brk $6E.b		; 00 6E
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ora $406F00.l		; 0F 00 6F 40
	sbc #$F00F.w		; E9 0F F0
	brk $70.b		; 00 70
	rti		; 40

	sbc $07FF.w,Y		; F9 FF 07
	brk $71.b		; 00 71
	rti		; 40

	ora ($F7.b,X)		; 01 F7
	ora [$00.b]		; 07 00
	adc ($40.b)		; 72 40
	tsb $F0.b		; 04 F0
	brk $F0.b		; 00 F0
	php		; 08
	jsr $0048.w		; 20 48 00
	beq -16.b		; F0 F0
	php		; 08
	jsl $00F048.l		; 22 48 F0 00
	brk $C8.b		; 00 C8
	jsl $F00088.l		; 22 88 00 F0
	brk $C8.b		; 00 C8
	jsr $0688.w		; 20 88 06
	beq   0.b		; F0 00
	inx		; E8
	php		; 08
	bit $48.b		; 24 48
	brk $F0.b		; 00 F0
	inx		; E8
	pha		; 48
	bit $08.b		; 24 08
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	rol $48.b		; 26 48
	brk $F0.b		; 00 F0
	sed		; F8
	pha		; 48
	rol $08.b		; 26 08
	beq   0.b		; F0 00
	php		; 08
	dey		; 88
	bit $C8.b		; 24 C8
	brk $F0.b		; 00 F0
	php		; 08
	iny		; C8
	bit $88.b		; 24 88
	trb $09.b		; 14 09
	sbc [$11.b]		; E7 11
	php		; 08
	plp		; 28
	pha		; 48
	ora #$01E7.w		; 09 E7 01
	php		; 08
	rol A		; 2A
	pha		; 48
	ora #$DFE7.w		; 09 E7 DF
	dey		; 88
	plp		; 28
	iny		; C8
	ora #$EFE7.w		; 09 E7 EF
	dey		; 88
	rol A		; 2A
	iny		; C8
	sbc [$09.b]		; E7 09
	ora ($48.b),Y		; 11 48
	plp		; 28
	php		; 08
	sbc [$09.b]		; E7 09
	ora ($48.b,X)		; 01 48
	rol A		; 2A
	php		; 08
	sbc [$09.b]		; E7 09
	cmp $8828C8.l,X		; DF C8 28 88
	sbc [$09.b]		; E7 09
	sbc $882AC8.l		; EF C8 2A 88
	ora ($F7.b,X)		; 01 F7
	sbc $407300.l		; EF 00 73 40
	ora ($F7.b,X)		; 01 F7
	sbc [$00.b],Y		; F7 00
	stz $40.b,X		; 74 40
	ora ($F7.b,X)		; 01 F7
	ora ($00.b),Y		; 11 00
	adc $40.b,X		; 75 40
	ora ($F7.b,X)		; 01 F7
	ora ($80.b,X)		; 01 80
	stz $C0.b,X		; 74 C0
	sbc [$01.b],Y		; F7 01
	ora ($C0.b,X)		; 01 C0
	stz $80.b,X		; 74 80
	sbc [$01.b],Y		; F7 01
	ora #$73C0.w		; 09 C0 73
	bra  -9.b		; 80 F7
	ora ($11.b,X)		; 01 11
	rti		; 40

	adc $00.b,X		; 75 00
	ora ($F7.b,X)		; 01 F7
	ora #$7380.w		; 09 80 73
	cpy #$F701.w		; C0 01 F7
	sbc [$80.b]		; E7 80
	adc $C0.b,X		; 75 C0
	sbc [$01.b],Y		; F7 01
	sbc [$C0.b]		; E7 C0
	adc $80.b,X		; 75 80
	sbc [$01.b],Y		; F7 01
	sbc $007340.l		; EF 40 73 00
	sbc [$01.b],Y		; F7 01
	sbc [$40.b],Y		; F7 40
	stz $00.b,X		; 74 00
	clc		; 18
	cpx #$D818.w		; E0 18 D8
	brk $76.b		; 00 76
	rti		; 40

	inx		; E8
	bpl -40.b		; 10 D8
	brk $77.b		; 00 77
	rti		; 40

	bpl -24.b		; 10 E8
	cld		; D8
	rti		; 40

	adc [$00.b],Y		; 77 00
	clc		; 18
	cpx #$40D8.w		; E0 D8 40
	ror $00.b,X		; 76 00
	inx		; E8
	bpl -24.b		; 10 E8
	brk $78.b		; 00 78
	rti		; 40

	beq   8.b		; F0 08
	inx		; E8
	brk $79.b		; 00 79
	rti		; 40

	php		; 08
	beq -24.b		; F0 E8
	rti		; 40

	adc $1000.w,Y		; 79 00 10
	inx		; E8
	inx		; E8
	rti		; 40

	sei		; 78
	brk $E8.b		; 00 E8
	bpl  16.b		; 10 10
	bra 120.b		; 80 78
	cpy #$08F0.w		; C0 F0 08
	bpl -128.b		; 10 80
	adc $08C0.w,Y		; 79 C0 08
	beq  16.b		; F0 10
	cpy #$8079.w		; C0 79 80
	bpl -24.b		; 10 E8
	bpl -64.b		; 10 C0
	sei		; 78
	bra -32.b		; 80 E0
	clc		; 18
	jsr $7680.w		; 20 80 76
	cpy #$10E8.w		; C0 E8 10
	jsr $7780.w		; 20 80 77
	cpy #$E810.w		; C0 10 E8
	jsr $77C0.w		; 20 C0 77
	bra  24.b		; 80 18
	cpx #$C020.w		; E0 20 C0
	ror $80.b,X		; 76 80
.INDEX 8
	sep #$16		; E2 16
	cpx #$00.b		; E0 00
	ply		; 7A
	rti		; 40

	nop		; EA
	asl $00E0.w		; 0E E0 00
	tda		; 7B
	rti		; 40

.INDEX 8
	sep #$16		; E2 16
	clc		; 18
	bra 122.b		; 80 7A
	cpy #$EA.b		; C0 EA
	asl $8018.w		; 0E 18 80
	tda		; 7B
	cpy #$0E.b		; C0 0E
	nop		; EA
	cpx #$40.b		; E0 40
	tda		; 7B
	brk $16.b		; 00 16
.ACCU 8
	sep #$E0		; E2 E0
	rti		; 40

	ply		; 7A
	brk $0E.b		; 00 0E
	nop		; EA
	clc		; 18
	cpy #$7B.b		; C0 7B
	bra  22.b		; 80 16
.INDEX 8
	sep #$18		; E2 18
	cpy #$7A.b		; C0 7A
	bra   2.b		; 80 02
	beq   0.b		; F0 00
	sbc [$08.b],Y		; F7 08
	bit $0048.w		; 2C 48 00
	beq  -9.b		; F0 F7
	pha		; 48
	bit $0808.w		; 2C 08 08
	beq   0.b		; F0 00
	sbc [$08.b]		; E7 08
	rol $0048.w		; 2E 48 00
	beq -25.b		; F0 E7
	pha		; 48
	rol $F008.w		; 2E 08 F0
	brk $F7.b		; 00 F7
	php		; 08
	rti		; 40

	pha		; 48
	brk $F0.b		; 00 F0
	sbc [$48.b],Y		; F7 48
	rti		; 40

	php		; 08
	inx		; E8
	bpl -14.b		; 10 F2
	brk $7C.b		; 00 7C
	rti		; 40

	bpl -24.b		; 10 E8
	sbc ($40.b)		; F2 40
	jmp ($E800.w,X)		; 7C 00 E8
	bpl  -6.b		; 10 FA
	brk $7D.b		; 00 7D
	rti		; 40

	bpl -24.b		; 10 E8
	plx		; FA
	rti		; 40

	adc $1200.w,X		; 7D 00 12
	sed		; F8
	sed		; F8
	bra   8.b		; 80 08
	.db $42, $48		; 42 48
	beq   0.b		; F0 00
	bcc   8.b		; 90 08
	mvp $00,$48		; 44 48 00
	beq -112.b		; F0 90
	php		; 08
	lsr $48.b		; 46 48
	sed		; F8
	sed		; F8
	ldy #$08.b		; A0 08
	.db $42, $48		; 42 48
	beq   0.b		; F0 00
	bcs   8.b		; B0 08
	mvp $00,$48		; 44 48 00
	beq -80.b		; F0 B0
	php		; 08
	lsr $48.b		; 46 48
	sed		; F8
	sed		; F8
	cpy #$08.b		; C0 08
	.db $42, $48		; 42 48
	beq   0.b		; F0 00
	bne   8.b		; D0 08
	mvp $00,$48		; 44 48 00
	beq -48.b		; F0 D0
	php		; 08
	lsr $48.b		; 46 48
	sed		; F8
	sed		; F8
	cpx #$08.b		; E0 08
	.db $42, $48		; 42 48
	beq   0.b		; F0 00
	beq   8.b		; F0 08
	mvp $00,$48		; 44 48 00
	beq -16.b		; F0 F0
	php		; 08
	lsr $48.b		; 46 48
	sed		; F8
	sed		; F8
	brk $08.b		; 00 08
	.db $42, $48		; 42 48
	beq   0.b		; F0 00
	bpl   8.b		; 10 08
	mvp $00,$48		; 44 48 00
	beq  16.b		; F0 10
	php		; 08
	lsr $48.b		; 46 48
	sed		; F8
	sed		; F8
	jsr $4208.w		; 20 08 42
	pha		; 48
	beq   0.b		; F0 00
	bmi   8.b		; 30 08
	mvp $00,$48		; 44 48 00
	beq  48.b		; F0 30
	php		; 08
	lsr $48.b		; 46 48
	tsb $F0.b		; 04 F0
	brk $00.b		; 00 00
	dey		; 88
	jsr $00C8.w		; 20 C8 00
	beq   0.b		; F0 00
	dey		; 88
	jsl $00F0C8.l		; 22 C8 F0 00
	beq  72.b		; F0 48
	jsl $F00008.l		; 22 08 00 F0
	beq  72.b		; F0 48
	jsr $1208.w		; 20 08 12
	sed		; F8
	sed		; F8
	bra  72.b		; 80 48
	.db $42, $08		; 42 08
	brk $F0.b		; 00 F0
	bcc  72.b		; 90 48
	mvp $F0,$08		; 44 08 F0
	brk $90.b		; 00 90
	pha		; 48
	lsr $08.b		; 46 08
	sed		; F8
	sed		; F8
	ldy #$48.b		; A0 48
	.db $42, $08		; 42 08
	brk $F0.b		; 00 F0
	bcs  72.b		; B0 48
	mvp $F0,$08		; 44 08 F0
	brk $B0.b		; 00 B0
	pha		; 48
	lsr $08.b		; 46 08
	sed		; F8
	sed		; F8
	cpy #$48.b		; C0 48
	.db $42, $08		; 42 08
	brk $F0.b		; 00 F0
	bne  72.b		; D0 48
	mvp $F0,$08		; 44 08 F0
	brk $D0.b		; 00 D0
	pha		; 48
	lsr $08.b		; 46 08
	sed		; F8
	sed		; F8
	cpx #$48.b		; E0 48
	.db $42, $08		; 42 08
	brk $F0.b		; 00 F0
	beq  72.b		; F0 48
	mvp $F0,$08		; 44 08 F0
	brk $F0.b		; 00 F0
	pha		; 48
	lsr $08.b		; 46 08
	sed		; F8
	sed		; F8
	brk $48.b		; 00 48
	.db $42, $08		; 42 08
	brk $F0.b		; 00 F0
	bpl  72.b		; 10 48
	mvp $F0,$08		; 44 08 F0
	brk $10.b		; 00 10
	pha		; 48
	lsr $08.b		; 46 08
	sed		; F8
	sed		; F8
	jsr $4248.w		; 20 48 42
	php		; 08
	brk $F0.b		; 00 F0
	bmi  72.b		; 30 48
	mvp $F0,$08		; 44 08 F0
	brk $30.b		; 00 30
	pha		; 48
	lsr $08.b		; 46 08
	tsa		; 3B
	cpy $5A.b		; C4 5A
	cpy $79.b		; C4 79
	cpy $92.b		; C4 92
	cpy $AB.b		; C4 AB
	cpy $C4.b		; C4 C4
	cpy $01.b		; C4 01
	cmp $38.b		; C5 38
	cmp $63.b		; C5 63
	cmp $2A.b		; C5 2A
	dec $61.b		; C6 61
	dec $05.b		; C6 05
	cmp [$19.b],Y		; D7 19
	sbc $0008.w,Y		; F9 08 00
	pha		; 48
	sbc [$09.b]		; E7 09
	sed		; F8
	php		; 08
	cop $48.b		; 02 48
	cmp $00FC29.l		; CF 29 FC 00
	ror A		; 6A
	rti		; 40

	sbc [$01.b],Y		; F7 01
	jsr ($6B00.w,X)		; FC 00 6B
	rti		; 40

	cmp [$31.b]		; C7 31
	jsr ($6C00.w,X)		; FC 00 6C
	rti		; 40

	ora $F5.b		; 05 F5
	xce		; FB
	sbc $0408.w,Y		; F9 08 04
	pha		; 48
	brk $F8.b		; 00 F8
	sbc ($00.b),Y		; F1 00
	adc $F840.w		; 6D 40 F8
	brk $F1.b		; 00 F1
	brk $6E.b		; 00 6E
	rti		; 40

	ora $F3.b		; 05 F3
	sed		; F8
	brk $6F.b		; 00 6F
	rti		; 40

	ora $F3.b		; 05 F3
	brk $00.b		; 00 00
	ply		; 7A
	rti		; 40

	tsb $F0.b		; 04 F0
	brk $F1.b		; 00 F1
	php		; 08
	asl $48.b		; 06 48
	brk $F0.b		; 00 F0
	sbc ($08.b),Y		; F1 08
	php		; 08
	pha		; 48
	beq   0.b		; F0 00
	ora ($08.b,X)		; 01 08
	asl A		; 0A
	pha		; 48
	brk $F0.b		; 00 F0
	ora ($08.b,X)		; 01 08
	tsb $0448.w		; 0C 48 04
	beq   0.b		; F0 00
	sbc ($08.b),Y		; F1 08
	asl $0048.w		; 0E 48 00
	beq -15.b		; F0 F1
	php		; 08
	jsr $F048.w		; 20 48 F0
	brk $01.b		; 00 01
	php		; 08
	jsl $F00048.l		; 22 48 00 F0
	ora ($08.b,X)		; 01 08
	bit $48.b		; 24 48
	tsb $F8.b		; 04 F8
	brk $F9.b		; 00 F9
	brk $7B.b		; 00 7B
	rti		; 40

	sed		; F8
	brk $01.b		; 00 01
	brk $7C.b		; 00 7C
	rti		; 40

	beq   8.b		; F0 08
	xce		; FB
	brk $7D.b		; 00 7D
	rti		; 40

	brk $F8.b		; 00 F8
	xce		; FB
	rti		; 40

	adc $0A00.w,X		; 7D 00 0A
	beq   0.b		; F0 00
	sed		; F8
	php		; 08
	rol $48.b		; 26 48
	brk $F0.b		; 00 F0
	sed		; F8
	pha		; 48
	rol $08.b		; 26 08
	inx		; E8
	bpl  -8.b		; 10 F8
	brk $7E.b		; 00 7E
	rti		; 40

	bpl -24.b		; 10 E8
	sed		; F8
	rti		; 40

	ror $0100.w,X		; 7E 00 01
	sbc [$F0.b],Y		; F7 F0
	brk $7F.b		; 00 7F
	rti		; 40

	ora #$EF.b		; 09 EF
	beq   0.b		; F0 00
	bra  64.b		; 80 40
	ora ($E7.b),Y		; 11 E7
	beq   0.b		; F0 00
	sta ($40.b,X)		; 81 40
	sbc [$11.b]		; E7 11
	beq  64.b		; F0 40
	sta ($00.b,X)		; 81 00
	sbc $40F009.l		; EF 09 F0 40
	bra   0.b		; 80 00
	sbc [$01.b],Y		; F7 01
	beq  64.b		; F0 40
	adc $F00900.l,X		; 7F 00 09 F0
	brk $F1.b		; 00 F1
	php		; 08
	plp		; 28
	pha		; 48
	brk $F0.b		; 00 F0
	sbc ($48.b),Y		; F1 48
	plp		; 28
	php		; 08
	beq   0.b		; F0 00
	ora ($08.b,X)		; 01 08
	rol A		; 2A
	pha		; 48
	brk $F0.b		; 00 F0
	ora ($48.b,X)		; 01 48
	rol A		; 2A
	php		; 08
	beq   0.b		; F0 00
	ora ($08.b),Y		; 11 08
	bit $0048.w		; 2C 48 00
	beq  17.b		; F0 11
	pha		; 48
	bit $F808.w		; 2C 08 F8
	brk $21.b		; 00 21
	brk $82.b		; 00 82
	rti		; 40

	brk $F8.b		; 00 F8
	and ($40.b,X)		; 21 40
	.db $82, $00, $FC		; 82 00 FC
	jsr ($0029.w,X)		; FC 29 00
	sta $40.b,S		; 83 40
	ora [$F0.b]		; 07 F0
	brk $F1.b		; 00 F1
	php		; 08
	rol $0048.w		; 2E 48 00
	beq -15.b		; F0 F1
	pha		; 48
	rol $F008.w		; 2E 08 F0
	brk $01.b		; 00 01
	php		; 08
	rti		; 40

	pha		; 48
	brk $F0.b		; 00 F0
	ora ($48.b,X)		; 01 48
	rti		; 40

	php		; 08
	sed		; F8
	brk $11.b		; 00 11
	brk $84.b		; 00 84
	rti		; 40

	brk $F8.b		; 00 F8
	ora ($40.b),Y		; 11 40
	sty $00.b		; 84 00
	jsr ($19FC.w,X)		; FC FC 19
	brk $85.b		; 00 85
	rti		; 40

	and ($F0.b,X)		; 21 F0
	brk $93.b		; 00 93
	php		; 08
	.db $42, $48		; 42 48
	brk $F0.b		; 00 F0
	sta ($48.b,S),Y		; 93 48
	.db $42, $08		; 42 08
	inx		; E8
	php		; 08
	sbc ($08.b,S),Y		; F3 08
	mvp $F8,$48		; 44 48 F8
	sed		; F8
	sbc ($08.b,S),Y		; F3 08
	lsr $48.b		; 46 48
	php		; 08
	inx		; E8
	sbc ($48.b,S),Y		; F3 48
	mvp $E8,$08		; 44 08 E8
	php		; 08
	plb		; AB
	php		; 08
	pha		; 48
	pha		; 48
	sed		; F8
	sed		; F8
	plb		; AB
	php		; 08
	lsr A		; 4A
	pha		; 48
	php		; 08
	inx		; E8
	plb		; AB
	pha		; 48
	pha		; 48
	php		; 08
	cpx #$10.b		; E0 10
	tyx		; BB
	php		; 08
	jmp $F048.w		; 4C 48 F0
	brk $BB.b		; 00 BB
	php		; 08
	lsr $0048.w		; 4E 48 00
	beq -69.b		; F0 BB
	pha		; 48
	lsr $1008.w		; 4E 08 10
	cpx #$BB.b		; E0 BB
	pha		; 48
	jmp $E008.w		; 4C 08 E0
	bpl -53.b		; 10 CB
	php		; 08
	rts		; 60

	pha		; 48
	cpx #$10.b		; E0 10
	stp		; DB
	php		; 08
	.db $62, $48, $F0		; 62 48 F0
	brk $CB.b		; 00 CB
	php		; 08
	stz $48.b		; 64 48
	beq   0.b		; F0 00
	stp		; DB
	php		; 08
	stz $48.b		; 64 48
	brk $F0.b		; 00 F0
	wai		; CB
	php		; 08
	stz $48.b		; 64 48
	bpl -32.b		; 10 E0
	wai		; CB
	pha		; 48
	rts		; 60

	php		; 08
	brk $F0.b		; 00 F0
	stp		; DB
	php		; 08
	stz $48.b		; 64 48
	bpl -32.b		; 10 E0
	stp		; DB
	pha		; 48
	.db $62, $08, $FC		; 62 08 FC
	jsr ($008B.w,X)		; FC 8B 00
	stx $40.b		; 86 40
	cpx $A30C.w		; EC 0C A3
	brk $87.b		; 00 87
	rti		; 40

	pea $A304.w		; F4 04 A3
	brk $88.b		; 00 88
	rti		; 40

	jsr ($A3FC.w,X)		; FC FC A3
	brk $89.b		; 00 89
	rti		; 40

	tsb $F4.b		; 04 F4
	lda $40.b,S		; A3 40
	dey		; 88
	brk $0C.b		; 00 0C
	cpx $40A3.w		; EC A3 40
	sta [$00.b]		; 87 00
	cpx $14.b		; E4 14
	xba		; EB
	brk $8A.b		; 00 8A
	rti		; 40

	cpx $EB0C.w		; EC 0C EB
	brk $8B.b		; 00 8B
	rti		; 40

	pea $EB04.w		; F4 04 EB
	brk $4F.b		; 00 4F
	rti		; 40

	jsr ($EBFC.w,X)		; FC FC EB
	brk $4F.b		; 00 4F
	rti		; 40

	tsb $F4.b		; 04 F4
	xba		; EB
	brk $4F.b		; 00 4F
	rti		; 40

	tsb $EBEC.w		; 0C EC EB
	rti		; 40

	phb		; 8B
	brk $14.b		; 00 14
	cpx $EB.b		; E4 EB
	rti		; 40

	txa		; 8A
	brk $09.b		; 00 09
	sed		; F8
	sed		; F8
	jmp.w [$6608]		; DC 08 66
	pha		; 48
	beq   0.b		; F0 00
	pea $6808.w		; F4 08 68
	pha		; 48
	brk $F0.b		; 00 F0
	pea $6848.w		; F4 48 68
	php		; 08
	beq   8.b		; F0 08
	cpx $00.b		; E4 00
	sty $0840.w		; 8C 40 08
	beq -28.b		; F0 E4
	rti		; 40

	sty $F000.w		; 8C 00 F0
	php		; 08
	cpx $8D00.w		; EC 00 8D
	rti		; 40

	sed		; F8
	brk $EC.b		; 00 EC
	brk $8E.b		; 00 8E
	rti		; 40

	brk $F8.b		; 00 F8
	cpx $8E40.w		; EC 40 8E
	brk $08.b		; 00 08
	beq -20.b		; F0 EC
	rti		; 40

	sta $0500.w		; 8D 00 05
	cmp [$19.b],Y		; D7 19
	sbc [$88.b],Y		; F7 88
	brk $C8.b		; 00 C8
	sbc [$09.b]		; E7 09
	sed		; F8
	dey		; 88
	cop $C8.b		; 02 C8
	cmp $80FC29.l		; CF 29 FC 80
	ror A		; 6A
	cpy #$F7.b		; C0 F7
	ora ($FC.b,X)		; 01 FC
	bra 107.b		; 80 6B
	cpy #$C7.b		; C0 C7
	and ($FC.b),Y		; 31 FC
	bra 108.b		; 80 6C
	cpy #$8E.b		; C0 8E
	dec $25.b		; C6 25
	cmp [$B0.b]		; C7 B0
	cmp [$47.b]		; C7 47
	iny		; C8
	cmp ($C8.b)		; D2 C8
	ora #$C9.b		; 09 C9
	ror $C9.b,X		; 76 C9
	ora $EC04.w,Y		; 19 04 EC
	inx		; E8
	php		; 08
	brk $48.b		; 00 48
	ora ($E7.b),Y		; 11 E7
	cpx #$00.b		; E0 00
	lsr $40.b		; 46 40
	ora #$EF.b		; 09 EF
	sed		; F8
	brk $47.b		; 00 47
	rti		; 40

	ora ($E7.b),Y		; 11 E7
	sed		; F8
	brk $48.b		; 00 48
	rti		; 40

	ora #$EF.b		; 09 EF
	cpx #$00.b		; E0 00
	eor #$40.b		; 49 40
	trb $E4.b		; 14 E4
	inx		; E8
	brk $4A.b		; 00 4A
	rti		; 40

	trb $E4.b		; 14 E4
	beq   0.b		; F0 00
	phk		; 4B
	rti		; 40

	pei ($1C.b)		; D4 1C
	cpx #$08.b		; E0 08
	mvp $D3,$48		; 44 48 D3
	and $F8.b		; 25 F8
	brk $6D.b		; 00 6D
	rti		; 40

	stp		; DB
	ora $00F8.w,X		; 1D F8 00
	ror $E340.w		; 6E 40 E3
	ora $F8.b,X		; 15 F8
	brk $6F.b		; 00 6F
	rti		; 40

	xba		; EB
	ora $00F8.w		; 0D F8 00
	bvs  64.b		; 70 40
	sbc ($05.b,S),Y		; F3 05
	sed		; F8
	brk $71.b		; 00 71
	rti		; 40

	xce		; FB
	sbc $00F8.w,X		; FD F8 00
	adc ($40.b)		; 72 40
	pei ($24.b)		; D4 24
	cld		; D8
	brk $73.b		; 00 73
	rti		; 40

	cpy $E02C.w		; CC 2C E0
	brk $74.b		; 00 74
	rti		; 40

	cpy $F02C.w		; CC 2C F0
	brk $75.b		; 00 75
	rti		; 40

	cpx $F00C.w		; EC 0C F0
	brk $76.b		; 00 76
	rti		; 40

	pea $F004.w		; F4 04 F0
	brk $77.b		; 00 77
	rti		; 40

	wai		; CB
	and $00F8.w		; 2D F8 00
	sei		; 78
	rti		; 40

	cpx $14.b		; E4 14
	inx		; E8
	brk $79.b		; 00 79
	rti		; 40

	pei ($24.b)		; D4 24
	beq   0.b		; F0 00
	ply		; 7A
	rti		; 40

	jmp.w [$F01C]		; DC 1C F0
	brk $7B.b		; 00 7B
	rti		; 40

	cpx $14.b		; E4 14
	beq   0.b		; F0 00
	jmp ($FC40.w,X)		; 7C 40 FC
	jsr ($00F1.w,X)		; FC F1 00
	adc $1740.w,X		; 7D 40 17
	ora $ED.b,S		; 03 ED
	inx		; E8
	php		; 08
	cop $48.b		; 02 48
	bpl -24.b		; 10 E8
	cpx #$00.b		; E0 00
	jmp $0840.w		; 4C 40 08
	beq  -8.b		; F0 F8
	brk $4D.b		; 00 4D
	rti		; 40

	bpl -24.b		; 10 E8
	sed		; F8
	bra  76.b		; 80 4C
	cpy #$08.b		; C0 08
	beq -32.b		; F0 E0
	bra  77.b		; 80 4D
	cpy #$13.b		; C0 13
	sbc $E8.b		; E5 E8
	brk $4E.b		; 00 4E
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	beq -128.b		; F0 80
	lsr $D0C0.w		; 4E C0 D0
	plp		; 28
	sed		; F8
	brk $7E.b		; 00 7E
	rti		; 40

	cld		; D8
	jsr $00F8.w		; 20 F8 00
	adc $18E040.l,X		; 7F 40 E0 18
	sed		; F8
	brk $80.b		; 00 80
	rti		; 40

	inx		; E8
	bpl  -8.b		; 10 F8
	brk $81.b		; 00 81
	rti		; 40

	beq   8.b		; F0 08
	sed		; F8
	brk $82.b		; 00 82
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	brk $83.b		; 00 83
	rti		; 40

	brk $F8.b		; 00 F8
	inc $00.b,X		; F6 00
	sty $40.b		; 84 40
	cmp ($26.b)		; D2 26
	cpx #$00.b		; E0 00
	sta $40.b		; 85 40
	phx		; DA
	asl $00F0.w,X		; 1E F0 00
	stx $40.b		; 86 40
.INDEX 8
	sep #$16		; E2 16
	beq   0.b		; F0 00
	sta [$40.b]		; 87 40
	nop		; EA
	asl $00F0.w		; 0E F0 00
	dey		; 88
	rti		; 40

	sbc ($06.b)		; F2 06
	beq   0.b		; F0 00
	bit #$40.b		; 89 40
	plx		; FA
	inc $00F0.w,X		; FE F0 00
	txa		; 8A
	rti		; 40

	cmp ($26.b)		; D2 26
	sbc $408B00.l		; EF 00 8B 40
	dec $E81A.w,X		; DE 1A E8
	brk $8C.b		; 00 8C
	rti		; 40

	dec $22.b,X		; D6 22
	sbc $00.b		; E5 00
	sta $1940.w		; 8D 40 19
	ora $ED.b,S		; 03 ED
	inx		; E8
	php		; 08
	tsb $48.b		; 04 48
	bpl -24.b		; 10 E8
	cpx #$00.b		; E0 00
	eor $F00840.l		; 4F 40 08 F0
	cpx #$00.b		; E0 00
	lsr $40.b,X		; 56 40
	ora ($E5.b,S),Y		; 13 E5
	inx		; E8
	brk $57.b		; 00 57
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	beq   0.b		; F0 00
	cli		; 58
	rti		; 40

	asl $F2.b		; 06 F2
	sed		; F8
	brk $59.b		; 00 59
	rti		; 40

	asl $F8EA.w		; 0E EA F8
	brk $5A.b		; 00 5A
	rti		; 40

	pei ($1C.b)		; D4 1C
	cpx #$08.b		; E0 08
	mvp $D3,$48		; 44 48 D3
	and $F8.b		; 25 F8
	brk $6D.b		; 00 6D
	rti		; 40

	stp		; DB
	ora $00F8.w,X		; 1D F8 00
	ror $E340.w		; 6E 40 E3
	ora $F8.b,X		; 15 F8
	brk $6F.b		; 00 6F
	rti		; 40

	xba		; EB
	ora $00F8.w		; 0D F8 00
	bvs  64.b		; 70 40
	sbc ($05.b,S),Y		; F3 05
	sed		; F8
	brk $71.b		; 00 71
	rti		; 40

	xce		; FB
	sbc $00F8.w,X		; FD F8 00
	adc ($40.b)		; 72 40
	pei ($24.b)		; D4 24
	cld		; D8
	brk $73.b		; 00 73
	rti		; 40

	cpy $E02C.w		; CC 2C E0
	brk $74.b		; 00 74
	rti		; 40

	cpy $F02C.w		; CC 2C F0
	brk $75.b		; 00 75
	rti		; 40

	cpx $F00C.w		; EC 0C F0
	brk $76.b		; 00 76
	rti		; 40

	pea $F004.w		; F4 04 F0
	brk $77.b		; 00 77
	rti		; 40

	wai		; CB
	and $00F8.w		; 2D F8 00
	sei		; 78
	rti		; 40

	cpx $14.b		; E4 14
	inx		; E8
	brk $79.b		; 00 79
	rti		; 40

	pei ($24.b)		; D4 24
	beq   0.b		; F0 00
	ply		; 7A
	rti		; 40

	jmp.w [$F01C]		; DC 1C F0
	brk $7B.b		; 00 7B
	rti		; 40

	cpx $14.b		; E4 14
	beq   0.b		; F0 00
	jmp ($FC40.w,X)		; 7C 40 FC
	jsr ($00F1.w,X)		; FC F1 00
	adc $1740.w,X		; 7D 40 17
	ora $ED.b,S		; 03 ED
	inx		; E8
	php		; 08
	asl $48.b		; 06 48
	bpl -24.b		; 10 E8
	cpx #$00.b		; E0 00
	tad		; 5B
	rti		; 40

	php		; 08
	beq -32.b		; F0 E0
	brk $5C.b		; 00 5C
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	inx		; E8
	brk $5D.b		; 00 5D
	rti		; 40

	ora ($E5.b,S),Y		; 13 E5
	beq -128.b		; F0 80
	eor $07C0.w,X		; 5D C0 07
	sbc ($F8.b),Y		; F1 F8
	brk $5E.b		; 00 5E
	rti		; 40

	ora $00F8E9.l		; 0F E9 F8 00
	eor $28D040.l,X		; 5F 40 D0 28
	sed		; F8
	brk $7E.b		; 00 7E
	rti		; 40

	cld		; D8
	jsr $00F8.w		; 20 F8 00
	adc $18E040.l,X		; 7F 40 E0 18
	sed		; F8
	brk $80.b		; 00 80
	rti		; 40

	inx		; E8
	bpl  -8.b		; 10 F8
	brk $81.b		; 00 81
	rti		; 40

	beq   8.b		; F0 08
	sed		; F8
	brk $82.b		; 00 82
	rti		; 40

	sed		; F8
	brk $F8.b		; 00 F8
	brk $83.b		; 00 83
	rti		; 40

	brk $F8.b		; 00 F8
	inc $00.b,X		; F6 00
	sty $40.b		; 84 40
	cmp ($26.b)		; D2 26
	cpx #$00.b		; E0 00
	sta $40.b		; 85 40
	phx		; DA
	asl $00F0.w,X		; 1E F0 00
	stx $40.b		; 86 40
.INDEX 8
	sep #$16		; E2 16
	beq   0.b		; F0 00
	sta [$40.b]		; 87 40
	nop		; EA
	asl $00F0.w		; 0E F0 00
	dey		; 88
	rti		; 40

	sbc ($06.b)		; F2 06
	beq   0.b		; F0 00
	bit #$40.b		; 89 40
	plx		; FA
	inc $00F0.w,X		; FE F0 00
	txa		; 8A
	rti		; 40

	cmp ($26.b)		; D2 26
	sbc $408B00.l		; EF 00 8B 40
	dec $E81A.w,X		; DE 1A E8
	brk $8C.b		; 00 8C
	rti		; 40

	dec $22.b,X		; D6 22
	sbc $00.b		; E5 00
	sta $0940.w		; 8D 40 09
	sed		; F8
	sed		; F8
	cld		; D8
	php		; 08
	php		; 08
	pha		; 48
	php		; 08
	inx		; E8
	cld		; D8
	php		; 08
	asl A		; 0A
	pha		; 48
	clc		; 18
	cld		; D8
	cld		; D8
	php		; 08
	tsb $F848.w		; 0C 48 F8
	sed		; F8
	inx		; E8
	php		; 08
	asl $F848.w		; 0E 48 F8
	sed		; F8
	sed		; F8
	iny		; C8
	tsb $0888.w		; 0C 88 08
	inx		; E8
	inx		; E8
	php		; 08
	jsr $1848.w		; 20 48 18
	cld		; D8
	inx		; E8
	iny		; C8
	asl $0888.w		; 0E 88 08
	inx		; E8
	sed		; F8
	iny		; C8
	asl A		; 0A
	dey		; 88
	clc		; 18
	cld		; D8
	sed		; F8
	iny		; C8
	php		; 08
	dey		; 88
	ora ($08.b)		; 12 08
	inx		; E8
	bne   8.b		; D0 08
	jsl $F8F848.l		; 22 48 F8 F8
	cld		; D8
	php		; 08
	bit $48.b		; 24 48
	clc		; 18
	cld		; D8
	cld		; D8
	php		; 08
	rol $48.b		; 26 48
	beq   0.b		; F0 00
	inx		; E8
	php		; 08
	plp		; 28
	pha		; 48
	jsr $E8D0.w		; 20 D0 E8
	iny		; C8
	plp		; 28
	dey		; 88
	sed		; F8
	sed		; F8
	sed		; F8
	iny		; C8
	rol $88.b		; 26 88
	clc		; 18
	cld		; D8
	sed		; F8
	iny		; C8
	bit $88.b		; 24 88
	php		; 08
	inx		; E8
	brk $C8.b		; 00 C8
	jsl $E80888.l		; 22 88 08 E8
	cpx #$08.b		; E0 08
	rol A		; 2A
	pha		; 48
	php		; 08
	inx		; E8
	beq -56.b		; F0 C8
	rol A		; 2A
	dey		; 88
	beq   8.b		; F0 08
	brk $00.b		; 00 00
	rts		; 60

	rti		; 40

	jsr $08D8.w		; 20 D8 08
	brk $61.b		; 00 61
	rti		; 40

	sed		; F8
	brk $D0.b		; 00 D0
	cpy #$61.b		; C0 61
	bra  40.b		; 80 28
	bne -40.b		; D0 D8
	cpy #$60.b		; C0 60
	bra   0.b		; 80 00
	sed		; F8
	inx		; E8
	brk $62.b		; 00 62
	rti		; 40

	clc		; 18
	cpx #$E8.b		; E0 E8
	brk $63.b		; 00 63
	rti		; 40

	brk $F8.b		; 00 F8
	beq -64.b		; F0 C0
	adc $80.b,S		; 63 80
	clc		; 18
	cpx #$F0.b		; E0 F0
	cpy #$62.b		; C0 62
	bra  28.b		; 80 1C
	php		; 08
	inx		; E8
	cpy #$08.b		; C0 08
	bit $E048.w		; 2C 48 E0
	bpl -24.b		; 10 E8
	php		; 08
	rol $3048.w		; 2E 48 30
	cpy #$E8.b		; C0 E8
	iny		; C8
	rol $0888.w		; 2E 88 08
	inx		; E8
	bpl -56.b		; 10 C8
	bit $E088.w		; 2C 88 E0
	bpl   3.b		; 10 03
	php		; 08
	rti		; 40

	pha		; 48
	bmi -64.b		; 30 C0
	cmp $40C8.w		; CD C8 40
	dey		; 88
	and $CD.b,S		; 23 CD
	bpl   8.b		; 10 08
	.db $42, $48		; 42 48
	sbc $C003.w		; ED 03 C0
	iny		; C8
	.db $42, $88		; 42 88
	beq   8.b		; F0 08
	php		; 08
	brk $64.b		; 00 64
	rti		; 40

	sed		; F8
	brk $08.b		; 00 08
	brk $65.b		; 00 65
	rti		; 40

	plp		; 28
	bne   8.b		; D0 08
	brk $66.b		; 00 66
	rti		; 40

	clc		; 18
	cpx #$10.b		; E0 10
	brk $67.b		; 00 67
	rti		; 40

	brk $F8.b		; 00 F8
	iny		; C8
	cpy #$67.b		; C0 67
	bra -16.b		; 80 F0
	php		; 08
	bne -64.b		; D0 C0
	ror $80.b		; 66 80
	jsr $D0D8.w		; 20 D8 D0
	cpy #$65.b		; C0 65
	bra  40.b		; 80 28
	bne -48.b		; D0 D0
	cpy #$64.b		; C0 64
	bra  -8.b		; 80 F8
	brk $1A.b		; 00 1A
	brk $68.b		; 00 68
	rti		; 40

	brk $F8.b		; 00 F8
	inc A		; 1A
	brk $69.b		; 00 69
	rti		; 40

	beq   8.b		; F0 08
	cld		; D8
	brk $6A.b		; 00 6A
	rti		; 40

	bmi -56.b		; 30 C8
	cpx #$80.b		; E0 80
	adc [$C0.b]		; 67 C0
	clc		; 18
	cpx #$BE.b		; E0 BE
	cpy #$69.b		; C0 69
	bra  32.b		; 80 20
	cld		; D8
	ldx $68C0.w,Y		; BE C0 68
	bra  58.b		; 80 3A
	ldx $00F8.w,Y		; BE F8 00
	rtl		; 6B

	rti		; 40

	dec A		; 3A
	ldx $0000.w,Y		; BE 00 00
	jmp ($E840.w)		; 6C 40 E8
	bpl  -8.b		; 10 F8
	rti		; 40

	adc [$00.b]		; 67 00
	plp		; 28
	bne   0.b		; D0 00
	cpy #$6A.b		; C0 6A
	bra -34.b		; 80 DE
	inc A		; 1A
	cld		; D8
	cpy #$6C.b		; C0 6C
	bra -34.b		; 80 DE
	inc A		; 1A
	cpx #$C0.b		; E0 C0
	rtl		; 6B

	bra   0.b		; 80 00
	ora ($00.b,X)		; 01 00
	brk $88.b		; 00 88
	php		; 08
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra   4.b		; 80 04
	brk $2C.b		; 00 2C
	cop $00.b		; 02 00
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
	brk $CF.b		; 00 CF
	cpy $20.b		; C4 20
	sec		; 38
	eor $AD95.w		; 4D 95 AD
	bcc  65.b		; 90 41
	sta ($86.b,S),Y		; 93 86
	cpy #$34.b		; C0 34
	asl A		; 0A
	brk $04.b		; 00 04
	brk $10.b		; 00 10
	ora $08.b,S		; 03 08
	jsr $A060.w		; 20 60 A0
	cop $48.b		; 02 48
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bvc   0.b		; 50 00
	brk $10.b		; 00 10
	jsr $0404.w		; 20 04 04
	sec		; 38
	ora #$00.b		; 09 00
	bra  68.b		; 80 44
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $D5.b		; 00 D5
	sty $B0.b		; 84 B0
	bit $88.b		; 24 88
	and ($45.b)		; 32 45
	stz $8EE3.w,X		; 9E E3 8E
	bcc  32.b		; 90 20
	bit $00.b		; 24 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($41.b,X)		; 01 41
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora [$00.b]		; 07 00
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	php		; 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $01.b		; 00 01
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
	brk $AA.b		; 00 AA
	eor ($F8.b),Y		; 51 F8
	tsa		; 3B
	ora ($1D.b)		; 12 1D
	cmp $FB.b		; C5 FB
	sbc $80C97C.l		; EF 7C C9 80
	rts		; 60

	jsr $0881.w		; 20 81 08
	pha		; 48
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	brk $60.b		; 00 60
	rti		; 40

	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	rts		; 60

	cop $00.b		; 02 00
	ora ($21.b),Y		; 11 21
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $90.b		; 00 90
	cop $00.b		; 02 00
	ora ($40.b,X)		; 01 40
	jsr $2820.w		; 20 20 28
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
	cpy $88.b		; C4 88
	mvn $11,$A2		; 54 A2 11
	lda $A520.w		; AD 20 A5
	brk $52.b		; 00 52
	bra  33.b		; 80 21
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $88.b		; 00 88
	cop $08.b		; 02 08
	brk $48.b		; 00 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $1010.w		; 20 10 10
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
	brk $14.b		; 00 14
	ldx #$A8.b		; A2 A8
	inx		; E8
	tsx		; BA
	jsr ($C274.w,X)		; FC 74 C2
	jmp ($C848.w)		; 6C 48 C8
	cop $D4.b		; 02 D4
	and ($8C.b)		; 32 8C
	jsr $0002.w		; 20 02 00
	cop $00.b		; 02 00
	eor $58.b		; 45 58
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	rti		; 40

	brk $00.b		; 00 00
	php		; 08
	ora ($00.b,S),Y		; 13 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	bpl   1.b		; 10 01
	ora ($00.b,X)		; 01 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	bpl  34.b		; 10 22
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
	brk $2A.b		; 00 2A
	bcs  44.b		; B0 2C
	adc $24.b		; 65 24
	lda #$20.b		; A9 20
	nop		; EA
	ldx #$1A.b		; A2 1A
	brk $08.b		; 00 08
	cop $00.b		; 02 00
	jsr $0000.w		; 20 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $44.b		; 00 44
	rti		; 40

	ora ($00.b,X)		; 01 00
	bit $00.b		; 24 00
	ora ($00.b)		; 12 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsl $000008.l		; 22 08 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	jsr $0000.w		; 20 00 00
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
	brk $41.b		; 00 41
	asl $15.b,X		; 16 15
	clv		; B8
	and ($A4.b,X)		; 21 A4
	sbc $0A.b,S		; E3 0A
	cmp ($92.b),Y		; D1 92
	ora ($87.b,S),Y		; 13 87
	dec A		; 3A
	trb $40.b		; 14 40
	jsr $0080.w		; 20 80 00
	brk $11.b		; 00 11
	ora ($08.b,X)		; 01 08
	bra   0.b		; 80 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	bra  66.b		; 80 42
	rti		; 40

	cpy #$04.b		; C0 04
	jsl $000040.l		; 22 40 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	brk $20.b		; 00 20
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	ora ($00.b)		; 12 00
	cop $08.b		; 02 08
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
	brk $D4.b		; 00 D4
	bpl  48.b		; 10 30
	bit #$FE.b		; 89 FE
	brk $90.b		; 00 90
	bpl 100.b		; 10 64
	cop $00.b		; 02 00
	jsr $C010.w		; 20 10 C0
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	ora $04.b,S		; 03 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $45.b		; 00 45
	brk $00.b		; 00 00
	ldy #$10.b		; A0 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	ora ($52.b,X)		; 01 52
	bra -128.b		; 80 80
	brk $04.b		; 00 04
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
	txs		; 9A
	bcc 104.b		; 90 68
	ora ($94.b,X)		; 01 94
	eor $3202B5.l,X		; 5F B5 02 32
	sec		; 38
	lda ($44.b,X)		; A1 44
	asl $20.b,X		; 16 20
	php		; 08
	tsb $06.b		; 04 06
	tsb $20.b		; 04 20
	brk $80.b		; 00 80
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bra  64.b		; 80 40
	ora $08.b		; 05 08
	ora ($00.b),Y		; 11 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	cop $60.b		; 02 60
	ora $80.b,S		; 03 80
	cop $18.b		; 02 18
	brk $00.b		; 00 00
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
	bpl  -8.b		; 10 F8
	rol $8004.w,X		; 3E 04 80
	plp		; 28
	lda $862042.l		; AF 42 20 86
	bpl   8.b		; 10 08
	cpy #$09.b		; C0 09
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $1C.b		; 00 1C
	brk $50.b		; 00 50
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $02.b		; 00 02
	ora ($09.b,X)		; 01 09
	bpl   0.b		; 10 00
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
	lsr $7A05.w,X		; 5E 05 7A
	ora ($E1.b)		; 12 E1
	jmp ($2C3E.w,X)		; 7C 3E 2C
	inx		; E8
	inx		; E8
	ora $C372.w		; 0D 72 C3
	rti		; 40

	rts		; 60

	jsr $0820.w		; 20 20 08
	ora $20.b		; 05 20
	php		; 08
	rts		; 60

	brk $04.b		; 00 04
	ora ($80.b,X)		; 01 80
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $01.b		; 02 01
	cop $08.b		; 02 08
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	lsr $00.b		; 46 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	tsb $04.b		; 04 04
	brk $40.b		; 00 40
	cop $00.b		; 02 00
	jsr $8008.w		; 20 08 80
	jsr $0200.w		; 20 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sbc $F7EF.w,Y		; F9 EF F7
	adc $FFFF3F.l,X		; 7F 3F FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFEF.l,X		; FF EF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w,X		; FE FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFEF.l		; EF EF FF FF
	sbc $FFFF3F.l,X		; FF 3F FF FF
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
	dec $DEF7.w,X		; DE F7 DE
	xba		; EB
	tyx		; BB
	lda ($FF.b)		; B2 FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	lda $FEFFDA.l,X		; BF DA FF FE
	sbc ($7F.b,S),Y		; F3 7F
	xce		; FB
	sbc $EDFF7E.l,X		; FF 7E FF ED
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $C7DFFF.l,X		; FF FF DF C7
	sbc $BFCFFB.l,X		; FF FB CF BF
	xce		; FB
	cmp $DEEFFF.l,X		; DF FF EF DE
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
	sbc $FF7FFE.l,X		; FF FE 7F FF
	cmp $FFF5F7.l,X		; DF F7 F5 FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFBAF7.l,X		; FF F7 BA FF
	cmp $FF.b,S		; C3 FF
	lda $FFFFFE.l,X		; BF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFDFFF.l,X		; DF FF DF FF
	xce		; FB
	xce		; FB
	sbc $FB7FD7.l,X		; FF D7 7F FB
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
	sbc $FEDFFF.l,X		; FF FF DF FE
	sbc $EFDFFE.l,X		; FF FE DF EF
	xce		; FB
	adc $FFFF.w,X		; 7D FF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	xce		; FB
	plx		; FA
	xce		; FB
	lda [$EE.b],Y		; B7 EE
	ror $DFBF.w,X		; 7E BF DF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	plx		; FA
	lda [$FF.b],Y		; B7 FF
	sbc $EFFBBF.l,X		; FF BF FB EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFFFF.l,X		; DF FF FF FF
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
	sbc $FFDEFF.l		; EF FF DE FF
	xce		; FB
	adc $DF.b,X		; 75 DF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $BAFFFF.l,X		; FF FF FF BA
	sbc [$BD.b],Y		; F7 BD
	sbc $FFDFFD.l,X		; FF FD DF FF
	tyx		; BB
	sbc $FDFFFF.l,X		; FF FF FF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DEFFFF.l,X		; FF FF FF DE
	sbc [$FF.b],Y		; F7 FF
	sbc $FFDCFF.l,X		; FF FF DC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $E7BBFF.l,X		; FF FF BB E7
	sbc $F7BBFE.l,X		; FF FE BB F7
	sbc $FFFB.w,X		; FD FB FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$EF.b]		; E7 EF
	tyx		; BB
	cmp [$DB.b]		; C7 DB
	inc $FF7F.w,X		; FE 7F FF
	sbc $FF.b,X		; F5 FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $BFDFEA.l,X		; FF EA DF BF
	sbc $7FDFFF.l,X		; FF FF DF 7F
	cmp $FFBBFF.l,X		; DF FF BB FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	lda $7FFFFF.l,X		; BF FF FF 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	dec $7FBF.w,X		; DE BF 7F
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BFFEF.l,X		; FF EF FF 7B
	tsa		; 3B
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldx $FF7F.w,Y		; BE 7F FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	inc $FBFF.w,X		; FE FF FB
	sbc $FBFFFF.l,X		; FF FF FF FB
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
	sbc $7DFDFF.l,X		; FF FF FD 7D
	sbc $FFEE.w,Y		; F9 EE FF
	sbc $FF6FFF.l,X		; FF FF 6F FF
	sbc $F7FEFB.l,X		; FF FB FE F7
	sbc $FEFFFF.l,X		; FF FF FF FE
	jmp ($E7FF.w)		; 6C FF E7
	sbc [$AF.b],Y		; F7 AF
	xce		; FB
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc $DDF7F8.l,X		; FF F8 F7 DD
	cmp [$5F.b]		; C7 5F
	phx		; DA
	lda $FFFBFF.l,X		; BF FF FB FF
	inc $FF.b,X		; F6 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $7F.b		; E6 7F
	inc $FEFF.w,X		; FE FF FE
	sbc $FFFFFB.l,X		; FF FB FF FF
	sbc $FFFFFE.l		; EF FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FB.b,X		; F5 FB
	sbc $BDFFCF.l,X		; FF CF FF BD
	plx		; FA
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	lda $FFFE77.l,X		; BF 77 FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7DDFF.l,X		; FF FF DD F7
	sbc $F7FFF7.l,X		; FF F7 FF F7
	eor $FFFFFF.l,X		; 5F FF FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $B7FBF9.l,X		; FF F9 FB B7
	xce		; FB
	beq -33.b		; F0 DF
	lda $EFFEF4.l,X		; BF F4 FE EF
	xce		; FB
	sbc $FFBF.w,X		; FD BF FF
	sbc $FC77FF.l,X		; FF FF 77 FC
	adc $FAFDDD.l,X		; 7F DD FD FA
	sbc $FFFF5F.l,X		; FF 5F FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFEFF.l,X		; FF FF FE FB
	sbc $FDDFFF.l,X		; FF FF DF FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	sbc $FBDEFF.l,X		; FF FF DE FB
	stp		; DB
	adc $ECFFFA.l,X		; 7F FA FF EC
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFB65.l,X		; FF 65 FB FF
	sbc $FFFFF7.l,X		; FF F7 FF FF
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
	sbc $FFBFFF.l,X		; FF FF BF FF
	sbc $F6FDF1.l		; EF F1 FD F6
	adc $F7FFEF.l,X		; 7F EF FF F7
	cmp $FFFFBF.l,X		; DF BF FF FF
	sbc $FF3FFF.l,X		; FF FF 3F FF
	inc $9F17.w,X		; FE 17 9F
	sbc [$9F.b],Y		; F7 9F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEF77.l,X		; FF 77 EF FF
	sbc $BFFF.w,X		; FD FF BF
	xce		; FB
	cmp $FFFFFB.l,X		; DF FB FF FF
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
	sbc $FBDFFD.l,X		; FF FD DF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFDDB.l,X		; FF DB FD FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FF3FBF.l,X		; FF BF 3F FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $7FFBFF.l,X		; FF FF FB 7F
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cmp $FFFDDE.l,X		; DF DE FD FF
	lda ($FE.b,S),Y		; B3 FE
	sbc $7EFFEF.l,X		; FF EF FF 7E
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $6FFFCC.l,X		; FF CC FF 6F
	sbc $FFF77F.l,X		; FF 7F F7 FF
	sbc $FFDFBF.l,X		; FF BF DF FF
	cmp $DFFFFF.l,X		; DF FF FF DF
	sbc $B7DDFE.l,X		; FF FE DD B7
	sbc $FDFF.w		; ED FF FD
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
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
	sbc $F3FFFF.l,X		; FF FF FF F3
	sbc $EFBFFF.l,X		; FF FF BF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $7FF9FF.l,X		; FF FF F9 7F
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	sbc $7FFF5E.l,X		; FF 5E FF 7F
	sbc $FFFEFE.l,X		; FF FE FE FF
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
	cmp $9FF75F.l,X		; DF 5F F7 9F
	ror $AFED.w,X		; 7E ED AF
	lda $FFEB.w,X		; BD EB FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	lda $EDB6FF.l,X		; BF FF B6 ED
	dec $DFAD.w,X		; DE AD DF
	sbc [$CF.b]		; E7 CF
	sbc [$F7.b],Y		; F7 F7
	inc $FFFF.w,X		; FE FF FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	adc $FF7F.w,X		; 7D 7F FF
	sbc $3FFA.w,X		; FD FA 3F
	inc $BFFB.w,X		; FE FB BF
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $F7FFFF.l,X		; FF FF FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEDF.l,X		; FF DF FE FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $1EFFFF.l,X		; FF FF FF 1E
	ora ($B0.b,X)		; 01 B0
	rol $D4.b,X		; 36 D4
	lsr $47.b		; 46 47
	adc ($14.b)		; 72 14
	tas		; 1B
	php		; 08
	bit $8A.b,X		; 34 8A
	brk $04.b		; 00 04
	php		; 08
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	bra  32.b		; 80 20
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	rti		; 40

	brk $00.b		; 00 00
	trb $00.b		; 14 00
	plp		; 28
	brk $40.b		; 00 40
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b),Y		; 11 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	eor ($08.b,X)		; 41 08
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
	bit $5994.w,X		; 3C 94 59
	and $48.b		; 25 48
	stz $3E0B.w,X		; 9E 0B 3E
	adc ($1C.b,S),Y		; 73 1C
	ldy $14.b,X		; B4 14
	sec		; 38
	eor $1028.w		; 4D 28 10
	ora ($00.b,X)		; 01 00
	php		; 08
	brk $00.b		; 00 00
	tsb $14.b		; 04 14
	rti		; 40

	bpl   0.b		; 10 00
	jsl $000800.l		; 22 00 08 00
	brk $08.b		; 00 08
	brk $38.b		; 00 38
	iny		; C8
	sty $38.b,X		; 94 38
	brk $30.b		; 00 30
	tsb $00.b		; 04 00
	rti		; 40

	php		; 08
	jsr $0002.w		; 20 02 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $07.b		; 00 07
	brk $00.b		; 00 00
	brk $B1.b		; 00 B1
	php		; 08
	plp		; 28
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
	and ($44.b,S),Y		; 33 44
	eor $10.b		; 45 10
	eor $44.b,S		; 43 44
	eor #$14.b		; 49 14
	sbc #$4F.b		; E9 4F
	ora ($01.b),Y		; 11 01
	txs		; 9A
	cpy #$00.b		; C0 00
	cop $00.b		; 02 00
	cop $04.b		; 02 04
	cop $00.b		; 02 00
	jsr $8001.w		; 20 01 80
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	php		; 08
	sty $00.b		; 84 00
	tsb $01.b		; 04 01
	ora ($20.b,X)		; 01 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
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
	brk $34.b		; 00 34
	and ($18.b,X)		; 21 18
	and $0FDE.w,X		; 3D DE 0F
	sbc $8DCB.w		; ED CB 8D
	adc [$A4.b],Y		; 77 A4
	tay		; A8
	cpx #$1C.b		; E0 1C
	ora ($11.b,X)		; 01 11
	tsb $04.b		; 04 04
	brk $0C.b		; 00 0C
	ora ($52.b)		; 12 52
	rti		; 40

	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	cpy #$20.b		; C0 20
	brk $04.b		; 00 04
	tsb $03.b		; 04 03
	ldx #$08.b		; A2 08
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	brk $00.b		; 00 00
	php		; 08
	rti		; 40

	ora $05.b,S		; 03 05
	bit $0005.w		; 2C 05 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	eor ($0A.b),Y		; 51 0A
	bra -75.b		; 80 B5
	sta $84.b,S		; 83 84
	lda $4614.w		; AD 14 46
	tsb $64.b		; 04 64
	dec $16.b		; C6 16
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	ora ($00.b),Y		; 11 00
	brk $10.b		; 00 10
	ora $00.b,S		; 03 00
	tsb $10.b		; 04 10
	bmi   0.b		; 30 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $A0.b		; 00 A0
	brk $00.b		; 00 00
	ora ($40.b,X)		; 01 40
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	bcc   0.b		; 90 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	.db $42, $00		; 42 00
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	cop $10.b		; 02 10
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
	brk $40.b		; 00 40
	cli		; 58
	cpx $CA.b		; E4 CA
	lda $7E39.w,Y		; B9 39 7E
	plx		; FA
	adc [$B0.b]		; 67 B0
	tsb $5950.w		; 0C 50 59
	stz $02.b		; 64 02
	eor $00.b,S		; 43 00
	php		; 08
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	ora [$00.b]		; 07 00
	txa		; 8A
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bpl  19.b		; 10 13
	bit $01.b		; 24 01
	rts		; 60

	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bvc   1.b		; 50 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	brk $40.b		; 00 40
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	bra  32.b		; 80 20
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
	ora ($00.b,X)		; 01 00
	and ($49.b,X)		; 21 49
	ora #$94.b		; 09 94
	tsb $4D.b		; 04 4D
	lda ($39.b),Y		; B1 39
	adc $45.b,X		; 75 45
	bvc   4.b		; 50 04
	brk $00.b		; 00 00
	rti		; 40

	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	cop $00.b		; 02 00
	brk $01.b		; 00 01
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	rti		; 40

	ora ($08.b,X)		; 01 08
	brk $00.b		; 00 00
	jsr $8000.w		; 20 00 80
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
	lda ($AC.b),Y		; B1 AC
	cli		; 58
	bvs -81.b		; 70 AF
	adc $A360DF.l		; 6F DF 60 A3
	rtl		; 6B

	stx $8657.w		; 8E 57 86
	dec $4040.w		; CE 40 40
	ora $01.b,S		; 03 01
	pha		; 48
	brk $00.b		; 00 00
	brk $61.b		; 00 61
	ora #$08.b		; 09 08
	bra   4.b		; 80 04
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	php		; 08
	ora ($03.b,X)		; 01 03
	ldy #$20.b		; A0 20
	rti		; 40

	cop $54.b		; 02 54
	brk $64.b		; 00 64
	tsb $02.b		; 04 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $08.b		; 02 08
	tsb $90.b		; 04 90
	clc		; 18
	pha		; 48
	bpl  16.b		; 10 10
	brk $04.b		; 00 04
	rti		; 40

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
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $4A.b		; 00 4A
	trb $08.b		; 14 08
	plp		; 28
	lda $91.b,X		; B5 91
	cpy $7F.b		; C4 7F
	cpy $20.b		; C4 20
	bit #$00.b		; 89 00
	brk $30.b		; 00 30
	bpl   0.b		; 10 00
	bpl  16.b		; 10 10
	tsb $18.b		; 04 18
	.db $42, $00		; 42 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($04.b),Y		; 11 04
	brk $20.b		; 00 20
	ora ($10.b,X)		; 01 10
	jsr $0000.w		; 20 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $02.b		; 00 02
	sta ($00.b)		; 92 00
	tsb $41.b		; 04 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	brk $08.b		; 00 08
	cpx #$0E.b		; E0 0E
	jsr ($0CA2.w,X)		; FC A2 0C
	asl $4A.b,X		; 16 4A
	asl $4FFD.w		; 0E FD 4F
	rol $82.b		; 26 82
	bpl  80.b		; 10 50
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	sta ($00.b),Y		; 91 00
	bpl   0.b		; 10 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	tsb $C8.b		; 04 C8
	cop $20.b		; 02 20
	mvp $41,$24		; 44 24 41
	brk $01.b		; 00 01
	ora ($10.b,X)		; 01 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	tsb $13.b		; 04 13
	cop $80.b		; 02 80
	ora $00.b		; 05 00
	brk $01.b		; 00 01
	php		; 08
	brk $00.b		; 00 00
	tsb $01.b		; 04 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bmi -104.b		; 30 98
	cli		; 58
	cpx $B6.b		; E4 B6
	ora ($65.b),Y		; 11 65
	eor ($70.b)		; 52 70
	cld		; D8
	bpl  96.b		; 10 60
	rts		; 60

	ldy #$00.b		; A0 00
	ora ($08.b,X)		; 01 08
	.db $42, $1A		; 42 1A
	tsb $1460.w		; 0C 60 14
	txa		; 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $01.b		; 00 01
	jsr $0000.w		; 20 00 00
	cop $40.b		; 02 40
	brk $40.b		; 00 40
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
	brk $28.b		; 00 28
	and $0E.b,X		; 35 0E
	clv		; B8
	lda $362D.w,Y		; B9 2D 36
	sta $AACA24.l,X		; 9F 24 CA AA
	pei ($2C.b)		; D4 2C
	lda ($42.b)		; B2 42
	tsb $20.b		; 04 20
	rts		; 60

	ldy #$88.b		; A0 88
	brk $20.b		; 00 20
	php		; 08
	ora [$80.b]		; 07 80
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	and ($80.b,X)		; 21 80
	dey		; 88
	cop $00.b		; 02 00
	cpy #$08.b		; C0 08
	jsr $1000.w		; 20 00 10
	brk $00.b		; 00 00
	brk $18.b		; 00 18
	brk $00.b		; 00 00
	brk $48.b		; 00 48
	eor ($14.b,X)		; 41 14
	mvp $00,$00		; 44 00 00
	trb $C000.w		; 1C 00 C0
	brk $00.b		; 00 00
	jsl $000020.l		; 22 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	lsr A		; 4A
	ora $55.b,X		; 15 55
	ply		; 7A
	adc ($88.b,X)		; 61 88
	phd		; 0B
	cop $30.b		; 02 30
	tsb $80.b		; 04 80
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra  16.b		; 80 10
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $08.b		; 00 08
	cop $00.b		; 02 00
	jsr $8001.w		; 20 01 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	cop $10.b		; 02 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8A.b		; 00 8A
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ror A		; 6A
	cmp ($5D.b,X)		; C1 5D
	bra   6.b		; 80 06
	adc $BD87.w,X		; 7D 87 BD
	.db $82, $24, $9E		; 82 24 9E
	.db $62, $88, $80		; 62 88 80
	php		; 08
	brk $00.b		; 00 00
	rti		; 40

	bit $00.b		; 24 00
	bmi -108.b		; 30 94
	ora ($00.b,X)		; 01 00
	tsb $10.b		; 04 10
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	rti		; 40

	eor ($00.b,X)		; 41 00
	asl $0000.w		; 0E 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	dey		; 88
	tsa		; 3B
	sbc [$80.b]		; E7 80
	sbc ($24.b,X)		; E1 24
	asl $6C.b		; 06 6C
	and $F4A6.w,Y		; 39 A6 F4
	tsb $14.b		; 04 14
	ora ($0C.b,X)		; 01 0C
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $81.b		; 00 81
	brk $00.b		; 00 00
	tsb $80.b		; 04 80
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	bpl -128.b		; 10 80
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $24.b		; 00 24
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	php		; 08
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $30.b		; 00 30
	stz $E734.w,X		; 9E 34 E7
	jsl $4FB4FB.l		; 22 FB B4 4F
	stz $A8B2.w,X		; 9E B2 A8
	lsr $005E.w		; 4E 5E 00
	brk $00.b		; 00 00
	bpl -120.b		; 10 88
	brk $42.b		; 00 42
	sta ($80.b,X)		; 81 80
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	ora ($85.b,X)		; 01 85
	jsl L008002.l		; 22 02 80 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
	cop $01.b		; 02 01
	brk $20.b		; 00 20
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $44.b		; 00 44
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FDED.w,X		; FE ED FD
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFD9.l,X		; FF D9 FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FEFFDD.l,X		; FF DD FF FE
	sbc $EFFF.w,X		; FD FF EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $FFDEFF.l,X		; FF FF DE FF
	sbc $FBF5DF.l,X		; FF DF F5 FB
	sbc $FFBBFF.l,X		; FF FF BB FF
	xce		; FB
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $EDF6FF.l,X		; FF FF F6 ED
	sbc $FCEFE4.l,X		; FF E4 EF FC
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
	sbc $FF7FBE.l,X		; FF BE 7F FF
	sbc $DFFFBF.l,X		; FF BF FF DF
	plx		; FA
	cmp $FDFFFF.l,X		; DF FF FF FD
	sbc [$FF.b],Y		; F7 FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	lda $3FEFFD.l,X		; BF FD EF 3F
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFEFD.l,X		; FF FD FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFD7.l,X		; FF D7 EF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	eor $7DFFFF.l,X		; 5F FF FF 7D
	sbc $F7FFFF.l,X		; FF FF FF F7
	lda $FFFFFF.l,X		; BF FF FF FF
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
	sbc $EEFFFF.l,X		; FF FF FF EE
	adc $FEFD9E.l		; 6F 9E FD FE
	ror $FFFF.w,X		; 7E FF FF
	sbc $FFEF7F.l,X		; FF 7F EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDBDF.l,X		; FF DF DB FF
	sbc $BDBFFF.l,X		; FF FF BF BD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	adc $BEFF.w		; 6D FF BE
	eor $F7EF.w		; 4D EF F7
	sbc $FDFF.w,X		; FD FF FD
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
	ror $FFFF.w,X		; 7E FF FF
	adc $FFFEFF.l,X		; 7F FF FE FF
	sbc $BBF7FF.l,X		; FF FF F7 BB
	cmp $FFFFFF.l,X		; DF FF FF FF
	plb		; AB
	sbc $FBFF.w,X		; FD FF FB
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFF.l		; EF FF FF 7F
	sbc $F6DFFF.l,X		; FF FF DF F6
	sbc $FFBF7F.l,X		; FF 7F BF FF
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
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7BDFEF.l,X		; FF EF DF 7B
	jmp $FBF1FE.l		; 5C FE F1 FB
	sbc [$FF.b]		; E7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EBFFFE.l,X		; FF FE FF EB
	sbc $B7FEFF.l,X		; FF FF FE B7
	sbc $DFFF.w,X		; FD FF DF
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $FFFF6F.l,X		; FF 6F FF FF
	sbc $77FFEF.l		; EF EF FF 77
	sbc $FEFF7B.l,X		; FF 7B FF FE
	lda $FFDFEE.l,X		; BF EE DF FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $ABFEFF.l,X		; FF FF FE AB
	sbc $FFFBFB.l,X		; FF FB FB FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFBFFF.l,X		; FF FF BF DF
	inc $FFFF.w,X		; FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFF7FE.l,X		; FF FE F7 FF
	phx		; DA
	sbc $FBFDF7.l,X		; FF F7 FD FB
	adc $DFFFFF.l,X		; 7F FF FF DF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	inc $FFFF.w		; EE FF FF
	ldx $6FBF.w,Y		; BE BF 6F
	xce		; FB
	sbc $FEFF7F.l,X		; FF 7F FF FE
	xce		; FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $DFDFFE.l,X		; FF FE DF DF
	adc $DFEFFF.l,X		; 7F FF EF DF
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $FD7BDF.l,X		; FF DF 7B FD
	inc $FC.b		; E6 FC
	sbc ($FF.b,S),Y		; F3 FF
	adc $FFFF.w,X		; 7D FF FF
	lda [$FF.b],Y		; B7 FF
	xce		; FB
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
	sbc $FEFDFF.l,X		; FF FF FD FE
	sbc $FFFF.w,X		; FD FF FF
	adc $FFFFFF.l		; 6F FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $EFFDDF.l,X		; FF DF FD EF
	adc $FFFDDF.l,X		; 7F DF FD FF
	sbc $FFFF7B.l,X		; FF 7B FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FDFEEF.l,X		; FF EF FE FD
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	lda $FFFFFB.l,X		; BF FB FF FF
	sbc $9FFF94.l,X		; FF 94 FF 9F
	sbc $FFFFFF.l		; EF FF FF FF
	sbc $FFFFFE.l,X		; FF FE FF FF
	lda $DFFF.w,X		; BD FF DF
	sbc $DFFBDF.l,X		; FF DF FB DF
	cmp $FFFFFF.l,X		; DF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFFFFE.l,X		; FF FE FF EF
	ldy $FFFB.w		; AC FB FF
	cmp $FFFDFF.l,X		; DF FF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BDFFDF.l,X		; FF DF FF BD
	cmp $FFBFDF.l,X		; DF DF BF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	inc $FFFF.w,X		; FE FF FF
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFCF.l,X		; FF CF FF FF
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
	sbc $7BBBFF.l,X		; FF FF BB 7B
	cmp [$7F.b],Y		; D7 7F
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5FFFDF.l,X		; FF DF FF 5F
	adc $FDFFDF.l		; 6F DF FF FD
	sbc $FFFFFE.l,X		; FF FE FF FF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFDF.w,X		; FD DF FF
	sbc $BFDFB7.l,X		; FF B7 DF BF
	cmp $FFFFBF.l		; CF BF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	xce		; FB
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
	sbc $FF3EED.l,X		; FF ED 3E FF
	sbc $FFF7FF.l,X		; FF FF F7 FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	inc $FFFF.w,X		; FE FF FF
	and $FFFFFE.l,X		; 3F FE FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFE.l,X		; FF FE 7F FF
	sbc $FEFB.w		; ED FB FE
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $FFFAFF.l,X		; FF FF FA FF
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
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FCFFFF.l,X		; FF FF FF FC
	sbc [$7E.b],Y		; F7 7E
	xce		; FB
	jsr ($FFF9.w,X)		; FC F9 FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ror $7FF7.w,X		; 7E F7 7F
	xce		; FB
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $DBFF7F.l,X		; FF 7F FF DB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFDFFF.l,X		; FF FF DF FF
	sbc [$BF.b],Y		; F7 BF
	adc $FFFEFF.l,X		; 7F FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $EFDFFF.l,X		; FF FF DF EF
	cmp $FF7C.w,X		; DD 7C FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FE9EFF.l,X		; FF FF 9E FE
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	and [$BF.b],Y		; 37 BF
	sbc $FFEFEF.l,X		; FF EF EF FF
	lda $FFDFFF.l,X		; BF FF DF FF
	sbc $F7FFFE.l,X		; FF FE FF F7
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
	sbc $73FDFF.l,X		; FF FF FD 73
	sbc $BFFF77.l,X		; FF 77 FF BF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $F7FFFF.l,X		; FF FF FF F7
	eor ($FD.b,S),Y		; 53 FD
	cmp $FFFD95.l,X		; DF 95 FD FF
	sbc $FFFFFD.l,X		; FF FD FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	lda $FE7FFF.l,X		; BF FF 7F FE
	sbc $FD.b,X		; F5 FD
	xce		; FB
	sbc $7DFBEE.l		; EF EE FB 7D
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFEFF.l,X		; FF FF FE FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $155481.l,X		; FF 81 54 15
	mvp $1A,$42		; 44 42 1A
	cop $12.b		; 02 12
	rti		; 40

	sty $80.b		; 84 80
	ora ($10.b,X)		; 01 10
	iny		; C8
	tsb $92.b		; 04 92
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	rti		; 40

	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	bpl   2.b		; 10 02
	cop $10.b		; 02 10
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
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	clc		; 18
	brk $50.b		; 00 50
	inc $76.b		; E6 76
	ora $6D25.w,X		; 1D 25 6D
	adc #$31.b		; 69 31
	bit $82.b,X		; 34 82
	cop $30.b		; 02 30
	bit $0A.b		; 24 0A
	stx $0001.w		; 8E 01 00
	cop $00.b		; 02 00
	bra -128.b		; 80 80
	brk $01.b		; 00 01
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	php		; 08
	bra  32.b		; 80 20
	brk $40.b		; 00 40
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $20.b		; 00 20
	brk $12.b		; 00 12
	ora ($00.b,X)		; 01 00
	brk $80.b		; 00 80
	cop $00.b		; 02 00
	tsb $0000.w		; 0C 00 00
	brk $41.b		; 00 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl  22.b		; 10 16
	php		; 08
	ldx $82.b		; A6 82
	dey		; 88
	ora #$58.b		; 09 58
	bcc 113.b		; 90 71
	cop $02.b		; 02 02
	eor $40.b		; 45 40
	cli		; 58
	brk $0A.b		; 00 0A
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	jsr $0010.w		; 20 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $80.b		; 00 80
	brk $40.b		; 00 40
	cop $20.b		; 02 20
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
	bmi -125.b		; 30 83
	eor ($90.b)		; 52 90
	ror $B0.b,X		; 76 B0
	xba		; EB
	adc $880026.l,X		; 7F 26 00 88
	sty $12.b		; 84 12
	cli		; 58
	.db $42, $03		; 42 03
	brk $01.b		; 00 01
	brk $11.b		; 00 11
	rti		; 40

	brk $A0.b		; 00 A0
	brk $40.b		; 00 40
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	php		; 08
	cop $08.b		; 02 08
	php		; 08
	cop $00.b		; 02 00
	ora $00.b		; 05 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $03.b		; 00 03
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	ora ($08.b,X)		; 01 08
	rti		; 40

	brk $30.b		; 00 30
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
	cpx #$E0.b		; E0 E0
	cpy $4A.b		; C4 4A
	adc #$06.b		; 69 06
	eor [$CC.b]		; 47 CC
	trb $73.b		; 14 73
	bpl   8.b		; 10 08
	bra -128.b		; 80 80
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $90.b		; 00 90
	bit $0000.w		; 2C 00 00
	ora ($00.b,X)		; 01 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	ora #$00.b		; 09 00
	bpl  16.b		; 10 10
	brk $00.b		; 00 00
	bpl   8.b		; 10 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $81.b		; 00 81
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ldx #$30.b		; A2 30
	and ($1A.b,X)		; 21 1A
	sbc ($35.b)		; F2 35
	phb		; 8B
	eor [$44.b]		; 47 44
	ora ($00.b),Y		; 11 00
	php		; 08
	bcc -24.b		; 90 E8
	php		; 08
	brk $20.b		; 00 20
	ora ($42.b,X)		; 01 42
	brk $00.b		; 00 00
	jsl $010000.l		; 22 00 00 01
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($30.b),Y		; 11 30
	cop $10.b		; 02 10
	ora #$00.b		; 09 00
	brk $0C.b		; 00 0C
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	tsb $88.b		; 04 88
	brk $14.b		; 00 14
	tsb $10.b		; 04 10
	brk $01.b		; 00 01
	ora ($80.b,X)		; 01 80
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	pha		; 48
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $E9.b		; 00 E9
	ldy #$D8.b		; A0 D8
	rts		; 60

	adc $60A4.w,Y		; 79 A4 60
	inc A		; 1A
	.db $82, $04, $08		; 82 04 08
	eor $000800.l,X		; 5F 00 08 00
	brk $00.b		; 00 00
	ora ($50.b,X)		; 01 50
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra -128.b		; 80 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	sta ($00.b,X)		; 81 00
	brk $08.b		; 00 08
	cop $A0.b		; 02 A0
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	ora $00.b,S		; 03 00
	trb $00.b		; 14 00
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
	brk $92.b		; 00 92
	ora ($6A.b),Y		; 11 6A
	lsr A		; 4A
	adc $22.b,X		; 75 22
	tya		; 98
	stp		; DB
	ora $B4.b,X		; 15 B4
	brk $B7.b		; 00 B7
	dec A		; 3A
	brk $08.b		; 00 08
	brk $10.b		; 00 10
	bpl  16.b		; 10 10
	brk $44.b		; 00 44
	ora ($00.b,X)		; 01 00
	jsr $0000.w		; 20 00 00
	ora ($02.b)		; 12 02
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	ora ($50.b,X)		; 01 50
	brk $00.b		; 00 00
	jsr $1042.w		; 20 42 10
	jsl $061000.l		; 22 00 10 06
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	cop $01.b		; 02 01
	pha		; 48
	brk $03.b		; 00 03
	ldy #$03.b		; A0 03
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
	and ($68.b,S),Y		; 33 68
	jsr $14E3.w		; 20 E3 14
	rep #$47		; C2 47
	clc		; 18
	asl A		; 0A
	nop		; EA
	.db $82, $80, $00		; 82 80 00
	ora ($10.b,X)		; 01 10
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bit $98.b		; 24 98
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	asl $00.b		; 06 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $12.b		; 00 12
	brk $00.b		; 00 00
	php		; 08
	bra   2.b		; 80 02
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
	sty $0E.b		; 84 0E
	sty $92.b,X		; 94 92
	cld		; D8
	lsr $54BB.w,X		; 5E BB 54
	ror $2066.w		; 6E 66 20
	cpx #$22.b		; E0 22
	brk $00.b		; 00 00
	tsb $20.b		; 04 20
	jsr $0400.w		; 20 00 04
	bra   0.b		; 80 00
	bmi   2.b		; 30 02
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	tsb $00.b		; 04 00
	rti		; 40

	brk $40.b		; 00 40
	cop $23.b		; 02 23
	ora ($00.b,X)		; 01 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $84.b		; 00 84
	brk $10.b		; 00 10
	mvp $48,$00		; 44 00 48
	bra   0.b		; 80 00
	brk $08.b		; 00 08
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
	brk $80.b		; 00 80
	clc		; 18
	rti		; 40

	sty $01.b		; 84 01
	sbc ($26.b)		; F2 26
	and $2700C8.l		; 2F C8 00 27
	php		; 08
	dey		; 88
	bra   2.b		; 80 02
	jsr $0204.w		; 20 04 02
	brk $00.b		; 00 00
	bit $50.b,X		; 34 50
	rti		; 40

	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $69.b		; 00 69
	ora ($20.b,X)		; 01 20
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	rti		; 40

	cop $00.b		; 02 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	cop $00.b		; 02 00
	clc		; 18
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
	jsr $0000.w		; 20 00 00
	brk $60.b		; 00 60
	clc		; 18
	.db $62, $8E, $9C		; 62 8E 9C
	adc $EB69.w,X		; 7D 69 EB
	tda		; 7B
	bra  76.b		; 80 4C
	jsr $005D.w		; 20 5D 00
	ora $0980.w,Y		; 19 80 09
	tsb $10.b		; 04 10
	brk $11.b		; 00 11
	and ($00.b),Y		; 31 00
	brk $44.b		; 00 44
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $10.b		; 00 10
	asl $05.b		; 06 05
	brk $00.b		; 00 00
	jsr $0000.w		; 20 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rol $4A.b		; 26 4A
	cop $00.b		; 02 00
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
	jmp $5E40.w		; 4C 40 5E
	trb $40B8.w		; 1C B8 40
	sbc ($0B.b,S),Y		; F3 0B
	jsr $0016.w		; 20 16 00
	sta ($01.b)		; 92 01
	brk $40.b		; 00 40
	rti		; 40

	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	bra   0.b		; 80 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($01.b,X)		; 01 01
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   0.b		; 80 00
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $18.b		; 00 18
	brk $00.b		; 00 00
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
	stz $F018.w		; 9C 18 F0
	lsr A		; 4A
	cpx $8E64.w		; EC 64 8E
	clc		; 18
	stx $0A.b		; 86 0A
	bvc   8.b		; 50 08
	dex		; CA
	ora ($00.b,X)		; 01 00
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	mvp $80,$00		; 44 00 80
	eor #$08.b		; 49 08
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	rti		; 40

	brk $02.b		; 00 02
	bpl -128.b		; 10 80
	sta ($00.b,X)		; 81 00
	bpl   0.b		; 10 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sta ($01.b,X)		; 81 01
	brk $00.b		; 00 00
	dey		; 88
	ora ($18.b),Y		; 11 18
	dec $00.b		; C6 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
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
	brk $9C.b		; 00 9C
	eor #$4A.b		; 49 4A
	and #$03.b		; 29 03
	cmp $12.b,S		; C3 12
	brk $00.b		; 00 00
	rol $01.b		; 26 01
	rol $60.b		; 26 60
	trb $10.b		; 14 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	php		; 08
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	rti		; 40

	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	bpl   1.b		; 10 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $80.b		; 00 80
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	bra  72.b		; 80 48
	bpl   0.b		; 10 00
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
	brk $30.b		; 00 30
	ldy $9800.w,X		; BC 00 98
	eor $8D.b,S		; 43 8D
	tsb $62A5.w		; 0C A5 62
	tax		; AA
	cmp #$10.b		; C9 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   0.b		; 50 00
	ora #$34.b		; 09 34
	dey		; 88
	bra  96.b		; 80 60
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $05.b		; 00 05
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	jsr $0800.w		; 20 00 08
	brk $00.b		; 00 00
	brk $A2.b		; 00 A2
	sty $10.b		; 84 10
	clc		; 18
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
	sbc $EBFFFF.l,X		; FF FF FF EB
	sbc $FBEF.w,X		; FD EF FB
	sbc $FBFFFF.l		; EF FF FF FB
	sbc [$FE.b],Y		; F7 FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FDFFEF.l,X		; FF EF FF FD
	xba		; EB
	sbc $F9DFFB.l,X		; FF FB DF F9
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	sbc $FF7FFF.l,X		; FF FF 7F FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	tda		; 7B
	adc $FFFFFD.l,X		; 7F FD FF FF
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
	sbc $FF5FD5.l,X		; FF D5 5F FF
	sbc $BFFBEF.l,X		; FF EF FB BF
	tda		; 7B
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EBFF.w,X		; FD FF EB
	adc $F7F1FF.l,X		; 7F FF F1 F7
	sbc $FFFFF5.l,X		; FF F5 FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBDBBF.l,X		; FF BF DB FB
	sbc [$FE.b],Y		; F7 FE
	eor $B7E75F.l		; 4F 5F E7 B7
	sbc $FFFEFF.l,X		; FF FF FE FF
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
	adc $FFFFFF.l,X		; 7F FF FF FF
	sbc $BFFFFF.l,X		; FF FF FF BF
	adc $FEFFF9.l,X		; 7F F9 FF FE
	sbc $FBFF7F.l,X		; FF 7F FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $F9FFFF.l,X		; FF FF FF F9
	sbc $BFDDEB.l,X		; FF EB DD BF
	sbc $EFFEFF.l,X		; FF FF FE EF
	sbc $FCFFFF.l,X		; FF FF FF FC
	sbc $FFFDFF.l,X		; FF FF FD FF
	sbc $EEF2E5.l,X		; FF E5 F2 EE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $5EFFFF.l,X		; FF FF FF 5E
	nop		; EA
	sbc $FFF6BE.l,X		; FF BE F6 FF
	cmp $FFEB7F.l,X		; DF 7F EB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EFEFFF.l,X		; FF FF EF EF
	xce		; FB
	cmp $BFFBEF.l,X		; DF EF FB BF
	sbc $FBFEF7.l,X		; FF F7 FE FB
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FF8F77.l,X		; FF 77 8F FF
	sbc [$DF.b],Y		; F7 DF
	sbc [$FD.b],Y		; F7 FD
	adc $FFFDEF.l,X		; 7F EF FD FF
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
	sbc $DFFFFF.l,X		; FF FF FF DF
	sbc $F75FFF.l,X		; FF FF 5F F7
	sbc [$FF.b],Y		; F7 FF
	sbc $EFFBFF.l,X		; FF FF FB EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $BFFFFB.l,X		; FF FB FF BF
	sbc $FFFFF0.l,X		; FF F0 FF FF
	sbc $FBFF.w,X		; FD FF FB
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $1FFFB2.l,X		; FF B2 FF 1F
	xba		; EB
	sbc $FFFC7F.l		; EF 7F FC FF
	sbc $DDFFFF.l,X		; FF FF FF DD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	cpy $BFFE.w		; CC FE BF
	lda $EFB7.w		; AD B7 EF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $9FDFEF.l,X		; FF EF DF 9F
	and [$F7.b],Y		; 37 F7
	inc $7FDE.w,X		; FE DE 7F
	sbc $F7FF5E.l,X		; FF 5E FF F7
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc $EEFBEB.l,X		; FF EB FB EE
	plx		; FA
	cmp $BFFEF7.l		; CF F7 FE BF
	sbc $FEFFFD.l,X		; FF FD FF FE
	cmp $FFFBFF.l,X		; DF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFDFE.l,X		; FF FE FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	ldy $FFFF.w,X		; BC FF FF
	sbc $FFFBEE.l,X		; FF EE FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFFF.l,X		; FF FF EF FF
	cmp $FEFFFF.l,X		; DF FF FF FE
	cmp $FEDFFF.l,X		; DF FF DF FE
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $BFFCFE.l,X		; FF FE FC BF
	adc $FF.b,X		; 75 FF
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
	sbc $BFFFFF.l,X		; FF FF FF BF
	sbc $FE7DF3.l,X		; FF F3 7D FE
	sbc $FFEF85.l,X		; FF 85 EF FF
	sbc $F7FFFE.l		; EF FE FF F7
	lda $FFFF.w,Y		; B9 FF FF
	sbc $F7EBDB.l,X		; FF DB EB F7
	cmp $EFD7.w,X		; DD D7 EF
	adc ($FF.b,S),Y		; 73 FF
	inc $F7FF.w,X		; FE FF F7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $3BF7.w		; ED F7 3B
	inc $FFCF.w,X		; FE CF FF
	tyx		; BB
	sbc $FFFDEF.l,X		; FF EF FD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $7FFFFE.l,X		; FF FE FF 7F
	xce		; FB
	sbc $FEFFF7.l,X		; FF F7 FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	adc $FFFFFF.l,X		; 7F FF FF FF
	cmp $FFBDF7.l,X		; DF F7 BD FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $EBFFF7.l,X		; FF F7 FF EB
	sbc $EFFFBF.l,X		; FF BF FF EF
	sbc $FFFCFF.l,X		; FF FF FC FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFADFF.l,X		; FF FF AD DF
	lda $FFFFFD.l		; AF FD FF FF
	sbc $E7FFFF.l,X		; FF FF FF E7
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $DFEF.w,Y		; F9 EF DF
	sbc $FFEBFF.l,X		; FF FF EB FF
	inc $FFFF.w		; EE FF FF
	sbc $FFFF.w,X		; FD FF FF
	sbc $BDFFBF.l,X		; FF BF FF BD
	inc $FB9F.w,X		; FE 9F FB
	adc $FDA7B7.l,X		; 7F B7 A7 FD
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFBF.l,X		; FF BF FF FF
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
	xce		; FB
	sbc $FFF5.w,X		; FD F5 FF
	sbc $BF5D.w,X		; FD 5D BF
	lda $FFFFFF.l,X		; BF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FBDFE8.l,X		; FF E8 DF FB
	sbc $FD.b,X		; F5 FD
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $CFFFFF.l,X		; FF FF FF CF
	lda $3FDFFF.l,X		; BF FF DF 3F
	lda $FFFFFE.l		; AF FE FF FF
	sbc $FFFFFF.l		; EF FF FF FF
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
	sbc $3BFFFF.l,X		; FF FF FF 3B
	sbc $FE.b,X		; F5 FE
	sbc $FFFBFE.l,X		; FF FE FB FF
	cmp $BFFF.w,X		; DD FF BF
	sbc [$FF.b],Y		; F7 FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFBFFF.l,X		; FF FF BF FF
	stp		; DB
	sbc ($37.b,S),Y		; F3 37
	sbc $EF7FFF.l,X		; FF FF 7F EF
	sbc $FFFFFE.l,X		; FF FE FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	cmp [$FD.b]		; C7 FD
	lda $FFFDFF.l		; AF FF FD FF
	inc $EFEF.w,X		; FE EF EF
	lda $FFFBFF.l,X		; BF FF FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
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
	sbc $BF97.w		; ED 97 BF
	xce		; FB
	sbc $FFFFF7.l,X		; FF F7 FF FF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFFD.l		; EF FD FF FF
	sbc $7EBBFF.l,X		; FF FF BB 7E
	cmp $FFEFEE.l,X		; DF EE EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEDBD.l,X		; FF BD ED FF
	sbc $EFFFFD.l		; EF FD FF EF
	sbc $FFDDFF.l,X		; FF FF DD FF
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
	sbc $FF76F7.l,X		; FF F7 76 FF
	rol $FA.b,X		; 36 FA
	sbc $FFFF.w,X		; FD FF FF
	sbc $FFFBFF.l,X		; FF FF FB FF
	sbc $4AFFFD.l,X		; FF FD FF 4A
	sbc $BDFD.w,X		; FD FD BD
	sbc $FFFFFB.l		; EF FB FF FF
	sbc $FFEF7F.l,X		; FF 7F EF FF
	cmp $DFFFFF.l,X		; DF FF FF DF
	cmp $BEFBFF.l		; CF FF FB BE
	xce		; FB
	inc $F7FF.w,X		; FE FF F7
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FBFFFF.l,X		; FF FF FF FB
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFEFEF.l,X		; FF EF EF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFF6.l,X		; FF F6 FF FF
	sbc $FBFF.w,X		; FD FF FB
	sbc $FEFFFF.l,X		; FF FF FF FE
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FB7BEF.l,X		; FF EF 7B FB
	sbc $FEFFB7.l,X		; FF B7 FF FE
	cmp $FFFFEF.l,X		; DF EF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FF7FFE.l		; EF FE 7F FF
	sbc $FFFF6F.l,X		; FF 6F FF FF
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
	sbc $F7FBFF.l,X		; FF FF FB F7
	sbc $FB5F3D.l,X		; FF 3D 5F FB
	cmp $BFDF.w,X		; DD DF BF
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $EFFFFF.l,X		; FF FF FF EF
	cmp $F7F5E7.l,X		; DF E7 F5 F7
	sbc [$FF.b],Y		; F7 FF
	sbc $FFFFDF.l,X		; FF DF FF FF
	sbc $BFFFFF.l		; EF FF FF BF
	sbc $FFFF7F.l,X		; FF 7F FF FF
	sbc $FFDFBE.l,X		; FF BE DF FF
	sbc $FFFFFE.l		; EF FE FF FF
	sbc $FF5FFF.l,X		; FF FF 5F FF
	sbc $FFFBF7.l,X		; FF F7 FB FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $FFFFFF.l,X		; FF FF FF FF
	sbc $4DFFFF.l,X		; FF FF FF 4D
	rep #$02		; C2 02
	brk $E2.b		; 00 E2
	cmp $79CA.w,Y		; D9 CA 79
	txy		; 9B
	and ($B8.b,X)		; 21 B8
	jsl $004880.l		; 22 80 48 00
	mvp $00,$00		; 44 00 00
	cop $08.b		; 02 08
	brk $40.b		; 00 40
	php		; 08
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bra   0.b		; 80 00
	cpy #$04.b		; C0 04
	bit $00.b		; 24 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bra   5.b		; 80 05
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	cop $00.b		; 02 00
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
	brk $23.b		; 00 23
	sta ($03.b),Y		; 91 03
	and ($C8.b)		; 32 C8
	and [$99.b]		; 27 99
	txs		; 9A
	adc ($08.b,X)		; 61 08
	pla		; 68
	stz $8C.b		; 64 8C
	eor $41.b,S		; 43 41
	bpl -128.b		; 10 80
	ora ($41.b,X)		; 01 41
	bra   0.b		; 80 00
	sta $40.b		; 85 40
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	php		; 08
	rts		; 60

	trb $08.b		; 14 08
	cop $01.b		; 02 01
	cpy #$28.b		; C0 28
	cop $20.b		; 02 20
	brk $80.b		; 00 80
	jsr $0020.w		; 20 20 00
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	php		; 08
	brk $80.b		; 00 80
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
	brk $19.b		; 00 19
	and $42.b		; 25 42
	cld		; D8
	sbc ($80.b),Y		; F1 80
	sta $DD.b,S		; 83 DD
	and $0000.w		; 2D 00 00
	adc ($84.b,X)		; 61 84
	brk $00.b		; 00 00
	brk $41.b		; 00 41
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	bra -64.b		; 80 C0
	brk $08.b		; 00 08
	brk $01.b		; 00 01
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	clc		; 18
	tsb $4000.w		; 0C 00 40
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($10.b,X)		; 01 10
	ora #$02.b		; 09 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $8B.b		; 00 8B
	.db $62, $77, $A2		; 62 77 A2
	lda $DFC7.w,Y		; B9 C7 DF
	sec		; 38
	xba		; EB
	stz $AA.b,X		; 74 AA
	rol $9A.b		; 26 9A
	lda $02E2.w		; AD E2 02
	php		; 08
	ora ($00.b,X)		; 01 00
	brk $40.b		; 00 40
	ora ($40.b),Y		; 11 40
	rti		; 40

	rti		; 40

	bra   0.b		; 80 00
	brk $80.b		; 00 80
	brk $20.b		; 00 20
	brk $20.b		; 00 20
	php		; 08
	brk $4C.b		; 00 4C
	tsb $81.b		; 04 81
	brk $0A.b		; 00 0A
	brk $20.b		; 00 20
	cli		; 58
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bit $20.b		; 24 20
	trb $0E.b		; 14 0E
	php		; 08
	bra  88.b		; 80 58
	brk $06.b		; 00 06
	php		; 08
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	tsb $10.b		; 04 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $95.b		; 00 95
	sta ($6D.b,S),Y		; 93 6D
	ora $F4.b,S		; 03 F4
	eor $DB.b		; 45 DB
	ldx $832A.w		; AE 2A 83
	ora ($14.b)		; 12 14
	brk $43.b		; 00 43
	brk $06.b		; 00 06
	cop $00.b		; 02 00
	rti		; 40

	brk $21.b		; 00 21
	cop $80.b		; 02 80
	rti		; 40

	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	bpl   8.b		; 10 08
	php		; 08
	rti		; 40

	brk $40.b		; 00 40
	bpl   2.b		; 10 02
	asl $00.b		; 06 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	rti		; 40

	sta ($30.b,X)		; 81 30
	rti		; 40

	tsb $0A.b		; 04 0A
	brk $02.b		; 00 02
	brk $20.b		; 00 20
	sta ($40.b,X)		; 81 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	sta $8E08.w,Y		; 99 08 8E
	adc ($7E.b,S),Y		; 73 7E
	and $C49D1A.l		; 2F 1A 9D C4
	lda ($09.b,S),Y		; B3 09
	adc $D1.b		; 65 D1
	lsr A		; 4A
	bpl   0.b		; 10 00
	brk $20.b		; 00 20
	brk $00.b		; 00 00
	trb $0D.b		; 14 0D
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	php		; 08
	cpy #$01.b		; C0 01
	rti		; 40

	brk $82.b		; 00 82
	ora $004000.l,X		; 1F 00 40 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	brk $14.b		; 00 14
	ora ($90.b,X)		; 01 90
	rti		; 40

	and ($20.b,X)		; 21 20
	mvp $00,$00		; 44 00 00
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
	brk $5C.b		; 00 5C
	ror A		; 6A
	asl A		; 0A
	cpy $1C09.w		; CC 09 1C
	sta [$6D.b],Y		; 97 6D
	adc $35A0.w		; 6D A0 35
	phd		; 0B
	cpx #$80.b		; E0 80
	jsl $010002.l		; 22 02 00 01
	php		; 08
	bra   8.b		; 80 08
	jsr $0000.w		; 20 00 00
	plp		; 28
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $63.b		; 00 63
	brk $00.b		; 00 00
	bpl  16.b		; 10 10
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	tsb $00.b		; 04 00
	brk $08.b		; 00 08
	brk $04.b		; 00 04
	brk $00.b		; 00 00
	brk $81.b		; 00 81
	brk $08.b		; 00 08
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
	cmp $09.b,S		; C3 09
	and $C3.b,S		; 23 C3
	trb $63F5.w		; 1C F5 63
	eor $0A80.w		; 4D 80 0A
	ora $A200BE.l		; 0F BE 00 A2
	eor ($16.b)		; 52 16
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $01.b		; 00 01
	sec		; 38
	rti		; 40

	brk $40.b		; 00 40
	bpl   0.b		; 10 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	cpy #$00.b		; C0 00
	tsb $01.b		; 04 01
	rti		; 40

	ora ($00.b,X)		; 01 00
	brk $44.b		; 00 44
	brk $80.b		; 00 80
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bra -126.b		; 80 82
	rti		; 40

	ora ($20.b,X)		; 01 20
	php		; 08
	brk $00.b		; 00 00
	brk $40.b		; 00 40
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
	brk $C8.b		; 00 C8
	bit $04.b		; 24 04
	ora ($7B.b,X)		; 01 7B
	bvc  67.b		; 50 43
	and $72C740.l		; 2F 40 C7 72
	phy		; 5A
	rti		; 40

	eor ($00.b),Y		; 51 00
	bpl   0.b		; 10 00
	.db $82, $00, $00		; 82 00 00
	brk $02.b		; 00 02
	tsb $41.b		; 04 41
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora ($00.b,X)		; 01 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	bra   0.b		; 80 00
	sta ($00.b,X)		; 81 00
	brk $00.b		; 00 00
	ldy $00.b		; A4 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
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
	tay		; A8
	tya		; 98
	cpx $81.b		; E4 81
	asl $958C.w		; 0E 8C 95
	and $12.b,S		; 23 12
	jmp ($CA40.w)		; 6C 40 CA
	stz $41.b,X		; 74 41
	jsr $0010.w		; 20 10 00
	ora $02.b,S		; 03 02
	bra -125.b		; 80 83
	bra   0.b		; 80 00
	ora [$80.b]		; 07 80
	eor ($00.b,X)		; 41 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	ora ($02.b)		; 12 02
	bra   8.b		; 80 08
	brk $00.b		; 00 00
	tsb $02.b		; 04 02
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	brk $42.b		; 00 42
	.db $42, $00		; 42 00
	brk $00.b		; 00 00
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
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
	stx $04.b		; 86 04
	bra  76.b		; 80 4C
	clc		; 18
	adc #$D2.b		; 69 D2
	dec $8A26.w		; CE 26 8A
	bra   6.b		; 80 06
	.db $42, $00		; 42 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $02.b		; 00 02
	jsr $0000.w		; 20 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	cop $04.b		; 02 04
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	php		; 08
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $20.b		; 00 20
	sty $00.b,X		; 94 00
	bit $20.b		; 24 20
	tsb $48.b		; 04 48
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
	eor $AE50.w,Y		; 59 50 AE
	cmp $903D.w		; CD 3D 90
	inc A		; 1A
	plp		; 28
	cmp ($52.b,X)		; C1 52
	php		; 08
	mvp $50,$80		; 44 80 50
	txy		; 9B
	cop $00.b		; 02 00
	tsb $00.b		; 04 00
	rol A		; 2A
	brk $00.b		; 00 00
	bpl   0.b		; 10 00
	tsb $00.b		; 04 00
	jsr $0001.w		; 20 01 00
	cop $00.b		; 02 00
	brk $00.b		; 00 00
	plp		; 28
	brk $00.b		; 00 00
	php		; 08
	plp		; 28
	brk $08.b		; 00 08
	php		; 08
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $83.b		; 00 83
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	ora $54.b		; 05 54
	sty $86.b,X		; 94 86
	bcs -13.b		; B0 F3
	phy		; 5A
	sta $D381.w,X		; 9D 81 D3
	brk $60.b		; 00 60
	sty $0B03.w		; 8C 03 0B
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $08.b		; 00 08
	brk $02.b		; 00 02
	brk $90.b		; 00 90
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $14.b		; 00 14
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	bra   0.b		; 80 00
	brk $00.b		; 00 00
	brk $40.b		; 00 40
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $10.b		; 00 10
	cop $00.b		; 02 00
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	ora #$20.b		; 09 20
	trb $00.b		; 14 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $B0.b		; 00 B0
	bpl -90.b		; 10 A6
	rol $26F0.w		; 2E F0 26
	plp		; 28
	tad		; 5B
	tyx		; BB
	dex		; CA
	bra  32.b		; 80 20
	jsl $809090.l		; 22 90 90 80
	sty $00.b		; 84 00
	brk $83.b		; 00 83
	cop $20.b		; 02 20
	sty $11.b		; 84 11
	brk $0A.b		; 00 0A
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	rti		; 40

	brk $90.b		; 00 90
	brk $01.b		; 00 01
	ora $08.b		; 05 08
	tsb $8040.w		; 0C 40 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $60.b		; 00 60
	brk $14.b		; 00 14
	php		; 08
	brk $10.b		; 00 10
	tay		; A8
	jsr $0040.w		; 20 40 00
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
	sta ($30.b)		; 92 30
	lda ($68.b),Y		; B1 68
	cld		; D8
	ora #$09.b		; 09 09
	lda ($B8.b),Y		; B1 B8
	ora ($00.b,X)		; 01 00
	sta $03.b		; 85 03
	tsb $00.b		; 04 00
	bra   0.b		; 80 00
	tsb $00.b		; 04 00
	brk $01.b		; 00 01
	jsr $0401.w		; 20 01 04
	brk $80.b		; 00 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $04.b		; 00 04
	bpl -128.b		; 10 80
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc   1.b		; 50 01
	php		; 08
	brk $01.b		; 00 01
	brk $04.b		; 00 04
	cop $20.b		; 02 20
	brk $08.b		; 00 08
	brk $00.b		; 00 00
	brk $06.b		; 00 06
	bit $00.b		; 24 00
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
	brk $D3.b		; 00 D3
	ora $08.b		; 05 08
	lda $66.b,S		; A3 66
	rol $FF40.w,X		; 3E 40 FF
	and $008F.w,Y		; 39 8F 00
	bit $29A8.w		; 2C A8 29
	rti		; 40

	bpl -120.b		; 10 88
	brk $21.b		; 00 21
	bpl  68.b		; 10 44
	jsr $0128.w		; 20 28 01
	bpl  16.b		; 10 10
	brk $10.b		; 00 10
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	sty $00.b		; 84 00
	brk $10.b		; 00 10
	bit $00.b		; 24 00
	tsb $00.b		; 04 00
	brk $00.b		; 00 00
	bra  34.b		; 80 22
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	bvc  88.b		; 50 58
	brk $80.b		; 00 80
	brk $48.b		; 00 48
	bmi -128.b		; 30 80
	eor ($00.b,X)		; 41 00
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
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	brk $00.b		; 00 00
	.db $00		; Opcode 00 overrunning bank boundry at 08FFFF. Skipping.
.ENDS
